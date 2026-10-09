Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fast_norm?download=true
inline.NumInlined: 417
inline.NumDeleted: 174
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13fastNormGroupERKNS0_3MatES8_S8_RS6_fmE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.bm = sext i32 %i.bg to i64
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !222, !nonnull !62, !align !63
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.bp = mul i64 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bp
  %i.br = load ptr, ptr %i.al, align 8, !tbaa !223, !nonnull !62, !align !63
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !16
  %i.bt = load ptr, ptr %i.am, align 8, !tbaa !224, !nonnull !62, !align !64
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !34 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.split.us.i.i.i, label %._crit_edge.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.bw = load ptr, ptr %i.an, align 8, !tbaa !225, !nonnull !62, !align !63
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !16
  %i.by = load ptr, ptr %i.ao, align 8, !tbaa !226, !nonnull !62, !align !64
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !34 ; 4 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.split.us.split.us.i.i.i, label %._crit_edge.i.i.i

.lr.ph.split.us.split.us.i.i.i:                   ; preds = %.lr.ph.split.us.i.i.i
  %i.cb = load ptr, ptr %i.ap, align 8, !tbaa !227, !nonnull !62, !align !63
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !16 ; 3 uses
  %wide.trip.count225.i.i.i = zext nneg i32 %i.bu to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.bz to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.cd = icmp eq i32 %i.bz, 1
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod65 = trunc i32 %i.bz to i1
  br label %.lr.ph156.us.us.i.i.i

.lr.ph156.us.us.i.i.i:                            ; preds = %._crit_edge157.split.us.us.us.i.i.i, %.lr.ph.split.us.split.us.i.i.i
  %.0114165.us.us.i.i.i = phi i32 [ %i.bj, %.lr.ph.split.us.split.us.i.i.i ], [ %i.da, %._crit_edge157.split.us.us.us.i.i.i ] ; 3 uses
  %.0115164.us.us.i.i.i = phi double [ 0.000000e+00, %.lr.ph.split.us.split.us.i.i.i ], [ %.lcssa, %._crit_edge157.split.us.us.us.i.i.i ]
  %.0116163.us.us.i.i.i = phi double [ 0.000000e+00, %.lr.ph.split.us.split.us.i.i.i ], [ %.lcssa62, %._crit_edge157.split.us.us.us.i.i.i ]
  %i.ce = sdiv i32 %.0114165.us.us.i.i.i, %i.bf
  %i.cf = srem i32 %.0114165.us.us.i.i.i, %i.bf
  %i.cg = sext i32 %i.ce to i64
  %i.ch = mul i64 %i.bs, %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ch
  %i.cj = sext i32 %i.cf to i64
  %invariant.gep160.us.us.i.i.i = getelementptr [4 x i8], ptr %i.ci, i64 %i.cj
  br label %.lr.ph.us.us.us.i.i.i

.lr.ph.us.us.us.i.i.i:                            ; preds = %._crit_edge.us.us.us.i.i.i, %.lr.ph156.us.us.i.i.i
  %indvars.iv222.i.i.i = phi i64 [ %indvars.iv.next223.i.i.i, %._crit_edge.us.us.us.i.i.i ], [ 0, %.lr.ph156.us.us.i.i.i ] ; 2 uses
  %.1153.us.us.us.i.i.i = phi double [ %.lcssa, %._crit_edge.us.us.us.i.i.i ], [ %.0115164.us.us.i.i.i, %.lr.ph156.us.us.i.i.i ] ; 2 uses
  %.1117152.us.us.us.i.i.i = phi double [ %.lcssa62, %._crit_edge.us.us.us.i.i.i ], [ %.0116163.us.us.i.i.i, %.lr.ph156.us.us.i.i.i ] ; 2 uses
  %i.ck = mul i64 %indvars.iv222.i.i.i, %i.bx
  %gep161.us.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep160.us.us.i.i.i, i64 %i.ck ; 3 uses
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph.us.us.us.i.i.i.new

.lr.ph.us.us.us.i.i.i.new:                        ; preds = %.lr.ph.us.us.us.i.i.i, %.lr.ph.us.us.us.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.us.us.us.i.i.i.new ], [ 0, %.lr.ph.us.us.us.i.i.i ] ; 3 uses
  %.2149.us.us.us.i.i.i = phi double [ %i.cu, %.lr.ph.us.us.us.i.i.i.new ], [ %.1153.us.us.us.i.i.i, %.lr.ph.us.us.us.i.i.i ]
  %.2118148.us.us.us.i.i.i = phi double [ %i.ct, %.lr.ph.us.us.us.i.i.i.new ], [ %.1117152.us.us.us.i.i.i, %.lr.ph.us.us.us.i.i.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.i.i.i.new ], [ 0, %.lr.ph.us.us.us.i.i.i ]
  %i.cl = mul i64 %indvars.iv.i.i.i, %i.cc
  %gep.us.us.us.i.i.i = getelementptr [4 x i8], ptr %gep161.us.us.us.i.i.i, i64 %i.cl
  %i.cm = load float, ptr %gep.us.us.us.i.i.i, align 4, !tbaa !9
  %i.cn = fpext float %i.cm to double             ; 3 uses
  %i.co = fadd double %.2118148.us.us.us.i.i.i, %i.cn
  %i.cp = call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %.2149.us.us.us.i.i.i)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1
  %i.cq = mul i64 %indvars.iv.next.i.i.i, %i.cc
  %gep.us.us.us.i.i.i.1 = getelementptr [4 x i8], ptr %gep161.us.us.us.i.i.i, i64 %i.cq
  %i.cr = load float, ptr %gep.us.us.us.i.i.i.1, align 4, !tbaa !9
  %i.cs = fpext float %i.cr to double             ; 3 uses
  %i.ct = fadd double %i.co, %i.cs                ; 3 uses
  %i.cu = call double @llvm.fmuladd.f64(double %i.cs, double %i.cs, double %i.cp) ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.i.i.i.unr-lcssa, label %.lr.ph.us.us.us.i.i.i.new, !llvm.loop !195

._crit_edge.us.us.us.i.i.i.unr-lcssa:             ; preds = %.lr.ph.us.us.us.i.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.i.i.i.unr-lcssa, %.lr.ph.us.us.us.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.us.us.us.i.i.i.unr-lcssa ]
  %.2149.us.us.us.i.i.i.epil.init = phi double [ %.1153.us.us.us.i.i.i, %.lr.ph.us.us.us.i.i.i ], [ %i.cu, %._crit_edge.us.us.us.i.i.i.unr-lcssa ]
  %.2118148.us.us.us.i.i.i.epil.init = phi double [ %.1117152.us.us.us.i.i.i, %.lr.ph.us.us.us.i.i.i ], [ %i.ct, %._crit_edge.us.us.us.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod65)
  %i.cv = mul i64 %indvars.iv.i.i.i.epil.init, %i.cc
  %gep.us.us.us.i.i.i.epil = getelementptr [4 x i8], ptr %gep161.us.us.us.i.i.i, i64 %i.cv
  %i.cw = load float, ptr %gep.us.us.us.i.i.i.epil, align 4, !tbaa !9
  %i.cx = fpext float %i.cw to double             ; 3 uses
  %i.cy = fadd double %.2118148.us.us.us.i.i.i.epil.init, %i.cx
  %i.cz = call double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double %.2149.us.us.us.i.i.i.epil.init)
  br label %._crit_edge.us.us.us.i.i.i

._crit_edge.us.us.us.i.i.i:                       ; preds = %._crit_edge.us.us.us.i.i.i.unr-lcssa, %.epil.preheader
  %.lcssa62 = phi double [ %i.ct, %._crit_edge.us.us.us.i.i.i.unr-lcssa ], [ %i.cy, %.epil.preheader ] ; 3 uses
  %.lcssa = phi double [ %i.cu, %._crit_edge.us.us.us.i.i.i.unr-lcssa ], [ %i.cz, %.epil.preheader ] ; 3 uses
  %indvars.iv.next223.i.i.i = add nuw nsw i64 %indvars.iv222.i.i.i, 1 ; 2 uses
  %exitcond226.not.i.i.i = icmp eq i64 %indvars.iv.next223.i.i.i, %wide.trip.count225.i.i.i
  br i1 %exitcond226.not.i.i.i, label %._crit_edge157.split.us.us.us.i.i.i, label %.lr.ph.us.us.us.i.i.i, !llvm.loop !196

._crit_edge157.split.us.us.us.i.i.i:              ; preds = %._crit_edge.us.us.us.i.i.i
  %i.da = add nsw i32 %.0114165.us.us.i.i.i, 1    ; 2 uses
  %i.db = icmp slt i32 %i.da, %i.bk
  br i1 %i.db, label %.lr.ph156.us.us.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !197

._crit_edge.i.i.i:                                ; preds = %._crit_edge157.split.us.us.us.i.i.i, %.lr.ph.split.us.i.i.i, %.lr.ph.i.i.i, %bb.d
  %.0116.lcssa.i.i.i = phi double [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %.lr.ph.split.us.i.i.i ], [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.lcssa62, %._crit_edge157.split.us.us.us.i.i.i ]
  %.0115.lcssa.i.i.i = phi double [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %.lr.ph.split.us.i.i.i ], [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.lcssa, %._crit_edge157.split.us.us.us.i.i.i ]
  %i.dc = fmul double %i.as, %.0116.lcssa.i.i.i
  %i.dd = fptrunc double %i.dc to float           ; 3 uses
  %i.de = fpext float %i.dd to double             ; 2 uses
  %i.df = fneg double %i.de
  %i.dg = fmul double %i.de, %i.df
  %i.dh = call double @llvm.fmuladd.f64(double %.0115.lcssa.i.i.i, double %i.as, double %i.dg) ; 2 uses
  %i.di = fptrunc double %i.dh to float
  %i.dj = fcmp ogt double %i.dh, f0x3690000000000000
  %.sroa.speculated146.i.i.i = select i1 %i.dj, float %i.di, float 0.000000e+00
  %i.dk = load float, ptr %i.au, align 4, !tbaa !9
  %i.dl = fadd float %i.dk, %.sroa.speculated146.i.i.i
  %i.dm = call noundef float @sqrtf(float noundef %i.dl) #17
  %i.dn = fdiv float 1.000000e+00, %i.dm          ; 2 uses
  %i.do = load i32, ptr %i.v, align 4, !tbaa !34  ; 12 uses
  %i.dp = sdiv i32 %i.bj, %i.do                   ; 3 uses
  %.recomposed72 = srem i32 %i.bj, %i.do
  %i.dq = add nsw i32 %i.bk, -1
  %i.dr = sdiv i32 %i.dq, %i.do                   ; 2 uses
  %.not210.i.i.i = icmp sgt i32 %i.dp, %i.dr
  br i1 %.not210.i.i.i, label %._crit_edge214.i.i.i, label %.lr.ph213.i.i.i

.lr.ph213.i.i.i:                                  ; preds = %._crit_edge.i.i.i
  %i.ds = load ptr, ptr %i.av, align 8, !tbaa !228, !nonnull !62, !align !64
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !34
  %i.du = sext i32 %i.bg to i64                   ; 4 uses
  %i.dv = load ptr, ptr %i.ak, align 8, !tbaa !222, !nonnull !62, !align !63
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !16 ; 2 uses
  %i.dx = mul i64 %i.dw, %i.du
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dx
  %i.dz = load ptr, ptr %i.al, align 8, !tbaa !223, !nonnull !62, !align !63
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !16 ; 3 uses
  %i.eb = load ptr, ptr %i.ay, align 8, !tbaa !229, !nonnull !62, !align !63
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !16 ; 2 uses
  %i.ed = mul i64 %i.ec, %i.du
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ed ; 2 uses
  %i.ef = load ptr, ptr %i.az, align 8, !tbaa !230, !nonnull !62, !align !63
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !16 ; 4 uses
  %i.eh = mul i32 %i.dp, %i.do
  %i.ei = sext i32 %i.do to i64                   ; 5 uses
  %i.ej = sub i32 %indvars.iv256.i.i.i, %i.bh
  %i.ek = mul i32 %i.ej, %i.bi
  %i.el = sub i32 %i.ek, %i.eh
  %i.em = sext i32 %i.dp to i64                   ; 4 uses
  %i.en = sext i32 %i.dt to i64
  %i.eo = add i32 %i.dr, 1
  %i.ep = shl i64 %i.eg, 2
  %i.eq = mul i64 %i.ep, %i.em
  %i.er = shl i64 %i.ec, 2
  %i.es = mul i64 %i.er, %i.du
  %i.et = shl i64 %i.eg, 2
  %i.eu = shl i64 %i.ea, 2
  %i.ev = mul i64 %i.eu, %i.em
  %i.ew = shl i64 %i.dw, 2
  %i.ex = mul i64 %i.ew, %i.du
  %i.ey = shl i64 %i.ea, 2
  %i.ez = shl nsw i64 %i.ei, 2
  %i.fa = mul i64 %i.ez, %i.em                    ; 3 uses
  %i.fb = mul nsw i64 %i.ei, -4
  %i.fc = sub i64 %i.fa, %i.x
  %i.fd = shl nsw i64 %i.ei, 2
  %i.fe = sub i64 %i.bd, %i.fa
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.dn, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <4 x float> poison, float %i.dd, i64 0
  %broadcast.splat53 = shufflevector <4 x float> %broadcast.splatinsert52, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ff = getelementptr i8, ptr %i.i, i64 %i.eq
  %i.fg = getelementptr i8, ptr %i.ff, i64 %i.es
  %i.fh = getelementptr i8, ptr %i.e, i64 %i.ev
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.ex
  br label %bb.e

._crit_edge214.i.i.i:                             ; preds = %._crit_edge208.split.i.i.i, %._crit_edge.i.i.i
  %exitcond267.not.i.i.i = icmp eq i32 %indvars.iv256.i.i.i, %i.ac
  br i1 %exitcond267.not.i.i.i, label %._crit_edge217.i.i.i, label %bb.d, !llvm.loop !198

bb.e:                                             ; preds = %._crit_edge208.split.i.i.i, %.lr.ph213.i.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge208.split.i.i.i ], [ 0, %.lr.ph213.i.i.i ] ; 5 uses
  %indvars.iv263.i.i.i = phi i64 [ %indvars.iv.next264.i.i.i, %._crit_edge208.split.i.i.i ], [ %i.em, %.lr.ph213.i.i.i ] ; 5 uses
  %indvars.iv258.i.i.i = phi i32 [ %indvars.iv.next259.i.i.i, %._crit_edge208.split.i.i.i ], [ %i.el, %.lr.ph213.i.i.i ] ; 2 uses
  %indvars.iv227.i.i.i = phi i32 [ %indvars.iv.next228.i.i.i, %._crit_edge208.split.i.i.i ], [ %.recomposed72, %.lr.ph213.i.i.i ] ; 3 uses
  %i.fj = mul i64 %i.fb, %indvar                  ; 2 uses
  %i.fk = mul i64 %i.fd, %indvar
  %i.fl = add i64 %i.fc, %i.fk
  %i.fm = add i64 %i.fe, %i.fj                    ; 2 uses
  %i.fn = mul i64 %i.et, %indvar
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv227.i.i.i, i32 0)
  %i.fo = zext nneg i32 %smax to i64
  %i.fp = shl nuw nsw i64 %i.fo, 2                ; 2 uses
  %i.fq = mul i64 %i.ey, %indvar
  %i.fr = call i32 @llvm.smin.i32(i32 %i.do, i32 %indvars.iv258.i.i.i)
  %smax242.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv227.i.i.i, i32 0)
  %i.fs = zext nneg i32 %smax242.i.i.i to i64     ; 7 uses
  %i.ft = mul nsw i64 %indvars.iv263.i.i.i, %i.ei ; 4 uses
  %i.fu = trunc i64 %i.ft to i32                  ; 2 uses
  %i.fv = sub i32 %i.bj, %i.fu
  %.sroa.speculated140.i.i.i = call i32 @llvm.smax.i32(i32 %i.fv, i32 0)
  %i.fw = sub i32 %i.bk, %i.fu
  %.sroa.speculated132.i.i.i = call i32 @llvm.smin.i32(i32 %i.fw, i32 %i.do) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fx = sub nsw i64 %i.en, %i.ft                ; 3 uses
  %i.fy = trunc nsw i64 %i.fx to i32
  store i32 %i.fy, ptr %i.b, align 4, !tbaa !34
  %i.fz = icmp sgt i64 %i.fx, 0
  %..i124.i.i.i = select i1 %i.fz, ptr %i.b, ptr %i.a
  %i.ga = call i64 @llvm.smax.i64(i64 %i.fx, i64 0)
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = icmp sgt i32 %i.do, %i.gb
  %..i125.i.i.i = select i1 %i.gc, ptr %..i124.i.i.i, ptr %i.v
  %i.gd = load i32, ptr %..i125.i.i.i, align 4, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ge = icmp slt i32 %.sroa.speculated140.i.i.i, %.sroa.speculated132.i.i.i
  br i1 %i.ge, label %.lr.ph176.i.i.i, label %._crit_edge177.i.i.i

.lr.ph176.i.i.i:                                  ; preds = %bb.e
  %i.gf = load ptr, ptr %i.aw, align 8, !tbaa !231, !nonnull !62, !align !63
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !26 ; 3 uses
  %i.gh = load ptr, ptr %i.ax, align 8, !tbaa !232, !nonnull !62, !align !63
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !26 ; 3 uses
  %i.gj = zext nneg i32 %.sroa.speculated132.i.i.i to i64 ; 3 uses
  %i.gk = add nuw nsw i64 %i.fs, 1
  %i.gl = call i64 @llvm.umax.i64(i64 %i.gk, i64 %i.gj)
  %i.gm = sub nsw i64 %i.gl, %i.fs                ; 3 uses
  %min.iters.check47 = icmp ult i64 %i.gm, 8
  br i1 %min.iters.check47, label %scalar.ph46.preheader, label %vector.memcheck38

vector.memcheck38:                                ; preds = %.lr.ph176.i.i.i
  %i.gn = ptrtoaddr ptr %i.gi to i64              ; 2 uses
  %i.go = ptrtoaddr ptr %i.gg to i64              ; 2 uses
  %i.gp = add i64 %i.fj, %i.x
  %i.gq = add i64 %i.fa, %i.go
  %i.gr = sub i64 %i.gq, %i.gp
  %diff.check39 = icmp ugt i64 %i.gr, -16
  %conflict.rdx = or i1 %diff.check, %diff.check39
  %i.gs = add i64 %i.fl, %i.gn
  %i.gt = add i64 %i.gs, -1
  %diff.check40 = icmp ult i64 %i.gt, 15
  %conflict.rdx41 = or i1 %conflict.rdx, %diff.check40
  %i.gu = sub i64 %i.go, %i.fm
  %diff.check42 = icmp ugt i64 %i.gu, -16
  %conflict.rdx43 = or i1 %conflict.rdx41, %diff.check42
  %i.gv = sub i64 %i.gn, %i.fm
  %diff.check44 = icmp ugt i64 %i.gv, -16
  %conflict.rdx45 = or i1 %conflict.rdx43, %diff.check44
  br i1 %conflict.rdx45, label %scalar.ph46.preheader, label %vector.ph48

vector.ph48:                                      ; preds = %vector.memcheck38
  %n.vec49 = and i64 %i.gm, -4                    ; 3 uses
  %i.gw = add nsw i64 %n.vec49, %i.fs
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph48
  %index55 = phi i64 [ 0, %vector.ph48 ], [ %index.next58, %vector.body54 ] ; 2 uses
  %i.gx = add nuw i64 %index55, %i.fs             ; 3 uses
  %i.gy = add nsw i64 %i.gx, %i.ft                ; 2 uses
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.gy
  %wide.load56 = load <4 x float>, ptr %i.gz, align 4, !tbaa !9
  %i.ha = fmul <4 x float> %broadcast.splat51, %wide.load56 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.gx
  store <4 x float> %i.ha, ptr %i.hb, align 4, !tbaa !9
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.gy
  %wide.load57 = load <4 x float>, ptr %i.hc, align 4, !tbaa !9
  %i.hd = fneg <4 x float> %i.ha
  %i.he = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> %broadcast.splat53, <4 x float> %wide.load57)
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.gx
  store <4 x float> %i.he, ptr %i.hf, align 4, !tbaa !9
  %index.next58 = add nuw i64 %index55, 4         ; 2 uses
  %i.hg = icmp eq i64 %index.next58, %n.vec49
  br i1 %i.hg, label %middle.block59, label %vector.body54, !llvm.loop !199

middle.block59:                                   ; preds = %vector.body54
  %cmp.n60 = icmp eq i64 %i.gm, %n.vec49
  br i1 %cmp.n60, label %.lr.ph193.i.i.i, label %scalar.ph46.preheader

scalar.ph46.preheader:                            ; preds = %vector.memcheck38, %.lr.ph176.i.i.i, %middle.block59
  %indvars.iv229.i.i.i.ph = phi i64 [ %i.fs, %vector.memcheck38 ], [ %i.fs, %.lr.ph176.i.i.i ], [ %i.gw, %middle.block59 ]
  br label %scalar.ph46

._crit_edge177.i.i.i:                             ; preds = %bb.e
  %i.hh = mul i64 %indvars.iv263.i.i.i, %i.eg
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.hh
  br label %._crit_edge194.split.i.i.i

.lr.ph193.i.i.i:                                  ; preds = %scalar.ph46, %middle.block59
  %i.hj = mul i64 %indvars.iv263.i.i.i, %i.ea
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.hj
  %i.hl = mul i64 %indvars.iv263.i.i.i, %i.eg
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.hl ; 4 uses
  %i.hn = load ptr, ptr %i.am, align 8, !tbaa !224, !nonnull !62, !align !64
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !34 ; 2 uses
  %i.hp = icmp sgt i32 %i.ho, 0
  br i1 %i.hp, label %.lr.ph193.split.i.i.i, label %._crit_edge194.split.i.i.i

.lr.ph193.split.i.i.i:                            ; preds = %.lr.ph193.i.i.i
  %i.hq = load ptr, ptr %i.an, align 8, !tbaa !225, !nonnull !62, !align !63
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !16 ; 2 uses
  %i.hs = load ptr, ptr %i.ba, align 8, !tbaa !233, !nonnull !62, !align !63
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !16 ; 3 uses
  %i.hu = load ptr, ptr %i.ao, align 8, !tbaa !226, !nonnull !62, !align !64
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !34 ; 3 uses
  %i.hw = icmp sgt i32 %i.hv, 0
  br i1 %i.hw, label %.lr.ph193.split.split.i.i.i, label %._crit_edge194.split.i.i.i

.lr.ph193.split.split.i.i.i:                      ; preds = %.lr.ph193.split.i.i.i
  %i.hx = load ptr, ptr %i.ap, align 8, !tbaa !227, !nonnull !62, !align !63
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !16 ; 4 uses
  %i.hz = load ptr, ptr %i.bb, align 8, !tbaa !234, !nonnull !62, !align !63
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !16 ; 4 uses
  %wide.trip.count240.i.i.i = zext nneg i32 %i.ho to i64 ; 2 uses
  %wide.trip.count235.i.i.i = zext nneg i32 %i.hv to i64 ; 6 uses
  %i.ib = shl i64 %i.ht, 2
  %i.ic = add nsw i64 %wide.trip.count240.i.i.i, -1 ; 2 uses
  %i.id = mul i64 %i.ib, %i.ic
  %i.ie = shl nuw nsw i64 %wide.trip.count235.i.i.i, 2 ; 2 uses
  %i.if = shl i64 %i.hr, 2                        ; 2 uses
  %i.ig = mul i64 %i.if, %i.ic
  %i.ih = getelementptr i8, ptr %i.fg, i64 %i.fn
  %i.ii = getelementptr i8, ptr %i.ih, i64 %i.id
  %i.ij = getelementptr i8, ptr %i.ii, i64 %i.ie
  %i.ik = getelementptr i8, ptr %i.ij, i64 %i.fp
  %i.il = getelementptr i8, ptr %i.fi, i64 %i.fq
  %i.im = getelementptr i8, ptr %i.il, i64 %i.ig
  %i.in = getelementptr i8, ptr %i.im, i64 %i.ie
  %i.io = getelementptr i8, ptr %i.in, i64 %i.fp
  %min.iters.check26 = icmp ult i32 %i.hv, 8
  %ident.check19 = icmp ne i64 %i.ia, 1
  %ident.check20 = icmp ne i64 %i.hy, 1
  %i.ip = or i1 %ident.check19, %ident.check20
  %.mask = and i64 %i.ht, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %stride.check24 = icmp slt i64 %i.if, 0
  %invariant.op = or i1 %stride.check, %stride.check24
  %n.vec28 = and i64 %wide.trip.count235.i.i.i, 2147483640 ; 3 uses
  %cmp.n36 = icmp eq i64 %n.vec28, %wide.trip.count235.i.i.i
  %xtraiter66 = and i64 %wide.trip.count235.i.i.i, 1
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  %i.iq = add nsw i64 %wide.trip.count235.i.i.i, -1
  br label %.lr.ph189.i.i.i

scalar.ph46:                                      ; preds = %scalar.ph46.preheader, %scalar.ph46
  %indvars.iv229.i.i.i = phi i64 [ %indvars.iv.next230.i.i.i, %scalar.ph46 ], [ %indvars.iv229.i.i.i.ph, %scalar.ph46.preheader ] ; 4 uses
  %i.ir = add nsw i64 %indvars.iv229.i.i.i, %i.ft ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.ir
  %i.it = load float, ptr %i.is, align 4, !tbaa !9
  %i.iu = fmul float %i.dn, %i.it                 ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv229.i.i.i
  store float %i.iu, ptr %i.iv, align 4, !tbaa !9
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.ir
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !9
  %i.iy = fneg float %i.iu
  %i.iz = call float @llvm.fmuladd.f32(float %i.iy, float %i.dd, float %i.ix)
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv229.i.i.i
  store float %i.iz, ptr %i.ja, align 4, !tbaa !9
  %indvars.iv.next230.i.i.i = add nuw nsw i64 %indvars.iv229.i.i.i, 1 ; 2 uses
  %i.jb = icmp samesign ult i64 %indvars.iv.next230.i.i.i, %i.gj
  br i1 %i.jb, label %scalar.ph46, label %.lr.ph193.i.i.i, !llvm.loop !200

.lr.ph189.i.i.i:                                  ; preds = %._crit_edge190.i.i.i, %.lr.ph193.split.split.i.i.i
  %indvar21 = phi i64 [ %indvar.next22, %._crit_edge190.i.i.i ], [ 0, %.lr.ph193.split.split.i.i.i ] ; 2 uses
  %indvars.iv243.i.i.i = phi i64 [ %indvars.iv.next244.i.i.i, %._crit_edge190.i.i.i ], [ %i.fs, %.lr.ph193.split.split.i.i.i ] ; 5 uses
  %i.jc = shl nuw nsw i64 %indvar21, 2            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ik, i64 %i.jc
  %scevgep23 = getelementptr i8, ptr %i.io, i64 %i.jc
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv243.i.i.i
  %i.je = load float, ptr %i.jd, align 4, !tbaa !9 ; 4 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv243.i.i.i
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !9 ; 4 uses
  %invariant.gep184.i.i.i = getelementptr [4 x i8], ptr %i.hk, i64 %indvars.iv243.i.i.i ; 2 uses
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.hm, i64 %indvars.iv243.i.i.i ; 2 uses
  %bound0 = icmp ult ptr %invariant.gep.i.i.i, %scevgep23
  %bound1 = icmp ult ptr %invariant.gep184.i.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.reass = or i1 %found.conflict, %invariant.op
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.je, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert29 = insertelement <4 x float> poison, float %i.jg, i64 0
  %broadcast.splat30 = shufflevector <4 x float> %broadcast.splatinsert29, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph182.i.i.i

._crit_edge190.i.i.i:                             ; preds = %._crit_edge183.i.i.i
  %indvars.iv.next244.i.i.i = add nuw nsw i64 %indvars.iv243.i.i.i, 1 ; 2 uses
  %i.jh = icmp samesign ult i64 %indvars.iv.next244.i.i.i, %i.gj
  %indvar.next22 = add i64 %indvar21, 1
  br i1 %i.jh, label %.lr.ph189.i.i.i, label %._crit_edge194.split.i.i.i, !llvm.loop !201

.lr.ph182.i.i.i:                                  ; preds = %._crit_edge183.i.i.i, %.lr.ph189.i.i.i
  %indvars.iv237.i.i.i = phi i64 [ 0, %.lr.ph189.i.i.i ], [ %indvars.iv.next238.i.i.i, %._crit_edge183.i.i.i ] ; 3 uses
  %i.ji = mul i64 %indvars.iv237.i.i.i, %i.hr
  %i.jj = mul i64 %indvars.iv237.i.i.i, %i.ht
  %gep185.i.i.i = getelementptr [4 x i8], ptr %invariant.gep184.i.i.i, i64 %i.ji ; 4 uses
  %gep186.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.jj ; 4 uses
  %brmerge = select i1 %min.iters.check26, i1 true, i1 %i.ip
  %brmerge73 = select i1 %brmerge, i1 true, i1 %.reass
  br i1 %brmerge73, label %scalar.ph25.preheader, label %vector.body31

vector.body31:                                    ; preds = %.lr.ph182.i.i.i, %vector.body31
  %index32 = phi i64 [ %index.next34, %vector.body31 ], [ 0, %.lr.ph182.i.i.i ] ; 3 uses
  %i.jk = getelementptr [4 x i8], ptr %gep185.i.i.i, i64 %index32 ; 2 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 16
  %wide.load = load <4 x float>, ptr %i.jk, align 4, !tbaa !9, !alias.scope !235
  %wide.load33 = load <4 x float>, ptr %i.jl, align 4, !tbaa !9, !alias.scope !235
  %i.jm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat30)
  %i.jn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load33, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat30)
  %i.jo = getelementptr [4 x i8], ptr %gep186.i.i.i, i64 %index32 ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 16
  store <4 x float> %i.jm, ptr %i.jo, align 4, !tbaa !9, !alias.scope !236, !noalias !235
  store <4 x float> %i.jn, ptr %i.jp, align 4, !tbaa !9, !alias.scope !236, !noalias !235
  %index.next34 = add nuw i64 %index32, 8         ; 2 uses
  %i.jq = icmp eq i64 %index.next34, %n.vec28
  br i1 %i.jq, label %middle.block35, label %vector.body31, !llvm.loop !205

middle.block35:                                   ; preds = %vector.body31
  br i1 %cmp.n36, label %._crit_edge183.i.i.i, label %scalar.ph25.preheader

scalar.ph25.preheader:                            ; preds = %.lr.ph182.i.i.i, %middle.block35
  %indvars.iv232.i.i.i.ph = phi i64 [ 0, %.lr.ph182.i.i.i ], [ %n.vec28, %middle.block35 ] ; 5 uses
  br i1 %lcmp.mod67.not, label %scalar.ph25.prol.loopexit, label %scalar.ph25.prol

scalar.ph25.prol:                                 ; preds = %scalar.ph25.preheader
  %i.jr = mul i64 %indvars.iv232.i.i.i.ph, %i.hy
  %gep.i.i.i.prol = getelementptr [4 x i8], ptr %gep185.i.i.i, i64 %i.jr
  %i.js = load float, ptr %gep.i.i.i.prol, align 4, !tbaa !9
  %i.jt = call float @llvm.fmuladd.f32(float %i.js, float %i.je, float %i.jg)
end_hunk_0
