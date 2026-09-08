Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/twinvq?download=true
inline.NumInlined: 30
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@eval_lpcenv_or_interp
define internal fastcc void @eval_lpcenv_or_interp(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 1, 3) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef range(i32 0, 32768) %4, i32 noundef range(i32 2, 17) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 34064
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 8 uses
  %.not141 = icmp eq i32 %4, 0
  br i1 %.not141, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i32 %6, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 194
  %i.h = load i8, ptr %i.g, align 2, !tbaa !56    ; 2 uses
  %i.i = icmp ugt i8 %i.h, 1
  %i.j = zext nneg i32 %5 to i64                  ; 6 uses
  %i.k = zext nneg i32 %4 to i64                  ; 3 uses
  br i1 %i.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.l = zext i8 %i.h to i64
  %i.m = add nsw i64 %i.l, -2                     ; 2 uses
  %i.n = lshr i64 %i.m, 2                         ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %i.p = icmp eq i64 %i.n, 0
  %unroll_iter192 = and i64 %i.o, 9223372036854775806
  %i.q = and i64 %i.m, 4
  %lcmp.mod189.not.not = icmp eq i64 %i.q, 0
  %lcmp.mod191 = trunc i64 %i.o to i1
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %eval_lpc_spectrum.exit.loopexit.us
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %eval_lpc_spectrum.exit.loopexit.us ], [ 0, %.lr.ph.split.us.preheader ] ; 4 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.r = trunc nuw nsw i64 %indvars.iv152 to i32
  %i.s = xor i32 %i.r, -1
  %i.t = add nsw i32 %4, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !47
  %i.x = fneg nsz float %i.w
  br label %get_cos.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv152
  %i.z = load float, ptr %i.y, align 4, !tbaa !47
  br label %get_cos.exit.us

get_cos.exit.us:                                  ; preds = %bb.c, %bb.b
  %i.aa = phi nsz float [ %i.x, %bb.b ], [ %i.z, %bb.c ]
  %i.ab = fmul nsz float %i.aa, 2.000000e+00      ; 3 uses
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  br i1 %i.p, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %get_cos.exit.us, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %.lr.ph.i.us ], [ 0, %get_cos.exit.us ] ; 3 uses
  %i.ae = phi <2 x float> [ %i.av, %.lr.ph.i.us ], [ splat (float 5.000000e-01), %get_cos.exit.us ]
  %niter193 = phi i64 [ %niter193.next.1, %.lr.ph.i.us ], [ 0, %get_cos.exit.us ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.us ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !47
  %i.ai = fsub nsz <2 x float> %i.ah, %i.ad
  %i.aj = fmul nsz <2 x float> %i.ae, %i.ai
  %i.ak = load <2 x float>, ptr %i.ag, align 4, !tbaa !47
  %i.al = fsub nsz <2 x float> %i.ak, %i.ad
  %i.am = fmul nsz <2 x float> %i.aj, %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.us ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aq = load <2 x float>, ptr %i.ao, align 4, !tbaa !47
  %i.ar = fsub nsz <2 x float> %i.aq, %i.ad
  %i.as = fmul nsz <2 x float> %i.am, %i.ar
  %i.at = load <2 x float>, ptr %i.ap, align 4, !tbaa !47
  %i.au = fsub nsz <2 x float> %i.at, %i.ad
  %i.av = fmul nsz <2 x float> %i.as, %i.au       ; 3 uses
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 8 ; 2 uses
  %niter193.next.1 = add i64 %niter193, 2         ; 2 uses
  %niter193.ncmp.1.not = icmp eq i64 %niter193.next.1, %unroll_iter192
  br i1 %niter193.ncmp.1.not, label %eval_lpc_spectrum.exit.loopexit.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !0

eval_lpc_spectrum.exit.loopexit.us.unr-lcssa:     ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod189.not.not, label %.lr.ph.i.us.epil.preheader, label %eval_lpc_spectrum.exit.loopexit.us

.lr.ph.i.us.epil.preheader:                       ; preds = %eval_lpc_spectrum.exit.loopexit.us.unr-lcssa, %get_cos.exit.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %get_cos.exit.us ], [ %indvars.iv.next.i.us.1, %eval_lpc_spectrum.exit.loopexit.us.unr-lcssa ]
  %.epil.init = phi <2 x float> [ splat (float 5.000000e-01), %get_cos.exit.us ], [ %i.av, %eval_lpc_spectrum.exit.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod191)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.us.epil.init ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load <2 x float>, ptr %i.aw, align 4, !tbaa !47
  %i.az = fsub nsz <2 x float> %i.ay, %i.ad
  %i.ba = fmul nsz <2 x float> %.epil.init, %i.az
  %i.bb = load <2 x float>, ptr %i.ax, align 4, !tbaa !47
  %i.bc = fsub nsz <2 x float> %i.bb, %i.ad
  %i.bd = fmul nsz <2 x float> %i.ba, %i.bc
  br label %eval_lpc_spectrum.exit.loopexit.us

eval_lpc_spectrum.exit.loopexit.us:               ; preds = %eval_lpc_spectrum.exit.loopexit.us.unr-lcssa, %.lr.ph.i.us.epil.preheader
  %.lcssa184 = phi <2 x float> [ %i.av, %eval_lpc_spectrum.exit.loopexit.us.unr-lcssa ], [ %i.bd, %.lr.ph.i.us.epil.preheader ] ; 2 uses
  %i.be = fsub nsz float 2.000000e+00, %i.ab
  %i.bf = fadd nsz float %i.ab, 2.000000e+00
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.be, i64 1
  %i.bi = fmul nsz <2 x float> %i.bh, %.lcssa184
  %i.bj = fmul nsz <2 x float> %.lcssa184, %i.bi  ; 2 uses
  %shift = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x float> %shift, %i.bj
  %i.bk = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bl = fdiv nsz float 5.000000e-01, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv152
  store float %i.bl, ptr %i.bm, align 4, !tbaa !47
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, %i.j ; 2 uses
  %i.bn = icmp samesign ult i64 %indvars.iv.next153, %i.k
  br i1 %i.bn, label %.lr.ph.split.us, label %.preheader, !llvm.loop !149

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i, label %get_cos.exit.us136.preheader, label %get_cos.exit

get_cos.exit.us136.preheader:                     ; preds = %.lr.ph.split
  %i.bo = add nsw i64 %i.k, -1                    ; 2 uses
  %i.bp = udiv i64 %i.bo, %i.j                    ; 2 uses
  %i.bq = add nuw i64 %i.bp, 1                    ; 2 uses
  %i.br = icmp ult i64 %i.bo, %i.j
  br i1 %i.br, label %get_cos.exit.us136.epil.preheader, label %get_cos.exit.us136.preheader.new

get_cos.exit.us136.preheader.new:                 ; preds = %get_cos.exit.us136.preheader
  %unroll_iter = and i64 %i.bq, -2
  br label %get_cos.exit.us136

get_cos.exit.us136:                               ; preds = %get_cos.exit.us136, %get_cos.exit.us136.preheader.new
  %indvars.iv149 = phi i64 [ 0, %get_cos.exit.us136.preheader.new ], [ %indvars.iv.next150.1, %get_cos.exit.us136 ] ; 3 uses
  %niter = phi i64 [ 0, %get_cos.exit.us136.preheader.new ], [ %niter.next.1, %get_cos.exit.us136 ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv149
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !47
  %i.bu = fmul nsz float %i.bt, 2.000000e+00      ; 2 uses
  %i.bv = fsub nsz float 2.000000e+00, %i.bu
  %i.bw = fmul nsz float %i.bv, 5.000000e-01
  %i.bx = fmul nsz float %i.bw, 5.000000e-01
  %i.by = fadd nsz float %i.bu, 2.000000e+00
  %i.bz = fmul nsz float %i.by, 5.000000e-01
  %i.ca = fmul nsz float %i.bz, 5.000000e-01
  %i.cb = fadd nsz float %i.bx, %i.ca
  %i.cc = fdiv nsz float 5.000000e-01, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv149
  store float %i.cc, ptr %i.cd, align 4, !tbaa !47
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, %i.j ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next150
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !47
  %i.cg = fmul nsz float %i.cf, 2.000000e+00      ; 2 uses
  %i.ch = fsub nsz float 2.000000e+00, %i.cg
  %i.ci = fmul nsz float %i.ch, 5.000000e-01
  %i.cj = fmul nsz float %i.ci, 5.000000e-01
  %i.ck = fadd nsz float %i.cg, 2.000000e+00
  %i.cl = fmul nsz float %i.ck, 5.000000e-01
  %i.cm = fmul nsz float %i.cl, 5.000000e-01
  %i.cn = fadd nsz float %i.cj, %i.cm
  %i.co = fdiv nsz float 5.000000e-01, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next150
  store float %i.co, ptr %i.cp, align 4, !tbaa !47
  %indvars.iv.next150.1 = add nuw nsw i64 %indvars.iv.next150, %i.j ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit185.unr-lcssa, label %get_cos.exit.us136, !llvm.loop !149

.preheader.loopexit185.unr-lcssa:                 ; preds = %get_cos.exit.us136
  %i.cq = and i64 %i.bp, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cq, 0
  br i1 %lcmp.mod.not.not, label %get_cos.exit.us136.epil.preheader, label %.preheader

get_cos.exit.us136.epil.preheader:                ; preds = %.preheader.loopexit185.unr-lcssa, %get_cos.exit.us136.preheader
  %indvars.iv149.epil.init = phi i64 [ 0, %get_cos.exit.us136.preheader ], [ %indvars.iv.next150.1, %.preheader.loopexit185.unr-lcssa ] ; 2 uses
  %lcmp.mod187 = trunc i64 %i.bq to i1
  tail call void @llvm.assume(i1 %lcmp.mod187)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv149.epil.init
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !47
  %i.ct = fmul nsz float %i.cs, 2.000000e+00      ; 2 uses
  %i.cu = fsub nsz float 2.000000e+00, %i.ct
  %i.cv = fmul nsz float %i.cu, 5.000000e-01
  %i.cw = fmul nsz float %i.cv, 5.000000e-01
  %i.cx = fadd nsz float %i.ct, 2.000000e+00
  %i.cy = fmul nsz float %i.cx, 5.000000e-01
  %i.cz = fmul nsz float %i.cy, 5.000000e-01
  %i.da = fadd nsz float %i.cw, %i.cz
  %i.db = fdiv nsz float 5.000000e-01, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv149.epil.init
  store float %i.db, ptr %i.dc, align 4, !tbaa !47
  br label %.preheader

.preheader:                                       ; preds = %get_cos.exit, %get_cos.exit.us136.epil.preheader, %.preheader.loopexit185.unr-lcssa, %eval_lpc_spectrum.exit.loopexit.us, %bb.a
  %i.dd = shl nuw nsw i32 %5, 1                   ; 2 uses
  %i.de = sub nsw i32 %4, %i.dd                   ; 3 uses
  %.not137 = icmp sgt i32 %5, %i.de
  br i1 %.not137, label %.preheader..lr.ph.preheader.i120_crit_edge, label %.lr.ph139

.preheader..lr.ph.preheader.i120_crit_edge:       ; preds = %.preheader
  %.pre = sext i32 %i.de to i64
  %.pre160.a = add nsw i32 %5, -1
  %.pre160 = uitofp nneg i32 %5 to float
  br label %.lr.ph.preheader.i120

.lr.ph139:                                        ; preds = %.preheader
  %i.df = zext nneg i32 %5 to i64                 ; 3 uses
  %i.dg = sub nsw i64 0, %i.df                    ; 2 uses
  %7 = add nsw i32 %5, -1                         ; 2 uses
  %8 = uitofp nneg i32 %5 to float                ; 2 uses
  %wide.trip.count.i = zext i32 %7 to i64         ; 2 uses
  %i.dh = lshr i32 %5, 1                          ; 4 uses
  %.not.i90 = icmp eq i32 %6, 0
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 194
  %i.dj = add nsw i32 %i.dh, -1                   ; 9 uses
  %i.dk = uitofp nneg i32 %i.dh to float          ; 2 uses
  %.not.i101 = icmp eq i32 %i.dj, 0
  %wide.trip.count.i103 = zext i32 %i.dj to i64   ; 2 uses
  %i.dl = zext nneg i32 %i.dh to i64
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = zext nneg i32 %i.de to i64              ; 2 uses
  %i.do = zext nneg i32 %5 to i64
  %i.dp = zext nneg i32 %i.dh to i64
  %xtraiter194 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.dq = icmp samesign ult i32 %5, 5
  %unroll_iter197 = and i64 %wide.trip.count.i, 4294967292
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  %lcmp.mod196 = icmp ne i64 %xtraiter194, 0
  %exitcond.not.i108 = icmp eq i32 %i.dj, 1
  %exitcond.not.i108.1 = icmp eq i32 %i.dj, 2
  %exitcond.not.i108.2 = icmp eq i32 %i.dj, 3
  %exitcond.not.i108.3 = icmp eq i32 %i.dj, 4
  %exitcond.not.i108.4 = icmp eq i32 %i.dj, 5
  %exitcond.not.i108.5 = icmp eq i32 %i.dj, 6
  %xtraiter208 = and i64 %wide.trip.count.i103, 3 ; 3 uses
  %i.dr = icmp ult i32 %i.dj, 4
  %unroll_iter212 = and i64 %wide.trip.count.i103, 4294967292
  %lcmp.mod210.not = icmp eq i64 %xtraiter208, 0
  %lcmp.mod211 = icmp ne i64 %xtraiter208, 0
  br label %bb.d

get_cos.exit:                                     ; preds = %.lr.ph.split, %get_cos.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %get_cos.exit ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.ds = trunc nuw nsw i64 %indvars.iv to i32
  %i.dt = xor i32 %i.ds, -1
  %i.du = add nsw i32 %4, %i.dt
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !47
  %i.dy = fmul nsz float %i.dx, -2.000000e+00     ; 2 uses
  %i.dz = fsub nsz float 2.000000e+00, %i.dy
  %i.ea = fmul nsz float %i.dz, 5.000000e-01
  %i.eb = fmul nsz float %i.ea, 5.000000e-01
  %i.ec = fadd nsz float %i.dy, 2.000000e+00
  %i.ed = fmul nsz float %i.ec, 5.000000e-01
  %i.ee = fmul nsz float %i.ed, 5.000000e-01
  %i.ef = fadd nsz float %i.eb, %i.ee
  %i.eg = fdiv nsz float 5.000000e-01, %i.ef
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.eg, ptr %i.eh, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.j ; 2 uses
  %i.ei = icmp samesign ult i64 %indvars.iv.next, %i.k
  br i1 %i.ei, label %get_cos.exit, label %.preheader, !llvm.loop !149

bb.d:                                             ; preds = %.lr.ph139, %interpolate.exit
  %indvars.iv155 = phi i64 [ %i.df, %.lr.ph139 ], [ %indvars.iv.next156, %interpolate.exit ] ; 4 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, %i.df ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next156
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !47 ; 2 uses
  %i.el = sub nuw nsw i64 %indvars.iv155, %i.do
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.el ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !47 ; 5 uses
  %i.eo = fadd nsz float %i.ek, %i.en
  %i.ep = fpext nsz float %i.eo to double
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv155 ; 5 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !47 ; 2 uses
  %i.es = fpext nsz float %i.er to double
  %i.et = fmul nsz double %i.es, 1.950000e+00
  %i.eu = fcmp nsz uge double %i.et, %i.ep
  %i.ev = fcmp nsz ult float %i.ek, %i.en
  %or.cond = and i1 %i.ev, %i.eu
  br i1 %or.cond, label %bb.e, label %.lr.ph.preheader.i86

.lr.ph.preheader.i86:                             ; preds = %bb.d
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.dg
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4 ; 5 uses
  %i.ey = fsub nsz float %i.er, %i.en
  %i.ez = fdiv nsz float %i.ey, %8                ; 5 uses
  br i1 %i.dq, label %.lr.ph.i87.epil.preheader, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.preheader.i86, %.lr.ph.i87
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i89.3, %.lr.ph.i87 ], [ 0, %.lr.ph.preheader.i86 ] ; 5 uses
  %.01011.i = phi float [ %i.fi, %.lr.ph.i87 ], [ %i.en, %.lr.ph.preheader.i86 ]
  %niter198 = phi i64 [ %niter198.next.3, %.lr.ph.i87 ], [ 0, %.lr.ph.preheader.i86 ]
  %i.fa = fadd nsz float %i.ez, %.01011.i         ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.i88
  store float %i.fa, ptr %i.fb, align 4, !tbaa !47
  %i.fc = fadd nsz float %i.ez, %i.fa             ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.i88
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store float %i.fc, ptr %i.fe, align 4, !tbaa !47
  %i.ff = fadd nsz float %i.ez, %i.fc             ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.i88
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store float %i.ff, ptr %i.fh, align 4, !tbaa !47
  %i.fi = fadd nsz float %i.ez, %i.ff             ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.i88
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store float %i.fi, ptr %i.fk, align 4, !tbaa !47
  %indvars.iv.next.i89.3 = add nuw nsw i64 %indvars.iv.i88, 4 ; 2 uses
  %niter198.next.3 = add i64 %niter198, 4         ; 2 uses
  %niter198.ncmp.3 = icmp eq i64 %niter198.next.3, %unroll_iter197
  br i1 %niter198.ncmp.3, label %interpolate.exit.loopexit183.unr-lcssa, label %.lr.ph.i87, !llvm.loop !150

bb.e:                                             ; preds = %bb.d
  %i.fl = sub nsw i64 %indvars.iv155, %i.dp       ; 3 uses
  br i1 %.not.i90, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fm = trunc nsw i64 %i.fl to i32
  %i.fn = xor i32 %i.fm, -1
  %i.fo = add i32 %4, %i.fn
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !47
  %i.fs = fneg nsz float %i.fr
  br label %get_cos.exit91

bb.g:                                             ; preds = %bb.e
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.fl
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !47
  br label %get_cos.exit91

get_cos.exit91:                                   ; preds = %bb.f, %bb.g
  %i.fv = phi nsz float [ %i.fs, %bb.f ], [ %i.fu, %bb.g ]
  %i.fw = load i8, ptr %i.di, align 2, !tbaa !56  ; 2 uses
  %i.fx = fmul nsz float %i.fv, 2.000000e+00      ; 3 uses
  %i.fy = icmp ugt i8 %i.fw, 1
  br i1 %i.fy, label %.lr.ph.preheader.i94, label %eval_lpc_spectrum.exit100

.lr.ph.preheader.i94:                             ; preds = %get_cos.exit91
  %i.fz = zext i8 %i.fw to i64
  %i.ga = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.gc = add nsw i64 %i.fz, -2                   ; 2 uses
  %i.gd = lshr i64 %i.gc, 2                       ; 2 uses
  %i.ge = add nuw nsw i64 %i.gd, 1                ; 2 uses
  %i.gf = icmp eq i64 %i.gd, 0
  br i1 %i.gf, label %.lr.ph.i95.epil.preheader, label %.lr.ph.preheader.i94.new

.lr.ph.preheader.i94.new:                         ; preds = %.lr.ph.preheader.i94
  %unroll_iter206 = and i64 %i.ge, 9223372036854775806
  br label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95, %.lr.ph.preheader.i94.new
  %indvars.iv.i96 = phi i64 [ 0, %.lr.ph.preheader.i94.new ], [ %indvars.iv.next.i99.1, %.lr.ph.i95 ] ; 3 uses
  %i.gg = phi <2 x float> [ splat (float 5.000000e-01), %.lr.ph.preheader.i94.new ], [ %i.gx, %.lr.ph.i95 ]
  %niter207 = phi i64 [ 0, %.lr.ph.preheader.i94.new ], [ %niter207.next.1, %.lr.ph.i95 ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i96 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load <2 x float>, ptr %i.gh, align 4, !tbaa !47
  %i.gk = fsub nsz <2 x float> %i.gj, %i.gb
  %i.gl = fmul nsz <2 x float> %i.gg, %i.gk
  %i.gm = load <2 x float>, ptr %i.gi, align 4, !tbaa !47
  %i.gn = fsub nsz <2 x float> %i.gm, %i.gb
  %i.go = fmul nsz <2 x float> %i.gl, %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i96 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gs = load <2 x float>, ptr %i.gq, align 4, !tbaa !47
  %i.gt = fsub nsz <2 x float> %i.gs, %i.gb
  %i.gu = fmul nsz <2 x float> %i.go, %i.gt
  %i.gv = load <2 x float>, ptr %i.gr, align 4, !tbaa !47
  %i.gw = fsub nsz <2 x float> %i.gv, %i.gb
  %i.gx = fmul nsz <2 x float> %i.gu, %i.gw       ; 3 uses
  %indvars.iv.next.i99.1 = add nuw nsw i64 %indvars.iv.i96, 8 ; 2 uses
  %niter207.next.1 = add i64 %niter207, 2         ; 2 uses
  %niter207.ncmp.1.not = icmp eq i64 %niter207.next.1, %unroll_iter206
  br i1 %niter207.ncmp.1.not, label %eval_lpc_spectrum.exit100.loopexit.unr-lcssa, label %.lr.ph.i95, !llvm.loop !0

eval_lpc_spectrum.exit100.loopexit.unr-lcssa:     ; preds = %.lr.ph.i95
  %i.gy = and i64 %i.gc, 4
  %lcmp.mod203.not.not = icmp eq i64 %i.gy, 0
  br i1 %lcmp.mod203.not.not, label %.lr.ph.i95.epil.preheader, label %eval_lpc_spectrum.exit100

.lr.ph.i95.epil.preheader:                        ; preds = %eval_lpc_spectrum.exit100.loopexit.unr-lcssa, %.lr.ph.preheader.i94
  %indvars.iv.i96.epil.init = phi i64 [ 0, %.lr.ph.preheader.i94 ], [ %indvars.iv.next.i99.1, %eval_lpc_spectrum.exit100.loopexit.unr-lcssa ]
  %.epil.init202 = phi <2 x float> [ splat (float 5.000000e-01), %.lr.ph.preheader.i94 ], [ %i.gx, %eval_lpc_spectrum.exit100.loopexit.unr-lcssa ]
  %lcmp.mod205 = trunc i64 %i.ge to i1
  tail call void @llvm.assume(i1 %lcmp.mod205)
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i96.epil.init ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load <2 x float>, ptr %i.gz, align 4, !tbaa !47
  %i.hc = fsub nsz <2 x float> %i.hb, %i.gb
  %i.hd = fmul nsz <2 x float> %.epil.init202, %i.hc
  %i.he = load <2 x float>, ptr %i.ha, align 4, !tbaa !47
  %i.hf = fsub nsz <2 x float> %i.he, %i.gb
  %i.hg = fmul nsz <2 x float> %i.hd, %i.hf
  br label %eval_lpc_spectrum.exit100

eval_lpc_spectrum.exit100:                        ; preds = %.lr.ph.i95.epil.preheader, %eval_lpc_spectrum.exit100.loopexit.unr-lcssa, %get_cos.exit91
  %i.hh = phi <2 x float> [ splat (float 5.000000e-01), %get_cos.exit91 ], [ %i.gx, %eval_lpc_spectrum.exit100.loopexit.unr-lcssa ], [ %i.hg, %.lr.ph.i95.epil.preheader ] ; 2 uses
  %i.hi = fsub nsz float 2.000000e+00, %i.fx
  %i.hj = extractelement <2 x float> %i.hh, i64 1 ; 2 uses
  %i.hk = fmul nsz float %i.hi, %i.hj
  %i.hl = fmul nsz float %i.hj, %i.hk
  %i.hm = fadd nsz float %i.fx, 2.000000e+00
  %i.hn = extractelement <2 x float> %i.hh, i64 0 ; 2 uses
  %i.ho = fmul nsz float %i.hm, %i.hn
  %i.hp = fmul nsz float %i.hn, %i.ho
  %i.hq = fadd nsz float %i.hl, %i.hp
  %i.hr = fdiv nsz float 5.000000e-01, %i.hq      ; 2 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fl ; 2 uses
  store float %i.hr, ptr %i.hs, align 4, !tbaa !47
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.dg ; 7 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = load float, ptr %i.em, align 4, !tbaa !47 ; 2 uses
  %i.hw = fsub nsz float %i.hr, %i.hv
  %i.hx = fdiv nsz float %i.hw, %i.dk             ; 7 uses
  br i1 %.not.i101, label %interpolate.exit, label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %eval_lpc_spectrum.exit100
  %i.hy = fadd nsz float %i.hx, %i.hv             ; 2 uses
  store float %i.hy, ptr %i.hu, align 4, !tbaa !47
  br i1 %exitcond.not.i108, label %.lr.ph.preheader.i111, label %.lr.ph.i104.1

.lr.ph.i104.1:                                    ; preds = %.lr.ph.i104
  %i.hz = fadd nsz float %i.hx, %i.hy             ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store float %i.hz, ptr %i.ia, align 4, !tbaa !47
  br i1 %exitcond.not.i108.1, label %.lr.ph.preheader.i111, label %.lr.ph.i104.2

.lr.ph.i104.2:                                    ; preds = %.lr.ph.i104.1
  %i.ib = fadd nsz float %i.hx, %i.hz             ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store float %i.ib, ptr %i.ic, align 4, !tbaa !47
  br i1 %exitcond.not.i108.2, label %.lr.ph.preheader.i111, label %.lr.ph.i104.3

.lr.ph.i104.3:                                    ; preds = %.lr.ph.i104.2
  %i.id = fadd nsz float %i.hx, %i.ib             ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store float %i.id, ptr %i.ie, align 4, !tbaa !47
  br i1 %exitcond.not.i108.3, label %.lr.ph.preheader.i111, label %.lr.ph.i104.4

.lr.ph.i104.4:                                    ; preds = %.lr.ph.i104.3
  %i.if = fadd nsz float %i.hx, %i.id             ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ht, i64 20
  store float %i.if, ptr %i.ig, align 4, !tbaa !47
  br i1 %exitcond.not.i108.4, label %.lr.ph.preheader.i111, label %.lr.ph.i104.5

.lr.ph.i104.5:                                    ; preds = %.lr.ph.i104.4
  %i.ih = fadd nsz float %i.hx, %i.if             ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store float %i.ih, ptr %i.ii, align 4, !tbaa !47
  br i1 %exitcond.not.i108.5, label %.lr.ph.preheader.i111, label %.lr.ph.i104.6

.lr.ph.i104.6:                                    ; preds = %.lr.ph.i104.5
  %i.ij = fadd nsz float %i.hx, %i.ih
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ht, i64 28
  store float %i.ij, ptr %i.ik, align 4, !tbaa !47
  br label %.lr.ph.preheader.i111

.lr.ph.preheader.i111:                            ; preds = %.lr.ph.i104.6, %.lr.ph.i104.5, %.lr.ph.i104.4, %.lr.ph.i104.3, %.lr.ph.i104.2, %.lr.ph.i104.1, %.lr.ph.i104
  %i.il = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.dm
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 5 uses
  %i.in = load float, ptr %i.eq, align 4, !tbaa !47
  %i.io = load float, ptr %i.hs, align 4, !tbaa !47 ; 3 uses
  %i.ip = fsub nsz float %i.in, %i.io
  %i.iq = fdiv nsz float %i.ip, %i.dk             ; 5 uses
  br i1 %i.dr, label %.lr.ph.i113.epil.preheader, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %.lr.ph.preheader.i111, %.lr.ph.i113
  %indvars.iv.i114 = phi i64 [ %indvars.iv.next.i116.3, %.lr.ph.i113 ], [ 0, %.lr.ph.preheader.i111 ] ; 5 uses
  %.01011.i115 = phi float [ %i.iz, %.lr.ph.i113 ], [ %i.io, %.lr.ph.preheader.i111 ]
  %niter213 = phi i64 [ %niter213.next.3, %.lr.ph.i113 ], [ 0, %.lr.ph.preheader.i111 ]
  %i.ir = fadd nsz float %i.iq, %.01011.i115      ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.i114
  store float %i.ir, ptr %i.is, align 4, !tbaa !47
  %i.it = fadd nsz float %i.iq, %i.ir             ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.i114
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  store float %i.it, ptr %i.iv, align 4, !tbaa !47
  %i.iw = fadd nsz float %i.iq, %i.it             ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.i114
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store float %i.iw, ptr %i.iy, align 4, !tbaa !47
  %i.iz = fadd nsz float %i.iq, %i.iw             ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.i114
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  store float %i.iz, ptr %i.jb, align 4, !tbaa !47
  %indvars.iv.next.i116.3 = add nuw nsw i64 %indvars.iv.i114, 4 ; 2 uses
  %niter213.next.3 = add i64 %niter213, 4         ; 2 uses
  %niter213.ncmp.3 = icmp eq i64 %niter213.next.3, %unroll_iter212
  br i1 %niter213.ncmp.3, label %interpolate.exit.loopexit.unr-lcssa, label %.lr.ph.i113, !llvm.loop !150

interpolate.exit.loopexit.unr-lcssa:              ; preds = %.lr.ph.i113
  br i1 %lcmp.mod210.not, label %interpolate.exit, label %.lr.ph.i113.epil.preheader

.lr.ph.i113.epil.preheader:                       ; preds = %interpolate.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i111
  %indvars.iv.i114.epil.init = phi i64 [ 0, %.lr.ph.preheader.i111 ], [ %indvars.iv.next.i116.3, %interpolate.exit.loopexit.unr-lcssa ]
  %.01011.i115.epil.init = phi float [ %i.io, %.lr.ph.preheader.i111 ], [ %i.iz, %interpolate.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph.i113.epil

.lr.ph.i113.epil:                                 ; preds = %.lr.ph.i113.epil, %.lr.ph.i113.epil.preheader
  %indvars.iv.i114.epil = phi i64 [ %indvars.iv.i114.epil.init, %.lr.ph.i113.epil.preheader ], [ %indvars.iv.next.i116.epil, %.lr.ph.i113.epil ] ; 2 uses
  %.01011.i115.epil = phi float [ %.01011.i115.epil.init, %.lr.ph.i113.epil.preheader ], [ %i.jc, %.lr.ph.i113.epil ]
  %epil.iter209 = phi i64 [ 0, %.lr.ph.i113.epil.preheader ], [ %epil.iter209.next, %.lr.ph.i113.epil ]
  %i.jc = fadd nsz float %i.iq, %.01011.i115.epil ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.i114.epil
  store float %i.jc, ptr %i.jd, align 4, !tbaa !47
  %indvars.iv.next.i116.epil = add nuw nsw i64 %indvars.iv.i114.epil, 1
  %epil.iter209.next = add i64 %epil.iter209, 1   ; 2 uses
  %epil.iter209.cmp.not = icmp eq i64 %epil.iter209.next, %xtraiter208
  br i1 %epil.iter209.cmp.not, label %interpolate.exit, label %.lr.ph.i113.epil, !llvm.loop !151

interpolate.exit.loopexit183.unr-lcssa:           ; preds = %.lr.ph.i87
  br i1 %lcmp.mod195.not, label %interpolate.exit, label %.lr.ph.i87.epil.preheader

.lr.ph.i87.epil.preheader:                        ; preds = %interpolate.exit.loopexit183.unr-lcssa, %.lr.ph.preheader.i86
  %indvars.iv.i88.epil.init = phi i64 [ 0, %.lr.ph.preheader.i86 ], [ %indvars.iv.next.i89.3, %interpolate.exit.loopexit183.unr-lcssa ]
  %.01011.i.epil.init = phi float [ %i.en, %.lr.ph.preheader.i86 ], [ %i.fi, %interpolate.exit.loopexit183.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod196)
  br label %.lr.ph.i87.epil

.lr.ph.i87.epil:                                  ; preds = %.lr.ph.i87.epil, %.lr.ph.i87.epil.preheader
  %indvars.iv.i88.epil = phi i64 [ %indvars.iv.next.i89.epil, %.lr.ph.i87.epil ], [ %indvars.iv.i88.epil.init, %.lr.ph.i87.epil.preheader ] ; 2 uses
  %.01011.i.epil = phi float [ %i.je, %.lr.ph.i87.epil ], [ %.01011.i.epil.init, %.lr.ph.i87.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i87.epil ], [ 0, %.lr.ph.i87.epil.preheader ]
  %i.je = fadd nsz float %i.ez, %.01011.i.epil    ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.i88.epil
  store float %i.je, ptr %i.jf, align 4, !tbaa !47
  %indvars.iv.next.i89.epil = add nuw nsw i64 %indvars.iv.i88.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter194
  br i1 %epil.iter.cmp.not, label %interpolate.exit, label %.lr.ph.i87.epil, !llvm.loop !152

interpolate.exit:                                 ; preds = %interpolate.exit.loopexit183.unr-lcssa, %.lr.ph.i87.epil, %interpolate.exit.loopexit.unr-lcssa, %.lr.ph.i113.epil, %eval_lpc_spectrum.exit100
  %.not = icmp samesign ugt i64 %indvars.iv.next156, %i.dn
  br i1 %.not, label %.lr.ph.preheader.i120, label %bb.d, !llvm.loop !153

.lr.ph.preheader.i120:                            ; preds = %interpolate.exit, %.preheader..lr.ph.preheader.i120_crit_edge
  %.pre-phi161 = phi float [ %.pre160, %.preheader..lr.ph.preheader.i120_crit_edge ], [ %8, %interpolate.exit ]
  %.pre-phi159 = phi i32 [ %.pre160.a, %.preheader..lr.ph.preheader.i120_crit_edge ], [ %7, %interpolate.exit ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre, %.preheader..lr.ph.preheader.i120_crit_edge ], [ %i.dn, %interpolate.exit ]
  %i.jg = zext nneg i32 %4 to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jg
  %i.ji = zext nneg i32 %i.dd to i64
  %i.jj = sub nsw i64 0, %i.ji
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 4 ; 5 uses
  %i.jm = sub nsw i32 %4, %5
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jn
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !47
  %i.jq = getelementptr inbounds [4 x i8], ptr %2, i64 %.pre-phi
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !47 ; 3 uses
  %i.js = fsub nsz float %i.jp, %i.jr
  %i.jt = fdiv nsz float %i.js, %.pre-phi161      ; 5 uses
  %wide.trip.count.i121 = zext nneg i32 %.pre-phi159 to i64 ; 2 uses
  %xtraiter214 = and i64 %wide.trip.count.i121, 3 ; 3 uses
  %9 = add nsw i32 %.pre-phi159, -1
  %i.ju = icmp ult i32 %9, 3
  br i1 %i.ju, label %.lr.ph.i122.epil.preheader, label %.lr.ph.preheader.i120.new

.lr.ph.preheader.i120.new:                        ; preds = %.lr.ph.preheader.i120
  %unroll_iter218 = and i64 %wide.trip.count.i121, 2147483644
  br label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.lr.ph.i122, %.lr.ph.preheader.i120.new
  %indvars.iv.i123 = phi i64 [ 0, %.lr.ph.preheader.i120.new ], [ %indvars.iv.next.i125.3, %.lr.ph.i122 ] ; 5 uses
  %.01011.i124 = phi float [ %i.jr, %.lr.ph.preheader.i120.new ], [ %i.kd, %.lr.ph.i122 ]
  %niter219 = phi i64 [ 0, %.lr.ph.preheader.i120.new ], [ %niter219.next.3, %.lr.ph.i122 ]
  %i.jv = fadd nsz float %i.jt, %.01011.i124      ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv.i123
  store float %i.jv, ptr %i.jw, align 4, !tbaa !47
  %i.jx = fadd nsz float %i.jt, %i.jv             ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv.i123
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  store float %i.jx, ptr %i.jz, align 4, !tbaa !47
  %i.ka = fadd nsz float %i.jt, %i.jx             ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv.i123
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store float %i.ka, ptr %i.kc, align 4, !tbaa !47
  %i.kd = fadd nsz float %i.jt, %i.ka             ; 3 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv.i123
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  store float %i.kd, ptr %i.kf, align 4, !tbaa !47
  %indvars.iv.next.i125.3 = add nuw nsw i64 %indvars.iv.i123, 4 ; 2 uses
  %niter219.next.3 = add i64 %niter219, 4         ; 2 uses
  %niter219.ncmp.3 = icmp eq i64 %niter219.next.3, %unroll_iter218
  br i1 %niter219.ncmp.3, label %interpolate.exit127.unr-lcssa, label %.lr.ph.i122, !llvm.loop !150

interpolate.exit127.unr-lcssa:                    ; preds = %.lr.ph.i122
  %lcmp.mod216.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod216.not, label %interpolate.exit127, label %.lr.ph.i122.epil.preheader

.lr.ph.i122.epil.preheader:                       ; preds = %interpolate.exit127.unr-lcssa, %.lr.ph.preheader.i120
  %indvars.iv.i123.epil.init = phi i64 [ 0, %.lr.ph.preheader.i120 ], [ %indvars.iv.next.i125.3, %interpolate.exit127.unr-lcssa ]
  %.01011.i124.epil.init = phi float [ %i.jr, %.lr.ph.preheader.i120 ], [ %i.kd, %interpolate.exit127.unr-lcssa ]
  %lcmp.mod217 = icmp ne i64 %xtraiter214, 0
  tail call void @llvm.assume(i1 %lcmp.mod217)
  br label %.lr.ph.i122.epil

.lr.ph.i122.epil:                                 ; preds = %.lr.ph.i122.epil, %.lr.ph.i122.epil.preheader
  %indvars.iv.i123.epil = phi i64 [ %indvars.iv.i123.epil.init, %.lr.ph.i122.epil.preheader ], [ %indvars.iv.next.i125.epil, %.lr.ph.i122.epil ] ; 2 uses
  %.01011.i124.epil = phi float [ %.01011.i124.epil.init, %.lr.ph.i122.epil.preheader ], [ %i.kg, %.lr.ph.i122.epil ]
  %epil.iter215 = phi i64 [ 0, %.lr.ph.i122.epil.preheader ], [ %epil.iter215.next, %.lr.ph.i122.epil ]
  %i.kg = fadd nsz float %i.jt, %.01011.i124.epil ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv.i123.epil
  store float %i.kg, ptr %i.kh, align 4, !tbaa !47
  %indvars.iv.next.i125.epil = add nuw nsw i64 %indvars.iv.i123.epil, 1
  %epil.iter215.next = add i64 %epil.iter215, 1   ; 2 uses
  %epil.iter215.cmp.not = icmp eq i64 %epil.iter215.next, %xtraiter214
  br i1 %epil.iter215.cmp.not, label %interpolate.exit127, label %.lr.ph.i122.epil, !llvm.loop !154

interpolate.exit127:                              ; preds = %.lr.ph.i122.epil, %interpolate.exit127.unr-lcssa
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @ff_init_ff_sine_windows(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @construct_perm_table(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 4) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 34088
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 3 uses
  %i.e = icmp eq i32 %1, 3
  br i1 %i.e, label %.split, label %.split38

.split:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  %i.g = load i8, ptr %i.f, align 2, !tbaa !52
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 356
  %i.k = load i32, ptr %i.j, align 4, !tbaa !43   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 34020 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 33970 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 33975
  tail call fastcc void @permutate_in_line(ptr noundef %i.d, i32 noundef %i.m, i32 noundef %i.k, i32 noundef %i.h, ptr noundef nonnull %i.n, i32 noundef 3)
  br label %bb.b

.split38:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.q = load i16, ptr %i.p, align 8, !tbaa !38
  %i.r = zext nneg i32 %1 to i64                  ; 5 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.r
  %i.t = load i8, ptr %i.s, align 8, !tbaa !45    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %.rhs.trunc = zext i8 %i.t to i16
  %i.v = udiv i16 %i.q, %.rhs.trunc
  %.zext = zext i16 %i.v to i32                   ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 356
  %i.y = load i32, ptr %i.x, align 4, !tbaa !43
  %i.z = mul nsw i32 %i.y, %i.u                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 34008
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.r ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 33964
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.r ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 33972
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.r
  tail call fastcc void @permutate_in_line(ptr noundef %i.d, i32 noundef %i.ac, i32 noundef %i.z, i32 noundef %.zext, ptr noundef nonnull %i.ae, i32 noundef %1)
  br label %bb.b

bb.b:                                             ; preds = %.split38, %.split
  %i.ah = phi i64 [ 3, %.split ], [ %i.r, %.split38 ]
  %i.ai = phi ptr [ %i.l, %.split ], [ %i.ab, %.split38 ]
  %i.aj = phi ptr [ %i.n, %.split ], [ %i.ae, %.split38 ]
  %i.ak = phi ptr [ %i.o, %.split ], [ %i.ag, %.split38 ]
  %.036 = phi i32 [ %i.h, %.split ], [ %.zext, %.split38 ] ; 2 uses
  %.0 = phi i32 [ %i.k, %.split ], [ %i.z, %.split38 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1196
  %i.am = getelementptr inbounds nuw [8192 x i8], ptr %i.al, i64 %i.ah ; 2 uses
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !51 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.preheader.preheader.i, label %transpose_perm.exit

.preheader.preheader.i:                           ; preds = %bb.b
  %i.ap = load i8, ptr %i.ak, align 1, !tbaa !46
  %i.aq = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ar = zext i8 %i.ap to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv26.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next27.i, %._crit_edge.i ] ; 3 uses
  %.019.i = phi i32 [ 0, %.preheader.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.as = icmp samesign uge i64 %indvars.iv26.i, %i.ar
  %i.at = zext i1 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !46
  %.not.i = icmp eq i8 %i.av, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.aw = sext i32 %.019.i to i64
  %invariant.gep.i = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv26.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv21.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next22.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.aw, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.ax = mul nuw nsw i64 %indvars.iv21.i, %i.aq
  %gep.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %i.ax
  %i.ay = load i16, ptr %gep.i, align 2, !tbaa !63
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = getelementptr inbounds [2 x i8], ptr %i.am, i64 %indvars.iv.i
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !63
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %i.ba = load i8, ptr %i.au, align 1, !tbaa !46
  %i.bb = zext i8 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next22.i, %i.bb
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !155

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.bd = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.019.i, %.preheader.i ], [ %i.bd, %._crit_edge.loopexit.i ]
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next27.i, %i.aq
  br i1 %exitcond.not.i, label %transpose_perm.exit, label %.preheader.i, !llvm.loop !156

transpose_perm.exit:                              ; preds = %._crit_edge.i, %bb.b
  %i.be = mul nsw i32 %.0, %.036                  ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.preheader.i41, label %linear_perm.exit

.lr.ph.preheader.i41:                             ; preds = %transpose_perm.exit
  %wide.trip.count.i = zext nneg i32 %i.be to i64
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42, %.lr.ph.preheader.i41
  %indvars.iv.i43 = phi i64 [ 0, %.lr.ph.preheader.i41 ], [ %indvars.iv.next.i44, %.lr.ph.i42 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv.i43 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !63
  %i.bi = sext i16 %i.bh to i32                   ; 2 uses
  %i.bj = srem i32 %i.bi, %.0
  %i.bk = mul nsw i32 %i.bj, %.036
  %i.bl = sdiv i32 %i.bi, %.0
  %i.bm = add nsw i32 %i.bk, %i.bl
  %i.bn = trunc i32 %i.bm to i16
  store i16 %i.bn, ptr %i.bg, align 2, !tbaa !63
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %wide.trip.count.i
  br i1 %exitcond.not.i45, label %linear_perm.exit, label %.lr.ph.i42, !llvm.loop !157

linear_perm.exit:                                 ; preds = %.lr.ph.i42, %transpose_perm.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @permutate_in_line(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 65536) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 4) %5) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %4, align 1, !tbaa !46
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a
  %i.b = icmp eq i32 %5, 2                        ; 2 uses
  %i.c = and i32 %1, 1
  %.not37 = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.e = icmp sgt i32 %1, 0
  %i.f = mul i32 %3, %2                           ; 3 uses
  br i1 %i.e, label %.lr.ph43.split.us, label %._crit_edge

.lr.ph43.split.us:                                ; preds = %.lr.ph43
  %i.g = icmp eq i32 %2, 1
  %i.h = zext nneg i32 %1 to i64                  ; 5 uses
  br i1 %i.g, label %.lr.ph.us.us.preheader, label %.lr.ph43.split.us.split

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph43.split.us
  %i.i = add nsw i64 %i.h, -1
end_hunk_0
