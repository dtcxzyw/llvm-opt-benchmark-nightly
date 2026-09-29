Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgemv_t?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@dgemv_t:bb.a
  %i.am = load double, ptr %i.al, align 8, !tbaa !9
  store double %i.am, ptr %i.ak, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %.089.i, i64 32
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.al, i64 %7 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !9
  store double %i.ap, ptr %i.an, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %.089.i, i64 40
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %7 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !9
  store double %i.as, ptr %i.aq, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %.089.i, i64 48
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %7 ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !9
  store double %i.av, ptr %i.at, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %.089.i, i64 56
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.au, i64 %7 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !9
  store double %i.ay, ptr %i.aw, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %.089.i, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %7 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %copy_x.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !15

copy_x.exit.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %copy_x.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %copy_x.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.0710.i.epil.init = phi ptr [ %.0491564, %.lr.ph.i.preheader ], [ %i.ba, %copy_x.exit.loopexit.unr-lcssa ]
  %.089.i.epil.init = phi ptr [ %.0467567, %.lr.ph.i.preheader ], [ %i.az, %copy_x.exit.loopexit.unr-lcssa ]
  %lcmp.mod1025 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1025)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.0710.i.epil = phi ptr [ %i.bd, %.lr.ph.i.epil ], [ %.0710.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.089.i.epil = phi ptr [ %i.bc, %.lr.ph.i.epil ], [ %.089.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bb = load double, ptr %.0710.i.epil, align 8, !tbaa !9
  store double %i.bb, ptr %.089.i.epil, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %.089.i.epil, i64 8
  %i.bd = getelementptr inbounds [8 x i8], ptr %.0710.i.epil, i64 %7
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 4
  br i1 %epil.iter.cmp.not, label %copy_x.exit, label %.lr.ph.i.epil, !llvm.loop !16

copy_x.exit:                                      ; preds = %copy_x.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.d
  %.1468 = phi ptr [ %.0491564, %bb.d ], [ %.0467567, %.lr.ph.i.epil ], [ %.0467567, %copy_x.exit.loopexit.unr-lcssa ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %.0490565, ptr %i.b, align 16, !tbaa !14
  %i.be = getelementptr inbounds [8 x i8], ptr %.0490565, i64 %5 ; 4 uses
  store ptr %i.be, ptr %i.p, align 8, !tbaa !14
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %5 ; 4 uses
  store ptr %i.bf, ptr %i.q, align 16, !tbaa !14
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %5 ; 3 uses
  store ptr %i.bg, ptr %i.r, align 8, !tbaa !14
  br i1 %.not, label %.loopexit546, label %.preheader544

.preheader544:                                    ; preds = %copy_x.exit, %bb.f
  %.0470559 = phi ptr [ %i.bt, %bb.f ], [ %8, %copy_x.exit ] ; 2 uses
  %.0479557 = phi i64 [ %i.bu, %bb.f ], [ 0, %copy_x.exit ]
  %.0490518556 = phi ptr [ %i.bn, %bb.f ], [ %.0490565, %copy_x.exit ]
  %i.bh = phi ptr [ %i.bo, %bb.f ], [ %i.be, %copy_x.exit ]
  %i.bi = phi ptr [ %i.bp, %bb.f ], [ %i.bf, %copy_x.exit ]
  %i.bj = phi ptr [ %i.bq, %bb.f ], [ %i.bg, %copy_x.exit ]
  br label %bb.e

bb.e:                                             ; preds = %.preheader544, %bb.e
  %.0463555 = phi ptr [ %i.f, %.preheader544 ], [ %i.br, %bb.e ] ; 2 uses
  %.0486554 = phi i64 [ 0, %.preheader544 ], [ %i.bs, %bb.e ]
  %.0490519553 = phi ptr [ %.0490518556, %.preheader544 ], [ %i.bn, %bb.e ]
  %i.bk = phi ptr [ %i.bh, %.preheader544 ], [ %i.bo, %bb.e ]
  %i.bl = phi ptr [ %i.bi, %.preheader544 ], [ %i.bp, %bb.e ]
  %i.bm = phi ptr [ %i.bj, %.preheader544 ], [ %i.bq, %bb.e ]
  call fastcc void @dgemv_kernel_4x4(i64 noundef %.mux, ptr noundef %i.b, ptr noundef %.1468, ptr noundef %.0463555)
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0490519553, i64 %i.o ; 4 uses
  store ptr %i.bn, ptr %i.b, align 16, !tbaa !14
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.o ; 4 uses
  store ptr %i.bo, ptr %i.p, align 8, !tbaa !14
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.o ; 4 uses
  store ptr %i.bp, ptr %i.q, align 16, !tbaa !14
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.o ; 4 uses
  store ptr %i.bq, ptr %i.r, align 8, !tbaa !14
  %i.br = getelementptr inbounds nuw i8, ptr %.0463555, i64 32
  %i.bs = add nuw nsw i64 %.0486554, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, 512
  br i1 %exitcond.not, label %bb.f, label %bb.e, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  call fastcc void @add_y(i64 noundef 2048, double noundef %3, ptr noundef nonnull %i.f, ptr noundef %.0470559, i64 noundef %9)
  %i.bt = getelementptr inbounds i8, ptr %.0470559, i64 %.idx506 ; 2 uses
  %i.bu = add nuw nsw i64 %.0479557, 1            ; 2 uses
  %exitcond661.not = icmp eq i64 %i.bu, %i.g
  br i1 %exitcond661.not, label %.loopexit546, label %.preheader544, !llvm.loop !18

.loopexit546:                                     ; preds = %bb.f, %copy_x.exit
  %i.bv = phi ptr [ %i.bg, %copy_x.exit ], [ %i.bq, %bb.f ]
  %i.bw = phi ptr [ %i.bf, %copy_x.exit ], [ %i.bp, %bb.f ]
  %i.bx = phi ptr [ %i.be, %copy_x.exit ], [ %i.bo, %bb.f ] ; 2 uses
  %.0490521 = phi ptr [ %.0490565, %copy_x.exit ], [ %i.bn, %bb.f ] ; 2 uses
  %.1476 = phi ptr [ %.0490565, %copy_x.exit ], [ %indvars.iv, %bb.f ] ; 2 uses
  %.1471 = phi ptr [ %8, %copy_x.exit ], [ %i.bt, %bb.f ] ; 3 uses
  br i1 %.not627, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit546, %.lr.ph
  %.1464562 = phi ptr [ %i.cf, %.lr.ph ], [ %i.f, %.loopexit546 ] ; 2 uses
  %.1487561 = phi i64 [ %i.cg, %.lr.ph ], [ 0, %.loopexit546 ]
  %.0490520560 = phi ptr [ %i.cb, %.lr.ph ], [ %.0490521, %.loopexit546 ]
  %i.by = phi ptr [ %i.cc, %.lr.ph ], [ %i.bx, %.loopexit546 ]
  %i.bz = phi ptr [ %i.cd, %.lr.ph ], [ %i.bw, %.loopexit546 ]
  %i.ca = phi ptr [ %i.ce, %.lr.ph ], [ %i.bv, %.loopexit546 ]
  call fastcc void @dgemv_kernel_4x4(i64 noundef %.mux, ptr noundef %i.b, ptr noundef %.1468, ptr noundef %.1464562)
  %i.cb = getelementptr inbounds [8 x i8], ptr %.0490520560, i64 %i.o ; 3 uses
  store ptr %i.cb, ptr %i.b, align 16, !tbaa !14
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.o ; 3 uses
  store ptr %i.cc, ptr %i.p, align 8, !tbaa !14
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.o ; 2 uses
  store ptr %i.cd, ptr %i.q, align 16, !tbaa !14
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.o ; 2 uses
  store ptr %i.ce, ptr %i.r, align 8, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %.1464562, i64 32
  %i.cg = add nuw nsw i64 %.1487561, 1            ; 2 uses
  %exitcond662.not = icmp eq i64 %i.cg, %i.i
  br i1 %exitcond662.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph
  call fastcc void @add_y(i64 noundef %i.s, double noundef %3, ptr noundef nonnull %i.f, ptr noundef %.1471, i64 noundef %9)
  %i.ch = getelementptr inbounds i8, ptr %.1471, i64 %.reass
  %i.ci = getelementptr inbounds [8 x i8], ptr %.1476, i64 %i.t
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.loopexit546, %._crit_edge
  %.0490520.lcssa693 = phi ptr [ %i.cb, %._crit_edge ], [ %.0490521, %.loopexit546 ]
  %.lcssa552692 = phi ptr [ %i.cc, %._crit_edge ], [ %i.bx, %.loopexit546 ]
  %.2477 = phi ptr [ %i.ci, %._crit_edge ], [ %.1476, %.loopexit546 ] ; 2 uses
  %.2472 = phi ptr [ %i.ch, %._crit_edge ], [ %.1471, %.loopexit546 ] ; 4 uses
  br i1 %.not503, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread
  call fastcc void @dgemv_kernel_4x2(i64 noundef %.mux, ptr noundef %.0490520.lcssa693, ptr noundef %.lcssa552692, ptr noundef %.1468, ptr noundef %i.a)
  %i.cj = getelementptr inbounds i8, ptr %.2477, i64 %.idx504
  %i.ck = load double, ptr %i.a, align 16, !tbaa !9
  %i.cl = load double, ptr %.2472, align 8, !tbaa !9
  %i.cm = call double @llvm.fmuladd.f64(double %i.ck, double %3, double %i.cl)
  store double %i.cm, ptr %.2472, align 8, !tbaa !9
  %i.cn = getelementptr inbounds [8 x i8], ptr %.2472, i64 %9 ; 3 uses
  %i.co = load double, ptr %i.v, align 8, !tbaa !9
  %i.cp = load double, ptr %i.cn, align 8, !tbaa !9
  %i.cq = call double @llvm.fmuladd.f64(double %i.co, double %3, double %i.cp)
  store double %i.cq, ptr %i.cn, align 8, !tbaa !9
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.thread
  %.3478 = phi ptr [ %i.cj, %bb.g ], [ %.2477, %._crit_edge.thread ]
  %.3473 = phi ptr [ %i.cr, %bb.g ], [ %.2472, %._crit_edge.thread ] ; 2 uses
  br i1 %.not505, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @dgemv_kernel_4x1(i64 noundef %.mux, ptr noundef %.3478, ptr noundef %.1468, ptr noundef %i.a)
  %i.cs = load double, ptr %i.a, align 16, !tbaa !9
  %i.ct = load double, ptr %.3473, align 8, !tbaa !9
  %i.cu = call double @llvm.fmuladd.f64(double %i.cs, double %3, double %i.ct)
  store double %i.cu, ptr %.3473, align 8, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.0490565, i64 %.mux ; 2 uses
  %i.cw = mul nsw i64 %.mux, %7
  %i.cx = getelementptr inbounds [8 x i8], ptr %.0491564, i64 %i.cw ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %scevgep660 = getelementptr i8, ptr %indvars.iv, i64 16384
  br i1 %i.aa, label %bb.c, label %bb.k, !llvm.loop !20

bb.k:                                             ; preds = %bb.c, %bb.j
  %.0491.lcssa = phi ptr [ %.0491564, %bb.c ], [ %i.cx, %bb.j ] ; 5 uses
  %.0490.lcssa = phi ptr [ %.0490565, %bb.c ], [ %i.cv, %bb.j ] ; 50 uses
  switch i64 %i.j, label %default.unreachable [
    i64 0, label %.loopexit
    i64 3, label %bb.l
    i64 2, label %bb.o
    i64 1, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  %i.cy = load double, ptr %.0491.lcssa, align 8, !tbaa !9
  %i.cz = fmul double %3, %i.cy                   ; 25 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %.0491.lcssa, i64 %7 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !9
  %i.dc = fmul double %3, %i.db                   ; 25 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.da, i64 %7
  %i.de = load double, ptr %i.dd, align 8, !tbaa !9
  %i.df = fmul double %3, %i.de                   ; 25 uses
  %i.dg = icmp eq i64 %5, 3
  %i.dh = icmp eq i64 %9, 1                       ; 2 uses
  %or.cond = and i1 %i.dg, %i.dh
  br i1 %or.cond, label %.preheader522, label %bb.m

.preheader522:                                    ; preds = %bb.l
  %i.di = and i64 %1, 9223372036854775804         ; 4 uses
  %.not633 = icmp eq i64 %i.di, 0
  br i1 %.not633, label %.preheader, label %.lr.ph619.preheader

.lr.ph619.preheader:                              ; preds = %.preheader522
  %i.dj = add nsw i64 %i.di, -1                   ; 2 uses
  %i.dk = lshr i64 %i.dj, 2
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check914 = icmp samesign ult i64 %i.di, 13
  br i1 %min.iters.check914, label %.lr.ph619.preheader997, label %vector.memcheck907

vector.memcheck907:                               ; preds = %.lr.ph619.preheader
  %i.dm = lshr i64 %i.dj, 2                       ; 2 uses
  %i.dn = shl i64 %i.dm, 5
  %i.do = getelementptr i8, ptr %8, i64 %i.dn
  %scevgep908 = getelementptr i8, ptr %i.do, i64 32
  %i.dp = mul i64 %i.dm, 96
  %i.dq = getelementptr i8, ptr %.0490.lcssa, i64 %i.dp
  %scevgep909 = getelementptr i8, ptr %i.dq, i64 96
  %bound0910 = icmp ult ptr %8, %scevgep909
  %bound1911 = icmp ult ptr %.0490.lcssa, %scevgep908
  %found.conflict912 = and i1 %bound0910, %bound1911
  br i1 %found.conflict912, label %.lr.ph619.preheader997, label %vector.ph915

vector.ph915:                                     ; preds = %vector.memcheck907
  %n.vec916 = and i64 %i.dl, 9223372036854775804  ; 4 uses
  %i.dr = mul i64 %n.vec916, 96
  %i.ds = getelementptr i8, ptr %.0490.lcssa, i64 %i.dr ; 2 uses
  %i.dt = shl i64 %n.vec916, 2                    ; 2 uses
  %broadcast.splatinsert917 = insertelement <4 x double> poison, double %i.dc, i64 0
  %broadcast.splat918 = shufflevector <4 x double> %broadcast.splatinsert917, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert919 = insertelement <4 x double> poison, double %i.cz, i64 0
  %broadcast.splat920 = shufflevector <4 x double> %broadcast.splatinsert919, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert921 = insertelement <4 x double> poison, double %i.df, i64 0
  %broadcast.splat922 = shufflevector <4 x double> %broadcast.splatinsert921, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body923

vector.body923:                                   ; preds = %vector.body923, %vector.ph915
  %index924 = phi i64 [ 0, %vector.ph915 ], [ %index.next959, %vector.body923 ]
  %pointer.phi925 = phi ptr [ %.0490.lcssa, %vector.ph915 ], [ %ptr.ind960, %vector.body923 ] ; 2 uses
  %vec.ind926 = phi <4 x i64> [ <i64 0, i64 4, i64 8, i64 12>, %vector.ph915 ], [ %vec.ind.next961, %vector.body923 ] ; 2 uses
  %vector.gep927 = getelementptr i8, ptr %pointer.phi925, <4 x i64> <i64 0, i64 96, i64 192, i64 288> ; 12 uses
  %wide.masked.gather928 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %vector.gep927, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !71
  %wide.gep929 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep927, i64 8
  %wide.masked.gather930 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep929, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !71
  %i.du = fmul <4 x double> %broadcast.splat918, %wide.masked.gather930
  %i.dv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather928, <4 x double> %broadcast.splat920, <4 x double> %i.du)
  %wide.gep931 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep927, i64 16
  %wide.masked.gather932 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep931, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !71
  %i.dw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather932, <4 x double> %broadcast.splat922, <4 x double> %i.dv)
  %wide.gep933 = getelementptr inbounds nuw [8 x i8], ptr %8, <4 x i64> %vec.ind926 ; 5 uses
  %wide.masked.gather934 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep933, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !72, !noalias !71
  %i.dx = fadd <4 x double> %wide.masked.gather934, %i.dw
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.dx, <4 x ptr> align 8 %wide.gep933, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !72, !noalias !71
  %wide.gep935 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep927, i64 24
  %wide.masked.gather936 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep935, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !71
  %wide.gep937 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep927, i64 32
  %wide.masked.gather938 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep937, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !71
  %i.dy = fmul <4 x double> %broadcast.splat918, %wide.masked.gather938
  %i.dz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather936, <4 x double> %broadcast.splat920, <4 x double> %i.dy)
  %wide.gep939 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep927, i64 40
  %wide.masked.gather940 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep939, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !71
  %i.ea = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather940, <4 x double> %broadcast.splat922, <4 x double> %i.dz)
  %wide.gep941 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep933, i64 8 ; 2 uses
  %wide.masked.gather942 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep941, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !72, !noalias !71
  %i.eb = fadd <4 x double> %wide.masked.gather942, %i.ea
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.eb, <4 x ptr> align 8 %wide.gep941, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !72, !noalias !71
  %wide.gep943 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep927, i64 48
  %wide.masked.gather944 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep943, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !71
  %wide.gep945 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep927, i64 56
  %wide.masked.gather946 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep945, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !71
  %i.ec = fmul <4 x double> %broadcast.splat918, %wide.masked.gather946
  %i.ed = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather944, <4 x double> %broadcast.splat920, <4 x double> %i.ec)
  %wide.gep947 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep927, i64 64
  %wide.masked.gather948 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep947, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !71
  %i.ee = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather948, <4 x double> %broadcast.splat922, <4 x double> %i.ed)
  %wide.gep949 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep933, i64 16 ; 2 uses
  %wide.masked.gather950 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep949, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !72, !noalias !71
  %i.ef = fadd <4 x double> %wide.masked.gather950, %i.ee
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ef, <4 x ptr> align 8 %wide.gep949, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !72, !noalias !71
  %wide.gep951 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep927, i64 72
  %wide.masked.gather952 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep951, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !71
  %wide.gep953 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep927, i64 80
  %wide.masked.gather954 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep953, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !71
  %i.eg = fmul <4 x double> %broadcast.splat918, %wide.masked.gather954
  %i.eh = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather952, <4 x double> %broadcast.splat920, <4 x double> %i.eg)
  %wide.gep955 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep927, i64 88
  %wide.masked.gather956 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep955, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !71
  %i.ei = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather956, <4 x double> %broadcast.splat922, <4 x double> %i.eh)
  %wide.gep957 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep933, i64 24 ; 2 uses
  %wide.masked.gather958 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep957, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !72, !noalias !71
  %i.ej = fadd <4 x double> %wide.masked.gather958, %i.ei
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ej, <4 x ptr> align 8 %wide.gep957, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !72, !noalias !71
  %index.next959 = add nuw i64 %index924, 4       ; 2 uses
  %ptr.ind960 = getelementptr i8, ptr %pointer.phi925, i64 384
  %vec.ind.next961 = add nuw nsw <4 x i64> %vec.ind926, splat (i64 16)
  %i.ek = icmp eq i64 %index.next959, %n.vec916
  br i1 %i.ek, label %middle.block962, label %vector.body923, !llvm.loop !24

middle.block962:                                  ; preds = %vector.body923
  %cmp.n963 = icmp eq i64 %i.dl, %n.vec916
  br i1 %cmp.n963, label %.preheader, label %.lr.ph619.preheader997

.lr.ph619.preheader997:                           ; preds = %vector.memcheck907, %.lr.ph619.preheader, %middle.block962
  %.0458618.ph = phi ptr [ %.0490.lcssa, %vector.memcheck907 ], [ %.0490.lcssa, %.lr.ph619.preheader ], [ %i.ds, %middle.block962 ]
  %.1480617.ph = phi i64 [ 0, %vector.memcheck907 ], [ 0, %.lr.ph619.preheader ], [ %i.dt, %middle.block962 ]
  br label %.lr.ph619

.preheader:                                       ; preds = %.lr.ph619, %middle.block962, %.preheader522
  %.1480.lcssa = phi i64 [ 0, %.preheader522 ], [ %i.dt, %middle.block962 ], [ %i.ho, %.lr.ph619 ] ; 8 uses
  %.0458.lcssa = phi ptr [ %.0490.lcssa, %.preheader522 ], [ %i.ds, %middle.block962 ], [ %i.hn, %.lr.ph619 ] ; 6 uses
  %i.el = icmp slt i64 %.1480.lcssa, %1
  br i1 %i.el, label %.lr.ph624.preheader, label %.loopexit

.lr.ph624.preheader:                              ; preds = %.preheader
  %i.em = sub i64 %1, %.1480.lcssa                ; 3 uses
  %min.iters.check974 = icmp ult i64 %i.em, 8
  br i1 %min.iters.check974, label %.lr.ph624.preheader996, label %vector.memcheck966

vector.memcheck966:                               ; preds = %.lr.ph624.preheader
  %i.en = shl i64 %.1480.lcssa, 3
  %scevgep967 = getelementptr i8, ptr %8, i64 %i.en
  %i.eo = shl i64 %1, 3
  %scevgep968 = getelementptr i8, ptr %8, i64 %i.eo
  %i.ep = mul i64 %1, 24
  %.neg = mul i64 %.1480.lcssa, -24
  %i.eq = getelementptr i8, ptr %.0458.lcssa, i64 %.neg
  %scevgep969 = getelementptr i8, ptr %i.eq, i64 %i.ep
  %bound0970 = icmp ult ptr %scevgep967, %scevgep969
  %bound1971 = icmp ult ptr %.0458.lcssa, %scevgep968
  %found.conflict972 = and i1 %bound0970, %bound1971
  br i1 %found.conflict972, label %.lr.ph624.preheader996, label %vector.ph975

vector.ph975:                                     ; preds = %vector.memcheck966
  %n.vec976 = and i64 %i.em, -4                   ; 4 uses
  %i.er = mul i64 %n.vec976, 24
  %i.es = getelementptr i8, ptr %.0458.lcssa, i64 %i.er
  %i.et = add i64 %.1480.lcssa, %n.vec976
  %broadcast.splatinsert977 = insertelement <4 x double> poison, double %i.dc, i64 0
  %broadcast.splat978 = shufflevector <4 x double> %broadcast.splatinsert977, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert979 = insertelement <4 x double> poison, double %i.cz, i64 0
  %broadcast.splat980 = shufflevector <4 x double> %broadcast.splatinsert979, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert981 = insertelement <4 x double> poison, double %i.df, i64 0
  %broadcast.splat982 = shufflevector <4 x double> %broadcast.splatinsert981, <4 x double> poison, <4 x i32> zeroinitializer
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.1480.lcssa
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %vector.ph975
  %index984 = phi i64 [ 0, %vector.ph975 ], [ %index.next991, %vector.body983 ] ; 3 uses
  %i.ev = mul i64 %index984, 24
  %next.gep985 = getelementptr i8, ptr %.0458.lcssa, i64 %i.ev
  %wide.vec986 = load <12 x double>, ptr %next.gep985, align 8, !tbaa !9, !alias.scope !75 ; 3 uses
  %strided.vec987 = shufflevector <12 x double> %wide.vec986, <12 x double> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %strided.vec988 = shufflevector <12 x double> %wide.vec986, <12 x double> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %strided.vec989 = shufflevector <12 x double> %wide.vec986, <12 x double> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %i.ew = fmul <4 x double> %broadcast.splat978, %strided.vec988
  %i.ex = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %strided.vec987, <4 x double> %broadcast.splat980, <4 x double> %i.ew)
  %i.ey = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %strided.vec989, <4 x double> %broadcast.splat982, <4 x double> %i.ex)
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %index984 ; 2 uses
  %wide.load990 = load <4 x double>, ptr %i.ez, align 8, !tbaa !9, !alias.scope !76, !noalias !75
  %i.fa = fadd <4 x double> %wide.load990, %i.ey
  store <4 x double> %i.fa, ptr %i.ez, align 8, !tbaa !9, !alias.scope !76, !noalias !75
  %index.next991 = add nuw i64 %index984, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next991, %n.vec976
  br i1 %i.fb, label %middle.block992, label %vector.body983, !llvm.loop !28

middle.block992:                                  ; preds = %vector.body983
  %cmp.n993 = icmp eq i64 %i.em, %n.vec976
  br i1 %cmp.n993, label %.loopexit, label %.lr.ph624.preheader996

.lr.ph624.preheader996:                           ; preds = %vector.memcheck966, %.lr.ph624.preheader, %middle.block992
  %.1459623.ph = phi ptr [ %.0458.lcssa, %vector.memcheck966 ], [ %.0458.lcssa, %.lr.ph624.preheader ], [ %i.es, %middle.block992 ] ; 2 uses
  %.2481622.ph = phi i64 [ %.1480.lcssa, %vector.memcheck966 ], [ %.1480.lcssa, %.lr.ph624.preheader ], [ %i.et, %middle.block992 ] ; 4 uses
  %i.fc = sub i64 %1, %.2481622.ph
  %xtraiter1066 = and i64 %i.fc, 3                ; 2 uses
  %lcmp.mod1067.not.a = icmp eq i64 %xtraiter1066, 0
  br i1 %lcmp.mod1067.not.a, label %.lr.ph624.prol.loopexit, label %.lr.ph624.prol

.lr.ph624.prol:                                   ; preds = %.lr.ph624.preheader996, %.lr.ph624.prol
  %.1459623.prol = phi ptr [ %i.fo, %.lr.ph624.prol ], [ %.1459623.ph, %.lr.ph624.preheader996 ] ; 4 uses
  %.2481622.prol = phi i64 [ %i.fp, %.lr.ph624.prol ], [ %.2481622.ph, %.lr.ph624.preheader996 ] ; 2 uses
  %prol.iter1068 = phi i64 [ %prol.iter1068.next, %.lr.ph624.prol ], [ 0, %.lr.ph624.preheader996 ]
  %i.fd = load double, ptr %.1459623.prol, align 8, !tbaa !9
  %i.fe = getelementptr inbounds nuw i8, ptr %.1459623.prol, i64 8
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !9
  %i.fg = fmul double %i.dc, %i.ff
  %i.fh = call double @llvm.fmuladd.f64(double %i.fd, double %i.cz, double %i.fg)
  %i.fi = getelementptr inbounds nuw i8, ptr %.1459623.prol, i64 16
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !9
  %i.fk = call double @llvm.fmuladd.f64(double %i.fj, double %i.df, double %i.fh)
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.2481622.prol ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !9
  %i.fn = fadd double %i.fm, %i.fk
  store double %i.fn, ptr %i.fl, align 8, !tbaa !9
  %i.fo = getelementptr inbounds nuw i8, ptr %.1459623.prol, i64 24 ; 2 uses
  %i.fp = add nuw nsw i64 %.2481622.prol, 1       ; 2 uses
  %prol.iter1068.next = add i64 %prol.iter1068, 1 ; 2 uses
  %prol.iter1068.cmp.not = icmp eq i64 %prol.iter1068.next, %xtraiter1066
  br i1 %prol.iter1068.cmp.not, label %.lr.ph624.prol.loopexit, label %.lr.ph624.prol, !llvm.loop !29

.lr.ph624.prol.loopexit:                          ; preds = %.lr.ph624.prol, %.lr.ph624.preheader996
  %.1459623.unr = phi ptr [ %.1459623.ph, %.lr.ph624.preheader996 ], [ %i.fo, %.lr.ph624.prol ]
  %.2481622.unr = phi i64 [ %.2481622.ph, %.lr.ph624.preheader996 ], [ %i.fp, %.lr.ph624.prol ]
  %i.fq = sub i64 %.2481622.ph, %1
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %.loopexit, label %.lr.ph624

.lr.ph619:                                        ; preds = %.lr.ph619.preheader997, %.lr.ph619
  %.0458618 = phi ptr [ %i.hn, %.lr.ph619 ], [ %.0458618.ph, %.lr.ph619.preheader997 ] ; 13 uses
  %.1480617 = phi i64 [ %i.ho, %.lr.ph619 ], [ %.1480617.ph, %.lr.ph619.preheader997 ] ; 2 uses
  %i.fs = load double, ptr %.0458618, align 8, !tbaa !9
  %i.ft = getelementptr inbounds nuw i8, ptr %.0458618, i64 8
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !9
end_hunk_0
begin_hunk_1_@dgemv_t:bb.a
.lr.ph616.prol.loopexit:                          ; preds = %.lr.ph616.prol, %.lr.ph616.preheader
  %.3461615.unr = phi ptr [ %.2460.lcssa, %.lr.ph616.preheader ], [ %i.kg, %.lr.ph616.prol ]
  %.4483614.unr = phi i64 [ %.3482.lcssa, %.lr.ph616.preheader ], [ %i.kh, %.lr.ph616.prol ]
  %i.ki = sub i64 %.3482.lcssa, %1
  %i.kj = icmp ugt i64 %i.ki, -4
  br i1 %i.kj, label %.loopexit, label %.lr.ph616

bb.n:                                             ; preds = %.lr.ph611, %bb.n
  %.2460610 = phi ptr [ %.0490.lcssa, %.lr.ph611 ], [ %i.mf, %bb.n ] ; 7 uses
  %.3482609 = phi i64 [ 0, %.lr.ph611 ], [ %i.mg, %bb.n ] ; 2 uses
  %i.kk = load double, ptr %.2460610, align 8, !tbaa !9
  %i.kl = getelementptr inbounds nuw i8, ptr %.2460610, i64 8
  %i.km = load double, ptr %i.kl, align 8, !tbaa !9
  %i.kn = fmul double %i.dc, %i.km
  %i.ko = call double @llvm.fmuladd.f64(double %i.kk, double %i.cz, double %i.kn)
  %i.kp = getelementptr inbounds nuw i8, ptr %.2460610, i64 16
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !9
  %i.kr = call double @llvm.fmuladd.f64(double %i.kq, double %i.df, double %i.ko)
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.3482609 ; 5 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !9
  %i.ku = fadd double %i.kt, %i.kr
  store double %i.ku, ptr %i.ks, align 8, !tbaa !9
  %i.kv = getelementptr inbounds [8 x i8], ptr %.2460610, i64 %5 ; 3 uses
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !9
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !9
  %i.kz = fmul double %i.dc, %i.ky
  %i.la = call double @llvm.fmuladd.f64(double %i.kw, double %i.cz, double %i.kz)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !9
  %i.ld = call double @llvm.fmuladd.f64(double %i.lc, double %i.df, double %i.la)
  %i.le = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 2 uses
  %i.lf = load double, ptr %i.le, align 8, !tbaa !9
  %i.lg = fadd double %i.lf, %i.ld
  store double %i.lg, ptr %i.le, align 8, !tbaa !9
  %i.lh = getelementptr inbounds i8, ptr %.2460610, i64 %.idx504 ; 3 uses
  %i.li = load double, ptr %i.lh, align 8, !tbaa !9
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !9
  %i.ll = fmul double %i.dc, %i.lk
  %i.lm = call double @llvm.fmuladd.f64(double %i.li, double %i.cz, double %i.ll)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !9
  %i.lp = call double @llvm.fmuladd.f64(double %i.lo, double %i.df, double %i.lm)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ks, i64 16 ; 2 uses
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !9
  %i.ls = fadd double %i.lr, %i.lp
  store double %i.ls, ptr %i.lq, align 8, !tbaa !9
  %i.lt = getelementptr inbounds i8, ptr %.2460610, i64 %.idx515 ; 3 uses
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !9
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !9
  %i.lx = fmul double %i.dc, %i.lw
  %i.ly = call double @llvm.fmuladd.f64(double %i.lu, double %i.cz, double %i.lx)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !9
  %i.mb = call double @llvm.fmuladd.f64(double %i.ma, double %i.df, double %i.ly)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ks, i64 24 ; 2 uses
  %i.md = load double, ptr %i.mc, align 8, !tbaa !9
  %i.me = fadd double %i.md, %i.mb
  store double %i.me, ptr %i.mc, align 8, !tbaa !9
  %i.mf = getelementptr inbounds i8, ptr %.2460610, i64 %.idx516 ; 2 uses
  %i.mg = add nuw nsw i64 %.3482609, 4            ; 3 uses
  %i.mh = icmp samesign ult i64 %i.mg, %i.js
  br i1 %i.mh, label %bb.n, label %.preheader523, !llvm.loop !33

.lr.ph616:                                        ; preds = %.lr.ph616.prol.loopexit, %.lr.ph616
  %.3461615 = phi ptr [ %i.og, %.lr.ph616 ], [ %.3461615.unr, %.lr.ph616.prol.loopexit ] ; 4 uses
  %.4483614 = phi i64 [ %i.oh, %.lr.ph616 ], [ %.4483614.unr, %.lr.ph616.prol.loopexit ] ; 5 uses
  %i.mi = load double, ptr %.3461615, align 8, !tbaa !9
  %i.mj = getelementptr inbounds nuw i8, ptr %.3461615, i64 8
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !9
  %i.ml = fmul double %i.dc, %i.mk
  %i.mm = call double @llvm.fmuladd.f64(double %i.mi, double %i.cz, double %i.ml)
  %i.mn = getelementptr inbounds nuw i8, ptr %.3461615, i64 16
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !9
  %i.mp = call double @llvm.fmuladd.f64(double %i.mo, double %i.df, double %i.mm)
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.4483614 ; 2 uses
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !9
  %i.ms = fadd double %i.mr, %i.mp
  store double %i.ms, ptr %i.mq, align 8, !tbaa !9
  %i.mt = getelementptr inbounds [8 x i8], ptr %.3461615, i64 %5 ; 4 uses
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !9
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !9
  %i.mx = fmul double %i.dc, %i.mw
  %i.my = call double @llvm.fmuladd.f64(double %i.mu, double %i.cz, double %i.mx)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.na = load double, ptr %i.mz, align 8, !tbaa !9
  %i.nb = call double @llvm.fmuladd.f64(double %i.na, double %i.df, double %i.my)
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.4483614
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8 ; 2 uses
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !9
  %i.nf = fadd double %i.ne, %i.nb
  store double %i.nf, ptr %i.nd, align 8, !tbaa !9
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.mt, i64 %5 ; 4 uses
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !9
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !9
  %i.nk = fmul double %i.dc, %i.nj
  %i.nl = call double @llvm.fmuladd.f64(double %i.nh, double %i.cz, double %i.nk)
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !9
  %i.no = call double @llvm.fmuladd.f64(double %i.nn, double %i.df, double %i.nl)
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.4483614
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16 ; 2 uses
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !9
  %i.ns = fadd double %i.nr, %i.no
  store double %i.ns, ptr %i.nq, align 8, !tbaa !9
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %5 ; 4 uses
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !9
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !9
  %i.nx = fmul double %i.dc, %i.nw
  %i.ny = call double @llvm.fmuladd.f64(double %i.nu, double %i.cz, double %i.nx)
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !9
  %i.ob = call double @llvm.fmuladd.f64(double %i.oa, double %i.df, double %i.ny)
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.4483614
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 24 ; 2 uses
  %i.oe = load double, ptr %i.od, align 8, !tbaa !9
  %i.of = fadd double %i.oe, %i.ob
  store double %i.of, ptr %i.od, align 8, !tbaa !9
  %i.og = getelementptr inbounds [8 x i8], ptr %i.nt, i64 %5
  %i.oh = add nuw nsw i64 %.4483614, 4            ; 2 uses
  %exitcond670.not.3 = icmp eq i64 %i.oh, %1
  br i1 %exitcond670.not.3, label %.loopexit, label %.lr.ph616, !llvm.loop !34

.lr.ph608:                                        ; preds = %.lr.ph608, %.lr.ph608.preheader.new
  %.4462607 = phi ptr [ %.0490.lcssa, %.lr.ph608.preheader.new ], [ %i.qd, %.lr.ph608 ] ; 4 uses
  %.4474606 = phi ptr [ %8, %.lr.ph608.preheader.new ], [ %i.qc, %.lr.ph608 ] ; 3 uses
  %niter1062 = phi i64 [ 0, %.lr.ph608.preheader.new ], [ %niter1062.next.3, %.lr.ph608 ]
  %i.oi = load double, ptr %.4462607, align 8, !tbaa !9
  %i.oj = getelementptr inbounds nuw i8, ptr %.4462607, i64 8
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !9
  %i.ol = fmul double %i.dc, %i.ok
  %i.om = call double @llvm.fmuladd.f64(double %i.oi, double %i.cz, double %i.ol)
  %i.on = getelementptr inbounds nuw i8, ptr %.4462607, i64 16
  %i.oo = load double, ptr %i.on, align 8, !tbaa !9
  %i.op = call double @llvm.fmuladd.f64(double %i.oo, double %i.df, double %i.om)
  %i.oq = load double, ptr %.4474606, align 8, !tbaa !9
  %i.or = fadd double %i.oq, %i.op
  store double %i.or, ptr %.4474606, align 8, !tbaa !9
  %i.os = getelementptr inbounds [8 x i8], ptr %.4474606, i64 %9 ; 3 uses
  %i.ot = getelementptr inbounds [8 x i8], ptr %.4462607, i64 %5 ; 4 uses
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !9
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !9
  %i.ox = fmul double %i.dc, %i.ow
  %i.oy = call double @llvm.fmuladd.f64(double %i.ou, double %i.cz, double %i.ox)
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !9
  %i.pb = call double @llvm.fmuladd.f64(double %i.pa, double %i.df, double %i.oy)
  %i.pc = load double, ptr %i.os, align 8, !tbaa !9
  %i.pd = fadd double %i.pc, %i.pb
  store double %i.pd, ptr %i.os, align 8, !tbaa !9
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.os, i64 %9 ; 3 uses
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.ot, i64 %5 ; 4 uses
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !9
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !9
  %i.pj = fmul double %i.dc, %i.pi
  %i.pk = call double @llvm.fmuladd.f64(double %i.pg, double %i.cz, double %i.pj)
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !9
  %i.pn = call double @llvm.fmuladd.f64(double %i.pm, double %i.df, double %i.pk)
  %i.po = load double, ptr %i.pe, align 8, !tbaa !9
  %i.pp = fadd double %i.po, %i.pn
  store double %i.pp, ptr %i.pe, align 8, !tbaa !9
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.pe, i64 %9 ; 3 uses
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %5 ; 4 uses
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !9
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !9
  %i.pv = fmul double %i.dc, %i.pu
  %i.pw = call double @llvm.fmuladd.f64(double %i.ps, double %i.cz, double %i.pv)
  %i.px = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.py = load double, ptr %i.px, align 8, !tbaa !9
  %i.pz = call double @llvm.fmuladd.f64(double %i.py, double %i.df, double %i.pw)
  %i.qa = load double, ptr %i.pq, align 8, !tbaa !9
  %i.qb = fadd double %i.qa, %i.pz
  store double %i.qb, ptr %i.pq, align 8, !tbaa !9
  %i.qc = getelementptr inbounds [8 x i8], ptr %i.pq, i64 %9 ; 2 uses
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.pr, i64 %5 ; 2 uses
  %niter1062.next.3 = add i64 %niter1062, 4       ; 2 uses
  %niter1062.ncmp.3 = icmp eq i64 %niter1062.next.3, %unroll_iter1061
  br i1 %niter1062.ncmp.3, label %.loopexit.loopexit1002.unr-lcssa, label %.lr.ph608, !llvm.loop !35

bb.o:                                             ; preds = %bb.k
  %i.qe = load double, ptr %.0491.lcssa, align 8, !tbaa !9
  %i.qf = fmul double %3, %i.qe                   ; 26 uses
  %i.qg = getelementptr inbounds [8 x i8], ptr %.0491.lcssa, i64 %7
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !9
  %i.qi = fmul double %3, %i.qh                   ; 26 uses
  %i.qj = icmp eq i64 %5, 2
  %i.qk = icmp eq i64 %9, 1                       ; 2 uses
  %or.cond3 = and i1 %i.qj, %i.qk
  br i1 %or.cond3, label %.preheader530, label %bb.p

.preheader530:                                    ; preds = %bb.o
  %i.ql = and i64 %1, 9223372036854775804         ; 4 uses
  %.not631 = icmp eq i64 %i.ql, 0
  br i1 %.not631, label %.preheader528, label %.lr.ph599.preheader

.lr.ph599.preheader:                              ; preds = %.preheader530
  %i.qm = add nsw i64 %i.ql, -1                   ; 2 uses
  %i.qn = lshr i64 %i.qm, 2
  %i.qo = add nuw nsw i64 %i.qn, 1                ; 2 uses
  %min.iters.check804 = icmp samesign ult i64 %i.ql, 29
  br i1 %min.iters.check804, label %.lr.ph599.preheader1004, label %vector.memcheck797

vector.memcheck797:                               ; preds = %.lr.ph599.preheader
  %i.qp = lshr i64 %i.qm, 2                       ; 2 uses
  %i.qq = shl i64 %i.qp, 5
  %i.qr = getelementptr i8, ptr %8, i64 %i.qq
  %scevgep798 = getelementptr i8, ptr %i.qr, i64 32
  %i.qs = shl i64 %i.qp, 6
  %i.qt = getelementptr i8, ptr %.0490.lcssa, i64 %i.qs
  %scevgep799 = getelementptr i8, ptr %i.qt, i64 64
  %bound0800 = icmp ult ptr %8, %scevgep799
  %bound1801 = icmp ult ptr %.0490.lcssa, %scevgep798
  %found.conflict802 = and i1 %bound0800, %bound1801
  br i1 %found.conflict802, label %.lr.ph599.preheader1004, label %vector.ph805

vector.ph805:                                     ; preds = %vector.memcheck797
  %n.vec806 = and i64 %i.qo, 9223372036854775804  ; 4 uses
  %i.qu = shl i64 %n.vec806, 6
  %i.qv = getelementptr i8, ptr %.0490.lcssa, i64 %i.qu ; 2 uses
  %i.qw = shl i64 %n.vec806, 2                    ; 2 uses
  %broadcast.splatinsert807 = insertelement <4 x double> poison, double %i.qi, i64 0
  %broadcast.splat808 = shufflevector <4 x double> %broadcast.splatinsert807, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert809 = insertelement <4 x double> poison, double %i.qf, i64 0
  %broadcast.splat810 = shufflevector <4 x double> %broadcast.splatinsert809, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body811

vector.body811:                                   ; preds = %vector.body811, %vector.ph805
  %index812 = phi i64 [ 0, %vector.ph805 ], [ %index.next837, %vector.body811 ]
  %pointer.phi = phi ptr [ %.0490.lcssa, %vector.ph805 ], [ %ptr.ind, %vector.body811 ] ; 2 uses
  %vec.ind813 = phi <4 x i64> [ <i64 0, i64 4, i64 8, i64 12>, %vector.ph805 ], [ %vec.ind.next838, %vector.body811 ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 64, i64 128, i64 192> ; 8 uses
  %wide.masked.gather814 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %vector.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !77
  %wide.gep815 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 8
  %wide.masked.gather816 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep815, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !77
  %i.qx = fmul <4 x double> %broadcast.splat808, %wide.masked.gather816
  %i.qy = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather814, <4 x double> %broadcast.splat810, <4 x double> %i.qx)
  %wide.gep817 = getelementptr inbounds nuw [8 x i8], ptr %8, <4 x i64> %vec.ind813 ; 5 uses
  %wide.masked.gather818 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep817, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !78, !noalias !77
  %i.qz = fadd <4 x double> %wide.masked.gather818, %i.qy
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.qz, <4 x ptr> align 8 %wide.gep817, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !78, !noalias !77
  %wide.gep819 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 16
  %wide.masked.gather820 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep819, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !77
  %wide.gep821 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 24
  %wide.masked.gather822 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep821, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !77
  %i.ra = fmul <4 x double> %broadcast.splat808, %wide.masked.gather822
  %i.rb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather820, <4 x double> %broadcast.splat810, <4 x double> %i.ra)
  %wide.gep823 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep817, i64 8 ; 2 uses
  %wide.masked.gather824 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep823, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !78, !noalias !77
  %i.rc = fadd <4 x double> %wide.masked.gather824, %i.rb
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.rc, <4 x ptr> align 8 %wide.gep823, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !78, !noalias !77
  %wide.gep825 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 32
  %wide.masked.gather826 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep825, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !77
  %wide.gep827 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 40
  %wide.masked.gather828 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep827, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !77
  %i.rd = fmul <4 x double> %broadcast.splat808, %wide.masked.gather828
  %i.re = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather826, <4 x double> %broadcast.splat810, <4 x double> %i.rd)
  %wide.gep829 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep817, i64 16 ; 2 uses
  %wide.masked.gather830 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep829, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !78, !noalias !77
  %i.rf = fadd <4 x double> %wide.masked.gather830, %i.re
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.rf, <4 x ptr> align 8 %wide.gep829, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !78, !noalias !77
  %wide.gep831 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 48
  %wide.masked.gather832 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep831, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !77
  %wide.gep833 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 56
  %wide.masked.gather834 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep833, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !77
  %i.rg = fmul <4 x double> %broadcast.splat808, %wide.masked.gather834
  %i.rh = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather832, <4 x double> %broadcast.splat810, <4 x double> %i.rg)
  %wide.gep835 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep817, i64 24 ; 2 uses
  %wide.masked.gather836 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep835, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !78, !noalias !77
  %i.ri = fadd <4 x double> %wide.masked.gather836, %i.rh
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ri, <4 x ptr> align 8 %wide.gep835, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !78, !noalias !77
  %index.next837 = add nuw i64 %index812, 4       ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 256
  %vec.ind.next838 = add nuw nsw <4 x i64> %vec.ind813, splat (i64 16)
  %i.rj = icmp eq i64 %index.next837, %n.vec806
  br i1 %i.rj, label %middle.block839, label %vector.body811, !llvm.loop !39

middle.block839:                                  ; preds = %vector.body811
  %cmp.n840 = icmp eq i64 %i.qo, %n.vec806
  br i1 %cmp.n840, label %.preheader528, label %.lr.ph599.preheader1004

.lr.ph599.preheader1004:                          ; preds = %vector.memcheck797, %.lr.ph599.preheader, %middle.block839
  %.0455598.ph = phi ptr [ %.0490.lcssa, %vector.memcheck797 ], [ %.0490.lcssa, %.lr.ph599.preheader ], [ %i.qv, %middle.block839 ]
  %.6485597.ph = phi i64 [ 0, %vector.memcheck797 ], [ 0, %.lr.ph599.preheader ], [ %i.qw, %middle.block839 ]
  br label %.lr.ph599

.preheader528:                                    ; preds = %.lr.ph599, %middle.block839, %.preheader530
  %.6485.lcssa = phi i64 [ 0, %.preheader530 ], [ %i.qw, %middle.block839 ], [ %i.ux, %.lr.ph599 ] ; 10 uses
  %.0455.lcssa = phi ptr [ %.0490.lcssa, %.preheader530 ], [ %i.qv, %middle.block839 ], [ %i.uw, %.lr.ph599 ] ; 11 uses
  %i.rk = icmp slt i64 %.6485.lcssa, %1
  br i1 %i.rk, label %iter.check885, label %.loopexit

iter.check885:                                    ; preds = %.preheader528
  %i.rl = sub i64 %1, %.6485.lcssa                ; 7 uses
  %min.iters.check851 = icmp ult i64 %i.rl, 4
  br i1 %min.iters.check851, label %.lr.ph604.preheader, label %vector.memcheck843

vector.memcheck843:                               ; preds = %iter.check885
  %i.rm = shl i64 %.6485.lcssa, 3
  %scevgep844 = getelementptr i8, ptr %8, i64 %i.rm
  %i.rn = shl i64 %1, 3
  %scevgep845 = getelementptr i8, ptr %8, i64 %i.rn
  %i.ro = sub i64 %1, %.6485.lcssa
  %i.rp = shl i64 %i.ro, 4
  %scevgep846 = getelementptr i8, ptr %.0455.lcssa, i64 %i.rp
  %bound0847 = icmp ult ptr %scevgep844, %scevgep846
  %bound1848 = icmp ult ptr %.0455.lcssa, %scevgep845
  %found.conflict849 = and i1 %bound0847, %bound1848
  br i1 %found.conflict849, label %.lr.ph604.preheader, label %vector.main.loop.iter.check852

vector.main.loop.iter.check852:                   ; preds = %vector.memcheck843
  %min.iters.check853 = icmp ult i64 %i.rl, 16
  br i1 %min.iters.check853, label %vec.epilog.ph889, label %vector.ph854

vector.ph854:                                     ; preds = %vector.main.loop.iter.check852
  %i.rq = and i64 %i.rl, 12
  %n.vec855 = and i64 %i.rl, -16                  ; 5 uses
  %i.rr = shl i64 %n.vec855, 4
  %i.rs = getelementptr i8, ptr %.0455.lcssa, i64 %i.rr
  %i.rt = add i64 %.6485.lcssa, %n.vec855
  %broadcast.splatinsert856 = insertelement <4 x double> poison, double %i.qi, i64 0
  %broadcast.splat857 = shufflevector <4 x double> %broadcast.splatinsert856, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert858 = insertelement <4 x double> poison, double %i.qf, i64 0
  %broadcast.splat859 = shufflevector <4 x double> %broadcast.splatinsert858, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.6485.lcssa
  br label %vector.body860

vector.body860:                                   ; preds = %vector.ph854, %vector.body860
  %index861 = phi i64 [ 0, %vector.ph854 ], [ %index.next879, %vector.body860 ] ; 3 uses
  %i.rv = shl i64 %index861, 4                    ; 4 uses
  %next.gep = getelementptr i8, ptr %.0455.lcssa, i64 %i.rv
  %i.rw = getelementptr i8, ptr %.0455.lcssa, i64 %i.rv
  %next.gep862 = getelementptr i8, ptr %i.rw, i64 64
  %i.rx = getelementptr i8, ptr %.0455.lcssa, i64 %i.rv
  %next.gep863 = getelementptr i8, ptr %i.rx, i64 128
  %i.ry = getelementptr i8, ptr %.0455.lcssa, i64 %i.rv
  %next.gep864 = getelementptr i8, ptr %i.ry, i64 192
  %wide.vec = load <8 x double>, ptr %next.gep, align 8, !tbaa !9, !alias.scope !79 ; 2 uses
  %strided.vec = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec865 = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec866 = load <8 x double>, ptr %next.gep862, align 8, !tbaa !9, !alias.scope !79 ; 2 uses
  %strided.vec867 = shufflevector <8 x double> %wide.vec866, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec868 = shufflevector <8 x double> %wide.vec866, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec869 = load <8 x double>, ptr %next.gep863, align 8, !tbaa !9, !alias.scope !79 ; 2 uses
  %strided.vec870 = shufflevector <8 x double> %wide.vec869, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec871 = shufflevector <8 x double> %wide.vec869, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec872 = load <8 x double>, ptr %next.gep864, align 8, !tbaa !9, !alias.scope !79 ; 2 uses
  %strided.vec873 = shufflevector <8 x double> %wide.vec872, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec874 = shufflevector <8 x double> %wide.vec872, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.rz = fmul <4 x double> %broadcast.splat857, %strided.vec865
  %i.sa = fmul <4 x double> %broadcast.splat857, %strided.vec868
  %i.sb = fmul <4 x double> %broadcast.splat857, %strided.vec871
  %i.sc = fmul <4 x double> %broadcast.splat857, %strided.vec874
  %i.sd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %strided.vec, <4 x double> %broadcast.splat859, <4 x double> %i.rz)
  %i.se = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %strided.vec867, <4 x double> %broadcast.splat859, <4 x double> %i.sa)
  %i.sf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %strided.vec870, <4 x double> %broadcast.splat859, <4 x double> %i.sb)
  %i.sg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %strided.vec873, <4 x double> %broadcast.splat859, <4 x double> %i.sc)
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %index861 ; 5 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 32 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 64 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 96 ; 2 uses
  %wide.load875 = load <4 x double>, ptr %i.sh, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  %wide.load876 = load <4 x double>, ptr %i.si, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  %wide.load877 = load <4 x double>, ptr %i.sj, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  %wide.load878 = load <4 x double>, ptr %i.sk, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  %i.sl = fadd <4 x double> %wide.load875, %i.sd
  %i.sm = fadd <4 x double> %wide.load876, %i.se
  %i.sn = fadd <4 x double> %wide.load877, %i.sf
  %i.so = fadd <4 x double> %wide.load878, %i.sg
  store <4 x double> %i.sl, ptr %i.sh, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  store <4 x double> %i.sm, ptr %i.si, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  store <4 x double> %i.sn, ptr %i.sj, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  store <4 x double> %i.so, ptr %i.sk, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  %index.next879 = add nuw i64 %index861, 16      ; 2 uses
  %i.sp = icmp eq i64 %index.next879, %n.vec855
  br i1 %i.sp, label %middle.block880, label %vector.body860, !llvm.loop !43

middle.block880:                                  ; preds = %vector.body860
  %cmp.n881 = icmp eq i64 %i.rl, %n.vec855
  br i1 %cmp.n881, label %.loopexit, label %vec.epilog.iter.check887

vec.epilog.iter.check887:                         ; preds = %middle.block880
  %min.epilog.iters.check888 = icmp eq i64 %i.rq, 0
  br i1 %min.epilog.iters.check888, label %.lr.ph604.preheader, label %vec.epilog.ph889, !prof !81

vec.epilog.ph889:                                 ; preds = %vector.main.loop.iter.check852, %vec.epilog.iter.check887
  %vec.epilog.resume.val882 = phi i64 [ %n.vec855, %vec.epilog.iter.check887 ], [ 0, %vector.main.loop.iter.check852 ]
  %n.vec890 = and i64 %i.rl, -4                   ; 4 uses
  %i.sq = shl i64 %n.vec890, 4
  %i.sr = getelementptr i8, ptr %.0455.lcssa, i64 %i.sq
  %i.ss = add i64 %.6485.lcssa, %n.vec890
  %broadcast.splatinsert891 = insertelement <4 x double> poison, double %i.qi, i64 0
  %broadcast.splat892 = shufflevector <4 x double> %broadcast.splatinsert891, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert893 = insertelement <4 x double> poison, double %i.qf, i64 0
  %broadcast.splat894 = shufflevector <4 x double> %broadcast.splatinsert893, <4 x double> poison, <4 x i32> zeroinitializer
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.6485.lcssa
  br label %vec.epilog.vector.body895

vec.epilog.vector.body895:                        ; preds = %vec.epilog.vector.body895, %vec.epilog.ph889
  %index896 = phi i64 [ %vec.epilog.resume.val882, %vec.epilog.ph889 ], [ %index.next902, %vec.epilog.vector.body895 ] ; 3 uses
  %i.su = shl i64 %index896, 4
  %next.gep897 = getelementptr i8, ptr %.0455.lcssa, i64 %i.su
  %wide.vec898 = load <8 x double>, ptr %next.gep897, align 8, !tbaa !9, !alias.scope !79 ; 2 uses
  %strided.vec899 = shufflevector <8 x double> %wide.vec898, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec900 = shufflevector <8 x double> %wide.vec898, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
end_hunk_1
begin_hunk_2_@dgemv_t:bb.a
.lr.ph591:                                        ; preds = %.preheader533
  %.idx512 = mul i64 %5, 24
  %.idx513 = shl i64 %5, 5
  br label %bb.q

.preheader531:                                    ; preds = %bb.q, %.preheader533
  %.8.lcssa = phi i64 [ 0, %.preheader533 ], [ %i.yo, %bb.q ] ; 5 uses
  %.2457.lcssa = phi ptr [ %.0490.lcssa, %.preheader533 ], [ %i.yn, %bb.q ] ; 2 uses
  %i.wq = icmp slt i64 %.8.lcssa, %1
  br i1 %i.wq, label %.lr.ph596.preheader, label %.loopexit

.lr.ph596.preheader:                              ; preds = %.preheader531
  %i.wr = sub i64 %1, %.8.lcssa
  %xtraiter1051 = and i64 %i.wr, 3                ; 2 uses
  %lcmp.mod1052.not = icmp eq i64 %xtraiter1051, 0
  br i1 %lcmp.mod1052.not, label %.lr.ph596.prol.loopexit, label %.lr.ph596.prol

.lr.ph596.prol:                                   ; preds = %.lr.ph596.preheader, %.lr.ph596.prol
  %.3595.prol = phi ptr [ %i.xa, %.lr.ph596.prol ], [ %.2457.lcssa, %.lr.ph596.preheader ] ; 3 uses
  %.9594.prol = phi i64 [ %i.xb, %.lr.ph596.prol ], [ %.8.lcssa, %.lr.ph596.preheader ] ; 2 uses
  %prol.iter1053 = phi i64 [ %prol.iter1053.next, %.lr.ph596.prol ], [ 0, %.lr.ph596.preheader ]
  %i.ws = load double, ptr %.3595.prol, align 8, !tbaa !9
  %i.wt = getelementptr inbounds nuw i8, ptr %.3595.prol, i64 8
  %i.wu = load double, ptr %i.wt, align 8, !tbaa !9
  %i.wv = fmul double %i.qi, %i.wu
  %i.ww = call double @llvm.fmuladd.f64(double %i.ws, double %i.qf, double %i.wv)
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.9594.prol ; 2 uses
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !9
  %i.wz = fadd double %i.wy, %i.ww
  store double %i.wz, ptr %i.wx, align 8, !tbaa !9
  %i.xa = getelementptr inbounds [8 x i8], ptr %.3595.prol, i64 %5 ; 2 uses
  %i.xb = add nuw nsw i64 %.9594.prol, 1          ; 2 uses
  %prol.iter1053.next = add i64 %prol.iter1053, 1 ; 2 uses
  %prol.iter1053.cmp.not = icmp eq i64 %prol.iter1053.next, %xtraiter1051
  br i1 %prol.iter1053.cmp.not, label %.lr.ph596.prol.loopexit, label %.lr.ph596.prol, !llvm.loop !48

.lr.ph596.prol.loopexit:                          ; preds = %.lr.ph596.prol, %.lr.ph596.preheader
  %.3595.unr = phi ptr [ %.2457.lcssa, %.lr.ph596.preheader ], [ %i.xa, %.lr.ph596.prol ]
  %.9594.unr = phi i64 [ %.8.lcssa, %.lr.ph596.preheader ], [ %i.xb, %.lr.ph596.prol ]
  %i.xc = sub i64 %.8.lcssa, %1
  %i.xd = icmp ugt i64 %i.xc, -4
  br i1 %i.xd, label %.loopexit, label %.lr.ph596

bb.q:                                             ; preds = %.lr.ph591, %bb.q
  %.2457590 = phi ptr [ %.0490.lcssa, %.lr.ph591 ], [ %i.yn, %bb.q ] ; 6 uses
  %.8589 = phi i64 [ 0, %.lr.ph591 ], [ %i.yo, %bb.q ] ; 2 uses
  %i.xe = load double, ptr %.2457590, align 8, !tbaa !9
  %i.xf = getelementptr inbounds nuw i8, ptr %.2457590, i64 8
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !9
  %i.xh = fmul double %i.qi, %i.xg
  %i.xi = call double @llvm.fmuladd.f64(double %i.xe, double %i.qf, double %i.xh)
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.8589 ; 5 uses
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !9
  %i.xl = fadd double %i.xk, %i.xi
  store double %i.xl, ptr %i.xj, align 8, !tbaa !9
  %i.xm = getelementptr inbounds [8 x i8], ptr %.2457590, i64 %5 ; 2 uses
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !9
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !9
  %i.xq = fmul double %i.qi, %i.xp
  %i.xr = call double @llvm.fmuladd.f64(double %i.xn, double %i.qf, double %i.xq)
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xj, i64 8 ; 2 uses
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !9
  %i.xu = fadd double %i.xt, %i.xr
  store double %i.xu, ptr %i.xs, align 8, !tbaa !9
  %i.xv = getelementptr inbounds i8, ptr %.2457590, i64 %.idx504 ; 2 uses
  %i.xw = load double, ptr %i.xv, align 8, !tbaa !9
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !9
  %i.xz = fmul double %i.qi, %i.xy
  %i.ya = call double @llvm.fmuladd.f64(double %i.xw, double %i.qf, double %i.xz)
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xj, i64 16 ; 2 uses
  %i.yc = load double, ptr %i.yb, align 8, !tbaa !9
  %i.yd = fadd double %i.yc, %i.ya
  store double %i.yd, ptr %i.yb, align 8, !tbaa !9
  %i.ye = getelementptr inbounds i8, ptr %.2457590, i64 %.idx512 ; 2 uses
  %i.yf = load double, ptr %i.ye, align 8, !tbaa !9
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !9
  %i.yi = fmul double %i.qi, %i.yh
  %i.yj = call double @llvm.fmuladd.f64(double %i.yf, double %i.qf, double %i.yi)
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xj, i64 24 ; 2 uses
  %i.yl = load double, ptr %i.yk, align 8, !tbaa !9
  %i.ym = fadd double %i.yl, %i.yj
  store double %i.ym, ptr %i.yk, align 8, !tbaa !9
  %i.yn = getelementptr inbounds i8, ptr %.2457590, i64 %.idx513 ; 2 uses
  %i.yo = add nuw nsw i64 %.8589, 4               ; 3 uses
  %i.yp = icmp samesign ult i64 %i.yo, %i.wp
  br i1 %i.yp, label %bb.q, label %.preheader531, !llvm.loop !49

.lr.ph596:                                        ; preds = %.lr.ph596.prol.loopexit, %.lr.ph596
  %.3595 = phi ptr [ %i.aac, %.lr.ph596 ], [ %.3595.unr, %.lr.ph596.prol.loopexit ] ; 3 uses
  %.9594 = phi i64 [ %i.aad, %.lr.ph596 ], [ %.9594.unr, %.lr.ph596.prol.loopexit ] ; 5 uses
  %i.yq = load double, ptr %.3595, align 8, !tbaa !9
  %i.yr = getelementptr inbounds nuw i8, ptr %.3595, i64 8
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !9
  %i.yt = fmul double %i.qi, %i.ys
  %i.yu = call double @llvm.fmuladd.f64(double %i.yq, double %i.qf, double %i.yt)
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.9594 ; 2 uses
  %i.yw = load double, ptr %i.yv, align 8, !tbaa !9
  %i.yx = fadd double %i.yw, %i.yu
  store double %i.yx, ptr %i.yv, align 8, !tbaa !9
  %i.yy = getelementptr inbounds [8 x i8], ptr %.3595, i64 %5 ; 3 uses
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !9
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  %i.zb = load double, ptr %i.za, align 8, !tbaa !9
  %i.zc = fmul double %i.qi, %i.zb
  %i.zd = call double @llvm.fmuladd.f64(double %i.yz, double %i.qf, double %i.zc)
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.9594
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 8 ; 2 uses
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !9
  %i.zh = fadd double %i.zg, %i.zd
  store double %i.zh, ptr %i.zf, align 8, !tbaa !9
  %i.zi = getelementptr inbounds [8 x i8], ptr %i.yy, i64 %5 ; 3 uses
  %i.zj = load double, ptr %i.zi, align 8, !tbaa !9
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  %i.zl = load double, ptr %i.zk, align 8, !tbaa !9
  %i.zm = fmul double %i.qi, %i.zl
  %i.zn = call double @llvm.fmuladd.f64(double %i.zj, double %i.qf, double %i.zm)
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.9594
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16 ; 2 uses
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !9
  %i.zr = fadd double %i.zq, %i.zn
  store double %i.zr, ptr %i.zp, align 8, !tbaa !9
  %i.zs = getelementptr inbounds [8 x i8], ptr %i.zi, i64 %5 ; 3 uses
  %i.zt = load double, ptr %i.zs, align 8, !tbaa !9
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  %i.zv = load double, ptr %i.zu, align 8, !tbaa !9
  %i.zw = fmul double %i.qi, %i.zv
  %i.zx = call double @llvm.fmuladd.f64(double %i.zt, double %i.qf, double %i.zw)
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.9594
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 24 ; 2 uses
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !9
  %i.aab = fadd double %i.aaa, %i.zx
  store double %i.aab, ptr %i.zz, align 8, !tbaa !9
  %i.aac = getelementptr inbounds [8 x i8], ptr %i.zs, i64 %5
  %i.aad = add nuw nsw i64 %.9594, 4              ; 2 uses
  %exitcond667.not.3 = icmp eq i64 %i.aad, %1
  br i1 %exitcond667.not.3, label %.loopexit, label %.lr.ph596, !llvm.loop !50

.lr.ph588:                                        ; preds = %.lr.ph588, %.lr.ph588.preheader.new
  %.4587 = phi ptr [ %.0490.lcssa, %.lr.ph588.preheader.new ], [ %i.abn, %.lr.ph588 ] ; 3 uses
  %.5586 = phi ptr [ %8, %.lr.ph588.preheader.new ], [ %i.abm, %.lr.ph588 ] ; 3 uses
  %niter1050 = phi i64 [ 0, %.lr.ph588.preheader.new ], [ %niter1050.next.3, %.lr.ph588 ]
  %i.aae = load double, ptr %.4587, align 8, !tbaa !9
  %i.aaf = getelementptr inbounds nuw i8, ptr %.4587, i64 8
  %i.aag = load double, ptr %i.aaf, align 8, !tbaa !9
  %i.aah = fmul double %i.qi, %i.aag
  %i.aai = call double @llvm.fmuladd.f64(double %i.aae, double %i.qf, double %i.aah)
  %i.aaj = load double, ptr %.5586, align 8, !tbaa !9
  %i.aak = fadd double %i.aaj, %i.aai
  store double %i.aak, ptr %.5586, align 8, !tbaa !9
  %i.aal = getelementptr inbounds [8 x i8], ptr %.5586, i64 %9 ; 3 uses
  %i.aam = getelementptr inbounds [8 x i8], ptr %.4587, i64 %5 ; 3 uses
  %i.aan = load double, ptr %i.aam, align 8, !tbaa !9
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.aap = load double, ptr %i.aao, align 8, !tbaa !9
  %i.aaq = fmul double %i.qi, %i.aap
  %i.aar = call double @llvm.fmuladd.f64(double %i.aan, double %i.qf, double %i.aaq)
  %i.aas = load double, ptr %i.aal, align 8, !tbaa !9
  %i.aat = fadd double %i.aas, %i.aar
  store double %i.aat, ptr %i.aal, align 8, !tbaa !9
  %i.aau = getelementptr inbounds [8 x i8], ptr %i.aal, i64 %9 ; 3 uses
  %i.aav = getelementptr inbounds [8 x i8], ptr %i.aam, i64 %5 ; 3 uses
  %i.aaw = load double, ptr %i.aav, align 8, !tbaa !9
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.aay = load double, ptr %i.aax, align 8, !tbaa !9
  %i.aaz = fmul double %i.qi, %i.aay
  %i.aba = call double @llvm.fmuladd.f64(double %i.aaw, double %i.qf, double %i.aaz)
  %i.abb = load double, ptr %i.aau, align 8, !tbaa !9
  %i.abc = fadd double %i.abb, %i.aba
  store double %i.abc, ptr %i.aau, align 8, !tbaa !9
  %i.abd = getelementptr inbounds [8 x i8], ptr %i.aau, i64 %9 ; 3 uses
  %i.abe = getelementptr inbounds [8 x i8], ptr %i.aav, i64 %5 ; 3 uses
  %i.abf = load double, ptr %i.abe, align 8, !tbaa !9
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %i.abh = load double, ptr %i.abg, align 8, !tbaa !9
  %i.abi = fmul double %i.qi, %i.abh
  %i.abj = call double @llvm.fmuladd.f64(double %i.abf, double %i.qf, double %i.abi)
  %i.abk = load double, ptr %i.abd, align 8, !tbaa !9
  %i.abl = fadd double %i.abk, %i.abj
  store double %i.abl, ptr %i.abd, align 8, !tbaa !9
  %i.abm = getelementptr inbounds [8 x i8], ptr %i.abd, i64 %9 ; 2 uses
  %i.abn = getelementptr inbounds [8 x i8], ptr %i.abe, i64 %5 ; 2 uses
  %niter1050.next.3 = add i64 %niter1050, 4       ; 2 uses
  %niter1050.ncmp.3 = icmp eq i64 %niter1050.next.3, %unroll_iter1049
  br i1 %niter1050.ncmp.3, label %.loopexit.loopexit1010.unr-lcssa, label %.lr.ph588, !llvm.loop !51

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.r:                                             ; preds = %bb.k
  %i.abo = load double, ptr %.0491.lcssa, align 8, !tbaa !9
  %i.abp = fmul double %3, %i.abo                 ; 46 uses
  %i.abq = icmp eq i64 %5, 1
  %i.abr = icmp eq i64 %9, 1                      ; 2 uses
  %or.cond5 = and i1 %i.abq, %i.abr
  br i1 %or.cond5, label %.preheader538, label %bb.s

.preheader538:                                    ; preds = %bb.r
  %i.abs = and i64 %1, 9223372036854775804        ; 4 uses
  %.not629 = icmp eq i64 %i.abs, 0
  br i1 %.not629, label %.preheader536, label %.lr.ph581.preheader

.lr.ph581.preheader:                              ; preds = %.preheader538
  %i.abt = add nsw i64 %i.abs, -1                 ; 2 uses
  %i.abu = lshr i64 %i.abt, 2
  %i.abv = add nuw nsw i64 %i.abu, 1              ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.abs, 29
  br i1 %min.iters.check, label %.lr.ph581.preheader1012, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph581.preheader
  %i.abw = shl i64 %i.abt, 3
  %i.abx = and i64 %i.abw, -32
  %11 = add i64 %i.abx, 32                        ; 2 uses
  %scevgep744 = getelementptr i8, ptr %8, i64 %11
  %scevgep745 = getelementptr i8, ptr %.0490.lcssa, i64 %11
  %bound0 = icmp ult ptr %8, %scevgep745
  %bound1 = icmp ult ptr %.0490.lcssa, %scevgep744
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph581.preheader1012, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.abv, 9223372036854775804    ; 3 uses
  %i.aby = shl i64 %n.vec, 2                      ; 2 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.abp, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 4, i64 8, i64 12>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %.0490.lcssa, <4 x i64> %vec.ind
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !82
  %wide.gep746 = getelementptr inbounds nuw [8 x i8], ptr %8, <4 x i64> %vec.ind ; 2 uses
  %wide.masked.gather747 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep746, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !83, !noalias !82
  %i.abz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather, <4 x double> %broadcast.splat, <4 x double> %wide.masked.gather747)
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.abz, <4 x ptr> align 8 %wide.gep746, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !83, !noalias !82
  %i.aca = or disjoint <4 x i64> %vec.ind, splat (i64 1) ; 2 uses
  %wide.gep748 = getelementptr inbounds nuw [8 x i8], ptr %.0490.lcssa, <4 x i64> %i.aca
  %wide.masked.gather749 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep748, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !82
  %wide.gep750 = getelementptr inbounds nuw [8 x i8], ptr %8, <4 x i64> %i.aca ; 2 uses
  %wide.masked.gather751 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep750, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !83, !noalias !82
  %i.acb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather749, <4 x double> %broadcast.splat, <4 x double> %wide.masked.gather751)
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.acb, <4 x ptr> align 8 %wide.gep750, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !83, !noalias !82
  %i.acc = or disjoint <4 x i64> %vec.ind, splat (i64 2) ; 2 uses
  %wide.gep752 = getelementptr inbounds nuw [8 x i8], ptr %.0490.lcssa, <4 x i64> %i.acc
  %wide.masked.gather753 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep752, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !82
  %wide.gep754 = getelementptr inbounds nuw [8 x i8], ptr %8, <4 x i64> %i.acc ; 2 uses
  %wide.masked.gather755 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep754, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !83, !noalias !82
  %i.acd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather753, <4 x double> %broadcast.splat, <4 x double> %wide.masked.gather755)
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.acd, <4 x ptr> align 8 %wide.gep754, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !83, !noalias !82
  %i.ace = or disjoint <4 x i64> %vec.ind, splat (i64 3) ; 2 uses
  %wide.gep756 = getelementptr inbounds nuw [8 x i8], ptr %.0490.lcssa, <4 x i64> %i.ace
  %wide.masked.gather757 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep756, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !82
  %wide.gep758 = getelementptr inbounds nuw [8 x i8], ptr %8, <4 x i64> %i.ace ; 2 uses
  %wide.masked.gather759 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep758, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !83, !noalias !82
  %i.acf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.masked.gather757, <4 x double> %broadcast.splat, <4 x double> %wide.masked.gather759)
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.acf, <4 x ptr> align 8 %wide.gep758, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !83, !noalias !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 16)
  %i.acg = icmp eq i64 %index.next, %n.vec
  br i1 %i.acg, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abv, %n.vec
  br i1 %cmp.n, label %.preheader536, label %.lr.ph581.preheader1012

.lr.ph581.preheader1012:                          ; preds = %vector.memcheck, %.lr.ph581.preheader, %middle.block
  %.11580.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph581.preheader ], [ %i.aby, %middle.block ]
  br label %.lr.ph581

.preheader536:                                    ; preds = %.lr.ph581, %middle.block, %.preheader538
  %.11.lcssa = phi i64 [ 0, %.preheader538 ], [ %i.aby, %middle.block ], [ %i.aen, %.lr.ph581 ] ; 9 uses
  %i.ach = icmp slt i64 %.11.lcssa, %1
  br i1 %i.ach, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader536
  %i.aci = sub i64 %1, %.11.lcssa                 ; 7 uses
  %min.iters.check769 = icmp ult i64 %i.aci, 4
  br i1 %min.iters.check769, label %.lr.ph584.preheader, label %vector.memcheck760

vector.memcheck760:                               ; preds = %iter.check
  %i.acj = shl i64 %.11.lcssa, 3                  ; 2 uses
  %scevgep761 = getelementptr i8, ptr %8, i64 %i.acj
  %i.ack = shl i64 %1, 3                          ; 2 uses
  %scevgep762 = getelementptr i8, ptr %8, i64 %i.ack
  %scevgep763 = getelementptr i8, ptr %.0490.lcssa, i64 %i.acj
  %scevgep764 = getelementptr i8, ptr %.0490.lcssa, i64 %i.ack
  %bound0765 = icmp ult ptr %scevgep761, %scevgep764
  %bound1766 = icmp ult ptr %scevgep763, %scevgep762
  %found.conflict767 = and i1 %bound0765, %bound1766
  br i1 %found.conflict767, label %.lr.ph584.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck760
  %min.iters.check770 = icmp ult i64 %i.aci, 16
  br i1 %min.iters.check770, label %vec.epilog.ph, label %vector.ph771

vector.ph771:                                     ; preds = %vector.main.loop.iter.check
  %i.acl = and i64 %i.aci, 12
  %n.vec772 = and i64 %i.aci, -16                 ; 4 uses
  %i.acm = add i64 %.11.lcssa, %n.vec772
  %broadcast.splatinsert773 = insertelement <4 x double> poison, double %i.abp, i64 0
  %broadcast.splat774 = shufflevector <4 x double> %broadcast.splatinsert773, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body775

vector.body775:                                   ; preds = %vector.ph771, %vector.body775
  %index776 = phi i64 [ 0, %vector.ph771 ], [ %index.next784, %vector.body775 ] ; 2 uses
  %i.acn = add nuw i64 %.11.lcssa, %index776      ; 2 uses
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %.0490.lcssa, i64 %i.acn ; 4 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 32
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aco, i64 64
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aco, i64 96
  %wide.load = load <4 x double>, ptr %i.aco, align 8, !tbaa !9, !alias.scope !84
  %wide.load777 = load <4 x double>, ptr %i.acp, align 8, !tbaa !9, !alias.scope !84
  %wide.load778 = load <4 x double>, ptr %i.acq, align 8, !tbaa !9, !alias.scope !84
  %wide.load779 = load <4 x double>, ptr %i.acr, align 8, !tbaa !9, !alias.scope !84
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.acn ; 5 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 32 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acs, i64 64 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acs, i64 96 ; 2 uses
  %wide.load780 = load <4 x double>, ptr %i.acs, align 8, !tbaa !9, !alias.scope !85, !noalias !84
  %wide.load781 = load <4 x double>, ptr %i.act, align 8, !tbaa !9, !alias.scope !85, !noalias !84
  %wide.load782 = load <4 x double>, ptr %i.acu, align 8, !tbaa !9, !alias.scope !85, !noalias !84
  %wide.load783 = load <4 x double>, ptr %i.acv, align 8, !tbaa !9, !alias.scope !85, !noalias !84
  %i.acw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load, <4 x double> %broadcast.splat774, <4 x double> %wide.load780)
  %i.acx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load777, <4 x double> %broadcast.splat774, <4 x double> %wide.load781)
  %i.acy = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load778, <4 x double> %broadcast.splat774, <4 x double> %wide.load782)
  %i.acz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load779, <4 x double> %broadcast.splat774, <4 x double> %wide.load783)
  store <4 x double> %i.acw, ptr %i.acs, align 8, !tbaa !9, !alias.scope !85, !noalias !84
  store <4 x double> %i.acx, ptr %i.act, align 8, !tbaa !9, !alias.scope !85, !noalias !84
  store <4 x double> %i.acy, ptr %i.acu, align 8, !tbaa !9, !alias.scope !85, !noalias !84
  store <4 x double> %i.acz, ptr %i.acv, align 8, !tbaa !9, !alias.scope !85, !noalias !84
  %index.next784 = add nuw i64 %index776, 16      ; 2 uses
  %i.ada = icmp eq i64 %index.next784, %n.vec772
  br i1 %i.ada, label %middle.block785, label %vector.body775, !llvm.loop !59

middle.block785:                                  ; preds = %vector.body775
  %cmp.n786 = icmp eq i64 %i.aci, %n.vec772
  br i1 %cmp.n786, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block785
  %min.epilog.iters.check = icmp eq i64 %i.acl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph584.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec772, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec788 = and i64 %i.aci, -4                  ; 3 uses
  %i.adb = add i64 %.11.lcssa, %n.vec788
  %broadcast.splatinsert789 = insertelement <4 x double> poison, double %i.abp, i64 0
  %broadcast.splat790 = shufflevector <4 x double> %broadcast.splatinsert789, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index791 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next794, %vec.epilog.vector.body ] ; 2 uses
  %i.adc = add nuw i64 %.11.lcssa, %index791      ; 2 uses
  %i.add = getelementptr inbounds nuw [8 x i8], ptr %.0490.lcssa, i64 %i.adc
  %wide.load792 = load <4 x double>, ptr %i.add, align 8, !tbaa !9, !alias.scope !84
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.adc ; 2 uses
  %wide.load793 = load <4 x double>, ptr %i.ade, align 8, !tbaa !9, !alias.scope !85, !noalias !84
  %i.adf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load792, <4 x double> %broadcast.splat790, <4 x double> %wide.load793)
  store <4 x double> %i.adf, ptr %i.ade, align 8, !tbaa !9, !alias.scope !85, !noalias !84
  %index.next794 = add nuw i64 %index791, 4       ; 2 uses
  %i.adg = icmp eq i64 %index.next794, %n.vec788
  br i1 %i.adg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !60

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n795 = icmp eq i64 %i.aci, %n.vec788
  br i1 %cmp.n795, label %.loopexit, label %.lr.ph584.preheader

.lr.ph584.preheader:                              ; preds = %iter.check, %vector.memcheck760, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.12583.ph = phi i64 [ %.11.lcssa, %iter.check ], [ %.11.lcssa, %vector.memcheck760 ], [ %i.acm, %vec.epilog.iter.check ], [ %i.adb, %vec.epilog.middle.block ] ; 4 uses
  %i.adh = sub i64 %1, %.12583.ph
  %xtraiter1042 = and i64 %i.adh, 7               ; 2 uses
  %lcmp.mod1043.not = icmp eq i64 %xtraiter1042, 0
  br i1 %lcmp.mod1043.not, label %.lr.ph584.prol.loopexit, label %.lr.ph584.prol

.lr.ph584.prol:                                   ; preds = %.lr.ph584.preheader, %.lr.ph584.prol
  %.12583.prol = phi i64 [ %i.adn, %.lr.ph584.prol ], [ %.12583.ph, %.lr.ph584.preheader ] ; 3 uses
  %prol.iter1044 = phi i64 [ %prol.iter1044.next, %.lr.ph584.prol ], [ 0, %.lr.ph584.preheader ]
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %.0490.lcssa, i64 %.12583.prol
  %i.adj = load double, ptr %i.adi, align 8, !tbaa !9
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.12583.prol ; 2 uses
  %i.adl = load double, ptr %i.adk, align 8, !tbaa !9
  %i.adm = call double @llvm.fmuladd.f64(double %i.adj, double %i.abp, double %i.adl)
  store double %i.adm, ptr %i.adk, align 8, !tbaa !9
  %i.adn = add nuw nsw i64 %.12583.prol, 1        ; 2 uses
  %prol.iter1044.next = add i64 %prol.iter1044, 1 ; 2 uses
  %prol.iter1044.cmp.not = icmp eq i64 %prol.iter1044.next, %xtraiter1042
  br i1 %prol.iter1044.cmp.not, label %.lr.ph584.prol.loopexit, label %.lr.ph584.prol, !llvm.loop !61

.lr.ph584.prol.loopexit:                          ; preds = %.lr.ph584.prol, %.lr.ph584.preheader
  %.12583.unr = phi i64 [ %.12583.ph, %.lr.ph584.preheader ], [ %i.adn, %.lr.ph584.prol ]
  %i.ado = sub i64 %.12583.ph, %1
  %i.adp = icmp ugt i64 %i.ado, -8
  br i1 %i.adp, label %.loopexit, label %.lr.ph584

.lr.ph581:                                        ; preds = %.lr.ph581.preheader1012, %.lr.ph581
  %.11580 = phi i64 [ %i.aen, %.lr.ph581 ], [ %.11580.ph, %.lr.ph581.preheader1012 ] ; 6 uses
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %.0490.lcssa, i64 %.11580
  %i.adr = load double, ptr %i.adq, align 8, !tbaa !9
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.11580 ; 2 uses
  %i.adt = load double, ptr %i.ads, align 8, !tbaa !9
  %i.adu = call double @llvm.fmuladd.f64(double %i.adr, double %i.abp, double %i.adt)
  store double %i.adu, ptr %i.ads, align 8, !tbaa !9
  %i.adv = or disjoint i64 %.11580, 1             ; 2 uses
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %.0490.lcssa, i64 %i.adv
  %i.adx = load double, ptr %i.adw, align 8, !tbaa !9
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.adv ; 2 uses
  %i.adz = load double, ptr %i.ady, align 8, !tbaa !9
  %i.aea = call double @llvm.fmuladd.f64(double %i.adx, double %i.abp, double %i.adz)
  store double %i.aea, ptr %i.ady, align 8, !tbaa !9
  %i.aeb = or disjoint i64 %.11580, 2             ; 2 uses
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %.0490.lcssa, i64 %i.aeb
  %i.aed = load double, ptr %i.aec, align 8, !tbaa !9
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.aeb ; 2 uses
  %i.aef = load double, ptr %i.aee, align 8, !tbaa !9
end_hunk_2
