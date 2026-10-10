Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/nellymoserenc?download=true
inline.NumInlined: 16
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@encode_frame:bb.a
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
  %.pre.i.i = phi float [ %i.ef, %._crit_edge.i.i.2 ], [ %i.dk, %.preheader6.i.i ] ; 6 uses
  %indvars.iv33.i.i = phi i64 [ %indvars.iv.next34.i.i, %._crit_edge.i.i.2 ], [ 1, %.preheader6.i.i ] ; 4 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv33.i.i
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !29 ; 7 uses
  %i.eg = getelementptr [143072 x i8], ptr %.val.i, i64 %indvars.iv33.i.i ; 4 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -143072 ; 3 uses
  %i.ei = getelementptr inbounds nuw [35768 x i8], ptr %.val85.i, i64 %indvars.iv33.i.i ; 3 uses
  %i.ej = fadd nsz float %i.ef, -1.000000e+03     ; 2 uses
  %.inv.i.i = fcmp nsz ole float %i.ej, 0.000000e+00
  %spec.select1.i.i = select i1 %.inv.i.i, float 0.000000e+00, float %i.ej
  %spec.select.i88.i.a = fptosi float %spec.select1.i.i to i32
  %4 = fadd nsz float %.pre.i.i, 1.000000e+03     ; 2 uses
  %5 = fcmp nsz olt float %4, 3.576800e+04
  %6 = select i1 %5, float %4, float 3.576800e+04 ; 3 uses
  %7 = fptosi float %6 to i32
  %8 = fadd nsz float %.pre.i.i, -1.000000e+03    ; 2 uses
  %.inv2.i.i = fcmp nsz ole float %8, 0.000000e+00
  %9 = select i1 %.inv2.i.i, float 0.000000e+00, float %8
  %i.ek = fptosi float %9 to i32                  ; 2 uses
  %i.el = uitofp nsz nneg i32 %i.ek to float
  %i.em = fcmp nsz ogt float %6, %i.el
  br i1 %i.em, label %.lr.ph.preheader.i.i, label %.critedge

.lr.ph.preheader.i.i:                             ; preds = %.preheader5.i.i
  %i.en = zext i32 %i.ek to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv30.i.i = phi i64 [ %i.en, %.lr.ph.preheader.i.i ], [ %indvars.iv.next31.i.i, %.loopexit.i.i ] ; 3 uses
  %.113.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.4.i.i, %.loopexit.i.i ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv30.i.i ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !29
  %i.eq = tail call nsz float @llvm.fabs.f32(float %i.ep) #9
  %i.er = fcmp nsz oeq float %i.eq, +inf
  br i1 %i.er, label %.loopexit.i.i, label %.preheader4.preheader.i.i

.preheader4.preheader.i.i:                        ; preds = %.lr.ph.i.i
  %i.es = trunc nuw i64 %indvars.iv30.i.i to i32
  br label %.preheader4.i.i

.preheader4.i.i:                                  ; preds = %bb.p, %.preheader4.preheader.i.i
  %indvars.iv26.i.i = phi i64 [ 0, %.preheader4.preheader.i.i ], [ %indvars.iv.next27.i.i, %bb.p ] ; 3 uses
  %.210.i.i = phi i32 [ %.113.i.i, %.preheader4.preheader.i.i ], [ %.3.i.i, %bb.p ] ; 3 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %indvars.iv26.i.i
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !79
  %i.ev = sext i16 %i.eu to i32
  %i.ew = add nsw i32 %i.ev, %i.es                ; 4 uses
  %i.ex = icmp sgt i32 %i.ew, %7
  br i1 %i.ex, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %.preheader4.i.i
  %.not120.i.i = icmp slt i32 %i.ew, %spec.select.i88.i.a
  br i1 %.not120.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ey = load float, ptr %i.eo, align 4, !tbaa !29
  %i.ez = sitofp nsz i32 %i.ew to float
  %i.fa = fsub nsz float %i.ez, %i.ef             ; 2 uses
  %i.fb = fmul nsz float %i.fa, %i.fa
  %i.fc = fadd nsz float %i.fb, %i.ey             ; 2 uses
  %i.fd = sext i32 %i.ew to i64                   ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fd ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !29
  %i.fg = fcmp nsz ogt float %i.ff, %i.fc
  br i1 %i.fg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float %i.fc, ptr %i.fe, align 4, !tbaa !29
  %i.fh = trunc i64 %indvars.iv26.i.i to i8
  %i.fi = getelementptr inbounds i8, ptr %i.ei, i64 %i.fd
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !77
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.3.i.i = phi i32 [ 1, %bb.o ], [ %.210.i.i, %bb.n ], [ %.210.i.i, %bb.m ] ; 2 uses
  %indvars.iv.next27.i.i = add nuw nsw i64 %indvars.iv26.i.i, 1 ; 2 uses
  %exitcond29.not.i.i = icmp eq i64 %indvars.iv.next27.i.i, 32
  br i1 %exitcond29.not.i.i, label %.loopexit.i.i, label %.preheader4.i.i, !llvm.loop !52

.loopexit.i.i:                                    ; preds = %bb.p, %.preheader4.i.i, %.lr.ph.i.i
  %.4.i.i = phi i32 [ %.113.i.i, %.lr.ph.i.i ], [ %.3.i.i, %bb.p ], [ %.210.i.i, %.preheader4.i.i ] ; 2 uses
  %indvars.iv.next31.i.i = add nuw nsw i64 %indvars.iv30.i.i, 1 ; 2 uses
  %i.fj = trunc nuw i64 %indvars.iv.next31.i.i to i32
  %i.fk = uitofp nsz nneg i32 %i.fj to float
  %i.fl = fcmp nsz ogt float %6, %i.fk
  br i1 %i.fl, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !53

._crit_edge.loopexit.i.i:                         ; preds = %.loopexit.i.i
  %i.fm = icmp eq i32 %.4.i.i, 0
  br i1 %i.fm, label %.critedge, label %._crit_edge.i.i.2

.critedge:                                        ; preds = %.preheader5.i.i, %._crit_edge.loopexit.i.i
  %i.fn = fadd nsz float %i.ef, -4.000000e+03     ; 2 uses
  %.inv.i.i.1 = fcmp nsz ole float %i.fn, 0.000000e+00
  %spec.select1.i.i.1 = select i1 %.inv.i.i.1, float 0.000000e+00, float %i.fn
  %spec.select.i88.i.1.a = fptosi float %spec.select1.i.i.1 to i32
  %10 = fadd nsz float %.pre.i.i, 4.000000e+03    ; 2 uses
  %11 = fcmp nsz olt float %10, 3.576800e+04
  %12 = select i1 %11, float %10, float 3.576800e+04 ; 3 uses
  %13 = fptosi float %12 to i32
  %14 = fadd nsz float %.pre.i.i, -4.000000e+03   ; 2 uses
  %.inv2.i.i.1 = fcmp nsz ole float %14, 0.000000e+00
  %15 = select i1 %.inv2.i.i.1, float 0.000000e+00, float %14
  %i.fo = fptosi float %15 to i32                 ; 2 uses
  %i.fp = uitofp nsz nneg i32 %i.fo to float
  %i.fq = fcmp nsz ogt float %12, %i.fp
  br i1 %i.fq, label %.lr.ph.preheader.i.i.1, label %.critedge66

.lr.ph.preheader.i.i.1:                           ; preds = %.critedge
  %i.fr = zext i32 %i.fo to i64
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.loopexit.i.i.1, %.lr.ph.preheader.i.i.1
  %indvars.iv30.i.i.1 = phi i64 [ %i.fr, %.lr.ph.preheader.i.i.1 ], [ %indvars.iv.next31.i.i.1, %.loopexit.i.i.1 ] ; 3 uses
  %.113.i.i.1 = phi i32 [ 0, %.lr.ph.preheader.i.i.1 ], [ %.4.i.i.1, %.loopexit.i.i.1 ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv30.i.i.1 ; 2 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !29
  %i.fu = tail call nsz float @llvm.fabs.f32(float %i.ft) #9
  %i.fv = fcmp nsz oeq float %i.fu, +inf
  br i1 %i.fv, label %.loopexit.i.i.1, label %.preheader4.preheader.i.i.1

.preheader4.preheader.i.i.1:                      ; preds = %.lr.ph.i.i.1
  %i.fw = trunc nuw i64 %indvars.iv30.i.i.1 to i32
  br label %.preheader4.i.i.1

.preheader4.i.i.1:                                ; preds = %bb.t, %.preheader4.preheader.i.i.1
  %indvars.iv26.i.i.1 = phi i64 [ 0, %.preheader4.preheader.i.i.1 ], [ %indvars.iv.next27.i.i.1, %bb.t ] ; 3 uses
  %.210.i.i.1 = phi i32 [ %.113.i.i.1, %.preheader4.preheader.i.i.1 ], [ %.3.i.i.1, %bb.t ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %indvars.iv26.i.i.1
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !79
  %i.fz = sext i16 %i.fy to i32
  %i.ga = add nsw i32 %i.fz, %i.fw                ; 4 uses
  %i.gb = icmp sgt i32 %i.ga, %13
  br i1 %i.gb, label %.loopexit.i.i.1, label %bb.q

bb.q:                                             ; preds = %.preheader4.i.i.1
  %.not120.i.i.1 = icmp slt i32 %i.ga, %spec.select.i88.i.1.a
  br i1 %.not120.i.i.1, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gc = load float, ptr %i.fs, align 4, !tbaa !29
  %i.gd = sitofp nsz i32 %i.ga to float
  %i.ge = fsub nsz float %i.gd, %i.ef             ; 2 uses
  %i.gf = fmul nsz float %i.ge, %i.ge
  %i.gg = fadd nsz float %i.gf, %i.gc             ; 2 uses
  %i.gh = sext i32 %i.ga to i64                   ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.gh ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !29
  %i.gk = fcmp nsz ogt float %i.gj, %i.gg
  br i1 %i.gk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store float %i.gg, ptr %i.gi, align 4, !tbaa !29
  %i.gl = trunc i64 %indvars.iv26.i.i.1 to i8
  %i.gm = getelementptr inbounds i8, ptr %i.ei, i64 %i.gh
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !77
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.3.i.i.1 = phi i32 [ 1, %bb.s ], [ %.210.i.i.1, %bb.r ], [ %.210.i.i.1, %bb.q ] ; 2 uses
  %indvars.iv.next27.i.i.1 = add nuw nsw i64 %indvars.iv26.i.i.1, 1 ; 2 uses
  %exitcond29.not.i.i.1 = icmp eq i64 %indvars.iv.next27.i.i.1, 32
  br i1 %exitcond29.not.i.i.1, label %.loopexit.i.i.1, label %.preheader4.i.i.1, !llvm.loop !52

.loopexit.i.i.1:                                  ; preds = %.preheader4.i.i.1, %bb.t, %.lr.ph.i.i.1
  %.4.i.i.1 = phi i32 [ %.113.i.i.1, %.lr.ph.i.i.1 ], [ %.3.i.i.1, %bb.t ], [ %.210.i.i.1, %.preheader4.i.i.1 ] ; 2 uses
  %indvars.iv.next31.i.i.1 = add nuw nsw i64 %indvars.iv30.i.i.1, 1 ; 2 uses
  %i.gn = trunc nuw i64 %indvars.iv.next31.i.i.1 to i32
  %i.go = uitofp nsz nneg i32 %i.gn to float
  %i.gp = fcmp nsz ogt float %12, %i.go
  br i1 %i.gp, label %.lr.ph.i.i.1, label %._crit_edge.loopexit.i.i.1, !llvm.loop !53

._crit_edge.loopexit.i.i.1:                       ; preds = %.loopexit.i.i.1
  %i.gq = icmp eq i32 %.4.i.i.1, 0
  br i1 %i.gq, label %.critedge66, label %._crit_edge.i.i.2

.critedge66:                                      ; preds = %.critedge, %._crit_edge.loopexit.i.i.1
  %i.gr = fadd nsz float %i.ef, -1.600000e+04     ; 2 uses
  %.inv.i.i.2 = fcmp nsz ole float %i.gr, 0.000000e+00
  %spec.select1.i.i.2 = select i1 %.inv.i.i.2, float 0.000000e+00, float %i.gr
  %spec.select.i88.i.2.a = fptosi float %spec.select1.i.i.2 to i32
  %16 = fadd nsz float %.pre.i.i, 1.600000e+04    ; 2 uses
  %17 = fcmp nsz olt float %16, 3.576800e+04
  %18 = select i1 %17, float %16, float 3.576800e+04 ; 3 uses
  %19 = fptosi float %18 to i32
  %20 = fadd nsz float %.pre.i.i, -1.600000e+04   ; 2 uses
  %.inv2.i.i.2 = fcmp nsz ole float %20, 0.000000e+00
  %21 = select i1 %.inv2.i.i.2, float 0.000000e+00, float %20
  %i.gs = fptosi float %21 to i32                 ; 2 uses
  %i.gt = uitofp nsz nneg i32 %i.gs to float
  %i.gu = fcmp nsz ogt float %18, %i.gt
  br i1 %i.gu, label %.lr.ph.preheader.i.i.2, label %._crit_edge.i.i.2

.lr.ph.preheader.i.i.2:                           ; preds = %.critedge66
  %i.gv = zext i32 %i.gs to i64
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.loopexit.i.i.2, %.lr.ph.preheader.i.i.2
  %indvars.iv30.i.i.2 = phi i64 [ %i.gv, %.lr.ph.preheader.i.i.2 ], [ %indvars.iv.next31.i.i.2, %.loopexit.i.i.2 ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv30.i.i.2 ; 2 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !29
  %i.gy = tail call nsz float @llvm.fabs.f32(float %i.gx) #9
  %i.gz = fcmp nsz oeq float %i.gy, +inf
  br i1 %i.gz, label %.loopexit.i.i.2, label %.preheader4.preheader.i.i.2

.preheader4.preheader.i.i.2:                      ; preds = %.lr.ph.i.i.2
  %i.ha = trunc nuw i64 %indvars.iv30.i.i.2 to i32
  br label %.preheader4.i.i.2

.preheader4.i.i.2:                                ; preds = %bb.x, %.preheader4.preheader.i.i.2
  %indvars.iv26.i.i.2 = phi i64 [ 0, %.preheader4.preheader.i.i.2 ], [ %indvars.iv.next27.i.i.2, %bb.x ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %indvars.iv26.i.i.2
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !79
  %i.hd = sext i16 %i.hc to i32
  %i.he = add nsw i32 %i.hd, %i.ha                ; 4 uses
  %i.hf = icmp sgt i32 %i.he, %19
  br i1 %i.hf, label %.loopexit.i.i.2, label %bb.u

bb.u:                                             ; preds = %.preheader4.i.i.2
  %.not120.i.i.2 = icmp slt i32 %i.he, %spec.select.i88.i.2.a
  br i1 %.not120.i.i.2, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hg = load float, ptr %i.gw, align 4, !tbaa !29
  %i.hh = sitofp nsz i32 %i.he to float
  %i.hi = fsub nsz float %i.hh, %i.ef             ; 2 uses
  %i.hj = fmul nsz float %i.hi, %i.hi
  %i.hk = fadd nsz float %i.hj, %i.hg             ; 2 uses
  %i.hl = sext i32 %i.he to i64                   ; 2 uses
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.hl ; 2 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !29
  %i.ho = fcmp nsz ogt float %i.hn, %i.hk
  br i1 %i.ho, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store float %i.hk, ptr %i.hm, align 4, !tbaa !29
  %i.hp = trunc i64 %indvars.iv26.i.i.2 to i8
  %i.hq = getelementptr inbounds i8, ptr %i.ei, i64 %i.hl
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !77
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %indvars.iv.next27.i.i.2 = add nuw nsw i64 %indvars.iv26.i.i.2, 1 ; 2 uses
  %exitcond29.not.i.i.2 = icmp eq i64 %indvars.iv.next27.i.i.2, 32
  br i1 %exitcond29.not.i.i.2, label %.loopexit.i.i.2, label %.preheader4.i.i.2, !llvm.loop !52

.loopexit.i.i.2:                                  ; preds = %.preheader4.i.i.2, %bb.x, %.lr.ph.i.i.2
  %indvars.iv.next31.i.i.2 = add nuw nsw i64 %indvars.iv30.i.i.2, 1 ; 2 uses
  %i.hr = trunc nuw i64 %indvars.iv.next31.i.i.2 to i32
  %i.hs = uitofp nsz nneg i32 %i.hr to float
  %i.ht = fcmp nsz ogt float %18, %i.hs
  br i1 %i.ht, label %.lr.ph.i.i.2, label %._crit_edge.i.i.2, !llvm.loop !53

._crit_edge.i.i.2:                                ; preds = %.critedge66, %.loopexit.i.i.2, %._crit_edge.loopexit.i.i.1, %._crit_edge.loopexit.i.i
  %indvars.iv.next34.i.i = add nuw nsw i64 %indvars.iv33.i.i, 1 ; 2 uses
  %exitcond36.not.i.i = icmp eq i64 %indvars.iv.next34.i.i, 23
  br i1 %exitcond36.not.i.i, label %.preheader3.i.i, label %.preheader5.i.i, !llvm.loop !54

bb.y:                                             ; preds = %bb.y, %.preheader3.i.i
  %indvars.iv37.i.i = phi i64 [ 0, %.preheader3.i.i ], [ %indvars.iv.next38.i.i.1, %bb.y ] ; 4 uses
  %.09918.i.i = phi float [ +inf, %.preheader3.i.i ], [ %.1100.i.i.1, %bb.y ] ; 2 uses
  %.010117.i.i = phi i32 [ -1, %.preheader3.i.i ], [ %.1102.i.i.1, %bb.y ]
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv37.i.i
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !29 ; 2 uses
  %i.hw = fcmp nsz ogt float %.09918.i.i, %i.hv   ; 2 uses
  %i.hx = trunc nuw nsw i64 %indvars.iv37.i.i to i32
  %.1102.i.i = select i1 %i.hw, i32 %i.hx, i32 %.010117.i.i
  %.1100.i.i = select nsz i1 %i.hw, float %i.hv, float %.09918.i.i ; 2 uses
  %indvars.iv.next38.i.i = or disjoint i64 %indvars.iv37.i.i, 1 ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next38.i.i
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !29 ; 2 uses
  %i.ia = fcmp nsz ogt float %.1100.i.i, %i.hz    ; 2 uses
  %i.ib = trunc nuw nsw i64 %indvars.iv.next38.i.i to i32
  %.1102.i.i.1 = select i1 %i.ia, i32 %i.ib, i32 %.1102.i.i ; 3 uses
  %.1100.i.i.1 = select nsz i1 %i.ia, float %i.hz, float %.1100.i.i
  %indvars.iv.next38.i.i.1 = add nuw nsw i64 %indvars.iv37.i.i, 2 ; 2 uses
  %exitcond40.not.i.i.1 = icmp eq i64 %indvars.iv.next38.i.i.1, 35768
  br i1 %exitcond40.not.i.i.1, label %.preheader.i.preheader.i, label %bb.y, !llvm.loop !55

.preheader.i.preheader.i:                         ; preds = %bb.y
  %i.ic = getelementptr inbounds nuw i8, ptr %.val85.i, i64 786896
  %i.id = sext i32 %.1102.i.i.1 to i64
  %i.ie = getelementptr inbounds i8, ptr %i.ic, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !77  ; 2 uses
  %i.ig = zext i8 %i.if to i32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 %i.ig, ptr %i.ih, align 8, !tbaa !80
  %i.ii = zext i8 %i.if to i64
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.ii
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !79
  %i.il = sext i16 %i.ik to i32
  %i.im = sub nsw i32 %.1102.i.i.1, %i.il         ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.val85.i, i64 751128
  %i.io = sext i32 %i.im to i64
  %i.ip = getelementptr inbounds i8, ptr %i.in, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !77  ; 2 uses
  %i.ir = zext i8 %i.iq to i32
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !80
  %i.it = zext i8 %i.iq to i64
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !79
  %i.iw = sext i16 %i.iv to i32
  %i.ix = sub nsw i32 %i.im, %i.iw                ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.val85.i, i64 715360
  %i.iz = sext i32 %i.ix to i64
  %i.ja = getelementptr inbounds i8, ptr %i.iy, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !77  ; 2 uses
  %i.jc = zext i8 %i.jb to i32
  %i.jd = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 %i.jc, ptr %i.jd, align 16, !tbaa !80
  %i.je = zext i8 %i.jb to i64
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !79
  %i.jh = sext i16 %i.jg to i32
  %i.ji = sub nsw i32 %i.ix, %i.jh                ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.val85.i, i64 679592
  %i.jk = sext i32 %i.ji to i64
  %i.jl = getelementptr inbounds i8, ptr %i.jj, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !77  ; 2 uses
  %i.jn = zext i8 %i.jm to i32
  %i.jo = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !80
  %i.jp = zext i8 %i.jm to i64
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.jp
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !79
  %i.js = sext i16 %i.jr to i32
  %i.jt = sub nsw i32 %i.ji, %i.js                ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.val85.i, i64 643824
  %i.jv = sext i32 %i.jt to i64
  %i.jw = getelementptr inbounds i8, ptr %i.ju, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !77  ; 2 uses
  %i.jy = zext i8 %i.jx to i32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 %i.jy, ptr %i.jz, align 8, !tbaa !80
  %i.ka = zext i8 %i.jx to i64
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.ka
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !79
  %i.kd = sext i16 %i.kc to i32
  %i.ke = sub nsw i32 %i.jt, %i.kd                ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.val85.i, i64 608056
  %i.kg = sext i32 %i.ke to i64
  %i.kh = getelementptr inbounds i8, ptr %i.kf, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !77  ; 2 uses
  %i.kj = zext i8 %i.ki to i32
  %i.kk = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !80
  %i.kl = zext i8 %i.ki to i64
  %i.km = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.kl
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !79
  %i.ko = sext i16 %i.kn to i32
  %i.kp = sub nsw i32 %i.ke, %i.ko                ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.val85.i, i64 572288
  %i.kr = sext i32 %i.kp to i64
  %i.ks = getelementptr inbounds i8, ptr %i.kq, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !77  ; 2 uses
  %i.ku = zext i8 %i.kt to i32
  %i.kv = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 %i.ku, ptr %i.kv, align 16, !tbaa !80
  %i.kw = zext i8 %i.kt to i64
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.kw
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !79
  %i.kz = sext i16 %i.ky to i32
  %i.la = sub nsw i32 %i.kp, %i.kz                ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.val85.i, i64 536520
  %i.lc = sext i32 %i.la to i64
  %i.ld = getelementptr inbounds i8, ptr %i.lb, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !77  ; 2 uses
  %i.lf = zext i8 %i.le to i32
  %i.lg = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !80
  %i.lh = zext i8 %i.le to i64
  %i.li = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !79
  %i.lk = sext i16 %i.lj to i32
  %i.ll = sub nsw i32 %i.la, %i.lk                ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.val85.i, i64 500752
  %i.ln = sext i32 %i.ll to i64
  %i.lo = getelementptr inbounds i8, ptr %i.lm, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !77  ; 2 uses
  %i.lq = zext i8 %i.lp to i32
  %i.lr = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %i.lq, ptr %i.lr, align 8, !tbaa !80
  %i.ls = zext i8 %i.lp to i64
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.ls
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !79
  %i.lv = sext i16 %i.lu to i32
  %i.lw = sub nsw i32 %i.ll, %i.lv                ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.val85.i, i64 464984
  %i.ly = sext i32 %i.lw to i64
  %i.lz = getelementptr inbounds i8, ptr %i.lx, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !77  ; 2 uses
  %i.mb = zext i8 %i.ma to i32
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 %i.mb, ptr %i.mc, align 4, !tbaa !80
  %i.md = zext i8 %i.ma to i64
  %i.me = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.md
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !79
  %i.mg = sext i16 %i.mf to i32
  %i.mh = sub nsw i32 %i.lw, %i.mg                ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.val85.i, i64 429216
  %i.mj = sext i32 %i.mh to i64
  %i.mk = getelementptr inbounds i8, ptr %i.mi, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !77  ; 2 uses
  %i.mm = zext i8 %i.ml to i32
  %i.mn = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %i.mm, ptr %i.mn, align 16, !tbaa !80
  %i.mo = zext i8 %i.ml to i64
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.mo
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !79
  %i.mr = sext i16 %i.mq to i32
  %i.ms = sub nsw i32 %i.mh, %i.mr                ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.val85.i, i64 393448
  %i.mu = sext i32 %i.ms to i64
  %i.mv = getelementptr inbounds i8, ptr %i.mt, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !77  ; 2 uses
  %i.mx = zext i8 %i.mw to i32
  %i.my = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !80
  %i.mz = zext i8 %i.mw to i64
  %i.na = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.mz
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !79
  %i.nc = sext i16 %i.nb to i32
  %i.nd = sub nsw i32 %i.ms, %i.nc                ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.val85.i, i64 357680
  %i.nf = sext i32 %i.nd to i64
  %i.ng = getelementptr inbounds i8, ptr %i.ne, i64 %i.nf
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !77  ; 2 uses
  %i.ni = zext i8 %i.nh to i32
  %i.nj = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %i.ni, ptr %i.nj, align 8, !tbaa !80
  %i.nk = zext i8 %i.nh to i64
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.nk
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !79
  %i.nn = sext i16 %i.nm to i32
  %i.no = sub nsw i32 %i.nd, %i.nn                ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.val85.i, i64 321912
  %i.nq = sext i32 %i.no to i64
  %i.nr = getelementptr inbounds i8, ptr %i.np, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !77  ; 2 uses
  %i.nt = zext i8 %i.ns to i32
  %i.nu = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.nt, ptr %i.nu, align 4, !tbaa !80
  %i.nv = zext i8 %i.ns to i64
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr @ff_nelly_delta_table, i64 %i.nv
  %i.nx = load i16, ptr %i.nw, align 2, !tbaa !79
  %i.ny = sext i16 %i.nx to i32
  %i.nz = sub nsw i32 %i.no, %i.ny                ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.val85.i, i64 286144
  %i.ob = sext i32 %i.nz to i64
  %i.oc = getelementptr inbounds i8, ptr %i.oa, i64 %i.ob
end_hunk_0
