Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v02?download=true
inline.NumInlined: 356
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 23
begin_hunk_0_@HUF_decompress4X4:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16388) %i.i, i8 0, i64 16388, i1 false)
  store i32 12, ptr %i.i, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.d, i8 0, i64 68, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 23 uses
  %i.l = call fastcc i64 @HUF_readStats(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.g, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.m = icmp ult i64 %i.l, -119
  br i1 %i.m, label %bb.b, label %HUF_readDTableX4.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.g, align 4, !tbaa !22   ; 9 uses
  %i.o = icmp ugt i32 %i.n, 12
  br i1 %i.o, label %HUF_readDTableX4.exit.thread, label %.preheader83.i

.preheader83.i:                                   ; preds = %bb.b
  %i.p = zext nneg i32 %i.n to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.preheader, label %.preheader82.i

.lr.ph.i.preheader:                               ; preds = %.preheader83.i
  %.not81.i112 = icmp eq i32 %i.n, 0
  br i1 %.not81.i112, label %HUF_readDTableX4.exit.thread, label %.lr.ph

.preheader82.loopexit.i:                          ; preds = %.lr.ph
  %i.t = trunc nuw nsw i64 %i.w to i32
  br label %.preheader82.i

.preheader82.i:                                   ; preds = %.preheader82.loopexit.i, %.preheader83.i
  %.071.lcssa.i = phi i32 [ %i.n, %.preheader83.i ], [ %i.t, %.preheader82.loopexit.i ] ; 11 uses
  %.not7786.i = icmp eq i32 %.071.lcssa.i, 0      ; 2 uses
  br i1 %.not7786.i, label %._crit_edge.i, label %.lr.ph89.preheader.i

.lr.ph89.preheader.i:                             ; preds = %.preheader82.i
  %i.u = zext i32 %.071.lcssa.i to i64            ; 2 uses
  %xtraiter = and i64 %i.u, 3                     ; 3 uses
  %i.v = icmp ult i32 %.071.lcssa.i, 4
  br i1 %i.v, label %.lr.ph89.i.epil.preheader, label %.lr.ph89.preheader.i.new

.lr.ph89.preheader.i.new:                         ; preds = %.lr.ph89.preheader.i
  %unroll_iter = and i64 %i.u, 4294967292
  br label %.lr.ph89.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %.not81.i = icmp eq i64 %i.w, 0
  br i1 %.not81.i, label %HUF_readDTableX4.exit.thread, label %.lr.ph, !llvm.loop !69

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i113 = phi i64 [ %i.w, %.lr.ph.i ], [ %i.p, %.lr.ph.i.preheader ]
  %i.w = add nsw i64 %indvars.iv.i113, -1         ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !22
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i, label %.preheader82.loopexit.i, !llvm.loop !69

.lr.ph89.i:                                       ; preds = %.lr.ph89.i, %.lr.ph89.preheader.i.new
  %indvars.iv111.i = phi i64 [ 1, %.lr.ph89.preheader.i.new ], [ %indvars.iv.next112.i.3, %.lr.ph89.i ] ; 6 uses
  %.07388.i = phi i32 [ 0, %.lr.ph89.preheader.i.new ], [ %i.ao, %.lr.ph89.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph89.preheader.i.new ], [ %niter.next.3, %.lr.ph89.i ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv111.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !22
  %i.ac = add i32 %i.ab, %.07388.i                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv111.i
  store i32 %.07388.i, ptr %i.ad, align 4, !tbaa !22
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next112.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22
  %i.ag = add i32 %i.af, %i.ac                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next112.i
  store i32 %i.ac, ptr %i.ah, align 4, !tbaa !22
  %indvars.iv.next112.i.1 = add nuw nsw i64 %indvars.iv111.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next112.i.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !22
  %i.ak = add i32 %i.aj, %i.ag                    ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next112.i.1
  store i32 %i.ag, ptr %i.al, align 4, !tbaa !22
  %indvars.iv.next112.i.2 = add nuw nsw i64 %indvars.iv111.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next112.i.2
  %i.an = load i32, ptr %i.am, align 4, !tbaa !22
  %i.ao = add i32 %i.an, %i.ak                    ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next112.i.2
  store i32 %i.ak, ptr %i.ap, align 4, !tbaa !22
  %indvars.iv.next112.i.3 = add nuw nsw i64 %indvars.iv111.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph89.i, !llvm.loop !70

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph89.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph89.i.epil.preheader

.lr.ph89.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph89.preheader.i
  %indvars.iv111.i.epil.init = phi i64 [ 1, %.lr.ph89.preheader.i ], [ %indvars.iv.next112.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.07388.i.epil.init = phi i32 [ 0, %.lr.ph89.preheader.i ], [ %i.ao, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod169 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod169)
  br label %.lr.ph89.i.epil

.lr.ph89.i.epil:                                  ; preds = %.lr.ph89.i.epil, %.lr.ph89.i.epil.preheader
  %indvars.iv111.i.epil = phi i64 [ %indvars.iv111.i.epil.init, %.lr.ph89.i.epil.preheader ], [ %indvars.iv.next112.i.epil, %.lr.ph89.i.epil ] ; 3 uses
  %.07388.i.epil = phi i32 [ %.07388.i.epil.init, %.lr.ph89.i.epil.preheader ], [ %i.as, %.lr.ph89.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph89.i.epil.preheader ], [ %epil.iter.next, %.lr.ph89.i.epil ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv111.i.epil
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !22
  %i.as = add i32 %i.ar, %.07388.i.epil           ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv111.i.epil
  store i32 %.07388.i.epil, ptr %i.at, align 4, !tbaa !22
  %indvars.iv.next112.i.epil = add nuw nsw i64 %indvars.iv111.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph89.i.epil, !llvm.loop !71

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph89.i.epil, %.preheader82.i
  %.073.lcssa.i = phi i32 [ 0, %.preheader82.i ], [ %i.ao, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.as, %.lr.ph89.i.epil ] ; 5 uses
  store i32 %.073.lcssa.i, ptr %i.j, align 4, !tbaa !22
  %i.au = load i32, ptr %i.h, align 4, !tbaa !22  ; 4 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %._crit_edge94.i, label %.lr.ph93.preheader.i

.lr.ph93.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count117.i = zext i32 %i.au to i64   ; 2 uses
  %xtraiter170 = and i64 %wide.trip.count117.i, 1
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %.lr.ph93.i.epil.preheader, label %.lr.ph93.preheader.i.new

.lr.ph93.preheader.i.new:                         ; preds = %.lr.ph93.preheader.i
  %unroll_iter174 = and i64 %wide.trip.count117.i, 4294967294
  br label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %.lr.ph93.i, %.lr.ph93.preheader.i.new
  %indvars.iv114.i = phi i64 [ 0, %.lr.ph93.preheader.i.new ], [ %indvars.iv.next115.i.1, %.lr.ph93.i ] ; 4 uses
  %niter175 = phi i64 [ 0, %.lr.ph93.preheader.i.new ], [ %niter175.next.1, %.lr.ph93.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv114.i
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !15  ; 2 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !22 ; 2 uses
  %i.bb = add nuw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !22
  %i.bc = trunc i64 %indvars.iv114.i to i8
  %i.bd = zext i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bd ; 2 uses
  store i8 %i.bc, ptr %i.be, align 2, !tbaa !39
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.ax, ptr %i.bf, align 1, !tbaa !40
  %indvars.iv.next115.i = or disjoint i64 %indvars.iv114.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next115.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !15  ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !22 ; 2 uses
  %i.bl = add nuw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !22
  %i.bm = trunc i64 %indvars.iv.next115.i to i8
  %i.bn = zext i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bn ; 2 uses
  store i8 %i.bm, ptr %i.bo, align 2, !tbaa !39
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store i8 %i.bh, ptr %i.bp, align 1, !tbaa !40
  %indvars.iv.next115.i.1 = add nuw nsw i64 %indvars.iv114.i, 2 ; 2 uses
  %niter175.next.1 = add i64 %niter175, 2         ; 2 uses
  %niter175.ncmp.1 = icmp eq i64 %niter175.next.1, %unroll_iter174
  br i1 %niter175.ncmp.1, label %._crit_edge94.i.loopexit.unr-lcssa, label %.lr.ph93.i, !llvm.loop !72

._crit_edge94.i.loopexit.unr-lcssa:               ; preds = %.lr.ph93.i
  %lcmp.mod172.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod172.not, label %._crit_edge94.i, label %.lr.ph93.i.epil.preheader

.lr.ph93.i.epil.preheader:                        ; preds = %._crit_edge94.i.loopexit.unr-lcssa, %.lr.ph93.preheader.i
  %indvars.iv114.i.epil.init = phi i64 [ 0, %.lr.ph93.preheader.i ], [ %indvars.iv.next115.i.1, %._crit_edge94.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod173 = trunc i32 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv114.i.epil.init
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !15  ; 2 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !22 ; 2 uses
  %i.bv = add nuw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !22
  %i.bw = trunc i64 %indvars.iv114.i.epil.init to i8
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bx ; 2 uses
  store i8 %i.bw, ptr %i.by, align 2, !tbaa !39
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.br, ptr %i.bz, align 1, !tbaa !40
  br label %._crit_edge94.i

._crit_edge94.i:                                  ; preds = %.lr.ph93.i.epil.preheader, %._crit_edge94.i.loopexit.unr-lcssa, %._crit_edge.i
  store i32 0, ptr %i.j, align 4, !tbaa !22
  %i.ca = add nuw nsw i32 %i.n, 1                 ; 3 uses
  %i.cb = sub nsw i32 %i.ca, %.071.lcssa.i        ; 4 uses
  br i1 %.not7786.i, label %._crit_edge108.split.i, label %.lr.ph99.preheader.i

.lr.ph99.preheader.i:                             ; preds = %._crit_edge94.i
  %i.cc = add nuw nsw i32 %.071.lcssa.i, 1        ; 2 uses
  %wide.trip.count122.i = zext nneg i32 %i.cc to i64 ; 2 uses
  %i.cd = zext i32 %.071.lcssa.i to i64           ; 2 uses
  %xtraiter176 = and i64 %i.cd, 1
  %i.ce = icmp eq i32 %i.cc, 2
  br i1 %i.ce, label %.lr.ph99.i.epil.preheader, label %.lr.ph99.preheader.i.new

.lr.ph99.preheader.i.new:                         ; preds = %.lr.ph99.preheader.i
  %unroll_iter180 = and i64 %i.cd, 4294967294
  %invariant.op = sub i32 11, %i.n
  %invariant.op196 = sub i32 11, %i.n
  br label %.lr.ph99.i

.preheader.i.unr-lcssa:                           ; preds = %.lr.ph99.i
  %lcmp.mod178.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod178.not, label %.preheader.i, label %.lr.ph99.i.epil.preheader

.lr.ph99.i.epil.preheader:                        ; preds = %.preheader.i.unr-lcssa, %.lr.ph99.preheader.i
  %indvars.iv119.i.epil.init = phi i64 [ 1, %.lr.ph99.preheader.i ], [ %indvars.iv.next120.i.1, %.preheader.i.unr-lcssa ]
  %.07096.i.epil.init = phi i32 [ 0, %.lr.ph99.preheader.i ], [ %i.cx, %.preheader.i.unr-lcssa ]
  %lcmp.mod179 = trunc i32 %.071.lcssa.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv119.i.epil.init
  store i32 %.07096.i.epil.init, ptr %i.cf, align 4, !tbaa !22
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.lr.ph99.i.epil.preheader
  %i.cg = sub nuw nsw i32 12, %i.cb
  %.not79105.i = icmp ugt i32 %i.cb, %i.cg
  br i1 %.not79105.i, label %._crit_edge108.split.i, label %.lr.ph103.i.preheader

.lr.ph103.i.preheader:                            ; preds = %.preheader.i
  %i.ch = zext nneg i32 %i.cb to i64
  %i.ci = add nuw nsw i32 %.071.lcssa.i, 12
  %i.cj = sub nuw nsw i32 %i.ci, %i.n
  %i.ck = zext i32 %.071.lcssa.i to i64
  %i.cl = zext i32 %.071.lcssa.i to i64           ; 2 uses
  %min.iters.check = icmp ult i32 %.071.lcssa.i, 8
  %n.vec = and i64 %i.cl, 4294967288              ; 3 uses
  %i.cm = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.cl
  br label %.lr.ph103.i

.lr.ph99.i:                                       ; preds = %.lr.ph99.i, %.lr.ph99.preheader.i.new
  %indvars.iv119.i = phi i64 [ 1, %.lr.ph99.preheader.i.new ], [ %indvars.iv.next120.i.1, %.lr.ph99.i ] ; 5 uses
  %.07096.i = phi i32 [ 0, %.lr.ph99.preheader.i.new ], [ %i.cx, %.lr.ph99.i ] ; 2 uses
  %niter181 = phi i64 [ 0, %.lr.ph99.preheader.i.new ], [ %niter181.next.1, %.lr.ph99.i ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv119.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !22
  %i.cp = trunc nuw nsw i64 %indvars.iv119.i to i32
  %.reass.reass = add i32 %i.cp, %invariant.op
  %i.cq = shl i32 %i.co, %.reass.reass
  %i.cr = add i32 %i.cq, %.07096.i                ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv119.i
  store i32 %.07096.i, ptr %i.cs, align 4, !tbaa !22
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next120.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !22
  %i.cv = trunc nuw nsw i64 %indvars.iv.next120.i to i32
  %.reass.1.reass = add i32 %i.cv, %invariant.op196
  %i.cw = shl i32 %i.cu, %.reass.1.reass
  %i.cx = add i32 %i.cw, %i.cr                    ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next120.i
  store i32 %i.cr, ptr %i.cy, align 4, !tbaa !22
  %indvars.iv.next120.i.1 = add nuw nsw i64 %indvars.iv119.i, 2 ; 2 uses
  %niter181.next.1 = add nuw i64 %niter181, 2     ; 2 uses
  %niter181.ncmp.1 = icmp eq i64 %niter181.next.1, %unroll_iter180
  br i1 %niter181.ncmp.1, label %.preheader.i.unr-lcssa, label %.lr.ph99.i, !llvm.loop !73

.lr.ph103.i:                                      ; preds = %.lr.ph103.i.preheader, %._crit_edge104.i
  %indvars.iv = phi i64 [ %i.ch, %.lr.ph103.i.preheader ], [ %indvars.iv.next, %._crit_edge104.i ] ; 4 uses
  %i.cz = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %indvars.iv ; 6 uses
  %i.da = trunc nuw i64 %indvars.iv to i32        ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph103.i
  %i.db = mul nuw nsw i64 %indvars.iv, 68
  %i.dc = add nsw i64 %i.db, -1
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
  %wide.load = load <4 x i32>, ptr %i.de, align 4, !tbaa !22
  %wide.load114 = load <4 x i32>, ptr %i.df, align 4, !tbaa !22
  %i.dg = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.dh = lshr <4 x i32> %wide.load114, %broadcast.splat
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dd ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <4 x i32> %i.dg, ptr %i.di, align 4, !tbaa !22
  store <4 x i32> %i.dh, ptr %i.dj, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge104.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph103.i, %middle.block
  %indvars.iv124.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph103.i ], [ %i.cm, %middle.block ] ; 4 uses
  %i.dl = sub nsw i64 %wide.trip.count122.i, %indvars.iv124.i.ph
  %i.dm = sub nsw i64 %i.ck, %indvars.iv124.i.ph
  %xtraiter182 = and i64 %i.dl, 3                 ; 2 uses
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv124.i.prol = phi i64 [ %indvars.iv.next125.i.prol, %scalar.ph.prol ], [ %indvars.iv124.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv124.i.prol
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !22
  %i.dp = lshr i32 %i.do, %i.da
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv124.i.prol
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !22
  %indvars.iv.next125.i.prol = add nuw nsw i64 %indvars.iv124.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter182
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !75

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv124.i.unr = phi i64 [ %indvars.iv124.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next125.i.prol, %scalar.ph.prol ]
  %i.dr = icmp ult i64 %i.dm, 3
  br i1 %i.dr, label %._crit_edge104.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i.3, %scalar.ph ], [ %indvars.iv124.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv124.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !22
  %i.du = lshr i32 %i.dt, %i.da
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv124.i
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !22
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next125.i
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !22
  %i.dy = lshr i32 %i.dx, %i.da
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next125.i
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !22
  %indvars.iv.next125.i.1 = add nuw nsw i64 %indvars.iv124.i, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next125.i.1
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !22
  %i.ec = lshr i32 %i.eb, %i.da
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next125.i.1
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !22
  %indvars.iv.next125.i.2 = add nuw nsw i64 %indvars.iv124.i, 3 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next125.i.2
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !22
  %i.eg = lshr i32 %i.ef, %i.da
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next125.i.2
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !22
  %indvars.iv.next125.i.3 = add nuw nsw i64 %indvars.iv124.i, 4 ; 2 uses
  %exitcond128.not.i.3 = icmp eq i64 %indvars.iv.next125.i.3, %wide.trip.count122.i
  br i1 %exitcond128.not.i.3, label %._crit_edge104.i, label %scalar.ph, !llvm.loop !76

._crit_edge104.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.cj, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge108.split.i, label %.lr.ph103.i, !llvm.loop !77

._crit_edge108.split.i:                           ; preds = %._crit_edge104.i, %.preheader.i, %._crit_edge94.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ei = add nsw i32 %i.n, -11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(68) %i.f, i64 68, i1 false)
  %.not56.i.i = icmp eq i32 %.073.lcssa.i, 0
  br i1 %.not56.i.i, label %HUF_readDTableX4.exit, label %.lr.ph55.preheader.i.i

.lr.ph55.preheader.i.i:                           ; preds = %._crit_edge108.split.i
  %wide.trip.count61.i.i = zext i32 %.073.lcssa.i to i64
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph55.preheader.i.i
  %indvars.iv58.i.i = phi i64 [ 0, %.lr.ph55.preheader.i.i ], [ %indvars.iv.next59.i.i, %.loopexit.i.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %indvars.iv58.i.i ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !39
  %i.el = zext i8 %i.ek to i32                    ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !40  ; 2 uses
  %i.eo = zext i8 %i.en to i32
  %i.ep = sub nsw i32 %i.ca, %i.eo                ; 6 uses
  %i.eq = zext i8 %i.en to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !22 ; 5 uses
  %i.et = sub nsw i32 12, %i.ep                   ; 3 uses
  %i.eu = shl nuw i32 1, %i.et                    ; 2 uses
  %.not.i.i = icmp ult i32 %i.et, %i.cb
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph55.i.i
  %i.ev = add nsw i32 %i.ei, %i.ep                ; 2 uses
  %spec.store.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.ev, i32 1)
  %i.ew = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !22 ; 3 uses
  %i.ez = zext i32 %i.es to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ez ; 4 uses
  %i.fb = zext i32 %i.ep to i64
  %i.fc = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %i.fb
  %i.fd = zext i32 %i.ey to i64
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.fd
  %i.ff = sub i32 %.073.lcssa.i, %i.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(68) %i.fc, i64 68, i1 false)
  %i.fg = icmp sgt i32 %i.ev, 1
  br i1 %i.fg, label %bb.d, label %.loopexit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ew
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !22 ; 3 uses
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
  br i1 %i.fl, label %middle.block148, label %vector.body145, !llvm.loop !78

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
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %scalar.ph139, !llvm.loop !79

.loopexit.i.i.i:                                  ; preds = %scalar.ph139, %middle.block148, %bb.d, %bb.c
  %.not54.i.i.i = icmp eq i32 %.073.lcssa.i, %i.ey
  br i1 %.not54.i.i.i, label %HUF_fillDTableX4Level2.exit.i.i, label %.lr.ph53.preheader.i.i.i

.lr.ph53.preheader.i.i.i:                         ; preds = %.loopexit.i.i.i
  %wide.trip.count59.i.i.i = zext i32 %i.ff to i64
  %invariant.op.i.i = or disjoint i32 %i.el, 33554432
  br label %.lr.ph53.i.i.i

.lr.ph53.i.i.i:                                   ; preds = %.loopexit, %.lr.ph53.preheader.i.i.i
  %indvars.iv56.i.i.i = phi i64 [ 0, %.lr.ph53.preheader.i.i.i ], [ %indvars.iv.next57.i.i.i, %.loopexit ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %indvars.iv56.i.i.i ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 2, !tbaa !39
  %i.fp = zext i8 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !40  ; 2 uses
  %i.fs = zext i8 %i.fr to i32
  %i.ft = sub nsw i32 %i.ca, %i.fs                ; 2 uses
  %i.fu = sub nsw i32 %i.et, %i.ft
  %i.fv = shl nuw i32 1, %i.fu
  %i.fw = zext i8 %i.fr to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !22 ; 9 uses
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
  br i1 %i.go, label %middle.block136, label %vector.body133, !llvm.loop !80

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
  br i1 %i.gs, label %scalar.ph127, label %.loopexit, !llvm.loop !81

.loopexit:                                        ; preds = %scalar.ph127, %middle.block136
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !22
  %indvars.iv.next57.i.i.i = add nuw nsw i64 %indvars.iv56.i.i.i, 1 ; 2 uses
  %exitcond60.not.i.i.i = icmp eq i64 %indvars.iv.next57.i.i.i, %wide.trip.count59.i.i.i
  br i1 %exitcond60.not.i.i.i, label %HUF_fillDTableX4Level2.exit.i.i, label %.lr.ph53.i.i.i, !llvm.loop !82

HUF_fillDTableX4Level2.exit.i.i:                  ; preds = %.loopexit, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
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
begin_hunk_1_@HUF_decompress4X6:bb.a
  %i.g = alloca [6145 x i32], align 16            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24580) %i.g, i8 0, i64 24580, i1 false)
  store i32 12, ptr %i.g, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.i = call fastcc i64 @HUF_readStats(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.e, ptr noundef %i.d, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.j = icmp ult i64 %i.i, -119
  br i1 %i.j, label %bb.b, label %HUF_readDTableX6.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.d, align 4, !tbaa !22   ; 8 uses
  %i.l = icmp ugt i32 %i.k, 12
  br i1 %i.l, label %HUF_readDTableX6.exit.thread, label %.preheader88.i

.preheader88.i:                                   ; preds = %bb.b
  %i.m = zext nneg i32 %i.k to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.preheader, label %.preheader87.i

.lr.ph.i.preheader:                               ; preds = %.preheader88.i
  %.not86.i105 = icmp eq i32 %i.k, 0
  br i1 %.not86.i105, label %HUF_readDTableX6.exit.thread, label %.lr.ph

.preheader87.loopexit.i:                          ; preds = %.lr.ph
  %i.q = trunc nuw nsw i64 %i.t to i32
  br label %.preheader87.i

.preheader87.i:                                   ; preds = %.preheader87.loopexit.i, %.preheader88.i
  %.073.lcssa.i = phi i32 [ %i.k, %.preheader88.i ], [ %i.q, %.preheader87.loopexit.i ] ; 12 uses
  %.not8291.i = icmp eq i32 %.073.lcssa.i, 0      ; 2 uses
  br i1 %.not8291.i, label %._crit_edge.i, label %.lr.ph94.preheader.i

.lr.ph94.preheader.i:                             ; preds = %.preheader87.i
  %i.r = zext i32 %.073.lcssa.i to i64            ; 2 uses
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.s = icmp ult i32 %.073.lcssa.i, 4
  br i1 %i.s, label %.lr.ph94.i.epil.preheader, label %.lr.ph94.preheader.i.new

.lr.ph94.preheader.i.new:                         ; preds = %.lr.ph94.preheader.i
  %unroll_iter = and i64 %i.r, 4294967292
  br label %.lr.ph94.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %.not86.i = icmp eq i64 %i.t, 0
  br i1 %.not86.i, label %HUF_readDTableX6.exit.thread, label %.lr.ph, !llvm.loop !87

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i106 = phi i64 [ %i.t, %.lr.ph.i ], [ %i.m, %.lr.ph.i.preheader ]
  %i.t = add nsw i64 %indvars.iv.i106, -1         ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !22
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %.preheader87.loopexit.i, !llvm.loop !87

.lr.ph94.i:                                       ; preds = %.lr.ph94.i, %.lr.ph94.preheader.i.new
  %indvars.iv116.i = phi i64 [ 1, %.lr.ph94.preheader.i.new ], [ %indvars.iv.next117.i.3, %.lr.ph94.i ] ; 6 uses
  %.07892.i = phi i32 [ 0, %.lr.ph94.preheader.i.new ], [ %i.al, %.lr.ph94.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph94.preheader.i.new ], [ %niter.next.3, %.lr.ph94.i ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv116.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !22
  %i.z = add i32 %i.y, %.07892.i                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv116.i
  store i32 %.07892.i, ptr %i.aa, align 4, !tbaa !22
  %indvars.iv.next117.i = add nuw nsw i64 %indvars.iv116.i, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next117.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22
  %i.ad = add i32 %i.ac, %i.z                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next117.i
  store i32 %i.z, ptr %i.ae, align 4, !tbaa !22
  %indvars.iv.next117.i.1 = add nuw nsw i64 %indvars.iv116.i, 2 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next117.i.1
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !22
  %i.ah = add i32 %i.ag, %i.ad                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next117.i.1
  store i32 %i.ad, ptr %i.ai, align 4, !tbaa !22
  %indvars.iv.next117.i.2 = add nuw nsw i64 %indvars.iv116.i, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next117.i.2
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !22
  %i.al = add i32 %i.ak, %i.ah                    ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next117.i.2
  store i32 %i.ah, ptr %i.am, align 4, !tbaa !22
  %indvars.iv.next117.i.3 = add nuw nsw i64 %indvars.iv116.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph94.i, !llvm.loop !88

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph94.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph94.i.epil.preheader

.lr.ph94.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph94.preheader.i
  %indvars.iv116.i.epil.init = phi i64 [ 1, %.lr.ph94.preheader.i ], [ %indvars.iv.next117.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.07892.i.epil.init = phi i32 [ 0, %.lr.ph94.preheader.i ], [ %i.al, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod126 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph94.i.epil

.lr.ph94.i.epil:                                  ; preds = %.lr.ph94.i.epil, %.lr.ph94.i.epil.preheader
  %indvars.iv116.i.epil = phi i64 [ %indvars.iv116.i.epil.init, %.lr.ph94.i.epil.preheader ], [ %indvars.iv.next117.i.epil, %.lr.ph94.i.epil ] ; 3 uses
  %.07892.i.epil = phi i32 [ %.07892.i.epil.init, %.lr.ph94.i.epil.preheader ], [ %i.ap, %.lr.ph94.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph94.i.epil.preheader ], [ %epil.iter.next, %.lr.ph94.i.epil ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv116.i.epil
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22
  %i.ap = add i32 %i.ao, %.07892.i.epil           ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv116.i.epil
  store i32 %.07892.i.epil, ptr %i.aq, align 4, !tbaa !22
  %indvars.iv.next117.i.epil = add nuw nsw i64 %indvars.iv116.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph94.i.epil, !llvm.loop !89

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph94.i.epil, %.preheader87.i
  %.078.lcssa.i = phi i32 [ 0, %.preheader87.i ], [ %i.al, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ap, %.lr.ph94.i.epil ] ; 2 uses
  store i32 %.078.lcssa.i, ptr %i.h, align 4, !tbaa !22
  %i.ar = load i32, ptr %i.e, align 4, !tbaa !22  ; 4 uses
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %._crit_edge99.i, label %.lr.ph98.preheader.i

.lr.ph98.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count122.i = zext i32 %i.ar to i64   ; 2 uses
  %xtraiter127 = and i64 %wide.trip.count122.i, 1
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph98.i.epil.preheader, label %.lr.ph98.preheader.i.new

.lr.ph98.preheader.i.new:                         ; preds = %.lr.ph98.preheader.i
  %unroll_iter131 = and i64 %wide.trip.count122.i, 4294967294
  br label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %.lr.ph98.i, %.lr.ph98.preheader.i.new
  %indvars.iv119.i = phi i64 [ 0, %.lr.ph98.preheader.i.new ], [ %indvars.iv.next120.i.1, %.lr.ph98.i ] ; 4 uses
  %niter132 = phi i64 [ 0, %.lr.ph98.preheader.i.new ], [ %niter132.next.1, %.lr.ph98.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv119.i
  %i.au = load i8, ptr %i.at, align 2, !tbaa !15  ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !22 ; 2 uses
  %i.ay = add nuw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !22
  %i.az = trunc i64 %indvars.iv119.i to i8
  %i.ba = zext i32 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ba ; 2 uses
  store i8 %i.az, ptr %i.bb, align 2, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 %i.au, ptr %i.bc, align 1, !tbaa !40
  %indvars.iv.next120.i = or disjoint i64 %indvars.iv119.i, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next120.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15  ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !22 ; 2 uses
  %i.bi = add nuw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !22
  %i.bj = trunc i64 %indvars.iv.next120.i to i8
  %i.bk = zext i32 %i.bh to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bk ; 2 uses
  store i8 %i.bj, ptr %i.bl, align 2, !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.be, ptr %i.bm, align 1, !tbaa !40
  %indvars.iv.next120.i.1 = add nuw nsw i64 %indvars.iv119.i, 2 ; 2 uses
  %niter132.next.1 = add i64 %niter132, 2         ; 2 uses
  %niter132.ncmp.1 = icmp eq i64 %niter132.next.1, %unroll_iter131
  br i1 %niter132.ncmp.1, label %._crit_edge99.i.loopexit.unr-lcssa, label %.lr.ph98.i, !llvm.loop !90

._crit_edge99.i.loopexit.unr-lcssa:               ; preds = %.lr.ph98.i
  %lcmp.mod129.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod129.not, label %._crit_edge99.i, label %.lr.ph98.i.epil.preheader

.lr.ph98.i.epil.preheader:                        ; preds = %._crit_edge99.i.loopexit.unr-lcssa, %.lr.ph98.preheader.i
  %indvars.iv119.i.epil.init = phi i64 [ 0, %.lr.ph98.preheader.i ], [ %indvars.iv.next120.i.1, %._crit_edge99.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod130 = trunc i32 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod130)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv119.i.epil.init
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !15  ; 2 uses
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !22 ; 2 uses
  %i.bs = add nuw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !22
  %i.bt = trunc i64 %indvars.iv119.i.epil.init to i8
  %i.bu = zext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bu ; 2 uses
  store i8 %i.bt, ptr %i.bv, align 2, !tbaa !39
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.bo, ptr %i.bw, align 1, !tbaa !40
  br label %._crit_edge99.i

._crit_edge99.i:                                  ; preds = %.lr.ph98.i.epil.preheader, %._crit_edge99.i.loopexit.unr-lcssa, %._crit_edge.i
  store i32 0, ptr %i.h, align 4, !tbaa !22
  %i.bx = add nuw nsw i32 %i.k, 1                 ; 2 uses
  %i.by = sub nsw i32 %i.bx, %.073.lcssa.i        ; 3 uses
  br i1 %.not8291.i, label %HUF_readDTableX6.exit, label %.lr.ph104.preheader.i

.lr.ph104.preheader.i:                            ; preds = %._crit_edge99.i
  %i.bz = add nuw nsw i32 %.073.lcssa.i, 1        ; 2 uses
  %wide.trip.count127.i = zext nneg i32 %i.bz to i64 ; 2 uses
  %i.ca = zext i32 %.073.lcssa.i to i64           ; 2 uses
  %xtraiter133 = and i64 %i.ca, 1
  %i.cb = icmp eq i32 %i.bz, 2
  br i1 %i.cb, label %.lr.ph104.i.epil.preheader, label %.lr.ph104.preheader.i.new

.lr.ph104.preheader.i.new:                        ; preds = %.lr.ph104.preheader.i
  %unroll_iter137 = and i64 %i.ca, 4294967294
  %invariant.op = sub i32 11, %i.k
  %invariant.op153 = sub i32 11, %i.k
  br label %.lr.ph104.i

.preheader.i.unr-lcssa:                           ; preds = %.lr.ph104.i
  %lcmp.mod135.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod135.not, label %.preheader.i, label %.lr.ph104.i.epil.preheader

.lr.ph104.i.epil.preheader:                       ; preds = %.preheader.i.unr-lcssa, %.lr.ph104.preheader.i
  %indvars.iv124.i.epil.init = phi i64 [ 1, %.lr.ph104.preheader.i ], [ %indvars.iv.next125.i.1, %.preheader.i.unr-lcssa ]
  %.076101.i.epil.init = phi i32 [ 0, %.lr.ph104.preheader.i ], [ %i.cu, %.preheader.i.unr-lcssa ]
  %lcmp.mod136 = trunc i32 %.073.lcssa.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv124.i.epil.init
  store i32 %.076101.i.epil.init, ptr %i.cc, align 4, !tbaa !22
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.lr.ph104.i.epil.preheader
  %i.cd = sub nuw nsw i32 12, %i.by
  %.not84110.i = icmp ugt i32 %i.by, %i.cd
  br i1 %.not84110.i, label %HUF_readDTableX6.exit, label %.lr.ph108.i.preheader

.lr.ph108.i.preheader:                            ; preds = %.preheader.i
  %i.ce = zext nneg i32 %i.by to i64
  %i.cf = add nuw nsw i32 %.073.lcssa.i, 12
  %i.cg = sub nuw nsw i32 %i.cf, %i.k
  %i.ch = zext i32 %.073.lcssa.i to i64
  %i.ci = zext i32 %.073.lcssa.i to i64           ; 2 uses
  %min.iters.check = icmp ult i32 %.073.lcssa.i, 8
  %n.vec = and i64 %i.ci, 4294967288              ; 3 uses
  %i.cj = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.ci
  br label %.lr.ph108.i

.lr.ph104.i:                                      ; preds = %.lr.ph104.i, %.lr.ph104.preheader.i.new
  %indvars.iv124.i = phi i64 [ 1, %.lr.ph104.preheader.i.new ], [ %indvars.iv.next125.i.1, %.lr.ph104.i ] ; 5 uses
  %.076101.i = phi i32 [ 0, %.lr.ph104.preheader.i.new ], [ %i.cu, %.lr.ph104.i ] ; 2 uses
  %niter138 = phi i64 [ 0, %.lr.ph104.preheader.i.new ], [ %niter138.next.1, %.lr.ph104.i ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv124.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !22
  %i.cm = trunc nuw nsw i64 %indvars.iv124.i to i32
  %.reass.reass = add i32 %i.cm, %invariant.op
  %i.cn = shl i32 %i.cl, %.reass.reass
  %i.co = add i32 %i.cn, %.076101.i               ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv124.i
  store i32 %.076101.i, ptr %i.cp, align 4, !tbaa !22
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next125.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !22
  %i.cs = trunc nuw nsw i64 %indvars.iv.next125.i to i32
  %.reass.1.reass = add i32 %i.cs, %invariant.op153
  %i.ct = shl i32 %i.cr, %.reass.1.reass
  %i.cu = add i32 %i.ct, %i.co                    ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next125.i
  store i32 %i.co, ptr %i.cv, align 4, !tbaa !22
  %indvars.iv.next125.i.1 = add nuw nsw i64 %indvars.iv124.i, 2 ; 2 uses
  %niter138.next.1 = add nuw i64 %niter138, 2     ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %.preheader.i.unr-lcssa, label %.lr.ph104.i, !llvm.loop !91

.lr.ph108.i:                                      ; preds = %.lr.ph108.i.preheader, %._crit_edge109.i
  %indvars.iv = phi i64 [ %i.ce, %.lr.ph108.i.preheader ], [ %indvars.iv.next, %._crit_edge109.i ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %indvars.iv ; 6 uses
  %i.cx = trunc nuw i64 %indvars.iv to i32        ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph108.i
  %i.cy = mul nuw nsw i64 %indvars.iv, 68
  %i.cz = add nsw i64 %i.cy, -1
  %diff.check = icmp ult i64 %i.cz, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = or disjoint i64 %index, 1               ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load = load <4 x i32>, ptr %i.db, align 4, !tbaa !22
  %wide.load107 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !22
  %i.dd = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.de = lshr <4 x i32> %wide.load107, %broadcast.splat
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.da ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <4 x i32> %i.dd, ptr %i.df, align 4, !tbaa !22
  store <4 x i32> %i.de, ptr %i.dg, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge109.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph108.i, %middle.block
  %indvars.iv129.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph108.i ], [ %i.cj, %middle.block ] ; 4 uses
  %i.di = sub nsw i64 %wide.trip.count127.i, %indvars.iv129.i.ph
  %i.dj = sub nsw i64 %i.ch, %indvars.iv129.i.ph
  %xtraiter139 = and i64 %i.di, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv129.i.prol = phi i64 [ %indvars.iv.next130.i.prol, %scalar.ph.prol ], [ %indvars.iv129.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv129.i.prol
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !22
  %i.dm = lshr i32 %i.dl, %i.cx
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv129.i.prol
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !22
  %indvars.iv.next130.i.prol = add nuw nsw i64 %indvars.iv129.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter139
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !93

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv129.i.unr = phi i64 [ %indvars.iv129.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next130.i.prol, %scalar.ph.prol ]
  %i.do = icmp ult i64 %i.dj, 3
  br i1 %i.do, label %._crit_edge109.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i.3, %scalar.ph ], [ %indvars.iv129.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv129.i
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !22
  %i.dr = lshr i32 %i.dq, %i.cx
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv129.i
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !22
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next130.i
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !22
  %i.dv = lshr i32 %i.du, %i.cx
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next130.i
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !22
  %indvars.iv.next130.i.1 = add nuw nsw i64 %indvars.iv129.i, 2 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next130.i.1
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !22
  %i.dz = lshr i32 %i.dy, %i.cx
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next130.i.1
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !22
  %indvars.iv.next130.i.2 = add nuw nsw i64 %indvars.iv129.i, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next130.i.2
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !22
  %i.ed = lshr i32 %i.ec, %i.cx
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next130.i.2
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !22
  %indvars.iv.next130.i.3 = add nuw nsw i64 %indvars.iv129.i, 4 ; 2 uses
  %exitcond133.not.i.3 = icmp eq i64 %indvars.iv.next130.i.3, %wide.trip.count127.i
  br i1 %exitcond133.not.i.3, label %._crit_edge109.i, label %scalar.ph, !llvm.loop !94

._crit_edge109.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.cg, %lftr.wideiv
  br i1 %exitcond.not, label %HUF_readDTableX6.exit, label %.lr.ph108.i, !llvm.loop !95

HUF_readDTableX6.exit.thread:                     ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %bb.a, %bb.b
  %.0.i.ph = phi i64 [ -44, %bb.b ], [ %i.i, %bb.a ], [ -1, %.lr.ph.i.preheader ], [ -1, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %HUF_decompress4X6_usingDTable.exit

HUF_readDTableX6.exit:                            ; preds = %._crit_edge109.i, %._crit_edge99.i, %.preheader.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 18 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 8196
  call fastcc void @HUF_fillDTableX6LevelN(ptr noundef %i.ef, ptr noundef %i.eg, i32 noundef 12, ptr noundef %i.f, i32 noundef 0, i32 noundef 1, i32 noundef %.073.lcssa.i, ptr noundef %8, i32 noundef %.078.lcssa.i, ptr noundef %i.c, i32 noundef %i.bx, i32 0, i16 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not17 = icmp ult i64 %i.i, %3
  br i1 %.not17, label %bb.c, label %HUF_decompress4X6_usingDTable.exit

bb.c:                                             ; preds = %HUF_readDTableX6.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 10 uses
  %i.ei = sub nuw i64 %3, %i.i                    ; 3 uses
  %i.ej = icmp ult i64 %i.ei, 10
  br i1 %i.ej, label %HUF_decompress4X6_usingDTable.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.el = load i32, ptr %i.g, align 16, !tbaa !22 ; 6 uses
  %i.em = add i32 %i.el, -1
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = shl nuw i64 1, %i.en
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.eo ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %.val190.i = load i16, ptr %i.eh, align 1       ; 5 uses
  %i.eq = zext i16 %.val190.i to i64              ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %.val189.i = load i16, ptr %i.er, align 1       ; 5 uses
  %i.es = zext i16 %.val189.i to i64              ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %.val.i = load i16, ptr %i.et, align 1          ; 5 uses
  %i.eu = zext i16 %.val.i to i64                 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 6 ; 4 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 %i.eq  ; 12 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 %i.es  ; 12 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.eu  ; 3 uses
  %i.ez = add i64 %1, 3
  %i.fa = lshr i64 %i.ez, 2                       ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 %i.fa ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fa ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fa ; 6 uses
  %i.fe = add nuw nsw i64 %i.eq, 6
  %i.ff = add nuw nsw i64 %i.fe, %i.es
  %i.fg = add nuw nsw i64 %i.ff, %i.eu            ; 2 uses
  %i.fh = sub nuw i64 %i.ei, %i.fg
  %i.fi = icmp ugt i64 %i.fg, %i.ei
  br i1 %i.fi, label %BIT_initDStream.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fj = icmp eq i16 %.val190.i, 0
  br i1 %i.fj, label %BIT_initDStream.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fk = icmp ugt i16 %.val190.i, 7
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.ev, ptr %i.fl, align 8, !tbaa !34
  br i1 %i.fk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fm = getelementptr inbounds i8, ptr %i.ew, i64 -8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !35
  %.val.i.i = load i64, ptr %i.fm, align 1        ; 2 uses
  store i64 %.val.i.i, ptr %4, align 8, !tbaa !36
  %i.fo = lshr i64 %.val.i.i, 56                  ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %BIT_initDStream.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %i.fq = trunc nuw nsw i64 %i.fo to i32
  %i.fr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fq, i1 true)
  %i.fs = xor i32 %i.fr, 31
  %i.ft = sub nuw nsw i32 8, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ft, ptr %i.fu, align 8, !tbaa !37
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ev, ptr %i.fv, align 8, !tbaa !35
  %i.fw = load i8, ptr %i.ev, align 1, !tbaa !15
  %i.fx = zext i8 %i.fw to i64                    ; 7 uses
  store i64 %i.fx, ptr %4, align 8, !tbaa !36
  switch i16 %.val190.i, label %bb.o [
    i16 7, label %bb.i
    i16 6, label %bb.j
    i16 5, label %bb.k
    i16 4, label %bb.l
    i16 3, label %bb.m
    i16 2, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !15
  %i.ga = zext i8 %i.fz to i64
  %i.gb = shl nuw nsw i64 %i.ga, 48
  %i.gc = or disjoint i64 %i.gb, %i.fx
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.gd = phi i64 [ %i.gc, %bb.i ], [ %i.fx, %bb.h ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.eh, i64 11
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !15
  %i.gg = zext i8 %i.gf to i64
  %i.gh = shl nuw nsw i64 %i.gg, 40
  %i.gi = add nuw nsw i64 %i.gh, %i.gd
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.gj = phi i64 [ %i.gi, %bb.j ], [ %i.fx, %bb.h ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eh, i64 10
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !15
  %i.gm = zext i8 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gm, 32
  %i.go = add nuw nsw i64 %i.gn, %i.gj
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.gp = phi i64 [ %i.go, %bb.k ], [ %i.fx, %bb.h ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eh, i64 9
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !15
  %i.gs = zext i8 %i.gr to i64
  %i.gt = shl nuw nsw i64 %i.gs, 24
  %i.gu = add nuw nsw i64 %i.gt, %i.gp
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %i.gv = phi i64 [ %i.gu, %bb.l ], [ %i.fx, %bb.h ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !15
  %i.gy = zext i8 %i.gx to i64
  %i.gz = shl nuw nsw i64 %i.gy, 16
  %i.ha = add nuw nsw i64 %i.gz, %i.gv
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %i.hb = phi i64 [ %i.ha, %bb.m ], [ %i.fx, %bb.h ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.eh, i64 7
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !15
  %i.he = zext i8 %i.hd to i64
  %i.hf = shl nuw nsw i64 %i.he, 8
  %i.hg = add nuw nsw i64 %i.hf, %i.hb
  store i64 %i.hg, ptr %4, align 8, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %i.hh = getelementptr i8, ptr %i.ew, i64 -1
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !15  ; 2 uses
  %i.hj = icmp eq i8 %i.hi, 0
  br i1 %i.hj, label %BIT_initDStream.exit.thread.i, label %.thread49.i.i

.thread49.i.i:                                    ; preds = %bb.o
  %i.hk = zext i8 %i.hi to i32
  %i.hl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hk, i1 true)
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hn = shl nuw nsw i16 %.val190.i, 3
  %i.ho = zext nneg i16 %i.hn to i32
  %reass.sub = sub nsw i32 %i.hl, %i.ho
  %i.hp = add nsw i32 %reass.sub, 41
  store i32 %i.hp, ptr %i.hm, align 8, !tbaa !37
  br label %bb.p

bb.p:                                             ; preds = %.thread49.i.i, %.thread.i.i
  %i.hq = icmp eq i16 %.val189.i, 0
  br i1 %i.hq, label %BIT_initDStream.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hr = icmp ugt i16 %.val189.i, 7
  %i.hs = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.ew, ptr %i.hs, align 8, !tbaa !34
  br i1 %i.hr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ht = getelementptr inbounds i8, ptr %i.ex, i64 -8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !35
  %.val.i193.i = load i64, ptr %i.ht, align 1     ; 2 uses
  store i64 %.val.i193.i, ptr %5, align 8, !tbaa !36
  %i.hv = lshr i64 %.val.i193.i, 56               ; 2 uses
end_hunk_1
