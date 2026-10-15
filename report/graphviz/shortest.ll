Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/shortest?download=true
inline.NumInlined: 19
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@Pshortestpath:bb.a
  %.sroa.6.0..sroa_idx410 = getelementptr inbounds nuw i8, ptr %.pre, i64 -8
  br label %bb.j

.lr.ph304:                                        ; preds = %.lr.ph304, %.lr.ph304.preheader.new
  %.0225302 = phi double [ +inf, %.lr.ph304.preheader.new ], [ %.1226.1, %.lr.ph304 ] ; 2 uses
  %.0227301 = phi i64 [ -1, %.lr.ph304.preheader.new ], [ %.1228.fr.1, %.lr.ph304 ]
  %.0229300 = phi i64 [ 0, %.lr.ph304.preheader.new ], [ %i.an, %.lr.ph304 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph304.preheader.new ], [ %niter.next.1, %.lr.ph304 ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.0229300
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !57 ; 2 uses
  %i.ai = fcmp ogt double %.0225302, %i.ah        ; 2 uses
  %.1228 = select i1 %i.ai, i64 %.0229300, i64 %.0227301
  %.1228.fr = freeze i64 %.1228
  %.1226 = select i1 %i.ai, double %i.ah, double %.0225302 ; 2 uses
  %i.aj = or disjoint i64 %.0229300, 1            ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !57 ; 2 uses
  %i.am = fcmp ogt double %.1226, %i.al           ; 2 uses
  %.1228.1 = select i1 %i.am, i64 %i.aj, i64 %.1228.fr
  %.1228.fr.1 = freeze i64 %.1228.1               ; 3 uses
  %.1226.1 = select i1 %i.am, double %i.al, double %.1226 ; 2 uses
  %i.an = add nuw i64 %.0229300, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge305.unr-lcssa, label %.lr.ph304, !llvm.loop !37

._crit_edge305.unr-lcssa:                         ; preds = %.lr.ph304
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge305, label %.lr.ph304.epil.preheader

.lr.ph304.epil.preheader:                         ; preds = %._crit_edge305.unr-lcssa, %.lr.ph304.preheader
  %.0225302.epil.init = phi double [ +inf, %.lr.ph304.preheader ], [ %.1226.1, %._crit_edge305.unr-lcssa ]
  %.0227301.epil.init = phi i64 [ -1, %.lr.ph304.preheader ], [ %.1228.fr.1, %._crit_edge305.unr-lcssa ]
  %.0229300.epil.init = phi i64 [ 0, %.lr.ph304.preheader ], [ %i.an, %._crit_edge305.unr-lcssa ] ; 2 uses
  %lcmp.mod427 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod427)
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.0229300.epil.init
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !57
  %i.aq = fcmp ogt double %.0225302.epil.init, %i.ap
  %.1228.epil = select i1 %i.aq, i64 %.0229300.epil.init, i64 %.0227301.epil.init
  %.1228.fr.epil = freeze i64 %.1228.epil
  br label %._crit_edge305

._crit_edge305:                                   ; preds = %._crit_edge305.unr-lcssa, %.lr.ph304.epil.preheader
  %.1228.fr.lcssa = phi i64 [ %.1228.fr.1, %._crit_edge305.unr-lcssa ], [ %.1228.fr.epil, %.lr.ph304.epil.preheader ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.1228.fr.lcssa ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.as = icmp eq i64 %.1228.fr.lcssa, 0
  %spec.select = select i1 %i.as, i64 %i.n, i64 %.1228.fr.lcssa
  %i.at = add i64 %.1228.fr.lcssa, 1
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge305, %._crit_edge305.thread
  %.sroa.6.0.copyload415.in = phi ptr [ %.sroa.6.0..sroa_idx410, %._crit_edge305.thread ], [ %.sroa.6.0..sroa_idx, %._crit_edge305 ]
  %.sroa.020.0.copyload414.in = phi ptr [ %i.af, %._crit_edge305.thread ], [ %i.ar, %._crit_edge305 ]
  %.0227.lcssa413 = phi i64 [ 0, %._crit_edge305.thread ], [ %i.at, %._crit_edge305 ]
  %i.au = phi i64 [ -1, %._crit_edge305.thread ], [ %spec.select, %._crit_edge305 ]
  %.sroa.020.0.copyload414 = load double, ptr %.sroa.020.0.copyload414.in, align 8, !tbaa !23 ; 3 uses
  %.sroa.6.0.copyload415 = load double, ptr %.sroa.6.0.copyload415.in, align 8, !tbaa !23 ; 2 uses
  %i.av = getelementptr [16 x i8], ptr %.pre, i64 %i.au ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 -16
  %.sroa.017.0.copyload = load double, ptr %i.aw, align 8, !tbaa !23 ; 2 uses
  %i.ax = urem i64 %.0227.lcssa413, %i.n
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.ax ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.ay, align 8, !tbaa !23 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.az = fcmp oeq double %.sroa.017.0.copyload, %.sroa.020.0.copyload414
  %i.ba = fcmp oeq double %.sroa.020.0.copyload414, %.sroa.0.0.copyload
  %or.cond260 = select i1 %i.az, i1 %i.ba, i1 false
  %i.bb = fcmp ogt double %.sroa.5.0.copyload, %.sroa.6.0.copyload415
  %or.cond261 = select i1 %or.cond260, i1 %i.bb, i1 false
  br i1 %or.cond261, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.519.0..sroa_idx = getelementptr i8, ptr %i.av, i64 -8
  %.sroa.519.0.copyload = load double, ptr %.sroa.519.0..sroa_idx, align 8, !tbaa !23
  %i.bc = tail call i32 @ccw(double %.sroa.017.0.copyload, double %.sroa.519.0.copyload, double %.sroa.020.0.copyload414, double %.sroa.6.0.copyload415, double %.sroa.0.0.copyload, double %.sroa.5.0.copyload) #12
  %.not = icmp eq i32 %i.bc, 1
  %.pre371 = load i64, ptr %i.a, align 8, !tbaa !49 ; 5 uses
  br i1 %.not, label %.preheader293, label %bb.m

.preheader293:                                    ; preds = %bb.k
  %.not353 = icmp eq i64 %.pre371, 0
  br i1 %.not353, label %.loopexit292, label %bb.l

bb.l:                                             ; preds = %.preheader293
  %.pre370 = load ptr, ptr %0, align 8, !tbaa !55 ; 3 uses
  store ptr %.pre370, ptr %i.c, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.bd, align 8, !tbaa !58
  store ptr %i.c, ptr %i.h, align 8, !tbaa !27
  %exitcond361.peel.not = icmp eq i64 %.pre371, 1
  br i1 %exitcond361.peel.not, label %.loopexit292, label %.lr.ph309.peel.next

bb.m:                                             ; preds = %bb.j, %bb.k
  %i.be = phi i64 [ %i.n, %bb.j ], [ %.pre371, %bb.k ] ; 4 uses
  %.not245312 = icmp eq i64 %i.be, 0
  br i1 %.not245312, label %.loopexit292, label %.lr.ph317

.lr.ph317:                                        ; preds = %bb.m
  %i.bf = add i64 %i.be, -1
  %.pre372.pre = load ptr, ptr %0, align 8, !tbaa !55 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph317, %bb.r
  %.0211314 = phi i64 [ 0, %.lr.ph317 ], [ %.1212, %bb.r ] ; 5 uses
  %.1230.in313 = phi i64 [ %i.be, %.lr.ph317 ], [ %.1230315, %bb.r ] ; 2 uses
  %.1230315 = add i64 %.1230.in313, -1            ; 5 uses
  %i.bg = icmp ult i64 %.1230315, %i.bf
  br i1 %i.bg, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %.pre372.pre, i64 %.1230315 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.pre372.pre, i64 %.1230.in313 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !57
  %i.bl = fcmp oeq double %i.bi, %i.bk
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !59
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !59
  %i.bq = fcmp oeq double %i.bn, %i.bp
  br i1 %i.bq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.pre372.pre, i64 %.1230315
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.0211314 ; 3 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !26
  %i.bt = urem i64 %.0211314, %i.be
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !58
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0211314
  store ptr %i.bs, ptr %i.bw, align 8, !tbaa !27
  %i.bx = add i64 %.0211314, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1212 = phi i64 [ %.0211314, %bb.p ], [ %i.bx, %bb.q ] ; 2 uses
  %.not245 = icmp eq i64 %.1230315, 0
  br i1 %.not245, label %.loopexit292, label %bb.n, !llvm.loop !38

.lr.ph309.peel.next:                              ; preds = %bb.l, %bb.u
  %.2308 = phi i64 [ %.3, %bb.u ], [ 1, %bb.l ]   ; 5 uses
  %.2231306 = phi i64 [ %i.cp, %bb.u ], [ 1, %bb.l ] ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.pre370, i64 %.2231306 ; 4 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !57
  %i.ca = getelementptr i8, ptr %i.by, i64 -16
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !57
  %i.cc = fcmp oeq double %i.bz, %i.cb
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph309.peel.next
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !59
  %i.cf = getelementptr i8, ptr %i.by, i64 -8
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !59
  %i.ch = fcmp oeq double %i.ce, %i.cg
  br i1 %i.ch, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph309.peel.next
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.pre370, i64 %.2231306
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.2308 ; 3 uses
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !26
  %i.ck = urem i64 %.2308, %.pre371
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !58
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.2308
  store ptr %i.cj, ptr %i.cn, align 8, !tbaa !27
  %i.co = add i64 %.2308, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.3 = phi i64 [ %.2308, %bb.s ], [ %i.co, %bb.t ] ; 2 uses
  %i.cp = add nuw i64 %.2231306, 1                ; 2 uses
  %exitcond361.not = icmp eq i64 %i.cp, %.pre371
  br i1 %exitcond361.not, label %.loopexit292, label %.lr.ph309.peel.next, !llvm.loop !39

.loopexit292:                                     ; preds = %bb.u, %bb.r, %bb.l, %.preheader293, %bb.m
  %.4 = phi i64 [ %.1212, %bb.r ], [ 0, %bb.m ], [ 0, %.preheader293 ], [ 1, %bb.l ], [ %.3, %bb.u ]
  %i.cq = tail call fastcc i32 @triangulate(ptr noundef %i.h, i64 noundef %.4)
  %.not246 = icmp eq i32 %i.cq, 0
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

.loopexit290:                                     ; preds = %connecttris.exit, %.lr.ph323
  %tris.val266 = phi i64 [ %tris.val266375, %.lr.ph323 ], [ %tris.val265, %connecttris.exit ] ; 3 uses
  %i.cr = icmp ult i64 %i.ct, %tris.val266
  br i1 %i.cr, label %.lr.ph323, label %.preheader289, !llvm.loop !40

.preheader289:                                    ; preds = %.loopexit290
  %i.cs = icmp eq i64 %tris.val266, 0
  br i1 %i.cs, label %._crit_edge327.thread, label %.lr.ph326

.lr.ph323:                                        ; preds = %.preheader291, %.loopexit290
  %tris.val266375 = phi i64 [ %tris.val266, %.loopexit290 ], [ %tris.val266321, %.preheader291 ] ; 2 uses
  %.0220322 = phi i64 [ %i.ct, %.loopexit290 ], [ 0, %.preheader291 ] ; 7 uses
  %i.ct = add nuw i64 %.0220322, 1                ; 4 uses
  %i.cu = icmp ult i64 %i.ct, %tris.val266375
  br i1 %i.cu, label %.preheader.i.preheader, label %.loopexit290

.preheader.i.preheader:                           ; preds = %.lr.ph323, %connecttris.exit
  %.0219320 = phi i64 [ %i.ge, %connecttris.exit ], [ %i.ct, %.lr.ph323 ] ; 7 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.ak
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ak ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.cv = load ptr, ptr @tris, align 8, !tbaa !18
  %i.cw = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0220322) #12
  %i.cx = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load ptr, ptr @tris, align 8, !tbaa !18
  %i.cz = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0219320) #12
  %i.da = getelementptr inbounds nuw [80 x i8], ptr %i.cy, i64 %i.cz ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %indvars.iv.i ; 4 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !29
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !26 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !29
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !26 ; 2 uses
  %i.di = icmp eq ptr %i.de, %i.dh
  br i1 %i.di, label %bb.w, label %.preheader._crit_edge.i

.preheader._crit_edge.i:                          ; preds = %.preheader.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  %.pre32.i = load ptr, ptr %.pre.i, align 8, !tbaa !26
  br label %bb.x

bb.w:                                             ; preds = %.preheader.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !30
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !26
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !30
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !26 ; 2 uses
  %i.dp = icmp eq ptr %i.dl, %i.do
  br i1 %i.dp, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader._crit_edge.i
  %i.dq = phi ptr [ %.pre32.i, %.preheader._crit_edge.i ], [ %i.do, %bb.w ]
  %i.dr = icmp eq ptr %i.de, %i.dq
  br i1 %i.dr, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !30
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !26
  %i.dv = icmp eq ptr %i.du, %i.dh
  br i1 %i.dv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i64 %.0219320, ptr %i.dw, align 8, !tbaa !31
  %i.dx = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store i64 %.0220322, ptr %i.dx, align 8, !tbaa !31
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.dy = load ptr, ptr @tris, align 8, !tbaa !18
  %i.dz = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0220322) #12
  %i.ea = getelementptr inbounds nuw [80 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load ptr, ptr @tris, align 8, !tbaa !18
  %i.ec = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0219320) #12
  %i.ed = getelementptr inbounds nuw [80 x i8], ptr %i.eb, i64 %i.ec ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %indvars.iv.i ; 4 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !29
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !26 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !29
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !26 ; 2 uses
  %i.el = icmp eq ptr %i.eh, %i.ek
  br i1 %i.el, label %bb.ab, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.aa
  %.phi.trans.insert33.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %.pre34.i = load ptr, ptr %.phi.trans.insert33.i, align 8, !tbaa !30
  %.pre35.i = load ptr, ptr %.pre34.i, align 8, !tbaa !26
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !30
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !26
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !30
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !26 ; 2 uses
  %i.es = icmp eq ptr %i.eo, %i.er
  br i1 %i.es, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i
  %i.et = phi ptr [ %.pre35.i, %._crit_edge.i ], [ %i.er, %bb.ab ]
  %i.eu = icmp eq ptr %i.eh, %i.et
  br i1 %i.eu, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !30
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !26
  %i.ey = icmp eq ptr %i.ex, %i.ek
  br i1 %i.ey, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i64 %.0219320, ptr %i.ez, align 8, !tbaa !31
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  store i64 %.0220322, ptr %i.fa, align 8, !tbaa !31
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.fb = load ptr, ptr @tris, align 8, !tbaa !18
  %i.fc = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0220322) #12
  %i.fd = getelementptr inbounds nuw [80 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load ptr, ptr @tris, align 8, !tbaa !18
  %i.ff = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0219320) #12
  %i.fg = getelementptr inbounds nuw [80 x i8], ptr %i.fe, i64 %i.ff ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %indvars.iv.i ; 4 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !29
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !26 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !29
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !26 ; 2 uses
  %i.fo = icmp eq ptr %i.fk, %i.fn
  br i1 %i.fo, label %bb.ag, label %._crit_edge36.i

._crit_edge36.i:                                  ; preds = %bb.af
  %.phi.trans.insert37.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  %.pre38.i = load ptr, ptr %.phi.trans.insert37.i, align 8, !tbaa !30
  %.pre39.i = load ptr, ptr %.pre38.i, align 8, !tbaa !26
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !30
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !26
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !30
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !26 ; 2 uses
  %i.fv = icmp eq ptr %i.fr, %i.fu
  br i1 %i.fv, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge36.i
  %i.fw = phi ptr [ %.pre39.i, %._crit_edge36.i ], [ %i.fu, %bb.ag ]
  %i.fx = icmp eq ptr %i.fk, %i.fw
  br i1 %i.fx, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !30
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !26
  %i.gb = icmp eq ptr %i.ga, %i.fn
  br i1 %i.gb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store i64 %.0219320, ptr %i.gc, align 8, !tbaa !31
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  store i64 %.0220322, ptr %i.gd, align 8, !tbaa !31
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i, label %connecttris.exit, label %.preheader.i, !llvm.loop !41

connecttris.exit:                                 ; preds = %bb.ak
  %i.ge = add nuw i64 %.0219320, 1                ; 2 uses
  %tris.val265 = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51 ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %tris.val265
  br i1 %i.gf, label %.preheader.i.preheader, label %.loopexit290, !llvm.loop !42

.lr.ph326:                                        ; preds = %.preheader289, %bb.al
  %.1221325 = phi i64 [ %i.gh, %bb.al ], [ 0, %.preheader289 ] ; 3 uses
  %i.gg = tail call fastcc i32 @pointintri(i64 noundef %.1221325, ptr noundef %1)
  %.not247 = icmp eq i32 %i.gg, 0
  %tris.val263.pre.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51 ; 3 uses
  br i1 %.not247, label %bb.al, label %._crit_edge327

bb.al:                                            ; preds = %.lr.ph326
  %i.gh = add nuw i64 %.1221325, 1                ; 3 uses
  %i.gi = icmp ult i64 %i.gh, %tris.val263.pre.pre
  br i1 %i.gi, label %.lr.ph326, label %._crit_edge327, !llvm.loop !43

._crit_edge327:                                   ; preds = %bb.al, %.lr.ph326
  %.1221.lcssa = phi i64 [ %i.gh, %bb.al ], [ %.1221325, %.lr.ph326 ] ; 6 uses
  %i.gj = icmp eq i64 %.1221.lcssa, %tris.val263.pre.pre
  br i1 %i.gj, label %._crit_edge327.thread, label %.preheader

.preheader:                                       ; preds = %._crit_edge327
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %.not356 = icmp eq i64 %tris.val263.pre.pre, 0
  br i1 %.not356, label %._crit_edge334.thread, label %.lr.ph333

._crit_edge327.thread:                            ; preds = %.preheader291, %.preheader289, %._crit_edge327
  %i.gl = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gl, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 182, ptr noundef nonnull @.str.6) #14 ; 0 uses
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  br label %bb.ce

.lr.ph333:                                        ; preds = %.preheader, %bb.am
  %.2222332 = phi i64 [ %i.go, %bb.am ], [ 0, %.preheader ] ; 3 uses
  %i.gn = tail call fastcc i32 @pointintri(i64 noundef %.2222332, ptr noundef nonnull %i.gk)
  %.not248 = icmp eq i32 %i.gn, 0
  %tris.val.pre.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51 ; 2 uses
  br i1 %.not248, label %bb.am, label %._crit_edge334

bb.am:                                            ; preds = %.lr.ph333
  %i.go = add nuw i64 %.2222332, 1                ; 3 uses
  %i.gp = icmp ult i64 %i.go, %tris.val.pre.pre
  br i1 %i.gp, label %.lr.ph333, label %._crit_edge334, !llvm.loop !44

._crit_edge334:                                   ; preds = %bb.am, %.lr.ph333
  %.2222.lcssa.ph = phi i64 [ %i.go, %bb.am ], [ %.2222332, %.lr.ph333 ] ; 3 uses
  %i.gq = icmp eq i64 %.2222.lcssa.ph, %tris.val.pre.pre
  br i1 %i.gq, label %._crit_edge334.thread, label %bb.an

._crit_edge334.thread:                            ; preds = %.preheader, %._crit_edge334
  %i.gr = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gr, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 193, ptr noundef nonnull @.str.7) #14 ; 0 uses
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  br label %bb.ce

bb.an:                                            ; preds = %._crit_edge334
  %i.gt = tail call fastcc zeroext i1 @marktripath(i64 noundef %.1221.lcssa, i64 noundef %.2222.lcssa.ph)
  br i1 %i.gt, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gu = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gu, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 203, ptr noundef nonnull @.str.8) #14 ; 0 uses
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  %i.gw = tail call fastcc i32 @growops(i64 noundef 2)
  %.not249 = icmp eq i32 %i.gw, 0
  br i1 %.not249, label %bb.ap, label %bb.ce

bb.ap:                                            ; preds = %bb.ao
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.gx, align 8, !tbaa !49
  %i.gy = load ptr, ptr @ops, align 8, !tbaa !32  ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !61
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !tbaa.struct !61
  store ptr %i.gy, ptr %2, align 8, !tbaa !55
  br label %bb.ce

bb.aq:                                            ; preds = %bb.an
  %i.ha = icmp eq i64 %.1221.lcssa, %.2222.lcssa.ph
  br i1 %i.ha, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  %i.hb = load i64, ptr @opn, align 8, !tbaa !33
  %.not.i = icmp ult i64 %i.hb, 2
  %.pre380 = load ptr, ptr @ops, align 8, !tbaa !32 ; 2 uses
  br i1 %.not.i, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.hc = tail call dereferenceable_or_null(32) ptr @realloc(ptr noundef %.pre380, i64 noundef 32) #17 ; 3 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %growops.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.hc, ptr @ops, align 8, !tbaa !32
  store i64 2, ptr @opn, align 8, !tbaa !33
  br label %bb.au

growops.exit:                                     ; preds = %bb.as
  %i.he = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.hf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.he, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 441, ptr noundef nonnull @.str.11) #14 ; 0 uses
  br label %bb.ce

bb.au:                                            ; preds = %bb.ar, %bb.at
  %i.hg = phi ptr [ %.pre380, %bb.ar ], [ %i.hc, %bb.at ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.hh, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !61
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !tbaa.struct !61
  store ptr %i.hg, ptr %2, align 8, !tbaa !55
  br label %bb.ce

bb.av:                                            ; preds = %bb.aq
  store ptr %1, ptr %3, align 16, !tbaa !26
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.hj, align 8, !tbaa !58
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.gk, ptr %i.hk, align 16, !tbaa !26
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.hl, align 8, !tbaa !58
  %.not19.i.not = icmp eq i64 %i.aa, 0
  br i1 %.not19.i.not, label %bb.aw, label %add2dq.exit

bb.aw:                                            ; preds = %bb.av
  %i.hm = load ptr, ptr %i.p, align 8, !tbaa !27
  store ptr %i.hm, ptr %i.hj, align 8, !tbaa !58
  br label %add2dq.exit

add2dq.exit:                                      ; preds = %bb.av, %bb.aw
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !20
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ac
  store ptr %3, ptr %i.hn, align 8, !tbaa !27
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i64 %i.ac, ptr %i.ho, align 8, !tbaa !34
  %.not250343 = icmp eq i64 %.1221.lcssa, -1
  br i1 %.not250343, label %._crit_edge346, label %.lr.ph345

.lr.ph345:                                        ; preds = %add2dq.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph345, %.loopexit
  %.3223344 = phi i64 [ %.1221.lcssa, %.lr.ph345 ], [ %i.mj, %.loopexit ] ; 2 uses
  %i.hq = phi i64 [ %i.ac, %.lr.ph345 ], [ %i.lm, %.loopexit ] ; 8 uses
  %i.hr = phi i64 [ %i.ac, %.lr.ph345 ], [ %i.ll, %.loopexit ] ; 7 uses
  %i.hs = phi i64 [ %i.ac, %.lr.ph345 ], [ %i.lk, %.loopexit ] ; 3 uses
  %i.ht = load ptr, ptr @tris, align 8, !tbaa !18
  %i.hu = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.3223344) #12
  %i.hv = getelementptr inbounds nuw [80 x i8], ptr %i.ht, i64 %i.hu ; 9 uses
  store i32 2, ptr %i.hv, align 8, !tbaa !35
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24 ; 3 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !31 ; 2 uses
  %.not254 = icmp eq i64 %i.hx, -1
  br i1 %.not254, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hy = load ptr, ptr @tris, align 8, !tbaa !18
  %i.hz = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.hx) #12
  %i.ia = getelementptr inbounds nuw [80 x i8], ptr %i.hy, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !35
  %i.ic = icmp eq i32 %i.ib, 1
  br i1 %i.ic, label %.thread.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !31 ; 2 uses
  %.not254.1 = icmp eq i64 %i.ie, -1
  br i1 %.not254.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.if = load ptr, ptr @tris, align 8, !tbaa !18
  %i.ig = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.ie) #12
  %i.ih = getelementptr inbounds nuw [80 x i8], ptr %i.if, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !35
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %.thread.loopexit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hv, i64 72
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !31 ; 2 uses
  %.not254.2 = icmp eq i64 %i.il, -1
  br i1 %.not254.2, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.im = load ptr, ptr @tris, align 8, !tbaa !18
  %i.in = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.il) #12
  %i.io = getelementptr inbounds nuw [80 x i8], ptr %i.im, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !35
  %i.iq = icmp eq i32 %i.ip, 1
  br i1 %i.iq, label %.thread.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hq
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !27
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !26 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hr ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !27
end_hunk_0
