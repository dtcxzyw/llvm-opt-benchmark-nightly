Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/shortest?download=true
inline.NumInlined: 19
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@Pshortestpath:bb.a
  %.sroa.6.0..sroa_idx411 = getelementptr inbounds nuw i8, ptr %.pre, i64 -8
  br label %bb.j

.lr.ph304:                                        ; preds = %.lr.ph304, %.lr.ph304.preheader.new
  %.0225302 = phi double [ +inf, %.lr.ph304.preheader.new ], [ %.1226.1, %.lr.ph304 ] ; 2 uses
  %.0227301 = phi i64 [ -1, %.lr.ph304.preheader.new ], [ %.1228.fr.1, %.lr.ph304 ]
  %.0229300 = phi i64 [ 0, %.lr.ph304.preheader.new ], [ %i.ao, %.lr.ph304 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph304.preheader.new ], [ %niter.next.1, %.lr.ph304 ]
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.0229300
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !57 ; 2 uses
  %i.aj = fcmp ogt double %.0225302, %i.ai        ; 2 uses
  %.1228 = select i1 %i.aj, i64 %.0229300, i64 %.0227301
  %.1228.fr = freeze i64 %.1228
  %.1226 = select i1 %i.aj, double %i.ai, double %.0225302 ; 2 uses
  %i.ak = or disjoint i64 %.0229300, 1            ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !57 ; 2 uses
  %i.an = fcmp ogt double %.1226, %i.am           ; 2 uses
  %.1228.1 = select i1 %i.an, i64 %i.ak, i64 %.1228.fr
  %.1228.fr.1 = freeze i64 %.1228.1               ; 3 uses
  %.1226.1 = select i1 %i.an, double %i.am, double %.1226 ; 2 uses
  %i.ao = add nuw i64 %.0229300, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge305.unr-lcssa, label %.lr.ph304, !llvm.loop !37

._crit_edge305.unr-lcssa:                         ; preds = %.lr.ph304
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge305, label %.lr.ph304.epil.preheader

.lr.ph304.epil.preheader:                         ; preds = %._crit_edge305.unr-lcssa, %.lr.ph304.preheader
  %.0225302.epil.init = phi double [ +inf, %.lr.ph304.preheader ], [ %.1226.1, %._crit_edge305.unr-lcssa ]
  %.0227301.epil.init = phi i64 [ -1, %.lr.ph304.preheader ], [ %.1228.fr.1, %._crit_edge305.unr-lcssa ]
  %.0229300.epil.init = phi i64 [ 0, %.lr.ph304.preheader ], [ %i.ao, %._crit_edge305.unr-lcssa ] ; 2 uses
  %lcmp.mod428 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod428)
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.0229300.epil.init
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !57
  %i.ar = fcmp ogt double %.0225302.epil.init, %i.aq
  %.1228.epil = select i1 %i.ar, i64 %.0229300.epil.init, i64 %.0227301.epil.init
  %.1228.fr.epil = freeze i64 %.1228.epil
  br label %._crit_edge305

._crit_edge305:                                   ; preds = %._crit_edge305.unr-lcssa, %.lr.ph304.epil.preheader
  %.1228.fr.lcssa = phi i64 [ %.1228.fr.1, %._crit_edge305.unr-lcssa ], [ %.1228.fr.epil, %.lr.ph304.epil.preheader ] ; 4 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.1228.fr.lcssa ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.at = icmp eq i64 %.1228.fr.lcssa, 0
  %spec.select = select i1 %i.at, i64 %i.n, i64 %.1228.fr.lcssa
  %i.au = add i64 %.1228.fr.lcssa, 1
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge305, %._crit_edge305.thread
  %.sroa.6.0.copyload416.in = phi ptr [ %.sroa.6.0..sroa_idx411, %._crit_edge305.thread ], [ %.sroa.6.0..sroa_idx, %._crit_edge305 ]
  %.sroa.020.0.copyload415.in = phi ptr [ %i.ag, %._crit_edge305.thread ], [ %i.as, %._crit_edge305 ]
  %.0227.lcssa414 = phi i64 [ 0, %._crit_edge305.thread ], [ %i.au, %._crit_edge305 ]
  %i.av = phi i64 [ -1, %._crit_edge305.thread ], [ %spec.select, %._crit_edge305 ]
  %.sroa.020.0.copyload415 = load double, ptr %.sroa.020.0.copyload415.in, align 8, !tbaa !23 ; 3 uses
  %.sroa.6.0.copyload416 = load double, ptr %.sroa.6.0.copyload416.in, align 8, !tbaa !23 ; 2 uses
  %i.aw = getelementptr [16 x i8], ptr %.pre, i64 %i.av ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -16
  %.sroa.017.0.copyload = load double, ptr %i.ax, align 8, !tbaa !23 ; 2 uses
  %i.ay = urem i64 %.0227.lcssa414, %i.n
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.ay ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.az, align 8, !tbaa !23 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.ba = fcmp oeq double %.sroa.017.0.copyload, %.sroa.020.0.copyload415
  %i.bb = fcmp oeq double %.sroa.020.0.copyload415, %.sroa.0.0.copyload
  %or.cond260 = select i1 %i.ba, i1 %i.bb, i1 false
  %i.bc = fcmp ogt double %.sroa.5.0.copyload, %.sroa.6.0.copyload416
  %or.cond261 = select i1 %or.cond260, i1 %i.bc, i1 false
  br i1 %or.cond261, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.519.0..sroa_idx = getelementptr i8, ptr %i.aw, i64 -8
  %.sroa.519.0.copyload = load double, ptr %.sroa.519.0..sroa_idx, align 8, !tbaa !23
  %i.bd = tail call i32 @ccw(double %.sroa.017.0.copyload, double %.sroa.519.0.copyload, double %.sroa.020.0.copyload415, double %.sroa.6.0.copyload416, double %.sroa.0.0.copyload, double %.sroa.5.0.copyload) #12
  %.not = icmp eq i32 %i.bd, 1
  %.pre372 = load i64, ptr %i.a, align 8, !tbaa !49 ; 5 uses
  br i1 %.not, label %.preheader293, label %bb.m

.preheader293:                                    ; preds = %bb.k
  %.not353 = icmp eq i64 %.pre372, 0
  br i1 %.not353, label %.loopexit292, label %bb.l

bb.l:                                             ; preds = %.preheader293
  %.pre371 = load ptr, ptr %0, align 8, !tbaa !55 ; 3 uses
  store ptr %.pre371, ptr %i.c, align 8, !tbaa !26
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.be, align 8, !tbaa !58
  store ptr %i.c, ptr %i.h, align 8, !tbaa !27
  %exitcond362.peel.not = icmp eq i64 %.pre372, 1
  br i1 %exitcond362.peel.not, label %.loopexit292, label %.lr.ph309.peel.next

bb.m:                                             ; preds = %bb.j, %bb.k
  %i.bf = phi i64 [ %i.n, %bb.j ], [ %.pre372, %bb.k ] ; 4 uses
  %.not245312 = icmp eq i64 %i.bf, 0
  br i1 %.not245312, label %.loopexit292, label %.lr.ph317

.lr.ph317:                                        ; preds = %bb.m
  %i.bg = add i64 %i.bf, -1
  %.pre373.pre = load ptr, ptr %0, align 8, !tbaa !55 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph317, %bb.r
  %.0211314 = phi i64 [ 0, %.lr.ph317 ], [ %.1212, %bb.r ] ; 5 uses
  %.1230.in313 = phi i64 [ %i.bf, %.lr.ph317 ], [ %.1230315, %bb.r ] ; 2 uses
  %.1230315 = add i64 %.1230.in313, -1            ; 5 uses
  %i.bh = icmp ult i64 %.1230315, %i.bg
  br i1 %i.bh, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.pre373.pre, i64 %.1230315 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !57
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.pre373.pre, i64 %.1230.in313 ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !57
  %i.bm = fcmp oeq double %i.bj, %i.bl
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !59
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !59
  %i.br = fcmp oeq double %i.bo, %i.bq
  br i1 %i.br, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %.pre373.pre, i64 %.1230315
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.0211314 ; 3 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !26
  %i.bu = urem i64 %.0211314, %i.bf
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !58
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0211314
  store ptr %i.bt, ptr %i.bx, align 8, !tbaa !27
  %i.by = add i64 %.0211314, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1212 = phi i64 [ %.0211314, %bb.p ], [ %i.by, %bb.q ] ; 2 uses
  %.not245 = icmp eq i64 %.1230315, 0
  br i1 %.not245, label %.loopexit292, label %bb.n, !llvm.loop !38

.lr.ph309.peel.next:                              ; preds = %bb.l, %bb.u
  %.2308 = phi i64 [ %.3, %bb.u ], [ 1, %bb.l ]   ; 5 uses
  %.2231306 = phi i64 [ %i.cq, %bb.u ], [ 1, %bb.l ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %.pre371, i64 %.2231306 ; 4 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !57
  %i.cb = getelementptr i8, ptr %i.bz, i64 -16
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !57
  %i.cd = fcmp oeq double %i.ca, %i.cc
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph309.peel.next
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !59
  %i.cg = getelementptr i8, ptr %i.bz, i64 -8
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !59
  %i.ci = fcmp oeq double %i.cf, %i.ch
  br i1 %i.ci, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph309.peel.next
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %.pre371, i64 %.2231306
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.2308 ; 3 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !26
  %i.cl = urem i64 %.2308, %.pre372
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !58
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.2308
  store ptr %i.ck, ptr %i.co, align 8, !tbaa !27
  %i.cp = add i64 %.2308, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.3 = phi i64 [ %.2308, %bb.s ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cq = add nuw i64 %.2231306, 1                ; 2 uses
  %exitcond362.not = icmp eq i64 %i.cq, %.pre372
  br i1 %exitcond362.not, label %.loopexit292, label %.lr.ph309.peel.next, !llvm.loop !39

.loopexit292:                                     ; preds = %bb.u, %bb.r, %bb.l, %.preheader293, %bb.m
  %.4 = phi i64 [ %.1212, %bb.r ], [ 0, %bb.m ], [ 0, %.preheader293 ], [ 1, %bb.l ], [ %.3, %bb.u ]
  %i.cr = tail call fastcc i32 @triangulate(ptr noundef %i.h, i64 noundef %.4)
  %.not246 = icmp eq i32 %i.cr, 0
  br i1 %.not246, label %.preheader291, label %bb.v

.preheader291:                                    ; preds = %.loopexit292
  %tris.val266321 = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51 ; 2 uses
  %.not354 = icmp eq i64 %tris.val266321, 0
  br i1 %.not354, label %._crit_edge327.thread, label %.lr.ph323

bb.v:                                             ; preds = %.loopexit292
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  br label %bb.ce

.loopexit290:                                     ; preds = %connecttris.exit
  %i.cs = icmp ult i64 %i.cu, %tris.val265
  br i1 %i.cs, label %.lr.ph323, label %.preheader289, !llvm.loop !40

.preheader289:                                    ; preds = %.loopexit290
  %i.ct = icmp eq i64 %tris.val265, 0
  br i1 %i.ct, label %._crit_edge327.thread, label %.lr.ph326.preheader

.lr.ph326.preheader:                              ; preds = %.lr.ph323, %.preheader289
  br label %.lr.ph326

.lr.ph323:                                        ; preds = %.preheader291, %.loopexit290
  %tris.val266376 = phi i64 [ %tris.val265, %.loopexit290 ], [ %tris.val266321, %.preheader291 ]
  %.0220322 = phi i64 [ %i.cu, %.loopexit290 ], [ 0, %.preheader291 ] ; 7 uses
  %i.cu = add nuw i64 %.0220322, 1                ; 4 uses
  %i.cv = icmp ult i64 %i.cu, %tris.val266376
  br i1 %i.cv, label %.preheader.i.preheader, label %.lr.ph326.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph323, %connecttris.exit
  %.0219320 = phi i64 [ %i.gf, %connecttris.exit ], [ %i.cu, %.lr.ph323 ] ; 7 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.ak
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ak ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.cw = load ptr, ptr @tris, align 8, !tbaa !18
  %i.cx = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0220322) #12
  %i.cy = getelementptr inbounds nuw [80 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load ptr, ptr @tris, align 8, !tbaa !18
  %i.da = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0219320) #12
  %i.db = getelementptr inbounds nuw [80 x i8], ptr %i.cz, i64 %i.da ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %indvars.iv.i ; 4 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !29
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !26 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !29
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !26 ; 2 uses
  %i.dj = icmp eq ptr %i.df, %i.di
  br i1 %i.dj, label %bb.w, label %.preheader._crit_edge.i

.preheader._crit_edge.i:                          ; preds = %.preheader.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  %.pre32.i = load ptr, ptr %.pre.i, align 8, !tbaa !26
  br label %bb.x

bb.w:                                             ; preds = %.preheader.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !30
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !26
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !30
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !26 ; 2 uses
  %i.dq = icmp eq ptr %i.dm, %i.dp
  br i1 %i.dq, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader._crit_edge.i
  %i.dr = phi ptr [ %.pre32.i, %.preheader._crit_edge.i ], [ %i.dp, %bb.w ]
  %i.ds = icmp eq ptr %i.df, %i.dr
  br i1 %i.ds, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !30
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !26
  %i.dw = icmp eq ptr %i.dv, %i.di
  br i1 %i.dw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 %.0219320, ptr %i.dx, align 8, !tbaa !31
  %i.dy = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i64 %.0220322, ptr %i.dy, align 8, !tbaa !31
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.dz = load ptr, ptr @tris, align 8, !tbaa !18
  %i.ea = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0220322) #12
  %i.eb = getelementptr inbounds nuw [80 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = load ptr, ptr @tris, align 8, !tbaa !18
  %i.ed = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0219320) #12
  %i.ee = getelementptr inbounds nuw [80 x i8], ptr %i.ec, i64 %i.ed ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %indvars.iv.i ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !29
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !26 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !29
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !26 ; 2 uses
  %i.em = icmp eq ptr %i.ei, %i.el
  br i1 %i.em, label %bb.ab, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.aa
  %.phi.trans.insert33.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %.pre34.i = load ptr, ptr %.phi.trans.insert33.i, align 8, !tbaa !30
  %.pre35.i = load ptr, ptr %.pre34.i, align 8, !tbaa !26
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !30
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !26
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !30
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !26 ; 2 uses
  %i.et = icmp eq ptr %i.ep, %i.es
  br i1 %i.et, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i
  %i.eu = phi ptr [ %.pre35.i, %._crit_edge.i ], [ %i.es, %bb.ab ]
  %i.ev = icmp eq ptr %i.ei, %i.eu
  br i1 %i.ev, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !30
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !26
  %i.ez = icmp eq ptr %i.ey, %i.el
  br i1 %i.ez, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 %.0219320, ptr %i.fa, align 8, !tbaa !31
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  store i64 %.0220322, ptr %i.fb, align 8, !tbaa !31
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.fc = load ptr, ptr @tris, align 8, !tbaa !18
  %i.fd = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0220322) #12
  %i.fe = getelementptr inbounds nuw [80 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = load ptr, ptr @tris, align 8, !tbaa !18
  %i.fg = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0219320) #12
  %i.fh = getelementptr inbounds nuw [80 x i8], ptr %i.ff, i64 %i.fg ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.fi, i64 %indvars.iv.i ; 4 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !29
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !26 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !29
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !26 ; 2 uses
  %i.fp = icmp eq ptr %i.fl, %i.fo
  br i1 %i.fp, label %bb.ag, label %._crit_edge36.i

._crit_edge36.i:                                  ; preds = %bb.af
  %.phi.trans.insert37.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %.pre38.i = load ptr, ptr %.phi.trans.insert37.i, align 8, !tbaa !30
  %.pre39.i = load ptr, ptr %.pre38.i, align 8, !tbaa !26
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !30
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !26
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !30
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !26 ; 2 uses
  %i.fw = icmp eq ptr %i.fs, %i.fv
  br i1 %i.fw, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge36.i
  %i.fx = phi ptr [ %.pre39.i, %._crit_edge36.i ], [ %i.fv, %bb.ag ]
  %i.fy = icmp eq ptr %i.fl, %i.fx
  br i1 %i.fy, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !30
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !26
  %i.gc = icmp eq ptr %i.gb, %i.fo
  br i1 %i.gc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i64 %.0219320, ptr %i.gd, align 8, !tbaa !31
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fh, i64 72
  store i64 %.0220322, ptr %i.ge, align 8, !tbaa !31
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i, label %connecttris.exit, label %.preheader.i, !llvm.loop !41

connecttris.exit:                                 ; preds = %bb.ak
  %i.gf = add nuw i64 %.0219320, 1                ; 2 uses
  %tris.val265 = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51 ; 4 uses
  %i.gg = icmp ult i64 %i.gf, %tris.val265
  br i1 %i.gg, label %.preheader.i.preheader, label %.loopexit290, !llvm.loop !42

.lr.ph326:                                        ; preds = %.lr.ph326.preheader, %bb.al
  %.1221325 = phi i64 [ %i.gi, %bb.al ], [ 0, %.lr.ph326.preheader ] ; 3 uses
  %i.gh = tail call fastcc i32 @pointintri(i64 noundef %.1221325, ptr noundef %1)
  %.not247 = icmp eq i32 %i.gh, 0
  %tris.val263.pre.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51 ; 3 uses
  br i1 %.not247, label %bb.al, label %._crit_edge327

bb.al:                                            ; preds = %.lr.ph326
  %i.gi = add nuw i64 %.1221325, 1                ; 3 uses
  %i.gj = icmp ult i64 %i.gi, %tris.val263.pre.pre
  br i1 %i.gj, label %.lr.ph326, label %._crit_edge327, !llvm.loop !43

._crit_edge327:                                   ; preds = %bb.al, %.lr.ph326
  %.1221.lcssa = phi i64 [ %i.gi, %bb.al ], [ %.1221325, %.lr.ph326 ] ; 6 uses
  %i.gk = icmp eq i64 %.1221.lcssa, %tris.val263.pre.pre
  br i1 %i.gk, label %._crit_edge327.thread, label %.preheader

.preheader:                                       ; preds = %._crit_edge327
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %.not356 = icmp eq i64 %tris.val263.pre.pre, 0
  br i1 %.not356, label %._crit_edge334.thread, label %.lr.ph333

._crit_edge327.thread:                            ; preds = %.preheader291, %.preheader289, %._crit_edge327
  %i.gm = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gm, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 182, ptr noundef nonnull @.str.6) #14 ; 0 uses
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  br label %bb.ce

.lr.ph333:                                        ; preds = %.preheader, %bb.am
  %.2222332 = phi i64 [ %i.gp, %bb.am ], [ 0, %.preheader ] ; 3 uses
  %i.go = tail call fastcc i32 @pointintri(i64 noundef %.2222332, ptr noundef nonnull %i.gl)
  %.not248 = icmp eq i32 %i.go, 0
  %tris.val.pre.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51 ; 2 uses
  br i1 %.not248, label %bb.am, label %._crit_edge334

bb.am:                                            ; preds = %.lr.ph333
  %i.gp = add nuw i64 %.2222332, 1                ; 3 uses
  %i.gq = icmp ult i64 %i.gp, %tris.val.pre.pre
  br i1 %i.gq, label %.lr.ph333, label %._crit_edge334, !llvm.loop !44

._crit_edge334:                                   ; preds = %bb.am, %.lr.ph333
  %.2222.lcssa.ph = phi i64 [ %i.gp, %bb.am ], [ %.2222332, %.lr.ph333 ] ; 3 uses
  %i.gr = icmp eq i64 %.2222.lcssa.ph, %tris.val.pre.pre
  br i1 %i.gr, label %._crit_edge334.thread, label %bb.an

._crit_edge334.thread:                            ; preds = %.preheader, %._crit_edge334
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gs, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 193, ptr noundef nonnull @.str.7) #14 ; 0 uses
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  br label %bb.ce

bb.an:                                            ; preds = %._crit_edge334
  %i.gu = tail call fastcc zeroext i1 @marktripath(i64 noundef %.1221.lcssa, i64 noundef %.2222.lcssa.ph)
  br i1 %i.gu, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gv = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gv, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 203, ptr noundef nonnull @.str.8) #14 ; 0 uses
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  %i.gx = tail call fastcc i32 @growops(i64 noundef 2)
  %.not249 = icmp eq i32 %i.gx, 0
  br i1 %.not249, label %bb.ap, label %bb.ce

bb.ap:                                            ; preds = %bb.ao
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.gy, align 8, !tbaa !49
  %i.gz = load ptr, ptr @ops, align 8, !tbaa !32  ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !61
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, ptr noundef nonnull align 8 dereferenceable(16) %i.gl, i64 16, i1 false), !tbaa.struct !61
  store ptr %i.gz, ptr %2, align 8, !tbaa !55
  br label %bb.ce

bb.aq:                                            ; preds = %bb.an
  %i.hb = icmp eq i64 %.1221.lcssa, %.2222.lcssa.ph
  br i1 %i.hb, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  %i.hc = load i64, ptr @opn, align 8, !tbaa !33
  %.not.i = icmp ult i64 %i.hc, 2
  %.pre381 = load ptr, ptr @ops, align 8, !tbaa !32 ; 2 uses
  br i1 %.not.i, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.hd = tail call dereferenceable_or_null(32) ptr @realloc(ptr noundef %.pre381, i64 noundef 32) #17 ; 3 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %growops.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.hd, ptr @ops, align 8, !tbaa !32
  store i64 2, ptr @opn, align 8, !tbaa !33
  br label %bb.au

growops.exit:                                     ; preds = %bb.as
  %i.hf = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.hg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hf, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 441, ptr noundef nonnull @.str.11) #14 ; 0 uses
  br label %bb.ce

bb.au:                                            ; preds = %bb.ar, %bb.at
  %i.hh = phi ptr [ %.pre381, %bb.ar ], [ %i.hd, %bb.at ] ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.hi, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !61
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef nonnull align 8 dereferenceable(16) %i.gl, i64 16, i1 false), !tbaa.struct !61
  store ptr %i.hh, ptr %2, align 8, !tbaa !55
  br label %bb.ce

bb.av:                                            ; preds = %bb.aq
  store ptr %1, ptr %3, align 16, !tbaa !26
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.hk, align 8, !tbaa !58
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.gl, ptr %i.hl, align 16, !tbaa !26
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.hm, align 8, !tbaa !58
  %.not19.i.not = icmp eq i64 %i.ab, 0
  br i1 %.not19.i.not, label %bb.aw, label %add2dq.exit

bb.aw:                                            ; preds = %bb.av
  %i.hn = load ptr, ptr %i.p, align 8, !tbaa !27
  store ptr %i.hn, ptr %i.hk, align 8, !tbaa !58
  br label %add2dq.exit

add2dq.exit:                                      ; preds = %bb.av, %bb.aw
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !20
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ad
  store ptr %3, ptr %i.ho, align 8, !tbaa !27
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i64 %i.ad, ptr %i.hp, align 8, !tbaa !34
  %.not250343 = icmp eq i64 %.1221.lcssa, -1
  br i1 %.not250343, label %._crit_edge346, label %.lr.ph345

.lr.ph345:                                        ; preds = %add2dq.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph345, %.loopexit
  %.3223344 = phi i64 [ %.1221.lcssa, %.lr.ph345 ], [ %i.mo, %.loopexit ] ; 2 uses
  %i.hr = phi i64 [ %i.ad, %.lr.ph345 ], [ %i.lr, %.loopexit ] ; 8 uses
  %i.hs = phi i64 [ %i.ad, %.lr.ph345 ], [ %i.lq, %.loopexit ] ; 7 uses
  %i.ht = phi i64 [ %i.ad, %.lr.ph345 ], [ %i.lp, %.loopexit ] ; 3 uses
  %i.hu = load ptr, ptr @tris, align 8, !tbaa !18
  %i.hv = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.3223344) #12
  %i.hw = getelementptr inbounds nuw [80 x i8], ptr %i.hu, i64 %i.hv ; 9 uses
  store i32 2, ptr %i.hw, align 8, !tbaa !35
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24 ; 3 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !31 ; 2 uses
  %.not254 = icmp eq i64 %i.hy, -1
  br i1 %.not254, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hz = load ptr, ptr @tris, align 8, !tbaa !18
  %i.ia = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.hy) #12
  %i.ib = getelementptr inbounds nuw [80 x i8], ptr %i.hz, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !35
  %i.id = icmp eq i32 %i.ic, 1
  br i1 %i.id, label %.thread, label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !31 ; 2 uses
  %.not254.1 = icmp eq i64 %i.if, -1
  br i1 %.not254.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ig = load ptr, ptr @tris, align 8, !tbaa !18
  %i.ih = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.if) #12
  %i.ii = getelementptr inbounds nuw [80 x i8], ptr %i.ig, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !35
  %i.ik = icmp eq i32 %i.ij, 1
  br i1 %i.ik, label %.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.il = getelementptr inbounds nuw i8, ptr %i.hw, i64 72
  %i.im = load i64, ptr %i.il, align 8, !tbaa !31 ; 2 uses
  %.not254.2 = icmp eq i64 %i.im, -1
  br i1 %.not254.2, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.in = load ptr, ptr @tris, align 8, !tbaa !18
  %i.io = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.im) #12
  %i.ip = getelementptr inbounds nuw [80 x i8], ptr %i.in, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !35
  %i.ir = icmp eq i32 %i.iq, 1
  br i1 %i.ir, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hr
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !27
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !26 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hs ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !27
end_hunk_0
