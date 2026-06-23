inline.NumInlined: 16
inline.NumDeleted: 7
begin_hunk_0_@imp_match_init_strictQ:bb.a

._crit_edge.us.thread:                            ; preds = %bb.k, %._crit_edge.us
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.us, %._crit_edge.us.thread
  %.sink = phi i8 [ 0, %._crit_edge.us.thread ], [ 1, %._crit_edge.us ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv248
  store i8 %.sink, ptr %i.y, align 1, !tbaa !18
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond252.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count251
  br i1 %exitcond252.not, label %.preheader210, label %.preheader211.us, !llvm.loop !21

.preheader211.lr.ph.split:                        ; preds = %.preheader211.lr.ph
  %.not197 = icmp eq i32 %1, 0
  %i.z = zext nneg i32 %3 to i64                  ; 2 uses
  br i1 %.not197, label %.preheader211.us216.preheader, label %.preheader211.preheader

.preheader211.preheader:                          ; preds = %.preheader211.lr.ph.split
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 1, i64 %i.z, i1 false), !tbaa !18
  br label %.preheader210

.preheader211.us216.preheader:                    ; preds = %.preheader211.lr.ph.split
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 0, i64 %i.z, i1 false), !tbaa !18
  br label %.preheader210

.preheader210:                                    ; preds = %bb.l, %.preheader211.preheader, %.preheader211.us216.preheader
  %i.aa = icmp sgt i32 %4, 0
  br i1 %i.aa, label %.preheader209.lr.ph, label %._crit_edge228

.preheader210.thread:                             ; preds = %bb.i
  %i.ab = icmp sgt i32 %4, 0
  br i1 %i.ab, label %.preheader209.lr.ph, label %._crit_edge228

.preheader209.lr.ph:                              ; preds = %.preheader210.thread, %.preheader210
  %i.ac = icmp sgt i32 %2, 0
  %i.ad = load ptr, ptr @imp_match_init_strictQ.nocount2, align 8 ; 3 uses
  br i1 %i.ac, label %.preheader209.us.preheader, label %.preheader209.lr.ph.split

.preheader209.us.preheader:                       ; preds = %.preheader209.lr.ph
  %wide.trip.count267 = zext nneg i32 %4 to i64
  %wide.trip.count262 = zext nneg i32 %2 to i64
  br label %.preheader209.us

.preheader209.us:                                 ; preds = %.preheader209.us.preheader, %bb.o
  %indvars.iv264 = phi i64 [ 0, %.preheader209.us.preheader ], [ %indvars.iv.next265, %bb.o ] ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader209.us, %bb.n
  %indvars.iv259 = phi i64 [ 0, %.preheader209.us ], [ %indvars.iv.next260, %bb.n ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv259
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv264
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18
  %i.ai = icmp eq i8 %i.ah, 45
  br i1 %i.ai, label %._crit_edge.us222, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count262
  br i1 %exitcond263.not, label %._crit_edge.us222.thread, label %bb.m, !llvm.loop !22

._crit_edge.us222:                                ; preds = %bb.m
  %i.aj = trunc nuw nsw i64 %indvars.iv259 to i32
  %.not196.us = icmp eq i32 %2, %i.aj
  br i1 %.not196.us, label %._crit_edge.us222.thread, label %bb.o

._crit_edge.us222.thread:                         ; preds = %bb.n, %._crit_edge.us222
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.us222, %._crit_edge.us222.thread
  %.sink287 = phi i8 [ 0, %._crit_edge.us222.thread ], [ 1, %._crit_edge.us222 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv264
  store i8 %.sink287, ptr %i.ak, align 1, !tbaa !18
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  br i1 %exitcond268.not, label %.preheader208, label %.preheader209.us, !llvm.loop !23

.preheader209.lr.ph.split:                        ; preds = %.preheader209.lr.ph
  %.not196 = icmp eq i32 %2, 0
  %i.al = zext nneg i32 %4 to i64                 ; 2 uses
  br i1 %.not196, label %.preheader209.us224.preheader, label %.preheader209.preheader

.preheader209.preheader:                          ; preds = %.preheader209.lr.ph.split
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ad, i8 1, i64 %i.al, i1 false), !tbaa !18
  br label %.preheader208

.preheader209.us224.preheader:                    ; preds = %.preheader209.lr.ph.split
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ad, i8 0, i64 %i.al, i1 false), !tbaa !18
  br label %.preheader208

.preheader208:                                    ; preds = %bb.o, %.preheader209.preheader, %.preheader209.us224.preheader
  br i1 %i.p, label %.preheader207.lr.ph, label %._crit_edge228

.preheader207.lr.ph:                              ; preds = %.preheader208
  %i.am = load ptr, ptr @impmtx, align 8          ; 9 uses
  %i.an = zext nneg i32 %4 to i64
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 9 uses
  %wide.trip.count275 = zext nneg i32 %3 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count275, 7      ; 3 uses
  %i.ap = icmp ult i32 %3, 8
  br i1 %i.ap, label %.preheader207.us.epil.preheader, label %.preheader207.lr.ph.new

.preheader207.lr.ph.new:                          ; preds = %.preheader207.lr.ph
  %unroll_iter = and i64 %wide.trip.count275, 2147483640
  br label %.preheader207.us

.preheader207.us:                                 ; preds = %.preheader207.us, %.preheader207.lr.ph.new
  %indvars.iv272 = phi i64 [ 0, %.preheader207.lr.ph.new ], [ %indvars.iv.next273.7, %.preheader207.us ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader207.lr.ph.new ], [ %niter.next.7, %.preheader207.us ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv272
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ar, i8 0, i64 %i.ao, i1 false), !tbaa !14
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv272
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.au, i8 0, i64 %i.ao, i1 false), !tbaa !14
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv272
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ax, i8 0, i64 %i.ao, i1 false), !tbaa !14
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv272
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ba, i8 0, i64 %i.ao, i1 false), !tbaa !14
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv272
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bd, i8 0, i64 %i.ao, i1 false), !tbaa !14
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv272
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bg, i8 0, i64 %i.ao, i1 false), !tbaa !14
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv272
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bj, i8 0, i64 %i.ao, i1 false), !tbaa !14
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv272
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bm, i8 0, i64 %i.ao, i1 false), !tbaa !14
  %indvars.iv.next273.7 = add nuw nsw i64 %indvars.iv272, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge228.loopexit.unr-lcssa, label %.preheader207.us, !llvm.loop !24

._crit_edge228.loopexit.unr-lcssa:                ; preds = %.preheader207.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge228, label %.preheader207.us.epil.preheader

.preheader207.us.epil.preheader:                  ; preds = %._crit_edge228.loopexit.unr-lcssa, %.preheader207.lr.ph
  %indvars.iv272.epil.init = phi i64 [ 0, %.preheader207.lr.ph ], [ %indvars.iv.next273.7, %._crit_edge228.loopexit.unr-lcssa ]
  %lcmp.mod318 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod318)
  br label %.preheader207.us.epil

.preheader207.us.epil:                            ; preds = %.preheader207.us.epil, %.preheader207.us.epil.preheader
  %indvars.iv272.epil = phi i64 [ %indvars.iv272.epil.init, %.preheader207.us.epil.preheader ], [ %indvars.iv.next273.epil, %.preheader207.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader207.us.epil.preheader ], [ %epil.iter.next, %.preheader207.us.epil ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv272.epil
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bo, i8 0, i64 %i.ao, i1 false), !tbaa !14
  %indvars.iv.next273.epil = add nuw nsw i64 %indvars.iv272.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge228, label %.preheader207.us.epil, !llvm.loop !25

._crit_edge228:                                   ; preds = %._crit_edge228.loopexit.unr-lcssa, %.preheader207.us.epil, %.preheader210, %.preheader210.thread, %.preheader208
  %i.bp = load double, ptr @fastathreshold, align 8, !tbaa !27
  %i.bq = icmp sgt i32 %1, 0
  br i1 %i.bq, label %.preheader206.lr.ph, label %._crit_edge237

.preheader206.lr.ph:                              ; preds = %._crit_edge228
  %i.br = icmp sgt i32 %2, 0
  %i.bs = load ptr, ptr @impmtx, align 8
  br i1 %i.br, label %.preheader206.us.preheader, label %._crit_edge237

.preheader206.us.preheader:                       ; preds = %.preheader206.lr.ph
  %wide.trip.count285 = zext nneg i32 %1 to i64
  %wide.trip.count280 = zext nneg i32 %2 to i64
  br label %.preheader206.us

.preheader206.us:                                 ; preds = %.preheader206.us.preheader, %._crit_edge235.us
  %indvars.iv282 = phi i64 [ 0, %.preheader206.us.preheader ], [ %indvars.iv.next283, %._crit_edge235.us ] ; 4 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv282
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !27
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv282
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !29
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv282
  br label %bb.p

bb.p:                                             ; preds = %.preheader206.us, %._crit_edge.us238
  %indvars.iv277 = phi i64 [ 0, %.preheader206.us ], [ %indvars.iv.next278, %._crit_edge.us238 ] ; 4 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv277
  %i.bz = load double, ptr %i.by, align 8, !tbaa !27
  %i.ca = fmul double %i.bu, %i.bz
  %i.cb = fmul double %i.bp, %i.ca
  %i.cc = fptrunc double %i.cb to float
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv277
  %.0230.us = load ptr, ptr %i.cd, align 8, !tbaa !31 ; 2 uses
  %.not180231.us = icmp eq ptr %.0230.us, null
  br i1 %.not180231.us, label %._crit_edge.us238, label %.lr.ph.us

bb.q:                                             ; preds = %.lr.ph.us, %.critedge.us
  %.0232.us = phi ptr [ %.0230.us, %.lr.ph.us ], [ %.0.us, %.critedge.us ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0232.us, i64 24
  %.pre.pre = load i32, ptr %i.ce, align 8, !tbaa !33 ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.0158.us = phi i32 [ -1, %bb.q ], [ %spec.select.us, %bb.s ] ; 2 uses
  %.0142.us = phi ptr [ %11, %bb.q ], [ %i.cg, %bb.s ] ; 3 uses
  %i.cf = load i8, ptr %.0142.us, align 1, !tbaa !18 ; 2 uses
  %.not181.us = icmp eq i8 %i.cf, 0
  br i1 %.not181.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %.0142.us, i64 1 ; 2 uses
  %.not182.us = icmp ne i8 %i.cf, 45
  %i.ch = zext i1 %.not182.us to i32
  %spec.select.us = add nsw i32 %.0158.us, %i.ch  ; 2 uses
  %i.ci = icmp eq i32 %spec.select.us, %.pre.pre
  br i1 %i.ci, label %bb.t, label %bb.r, !llvm.loop !35

bb.t:                                             ; preds = %bb.s, %bb.r
  %.2160.us = phi i32 [ %.pre.pre, %bb.s ], [ %.0158.us, %bb.r ]
  %.1143.us = phi ptr [ %i.cg, %bb.s ], [ %.0142.us, %bb.r ] ; 2 uses
  %i.cj = ptrtoint ptr %.1143.us to i64
  %i.ck = add i64 %i.cj, %13                      ; 2 uses
  %i.cl = trunc i64 %i.ck to i32                  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0232.us, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !36 ; 2 uses
  %i.co = icmp eq i32 %.pre.pre, %i.cn
  br i1 %i.co, label %bb.w, label %.preheader205.us

.preheader205.us:                                 ; preds = %bb.t, %bb.u
  %.3161.us = phi i32 [ %spec.select199.us, %bb.u ], [ %.2160.us, %bb.t ]
  %.2.us = phi ptr [ %i.cq, %bb.u ], [ %.1143.us, %bb.t ] ; 3 uses
  %i.cp = load i8, ptr %.2.us, align 1, !tbaa !18 ; 2 uses
  %.not183.us = icmp eq i8 %i.cp, 0
  br i1 %.not183.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader205.us
  %i.cq = getelementptr inbounds nuw i8, ptr %.2.us, i64 1 ; 2 uses
  %.not184.us = icmp ne i8 %i.cp, 45
  %i.cr = zext i1 %.not184.us to i32
  %spec.select199.us = add nsw i32 %.3161.us, %i.cr ; 2 uses
  %i.cs = icmp eq i32 %spec.select199.us, %i.cn
  br i1 %i.cs, label %bb.v, label %.preheader205.us, !llvm.loop !37

bb.v:                                             ; preds = %bb.u, %.preheader205.us
  %.3.us = phi ptr [ %i.cq, %bb.u ], [ %.2.us, %.preheader205.us ]
  %i.ct = ptrtoint ptr %.3.us to i64
  %i.cu = add i64 %i.ct, %13
  %i.cv = trunc i64 %i.cu to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.0153.us = phi i32 [ %i.cv, %bb.v ], [ %i.cl, %bb.t ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0232.us, i64 32
  %.pre288.pre = load i32, ptr %i.cw, align 8, !tbaa !38 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %.5163.us = phi i32 [ -1, %bb.w ], [ %spec.select200.us, %bb.y ] ; 2 uses
  %.4.us = phi ptr [ %15, %bb.w ], [ %i.cy, %bb.y ] ; 3 uses
  %i.cx = load i8, ptr %.4.us, align 1, !tbaa !18 ; 2 uses
  %.not185.us = icmp eq i8 %i.cx, 0
  br i1 %.not185.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %.4.us, i64 1 ; 2 uses
  %.not186.us = icmp ne i8 %i.cx, 45
  %i.cz = zext i1 %.not186.us to i32
  %spec.select200.us = add nsw i32 %.5163.us, %i.cz ; 2 uses
  %i.da = icmp eq i32 %spec.select200.us, %.pre288.pre
  br i1 %i.da, label %bb.z, label %bb.x, !llvm.loop !39

bb.z:                                             ; preds = %bb.y, %bb.x
  %.7165.us = phi i32 [ %.pre288.pre, %bb.y ], [ %.5163.us, %bb.x ]
  %.5.us = phi ptr [ %i.cy, %bb.y ], [ %.4.us, %bb.x ] ; 2 uses
  %i.db = ptrtoint ptr %.5.us to i64
  %i.dc = add i64 %i.db, %17                      ; 2 uses
  %i.dd = trunc i64 %i.dc to i32                  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0232.us, i64 36
  %i.df = load i32, ptr %i.de, align 4, !tbaa !40 ; 2 uses
  %i.dg = icmp eq i32 %.pre288.pre, %i.df
  br i1 %i.dg, label %bb.ac, label %.preheader.us

.preheader.us:                                    ; preds = %bb.z, %bb.aa
  %.8.us = phi i32 [ %spec.select201.us, %bb.aa ], [ %.7165.us, %bb.z ]
  %.6.us = phi ptr [ %i.di, %bb.aa ], [ %.5.us, %bb.z ] ; 3 uses
  %i.dh = load i8, ptr %.6.us, align 1, !tbaa !18 ; 2 uses
  %.not187.us = icmp eq i8 %i.dh, 0
  br i1 %.not187.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.preheader.us
  %i.di = getelementptr inbounds nuw i8, ptr %.6.us, i64 1 ; 2 uses
  %.not188.us = icmp ne i8 %i.dh, 45
  %i.dj = zext i1 %.not188.us to i32
  %spec.select201.us = add nsw i32 %.8.us, %i.dj  ; 2 uses
  %i.dk = icmp eq i32 %spec.select201.us, %i.df
  br i1 %i.dk, label %bb.ab, label %.preheader.us, !llvm.loop !41

bb.ab:                                            ; preds = %bb.aa, %.preheader.us
  %.7.us = phi ptr [ %i.di, %bb.aa ], [ %.6.us, %.preheader.us ]
  %i.dl = ptrtoint ptr %.7.us to i64
  %i.dm = add i64 %i.dl, %17
  %i.dn = trunc i64 %i.dm to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.0152.us = phi i32 [ %i.dn, %bb.ab ], [ %i.dd, %bb.z ]
  %sext.us = shl i64 %i.ck, 32
  %i.do = ashr exact i64 %sext.us, 32
  %i.dp = getelementptr inbounds i8, ptr %11, i64 %i.do
  %sext189.us = shl i64 %i.dc, 32
  %i.dq = ashr exact i64 %sext189.us, 32
  %i.dr = getelementptr inbounds i8, ptr %15, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %.0232.us, i64 64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.am, %bb.ac
  %.0156.us = phi i32 [ %i.dd, %bb.ac ], [ %.1157.us, %bb.am ] ; 6 uses
  %.0154.us = phi i32 [ %i.cl, %bb.ac ], [ %.1155.us, %bb.am ] ; 5 uses
  %.0140.us = phi ptr [ %i.dp, %bb.ac ], [ %.1141.us, %bb.am ] ; 5 uses
  %.0139.us = phi ptr [ %i.dr, %bb.ac ], [ %.1.us, %bb.am ] ; 6 uses
  %i.dt = load i8, ptr %.0140.us, align 1, !tbaa !18 ; 2 uses
  %.not190.us = icmp eq i8 %i.dt, 0
  br i1 %.not190.us, label %.critedge.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = load i8, ptr %.0139.us, align 1, !tbaa !18 ; 2 uses
  %.not191.us = icmp eq i8 %i.du, 0
  br i1 %.not191.us, label %.critedge.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not192.us = icmp eq i8 %i.dt, 45              ; 2 uses
  %.not193.us = icmp eq i8 %i.du, 45              ; 3 uses
  %or.cond202.us = or i1 %.not192.us, %.not193.us
  br i1 %or.cond202.us, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dv = load float, ptr %i.ds, align 8, !tbaa !42
  %i.dw = sext i32 %.0154.us to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !12
  %i.dz = sext i32 %.0156.us to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.dz ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !14
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.cc, float %i.eb)
  store float %i.ec, ptr %i.ea, align 4, !tbaa !14
  %i.ed = add nsw i32 %.0154.us, 1
  %i.ee = add nsw i32 %.0156.us, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %.0140.us, i64 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.0139.us, i64 1
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  br i1 %.not192.us, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not193.us, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.eh = add nsw i32 %.0156.us, 1
  %i.ei = getelementptr inbounds nuw i8, ptr %.0139.us, i64 1
  br label %bb.am

bb.ak:                                            ; preds = %bb.ah
  %i.ej = add nsw i32 %.0154.us, 1                ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0140.us, i64 1 ; 2 uses
  br i1 %.not193.us, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.el = add nsw i32 %.0156.us, 1
  %i.em = getelementptr inbounds nuw i8, ptr %.0139.us, i64 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj, %bb.ai, %bb.ag
  %.1157.us = phi i32 [ %i.ee, %bb.ag ], [ %i.eh, %bb.aj ], [ %.0156.us, %bb.ai ], [ %i.el, %bb.al ], [ %.0156.us, %bb.ak ] ; 2 uses
  %.1155.us = phi i32 [ %i.ed, %bb.ag ], [ %.0154.us, %bb.aj ], [ %.0154.us, %bb.ai ], [ %i.ej, %bb.al ], [ %i.ej, %bb.ak ] ; 2 uses
  %.1141.us = phi ptr [ %i.ef, %bb.ag ], [ %.0140.us, %bb.aj ], [ %.0140.us, %bb.ai ], [ %i.ek, %bb.al ], [ %i.ek, %bb.ak ]
  %.1.us = phi ptr [ %i.eg, %bb.ag ], [ %i.ei, %bb.aj ], [ %.0139.us, %bb.ai ], [ %i.em, %bb.al ], [ %.0139.us, %bb.ak ]
  %i.en = icmp sgt i32 %.1155.us, %.0153.us
  %i.eo = icmp sgt i32 %.1157.us, %.0152.us
  %or.cond203.us = select i1 %i.en, i1 true, i1 %i.eo
  br i1 %or.cond203.us, label %.critedge.us, label %bb.ad, !llvm.loop !43

.critedge.us:                                     ; preds = %bb.am, %bb.ae, %bb.ad
  %i.ep = getelementptr inbounds nuw i8, ptr %.0232.us, i64 8
  %.0.us = load ptr, ptr %i.ep, align 8, !tbaa !31 ; 2 uses
  %.not180.us = icmp eq ptr %.0.us, null
  br i1 %.not180.us, label %._crit_edge.us238, label %bb.q, !llvm.loop !44

._crit_edge.us238:                                ; preds = %.critedge.us, %bb.p
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %exitcond281.not = icmp eq i64 %indvars.iv.next278, %wide.trip.count280
  br i1 %exitcond281.not, label %._crit_edge235.us, label %bb.p, !llvm.loop !45

.lr.ph.us:                                        ; preds = %bb.p
  %11 = load ptr, ptr %i.bx, align 8, !tbaa !16   ; 3 uses
  %12 = ptrtoint ptr %11 to i64
  %13 = xor i64 %12, -1                           ; 2 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv277
  %15 = load ptr, ptr %14, align 8, !tbaa !16     ; 3 uses
  %16 = ptrtoint ptr %15 to i64
  %17 = xor i64 %16, -1                           ; 2 uses
  br label %bb.q

._crit_edge235.us:                                ; preds = %._crit_edge.us238
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %exitcond286.not = icmp eq i64 %indvars.iv.next283, %wide.trip.count285
  br i1 %exitcond286.not, label %._crit_edge237, label %.preheader206.us, !llvm.loop !46

._crit_edge237:                                   ; preds = %._crit_edge235.us, %.preheader206.lr.ph, %._crit_edge228
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @FreeFloatMtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare ptr @AllocateFloatMtx(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @AllocateCharVec(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local float @Q__align(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readnone captures(address_is_null) %7, ptr nofree noundef captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @penalty, align 4, !tbaa !4
  %i.b = sitofp i32 %i.a to float                 ; 7 uses
  %i.c = load i32, ptr @Q__align.orlgth1, align 4, !tbaa !4 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @njob, align 4, !tbaa !4
  %i.f = tail call ptr @AllocateCharMtx(i32 noundef %i.e, i32 noundef 0) #12
  store ptr %i.f, ptr @Q__align.mseq1, align 8, !tbaa !47
  %i.g = load i32, ptr @njob, align 4, !tbaa !4
  %i.h = tail call ptr @AllocateCharMtx(i32 noundef %i.g, i32 noundef 0) #12
  store ptr %i.h, ptr @Q__align.mseq2, align 8, !tbaa !47
  %.pre = load i32, ptr @Q__align.orlgth1, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #13 ; 10 uses
  %i.l = trunc i64 %i.k to i32                    ; 24 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !16
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #13 ; 17 uses
  %i.o = trunc i64 %i.n to i32                    ; 32 uses
  %i.p = icmp slt i32 %i.i, %i.l
  %i.q = load i32, ptr @Q__align.orlgth2, align 4 ; 4 uses
  %i.r = icmp slt i32 %i.q, %i.o
  %or.cond521 = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond521, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = icmp sgt i32 %i.i, 0
  %i.t = icmp sgt i32 %i.q, 0
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr @Q__align.w1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.u) #12
  %i.v = load ptr, ptr @Q__align.w2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.v) #12
  %i.w = load ptr, ptr @Q__align.match, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.w) #12
  %i.x = load ptr, ptr @Q__align.initverticalw, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.x) #12
  %i.y = load ptr, ptr @Q__align.lastverticalw, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.y) #12
  %i.z = load ptr, ptr @Q__align.m, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.z) #12
  %i.aa = load ptr, ptr @Q__align.mp, align 8, !tbaa !49
  tail call void @FreeIntVec(ptr noundef %i.aa) #12
  %i.ab = load ptr, ptr @Q__align.mseq, align 8, !tbaa !47
  tail call void @FreeCharMtx(ptr noundef %i.ab) #12
  %i.ac = load ptr, ptr @Q__align.digf1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ac) #12
  %i.ad = load ptr, ptr @Q__align.digf2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ad) #12
  %i.ae = load ptr, ptr @Q__align.diaf1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ae) #12
  %i.af = load ptr, ptr @Q__align.diaf2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.af) #12
  %i.ag = load ptr, ptr @Q__align.gapz1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ag) #12
  %i.ah = load ptr, ptr @Q__align.gapz2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ah) #12
  %i.ai = load ptr, ptr @Q__align.gapf1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ai) #12
  %i.aj = load ptr, ptr @Q__align.gapf2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.aj) #12
  %i.ak = load ptr, ptr @Q__align.ogcp1g, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ak) #12
  %i.al = load ptr, ptr @Q__align.ogcp2g, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.al) #12
  %i.am = load ptr, ptr @Q__align.fgcp1g, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.am) #12
  %i.an = load ptr, ptr @Q__align.fgcp2g, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.an) #12
  %i.ao = load ptr, ptr @Q__align.og_h_dg_n1_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ao) #12
  %i.ap = load ptr, ptr @Q__align.og_h_dg_n2_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ap) #12
  %i.aq = load ptr, ptr @Q__align.fg_h_dg_n1_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.aq) #12
  %i.ar = load ptr, ptr @Q__align.fg_h_dg_n2_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ar) #12
  %i.as = load ptr, ptr @Q__align.og_t_fg_h_dg_n1_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.as) #12
  %i.at = load ptr, ptr @Q__align.og_t_fg_h_dg_n2_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.at) #12
  %i.au = load ptr, ptr @Q__align.fg_t_og_h_dg_n1_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.au) #12
  %i.av = load ptr, ptr @Q__align.fg_t_og_h_dg_n2_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.av) #12
  %i.aw = load ptr, ptr @Q__align.gapz_n1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.aw) #12
  %i.ax = load ptr, ptr @Q__align.gapz_n2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ax) #12
  %i.ay = load ptr, ptr @Q__align.cpmx1, align 8, !tbaa !8
  tail call void @FreeFloatMtx(ptr noundef %i.ay) #12
  %i.az = load ptr, ptr @Q__align.cpmx2, align 8, !tbaa !8
  tail call void @FreeFloatMtx(ptr noundef %i.az) #12
  %i.ba = load ptr, ptr @Q__align.floatwork, align 8, !tbaa !8
  tail call void @FreeFloatMtx(ptr noundef %i.ba) #12
  %i.bb = load ptr, ptr @Q__align.intwork, align 8, !tbaa !51
  tail call void @FreeIntMtx(ptr noundef %i.bb) #12
  %.pre724 = load i32, ptr @Q__align.orlgth1, align 4, !tbaa !4
  %.pre725 = load i32, ptr @Q__align.orlgth2, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bc = phi i32 [ %.pre725, %bb.e ], [ %i.q, %bb.d ]
  %i.bd = phi i32 [ %.pre724, %bb.e ], [ %i.i, %bb.d ]
  %i.be = sitofp i32 %i.l to double
  %i.bf = fmul nnan double %i.be, 1.300000e+00
  %i.bg = fptosi double %i.bf to i32
  %. = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 %i.bg) ; 4 uses
  %i.bh = add nuw nsw i32 %., 100                 ; 2 uses
  %i.bi = sitofp i32 %i.o to double
  %i.bj = fmul nnan double %i.bi, 1.300000e+00
  %i.bk = fptosi double %i.bj to i32
  %i.bl = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 %i.bk) ; 4 uses
  %i.bm = add nuw nsw i32 %i.bl, 100              ; 2 uses
  %i.bn = add nuw nsw i32 %i.bl, 102              ; 17 uses
  %i.bo = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.bo, ptr @Q__align.w1, align 8, !tbaa !12
  %i.bp = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.bp, ptr @Q__align.w2, align 8, !tbaa !12
  %i.bq = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.bq, ptr @Q__align.match, align 8, !tbaa !12
  %i.br = add nuw nsw i32 %., 102                 ; 14 uses
  %i.bs = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.bs, ptr @Q__align.initverticalw, align 8, !tbaa !12
  %i.bt = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.bt, ptr @Q__align.lastverticalw, align 8, !tbaa !12
  %i.bu = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.bu, ptr @Q__align.m, align 8, !tbaa !12
  %i.bv = tail call ptr @AllocateIntVec(i32 noundef %i.bn) #12
  store ptr %i.bv, ptr @Q__align.mp, align 8, !tbaa !49
  %i.bw = load i32, ptr @njob, align 4, !tbaa !4
  %i.bx = add nuw nsw i32 %i.bm, %i.bh
  %i.by = tail call ptr @AllocateCharMtx(i32 noundef %i.bw, i32 noundef %i.bx) #12
  store ptr %i.by, ptr @Q__align.mseq, align 8, !tbaa !47
  %i.bz = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.bz, ptr @Q__align.digf1, align 8, !tbaa !12
  %i.ca = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.ca, ptr @Q__align.digf2, align 8, !tbaa !12
  %i.cb = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.cb, ptr @Q__align.diaf1, align 8, !tbaa !12
  %i.cc = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.cc, ptr @Q__align.diaf2, align 8, !tbaa !12
  %i.cd = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.cd, ptr @Q__align.gapz1, align 8, !tbaa !12
  %i.ce = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.ce, ptr @Q__align.gapz2, align 8, !tbaa !12
  %i.cf = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.cf, ptr @Q__align.gapf1, align 8, !tbaa !12
  %i.cg = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.cg, ptr @Q__align.gapf2, align 8, !tbaa !12
  %i.ch = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.ch, ptr @Q__align.ogcp1g, align 8, !tbaa !12
  %i.ci = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.ci, ptr @Q__align.ogcp2g, align 8, !tbaa !12
  %i.cj = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.cj, ptr @Q__align.fgcp1g, align 8, !tbaa !12
  %i.ck = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.ck, ptr @Q__align.fgcp2g, align 8, !tbaa !12
  %i.cl = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.cl, ptr @Q__align.og_h_dg_n1_p, align 8, !tbaa !12
  %i.cm = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.cm, ptr @Q__align.og_h_dg_n2_p, align 8, !tbaa !12
end_hunk_0
