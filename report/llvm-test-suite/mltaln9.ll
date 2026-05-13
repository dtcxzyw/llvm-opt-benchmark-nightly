inline.NumInlined: 16
inline.NumDeleted: 4
begin_hunk_0_@loadtop:bb.a
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %indvars.iv277 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !106
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv277 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv277
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = trunc nuw nsw i64 %indvars.iv277 to i32
  store i32 %i.ap, ptr %i.ao, align 8, !tbaa !109
  %indvars.iv.next278 = or disjoint i64 %indvars.iv277, 1 ; 4 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv.next278 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !106
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv.next278 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -24
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !108
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv.next278
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = trunc nuw nsw i64 %indvars.iv.next278 to i32
  store i32 %i.ax, ptr %i.aw, align 8, !tbaa !109
  %indvars.iv.next278.1 = add nuw nsw i64 %indvars.iv277, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph238.unr-lcssa, label %.lr.ph233, !llvm.loop !122

._crit_edge239.thread:                            ; preds = %bb.i
  %.pre295 = load ptr, ptr @loadtop.ac, align 8, !tbaa !98
  %i.ay = sext i32 %0 to i64
  %i.az = getelementptr [24 x i8], ptr %.pre295, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  store ptr null, ptr %i.ba, align 8, !tbaa !106
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc318 = tail call i32 @fputc(i32 10, ptr %i.bb) ; 0 uses
  br label %._crit_edge272

.lr.ph238.unr-lcssa:                              ; preds = %.lr.ph233
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph238, label %.lr.ph233.epil.preheader

.lr.ph233.epil.preheader:                         ; preds = %.lr.ph238.unr-lcssa, %.lr.ph233.preheader
  %.epil.init = phi ptr [ %.pre295316, %.lr.ph233.preheader ], [ %i.ab, %.lr.ph238.unr-lcssa ]
  %indvars.iv277.epil.init = phi i64 [ 0, %.lr.ph233.preheader ], [ %indvars.iv.next278.1, %.lr.ph238.unr-lcssa ] ; 4 uses
  %lcmp.mod336 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod336)
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %.epil.init, i64 %indvars.iv277.epil.init ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !106
  %i.be = load ptr, ptr @loadtop.ac, align 8, !tbaa !98 ; 3 uses
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %indvars.iv277.epil.init ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !108
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %indvars.iv277.epil.init
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = trunc nuw nsw i64 %indvars.iv277.epil.init to i32
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !109
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.unr-lcssa, %.lr.ph233.epil.preheader
  %.lcssa334 = phi ptr [ %i.ab, %.lr.ph238.unr-lcssa ], [ %i.be, %.lr.ph233.epil.preheader ]
  %i.bl = add nsw i32 %0, -1                      ; 2 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %.lcssa334, i64 %i.bm
  store ptr null, ptr %i.bn, align 8, !tbaa !106
  %i.bo = load ptr, ptr @loadtop.tmptmplen, align 8, !tbaa !19
  %i.bp = zext nneg i32 %0 to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bo, i8 0, i64 %i.bq, i1 false), !tbaa !21
  %i.br = load ptr, ptr @loadtop.hist, align 8, !tbaa !89 ; 7 uses
  %i.bs = load ptr, ptr @loadtop.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count288 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 8
  %i.bt = ptrtoaddr ptr %i.bs to i64
  %i.bu = ptrtoaddr ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %diff.check = icmp ult i64 %i.bv, 32
  %or.cond330 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond330, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph238
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.bw, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.bx, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <4 x i32> splat (i32 1), ptr %i.by, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.bz, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge239, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph238, %middle.block
  %indvars.iv285.ph = phi i64 [ 0, %.lr.ph238 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter337 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv285.prol = phi i64 [ %indvars.iv.next286.prol, %scalar.ph.prol ], [ %indvars.iv285.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv285.prol
  store i32 -1, ptr %i.cb, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv285.prol
  store i32 1, ptr %i.cc, align 4, !tbaa !4
  %indvars.iv.next286.prol = add nuw nsw i64 %indvars.iv285.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter337
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !124

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv285.unr = phi i64 [ %indvars.iv285.ph, %scalar.ph.preheader ], [ %indvars.iv.next286.prol, %scalar.ph.prol ]
  %i.cd = sub nsw i64 %indvars.iv285.ph, %wide.trip.count
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %._crit_edge239, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv285 = phi i64 [ %indvars.iv.next286.3, %scalar.ph ], [ %indvars.iv285.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv285
  store i32 -1, ptr %i.cf, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv285
  store i32 1, ptr %i.cg, align 4, !tbaa !4
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next286
  store i32 -1, ptr %i.ch, align 4, !tbaa !4
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next286
  store i32 1, ptr %i.ci, align 4, !tbaa !4
  %indvars.iv.next286.1 = add nuw nsw i64 %indvars.iv285, 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next286.1
  store i32 -1, ptr %i.cj, align 4, !tbaa !4
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next286.1
  store i32 1, ptr %i.ck, align 4, !tbaa !4
  %indvars.iv.next286.2 = add nuw nsw i64 %indvars.iv285, 3 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next286.2
  store i32 -1, ptr %i.cl, align 4, !tbaa !4
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next286.2
  store i32 1, ptr %i.cm, align 4, !tbaa !4
  %indvars.iv.next286.3 = add nuw nsw i64 %indvars.iv285, 4 ; 2 uses
  %exitcond289.not.3 = icmp eq i64 %indvars.iv.next286.3, %wide.trip.count288
  br i1 %exitcond289.not.3, label %._crit_edge239, label %scalar.ph, !llvm.loop !125

._crit_edge239:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.cn) ; 0 uses
  %.not323 = icmp eq i32 %0, 1
  br i1 %.not323, label %._crit_edge272, label %.lr.ph271

.lr.ph271:                                        ; preds = %._crit_edge239
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count293 = zext nneg i32 %i.bl to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph271, %bb.ag
  %indvars.iv290 = phi i64 [ 0, %.lr.ph271 ], [ %indvars.iv.next291, %bb.ag ] ; 4 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv290 to i32 ; 3 uses
  %i.cr = urem i32 %i.cq, 10
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ct, ptr noundef nonnull @.str.13, i32 noundef %i.cq, i32 noundef %0) #35 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store <2 x float> splat (float -1.000000e+00), ptr %i.b, align 8, !tbaa !21
  %i.cv = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.f) ; 0 uses
  %i.cw = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.b, ptr noundef nonnull %i.co) #37 ; 0 uses
  %i.cx = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.cy = add nsw i32 %i.cx, -1                   ; 7 uses
  store i32 %i.cy, ptr %i.a, align 4, !tbaa !4
  %i.cz = load i32, ptr %i.cp, align 4, !tbaa !4  ; 3 uses
  %i.da = add nsw i32 %i.cz, -1                   ; 7 uses
  store i32 %i.da, ptr %i.cp, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.cx, %i.cz
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dc = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.db) #34 ; 0 uses
  call void @exit(i32 noundef 1) #36
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.l
  %i.dd = sext i32 %i.cy to i64                   ; 7 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !19
  %i.dg = sub nsw i32 %i.cz, %i.cx
  %4 = zext nneg i32 %i.dg to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !21
  %i.dj = load float, ptr %i.b, align 8, !tbaa !21
  %i.dk = fcmp une float %i.dj, -1.000000e+00
  %i.dl = load float, ptr %i.co, align 4
  %i.dm = fcmp une float %i.dl, -1.000000e+00
  %or.cond = select i1 %i.dk, i1 true, i1 %i.dm
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %loadtreeoneline.exit
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.do = call i64 @fwrite(ptr nonnull @.str.22, i64 44, i64 1, ptr %i.dn) #34 ; 0 uses
  call void @exit(i32 noundef 1) #36
  unreachable

bb.o:                                             ; preds = %loadtreeoneline.exit
  %i.dp = load ptr, ptr @loadtop.hist, align 8, !tbaa !89 ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.dd ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4  ; 2 uses
  %i.ds = load ptr, ptr @loadtop.nmemar, align 8, !tbaa !89 ; 2 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dd ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4  ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv290 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !87
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !89
  %i.dy = add nsw i32 %i.du, 1
  %i.dz = sext i32 %i.dy to i64
  %i.ea = shl nsw i64 %i.dz, 2
  %i.eb = call ptr @realloc(ptr noundef %i.dx, i64 noundef %i.ea) #40 ; 5 uses
  %i.ec = load ptr, ptr %i.dv, align 8, !tbaa !87 ; 2 uses
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !89
  %i.ed = icmp eq i32 %i.dr, -1
  br i1 %i.ed, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store i32 %i.cy, ptr %i.eb, align 4, !tbaa !4
  store i32 -1, ptr %i.ee, align 4, !tbaa !4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ef = sext i32 %i.dr to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !87 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !89 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !89 ; 3 uses
  %i.el = load i32, ptr %i.ei, align 4, !tbaa !4  ; 3 uses
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !4  ; 3 uses
  %i.en = icmp sgt i32 %i.el, %i.em               ; 2 uses
  %i.eo = call i32 @llvm.smin.i32(i32 %i.el, i32 %i.em) ; 2 uses
  %i.ep = call i32 @llvm.smax.i32(i32 %i.el, i32 %i.em)
  %.222 = select i1 %i.en, ptr %i.ei, ptr %i.ek   ; 2 uses
  %.not212240 = icmp eq i32 %i.eo, -1
  br i1 %.not212240, label %.preheader228, label %.lr.ph244.preheader

.lr.ph244.preheader:                              ; preds = %bb.q
  %. = select i1 %i.en, ptr %i.ek, ptr %i.ei
  br label %.lr.ph244

.preheader228.loopexit:                           ; preds = %.lr.ph244
  %.pre = load i32, ptr %.222, align 4, !tbaa !4
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.loopexit, %bb.q
  %i.eq = phi i32 [ %i.ep, %bb.q ], [ %.pre, %.preheader228.loopexit ] ; 2 uses
  %.0193.lcssa = phi ptr [ %i.eb, %bb.q ], [ %i.et, %.preheader228.loopexit ] ; 2 uses
  %.not213245 = icmp eq i32 %i.eq, -1
  br i1 %.not213245, label %._crit_edge249, label %.lr.ph248

.lr.ph244:                                        ; preds = %.lr.ph244.preheader, %.lr.ph244
  %i.er = phi i32 [ %i.eu, %.lr.ph244 ], [ %i.eo, %.lr.ph244.preheader ]
  %.0189242 = phi ptr [ %i.es, %.lr.ph244 ], [ %., %.lr.ph244.preheader ]
  %.0193241 = phi ptr [ %i.et, %.lr.ph244 ], [ %i.eb, %.lr.ph244.preheader ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0189242, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0193241, i64 4 ; 2 uses
  store i32 %i.er, ptr %.0193241, align 4, !tbaa !4
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !4  ; 2 uses
  %.not212 = icmp eq i32 %i.eu, -1
  br i1 %.not212, label %.preheader228.loopexit, label %.lr.ph244, !llvm.loop !126

.lr.ph248:                                        ; preds = %.preheader228, %.lr.ph248
  %i.ev = phi i32 [ %i.ey, %.lr.ph248 ], [ %i.eq, %.preheader228 ]
  %.1190247 = phi ptr [ %i.ew, %.lr.ph248 ], [ %.222, %.preheader228 ]
  %.1194246 = phi ptr [ %i.ex, %.lr.ph248 ], [ %.0193.lcssa, %.preheader228 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.1190247, i64 4 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.1194246, i64 4 ; 2 uses
  store i32 %i.ev, ptr %.1194246, align 4, !tbaa !4
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !4  ; 2 uses
  %.not213 = icmp eq i32 %i.ey, -1
  br i1 %.not213, label %._crit_edge249, label %.lr.ph248, !llvm.loop !127

._crit_edge249:                                   ; preds = %.lr.ph248, %.preheader228
  %.1194.lcssa = phi ptr [ %.0193.lcssa, %.preheader228 ], [ %i.ex, %.lr.ph248 ]
  store i32 -1, ptr %.1194.lcssa, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge249, %bb.p
  %i.ez = sext i32 %i.da to i64                   ; 6 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4  ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.ez
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !89
  %i.fg = add nsw i32 %i.fd, 1
  %i.fh = sext i32 %i.fg to i64
  %i.fi = shl nsw i64 %i.fh, 2
  %i.fj = call ptr @realloc(ptr noundef %i.ff, i64 noundef %i.fi) #40 ; 6 uses
  %i.fk = load ptr, ptr %i.dv, align 8, !tbaa !87
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.fj, ptr %i.fl, align 8, !tbaa !89
  %.not214 = icmp eq ptr %i.fj, null
  br i1 %.not214, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fm = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.fn = call i64 @fwrite(ptr nonnull @.str.15, i64 24, i64 1, ptr %i.fm) #34 ; 0 uses
  call void @exit(i32 noundef 1) #36
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.fo = icmp eq i32 %i.fb, -1
  br i1 %i.fo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store i32 %i.da, ptr %i.fj, align 4, !tbaa !4
  store i32 -1, ptr %i.fp, align 4, !tbaa !4
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.fq = sext i32 %i.fb to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !87 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !89 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !89 ; 3 uses
  %i.fw = load i32, ptr %i.ft, align 4, !tbaa !4  ; 3 uses
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !4  ; 3 uses
  %i.fy = icmp sgt i32 %i.fw, %i.fx               ; 2 uses
  %i.fz = call i32 @llvm.smin.i32(i32 %i.fw, i32 %i.fx) ; 2 uses
  %i.ga = call i32 @llvm.smax.i32(i32 %i.fw, i32 %i.fx)
  %.224 = select i1 %i.fy, ptr %i.ft, ptr %i.fv   ; 2 uses
  %.not215251 = icmp eq i32 %i.fz, -1
  br i1 %.not215251, label %.preheader, label %.lr.ph255.preheader

.lr.ph255.preheader:                              ; preds = %bb.v
  %.223 = select i1 %i.fy, ptr %i.fv, ptr %i.ft
  br label %.lr.ph255

.preheader.loopexit:                              ; preds = %.lr.ph255
  %.pre296 = load i32, ptr %.224, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.v
  %i.gb = phi i32 [ %i.ga, %bb.v ], [ %.pre296, %.preheader.loopexit ] ; 2 uses
  %.2195.lcssa = phi ptr [ %i.fj, %bb.v ], [ %i.ge, %.preheader.loopexit ] ; 2 uses
  %.not216257 = icmp eq i32 %i.gb, -1
  br i1 %.not216257, label %._crit_edge261, label %.lr.ph260

.lr.ph255:                                        ; preds = %.lr.ph255.preheader, %.lr.ph255
  %i.gc = phi i32 [ %i.gf, %.lr.ph255 ], [ %i.fz, %.lr.ph255.preheader ]
  %.2191253 = phi ptr [ %i.gd, %.lr.ph255 ], [ %.223, %.lr.ph255.preheader ]
  %.2195252 = phi ptr [ %i.ge, %.lr.ph255 ], [ %i.fj, %.lr.ph255.preheader ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.2191253, i64 4 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.2195252, i64 4 ; 2 uses
  store i32 %i.gc, ptr %.2195252, align 4, !tbaa !4
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !4  ; 2 uses
  %.not215 = icmp eq i32 %i.gf, -1
  br i1 %.not215, label %.preheader.loopexit, label %.lr.ph255, !llvm.loop !128

.lr.ph260:                                        ; preds = %.preheader, %.lr.ph260
  %i.gg = phi i32 [ %i.gj, %.lr.ph260 ], [ %i.gb, %.preheader ]
  %.3192259 = phi ptr [ %i.gh, %.lr.ph260 ], [ %.224, %.preheader ]
  %.3196258 = phi ptr [ %i.gi, %.lr.ph260 ], [ %.2195.lcssa, %.preheader ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.3192259, i64 4 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.3196258, i64 4 ; 2 uses
  store i32 %i.gg, ptr %.3196258, align 4, !tbaa !4
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !4  ; 2 uses
  %.not216 = icmp eq i32 %i.gj, -1
  br i1 %.not216, label %._crit_edge261, label %.lr.ph260, !llvm.loop !129

._crit_edge261:                                   ; preds = %.lr.ph260, %.preheader
  %.3196.lcssa = phi ptr [ %.2195.lcssa, %.preheader ], [ %i.gi, %.lr.ph260 ]
  store i32 -1, ptr %.3196.lcssa, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge261, %bb.u
  %i.gk = fmul float %i.di, 5.000000e-01          ; 3 uses
  %i.gl = load ptr, ptr @loadtop.tmptmplen, align 8, !tbaa !19 ; 2 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.dd ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !21
  %i.go = fsub float %i.gk, %i.gn                 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv290 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !19 ; 4 uses
  store float %i.go, ptr %i.gq, align 4, !tbaa !21
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.ez
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !21
  %i.gt = fsub float %i.gk, %i.gs                 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
end_hunk_0
