Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v04?download=true
inline.NumInlined: 323
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@HUF_decompress4X4:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16388) %i.i, i8 0, i64 16388, i1 false)
  store i32 12, ptr %i.i, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.d, i8 0, i64 68, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 23 uses
  %i.l = call fastcc i64 @HUF_readStats(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.g, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.m = icmp ult i64 %i.l, -119
  br i1 %i.m, label %bb.b, label %HUF_readDTableX4.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.g, align 4, !tbaa !33   ; 9 uses
  %i.o = icmp ugt i32 %i.n, 12
  br i1 %i.o, label %HUF_readDTableX4.exit.thread, label %.preheader81.i

.preheader81.i:                                   ; preds = %bb.b
  %i.p = zext nneg i32 %i.n to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !33
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.preheader, label %.preheader80.i

.lr.ph.i.preheader:                               ; preds = %.preheader81.i
  %.not79.i112 = icmp eq i32 %i.n, 0
  br i1 %.not79.i112, label %HUF_readDTableX4.exit.thread, label %.lr.ph

.preheader80.loopexit.i:                          ; preds = %.lr.ph
  %i.t = trunc nuw nsw i64 %i.w to i32
  br label %.preheader80.i

.preheader80.i:                                   ; preds = %.preheader80.loopexit.i, %.preheader81.i
  %.069.lcssa.i = phi i32 [ %i.n, %.preheader81.i ], [ %i.t, %.preheader80.loopexit.i ] ; 11 uses
  %.not7584.i = icmp eq i32 %.069.lcssa.i, 0      ; 2 uses
  br i1 %.not7584.i, label %._crit_edge.i, label %.lr.ph87.preheader.i

.lr.ph87.preheader.i:                             ; preds = %.preheader80.i
  %i.u = zext i32 %.069.lcssa.i to i64            ; 2 uses
  %xtraiter = and i64 %i.u, 3                     ; 3 uses
  %i.v = icmp ult i32 %.069.lcssa.i, 4
  br i1 %i.v, label %.lr.ph87.i.epil.preheader, label %.lr.ph87.preheader.i.new

.lr.ph87.preheader.i.new:                         ; preds = %.lr.ph87.preheader.i
  %unroll_iter = and i64 %i.u, 4294967292
  br label %.lr.ph87.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %.not79.i = icmp eq i64 %i.w, 0
  br i1 %.not79.i, label %HUF_readDTableX4.exit.thread, label %.lr.ph, !llvm.loop !87

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i113 = phi i64 [ %i.w, %.lr.ph.i ], [ %i.p, %.lr.ph.i.preheader ]
  %i.w = add nsw i64 %indvars.iv.i113, -1         ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i, label %.preheader80.loopexit.i, !llvm.loop !87

.lr.ph87.i:                                       ; preds = %.lr.ph87.i, %.lr.ph87.preheader.i.new
  %indvars.iv109.i = phi i64 [ 1, %.lr.ph87.preheader.i.new ], [ %indvars.iv.next110.i.3, %.lr.ph87.i ] ; 6 uses
  %.07186.i = phi i32 [ 0, %.lr.ph87.preheader.i.new ], [ %i.ao, %.lr.ph87.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph87.preheader.i.new ], [ %niter.next.3, %.lr.ph87.i ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv109.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.ac = add i32 %i.ab, %.07186.i                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv109.i
  store i32 %.07186.i, ptr %i.ad, align 4, !tbaa !33
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next110.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !33
  %i.ag = add i32 %i.af, %i.ac                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next110.i
  store i32 %i.ac, ptr %i.ah, align 4, !tbaa !33
  %indvars.iv.next110.i.1 = add nuw nsw i64 %indvars.iv109.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next110.i.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.ak = add i32 %i.aj, %i.ag                    ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next110.i.1
  store i32 %i.ag, ptr %i.al, align 4, !tbaa !33
  %indvars.iv.next110.i.2 = add nuw nsw i64 %indvars.iv109.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next110.i.2
  %i.an = load i32, ptr %i.am, align 4, !tbaa !33
  %i.ao = add i32 %i.an, %i.ak                    ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next110.i.2
  store i32 %i.ak, ptr %i.ap, align 4, !tbaa !33
  %indvars.iv.next110.i.3 = add nuw nsw i64 %indvars.iv109.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph87.i, !llvm.loop !88

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph87.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph87.i.epil.preheader

.lr.ph87.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph87.preheader.i
  %indvars.iv109.i.epil.init = phi i64 [ 1, %.lr.ph87.preheader.i ], [ %indvars.iv.next110.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.07186.i.epil.init = phi i32 [ 0, %.lr.ph87.preheader.i ], [ %i.ao, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod169 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod169)
  br label %.lr.ph87.i.epil

.lr.ph87.i.epil:                                  ; preds = %.lr.ph87.i.epil, %.lr.ph87.i.epil.preheader
  %indvars.iv109.i.epil = phi i64 [ %indvars.iv109.i.epil.init, %.lr.ph87.i.epil.preheader ], [ %indvars.iv.next110.i.epil, %.lr.ph87.i.epil ] ; 3 uses
  %.07186.i.epil = phi i32 [ %.07186.i.epil.init, %.lr.ph87.i.epil.preheader ], [ %i.as, %.lr.ph87.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph87.i.epil.preheader ], [ %epil.iter.next, %.lr.ph87.i.epil ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv109.i.epil
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !33
  %i.as = add i32 %i.ar, %.07186.i.epil           ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv109.i.epil
  store i32 %.07186.i.epil, ptr %i.at, align 4, !tbaa !33
  %indvars.iv.next110.i.epil = add nuw nsw i64 %indvars.iv109.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph87.i.epil, !llvm.loop !89

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph87.i.epil, %.preheader80.i
  %.071.lcssa.i = phi i32 [ 0, %.preheader80.i ], [ %i.ao, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.as, %.lr.ph87.i.epil ] ; 5 uses
  store i32 %.071.lcssa.i, ptr %i.j, align 4, !tbaa !33
  %i.au = load i32, ptr %i.h, align 4, !tbaa !33  ; 4 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %._crit_edge92.i, label %.lr.ph91.preheader.i

.lr.ph91.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count115.i = zext i32 %i.au to i64   ; 2 uses
  %xtraiter170 = and i64 %wide.trip.count115.i, 1
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %.lr.ph91.i.epil.preheader, label %.lr.ph91.preheader.i.new

.lr.ph91.preheader.i.new:                         ; preds = %.lr.ph91.preheader.i
  %unroll_iter174 = and i64 %wide.trip.count115.i, 4294967294
  br label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %.lr.ph91.i, %.lr.ph91.preheader.i.new
  %indvars.iv112.i = phi i64 [ 0, %.lr.ph91.preheader.i.new ], [ %indvars.iv.next113.i.1, %.lr.ph91.i ] ; 4 uses
  %niter175 = phi i64 [ 0, %.lr.ph91.preheader.i.new ], [ %niter175.next.1, %.lr.ph91.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv112.i
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !10  ; 2 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !33 ; 2 uses
  %i.bb = add nuw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !33
  %i.bc = trunc i64 %indvars.iv112.i to i8
  %i.bd = zext i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bd ; 2 uses
  store i8 %i.bc, ptr %i.be, align 2, !tbaa !49
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.ax, ptr %i.bf, align 1, !tbaa !50
  %indvars.iv.next113.i = or disjoint i64 %indvars.iv112.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next113.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !10  ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !33 ; 2 uses
  %i.bl = add nuw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !33
  %i.bm = trunc i64 %indvars.iv.next113.i to i8
  %i.bn = zext i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bn ; 2 uses
  store i8 %i.bm, ptr %i.bo, align 2, !tbaa !49
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store i8 %i.bh, ptr %i.bp, align 1, !tbaa !50
  %indvars.iv.next113.i.1 = add nuw nsw i64 %indvars.iv112.i, 2 ; 2 uses
  %niter175.next.1 = add i64 %niter175, 2         ; 2 uses
  %niter175.ncmp.1 = icmp eq i64 %niter175.next.1, %unroll_iter174
  br i1 %niter175.ncmp.1, label %._crit_edge92.i.loopexit.unr-lcssa, label %.lr.ph91.i, !llvm.loop !90

._crit_edge92.i.loopexit.unr-lcssa:               ; preds = %.lr.ph91.i
  %lcmp.mod172.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod172.not, label %._crit_edge92.i, label %.lr.ph91.i.epil.preheader

.lr.ph91.i.epil.preheader:                        ; preds = %._crit_edge92.i.loopexit.unr-lcssa, %.lr.ph91.preheader.i
  %indvars.iv112.i.epil.init = phi i64 [ 0, %.lr.ph91.preheader.i ], [ %indvars.iv.next113.i.1, %._crit_edge92.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod173 = trunc i32 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv112.i.epil.init
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !10  ; 2 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !33 ; 2 uses
  %i.bv = add nuw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !33
  %i.bw = trunc i64 %indvars.iv112.i.epil.init to i8
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bx ; 2 uses
  store i8 %i.bw, ptr %i.by, align 2, !tbaa !49
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.br, ptr %i.bz, align 1, !tbaa !50
  br label %._crit_edge92.i

._crit_edge92.i:                                  ; preds = %.lr.ph91.i.epil.preheader, %._crit_edge92.i.loopexit.unr-lcssa, %._crit_edge.i
  store i32 0, ptr %i.j, align 4, !tbaa !33
  %i.ca = add nuw nsw i32 %i.n, 1                 ; 3 uses
  %i.cb = sub i32 %i.ca, %.069.lcssa.i            ; 4 uses
  br i1 %.not7584.i, label %._crit_edge106.split.i, label %.lr.ph97.preheader.i

.lr.ph97.preheader.i:                             ; preds = %._crit_edge92.i
  %i.cc = add nuw nsw i32 %.069.lcssa.i, 1        ; 2 uses
  %wide.trip.count120.i = zext nneg i32 %i.cc to i64 ; 2 uses
  %i.cd = zext i32 %.069.lcssa.i to i64           ; 2 uses
  %xtraiter176 = and i64 %i.cd, 1
  %i.ce = icmp eq i32 %i.cc, 2
  br i1 %i.ce, label %.lr.ph97.i.epil.preheader, label %.lr.ph97.preheader.i.new

.lr.ph97.preheader.i.new:                         ; preds = %.lr.ph97.preheader.i
  %unroll_iter180 = and i64 %i.cd, 4294967294
  %invariant.op = sub i32 11, %i.n
  %invariant.op196 = sub i32 11, %i.n
  br label %.lr.ph97.i

.preheader.i.unr-lcssa:                           ; preds = %.lr.ph97.i
  %lcmp.mod178.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod178.not, label %.preheader.i, label %.lr.ph97.i.epil.preheader

.lr.ph97.i.epil.preheader:                        ; preds = %.preheader.i.unr-lcssa, %.lr.ph97.preheader.i
  %indvars.iv117.i.epil.init = phi i64 [ 1, %.lr.ph97.preheader.i ], [ %indvars.iv.next118.i.1, %.preheader.i.unr-lcssa ]
  %.06894.i.epil.init = phi i32 [ 0, %.lr.ph97.preheader.i ], [ %i.cx, %.preheader.i.unr-lcssa ]
  %lcmp.mod179 = trunc i32 %.069.lcssa.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv117.i.epil.init
  store i32 %.06894.i.epil.init, ptr %i.cf, align 4, !tbaa !33
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.lr.ph97.i.epil.preheader
  %i.cg = sub nuw nsw i32 12, %i.cb
  %.not77103.i = icmp ugt i32 %i.cb, %i.cg
  br i1 %.not77103.i, label %._crit_edge106.split.i, label %.lr.ph101.i.preheader

.lr.ph101.i.preheader:                            ; preds = %.preheader.i
  %i.ch = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.ci = add nuw nsw i32 %.069.lcssa.i, 12
  %i.cj = sub nuw nsw i32 %i.ci, %i.n
  %i.ck = zext i32 %.069.lcssa.i to i64
  %i.cl = zext i32 %.069.lcssa.i to i64           ; 2 uses
  %min.iters.check = icmp ult i32 %.069.lcssa.i, 8
  %n.vec = and i64 %i.cl, 4294967288              ; 3 uses
  %i.cm = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.cl
  br label %.lr.ph101.i

.lr.ph97.i:                                       ; preds = %.lr.ph97.i, %.lr.ph97.preheader.i.new
  %indvars.iv117.i = phi i64 [ 1, %.lr.ph97.preheader.i.new ], [ %indvars.iv.next118.i.1, %.lr.ph97.i ] ; 5 uses
  %.06894.i = phi i32 [ 0, %.lr.ph97.preheader.i.new ], [ %i.cx, %.lr.ph97.i ] ; 2 uses
  %niter181 = phi i64 [ 0, %.lr.ph97.preheader.i.new ], [ %niter181.next.1, %.lr.ph97.i ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv117.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !33
  %i.cp = trunc nuw nsw i64 %indvars.iv117.i to i32
  %.reass.reass = add i32 %i.cp, %invariant.op
  %i.cq = shl i32 %i.co, %.reass.reass
  %i.cr = add i32 %i.cq, %.06894.i                ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv117.i
  store i32 %.06894.i, ptr %i.cs, align 4, !tbaa !33
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 1 ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next118.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !33
  %i.cv = trunc nuw nsw i64 %indvars.iv.next118.i to i32
  %.reass.1.reass = add i32 %i.cv, %invariant.op196
  %i.cw = shl i32 %i.cu, %.reass.1.reass
  %i.cx = add i32 %i.cw, %i.cr                    ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next118.i
  store i32 %i.cr, ptr %i.cy, align 4, !tbaa !33
  %indvars.iv.next118.i.1 = add nuw nsw i64 %indvars.iv117.i, 2 ; 2 uses
  %niter181.next.1 = add nuw i64 %niter181, 2     ; 2 uses
  %niter181.ncmp.1 = icmp eq i64 %niter181.next.1, %unroll_iter180
  br i1 %niter181.ncmp.1, label %.preheader.i.unr-lcssa, label %.lr.ph97.i, !llvm.loop !91

.lr.ph101.i:                                      ; preds = %.lr.ph101.i.preheader, %._crit_edge102.i
  %indvar = phi i64 [ 0, %.lr.ph101.i.preheader ], [ %indvar.next, %._crit_edge102.i ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ch, %.lr.ph101.i.preheader ], [ %indvars.iv.next, %._crit_edge102.i ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %indvars.iv ; 6 uses
  %i.da = trunc nuw i64 %indvars.iv to i32        ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph101.i
  %9 = add i64 %indvar, %i.ch
  %i.db = mul i64 %9, 68
  %i.dc = add i64 %i.db, -1
  %diff.check = icmp ult i64 %i.dc, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.da, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = or disjoint i64 %index, 1               ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load = load <4 x i32>, ptr %i.de, align 4, !tbaa !33
  %wide.load114 = load <4 x i32>, ptr %i.df, align 4, !tbaa !33
  %i.dg = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.dh = lshr <4 x i32> %wide.load114, %broadcast.splat
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dd ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <4 x i32> %i.dg, ptr %i.di, align 4, !tbaa !33
  store <4 x i32> %i.dh, ptr %i.dj, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge102.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph101.i, %middle.block
  %indvars.iv122.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph101.i ], [ %i.cm, %middle.block ] ; 4 uses
  %i.dl = sub nsw i64 %wide.trip.count120.i, %indvars.iv122.i.ph
  %i.dm = sub nsw i64 %i.ck, %indvars.iv122.i.ph
  %xtraiter182 = and i64 %i.dl, 3                 ; 2 uses
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv122.i.prol = phi i64 [ %indvars.iv.next123.i.prol, %scalar.ph.prol ], [ %indvars.iv122.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv122.i.prol
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !33
  %i.dp = lshr i32 %i.do, %i.da
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv122.i.prol
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !33
  %indvars.iv.next123.i.prol = add nuw nsw i64 %indvars.iv122.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter182
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !93

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv122.i.unr = phi i64 [ %indvars.iv122.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next123.i.prol, %scalar.ph.prol ]
  %i.dr = icmp ult i64 %i.dm, 3
  br i1 %i.dr, label %._crit_edge102.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i.3, %scalar.ph ], [ %indvars.iv122.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv122.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !33
  %i.du = lshr i32 %i.dt, %i.da
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv122.i
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !33
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next123.i
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !33
  %i.dy = lshr i32 %i.dx, %i.da
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next123.i
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !33
  %indvars.iv.next123.i.1 = add nuw nsw i64 %indvars.iv122.i, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next123.i.1
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !33
  %i.ec = lshr i32 %i.eb, %i.da
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next123.i.1
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !33
  %indvars.iv.next123.i.2 = add nuw nsw i64 %indvars.iv122.i, 3 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next123.i.2
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !33
  %i.eg = lshr i32 %i.ef, %i.da
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next123.i.2
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !33
  %indvars.iv.next123.i.3 = add nuw nsw i64 %indvars.iv122.i, 4 ; 2 uses
  %exitcond126.not.i.3 = icmp eq i64 %indvars.iv.next123.i.3, %wide.trip.count120.i
  br i1 %exitcond126.not.i.3, label %._crit_edge102.i, label %scalar.ph, !llvm.loop !94

._crit_edge102.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.cj, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge106.split.i, label %.lr.ph101.i, !llvm.loop !95

._crit_edge106.split.i:                           ; preds = %._crit_edge102.i, %.preheader.i, %._crit_edge92.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ei = add nsw i32 %i.n, -11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(68) %i.f, i64 68, i1 false)
  %.not56.i.i = icmp eq i32 %.071.lcssa.i, 0
  br i1 %.not56.i.i, label %HUF_readDTableX4.exit, label %.lr.ph55.preheader.i.i

.lr.ph55.preheader.i.i:                           ; preds = %._crit_edge106.split.i
  %wide.trip.count61.i.i = zext i32 %.071.lcssa.i to i64
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph55.preheader.i.i
  %indvars.iv58.i.i = phi i64 [ 0, %.lr.ph55.preheader.i.i ], [ %indvars.iv.next59.i.i, %.loopexit.i.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %indvars.iv58.i.i ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !49
  %i.el = zext i8 %i.ek to i32                    ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !50  ; 2 uses
  %i.eo = zext i8 %i.en to i32
  %i.ep = sub nsw i32 %i.ca, %i.eo                ; 6 uses
  %i.eq = zext i8 %i.en to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !33 ; 5 uses
  %i.et = sub nsw i32 12, %i.ep                   ; 3 uses
  %i.eu = shl nuw i32 1, %i.et                    ; 2 uses
  %.not.i.i = icmp ult i32 %i.et, %i.cb
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph55.i.i
  %i.ev = add nsw i32 %i.ei, %i.ep                ; 2 uses
  %spec.store.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.ev, i32 1)
  %i.ew = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !33 ; 3 uses
  %i.ez = zext i32 %i.es to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ez ; 4 uses
  %i.fb = zext i32 %i.ep to i64
  %i.fc = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %i.fb
  %i.fd = zext i32 %i.ey to i64
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.fd
  %i.ff = sub i32 %.071.lcssa.i, %i.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(68) %i.fc, i64 68, i1 false)
  %i.fg = icmp sgt i32 %i.ev, 1
  br i1 %i.fg, label %bb.d, label %.loopexit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ew
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !33 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %.sroa.6.0.insert.ext42.i.i.i = shl nuw nsw i32 %i.ep, 16
  %.sroa.6.0.insert.shift43.i.i.i = and i32 %.sroa.6.0.insert.ext42.i.i.i, 16711680
  %.sroa.6.0.insert.insert45.i.i.i = or disjoint i32 %.sroa.6.0.insert.shift43.i.i.i, %i.el
  %.sroa.0.0.insert.insert40.i.i.i = or disjoint i32 %.sroa.6.0.insert.insert45.i.i.i, 16777216 ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.fi to i64  ; 3 uses
  %min.iters.check140 = icmp ult i32 %i.fi, 8
  br i1 %min.iters.check140, label %scalar.ph139.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph.i.i.i
  %n.vec142 = and i64 %wide.trip.count.i.i.i, 4294967288 ; 3 uses
  %broadcast.splatinsert143 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert40.i.i.i, i64 0
  %broadcast.splat144 = shufflevector <4 x i32> %broadcast.splatinsert143, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph141
  %index146 = phi i64 [ 0, %vector.ph141 ], [ %index.next147, %vector.body145 ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %index146 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <4 x i32> %broadcast.splat144, ptr %i.fj, align 4
  store <4 x i32> %broadcast.splat144, ptr %i.fk, align 4
  %index.next147 = add nuw i64 %index146, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next147, %n.vec142
  br i1 %i.fl, label %middle.block148, label %vector.body145, !llvm.loop !96

middle.block148:                                  ; preds = %vector.body145
  %cmp.n149 = icmp eq i64 %n.vec142, %wide.trip.count.i.i.i
  br i1 %cmp.n149, label %.loopexit.i.i.i, label %scalar.ph139.preheader

scalar.ph139.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block148
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec142, %middle.block148 ]
  br label %scalar.ph139

scalar.ph139:                                     ; preds = %scalar.ph139.preheader, %scalar.ph139
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph139 ], [ %indvars.iv.i.i.i.ph, %scalar.ph139.preheader ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv.i.i.i
  store i32 %.sroa.0.0.insert.insert40.i.i.i, ptr %i.fm, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %scalar.ph139, !llvm.loop !97

.loopexit.i.i.i:                                  ; preds = %scalar.ph139, %middle.block148, %bb.d, %bb.c
  %.not54.i.i.i = icmp eq i32 %.071.lcssa.i, %i.ey
  br i1 %.not54.i.i.i, label %HUF_fillDTableX4Level2.exit.i.i, label %.lr.ph53.preheader.i.i.i

.lr.ph53.preheader.i.i.i:                         ; preds = %.loopexit.i.i.i
  %wide.trip.count59.i.i.i = zext i32 %i.ff to i64
  %invariant.op.i.i = or disjoint i32 %i.el, 33554432
  br label %.lr.ph53.i.i.i

.lr.ph53.i.i.i:                                   ; preds = %.loopexit, %.lr.ph53.preheader.i.i.i
  %indvars.iv56.i.i.i = phi i64 [ 0, %.lr.ph53.preheader.i.i.i ], [ %indvars.iv.next57.i.i.i, %.loopexit ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %indvars.iv56.i.i.i ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 2, !tbaa !49
  %i.fp = zext i8 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !50  ; 2 uses
  %i.fs = zext i8 %i.fr to i32
  %i.ft = sub nsw i32 %i.ca, %i.fs                ; 2 uses
  %i.fu = sub nsw i32 %i.et, %i.ft
  %i.fv = shl nuw i32 1, %i.fu
  %i.fw = zext i8 %i.fr to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !33 ; 9 uses
  %i.fz = add i32 %i.fv, %i.fy                    ; 4 uses
  %i.ga = shl nuw nsw i32 %i.fp, 8
  %i.gb = add nsw i32 %i.ft, %i.ep
  %.sroa.6.0.insert.ext.i.i.i = shl nsw i32 %i.gb, 16
  %.sroa.6.0.insert.shift.i.i.i = and i32 %.sroa.6.0.insert.ext.i.i.i, 16711680
  %i.gc = or disjoint i32 %.sroa.6.0.insert.shift.i.i.i, %i.ga
  %.sroa.0.0.insert.insert.i.reass.i.i = or disjoint i32 %i.gc, %invariant.op.i.i ; 2 uses
  %i.gd = add i32 %i.fy, 1
  %i.ge = tail call i32 @llvm.umax.i32(i32 %i.fz, i32 %i.gd)
  %i.gf = sub i32 %i.ge, %i.fy                    ; 3 uses
  %min.iters.check128 = icmp ult i32 %i.gf, 16
  br i1 %min.iters.check128, label %scalar.ph127.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph53.i.i.i
  %i.gg = add i32 %i.fy, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.fz, i32 %i.gg)
  %i.gh = add i32 %umax, -1
  %i.gi = icmp ult i32 %i.gh, %i.fy
  br i1 %i.gi, label %scalar.ph127.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %vector.scevcheck
  %n.vec130 = and i32 %i.gf, -8                   ; 3 uses
  %i.gj = add i32 %i.fy, %n.vec130
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert.i.reass.i.i, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph129
  %index134 = phi i32 [ 0, %vector.ph129 ], [ %index.next135, %vector.body133 ] ; 2 uses
  %i.gk = add i32 %i.fy, %index134
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <4 x i32> %broadcast.splat132, ptr %i.gm, align 4
  store <4 x i32> %broadcast.splat132, ptr %i.gn, align 4
  %index.next135 = add nuw i32 %index134, 8       ; 2 uses
  %i.go = icmp eq i32 %index.next135, %n.vec130
  br i1 %i.go, label %middle.block136, label %vector.body133, !llvm.loop !98

middle.block136:                                  ; preds = %vector.body133
  %cmp.n137 = icmp eq i32 %i.gf, %n.vec130
  br i1 %cmp.n137, label %.loopexit, label %scalar.ph127.preheader

scalar.ph127.preheader:                           ; preds = %vector.scevcheck, %.lr.ph53.i.i.i, %middle.block136
  %.0.i.i.i.ph = phi i32 [ %i.fy, %vector.scevcheck ], [ %i.fy, %.lr.ph53.i.i.i ], [ %i.gj, %middle.block136 ]
  br label %scalar.ph127

scalar.ph127:                                     ; preds = %scalar.ph127.preheader, %scalar.ph127
  %.0.i.i.i = phi i32 [ %i.gp, %scalar.ph127 ], [ %.0.i.i.i.ph, %scalar.ph127.preheader ] ; 2 uses
  %i.gp = add i32 %.0.i.i.i, 1                    ; 2 uses
  %i.gq = zext i32 %.0.i.i.i to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.gq
  store i32 %.sroa.0.0.insert.insert.i.reass.i.i, ptr %i.gr, align 4
  %i.gs = icmp ult i32 %i.gp, %i.fz
  br i1 %i.gs, label %scalar.ph127, label %.loopexit, !llvm.loop !99

.loopexit:                                        ; preds = %scalar.ph127, %middle.block136
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !33
  %indvars.iv.next57.i.i.i = add nuw nsw i64 %indvars.iv56.i.i.i, 1 ; 2 uses
  %exitcond60.not.i.i.i = icmp eq i64 %indvars.iv.next57.i.i.i, %wide.trip.count59.i.i.i
  br i1 %exitcond60.not.i.i.i, label %HUF_fillDTableX4Level2.exit.i.i, label %.lr.ph53.i.i.i, !llvm.loop !100

HUF_fillDTableX4Level2.exit.i.i:                  ; preds = %.loopexit, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.pre.i.i = add i32 %i.eu, %i.es
  br label %.loopexit.i.i

bb.e:                                             ; preds = %.lr.ph55.i.i
  %i.gt = add i32 %i.eu, %i.es                    ; 5 uses
  %i.gu = icmp ult i32 %i.es, %i.gt
  br i1 %i.gu, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %.sroa.4.0.insert.ext.i.i = shl nsw i32 %i.ep, 16
  %.sroa.4.0.insert.shift.i.i = and i32 %.sroa.4.0.insert.ext.i.i, 16711680
  %.sroa.4.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i, %i.el
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.insert.i.i, 16777216 ; 2 uses
  %i.gv = zext i32 %i.es to i64                   ; 4 uses
  %wide.trip.count.i.i = zext i32 %i.gt to i64    ; 2 uses
  %i.gw = sub nsw i64 %wide.trip.count.i.i, %i.gv ; 3 uses
  %min.iters.check116 = icmp ult i64 %i.gw, 8
  br i1 %min.iters.check116, label %scalar.ph115.preheader, label %vector.ph117
end_hunk_0
