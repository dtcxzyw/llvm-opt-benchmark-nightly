Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_axcorrelate?download=true
inline.NumInlined: 23
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 39
begin_hunk_0_@xcorrelate_slow_f:bb.a
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39   ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !43  ; 3 uses
  %.not = icmp eq i32 %i.aa, 0                    ; 2 uses
  %i.ab = icmp sgt i32 %i.d, 0                    ; 3 uses
  %wide.trip.count.i = zext i32 %i.d to i64       ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !40 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = sitofp nsz i32 %i.d to float            ; 4 uses
  br i1 %i.ae, label %.lr.ph75.split.us.preheader, label %.lr.ph75.split

.lr.ph75.split.us.preheader:                      ; preds = %.lr.ph75
  %i.ag = sext i32 %i.d to i64
  %wide.trip.count123 = zext nneg i32 %i.f to i64
  %wide.trip.count118 = zext nneg i32 %i.ad to i64
  %xtraiter166 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.ah = icmp ult i32 %i.d, 8
  %unroll_iter171 = and i64 %wide.trip.count.i, 2147483640
  %lcmp.mod168.not = icmp eq i64 %xtraiter166, 0
  %lcmp.mod170 = icmp ne i64 %xtraiter166, 0
  %xtraiter173 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.ai = icmp ult i32 %i.d, 8
  %unroll_iter178 = and i64 %wide.trip.count.i, 2147483640
  %lcmp.mod175.not = icmp eq i64 %xtraiter173, 0
  %lcmp.mod177 = icmp ne i64 %xtraiter173, 0
  %i.aj = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %xtraiter180 = and i64 %wide.trip.count.i, 1
  %i.al = icmp eq i32 %i.d, 1
  %unroll_iter186 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod182.not = icmp eq i64 %xtraiter180, 0
  %lcmp.mod185 = trunc i32 %i.d to i1
  br label %.lr.ph75.split.us

.lr.ph75.split.us:                                ; preds = %.lr.ph75.split.us.preheader, %._crit_edge.us
  %indvars.iv120 = phi i64 [ 0, %.lr.ph75.split.us.preheader ], [ %indvars.iv.next121, %._crit_edge.us ] ; 6 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46 ; 11 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv120
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 11 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 6 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv120
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46 ; 5 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv120
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46
  br i1 %.not, label %bb.b, label %.lr.ph75.split.us..lr.ph.us_crit_edge

.lr.ph75.split.us..lr.ph.us_crit_edge:            ; preds = %.lr.ph75.split.us
  %.pre.pre = load float, ptr %i.at, align 4, !tbaa !48
  br label %.lr.ph.us.a

bb.b:                                             ; preds = %.lr.ph75.split.us
  br i1 %i.ab, label %.lr.ph.i.us.preheader, label %mean_sum_f.exit.us

.lr.ph.i.us.preheader:                            ; preds = %bb.b
  br i1 %i.ah, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

mean_sum_f.exit.us:                               ; preds = %bb.b
  store float 0.000000e+00, ptr %i.ar, align 4, !tbaa !48
  br label %mean_sum_f.exit60.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.7, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ] ; 9 uses
  %.067.i.us = phi float [ %i.ca, %.lr.ph.i.us ], [ 0.000000e+00, %.lr.ph.i.us.preheader ]
  %niter172 = phi i64 [ %niter172.next.7, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !48
  %i.ay = fadd nsz float %.067.i.us, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !48
  %i.bc = fadd nsz float %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !48
  %i.bg = fadd nsz float %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !48
  %i.bk = fadd nsz float %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !48
  %i.bo = fadd nsz float %i.bk, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.br = load float, ptr %i.bq, align 4, !tbaa !48
  %i.bs = fadd nsz float %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !48
  %i.bw = fadd nsz float %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %i.bz = load float, ptr %i.by, align 4, !tbaa !48
  %i.ca = fadd nsz float %i.bw, %i.bz             ; 3 uses
  %indvars.iv.next.i.us.7 = add nuw nsw i64 %indvars.iv.i.us, 8 ; 2 uses
  %niter172.next.7 = add i64 %niter172, 8         ; 2 uses
  %niter172.ncmp.7 = icmp eq i64 %niter172.next.7, %unroll_iter171
  br i1 %niter172.ncmp.7, label %.lr.ph.preheader.i53.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !0

.lr.ph.preheader.i53.us.unr-lcssa:                ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod168.not, label %.lr.ph.preheader.i53.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %.lr.ph.preheader.i53.us.unr-lcssa, %.lr.ph.i.us.preheader
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.preheader ], [ %indvars.iv.next.i.us.7, %.lr.ph.preheader.i53.us.unr-lcssa ]
  %.067.i.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.us.preheader ], [ %i.ca, %.lr.ph.preheader.i53.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph.i.us.epil

.lr.ph.i.us.epil:                                 ; preds = %.lr.ph.i.us.epil, %.lr.ph.i.us.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.next.i.us.epil, %.lr.ph.i.us.epil ], [ %indvars.iv.i.us.epil.init, %.lr.ph.i.us.epil.preheader ] ; 2 uses
  %.067.i.us.epil = phi float [ %i.cd, %.lr.ph.i.us.epil ], [ %.067.i.us.epil.init, %.lr.ph.i.us.epil.preheader ]
  %epil.iter167 = phi i64 [ %epil.iter167.next, %.lr.ph.i.us.epil ], [ 0, %.lr.ph.i.us.epil.preheader ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.us.epil
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !48
  %i.cd = fadd nsz float %.067.i.us.epil, %i.cc   ; 2 uses
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter167.next = add i64 %epil.iter167, 1   ; 2 uses
  %epil.iter167.cmp.not = icmp eq i64 %epil.iter167.next, %xtraiter166
  br i1 %epil.iter167.cmp.not, label %.lr.ph.preheader.i53.us, label %.lr.ph.i.us.epil, !llvm.loop !69

.lr.ph.preheader.i53.us:                          ; preds = %.lr.ph.i.us.epil, %.lr.ph.preheader.i53.us.unr-lcssa
  %.lcssa = phi float [ %i.ca, %.lr.ph.preheader.i53.us.unr-lcssa ], [ %i.cd, %.lr.ph.i.us.epil ]
  store float %.lcssa, ptr %i.ar, align 4, !tbaa !48
  br i1 %i.ai, label %.lr.ph.i55.us.epil.preheader, label %.lr.ph.i55.us

.lr.ph.i55.us:                                    ; preds = %.lr.ph.preheader.i53.us, %.lr.ph.i55.us
  %indvars.iv.i56.us = phi i64 [ %indvars.iv.next.i58.us.7, %.lr.ph.i55.us ], [ 0, %.lr.ph.preheader.i53.us ] ; 9 uses
  %.067.i57.us = phi float [ %i.di, %.lr.ph.i55.us ], [ 0.000000e+00, %.lr.ph.preheader.i53.us ]
  %niter179 = phi i64 [ %niter179.next.7, %.lr.ph.i55.us ], [ 0, %.lr.ph.preheader.i53.us ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !48
  %i.cg = fadd nsz float %.067.i57.us, %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !48
  %i.ck = fadd nsz float %i.cg, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !48
  %i.co = fadd nsz float %i.ck, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !48
  %i.cs = fadd nsz float %i.co, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !48
  %i.cw = fadd nsz float %i.cs, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !48
  %i.da = fadd nsz float %i.cw, %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !48
  %i.de = fadd nsz float %i.da, %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 28
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !48
  %i.di = fadd nsz float %i.de, %i.dh             ; 3 uses
  %indvars.iv.next.i58.us.7 = add nuw nsw i64 %indvars.iv.i56.us, 8 ; 2 uses
  %niter179.next.7 = add i64 %niter179, 8         ; 2 uses
  %niter179.ncmp.7 = icmp eq i64 %niter179.next.7, %unroll_iter178
  br i1 %niter179.ncmp.7, label %mean_sum_f.exit60.us.loopexit.unr-lcssa, label %.lr.ph.i55.us, !llvm.loop !0

mean_sum_f.exit60.us.loopexit.unr-lcssa:          ; preds = %.lr.ph.i55.us
  br i1 %lcmp.mod175.not, label %mean_sum_f.exit60.us, label %.lr.ph.i55.us.epil.preheader

.lr.ph.i55.us.epil.preheader:                     ; preds = %mean_sum_f.exit60.us.loopexit.unr-lcssa, %.lr.ph.preheader.i53.us
  %indvars.iv.i56.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i53.us ], [ %indvars.iv.next.i58.us.7, %mean_sum_f.exit60.us.loopexit.unr-lcssa ]
  %.067.i57.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i53.us ], [ %i.di, %mean_sum_f.exit60.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.i55.us.epil

.lr.ph.i55.us.epil:                               ; preds = %.lr.ph.i55.us.epil, %.lr.ph.i55.us.epil.preheader
  %indvars.iv.i56.us.epil = phi i64 [ %indvars.iv.i56.us.epil.init, %.lr.ph.i55.us.epil.preheader ], [ %indvars.iv.next.i58.us.epil, %.lr.ph.i55.us.epil ] ; 2 uses
  %.067.i57.us.epil = phi float [ %.067.i57.us.epil.init, %.lr.ph.i55.us.epil.preheader ], [ %i.dl, %.lr.ph.i55.us.epil ]
  %epil.iter174 = phi i64 [ 0, %.lr.ph.i55.us.epil.preheader ], [ %epil.iter174.next, %.lr.ph.i55.us.epil ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i56.us.epil
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !48
  %i.dl = fadd nsz float %.067.i57.us.epil, %i.dk ; 2 uses
  %indvars.iv.next.i58.us.epil = add nuw nsw i64 %indvars.iv.i56.us.epil, 1
  %epil.iter174.next = add i64 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i64 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %mean_sum_f.exit60.us, label %.lr.ph.i55.us.epil, !llvm.loop !70

mean_sum_f.exit60.us:                             ; preds = %mean_sum_f.exit60.us.loopexit.unr-lcssa, %.lr.ph.i55.us.epil, %mean_sum_f.exit.us
  %.06.lcssa.i52.us = phi float [ 0.000000e+00, %mean_sum_f.exit.us ], [ %i.di, %mean_sum_f.exit60.us.loopexit.unr-lcssa ], [ %i.dl, %.lr.ph.i55.us.epil ] ; 2 uses
  store float %.06.lcssa.i52.us, ptr %i.at, align 4, !tbaa !48
  br label %.lr.ph.us.a

.lr.ph.us.a:                                      ; preds = %.lr.ph75.split.us..lr.ph.us_crit_edge, %mean_sum_f.exit60.us
  %.pre = phi float [ %.06.lcssa.i52.us, %mean_sum_f.exit60.us ], [ %.pre.pre, %.lr.ph75.split.us..lr.ph.us_crit_edge ]
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us.a, %xcorrelate_f.exit.us
  %i.dm = phi float [ %i.fz, %xcorrelate_f.exit.us ], [ %.pre, %.lr.ph.us.a ]
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %xcorrelate_f.exit.us ], [ 0, %.lr.ph.us.a ] ; 5 uses
  %i.dn = add nsw i64 %indvars.iv115, %i.ag       ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv115 ; 4 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv115 ; 4 uses
  %i.dq = load float, ptr %i.ar, align 4, !tbaa !48
  %i.dr = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dm, i64 1
  %i.dt = fdiv nsz <2 x float> %i.ds, %i.ak       ; 3 uses
  br i1 %i.ab, label %.lr.ph.i63.us.preheader, label %xcorrelate_f.exit.us

.lr.ph.i63.us.preheader:                          ; preds = %bb.c
  br i1 %i.al, label %.lr.ph.i63.us.epil.preheader, label %.lr.ph.i63.us

.lr.ph.i63.us:                                    ; preds = %.lr.ph.i63.us.preheader, %.lr.ph.i63.us
  %indvars.iv.i64.us = phi i64 [ %indvars.iv.next.i65.us.1, %.lr.ph.i63.us ], [ 0, %.lr.ph.i63.us.preheader ] ; 4 uses
  %.03035.i.us = phi float [ %i.eq, %.lr.ph.i63.us ], [ 0.000000e+00, %.lr.ph.i63.us.preheader ]
  %i.du = phi <2 x float> [ %i.eo, %.lr.ph.i63.us ], [ zeroinitializer, %.lr.ph.i63.us.preheader ]
  %niter187 = phi i64 [ %niter187.next.1, %.lr.ph.i63.us ], [ 0, %.lr.ph.i63.us.preheader ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i64.us
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !48
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i64.us
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !48
  %i.dz = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.dy, i64 1
  %i.eb = fsub nsz <2 x float> %i.ea, %i.dt       ; 3 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.eb, <2 x float> %i.du)
  %i.ee = extractelement <2 x float> %i.eb, i64 1 ; 2 uses
  %i.ef = tail call nsz float @llvm.fmuladd.f32(float %i.ee, float %i.ee, float %.03035.i.us)
  %indvars.iv.next.i65.us = or disjoint i64 %indvars.iv.i64.us, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.next.i65.us
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !48
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next.i65.us
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !48
  %i.ek = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.ej, i64 1
  %i.em = fsub nsz <2 x float> %i.el, %i.dt       ; 3 uses
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.em, <2 x float> %i.ed) ; 3 uses
  %i.ep = extractelement <2 x float> %i.em, i64 1 ; 2 uses
  %i.eq = tail call nsz float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.ef) ; 3 uses
  %indvars.iv.next.i65.us.1 = add nuw nsw i64 %indvars.iv.i64.us, 2 ; 2 uses
  %niter187.next.1 = add i64 %niter187, 2         ; 2 uses
  %niter187.ncmp.1 = icmp eq i64 %niter187.next.1, %unroll_iter186
  br i1 %niter187.ncmp.1, label %._crit_edge.loopexit.i.us.unr-lcssa, label %.lr.ph.i63.us, !llvm.loop !71

._crit_edge.loopexit.i.us.unr-lcssa:              ; preds = %.lr.ph.i63.us
  br i1 %lcmp.mod182.not, label %._crit_edge.loopexit.i.us, label %.lr.ph.i63.us.epil.preheader

.lr.ph.i63.us.epil.preheader:                     ; preds = %._crit_edge.loopexit.i.us.unr-lcssa, %.lr.ph.i63.us.preheader
  %indvars.iv.i64.us.epil.init = phi i64 [ 0, %.lr.ph.i63.us.preheader ], [ %indvars.iv.next.i65.us.1, %._crit_edge.loopexit.i.us.unr-lcssa ] ; 2 uses
  %.03035.i.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.i63.us.preheader ], [ %i.eq, %._crit_edge.loopexit.i.us.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.i63.us.preheader ], [ %i.eo, %._crit_edge.loopexit.i.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod185)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i64.us.epil.init
  %i.es = load float, ptr %i.er, align 4, !tbaa !48
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i64.us.epil.init
  %i.eu = load float, ptr %i.et, align 4, !tbaa !48
  %i.ev = insertelement <2 x float> poison, float %i.es, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.eu, i64 1
  %i.ex = fsub nsz <2 x float> %i.ew, %i.dt       ; 3 uses
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.ex, <2 x float> %.epil.init)
  %i.fa = extractelement <2 x float> %i.ex, i64 1 ; 2 uses
  %i.fb = tail call nsz float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %.03035.i.us.epil.init)
  br label %._crit_edge.loopexit.i.us

._crit_edge.loopexit.i.us:                        ; preds = %._crit_edge.loopexit.i.us.unr-lcssa, %.lr.ph.i63.us.epil.preheader
  %.lcssa146 = phi <2 x float> [ %i.eo, %._crit_edge.loopexit.i.us.unr-lcssa ], [ %i.ez, %.lr.ph.i63.us.epil.preheader ] ; 2 uses
  %.lcssa145 = phi float [ %i.eq, %._crit_edge.loopexit.i.us.unr-lcssa ], [ %i.fb, %.lr.ph.i63.us.epil.preheader ]
  %i.fc = extractelement <2 x float> %.lcssa146, i64 0
  %i.fd = fmul nsz float %i.fc, %.lcssa145
  %i.fe = extractelement <2 x float> %.lcssa146, i64 1
  br label %xcorrelate_f.exit.us

xcorrelate_f.exit.us:                             ; preds = %._crit_edge.loopexit.i.us, %bb.c
  %.032.lcssa.i.us = phi float [ 0.000000e+00, %bb.c ], [ %i.fe, %._crit_edge.loopexit.i.us ]
  %i.ff = phi float [ 0.000000e+00, %bb.c ], [ %i.fd, %._crit_edge.loopexit.i.us ]
  %i.fg = fdiv nsz float %.032.lcssa.i.us, %i.af
  %i.fh = fdiv nsz float %i.ff, %i.af
  %i.fi = fdiv nsz float %i.fh, %i.af
  %i.fj = tail call nsz float @llvm.sqrt.f32(float %i.fi) ; 2 uses
  %i.fk = fcmp nsz ole float %i.fj, f0x358637BD
  %i.fl = fdiv nsz float %i.fg, %i.fj
  %i.fm = select nsz i1 %i.fk, float 0.000000e+00, float %i.fl
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv115
  store float %i.fm, ptr %i.fn, align 4, !tbaa !48
  %i.fo = load float, ptr %i.do, align 4, !tbaa !48
  %i.fp = load float, ptr %i.ar, align 4, !tbaa !48
  %i.fq = fsub nsz float %i.fp, %i.fo             ; 2 uses
  store float %i.fq, ptr %i.ar, align 4, !tbaa !48
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.dn
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !48
  %i.ft = fadd nsz float %i.fq, %i.fs
  store float %i.ft, ptr %i.ar, align 4, !tbaa !48
  %i.fu = load float, ptr %i.dp, align 4, !tbaa !48
  %i.fv = load float, ptr %i.at, align 4, !tbaa !48
  %i.fw = fsub nsz float %i.fv, %i.fu             ; 2 uses
  store float %i.fw, ptr %i.at, align 4, !tbaa !48
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.dn
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !48
  %i.fz = fadd nsz float %i.fw, %i.fy             ; 2 uses
  store float %i.fz, ptr %i.at, align 4, !tbaa !48
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge.us, label %bb.c, !llvm.loop !72

._crit_edge.us:                                   ; preds = %xcorrelate_f.exit.us
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %._crit_edge76.loopexit, label %.lr.ph75.split.us, !llvm.loop !73

.lr.ph75.split:                                   ; preds = %.lr.ph75
  br i1 %.not, label %.lr.ph75.split.split.us, label %._crit_edge76

.lr.ph75.split.split.us:                          ; preds = %.lr.ph75.split
  %wide.trip.count113 = zext nneg i32 %i.f to i64 ; 3 uses
  br i1 %i.ab, label %.lr.ph.preheader.i.us79.us.preheader, label %mean_sum_f.exit.us78.preheader

mean_sum_f.exit.us78.preheader:                   ; preds = %.lr.ph75.split.split.us
  %xtraiter = and i64 %wide.trip.count113, 3      ; 3 uses
  %i.ga = icmp ult i32 %i.f, 4
  br i1 %i.ga, label %mean_sum_f.exit.us78.epil.preheader, label %mean_sum_f.exit.us78.preheader.new

mean_sum_f.exit.us78.preheader.new:               ; preds = %mean_sum_f.exit.us78.preheader
  %unroll_iter = and i64 %wide.trip.count113, 2147483644
  br label %mean_sum_f.exit.us78

.lr.ph.preheader.i.us79.us.preheader:             ; preds = %.lr.ph75.split.split.us
  %xtraiter152 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.gb = icmp ult i32 %i.d, 8
  %unroll_iter157 = and i64 %wide.trip.count.i, 2147483640
  %lcmp.mod154.not = icmp eq i64 %xtraiter152, 0
  %lcmp.mod156 = icmp ne i64 %xtraiter152, 0
  %xtraiter159 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.gc = icmp ult i32 %i.d, 8
  %unroll_iter164 = and i64 %wide.trip.count.i, 2147483640
  %lcmp.mod161.not = icmp eq i64 %xtraiter159, 0
  %lcmp.mod163 = icmp ne i64 %xtraiter159, 0
  br label %.lr.ph.preheader.i.us79.us

.lr.ph.preheader.i.us79.us:                       ; preds = %.lr.ph.preheader.i.us79.us.preheader, %mean_sum_f.exit60.loopexit.us92.us
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %mean_sum_f.exit60.loopexit.us92.us ], [ 0, %.lr.ph.preheader.i.us79.us.preheader ] ; 5 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv110
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !46 ; 9 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv110
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !46 ; 9 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv110
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !46
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv110
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !46
  br i1 %i.gb, label %.lr.ph.i.us80.us.epil.preheader, label %.lr.ph.i.us80.us

.lr.ph.i.us80.us:                                 ; preds = %.lr.ph.preheader.i.us79.us, %.lr.ph.i.us80.us
  %indvars.iv.i.us81.us = phi i64 [ %indvars.iv.next.i.us83.us.7, %.lr.ph.i.us80.us ], [ 0, %.lr.ph.preheader.i.us79.us ] ; 9 uses
  %.067.i.us82.us = phi float [ %i.hp, %.lr.ph.i.us80.us ], [ 0.000000e+00, %.lr.ph.preheader.i.us79.us ]
  %niter158 = phi i64 [ %niter158.next.7, %.lr.ph.i.us80.us ], [ 0, %.lr.ph.preheader.i.us79.us ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !48
  %i.gn = fadd nsz float %.067.i.us82.us, %i.gm
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !48
  %i.gr = fadd nsz float %i.gn, %i.gq
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !48
  %i.gv = fadd nsz float %i.gr, %i.gu
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !48
  %i.gz = fadd nsz float %i.gv, %i.gy
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !48
  %i.hd = fadd nsz float %i.gz, %i.hc
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 20
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !48
  %i.hh = fadd nsz float %i.hd, %i.hg
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !48
  %i.hl = fadd nsz float %i.hh, %i.hk
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 28
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !48
  %i.hp = fadd nsz float %i.hl, %i.ho             ; 3 uses
  %indvars.iv.next.i.us83.us.7 = add nuw nsw i64 %indvars.iv.i.us81.us, 8 ; 2 uses
  %niter158.next.7 = add i64 %niter158, 8         ; 2 uses
  %niter158.ncmp.7 = icmp eq i64 %niter158.next.7, %unroll_iter157
  br i1 %niter158.ncmp.7, label %.lr.ph.preheader.i53.us85.us.unr-lcssa, label %.lr.ph.i.us80.us, !llvm.loop !0

.lr.ph.preheader.i53.us85.us.unr-lcssa:           ; preds = %.lr.ph.i.us80.us
  br i1 %lcmp.mod154.not, label %.lr.ph.preheader.i53.us85.us, label %.lr.ph.i.us80.us.epil.preheader

.lr.ph.i.us80.us.epil.preheader:                  ; preds = %.lr.ph.preheader.i53.us85.us.unr-lcssa, %.lr.ph.preheader.i.us79.us
  %indvars.iv.i.us81.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us79.us ], [ %indvars.iv.next.i.us83.us.7, %.lr.ph.preheader.i53.us85.us.unr-lcssa ]
  %.067.i.us82.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i.us79.us ], [ %i.hp, %.lr.ph.preheader.i53.us85.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %.lr.ph.i.us80.us.epil

.lr.ph.i.us80.us.epil:                            ; preds = %.lr.ph.i.us80.us.epil, %.lr.ph.i.us80.us.epil.preheader
  %indvars.iv.i.us81.us.epil = phi i64 [ %indvars.iv.i.us81.us.epil.init, %.lr.ph.i.us80.us.epil.preheader ], [ %indvars.iv.next.i.us83.us.epil, %.lr.ph.i.us80.us.epil ] ; 2 uses
  %.067.i.us82.us.epil = phi float [ %.067.i.us82.us.epil.init, %.lr.ph.i.us80.us.epil.preheader ], [ %i.hs, %.lr.ph.i.us80.us.epil ]
  %epil.iter153 = phi i64 [ 0, %.lr.ph.i.us80.us.epil.preheader ], [ %epil.iter153.next, %.lr.ph.i.us80.us.epil ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us.epil
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !48
  %i.hs = fadd nsz float %.067.i.us82.us.epil, %i.hr ; 2 uses
  %indvars.iv.next.i.us83.us.epil = add nuw nsw i64 %indvars.iv.i.us81.us.epil, 1
  %epil.iter153.next = add i64 %epil.iter153, 1   ; 2 uses
  %epil.iter153.cmp.not = icmp eq i64 %epil.iter153.next, %xtraiter152
  br i1 %epil.iter153.cmp.not, label %.lr.ph.preheader.i53.us85.us, label %.lr.ph.i.us80.us.epil, !llvm.loop !74

.lr.ph.preheader.i53.us85.us:                     ; preds = %.lr.ph.i.us80.us.epil, %.lr.ph.preheader.i53.us85.us.unr-lcssa
  %.lcssa148 = phi float [ %i.hp, %.lr.ph.preheader.i53.us85.us.unr-lcssa ], [ %i.hs, %.lr.ph.i.us80.us.epil ]
  store float %.lcssa148, ptr %i.gi, align 4, !tbaa !48
  br i1 %i.gc, label %.lr.ph.i55.us87.us.epil.preheader, label %.lr.ph.i55.us87.us

.lr.ph.i55.us87.us:                               ; preds = %.lr.ph.preheader.i53.us85.us, %.lr.ph.i55.us87.us
  %indvars.iv.i56.us88.us = phi i64 [ %indvars.iv.next.i58.us90.us.7, %.lr.ph.i55.us87.us ], [ 0, %.lr.ph.preheader.i53.us85.us ] ; 9 uses
  %.067.i57.us89.us = phi float [ %i.ix, %.lr.ph.i55.us87.us ], [ 0.000000e+00, %.lr.ph.preheader.i53.us85.us ]
  %niter165 = phi i64 [ %niter165.next.7, %.lr.ph.i55.us87.us ], [ 0, %.lr.ph.preheader.i53.us85.us ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !48
  %i.hv = fadd nsz float %.067.i57.us89.us, %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !48
  %i.hz = fadd nsz float %i.hv, %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !48
  %i.id = fadd nsz float %i.hz, %i.ic
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  %i.ig = load float, ptr %i.if, align 4, !tbaa !48
  %i.ih = fadd nsz float %i.id, %i.ig
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !48
  %i.il = fadd nsz float %i.ih, %i.ik
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 20
  %i.io = load float, ptr %i.in, align 4, !tbaa !48
  %i.ip = fadd nsz float %i.il, %i.io
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load float, ptr %i.ir, align 4, !tbaa !48
  %i.it = fadd nsz float %i.ip, %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 28
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !48
  %i.ix = fadd nsz float %i.it, %i.iw             ; 3 uses
  %indvars.iv.next.i58.us90.us.7 = add nuw nsw i64 %indvars.iv.i56.us88.us, 8 ; 2 uses
  %niter165.next.7 = add i64 %niter165, 8         ; 2 uses
  %niter165.ncmp.7 = icmp eq i64 %niter165.next.7, %unroll_iter164
  br i1 %niter165.ncmp.7, label %mean_sum_f.exit60.loopexit.us92.us.unr-lcssa, label %.lr.ph.i55.us87.us, !llvm.loop !0

mean_sum_f.exit60.loopexit.us92.us.unr-lcssa:     ; preds = %.lr.ph.i55.us87.us
  br i1 %lcmp.mod161.not, label %mean_sum_f.exit60.loopexit.us92.us, label %.lr.ph.i55.us87.us.epil.preheader

.lr.ph.i55.us87.us.epil.preheader:                ; preds = %mean_sum_f.exit60.loopexit.us92.us.unr-lcssa, %.lr.ph.preheader.i53.us85.us
  %indvars.iv.i56.us88.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i53.us85.us ], [ %indvars.iv.next.i58.us90.us.7, %mean_sum_f.exit60.loopexit.us92.us.unr-lcssa ]
  %.067.i57.us89.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i53.us85.us ], [ %i.ix, %mean_sum_f.exit60.loopexit.us92.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %.lr.ph.i55.us87.us.epil

.lr.ph.i55.us87.us.epil:                          ; preds = %.lr.ph.i55.us87.us.epil, %.lr.ph.i55.us87.us.epil.preheader
  %indvars.iv.i56.us88.us.epil = phi i64 [ %indvars.iv.i56.us88.us.epil.init, %.lr.ph.i55.us87.us.epil.preheader ], [ %indvars.iv.next.i58.us90.us.epil, %.lr.ph.i55.us87.us.epil ] ; 2 uses
  %.067.i57.us89.us.epil = phi float [ %.067.i57.us89.us.epil.init, %.lr.ph.i55.us87.us.epil.preheader ], [ %i.ja, %.lr.ph.i55.us87.us.epil ]
  %epil.iter160 = phi i64 [ 0, %.lr.ph.i55.us87.us.epil.preheader ], [ %epil.iter160.next, %.lr.ph.i55.us87.us.epil ]
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us.epil
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !48
  %i.ja = fadd nsz float %.067.i57.us89.us.epil, %i.iz ; 2 uses
  %indvars.iv.next.i58.us90.us.epil = add nuw nsw i64 %indvars.iv.i56.us88.us.epil, 1
  %epil.iter160.next = add i64 %epil.iter160, 1   ; 2 uses
  %epil.iter160.cmp.not = icmp eq i64 %epil.iter160.next, %xtraiter159
  br i1 %epil.iter160.cmp.not, label %mean_sum_f.exit60.loopexit.us92.us, label %.lr.ph.i55.us87.us.epil, !llvm.loop !75

mean_sum_f.exit60.loopexit.us92.us:               ; preds = %.lr.ph.i55.us87.us.epil, %mean_sum_f.exit60.loopexit.us92.us.unr-lcssa
  %.lcssa149 = phi float [ %i.ix, %mean_sum_f.exit60.loopexit.us92.us.unr-lcssa ], [ %i.ja, %.lr.ph.i55.us87.us.epil ]
  store float %.lcssa149, ptr %i.gk, align 4, !tbaa !48
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %._crit_edge76, label %.lr.ph.preheader.i.us79.us, !llvm.loop !73

mean_sum_f.exit.us78:                             ; preds = %mean_sum_f.exit.us78, %mean_sum_f.exit.us78.preheader.new
  %indvars.iv = phi i64 [ 0, %mean_sum_f.exit.us78.preheader.new ], [ %indvars.iv.next.3, %mean_sum_f.exit.us78 ] ; 6 uses
  %niter = phi i64 [ 0, %mean_sum_f.exit.us78.preheader.new ], [ %niter.next.3, %mean_sum_f.exit.us78 ]
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !46
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !46
  store float 0.000000e+00, ptr %i.jc, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.je, align 4, !tbaa !48
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !46
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !46
  store float 0.000000e+00, ptr %i.jg, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.ji, align 4, !tbaa !48
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.1
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !46
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.1
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !46
  store float 0.000000e+00, ptr %i.jk, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.jm, align 4, !tbaa !48
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.2
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !46
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.2
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !46
  store float 0.000000e+00, ptr %i.jo, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.jq, align 4, !tbaa !48
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge76.loopexit150.unr-lcssa, label %mean_sum_f.exit.us78, !llvm.loop !73

._crit_edge76.loopexit:                           ; preds = %._crit_edge.us
  %umax = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 1)
  br label %._crit_edge76

._crit_edge76.loopexit150.unr-lcssa:              ; preds = %mean_sum_f.exit.us78
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge76, label %mean_sum_f.exit.us78.epil.preheader

mean_sum_f.exit.us78.epil.preheader:              ; preds = %._crit_edge76.loopexit150.unr-lcssa, %mean_sum_f.exit.us78.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %mean_sum_f.exit.us78.preheader ], [ %indvars.iv.next.3, %._crit_edge76.loopexit150.unr-lcssa ]
  %lcmp.mod151 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod151)
  br label %mean_sum_f.exit.us78.epil

mean_sum_f.exit.us78.epil:                        ; preds = %mean_sum_f.exit.us78.epil, %mean_sum_f.exit.us78.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %mean_sum_f.exit.us78.epil ], [ %indvars.iv.epil.init, %mean_sum_f.exit.us78.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %mean_sum_f.exit.us78.epil ], [ 0, %mean_sum_f.exit.us78.epil.preheader ]
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.epil
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !46
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.epil
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !46
  store float 0.000000e+00, ptr %i.js, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.ju, align 4, !tbaa !48
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge76, label %mean_sum_f.exit.us78.epil, !llvm.loop !76

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit150.unr-lcssa, %mean_sum_f.exit.us78.epil, %mean_sum_f.exit60.loopexit.us92.us, %.lr.ph75.split, %._crit_edge76.loopexit, %bb.a
  %.050.lcssa = phi i32 [ undef, %bb.a ], [ 1, %mean_sum_f.exit60.loopexit.us92.us ], [ %i.aa, %.lr.ph75.split ], [ %umax, %._crit_edge76.loopexit ], [ 1, %mean_sum_f.exit.us78.epil ], [ 1, %._crit_edge76.loopexit150.unr-lcssa ]
  ret i32 %.050.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @xcorrelate_fast_f(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !41   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.f = load i32, ptr %i.e, align 4, !tbaa !45   ; 5 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !43 ; 3 uses
  %.not = icmp eq i32 %i.ae, 0                    ; 2 uses
  %i.af = icmp sgt i32 %i.d, 0                    ; 2 uses
  %wide.trip.count.i = zext i32 %i.d to i64       ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  %i.aj = sitofp nsz i32 %i.d to float            ; 3 uses
  br i1 %i.ai, label %.lr.ph114.split.us.preheader, label %.lr.ph114.split

.lr.ph114.split.us.preheader:                     ; preds = %.lr.ph114
  %i.ak = sext i32 %i.d to i64
  %wide.trip.count168 = zext nneg i32 %i.f to i64
  %wide.trip.count163 = zext nneg i32 %i.ah to i64
  %xtraiter216 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.al = icmp ult i32 %i.d, 4
  %unroll_iter221 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod218.not = icmp eq i64 %xtraiter216, 0
  %lcmp.mod220 = icmp ne i64 %xtraiter216, 0
  %xtraiter223 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.am = icmp ult i32 %i.d, 4
  %unroll_iter228 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod225.not = icmp eq i64 %xtraiter223, 0
  %lcmp.mod227 = icmp ne i64 %xtraiter223, 0
  %xtraiter230 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.an = icmp ult i32 %i.d, 4
  %unroll_iter235 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod232.not = icmp eq i64 %xtraiter230, 0
  %lcmp.mod234 = icmp ne i64 %xtraiter230, 0
  br label %.lr.ph114.split.us

.lr.ph114.split.us:                               ; preds = %.lr.ph114.split.us.preheader, %._crit_edge.us
  %indvars.iv165 = phi i64 [ 0, %.lr.ph114.split.us.preheader ], [ %indvars.iv.next166, %._crit_edge.us ] ; 7 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv165
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 12 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv165
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 12 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv165
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46 ; 6 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv165
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46 ; 6 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv165
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !46 ; 5 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv165
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !46
  br i1 %.not, label %bb.b, label %.lr.ph114.split.us..lr.ph.us_crit_edge

.lr.ph114.split.us..lr.ph.us_crit_edge:           ; preds = %.lr.ph114.split.us
  %.pre.pre = load float, ptr %i.ax, align 4, !tbaa !48
  br label %.lr.ph.us.a

bb.b:                                             ; preds = %.lr.ph114.split.us
  br i1 %i.af, label %.lr.ph.i.us.preheader, label %square_sum_f.exit97.us

.lr.ph.i.us.preheader:                            ; preds = %bb.b
  br i1 %i.al, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

square_sum_f.exit97.us:                           ; preds = %bb.b
  store float 0.000000e+00, ptr %i.at, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.av, align 4, !tbaa !48
  br label %square_sum_f.exit106.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.3, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ] ; 6 uses
  %.089.i.us = phi float [ %i.bt, %.lr.ph.i.us ], [ 0.000000e+00, %.lr.ph.i.us.preheader ]
  %niter222 = phi i64 [ %niter222.next.3, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.us
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !48
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.us
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !48
  %i.be = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float %i.bd, float %.089.i.us)
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.us
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !48
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.i.us
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !48
  %i.bj = tail call nsz float @llvm.fmuladd.f32(float %i.bg, float %i.bi, float %i.be)
  %indvars.iv.next.i.us.1 = or disjoint i64 %indvars.iv.i.us, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.us.1
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !48
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.i.us.1
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !48
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %i.bl, float %i.bn, float %i.bj)
  %indvars.iv.next.i.us.2 = or disjoint i64 %indvars.iv.i.us, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.us.2
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !48
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.i.us.2
  %i.bs = load float, ptr %i.br, align 4, !tbaa !48
  %i.bt = tail call nsz float @llvm.fmuladd.f32(float %i.bq, float %i.bs, float %i.bo) ; 3 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %niter222.next.3 = add i64 %niter222, 4         ; 2 uses
  %niter222.ncmp.3 = icmp eq i64 %niter222.next.3, %unroll_iter221
  br i1 %niter222.ncmp.3, label %.lr.ph.preheader.i90.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !1

.lr.ph.preheader.i90.us.unr-lcssa:                ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod218.not, label %.lr.ph.preheader.i90.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %.lr.ph.preheader.i90.us.unr-lcssa, %.lr.ph.i.us.preheader
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.preheader ], [ %indvars.iv.next.i.us.3, %.lr.ph.preheader.i90.us.unr-lcssa ]
  %.089.i.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.us.preheader ], [ %i.bt, %.lr.ph.preheader.i90.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod220)
  br label %.lr.ph.i.us.epil

.lr.ph.i.us.epil:                                 ; preds = %.lr.ph.i.us.epil, %.lr.ph.i.us.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.next.i.us.epil, %.lr.ph.i.us.epil ], [ %indvars.iv.i.us.epil.init, %.lr.ph.i.us.epil.preheader ] ; 3 uses
  %.089.i.us.epil = phi float [ %i.by, %.lr.ph.i.us.epil ], [ %.089.i.us.epil.init, %.lr.ph.i.us.epil.preheader ]
  %epil.iter217 = phi i64 [ %epil.iter217.next, %.lr.ph.i.us.epil ], [ 0, %.lr.ph.i.us.epil.preheader ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.us.epil
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !48
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.us.epil
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !48
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %i.bv, float %i.bx, float %.089.i.us.epil) ; 2 uses
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter217.next = add i64 %epil.iter217, 1   ; 2 uses
  %epil.iter217.cmp.not = icmp eq i64 %epil.iter217.next, %xtraiter216
  br i1 %epil.iter217.cmp.not, label %.lr.ph.preheader.i90.us, label %.lr.ph.i.us.epil, !llvm.loop !77

.lr.ph.preheader.i90.us:                          ; preds = %.lr.ph.i.us.epil, %.lr.ph.preheader.i90.us.unr-lcssa
  %.lcssa = phi float [ %i.bt, %.lr.ph.preheader.i90.us.unr-lcssa ], [ %i.by, %.lr.ph.i.us.epil ]
  store float %.lcssa, ptr %i.at, align 4, !tbaa !48
  br i1 %i.am, label %.lr.ph.i92.us.epil.preheader, label %.lr.ph.i92.us

.lr.ph.i92.us:                                    ; preds = %.lr.ph.preheader.i90.us, %.lr.ph.i92.us
  %indvars.iv.i93.us = phi i64 [ %indvars.iv.next.i95.us.3, %.lr.ph.i92.us ], [ 0, %.lr.ph.preheader.i90.us ] ; 5 uses
  %.089.i94.us = phi float [ %i.cn, %.lr.ph.i92.us ], [ 0.000000e+00, %.lr.ph.preheader.i90.us ]
  %niter229 = phi i64 [ %niter229.next.3, %.lr.ph.i92.us ], [ 0, %.lr.ph.preheader.i90.us ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i93.us
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !48 ; 2 uses
  %i.cb = tail call nsz float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %.089.i94.us)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i93.us
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !48 ; 2 uses
  %i.cf = tail call nsz float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.cb)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i93.us
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !48 ; 2 uses
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.cf)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i93.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !48 ; 2 uses
  %i.cn = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.cj) ; 3 uses
  %indvars.iv.next.i95.us.3 = add nuw nsw i64 %indvars.iv.i93.us, 4 ; 2 uses
  %niter229.next.3 = add i64 %niter229, 4         ; 2 uses
  %niter229.ncmp.3 = icmp eq i64 %niter229.next.3, %unroll_iter228
  br i1 %niter229.ncmp.3, label %.lr.ph.preheader.i99.us.unr-lcssa, label %.lr.ph.i92.us, !llvm.loop !1

.lr.ph.preheader.i99.us.unr-lcssa:                ; preds = %.lr.ph.i92.us
  br i1 %lcmp.mod225.not, label %.lr.ph.preheader.i99.us, label %.lr.ph.i92.us.epil.preheader

.lr.ph.i92.us.epil.preheader:                     ; preds = %.lr.ph.preheader.i99.us.unr-lcssa, %.lr.ph.preheader.i90.us
  %indvars.iv.i93.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i90.us ], [ %indvars.iv.next.i95.us.3, %.lr.ph.preheader.i99.us.unr-lcssa ]
  %.089.i94.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i90.us ], [ %i.cn, %.lr.ph.preheader.i99.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod227)
  br label %.lr.ph.i92.us.epil

.lr.ph.i92.us.epil:                               ; preds = %.lr.ph.i92.us.epil, %.lr.ph.i92.us.epil.preheader
  %indvars.iv.i93.us.epil = phi i64 [ %indvars.iv.i93.us.epil.init, %.lr.ph.i92.us.epil.preheader ], [ %indvars.iv.next.i95.us.epil, %.lr.ph.i92.us.epil ] ; 2 uses
  %.089.i94.us.epil = phi float [ %.089.i94.us.epil.init, %.lr.ph.i92.us.epil.preheader ], [ %i.cq, %.lr.ph.i92.us.epil ]
  %epil.iter224 = phi i64 [ 0, %.lr.ph.i92.us.epil.preheader ], [ %epil.iter224.next, %.lr.ph.i92.us.epil ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i93.us.epil
  %i.cp = load float, ptr %i.co, align 4, !tbaa !48 ; 2 uses
  %i.cq = tail call nsz float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %.089.i94.us.epil) ; 2 uses
  %indvars.iv.next.i95.us.epil = add nuw nsw i64 %indvars.iv.i93.us.epil, 1
  %epil.iter224.next = add i64 %epil.iter224, 1   ; 2 uses
  %epil.iter224.cmp.not = icmp eq i64 %epil.iter224.next, %xtraiter223
  br i1 %epil.iter224.cmp.not, label %.lr.ph.preheader.i99.us, label %.lr.ph.i92.us.epil, !llvm.loop !78

.lr.ph.preheader.i99.us:                          ; preds = %.lr.ph.i92.us.epil, %.lr.ph.preheader.i99.us.unr-lcssa
  %.lcssa188 = phi float [ %i.cn, %.lr.ph.preheader.i99.us.unr-lcssa ], [ %i.cq, %.lr.ph.i92.us.epil ]
  store float %.lcssa188, ptr %i.av, align 4, !tbaa !48
  br i1 %i.an, label %.lr.ph.i101.us.epil.preheader, label %.lr.ph.i101.us

.lr.ph.i101.us:                                   ; preds = %.lr.ph.preheader.i99.us, %.lr.ph.i101.us
  %indvars.iv.i102.us = phi i64 [ %indvars.iv.next.i104.us.3, %.lr.ph.i101.us ], [ 0, %.lr.ph.preheader.i99.us ] ; 5 uses
  %.089.i103.us = phi float [ %i.df, %.lr.ph.i101.us ], [ 0.000000e+00, %.lr.ph.preheader.i99.us ]
  %niter236 = phi i64 [ %niter236.next.3, %.lr.ph.i101.us ], [ 0, %.lr.ph.preheader.i99.us ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i102.us
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !48 ; 2 uses
  %i.ct = tail call nsz float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %.089.i103.us)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i102.us
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !48 ; 2 uses
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.ct)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i102.us
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load float, ptr %i.cz, align 4, !tbaa !48 ; 2 uses
  %i.db = tail call nsz float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.cx)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i102.us
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.de = load float, ptr %i.dd, align 4, !tbaa !48 ; 2 uses
  %i.df = tail call nsz float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.db) ; 3 uses
  %indvars.iv.next.i104.us.3 = add nuw nsw i64 %indvars.iv.i102.us, 4 ; 2 uses
  %niter236.next.3 = add i64 %niter236, 4         ; 2 uses
  %niter236.ncmp.3 = icmp eq i64 %niter236.next.3, %unroll_iter235
  br i1 %niter236.ncmp.3, label %square_sum_f.exit106.us.loopexit.unr-lcssa, label %.lr.ph.i101.us, !llvm.loop !1

square_sum_f.exit106.us.loopexit.unr-lcssa:       ; preds = %.lr.ph.i101.us
  br i1 %lcmp.mod232.not, label %square_sum_f.exit106.us, label %.lr.ph.i101.us.epil.preheader

.lr.ph.i101.us.epil.preheader:                    ; preds = %square_sum_f.exit106.us.loopexit.unr-lcssa, %.lr.ph.preheader.i99.us
  %indvars.iv.i102.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i99.us ], [ %indvars.iv.next.i104.us.3, %square_sum_f.exit106.us.loopexit.unr-lcssa ]
  %.089.i103.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i99.us ], [ %i.df, %square_sum_f.exit106.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod234)
  br label %.lr.ph.i101.us.epil

.lr.ph.i101.us.epil:                              ; preds = %.lr.ph.i101.us.epil, %.lr.ph.i101.us.epil.preheader
  %indvars.iv.i102.us.epil = phi i64 [ %indvars.iv.i102.us.epil.init, %.lr.ph.i101.us.epil.preheader ], [ %indvars.iv.next.i104.us.epil, %.lr.ph.i101.us.epil ] ; 2 uses
  %.089.i103.us.epil = phi float [ %.089.i103.us.epil.init, %.lr.ph.i101.us.epil.preheader ], [ %i.di, %.lr.ph.i101.us.epil ]
  %epil.iter231 = phi i64 [ 0, %.lr.ph.i101.us.epil.preheader ], [ %epil.iter231.next, %.lr.ph.i101.us.epil ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i102.us.epil
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !48 ; 2 uses
  %i.di = tail call nsz float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %.089.i103.us.epil) ; 2 uses
  %indvars.iv.next.i104.us.epil = add nuw nsw i64 %indvars.iv.i102.us.epil, 1
  %epil.iter231.next = add i64 %epil.iter231, 1   ; 2 uses
  %epil.iter231.cmp.not = icmp eq i64 %epil.iter231.next, %xtraiter230
  br i1 %epil.iter231.cmp.not, label %square_sum_f.exit106.us, label %.lr.ph.i101.us.epil, !llvm.loop !79

square_sum_f.exit106.us:                          ; preds = %square_sum_f.exit106.us.loopexit.unr-lcssa, %.lr.ph.i101.us.epil, %square_sum_f.exit97.us
  %.08.lcssa.i98.us = phi float [ 0.000000e+00, %square_sum_f.exit97.us ], [ %i.df, %square_sum_f.exit106.us.loopexit.unr-lcssa ], [ %i.di, %.lr.ph.i101.us.epil ] ; 2 uses
  store float %.08.lcssa.i98.us, ptr %i.ax, align 4, !tbaa !48
  br label %.lr.ph.us.a

.lr.ph.us.a:                                      ; preds = %.lr.ph114.split.us..lr.ph.us_crit_edge, %square_sum_f.exit106.us
  %.pre = phi float [ %.08.lcssa.i98.us, %square_sum_f.exit106.us ], [ %.pre.pre, %.lr.ph114.split.us..lr.ph.us_crit_edge ]
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us.a, %bb.e
  %i.dj = phi float [ %i.fa, %bb.e ], [ %.pre, %.lr.ph.us.a ]
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %bb.e ], [ 0, %.lr.ph.us.a ] ; 5 uses
  %i.dk = add nsw i64 %indvars.iv160, %i.ak       ; 2 uses
  %i.dl = load float, ptr %i.av, align 4, !tbaa !48
  %i.dm = fmul nsz float %i.dl, %i.dj
  %i.dn = fdiv nsz float %i.dm, %i.aj
  %i.do = fdiv nsz float %i.dn, %i.aj
  %i.dp = tail call nsz float @llvm.sqrt.f32(float %i.do) ; 2 uses
  %i.dq = fcmp nsz ugt float %i.dp, f0x358637BD
  br i1 %i.dq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dr = load float, ptr %i.at, align 4, !tbaa !48
  %i.ds = fdiv nsz float %i.dr, %i.aj
  %i.dt = fdiv nsz float %i.ds, %i.dp             ; 2 uses
  %i.du = fcmp nsz ogt float %i.dt, -1.000000e+00
  %i.dv = select nsz i1 %i.du, float %i.dt, float -1.000000e+00 ; 2 uses
  %i.dw = fcmp nsz ogt float %i.dv, 1.000000e+00
  %..i.us = select nsz i1 %i.dw, float 1.000000e+00, float %i.dv
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.dx = phi nsz float [ %..i.us, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv160
  store float %i.dx, ptr %i.dy, align 4, !tbaa !48
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv160 ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !48
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv160 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !48
  %i.ed = load float, ptr %i.at, align 4, !tbaa !48
  %i.ee = fneg nsz float %i.ea
  %i.ef = tail call nsz float @llvm.fmuladd.f32(float %i.ee, float %i.ec, float %i.ed) ; 2 uses
  store float %i.ef, ptr %i.at, align 4, !tbaa !48
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.dk ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !48
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dk ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !48
  %i.ek = tail call nsz float @llvm.fmuladd.f32(float %i.eh, float %i.ej, float %i.ef)
  store float %i.ek, ptr %i.at, align 4, !tbaa !48
  %i.el = load float, ptr %i.dz, align 4, !tbaa !48 ; 2 uses
  %i.em = load float, ptr %i.av, align 4, !tbaa !48
  %i.en = fneg nsz float %i.el
  %i.eo = tail call nsz float @llvm.fmuladd.f32(float %i.en, float %i.el, float %i.em) ; 2 uses
  store float %i.eo, ptr %i.av, align 4, !tbaa !48
  %i.ep = load float, ptr %i.eg, align 4, !tbaa !48 ; 2 uses
  %i.eq = tail call nsz float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.eo) ; 2 uses
  %i.er = fcmp nsz ogt float %i.eq, 0.000000e+00
  %i.es = select nsz i1 %i.er, float %i.eq, float 0.000000e+00
  store float %i.es, ptr %i.av, align 4, !tbaa !48
  %i.et = load float, ptr %i.eb, align 4, !tbaa !48 ; 2 uses
  %i.eu = load float, ptr %i.ax, align 4, !tbaa !48
  %i.ev = fneg nsz float %i.et
  %i.ew = tail call nsz float @llvm.fmuladd.f32(float %i.ev, float %i.et, float %i.eu) ; 2 uses
  store float %i.ew, ptr %i.ax, align 4, !tbaa !48
  %i.ex = load float, ptr %i.ei, align 4, !tbaa !48 ; 2 uses
  %i.ey = tail call nsz float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float %i.ew) ; 2 uses
  %i.ez = fcmp nsz ogt float %i.ey, 0.000000e+00
  %i.fa = select nsz i1 %i.ez, float %i.ey, float 0.000000e+00 ; 2 uses
  store float %i.fa, ptr %i.ax, align 4, !tbaa !48
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %._crit_edge.us, label %bb.c, !llvm.loop !80

._crit_edge.us:                                   ; preds = %bb.e
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %._crit_edge115.loopexit, label %.lr.ph114.split.us, !llvm.loop !81

.lr.ph114.split:                                  ; preds = %.lr.ph114
  br i1 %.not, label %.lr.ph114.split.split.us, label %._crit_edge115

.lr.ph114.split.split.us:                         ; preds = %.lr.ph114.split
  %wide.trip.count158 = zext nneg i32 %i.f to i64 ; 3 uses
  br i1 %i.af, label %.lr.ph.preheader.i.us118.us.preheader, label %square_sum_f.exit97.us117.preheader

square_sum_f.exit97.us117.preheader:              ; preds = %.lr.ph114.split.split.us
  %xtraiter = and i64 %wide.trip.count158, 1
  %i.fb = icmp eq i32 %i.f, 1
  br i1 %i.fb, label %square_sum_f.exit97.us117.epil.preheader, label %square_sum_f.exit97.us117.preheader.new

square_sum_f.exit97.us117.preheader.new:          ; preds = %square_sum_f.exit97.us117.preheader
  %unroll_iter = and i64 %wide.trip.count158, 2147483646
  br label %square_sum_f.exit97.us117

.lr.ph.preheader.i.us118.us.preheader:            ; preds = %.lr.ph114.split.split.us
  %xtraiter196 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.fc = icmp ult i32 %i.d, 4
  %unroll_iter200 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod197.not = icmp eq i64 %xtraiter196, 0
  %lcmp.mod199 = icmp ne i64 %xtraiter196, 0
  %xtraiter202 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.fd = icmp ult i32 %i.d, 4
  %unroll_iter207 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod204.not = icmp eq i64 %xtraiter202, 0
  %lcmp.mod206 = icmp ne i64 %xtraiter202, 0
  %xtraiter209 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.fe = icmp ult i32 %i.d, 4
  %unroll_iter214 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod211.not = icmp eq i64 %xtraiter209, 0
  %lcmp.mod213 = icmp ne i64 %xtraiter209, 0
  br label %.lr.ph.preheader.i.us118.us

.lr.ph.preheader.i.us118.us:                      ; preds = %.lr.ph.preheader.i.us118.us.preheader, %square_sum_f.exit106.loopexit.us138.us
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %square_sum_f.exit106.loopexit.us138.us ], [ 0, %.lr.ph.preheader.i.us118.us.preheader ] ; 6 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv155
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !46 ; 10 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv155
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !46 ; 10 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv155
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !46
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv155
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !46
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv155
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !46
  br i1 %i.fc, label %.lr.ph.i.us119.us.epil.preheader, label %.lr.ph.i.us119.us

.lr.ph.i.us119.us:                                ; preds = %.lr.ph.preheader.i.us118.us, %.lr.ph.i.us119.us
  %indvars.iv.i.us120.us = phi i64 [ %indvars.iv.next.i.us122.us.3, %.lr.ph.i.us119.us ], [ 0, %.lr.ph.preheader.i.us118.us ] ; 6 uses
  %.089.i.us121.us = phi float [ %i.gi, %.lr.ph.i.us119.us ], [ 0.000000e+00, %.lr.ph.preheader.i.us118.us ]
  %niter201 = phi i64 [ %niter201.next.3, %.lr.ph.i.us119.us ], [ 0, %.lr.ph.preheader.i.us118.us ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i.us120.us
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !48
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i.us120.us
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !48
  %i.ft = tail call nsz float @llvm.fmuladd.f32(float %i.fq, float %i.fs, float %.089.i.us121.us)
  %indvars.iv.next.i.us122.us = or disjoint i64 %indvars.iv.i.us120.us, 1 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.next.i.us122.us
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !48
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.next.i.us122.us
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !48
  %i.fy = tail call nsz float @llvm.fmuladd.f32(float %i.fv, float %i.fx, float %i.ft)
  %indvars.iv.next.i.us122.us.1 = or disjoint i64 %indvars.iv.i.us120.us, 2 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.next.i.us122.us.1
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !48
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.next.i.us122.us.1
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !48
  %i.gd = tail call nsz float @llvm.fmuladd.f32(float %i.ga, float %i.gc, float %i.fy)
  %indvars.iv.next.i.us122.us.2 = or disjoint i64 %indvars.iv.i.us120.us, 3 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.next.i.us122.us.2
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !48
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.next.i.us122.us.2
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !48
  %i.gi = tail call nsz float @llvm.fmuladd.f32(float %i.gf, float %i.gh, float %i.gd) ; 3 uses
  %indvars.iv.next.i.us122.us.3 = add nuw nsw i64 %indvars.iv.i.us120.us, 4 ; 2 uses
  %niter201.next.3 = add i64 %niter201, 4         ; 2 uses
  %niter201.ncmp.3 = icmp eq i64 %niter201.next.3, %unroll_iter200
  br i1 %niter201.ncmp.3, label %.lr.ph.preheader.i90.us124.us.unr-lcssa, label %.lr.ph.i.us119.us, !llvm.loop !1

.lr.ph.preheader.i90.us124.us.unr-lcssa:          ; preds = %.lr.ph.i.us119.us
  br i1 %lcmp.mod197.not, label %.lr.ph.preheader.i90.us124.us, label %.lr.ph.i.us119.us.epil.preheader

.lr.ph.i.us119.us.epil.preheader:                 ; preds = %.lr.ph.preheader.i90.us124.us.unr-lcssa, %.lr.ph.preheader.i.us118.us
  %indvars.iv.i.us120.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us118.us ], [ %indvars.iv.next.i.us122.us.3, %.lr.ph.preheader.i90.us124.us.unr-lcssa ]
  %.089.i.us121.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i.us118.us ], [ %i.gi, %.lr.ph.preheader.i90.us124.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph.i.us119.us.epil

.lr.ph.i.us119.us.epil:                           ; preds = %.lr.ph.i.us119.us.epil, %.lr.ph.i.us119.us.epil.preheader
  %indvars.iv.i.us120.us.epil = phi i64 [ %indvars.iv.i.us120.us.epil.init, %.lr.ph.i.us119.us.epil.preheader ], [ %indvars.iv.next.i.us122.us.epil, %.lr.ph.i.us119.us.epil ] ; 3 uses
  %.089.i.us121.us.epil = phi float [ %.089.i.us121.us.epil.init, %.lr.ph.i.us119.us.epil.preheader ], [ %i.gn, %.lr.ph.i.us119.us.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.us119.us.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.us119.us.epil ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i.us120.us.epil
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !48
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i.us120.us.epil
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !48
  %i.gn = tail call nsz float @llvm.fmuladd.f32(float %i.gk, float %i.gm, float %.089.i.us121.us.epil) ; 2 uses
  %indvars.iv.next.i.us122.us.epil = add nuw nsw i64 %indvars.iv.i.us120.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter196
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i90.us124.us, label %.lr.ph.i.us119.us.epil, !llvm.loop !82

.lr.ph.preheader.i90.us124.us:                    ; preds = %.lr.ph.i.us119.us.epil, %.lr.ph.preheader.i90.us124.us.unr-lcssa
  %.lcssa191 = phi float [ %i.gi, %.lr.ph.preheader.i90.us124.us.unr-lcssa ], [ %i.gn, %.lr.ph.i.us119.us.epil ]
  store float %.lcssa191, ptr %i.fk, align 4, !tbaa !48
  br i1 %i.fd, label %.lr.ph.i92.us126.us.epil.preheader, label %.lr.ph.i92.us126.us

.lr.ph.i92.us126.us:                              ; preds = %.lr.ph.preheader.i90.us124.us, %.lr.ph.i92.us126.us
  %indvars.iv.i93.us127.us = phi i64 [ %indvars.iv.next.i95.us129.us.3, %.lr.ph.i92.us126.us ], [ 0, %.lr.ph.preheader.i90.us124.us ] ; 5 uses
  %.089.i94.us128.us = phi float [ %i.hc, %.lr.ph.i92.us126.us ], [ 0.000000e+00, %.lr.ph.preheader.i90.us124.us ]
  %niter208 = phi i64 [ %niter208.next.3, %.lr.ph.i92.us126.us ], [ 0, %.lr.ph.preheader.i90.us124.us ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i93.us127.us
  %i.gp = load float, ptr %i.go, align 4, !tbaa !48 ; 2 uses
  %i.gq = tail call nsz float @llvm.fmuladd.f32(float %i.gp, float %i.gp, float %.089.i94.us128.us)
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i93.us127.us
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !48 ; 2 uses
  %i.gu = tail call nsz float @llvm.fmuladd.f32(float %i.gt, float %i.gt, float %i.gq)
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i93.us127.us
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !48 ; 2 uses
  %i.gy = tail call nsz float @llvm.fmuladd.f32(float %i.gx, float %i.gx, float %i.gu)
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i93.us127.us
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !48 ; 2 uses
  %i.hc = tail call nsz float @llvm.fmuladd.f32(float %i.hb, float %i.hb, float %i.gy) ; 3 uses
  %indvars.iv.next.i95.us129.us.3 = add nuw nsw i64 %indvars.iv.i93.us127.us, 4 ; 2 uses
  %niter208.next.3 = add i64 %niter208, 4         ; 2 uses
  %niter208.ncmp.3 = icmp eq i64 %niter208.next.3, %unroll_iter207
  br i1 %niter208.ncmp.3, label %.lr.ph.preheader.i99.us131.us.unr-lcssa, label %.lr.ph.i92.us126.us, !llvm.loop !1

.lr.ph.preheader.i99.us131.us.unr-lcssa:          ; preds = %.lr.ph.i92.us126.us
  br i1 %lcmp.mod204.not, label %.lr.ph.preheader.i99.us131.us, label %.lr.ph.i92.us126.us.epil.preheader

.lr.ph.i92.us126.us.epil.preheader:               ; preds = %.lr.ph.preheader.i99.us131.us.unr-lcssa, %.lr.ph.preheader.i90.us124.us
  %indvars.iv.i93.us127.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i90.us124.us ], [ %indvars.iv.next.i95.us129.us.3, %.lr.ph.preheader.i99.us131.us.unr-lcssa ]
  %.089.i94.us128.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i90.us124.us ], [ %i.hc, %.lr.ph.preheader.i99.us131.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod206)
  br label %.lr.ph.i92.us126.us.epil

.lr.ph.i92.us126.us.epil:                         ; preds = %.lr.ph.i92.us126.us.epil, %.lr.ph.i92.us126.us.epil.preheader
  %indvars.iv.i93.us127.us.epil = phi i64 [ %indvars.iv.i93.us127.us.epil.init, %.lr.ph.i92.us126.us.epil.preheader ], [ %indvars.iv.next.i95.us129.us.epil, %.lr.ph.i92.us126.us.epil ] ; 2 uses
  %.089.i94.us128.us.epil = phi float [ %.089.i94.us128.us.epil.init, %.lr.ph.i92.us126.us.epil.preheader ], [ %i.hf, %.lr.ph.i92.us126.us.epil ]
  %epil.iter203 = phi i64 [ 0, %.lr.ph.i92.us126.us.epil.preheader ], [ %epil.iter203.next, %.lr.ph.i92.us126.us.epil ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i93.us127.us.epil
  %i.he = load float, ptr %i.hd, align 4, !tbaa !48 ; 2 uses
  %i.hf = tail call nsz float @llvm.fmuladd.f32(float %i.he, float %i.he, float %.089.i94.us128.us.epil) ; 2 uses
  %indvars.iv.next.i95.us129.us.epil = add nuw nsw i64 %indvars.iv.i93.us127.us.epil, 1
  %epil.iter203.next = add i64 %epil.iter203, 1   ; 2 uses
  %epil.iter203.cmp.not = icmp eq i64 %epil.iter203.next, %xtraiter202
  br i1 %epil.iter203.cmp.not, label %.lr.ph.preheader.i99.us131.us, label %.lr.ph.i92.us126.us.epil, !llvm.loop !83

.lr.ph.preheader.i99.us131.us:                    ; preds = %.lr.ph.i92.us126.us.epil, %.lr.ph.preheader.i99.us131.us.unr-lcssa
  %.lcssa192 = phi float [ %i.hc, %.lr.ph.preheader.i99.us131.us.unr-lcssa ], [ %i.hf, %.lr.ph.i92.us126.us.epil ]
  store float %.lcssa192, ptr %i.fm, align 4, !tbaa !48
  br i1 %i.fe, label %.lr.ph.i101.us133.us.epil.preheader, label %.lr.ph.i101.us133.us

.lr.ph.i101.us133.us:                             ; preds = %.lr.ph.preheader.i99.us131.us, %.lr.ph.i101.us133.us
  %indvars.iv.i102.us134.us = phi i64 [ %indvars.iv.next.i104.us136.us.3, %.lr.ph.i101.us133.us ], [ 0, %.lr.ph.preheader.i99.us131.us ] ; 5 uses
  %.089.i103.us135.us = phi float [ %i.hu, %.lr.ph.i101.us133.us ], [ 0.000000e+00, %.lr.ph.preheader.i99.us131.us ]
  %niter215 = phi i64 [ %niter215.next.3, %.lr.ph.i101.us133.us ], [ 0, %.lr.ph.preheader.i99.us131.us ]
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i102.us134.us
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !48 ; 2 uses
  %i.hi = tail call nsz float @llvm.fmuladd.f32(float %i.hh, float %i.hh, float %.089.i103.us135.us)
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i102.us134.us
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !48 ; 2 uses
  %i.hm = tail call nsz float @llvm.fmuladd.f32(float %i.hl, float %i.hl, float %i.hi)
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i102.us134.us
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !48 ; 2 uses
  %i.hq = tail call nsz float @llvm.fmuladd.f32(float %i.hp, float %i.hp, float %i.hm)
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i102.us134.us
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !48 ; 2 uses
  %i.hu = tail call nsz float @llvm.fmuladd.f32(float %i.ht, float %i.ht, float %i.hq) ; 3 uses
  %indvars.iv.next.i104.us136.us.3 = add nuw nsw i64 %indvars.iv.i102.us134.us, 4 ; 2 uses
  %niter215.next.3 = add i64 %niter215, 4         ; 2 uses
  %niter215.ncmp.3 = icmp eq i64 %niter215.next.3, %unroll_iter214
  br i1 %niter215.ncmp.3, label %square_sum_f.exit106.loopexit.us138.us.unr-lcssa, label %.lr.ph.i101.us133.us, !llvm.loop !1

square_sum_f.exit106.loopexit.us138.us.unr-lcssa: ; preds = %.lr.ph.i101.us133.us
  br i1 %lcmp.mod211.not, label %square_sum_f.exit106.loopexit.us138.us, label %.lr.ph.i101.us133.us.epil.preheader

.lr.ph.i101.us133.us.epil.preheader:              ; preds = %square_sum_f.exit106.loopexit.us138.us.unr-lcssa, %.lr.ph.preheader.i99.us131.us
  %indvars.iv.i102.us134.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i99.us131.us ], [ %indvars.iv.next.i104.us136.us.3, %square_sum_f.exit106.loopexit.us138.us.unr-lcssa ]
  %.089.i103.us135.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i99.us131.us ], [ %i.hu, %square_sum_f.exit106.loopexit.us138.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod213)
  br label %.lr.ph.i101.us133.us.epil

.lr.ph.i101.us133.us.epil:                        ; preds = %.lr.ph.i101.us133.us.epil, %.lr.ph.i101.us133.us.epil.preheader
  %indvars.iv.i102.us134.us.epil = phi i64 [ %indvars.iv.i102.us134.us.epil.init, %.lr.ph.i101.us133.us.epil.preheader ], [ %indvars.iv.next.i104.us136.us.epil, %.lr.ph.i101.us133.us.epil ] ; 2 uses
  %.089.i103.us135.us.epil = phi float [ %.089.i103.us135.us.epil.init, %.lr.ph.i101.us133.us.epil.preheader ], [ %i.hx, %.lr.ph.i101.us133.us.epil ]
  %epil.iter210 = phi i64 [ 0, %.lr.ph.i101.us133.us.epil.preheader ], [ %epil.iter210.next, %.lr.ph.i101.us133.us.epil ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i102.us134.us.epil
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !48 ; 2 uses
  %i.hx = tail call nsz float @llvm.fmuladd.f32(float %i.hw, float %i.hw, float %.089.i103.us135.us.epil) ; 2 uses
  %indvars.iv.next.i104.us136.us.epil = add nuw nsw i64 %indvars.iv.i102.us134.us.epil, 1
  %epil.iter210.next = add i64 %epil.iter210, 1   ; 2 uses
  %epil.iter210.cmp.not = icmp eq i64 %epil.iter210.next, %xtraiter209
  br i1 %epil.iter210.cmp.not, label %square_sum_f.exit106.loopexit.us138.us, label %.lr.ph.i101.us133.us.epil, !llvm.loop !84

square_sum_f.exit106.loopexit.us138.us:           ; preds = %.lr.ph.i101.us133.us.epil, %square_sum_f.exit106.loopexit.us138.us.unr-lcssa
  %.lcssa193 = phi float [ %i.hu, %square_sum_f.exit106.loopexit.us138.us.unr-lcssa ], [ %i.hx, %.lr.ph.i101.us133.us.epil ]
  store float %.lcssa193, ptr %i.fo, align 4, !tbaa !48
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count158
  br i1 %exitcond159.not, label %._crit_edge115, label %.lr.ph.preheader.i.us118.us, !llvm.loop !81

square_sum_f.exit97.us117:                        ; preds = %square_sum_f.exit97.us117, %square_sum_f.exit97.us117.preheader.new
  %indvars.iv = phi i64 [ 0, %square_sum_f.exit97.us117.preheader.new ], [ %indvars.iv.next.1, %square_sum_f.exit97.us117 ] ; 5 uses
  %niter = phi i64 [ 0, %square_sum_f.exit97.us117.preheader.new ], [ %niter.next.1, %square_sum_f.exit97.us117 ]
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !46
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !46
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !46
  store float 0.000000e+00, ptr %i.hz, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.ib, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.id, align 4, !tbaa !48
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !46
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !46
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !46
  store float 0.000000e+00, ptr %i.if, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.ih, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.ij, align 4, !tbaa !48
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge115.loopexit194.unr-lcssa, label %square_sum_f.exit97.us117, !llvm.loop !81

._crit_edge115.loopexit:                          ; preds = %._crit_edge.us
  %umax = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 1)
  br label %._crit_edge115

._crit_edge115.loopexit194.unr-lcssa:             ; preds = %square_sum_f.exit97.us117
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge115, label %square_sum_f.exit97.us117.epil.preheader

square_sum_f.exit97.us117.epil.preheader:         ; preds = %._crit_edge115.loopexit194.unr-lcssa, %square_sum_f.exit97.us117.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %square_sum_f.exit97.us117.preheader ], [ %indvars.iv.next.1, %._crit_edge115.loopexit194.unr-lcssa ] ; 3 uses
  %lcmp.mod195 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod195)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.epil.init
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !46
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.epil.init
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !46
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.epil.init
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !46
  store float 0.000000e+00, ptr %i.il, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.in, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.ip, align 4, !tbaa !48
  br label %._crit_edge115

._crit_edge115:                                   ; preds = %square_sum_f.exit97.us117.epil.preheader, %._crit_edge115.loopexit194.unr-lcssa, %square_sum_f.exit106.loopexit.us138.us, %.lr.ph114.split, %._crit_edge115.loopexit, %bb.a
  %.084.lcssa = phi i32 [ undef, %bb.a ], [ 1, %square_sum_f.exit106.loopexit.us138.us ], [ %i.ae, %.lr.ph114.split ], [ %umax, %._crit_edge115.loopexit ], [ 1, %._crit_edge115.loopexit194.unr-lcssa ], [ 1, %square_sum_f.exit97.us117.epil.preheader ]
  ret i32 %.084.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @xcorrelate_best_f(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph161, label %._crit_edge162

.lr.ph161:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !41   ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.am = load i32, ptr %i.al, align 8, !tbaa !43 ; 2 uses
  %.not = icmp eq i32 %i.am, 0
  %i.an = icmp sgt i32 %i.g, 0
  %wide.trip.count.i = zext i32 %i.g to i64       ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = sitofp nsz i32 %i.g to float            ; 2 uses
  %i.as = fneg nsz float %i.ar
  %i.at = sext i32 %i.g to i64
  %wide.trip.count171 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.ap to i64
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.au = icmp ult i32 %i.g, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod190 = icmp ne i64 %xtraiter, 0
  %xtraiter191 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.av = icmp ult i32 %i.g, 4
  %unroll_iter196 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod193.not = icmp eq i64 %xtraiter191, 0
  %lcmp.mod195 = icmp ne i64 %xtraiter191, 0
  %xtraiter198 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.aw = icmp ult i32 %i.g, 4
  %unroll_iter203 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod200.not = icmp eq i64 %xtraiter198, 0
  %lcmp.mod202 = icmp ne i64 %xtraiter198, 0
  %xtraiter205 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.ax = icmp ult i32 %i.g, 8
  %unroll_iter210 = and i64 %wide.trip.count.i, 2147483640
  %lcmp.mod207.not = icmp eq i64 %xtraiter205, 0
  %lcmp.mod209 = icmp ne i64 %xtraiter205, 0
  %xtraiter212 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.ay = icmp ult i32 %i.g, 8
  %unroll_iter217 = and i64 %wide.trip.count.i, 2147483640
  %lcmp.mod214.not = icmp eq i64 %xtraiter212, 0
  %lcmp.mod216 = icmp ne i64 %xtraiter212, 0
  %i.az = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge162.loopexit:                          ; preds = %._crit_edge
  %umax = tail call i32 @llvm.umax.i32(i32 %i.am, i32 1)
  br label %._crit_edge162

._crit_edge162:                                   ; preds = %._crit_edge162.loopexit, %bb.a
  %.0114.lcssa = phi i32 [ undef, %bb.a ], [ %umax, %._crit_edge162.loopexit ]
  ret i32 %.0114.lcssa

bb.b:                                             ; preds = %.lr.ph161, %._crit_edge
  %indvars.iv168 = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next169, %._crit_edge ] ; 9 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv168
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !46 ; 21 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv168
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !46 ; 21 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv168
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !46 ; 6 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv168
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !46 ; 5 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv168
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !46 ; 6 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv168
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !46 ; 6 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv168
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !46 ; 6 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv168
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !46
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.an, label %.lr.ph.i.preheader, label %mean_sum_f.exit

.lr.ph.i.preheader:                               ; preds = %bb.c
  br i1 %i.au, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 6 uses
  %.089.i = phi float [ %i.cm, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !48
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !48
  %i.bx = tail call nsz float @llvm.fmuladd.f32(float %i.bu, float %i.bw, float %.089.i)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next.i
  %i.bz = load float, ptr %i.by, align 4, !tbaa !48
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next.i
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !48
  %i.cc = tail call nsz float @llvm.fmuladd.f32(float %i.bz, float %i.cb, float %i.bx)
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next.i.1
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !48
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next.i.1
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !48
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %i.ce, float %i.cg, float %i.cc)
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next.i.2
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !48
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next.i.2
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !48
  %i.cm = tail call nsz float @llvm.fmuladd.f32(float %i.cj, float %i.cl, float %i.ch) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i118.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

.lr.ph.preheader.i118.unr-lcssa:                  ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i118, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.preheader.i118.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %.lr.ph.preheader.i118.unr-lcssa ]
  %.089.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.cm, %.lr.ph.preheader.i118.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod190)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %.089.i.epil = phi float [ %i.cr, %.lr.ph.i.epil ], [ %.089.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i.epil
  %i.co = load float, ptr %i.cn, align 4, !tbaa !48
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i.epil
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !48
  %i.cr = tail call nsz float @llvm.fmuladd.f32(float %i.co, float %i.cq, float %.089.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i118, label %.lr.ph.i.epil, !llvm.loop !85

.lr.ph.preheader.i118:                            ; preds = %.lr.ph.i.epil, %.lr.ph.preheader.i118.unr-lcssa
  %.lcssa = phi float [ %i.cm, %.lr.ph.preheader.i118.unr-lcssa ], [ %i.cr, %.lr.ph.i.epil ]
  store float %.lcssa, ptr %i.bm, align 4, !tbaa !48
  br i1 %i.av, label %.lr.ph.i120.epil.preheader, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %.lr.ph.preheader.i118, %.lr.ph.i120
  %indvars.iv.i121 = phi i64 [ %indvars.iv.next.i123.3, %.lr.ph.i120 ], [ 0, %.lr.ph.preheader.i118 ] ; 5 uses
  %.089.i122 = phi float [ %i.dg, %.lr.ph.i120 ], [ 0.000000e+00, %.lr.ph.preheader.i118 ]
  %niter197 = phi i64 [ %niter197.next.3, %.lr.ph.i120 ], [ 0, %.lr.ph.preheader.i118 ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i121
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !48 ; 2 uses
  %i.cu = tail call nsz float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %.089.i122)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i121
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !48 ; 2 uses
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cu)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i121
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !48 ; 2 uses
  %i.dc = tail call nsz float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.cy)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i121
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %i.df = load float, ptr %i.de, align 4, !tbaa !48 ; 2 uses
  %i.dg = tail call nsz float @llvm.fmuladd.f32(float %i.df, float %i.df, float %i.dc) ; 3 uses
  %indvars.iv.next.i123.3 = add nuw nsw i64 %indvars.iv.i121, 4 ; 2 uses
  %niter197.next.3 = add i64 %niter197, 4         ; 2 uses
  %niter197.ncmp.3 = icmp eq i64 %niter197.next.3, %unroll_iter196
  br i1 %niter197.ncmp.3, label %.lr.ph.preheader.i127.unr-lcssa, label %.lr.ph.i120, !llvm.loop !1

.lr.ph.preheader.i127.unr-lcssa:                  ; preds = %.lr.ph.i120
  br i1 %lcmp.mod193.not, label %.lr.ph.preheader.i127, label %.lr.ph.i120.epil.preheader

.lr.ph.i120.epil.preheader:                       ; preds = %.lr.ph.preheader.i127.unr-lcssa, %.lr.ph.preheader.i118
  %indvars.iv.i121.epil.init = phi i64 [ 0, %.lr.ph.preheader.i118 ], [ %indvars.iv.next.i123.3, %.lr.ph.preheader.i127.unr-lcssa ]
  %.089.i122.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i118 ], [ %i.dg, %.lr.ph.preheader.i127.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod195)
  br label %.lr.ph.i120.epil

.lr.ph.i120.epil:                                 ; preds = %.lr.ph.i120.epil, %.lr.ph.i120.epil.preheader
  %indvars.iv.i121.epil = phi i64 [ %indvars.iv.i121.epil.init, %.lr.ph.i120.epil.preheader ], [ %indvars.iv.next.i123.epil, %.lr.ph.i120.epil ] ; 2 uses
  %.089.i122.epil = phi float [ %.089.i122.epil.init, %.lr.ph.i120.epil.preheader ], [ %i.dj, %.lr.ph.i120.epil ]
  %epil.iter192 = phi i64 [ 0, %.lr.ph.i120.epil.preheader ], [ %epil.iter192.next, %.lr.ph.i120.epil ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i121.epil
  %i.di = load float, ptr %i.dh, align 4, !tbaa !48 ; 2 uses
  %i.dj = tail call nsz float @llvm.fmuladd.f32(float %i.di, float %i.di, float %.089.i122.epil) ; 2 uses
  %indvars.iv.next.i123.epil = add nuw nsw i64 %indvars.iv.i121.epil, 1
  %epil.iter192.next = add i64 %epil.iter192, 1   ; 2 uses
  %epil.iter192.cmp.not = icmp eq i64 %epil.iter192.next, %xtraiter191
  br i1 %epil.iter192.cmp.not, label %.lr.ph.preheader.i127, label %.lr.ph.i120.epil, !llvm.loop !86

.lr.ph.preheader.i127:                            ; preds = %.lr.ph.i120.epil, %.lr.ph.preheader.i127.unr-lcssa
  %.lcssa185.a = phi float [ %i.dg, %.lr.ph.preheader.i127.unr-lcssa ], [ %i.dj, %.lr.ph.i120.epil ]
  store float %.lcssa185.a, ptr %i.bo, align 4, !tbaa !48
  br i1 %i.aw, label %.lr.ph.i129.epil.preheader, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.preheader.i127, %.lr.ph.i129
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i132.3, %.lr.ph.i129 ], [ 0, %.lr.ph.preheader.i127 ] ; 5 uses
  %.089.i131 = phi float [ %i.dy, %.lr.ph.i129 ], [ 0.000000e+00, %.lr.ph.preheader.i127 ]
  %niter204 = phi i64 [ %niter204.next.3, %.lr.ph.i129 ], [ 0, %.lr.ph.preheader.i127 ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i130
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !48 ; 2 uses
  %i.dm = tail call nsz float @llvm.fmuladd.f32(float %i.dl, float %i.dl, float %.089.i131)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i130
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !48 ; 2 uses
  %i.dq = tail call nsz float @llvm.fmuladd.f32(float %i.dp, float %i.dp, float %i.dm)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i130
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !48 ; 2 uses
  %i.du = tail call nsz float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.dq)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i130
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !48 ; 2 uses
  %i.dy = tail call nsz float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %i.du) ; 3 uses
  %indvars.iv.next.i132.3 = add nuw nsw i64 %indvars.iv.i130, 4 ; 2 uses
  %niter204.next.3 = add i64 %niter204, 4         ; 2 uses
  %niter204.ncmp.3 = icmp eq i64 %niter204.next.3, %unroll_iter203
  br i1 %niter204.ncmp.3, label %.lr.ph.preheader.i135.unr-lcssa, label %.lr.ph.i129, !llvm.loop !1

.lr.ph.preheader.i135.unr-lcssa:                  ; preds = %.lr.ph.i129
  br i1 %lcmp.mod200.not, label %.lr.ph.preheader.i135, label %.lr.ph.i129.epil.preheader

.lr.ph.i129.epil.preheader:                       ; preds = %.lr.ph.preheader.i135.unr-lcssa, %.lr.ph.preheader.i127
  %indvars.iv.i130.epil.init = phi i64 [ 0, %.lr.ph.preheader.i127 ], [ %indvars.iv.next.i132.3, %.lr.ph.preheader.i135.unr-lcssa ]
  %.089.i131.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i127 ], [ %i.dy, %.lr.ph.preheader.i135.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod202)
  br label %.lr.ph.i129.epil

.lr.ph.i129.epil:                                 ; preds = %.lr.ph.i129.epil, %.lr.ph.i129.epil.preheader
  %indvars.iv.i130.epil = phi i64 [ %indvars.iv.i130.epil.init, %.lr.ph.i129.epil.preheader ], [ %indvars.iv.next.i132.epil, %.lr.ph.i129.epil ] ; 2 uses
  %.089.i131.epil = phi float [ %.089.i131.epil.init, %.lr.ph.i129.epil.preheader ], [ %i.eb, %.lr.ph.i129.epil ]
  %epil.iter199 = phi i64 [ 0, %.lr.ph.i129.epil.preheader ], [ %epil.iter199.next, %.lr.ph.i129.epil ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i130.epil
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !48 ; 2 uses
  %i.eb = tail call nsz float @llvm.fmuladd.f32(float %i.ea, float %i.ea, float %.089.i131.epil) ; 2 uses
  %indvars.iv.next.i132.epil = add nuw nsw i64 %indvars.iv.i130.epil, 1
  %epil.iter199.next = add i64 %epil.iter199, 1   ; 2 uses
  %epil.iter199.cmp.not = icmp eq i64 %epil.iter199.next, %xtraiter198
  br i1 %epil.iter199.cmp.not, label %.lr.ph.preheader.i135, label %.lr.ph.i129.epil, !llvm.loop !87

.lr.ph.preheader.i135:                            ; preds = %.lr.ph.i129.epil, %.lr.ph.preheader.i135.unr-lcssa
  %.lcssa186.a = phi float [ %i.dy, %.lr.ph.preheader.i135.unr-lcssa ], [ %i.eb, %.lr.ph.i129.epil ]
  store float %.lcssa186.a, ptr %i.bq, align 4, !tbaa !48
  br i1 %i.ax, label %.lr.ph.i137.epil.preheader, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.preheader.i135, %.lr.ph.i137
  %indvars.iv.i138 = phi i64 [ %indvars.iv.next.i139.7, %.lr.ph.i137 ], [ 0, %.lr.ph.preheader.i135 ] ; 9 uses
  %.067.i = phi float [ %i.fg, %.lr.ph.i137 ], [ 0.000000e+00, %.lr.ph.preheader.i135 ]
  %niter211 = phi i64 [ %niter211.next.7, %.lr.ph.i137 ], [ 0, %.lr.ph.preheader.i135 ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !48
  %i.ee = fadd nsz float %.067.i, %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !48
  %i.ei = fadd nsz float %i.ee, %i.eh
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load float, ptr %i.ek, align 4, !tbaa !48
  %i.em = fadd nsz float %i.ei, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !48
  %i.eq = fadd nsz float %i.em, %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load float, ptr %i.es, align 4, !tbaa !48
  %i.eu = fadd nsz float %i.eq, %i.et
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 20
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !48
  %i.ey = fadd nsz float %i.eu, %i.ex
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !48
  %i.fc = fadd nsz float %i.ey, %i.fb
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 28
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !48
  %i.fg = fadd nsz float %i.fc, %i.ff             ; 3 uses
  %indvars.iv.next.i139.7 = add nuw nsw i64 %indvars.iv.i138, 8 ; 2 uses
  %niter211.next.7 = add i64 %niter211, 8         ; 2 uses
  %niter211.ncmp.7 = icmp eq i64 %niter211.next.7, %unroll_iter210
  br i1 %niter211.ncmp.7, label %.lr.ph.preheader.i142.unr-lcssa, label %.lr.ph.i137, !llvm.loop !0

mean_sum_f.exit:                                  ; preds = %bb.c
  store float 0.000000e+00, ptr %i.bm, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.bo, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.bq, align 4, !tbaa !48
  store float 0.000000e+00, ptr %i.bi, align 4, !tbaa !48
  br label %mean_sum_f.exit149

.lr.ph.preheader.i142.unr-lcssa:                  ; preds = %.lr.ph.i137
  br i1 %lcmp.mod207.not, label %.lr.ph.preheader.i142, label %.lr.ph.i137.epil.preheader

.lr.ph.i137.epil.preheader:                       ; preds = %.lr.ph.preheader.i142.unr-lcssa, %.lr.ph.preheader.i135
  %indvars.iv.i138.epil.init = phi i64 [ 0, %.lr.ph.preheader.i135 ], [ %indvars.iv.next.i139.7, %.lr.ph.preheader.i142.unr-lcssa ]
  %.067.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i135 ], [ %i.fg, %.lr.ph.preheader.i142.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod209)
  br label %.lr.ph.i137.epil

.lr.ph.i137.epil:                                 ; preds = %.lr.ph.i137.epil, %.lr.ph.i137.epil.preheader
  %indvars.iv.i138.epil = phi i64 [ %indvars.iv.i138.epil.init, %.lr.ph.i137.epil.preheader ], [ %indvars.iv.next.i139.epil, %.lr.ph.i137.epil ] ; 2 uses
  %.067.i.epil = phi float [ %.067.i.epil.init, %.lr.ph.i137.epil.preheader ], [ %i.fj, %.lr.ph.i137.epil ]
  %epil.iter206 = phi i64 [ 0, %.lr.ph.i137.epil.preheader ], [ %epil.iter206.next, %.lr.ph.i137.epil ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i138.epil
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !48
  %i.fj = fadd nsz float %.067.i.epil, %i.fi      ; 2 uses
  %indvars.iv.next.i139.epil = add nuw nsw i64 %indvars.iv.i138.epil, 1
  %epil.iter206.next = add i64 %epil.iter206, 1   ; 2 uses
  %epil.iter206.cmp.not = icmp eq i64 %epil.iter206.next, %xtraiter205
  br i1 %epil.iter206.cmp.not, label %.lr.ph.preheader.i142, label %.lr.ph.i137.epil, !llvm.loop !88

.lr.ph.preheader.i142:                            ; preds = %.lr.ph.i137.epil, %.lr.ph.preheader.i142.unr-lcssa
  %.lcssa187 = phi float [ %i.fg, %.lr.ph.preheader.i142.unr-lcssa ], [ %i.fj, %.lr.ph.i137.epil ]
  store float %.lcssa187, ptr %i.bi, align 4, !tbaa !48
  br i1 %i.ay, label %.lr.ph.i144.epil.preheader, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %.lr.ph.preheader.i142, %.lr.ph.i144
  %indvars.iv.i145 = phi i64 [ %indvars.iv.next.i147.7, %.lr.ph.i144 ], [ 0, %.lr.ph.preheader.i142 ] ; 9 uses
  %.067.i146 = phi float [ %i.go, %.lr.ph.i144 ], [ 0.000000e+00, %.lr.ph.preheader.i142 ]
  %niter218 = phi i64 [ %niter218.next.7, %.lr.ph.i144 ], [ 0, %.lr.ph.preheader.i142 ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !48
  %i.fm = fadd nsz float %.067.i146, %i.fl
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !48
  %i.fq = fadd nsz float %i.fm, %i.fp
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !48
  %i.fu = fadd nsz float %i.fq, %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !48
  %i.fy = fadd nsz float %i.fu, %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !48
  %i.gc = fadd nsz float %i.fy, %i.gb
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !48
  %i.gg = fadd nsz float %i.gc, %i.gf
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !48
  %i.gk = fadd nsz float %i.gg, %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 28
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !48
  %i.go = fadd nsz float %i.gk, %i.gn             ; 3 uses
  %indvars.iv.next.i147.7 = add nuw nsw i64 %indvars.iv.i145, 8 ; 2 uses
  %niter218.next.7 = add i64 %niter218, 8         ; 2 uses
  %niter218.ncmp.7 = icmp eq i64 %niter218.next.7, %unroll_iter217
  br i1 %niter218.ncmp.7, label %mean_sum_f.exit149.loopexit.unr-lcssa, label %.lr.ph.i144, !llvm.loop !0

mean_sum_f.exit149.loopexit.unr-lcssa:            ; preds = %.lr.ph.i144
  br i1 %lcmp.mod214.not, label %mean_sum_f.exit149, label %.lr.ph.i144.epil.preheader

.lr.ph.i144.epil.preheader:                       ; preds = %mean_sum_f.exit149.loopexit.unr-lcssa, %.lr.ph.preheader.i142
  %indvars.iv.i145.epil.init = phi i64 [ 0, %.lr.ph.preheader.i142 ], [ %indvars.iv.next.i147.7, %mean_sum_f.exit149.loopexit.unr-lcssa ]
  %.067.i146.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i142 ], [ %i.go, %mean_sum_f.exit149.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod216)
  br label %.lr.ph.i144.epil

.lr.ph.i144.epil:                                 ; preds = %.lr.ph.i144.epil, %.lr.ph.i144.epil.preheader
  %indvars.iv.i145.epil = phi i64 [ %indvars.iv.i145.epil.init, %.lr.ph.i144.epil.preheader ], [ %indvars.iv.next.i147.epil, %.lr.ph.i144.epil ] ; 2 uses
  %.067.i146.epil = phi float [ %.067.i146.epil.init, %.lr.ph.i144.epil.preheader ], [ %i.gr, %.lr.ph.i144.epil ]
  %epil.iter213 = phi i64 [ 0, %.lr.ph.i144.epil.preheader ], [ %epil.iter213.next, %.lr.ph.i144.epil ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i145.epil
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !48
  %i.gr = fadd nsz float %.067.i146.epil, %i.gq   ; 2 uses
  %indvars.iv.next.i147.epil = add nuw nsw i64 %indvars.iv.i145.epil, 1
  %epil.iter213.next = add i64 %epil.iter213, 1   ; 2 uses
  %epil.iter213.cmp.not = icmp eq i64 %epil.iter213.next, %xtraiter212
  br i1 %epil.iter213.cmp.not, label %mean_sum_f.exit149, label %.lr.ph.i144.epil, !llvm.loop !89

mean_sum_f.exit149:                               ; preds = %mean_sum_f.exit149.loopexit.unr-lcssa, %.lr.ph.i144.epil, %mean_sum_f.exit
  %.06.lcssa.i141 = phi float [ 0.000000e+00, %mean_sum_f.exit ], [ %i.go, %mean_sum_f.exit149.loopexit.unr-lcssa ], [ %i.gr, %.lr.ph.i144.epil ]
  store float %.06.lcssa.i141, ptr %i.bk, align 4, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %mean_sum_f.exit149, %bb.b
  br i1 %i.aq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %.pre = load float, ptr %i.bq, align 4, !tbaa !48
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count171
  br i1 %exitcond172.not, label %._crit_edge162.loopexit, label %bb.b, !llvm.loop !90

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.gs = phi float [ %.pre, %.lr.ph.preheader ], [ %i.jb, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.gt = add nsw i64 %indvars.iv, %i.at          ; 2 uses
  %i.gu = load float, ptr %i.bi, align 4, !tbaa !48
  %i.gv = load float, ptr %i.bk, align 4, !tbaa !48
  %i.gw = load float, ptr %i.bo, align 4, !tbaa !48
  %i.gx = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.gy = insertelement <2 x float> %i.gx, float %i.gv, i64 1
  %i.gz = fdiv nsz <2 x float> %i.gy, %i.ba       ; 3 uses
  %i.ha = fmul nsz <2 x float> %i.gz, %i.bc       ; 2 uses
  %i.hb = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.hc = insertelement <2 x float> %i.hb, float %i.gs, i64 1
  %i.hd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.gz, <2 x float> %i.hc)
  %i.he = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.hd, <2 x float> zeroinitializer)
  %i.hf = tail call nnan nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.he) ; 2 uses
  %shift = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x float> %i.hf, %shift
  %i.hg = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.hh = fcmp nsz ugt float %i.hg, f0x358637BD
  br i1 %i.hh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.hi = load float, ptr %i.bm, align 4, !tbaa !48
  %i.hj = extractelement <2 x float> %i.ha, i64 0
  %i.hk = extractelement <2 x float> %i.gz, i64 1
  %i.hl = tail call nsz float @llvm.fmuladd.f32(float %i.hj, float %i.hk, float %i.hi)
  %i.hm = fdiv nsz float %i.hl, %i.hg             ; 2 uses
  %i.hn = fcmp nsz ogt float %i.hm, -1.000000e+00
  %i.ho = select nsz i1 %i.hn, float %i.hm, float -1.000000e+00 ; 2 uses
  %i.hp = fcmp nsz ogt float %i.ho, 1.000000e+00
  %..i = select nsz i1 %i.hp, float 1.000000e+00, float %i.ho
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.hq = phi nsz float [ %..i, %bb.e ], [ 0.000000e+00, %.lr.ph ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  store float %i.hq, ptr %i.hr, align 4, !tbaa !48
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv ; 3 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !48
  %i.hu = load float, ptr %i.bi, align 4, !tbaa !48
  %i.hv = fsub nsz float %i.hu, %i.ht             ; 2 uses
  store float %i.hv, ptr %i.bi, align 4, !tbaa !48
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.gt ; 3 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !48
  %i.hy = fadd nsz float %i.hv, %i.hx
  store float %i.hy, ptr %i.bi, align 4, !tbaa !48
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv ; 3 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !48
  %i.ib = load float, ptr %i.bk, align 4, !tbaa !48
  %i.ic = fsub nsz float %i.ib, %i.ia             ; 2 uses
  store float %i.ic, ptr %i.bk, align 4, !tbaa !48
  %i.id = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.gt ; 3 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !48
  %i.if = fadd nsz float %i.ic, %i.ie
  store float %i.if, ptr %i.bk, align 4, !tbaa !48
  %i.ig = load float, ptr %i.hs, align 4, !tbaa !48
  %i.ih = load float, ptr %i.hz, align 4, !tbaa !48
  %i.ii = load float, ptr %i.bm, align 4, !tbaa !48
  %i.ij = fneg nsz float %i.ig
  %i.ik = tail call nsz float @llvm.fmuladd.f32(float %i.ij, float %i.ih, float %i.ii) ; 2 uses
  store float %i.ik, ptr %i.bm, align 4, !tbaa !48
  %i.il = load float, ptr %i.hw, align 4, !tbaa !48
  %i.im = load float, ptr %i.id, align 4, !tbaa !48
  %i.in = tail call nsz float @llvm.fmuladd.f32(float %i.il, float %i.im, float %i.ik)
  store float %i.in, ptr %i.bm, align 4, !tbaa !48
  %i.io = load float, ptr %i.hs, align 4, !tbaa !48 ; 2 uses
  %i.ip = load float, ptr %i.bo, align 4, !tbaa !48
  %i.iq = fneg nsz float %i.io
  %i.ir = tail call nsz float @llvm.fmuladd.f32(float %i.iq, float %i.io, float %i.ip) ; 2 uses
  store float %i.ir, ptr %i.bo, align 4, !tbaa !48
  %i.is = load float, ptr %i.hw, align 4, !tbaa !48 ; 2 uses
  %i.it = tail call nsz float @llvm.fmuladd.f32(float %i.is, float %i.is, float %i.ir)
  %i.iu = tail call nsz float @llvm.maxnum.f32(float %i.it, float 0.000000e+00)
  store float %i.iu, ptr %i.bo, align 4, !tbaa !48
  %i.iv = load float, ptr %i.hz, align 4, !tbaa !48 ; 2 uses
  %i.iw = load float, ptr %i.bq, align 4, !tbaa !48
  %i.ix = fneg nsz float %i.iv
  %i.iy = tail call nsz float @llvm.fmuladd.f32(float %i.ix, float %i.iv, float %i.iw) ; 2 uses
  store float %i.iy, ptr %i.bq, align 4, !tbaa !48
  %i.iz = load float, ptr %i.id, align 4, !tbaa !48 ; 2 uses
  %i.ja = tail call nsz float @llvm.fmuladd.f32(float %i.iz, float %i.iz, float %i.iy)
  %i.jb = tail call nsz float @llvm.maxnum.f32(float %i.ja, float 0.000000e+00) ; 2 uses
  store float %i.jb, ptr %i.bq, align 4, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @xcorrelate_slow_d(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !41   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.f = load i32, ptr %i.e, align 4, !tbaa !45   ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39   ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39   ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !43  ; 3 uses
  %.not = icmp eq i32 %i.aa, 0                    ; 2 uses
  %i.ab = icmp sgt i32 %i.d, 0                    ; 3 uses
  %wide.trip.count.i = zext i32 %i.d to i64       ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !40 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = sitofp nsz i32 %i.d to double           ; 2 uses
  br i1 %i.ae, label %.lr.ph75.split.us.preheader, label %.lr.ph75.split

.lr.ph75.split.us.preheader:                      ; preds = %.lr.ph75
  %i.ag = sext i32 %i.d to i64
  %wide.trip.count123 = zext nneg i32 %i.f to i64
  %wide.trip.count118 = zext nneg i32 %i.ad to i64
  %xtraiter167 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.ah = icmp ult i32 %i.d, 8
  %unroll_iter172 = and i64 %wide.trip.count.i, 2147483640
  %lcmp.mod169.not = icmp eq i64 %xtraiter167, 0
  %lcmp.mod171 = icmp ne i64 %xtraiter167, 0
  %xtraiter174 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.ai = icmp ult i32 %i.d, 8
  %unroll_iter179 = and i64 %wide.trip.count.i, 2147483640
  %lcmp.mod176.not = icmp eq i64 %xtraiter174, 0
  %lcmp.mod178 = icmp ne i64 %xtraiter174, 0
  %i.aj = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %xtraiter181 = and i64 %wide.trip.count.i, 1
  %i.al = icmp eq i32 %i.d, 1
  %unroll_iter187 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod183.not = icmp eq i64 %xtraiter181, 0
  %lcmp.mod186 = trunc i32 %i.d to i1
  br label %.lr.ph75.split.us

.lr.ph75.split.us:                                ; preds = %.lr.ph75.split.us.preheader, %._crit_edge.us
  %indvars.iv120 = phi i64 [ 0, %.lr.ph75.split.us.preheader ], [ %indvars.iv.next121, %._crit_edge.us ] ; 6 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46 ; 11 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv120
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 11 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 6 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv120
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46 ; 5 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv120
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46
  br i1 %.not, label %bb.b, label %.lr.ph75.split.us..lr.ph.us_crit_edge

.lr.ph75.split.us..lr.ph.us_crit_edge:            ; preds = %.lr.ph75.split.us
  %.pre.pre = load double, ptr %i.at, align 8, !tbaa !51
  br label %.lr.ph.us.a

bb.b:                                             ; preds = %.lr.ph75.split.us
  br i1 %i.ab, label %.lr.ph.i.us.preheader, label %mean_sum_d.exit.us

.lr.ph.i.us.preheader:                            ; preds = %bb.b
  br i1 %i.ah, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

mean_sum_d.exit.us:                               ; preds = %bb.b
  store double 0.000000e+00, ptr %i.ar, align 8, !tbaa !51
  br label %mean_sum_d.exit60.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.7, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ] ; 9 uses
  %.067.i.us = phi double [ %i.ca, %.lr.ph.i.us ], [ 0.000000e+00, %.lr.ph.i.us.preheader ]
  %niter173 = phi i64 [ %niter173.next.7, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !51
  %i.ay = fadd nsz double %.067.i.us, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !51
  %i.bc = fadd nsz double %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !51
  %i.bg = fadd nsz double %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !51
  %i.bk = fadd nsz double %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !51
  %i.bo = fadd nsz double %i.bk, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load double, ptr %i.bq, align 8, !tbaa !51
  %i.bs = fadd nsz double %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !51
  %i.bw = fadd nsz double %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.us
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.bz = load double, ptr %i.by, align 8, !tbaa !51
  %i.ca = fadd nsz double %i.bw, %i.bz            ; 3 uses
  %indvars.iv.next.i.us.7 = add nuw nsw i64 %indvars.iv.i.us, 8 ; 2 uses
  %niter173.next.7 = add i64 %niter173, 8         ; 2 uses
  %niter173.ncmp.7 = icmp eq i64 %niter173.next.7, %unroll_iter172
  br i1 %niter173.ncmp.7, label %.lr.ph.preheader.i53.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !2

.lr.ph.preheader.i53.us.unr-lcssa:                ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod169.not, label %.lr.ph.preheader.i53.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %.lr.ph.preheader.i53.us.unr-lcssa, %.lr.ph.i.us.preheader
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.preheader ], [ %indvars.iv.next.i.us.7, %.lr.ph.preheader.i53.us.unr-lcssa ]
  %.067.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.us.preheader ], [ %i.ca, %.lr.ph.preheader.i53.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph.i.us.epil

.lr.ph.i.us.epil:                                 ; preds = %.lr.ph.i.us.epil, %.lr.ph.i.us.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.next.i.us.epil, %.lr.ph.i.us.epil ], [ %indvars.iv.i.us.epil.init, %.lr.ph.i.us.epil.preheader ] ; 2 uses
  %.067.i.us.epil = phi double [ %i.cd, %.lr.ph.i.us.epil ], [ %.067.i.us.epil.init, %.lr.ph.i.us.epil.preheader ]
  %epil.iter168 = phi i64 [ %epil.iter168.next, %.lr.ph.i.us.epil ], [ 0, %.lr.ph.i.us.epil.preheader ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.us.epil
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !51
  %i.cd = fadd nsz double %.067.i.us.epil, %i.cc  ; 2 uses
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter168.next = add i64 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %.lr.ph.preheader.i53.us, label %.lr.ph.i.us.epil, !llvm.loop !92

.lr.ph.preheader.i53.us:                          ; preds = %.lr.ph.i.us.epil, %.lr.ph.preheader.i53.us.unr-lcssa
  %.lcssa = phi double [ %i.ca, %.lr.ph.preheader.i53.us.unr-lcssa ], [ %i.cd, %.lr.ph.i.us.epil ]
  store double %.lcssa, ptr %i.ar, align 8, !tbaa !51
  br i1 %i.ai, label %.lr.ph.i55.us.epil.preheader, label %.lr.ph.i55.us

.lr.ph.i55.us:                                    ; preds = %.lr.ph.preheader.i53.us, %.lr.ph.i55.us
  %indvars.iv.i56.us = phi i64 [ %indvars.iv.next.i58.us.7, %.lr.ph.i55.us ], [ 0, %.lr.ph.preheader.i53.us ] ; 9 uses
  %.067.i57.us = phi double [ %i.di, %.lr.ph.i55.us ], [ 0.000000e+00, %.lr.ph.preheader.i53.us ]
  %niter180 = phi i64 [ %niter180.next.7, %.lr.ph.i55.us ], [ 0, %.lr.ph.preheader.i53.us ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !51
  %i.cg = fadd nsz double %.067.i57.us, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !51
  %i.ck = fadd nsz double %i.cg, %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !51
  %i.co = fadd nsz double %i.ck, %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !51
  %i.cs = fadd nsz double %i.co, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !51
  %i.cw = fadd nsz double %i.cs, %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !51
  %i.da = fadd nsz double %i.cw, %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !51
  %i.de = fadd nsz double %i.da, %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i56.us
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !51
  %i.di = fadd nsz double %i.de, %i.dh            ; 3 uses
  %indvars.iv.next.i58.us.7 = add nuw nsw i64 %indvars.iv.i56.us, 8 ; 2 uses
  %niter180.next.7 = add i64 %niter180, 8         ; 2 uses
  %niter180.ncmp.7 = icmp eq i64 %niter180.next.7, %unroll_iter179
  br i1 %niter180.ncmp.7, label %mean_sum_d.exit60.us.loopexit.unr-lcssa, label %.lr.ph.i55.us, !llvm.loop !2

mean_sum_d.exit60.us.loopexit.unr-lcssa:          ; preds = %.lr.ph.i55.us
  br i1 %lcmp.mod176.not, label %mean_sum_d.exit60.us, label %.lr.ph.i55.us.epil.preheader

.lr.ph.i55.us.epil.preheader:                     ; preds = %mean_sum_d.exit60.us.loopexit.unr-lcssa, %.lr.ph.preheader.i53.us
  %indvars.iv.i56.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i53.us ], [ %indvars.iv.next.i58.us.7, %mean_sum_d.exit60.us.loopexit.unr-lcssa ]
  %.067.i57.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i53.us ], [ %i.di, %mean_sum_d.exit60.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph.i55.us.epil

.lr.ph.i55.us.epil:                               ; preds = %.lr.ph.i55.us.epil, %.lr.ph.i55.us.epil.preheader
  %indvars.iv.i56.us.epil = phi i64 [ %indvars.iv.i56.us.epil.init, %.lr.ph.i55.us.epil.preheader ], [ %indvars.iv.next.i58.us.epil, %.lr.ph.i55.us.epil ] ; 2 uses
  %.067.i57.us.epil = phi double [ %.067.i57.us.epil.init, %.lr.ph.i55.us.epil.preheader ], [ %i.dl, %.lr.ph.i55.us.epil ]
  %epil.iter175 = phi i64 [ 0, %.lr.ph.i55.us.epil.preheader ], [ %epil.iter175.next, %.lr.ph.i55.us.epil ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i56.us.epil
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !51
  %i.dl = fadd nsz double %.067.i57.us.epil, %i.dk ; 2 uses
  %indvars.iv.next.i58.us.epil = add nuw nsw i64 %indvars.iv.i56.us.epil, 1
  %epil.iter175.next = add i64 %epil.iter175, 1   ; 2 uses
  %epil.iter175.cmp.not = icmp eq i64 %epil.iter175.next, %xtraiter174
  br i1 %epil.iter175.cmp.not, label %mean_sum_d.exit60.us, label %.lr.ph.i55.us.epil, !llvm.loop !93

mean_sum_d.exit60.us:                             ; preds = %mean_sum_d.exit60.us.loopexit.unr-lcssa, %.lr.ph.i55.us.epil, %mean_sum_d.exit.us
  %.06.lcssa.i52.us = phi double [ 0.000000e+00, %mean_sum_d.exit.us ], [ %i.di, %mean_sum_d.exit60.us.loopexit.unr-lcssa ], [ %i.dl, %.lr.ph.i55.us.epil ] ; 2 uses
  store double %.06.lcssa.i52.us, ptr %i.at, align 8, !tbaa !51
  br label %.lr.ph.us.a

.lr.ph.us.a:                                      ; preds = %.lr.ph75.split.us..lr.ph.us_crit_edge, %mean_sum_d.exit60.us
  %.pre = phi double [ %.06.lcssa.i52.us, %mean_sum_d.exit60.us ], [ %.pre.pre, %.lr.ph75.split.us..lr.ph.us_crit_edge ]
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us.a, %xcorrelate_d.exit.us
  %i.dm = phi double [ %i.fz, %xcorrelate_d.exit.us ], [ %.pre, %.lr.ph.us.a ]
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %xcorrelate_d.exit.us ], [ 0, %.lr.ph.us.a ] ; 5 uses
  %i.dn = add nsw i64 %indvars.iv115, %i.ag       ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv115 ; 4 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv115 ; 4 uses
  %i.dq = load double, ptr %i.ar, align 8, !tbaa !51
  %i.dr = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %i.dq, i64 1
  %i.dt = fdiv nsz <2 x double> %i.ds, %i.ak      ; 3 uses
  br i1 %i.ab, label %.lr.ph.i63.us.preheader, label %xcorrelate_d.exit.us

.lr.ph.i63.us.preheader:                          ; preds = %bb.c
  br i1 %i.al, label %.lr.ph.i63.us.epil.preheader, label %.lr.ph.i63.us

.lr.ph.i63.us:                                    ; preds = %.lr.ph.i63.us.preheader, %.lr.ph.i63.us
  %indvars.iv.i64.us = phi i64 [ %indvars.iv.next.i65.us.1, %.lr.ph.i63.us ], [ 0, %.lr.ph.i63.us.preheader ] ; 4 uses
  %.03233.i.us = phi double [ %i.ep, %.lr.ph.i63.us ], [ 0.000000e+00, %.lr.ph.i63.us.preheader ]
  %i.du = phi <2 x double> [ %i.eq, %.lr.ph.i63.us ], [ zeroinitializer, %.lr.ph.i63.us.preheader ]
  %niter188 = phi i64 [ %niter188.next.1, %.lr.ph.i63.us ], [ 0, %.lr.ph.i63.us.preheader ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i64.us
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !51
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i64.us
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !51
  %i.dz = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.dw, i64 1
  %i.eb = fsub nsz <2 x double> %i.ea, %i.dt      ; 4 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 0
  %i.ed = extractelement <2 x double> %i.eb, i64 1
  %i.ee = tail call nsz double @llvm.fmuladd.f64(double %i.ed, double %i.ec, double %.03233.i.us)
  %i.ef = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.eb, <2 x double> %i.du)
  %indvars.iv.next.i65.us = or disjoint i64 %indvars.iv.i64.us, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next.i65.us
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !51
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next.i65.us
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !51
  %i.ek = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.eh, i64 1
  %i.em = fsub nsz <2 x double> %i.el, %i.dt      ; 4 uses
  %i.en = extractelement <2 x double> %i.em, i64 0
  %i.eo = extractelement <2 x double> %i.em, i64 1
  %i.ep = tail call nsz double @llvm.fmuladd.f64(double %i.eo, double %i.en, double %i.ee) ; 3 uses
  %i.eq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.em, <2 x double> %i.ef) ; 3 uses
  %indvars.iv.next.i65.us.1 = add nuw nsw i64 %indvars.iv.i64.us, 2 ; 2 uses
  %niter188.next.1 = add i64 %niter188, 2         ; 2 uses
  %niter188.ncmp.1 = icmp eq i64 %niter188.next.1, %unroll_iter187
  br i1 %niter188.ncmp.1, label %._crit_edge.loopexit.i.us.unr-lcssa, label %.lr.ph.i63.us, !llvm.loop !94

._crit_edge.loopexit.i.us.unr-lcssa:              ; preds = %.lr.ph.i63.us
  br i1 %lcmp.mod183.not, label %._crit_edge.loopexit.i.us, label %.lr.ph.i63.us.epil.preheader

.lr.ph.i63.us.epil.preheader:                     ; preds = %._crit_edge.loopexit.i.us.unr-lcssa, %.lr.ph.i63.us.preheader
  %indvars.iv.i64.us.epil.init = phi i64 [ 0, %.lr.ph.i63.us.preheader ], [ %indvars.iv.next.i65.us.1, %._crit_edge.loopexit.i.us.unr-lcssa ] ; 2 uses
  %.03233.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.i63.us.preheader ], [ %i.ep, %._crit_edge.loopexit.i.us.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i63.us.preheader ], [ %i.eq, %._crit_edge.loopexit.i.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod186)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i64.us.epil.init
  %i.es = load double, ptr %i.er, align 8, !tbaa !51
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i64.us.epil.init
  %i.eu = load double, ptr %i.et, align 8, !tbaa !51
  %i.ev = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.es, i64 1
  %i.ex = fsub nsz <2 x double> %i.ew, %i.dt      ; 4 uses
  %i.ey = extractelement <2 x double> %i.ex, i64 0
  %i.ez = extractelement <2 x double> %i.ex, i64 1
  %i.fa = tail call nsz double @llvm.fmuladd.f64(double %i.ez, double %i.ey, double %.03233.i.us.epil.init)
  %i.fb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> %i.ex, <2 x double> %.epil.init)
  br label %._crit_edge.loopexit.i.us

._crit_edge.loopexit.i.us:                        ; preds = %._crit_edge.loopexit.i.us.unr-lcssa, %.lr.ph.i63.us.epil.preheader
  %.lcssa147 = phi double [ %i.ep, %._crit_edge.loopexit.i.us.unr-lcssa ], [ %i.fa, %.lr.ph.i63.us.epil.preheader ]
  %.lcssa146 = phi <2 x double> [ %i.eq, %._crit_edge.loopexit.i.us.unr-lcssa ], [ %i.fb, %.lr.ph.i63.us.epil.preheader ] ; 2 uses
  %shift = shufflevector <2 x double> %.lcssa146, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x double> %shift, %.lcssa146
  %i.fc = insertelement <2 x double> poison, double %.lcssa147, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  br label %xcorrelate_d.exit.us

xcorrelate_d.exit.us:                             ; preds = %._crit_edge.loopexit.i.us, %bb.c
  %i.fe = phi <2 x double> [ zeroinitializer, %bb.c ], [ %i.fd, %._crit_edge.loopexit.i.us ]
  %i.ff = fdiv nsz <2 x double> %i.fe, %i.ak      ; 2 uses
  %i.fg = extractelement <2 x double> %i.ff, i64 1
  %i.fh = fdiv nsz double %i.fg, %i.af
  %i.fi = tail call nsz double @llvm.sqrt.f64(double %i.fh) ; 2 uses
  %i.fj = fcmp nsz ole double %i.fi, 1.000000e-09
  %i.fk = extractelement <2 x double> %i.ff, i64 0
  %i.fl = fdiv nsz double %i.fk, %i.fi
  %i.fm = select nsz i1 %i.fj, double 0.000000e+00, double %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv115
  store double %i.fm, ptr %i.fn, align 8, !tbaa !51
  %i.fo = load double, ptr %i.do, align 8, !tbaa !51
  %i.fp = load double, ptr %i.ar, align 8, !tbaa !51
  %i.fq = fsub nsz double %i.fp, %i.fo            ; 2 uses
  store double %i.fq, ptr %i.ar, align 8, !tbaa !51
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.dn
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !51
  %i.ft = fadd nsz double %i.fq, %i.fs
  store double %i.ft, ptr %i.ar, align 8, !tbaa !51
  %i.fu = load double, ptr %i.dp, align 8, !tbaa !51
  %i.fv = load double, ptr %i.at, align 8, !tbaa !51
  %i.fw = fsub nsz double %i.fv, %i.fu            ; 2 uses
  store double %i.fw, ptr %i.at, align 8, !tbaa !51
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.dn
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !51
  %i.fz = fadd nsz double %i.fw, %i.fy            ; 2 uses
  store double %i.fz, ptr %i.at, align 8, !tbaa !51
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge.us, label %bb.c, !llvm.loop !95

._crit_edge.us:                                   ; preds = %xcorrelate_d.exit.us
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %._crit_edge76.loopexit, label %.lr.ph75.split.us, !llvm.loop !96

.lr.ph75.split:                                   ; preds = %.lr.ph75
  br i1 %.not, label %.lr.ph75.split.split.us, label %._crit_edge76

.lr.ph75.split.split.us:                          ; preds = %.lr.ph75.split
  %wide.trip.count113 = zext nneg i32 %i.f to i64 ; 3 uses
  br i1 %i.ab, label %.lr.ph.preheader.i.us79.us.preheader, label %mean_sum_d.exit.us78.preheader

mean_sum_d.exit.us78.preheader:                   ; preds = %.lr.ph75.split.split.us
  %xtraiter = and i64 %wide.trip.count113, 3      ; 3 uses
  %i.ga = icmp ult i32 %i.f, 4
  br i1 %i.ga, label %mean_sum_d.exit.us78.epil.preheader, label %mean_sum_d.exit.us78.preheader.new

mean_sum_d.exit.us78.preheader.new:               ; preds = %mean_sum_d.exit.us78.preheader
  %unroll_iter = and i64 %wide.trip.count113, 2147483644
  br label %mean_sum_d.exit.us78

.lr.ph.preheader.i.us79.us.preheader:             ; preds = %.lr.ph75.split.split.us
  %xtraiter153 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.gb = icmp ult i32 %i.d, 8
  %unroll_iter158 = and i64 %wide.trip.count.i, 2147483640
  %lcmp.mod155.not = icmp eq i64 %xtraiter153, 0
  %lcmp.mod157 = icmp ne i64 %xtraiter153, 0
  %xtraiter160 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.gc = icmp ult i32 %i.d, 8
  %unroll_iter165 = and i64 %wide.trip.count.i, 2147483640
  %lcmp.mod162.not = icmp eq i64 %xtraiter160, 0
  %lcmp.mod164 = icmp ne i64 %xtraiter160, 0
  br label %.lr.ph.preheader.i.us79.us

.lr.ph.preheader.i.us79.us:                       ; preds = %.lr.ph.preheader.i.us79.us.preheader, %mean_sum_d.exit60.loopexit.us92.us
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %mean_sum_d.exit60.loopexit.us92.us ], [ 0, %.lr.ph.preheader.i.us79.us.preheader ] ; 5 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv110
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !46 ; 9 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv110
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !46 ; 9 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv110
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !46
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv110
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !46
  br i1 %i.gb, label %.lr.ph.i.us80.us.epil.preheader, label %.lr.ph.i.us80.us

.lr.ph.i.us80.us:                                 ; preds = %.lr.ph.preheader.i.us79.us, %.lr.ph.i.us80.us
  %indvars.iv.i.us81.us = phi i64 [ %indvars.iv.next.i.us83.us.7, %.lr.ph.i.us80.us ], [ 0, %.lr.ph.preheader.i.us79.us ] ; 9 uses
  %.067.i.us82.us = phi double [ %i.hp, %.lr.ph.i.us80.us ], [ 0.000000e+00, %.lr.ph.preheader.i.us79.us ]
  %niter159 = phi i64 [ %niter159.next.7, %.lr.ph.i.us80.us ], [ 0, %.lr.ph.preheader.i.us79.us ]
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !51
  %i.gn = fadd nsz double %.067.i.us82.us, %i.gm
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !51
  %i.gr = fadd nsz double %i.gn, %i.gq
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !51
  %i.gv = fadd nsz double %i.gr, %i.gu
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !51
  %i.gz = fadd nsz double %i.gv, %i.gy
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !51
  %i.hd = fadd nsz double %i.gz, %i.hc
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !51
  %i.hh = fadd nsz double %i.hd, %i.hg
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !51
  %i.hl = fadd nsz double %i.hh, %i.hk
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !51
  %i.hp = fadd nsz double %i.hl, %i.ho            ; 3 uses
  %indvars.iv.next.i.us83.us.7 = add nuw nsw i64 %indvars.iv.i.us81.us, 8 ; 2 uses
  %niter159.next.7 = add i64 %niter159, 8         ; 2 uses
  %niter159.ncmp.7 = icmp eq i64 %niter159.next.7, %unroll_iter158
  br i1 %niter159.ncmp.7, label %.lr.ph.preheader.i53.us85.us.unr-lcssa, label %.lr.ph.i.us80.us, !llvm.loop !2

.lr.ph.preheader.i53.us85.us.unr-lcssa:           ; preds = %.lr.ph.i.us80.us
  br i1 %lcmp.mod155.not, label %.lr.ph.preheader.i53.us85.us, label %.lr.ph.i.us80.us.epil.preheader

.lr.ph.i.us80.us.epil.preheader:                  ; preds = %.lr.ph.preheader.i53.us85.us.unr-lcssa, %.lr.ph.preheader.i.us79.us
  %indvars.iv.i.us81.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us79.us ], [ %indvars.iv.next.i.us83.us.7, %.lr.ph.preheader.i53.us85.us.unr-lcssa ]
  %.067.i.us82.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i.us79.us ], [ %i.hp, %.lr.ph.preheader.i53.us85.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod157)
  br label %.lr.ph.i.us80.us.epil

.lr.ph.i.us80.us.epil:                            ; preds = %.lr.ph.i.us80.us.epil, %.lr.ph.i.us80.us.epil.preheader
  %indvars.iv.i.us81.us.epil = phi i64 [ %indvars.iv.i.us81.us.epil.init, %.lr.ph.i.us80.us.epil.preheader ], [ %indvars.iv.next.i.us83.us.epil, %.lr.ph.i.us80.us.epil ] ; 2 uses
  %.067.i.us82.us.epil = phi double [ %.067.i.us82.us.epil.init, %.lr.ph.i.us80.us.epil.preheader ], [ %i.hs, %.lr.ph.i.us80.us.epil ]
  %epil.iter154 = phi i64 [ 0, %.lr.ph.i.us80.us.epil.preheader ], [ %epil.iter154.next, %.lr.ph.i.us80.us.epil ]
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i.us81.us.epil
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !51
  %i.hs = fadd nsz double %.067.i.us82.us.epil, %i.hr ; 2 uses
  %indvars.iv.next.i.us83.us.epil = add nuw nsw i64 %indvars.iv.i.us81.us.epil, 1
  %epil.iter154.next = add i64 %epil.iter154, 1   ; 2 uses
  %epil.iter154.cmp.not = icmp eq i64 %epil.iter154.next, %xtraiter153
  br i1 %epil.iter154.cmp.not, label %.lr.ph.preheader.i53.us85.us, label %.lr.ph.i.us80.us.epil, !llvm.loop !97

.lr.ph.preheader.i53.us85.us:                     ; preds = %.lr.ph.i.us80.us.epil, %.lr.ph.preheader.i53.us85.us.unr-lcssa
  %.lcssa149 = phi double [ %i.hp, %.lr.ph.preheader.i53.us85.us.unr-lcssa ], [ %i.hs, %.lr.ph.i.us80.us.epil ]
  store double %.lcssa149, ptr %i.gi, align 8, !tbaa !51
  br i1 %i.gc, label %.lr.ph.i55.us87.us.epil.preheader, label %.lr.ph.i55.us87.us

.lr.ph.i55.us87.us:                               ; preds = %.lr.ph.preheader.i53.us85.us, %.lr.ph.i55.us87.us
  %indvars.iv.i56.us88.us = phi i64 [ %indvars.iv.next.i58.us90.us.7, %.lr.ph.i55.us87.us ], [ 0, %.lr.ph.preheader.i53.us85.us ] ; 9 uses
  %.067.i57.us89.us = phi double [ %i.ix, %.lr.ph.i55.us87.us ], [ 0.000000e+00, %.lr.ph.preheader.i53.us85.us ]
  %niter166 = phi i64 [ %niter166.next.7, %.lr.ph.i55.us87.us ], [ 0, %.lr.ph.preheader.i53.us85.us ]
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !51
  %i.hv = fadd nsz double %.067.i57.us89.us, %i.hu
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !51
  %i.hz = fadd nsz double %i.hv, %i.hy
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !51
  %i.id = fadd nsz double %i.hz, %i.ic
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load double, ptr %i.if, align 8, !tbaa !51
  %i.ih = fadd nsz double %i.id, %i.ig
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !51
  %i.il = fadd nsz double %i.ih, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 40
  %i.io = load double, ptr %i.in, align 8, !tbaa !51
  %i.ip = fadd nsz double %i.il, %i.io
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 48
  %i.is = load double, ptr %i.ir, align 8, !tbaa !51
  %i.it = fadd nsz double %i.ip, %i.is
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 56
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !51
  %i.ix = fadd nsz double %i.it, %i.iw            ; 3 uses
  %indvars.iv.next.i58.us90.us.7 = add nuw nsw i64 %indvars.iv.i56.us88.us, 8 ; 2 uses
  %niter166.next.7 = add i64 %niter166, 8         ; 2 uses
  %niter166.ncmp.7 = icmp eq i64 %niter166.next.7, %unroll_iter165
  br i1 %niter166.ncmp.7, label %mean_sum_d.exit60.loopexit.us92.us.unr-lcssa, label %.lr.ph.i55.us87.us, !llvm.loop !2

mean_sum_d.exit60.loopexit.us92.us.unr-lcssa:     ; preds = %.lr.ph.i55.us87.us
  br i1 %lcmp.mod162.not, label %mean_sum_d.exit60.loopexit.us92.us, label %.lr.ph.i55.us87.us.epil.preheader

.lr.ph.i55.us87.us.epil.preheader:                ; preds = %mean_sum_d.exit60.loopexit.us92.us.unr-lcssa, %.lr.ph.preheader.i53.us85.us
  %indvars.iv.i56.us88.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i53.us85.us ], [ %indvars.iv.next.i58.us90.us.7, %mean_sum_d.exit60.loopexit.us92.us.unr-lcssa ]
  %.067.i57.us89.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i53.us85.us ], [ %i.ix, %mean_sum_d.exit60.loopexit.us92.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i55.us87.us.epil

.lr.ph.i55.us87.us.epil:                          ; preds = %.lr.ph.i55.us87.us.epil, %.lr.ph.i55.us87.us.epil.preheader
  %indvars.iv.i56.us88.us.epil = phi i64 [ %indvars.iv.i56.us88.us.epil.init, %.lr.ph.i55.us87.us.epil.preheader ], [ %indvars.iv.next.i58.us90.us.epil, %.lr.ph.i55.us87.us.epil ] ; 2 uses
  %.067.i57.us89.us.epil = phi double [ %.067.i57.us89.us.epil.init, %.lr.ph.i55.us87.us.epil.preheader ], [ %i.ja, %.lr.ph.i55.us87.us.epil ]
  %epil.iter161 = phi i64 [ 0, %.lr.ph.i55.us87.us.epil.preheader ], [ %epil.iter161.next, %.lr.ph.i55.us87.us.epil ]
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.i56.us88.us.epil
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !51
  %i.ja = fadd nsz double %.067.i57.us89.us.epil, %i.iz ; 2 uses
  %indvars.iv.next.i58.us90.us.epil = add nuw nsw i64 %indvars.iv.i56.us88.us.epil, 1
  %epil.iter161.next = add i64 %epil.iter161, 1   ; 2 uses
  %epil.iter161.cmp.not = icmp eq i64 %epil.iter161.next, %xtraiter160
  br i1 %epil.iter161.cmp.not, label %mean_sum_d.exit60.loopexit.us92.us, label %.lr.ph.i55.us87.us.epil, !llvm.loop !98

mean_sum_d.exit60.loopexit.us92.us:               ; preds = %.lr.ph.i55.us87.us.epil, %mean_sum_d.exit60.loopexit.us92.us.unr-lcssa
  %.lcssa150 = phi double [ %i.ix, %mean_sum_d.exit60.loopexit.us92.us.unr-lcssa ], [ %i.ja, %.lr.ph.i55.us87.us.epil ]
  store double %.lcssa150, ptr %i.gk, align 8, !tbaa !51
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %._crit_edge76, label %.lr.ph.preheader.i.us79.us, !llvm.loop !96

mean_sum_d.exit.us78:                             ; preds = %mean_sum_d.exit.us78, %mean_sum_d.exit.us78.preheader.new
  %indvars.iv = phi i64 [ 0, %mean_sum_d.exit.us78.preheader.new ], [ %indvars.iv.next.3, %mean_sum_d.exit.us78 ] ; 6 uses
  %niter = phi i64 [ 0, %mean_sum_d.exit.us78.preheader.new ], [ %niter.next.3, %mean_sum_d.exit.us78 ]
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !46
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !46
  store double 0.000000e+00, ptr %i.jc, align 8, !tbaa !51
  store double 0.000000e+00, ptr %i.je, align 8, !tbaa !51
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !46
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !46
  store double 0.000000e+00, ptr %i.jg, align 8, !tbaa !51
  store double 0.000000e+00, ptr %i.ji, align 8, !tbaa !51
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.1
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !46
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.1
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !46
  store double 0.000000e+00, ptr %i.jk, align 8, !tbaa !51
  store double 0.000000e+00, ptr %i.jm, align 8, !tbaa !51
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.2
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !46
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.2
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !46
  store double 0.000000e+00, ptr %i.jo, align 8, !tbaa !51
  store double 0.000000e+00, ptr %i.jq, align 8, !tbaa !51
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge76.loopexit151.unr-lcssa, label %mean_sum_d.exit.us78, !llvm.loop !96

._crit_edge76.loopexit:                           ; preds = %._crit_edge.us
  %umax = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 1)
  br label %._crit_edge76

._crit_edge76.loopexit151.unr-lcssa:              ; preds = %mean_sum_d.exit.us78
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge76, label %mean_sum_d.exit.us78.epil.preheader

mean_sum_d.exit.us78.epil.preheader:              ; preds = %._crit_edge76.loopexit151.unr-lcssa, %mean_sum_d.exit.us78.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %mean_sum_d.exit.us78.preheader ], [ %indvars.iv.next.3, %._crit_edge76.loopexit151.unr-lcssa ]
  %lcmp.mod152 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %mean_sum_d.exit.us78.epil

mean_sum_d.exit.us78.epil:                        ; preds = %mean_sum_d.exit.us78.epil, %mean_sum_d.exit.us78.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %mean_sum_d.exit.us78.epil ], [ %indvars.iv.epil.init, %mean_sum_d.exit.us78.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %mean_sum_d.exit.us78.epil ], [ 0, %mean_sum_d.exit.us78.epil.preheader ]
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.epil
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !46
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.epil
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !46
  store double 0.000000e+00, ptr %i.js, align 8, !tbaa !51
  store double 0.000000e+00, ptr %i.ju, align 8, !tbaa !51
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge76, label %mean_sum_d.exit.us78.epil, !llvm.loop !99

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit151.unr-lcssa, %mean_sum_d.exit.us78.epil, %mean_sum_d.exit60.loopexit.us92.us, %.lr.ph75.split, %._crit_edge76.loopexit, %bb.a
  %.050.lcssa = phi i32 [ undef, %bb.a ], [ 1, %mean_sum_d.exit60.loopexit.us92.us ], [ %i.aa, %.lr.ph75.split ], [ %umax, %._crit_edge76.loopexit ], [ 1, %mean_sum_d.exit.us78.epil ], [ 1, %._crit_edge76.loopexit151.unr-lcssa ]
  ret i32 %.050.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @xcorrelate_fast_d(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !41   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.f = load i32, ptr %i.e, align 4, !tbaa !45   ; 5 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !43 ; 3 uses
  %.not = icmp eq i32 %i.ae, 0                    ; 2 uses
  %i.af = icmp sgt i32 %i.d, 0                    ; 2 uses
  %wide.trip.count.i = zext i32 %i.d to i64       ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  %i.aj = sitofp nsz i32 %i.d to double           ; 3 uses
  br i1 %i.ai, label %.lr.ph114.split.us.preheader, label %.lr.ph114.split

.lr.ph114.split.us.preheader:                     ; preds = %.lr.ph114
  %i.ak = sext i32 %i.d to i64
  %wide.trip.count168 = zext nneg i32 %i.f to i64
  %wide.trip.count163 = zext nneg i32 %i.ah to i64
  %xtraiter216 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.al = icmp ult i32 %i.d, 4
  %unroll_iter221 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod218.not = icmp eq i64 %xtraiter216, 0
  %lcmp.mod220 = icmp ne i64 %xtraiter216, 0
  %xtraiter223 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.am = icmp ult i32 %i.d, 4
  %unroll_iter228 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod225.not = icmp eq i64 %xtraiter223, 0
  %lcmp.mod227 = icmp ne i64 %xtraiter223, 0
  %xtraiter230 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.an = icmp ult i32 %i.d, 4
  %unroll_iter235 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod232.not = icmp eq i64 %xtraiter230, 0
  %lcmp.mod234 = icmp ne i64 %xtraiter230, 0
  br label %.lr.ph114.split.us

.lr.ph114.split.us:                               ; preds = %.lr.ph114.split.us.preheader, %._crit_edge.us
  %indvars.iv165 = phi i64 [ 0, %.lr.ph114.split.us.preheader ], [ %indvars.iv.next166, %._crit_edge.us ] ; 7 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv165
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 12 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv165
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 12 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv165
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46 ; 6 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv165
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46 ; 6 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv165
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !46 ; 5 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv165
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !46
  br i1 %.not, label %bb.b, label %.lr.ph114.split.us..lr.ph.us_crit_edge

.lr.ph114.split.us..lr.ph.us_crit_edge:           ; preds = %.lr.ph114.split.us
  %.pre.pre = load double, ptr %i.ax, align 8, !tbaa !51
  br label %.lr.ph.us.a

bb.b:                                             ; preds = %.lr.ph114.split.us
  br i1 %i.af, label %.lr.ph.i.us.preheader, label %square_sum_d.exit97.us

.lr.ph.i.us.preheader:                            ; preds = %bb.b
  br i1 %i.al, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

square_sum_d.exit97.us:                           ; preds = %bb.b
  store double 0.000000e+00, ptr %i.at, align 8, !tbaa !51
  store double 0.000000e+00, ptr %i.av, align 8, !tbaa !51
  br label %square_sum_d.exit106.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.3, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ] ; 6 uses
  %.089.i.us = phi double [ %i.bt, %.lr.ph.i.us ], [ 0.000000e+00, %.lr.ph.i.us.preheader ]
  %niter222 = phi i64 [ %niter222.next.3, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i.us
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !51
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i.us
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !51
  %i.be = tail call nsz double @llvm.fmuladd.f64(double %i.bb, double %i.bd, double %.089.i.us)
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i.us
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i.us
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !51
  %i.bj = tail call nsz double @llvm.fmuladd.f64(double %i.bg, double %i.bi, double %i.be)
  %indvars.iv.next.i.us.1 = or disjoint i64 %indvars.iv.i.us, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i.us.1
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !51
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i.us.1
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !51
  %i.bo = tail call nsz double @llvm.fmuladd.f64(double %i.bl, double %i.bn, double %i.bj)
  %indvars.iv.next.i.us.2 = or disjoint i64 %indvars.iv.i.us, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i.us.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !51
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i.us.2
  %i.bs = load double, ptr %i.br, align 8, !tbaa !51
  %i.bt = tail call nsz double @llvm.fmuladd.f64(double %i.bq, double %i.bs, double %i.bo) ; 3 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %niter222.next.3 = add i64 %niter222, 4         ; 2 uses
  %niter222.ncmp.3 = icmp eq i64 %niter222.next.3, %unroll_iter221
  br i1 %niter222.ncmp.3, label %.lr.ph.preheader.i90.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !3

.lr.ph.preheader.i90.us.unr-lcssa:                ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod218.not, label %.lr.ph.preheader.i90.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %.lr.ph.preheader.i90.us.unr-lcssa, %.lr.ph.i.us.preheader
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.preheader ], [ %indvars.iv.next.i.us.3, %.lr.ph.preheader.i90.us.unr-lcssa ]
  %.089.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.us.preheader ], [ %i.bt, %.lr.ph.preheader.i90.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod220)
  br label %.lr.ph.i.us.epil

.lr.ph.i.us.epil:                                 ; preds = %.lr.ph.i.us.epil, %.lr.ph.i.us.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.next.i.us.epil, %.lr.ph.i.us.epil ], [ %indvars.iv.i.us.epil.init, %.lr.ph.i.us.epil.preheader ] ; 3 uses
  %.089.i.us.epil = phi double [ %i.by, %.lr.ph.i.us.epil ], [ %.089.i.us.epil.init, %.lr.ph.i.us.epil.preheader ]
  %epil.iter217 = phi i64 [ %epil.iter217.next, %.lr.ph.i.us.epil ], [ 0, %.lr.ph.i.us.epil.preheader ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i.us.epil
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !51
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i.us.epil
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !51
  %i.by = tail call nsz double @llvm.fmuladd.f64(double %i.bv, double %i.bx, double %.089.i.us.epil) ; 2 uses
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter217.next = add i64 %epil.iter217, 1   ; 2 uses
  %epil.iter217.cmp.not = icmp eq i64 %epil.iter217.next, %xtraiter216
  br i1 %epil.iter217.cmp.not, label %.lr.ph.preheader.i90.us, label %.lr.ph.i.us.epil, !llvm.loop !100

.lr.ph.preheader.i90.us:                          ; preds = %.lr.ph.i.us.epil, %.lr.ph.preheader.i90.us.unr-lcssa
  %.lcssa = phi double [ %i.bt, %.lr.ph.preheader.i90.us.unr-lcssa ], [ %i.by, %.lr.ph.i.us.epil ]
  store double %.lcssa, ptr %i.at, align 8, !tbaa !51
  br i1 %i.am, label %.lr.ph.i92.us.epil.preheader, label %.lr.ph.i92.us

.lr.ph.i92.us:                                    ; preds = %.lr.ph.preheader.i90.us, %.lr.ph.i92.us
  %indvars.iv.i93.us = phi i64 [ %indvars.iv.next.i95.us.3, %.lr.ph.i92.us ], [ 0, %.lr.ph.preheader.i90.us ] ; 5 uses
  %.089.i94.us = phi double [ %i.cn, %.lr.ph.i92.us ], [ 0.000000e+00, %.lr.ph.preheader.i90.us ]
  %niter229 = phi i64 [ %niter229.next.3, %.lr.ph.i92.us ], [ 0, %.lr.ph.preheader.i90.us ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i93.us
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !51 ; 2 uses
  %i.cb = tail call nsz double @llvm.fmuladd.f64(double %i.ca, double %i.ca, double %.089.i94.us)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i93.us
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !51 ; 2 uses
  %i.cf = tail call nsz double @llvm.fmuladd.f64(double %i.ce, double %i.ce, double %i.cb)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i93.us
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !51 ; 2 uses
  %i.cj = tail call nsz double @llvm.fmuladd.f64(double %i.ci, double %i.ci, double %i.cf)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i93.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !51 ; 2 uses
  %i.cn = tail call nsz double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double %i.cj) ; 3 uses
  %indvars.iv.next.i95.us.3 = add nuw nsw i64 %indvars.iv.i93.us, 4 ; 2 uses
  %niter229.next.3 = add i64 %niter229, 4         ; 2 uses
  %niter229.ncmp.3 = icmp eq i64 %niter229.next.3, %unroll_iter228
  br i1 %niter229.ncmp.3, label %.lr.ph.preheader.i99.us.unr-lcssa, label %.lr.ph.i92.us, !llvm.loop !3

.lr.ph.preheader.i99.us.unr-lcssa:                ; preds = %.lr.ph.i92.us
  br i1 %lcmp.mod225.not, label %.lr.ph.preheader.i99.us, label %.lr.ph.i92.us.epil.preheader

.lr.ph.i92.us.epil.preheader:                     ; preds = %.lr.ph.preheader.i99.us.unr-lcssa, %.lr.ph.preheader.i90.us
  %indvars.iv.i93.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i90.us ], [ %indvars.iv.next.i95.us.3, %.lr.ph.preheader.i99.us.unr-lcssa ]
  %.089.i94.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i90.us ], [ %i.cn, %.lr.ph.preheader.i99.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod227)
  br label %.lr.ph.i92.us.epil

.lr.ph.i92.us.epil:                               ; preds = %.lr.ph.i92.us.epil, %.lr.ph.i92.us.epil.preheader
  %indvars.iv.i93.us.epil = phi i64 [ %indvars.iv.i93.us.epil.init, %.lr.ph.i92.us.epil.preheader ], [ %indvars.iv.next.i95.us.epil, %.lr.ph.i92.us.epil ] ; 2 uses
  %.089.i94.us.epil = phi double [ %.089.i94.us.epil.init, %.lr.ph.i92.us.epil.preheader ], [ %i.cq, %.lr.ph.i92.us.epil ]
  %epil.iter224 = phi i64 [ 0, %.lr.ph.i92.us.epil.preheader ], [ %epil.iter224.next, %.lr.ph.i92.us.epil ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i93.us.epil
  %i.cp = load double, ptr %i.co, align 8, !tbaa !51 ; 2 uses
  %i.cq = tail call nsz double @llvm.fmuladd.f64(double %i.cp, double %i.cp, double %.089.i94.us.epil) ; 2 uses
  %indvars.iv.next.i95.us.epil = add nuw nsw i64 %indvars.iv.i93.us.epil, 1
  %epil.iter224.next = add i64 %epil.iter224, 1   ; 2 uses
  %epil.iter224.cmp.not = icmp eq i64 %epil.iter224.next, %xtraiter223
  br i1 %epil.iter224.cmp.not, label %.lr.ph.preheader.i99.us, label %.lr.ph.i92.us.epil, !llvm.loop !101

.lr.ph.preheader.i99.us:                          ; preds = %.lr.ph.i92.us.epil, %.lr.ph.preheader.i99.us.unr-lcssa
  %.lcssa188 = phi double [ %i.cn, %.lr.ph.preheader.i99.us.unr-lcssa ], [ %i.cq, %.lr.ph.i92.us.epil ]
  store double %.lcssa188, ptr %i.av, align 8, !tbaa !51
  br i1 %i.an, label %.lr.ph.i101.us.epil.preheader, label %.lr.ph.i101.us

.lr.ph.i101.us:                                   ; preds = %.lr.ph.preheader.i99.us, %.lr.ph.i101.us
  %indvars.iv.i102.us = phi i64 [ %indvars.iv.next.i104.us.3, %.lr.ph.i101.us ], [ 0, %.lr.ph.preheader.i99.us ] ; 5 uses
  %.089.i103.us = phi double [ %i.df, %.lr.ph.i101.us ], [ 0.000000e+00, %.lr.ph.preheader.i99.us ]
  %niter236 = phi i64 [ %niter236.next.3, %.lr.ph.i101.us ], [ 0, %.lr.ph.preheader.i99.us ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i102.us
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !51 ; 2 uses
  %i.ct = tail call nsz double @llvm.fmuladd.f64(double %i.cs, double %i.cs, double %.089.i103.us)
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i102.us
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !51 ; 2 uses
  %i.cx = tail call nsz double @llvm.fmuladd.f64(double %i.cw, double %i.cw, double %i.ct)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i102.us
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load double, ptr %i.cz, align 8, !tbaa !51 ; 2 uses
  %i.db = tail call nsz double @llvm.fmuladd.f64(double %i.da, double %i.da, double %i.cx)
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i102.us
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load double, ptr %i.dd, align 8, !tbaa !51 ; 2 uses
  %i.df = tail call nsz double @llvm.fmuladd.f64(double %i.de, double %i.de, double %i.db) ; 3 uses
  %indvars.iv.next.i104.us.3 = add nuw nsw i64 %indvars.iv.i102.us, 4 ; 2 uses
  %niter236.next.3 = add i64 %niter236, 4         ; 2 uses
  %niter236.ncmp.3 = icmp eq i64 %niter236.next.3, %unroll_iter235
  br i1 %niter236.ncmp.3, label %square_sum_d.exit106.us.loopexit.unr-lcssa, label %.lr.ph.i101.us, !llvm.loop !3

square_sum_d.exit106.us.loopexit.unr-lcssa:       ; preds = %.lr.ph.i101.us
  br i1 %lcmp.mod232.not, label %square_sum_d.exit106.us, label %.lr.ph.i101.us.epil.preheader

.lr.ph.i101.us.epil.preheader:                    ; preds = %square_sum_d.exit106.us.loopexit.unr-lcssa, %.lr.ph.preheader.i99.us
  %indvars.iv.i102.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i99.us ], [ %indvars.iv.next.i104.us.3, %square_sum_d.exit106.us.loopexit.unr-lcssa ]
  %.089.i103.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i99.us ], [ %i.df, %square_sum_d.exit106.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod234)
  br label %.lr.ph.i101.us.epil

.lr.ph.i101.us.epil:                              ; preds = %.lr.ph.i101.us.epil, %.lr.ph.i101.us.epil.preheader
  %indvars.iv.i102.us.epil = phi i64 [ %indvars.iv.i102.us.epil.init, %.lr.ph.i101.us.epil.preheader ], [ %indvars.iv.next.i104.us.epil, %.lr.ph.i101.us.epil ] ; 2 uses
  %.089.i103.us.epil = phi double [ %.089.i103.us.epil.init, %.lr.ph.i101.us.epil.preheader ], [ %i.di, %.lr.ph.i101.us.epil ]
  %epil.iter231 = phi i64 [ 0, %.lr.ph.i101.us.epil.preheader ], [ %epil.iter231.next, %.lr.ph.i101.us.epil ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i102.us.epil
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !51 ; 2 uses
  %i.di = tail call nsz double @llvm.fmuladd.f64(double %i.dh, double %i.dh, double %.089.i103.us.epil) ; 2 uses
  %indvars.iv.next.i104.us.epil = add nuw nsw i64 %indvars.iv.i102.us.epil, 1
  %epil.iter231.next = add i64 %epil.iter231, 1   ; 2 uses
  %epil.iter231.cmp.not = icmp eq i64 %epil.iter231.next, %xtraiter230
  br i1 %epil.iter231.cmp.not, label %square_sum_d.exit106.us, label %.lr.ph.i101.us.epil, !llvm.loop !102

square_sum_d.exit106.us:                          ; preds = %square_sum_d.exit106.us.loopexit.unr-lcssa, %.lr.ph.i101.us.epil, %square_sum_d.exit97.us
  %.08.lcssa.i98.us = phi double [ 0.000000e+00, %square_sum_d.exit97.us ], [ %i.df, %square_sum_d.exit106.us.loopexit.unr-lcssa ], [ %i.di, %.lr.ph.i101.us.epil ] ; 2 uses
  store double %.08.lcssa.i98.us, ptr %i.ax, align 8, !tbaa !51
  br label %.lr.ph.us.a

.lr.ph.us.a:                                      ; preds = %.lr.ph114.split.us..lr.ph.us_crit_edge, %square_sum_d.exit106.us
  %.pre = phi double [ %.08.lcssa.i98.us, %square_sum_d.exit106.us ], [ %.pre.pre, %.lr.ph114.split.us..lr.ph.us_crit_edge ]
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us.a, %bb.e
  %i.dj = phi double [ %i.fa, %bb.e ], [ %.pre, %.lr.ph.us.a ]
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %bb.e ], [ 0, %.lr.ph.us.a ] ; 5 uses
  %i.dk = add nsw i64 %indvars.iv160, %i.ak       ; 2 uses
  %i.dl = load double, ptr %i.av, align 8, !tbaa !51
  %i.dm = fmul nsz double %i.dl, %i.dj
  %i.dn = fdiv nsz double %i.dm, %i.aj
  %i.do = fdiv nsz double %i.dn, %i.aj
  %i.dp = tail call nsz double @llvm.sqrt.f64(double %i.do) ; 2 uses
  %i.dq = fcmp nsz ugt double %i.dp, 1.000000e-09
  br i1 %i.dq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dr = load double, ptr %i.at, align 8, !tbaa !51
  %i.ds = fdiv nsz double %i.dr, %i.aj
  %i.dt = fdiv nsz double %i.ds, %i.dp            ; 2 uses
  %i.du = fcmp nsz ogt double %i.dt, -1.000000e+00
  %i.dv = select nsz i1 %i.du, double %i.dt, double -1.000000e+00 ; 2 uses
  %i.dw = fcmp nsz ogt double %i.dv, 1.000000e+00
  %..i.us = select nsz i1 %i.dw, double 1.000000e+00, double %i.dv
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.dx = phi nsz double [ %..i.us, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv160
  store double %i.dx, ptr %i.dy, align 8, !tbaa !51
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv160 ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !51
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv160 ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !51
  %i.ed = load double, ptr %i.at, align 8, !tbaa !51
  %i.ee = fneg nsz double %i.ea
  %i.ef = tail call nsz double @llvm.fmuladd.f64(double %i.ee, double %i.ec, double %i.ed) ; 2 uses
  store double %i.ef, ptr %i.at, align 8, !tbaa !51
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.dk ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !51
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dk ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !51
  %i.ek = tail call nsz double @llvm.fmuladd.f64(double %i.eh, double %i.ej, double %i.ef)
  store double %i.ek, ptr %i.at, align 8, !tbaa !51
  %i.el = load double, ptr %i.dz, align 8, !tbaa !51 ; 2 uses
  %i.em = load double, ptr %i.av, align 8, !tbaa !51
  %i.en = fneg nsz double %i.el
  %i.eo = tail call nsz double @llvm.fmuladd.f64(double %i.en, double %i.el, double %i.em) ; 2 uses
  store double %i.eo, ptr %i.av, align 8, !tbaa !51
  %i.ep = load double, ptr %i.eg, align 8, !tbaa !51 ; 2 uses
  %i.eq = tail call nsz double @llvm.fmuladd.f64(double %i.ep, double %i.ep, double %i.eo) ; 2 uses
  %i.er = fcmp nsz ogt double %i.eq, 0.000000e+00
  %i.es = select nsz i1 %i.er, double %i.eq, double 0.000000e+00
  store double %i.es, ptr %i.av, align 8, !tbaa !51
  %i.et = load double, ptr %i.eb, align 8, !tbaa !51 ; 2 uses
  %i.eu = load double, ptr %i.ax, align 8, !tbaa !51
  %i.ev = fneg nsz double %i.et
  %i.ew = tail call nsz double @llvm.fmuladd.f64(double %i.ev, double %i.et, double %i.eu) ; 2 uses
  store double %i.ew, ptr %i.ax, align 8, !tbaa !51
  %i.ex = load double, ptr %i.ei, align 8, !tbaa !51 ; 2 uses
  %i.ey = tail call nsz double @llvm.fmuladd.f64(double %i.ex, double %i.ex, double %i.ew) ; 2 uses
  %i.ez = fcmp nsz ogt double %i.ey, 0.000000e+00
  %i.fa = select nsz i1 %i.ez, double %i.ey, double 0.000000e+00 ; 2 uses
  store double %i.fa, ptr %i.ax, align 8, !tbaa !51
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %._crit_edge.us, label %bb.c, !llvm.loop !103

._crit_edge.us:                                   ; preds = %bb.e
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %._crit_edge115.loopexit, label %.lr.ph114.split.us, !llvm.loop !104

.lr.ph114.split:                                  ; preds = %.lr.ph114
  br i1 %.not, label %.lr.ph114.split.split.us, label %._crit_edge115

.lr.ph114.split.split.us:                         ; preds = %.lr.ph114.split
  %wide.trip.count158 = zext nneg i32 %i.f to i64 ; 3 uses
  br i1 %i.af, label %.lr.ph.preheader.i.us118.us.preheader, label %square_sum_d.exit97.us117.preheader

square_sum_d.exit97.us117.preheader:              ; preds = %.lr.ph114.split.split.us
  %xtraiter = and i64 %wide.trip.count158, 1
  %i.fb = icmp eq i32 %i.f, 1
  br i1 %i.fb, label %square_sum_d.exit97.us117.epil.preheader, label %square_sum_d.exit97.us117.preheader.new

square_sum_d.exit97.us117.preheader.new:          ; preds = %square_sum_d.exit97.us117.preheader
  %unroll_iter = and i64 %wide.trip.count158, 2147483646
  br label %square_sum_d.exit97.us117

.lr.ph.preheader.i.us118.us.preheader:            ; preds = %.lr.ph114.split.split.us
  %xtraiter196 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.fc = icmp ult i32 %i.d, 4
  %unroll_iter200 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod197.not = icmp eq i64 %xtraiter196, 0
  %lcmp.mod199 = icmp ne i64 %xtraiter196, 0
  %xtraiter202 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.fd = icmp ult i32 %i.d, 4
  %unroll_iter207 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod204.not = icmp eq i64 %xtraiter202, 0
  %lcmp.mod206 = icmp ne i64 %xtraiter202, 0
  %xtraiter209 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.fe = icmp ult i32 %i.d, 4
  %unroll_iter214 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod211.not = icmp eq i64 %xtraiter209, 0
  %lcmp.mod213 = icmp ne i64 %xtraiter209, 0
  br label %.lr.ph.preheader.i.us118.us

.lr.ph.preheader.i.us118.us:                      ; preds = %.lr.ph.preheader.i.us118.us.preheader, %square_sum_d.exit106.loopexit.us138.us
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %square_sum_d.exit106.loopexit.us138.us ], [ 0, %.lr.ph.preheader.i.us118.us.preheader ] ; 6 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv155
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !46 ; 10 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv155
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !46 ; 10 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv155
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !46
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv155
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !46
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv155
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !46
  br i1 %i.fc, label %.lr.ph.i.us119.us.epil.preheader, label %.lr.ph.i.us119.us

.lr.ph.i.us119.us:                                ; preds = %.lr.ph.preheader.i.us118.us, %.lr.ph.i.us119.us
  %indvars.iv.i.us120.us = phi i64 [ %indvars.iv.next.i.us122.us.3, %.lr.ph.i.us119.us ], [ 0, %.lr.ph.preheader.i.us118.us ] ; 6 uses
  %.089.i.us121.us = phi double [ %i.gi, %.lr.ph.i.us119.us ], [ 0.000000e+00, %.lr.ph.preheader.i.us118.us ]
  %niter201 = phi i64 [ %niter201.next.3, %.lr.ph.i.us119.us ], [ 0, %.lr.ph.preheader.i.us118.us ]
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.i.us120.us
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !51
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.i.us120.us
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !51
  %i.ft = tail call nsz double @llvm.fmuladd.f64(double %i.fq, double %i.fs, double %.089.i.us121.us)
  %indvars.iv.next.i.us122.us = or disjoint i64 %indvars.iv.i.us120.us, 1 ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next.i.us122.us
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !51
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.next.i.us122.us
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !51
  %i.fy = tail call nsz double @llvm.fmuladd.f64(double %i.fv, double %i.fx, double %i.ft)
  %indvars.iv.next.i.us122.us.1 = or disjoint i64 %indvars.iv.i.us120.us, 2 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next.i.us122.us.1
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !51
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.next.i.us122.us.1
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !51
  %i.gd = tail call nsz double @llvm.fmuladd.f64(double %i.ga, double %i.gc, double %i.fy)
  %indvars.iv.next.i.us122.us.2 = or disjoint i64 %indvars.iv.i.us120.us, 3 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next.i.us122.us.2
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !51
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.next.i.us122.us.2
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !51
  %i.gi = tail call nsz double @llvm.fmuladd.f64(double %i.gf, double %i.gh, double %i.gd) ; 3 uses
  %indvars.iv.next.i.us122.us.3 = add nuw nsw i64 %indvars.iv.i.us120.us, 4 ; 2 uses
  %niter201.next.3 = add i64 %niter201, 4         ; 2 uses
  %niter201.ncmp.3 = icmp eq i64 %niter201.next.3, %unroll_iter200
  br i1 %niter201.ncmp.3, label %.lr.ph.preheader.i90.us124.us.unr-lcssa, label %.lr.ph.i.us119.us, !llvm.loop !3

.lr.ph.preheader.i90.us124.us.unr-lcssa:          ; preds = %.lr.ph.i.us119.us
  br i1 %lcmp.mod197.not, label %.lr.ph.preheader.i90.us124.us, label %.lr.ph.i.us119.us.epil.preheader

.lr.ph.i.us119.us.epil.preheader:                 ; preds = %.lr.ph.preheader.i90.us124.us.unr-lcssa, %.lr.ph.preheader.i.us118.us
  %indvars.iv.i.us120.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us118.us ], [ %indvars.iv.next.i.us122.us.3, %.lr.ph.preheader.i90.us124.us.unr-lcssa ]
  %.089.i.us121.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i.us118.us ], [ %i.gi, %.lr.ph.preheader.i90.us124.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph.i.us119.us.epil

.lr.ph.i.us119.us.epil:                           ; preds = %.lr.ph.i.us119.us.epil, %.lr.ph.i.us119.us.epil.preheader
  %indvars.iv.i.us120.us.epil = phi i64 [ %indvars.iv.i.us120.us.epil.init, %.lr.ph.i.us119.us.epil.preheader ], [ %indvars.iv.next.i.us122.us.epil, %.lr.ph.i.us119.us.epil ] ; 3 uses
  %.089.i.us121.us.epil = phi double [ %.089.i.us121.us.epil.init, %.lr.ph.i.us119.us.epil.preheader ], [ %i.gn, %.lr.ph.i.us119.us.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.us119.us.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.us119.us.epil ]
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.i.us120.us.epil
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !51
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.i.us120.us.epil
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !51
  %i.gn = tail call nsz double @llvm.fmuladd.f64(double %i.gk, double %i.gm, double %.089.i.us121.us.epil) ; 2 uses
  %indvars.iv.next.i.us122.us.epil = add nuw nsw i64 %indvars.iv.i.us120.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter196
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i90.us124.us, label %.lr.ph.i.us119.us.epil, !llvm.loop !105

.lr.ph.preheader.i90.us124.us:                    ; preds = %.lr.ph.i.us119.us.epil, %.lr.ph.preheader.i90.us124.us.unr-lcssa
  %.lcssa191 = phi double [ %i.gi, %.lr.ph.preheader.i90.us124.us.unr-lcssa ], [ %i.gn, %.lr.ph.i.us119.us.epil ]
  store double %.lcssa191, ptr %i.fk, align 8, !tbaa !51
  br i1 %i.fd, label %.lr.ph.i92.us126.us.epil.preheader, label %.lr.ph.i92.us126.us

.lr.ph.i92.us126.us:                              ; preds = %.lr.ph.preheader.i90.us124.us, %.lr.ph.i92.us126.us
  %indvars.iv.i93.us127.us = phi i64 [ %indvars.iv.next.i95.us129.us.3, %.lr.ph.i92.us126.us ], [ 0, %.lr.ph.preheader.i90.us124.us ] ; 5 uses
  %.089.i94.us128.us = phi double [ %i.hc, %.lr.ph.i92.us126.us ], [ 0.000000e+00, %.lr.ph.preheader.i90.us124.us ]
  %niter208 = phi i64 [ %niter208.next.3, %.lr.ph.i92.us126.us ], [ 0, %.lr.ph.preheader.i90.us124.us ]
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.i93.us127.us
  %i.gp = load double, ptr %i.go, align 8, !tbaa !51 ; 2 uses
  %i.gq = tail call nsz double @llvm.fmuladd.f64(double %i.gp, double %i.gp, double %.089.i94.us128.us)
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.i93.us127.us
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !51 ; 2 uses
  %i.gu = tail call nsz double @llvm.fmuladd.f64(double %i.gt, double %i.gt, double %i.gq)
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.i93.us127.us
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !51 ; 2 uses
  %i.gy = tail call nsz double @llvm.fmuladd.f64(double %i.gx, double %i.gx, double %i.gu)
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.i93.us127.us
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !51 ; 2 uses
  %i.hc = tail call nsz double @llvm.fmuladd.f64(double %i.hb, double %i.hb, double %i.gy) ; 3 uses
  %indvars.iv.next.i95.us129.us.3 = add nuw nsw i64 %indvars.iv.i93.us127.us, 4 ; 2 uses
  %niter208.next.3 = add i64 %niter208, 4         ; 2 uses
  %niter208.ncmp.3 = icmp eq i64 %niter208.next.3, %unroll_iter207
  br i1 %niter208.ncmp.3, label %.lr.ph.preheader.i99.us131.us.unr-lcssa, label %.lr.ph.i92.us126.us, !llvm.loop !3

.lr.ph.preheader.i99.us131.us.unr-lcssa:          ; preds = %.lr.ph.i92.us126.us
  br i1 %lcmp.mod204.not, label %.lr.ph.preheader.i99.us131.us, label %.lr.ph.i92.us126.us.epil.preheader

.lr.ph.i92.us126.us.epil.preheader:               ; preds = %.lr.ph.preheader.i99.us131.us.unr-lcssa, %.lr.ph.preheader.i90.us124.us
  %indvars.iv.i93.us127.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i90.us124.us ], [ %indvars.iv.next.i95.us129.us.3, %.lr.ph.preheader.i99.us131.us.unr-lcssa ]
  %.089.i94.us128.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i90.us124.us ], [ %i.hc, %.lr.ph.preheader.i99.us131.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod206)
  br label %.lr.ph.i92.us126.us.epil

.lr.ph.i92.us126.us.epil:                         ; preds = %.lr.ph.i92.us126.us.epil, %.lr.ph.i92.us126.us.epil.preheader
  %indvars.iv.i93.us127.us.epil = phi i64 [ %indvars.iv.i93.us127.us.epil.init, %.lr.ph.i92.us126.us.epil.preheader ], [ %indvars.iv.next.i95.us129.us.epil, %.lr.ph.i92.us126.us.epil ] ; 2 uses
  %.089.i94.us128.us.epil = phi double [ %.089.i94.us128.us.epil.init, %.lr.ph.i92.us126.us.epil.preheader ], [ %i.hf, %.lr.ph.i92.us126.us.epil ]
  %epil.iter203 = phi i64 [ 0, %.lr.ph.i92.us126.us.epil.preheader ], [ %epil.iter203.next, %.lr.ph.i92.us126.us.epil ]
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.i93.us127.us.epil
  %i.he = load double, ptr %i.hd, align 8, !tbaa !51 ; 2 uses
  %i.hf = tail call nsz double @llvm.fmuladd.f64(double %i.he, double %i.he, double %.089.i94.us128.us.epil) ; 2 uses
  %indvars.iv.next.i95.us129.us.epil = add nuw nsw i64 %indvars.iv.i93.us127.us.epil, 1
  %epil.iter203.next = add i64 %epil.iter203, 1   ; 2 uses
  %epil.iter203.cmp.not = icmp eq i64 %epil.iter203.next, %xtraiter202
  br i1 %epil.iter203.cmp.not, label %.lr.ph.preheader.i99.us131.us, label %.lr.ph.i92.us126.us.epil, !llvm.loop !106

.lr.ph.preheader.i99.us131.us:                    ; preds = %.lr.ph.i92.us126.us.epil, %.lr.ph.preheader.i99.us131.us.unr-lcssa
  %.lcssa192 = phi double [ %i.hc, %.lr.ph.preheader.i99.us131.us.unr-lcssa ], [ %i.hf, %.lr.ph.i92.us126.us.epil ]
  store double %.lcssa192, ptr %i.fm, align 8, !tbaa !51
  br i1 %i.fe, label %.lr.ph.i101.us133.us.epil.preheader, label %.lr.ph.i101.us133.us

.lr.ph.i101.us133.us:                             ; preds = %.lr.ph.preheader.i99.us131.us, %.lr.ph.i101.us133.us
  %indvars.iv.i102.us134.us = phi i64 [ %indvars.iv.next.i104.us136.us.3, %.lr.ph.i101.us133.us ], [ 0, %.lr.ph.preheader.i99.us131.us ] ; 5 uses
  %.089.i103.us135.us = phi double [ %i.hu, %.lr.ph.i101.us133.us ], [ 0.000000e+00, %.lr.ph.preheader.i99.us131.us ]
  %niter215 = phi i64 [ %niter215.next.3, %.lr.ph.i101.us133.us ], [ 0, %.lr.ph.preheader.i99.us131.us ]
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.i102.us134.us
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !51 ; 2 uses
  %i.hi = tail call nsz double @llvm.fmuladd.f64(double %i.hh, double %i.hh, double %.089.i103.us135.us)
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.i102.us134.us
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !51 ; 2 uses
  %i.hm = tail call nsz double @llvm.fmuladd.f64(double %i.hl, double %i.hl, double %i.hi)
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.i102.us134.us
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !51 ; 2 uses
  %i.hq = tail call nsz double @llvm.fmuladd.f64(double %i.hp, double %i.hp, double %i.hm)
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.i102.us134.us
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !51 ; 2 uses
  %i.hu = tail call nsz double @llvm.fmuladd.f64(double %i.ht, double %i.ht, double %i.hq) ; 3 uses
  %indvars.iv.next.i104.us136.us.3 = add nuw nsw i64 %indvars.iv.i102.us134.us, 4 ; 2 uses
  %niter215.next.3 = add i64 %niter215, 4         ; 2 uses
  %niter215.ncmp.3 = icmp eq i64 %niter215.next.3, %unroll_iter214
  br i1 %niter215.ncmp.3, label %square_sum_d.exit106.loopexit.us138.us.unr-lcssa, label %.lr.ph.i101.us133.us, !llvm.loop !3

square_sum_d.exit106.loopexit.us138.us.unr-lcssa: ; preds = %.lr.ph.i101.us133.us
  br i1 %lcmp.mod211.not, label %square_sum_d.exit106.loopexit.us138.us, label %.lr.ph.i101.us133.us.epil.preheader

.lr.ph.i101.us133.us.epil.preheader:              ; preds = %square_sum_d.exit106.loopexit.us138.us.unr-lcssa, %.lr.ph.preheader.i99.us131.us
  %indvars.iv.i102.us134.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i99.us131.us ], [ %indvars.iv.next.i104.us136.us.3, %square_sum_d.exit106.loopexit.us138.us.unr-lcssa ]
  %.089.i103.us135.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i99.us131.us ], [ %i.hu, %square_sum_d.exit106.loopexit.us138.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod213)
  br label %.lr.ph.i101.us133.us.epil

.lr.ph.i101.us133.us.epil:                        ; preds = %.lr.ph.i101.us133.us.epil, %.lr.ph.i101.us133.us.epil.preheader
  %indvars.iv.i102.us134.us.epil = phi i64 [ %indvars.iv.i102.us134.us.epil.init, %.lr.ph.i101.us133.us.epil.preheader ], [ %indvars.iv.next.i104.us136.us.epil, %.lr.ph.i101.us133.us.epil ] ; 2 uses
  %.089.i103.us135.us.epil = phi double [ %.089.i103.us135.us.epil.init, %.lr.ph.i101.us133.us.epil.preheader ], [ %i.hx, %.lr.ph.i101.us133.us.epil ]
  %epil.iter210 = phi i64 [ 0, %.lr.ph.i101.us133.us.epil.preheader ], [ %epil.iter210.next, %.lr.ph.i101.us133.us.epil ]
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.i102.us134.us.epil
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !51 ; 2 uses
  %i.hx = tail call nsz double @llvm.fmuladd.f64(double %i.hw, double %i.hw, double %.089.i103.us135.us.epil) ; 2 uses
  %indvars.iv.next.i104.us136.us.epil = add nuw nsw i64 %indvars.iv.i102.us134.us.epil, 1
  %epil.iter210.next = add i64 %epil.iter210, 1   ; 2 uses
  %epil.iter210.cmp.not = icmp eq i64 %epil.iter210.next, %xtraiter209
  br i1 %epil.iter210.cmp.not, label %square_sum_d.exit106.loopexit.us138.us, label %.lr.ph.i101.us133.us.epil, !llvm.loop !107

square_sum_d.exit106.loopexit.us138.us:           ; preds = %.lr.ph.i101.us133.us.epil, %square_sum_d.exit106.loopexit.us138.us.unr-lcssa
  %.lcssa193 = phi double [ %i.hu, %square_sum_d.exit106.loopexit.us138.us.unr-lcssa ], [ %i.hx, %.lr.ph.i101.us133.us.epil ]
  store double %.lcssa193, ptr %i.fo, align 8, !tbaa !51
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count158
  br i1 %exitcond159.not, label %._crit_edge115, label %.lr.ph.preheader.i.us118.us, !llvm.loop !104

square_sum_d.exit97.us117:                        ; preds = %square_sum_d.exit97.us117, %square_sum_d.exit97.us117.preheader.new
  %indvars.iv = phi i64 [ 0, %square_sum_d.exit97.us117.preheader.new ], [ %indvars.iv.next.1, %square_sum_d.exit97.us117 ] ; 5 uses
  %niter = phi i64 [ 0, %square_sum_d.exit97.us117.preheader.new ], [ %niter.next.1, %square_sum_d.exit97.us117 ]
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !46
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !46
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !46
  store double 0.000000e+00, ptr %i.hz, align 8, !tbaa !51
  store double 0.000000e+00, ptr %i.ib, align 8, !tbaa !51
  store double 0.000000e+00, ptr %i.id, align 8, !tbaa !51
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !46
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !46
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !46
  store double 0.000000e+00, ptr %i.if, align 8, !tbaa !51
  store double 0.000000e+00, ptr %i.ih, align 8, !tbaa !51
  store double 0.000000e+00, ptr %i.ij, align 8, !tbaa !51
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge115.loopexit194.unr-lcssa, label %square_sum_d.exit97.us117, !llvm.loop !104

._crit_edge115.loopexit:                          ; preds = %._crit_edge.us
  %umax = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 1)
  br label %._crit_edge115

._crit_edge115.loopexit194.unr-lcssa:             ; preds = %square_sum_d.exit97.us117
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge115, label %square_sum_d.exit97.us117.epil.preheader

square_sum_d.exit97.us117.epil.preheader:         ; preds = %._crit_edge115.loopexit194.unr-lcssa, %square_sum_d.exit97.us117.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %square_sum_d.exit97.us117.preheader ], [ %indvars.iv.next.1, %._crit_edge115.loopexit194.unr-lcssa ] ; 3 uses
  %lcmp.mod195 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod195)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.epil.init
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !46
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.epil.init
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !46
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.epil.init
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !46
  store double 0.000000e+00, ptr %i.il, align 8, !tbaa !51
  store double 0.000000e+00, ptr %i.in, align 8, !tbaa !51
  store double 0.000000e+00, ptr %i.ip, align 8, !tbaa !51
  br label %._crit_edge115

._crit_edge115:                                   ; preds = %square_sum_d.exit97.us117.epil.preheader, %._crit_edge115.loopexit194.unr-lcssa, %square_sum_d.exit106.loopexit.us138.us, %.lr.ph114.split, %._crit_edge115.loopexit, %bb.a
  %.084.lcssa = phi i32 [ undef, %bb.a ], [ 1, %square_sum_d.exit106.loopexit.us138.us ], [ %i.ae, %.lr.ph114.split ], [ %umax, %._crit_edge115.loopexit ], [ 1, %._crit_edge115.loopexit194.unr-lcssa ], [ 1, %square_sum_d.exit97.us117.epil.preheader ]
  ret i32 %.084.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @xcorrelate_best_d(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph161, label %._crit_edge162

.lr.ph161:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !41   ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.am = load i32, ptr %i.al, align 8, !tbaa !43 ; 2 uses
  %.not = icmp eq i32 %i.am, 0
  %i.an = icmp sgt i32 %i.g, 0
  %wide.trip.count.i = zext i32 %i.g to i64       ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = sitofp nsz i32 %i.g to double           ; 2 uses
  %i.as = fneg nsz double %i.ar
  %i.at = sext i32 %i.g to i64
  %wide.trip.count171 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.ap to i64
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.au = icmp ult i32 %i.g, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod190 = icmp ne i64 %xtraiter, 0
  %xtraiter191 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.av = icmp ult i32 %i.g, 4
  %unroll_iter196 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod193.not = icmp eq i64 %xtraiter191, 0
  %lcmp.mod195 = icmp ne i64 %xtraiter191, 0
  %xtraiter198 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.aw = icmp ult i32 %i.g, 4
  %unroll_iter203 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod200.not = icmp eq i64 %xtraiter198, 0
  %lcmp.mod202 = icmp ne i64 %xtraiter198, 0
  %xtraiter205 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.ax = icmp ult i32 %i.g, 8
  %unroll_iter210 = and i64 %wide.trip.count.i, 2147483640
  %lcmp.mod207.not = icmp eq i64 %xtraiter205, 0
  %lcmp.mod209 = icmp ne i64 %xtraiter205, 0
  %xtraiter212 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.ay = icmp ult i32 %i.g, 8
  %unroll_iter217 = and i64 %wide.trip.count.i, 2147483640
  %lcmp.mod214.not = icmp eq i64 %xtraiter212, 0
  %lcmp.mod216 = icmp ne i64 %xtraiter212, 0
  %i.az = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge162.loopexit:                          ; preds = %._crit_edge
  %umax = tail call i32 @llvm.umax.i32(i32 %i.am, i32 1)
  br label %._crit_edge162

._crit_edge162:                                   ; preds = %._crit_edge162.loopexit, %bb.a
  %.0114.lcssa = phi i32 [ undef, %bb.a ], [ %umax, %._crit_edge162.loopexit ]
  ret i32 %.0114.lcssa

bb.b:                                             ; preds = %.lr.ph161, %._crit_edge
  %indvars.iv168 = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next169, %._crit_edge ] ; 9 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv168
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !46 ; 21 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv168
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !46 ; 21 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv168
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !46 ; 6 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv168
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !46 ; 5 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv168
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !46 ; 6 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv168
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !46 ; 6 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv168
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !46 ; 6 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv168
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !46
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.an, label %.lr.ph.i.preheader, label %mean_sum_d.exit

.lr.ph.i.preheader:                               ; preds = %bb.c
  br i1 %i.au, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 6 uses
  %.089.i = phi double [ %i.cm, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !51
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !51
  %i.bx = tail call nsz double @llvm.fmuladd.f64(double %i.bu, double %i.bw, double %.089.i)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i
  %i.bz = load double, ptr %i.by, align 8, !tbaa !51
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !51
  %i.cc = tail call nsz double @llvm.fmuladd.f64(double %i.bz, double %i.cb, double %i.bx)
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i.1
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !51
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.1
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !51
  %i.ch = tail call nsz double @llvm.fmuladd.f64(double %i.ce, double %i.cg, double %i.cc)
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i.2
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !51
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.2
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !51
  %i.cm = tail call nsz double @llvm.fmuladd.f64(double %i.cj, double %i.cl, double %i.ch) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i118.unr-lcssa, label %.lr.ph.i, !llvm.loop !3

.lr.ph.preheader.i118.unr-lcssa:                  ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i118, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.preheader.i118.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %.lr.ph.preheader.i118.unr-lcssa ]
  %.089.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.cm, %.lr.ph.preheader.i118.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod190)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %.089.i.epil = phi double [ %i.cr, %.lr.ph.i.epil ], [ %.089.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i.epil
  %i.co = load double, ptr %i.cn, align 8, !tbaa !51
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i.epil
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !51
  %i.cr = tail call nsz double @llvm.fmuladd.f64(double %i.co, double %i.cq, double %.089.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i118, label %.lr.ph.i.epil, !llvm.loop !108

.lr.ph.preheader.i118:                            ; preds = %.lr.ph.i.epil, %.lr.ph.preheader.i118.unr-lcssa
  %.lcssa = phi double [ %i.cm, %.lr.ph.preheader.i118.unr-lcssa ], [ %i.cr, %.lr.ph.i.epil ]
  store double %.lcssa, ptr %i.bm, align 8, !tbaa !51
  br i1 %i.av, label %.lr.ph.i120.epil.preheader, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %.lr.ph.preheader.i118, %.lr.ph.i120
  %indvars.iv.i121 = phi i64 [ %indvars.iv.next.i123.3, %.lr.ph.i120 ], [ 0, %.lr.ph.preheader.i118 ] ; 5 uses
  %.089.i122 = phi double [ %i.dg, %.lr.ph.i120 ], [ 0.000000e+00, %.lr.ph.preheader.i118 ]
  %niter197 = phi i64 [ %niter197.next.3, %.lr.ph.i120 ], [ 0, %.lr.ph.preheader.i118 ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i121
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !51 ; 2 uses
  %i.cu = tail call nsz double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %.089.i122)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i121
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !51 ; 2 uses
  %i.cy = tail call nsz double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double %i.cu)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i121
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load double, ptr %i.da, align 8, !tbaa !51 ; 2 uses
  %i.dc = tail call nsz double @llvm.fmuladd.f64(double %i.db, double %i.db, double %i.cy)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i121
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load double, ptr %i.de, align 8, !tbaa !51 ; 2 uses
  %i.dg = tail call nsz double @llvm.fmuladd.f64(double %i.df, double %i.df, double %i.dc) ; 3 uses
  %indvars.iv.next.i123.3 = add nuw nsw i64 %indvars.iv.i121, 4 ; 2 uses
  %niter197.next.3 = add i64 %niter197, 4         ; 2 uses
  %niter197.ncmp.3 = icmp eq i64 %niter197.next.3, %unroll_iter196
  br i1 %niter197.ncmp.3, label %.lr.ph.preheader.i127.unr-lcssa, label %.lr.ph.i120, !llvm.loop !3

.lr.ph.preheader.i127.unr-lcssa:                  ; preds = %.lr.ph.i120
  br i1 %lcmp.mod193.not, label %.lr.ph.preheader.i127, label %.lr.ph.i120.epil.preheader

.lr.ph.i120.epil.preheader:                       ; preds = %.lr.ph.preheader.i127.unr-lcssa, %.lr.ph.preheader.i118
  %indvars.iv.i121.epil.init = phi i64 [ 0, %.lr.ph.preheader.i118 ], [ %indvars.iv.next.i123.3, %.lr.ph.preheader.i127.unr-lcssa ]
  %.089.i122.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i118 ], [ %i.dg, %.lr.ph.preheader.i127.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod195)
  br label %.lr.ph.i120.epil

.lr.ph.i120.epil:                                 ; preds = %.lr.ph.i120.epil, %.lr.ph.i120.epil.preheader
  %indvars.iv.i121.epil = phi i64 [ %indvars.iv.i121.epil.init, %.lr.ph.i120.epil.preheader ], [ %indvars.iv.next.i123.epil, %.lr.ph.i120.epil ] ; 2 uses
  %.089.i122.epil = phi double [ %.089.i122.epil.init, %.lr.ph.i120.epil.preheader ], [ %i.dj, %.lr.ph.i120.epil ]
  %epil.iter192 = phi i64 [ 0, %.lr.ph.i120.epil.preheader ], [ %epil.iter192.next, %.lr.ph.i120.epil ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i121.epil
  %i.di = load double, ptr %i.dh, align 8, !tbaa !51 ; 2 uses
  %i.dj = tail call nsz double @llvm.fmuladd.f64(double %i.di, double %i.di, double %.089.i122.epil) ; 2 uses
  %indvars.iv.next.i123.epil = add nuw nsw i64 %indvars.iv.i121.epil, 1
  %epil.iter192.next = add i64 %epil.iter192, 1   ; 2 uses
  %epil.iter192.cmp.not = icmp eq i64 %epil.iter192.next, %xtraiter191
  br i1 %epil.iter192.cmp.not, label %.lr.ph.preheader.i127, label %.lr.ph.i120.epil, !llvm.loop !109

.lr.ph.preheader.i127:                            ; preds = %.lr.ph.i120.epil, %.lr.ph.preheader.i127.unr-lcssa
  %.lcssa185.a = phi double [ %i.dg, %.lr.ph.preheader.i127.unr-lcssa ], [ %i.dj, %.lr.ph.i120.epil ]
  store double %.lcssa185.a, ptr %i.bo, align 8, !tbaa !51
  br i1 %i.aw, label %.lr.ph.i129.epil.preheader, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.preheader.i127, %.lr.ph.i129
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i132.3, %.lr.ph.i129 ], [ 0, %.lr.ph.preheader.i127 ] ; 5 uses
  %.089.i131 = phi double [ %i.dy, %.lr.ph.i129 ], [ 0.000000e+00, %.lr.ph.preheader.i127 ]
  %niter204 = phi i64 [ %niter204.next.3, %.lr.ph.i129 ], [ 0, %.lr.ph.preheader.i127 ]
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i130
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !51 ; 2 uses
  %i.dm = tail call nsz double @llvm.fmuladd.f64(double %i.dl, double %i.dl, double %.089.i131)
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i130
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load double, ptr %i.do, align 8, !tbaa !51 ; 2 uses
  %i.dq = tail call nsz double @llvm.fmuladd.f64(double %i.dp, double %i.dp, double %i.dm)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i130
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !51 ; 2 uses
  %i.du = tail call nsz double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double %i.dq)
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i130
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !51 ; 2 uses
  %i.dy = tail call nsz double @llvm.fmuladd.f64(double %i.dx, double %i.dx, double %i.du) ; 3 uses
  %indvars.iv.next.i132.3 = add nuw nsw i64 %indvars.iv.i130, 4 ; 2 uses
  %niter204.next.3 = add i64 %niter204, 4         ; 2 uses
  %niter204.ncmp.3 = icmp eq i64 %niter204.next.3, %unroll_iter203
  br i1 %niter204.ncmp.3, label %.lr.ph.preheader.i135.unr-lcssa, label %.lr.ph.i129, !llvm.loop !3

.lr.ph.preheader.i135.unr-lcssa:                  ; preds = %.lr.ph.i129
  br i1 %lcmp.mod200.not, label %.lr.ph.preheader.i135, label %.lr.ph.i129.epil.preheader

.lr.ph.i129.epil.preheader:                       ; preds = %.lr.ph.preheader.i135.unr-lcssa, %.lr.ph.preheader.i127
  %indvars.iv.i130.epil.init = phi i64 [ 0, %.lr.ph.preheader.i127 ], [ %indvars.iv.next.i132.3, %.lr.ph.preheader.i135.unr-lcssa ]
  %.089.i131.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i127 ], [ %i.dy, %.lr.ph.preheader.i135.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod202)
  br label %.lr.ph.i129.epil

.lr.ph.i129.epil:                                 ; preds = %.lr.ph.i129.epil, %.lr.ph.i129.epil.preheader
  %indvars.iv.i130.epil = phi i64 [ %indvars.iv.i130.epil.init, %.lr.ph.i129.epil.preheader ], [ %indvars.iv.next.i132.epil, %.lr.ph.i129.epil ] ; 2 uses
  %.089.i131.epil = phi double [ %.089.i131.epil.init, %.lr.ph.i129.epil.preheader ], [ %i.eb, %.lr.ph.i129.epil ]
  %epil.iter199 = phi i64 [ 0, %.lr.ph.i129.epil.preheader ], [ %epil.iter199.next, %.lr.ph.i129.epil ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i130.epil
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !51 ; 2 uses
  %i.eb = tail call nsz double @llvm.fmuladd.f64(double %i.ea, double %i.ea, double %.089.i131.epil) ; 2 uses
  %indvars.iv.next.i132.epil = add nuw nsw i64 %indvars.iv.i130.epil, 1
  %epil.iter199.next = add i64 %epil.iter199, 1   ; 2 uses
  %epil.iter199.cmp.not = icmp eq i64 %epil.iter199.next, %xtraiter198
  br i1 %epil.iter199.cmp.not, label %.lr.ph.preheader.i135, label %.lr.ph.i129.epil, !llvm.loop !110

.lr.ph.preheader.i135:                            ; preds = %.lr.ph.i129.epil, %.lr.ph.preheader.i135.unr-lcssa
  %.lcssa186.a = phi double [ %i.dy, %.lr.ph.preheader.i135.unr-lcssa ], [ %i.eb, %.lr.ph.i129.epil ]
  store double %.lcssa186.a, ptr %i.bq, align 8, !tbaa !51
  br i1 %i.ax, label %.lr.ph.i137.epil.preheader, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.preheader.i135, %.lr.ph.i137
  %indvars.iv.i138 = phi i64 [ %indvars.iv.next.i139.7, %.lr.ph.i137 ], [ 0, %.lr.ph.preheader.i135 ] ; 9 uses
  %.067.i = phi double [ %i.fg, %.lr.ph.i137 ], [ 0.000000e+00, %.lr.ph.preheader.i135 ]
  %niter211 = phi i64 [ %niter211.next.7, %.lr.ph.i137 ], [ 0, %.lr.ph.preheader.i135 ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !51
  %i.ee = fadd nsz double %.067.i, %i.ed
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !51
  %i.ei = fadd nsz double %i.ee, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load double, ptr %i.ek, align 8, !tbaa !51
  %i.em = fadd nsz double %i.ei, %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !51
  %i.eq = fadd nsz double %i.em, %i.ep
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load double, ptr %i.es, align 8, !tbaa !51
  %i.eu = fadd nsz double %i.eq, %i.et
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !51
  %i.ey = fadd nsz double %i.eu, %i.ex
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !51
  %i.fc = fadd nsz double %i.ey, %i.fb
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i138
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !51
  %i.fg = fadd nsz double %i.fc, %i.ff            ; 3 uses
  %indvars.iv.next.i139.7 = add nuw nsw i64 %indvars.iv.i138, 8 ; 2 uses
  %niter211.next.7 = add i64 %niter211, 8         ; 2 uses
  %niter211.ncmp.7 = icmp eq i64 %niter211.next.7, %unroll_iter210
  br i1 %niter211.ncmp.7, label %.lr.ph.preheader.i142.unr-lcssa, label %.lr.ph.i137, !llvm.loop !2

mean_sum_d.exit:                                  ; preds = %bb.c
  store double 0.000000e+00, ptr %i.bm, align 8, !tbaa !51
  store double 0.000000e+00, ptr %i.bo, align 8, !tbaa !51
  store double 0.000000e+00, ptr %i.bq, align 8, !tbaa !51
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !51
  br label %mean_sum_d.exit149

.lr.ph.preheader.i142.unr-lcssa:                  ; preds = %.lr.ph.i137
  br i1 %lcmp.mod207.not, label %.lr.ph.preheader.i142, label %.lr.ph.i137.epil.preheader

.lr.ph.i137.epil.preheader:                       ; preds = %.lr.ph.preheader.i142.unr-lcssa, %.lr.ph.preheader.i135
  %indvars.iv.i138.epil.init = phi i64 [ 0, %.lr.ph.preheader.i135 ], [ %indvars.iv.next.i139.7, %.lr.ph.preheader.i142.unr-lcssa ]
  %.067.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i135 ], [ %i.fg, %.lr.ph.preheader.i142.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod209)
  br label %.lr.ph.i137.epil

.lr.ph.i137.epil:                                 ; preds = %.lr.ph.i137.epil, %.lr.ph.i137.epil.preheader
  %indvars.iv.i138.epil = phi i64 [ %indvars.iv.i138.epil.init, %.lr.ph.i137.epil.preheader ], [ %indvars.iv.next.i139.epil, %.lr.ph.i137.epil ] ; 2 uses
  %.067.i.epil = phi double [ %.067.i.epil.init, %.lr.ph.i137.epil.preheader ], [ %i.fj, %.lr.ph.i137.epil ]
  %epil.iter206 = phi i64 [ 0, %.lr.ph.i137.epil.preheader ], [ %epil.iter206.next, %.lr.ph.i137.epil ]
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i138.epil
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !51
  %i.fj = fadd nsz double %.067.i.epil, %i.fi     ; 2 uses
  %indvars.iv.next.i139.epil = add nuw nsw i64 %indvars.iv.i138.epil, 1
  %epil.iter206.next = add i64 %epil.iter206, 1   ; 2 uses
  %epil.iter206.cmp.not = icmp eq i64 %epil.iter206.next, %xtraiter205
  br i1 %epil.iter206.cmp.not, label %.lr.ph.preheader.i142, label %.lr.ph.i137.epil, !llvm.loop !111

.lr.ph.preheader.i142:                            ; preds = %.lr.ph.i137.epil, %.lr.ph.preheader.i142.unr-lcssa
  %.lcssa187 = phi double [ %i.fg, %.lr.ph.preheader.i142.unr-lcssa ], [ %i.fj, %.lr.ph.i137.epil ]
  store double %.lcssa187, ptr %i.bi, align 8, !tbaa !51
  br i1 %i.ay, label %.lr.ph.i144.epil.preheader, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %.lr.ph.preheader.i142, %.lr.ph.i144
  %indvars.iv.i145 = phi i64 [ %indvars.iv.next.i147.7, %.lr.ph.i144 ], [ 0, %.lr.ph.preheader.i142 ] ; 9 uses
  %.067.i146 = phi double [ %i.go, %.lr.ph.i144 ], [ 0.000000e+00, %.lr.ph.preheader.i142 ]
  %niter218 = phi i64 [ %niter218.next.7, %.lr.ph.i144 ], [ 0, %.lr.ph.preheader.i142 ]
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !51
  %i.fm = fadd nsz double %.067.i146, %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !51
  %i.fq = fadd nsz double %i.fm, %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !51
  %i.fu = fadd nsz double %i.fq, %i.ft
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !51
  %i.fy = fadd nsz double %i.fu, %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !51
  %i.gc = fadd nsz double %i.fy, %i.gb
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !51
  %i.gg = fadd nsz double %i.gc, %i.gf
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !51
  %i.gk = fadd nsz double %i.gg, %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i145
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !51
  %i.go = fadd nsz double %i.gk, %i.gn            ; 3 uses
  %indvars.iv.next.i147.7 = add nuw nsw i64 %indvars.iv.i145, 8 ; 2 uses
  %niter218.next.7 = add i64 %niter218, 8         ; 2 uses
  %niter218.ncmp.7 = icmp eq i64 %niter218.next.7, %unroll_iter217
  br i1 %niter218.ncmp.7, label %mean_sum_d.exit149.loopexit.unr-lcssa, label %.lr.ph.i144, !llvm.loop !2

mean_sum_d.exit149.loopexit.unr-lcssa:            ; preds = %.lr.ph.i144
  br i1 %lcmp.mod214.not, label %mean_sum_d.exit149, label %.lr.ph.i144.epil.preheader

.lr.ph.i144.epil.preheader:                       ; preds = %mean_sum_d.exit149.loopexit.unr-lcssa, %.lr.ph.preheader.i142
  %indvars.iv.i145.epil.init = phi i64 [ 0, %.lr.ph.preheader.i142 ], [ %indvars.iv.next.i147.7, %mean_sum_d.exit149.loopexit.unr-lcssa ]
  %.067.i146.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i142 ], [ %i.go, %mean_sum_d.exit149.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod216)
  br label %.lr.ph.i144.epil

.lr.ph.i144.epil:                                 ; preds = %.lr.ph.i144.epil, %.lr.ph.i144.epil.preheader
  %indvars.iv.i145.epil = phi i64 [ %indvars.iv.i145.epil.init, %.lr.ph.i144.epil.preheader ], [ %indvars.iv.next.i147.epil, %.lr.ph.i144.epil ] ; 2 uses
  %.067.i146.epil = phi double [ %.067.i146.epil.init, %.lr.ph.i144.epil.preheader ], [ %i.gr, %.lr.ph.i144.epil ]
  %epil.iter213 = phi i64 [ 0, %.lr.ph.i144.epil.preheader ], [ %epil.iter213.next, %.lr.ph.i144.epil ]
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i145.epil
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !51
  %i.gr = fadd nsz double %.067.i146.epil, %i.gq  ; 2 uses
  %indvars.iv.next.i147.epil = add nuw nsw i64 %indvars.iv.i145.epil, 1
  %epil.iter213.next = add i64 %epil.iter213, 1   ; 2 uses
  %epil.iter213.cmp.not = icmp eq i64 %epil.iter213.next, %xtraiter212
  br i1 %epil.iter213.cmp.not, label %mean_sum_d.exit149, label %.lr.ph.i144.epil, !llvm.loop !112

mean_sum_d.exit149:                               ; preds = %mean_sum_d.exit149.loopexit.unr-lcssa, %.lr.ph.i144.epil, %mean_sum_d.exit
  %.06.lcssa.i141 = phi double [ 0.000000e+00, %mean_sum_d.exit ], [ %i.go, %mean_sum_d.exit149.loopexit.unr-lcssa ], [ %i.gr, %.lr.ph.i144.epil ]
  store double %.06.lcssa.i141, ptr %i.bk, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %mean_sum_d.exit149, %bb.b
  br i1 %i.aq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %.pre = load double, ptr %i.bq, align 8, !tbaa !51
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count171
  br i1 %exitcond172.not, label %._crit_edge162.loopexit, label %bb.b, !llvm.loop !113

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.gs = phi double [ %.pre, %.lr.ph.preheader ], [ %i.jb, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.gt = add nsw i64 %indvars.iv, %i.at          ; 2 uses
  %i.gu = load double, ptr %i.bi, align 8, !tbaa !51
  %i.gv = load double, ptr %i.bk, align 8, !tbaa !51
  %i.gw = load double, ptr %i.bo, align 8, !tbaa !51
  %i.gx = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gv, i64 1
  %i.gz = fdiv nsz <2 x double> %i.gy, %i.ba      ; 3 uses
  %i.ha = fmul nsz <2 x double> %i.gz, %i.bc      ; 2 uses
  %i.hb = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.hc = insertelement <2 x double> %i.hb, double %i.gs, i64 1
  %i.hd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.gz, <2 x double> %i.hc)
  %i.he = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.hd, <2 x double> zeroinitializer)
  %i.hf = tail call nnan nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.he) ; 2 uses
  %shift = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x double> %i.hf, %shift
  %i.hg = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.hh = fcmp nsz ugt double %i.hg, 1.000000e-09
  br i1 %i.hh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.hi = load double, ptr %i.bm, align 8, !tbaa !51
  %i.hj = extractelement <2 x double> %i.ha, i64 0
  %i.hk = extractelement <2 x double> %i.gz, i64 1
  %i.hl = tail call nsz double @llvm.fmuladd.f64(double %i.hj, double %i.hk, double %i.hi)
  %i.hm = fdiv nsz double %i.hl, %i.hg            ; 2 uses
  %i.hn = fcmp nsz ogt double %i.hm, -1.000000e+00
  %i.ho = select nsz i1 %i.hn, double %i.hm, double -1.000000e+00 ; 2 uses
  %i.hp = fcmp nsz ogt double %i.ho, 1.000000e+00
  %..i = select nsz i1 %i.hp, double 1.000000e+00, double %i.ho
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.hq = phi nsz double [ %..i, %bb.e ], [ 0.000000e+00, %.lr.ph ]
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  store double %i.hq, ptr %i.hr, align 8, !tbaa !51
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv ; 3 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !51
  %i.hu = load double, ptr %i.bi, align 8, !tbaa !51
  %i.hv = fsub nsz double %i.hu, %i.ht            ; 2 uses
  store double %i.hv, ptr %i.bi, align 8, !tbaa !51
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.gt ; 3 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !51
  %i.hy = fadd nsz double %i.hv, %i.hx
  store double %i.hy, ptr %i.bi, align 8, !tbaa !51
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv ; 3 uses
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !51
  %i.ib = load double, ptr %i.bk, align 8, !tbaa !51
  %i.ic = fsub nsz double %i.ib, %i.ia            ; 2 uses
  store double %i.ic, ptr %i.bk, align 8, !tbaa !51
  %i.id = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.gt ; 3 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !51
  %i.if = fadd nsz double %i.ic, %i.ie
  store double %i.if, ptr %i.bk, align 8, !tbaa !51
  %i.ig = load double, ptr %i.hs, align 8, !tbaa !51
  %i.ih = load double, ptr %i.hz, align 8, !tbaa !51
  %i.ii = load double, ptr %i.bm, align 8, !tbaa !51
  %i.ij = fneg nsz double %i.ig
  %i.ik = tail call nsz double @llvm.fmuladd.f64(double %i.ij, double %i.ih, double %i.ii) ; 2 uses
  store double %i.ik, ptr %i.bm, align 8, !tbaa !51
  %i.il = load double, ptr %i.hw, align 8, !tbaa !51
  %i.im = load double, ptr %i.id, align 8, !tbaa !51
  %i.in = tail call nsz double @llvm.fmuladd.f64(double %i.il, double %i.im, double %i.ik)
  store double %i.in, ptr %i.bm, align 8, !tbaa !51
  %i.io = load double, ptr %i.hs, align 8, !tbaa !51 ; 2 uses
  %i.ip = load double, ptr %i.bo, align 8, !tbaa !51
  %i.iq = fneg nsz double %i.io
  %i.ir = tail call nsz double @llvm.fmuladd.f64(double %i.iq, double %i.io, double %i.ip) ; 2 uses
  store double %i.ir, ptr %i.bo, align 8, !tbaa !51
  %i.is = load double, ptr %i.hw, align 8, !tbaa !51 ; 2 uses
  %i.it = tail call nsz double @llvm.fmuladd.f64(double %i.is, double %i.is, double %i.ir)
  %i.iu = tail call nsz double @llvm.maxnum.f64(double %i.it, double 0.000000e+00)
  store double %i.iu, ptr %i.bo, align 8, !tbaa !51
  %i.iv = load double, ptr %i.hz, align 8, !tbaa !51 ; 2 uses
  %i.iw = load double, ptr %i.bq, align 8, !tbaa !51
  %i.ix = fneg nsz double %i.iv
  %i.iy = tail call nsz double @llvm.fmuladd.f64(double %i.ix, double %i.iv, double %i.iw) ; 2 uses
  store double %i.iy, ptr %i.bq, align 8, !tbaa !51
  %i.iz = load double, ptr %i.id, align 8, !tbaa !51 ; 2 uses
  %i.ja = tail call nsz double @llvm.fmuladd.f64(double %i.iz, double %i.iz, double %i.iy)
  %i.jb = tail call nsz double @llvm.maxnum.f64(double %i.ja, double 0.000000e+00) ; 2 uses
  store double %i.jb, ptr %i.bq, align 8, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !114
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #5

declare ptr @av_default_item_name(ptr noundef) #3

declare void @av_audio_fifo_free(ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_consume_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_audio_fifo_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_audio_fifo_size(ptr noundef) local_unnamed_addr #3

declare i32 @av_audio_fifo_peek(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_audio_fifo_drain(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #3

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !30}
!1 = distinct !{!1, !30}
!2 = distinct !{!2, !30}
!3 = distinct !{!3, !30}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 1, !"override-stack-alignment", i32 16}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS7AVClass", !13, i64 0}
!15 = !{!"p1 _ZTS8AVFilter", !13, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"p1 _ZTS11AVFilterPad", !13, i64 0}
!18 = !{!"any p2 pointer", !13, i64 0}
!19 = !{!"p2 _ZTS12AVFilterLink", !18, i64 0}
!20 = !{!"p1 _ZTS13AVFilterGraph", !13, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !13, i64 0}
!22 = !{!"AVFilterContext", !14, i64 0, !15, i64 8, !16, i64 16, !17, i64 24, !19, i64 32, !10, i64 40, !17, i64 48, !19, i64 56, !10, i64 64, !13, i64 72, !20, i64 80, !10, i64 88, !10, i64 92, !16, i64 96, !10, i64 104, !21, i64 112, !10, i64 120}
!23 = !{!22, !13, i64 72}
!24 = !{!"p1 _ZTS11AVAudioFifo", !13, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 _ZTS7AVFrame", !13, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"long", !9, i64 0}
!29 = !{!"AudioXCorrelateContext", !14, i64 0, !10, i64 8, !10, i64 12, !28, i64 16, !9, i64 24, !9, i64 40, !9, i64 56, !26, i64 72, !9, i64 80, !10, i64 96, !10, i64 100, !13, i64 104}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!29, !28, i64 16}
!32 = !{!"p2 omnipotent char", !18, i64 0}
!33 = !{!"AVRational", !10, i64 0, !10, i64 4}
!34 = !{!"p2 _ZTS11AVBufferRef", !18, i64 0}
!35 = !{!"p2 _ZTS15AVFrameSideData", !18, i64 0}
!36 = !{!"p1 _ZTS12AVDictionary", !13, i64 0}
!37 = !{!"AVChannelLayout", !10, i64 0, !10, i64 4, !9, i64 8, !13, i64 16}
!38 = !{!"AVFrame", !9, i64 0, !9, i64 64, !32, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !33, i64 124, !28, i64 136, !28, i64 144, !33, i64 152, !10, i64 160, !13, i64 168, !10, i64 176, !10, i64 180, !9, i64 184, !34, i64 248, !10, i64 256, !35, i64 264, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !10, i64 296, !28, i64 304, !36, i64 312, !10, i64 320, !21, i64 328, !21, i64 336, !28, i64 344, !28, i64 352, !28, i64 360, !28, i64 368, !13, i64 376, !37, i64 384, !28, i64 408, !10, i64 416}
!39 = !{!38, !32, i64 96}
!40 = !{!38, !10, i64 112}
!41 = !{!29, !10, i64 8}
!42 = !{!29, !13, i64 104}
!43 = !{!29, !10, i64 96}
!44 = !{!29, !26, i64 72}
!45 = !{!38, !10, i64 388}
!46 = !{!16, !16, i64 0}
!47 = !{!"float", !9, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!"double", !9, i64 0}
!51 = !{!50, !50, i64 0}
!52 = distinct !{!52, !30}
!53 = !{!22, !19, i64 56}
!54 = !{!"p1 _ZTS12AVFilterLink", !13, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!22, !10, i64 40}
!57 = !{!29, !10, i64 100}
!58 = !{!22, !19, i64 32}
!59 = !{!38, !28, i64 136}
!60 = !{!"p1 _ZTS15AVFilterContext", !13, i64 0}
!61 = !{!"p1 _ZTS15AVFilterFormats", !13, i64 0}
!62 = !{!"p1 _ZTS22AVFilterChannelLayouts", !13, i64 0}
!63 = !{!"AVFilterFormatsConfig", !61, i64 0, !61, i64 8, !62, i64 16, !61, i64 24, !61, i64 32, !61, i64 40}
!64 = !{!"AVFilterLink", !60, i64 0, !17, i64 8, !60, i64 16, !17, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !33, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !37, i64 72, !33, i64 96, !35, i64 104, !10, i64 112, !10, i64 116, !63, i64 120, !63, i64 168}
!65 = !{!64, !60, i64 0}
!66 = !{!64, !10, i64 36}
!67 = !{!64, !10, i64 76}
!68 = !{!29, !10, i64 12}
!69 = distinct !{!69, !49}
!70 = distinct !{!70, !49}
!71 = distinct !{!71, !30}
!72 = distinct !{!72, !30}
!73 = distinct !{!73, !30}
!74 = distinct !{!74, !49}
!75 = distinct !{!75, !49}
!76 = distinct !{!76, !49}
!77 = distinct !{!77, !49}
!78 = distinct !{!78, !49}
!79 = distinct !{!79, !49}
!80 = distinct !{!80, !30}
!81 = distinct !{!81, !30}
!82 = distinct !{!82, !49}
!83 = distinct !{!83, !49}
!84 = distinct !{!84, !49}
!85 = distinct !{!85, !49}
!86 = distinct !{!86, !49}
!87 = distinct !{!87, !49}
!88 = distinct !{!88, !49}
!89 = distinct !{!89, !49}
!90 = distinct !{!90, !30}
!91 = distinct !{!91, !30}
!92 = distinct !{!92, !49}
!93 = distinct !{!93, !49}
!94 = distinct !{!94, !30}
!95 = distinct !{!95, !30}
!96 = distinct !{!96, !30}
!97 = distinct !{!97, !49}
!98 = distinct !{!98, !49}
!99 = distinct !{!99, !49}
!100 = distinct !{!100, !49}
!101 = distinct !{!101, !49}
!102 = distinct !{!102, !49}
!103 = distinct !{!103, !30}
!104 = distinct !{!104, !30}
!105 = distinct !{!105, !49}
!106 = distinct !{!106, !49}
!107 = distinct !{!107, !49}
!108 = distinct !{!108, !49}
!109 = distinct !{!109, !49}
!110 = distinct !{!110, !49}
!111 = distinct !{!111, !49}
!112 = distinct !{!112, !49}
!113 = distinct !{!113, !30}
!114 = distinct !{!114, !30}
end_hunk_0
