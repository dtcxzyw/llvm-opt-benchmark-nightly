Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/nellymoserenc?download=true
inline.NumInlined: 16
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@encode_frame:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !62
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.bj

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 2128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 3152 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.i, ptr noundef nonnull align 16 dereferenceable(512) %i.j, i64 512, i1 false)
  %.not34 = icmp eq ptr %2, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2640 ; 3 uses
  br i1 %.not34, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !68
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.k, ptr align 1 %i.l, i64 %i.p, i1 false)
  %i.q = load i32, ptr %i.m, align 8, !tbaa !68   ; 3 uses
  %i.r = icmp slt i32 %i.q, 256
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.s
  %i.u = sub nsw i32 256, %i.q
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.w, i1 false)
  %i.x = load i32, ptr %i.m, align 8, !tbaa !68
  %i.y = icmp sgt i32 %i.x, 127
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.g, align 8, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.aa = tail call i32 @ff_af_queue_add(ptr noundef nonnull %i.z, ptr noundef nonnull %2) #8 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.bj, label %bb.h

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.k, i8 0, i64 1024, i1 false)
  store i32 1, ptr %i.g, align 8, !tbaa !62
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ac = tail call i32 @ff_get_encode_buffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef 64, i32 noundef 0) #8 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.bj, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !71 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 2640 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !39
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 1104 ; 4 uses
  tail call void %i.al(ptr noundef nonnull %i.am, ptr noundef nonnull %i.i, ptr noundef nonnull @ff_sine_128, i32 noundef 128) #8, !inline_history !48
  %i.an = load ptr, ptr %i.aj, align 16, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 1616 ; 2 uses
  tail call void %i.ap(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ai, ptr noundef nonnull @ff_sine_128, i32 noundef 128) #8, !inline_history !48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !75
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 8 uses
  tail call void %i.as(ptr noundef %i.au, ptr noundef nonnull %i.av, ptr noundef nonnull %i.am, i64 noundef 4) #8, !inline_history !48
  %i.aw = load ptr, ptr %i.aj, align 16, !tbaa !39
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !73
  tail call void %i.ax(ptr noundef nonnull %i.am, ptr noundef nonnull %i.ai, ptr noundef nonnull @ff_sine_128, i32 noundef 128) #8, !inline_history !48
  %i.ay = load ptr, ptr %i.aj, align 16, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !74
  tail call void %i.ba(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.j, ptr noundef nonnull @ff_sine_128, i32 noundef 128) #8, !inline_history !48
  %i.bb = load ptr, ptr %i.ar, align 16, !tbaa !75
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 592
  tail call void %i.bb(ptr noundef %i.bc, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.am, i64 noundef 4) #8, !inline_history !48
  br label %.preheader133.i

.preheader133.i:                                  ; preds = %bb.k, %bb.i
  %indvars.iv173.i = phi i64 [ 0, %bb.i ], [ %indvars.iv.next174.i, %bb.k ] ; 3 uses
  %.078142.i = phi i32 [ 0, %bb.i ], [ %.179.lcssa.i, %bb.k ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr @ff_nelly_band_sizes_table, i64 %indvars.iv173.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !77  ; 4 uses
  %i.bg = zext i8 %i.bf to i32                    ; 4 uses
  %.not166.i = icmp eq i8 %i.bf, 0
  br i1 %.not166.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader133.i
  %i.bh = sext i32 %.078142.i to i64              ; 2 uses
  %xtraiter = and i32 %i.bg, 1
  %i.bi = icmp eq i8 %i.bf, 1
  br i1 %i.bi, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %i.bg, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ %i.bh, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.0138.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.bx, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.av, i64 %indvars.iv.i ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !29 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 512
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !29 ; 2 uses
  %i.bn = fmul nsz float %i.bm, %i.bm
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %i.bk, float %i.bk, float %i.bn)
  %i.bp = fadd nsz float %.0138.i, %i.bo
  %i.bq = getelementptr [4 x i8], ptr %i.av, i64 %indvars.iv.i ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !29 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bq, i64 516
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !29 ; 2 uses
  %i.bv = fmul nsz float %i.bu, %i.bu
  %i.bw = tail call nsz float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.bv)
  %i.bx = fadd nsz float %i.bp, %i.bw             ; 3 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !49

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ %i.bh, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.0138.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.bx, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod63 = trunc i8 %i.bf to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.by = getelementptr inbounds [4 x i8], ptr %i.av, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !29 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.by, i64 512
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !29 ; 2 uses
  %i.cc = fmul nsz float %i.cb, %i.cb
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.cc)
  %i.ce = fadd nsz float %.0138.i.epil.init, %i.cd
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa61 = phi float [ %i.bx, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ce, %.lr.ph.i.epil.preheader ]
  %i.cf = add i32 %.078142.i, %i.bg
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader133.i
  %.179.lcssa.i = phi i32 [ %.078142.i, %.preheader133.i ], [ %i.cf, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi float [ 0.000000e+00, %.preheader133.i ], [ %.lcssa61, %._crit_edge.loopexit.i ]
  %i.cg = shl nuw nsw i32 %i.bg, 7
  %i.ch = uitofp nneg i32 %i.cg to float
  %i.ci = fdiv nsz float %.0.lcssa.i, %i.ch       ; 2 uses
  %i.cj = fcmp nsz olt float %i.ci, 1.000000e+00
  br i1 %i.cj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.ck = fpext nsz float %i.ci to double
  %i.cl = tail call nsz double @llvm.log2.f64(double %i.ck)
  %i.cm = fmul nsz double %i.cl, 1.024000e+03
  %i.cn = fptrunc nsz double %i.cm to float
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.co = phi float [ %i.cn, %bb.j ], [ 0.000000e+00, %._crit_edge.i ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv173.i
  store float %i.co, ptr %i.cp, align 4, !tbaa !29
  %indvars.iv.next174.i = add nuw nsw i64 %indvars.iv173.i, 1 ; 2 uses
  %exitcond176.not.i = icmp eq i64 %indvars.iv.next174.i, 23
  br i1 %exitcond176.not.i, label %bb.l, label %.preheader133.i, !llvm.loop !50

bb.l:                                             ; preds = %bb.k
  %i.cq = icmp slt i32 %i.ah, 0
  %spec.select.i.i = select i1 %i.cq, ptr null, ptr %i.af ; 3 uses
  %spec.select11.i.i = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 0)
  %i.cr = zext nneg i32 %spec.select11.i.i to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 %i.cr ; 2 uses
  %i.ct = load ptr, ptr %i.f, align 16, !tbaa !38
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 492
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !40
  %.not.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i, label %bb.z, label %vector.ph

vector.ph:                                        ; preds = %bb.l
  %i.cw = getelementptr i8, ptr %i.f, i64 3664
  %.val.i = load ptr, ptr %i.cw, align 16, !tbaa !41 ; 8 uses
  %i.cx = getelementptr i8, ptr %i.f, i64 3672
  %.val85.i = load ptr, ptr %i.cx, align 8, !tbaa !42 ; 26 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body.1, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body.1 ] ; 6 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <4 x float> splat (float +inf), ptr %i.cy, align 4, !tbaa !29
  store <4 x float> splat (float +inf), ptr %i.cz, align 4, !tbaa !29
  %i.da = icmp eq i64 %index, 822656
  br i1 %i.da, label %.preheader6.i.preheader.i, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %index ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  store <4 x float> splat (float +inf), ptr %i.dc, align 4, !tbaa !29
  store <4 x float> splat (float +inf), ptr %i.dd, align 4, !tbaa !29
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  store <4 x float> splat (float +inf), ptr %i.df, align 4, !tbaa !29
  store <4 x float> splat (float +inf), ptr %i.dg, align 4, !tbaa !29
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %index ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 112
  store <4 x float> splat (float +inf), ptr %i.di, align 4, !tbaa !29
  store <4 x float> splat (float +inf), ptr %i.dj, align 4, !tbaa !29
  %index.next.3 = add nuw nsw i64 %index, 32
  br label %vector.body

.preheader6.i.preheader.i:                        ; preds = %vector.body
  %i.dk = load float, ptr %i.d, align 16, !tbaa !29 ; 3 uses
  br label %.preheader6.i.i

.preheader6.i.i:                                  ; preds = %.preheader6.i.i, %.preheader6.i.preheader.i
  %indvars.iv22.i.i = phi i64 [ 0, %.preheader6.i.preheader.i ], [ %indvars.iv.next23.i.i.1, %.preheader6.i.i ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_init_table, i64 %indvars.iv22.i.i
  %i.dm = load i16, ptr %i.dl, align 4, !tbaa !79 ; 2 uses
  %i.dn = uitofp nsz i16 %i.dm to float
  %i.do = fsub nsz float %i.dk, %i.dn             ; 2 uses
  %i.dp = fmul nsz float %i.do, %i.do
  %i.dq = zext i16 %i.dm to i64                   ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.dq
  store float %i.dp, ptr %i.dr, align 4, !tbaa !29
  %i.ds = trunc i64 %indvars.iv22.i.i to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %.val85.i, i64 %i.dq
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !77
  %indvars.iv.next23.i.i = or disjoint i64 %indvars.iv22.i.i, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_init_table, i64 %indvars.iv.next23.i.i
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !79 ; 2 uses
  %i.dw = uitofp nsz i16 %i.dv to float
  %i.dx = fsub nsz float %i.dk, %i.dw             ; 2 uses
  %i.dy = fmul nsz float %i.dx, %i.dx
  %i.dz = zext i16 %i.dv to i64                   ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.dz
  store float %i.dy, ptr %i.ea, align 4, !tbaa !29
  %i.eb = trunc i64 %indvars.iv.next23.i.i to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %.val85.i, i64 %i.dz
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !77
  %indvars.iv.next23.i.i.1 = add nuw nsw i64 %indvars.iv22.i.i, 2 ; 2 uses
  %exitcond25.not.i.i.1 = icmp eq i64 %indvars.iv.next23.i.i.1, 64
  br i1 %exitcond25.not.i.i.1, label %.preheader5.i.i, label %.preheader6.i.i, !llvm.loop !51

.preheader3.i.i:                                  ; preds = %._crit_edge.i.i.2
  %i.ed = getelementptr inbounds nuw i8, ptr %.val.i, i64 3147584 ; 2 uses
  br label %bb.y

.preheader5.i.i:                                  ; preds = %.preheader6.i.i, %._crit_edge.i.i.2
  %.pre.i.i = phi float [ %5, %._crit_edge.i.i.2 ], [ %i.dk, %.preheader6.i.i ] ; 4 uses
  %indvars.iv33.i.i = phi i64 [ %indvars.iv.next34.i.i, %._crit_edge.i.i.2 ], [ 1, %.preheader6.i.i ] ; 4 uses
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv33.i.i
  %5 = load float, ptr %4, align 4, !tbaa !29     ; 5 uses
  %i.ee = getelementptr [143072 x i8], ptr %.val.i, i64 %indvars.iv33.i.i ; 4 uses
  %6 = getelementptr i8, ptr %i.ee, i64 -143072   ; 3 uses
  %i.ef = getelementptr inbounds nuw [35768 x i8], ptr %.val85.i, i64 %indvars.iv33.i.i ; 3 uses
  %7 = insertelement <2 x float> poison, float %5, i64 0
  %8 = insertelement <2 x float> %7, float %.pre.i.i, i64 1 ; 3 uses
  %i.eg = fadd nsz float %.pre.i.i, 1.000000e+03  ; 2 uses
  %i.eh = fcmp nsz olt float %i.eg, 3.576800e+04
  %i.ei = select i1 %i.eh, float %i.eg, float 3.576800e+04 ; 3 uses
  %i.ej = fptosi float %i.ei to i32
  %i.ek = fadd nsz <2 x float> %8, splat (float -1.000000e+03) ; 2 uses
  %i.el = fcmp nsz ole <2 x float> %i.ek, zeroinitializer
  %i.em = select <2 x i1> %i.el, <2 x float> zeroinitializer, <2 x float> %i.ek ; 2 uses
  %i.en = extractelement <2 x float> %i.em, i64 0
  %spec.select.i88.i = fptosi float %i.en to i32
  %i.eo = extractelement <2 x float> %i.em, i64 1
  %i.ep = fptosi float %i.eo to i32               ; 2 uses
  %i.eq = uitofp nsz nneg i32 %i.ep to float
  %i.er = fcmp nsz ogt float %i.ei, %i.eq
  br i1 %i.er, label %.lr.ph.preheader.i.i, label %.critedge

.lr.ph.preheader.i.i:                             ; preds = %.preheader5.i.i
  %i.es = zext i32 %i.ep to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv30.i.i = phi i64 [ %i.es, %.lr.ph.preheader.i.i ], [ %indvars.iv.next31.i.i, %.loopexit.i.i ] ; 3 uses
  %.113.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.4.i.i, %.loopexit.i.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv30.i.i ; 2 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !29
  %i.ev = tail call nsz float @llvm.fabs.f32(float %i.eu) #9
  %i.ew = fcmp nsz oeq float %i.ev, +inf
  br i1 %i.ew, label %.loopexit.i.i, label %.preheader4.preheader.i.i

.preheader4.preheader.i.i:                        ; preds = %.lr.ph.i.i
  %i.ex = trunc nuw i64 %indvars.iv30.i.i to i32
  br label %.preheader4.i.i

.preheader4.i.i:                                  ; preds = %bb.p, %.preheader4.preheader.i.i
  %indvars.iv26.i.i = phi i64 [ 0, %.preheader4.preheader.i.i ], [ %indvars.iv.next27.i.i, %bb.p ] ; 3 uses
  %.210.i.i = phi i32 [ %.113.i.i, %.preheader4.preheader.i.i ], [ %.3.i.i, %bb.p ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %indvars.iv26.i.i
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !79
  %i.fa = sext i16 %i.ez to i32
  %i.fb = add nsw i32 %i.fa, %i.ex                ; 4 uses
  %i.fc = icmp sgt i32 %i.fb, %i.ej
  br i1 %i.fc, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %.preheader4.i.i
  %.not120.i.i = icmp slt i32 %i.fb, %spec.select.i88.i
  br i1 %.not120.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fd = load float, ptr %i.et, align 4, !tbaa !29
  %i.fe = sitofp nsz i32 %i.fb to float
  %i.ff = fsub nsz float %i.fe, %5                ; 2 uses
  %i.fg = fmul nsz float %i.ff, %i.ff
  %i.fh = fadd nsz float %i.fg, %i.fd             ; 2 uses
  %i.fi = sext i32 %i.fb to i64                   ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.fi ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !29
  %i.fl = fcmp nsz ogt float %i.fk, %i.fh
  br i1 %i.fl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float %i.fh, ptr %i.fj, align 4, !tbaa !29
  %i.fm = trunc i64 %indvars.iv26.i.i to i8
  %i.fn = getelementptr inbounds i8, ptr %i.ef, i64 %i.fi
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !77
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.3.i.i = phi i32 [ 1, %bb.o ], [ %.210.i.i, %bb.n ], [ %.210.i.i, %bb.m ] ; 2 uses
  %indvars.iv.next27.i.i = add nuw nsw i64 %indvars.iv26.i.i, 1 ; 2 uses
  %exitcond29.not.i.i = icmp eq i64 %indvars.iv.next27.i.i, 32
  br i1 %exitcond29.not.i.i, label %.loopexit.i.i, label %.preheader4.i.i, !llvm.loop !52

.loopexit.i.i:                                    ; preds = %bb.p, %.preheader4.i.i, %.lr.ph.i.i
  %.4.i.i = phi i32 [ %.113.i.i, %.lr.ph.i.i ], [ %.3.i.i, %bb.p ], [ %.210.i.i, %.preheader4.i.i ] ; 2 uses
  %indvars.iv.next31.i.i = add nuw nsw i64 %indvars.iv30.i.i, 1 ; 2 uses
  %i.fo = trunc nuw i64 %indvars.iv.next31.i.i to i32
  %i.fp = uitofp nsz nneg i32 %i.fo to float
  %i.fq = fcmp nsz ogt float %i.ei, %i.fp
  br i1 %i.fq, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !53

._crit_edge.loopexit.i.i:                         ; preds = %.loopexit.i.i
  %i.fr = icmp eq i32 %.4.i.i, 0
  br i1 %i.fr, label %.critedge, label %._crit_edge.i.i.2

.critedge:                                        ; preds = %.preheader5.i.i, %._crit_edge.loopexit.i.i
  %i.fs = fadd nsz float %.pre.i.i, 4.000000e+03  ; 2 uses
  %i.ft = fcmp nsz olt float %i.fs, 3.576800e+04
  %i.fu = select i1 %i.ft, float %i.fs, float 3.576800e+04 ; 3 uses
  %i.fv = fptosi float %i.fu to i32
  %i.fw = fadd nsz <2 x float> %8, splat (float -4.000000e+03) ; 2 uses
  %i.fx = fcmp nsz ole <2 x float> %i.fw, zeroinitializer
  %i.fy = select <2 x i1> %i.fx, <2 x float> zeroinitializer, <2 x float> %i.fw ; 2 uses
  %i.fz = extractelement <2 x float> %i.fy, i64 0
  %spec.select.i88.i.1 = fptosi float %i.fz to i32
  %i.ga = extractelement <2 x float> %i.fy, i64 1
  %i.gb = fptosi float %i.ga to i32               ; 2 uses
  %i.gc = uitofp nsz nneg i32 %i.gb to float
  %i.gd = fcmp nsz ogt float %i.fu, %i.gc
  br i1 %i.gd, label %.lr.ph.preheader.i.i.1, label %.critedge66

.lr.ph.preheader.i.i.1:                           ; preds = %.critedge
  %i.ge = zext i32 %i.gb to i64
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.loopexit.i.i.1, %.lr.ph.preheader.i.i.1
  %indvars.iv30.i.i.1 = phi i64 [ %i.ge, %.lr.ph.preheader.i.i.1 ], [ %indvars.iv.next31.i.i.1, %.loopexit.i.i.1 ] ; 3 uses
  %.113.i.i.1 = phi i32 [ 0, %.lr.ph.preheader.i.i.1 ], [ %.4.i.i.1, %.loopexit.i.i.1 ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv30.i.i.1 ; 2 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !29
  %i.gh = tail call nsz float @llvm.fabs.f32(float %i.gg) #9
  %i.gi = fcmp nsz oeq float %i.gh, +inf
  br i1 %i.gi, label %.loopexit.i.i.1, label %.preheader4.preheader.i.i.1

.preheader4.preheader.i.i.1:                      ; preds = %.lr.ph.i.i.1
  %i.gj = trunc nuw i64 %indvars.iv30.i.i.1 to i32
  br label %.preheader4.i.i.1

.preheader4.i.i.1:                                ; preds = %bb.t, %.preheader4.preheader.i.i.1
  %indvars.iv26.i.i.1 = phi i64 [ 0, %.preheader4.preheader.i.i.1 ], [ %indvars.iv.next27.i.i.1, %bb.t ] ; 3 uses
  %.210.i.i.1 = phi i32 [ %.113.i.i.1, %.preheader4.preheader.i.i.1 ], [ %.3.i.i.1, %bb.t ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %indvars.iv26.i.i.1
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !79
  %i.gm = sext i16 %i.gl to i32
  %i.gn = add nsw i32 %i.gm, %i.gj                ; 4 uses
  %i.go = icmp sgt i32 %i.gn, %i.fv
  br i1 %i.go, label %.loopexit.i.i.1, label %bb.q

bb.q:                                             ; preds = %.preheader4.i.i.1
  %.not120.i.i.1 = icmp slt i32 %i.gn, %spec.select.i88.i.1
  br i1 %.not120.i.i.1, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gp = load float, ptr %i.gf, align 4, !tbaa !29
  %i.gq = sitofp nsz i32 %i.gn to float
  %i.gr = fsub nsz float %i.gq, %5                ; 2 uses
  %i.gs = fmul nsz float %i.gr, %i.gr
  %i.gt = fadd nsz float %i.gs, %i.gp             ; 2 uses
  %i.gu = sext i32 %i.gn to i64                   ; 2 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.gu ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !29
  %i.gx = fcmp nsz ogt float %i.gw, %i.gt
  br i1 %i.gx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store float %i.gt, ptr %i.gv, align 4, !tbaa !29
  %i.gy = trunc i64 %indvars.iv26.i.i.1 to i8
  %i.gz = getelementptr inbounds i8, ptr %i.ef, i64 %i.gu
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !77
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.3.i.i.1 = phi i32 [ 1, %bb.s ], [ %.210.i.i.1, %bb.r ], [ %.210.i.i.1, %bb.q ] ; 2 uses
  %indvars.iv.next27.i.i.1 = add nuw nsw i64 %indvars.iv26.i.i.1, 1 ; 2 uses
  %exitcond29.not.i.i.1 = icmp eq i64 %indvars.iv.next27.i.i.1, 32
  br i1 %exitcond29.not.i.i.1, label %.loopexit.i.i.1, label %.preheader4.i.i.1, !llvm.loop !52

.loopexit.i.i.1:                                  ; preds = %.preheader4.i.i.1, %bb.t, %.lr.ph.i.i.1
  %.4.i.i.1 = phi i32 [ %.113.i.i.1, %.lr.ph.i.i.1 ], [ %.3.i.i.1, %bb.t ], [ %.210.i.i.1, %.preheader4.i.i.1 ] ; 2 uses
  %indvars.iv.next31.i.i.1 = add nuw nsw i64 %indvars.iv30.i.i.1, 1 ; 2 uses
  %i.ha = trunc nuw i64 %indvars.iv.next31.i.i.1 to i32
  %i.hb = uitofp nsz nneg i32 %i.ha to float
  %i.hc = fcmp nsz ogt float %i.fu, %i.hb
  br i1 %i.hc, label %.lr.ph.i.i.1, label %._crit_edge.loopexit.i.i.1, !llvm.loop !53

._crit_edge.loopexit.i.i.1:                       ; preds = %.loopexit.i.i.1
  %i.hd = icmp eq i32 %.4.i.i.1, 0
  br i1 %i.hd, label %.critedge66, label %._crit_edge.i.i.2

.critedge66:                                      ; preds = %.critedge, %._crit_edge.loopexit.i.i.1
  %i.he = fadd nsz float %.pre.i.i, 1.600000e+04  ; 2 uses
  %i.hf = fcmp nsz olt float %i.he, 3.576800e+04
  %i.hg = select i1 %i.hf, float %i.he, float 3.576800e+04 ; 3 uses
  %i.hh = fptosi float %i.hg to i32
  %i.hi = fadd nsz <2 x float> %8, splat (float -1.600000e+04) ; 2 uses
  %i.hj = fcmp nsz ole <2 x float> %i.hi, zeroinitializer
  %i.hk = select <2 x i1> %i.hj, <2 x float> zeroinitializer, <2 x float> %i.hi ; 2 uses
  %i.hl = extractelement <2 x float> %i.hk, i64 0
  %spec.select.i88.i.2 = fptosi float %i.hl to i32
  %i.hm = extractelement <2 x float> %i.hk, i64 1
  %i.hn = fptosi float %i.hm to i32               ; 2 uses
  %i.ho = uitofp nsz nneg i32 %i.hn to float
  %i.hp = fcmp nsz ogt float %i.hg, %i.ho
  br i1 %i.hp, label %.lr.ph.preheader.i.i.2, label %._crit_edge.i.i.2

.lr.ph.preheader.i.i.2:                           ; preds = %.critedge66
  %i.hq = zext i32 %i.hn to i64
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.loopexit.i.i.2, %.lr.ph.preheader.i.i.2
  %indvars.iv30.i.i.2 = phi i64 [ %i.hq, %.lr.ph.preheader.i.i.2 ], [ %indvars.iv.next31.i.i.2, %.loopexit.i.i.2 ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv30.i.i.2 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !29
  %i.ht = tail call nsz float @llvm.fabs.f32(float %i.hs) #9
  %i.hu = fcmp nsz oeq float %i.ht, +inf
  br i1 %i.hu, label %.loopexit.i.i.2, label %.preheader4.preheader.i.i.2

.preheader4.preheader.i.i.2:                      ; preds = %.lr.ph.i.i.2
  %i.hv = trunc nuw i64 %indvars.iv30.i.i.2 to i32
  br label %.preheader4.i.i.2

.preheader4.i.i.2:                                ; preds = %bb.x, %.preheader4.preheader.i.i.2
  %indvars.iv26.i.i.2 = phi i64 [ 0, %.preheader4.preheader.i.i.2 ], [ %indvars.iv.next27.i.i.2, %bb.x ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %indvars.iv26.i.i.2
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !79
  %i.hy = sext i16 %i.hx to i32
  %i.hz = add nsw i32 %i.hy, %i.hv                ; 4 uses
  %i.ia = icmp sgt i32 %i.hz, %i.hh
  br i1 %i.ia, label %.loopexit.i.i.2, label %bb.u

bb.u:                                             ; preds = %.preheader4.i.i.2
  %.not120.i.i.2 = icmp slt i32 %i.hz, %spec.select.i88.i.2
  br i1 %.not120.i.i.2, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ib = load float, ptr %i.hr, align 4, !tbaa !29
  %i.ic = sitofp nsz i32 %i.hz to float
  %i.id = fsub nsz float %i.ic, %5                ; 2 uses
  %i.ie = fmul nsz float %i.id, %i.id
  %i.if = fadd nsz float %i.ie, %i.ib             ; 2 uses
  %i.ig = sext i32 %i.hz to i64                   ; 2 uses
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ig ; 2 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !29
  %i.ij = fcmp nsz ogt float %i.ii, %i.if
  br i1 %i.ij, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store float %i.if, ptr %i.ih, align 4, !tbaa !29
  %i.ik = trunc i64 %indvars.iv26.i.i.2 to i8
  %i.il = getelementptr inbounds i8, ptr %i.ef, i64 %i.ig
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !77
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %indvars.iv.next27.i.i.2 = add nuw nsw i64 %indvars.iv26.i.i.2, 1 ; 2 uses
  %exitcond29.not.i.i.2 = icmp eq i64 %indvars.iv.next27.i.i.2, 32
  br i1 %exitcond29.not.i.i.2, label %.loopexit.i.i.2, label %.preheader4.i.i.2, !llvm.loop !52

.loopexit.i.i.2:                                  ; preds = %.preheader4.i.i.2, %bb.x, %.lr.ph.i.i.2
  %indvars.iv.next31.i.i.2 = add nuw nsw i64 %indvars.iv30.i.i.2, 1 ; 2 uses
  %i.im = trunc nuw i64 %indvars.iv.next31.i.i.2 to i32
  %i.in = uitofp nsz nneg i32 %i.im to float
  %i.io = fcmp nsz ogt float %i.hg, %i.in
  br i1 %i.io, label %.lr.ph.i.i.2, label %._crit_edge.i.i.2, !llvm.loop !53

._crit_edge.i.i.2:                                ; preds = %.critedge66, %.loopexit.i.i.2, %._crit_edge.loopexit.i.i.1, %._crit_edge.loopexit.i.i
  %indvars.iv.next34.i.i = add nuw nsw i64 %indvars.iv33.i.i, 1 ; 2 uses
  %exitcond36.not.i.i = icmp eq i64 %indvars.iv.next34.i.i, 23
  br i1 %exitcond36.not.i.i, label %.preheader3.i.i, label %.preheader5.i.i, !llvm.loop !54

bb.y:                                             ; preds = %bb.y, %.preheader3.i.i
  %indvars.iv37.i.i = phi i64 [ 0, %.preheader3.i.i ], [ %indvars.iv.next38.i.i.1, %bb.y ] ; 4 uses
  %.09918.i.i = phi float [ +inf, %.preheader3.i.i ], [ %.1100.i.i.1, %bb.y ] ; 2 uses
  %.010117.i.i = phi i32 [ -1, %.preheader3.i.i ], [ %.1102.i.i.1, %bb.y ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv37.i.i
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !29 ; 2 uses
  %i.ir = fcmp nsz ogt float %.09918.i.i, %i.iq   ; 2 uses
  %i.is = trunc nuw nsw i64 %indvars.iv37.i.i to i32
  %.1102.i.i = select i1 %i.ir, i32 %i.is, i32 %.010117.i.i
  %.1100.i.i = select nsz i1 %i.ir, float %i.iq, float %.09918.i.i ; 2 uses
  %indvars.iv.next38.i.i = or disjoint i64 %indvars.iv37.i.i, 1 ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next38.i.i
  %i.iu = load float, ptr %i.it, align 4, !tbaa !29 ; 2 uses
  %i.iv = fcmp nsz ogt float %.1100.i.i, %i.iu    ; 2 uses
  %i.iw = trunc nuw nsw i64 %indvars.iv.next38.i.i to i32
  %.1102.i.i.1 = select i1 %i.iv, i32 %i.iw, i32 %.1102.i.i ; 3 uses
  %.1100.i.i.1 = select nsz i1 %i.iv, float %i.iu, float %.1100.i.i
  %indvars.iv.next38.i.i.1 = add nuw nsw i64 %indvars.iv37.i.i, 2 ; 2 uses
  %exitcond40.not.i.i.1 = icmp eq i64 %indvars.iv.next38.i.i.1, 35768
  br i1 %exitcond40.not.i.i.1, label %.preheader.i.preheader.i, label %bb.y, !llvm.loop !55

.preheader.i.preheader.i:                         ; preds = %bb.y
  %i.ix = getelementptr inbounds nuw i8, ptr %.val85.i, i64 786896
  %i.iy = sext i32 %.1102.i.i.1 to i64
  %i.iz = getelementptr inbounds i8, ptr %i.ix, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !77  ; 2 uses
  %i.jb = zext i8 %i.ja to i32
  %i.jc = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 %i.jb, ptr %i.jc, align 8, !tbaa !80
  %i.jd = zext i8 %i.ja to i64
  %i.je = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !79
  %i.jg = sext i16 %i.jf to i32
  %i.jh = sub nsw i32 %.1102.i.i.1, %i.jg         ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.val85.i, i64 751128
  %i.jj = sext i32 %i.jh to i64
  %i.jk = getelementptr inbounds i8, ptr %i.ji, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !77  ; 2 uses
  %i.jm = zext i8 %i.jl to i32
  %i.jn = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !80
  %i.jo = zext i8 %i.jl to i64
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.jo
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !79
  %i.jr = sext i16 %i.jq to i32
  %i.js = sub nsw i32 %i.jh, %i.jr                ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.val85.i, i64 715360
  %i.ju = sext i32 %i.js to i64
  %i.jv = getelementptr inbounds i8, ptr %i.jt, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !77  ; 2 uses
  %i.jx = zext i8 %i.jw to i32
  %i.jy = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 %i.jx, ptr %i.jy, align 16, !tbaa !80
  %i.jz = zext i8 %i.jw to i64
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.jz
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !79
  %i.kc = sext i16 %i.kb to i32
  %i.kd = sub nsw i32 %i.js, %i.kc                ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.val85.i, i64 679592
  %i.kf = sext i32 %i.kd to i64
  %i.kg = getelementptr inbounds i8, ptr %i.ke, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !77  ; 2 uses
  %i.ki = zext i8 %i.kh to i32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !80
  %i.kk = zext i8 %i.kh to i64
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.kk
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !79
  %i.kn = sext i16 %i.km to i32
  %i.ko = sub nsw i32 %i.kd, %i.kn                ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.val85.i, i64 643824
  %i.kq = sext i32 %i.ko to i64
  %i.kr = getelementptr inbounds i8, ptr %i.kp, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !77  ; 2 uses
  %i.kt = zext i8 %i.ks to i32
  %i.ku = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 %i.kt, ptr %i.ku, align 8, !tbaa !80
  %i.kv = zext i8 %i.ks to i64
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.kv
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !79
  %i.ky = sext i16 %i.kx to i32
  %i.kz = sub nsw i32 %i.ko, %i.ky                ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.val85.i, i64 608056
  %i.lb = sext i32 %i.kz to i64
  %i.lc = getelementptr inbounds i8, ptr %i.la, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !77  ; 2 uses
  %i.le = zext i8 %i.ld to i32
  %i.lf = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !80
  %i.lg = zext i8 %i.ld to i64
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.lg
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !79
  %i.lj = sext i16 %i.li to i32
  %i.lk = sub nsw i32 %i.kz, %i.lj                ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.val85.i, i64 572288
  %i.lm = sext i32 %i.lk to i64
  %i.ln = getelementptr inbounds i8, ptr %i.ll, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !77  ; 2 uses
  %i.lp = zext i8 %i.lo to i32
  %i.lq = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 %i.lp, ptr %i.lq, align 16, !tbaa !80
  %i.lr = zext i8 %i.lo to i64
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.lr
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !79
  %i.lu = sext i16 %i.lt to i32
  %i.lv = sub nsw i32 %i.lk, %i.lu                ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.val85.i, i64 536520
  %i.lx = sext i32 %i.lv to i64
  %i.ly = getelementptr inbounds i8, ptr %i.lw, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !77  ; 2 uses
  %i.ma = zext i8 %i.lz to i32
  %i.mb = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 %i.ma, ptr %i.mb, align 4, !tbaa !80
  %i.mc = zext i8 %i.lz to i64
  %i.md = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.mc
  %i.me = load i16, ptr %i.md, align 2, !tbaa !79
  %i.mf = sext i16 %i.me to i32
  %i.mg = sub nsw i32 %i.lv, %i.mf                ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.val85.i, i64 500752
  %i.mi = sext i32 %i.mg to i64
  %i.mj = getelementptr inbounds i8, ptr %i.mh, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !77  ; 2 uses
  %i.ml = zext i8 %i.mk to i32
  %i.mm = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %i.ml, ptr %i.mm, align 8, !tbaa !80
  %i.mn = zext i8 %i.mk to i64
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.mn
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !79
  %i.mq = sext i16 %i.mp to i32
  %i.mr = sub nsw i32 %i.mg, %i.mq                ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.val85.i, i64 464984
  %i.mt = sext i32 %i.mr to i64
  %i.mu = getelementptr inbounds i8, ptr %i.ms, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !77  ; 2 uses
  %i.mw = zext i8 %i.mv to i32
  %i.mx = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 %i.mw, ptr %i.mx, align 4, !tbaa !80
  %i.my = zext i8 %i.mv to i64
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.my
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !79
  %i.nb = sext i16 %i.na to i32
  %i.nc = sub nsw i32 %i.mr, %i.nb                ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.val85.i, i64 429216
  %i.ne = sext i32 %i.nc to i64
  %i.nf = getelementptr inbounds i8, ptr %i.nd, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !77  ; 2 uses
  %i.nh = zext i8 %i.ng to i32
  %i.ni = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %i.nh, ptr %i.ni, align 16, !tbaa !80
  %i.nj = zext i8 %i.ng to i64
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.nj
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !79
  %i.nm = sext i16 %i.nl to i32
  %i.nn = sub nsw i32 %i.nc, %i.nm                ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.val85.i, i64 393448
  %i.np = sext i32 %i.nn to i64
  %i.nq = getelementptr inbounds i8, ptr %i.no, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !77  ; 2 uses
  %i.ns = zext i8 %i.nr to i32
  %i.nt = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.ns, ptr %i.nt, align 4, !tbaa !80
  %i.nu = zext i8 %i.nr to i64
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.nu
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !79
  %i.nx = sext i16 %i.nw to i32
  %i.ny = sub nsw i32 %i.nn, %i.nx                ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.val85.i, i64 357680
  %i.oa = sext i32 %i.ny to i64
  %i.ob = getelementptr inbounds i8, ptr %i.nz, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !77  ; 2 uses
  %i.od = zext i8 %i.oc to i32
  %i.oe = getelementptr inbounds nuw i8, ptr %i.c, i64 40
end_hunk_0
