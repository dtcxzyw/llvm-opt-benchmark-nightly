inline.NumInlined: 20
begin_hunk_0_@gs_type1imagepath
define dso_local i32 @gs_type1imagepath(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.status, align 8            ; 25 uses
  %11 = alloca %struct.gs_matrix_s, align 8       ; 5 uses
  %12 = alloca %struct.gs_point_s, align 4        ; 6 uses
  %13 = alloca %struct.gs_point_s, align 4        ; 6 uses
  %14 = alloca %struct.gs_point_s, align 4        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.a = shl nsw i32 %3, 2
  %i.b = sitofp i32 %i.a to float
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.c = call i32 @gs_currentmatrix(ptr noundef %0, ptr noundef nonnull %10) #9 ; 0 uses
  %i.d = fpext float %i.b to double               ; 2 uses
  %i.e = call i32 @gs_make_scaling(double noundef %i.d, double noundef %i.d, ptr noundef nonnull %11) #9 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @gs_matrix_multiply(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %10) #9 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %.067.ph = phi i32 [ %i.g, %bb.b ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.bi

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @gs_matrix_invert(ptr noundef nonnull %10, ptr noundef nonnull %10) #9 ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br i1 %i.j, label %bb.d, label %bb.bi

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %2, 2                        ; 5 uses
  %i.l = add nsw i32 %3, 2
  %i.m = mul nsw i32 %i.l, %i.k                   ; 4 uses
  %i.n = call ptr @gs_malloc(i32 noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str) #9 ; 9 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.bi, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = sext i32 %i.m to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.p, i1 false)
  %i.q = icmp sgt i32 %3, 0
  br i1 %i.q, label %.preheader.lr.ph.i, label %fill_cells.exit

.preheader.lr.ph.i:                               ; preds = %bb.e
  %i.r = icmp sgt i32 %2, 0
  %i.s = shl nsw i32 %2, 1
  %narrow.i = sub nuw nsw i32 -2, %i.s
  %i.t = sext i32 %narrow.i to i64
  br i1 %i.r, label %.preheader.us.preheader.i, label %fill_cells.exit.thread

fill_cells.exit.thread:                           ; preds = %.preheader.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  store ptr %8, ptr %i.u, align 8, !tbaa !8
  %i.v = zext i32 %9 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !15
  br label %.loopexit123

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.y = getelementptr inbounds i8, ptr %1, i64 -1
  %i.z = mul nuw nsw i32 %i.k, %3
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %xtraiter = and i32 %2, 1
  %i.ad = icmp eq i32 %2, 1
  %unroll_iter = and i32 %2, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod173 = trunc i32 %2 to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.02141.us.i = phi i32 [ %.2.us.i.lcssa, %._crit_edge.us.i ], [ undef, %.preheader.us.preheader.i ] ; 2 uses
  %.02440.us.i = phi ptr [ %i.ay, %._crit_edge.us.i ], [ %i.ac, %.preheader.us.preheader.i ] ; 2 uses
  %.02639.us.i = phi ptr [ %.228.us.i.lcssa, %._crit_edge.us.i ], [ %i.y, %.preheader.us.preheader.i ] ; 2 uses
  %.02938.us.i = phi i32 [ %i.az, %._crit_edge.us.i ], [ 0, %.preheader.us.preheader.i ]
  br i1 %i.ad, label %.epil.preheader, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %bb.m
  %.134.us.i = phi i32 [ %.2.us.i.1, %bb.m ], [ %.02141.us.i, %.preheader.us.i ]
  %.02233.us.i = phi i32 [ %i.aq, %bb.m ], [ 0, %.preheader.us.i ] ; 2 uses
  %.12532.us.i = phi ptr [ %i.ar, %bb.m ], [ %.02440.us.i, %.preheader.us.i ] ; 3 uses
  %.12731.us.i = phi ptr [ %.228.us.i.1, %bb.m ], [ %.02639.us.i, %.preheader.us.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %bb.m ], [ 0, %.preheader.us.i ]
  %i.ae = icmp eq i32 %.02233.us.i, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader.us.i.new
  %i.af = getelementptr inbounds nuw i8, ptr %.12731.us.i, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = zext i8 %i.ag to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.us.i.new
  %.228.us.i = phi ptr [ %i.af, %bb.f ], [ %.12731.us.i, %.preheader.us.i.new ] ; 2 uses
  %.123.us.i = phi i32 [ 128, %bb.f ], [ %.02233.us.i, %.preheader.us.i.new ] ; 2 uses
  %.2.us.i = phi i32 [ %i.ah, %bb.f ], [ %.134.us.i, %.preheader.us.i.new ] ; 2 uses
  %i.ai = and i32 %.2.us.i, %.123.us.i
  %.not.us.i = icmp eq i32 %i.ai, 0
  br i1 %.not.us.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %.12532.us.i, align 1, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = lshr i32 %.123.us.i, 1                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.12532.us.i, i64 1
  %i.al = icmp eq i32 %i.aj, 0
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.228.us.i, i64 1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !16
  %i.ao = zext i8 %i.an to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.228.us.i.1 = phi ptr [ %i.am, %bb.j ], [ %.228.us.i, %bb.i ] ; 3 uses
  %.123.us.i.1 = phi i32 [ 128, %bb.j ], [ %i.aj, %bb.i ] ; 2 uses
  %.2.us.i.1 = phi i32 [ %i.ao, %bb.j ], [ %.2.us.i, %bb.i ] ; 4 uses
  %i.ap = and i32 %.2.us.i.1, %.123.us.i.1
  %.not.us.i.1 = icmp eq i32 %i.ap, 0
  br i1 %.not.us.i.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.ak, align 1, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = lshr i32 %.123.us.i.1, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.12532.us.i, i64 2 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !17

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.m
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %.134.us.i.epil.init = phi i32 [ %.02141.us.i, %.preheader.us.i ], [ %.2.us.i.1, %._crit_edge.us.i.unr-lcssa ]
  %.02233.us.i.epil.init = phi i32 [ 0, %.preheader.us.i ], [ %i.aq, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.12532.us.i.epil.init = phi ptr [ %.02440.us.i, %.preheader.us.i ], [ %i.ar, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.12731.us.i.epil.init = phi ptr [ %.02639.us.i, %.preheader.us.i ], [ %.228.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod173)
  %i.as = icmp eq i32 %.02233.us.i.epil.init, 0
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.epil.preheader
  %i.at = getelementptr inbounds nuw i8, ptr %.12731.us.i.epil.init, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = zext i8 %i.au to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.epil.preheader
  %.228.us.i.epil = phi ptr [ %i.at, %bb.n ], [ %.12731.us.i.epil.init, %.epil.preheader ]
  %.123.us.i.epil = phi i32 [ 128, %bb.n ], [ %.02233.us.i.epil.init, %.epil.preheader ]
  %.2.us.i.epil = phi i32 [ %i.av, %bb.n ], [ %.134.us.i.epil.init, %.epil.preheader ] ; 2 uses
  %i.aw = and i32 %.2.us.i.epil, %.123.us.i.epil
  %.not.us.i.epil = icmp eq i32 %i.aw, 0
  br i1 %.not.us.i.epil, label %._crit_edge.us.i.epilog-lcssa, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %.12532.us.i.epil.init, align 1, !tbaa !16
  br label %._crit_edge.us.i.epilog-lcssa

._crit_edge.us.i.epilog-lcssa:                    ; preds = %bb.p, %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %.12532.us.i.epil.init, i64 1
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %._crit_edge.us.i.epilog-lcssa
  %.lcssa = phi ptr [ %i.ar, %._crit_edge.us.i.unr-lcssa ], [ %i.ax, %._crit_edge.us.i.epilog-lcssa ]
  %.228.us.i.lcssa = phi ptr [ %.228.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %.228.us.i.epil, %._crit_edge.us.i.epilog-lcssa ]
  %.2.us.i.lcssa = phi i32 [ %.2.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %.2.us.i.epil, %._crit_edge.us.i.epilog-lcssa ]
  %i.ay = getelementptr inbounds i8, ptr %.lcssa, i64 %i.t
  %i.az = add nuw nsw i32 %.02938.us.i, 1         ; 2 uses
  %exitcond44.not.i = icmp eq i32 %i.az, %3
  br i1 %exitcond44.not.i, label %fill_cells.exit, label %.preheader.us.i, !llvm.loop !19

fill_cells.exit:                                  ; preds = %._crit_edge.us.i, %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 5 uses
  store ptr %8, ptr %i.ba, align 8, !tbaa !8
  %i.bb = zext i32 %9 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 5 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !15
  %i.be = icmp sgt i32 %2, 0
  br i1 %i.be, label %.preheader.lr.ph, label %.loopexit123

.preheader.lr.ph:                                 ; preds = %fill_cells.exit
  %.not127 = icmp slt i32 %3, 1
  br i1 %.not127, label %.loopexit123, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bf = zext nneg i32 %i.k to i64
  %15 = add nuw i32 %3, 1
  %wide.trip.count139 = zext nneg i32 %2 to i64
  %wide.trip.count = zext i32 %15 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv136 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next137, %._crit_edge ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %i.n, i64 %indvars.iv136
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !20

bb.r:                                             ; preds = %.preheader, %bb.q
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %i.bg = mul nuw nsw i64 %indvars.iv, %i.bf
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.bg
  %i.bh = getelementptr i8, ptr %gep, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  %.not92 = icmp eq i8 %i.bi, 0
  br i1 %.not92, label %bb.q, label %.loopexit123.loopexit130

._crit_edge:                                      ; preds = %bb.q
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %.loopexit123, label %.preheader, !llvm.loop !21

.loopexit123.loopexit130:                         ; preds = %bb.r
  %i.bj = trunc nuw nsw i64 %indvars.iv136 to i32
  br label %.loopexit123

.loopexit123:                                     ; preds = %._crit_edge, %.preheader.lr.ph, %fill_cells.exit.thread, %.loopexit123.loopexit130, %fill_cells.exit
  %i.bk = phi ptr [ %i.x, %fill_cells.exit.thread ], [ %i.bd, %fill_cells.exit ], [ %i.bd, %.loopexit123.loopexit130 ], [ %i.bd, %.preheader.lr.ph ], [ %i.bd, %._crit_edge ] ; 6 uses
  %i.bl = phi ptr [ %i.u, %fill_cells.exit.thread ], [ %i.ba, %fill_cells.exit ], [ %i.ba, %.loopexit123.loopexit130 ], [ %i.ba, %.preheader.lr.ph ], [ %i.ba, %._crit_edge ] ; 14 uses
  %.075126 = phi i32 [ 0, %fill_cells.exit.thread ], [ 0, %fill_cells.exit ], [ %i.bj, %.loopexit123.loopexit130 ], [ %2, %.preheader.lr.ph ], [ %2, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.bm = fmul double %6, 4.000000e+00
  %i.bn = fmul double %7, 4.000000e+00            ; 2 uses
  %i.bo = call i32 @gs_distance_transform(double noundef %i.bm, double noundef %i.bn, ptr noundef nonnull %10, ptr noundef nonnull %12) #9 ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %.thread116, label %bb.s

bb.s:                                             ; preds = %.loopexit123
  %i.bq = fmul double %4, 4.000000e+00
  %i.br = fmul double %5, 4.000000e+00
  %i.bs = call i32 @gs_distance_transform(double noundef %i.bq, double noundef %i.br, ptr noundef nonnull %10, ptr noundef nonnull %13) #9 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %.thread116, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = uitofp nneg i32 %.075126 to double
  %i.bv = fsub double %i.bu, %6
  %i.bw = fmul double %i.bv, 4.000000e+00
  %i.bx = call i32 @gs_distance_transform(double noundef %i.bw, double noundef 0.000000e+00, ptr noundef nonnull %10, ptr noundef nonnull %14) #9 ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %.thread116, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = load float, ptr %12, align 4, !tbaa !22
  %i.ca = fpext float %i.bz to double
  %i.cb = fadd double %i.ca, 5.000000e-01
  %i.cc = fptosi double %i.cb to i64
  %i.cd = call i64 @llvm.smax.i64(i64 %i.cc, i64 -32767)
  %i.ce = call i64 @llvm.smin.i64(i64 %i.cd, i64 32767)
  %i.cf = trunc nsw i64 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 2 uses
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !25
  %i.cj = fpext float %i.ci to double
  %i.ck = fadd double %i.cj, 5.000000e-01
  %i.cl = fptosi double %i.ck to i64
  %i.cm = call i64 @llvm.smax.i64(i64 %i.cl, i64 -32767)
  %i.cn = call i64 @llvm.smin.i64(i64 %i.cm, i64 32767)
  %i.co = trunc nsw i64 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 108 ; 2 uses
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !26
  %i.cq = load float, ptr %13, align 4, !tbaa !22
  %i.cr = fpext float %i.cq to double
  %i.cs = fadd double %i.cr, 5.000000e-01
  %i.ct = fptosi double %i.cs to i64
  %i.cu = call i64 @llvm.smax.i64(i64 %i.ct, i64 -32767)
  %i.cv = call i64 @llvm.smin.i64(i64 %i.cu, i64 32767) ; 6 uses
  %i.cw = trunc nsw i64 %i.cv to i32              ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !25
  %i.cz = fpext float %i.cy to double
  %i.da = fadd double %i.cz, 5.000000e-01
  %i.db = fptosi double %i.da to i64              ; 2 uses
  %i.dc = call i64 @llvm.smax.i64(i64 %i.db, i64 -32767)
  %i.dd = call i64 @llvm.smin.i64(i64 %i.dc, i64 32767)
  %i.de = trunc nsw i64 %i.dd to i32
  %i.df = load float, ptr %14, align 4, !tbaa !22
  %i.dg = fpext float %i.df to double
  %i.dh = fadd double %i.dg, 5.000000e-01
  %i.di = fptosi double %i.dh to i64
  %i.dj = call i64 @llvm.smax.i64(i64 %i.di, i64 -32767)
  %i.dk = call i64 @llvm.smin.i64(i64 %i.dj, i64 32767) ; 6 uses
  %i.dl = trunc nsw i64 %i.dk to i32              ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !25
  %i.do = fpext float %i.dn to double
  %i.dp = fadd double %i.do, 5.000000e-01
  %i.dq = fptosi double %i.dp to i64              ; 2 uses
  %i.dr = call i64 @llvm.smax.i64(i64 %i.dq, i64 -32767)
  %i.ds = call i64 @llvm.smin.i64(i64 %i.dr, i64 32767) ; 6 uses
  %i.dt = trunc nsw i64 %i.ds to i32              ; 5 uses
  %i.du = load ptr, ptr %i.bl, align 8, !tbaa !8  ; 14 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 5 ; 2 uses
  %i.dw = load ptr, ptr %i.bk, align 8, !tbaa !15
  %i.dx = icmp ugt ptr %i.dv, %i.dw
  br i1 %i.dx, label %.thread116, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dy = add nsw i32 %i.dl, 107
  %or.cond.i = icmp ult i32 %i.dy, 215
  br i1 %or.cond.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dz = trunc i64 %i.dk to i8
  %i.ea = add i8 %i.dz, -117
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 %i.ea, ptr %i.du, align 1, !tbaa !16
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.ec = add nsw i32 %i.dl, -108                 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.ec, 1024
  br i1 %or.cond3.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ed = lshr i32 %i.ec, 8
  %i.ee = trunc nuw nsw i32 %i.ed to i8
  %i.ef = add nuw nsw i8 %i.ee, -9
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 %i.ef, ptr %i.du, align 1, !tbaa !16
  %i.eh = trunc i32 %i.ec to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i8 %i.eh, ptr %i.eg, align 1, !tbaa !16
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.ej = add nsw i32 %i.dl, 1131
  %or.cond5.i = icmp ult i32 %i.ej, 1024
  br i1 %or.cond5.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ek = sub nuw nsw i32 -108, %i.dl             ; 2 uses
  %i.el = lshr i32 %i.ek, 8
  %i.em = trunc nuw nsw i32 %i.el to i8
  %i.en = add nuw nsw i8 %i.em, -5
  %i.eo = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 %i.en, ptr %i.du, align 1, !tbaa !16
  %i.ep = trunc i32 %i.ek to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i8 %i.ep, ptr %i.eo, align 1, !tbaa !16
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.er = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 -1, ptr %i.du, align 1, !tbaa !16
  %i.es = lshr i64 %i.dk, 24
  %i.et = trunc i64 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i8 %i.et, ptr %i.er, align 1, !tbaa !16
  %i.ev = lshr i64 %i.dk, 16
  %i.ew = trunc i64 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.du, i64 3
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !16
  %i.ey = lshr i64 %i.dk, 8
  %i.ez = trunc i64 %i.ey to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store i8 %i.ez, ptr %i.ex, align 1, !tbaa !16
  %i.fb = trunc i64 %i.dk to i8
  store i8 %i.fb, ptr %i.fa, align 1, !tbaa !16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.y, %bb.w
  %i.fc = phi ptr [ %i.eb, %bb.w ], [ %i.ei, %bb.y ], [ %i.eq, %bb.aa ], [ %i.dv, %bb.ab ] ; 28 uses
  store ptr %i.fc, ptr %i.bl, align 8, !tbaa !8
  %i.fd = icmp ne i64 %i.db, 0
  %i.fe = icmp ne i64 %i.dq, 0
  %or.cond = select i1 %i.fd, i1 true, i1 %i.fe
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 5 ; 3 uses
  %i.fg = load ptr, ptr %i.bk, align 8, !tbaa !15
  %i.fh = icmp ugt ptr %i.ff, %i.fg               ; 2 uses
  br i1 %or.cond, label %bb.ad, label %bb.ap

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.fh, label %.thread116, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fi = add nsw i32 %i.dt, 107
  %or.cond.i96 = icmp ult i32 %i.fi, 215
  br i1 %or.cond.i96, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fj = trunc i64 %i.ds to i8
  %i.fk = add i8 %i.fj, -117
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  store i8 %i.fk, ptr %i.fc, align 1, !tbaa !16
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  %i.fm = add nsw i32 %i.dt, -108                 ; 3 uses
  %or.cond3.i97 = icmp ult i32 %i.fm, 1024
  br i1 %or.cond3.i97, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fn = lshr i32 %i.fm, 8
end_hunk_0
