Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 224
loop-unroll.NumUnrolled: 271
begin_hunk_0_@ggml_compute_forward_rms_norm_mul_fused:bb.a
  %i.bc = phi i64 [ %i.aw, %bb.l ], [ 0, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !31 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !31 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !31 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.0.copyload.i = load float, ptr %i.bj, align 4 ; 2 uses
  %i.bk = fcmp ult float %.0.copyload.i, 0.000000e+00
  br i1 %i.bk, label %bb.n, label %.preheader146.i

.preheader146.i:                                  ; preds = %.thread145.i
  %i.bl = icmp sgt i64 %i.ae, 0
  br i1 %i.bl, label %.preheader.lr.ph.i, label %_ZL33ggml_compute_forward_rms_norm_f32IL21ggml_rms_norm_fuse_op1EEvPK19ggml_compute_paramsP11ggml_tensorS5_.exit

.preheader.lr.ph.i:                               ; preds = %.preheader146.i
  %i.bm = icmp slt i64 %i.ac, 1
  %i.bn = sext i32 %i.u to i64                    ; 4 uses
  %i.bo = icmp sle i64 %i.aa, %i.bn
  %i.bp = sitofp i64 %i.y to double
  %i.bq = sext i32 %i.w to i64                    ; 3 uses
  %brmerge.i = select i1 %i.bm, i1 true, i1 %i.bo
  br i1 %brmerge.i, label %_ZL33ggml_compute_forward_rms_norm_f32IL21ggml_rms_norm_fuse_op1EEvPK19ggml_compute_paramsP11ggml_tensorS5_.exit, label %.preheader.lr.ph.split.split.i

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.i
  %i.br = icmp sgt i64 %i.y, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !37 ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !37 ; 2 uses
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !37 ; 2 uses
  br i1 %i.br, label %.preheader.us.us.i.preheader, label %_ZL33ggml_compute_forward_rms_norm_f32IL21ggml_rms_norm_fuse_op1EEvPK19ggml_compute_paramsP11ggml_tensorS5_.exit

.preheader.us.us.i.preheader:                     ; preds = %.preheader.lr.ph.split.split.i
  %i.by = shl i64 %i.y, 2                         ; 3 uses
  %scevgep = getelementptr i8, ptr %i.bx, i64 %i.by
  %i.bz = mul i64 %i.ag, %i.bq
  %i.ca = mul i64 %i.ag, %i.bn
  %i.cb = mul i64 %i.be, %i.bq
  %i.cc = mul i64 %i.be, %i.bn
  %xtraiter = and i64 %i.y, 7                     ; 3 uses
  %i.cd = icmp ult i64 %i.y, 8
  %unroll_iter = and i64 %i.y, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod54 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp ult i64 %i.y, 4
  %i.ce = getelementptr i8, ptr %i.bw, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.by
  %i.cg = getelementptr i8, ptr %i.bv, i64 %i.ca
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.by
  %min.iters.check37 = icmp ult i64 %i.y, 32
  %i.ci = and i64 %i.y, 28
  %n.vec = and i64 %i.y, 9223372036854775776      ; 4 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ci, 0
  %n.vec45 = and i64 %i.y, 9223372036854775804    ; 3 uses
  %cmp.n52 = icmp eq i64 %i.y, %n.vec45
  %xtraiter55 = and i64 %i.y, 3                   ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.preheader, %._crit_edge.split179.us.split.us.us.us.i
  %.0125183.us.us.i = phi i64 [ %i.ii, %._crit_edge.split179.us.split.us.us.us.i ], [ 0, %.preheader.us.us.i.preheader ] ; 6 uses
  %i.cj = mul i64 %i.ak, %.0125183.us.us.i
  %i.ck = mul i64 %i.bi, %.0125183.us.us.i
  %i.cl = mul i64 %.0125183.us.us.i, %i.ak
  %i.cm = mul i64 %.0125183.us.us.i, %i.bi
  %invariant.gep174.us.us.i = getelementptr i8, ptr %i.bv, i64 %i.cl
  %invariant.gep.us.us.i = getelementptr i8, ptr %i.bw, i64 %i.cm
  %i.cn = srem i64 %.0125183.us.us.i, %i.ay
  %i.co = mul i64 %i.cn, %i.bc                    ; 2 uses
  %invariant.gep176.us.us.i = getelementptr i8, ptr %i.bx, i64 %i.co
  %scevgep32 = getelementptr i8, ptr %scevgep, i64 %i.co
  %i.cp = getelementptr i8, ptr %i.cf, i64 %i.ck
  %i.cq = getelementptr i8, ptr %i.ch, i64 %i.cj
  br label %.lr.ph155.us.us.us.us.i

.lr.ph155.us.us.us.us.i:                          ; preds = %._crit_edge156.split.us.us.split.us.us.us.us.i, %.preheader.us.us.i
  %.0124173.us.us.us.us.i = phi i64 [ 0, %.preheader.us.us.i ], [ %i.ih, %._crit_edge156.split.us.us.split.us.us.us.us.i ] ; 6 uses
  %i.cr = mul i64 %i.ai, %.0124173.us.us.us.us.i
  %i.cs = mul i64 %i.bg, %.0124173.us.us.us.us.i
  %i.ct = mul i64 %.0124173.us.us.us.us.i, %i.ai
  %gep.us.us.us.us.i = getelementptr i8, ptr %invariant.gep174.us.us.i, i64 %i.ct
  %i.cu = mul i64 %.0124173.us.us.us.us.i, %i.bg
  %gep175.us.us.us.us.i = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %i.cu
  %i.cv = srem i64 %.0124173.us.us.us.us.i, %i.ba
  %i.cw = mul i64 %i.cv, %i.ax                    ; 2 uses
  %gep177.us.us.us.us.i = getelementptr i8, ptr %invariant.gep176.us.us.i, i64 %i.cw
  %scevgep33 = getelementptr i8, ptr %scevgep32, i64 %i.cw
  %i.cx = getelementptr i8, ptr %i.cp, i64 %i.cs
  %i.cy = getelementptr i8, ptr %i.cq, i64 %i.cr
  br label %.lr.ph.us.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.us.i:                       ; preds = %._crit_edge152.us.us.us.us.us.us.i, %.lr.ph155.us.us.us.us.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge152.us.us.us.us.us.us.i ], [ 0, %.lr.ph155.us.us.us.us.i ] ; 3 uses
  %.0123153.us.us.us.us.us.us.i = phi i64 [ %i.if, %._crit_edge152.us.us.us.us.us.us.i ], [ %i.bn, %.lr.ph155.us.us.us.us.i ] ; 4 uses
  %i.cz = mul i64 %.0123153.us.us.us.us.us.us.i, %i.ag
  %gep158.us.us.us.us.us.us.i = getelementptr i8, ptr %gep.us.us.us.us.i, i64 %i.cz ; 17 uses
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.us.i.new

.lr.ph.us.us.us.us.us.us.i.new:                   ; preds = %.lr.ph.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.i.new
  %.0121148.us.us.us.us.us.us.i = phi i64 [ %i.ev, %.lr.ph.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.i ] ; 9 uses
  %.0122147.us.us.us.us.us.us.i = phi double [ %i.eu, %.lr.ph.us.us.us.us.us.us.i.new ], [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us.i ]
  %niter = phi i64 [ %niter.next.7, %.lr.ph.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.i ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.db = load float, ptr %i.da, align 4, !tbaa !43 ; 2 uses
  %i.dc = fmul float %i.db, %i.db
  %i.dd = fpext float %i.dc to double
  %i.de = fadd double %.0122147.us.us.us.us.us.us.i, %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !43 ; 2 uses
  %i.di = fmul float %i.dh, %i.dh
  %i.dj = fpext float %i.di to double
  %i.dk = fadd double %i.de, %i.dj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !43 ; 2 uses
  %i.do = fmul float %i.dn, %i.dn
  %i.dp = fpext float %i.do to double
  %i.dq = fadd double %i.dk, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !43 ; 2 uses
  %i.du = fmul float %i.dt, %i.dt
  %i.dv = fpext float %i.du to double
  %i.dw = fadd double %i.dq, %i.dv
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !43 ; 2 uses
  %i.ea = fmul float %i.dz, %i.dz
  %i.eb = fpext float %i.ea to double
  %i.ec = fadd double %i.dw, %i.eb
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !43 ; 2 uses
  %i.eg = fmul float %i.ef, %i.ef
  %i.eh = fpext float %i.eg to double
  %i.ei = fadd double %i.ec, %i.eh
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load float, ptr %i.ek, align 4, !tbaa !43 ; 2 uses
  %i.em = fmul float %i.el, %i.el
  %i.en = fpext float %i.em to double
  %i.eo = fadd double %i.ei, %i.en
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  %i.er = load float, ptr %i.eq, align 4, !tbaa !43 ; 2 uses
  %i.es = fmul float %i.er, %i.er
  %i.et = fpext float %i.es to double
  %i.eu = fadd double %i.eo, %i.et                ; 3 uses
  %i.ev = add nuw nsw i64 %.0121148.us.us.us.us.us.us.i, 8 ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %iter.check.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.i.new, !llvm.loop !624

iter.check.unr-lcssa:                             ; preds = %.lr.ph.us.us.us.us.us.us.i.new
  br i1 %lcmp.mod.not, label %iter.check, label %.epil.preheader

.epil.preheader:                                  ; preds = %iter.check.unr-lcssa, %.lr.ph.us.us.us.us.us.us.i
  %.0121148.us.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us.i ], [ %i.ev, %iter.check.unr-lcssa ]
  %.0122147.us.us.us.us.us.us.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us.i ], [ %i.eu, %iter.check.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod54)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.0121148.us.us.us.us.us.us.i.epil = phi i64 [ %.0121148.us.us.us.us.us.us.i.epil.init, %.epil.preheader ], [ %i.fb, %bb.m ] ; 2 uses
  %.0122147.us.us.us.us.us.us.i.epil = phi double [ %.0122147.us.us.us.us.us.us.i.epil.init, %.epil.preheader ], [ %i.fa, %bb.m ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i.epil
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !43 ; 2 uses
  %i.ey = fmul float %i.ex, %i.ex
  %i.ez = fpext float %i.ey to double
  %i.fa = fadd double %.0122147.us.us.us.us.us.us.i.epil, %i.ez ; 2 uses
  %i.fb = add nuw nsw i64 %.0121148.us.us.us.us.us.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %iter.check, label %bb.m, !llvm.loop !625

iter.check:                                       ; preds = %bb.m, %iter.check.unr-lcssa
  %.lcssa = phi double [ %i.eu, %iter.check.unr-lcssa ], [ %i.fa, %bb.m ]
  %i.fc = fdiv double %.lcssa, %i.bp
  %i.fd = fptrunc double %i.fc to float
  %i.fe = fadd float %.0.copyload.i, %i.fd
  %i.ff = tail call float @sqrtf(float noundef %i.fe) #18
  %i.fg = fdiv float 1.000000e+00, %i.ff          ; 7 uses
  %i.fh = mul i64 %.0123153.us.us.us.us.us.us.i, %i.be
  %gep161.us.us.us.us.us.us.i = getelementptr i8, ptr %gep175.us.us.us.us.i, i64 %i.fh ; 9 uses
  %i.fi = srem i64 %.0123153.us.us.us.us.us.us.i, %i.az
  %i.fj = mul i64 %i.fi, %i.bb                    ; 2 uses
  %gep164.us.us.us.us.us.us.i = getelementptr i8, ptr %gep177.us.us.us.us.i, i64 %i.fj ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fk = mul i64 %indvar, %i.cb
  %i.fl = getelementptr i8, ptr %i.cx, i64 %i.fk  ; 2 uses
  %i.fm = mul i64 %indvar, %i.bz
  %i.fn = getelementptr i8, ptr %i.cy, i64 %i.fm
  %bound0 = icmp ult ptr %gep161.us.us.us.us.us.us.i, %i.fn
  %bound0.a = icmp ult ptr %gep158.us.us.us.us.us.us.i, %i.fl
  %found.conflict = and i1 %bound0, %bound0.a
  %3 = getelementptr i8, ptr %scevgep33, i64 %i.fj
  %bound034 = icmp ult ptr %gep161.us.us.us.us.us.us.i, %3
  %bound135 = icmp ult ptr %gep164.us.us.us.us.us.us.i, %i.fl
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.fg, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %index ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 96
  %wide.load = load <8 x float>, ptr %i.fo, align 4, !tbaa !43, !alias.scope !637
  %wide.load38 = load <8 x float>, ptr %i.fp, align 4, !tbaa !43, !alias.scope !637
  %wide.load39 = load <8 x float>, ptr %i.fq, align 4, !tbaa !43, !alias.scope !637
  %wide.load40 = load <8 x float>, ptr %i.fr, align 4, !tbaa !43, !alias.scope !637
  %i.fs = fmul <8 x float> %broadcast.splat, %wide.load
  %i.ft = fmul <8 x float> %broadcast.splat, %wide.load38
  %i.fu = fmul <8 x float> %broadcast.splat, %wide.load39
  %i.fv = fmul <8 x float> %broadcast.splat, %wide.load40
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %gep164.us.us.us.us.us.us.i, i64 %index ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 96
  %wide.load41 = load <8 x float>, ptr %i.fw, align 4, !tbaa !43, !alias.scope !638
  %wide.load42 = load <8 x float>, ptr %i.fx, align 4, !tbaa !43, !alias.scope !638
  %wide.load43 = load <8 x float>, ptr %i.fy, align 4, !tbaa !43, !alias.scope !638
  %wide.load44 = load <8 x float>, ptr %i.fz, align 4, !tbaa !43, !alias.scope !638
  %i.ga = fmul <8 x float> %i.fs, %wide.load41
  %i.gb = fmul <8 x float> %i.ft, %wide.load42
  %i.gc = fmul <8 x float> %i.fu, %wide.load43
  %i.gd = fmul <8 x float> %i.fv, %wide.load44
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %gep161.us.us.us.us.us.us.i, i64 %index ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 96
  store <8 x float> %i.ga, ptr %i.ge, align 4, !tbaa !43, !alias.scope !639, !noalias !640
  store <8 x float> %i.gb, ptr %i.gf, align 4, !tbaa !43, !alias.scope !639, !noalias !640
  store <8 x float> %i.gc, ptr %i.gg, align 4, !tbaa !43, !alias.scope !639, !noalias !640
  store <8 x float> %i.gd, ptr %i.gh, align 4, !tbaa !43, !alias.scope !639, !noalias !640
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !630

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge152.us.us.us.us.us.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.fg, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 4 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %index48
  %wide.load49 = load <4 x float>, ptr %i.gj, align 4, !tbaa !43, !alias.scope !637
  %i.gk = fmul <4 x float> %broadcast.splat47, %wide.load49
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %gep164.us.us.us.us.us.us.i, i64 %index48
  %wide.load50 = load <4 x float>, ptr %i.gl, align 4, !tbaa !43, !alias.scope !638
  %i.gm = fmul <4 x float> %i.gk, %wide.load50
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %gep161.us.us.us.us.us.us.i, i64 %index48
  store <4 x float> %i.gm, ptr %i.gn, align 4, !tbaa !43, !alias.scope !639, !noalias !640
  %index.next51 = add nuw i64 %index48, 4         ; 2 uses
  %i.go = icmp eq i64 %index.next51, %n.vec45
  br i1 %i.go, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !631

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n52, label %._crit_edge152.us.us.us.us.us.us.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0149.us.us.us.us.us.us.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod56.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0149.us.us.us.us.us.us.i.prol = phi i64 [ %i.gw, %vec.epilog.scalar.ph.prol ], [ %.0149.us.us.us.us.us.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0149.us.us.us.us.us.us.i.prol
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !43
  %i.gr = fmul float %i.fg, %i.gq
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %gep164.us.us.us.us.us.us.i, i64 %.0149.us.us.us.us.us.us.i.prol
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !43
  %i.gu = fmul float %i.gr, %i.gt
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %gep161.us.us.us.us.us.us.i, i64 %.0149.us.us.us.us.us.us.i.prol
  store float %i.gu, ptr %i.gv, align 4, !tbaa !43
  %i.gw = add nuw nsw i64 %.0149.us.us.us.us.us.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter55
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !632

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0149.us.us.us.us.us.us.i.unr = phi i64 [ %.0149.us.us.us.us.us.us.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gw, %vec.epilog.scalar.ph.prol ]
  %i.gx = sub nsw i64 %.0149.us.us.us.us.us.us.i.ph, %i.y
  %i.gy = icmp ugt i64 %i.gx, -4
  br i1 %i.gy, label %._crit_edge152.us.us.us.us.us.us.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0149.us.us.us.us.us.us.i = phi i64 [ %i.ie, %vec.epilog.scalar.ph ], [ %.0149.us.us.us.us.us.us.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0149.us.us.us.us.us.us.i
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !43
  %i.hb = fmul float %i.fg, %i.ha
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %gep164.us.us.us.us.us.us.i, i64 %.0149.us.us.us.us.us.us.i
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !43
  %i.he = fmul float %i.hb, %i.hd
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %gep161.us.us.us.us.us.us.i, i64 %.0149.us.us.us.us.us.us.i
  store float %i.he, ptr %i.hf, align 4, !tbaa !43
  %i.hg = add nuw nsw i64 %.0149.us.us.us.us.us.us.i, 1 ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %i.hg
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !43
  %i.hj = fmul float %i.fg, %i.hi
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %gep164.us.us.us.us.us.us.i, i64 %i.hg
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !43
  %i.hm = fmul float %i.hj, %i.hl
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %gep161.us.us.us.us.us.us.i, i64 %i.hg
  store float %i.hm, ptr %i.hn, align 4, !tbaa !43
  %i.ho = add nuw nsw i64 %.0149.us.us.us.us.us.us.i, 2 ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !43
  %i.hr = fmul float %i.fg, %i.hq
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %gep164.us.us.us.us.us.us.i, i64 %i.ho
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !43
  %i.hu = fmul float %i.hr, %i.ht
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %gep161.us.us.us.us.us.us.i, i64 %i.ho
  store float %i.hu, ptr %i.hv, align 4, !tbaa !43
  %i.hw = add nuw nsw i64 %.0149.us.us.us.us.us.us.i, 3 ; 3 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %i.hw
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !43
  %i.hz = fmul float %i.fg, %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %gep164.us.us.us.us.us.us.i, i64 %i.hw
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !43
  %i.ic = fmul float %i.hz, %i.ib
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %gep161.us.us.us.us.us.us.i, i64 %i.hw
  store float %i.ic, ptr %i.id, align 4, !tbaa !43
  %i.ie = add nuw nsw i64 %.0149.us.us.us.us.us.us.i, 4 ; 2 uses
  %exitcond201.not.i.3 = icmp eq i64 %i.ie, %i.y
  br i1 %exitcond201.not.i.3, label %._crit_edge152.us.us.us.us.us.us.i, label %vec.epilog.scalar.ph, !llvm.loop !633

._crit_edge152.us.us.us.us.us.us.i:               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.if = add nsw i64 %.0123153.us.us.us.us.us.us.i, %i.bq ; 2 uses
  %i.ig = icmp slt i64 %i.if, %i.aa
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ig, label %.lr.ph.us.us.us.us.us.us.i, label %._crit_edge156.split.us.us.split.us.us.us.us.i, !llvm.loop !634

._crit_edge156.split.us.us.split.us.us.us.us.i:   ; preds = %._crit_edge152.us.us.us.us.us.us.i
  %i.ih = add nuw nsw i64 %.0124173.us.us.us.us.i, 1 ; 2 uses
  %exitcond202.not.i = icmp eq i64 %i.ih, %i.ac
  br i1 %exitcond202.not.i, label %._crit_edge.split179.us.split.us.us.us.i, label %.lr.ph155.us.us.us.us.i, !llvm.loop !635

._crit_edge.split179.us.split.us.us.us.i:         ; preds = %._crit_edge156.split.us.us.split.us.us.us.us.i
  %i.ii = add nuw nsw i64 %.0125183.us.us.i, 1    ; 2 uses
  %exitcond203.not.i = icmp eq i64 %i.ii, %i.ae
  br i1 %exitcond203.not.i, label %_ZL33ggml_compute_forward_rms_norm_f32IL21ggml_rms_norm_fuse_op1EEvPK19ggml_compute_paramsP11ggml_tensorS5_.exit, label %.preheader.us.us.i, !llvm.loop !636

bb.n:                                             ; preds = %.thread145.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3949, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.67) #17
  unreachable

_ZL33ggml_compute_forward_rms_norm_f32IL21ggml_rms_norm_fuse_op1EEvPK19ggml_compute_paramsP11ggml_tensorS5_.exit: ; preds = %._crit_edge.split179.us.split.us.us.us.i, %.preheader.lr.ph.split.split.i, %.preheader146.i, %.preheader.lr.ph.i
  ret void

bb.o:                                             ; preds = %.thread, %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4026, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_rms_norm_back(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 12 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 6 uses
  %i.f = tail call zeroext i1 @ggml_are_same_shape(ptr noundef nonnull %i.b, ptr noundef nonnull %1)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @ggml_are_same_shape(ptr noundef nonnull %i.b, ptr noundef %i.e)
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4038, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.70) #17
  unreachable

bb.e:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@ggml_compute_forward_rms_norm_back:bb.a
  %i.ar = load i32, ptr %0, align 8, !tbaa !35
  %i.as = icmp slt i64 %i.s, 1
  %i.at = sext i32 %i.ar to i64                   ; 5 uses
  %i.au = icmp sle i64 %i.q, %i.at
  %i.av = sitofp i64 %i.o to float                ; 3 uses
  %i.aw = sext i32 %i.aq to i64                   ; 4 uses
  %i.ax = fdiv float 0.000000e+00, %i.av
  %i.ay = fadd float %i.ax, %.0.copyload.i        ; 2 uses
  %brmerge.i = select i1 %i.as, i1 true, i1 %i.au
  br i1 %brmerge.i, label %_ZL38ggml_compute_forward_rms_norm_back_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader.lr.ph.split.split.i

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ba = icmp sgt i64 %i.o, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !37 ; 2 uses
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !37 ; 2 uses
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !37 ; 2 uses
  br i1 %i.ba, label %.preheader.us.us.i.preheader, label %.preheader.lr.ph.split.split.split.i

.preheader.us.us.i.preheader:                     ; preds = %.preheader.lr.ph.split.split.i
  %i.bg = mul i64 %i.ac, %i.aw
  %i.bh = mul i64 %i.ac, %i.at
  %i.bi = shl i64 %i.o, 2                         ; 3 uses
  %i.bj = mul i64 %i.w, %i.aw
  %i.bk = mul i64 %i.w, %i.at
  %i.bl = mul i64 %i.ai, %i.aw
  %i.bm = mul i64 %i.ai, %i.at
  %xtraiter = and i64 %i.o, 3                     ; 3 uses
  %i.bn = icmp ult i64 %i.o, 4
  %unroll_iter = and i64 %i.o, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod45 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp ult i64 %i.o, 4
  %i.bo = getelementptr i8, ptr %i.bf, i64 %i.bm
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.bi
  %i.bq = getelementptr i8, ptr %i.bd, i64 %i.bk
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bi
  %i.bs = getelementptr i8, ptr %i.be, i64 %i.bh
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.bi
  %min.iters.check24 = icmp ult i64 %i.o, 32
  %i.bu = and i64 %i.o, 28
  %n.vec = and i64 %i.o, 9223372036854775776      ; 4 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.bu, 0
  %n.vec34 = and i64 %i.o, 9223372036854775804    ; 3 uses
  %cmp.n43 = icmp eq i64 %i.o, %n.vec34
  %xtraiter46 = and i64 %i.o, 3                   ; 2 uses
  %lcmp.mod47.not = icmp eq i64 %xtraiter46, 0
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.preheader, %._crit_edge.split170.us.split.us.us.us.i
  %.0131171.us.us.i = phi i64 [ %i.ij, %._crit_edge.split170.us.split.us.us.us.i ], [ 0, %.preheader.us.us.i.preheader ] ; 7 uses
  %i.bv = mul i64 %i.ag, %.0131171.us.us.i
  %i.bw = mul i64 %i.aa, %.0131171.us.us.i
  %i.bx = mul i64 %i.am, %.0131171.us.us.i
  %i.by = mul i64 %.0131171.us.us.i, %i.aa
  %i.bz = mul i64 %.0131171.us.us.i, %i.ag
  %i.ca = mul i64 %.0131171.us.us.i, %i.am
  %invariant.gep165.us.us.i = getelementptr i8, ptr %i.bd, i64 %i.by
  %invariant.gep.us.us.i = getelementptr i8, ptr %i.be, i64 %i.bz
  %invariant.gep167.us.us.i = getelementptr i8, ptr %i.bf, i64 %i.ca
  %i.cb = getelementptr i8, ptr %i.bp, i64 %i.bx
  %i.cc = getelementptr i8, ptr %i.br, i64 %i.bw
  %i.cd = getelementptr i8, ptr %i.bt, i64 %i.bv
  br label %.lr.ph154.us.us.us.us.i

.lr.ph154.us.us.us.us.i:                          ; preds = %._crit_edge155.split.us.us.split.us.us.us.us.i, %.preheader.us.us.i
  %.0130164.us.us.us.us.i = phi i64 [ 0, %.preheader.us.us.i ], [ %i.ii, %._crit_edge155.split.us.us.split.us.us.us.us.i ] ; 7 uses
  %i.ce = mul i64 %i.ae, %.0130164.us.us.us.us.i
  %i.cf = mul i64 %i.y, %.0130164.us.us.us.us.i
  %i.cg = mul i64 %i.ak, %.0130164.us.us.us.us.i
  %i.ch = mul i64 %.0130164.us.us.us.us.i, %i.y
  %gep.us.us.us.us.i = getelementptr i8, ptr %invariant.gep165.us.us.i, i64 %i.ch
  %i.ci = mul i64 %.0130164.us.us.us.us.i, %i.ae
  %gep166.us.us.us.us.i = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %i.ci
  %i.cj = mul i64 %.0130164.us.us.us.us.i, %i.ak
  %gep168.us.us.us.us.i = getelementptr i8, ptr %invariant.gep167.us.us.i, i64 %i.cj
  %i.ck = getelementptr i8, ptr %i.cb, i64 %i.cg
  %i.cl = getelementptr i8, ptr %i.cc, i64 %i.cf
  %i.cm = getelementptr i8, ptr %i.cd, i64 %i.ce
  br label %.lr.ph.us.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.us.i:                       ; preds = %._crit_edge151.us.us.us.us.us.us.i, %.lr.ph154.us.us.us.us.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge151.us.us.us.us.us.us.i ], [ 0, %.lr.ph154.us.us.us.us.i ] ; 4 uses
  %.0129152.us.us.us.us.us.us.i = phi i64 [ %i.ig, %._crit_edge151.us.us.us.us.us.us.i ], [ %i.at, %.lr.ph154.us.us.us.us.i ] ; 4 uses
  %i.cn = mul i64 %.0129152.us.us.us.us.us.us.i, %i.w
  %gep157.us.us.us.us.us.us.i = getelementptr i8, ptr %gep.us.us.us.us.i, i64 %i.cn ; 13 uses
  %i.co = mul i64 %.0129152.us.us.us.us.us.us.i, %i.ac
  %gep160.us.us.us.us.us.us.i = getelementptr i8, ptr %gep166.us.us.us.us.i, i64 %i.co ; 13 uses
  br i1 %i.bn, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.us.i.new

.lr.ph.us.us.us.us.us.us.i.new:                   ; preds = %.lr.ph.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.i.new
  %.0126146.us.us.us.us.us.us.i = phi i64 [ %i.el, %.lr.ph.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.i ] ; 6 uses
  %i.cp = phi <2 x double> [ %i.ek, %.lr.ph.us.us.us.us.us.us.i.new ], [ zeroinitializer, %.lr.ph.us.us.us.us.us.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.i ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %.0126146.us.us.us.us.us.us.i
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !43 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %.0126146.us.us.us.us.us.us.i
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !43
  %i.cu = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %i.cr, i64 1
  %i.cy = fmul <2 x float> %i.cv, %i.cx
  %i.cz = fpext <2 x float> %i.cy to <2 x double>
  %i.da = fadd <2 x double> %i.cp, %i.cz
  %i.db = or disjoint i64 %.0126146.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !43 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %i.db
  %i.df = load float, ptr %i.de, align 4, !tbaa !43
  %i.dg = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.dd, i64 1
  %i.dk = fmul <2 x float> %i.dh, %i.dj
  %i.dl = fpext <2 x float> %i.dk to <2 x double>
  %i.dm = fadd <2 x double> %i.da, %i.dl
  %i.dn = or disjoint i64 %.0126146.us.us.us.us.us.us.i, 2 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !43 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %i.dn
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !43
  %i.ds = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.dp, i64 1
  %i.dw = fmul <2 x float> %i.dt, %i.dv
  %i.dx = fpext <2 x float> %i.dw to <2 x double>
  %i.dy = fadd <2 x double> %i.dm, %i.dx
  %i.dz = or disjoint i64 %.0126146.us.us.us.us.us.us.i, 3 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !43 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %i.dz
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !43
  %i.ee = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.eb, i64 1
  %i.ei = fmul <2 x float> %i.ef, %i.eh
  %i.ej = fpext <2 x float> %i.ei to <2 x double>
  %i.ek = fadd <2 x double> %i.dy, %i.ej          ; 3 uses
  %i.el = add nuw nsw i64 %.0126146.us.us.us.us.us.us.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %iter.check.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.i.new, !llvm.loop !641

iter.check.unr-lcssa:                             ; preds = %.lr.ph.us.us.us.us.us.us.i.new
  br i1 %lcmp.mod.not, label %iter.check, label %.epil.preheader

.epil.preheader:                                  ; preds = %iter.check.unr-lcssa, %.lr.ph.us.us.us.us.us.us.i
  %.0126146.us.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us.i ], [ %i.el, %iter.check.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.us.us.us.us.us.us.i ], [ %i.ek, %iter.check.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.0126146.us.us.us.us.us.us.i.epil = phi i64 [ %.0126146.us.us.us.us.us.us.i.epil.init, %.epil.preheader ], [ %i.ey, %bb.j ] ; 3 uses
  %i.em = phi <2 x double> [ %.epil.init, %.epil.preheader ], [ %i.ex, %bb.j ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %.0126146.us.us.us.us.us.us.i.epil
  %i.eo = load float, ptr %i.en, align 4, !tbaa !43 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %.0126146.us.us.us.us.us.us.i.epil
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !43
  %i.er = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.eo, i64 1
  %i.ev = fmul <2 x float> %i.es, %i.eu
  %i.ew = fpext <2 x float> %i.ev to <2 x double>
  %i.ex = fadd <2 x double> %i.em, %i.ew          ; 2 uses
  %i.ey = add nuw nsw i64 %.0126146.us.us.us.us.us.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %iter.check, label %bb.j, !llvm.loop !642

iter.check:                                       ; preds = %bb.j, %iter.check.unr-lcssa
  %.lcssa = phi <2 x double> [ %i.ek, %iter.check.unr-lcssa ], [ %i.ex, %bb.j ] ; 2 uses
  %i.ez = extractelement <2 x double> %.lcssa, i64 1
  %i.fa = fptrunc double %i.ez to float           ; 2 uses
  %i.fb = fdiv float %i.fa, %i.av
  %i.fc = fadd float %.0.copyload.i, %i.fb
  %i.fd = tail call float @llvm.fmuladd.f32(float %.0.copyload.i, float %i.av, float %i.fa)
  %i.fe = tail call float @sqrtf(float noundef %i.fc) #18
  %i.ff = fdiv float 1.000000e+00, %i.fe          ; 7 uses
  %i.fg = mul i64 %.0129152.us.us.us.us.us.us.i, %i.ai
  %gep163.us.us.us.us.us.us.i = getelementptr i8, ptr %gep168.us.us.us.us.i, i64 %i.fg ; 9 uses
  %i.fh = extractelement <2 x double> %.lcssa, i64 0
  %i.fi = fptrunc double %i.fh to float
  %i.fj = fneg float %i.fi
  %i.fk = fdiv float %i.fj, %i.fd                 ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fl = mul i64 %indvar, %i.bl
  %i.fm = getelementptr i8, ptr %i.ck, i64 %i.fl  ; 2 uses
  %i.fn = mul i64 %indvar, %i.bj
  %i.fo = getelementptr i8, ptr %i.cl, i64 %i.fn
  %bound0 = icmp ult ptr %gep163.us.us.us.us.us.us.i, %i.fo
  %bound1 = icmp ult ptr %gep157.us.us.us.us.us.us.i, %i.fm
  %found.conflict = and i1 %bound0, %bound1
  %2 = mul i64 %indvar, %i.bg
  %3 = getelementptr i8, ptr %i.cm, i64 %2
  %bound021 = icmp ult ptr %gep163.us.us.us.us.us.us.i, %3
  %bound122 = icmp ult ptr %gep160.us.us.us.us.us.us.i, %i.fm
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ff, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert25 = insertelement <8 x float> poison, float %i.fk, i64 0
  %broadcast.splat26 = shufflevector <8 x float> %broadcast.splatinsert25, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %index ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 96
  %wide.load = load <8 x float>, ptr %i.fp, align 4, !tbaa !43, !alias.scope !654
  %wide.load27 = load <8 x float>, ptr %i.fq, align 4, !tbaa !43, !alias.scope !654
  %wide.load28 = load <8 x float>, ptr %i.fr, align 4, !tbaa !43, !alias.scope !654
  %wide.load29 = load <8 x float>, ptr %i.fs, align 4, !tbaa !43, !alias.scope !654
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %index ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 96
  %wide.load30 = load <8 x float>, ptr %i.ft, align 4, !tbaa !43, !alias.scope !655
  %wide.load31 = load <8 x float>, ptr %i.fu, align 4, !tbaa !43, !alias.scope !655
  %wide.load32 = load <8 x float>, ptr %i.fv, align 4, !tbaa !43, !alias.scope !655
  %wide.load33 = load <8 x float>, ptr %i.fw, align 4, !tbaa !43, !alias.scope !655
  %i.fx = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load30, <8 x float> %broadcast.splat26, <8 x float> %wide.load)
  %i.fy = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load31, <8 x float> %broadcast.splat26, <8 x float> %wide.load27)
  %i.fz = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load32, <8 x float> %broadcast.splat26, <8 x float> %wide.load28)
  %i.ga = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load33, <8 x float> %broadcast.splat26, <8 x float> %wide.load29)
  %i.gb = fmul <8 x float> %broadcast.splat, %i.fx
  %i.gc = fmul <8 x float> %broadcast.splat, %i.fy
  %i.gd = fmul <8 x float> %broadcast.splat, %i.fz
  %i.ge = fmul <8 x float> %broadcast.splat, %i.ga
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %gep163.us.us.us.us.us.us.i, i64 %index ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 96
  store <8 x float> %i.gb, ptr %i.gf, align 4, !tbaa !43, !alias.scope !656, !noalias !657
  store <8 x float> %i.gc, ptr %i.gg, align 4, !tbaa !43, !alias.scope !656, !noalias !657
  store <8 x float> %i.gd, ptr %i.gh, align 4, !tbaa !43, !alias.scope !656, !noalias !657
  store <8 x float> %i.ge, ptr %i.gi, align 4, !tbaa !43, !alias.scope !656, !noalias !657
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !647

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge151.us.us.us.us.us.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert35 = insertelement <4 x float> poison, float %i.ff, i64 0
  %broadcast.splat36 = shufflevector <4 x float> %broadcast.splatinsert35, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert37 = insertelement <4 x float> poison, float %i.fk, i64 0
  %broadcast.splat38 = shufflevector <4 x float> %broadcast.splatinsert37, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 4 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %index39
  %wide.load40 = load <4 x float>, ptr %i.gk, align 4, !tbaa !43, !alias.scope !654
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %index39
  %wide.load41 = load <4 x float>, ptr %i.gl, align 4, !tbaa !43, !alias.scope !655
  %i.gm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load41, <4 x float> %broadcast.splat38, <4 x float> %wide.load40)
  %i.gn = fmul <4 x float> %broadcast.splat36, %i.gm
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %gep163.us.us.us.us.us.us.i, i64 %index39
  store <4 x float> %i.gn, ptr %i.go, align 4, !tbaa !43, !alias.scope !656, !noalias !657
  %index.next42 = add nuw i64 %index39, 4         ; 2 uses
  %i.gp = icmp eq i64 %index.next42, %n.vec34
  br i1 %i.gp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !648

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n43, label %._crit_edge151.us.us.us.us.us.us.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0148.us.us.us.us.us.us.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod47.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0148.us.us.us.us.us.us.i.prol = phi i64 [ %i.gx, %vec.epilog.scalar.ph.prol ], [ %.0148.us.us.us.us.us.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %.0148.us.us.us.us.us.us.i.prol
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !43
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %.0148.us.us.us.us.us.us.i.prol
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !43
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gt, float %i.fk, float %i.gr)
  %i.gv = fmul float %i.ff, %i.gu
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %gep163.us.us.us.us.us.us.i, i64 %.0148.us.us.us.us.us.us.i.prol
  store float %i.gv, ptr %i.gw, align 4, !tbaa !43
  %i.gx = add nuw nsw i64 %.0148.us.us.us.us.us.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter46
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !649

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0148.us.us.us.us.us.us.i.unr = phi i64 [ %.0148.us.us.us.us.us.us.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gx, %vec.epilog.scalar.ph.prol ]
  %i.gy = sub nsw i64 %.0148.us.us.us.us.us.us.i.ph, %i.o
  %i.gz = icmp ugt i64 %i.gy, -4
  br i1 %i.gz, label %._crit_edge151.us.us.us.us.us.us.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0148.us.us.us.us.us.us.i = phi i64 [ %i.if, %vec.epilog.scalar.ph ], [ %.0148.us.us.us.us.us.us.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %.0148.us.us.us.us.us.us.i
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !43
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %.0148.us.us.us.us.us.us.i
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !43
  %i.he = tail call float @llvm.fmuladd.f32(float %i.hd, float %i.fk, float %i.hb)
  %i.hf = fmul float %i.ff, %i.he
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %gep163.us.us.us.us.us.us.i, i64 %.0148.us.us.us.us.us.us.i
  store float %i.hf, ptr %i.hg, align 4, !tbaa !43
  %i.hh = add nuw nsw i64 %.0148.us.us.us.us.us.us.i, 1 ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %i.hh
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !43
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %i.hh
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !43
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.fk, float %i.hj)
  %i.hn = fmul float %i.ff, %i.hm
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %gep163.us.us.us.us.us.us.i, i64 %i.hh
  store float %i.hn, ptr %i.ho, align 4, !tbaa !43
  %i.hp = add nuw nsw i64 %.0148.us.us.us.us.us.us.i, 2 ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %i.hp
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !43
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %i.hp
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !43
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.fk, float %i.hr)
  %i.hv = fmul float %i.ff, %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %gep163.us.us.us.us.us.us.i, i64 %i.hp
  store float %i.hv, ptr %i.hw, align 4, !tbaa !43
  %i.hx = add nuw nsw i64 %.0148.us.us.us.us.us.us.i, 3 ; 3 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %i.hx
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !43
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %i.hx
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !43
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.fk, float %i.hz)
  %i.id = fmul float %i.ff, %i.ic
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %gep163.us.us.us.us.us.us.i, i64 %i.hx
  store float %i.id, ptr %i.ie, align 4, !tbaa !43
  %i.if = add nuw nsw i64 %.0148.us.us.us.us.us.us.i, 4 ; 2 uses
  %exitcond184.not.i.3 = icmp eq i64 %i.if, %i.o
  br i1 %exitcond184.not.i.3, label %._crit_edge151.us.us.us.us.us.us.i, label %vec.epilog.scalar.ph, !llvm.loop !650

._crit_edge151.us.us.us.us.us.us.i:               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ig = add nsw i64 %.0129152.us.us.us.us.us.us.i, %i.aw ; 2 uses
  %i.ih = icmp slt i64 %i.ig, %i.q
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ih, label %.lr.ph.us.us.us.us.us.us.i, label %._crit_edge155.split.us.us.split.us.us.us.us.i, !llvm.loop !651

._crit_edge155.split.us.us.split.us.us.us.us.i:   ; preds = %._crit_edge151.us.us.us.us.us.us.i
  %i.ii = add nuw nsw i64 %.0130164.us.us.us.us.i, 1 ; 2 uses
  %exitcond185.not.i = icmp eq i64 %i.ii, %i.s
  br i1 %exitcond185.not.i, label %._crit_edge.split170.us.split.us.us.us.i, label %.lr.ph154.us.us.us.us.i, !llvm.loop !652

._crit_edge.split170.us.split.us.us.us.i:         ; preds = %._crit_edge155.split.us.us.split.us.us.us.us.i
  %i.ij = add nuw nsw i64 %.0131171.us.us.i, 1    ; 2 uses
  %exitcond186.not.i = icmp eq i64 %i.ij, %i.u
  br i1 %exitcond186.not.i, label %_ZL38ggml_compute_forward_rms_norm_back_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader.us.us.i, !llvm.loop !653

.preheader.lr.ph.split.split.split.i:             ; preds = %.preheader.lr.ph.split.split.i
  %i.ik = fcmp olt float %i.ay, 0.000000e+00
  br i1 %i.ik, label %cdce.call, label %_ZL38ggml_compute_forward_rms_norm_back_f32PK19ggml_compute_paramsP11ggml_tensor.exit, !prof !60

cdce.call:                                        ; preds = %.preheader.lr.ph.split.split.split.i
  %i.il = tail call float @sqrtf(float noundef %i.ay) #18 ; 0 uses
  br label %_ZL38ggml_compute_forward_rms_norm_back_f32PK19ggml_compute_paramsP11ggml_tensor.exit

_ZL38ggml_compute_forward_rms_norm_back_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge.split170.us.split.us.us.us.i, %cdce.call, %.preheader.lr.ph.split.split.split.i, %bb.i, %.preheader.lr.ph.i
  ret void

bb.k:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4201, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_group_norm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 11 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @ggml_are_same_shape(ptr noundef nonnull %i.b, ptr noundef nonnull %1)
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4214, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.27) #17
  unreachable
end_hunk_1
begin_hunk_2_@_ZL29ggml_compute_forward_rope_fltIfEvPK19ggml_compute_paramsP11ggml_tensorb:bb.a
  %i.li = fmul float %.0.copyload157, %i.lf       ; 2 uses
  %i.lj = call float @cosf(float noundef %i.li) #18
  %i.lk = call float @sinf(float noundef %i.li) #18
  %i.ll = fmul float %.0.copyload151, %i.lk
  %i.lm = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.ln = insertelement <2 x float> %i.lm, float %i.ll, i64 1
  %i.lo = fmul <2 x float> %i.fl, %i.ln
  store <2 x float> %i.lo, ptr %i.lh, align 4, !tbaa !43
  %i.lp = fmul float %i.bu, %i.lf                 ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.025.us26.i.us.us
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = fmul float %.0.copyload157, %i.lp       ; 2 uses
  %i.lt = call float @cosf(float noundef %i.ls) #18
  %i.lu = call float @sinf(float noundef %i.ls) #18
  %i.lv = fmul float %.0.copyload151, %i.lu
  %i.lw = insertelement <2 x float> poison, float %i.lt, i64 0
  %i.lx = insertelement <2 x float> %i.lw, float %i.lv, i64 1
  %i.ly = fmul <2 x float> %i.fn, %i.lx
  store <2 x float> %i.ly, ptr %i.lr, align 4, !tbaa !43
  %i.lz = fmul float %i.bu, %i.lp                 ; 2 uses
  %i.ma = add nuw nsw i64 %.025.us26.i.us.us, 8   ; 2 uses
  %niter547.next.3 = add i64 %niter547, 4         ; 2 uses
  %niter547.ncmp.3.not = icmp eq i64 %niter547.next.3, %unroll_iter546
  br i1 %niter547.ncmp.3.not, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit539.unr-lcssa, label %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us, !llvm.loop !6

.lr.ph.split.us.i.us.us:                          ; preds = %.lr.ph.i.us.us
  br i1 %.not98.i, label %_ZL9rope_yarnffPflffS_S_.exit.us.us.i.us.us, label %_ZL9rope_yarnffPflffS_S_.exit.us.i.us.us

_ZL9rope_yarnffPflffS_S_.exit.us.i.us.us:         ; preds = %.lr.ph.split.us.i.us.us, %_ZL9rope_yarnffPflffS_S_.exit.us.i.us.us
  %.025.us.i.us.us = phi i64 [ %i.nk, %_ZL9rope_yarnffPflffS_S_.exit.us.i.us.us ], [ 0, %.lr.ph.split.us.i.us.us ] ; 4 uses
  %.02224.us.i.us.us = phi float [ %i.nj, %_ZL9rope_yarnffPflffS_S_.exit.us.i.us.us ], [ %i.jk, %.lr.ph.split.us.i.us.us ] ; 2 uses
  %i.mb = lshr exact i64 %.025.us.i.us.us, 1
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.0229, i64 %i.mb
  %i.md = load float, ptr %i.mc, align 4, !tbaa !43
  %i.me = fdiv float %.02224.us.i.us.us, %i.md    ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.025.us.i.us.us ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  %i.mh = fmul float %.0.copyload157, %i.me
  %i.mi = load float, ptr %i.a, align 4, !tbaa !43 ; 2 uses
  %i.mj = load float, ptr %i.db, align 4, !tbaa !43
  %i.mk = trunc i64 %.025.us.i.us.us to i32
  %i.ml = ashr exact i32 %i.mk, 1
  %i.mm = sitofp i32 %i.ml to float
  %i.mn = fsub float %i.mm, %i.mi
  %i.mo = fsub float %i.mj, %i.mi                 ; 2 uses
  %i.mp = fcmp olt float %i.mo, 1.000000e-03
  %i.mq = select i1 %i.mp, float 1.000000e-03, float %i.mo
  %i.mr = fdiv float %i.mn, %i.mq                 ; 2 uses
  %i.ms = fcmp olt float %i.mr, 0.000000e+00
  %i.mt = select i1 %i.ms, float 0.000000e+00, float %i.mr ; 2 uses
  %i.mu = fcmp ogt float %i.mt, 1.000000e+00
  %i.mv = select i1 %i.mu, float 1.000000e+00, float %i.mt
  %i.mw = fsub float 1.000000e+00, %i.mv
  %i.mx = fmul float %.0.copyload154, %i.mw       ; 2 uses
  %i.my = fsub float 1.000000e+00, %i.mx
  %i.mz = fmul float %i.me, %i.mx
  %i.na = call float @llvm.fmuladd.f32(float %i.mh, float %i.my, float %i.mz) ; 2 uses
  %i.nb = call float @logf(float noundef %i.dc) #18
  %i.nc = call float @llvm.fmuladd.f32(float %i.nb, float 1.000000e-01, float 1.000000e+00)
  %i.nd = fmul float %.0.copyload151, %i.nc       ; 2 uses
  %i.ne = call float @cosf(float noundef %i.na) #18
  %i.nf = fmul float %i.ne, %i.nd
  store float %i.nf, ptr %i.mf, align 4, !tbaa !43
  %i.ng = call float @sinf(float noundef %i.na) #18
  %i.nh = fmul float %i.nd, %i.ng
  %i.ni = fmul float %i.cm, %i.nh
  store float %i.ni, ptr %i.mg, align 4, !tbaa !43
  %i.nj = fmul float %i.bu, %.02224.us.i.us.us
  %i.nk = add nuw nsw i64 %.025.us.i.us.us, 2     ; 2 uses
  %i.nl = icmp slt i64 %i.nk, %i.ai
  br i1 %i.nl, label %_ZL9rope_yarnffPflffS_S_.exit.us.i.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, !llvm.loop !6

_ZL9rope_yarnffPflffS_S_.exit.us.us.i.us.us:      ; preds = %.lr.ph.split.us.i.us.us, %_ZL9rope_yarnffPflffS_S_.exit.us.us.i.us.us
  %.025.us.us.i.us.us = phi i64 [ %i.or, %_ZL9rope_yarnffPflffS_S_.exit.us.us.i.us.us ], [ 0, %.lr.ph.split.us.i.us.us ] ; 3 uses
  %.02224.us.us.i.us.us = phi float [ %i.oq, %_ZL9rope_yarnffPflffS_S_.exit.us.us.i.us.us ], [ %i.jk, %.lr.ph.split.us.i.us.us ] ; 3 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.025.us.us.i.us.us ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.no = fmul float %.0.copyload157, %.02224.us.us.i.us.us
  %i.np = load float, ptr %i.a, align 4, !tbaa !43 ; 2 uses
  %i.nq = load float, ptr %i.db, align 4, !tbaa !43
  %i.nr = trunc i64 %.025.us.us.i.us.us to i32
  %i.ns = ashr exact i32 %i.nr, 1
  %i.nt = sitofp i32 %i.ns to float
  %i.nu = fsub float %i.nt, %i.np
  %i.nv = fsub float %i.nq, %i.np                 ; 2 uses
  %i.nw = fcmp olt float %i.nv, 1.000000e-03
  %i.nx = select i1 %i.nw, float 1.000000e-03, float %i.nv
  %i.ny = fdiv float %i.nu, %i.nx                 ; 2 uses
  %i.nz = fcmp olt float %i.ny, 0.000000e+00
  %i.oa = select i1 %i.nz, float 0.000000e+00, float %i.ny ; 2 uses
  %i.ob = fcmp ogt float %i.oa, 1.000000e+00
  %i.oc = select i1 %i.ob, float 1.000000e+00, float %i.oa
  %i.od = fsub float 1.000000e+00, %i.oc
  %i.oe = fmul float %.0.copyload154, %i.od       ; 2 uses
  %i.of = fsub float 1.000000e+00, %i.oe
  %i.og = fmul float %.02224.us.us.i.us.us, %i.oe
  %i.oh = call float @llvm.fmuladd.f32(float %i.no, float %i.of, float %i.og) ; 2 uses
  %i.oi = call float @logf(float noundef %i.dc) #18
  %i.oj = call float @llvm.fmuladd.f32(float %i.oi, float 1.000000e-01, float 1.000000e+00)
  %i.ok = fmul float %.0.copyload151, %i.oj       ; 2 uses
  %i.ol = call float @cosf(float noundef %i.oh) #18
  %i.om = fmul float %i.ol, %i.ok
  store float %i.om, ptr %i.nm, align 4, !tbaa !43
  %i.on = call float @sinf(float noundef %i.oh) #18
  %i.oo = fmul float %i.ok, %i.on
  %i.op = fmul float %i.cm, %i.oo
  store float %i.op, ptr %i.nn, align 4, !tbaa !43
  %i.oq = fmul float %i.bu, %.02224.us.us.i.us.us
  %i.or = add nuw nsw i64 %.025.us.us.i.us.us, 2  ; 2 uses
  %i.os = icmp slt i64 %i.or, %i.ai
  br i1 %i.os, label %_ZL9rope_yarnffPflffS_S_.exit.us.us.i.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, !llvm.loop !6

_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit539.unr-lcssa: ; preds = %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us
  br i1 %lcmp.mod544.not, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, label %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil.preheader

_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil.preheader: ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit539.unr-lcssa, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader
  %.025.us26.i.us.us.epil.init = phi i64 [ 0, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader ], [ %i.ma, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit539.unr-lcssa ]
  %.02224.us27.i.us.us.epil.init = phi float [ %i.jk, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader ], [ %i.lz, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit539.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod545)
  br label %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil

_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil:  ; preds = %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil.preheader
  %.025.us26.i.us.us.epil = phi i64 [ %i.pc, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil ], [ %.025.us26.i.us.us.epil.init, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil.preheader ] ; 2 uses
  %.02224.us27.i.us.us.epil = phi float [ %i.pb, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil ], [ %.02224.us27.i.us.us.epil.init, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil ], [ 0, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil.preheader ]
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.025.us26.i.us.us.epil
  %i.ou = fmul float %.0.copyload157, %.02224.us27.i.us.us.epil ; 2 uses
  %i.ov = call float @cosf(float noundef %i.ou) #18
  %i.ow = call float @sinf(float noundef %i.ou) #18
  %i.ox = fmul float %.0.copyload151, %i.ow
  %i.oy = insertelement <2 x float> poison, float %i.ov, i64 0
  %i.oz = insertelement <2 x float> %i.oy, float %i.ox, i64 1
  %i.pa = fmul <2 x float> %i.fp, %i.oz
  store <2 x float> %i.pa, ptr %i.ot, align 4, !tbaa !43
  %i.pb = fmul float %i.bu, %.02224.us27.i.us.us.epil
  %i.pc = add nuw nsw i64 %.025.us26.i.us.us.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter543
  br i1 %epil.iter.cmp.not, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, label %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil, !llvm.loop !923

_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit540.unr-lcssa: ; preds = %_ZL9rope_yarnffPflffS_S_.exit.i.us.us
  br i1 %lcmp.mod.not.not, label %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.epil.preheader, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us

_ZL9rope_yarnffPflffS_S_.exit.i.us.us.epil.preheader: ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit540.unr-lcssa, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader
  %.025.i.us.us.epil.init = phi i64 [ 0, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader ], [ %i.km, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit540.unr-lcssa ] ; 2 uses
  %.02224.i.us.us.epil.init = phi float [ %i.jk, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader ], [ %i.kl, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit540.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod542)
  %i.pd = lshr exact i64 %.025.i.us.us.epil.init, 1
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.0229, i64 %i.pd
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !43
  %i.pg = fdiv float %.02224.i.us.us.epil.init, %i.pf
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.025.i.us.us.epil.init
  %i.pi = fmul float %.0.copyload157, %i.pg       ; 2 uses
  %i.pj = call float @cosf(float noundef %i.pi) #18
  %i.pk = call float @sinf(float noundef %i.pi) #18
  %i.pl = fmul float %.0.copyload151, %i.pk
  %i.pm = insertelement <2 x float> poison, float %i.pj, i64 0
  %i.pn = insertelement <2 x float> %i.pm, float %i.pl, i64 1
  %i.po = fmul <2 x float> %i.fe, %i.pn
  store <2 x float> %i.po, ptr %i.ph, align 4, !tbaa !43
  br label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us

_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us: ; preds = %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.epil.preheader, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit540.unr-lcssa, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit539.unr-lcssa, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil, %_ZL9rope_yarnffPflffS_S_.exit.us.i.us.us, %_ZL9rope_yarnffPflffS_S_.exit.us.us.i.us.us, %bb.bb, %.preheader.i.us.us, %bb.aj
  %i.pp = load ptr, ptr %i.dg, align 8, !tbaa !37 ; 8 uses
  %i.pq = getelementptr i8, ptr %i.pp, i64 %i.gi
  %i.pr = getelementptr i8, ptr %i.pq, i64 %i.gu
  %i.ps = mul i64 %.0224306.us.us, %i.ac          ; 8 uses
  %i.pt = getelementptr i8, ptr %i.pr, i64 %i.ps  ; 7 uses
  %i.pu = load ptr, ptr %i.dh, align 8, !tbaa !37 ; 8 uses
  %i.pv = getelementptr i8, ptr %i.pu, i64 %i.gj
  %i.pw = getelementptr i8, ptr %i.pv, i64 %i.gv
  %i.px = mul i64 %.0224306.us.us, %i.as          ; 8 uses
  %i.py = getelementptr i8, ptr %i.pw, i64 %i.px  ; 9 uses
  switch i32 %i.n, label %.split319.us [
    i32 0, label %bb.be
    i32 2, label %bb.bd
    i32 8, label %bb.bd
    i32 40, label %bb.bd
    i32 24, label %bb.bc
  ]

bb.bc:                                            ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us
  br i1 %i.cz, label %.lr.ph.i263.us.us.preheader, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us

.lr.ph.i263.us.us.preheader:                      ; preds = %bb.bc
  br i1 %min.iters.check489, label %.lr.ph.i263.us.us.preheader536, label %vector.memcheck490

vector.memcheck490:                               ; preds = %.lr.ph.i263.us.us.preheader
  %i.pz = getelementptr i8, ptr %i.pu, i64 %i.en
  %i.qa = getelementptr i8, ptr %i.pz, i64 %i.gd
  %i.qb = getelementptr i8, ptr %i.qa, i64 %i.gl
  %i.qc = getelementptr i8, ptr %i.qb, i64 %i.px  ; 4 uses
  %i.qd = getelementptr i8, ptr %i.pu, i64 %i.eo
  %i.qe = getelementptr i8, ptr %i.qd, i64 %i.gd
  %i.qf = getelementptr i8, ptr %i.qe, i64 %i.gl
  %i.qg = getelementptr i8, ptr %i.qf, i64 %i.px  ; 4 uses
  %i.qh = getelementptr i8, ptr %i.pu, i64 %i.eq
  %i.qi = getelementptr i8, ptr %i.qh, i64 %i.gd
  %i.qj = getelementptr i8, ptr %i.qi, i64 %i.gl
  %i.qk = getelementptr i8, ptr %i.qj, i64 %i.px  ; 4 uses
  %bound0491 = icmp ult ptr %i.py, %i.qk
  %bound1492 = icmp ult ptr %i.qg, %i.qc
  %found.conflict493 = and i1 %bound0491, %bound1492
  %i.ql = getelementptr i8, ptr %i.gz, i64 %i.es
  %i.qm = getelementptr i8, ptr %i.ql, i64 %i.et
  %i.qn = getelementptr i8, ptr %i.qm, i64 8      ; 2 uses
  %bound0494 = icmp ult ptr %i.py, %i.qn
  %bound1495 = icmp ult ptr %i.ha, %i.qc
  %found.conflict496 = and i1 %bound0494, %bound1495
  %conflict.rdx497 = or i1 %found.conflict493, %found.conflict496
  %i.qo = getelementptr i8, ptr %i.pp, i64 %i.eo
  %i.qp = getelementptr i8, ptr %i.qo, i64 %i.gc
  %i.qq = getelementptr i8, ptr %i.qp, i64 %i.gk
  %i.qr = getelementptr i8, ptr %i.qq, i64 %i.ps  ; 2 uses
  %i.qs = getelementptr i8, ptr %i.pp, i64 %i.eq
  %3 = getelementptr i8, ptr %i.qs, i64 %i.gc
  %4 = getelementptr i8, ptr %3, i64 %i.gk
  %5 = getelementptr i8, ptr %4, i64 %i.ps        ; 2 uses
  %bound0494.a = icmp ult ptr %i.py, %5
  %bound1495.a = icmp ult ptr %i.qr, %i.qc
  %found.conflict496.a = and i1 %bound0494.a, %bound1495.a
  %conflict.rdx497.a = or i1 %conflict.rdx497, %found.conflict496.a
  %6 = getelementptr i8, ptr %i.pp, i64 %i.en
  %7 = getelementptr i8, ptr %6, i64 %i.gc
  %8 = getelementptr i8, ptr %7, i64 %i.gk
  %9 = getelementptr i8, ptr %8, i64 %i.ps        ; 2 uses
  %bound0502 = icmp ult ptr %i.py, %9
  %bound1503 = icmp ult ptr %i.pt, %i.qc
  %found.conflict504 = and i1 %bound0502, %bound1503
  %conflict.rdx505 = or i1 %conflict.rdx497.a, %found.conflict504
  %bound0506 = icmp ult ptr %i.qg, %i.qn
  %bound1507 = icmp ult ptr %i.ha, %i.qk
  %found.conflict508 = and i1 %bound0506, %bound1507
  %conflict.rdx509 = or i1 %conflict.rdx505, %found.conflict508
  %bound0510 = icmp ult ptr %i.qg, %5
  %bound1511 = icmp ult ptr %i.qr, %i.qk
  %found.conflict512 = and i1 %bound0510, %bound1511
  %conflict.rdx513 = or i1 %conflict.rdx509, %found.conflict512
  %bound0514 = icmp ult ptr %i.qg, %9
  %bound1515 = icmp ult ptr %i.pt, %i.qk
  %found.conflict516 = and i1 %bound0514, %bound1515
  %conflict.rdx517 = or i1 %conflict.rdx513, %found.conflict516
  br i1 %conflict.rdx517, label %.lr.ph.i263.us.us.preheader536, label %vector.body520

vector.body520:                                   ; preds = %vector.memcheck490, %vector.body520
  %index521 = phi i64 [ %index.next527, %vector.body520 ], [ 0, %vector.memcheck490 ] ; 4 uses
  %.idx531 = shl nuw i64 %index521, 3
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.idx531
  %wide.vec522 = load <16 x float>, ptr %i.qt, align 4, !tbaa !43, !alias.scope !950 ; 2 uses
  %strided.vec523 = shufflevector <16 x float> %wide.vec522, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec524 = shufflevector <16 x float> %wide.vec522, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %index521 ; 2 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %index521 ; 2 uses
  %wide.load525 = load <8 x float>, ptr %i.qu, align 4, !tbaa !43, !alias.scope !951 ; 2 uses
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.be
  %wide.load526 = load <8 x float>, ptr %i.qw, align 4, !tbaa !43, !alias.scope !952 ; 2 uses
  %i.qx = fneg <8 x float> %strided.vec524
  %i.qy = fmul <8 x float> %wide.load526, %i.qx
  %i.qz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load525, <8 x float> %strided.vec523, <8 x float> %i.qy)
  store <8 x float> %i.qz, ptr %i.qv, align 4, !tbaa !43, !alias.scope !953, !noalias !954
  %i.ra = fmul <8 x float> %strided.vec523, %wide.load526
  %i.rb = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load525, <8 x float> %strided.vec524, <8 x float> %i.ra)
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.qv, i64 %i.be
  store <8 x float> %i.rb, ptr %i.rc, align 4, !tbaa !43, !alias.scope !955, !noalias !956
  %index.next527 = add nuw i64 %index521, 8       ; 2 uses
  %i.rd = icmp eq i64 %index.next527, %n.vec519
  br i1 %i.rd, label %middle.block528, label %vector.body520, !llvm.loop !930

middle.block528:                                  ; preds = %vector.body520
  br i1 %cmp.n529, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, label %.lr.ph.i263.us.us.preheader536

.lr.ph.i263.us.us.preheader536:                   ; preds = %vector.memcheck490, %.lr.ph.i263.us.us.preheader, %middle.block528
  %.026.i264.us.us.ph = phi i64 [ 0, %vector.memcheck490 ], [ 0, %.lr.ph.i263.us.us.preheader ], [ %i.ft, %middle.block528 ]
  br label %.lr.ph.i263.us.us

.lr.ph.i263.us.us:                                ; preds = %.lr.ph.i263.us.us.preheader536, %.lr.ph.i263.us.us
  %.026.i264.us.us = phi i64 [ %i.ru, %.lr.ph.i263.us.us ], [ %.026.i264.us.us.ph, %.lr.ph.i263.us.us.preheader536 ] ; 3 uses
  %i.re = lshr exact i64 %.026.i264.us.us, 1      ; 2 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.026.i264.us.us ; 2 uses
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !43 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !43 ; 2 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.re ; 2 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.re ; 2 uses
  %i.rl = load float, ptr %i.rj, align 4, !tbaa !43 ; 2 uses
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rj, i64 %i.be
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !43 ; 2 uses
  %i.ro = fneg float %i.ri
  %i.rp = fmul float %i.rn, %i.ro
  %i.rq = call float @llvm.fmuladd.f32(float %i.rl, float %i.rg, float %i.rp)
  store float %i.rq, ptr %i.rk, align 4, !tbaa !43
  %i.rr = fmul float %i.rg, %i.rn
  %i.rs = call float @llvm.fmuladd.f32(float %i.rl, float %i.ri, float %i.rr)
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.rk, i64 %i.be
  store float %i.rs, ptr %i.rt, align 4, !tbaa !43
  %i.ru = add nuw nsw i64 %.026.i264.us.us, 2     ; 2 uses
  %i.rv = icmp slt i64 %i.ru, %i.ai
  br i1 %i.rv, label %.lr.ph.i263.us.us, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, !llvm.loop !931

bb.bd:                                            ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us
  %i.rw = getelementptr [4 x i8], ptr %i.pt, i64 %i.dk ; 4 uses
  %i.rx = getelementptr [4 x i8], ptr %i.py, i64 %i.dk ; 6 uses
  br i1 %i.dl, label %.lr.ph.i260.us.us.preheader, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us

.lr.ph.i260.us.us.preheader:                      ; preds = %bb.bd
  br i1 %min.iters.check413, label %.lr.ph.i260.us.us.preheader534, label %vector.memcheck414

vector.memcheck414:                               ; preds = %.lr.ph.i260.us.us.preheader
  %i.ry = getelementptr i8, ptr %i.pu, i64 %i.eb
  %i.rz = getelementptr i8, ptr %i.ry, i64 %i.gf
  %i.sa = getelementptr i8, ptr %i.rz, i64 %i.gn
  %i.sb = getelementptr i8, ptr %i.sa, i64 %i.px  ; 4 uses
  %i.sc = getelementptr i8, ptr %i.pu, i64 %i.eg
  %i.sd = getelementptr i8, ptr %i.sc, i64 %i.gf
  %i.se = getelementptr i8, ptr %i.sd, i64 %i.gn
  %i.sf = getelementptr i8, ptr %i.se, i64 %i.px  ; 4 uses
  %i.sg = getelementptr i8, ptr %i.pu, i64 %i.ef
  %i.sh = getelementptr i8, ptr %i.sg, i64 %i.gf
  %i.si = getelementptr i8, ptr %i.sh, i64 %i.gn
  %i.sj = getelementptr i8, ptr %i.si, i64 %i.px  ; 4 uses
  %bound0415 = icmp ult ptr %i.rx, %i.sj
  %bound1416 = icmp ult ptr %i.sf, %i.sb
  %found.conflict417 = and i1 %bound0415, %bound1416
  %i.sk = getelementptr i8, ptr %i.gz, i64 %i.ej
  %i.sl = getelementptr i8, ptr %i.sk, i64 8      ; 2 uses
  %bound0418 = icmp ult ptr %i.rx, %i.sl
  %bound1419 = icmp ult ptr %i.ha, %i.sb
  %found.conflict420 = and i1 %bound0418, %bound1419
  %conflict.rdx421 = or i1 %found.conflict417, %found.conflict420
  %i.sm = getelementptr i8, ptr %i.pp, i64 %i.eg
  %i.sn = getelementptr i8, ptr %i.sm, i64 %i.ge
  %i.so = getelementptr i8, ptr %i.sn, i64 %i.gm
  %i.sp = getelementptr i8, ptr %i.so, i64 %i.ps  ; 2 uses
  %i.sq = getelementptr i8, ptr %i.pp, i64 %i.ef
  %10 = getelementptr i8, ptr %i.sq, i64 %i.ge
  %11 = getelementptr i8, ptr %10, i64 %i.gm
  %12 = getelementptr i8, ptr %11, i64 %i.ps      ; 2 uses
  %bound0418.a = icmp ult ptr %i.rx, %12
  %bound1419.a = icmp ult ptr %i.sp, %i.sb
  %found.conflict420.a = and i1 %bound0418.a, %bound1419.a
  %conflict.rdx421.a = or i1 %conflict.rdx421, %found.conflict420.a
  %13 = getelementptr i8, ptr %i.pp, i64 %i.eb
  %14 = getelementptr i8, ptr %13, i64 %i.ge
  %15 = getelementptr i8, ptr %14, i64 %i.gm
  %16 = getelementptr i8, ptr %15, i64 %i.ps      ; 2 uses
  %bound0426 = icmp ult ptr %i.rx, %16
  %bound1427 = icmp ult ptr %i.rw, %i.sb
  %found.conflict428 = and i1 %bound0426, %bound1427
  %conflict.rdx429 = or i1 %conflict.rdx421.a, %found.conflict428
  %bound0430 = icmp ult ptr %i.sf, %i.sl
  %bound1431 = icmp ult ptr %i.ha, %i.sj
  %found.conflict432 = and i1 %bound0430, %bound1431
  %conflict.rdx433 = or i1 %conflict.rdx429, %found.conflict432
  %bound0434 = icmp ult ptr %i.sf, %12
  %bound1435 = icmp ult ptr %i.sp, %i.sj
  %found.conflict436 = and i1 %bound0434, %bound1435
  %conflict.rdx437 = or i1 %conflict.rdx433, %found.conflict436
  %bound0438 = icmp ult ptr %i.sf, %16
  %bound1439 = icmp ult ptr %i.rw, %i.sj
  %found.conflict440 = and i1 %bound0438, %bound1439
  %conflict.rdx441 = or i1 %conflict.rdx437, %found.conflict440
  br i1 %conflict.rdx441, label %.lr.ph.i260.us.us.preheader534, label %vector.body444

vector.body444:                                   ; preds = %vector.memcheck414, %vector.body444
  %index445 = phi i64 [ %index.next450, %vector.body444 ], [ 0, %vector.memcheck414 ] ; 4 uses
  %.idx532 = shl nuw i64 %index445, 3
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.idx532
  %wide.vec446 = load <16 x float>, ptr %i.sr, align 4, !tbaa !43, !alias.scope !957 ; 2 uses
  %strided.vec447 = shufflevector <16 x float> %wide.vec446, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec448 = shufflevector <16 x float> %wide.vec446, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %index445 ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %index445 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.ss, align 4, !tbaa !43, !alias.scope !958 ; 2 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %i.dj
  %wide.load449 = load <8 x float>, ptr %i.su, align 4, !tbaa !43, !alias.scope !959 ; 2 uses
  %i.sv = fneg <8 x float> %strided.vec448
  %i.sw = fmul <8 x float> %wide.load449, %i.sv
  %i.sx = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load, <8 x float> %strided.vec447, <8 x float> %i.sw)
  store <8 x float> %i.sx, ptr %i.st, align 4, !tbaa !43, !alias.scope !960, !noalias !961
  %i.sy = fmul <8 x float> %strided.vec447, %wide.load449
  %i.sz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load, <8 x float> %strided.vec448, <8 x float> %i.sy)
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.st, i64 %i.dj
  store <8 x float> %i.sz, ptr %i.ta, align 4, !tbaa !43, !alias.scope !962, !noalias !963
  %index.next450 = add nuw i64 %index445, 8       ; 2 uses
  %i.tb = icmp eq i64 %index.next450, %n.vec443
  br i1 %i.tb, label %middle.block451, label %vector.body444, !llvm.loop !938

middle.block451:                                  ; preds = %vector.body444
  br i1 %cmp.n452, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, label %.lr.ph.i260.us.us.preheader534

.lr.ph.i260.us.us.preheader534:                   ; preds = %vector.memcheck414, %.lr.ph.i260.us.us.preheader, %middle.block451
  %.026.i261.us.us.ph = phi i64 [ 0, %vector.memcheck414 ], [ 0, %.lr.ph.i260.us.us.preheader ], [ %i.fx, %middle.block451 ]
  br label %.lr.ph.i260.us.us

.lr.ph.i260.us.us:                                ; preds = %.lr.ph.i260.us.us.preheader534, %.lr.ph.i260.us.us
  %.026.i261.us.us = phi i64 [ %i.ts, %.lr.ph.i260.us.us ], [ %.026.i261.us.us.ph, %.lr.ph.i260.us.us.preheader534 ] ; 3 uses
  %i.tc = lshr exact i64 %.026.i261.us.us, 1      ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.026.i261.us.us ; 2 uses
  %i.te = load float, ptr %i.td, align 4, !tbaa !43 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !43 ; 2 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.tc ; 2 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.tc ; 2 uses
  %i.tj = load float, ptr %i.th, align 4, !tbaa !43 ; 2 uses
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.dj
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !43 ; 2 uses
  %i.tm = fneg float %i.tg
  %i.tn = fmul float %i.tl, %i.tm
  %i.to = call float @llvm.fmuladd.f32(float %i.tj, float %i.te, float %i.tn)
  store float %i.to, ptr %i.ti, align 4, !tbaa !43
  %i.tp = fmul float %i.te, %i.tl
  %i.tq = call float @llvm.fmuladd.f32(float %i.tj, float %i.tg, float %i.tp)
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.dj
  store float %i.tq, ptr %i.tr, align 4, !tbaa !43
  %i.ts = add nuw nsw i64 %.026.i261.us.us, 2     ; 2 uses
  %i.tt = icmp slt i64 %i.ts, %i.be
  br i1 %i.tt, label %.lr.ph.i260.us.us, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, !llvm.loop !939

bb.be:                                            ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us
  %i.tu = getelementptr [4 x i8], ptr %i.pt, i64 %i.dk ; 3 uses
  %i.tv = getelementptr [4 x i8], ptr %i.py, i64 %i.dk ; 4 uses
  br i1 %i.dl, label %.lr.ph.i259.us.us.preheader, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us

.lr.ph.i259.us.us.preheader:                      ; preds = %bb.be
  br i1 %min.iters.check, label %.lr.ph.i259.us.us.preheader533, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i259.us.us.preheader
  %i.tw = getelementptr i8, ptr %i.pu, i64 %i.dt
  %i.tx = getelementptr i8, ptr %i.tw, i64 %i.gh
  %i.ty = getelementptr i8, ptr %i.tx, i64 %i.gp
  %i.tz = getelementptr i8, ptr %i.ty, i64 %i.px  ; 2 uses
  %i.ua = getelementptr i8, ptr %i.gz, i64 %i.dw
  %bound0 = icmp ult ptr %i.tv, %i.ua
  %bound1 = icmp ult ptr %i.ha, %i.tz
  %found.conflict = and i1 %bound0, %bound1
  %i.ub = getelementptr i8, ptr %i.pp, i64 %i.dt
  %17 = getelementptr i8, ptr %i.ub, i64 %i.gg
  %18 = getelementptr i8, ptr %17, i64 %i.go
  %19 = getelementptr i8, ptr %18, i64 %i.ps
  %bound0371 = icmp ult ptr %i.tv, %19
  %bound1372 = icmp ult ptr %i.tu, %i.tz
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx = or i1 %found.conflict, %found.conflict373
  br i1 %conflict.rdx, label %.lr.ph.i259.us.us.preheader533, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.uc = shl nuw i64 %index, 1                   ; 3 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.uc
  %wide.vec = load <16 x float>, ptr %i.ud, align 4, !tbaa !43, !alias.scope !964 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec374 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.uc
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %i.uc
  %wide.vec375 = load <16 x float>, ptr %i.ue, align 4, !tbaa !43, !alias.scope !965 ; 2 uses
  %strided.vec376 = shufflevector <16 x float> %wide.vec375, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec377 = shufflevector <16 x float> %wide.vec375, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.ug = fneg <8 x float> %strided.vec374
  %i.uh = fmul <8 x float> %strided.vec377, %i.ug
  %i.ui = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec376, <8 x float> %strided.vec, <8 x float> %i.uh)
  %i.uj = fmul <8 x float> %strided.vec, %strided.vec377
  %i.uk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec376, <8 x float> %strided.vec374, <8 x float> %i.uj)
  %interleaved.vec = shufflevector <8 x float> %i.ui, <8 x float> %i.uk, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.uf, align 4, !tbaa !43, !alias.scope !966, !noalias !967
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ul = icmp eq i64 %index.next, %n.vec
  br i1 %i.ul, label %middle.block, label %vector.body, !llvm.loop !944

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, label %.lr.ph.i259.us.us.preheader533

.lr.ph.i259.us.us.preheader533:                   ; preds = %vector.memcheck, %.lr.ph.i259.us.us.preheader, %middle.block
  %.026.i.us.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i259.us.us.preheader ], [ %i.gb, %middle.block ]
  br label %.lr.ph.i259.us.us

.lr.ph.i259.us.us:                                ; preds = %.lr.ph.i259.us.us.preheader533, %.lr.ph.i259.us.us
  %.026.i.us.us = phi i64 [ %i.vb, %.lr.ph.i259.us.us ], [ %.026.i.us.us.ph, %.lr.ph.i259.us.us.preheader533 ] ; 4 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.026.i.us.us ; 2 uses
  %i.un = load float, ptr %i.um, align 4, !tbaa !43 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  %i.up = load float, ptr %i.uo, align 4, !tbaa !43 ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %.026.i.us.us ; 2 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %.026.i.us.us ; 2 uses
  %i.us = load float, ptr %i.uq, align 4, !tbaa !43 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uq, i64 4
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !43 ; 2 uses
  %i.uv = fneg float %i.up
  %i.uw = fmul float %i.uu, %i.uv
  %i.ux = call float @llvm.fmuladd.f32(float %i.us, float %i.un, float %i.uw)
  store float %i.ux, ptr %i.ur, align 4, !tbaa !43
  %i.uy = fmul float %i.un, %i.uu
  %i.uz = call float @llvm.fmuladd.f32(float %i.us, float %i.up, float %i.uy)
  %i.va = getelementptr inbounds nuw i8, ptr %i.ur, i64 4
  store float %i.uz, ptr %i.va, align 4, !tbaa !43
  %i.vb = add nuw nsw i64 %.026.i.us.us, 2        ; 2 uses
  %i.vc = icmp slt i64 %i.vb, %i.be
  br i1 %i.vc, label %.lr.ph.i259.us.us, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, !llvm.loop !945

_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us:   ; preds = %.lr.ph.i260.us.us, %.lr.ph.i259.us.us, %middle.block451, %middle.block, %bb.be, %bb.bd
  br i1 %brmerge, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, %bb.bg
  %.0303.us.us = phi i64 [ %i.vm, %bb.bg ], [ 0, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us ] ; 4 uses
  %i.vd = icmp eq i64 %.0303.us.us, %i.dk
  br i1 %i.vd, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.us.us
  %i.ve = shl i64 %.0303.us.us, 2
  %i.vf = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.ve ; 2 uses
  %i.vg = shl i64 %.0303.us.us, 2
  %i.vh = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.vg ; 2 uses
  %i.vi = load float, ptr %i.vf, align 4, !tbaa !43
  store float %i.vi, ptr %i.vh, align 4, !tbaa !43
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 4
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !43
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vh, i64 4
  store float %i.vk, ptr %i.vl, align 4, !tbaa !43
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.us.us, %bb.bf
  %.1.us.us = phi i64 [ %.0303.us.us, %bb.bf ], [ %i.dr, %.lr.ph.us.us ]
  %i.vm = add nsw i64 %.1.us.us, 2                ; 2 uses
  %i.vn = icmp slt i64 %i.vm, %i.ai
  br i1 %i.vn, label %.lr.ph.us.us, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, !llvm.loop !946

_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us: ; preds = %.lr.ph.i263.us.us, %bb.bg, %middle.block528, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, %bb.bc, %bb.ah
  %.4.us.us = phi i64 [ %.2305.us.us, %bb.ah ], [ %.0225314.us.us, %bb.bc ], [ %.0225314.us.us, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us ], [ %.0225314.us.us, %middle.block528 ], [ %.0225314.us.us, %bb.bg ], [ %.0225314.us.us, %.lr.ph.i263.us.us ] ; 2 uses
  %i.vo = add nuw nsw i64 %.0224306.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.vo, %i.ak
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.ah, !llvm.loop !947

._crit_edge.us.us:                                ; preds = %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, %bb.ai
  %.lcssa = phi i32 [ %i.gw, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us ], [ %i.gx, %bb.ai ] ; 2 uses
  %.2.lcssa.us.us = phi i64 [ %.4.us.us, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us ], [ %.2305.us.us, %bb.ai ] ; 2 uses
  %i.vp = add nuw nsw i64 %.0225314.us.us, 1      ; 2 uses
  %exitcond336.not = icmp eq i64 %i.vp, %i.am
  br i1 %exitcond336.not, label %._crit_edge315.split.us.us, label %.preheader292.us.us, !llvm.loop !948

._crit_edge315.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.vq = add nuw nsw i64 %.0226323.us, 1         ; 2 uses
  %exitcond337.not = icmp eq i64 %i.vq, %i.ao
  br i1 %exitcond337.not, label %._crit_edge.split, label %.preheader293.us, !llvm.loop !949

default.unreachable:                              ; preds = %bb.ao
  unreachable

._crit_edge.split:                                ; preds = %._crit_edge315.split.us.us, %.preheader293.lr.ph, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

.split.us:                                        ; preds = %bb.al
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6003, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.110) #17
  unreachable

.split319.us:                                     ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6218, ptr noundef nonnull @.str.109) #17
  unreachable
}

declare void @ggml_rope_yarn_corr_dims(i32 noundef, i32 noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_rope_back(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  switch i32 %i.c, label %bb.d [
    i32 1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL29ggml_compute_forward_rope_fltItEvPK19ggml_compute_paramsP11ggml_tensorb(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZL29ggml_compute_forward_rope_fltIfEvPK19ggml_compute_paramsP11ggml_tensorb(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6281, ptr noundef nonnull @.str.2) #17
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_conv_transpose_1d(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 15 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  switch i32 %i.e, label %bb.z [
    i32 1, label %bb.b
    i32 0, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6296, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %1, align 8, !tbaa !30
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6297, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31   ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !31   ; 15 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 56
end_hunk_2
begin_hunk_3_@ggml_compute_forward_add_rel_pos:bb.a
bb.f:                                             ; preds = %bb.e, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31   ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !31 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.ag = load i32, ptr %0, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !36 ; 2 uses
  %i.aj = trunc i64 %i.af to i32                  ; 2 uses
  %i.ak = add i32 %i.aj, -1
  %i.al = add i32 %i.ak, %i.ai
  %i.am = sdiv i32 %i.al, %i.ai                   ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.ag                ; 3 uses
  %i.ao = add nsw i32 %i.an, %i.am
  %i.ap = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.aj) ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i32 %i.an, %i.ap
  br i1 %i.ar, label %.preheader82.lr.ph.i, label %_ZL36ggml_compute_forward_add_rel_pos_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader82.lr.ph.i:                             ; preds = %bb.f
  %i.as = icmp slt i64 %i.ad, 1
  %i.at = icmp slt i64 %i.ab, 1
  %i.au = icmp slt i64 %i.z, 1
  %i.av = add i64 %i.z, -1                        ; 2 uses
  %brmerge.i = select i1 %i.as, i1 true, i1 %i.at
  %brmerge101.i = select i1 %brmerge.i, i1 true, i1 %i.au
  br i1 %brmerge101.i, label %_ZL36ggml_compute_forward_add_rel_pos_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader82.preheader.i

.preheader82.preheader.i:                         ; preds = %.preheader82.lr.ph.i
  %i.aw = sext i32 %i.an to i64
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.ax = icmp ult i64 %i.av, 3
  %unroll_iter = and i64 %i.z, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  br label %.preheader82.i

.preheader82.i:                                   ; preds = %._crit_edge92.i, %.preheader82.preheader.i
  %.07894.i = phi i64 [ %i.bb, %._crit_edge92.i ], [ %i.aw, %.preheader82.preheader.i ] ; 2 uses
  %i.ay = mul nsw i64 %.07894.i, %i.ad
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge90.i, %.preheader82.i
  %.07791.i = phi i64 [ 0, %.preheader82.i ], [ %i.bc, %._crit_edge90.i ] ; 2 uses
  %i.az = add i64 %.07791.i, %i.ay
  %i.ba = mul i64 %i.az, %i.ab
  br label %.lr.ph86.i

._crit_edge92.i:                                  ; preds = %._crit_edge90.i
  %i.bb = add nsw i64 %.07894.i, 1                ; 2 uses
  %exitcond105.not.i = icmp eq i64 %i.bb, %i.aq
  br i1 %exitcond105.not.i, label %_ZL36ggml_compute_forward_add_rel_pos_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader82.i, !llvm.loop !1712

._crit_edge90.i:                                  ; preds = %._crit_edge87.i
  %i.bc = add nuw nsw i64 %.07791.i, 1            ; 2 uses
  %exitcond104.not.i = icmp eq i64 %i.bc, %i.ad
  br i1 %exitcond104.not.i, label %._crit_edge92.i, label %.preheader.i, !llvm.loop !1713

.lr.ph86.i:                                       ; preds = %._crit_edge87.i, %.preheader.i
  %.07688.i = phi i64 [ 0, %.preheader.i ], [ %i.bf, %._crit_edge87.i ] ; 2 uses
  %i.bd = add i64 %.07688.i, %i.ba
  %i.be = mul i64 %i.bd, %i.z
  br label %.lr.ph.i

._crit_edge87.i:                                  ; preds = %._crit_edge.i
  %i.bf = add nuw nsw i64 %.07688.i, 1            ; 2 uses
  %exitcond103.not.i = icmp eq i64 %i.bf, %i.ab
  br i1 %exitcond103.not.i, label %._crit_edge90.i, label %.lr.ph86.i, !llvm.loop !1714

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph86.i
  %.07584.i = phi i64 [ 0, %.lr.ph86.i ], [ %i.by, %._crit_edge.i ] ; 3 uses
  %i.bg = add nsw i64 %.07584.i, %i.be            ; 3 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !43 ; 5 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.bg
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !43 ; 5 uses
  %i.bl = mul nsw i64 %i.bg, %i.z                 ; 2 uses
  %i.bm = mul nuw nsw i64 %.07584.i, %i.av
  %i.bn = sub nsw i64 %i.bl, %i.bm
  %i.bo = getelementptr [4 x i8], ptr %i.x, i64 %i.bl ; 5 uses
  %i.bp = getelementptr [4 x i8], ptr %i.x, i64 %i.bn ; 5 uses
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.083.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.de, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.083.i.epil = phi i64 [ %.083.i.epil.init, %.epil.preheader ], [ %i.bx, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.bq = getelementptr [4 x i8], ptr %i.bo, i64 %.083.i.epil ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !43
  %i.bs = fadd float %i.bk, %i.br
  store float %i.bs, ptr %i.bq, align 4, !tbaa !43
  %i.bt = mul nuw nsw i64 %.083.i.epil, %i.z
  %i.bu = getelementptr [4 x i8], ptr %i.bp, i64 %i.bt ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !43
  %i.bw = fadd float %i.bi, %i.bv
  store float %i.bw, ptr %i.bu, align 4, !tbaa !43
  %i.bx = add nuw nsw i64 %.083.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.g, !llvm.loop !1715

._crit_edge.i:                                    ; preds = %bb.g, %._crit_edge.i.unr-lcssa
  %i.by = add nuw nsw i64 %.07584.i, 1            ; 2 uses
  %exitcond102.not.i = icmp eq i64 %i.by, %i.z
  br i1 %exitcond102.not.i, label %._crit_edge87.i, label %.lr.ph.i, !llvm.loop !1716

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %.083.i = phi i64 [ %i.de, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.bz = getelementptr [4 x i8], ptr %i.bo, i64 %.083.i ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !43
  %i.cb = fadd float %i.bk, %i.ca
  store float %i.cb, ptr %i.bz, align 4, !tbaa !43
  %i.cc = mul nuw nsw i64 %.083.i, %i.z
  %i.cd = getelementptr [4 x i8], ptr %i.bp, i64 %i.cc ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !43
  %i.cf = fadd float %i.bi, %i.ce
  store float %i.cf, ptr %i.cd, align 4, !tbaa !43
  %i.cg = or disjoint i64 %.083.i, 1              ; 2 uses
  %i.ch = getelementptr [4 x i8], ptr %i.bo, i64 %i.cg ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !43
  %i.cj = fadd float %i.bk, %i.ci
  store float %i.cj, ptr %i.ch, align 4, !tbaa !43
  %i.ck = mul nuw nsw i64 %i.cg, %i.z
  %i.cl = getelementptr [4 x i8], ptr %i.bp, i64 %i.ck ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !43
  %i.cn = fadd float %i.bi, %i.cm
  store float %i.cn, ptr %i.cl, align 4, !tbaa !43
  %i.co = or disjoint i64 %.083.i, 2              ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.bo, i64 %i.co ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !43
  %i.cr = fadd float %i.bk, %i.cq
  store float %i.cr, ptr %i.cp, align 4, !tbaa !43
  %i.cs = mul nuw nsw i64 %i.co, %i.z
  %i.ct = getelementptr [4 x i8], ptr %i.bp, i64 %i.cs ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !43
  %i.cv = fadd float %i.bi, %i.cu
  store float %i.cv, ptr %i.ct, align 4, !tbaa !43
  %i.cw = or disjoint i64 %.083.i, 3              ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %i.bo, i64 %i.cw ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !43
  %i.cz = fadd float %i.bk, %i.cy
  store float %i.cz, ptr %i.cx, align 4, !tbaa !43
  %i.da = mul nuw nsw i64 %i.cw, %i.z
  %i.db = getelementptr [4 x i8], ptr %i.bp, i64 %i.da ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !43
  %i.dd = fadd float %i.bi, %i.dc
  store float %i.dd, ptr %i.db, align 4, !tbaa !43
  %i.de = add nuw nsw i64 %.083.i, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !1717

_ZL36ggml_compute_forward_add_rel_pos_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge92.i, %bb.f, %.preheader82.lr.ph.i
  ret void

bb.h:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 10406, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_rwkv_wkv6(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31   ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31
  %i.p = sdiv i64 %i.i, %i.k                      ; 48 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 24 uses
  %i.s = mul nsw i64 %i.i, %i.g                   ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s ; 5 uses
  %i.u = load i32, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36
  %i.x = sext i32 %i.u to i64
  %i.y = mul nsw i64 %i.k, %i.x
  %i.z = sext i32 %i.w to i64                     ; 2 uses
  %i.aa = sdiv i64 %i.y, %i.z
  %i.ab = add nsw i32 %i.u, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.k, %i.ac
  %i.ae = sdiv i64 %i.ad, %i.z
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %i.k)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37 ; 18 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 248
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !37 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 248
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !37 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 248
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37 ; 3 uses
  %i.av = mul nsw i64 %i.p, %i.k                  ; 3 uses
  %i.aw = srem i64 %i.i, %i.k
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 10441, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.176) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ay = icmp eq i32 %i.u, 0
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = shl i64 %i.s, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.az, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !57
  tail call void @ggml_barrier(ptr noundef %i.bb)
  %i.bc = sdiv i64 %i.p, 16                       ; 8 uses
  %i.bd = icmp sgt i64 %i.g, 0
  br i1 %i.bd, label %.lr.ph174.i, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph174.i:                                      ; preds = %bb.f
  %i.be = mul nsw i64 %i.p, %i.i                  ; 3 uses
  %i.bf = sdiv i64 %i.g, %i.o                     ; 6 uses
  %i.bg = shl i64 %i.aa, 32                       ; 3 uses
  %i.bh = ashr exact i64 %i.bg, 32                ; 10 uses
  %i.bi = shl i64 %..i, 32
  %i.bj = ashr exact i64 %i.bi, 32                ; 4 uses
  %i.bk = icmp slt i64 %i.bh, %i.bj
  %i.bl = shl nsw i64 %i.bc, 4                    ; 7 uses
  %i.bm = icmp slt i64 %i.bl, %i.p                ; 2 uses
  %i.bn = icmp sgt i64 %i.p, 0
  %or.cond.i = select i1 %i.bk, i1 %i.bn, i1 false
  br i1 %or.cond.i, label %.lr.ph174.split.us.split.us.i, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph174.split.us.split.us.i:                    ; preds = %.lr.ph174.i
  %i.bo = icmp samesign ugt i64 %i.p, 15
  br i1 %i.bo, label %.lr.ph174.split.us.split.us.split.us.i, label %.lr.ph174.split.us.split.us.split.i

.lr.ph174.split.us.split.us.split.us.i:           ; preds = %.lr.ph174.split.us.split.us.i
  br i1 %i.bm, label %.lr.ph174.split.us.split.us.split.us.split.us.i.preheader, label %.lr.ph174.split.us.split.us.split.us.split.i.preheader

.lr.ph174.split.us.split.us.split.us.split.i.preheader: ; preds = %.lr.ph174.split.us.split.us.split.us.i
  %xtraiter165 = and i64 %i.bc, 1
  %i.bp = and i64 %i.p, 9223372036854775792
  %i.bq = icmp eq i64 %i.bp, 16
  %unroll_iter = and i64 %i.bc, 576460752303423486
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  %lcmp.mod167 = trunc i64 %i.bc to i1
  br label %.lr.ph174.split.us.split.us.split.us.split.i

.lr.ph174.split.us.split.us.split.us.split.us.i.preheader: ; preds = %.lr.ph174.split.us.split.us.split.us.i
  %i.br = mul i64 %i.p, %i.p
  %i.bs = ashr exact i64 %i.bg, 30
  %i.bt = add nsw i64 %i.bs, 4
  %i.bu = mul i64 %i.br, %i.bt                    ; 2 uses
  %i.bv = mul i64 %i.p, %i.p                      ; 2 uses
  %i.bw = shl i64 %i.bv, 2
  %i.bx = mul i64 %i.bv, %i.bh
  %i.by = shl i64 %i.bx, 2                        ; 2 uses
  %i.bz = shl i64 %i.bc, 6                        ; 3 uses
  %i.ca = add nsw i64 %i.bh, 1
  %i.cb = mul i64 %i.p, %i.ca
  %i.cc = shl i64 %i.cb, 2
  %i.cd = mul i64 %i.k, %i.p
  %i.ce = shl i64 %i.cd, 2
  %i.cf = shl i64 %i.p, 2                         ; 2 uses
  %i.cg = mul i64 %i.p, %i.bh
  %i.ch = shl i64 %i.cg, 2
  %i.ci = add i64 %i.ch, %i.bz
  %i.cj = shl i64 %i.g, 2
  %i.ck = shl i64 %i.p, 2
  %i.cl = getelementptr i8, ptr %i.r, i64 %i.bu
  %i.cm = getelementptr i8, ptr %i.r, i64 %i.by
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.bz
  %xtraiter169 = and i64 %i.bc, 1
  %i.co = and i64 %i.p, 9223372036854775792
  %i.cp = icmp eq i64 %i.co, 16
  %unroll_iter172 = and i64 %i.bc, 576460752303423486
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  %lcmp.mod171 = trunc i64 %i.bc to i1
  %i.cq = sub nsw i64 %i.p, %i.bl                 ; 2 uses
  %min.iters.check119 = icmp ult i64 %i.cq, 8
  %stride.check124 = icmp slt i64 %i.cf, 0
  %i.cr = and i64 %i.p, 7                         ; 2 uses
  %n.vec142 = sub i64 %i.cq, %i.cr                ; 2 uses
  %i.cs = add i64 %i.bl, %n.vec142
  %cmp.n158 = icmp eq i64 %i.cr, 0
  br label %.lr.ph174.split.us.split.us.split.us.split.us.i

.lr.ph174.split.us.split.us.split.us.split.us.i:  ; preds = %.lr.ph174.split.us.split.us.split.us.split.us.i.preheader, %._crit_edge.split171.us.split.us.us.us.us.us.i
  %.0154172.us.us.us.us.i = phi i64 [ %i.jd, %._crit_edge.split171.us.split.us.us.us.us.us.i ], [ 0, %.lr.ph174.split.us.split.us.split.us.split.us.i.preheader ] ; 5 uses
  %i.ct = mul i64 %i.ce, %.0154172.us.us.us.us.i  ; 2 uses
  %i.cu = add i64 %i.cc, %i.ct
  %i.cv = add i64 %i.ci, %i.ct
  %i.cw = mul i64 %.0154172.us.us.us.us.i, %i.av
  %i.cx = sdiv i64 %.0154172.us.us.us.us.i, %i.bf ; 2 uses
  %i.cy = mul nsw i64 %i.cx, %i.be                ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.cy ; 8 uses
  %i.da = srem i64 %.0154172.us.us.us.us.i, %i.bf
  %.not.us.us.us.us.i = icmp eq i64 %i.da, 0
  br i1 %.not.us.us.us.us.i, label %bb.g, label %.lr.ph.us.us.us.us.i

bb.g:                                             ; preds = %.lr.ph174.split.us.split.us.split.us.split.us.i
  %i.db = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 248
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !37
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.cy
  br label %.lr.ph.us.us.us.us.i

.lr.ph.us.us.us.us.i:                             ; preds = %bb.g, %.lr.ph174.split.us.split.us.split.us.split.us.i
  %i.df = phi ptr [ %i.de, %bb.g ], [ %i.cz, %.lr.ph174.split.us.split.us.split.us.split.us.i ] ; 9 uses
  %i.dg = mul i64 %i.ck, %i.cx
  %i.dh = add i64 %i.cj, %i.dg
  %i.di = mul i64 %i.i, %i.dh                     ; 2 uses
  %i.dj = getelementptr i8, ptr %i.df, i64 %i.bu
  %i.dk = getelementptr i8, ptr %i.df, i64 %i.by
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.bz
  %i.dm = getelementptr i8, ptr %i.cl, i64 %i.di
  %i.dn = getelementptr i8, ptr %i.cn, i64 %i.di
  br label %.lr.ph167.us.us.us.us.us.us.i

.lr.ph167.us.us.us.us.us.us.i:                    ; preds = %._crit_edge168.split.us.us.split.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.i
  %indvar108 = phi i64 [ %indvar.next109, %._crit_edge168.split.us.us.split.us.us.us.us.us.us.i ], [ 0, %.lr.ph.us.us.us.us.i ] ; 3 uses
  %.0153169.us.us.us.us.us.us.i = phi i64 [ %i.jc, %._crit_edge168.split.us.us.split.us.us.us.us.us.us.i ], [ %i.bh, %.lr.ph.us.us.us.us.i ] ; 2 uses
  %i.do = mul i64 %i.bw, %indvar108               ; 4 uses
  %scevgep110 = getelementptr i8, ptr %i.dj, i64 %i.do
  %scevgep111 = getelementptr i8, ptr %i.dl, i64 %i.do
  %i.dp = mul i64 %i.cf, %indvar108               ; 2 uses
  %i.dq = add i64 %i.cu, %i.dp                    ; 2 uses
  %scevgep112 = getelementptr i8, ptr %i.ai, i64 %i.dq
  %i.dr = add i64 %i.cv, %i.dp                    ; 2 uses
  %scevgep113 = getelementptr i8, ptr %i.ai, i64 %i.dr
  %scevgep114 = getelementptr i8, ptr %i.dm, i64 %i.do ; 2 uses
  %scevgep115 = getelementptr i8, ptr %i.dn, i64 %i.do ; 2 uses
  %scevgep116 = getelementptr i8, ptr %i.r, i64 %i.dq ; 2 uses
  %scevgep117 = getelementptr i8, ptr %i.r, i64 %i.dr ; 2 uses
  %i.ds = mul i64 %.0153169.us.us.us.us.us.us.i, %i.p ; 3 uses
  %i.dt = add i64 %i.ds, %i.cw                    ; 8 uses
  %i.du = getelementptr [4 x i8], ptr %i.aq, i64 %i.ds
  %i.dv = insertelement <4 x ptr> poison, ptr %scevgep117, i64 0
  %i.dw = insertelement <4 x ptr> %i.dv, ptr %scevgep111, i64 1
  %i.dx = insertelement <4 x ptr> %i.dw, ptr %scevgep115, i64 2 ; 2 uses
  %i.dy = shufflevector <4 x ptr> %i.dx, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dz = insertelement <4 x ptr> poison, ptr %scevgep112, i64 0
  %i.ea = insertelement <4 x ptr> %i.dz, ptr %scevgep116, i64 1
  %i.eb = insertelement <4 x ptr> %i.ea, ptr %scevgep114, i64 3 ; 2 uses
  %i.ec = shufflevector <4 x ptr> %i.eb, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ed = shufflevector <4 x ptr> %i.dx, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.ee = insertelement <4 x ptr> %i.ed, ptr %scevgep113, i64 0
  %i.ef = shufflevector <4 x ptr> %i.ee, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.eg = shufflevector <4 x ptr> %i.eb, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.eh = insertelement <4 x ptr> %i.eg, ptr %scevgep110, i64 1
  %i.ei = shufflevector <4 x ptr> %i.eh, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %bound0121 = icmp ult ptr %scevgep117, %scevgep114
  %bound1122 = icmp ult ptr %scevgep115, %scevgep116
  %found.conflict123 = and i1 %bound0121, %bound1122
  %i.ej = icmp ult <4 x ptr> %i.dy, %i.ec
  %i.ek = icmp ult <4 x ptr> %i.ef, %i.ei
  %i.el = and <4 x i1> %i.ek, %i.ej
  %i.em = bitcast <4 x i1> %i.el to i4
  %i.en = icmp ne i4 %i.em, 0
  %op.rdx = or i1 %i.en, %found.conflict123
  %op.rdx160 = or i1 %op.rdx, %stride.check124
  br label %.lr.ph.us.us.us.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.us.us.us.i:                 ; preds = %._crit_edge164.us.us.us.us.us.us.us.us.i, %.lr.ph167.us.us.us.us.us.us.i
  %.0152165.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.lr.ph167.us.us.us.us.us.us.i ], [ %i.jb, %._crit_edge164.us.us.us.us.us.us.us.us.i ] ; 4 uses
  %i.eo = add i64 %.0152165.us.us.us.us.us.us.us.us.i, %i.dt ; 3 uses
  %reass.add.us.us.us.us.us.us.us.us.i = add i64 %.0152165.us.us.us.us.us.us.us.us.i, %i.ds
  %reass.mul.us.us.us.us.us.us.us.us.i = mul i64 %reass.add.us.us.us.us.us.us.us.us.i, %i.p ; 7 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !43 ; 5 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.eo
  %i.es = load float, ptr %i.er, align 4, !tbaa !43 ; 5 uses
  %i.et = getelementptr [4 x i8], ptr %i.du, i64 %.0152165.us.us.us.us.us.us.us.us.i
  %i.eu = load float, ptr %i.et, align 4, !tbaa !43 ; 5 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.eo
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !43 ; 5 uses
  %i.ex = insertelement <16 x float> poison, float %i.eq, i64 0
  %i.ey = shufflevector <16 x float> %i.ex, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ez = insertelement <16 x float> poison, float %i.es, i64 0
  %i.fa = shufflevector <16 x float> %i.ez, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.fb = insertelement <16 x float> poison, float %i.eu, i64 0
  %i.fc = shufflevector <16 x float> %i.fb, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.fd = insertelement <16 x float> poison, float %i.ew, i64 0
  %i.fe = shufflevector <16 x float> %i.fd, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.cp, label %.epil.preheader168, label %.lr.ph.us.us.us.us.us.us.us.us.i.new

.lr.ph.us.us.us.us.us.us.us.us.i.new:             ; preds = %.lr.ph.us.us.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.us.us.i.new
  %.0151160.us.us.us.us.us.us.us.us.i = phi i64 [ %i.gi, %.lr.ph.us.us.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us.i ] ; 3 uses
  %niter173 = phi i64 [ %niter173.next.1, %.lr.ph.us.us.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us.i ]
  %i.ff = shl nuw nsw i64 %.0151160.us.us.us.us.us.us.us.us.i, 4 ; 2 uses
  %i.fg = add i64 %i.ff, %i.dt                    ; 2 uses
  %i.fh = add i64 %i.ff, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.fg
  %i.fj = load <16 x float>, ptr %i.fi, align 1, !tbaa !56
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.fh
  %i.fl = load <16 x float>, ptr %i.fk, align 1, !tbaa !56 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.fg ; 2 uses
  %i.fn = load <16 x float>, ptr %i.fm, align 1, !tbaa !56
  %i.fo = fmul <16 x float> %i.ey, %i.fj          ; 2 uses
  %i.fp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fo, <16 x float> %i.fc, <16 x float> %i.fl)
  %i.fq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fp, <16 x float> %i.fa, <16 x float> %i.fn)
  store <16 x float> %i.fq, ptr %i.fm, align 1, !tbaa !56
  %i.fr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fl, <16 x float> %i.fe, <16 x float> %i.fo)
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.fh
  store <16 x float> %i.fr, ptr %i.fs, align 1, !tbaa !56
  %i.ft = shl i64 %.0151160.us.us.us.us.us.us.us.us.i, 4
  %i.fu = or disjoint i64 %i.ft, 16               ; 2 uses
  %i.fv = add i64 %i.fu, %i.dt                    ; 2 uses
  %i.fw = add i64 %i.fu, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.fv
  %i.fy = load <16 x float>, ptr %i.fx, align 1, !tbaa !56
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.fw
  %i.ga = load <16 x float>, ptr %i.fz, align 1, !tbaa !56 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.fv ; 2 uses
  %i.gc = load <16 x float>, ptr %i.gb, align 1, !tbaa !56
  %i.gd = fmul <16 x float> %i.ey, %i.fy          ; 2 uses
  %i.ge = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.gd, <16 x float> %i.fc, <16 x float> %i.ga)
  %i.gf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ge, <16 x float> %i.fa, <16 x float> %i.gc)
  store <16 x float> %i.gf, ptr %i.gb, align 1, !tbaa !56
  %i.gg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ga, <16 x float> %i.fe, <16 x float> %i.gd)
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.fw
  store <16 x float> %i.gg, ptr %i.gh, align 1, !tbaa !56
  %i.gi = add nuw nsw i64 %.0151160.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %niter173.next.1 = add i64 %niter173, 2         ; 2 uses
  %niter173.ncmp.1 = icmp eq i64 %niter173.next.1, %unroll_iter172
  br i1 %niter173.ncmp.1, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.us.us.i.new, !llvm.loop !1718

._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa: ; preds = %.lr.ph.us.us.us.us.us.us.us.us.i.new
  br i1 %lcmp.mod170.not, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader, label %.epil.preheader168

.epil.preheader168:                               ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa, %.lr.ph.us.us.us.us.us.us.us.us.i
  %.0151160.us.us.us.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us.us.us.i ], [ %i.gi, %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.gj = shl nuw nsw i64 %.0151160.us.us.us.us.us.us.us.us.i.epil.init, 4 ; 2 uses
  %i.gk = add i64 %i.gj, %i.dt                    ; 2 uses
  %i.gl = add i64 %i.gj, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.gk
  %i.gn = load <16 x float>, ptr %i.gm, align 1, !tbaa !56
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.gl
  %i.gp = load <16 x float>, ptr %i.go, align 1, !tbaa !56 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.gk ; 2 uses
  %i.gr = load <16 x float>, ptr %i.gq, align 1, !tbaa !56
  %i.gs = fmul <16 x float> %i.ey, %i.gn          ; 2 uses
  %i.gt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.gs, <16 x float> %i.fc, <16 x float> %i.gp)
  %i.gu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.gt, <16 x float> %i.fa, <16 x float> %i.gr)
  store <16 x float> %i.gu, ptr %i.gq, align 1, !tbaa !56
  %i.gv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.gp, <16 x float> %i.fe, <16 x float> %i.gs)
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.gl
  store <16 x float> %i.gv, ptr %i.gw, align 1, !tbaa !56
  br label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader

._crit_edge.us.us.us.us.us.us.us.us.i.preheader:  ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa, %.epil.preheader168
  %brmerge = select i1 %min.iters.check119, i1 true, i1 %op.rdx160
  br i1 %brmerge, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader162, label %vector.ph141

vector.ph141:                                     ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader
  %broadcast.splatinsert143 = insertelement <8 x float> poison, float %i.eq, i64 0
  %broadcast.splat144 = shufflevector <8 x float> %broadcast.splatinsert143, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert145 = insertelement <8 x float> poison, float %i.eu, i64 0
  %broadcast.splat146 = shufflevector <8 x float> %broadcast.splatinsert145, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert147 = insertelement <8 x float> poison, float %i.es, i64 0
  %broadcast.splat148 = shufflevector <8 x float> %broadcast.splatinsert147, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <8 x float> poison, float %i.ew, i64 0
  %broadcast.splat150 = shufflevector <8 x float> %broadcast.splatinsert149, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph141
  %index152 = phi i64 [ 0, %vector.ph141 ], [ %index.next156, %vector.body151 ] ; 2 uses
  %i.gx = add nuw i64 %i.bl, %index152            ; 2 uses
  %i.gy = add i64 %i.gx, %i.dt                    ; 2 uses
  %i.gz = add i64 %i.gx, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.gy
  %wide.load153 = load <8 x float>, ptr %i.ha, align 4, !tbaa !43, !alias.scope !1736
  %i.hb = fmul <8 x float> %broadcast.splat144, %wide.load153 ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.gz
  %wide.load154 = load <8 x float>, ptr %i.hc, align 4, !tbaa !43, !alias.scope !1737 ; 2 uses
  %i.hd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hb, <8 x float> %broadcast.splat146, <8 x float> %wide.load154)
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.gy ; 2 uses
  %wide.load155 = load <8 x float>, ptr %i.he, align 4, !tbaa !43, !alias.scope !1738, !noalias !1739
  %i.hf = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hd, <8 x float> %broadcast.splat148, <8 x float> %wide.load155)
  store <8 x float> %i.hf, ptr %i.he, align 4, !tbaa !43, !alias.scope !1738, !noalias !1739
end_hunk_3
begin_hunk_4_@ggml_compute_forward_rwkv_wkv6:bb.a
  %i.od = add i64 %i.nd, %i.ob                    ; 2 uses
  %scevgep49 = getelementptr i8, ptr %i.ai, i64 %i.od
  %scevgep50 = getelementptr i8, ptr %i.ny, i64 %i.oa ; 2 uses
  %scevgep51 = getelementptr i8, ptr %i.nz, i64 %i.oa ; 2 uses
  %scevgep52 = getelementptr i8, ptr %i.r, i64 %i.oc ; 2 uses
  %scevgep53 = getelementptr i8, ptr %i.r, i64 %i.od ; 2 uses
  %i.oe = mul i64 %.0153169.us178.us.us.i, %i.p   ; 3 uses
  %i.of = add i64 %i.oe, %i.ne                    ; 5 uses
  %i.og = getelementptr [4 x i8], ptr %i.aq, i64 %i.oe
  %i.oh = insertelement <4 x ptr> poison, ptr %scevgep53, i64 0
  %i.oi = insertelement <4 x ptr> %i.oh, ptr %scevgep47, i64 1
  %i.oj = insertelement <4 x ptr> %i.oi, ptr %scevgep51, i64 2 ; 2 uses
  %i.ok = shufflevector <4 x ptr> %i.oj, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ol = insertelement <4 x ptr> poison, ptr %scevgep48, i64 0
  %i.om = insertelement <4 x ptr> %i.ol, ptr %scevgep52, i64 1
  %i.on = insertelement <4 x ptr> %i.om, ptr %scevgep50, i64 3 ; 2 uses
  %i.oo = shufflevector <4 x ptr> %i.on, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.op = shufflevector <4 x ptr> %i.oj, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.oq = insertelement <4 x ptr> %i.op, ptr %scevgep49, i64 0
  %i.or = shufflevector <4 x ptr> %i.oq, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.os = shufflevector <4 x ptr> %i.on, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ot = insertelement <4 x ptr> %i.os, ptr %scevgep, i64 1
  %i.ou = shufflevector <4 x ptr> %i.ot, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %bound0 = icmp ult ptr %scevgep53, %scevgep50
  %bound1 = icmp ult ptr %scevgep51, %scevgep52
  %found.conflict = and i1 %bound0, %bound1
  %i.ov = icmp ult <4 x ptr> %i.ok, %i.oo
  %i.ow = icmp ult <4 x ptr> %i.or, %i.ou
  %i.ox = and <4 x i1> %i.ow, %i.ov
  %i.oy = bitcast <4 x i1> %i.ox to i4
  %i.oz = icmp ne i4 %i.oy, 0
  %op.rdx161 = or i1 %i.oz, %found.conflict
  br label %.lr.ph163.us.us.us.i

.lr.ph163.us.us.us.i:                             ; preds = %._crit_edge164.us.us.us.i, %.lr.ph167.us177.us.us.i
  %.0152165.us.us.us.i = phi i64 [ 0, %.lr.ph167.us177.us.us.i ], [ %i.rm, %._crit_edge164.us.us.us.i ] ; 4 uses
  %i.pa = add i64 %.0152165.us.us.us.i, %i.of     ; 3 uses
  %reass.add.us.us.us.i = add i64 %.0152165.us.us.us.i, %i.oe
  %reass.mul.us.us.us.i = mul i64 %reass.add.us.us.us.i, %i.p ; 4 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.pa
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !43 ; 4 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.pa
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !43 ; 4 uses
  %i.pf = getelementptr [4 x i8], ptr %i.og, i64 %.0152165.us.us.us.i
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !43 ; 4 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.pa
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !43 ; 4 uses
  %brmerge178 = select i1 %min.iters.check, i1 true, i1 %op.rdx161
  br i1 %brmerge178, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph163.us.us.us.i
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.pc, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <8 x float> poison, float %i.pe, i64 0
  %broadcast.splat70 = shufflevector <8 x float> %broadcast.splatinsert69, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <8 x float> poison, float %i.pg, i64 0
  %broadcast.splat72 = shufflevector <8 x float> %broadcast.splatinsert71, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <8 x float> poison, float %i.pi, i64 0
  %broadcast.splat74 = shufflevector <8 x float> %broadcast.splatinsert73, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.pj = add i64 %index, %i.of                   ; 2 uses
  %i.pk = add i64 %index, %reass.mul.us.us.us.i   ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.pj
  %wide.load = load <8 x float>, ptr %i.pl, align 4, !tbaa !43, !alias.scope !1742
  %i.pm = fmul <8 x float> %broadcast.splat, %wide.load ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.pk
  %wide.load75 = load <8 x float>, ptr %i.pn, align 4, !tbaa !43, !alias.scope !1743 ; 2 uses
  %i.po = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.pm, <8 x float> %broadcast.splat72, <8 x float> %wide.load75)
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.pj ; 2 uses
  %wide.load76 = load <8 x float>, ptr %i.pp, align 4, !tbaa !43, !alias.scope !1744, !noalias !1745
  %i.pq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.po, <8 x float> %broadcast.splat70, <8 x float> %wide.load76)
  store <8 x float> %i.pq, ptr %i.pp, align 4, !tbaa !43, !alias.scope !1744, !noalias !1745
  %i.pr = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load75, <8 x float> %broadcast.splat74, <8 x float> %i.pm)
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.pk
  store <8 x float> %i.pr, ptr %i.ps, align 4, !tbaa !43, !alias.scope !1746, !noalias !1747
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pt = icmp eq i64 %index.next, %n.vec
  br i1 %i.pt, label %middle.block, label %vector.body, !llvm.loop !1734

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge164.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph163.us.us.us.i, %middle.block
  %.0161.us.us.us.i.ph = phi i64 [ %n.vec, %middle.block ], [ %i.bl, %.lr.ph163.us.us.us.i ] ; 6 uses
  %i.pu = sub nsw i64 %i.p, %.0161.us.us.us.i.ph
  %.neg = add nsw i64 %.0161.us.us.us.i.ph, 1
  %xtraiter = and i64 %i.pu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.pv = add i64 %.0161.us.us.us.i.ph, %i.of     ; 2 uses
  %i.pw = add i64 %.0161.us.us.us.i.ph, %reass.mul.us.us.us.i ; 2 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.pv
  %i.py = load float, ptr %i.px, align 4, !tbaa !43
  %i.pz = fmul float %i.pc, %i.py                 ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.pw
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !43 ; 2 uses
  %i.qc = tail call float @llvm.fmuladd.f32(float %i.pz, float %i.pg, float %i.qb)
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.pv ; 2 uses
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !43
  %i.qf = tail call float @llvm.fmuladd.f32(float %i.qc, float %i.pe, float %i.qe)
  store float %i.qf, ptr %i.qd, align 4, !tbaa !43
  %i.qg = tail call float @llvm.fmuladd.f32(float %i.qb, float %i.pi, float %i.pz)
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.pw
  store float %i.qg, ptr %i.qh, align 4, !tbaa !43
  %i.qi = add nuw nsw i64 %.0161.us.us.us.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0161.us.us.us.i.unr = phi i64 [ %.0161.us.us.us.i.ph, %scalar.ph.preheader ], [ %i.qi, %scalar.ph.prol ]
  %i.qj = icmp eq i64 %i.p, %.neg
  br i1 %i.qj, label %._crit_edge164.us.us.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0161.us.us.us.i = phi i64 [ %i.rl, %scalar.ph ], [ %.0161.us.us.us.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.qk = add i64 %.0161.us.us.us.i, %i.of        ; 2 uses
  %i.ql = add i64 %.0161.us.us.us.i, %reass.mul.us.us.us.i ; 2 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.qk
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !43
  %i.qo = fmul float %i.pc, %i.qn                 ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.ql
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !43 ; 2 uses
  %i.qr = tail call float @llvm.fmuladd.f32(float %i.qo, float %i.pg, float %i.qq)
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qk ; 2 uses
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !43
  %i.qu = tail call float @llvm.fmuladd.f32(float %i.qr, float %i.pe, float %i.qt)
  store float %i.qu, ptr %i.qs, align 4, !tbaa !43
  %i.qv = tail call float @llvm.fmuladd.f32(float %i.qq, float %i.pi, float %i.qo)
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.ql
  store float %i.qv, ptr %i.qw, align 4, !tbaa !43
  %i.qx = add nuw nsw i64 %.0161.us.us.us.i, 1    ; 2 uses
  %i.qy = add i64 %i.qx, %i.of                    ; 2 uses
  %i.qz = add i64 %i.qx, %reass.mul.us.us.us.i    ; 2 uses
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.qy
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !43
  %i.rc = fmul float %i.pc, %i.rb                 ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.qz
  %i.re = load float, ptr %i.rd, align 4, !tbaa !43 ; 2 uses
  %i.rf = tail call float @llvm.fmuladd.f32(float %i.rc, float %i.pg, float %i.re)
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qy ; 2 uses
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !43
  %i.ri = tail call float @llvm.fmuladd.f32(float %i.rf, float %i.pe, float %i.rh)
  store float %i.ri, ptr %i.rg, align 4, !tbaa !43
  %i.rj = tail call float @llvm.fmuladd.f32(float %i.re, float %i.pi, float %i.rc)
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.qz
  store float %i.rj, ptr %i.rk, align 4, !tbaa !43
  %i.rl = add nuw nsw i64 %.0161.us.us.us.i, 2    ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.rl, %i.p
  br i1 %exitcond.not.i.1, label %._crit_edge164.us.us.us.i, label %scalar.ph, !llvm.loop !1735

._crit_edge164.us.us.us.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.rm = add nuw nsw i64 %.0152165.us.us.us.i, 1 ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.rm, %i.p
  br i1 %exitcond192.not.i, label %._crit_edge168.split.us.us.us.i, label %.lr.ph163.us.us.us.i, !llvm.loop !1726

._crit_edge168.split.us.us.us.i:                  ; preds = %._crit_edge164.us.us.us.i
  %i.rn = add nsw i64 %.0153169.us178.us.us.i, 1  ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.rn, %i.bj
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond193.not.i, label %._crit_edge.split171.us179.us.us.i, label %.lr.ph167.us177.us.us.i, !llvm.loop !1727

._crit_edge.split171.us179.us.us.i:               ; preds = %._crit_edge168.split.us.us.us.i
  %i.ro = add nuw nsw i64 %.0154172.us.us.us184.i, 1 ; 2 uses
  %exitcond194.not.i = icmp eq i64 %i.ro, %i.g
  br i1 %exitcond194.not.i, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph174.split.us.split.us.split.split.us.i, !llvm.loop !1728

_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge.split171.us179.us.us.i, %._crit_edge.split171.us.split.us183.us.us.i, %._crit_edge.split171.us.split.us.us.us.us.us.i, %bb.f, %.lr.ph174.i, %.lr.ph174.split.us.split.us.split.i
  ret void

bb.j:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 10618, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_gla(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31
  %i.p = sdiv i64 %i.i, %i.k                      ; 50 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.r = load float, ptr %i.q, align 4, !tbaa !43 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 24 uses
  %i.u = mul nsw i64 %i.i, %i.g                   ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u ; 5 uses
  %i.w = load i32, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !36
  %i.z = sext i32 %i.w to i64
  %i.aa = mul nsw i64 %i.k, %i.z
  %i.ab = sext i32 %i.y to i64                    ; 2 uses
  %i.ac = sdiv i64 %i.aa, %i.ab
  %i.ad = add nsw i32 %i.w, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.k, %i.ae
  %i.ag = sdiv i64 %i.af, %i.ab
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.k)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 18 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 248
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !37 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 248
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !37 ; 3 uses
  %i.at = srem i64 %i.i, %i.k
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 10653, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.176) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.av = icmp eq i32 %i.w, 0
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aw = shl i64 %i.u, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.t, i8 0, i64 %i.aw, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !57
  tail call void @ggml_barrier(ptr noundef %i.ay)
  %i.az = sdiv i64 %i.p, 16                       ; 8 uses
  %i.ba = icmp sgt i64 %i.g, 0
  br i1 %i.ba, label %.lr.ph167.i, label %_ZL28ggml_compute_forward_gla_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph167.i:                                      ; preds = %bb.f
  %i.bb = mul nsw i64 %i.p, %i.i                  ; 3 uses
  %i.bc = sdiv i64 %i.g, %i.o                     ; 6 uses
  %i.bd = shl i64 %i.ac, 32                       ; 3 uses
  %i.be = ashr exact i64 %i.bd, 32                ; 10 uses
  %i.bf = shl i64 %..i, 32
  %i.bg = ashr exact i64 %i.bf, 32                ; 4 uses
  %i.bh = icmp slt i64 %i.be, %i.bg
  %i.bi = shl nsw i64 %i.az, 4                    ; 7 uses
  %i.bj = icmp slt i64 %i.bi, %i.p                ; 2 uses
  %i.bk = icmp sgt i64 %i.p, 0
  %or.cond.i = select i1 %i.bh, i1 %i.bk, i1 false
  br i1 %or.cond.i, label %.lr.ph167.split.us.split.us.i, label %_ZL28ggml_compute_forward_gla_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph167.split.us.split.us.i:                    ; preds = %.lr.ph167.i
  %i.bl = icmp samesign ugt i64 %i.p, 15
  br i1 %i.bl, label %.lr.ph167.split.us.split.us.split.us.i, label %.lr.ph167.split.us.split.us.split.i

.lr.ph167.split.us.split.us.split.us.i:           ; preds = %.lr.ph167.split.us.split.us.i
  br i1 %i.bj, label %.lr.ph167.split.us.split.us.split.us.split.us.i.preheader, label %.lr.ph167.split.us.split.us.split.us.split.i.preheader

.lr.ph167.split.us.split.us.split.us.split.i.preheader: ; preds = %.lr.ph167.split.us.split.us.split.us.i
  %xtraiter161 = and i64 %i.az, 1
  %i.bm = and i64 %i.p, 9223372036854775792
  %i.bn = icmp eq i64 %i.bm, 16
  %unroll_iter = and i64 %i.az, 576460752303423486
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  %lcmp.mod163 = trunc i64 %i.az to i1
  br label %.lr.ph167.split.us.split.us.split.us.split.i

.lr.ph167.split.us.split.us.split.us.split.us.i.preheader: ; preds = %.lr.ph167.split.us.split.us.split.us.i
  %i.bo = mul i64 %i.p, %i.p
  %i.bp = ashr exact i64 %i.bd, 30
  %i.bq = add nsw i64 %i.bp, 4
  %i.br = mul i64 %i.bo, %i.bq                    ; 2 uses
  %i.bs = mul i64 %i.p, %i.p                      ; 2 uses
  %i.bt = shl i64 %i.bs, 2
  %i.bu = mul i64 %i.bs, %i.be
  %i.bv = shl i64 %i.bu, 2                        ; 2 uses
  %i.bw = shl i64 %i.az, 6                        ; 3 uses
  %i.bx = add nsw i64 %i.be, 1
  %i.by = mul i64 %i.p, %i.bx
  %i.bz = shl i64 %i.by, 2
  %i.ca = mul i64 %i.k, %i.p
  %i.cb = shl i64 %i.ca, 2
  %i.cc = shl i64 %i.p, 2                         ; 2 uses
  %i.cd = mul i64 %i.p, %i.be
  %i.ce = shl i64 %i.cd, 2
  %i.cf = add i64 %i.ce, %i.bw
  %i.cg = shl i64 %i.g, 2
  %i.ch = shl i64 %i.p, 2
  %i.ci = getelementptr i8, ptr %i.t, i64 %i.br
  %i.cj = getelementptr i8, ptr %i.t, i64 %i.bv
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.bw
  %xtraiter165 = and i64 %i.az, 1
  %i.cl = and i64 %i.p, 9223372036854775792
  %i.cm = icmp eq i64 %i.cl, 16
  %unroll_iter168 = and i64 %i.az, 576460752303423486
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  %lcmp.mod167 = trunc i64 %i.az to i1
  %i.cn = sub nsw i64 %i.p, %i.bi                 ; 2 uses
  %min.iters.check117 = icmp ult i64 %i.cn, 16
  %stride.check122 = icmp slt i64 %i.cc, 0
  %i.co = and i64 %i.p, 7                         ; 2 uses
  %n.vec140 = sub i64 %i.cn, %i.co                ; 2 uses
  %i.cp = add i64 %i.bi, %n.vec140
  %cmp.n154 = icmp eq i64 %i.co, 0
  br label %.lr.ph167.split.us.split.us.split.us.split.us.i

.lr.ph167.split.us.split.us.split.us.split.us.i:  ; preds = %.lr.ph167.split.us.split.us.split.us.split.us.i.preheader, %._crit_edge.split164.us.split.us.us.us.us.us.i
  %.0145165.us.us.us.us.i = phi i64 [ %i.io, %._crit_edge.split164.us.split.us.us.us.us.us.i ], [ 0, %.lr.ph167.split.us.split.us.split.us.split.us.i.preheader ] ; 5 uses
  %i.cq = mul i64 %i.cb, %.0145165.us.us.us.us.i  ; 2 uses
  %i.cr = add i64 %i.bz, %i.cq
  %i.cs = add i64 %i.cf, %i.cq
  %i.ct = mul i64 %.0145165.us.us.us.us.i, %i.k
  %i.cu = sdiv i64 %.0145165.us.us.us.us.i, %i.bc ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %i.bb                ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cv ; 8 uses
  %i.cx = srem i64 %.0145165.us.us.us.us.i, %i.bc
  %.not.us.us.us.us.i = icmp eq i64 %i.cx, 0
  br i1 %.not.us.us.us.us.i, label %bb.g, label %.lr.ph.us.us.us.us.i

bb.g:                                             ; preds = %.lr.ph167.split.us.split.us.split.us.split.us.i
  %i.cy = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 248
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !37
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cv
  br label %.lr.ph.us.us.us.us.i

.lr.ph.us.us.us.us.i:                             ; preds = %bb.g, %.lr.ph167.split.us.split.us.split.us.split.us.i
  %i.dc = phi ptr [ %i.db, %bb.g ], [ %i.cw, %.lr.ph167.split.us.split.us.split.us.split.us.i ] ; 9 uses
  %i.dd = mul i64 %i.ch, %i.cu
  %i.de = add i64 %i.cg, %i.dd
  %i.df = mul i64 %i.i, %i.de                     ; 2 uses
  %i.dg = getelementptr i8, ptr %i.dc, i64 %i.br
  %i.dh = getelementptr i8, ptr %i.dc, i64 %i.bv
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.bw
  %i.dj = getelementptr i8, ptr %i.ci, i64 %i.df
  %i.dk = getelementptr i8, ptr %i.ck, i64 %i.df
  br label %.lr.ph160.us.us.us.us.us.us.i

.lr.ph160.us.us.us.us.us.us.i:                    ; preds = %._crit_edge161.split.us.us.split.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.i
  %indvar106 = phi i64 [ %indvar.next107, %._crit_edge161.split.us.us.split.us.us.us.us.us.us.i ], [ 0, %.lr.ph.us.us.us.us.i ] ; 3 uses
  %.0144162.us.us.us.us.us.us.i = phi i64 [ %i.in, %._crit_edge161.split.us.us.split.us.us.us.us.us.us.i ], [ %i.be, %.lr.ph.us.us.us.us.i ] ; 3 uses
  %i.dl = mul i64 %i.bt, %indvar106               ; 4 uses
  %scevgep108 = getelementptr i8, ptr %i.dg, i64 %i.dl
  %scevgep109 = getelementptr i8, ptr %i.di, i64 %i.dl
  %i.dm = mul i64 %i.cc, %indvar106               ; 2 uses
  %i.dn = add i64 %i.cr, %i.dm                    ; 2 uses
  %scevgep110 = getelementptr i8, ptr %i.ak, i64 %i.dn
  %i.do = add i64 %i.cs, %i.dm                    ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.ak, i64 %i.do
  %scevgep112 = getelementptr i8, ptr %i.dj, i64 %i.dl ; 2 uses
  %scevgep113 = getelementptr i8, ptr %i.dk, i64 %i.dl ; 2 uses
  %scevgep114 = getelementptr i8, ptr %i.t, i64 %i.dn ; 2 uses
  %scevgep115 = getelementptr i8, ptr %i.t, i64 %i.do ; 2 uses
  %reass.add.us.us.us.us.us.us.i = add i64 %.0144162.us.us.us.us.us.us.i, %i.ct
  %reass.mul.us.us.us.us.us.us.i = mul i64 %reass.add.us.us.us.us.us.us.i, %i.p ; 8 uses
  %i.dp = mul i64 %.0144162.us.us.us.us.us.us.i, %i.p
  %i.dq = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.dr = insertelement <4 x ptr> %i.dq, ptr %scevgep109, i64 1
  %i.ds = insertelement <4 x ptr> %i.dr, ptr %scevgep113, i64 2 ; 2 uses
  %i.dt = shufflevector <4 x ptr> %i.ds, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.du = insertelement <4 x ptr> poison, ptr %scevgep110, i64 0
  %i.dv = insertelement <4 x ptr> %i.du, ptr %scevgep114, i64 1
  %i.dw = insertelement <4 x ptr> %i.dv, ptr %scevgep112, i64 3 ; 2 uses
  %i.dx = shufflevector <4 x ptr> %i.dw, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.dy = shufflevector <4 x ptr> %i.ds, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %scevgep111, i64 0
  %i.ea = shufflevector <4 x ptr> %i.dz, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.eb = shufflevector <4 x ptr> %i.dw, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ec = insertelement <4 x ptr> %i.eb, ptr %scevgep108, i64 1
  %i.ed = shufflevector <4 x ptr> %i.ec, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %bound0119 = icmp ult ptr %scevgep115, %scevgep112
  %bound1120 = icmp ult ptr %scevgep113, %scevgep114
  %found.conflict121 = and i1 %bound0119, %bound1120
  %i.ee = icmp ult <4 x ptr> %i.dt, %i.dx
  %i.ef = icmp ult <4 x ptr> %i.ea, %i.ed
  %i.eg = and <4 x i1> %i.ef, %i.ee
  %i.eh = bitcast <4 x i1> %i.eg to i4
  %i.ei = icmp ne i4 %i.eh, 0
  %op.rdx = or i1 %i.ei, %found.conflict121
  %op.rdx156 = or i1 %op.rdx, %stride.check122
  br label %.lr.ph.us.us.us.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.us.us.us.i:                 ; preds = %._crit_edge157.us.us.us.us.us.us.us.us.i, %.lr.ph160.us.us.us.us.us.us.i
  %.0143158.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.lr.ph160.us.us.us.us.us.us.i ], [ %i.im, %._crit_edge157.us.us.us.us.us.us.us.us.i ] ; 3 uses
  %i.ej = add i64 %.0143158.us.us.us.us.us.us.us.us.i, %reass.mul.us.us.us.us.us.us.i ; 3 uses
  %reass.add151.us.us.us.us.us.us.us.us.i = add i64 %.0143158.us.us.us.us.us.us.us.us.i, %i.dp
  %reass.mul152.us.us.us.us.us.us.us.us.i = mul i64 %reass.add151.us.us.us.us.us.us.us.us.i, %i.p ; 7 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !43 ; 5 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ej
  %i.en = load float, ptr %i.em, align 4, !tbaa !43
  %i.eo = fmul float %i.r, %i.en                  ; 5 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ej
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !43 ; 5 uses
  %i.er = insertelement <16 x float> poison, float %i.el, i64 0
  %i.es = shufflevector <16 x float> %i.er, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.et = insertelement <16 x float> poison, float %i.eo, i64 0
  %i.eu = shufflevector <16 x float> %i.et, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ev = insertelement <16 x float> poison, float %i.eq, i64 0
  %i.ew = shufflevector <16 x float> %i.ev, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.cm, label %.epil.preheader164, label %.lr.ph.us.us.us.us.us.us.us.us.i.new

.lr.ph.us.us.us.us.us.us.us.us.i.new:             ; preds = %.lr.ph.us.us.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.us.us.i.new
  %.0142153.us.us.us.us.us.us.us.us.i = phi i64 [ %i.fy, %.lr.ph.us.us.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us.i ] ; 3 uses
  %niter169 = phi i64 [ %niter169.next.1, %.lr.ph.us.us.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us.i ]
  %i.ex = shl nuw nsw i64 %.0142153.us.us.us.us.us.us.us.us.i, 4 ; 2 uses
  %i.ey = add i64 %i.ex, %reass.mul.us.us.us.us.us.us.i ; 2 uses
  %i.ez = add i64 %i.ex, %reass.mul152.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ey
  %i.fb = load <16 x float>, ptr %i.fa, align 1, !tbaa !56
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ez
  %i.fd = load <16 x float>, ptr %i.fc, align 1, !tbaa !56
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ey ; 2 uses
  %i.ff = load <16 x float>, ptr %i.fe, align 1, !tbaa !56
  %i.fg = fmul <16 x float> %i.es, %i.fb
  %i.fh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fd, <16 x float> %i.ew, <16 x float> %i.fg) ; 2 uses
  %i.fi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fh, <16 x float> %i.eu, <16 x float> %i.ff)
  store <16 x float> %i.fi, ptr %i.fe, align 1, !tbaa !56
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.ez
  store <16 x float> %i.fh, ptr %i.fj, align 1, !tbaa !56
  %i.fk = shl i64 %.0142153.us.us.us.us.us.us.us.us.i, 4
  %i.fl = or disjoint i64 %i.fk, 16               ; 2 uses
  %i.fm = add i64 %i.fl, %reass.mul.us.us.us.us.us.us.i ; 2 uses
  %i.fn = add i64 %i.fl, %reass.mul152.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.fm
  %i.fp = load <16 x float>, ptr %i.fo, align 1, !tbaa !56
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fn
  %i.fr = load <16 x float>, ptr %i.fq, align 1, !tbaa !56
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.fm ; 2 uses
  %i.ft = load <16 x float>, ptr %i.fs, align 1, !tbaa !56
  %i.fu = fmul <16 x float> %i.es, %i.fp
  %i.fv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fr, <16 x float> %i.ew, <16 x float> %i.fu) ; 2 uses
  %i.fw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fv, <16 x float> %i.eu, <16 x float> %i.ft)
  store <16 x float> %i.fw, ptr %i.fs, align 1, !tbaa !56
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.fn
  store <16 x float> %i.fv, ptr %i.fx, align 1, !tbaa !56
  %i.fy = add nuw nsw i64 %.0142153.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %niter169.next.1 = add i64 %niter169, 2         ; 2 uses
  %niter169.ncmp.1 = icmp eq i64 %niter169.next.1, %unroll_iter168
  br i1 %niter169.ncmp.1, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.us.us.i.new, !llvm.loop !1748

._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa: ; preds = %.lr.ph.us.us.us.us.us.us.us.us.i.new
  br i1 %lcmp.mod166.not, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader, label %.epil.preheader164

.epil.preheader164:                               ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa, %.lr.ph.us.us.us.us.us.us.us.us.i
  %.0142153.us.us.us.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us.us.us.i ], [ %i.fy, %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.fz = shl nuw nsw i64 %.0142153.us.us.us.us.us.us.us.us.i.epil.init, 4 ; 2 uses
  %i.ga = add i64 %i.fz, %reass.mul.us.us.us.us.us.us.i ; 2 uses
  %i.gb = add i64 %i.fz, %reass.mul152.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ga
  %i.gd = load <16 x float>, ptr %i.gc, align 1, !tbaa !56
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.gb
  %i.gf = load <16 x float>, ptr %i.ge, align 1, !tbaa !56
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ga ; 2 uses
  %i.gh = load <16 x float>, ptr %i.gg, align 1, !tbaa !56
  %i.gi = fmul <16 x float> %i.es, %i.gd
  %i.gj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.gf, <16 x float> %i.ew, <16 x float> %i.gi) ; 2 uses
  %i.gk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.gj, <16 x float> %i.eu, <16 x float> %i.gh)
  store <16 x float> %i.gk, ptr %i.gg, align 1, !tbaa !56
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.gb
  store <16 x float> %i.gj, ptr %i.gl, align 1, !tbaa !56
  br label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader

._crit_edge.us.us.us.us.us.us.us.us.i.preheader:  ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader.unr-lcssa, %.epil.preheader164
  %brmerge = select i1 %min.iters.check117, i1 true, i1 %op.rdx156
  br i1 %brmerge, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader158, label %vector.ph139

vector.ph139:                                     ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.preheader
  %broadcast.splatinsert141 = insertelement <8 x float> poison, float %i.el, i64 0
  %broadcast.splat142 = shufflevector <8 x float> %broadcast.splatinsert141, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert143 = insertelement <8 x float> poison, float %i.eq, i64 0
  %broadcast.splat144 = shufflevector <8 x float> %broadcast.splatinsert143, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert145 = insertelement <8 x float> poison, float %i.eo, i64 0
  %broadcast.splat146 = shufflevector <8 x float> %broadcast.splatinsert145, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph139
  %index148 = phi i64 [ 0, %vector.ph139 ], [ %index.next152, %vector.body147 ] ; 2 uses
  %i.gm = add nuw i64 %i.bi, %index148            ; 2 uses
  %i.gn = add i64 %i.gm, %reass.mul.us.us.us.us.us.us.i ; 2 uses
  %i.go = add i64 %i.gm, %reass.mul152.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.gn
  %wide.load149 = load <8 x float>, ptr %i.gp, align 4, !tbaa !43, !alias.scope !1766
  %i.gq = fmul <8 x float> %broadcast.splat142, %wide.load149
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.go
  %wide.load150 = load <8 x float>, ptr %i.gr, align 4, !tbaa !43, !alias.scope !1767
  %i.gs = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load150, <8 x float> %broadcast.splat144, <8 x float> %i.gq) ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.gn ; 2 uses
  %wide.load151 = load <8 x float>, ptr %i.gt, align 4, !tbaa !43, !alias.scope !1768, !noalias !1769
  %i.gu = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gs, <8 x float> %broadcast.splat146, <8 x float> %wide.load151)
  store <8 x float> %i.gu, ptr %i.gt, align 4, !tbaa !43, !alias.scope !1768, !noalias !1769
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.go
  store <8 x float> %i.gs, ptr %i.gv, align 4, !tbaa !43, !alias.scope !1770, !noalias !1771
  %index.next152 = add nuw i64 %index148, 8       ; 2 uses
  %i.gw = icmp eq i64 %index.next152, %n.vec140
  br i1 %i.gw, label %middle.block153, label %vector.body147, !llvm.loop !1754

middle.block153:                                  ; preds = %vector.body147
  br i1 %cmp.n154, label %._crit_edge157.us.us.us.us.us.us.us.us.i, label %._crit_edge.us.us.us.us.us.us.us.us.i.preheader158
end_hunk_4
