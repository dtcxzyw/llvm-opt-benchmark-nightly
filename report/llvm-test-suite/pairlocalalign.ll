Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/pairlocalalign?download=true
inline.NumInlined: 26
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
bb.j:                                             ; preds = %bb.i
  %i.ax = tail call i64 @fwrite(ptr nonnull @.str.22, i64 4, i64 1, ptr %i.au) ; 0 uses
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ay = load i32, ptr @scoremtx, align 4, !tbaa !4
  switch i32 %i.ay, label %bb.o [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.az = load i32, ptr @pamN, align 4, !tbaa !4
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.23, i32 noundef %i.az) #20 ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bb = load i32, ptr @nblosum, align 4, !tbaa !4
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.24, i32 noundef %i.bb) #20 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bd = tail call i64 @fwrite(ptr nonnull @.str.25, i64 4, i64 1, ptr %i.au) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.bf = load i32, ptr @ppenalty, align 4, !tbaa !4
  %i.bg = sitofp i32 %i.bf to double
  %i.bh = fdiv double %i.bg, 1.000000e+03
  %i.bi = load i32, ptr @ppenalty_ex, align 4, !tbaa !4
  %i.bj = load i32, ptr @poffset, align 4, !tbaa !4
  %i.bk = insertelement <2 x i32> poison, i32 %i.bi, i64 0
  %i.bl = insertelement <2 x i32> %i.bk, i32 %i.bj, i64 1
  %i.bm = sitofp <2 x i32> %i.bl to <2 x double>
  %i.bn = fdiv <2 x double> %i.bm, splat (double 1.000000e+03) ; 2 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 0
  %i.bp = extractelement <2 x double> %i.bn, i64 1
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.26, double noundef %i.bh, double noundef %i.bo, double noundef %i.bp) #19 ; 0 uses
  %i.br = load i8, ptr @use_fft, align 1, !tbaa !8
  %.not.i = icmp eq i8 %i.br, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = tail call i64 @fwrite(ptr nonnull @.str.27, i64 7, i64 1, ptr %i.au) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bt = tail call i64 @fwrite(ptr nonnull @.str.28, i64 17, i64 1, ptr %i.au) ; 0 uses
  %i.bu = load i32, ptr @tbrweight, align 4, !tbaa !4
  switch i32 %i.bu, label %bb.t [
    i32 0, label %bb.r
    i32 3, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.bv = tail call i64 @fwrite(ptr nonnull @.str.29, i64 11, i64 1, ptr %i.au) ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bw = tail call i64 @fwrite(ptr nonnull @.str.30, i64 24, i64 1, ptr %i.au) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.bx = load i32, ptr @tbitr, align 4, !tbaa !4
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = load i32, ptr @tbweight, align 4
  %i.ca = icmp ne i32 %i.bz, 0
  %or.cond.i = select i1 %i.by, i1 true, i1 %i.ca
  br i1 %or.cond.i, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.cb = tail call i64 @fwrite(ptr nonnull @.str.31, i64 21, i64 1, ptr %i.au) ; 0 uses
  %i.cc = load i32, ptr @tbitr, align 4, !tbaa !4 ; 2 uses
  %i.cd = icmp ne i32 %i.cc, 0
  %i.ce = load i32, ptr @tbrweight, align 4       ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  %or.cond3.i = select i1 %i.cd, i1 %i.cf, i1 false
  br i1 %or.cond3.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cg = tail call i64 @fwrite(ptr nonnull @.str.32, i64 13, i64 1, ptr %i.au) ; 0 uses
  %.pre.i = load i32, ptr @tbitr, align 4, !tbaa !4
  %.pre37.i = load i32, ptr @tbrweight, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ch = phi i32 [ %.pre37.i, %bb.v ], [ %i.ce, %bb.u ]
  %i.ci = phi i32 [ %.pre.i, %bb.v ], [ %i.cc, %bb.u ]
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = icmp eq i32 %i.ch, 3
  %or.cond5.i = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond5.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cl = tail call i64 @fwrite(ptr nonnull @.str.33, i64 21, i64 1, ptr %i.au) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cm = load i32, ptr @tbweight, align 4, !tbaa !4
  %.not34.i = icmp eq i32 %i.cm, 0
  br i1 %.not34.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = tail call i64 @fwrite(ptr nonnull @.str.34, i64 11, i64 1, ptr %i.au) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %fputc.i = tail call i32 @fputc(i32 10, ptr %i.au) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.t
  %i.co = load i32, ptr @ppenalty, align 4, !tbaa !4
  %i.cp = sitofp i32 %i.co to double
  %i.cq = fdiv double %i.cp, 1.000000e+03
  %i.cr = load i32, ptr @ppenalty_ex, align 4, !tbaa !4
  %i.cs = load i32, ptr @poffset, align 4, !tbaa !4
  %i.ct = insertelement <2 x i32> poison, i32 %i.cr, i64 0
  %i.cu = insertelement <2 x i32> %i.ct, i32 %i.cs, i64 1
  %i.cv = sitofp <2 x i32> %i.cu to <2 x double>
  %i.cw = fdiv <2 x double> %i.cv, splat (double 1.000000e+03) ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0
  %i.cy = extractelement <2 x double> %i.cw, i64 1
  %i.cz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.26, double noundef %i.cq, double noundef %i.cx, double noundef %i.cy) #20 ; 0 uses
  %i.da = load i8, ptr @alg, align 1, !tbaa !8
  switch i8 %i.da, label %bb.ag [
    i8 97, label %bb.ac
    i8 65, label %bb.ad
    i8 83, label %bb.ae
    i8 67, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.db = tail call i64 @fwrite(ptr nonnull @.str.36, i64 12, i64 1, ptr %i.au) ; 0 uses
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.dc = tail call i64 @fwrite(ptr nonnull @.str.37, i64 13, i64 1, ptr %i.au) ; 0 uses
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.dd = tail call i64 @fwrite(ptr nonnull @.str.38, i64 12, i64 1, ptr %i.au) ; 0 uses
  br label %bb.ah

bb.af:                                            ; preds = %bb.ab
  %i.de = tail call i64 @fwrite(ptr nonnull @.str.39, i64 15, i64 1, ptr %i.au) ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ab
  %i.df = tail call i64 @fwrite(ptr nonnull @.str.40, i64 18, i64 1, ptr %i.au) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.dg = load i8, ptr @use_fft, align 1, !tbaa !8
  %.not35.i = icmp eq i8 %i.dg, 0
  br i1 %.not35.i, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dh = tail call i64 @fwrite(ptr nonnull @.str.27, i64 7, i64 1, ptr %i.au) ; 0 uses
  %i.di = load i32, ptr @dorp, align 4, !tbaa !4
  %i.dj = icmp eq i32 %i.di, 100
  br i1 %i.dj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dk = tail call i64 @fwrite(ptr nonnull @.str.41, i64 22, i64 1, ptr %i.au) ; 0 uses
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.dl = load i32, ptr @fftscore, align 4, !tbaa !4
  %.not36.i = icmp eq i32 %i.dl, 0
  br i1 %.not36.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dm = tail call i64 @fwrite(ptr nonnull @.str.42, i64 28, i64 1, ptr %i.au) ; 0 uses
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.dn = tail call i64 @fwrite(ptr nonnull @.str.43, i64 23, i64 1, ptr %i.au) ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.aj
  %i.do = load i32, ptr @fftThreshold, align 4, !tbaa !4
  %i.dp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.44, i32 noundef %i.do) #20 ; 0 uses
  %i.dq = load i32, ptr @fftWinSize, align 4, !tbaa !4
  %i.dr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.45, i32 noundef %i.dq) #20 ; 0 uses
  br label %WriteOptions.exit

bb.ao:                                            ; preds = %bb.ah
  %i.ds = tail call i64 @fwrite(ptr nonnull @.str.46, i64 8, i64 1, ptr %i.au) ; 0 uses
  br label %WriteOptions.exit

WriteOptions.exit:                                ; preds = %bb.an, %bb.ao
  %i.dt = tail call i32 @fflush(ptr noundef %i.au) ; 0 uses
  %i.du = load ptr, ptr @main.seq, align 8, !tbaa !27
  %i.dv = tail call signext i8 @seqcheck(ptr noundef %i.du) #20 ; 2 uses
  %.not23 = icmp eq i8 %i.dv, 0
  br i1 %.not23, label %.preheader28, label %bb.ap

.preheader28:                                     ; preds = %WriteOptions.exit
  %i.dw = load i32, ptr @njob, align 4, !tbaa !4  ; 5 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph, label %.preheader.._crit_edge_crit_edge

.lr.ph:                                           ; preds = %.preheader28
  %i.dy = load ptr, ptr @main.eff, align 8, !tbaa !30 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.dw to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.dw, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.dz, align 8, !tbaa !12
  store <2 x double> splat (double 1.000000e+00), ptr %i.ea, align 8, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph49.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.ap:                                            ; preds = %WriteOptions.exit
  %i.ec = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.ed = sext i8 %i.dv to i32
  %i.ee = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ec, ptr noundef nonnull @.str.16, i32 noundef %i.ed) #19 ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader28
  %.pre = sext i32 %i.dw to i64
  br label %._crit_edge

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.ef, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph49.preheader, label %scalar.ph, !llvm.loop !33

.lr.ph49.preheader:                               ; preds = %scalar.ph, %middle.block
  br label %.lr.ph49

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %.lr.ph49
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph49 ], [ 0, %.lr.ph49.preheader ] ; 3 uses
  %i.eg = load ptr, ptr @main.bseq, align 8, !tbaa !27
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv69
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !9
  %i.ej = load ptr, ptr @main.seq, align 8, !tbaa !27
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv69
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !9
  tail call void @gappick0(ptr noundef %i.ei, ptr noundef %i.el) #20
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.em = load i32, ptr @njob, align 4, !tbaa !4  ; 2 uses
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = icmp slt i64 %indvars.iv.next70, %i.en
  br i1 %i.eo, label %.lr.ph49, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph49, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.en, %.lr.ph49 ] ; 7 uses
  %.lcssa45 = phi i32 [ %i.dw, %.preheader.._crit_edge_crit_edge ], [ %i.em, %.lr.ph49 ] ; 4 uses
  %i.ep = mul nsw i32 %i.an, 9                    ; 18 uses
  %i.eq = load ptr, ptr @main.bseq, align 8, !tbaa !27 ; 9 uses
  %i.er = load ptr, ptr @main.aseq, align 8, !tbaa !27 ; 4 uses
  %i.es = load ptr, ptr @main.mseq1, align 8, !tbaa !27 ; 24 uses
  %i.et = load ptr, ptr @main.mseq2, align 8, !tbaa !27 ; 24 uses
  %i.eu = load ptr, ptr @main.eff, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.ev = tail call noalias ptr @calloc(i64 noundef %.pre-phi, i64 noundef 8) #23 ; 4 uses
  %i.ew = icmp sgt i32 %.lcssa45, 0
  br i1 %i.ew, label %.lr.ph25.i, label %._crit_edge26.i

.lr.ph25.i:                                       ; preds = %._crit_edge
  %xtraiter = and i64 %.pre-phi, 1
  %2 = icmp eq i64 %.pre-phi, 1
  %unroll_iter = and i64 %.pre-phi, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod160 = trunc i64 %.pre-phi to i1
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph25.i, %._crit_edge.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i, %._crit_edge.i ], [ 0, %.lr.ph25.i ] ; 2 uses
  %3 = tail call noalias ptr @calloc(i64 noundef %.pre-phi, i64 noundef 80) #23 ; 4 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv90.i
  store ptr %3, ptr %4, align 8, !tbaa !35
  br i1 %2, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.ex = getelementptr inbounds nuw [80 x i8], ptr %3, i64 %indvars.iv.i ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i8 -1, i64 16, i1 false)
  store double -1.000000e+00, ptr %i.ez, align 8, !tbaa !37
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr null, ptr %i.fa, align 8, !tbaa !39
  store i32 0, ptr %i.ex, align 8, !tbaa !40
  %i.fb = getelementptr inbounds nuw [80 x i8], ptr %3, i64 %indvars.iv.i ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 104
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i8 -1, i64 16, i1 false)
  store double -1.000000e+00, ptr %i.fe, align 8, !tbaa !37
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 88
  store ptr null, ptr %i.ff, align 8, !tbaa !39
  store i32 0, ptr %i.fc, align 8, !tbaa !40
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !41

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod160)
  %i.fg = getelementptr inbounds nuw [80 x i8], ptr %3, i64 %indvars.iv.i.epil.init ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, i8 -1, i64 16, i1 false)
  store double -1.000000e+00, ptr %i.fi, align 8, !tbaa !37
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr null, ptr %i.fj, align 8, !tbaa !39
  store i32 0, ptr %i.fg, align 8, !tbaa !40
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next91.i, %.pre-phi
  br i1 %exitcond72.not, label %._crit_edge26.i, label %.lr.ph.preheader.i, !llvm.loop !42

._crit_edge26.i:                                  ; preds = %._crit_edge.i, %._crit_edge
  %i.fk = load ptr, ptr @pairalign.effarr1, align 8, !tbaa !30
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge26.i
  %i.fm = tail call ptr @AllocateDoubleMtx(i32 noundef %.lcssa45, i32 noundef %.lcssa45) #20
  store ptr %i.fm, ptr @pairalign.distancemtx, align 8, !tbaa !43
  %i.fn = load i32, ptr @njob, align 4, !tbaa !4
  %i.fo = tail call ptr @AllocateDoubleVec(i32 noundef %i.fn) #20
  store ptr %i.fo, ptr @pairalign.effarr1, align 8, !tbaa !30
  %i.fp = load i32, ptr @njob, align 4, !tbaa !4
  %i.fq = tail call ptr @AllocateDoubleVec(i32 noundef %i.fp) #20
  store ptr %i.fq, ptr @pairalign.effarr2, align 8, !tbaa !30
  %i.fr = tail call ptr @AllocateCharVec(i32 noundef 150) #20
  store ptr %i.fr, ptr @pairalign.indication1, align 8, !tbaa !9
  %i.fs = tail call ptr @AllocateCharVec(i32 noundef 150) #20
  store ptr %i.fs, ptr @pairalign.indication2, align 8, !tbaa !9
  %i.ft = load i32, ptr @njob, align 4, !tbaa !4  ; 2 uses
  %i.fu = tail call ptr @AllocateCharMtx(i32 noundef %i.ft, i32 noundef %i.ft) #20
  store ptr %i.fu, ptr @pairalign.pair, align 8, !tbaa !27
  %.pre.i27 = load i32, ptr @njob, align 4, !tbaa !4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge26.i
  %i.fv = phi i32 [ %.pre.i27, %bb.aq ], [ %.lcssa45, %._crit_edge26.i ] ; 3 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.preheader8.preheader.i, label %._crit_edge33.i

.preheader8.preheader.i:                          ; preds = %bb.ar
  %i.fx = load ptr, ptr @pairalign.pair, align 8  ; 2 uses
  br label %.preheader8.i

.preheader8.i:                                    ; preds = %._crit_edge29.i, %.preheader8.preheader.i
  %i.fy = phi i32 [ %i.fv, %.preheader8.preheader.i ], [ %i.gh, %._crit_edge29.i ] ; 3 uses
  %indvars.iv96.i = phi i64 [ 0, %.preheader8.preheader.i ], [ %indvars.iv.next97.i, %._crit_edge29.i ] ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %.lr.ph28.i, label %.preheader8.._crit_edge29_crit_edge.i

.preheader8.._crit_edge29_crit_edge.i:            ; preds = %.preheader8.i
  %.pre144.i = sext i32 %i.fy to i64
  br label %._crit_edge29.i

.lr.ph28.i:                                       ; preds = %.preheader8.i
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv96.i
  br label %bb.as

.preheader7.i:                                    ; preds = %._crit_edge29.i
  %i.gb = icmp sgt i32 %i.gh, 0
  br i1 %i.gb, label %.lr.ph32.i, label %._crit_edge33.i

bb.as:                                            ; preds = %bb.as, %.lr.ph28.i
  %indvars.iv93.i = phi i64 [ 0, %.lr.ph28.i ], [ %indvars.iv.next94.i, %bb.as ] ; 2 uses
  %i.gc = load ptr, ptr %i.ga, align 8, !tbaa !9
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv93.i
  store i8 0, ptr %i.gd, align 1, !tbaa !8
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %i.ge = load i32, ptr @njob, align 4, !tbaa !4  ; 2 uses
  %i.gf = sext i32 %i.ge to i64                   ; 2 uses
  %i.gg = icmp slt i64 %indvars.iv.next94.i, %i.gf
  br i1 %i.gg, label %bb.as, label %._crit_edge29.i, !llvm.loop !45

._crit_edge29.i:                                  ; preds = %bb.as, %.preheader8.._crit_edge29_crit_edge.i
  %.pre-phi145.i = phi i64 [ %.pre144.i, %.preheader8.._crit_edge29_crit_edge.i ], [ %i.gf, %bb.as ]
  %i.gh = phi i32 [ %i.fy, %.preheader8.._crit_edge29_crit_edge.i ], [ %i.ge, %bb.as ] ; 3 uses
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %i.gi = icmp slt i64 %indvars.iv.next97.i, %.pre-phi145.i
  br i1 %i.gi, label %.preheader8.i, label %.preheader7.i, !llvm.loop !46

.lr.ph32.i:                                       ; preds = %.preheader7.i, %.lr.ph32.i
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %.lr.ph32.i ], [ 0, %.preheader7.i ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv99.i
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !9
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %indvars.iv99.i
  store i8 1, ptr %i.gl, align 1, !tbaa !8
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %i.gm = load i32, ptr @njob, align 4, !tbaa !4  ; 2 uses
  %i.gn = sext i32 %i.gm to i64
  %i.go = icmp slt i64 %indvars.iv.next100.i, %i.gn
  br i1 %i.go, label %.lr.ph32.i, label %._crit_edge33.i, !llvm.loop !48

._crit_edge33.i:                                  ; preds = %.lr.ph32.i, %.preheader7.i, %bb.ar
  %i.gp = phi i32 [ %i.fv, %bb.ar ], [ %i.gh, %.preheader7.i ], [ %i.gm, %.lr.ph32.i ]
  %i.gq = load i8, ptr @alg, align 1, !tbaa !8
  switch i8 %i.gq, label %bb.bv [
    i8 72, label %bb.at
    i8 66, label %bb.bn
    i8 84, label %bb.bo
    i8 115, label %bb.bp
  ]

bb.at:                                            ; preds = %._crit_edge33.i
  %i.gr = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.gs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gr, ptr noundef nonnull @.str.48, ptr noundef nonnull @foldalignopt) #19 ; 0 uses
  %i.gt = load i32, ptr @njob, align 4, !tbaa !4  ; 4 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph.preheader.i.i, label %._crit_edge.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.at
  %wide.trip.count.i.i = zext nneg i32 %i.gt to i64 ; 3 uses
  %xtraiter169 = and i64 %wide.trip.count.i.i, 1
  %i.gv = icmp eq i32 %i.gt, 1
  br i1 %i.gv, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter172 = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %t2u.exit.i.i.1, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %t2u.exit.i.i.1 ] ; 3 uses
  %niter173 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter173.next.1, %t2u.exit.i.i.1 ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i.i
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !9
  br label %bb.au

bb.au:                                            ; preds = %bb.az, %.lr.ph.i.i
  %.0.i.i.i = phi ptr [ %i.gx, %.lr.ph.i.i ], [ %i.gz, %bb.az ] ; 3 uses
  %i.gy = load i8, ptr %.0.i.i.i, align 1, !tbaa !8
  switch i8 %i.gy, label %bb.ay [
    i8 0, label %t2u.exit.i.i
    i8 65, label %bb.az
    i8 97, label %bb.az
    i8 84, label %bb.av
    i8 116, label %bb.av
    i8 85, label %bb.av
    i8 117, label %bb.av
    i8 71, label %bb.aw
    i8 103, label %bb.aw
    i8 67, label %bb.ax
    i8 99, label %bb.ax
  ]

bb.av:                                            ; preds = %bb.au, %bb.au, %bb.au, %bb.au
  br label %bb.az

bb.aw:                                            ; preds = %bb.au, %bb.au
  br label %bb.az

bb.ax:                                            ; preds = %bb.au, %bb.au
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.au
  %.sink.i.i.i = phi i8 [ 97, %bb.au ], [ 97, %bb.au ], [ 117, %bb.av ], [ 103, %bb.aw ], [ 99, %bb.ax ], [ 110, %bb.ay ]
  store i8 %.sink.i.i.i, ptr %.0.i.i.i, align 1, !tbaa !8
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.au, !llvm.loop !49

t2u.exit.i.i:                                     ; preds = %bb.au
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !9
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bf, %t2u.exit.i.i
  %.0.i.i.i.1 = phi ptr [ %i.hc, %t2u.exit.i.i ], [ %i.he, %bb.bf ] ; 3 uses
  %i.hd = load i8, ptr %.0.i.i.i.1, align 1, !tbaa !8
  switch i8 %i.hd, label %bb.be [
    i8 0, label %t2u.exit.i.i.1
    i8 65, label %bb.bf
    i8 97, label %bb.bf
    i8 84, label %bb.bd
    i8 116, label %bb.bd
    i8 85, label %bb.bd
    i8 117, label %bb.bd
    i8 71, label %bb.bc
    i8 103, label %bb.bc
    i8 67, label %bb.bb
    i8 99, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba, %bb.ba
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba
  br label %bb.bf

t2u.exit.i.i.1:                                   ; preds = %bb.ba
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter173.next.1 = add i64 %niter173, 2         ; 2 uses
  %niter173.ncmp.1 = icmp eq i64 %niter173.next.1, %unroll_iter172
  br i1 %niter173.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !50

bb.be:                                            ; preds = %bb.ba
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ba
  %.sink.i.i.i.1 = phi i8 [ 97, %bb.ba ], [ 97, %bb.ba ], [ 117, %bb.bd ], [ 103, %bb.bc ], [ 99, %bb.bb ], [ 110, %bb.be ]
  store i8 %.sink.i.i.i.1, ptr %.0.i.i.i.1, align 1, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i.i.i.1, i64 1
  br label %bb.ba, !llvm.loop !49

._crit_edge.i.i.unr-lcssa:                        ; preds = %t2u.exit.i.i.1
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod171 = trunc i32 %i.gt to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i.i.epil.init
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !9
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bl, %.lr.ph.i.i.epil.preheader
  %.0.i.i.i.epil = phi ptr [ %i.hg, %.lr.ph.i.i.epil.preheader ], [ %i.hi, %bb.bl ] ; 3 uses
  %i.hh = load i8, ptr %.0.i.i.i.epil, align 1, !tbaa !8
  switch i8 %i.hh, label %bb.bk [
    i8 0, label %._crit_edge.i.i
    i8 65, label %bb.bl
    i8 97, label %bb.bl
    i8 84, label %bb.bj
    i8 116, label %bb.bj
    i8 85, label %bb.bj
    i8 117, label %bb.bj
    i8 71, label %bb.bi
    i8 103, label %bb.bi
    i8 67, label %bb.bh
    i8 99, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg, %bb.bg
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bg, %bb.bg, %bb.bg, %bb.bg
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bg
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bg
  %.sink.i.i.i.epil = phi i8 [ 97, %bb.bg ], [ 97, %bb.bg ], [ 117, %bb.bj ], [ 103, %bb.bi ], [ 99, %bb.bh ], [ 110, %bb.bk ]
  store i8 %.sink.i.i.i.epil, ptr %.0.i.i.i.epil, align 1, !tbaa !8
  %i.hi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.epil, i64 1
  br label %bb.bg, !llvm.loop !49

._crit_edge.i.i:                                  ; preds = %bb.bg, %._crit_edge.i.i.unr-lcssa
  %i.hj = tail call noalias ptr @fopen(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.58) ; 4 uses
  %.not.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i, label %bb.bm, label %.lr.ph18.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.at
  %i.hk = tail call noalias ptr @fopen(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.58) ; 2 uses
  %.not27.i.i = icmp eq ptr %i.hk, null
  br i1 %.not27.i.i, label %bb.bm, label %._crit_edge19.i.i

bb.bm:                                            ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %i.hl = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.hm = tail call i64 @fwrite(ptr nonnull @.str.63, i64 25, i64 1, ptr %i.hl) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable

.lr.ph18.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph18.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i, %.lr.ph18.i.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 3 uses
  %i.hn = trunc nuw nsw i64 %indvars.iv.next22.i.i to i32
  %i.ho = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.hj, ptr noundef nonnull @.str.64, i32 noundef %i.hn) #20 ; 0 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv21.i.i
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !9
  %i.hr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.hj, ptr noundef nonnull @.str.65, ptr noundef %i.hq) #20 ; 0 uses
  %exitcond25.not.i.i = icmp eq i64 %indvars.iv.next22.i.i, %wide.trip.count.i.i
  br i1 %exitcond25.not.i.i, label %._crit_edge19.i.i, label %.lr.ph18.i.i, !llvm.loop !51

._crit_edge19.i.i:                                ; preds = %.lr.ph18.i.i, %._crit_edge.thread.i.i
  %i.hs = phi ptr [ %i.hk, %._crit_edge.thread.i.i ], [ %i.hj, %.lr.ph18.i.i ]
  %i.ht = tail call i32 @fclose(ptr noundef nonnull %i.hs) ; 0 uses
  %i.hu = load ptr, ptr @whereispairalign, align 8, !tbaa !9
  %i.hv = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @callfoldalign.com, ptr noundef nonnull dereferenceable(1) @.str.66, ptr noundef %i.hu, ptr noundef nonnull @foldalignopt) #20 ; 0 uses
  %i.hw = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.hx = tail call i64 @fwrite(ptr nonnull @.str.67, i64 29, i64 1, ptr %i.hw) #21 ; 0 uses
  tail call void @abort() #24
  unreachable

bb.bn:                                            ; preds = %._crit_edge33.i
  %i.hy = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.hz = tail call i64 @fwrite(ptr nonnull @.str.49, i64 56, i64 1, ptr %i.hy) #21 ; 0 uses
  %i.ia = load i32, ptr @njob, align 4, !tbaa !4
  tail call fastcc void @calllara(i32 noundef %i.ia, ptr noundef readonly %i.eq, ptr noundef nonnull @.str.50)
  unreachable

bb.bo:                                            ; preds = %._crit_edge33.i
  %i.ib = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.ic = tail call i64 @fwrite(ptr nonnull @.str.51, i64 57, i64 1, ptr %i.ib) #21 ; 0 uses
  %i.id = load i32, ptr @njob, align 4, !tbaa !4
  tail call fastcc void @calllara(i32 noundef %i.id, ptr noundef readonly %i.eq, ptr noundef nonnull @.str.52)
  unreachable

bb.bp:                                            ; preds = %._crit_edge33.i
  %i.ie = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.if = tail call i64 @fwrite(ptr nonnull @.str.53, i64 14, i64 1, ptr %i.ie) #21 ; 0 uses
  %i.ig = load i32, ptr @njob, align 4, !tbaa !4  ; 3 uses
  %i.ih = sext i32 %i.ig to i64
  %i.ii = tail call noalias ptr @calloc(i64 noundef %i.ih, i64 noundef 8) #23 ; 2 uses
  %i.ij = tail call noalias ptr @fopen(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.11) ; 8 uses
  %.not.i265.i = icmp eq ptr %i.ij, null
  br i1 %.not.i265.i, label %bb.bq, label %.preheader.i266.i

.preheader.i266.i:                                ; preds = %bb.bp
  %i.ik = icmp sgt i32 %i.ig, 0
  br i1 %i.ik, label %.lr.ph.preheader.i268.i, label %preparebpp.exit.i

.lr.ph.preheader.i268.i:                          ; preds = %.preheader.i266.i
  %wide.trip.count.i269.i = zext nneg i32 %i.ig to i64
  br label %.lr.ph.i270.i

bb.bq:                                            ; preds = %bb.bp
  %i.il = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.im = tail call i64 @fwrite(ptr nonnull @.str.72, i64 17, i64 1, ptr %i.il) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable

.lr.ph.i270.i:                                    ; preds = %readhat4.exit.i.i, %.lr.ph.preheader.i268.i
  %indvars.iv.i271.i = phi i64 [ 0, %.lr.ph.preheader.i268.i ], [ %indvars.iv.next.i272.i, %readhat4.exit.i.i ] ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.i271.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.io = call i32 @getc(ptr noundef nonnull %i.ij)
  %.not.i.i.i = icmp eq i32 %i.io, 62
  br i1 %.not.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i270.i
  %i.ip = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.iq = call i64 @fwrite(ptr nonnull @.str.73, i64 13, i64 1, ptr %i.ip) #21 ; 0 uses
  call void @exit(i32 noundef 1) #22
  unreachable

bb.bs:                                            ; preds = %.lr.ph.i270.i
  %i.ir = call i32 @ungetc(i32 noundef 62, ptr noundef nonnull %i.ij) ; 0 uses
  %i.is = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 999, ptr noundef nonnull %i.ij) ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bu, %bb.bs
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.bu ], [ 0, %bb.bs ] ; 5 uses
  %i.it = call i32 @getc(ptr noundef nonnull %i.ij) ; 2 uses
  %i.iu = call i32 @ungetc(i32 noundef %i.it, ptr noundef nonnull %i.ij) ; 0 uses
  switch i32 %i.it, label %bb.bu [
    i32 -1, label %readhat4.exit.i.i
    i32 62, label %readhat4.exit.i.i
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.iv = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 999, ptr noundef nonnull %i.ij) ; 0 uses
  %i.iw = load ptr, ptr %i.in, align 8, !tbaa !27
  %i.ix = shl nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.iy = add nuw i64 %i.ix, 16
  %i.iz = call ptr @realloc(ptr noundef %i.iw, i64 noundef %i.iy) #25 ; 2 uses
  store ptr %i.iz, ptr %i.in, align 8, !tbaa !27
  %i.ja = call noalias dereferenceable_or_null(100) ptr @calloc(i64 noundef 100, i64 noundef 1) #23 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv.i.i.i
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !9
  %i.jc = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ja, ptr noundef nonnull dereferenceable(1) %i.c) #20 ; 0 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  br label %bb.bt

readhat4.exit.i.i:                                ; preds = %bb.bt, %bb.bt
  %i.jd = load ptr, ptr %i.in, align 8, !tbaa !27
  %i.je = shl i64 %indvars.iv.i.i.i, 3
  %i.jf = add i64 %i.je, 16
  %i.jg = and i64 %i.jf, 34359738360
  %i.jh = call ptr @realloc(ptr noundef %i.jd, i64 noundef %i.jg) #25 ; 2 uses
  store ptr %i.jh, ptr %i.in, align 8, !tbaa !27
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv.i.i.i
  store ptr null, ptr %i.ji, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %indvars.iv.next.i272.i = add nuw nsw i64 %indvars.iv.i271.i, 1 ; 2 uses
  %exitcond.not.i273.i = icmp eq i64 %indvars.iv.next.i272.i, %wide.trip.count.i269.i
  br i1 %exitcond.not.i273.i, label %preparebpp.exit.i, label %.lr.ph.i270.i, !llvm.loop !52

preparebpp.exit.i:                                ; preds = %readhat4.exit.i.i, %.preheader.i266.i
  %i.jj = call i32 @fclose(ptr noundef nonnull %i.ij) ; 0 uses
  %i.jk = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.jl = call i64 @fwrite(ptr nonnull @.str.17, i64 6, i64 1, ptr %i.jk) #21 ; 0 uses
  %i.jm = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.jn = call i64 @fwrite(ptr nonnull @.str.54, i64 71, i64 1, ptr %i.jm) #21 ; 0 uses
  %.pre140.i = load i32, ptr @njob, align 4, !tbaa !4
  br label %bb.bv

bb.bv:                                            ; preds = %preparebpp.exit.i, %._crit_edge33.i
  %i.jo = phi i32 [ %.pre140.i, %preparebpp.exit.i ], [ %i.gp, %._crit_edge33.i ] ; 4 uses
  %.0230.i = phi ptr [ %i.ii, %preparebpp.exit.i ], [ undef, %._crit_edge33.i ] ; 4 uses
  %i.jp = icmp sgt i32 %i.jo, 1
  br i1 %i.jp, label %.lr.ph45.i, label %.preheader5.i

.lr.ph45.i:                                       ; preds = %bb.bv
  %i.jq = add nsw i32 %i.jo, -1
  %i.jr = sext i32 %i.ep to i64                   ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.jq to i64
  br label %bb.bw

.loopexit6.i:                                     ; preds = %bb.el, %bb.bw
  %i.js = phi i32 [ %i.ka, %bb.bw ], [ %i.sq, %bb.el ] ; 2 uses
  %.1.lcssa.i = phi float [ %.023343.i, %bb.bw ], [ %.3.i, %bb.el ]
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next108.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader5.i, label %bb.bw, !llvm.loop !53

.preheader5.i:                                    ; preds = %.loopexit6.i, %bb.bv
  %i.jt = phi i32 [ %i.jo, %bb.bv ], [ %i.js, %.loopexit6.i ] ; 4 uses
  %i.ju = icmp sgt i32 %i.jt, 0
  br i1 %i.ju, label %.lr.ph54.i, label %._crit_edge63.i

.lr.ph54.i:                                       ; preds = %.preheader5.i
  %i.jv = load ptr, ptr @pairalign.distancemtx, align 8, !tbaa !43 ; 3 uses
  %wide.trip.count113.i = zext nneg i32 %i.jt to i64 ; 2 uses
  br label %bb.em

bb.bw:                                            ; preds = %.loopexit6.i, %.lr.ph45.i
  %i.jw = phi i32 [ %i.jo, %.lr.ph45.i ], [ %i.js, %.loopexit6.i ]
  %indvars.iv107.i = phi i64 [ 0, %.lr.ph45.i ], [ %indvars.iv.next108.i, %.loopexit6.i ] ; 10 uses
  %indvars.iv102.i = phi i64 [ 1, %.lr.ph45.i ], [ %indvars.iv.next103.i, %.loopexit6.i ] ; 2 uses
  %.023343.i = phi float [ 0.000000e+00, %.lr.ph45.i ], [ %.1.lcssa.i, %.loopexit6.i ] ; 2 uses
  %i.jx = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.jy = trunc nuw nsw i64 %indvars.iv107.i to i32 ; 3 uses
  %i.jz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jx, ptr noundef nonnull @.str.55, i32 noundef %i.jy, i32 noundef %i.jw) #19 ; 0 uses
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 4 uses
  %i.ka = load i32, ptr @njob, align 4, !tbaa !4  ; 2 uses
  %i.kb = sext i32 %i.ka to i64
  %i.kc = icmp slt i64 %indvars.iv.next108.i, %i.kb
  br i1 %i.kc, label %.lr.ph40.i, label %.loopexit6.i

.lr.ph40.i:                                       ; preds = %bb.bw
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv107.i
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv107.i
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv107.i ; 2 uses
  %i.kg = getelementptr inbounds nuw [256 x i8], ptr @main.name, i64 %indvars.iv107.i
  %i.kh = trunc nuw nsw i64 %indvars.iv.next108.i to i32 ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.el, %.lr.ph40.i
  %indvars.iv104.i = phi i64 [ %indvars.iv102.i, %.lr.ph40.i ], [ %indvars.iv.next105.i, %bb.el ] ; 11 uses
  %.138.i = phi float [ %.023343.i, %.lr.ph40.i ], [ %.3.i, %bb.el ] ; 2 uses
  %i.ki = load ptr, ptr %i.kd, align 8, !tbaa !9  ; 2 uses
  %char0.i = load i8, ptr %i.ki, align 1
  %i.kj = icmp eq i8 %char0.i, 0
  br i1 %i.kj, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv104.i ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !9
  %char0261.i = load i8, ptr %i.kl, align 1
  %i.km = icmp eq i8 %char0261.i, 0
  br i1 %i.km, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.kn = load ptr, ptr @pairalign.distancemtx, align 8, !tbaa !43
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv107.i
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !30
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %indvars.iv104.i
  store double -9.999000e+03, ptr %i.kq, align 8, !tbaa !12
  br label %bb.el

bb.ca:                                            ; preds = %bb.by
  %i.kr = load ptr, ptr %i.ke, align 8, !tbaa !9
  %i.ks = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.kr, ptr noundef nonnull dereferenceable(1) %i.ki) #20 ; 0 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv104.i
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !9
  %i.kv = load ptr, ptr %i.kk, align 8, !tbaa !9
  %i.kw = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ku, ptr noundef nonnull dereferenceable(1) %i.kv) #20 ; 0 uses
  %i.kx = load ptr, ptr @pairalign.pair, align 8, !tbaa !27
  %i.ky = load ptr, ptr @pairalign.effarr1, align 8, !tbaa !30
  %i.kz = load ptr, ptr @pairalign.indication1, align 8, !tbaa !9
  %i.la = call i32 @conjuctionfortbfast(ptr noundef %i.kx, i32 noundef %i.jy, ptr noundef %i.er, ptr noundef %i.es, ptr noundef %i.ky, ptr noundef %i.eu, ptr noundef %i.kz) #20 ; 2 uses
  %i.lb = load ptr, ptr @pairalign.pair, align 8, !tbaa !27
  %i.lc = load ptr, ptr @pairalign.effarr2, align 8, !tbaa !30
  %i.ld = load ptr, ptr @pairalign.indication2, align 8, !tbaa !9
  %i.le = trunc nuw nsw i64 %indvars.iv104.i to i32 ; 4 uses
  %i.lf = call i32 @conjuctionfortbfast(ptr noundef %i.lb, i32 noundef %i.le, ptr noundef %i.er, ptr noundef %i.et, ptr noundef %i.lc, ptr noundef %i.eu, ptr noundef %i.ld) #20 ; 2 uses
  %i.lg = load i8, ptr @use_fft, align 1, !tbaa !8
  %.not262.i = icmp eq i8 %i.lg, 0
  br i1 %.not262.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lh = load ptr, ptr @pairalign.effarr1, align 8, !tbaa !30
  %i.li = load ptr, ptr @pairalign.effarr2, align 8, !tbaa !30
  %i.lj = call float @Falign(ptr noundef %i.es, ptr noundef %i.et, ptr noundef %i.lh, ptr noundef %i.li, i32 noundef %i.la, i32 noundef %i.lf, i32 noundef %i.ep, ptr noundef nonnull %i.f) #20
  store i32 0, ptr %i.e, align 4, !tbaa !4
  store i32 0, ptr %i.d, align 4, !tbaa !4
  br label %thread-pre-split.i

bb.cc:                                            ; preds = %bb.ca
  %i.lk = load i8, ptr @alg, align 1, !tbaa !8    ; 2 uses
  switch i8 %i.lk, label %bb.eb [
    i8 97, label %bb.cd
    i8 116, label %bb.ce
    i8 65, label %bb.cf
    i8 78, label %bb.cg
    i8 75, label %bb.ch
    i8 76, label %bb.ci
    i8 72, label %bb.cj
    i8 66, label %bb.cs
    i8 84, label %bb.cs
    i8 115, label %bb.dx
    i8 77, label %bb.ea
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.ll = load ptr, ptr @pairalign.effarr1, align 8, !tbaa !30
  %i.lm = load ptr, ptr @pairalign.effarr2, align 8, !tbaa !30
  %i.ln = call float (ptr, ptr, ptr, ptr, i32, i32, i32, ...) @Aalign(ptr noundef %i.es, ptr noundef %i.et, ptr noundef %i.ll, ptr noundef %i.lm, i32 noundef %i.la, i32 noundef %i.lf, i32 noundef %i.ep) #20
  store i32 0, ptr %i.e, align 4, !tbaa !4
  store i32 0, ptr %i.d, align 4, !tbaa !4
  br label %thread-pre-split.i

bb.ce:                                            ; preds = %bb.cc
end_hunk_0
