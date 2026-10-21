Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/distance?download=true
inline.NumInlined: 318
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3ShapeCast:.peel.begin
  %i.cg = load ptr, ptr %1, align 8, !tbaa !75
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.cg, i64 %indvars.iv ; 2 uses
  %.sroa.032.0.copyload = load float, ptr %i.ch, align 4, !tbaa !16
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.ci = fpext float %.sroa.032.0.copyload to double
  %i.cj = load <2 x float>, ptr %.sroa.433.0..sroa_idx, align 4, !tbaa !16
  %i.ck = fpext <2 x float> %i.cj to <2 x double> ; 2 uses
  %i.cl = trunc nuw nsw i64 %indvars.iv to i32
  %i.cm = extractelement <2 x double> %i.ck, i64 0
  %i.cn = extractelement <2 x double> %i.ck, i64 1
  tail call void (ptr, ...) @b3Log(ptr noundef nonnull @.str, i32 noundef %i.cl, double noundef %i.ci, double noundef %i.cm, double noundef %i.cn) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = load i32, ptr %i.by, align 8, !tbaa !73
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next, %i.cp
  br i1 %i.cq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !60

._crit_edge182:                                   ; preds = %.lr.ph181, %._crit_edge
  %i.cr = load float, ptr %i.f, align 4, !tbaa !65
  %i.cs = fpext float %i.cr to double
  tail call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.3, double noundef %i.cs) #15
  %.sroa.023.0.copyload = load float, ptr %i.p, align 8, !tbaa !16
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.424.0.copyload = load float, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !16
  %.sroa.525.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ct = fpext float %.sroa.023.0.copyload to double
  %i.cu = fpext float %.sroa.424.0.copyload to double
  %i.cv = fpext float %.sroa.525.0.copyload to double
  %i.cw = load <4 x float>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !16
  %i.cx = fpext <4 x float> %i.cw to <4 x double> ; 4 uses
  %i.cy = extractelement <4 x double> %i.cx, i64 0
  %i.cz = extractelement <4 x double> %i.cx, i64 1
  %i.da = extractelement <4 x double> %i.cx, i64 2
  %i.db = extractelement <4 x double> %i.cx, i64 3
  tail call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.4, double noundef %i.ct, double noundef %i.cu, double noundef %i.cv, double noundef %i.cy, double noundef %i.cz, double noundef %i.da, double noundef %i.db) #15
  %.sroa.021.0.copyload = load float, ptr %i.q, align 4, !tbaa !16
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.422.0.copyload = load float, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !16
  %.sroa.5.0.copyload = load float, ptr %.sroa.590.0..sroa_idx, align 4, !tbaa !16
  %i.dc = fpext float %.sroa.021.0.copyload to double
  %i.dd = fpext float %.sroa.422.0.copyload to double
  %i.de = fpext float %.sroa.5.0.copyload to double
  tail call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.5, double noundef %i.dc, double noundef %i.dd, double noundef %i.de) #15
  %i.df = load float, ptr %i.u, align 8, !tbaa !70
  %i.dg = fpext float %i.df to double
  %i.dh = load i8, ptr %i.t, align 4, !tbaa !69, !range !30, !noundef !31
  %i.di = zext nneg i8 %i.dh to i32
  tail call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.6, double noundef %i.dg, i32 noundef %i.di) #15
  br label %.critedge

.lr.ph181:                                        ; preds = %._crit_edge, %.lr.ph181
  %indvars.iv204 = phi i64 [ %indvars.iv.next205, %.lr.ph181 ], [ 0, %._crit_edge ] ; 3 uses
  %i.dj = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.dk = getelementptr inbounds nuw [12 x i8], ptr %i.dj, i64 %indvars.iv204 ; 2 uses
  %.sroa.026.0.copyload = load float, ptr %i.dk, align 4, !tbaa !16
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dl = fpext float %.sroa.026.0.copyload to double
  %i.dm = load <2 x float>, ptr %.sroa.427.0..sroa_idx, align 4, !tbaa !16
  %i.dn = fpext <2 x float> %i.dm to <2 x double> ; 2 uses
  %i.do = trunc nuw nsw i64 %indvars.iv204 to i32
  %i.dp = extractelement <2 x double> %i.dn, i64 0
  %i.dq = extractelement <2 x double> %i.dn, i64 1
  tail call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.2, i32 noundef %i.do, double noundef %i.dl, double noundef %i.dp, double noundef %i.dq) #15
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %i.dr = load i32, ptr %i.cd, align 8, !tbaa !74
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next205, %i.ds
  br i1 %i.dt, label %.lr.ph181, label %._crit_edge182, !llvm.loop !61

bb.g:                                             ; preds = %._crit_edge208, %bb.f
  %.sroa.05.4.vec.extract.i152.pre-phi = phi float [ %.pre213, %._crit_edge208 ], [ %.sroa.04.4.vec.extract.i.i, %bb.f ]
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.0126174, ptr %i.du, align 4, !tbaa !77
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dw = insertelement <2 x float> poison, float %i.d, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = insertelement <2 x float> %.sroa.10.0.copyload, float %.sroa.05.4.vec.extract.i152.pre-phi, i64 1
  %i.dz = fmul <2 x float> %i.dx, %i.dy
  %i.ea = fadd <2 x float> %.sroa.075.0.copyload, %i.dz
  %i.eb = fmul float %i.d, %.sroa.16.0.copyload
  %i.ec = fadd float %.sroa.677.0.copyload, %i.eb
  store <2 x float> %i.ea, ptr %i.dv, align 4, !tbaa !16
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ec, ptr %.sroa.420.0..sroa_idx, align 4, !tbaa !16
  store <2 x float> %.sroa.10.0.copyload, ptr %0, align 4, !tbaa !16
  %.sroa.16.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.16.0.copyload, ptr %.sroa.16.24..sroa_idx, align 4, !tbaa !16
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.ed, align 4, !tbaa !72
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.ee = fmul <2 x float> %.sroa.088.0.copyload, %.sroa.10.0.copyload ; 2 uses
  %shift237 = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop238 = fadd <2 x float> %i.ee, %shift237
  %i.ef = extractelement <2 x float> %foldExtExtBinop238, i64 0
  %i.eg = fmul float %.sroa.590.0.copyload, %.sroa.16.0.copyload
  %i.eh = fadd float %i.eg, %i.ef                 ; 2 uses
  %i.ei = fcmp ult float %i.eh, 0.000000e+00
  br i1 %i.ei, label %bb.i, label %.critedge.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ej = fsub float %.1.peel, %.sroa.21.0.copyload
  %i.ek = fdiv float %i.ej, %i.eh
  %i.el = fadd float %.0126174, %i.ek             ; 4 uses
  %i.em = fcmp ult float %i.el, %i.aj
  br i1 %i.em, label %bb.j, label %.critedge.loopexit

bb.j:                                             ; preds = %bb.i
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 8
  %i.en = insertelement <2 x float> poison, float %i.el, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x float> %.sroa.088.0.copyload, %i.eo
  %i.eq = fadd <2 x float> %i.ep, %.sroa.03.0.copyload.peel
  %i.er = fmul float %.sroa.590.0.copyload, %i.el
  %i.es = fadd float %i.er, %.sroa.24.0.copyload
  store <2 x float> %i.eq, ptr %i.o, align 8, !tbaa !16
  store float %i.es, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !16
  %i.et = add nuw nsw i32 %.0128173, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.et, 20
  br i1 %exitcond.not, label %.critedge.loopexit, label %bb.e, !llvm.loop !62

.critedge.loopexit:                               ; preds = %bb.j, %bb.i, %bb.h, %bb.d, %bb.c
  %.lcssa198 = phi i32 [ 1, %bb.c ], [ 1, %bb.d ], [ 20, %bb.j ], [ %i.au, %bb.i ], [ %i.au, %bb.h ]
  store i32 %.lcssa198, ptr %i.s, align 4, !tbaa !71
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.g, %._crit_edge182, %._crit_edge209
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #7

declare void @b3Log(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @b3GetSweepTransform(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Transform) align 4 captures(none) initializes((0, 28)) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load <2 x float>, ptr %i.a, align 4      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = load <2 x float>, ptr %i.d, align 4      ; 3 uses
  %i.f = load <2 x float>, ptr %i.b, align 4      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.h = load <2 x float>, ptr %i.g, align 4      ; 2 uses
  %i.i = shufflevector <2 x float> %i.c, <2 x float> %i.e, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.j = shufflevector <2 x float> %i.f, <2 x float> %i.h, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.k = fmul <4 x float> %i.i, %i.j              ; 4 uses
  %shift = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.k, %shift
  %shift35 = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop36 = fadd <4 x float> %foldExtExtBinop, %shift35
  %shift38 = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop39 = fadd <4 x float> %shift38, %foldExtExtBinop36
  %i.l = extractelement <4 x float> %foldExtExtBinop39, i64 0
  %i.m = fcmp olt float %i.l, 0.000000e+00        ; 2 uses
  %i.n = fneg <2 x float> %i.c
  %i.o = fneg <2 x float> %i.e
  %i.p = select i1 %i.m, <2 x float> %i.o, <2 x float> %i.e
  %i.q = select i1 %i.m, <2 x float> %i.n, <2 x float> %i.c
  %i.r = fsub float 1.000000e+00, %2              ; 2 uses
  %i.s = insertelement <2 x float> poison, float %2, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.u = fmul <2 x float> %i.t, %i.f
  %i.v = insertelement <2 x float> poison, float %i.r, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.x = fmul <2 x float> %i.w, %i.q
  %i.y = fadd <2 x float> %i.u, %i.x              ; 2 uses
  %i.z = fmul <2 x float> %i.t, %i.h
  %i.aa = fmul <2 x float> %i.w, %i.p
  %i.ab = fadd <2 x float> %i.z, %i.aa            ; 2 uses
  %i.ac = shufflevector <2 x float> %i.y, <2 x float> %i.ab, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.ad = fmul <4 x float> %i.ac, %i.ac           ; 4 uses
  %shift41 = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop42 = fadd <4 x float> %i.ad, %shift41
  %shift44 = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop45 = fadd <4 x float> %foldExtExtBinop42, %shift44
  %shift47 = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop48 = fadd <4 x float> %shift47, %foldExtExtBinop45
  %i.ae = extractelement <4 x float> %foldExtExtBinop48, i64 0 ; 2 uses
  %i.af = fcmp ogt float %i.ae, f0x057A0000
  br i1 %i.af, label %bb.b, label %b3NLerp.exit

bb.b:                                             ; preds = %bb.a
  %i.ag = tail call float @sqrtf(float noundef %i.ae) #15
  %i.ah = fdiv float 1.000000e+00, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fmul <2 x float> %i.y, %i.aj
  %i.al = fmul <2 x float> %i.ab, %i.aj
  br label %b3NLerp.exit

b3NLerp.exit:                                     ; preds = %bb.a, %bb.b
  %.sroa.010.0.i.i = phi <2 x float> [ %i.ak, %bb.b ], [ zeroinitializer, %bb.a ] ; 6 uses
  %.sroa.4.0.i.i = phi <2 x float> [ %i.al, %bb.b ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %3 = shufflevector <2 x float> %.sroa.010.0.i.i, <2 x float> %.sroa.4.0.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %i.am, align 4, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.019.0.copyload = load <2 x float>, ptr %i.an, align 4
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.220.0.copyload = load float, ptr %.sroa.220.0..sroa_idx, align 4
  %.sroa.017.0.copyload = load <2 x float>, ptr %i.ao, align 4
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.218.0.copyload = load float, ptr %.sroa.218.0..sroa_idx, align 4
  %i.ap = fmul float %i.r, %.sroa.220.0.copyload
  %i.aq = fmul float %2, %.sroa.218.0.copyload
  %i.ar = fadd float %i.ap, %i.aq
  %.sroa.09.0.copyload = load <2 x float>, ptr %1, align 4 ; 4 uses
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.210.0.copyload = load float, ptr %.sroa.210.0..sroa_idx, align 4 ; 4 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.010.0.i.i, i64 0
  %i.as = fmul <2 x float> %i.w, %.sroa.019.0.copyload
  %i.at = fmul <2 x float> %i.t, %.sroa.017.0.copyload
  %i.au = fadd <2 x float> %i.as, %i.at
  %foldExtExtBinop50 = fmul <2 x float> %.sroa.4.0.i.i, %.sroa.09.0.copyload
  %i.av = extractelement <2 x float> %foldExtExtBinop50, i64 0
  %i.aw = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.210.0.copyload
  %i.ax = fsub float %i.av, %i.aw
  %i.ay = shufflevector <2 x float> %.sroa.09.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.az = insertelement <2 x float> %i.ay, float %.sroa.210.0.copyload, i64 1 ; 2 uses
  %i.ba = fmul <2 x float> %.sroa.010.0.i.i, %i.az
  %i.bb = shufflevector <2 x float> %.sroa.010.0.i.i, <2 x float> %.sroa.4.0.i.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bc = fmul <2 x float> %i.bb, %.sroa.09.0.copyload
  %i.bd = fsub <2 x float> %i.ba, %i.bc           ; 2 uses
  %i.be = shufflevector <2 x float> %.sroa.4.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bf = insertelement <2 x float> %i.ay, float %.sroa.210.0.copyload, i64 0
  %i.bg = fmul <2 x float> %i.be, %i.bf
  %i.bh = fmul <2 x float> %i.be, %i.az
  %i.bi = fadd <2 x float> %i.bg, %i.bd           ; 2 uses
  %i.bj = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bk = insertelement <2 x float> %i.bj, float %i.ax, i64 0
  %i.bl = fadd <2 x float> %i.bh, %i.bk           ; 2 uses
  %i.bm = fmul <2 x float> %i.bb, %i.bi
  %i.bn = shufflevector <2 x float> %.sroa.4.0.i.i, <2 x float> %.sroa.010.0.i.i, <2 x i32> <i32 0, i32 2>
  %i.bo = fmul <2 x float> %i.bn, %i.bl
  %i.bp = fsub <2 x float> %i.bm, %i.bo
  %i.bq = shufflevector <2 x float> %i.bl, <2 x float> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.br = fmul <2 x float> %.sroa.010.0.i.i, %i.bq ; 2 uses
  %shift52 = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop53 = fsub <2 x float> %i.br, %shift52
  %i.bs = extractelement <2 x float> %foldExtExtBinop53, i64 0
  %i.bt = fmul <2 x float> %i.bp, splat (float 2.000000e+00)
  %i.bu = fadd <2 x float> %.sroa.09.0.copyload, %i.bt
  %i.bv = fmul float %i.bs, 2.000000e+00
  %i.bw = fadd float %.sroa.210.0.copyload, %i.bv
  %i.bx = fsub <2 x float> %i.au, %i.bu
  %i.by = fsub float %i.ar, %i.bw
  store <2 x float> %i.bx, ptr %0, align 4, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.by, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3TimeOfImpact(ptr dead_on_unwind noalias nofree writable sret(%struct.b3TOIOutput) align 4 captures(none) initializes((0, 52)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.b3ShapeProxy, align 8       ; 12 uses
  %3 = alloca %struct.b3ShapeProxy, align 8       ; 12 uses
  %4 = alloca %struct.b3SimplexCache, align 8     ; 6 uses
  %5 = alloca %struct.b3DistanceInput, align 8    ; 9 uses
  %6 = alloca %struct.b3DistanceOutput, align 8   ; 11 uses
  %7 = alloca %struct.b3SeparationFunction, align 8 ; 32 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %0, i8 0, i64 52, i1 false)
  store float -1.000000e+00, ptr %i.a, align 4, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0955.0.copyload = load <2 x float>, ptr %i.b, align 8, !tbaa !16 ; 11 uses
  %.sroa.6958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6958.0.copyload = load float, ptr %.sroa.6958.0..sroa_idx, align 8, !tbaa !16 ; 8 uses
  %.sroa.8961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.8961.0.copyload = load <2 x float>, ptr %.sroa.8961.0..sroa_idx, align 4, !tbaa !16 ; 8 uses
  %.sroa.12966.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.12966.0.copyload = load float, ptr %.sroa.12966.0..sroa_idx, align 4, !tbaa !16 ; 6 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.15.0.copyload = load <2 x float>, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.19.0.copyload = load float, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.sroa.23.0.copyload = load <2 x float>, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !16 ; 7 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.25.0.copyload = load <2 x float>, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !16 ; 7 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.sroa.27.0.copyload = load <2 x float>, ptr %.sroa.27.0..sroa_idx, align 4, !tbaa !16 ; 12 uses
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.sroa.31.0.copyload = load <2 x float>, ptr %.sroa.31.0..sroa_idx, align 4, !tbaa !16 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 100
  %.sroa.0920.0.copyload = load <2 x float>, ptr %i.c, align 4, !tbaa !16 ; 11 uses
  %.sroa.6923.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 108
  %.sroa.6923.0.copyload = load float, ptr %.sroa.6923.0..sroa_idx, align 4, !tbaa !16 ; 8 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !16 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !16
  %.sroa.16.0..sroa_idx932 = getelementptr inbounds nuw i8, ptr %1, i64 124
  %.sroa.16.0.copyload = load <2 x float>, ptr %.sroa.16.0..sroa_idx932, align 4, !tbaa !16 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 132
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !16
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.24.0.copyload = load <2 x float>, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !16 ; 7 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.26.0.copyload = load <2 x float>, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !16 ; 7 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.28.0.copyload = load <2 x float>, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !16 ; 9 uses
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.32.0.copyload = load <2 x float>, ptr %.sroa.32.0..sroa_idx, align 8, !tbaa !16 ; 7 uses
  %i.d = fsub <2 x float> %.sroa.15.0.copyload, %.sroa.8961.0.copyload ; 4 uses
  %i.e = fsub float %.sroa.19.0.copyload, %.sroa.12966.0.copyload ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.8.0.copyload, %.sroa.8961.0.copyload ; 2 uses
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop2420 = fsub <2 x float> %.sroa.16.0.copyload, %.sroa.8961.0.copyload ; 2 uses
  %i.g = extractelement <2 x float> %foldExtExtBinop2420, i64 1 ; 2 uses
  %i.h = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.i = insertelement <2 x float> %i.h, float %.sroa.12.0.copyload, i64 0
  %i.j = shufflevector <2 x float> %.sroa.8961.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.k = insertelement <2 x float> %i.j, float %.sroa.12966.0.copyload, i64 0 ; 2 uses
  %i.l = fsub <2 x float> %i.i, %i.k              ; 4 uses
  %.sroa.08.4.vec.insert.i367 = shufflevector <2 x float> %i.l, <2 x float> %foldExtExtBinop, <2 x i32> <i32 1, i32 3>
  %i.m = shufflevector <2 x float> %.sroa.16.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.n = insertelement <2 x float> %i.m, float %.sroa.20.0.copyload, i64 0
  %i.o = fsub <2 x float> %i.n, %i.k              ; 4 uses
  %.sroa.08.4.vec.insert.i375 = shufflevector <2 x float> %i.o, <2 x float> %foldExtExtBinop2420, <2 x i32> <i32 1, i32 3>
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !33
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !14
  %i.u = add i32 %i.t, %i.r                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !100
  %i.x = tail call float @b3GetLengthUnitsPerMeter() #15
  %i.y = fmul float %i.x, 5.000000e-03            ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !101
  %i.ad = fadd float %i.aa, %i.ac
  %i.ae = fsub float %i.ad, %i.y                  ; 2 uses
  %i.af = fcmp ogt float %i.y, %i.ae
  %i.ag = select i1 %i.af, float %i.y, float %i.ae ; 6 uses
  %i.ah = fmul float %i.y, 2.500000e-01           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !33
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.aj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !33
  %i.ak = shufflevector <2 x float> %.sroa.23.0.copyload, <2 x float> %.sroa.25.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.al = shufflevector <2 x float> %.sroa.27.0.copyload, <2 x float> %.sroa.31.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.am = fmul <4 x float> %i.ak, %i.al           ; 4 uses
  %.sroa.03.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0955.0.copyload, i64 1 ; 4 uses
  %i.an = shufflevector <2 x float> %.sroa.28.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ao = shufflevector <2 x float> %.sroa.24.0.copyload, <2 x float> %.sroa.26.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ap = shufflevector <2 x float> %.sroa.28.0.copyload, <2 x float> %.sroa.32.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aq = fmul <4 x float> %i.ao, %i.ap           ; 4 uses
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> %i.am, <2 x i32> <i32 0, i32 4>
  %i.as = shufflevector <4 x float> %i.aq, <4 x float> %i.am, <2 x i32> <i32 1, i32 5>
  %i.at = fadd <2 x float> %i.ar, %i.as
  %i.au = shufflevector <4 x float> %i.aq, <4 x float> %i.am, <2 x i32> <i32 2, i32 6>
  %i.av = fadd <2 x float> %i.at, %i.au
  %i.aw = shufflevector <4 x float> %i.aq, <4 x float> %i.am, <2 x i32> <i32 3, i32 7>
  %i.ax = fadd <2 x float> %i.aw, %i.av
  %i.ay = fcmp olt <2 x float> %i.ax, zeroinitializer ; 2 uses
  %.sroa.03.4.vec.extract.i.i.i409 = extractelement <2 x float> %.sroa.0920.0.copyload, i64 1 ; 4 uses
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.5.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.az = fneg <2 x float> %.sroa.23.0.copyload   ; 4 uses
  %i.ba = fneg <2 x float> %.sroa.25.0.copyload   ; 4 uses
  %i.bb = fneg <2 x float> %.sroa.24.0.copyload   ; 4 uses
  %i.bc = fneg <2 x float> %.sroa.26.0.copyload   ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.2219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.2208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.2198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.bi = fadd float %i.ah, %i.ag                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 152 ; 12 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.6958.0..sroa_idx959 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.8961.0..sroa_idx962 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %.sroa.12966.0..sroa_idx967 = getelementptr inbounds nuw i8, ptr %7, i64 36
  %.sroa.15.0..sroa_idx969 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.sroa.19.0..sroa_idx973 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.23.0..sroa_idx975 = getelementptr inbounds nuw i8, ptr %7, i64 52
  %.sroa.25.0..sroa_idx978 = getelementptr inbounds nuw i8, ptr %7, i64 60
  %.sroa.27.0..sroa_idx981 = getelementptr inbounds nuw i8, ptr %7, i64 68
  %.sroa.31.0..sroa_idx986 = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 84
  %.sroa.6923.0..sroa_idx924 = getelementptr inbounds nuw i8, ptr %7, i64 92
  %.sroa.8.0..sroa_idx926 = getelementptr inbounds nuw i8, ptr %7, i64 96
  %.sroa.12.0..sroa_idx930 = getelementptr inbounds nuw i8, ptr %7, i64 104
  %.sroa.16.0..sroa_idx933 = getelementptr inbounds nuw i8, ptr %7, i64 108
  %.sroa.20.0..sroa_idx937 = getelementptr inbounds nuw i8, ptr %7, i64 116
  %.sroa.24.0..sroa_idx939 = getelementptr inbounds nuw i8, ptr %7, i64 120
  %.sroa.26.0..sroa_idx942 = getelementptr inbounds nuw i8, ptr %7, i64 128
  %.sroa.28.0..sroa_idx945 = getelementptr inbounds nuw i8, ptr %7, i64 136
  %.sroa.32.0..sroa_idx950 = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 176 ; 11 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 11 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 164 ; 5 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 172 ; 4 uses
  %i.bq = fsub float %i.ag, %i.ah                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.promoted1969 = load i32, ptr %i.bh, align 4   ; 2 uses
  %.promoted1976 = load i32, ptr %i.br, align 4
  %.promoted1983 = load i32, ptr %i.bs, align 4
  %i.bt = add i32 %.promoted1969, 25
  %i.bu = extractelement <2 x float> %i.o, i64 0
  %i.bv = extractelement <2 x float> %i.l, i64 0
  %i.bw = shufflevector <2 x float> %.sroa.27.0.copyload, <2 x float> %.sroa.31.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.bx = shufflevector <2 x float> %.sroa.31.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.by = shufflevector <2 x float> %.sroa.31.0.copyload, <2 x float> %.sroa.27.0.copyload, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.bz = shufflevector <2 x float> %.sroa.32.0.copyload, <2 x float> %.sroa.28.0.copyload, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.ca = shufflevector <2 x float> %.sroa.32.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.cb = shufflevector <2 x float> %.sroa.28.0.copyload, <2 x float> %.sroa.32.0.copyload, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.cc = shufflevector <2 x float> %.sroa.28.0.copyload, <2 x float> %.sroa.27.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cd = shufflevector <2 x float> %.sroa.28.0.copyload, <2 x float> %.sroa.27.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ce = shufflevector <2 x float> %.sroa.0920.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cf = insertelement <2 x float> %i.ce, float %.sroa.6923.0.copyload, i64 1 ; 3 uses
  %i.cg = insertelement <2 x float> %i.ce, float %.sroa.6923.0.copyload, i64 0 ; 5 uses
  %i.ch = shufflevector <2 x float> %.sroa.0955.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ci = insertelement <2 x float> %i.ch, float %.sroa.6958.0.copyload, i64 1 ; 2 uses
  %i.cj = insertelement <2 x float> %i.ch, float %.sroa.6958.0.copyload, i64 0 ; 5 uses
  %i.ck = extractelement <2 x i1> %i.ay, i64 0    ; 8 uses
  %i.cl = extractelement <2 x i1> %i.ay, i64 1    ; 8 uses
  %i.cm = extractelement <2 x float> %i.d, i64 1
  %i.cn = shufflevector <2 x float> %.sroa.0920.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.co = insertelement <2 x float> %i.cn, float %.sroa.6923.0.copyload, i64 1
  %i.cp = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cq = insertelement <2 x float> %i.cp, float %i.e, i64 0
  %i.cr = shufflevector <2 x float> %.sroa.0955.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cs = insertelement <2 x float> %i.cr, float %.sroa.6958.0.copyload, i64 1
  br label %bb.b

bb.b:                                             ; preds = %select.unfold1061, %bb.a
  %i.ct = phi i32 [ %.promoted1983, %bb.a ], [ %i.cnj, %select.unfold1061 ] ; 5 uses
  %.lcssa115211631977 = phi i32 [ %.promoted1976, %bb.a ], [ %.lcssa11521163, %select.unfold1061 ] ; 4 uses
  %i.cu = phi i32 [ %.promoted1969, %bb.a ], [ %i.kb, %select.unfold1061 ]
  %.0318 = phi i32 [ 0, %bb.a ], [ %i.kc, %select.unfold1061 ]
  %.0 = phi float [ 0.000000e+00, %bb.a ], [ %.2.ph, %select.unfold1061 ] ; 11 uses
  %i.cv = select i1 %i.cl, <2 x float> %i.ba, <2 x float> %.sroa.25.0.copyload
  %i.cw = select i1 %i.cl, <2 x float> %i.az, <2 x float> %.sroa.23.0.copyload
  %i.cx = fsub float 1.000000e+00, %.0            ; 3 uses
  %i.cy = insertelement <2 x float> poison, float %.0, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.da = fmul <2 x float> %.sroa.27.0.copyload, %i.cz ; 3 uses
  %i.db = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer ; 13 uses
  %i.dd = fmul <2 x float> %i.dc, %i.cw
  %i.de = fadd <2 x float> %i.da, %i.dd           ; 2 uses
  %i.df = fmul <2 x float> %.sroa.31.0.copyload, %i.cz ; 3 uses
  %i.dg = fmul <2 x float> %i.dc, %i.cv
  %i.dh = fadd <2 x float> %i.df, %i.dg           ; 2 uses
  %i.di = shufflevector <2 x float> %i.de, <2 x float> %i.dh, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.dj = fmul <4 x float> %i.di, %i.di           ; 4 uses
  %shift = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2422 = fadd <4 x float> %i.dj, %shift
  %shift2424 = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2425 = fadd <4 x float> %foldExtExtBinop2422, %shift2424
  %shift2427 = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2428 = fadd <4 x float> %shift2427, %foldExtExtBinop2425
  %i.dk = extractelement <4 x float> %foldExtExtBinop2428, i64 0 ; 2 uses
  %i.dl = fcmp ogt float %i.dk, f0x057A0000
  br i1 %i.dl, label %bb.c, label %b3GetSweepTransform.exit

bb.c:                                             ; preds = %bb.b
  %i.dm = call float @sqrtf(float noundef %i.dk) #15, !noalias !102
  %i.dn = fdiv float 1.000000e+00, %i.dm
  %i.do = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = fmul <2 x float> %i.de, %i.dp
  %i.dr = fmul <2 x float> %i.dh, %i.dp
  br label %b3GetSweepTransform.exit

b3GetSweepTransform.exit:                         ; preds = %bb.b, %bb.c
  %.sroa.010.0.i.i.i = phi <2 x float> [ %i.dq, %bb.c ], [ zeroinitializer, %bb.b ] ; 45 uses
  %.sroa.4.0.i.i.i = phi <2 x float> [ %i.dr, %bb.c ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.b ] ; 27 uses
  %i.ds = fmul float %i.cx, 0.000000e+00          ; 2 uses
  %i.dt = fmul <2 x float> %i.d, %i.cz
  %i.du = fmul float %i.e, %.0
  %i.dv = fadd float %i.du, %i.ds                 ; 2 uses
  %i.dw = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dx = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.010.0.i.i.i, i64 0 ; 16 uses
  %i.dy = fmul float %.sroa.6958.0.copyload, %.sroa.011.0.vec.extract.i.i.i
  %i.dz = fmul <2 x float> %.sroa.0955.0.copyload, %.sroa.4.0.i.i.i ; 2 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  %i.eb = fsub float %i.ea, %i.dy
  %i.ec = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fadd <2 x float> %i.dt, %i.ed           ; 3 uses
  %i.ef = extractelement <2 x float> %i.dz, i64 1
  %i.eg = fadd float %i.ef, %i.eb                 ; 2 uses
  %i.eh = fmul <2 x float> %i.ci, %.sroa.010.0.i.i.i
  %i.ei = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i, <2 x i32> <i32 1, i32 2> ; 18 uses
  %i.ej = fmul <2 x float> %.sroa.0955.0.copyload, %i.ei
  %i.ek = fsub <2 x float> %i.eh, %i.ej
  %i.el = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 11 uses
  %i.em = fmul <2 x float> %i.cj, %i.el
  %i.en = fadd <2 x float> %i.em, %i.ek           ; 3 uses
  %i.eo = fmul <2 x float> %i.ei, %i.en
  %i.ep = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.010.0.i.i.i, <2 x i32> <i32 0, i32 2> ; 10 uses
  %i.eq = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.er = insertelement <2 x float> %i.eq, float %i.eg, i64 0
  %i.es = fmul <2 x float> %i.ep, %i.er
  %i.et = fsub <2 x float> %i.eo, %i.es
  %i.eu = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.eg
  %foldExtExtBinop2430 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.en
  %i.ev = extractelement <2 x float> %foldExtExtBinop2430, i64 1
  %i.ew = fsub float %i.eu, %i.ev
  %i.ex = fmul <2 x float> %i.et, splat (float 2.000000e+00)
  %i.ey = fadd <2 x float> %.sroa.0955.0.copyload, %i.ex
  %i.ez = fmul float %i.ew, 2.000000e+00
  %i.fa = fadd float %.sroa.6958.0.copyload, %i.ez
  %i.fb = fsub <2 x float> %i.ee, %i.ey           ; 9 uses
  %i.fc = fsub float %i.dv, %i.fa                 ; 8 uses
  %i.fd = select i1 %i.ck, <2 x float> %i.bc, <2 x float> %.sroa.26.0.copyload
  %i.fe = select i1 %i.ck, <2 x float> %i.bb, <2 x float> %.sroa.24.0.copyload
  %i.ff = fmul <2 x float> %i.dc, %i.fe
  %i.fg = fmul <2 x float> %.sroa.28.0.copyload, %i.cz ; 3 uses
  %i.fh = fadd <2 x float> %i.fg, %i.ff           ; 2 uses
  %i.fi = fmul <2 x float> %i.dc, %i.fd
  %i.fj = fmul <2 x float> %.sroa.32.0.copyload, %i.cz ; 3 uses
  %i.fk = fadd <2 x float> %i.fj, %i.fi           ; 2 uses
  %i.fl = shufflevector <2 x float> %i.fh, <2 x float> %i.fk, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.fm = fmul <4 x float> %i.fl, %i.fl           ; 4 uses
  %shift2432 = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2433 = fadd <4 x float> %i.fm, %shift2432
  %shift2435 = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2436 = fadd <4 x float> %foldExtExtBinop2433, %shift2435
  %shift2438 = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2439 = fadd <4 x float> %shift2438, %foldExtExtBinop2436
  %i.fn = extractelement <4 x float> %foldExtExtBinop2439, i64 0 ; 2 uses
  %i.fo = fcmp ogt float %i.fn, f0x057A0000
  br i1 %i.fo, label %bb.d, label %b3GetSweepTransform.exit420

bb.d:                                             ; preds = %b3GetSweepTransform.exit
  %i.fp = call float @sqrtf(float noundef %i.fn) #15, !noalias !103
  %i.fq = fdiv float 1.000000e+00, %i.fp
  %i.fr = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ft = fmul <2 x float> %i.fh, %i.fs
  %i.fu = fmul <2 x float> %i.fk, %i.fs
  br label %b3GetSweepTransform.exit420

b3GetSweepTransform.exit420:                      ; preds = %b3GetSweepTransform.exit, %bb.d
  %.sroa.010.0.i.i.i391 = phi <2 x float> [ %i.ft, %bb.d ], [ zeroinitializer, %b3GetSweepTransform.exit ] ; 11 uses
  %.sroa.4.0.i.i.i392 = phi <2 x float> [ %i.fu, %bb.d ], [ <float 0.000000e+00, float 1.000000e+00>, %b3GetSweepTransform.exit ] ; 7 uses
  %i.fv = fmul float %i.f, %i.cx
  %i.fw = fmul float %i.g, %.0
  %i.fx = fadd float %i.fw, %i.fv                 ; 2 uses
  %i.fy = fmul <2 x float> %i.l, %i.dc
  %i.fz = fmul <2 x float> %i.o, %i.cz
  %i.ga = fadd <2 x float> %i.fz, %i.fy           ; 3 uses
  %.sroa.011.0.vec.extract.i.i.i411 = extractelement <2 x float> %.sroa.010.0.i.i.i391, i64 0
  %i.gb = extractelement <2 x float> %i.ga, i64 0
  %foldExtExtBinop2441 = fmul <2 x float> %.sroa.0920.0.copyload, %.sroa.4.0.i.i.i392
  %i.gc = extractelement <2 x float> %foldExtExtBinop2441, i64 0
  %i.gd = fmul float %.sroa.6923.0.copyload, %.sroa.011.0.vec.extract.i.i.i411
  %i.ge = fsub float %i.gc, %i.gd
  %i.gf = fmul <2 x float> %i.cf, %.sroa.010.0.i.i.i391
  %i.gg = shufflevector <2 x float> %.sroa.010.0.i.i.i391, <2 x float> %.sroa.4.0.i.i.i392, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.gh = fmul <2 x float> %.sroa.0920.0.copyload, %i.gg
  %i.gi = fsub <2 x float> %i.gf, %i.gh           ; 2 uses
  %i.gj = shufflevector <2 x float> %.sroa.4.0.i.i.i392, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.gk = fmul <2 x float> %i.cg, %i.gj
  %i.gl = fmul <2 x float> %i.cf, %i.gj
  %i.gm = fadd <2 x float> %i.gk, %i.gi           ; 2 uses
  %i.gn = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.go = insertelement <2 x float> %i.gn, float %i.ge, i64 0
  %i.gp = fadd <2 x float> %i.gl, %i.go           ; 2 uses
  %i.gq = fmul <2 x float> %i.gg, %i.gm
  %i.gr = shufflevector <2 x float> %.sroa.4.0.i.i.i392, <2 x float> %.sroa.010.0.i.i.i391, <2 x i32> <i32 0, i32 2>
  %i.gs = fmul <2 x float> %i.gr, %i.gp
  %i.gt = fsub <2 x float> %i.gq, %i.gs
  %foldExtExtBinop2443 = fmul <2 x float> %.sroa.010.0.i.i.i391, %i.gp
  %foldExtExtBinop2445 = fmul <2 x float> %.sroa.010.0.i.i.i391, %i.gm
  %shift2447 = shufflevector <2 x float> %foldExtExtBinop2445, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2448 = fsub <2 x float> %foldExtExtBinop2443, %shift2447
  %i.gu = fmul <2 x float> %i.gt, splat (float 2.000000e+00)
  %i.gv = fadd <2 x float> %.sroa.0920.0.copyload, %i.gu
  %i.gw = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gx = insertelement <2 x float> %i.gw, float %i.fx, i64 1
  %i.gy = fsub <2 x float> %i.gx, %i.gv
  %i.gz = fsub <2 x float> %i.gy, %i.fb           ; 4 uses
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hb = fmul <2 x float> %i.ep, %i.gz
  %i.hc = fmul <2 x float> %i.ei, %i.gz
  %i.hd = fmul <2 x float> %i.dx, %.sroa.010.0.i.i.i391 ; 2 uses
  %shift2450 = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2451 = fsub <2 x float> %i.hd, %shift2450
  %i.he = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.010.0.i.i.i, <4 x i32> <i32 poison, i32 0, i32 3, i32 2>
  %i.hf = shufflevector <2 x float> %foldExtExtBinop2448, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> %i.he, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hh = shufflevector <2 x float> %.sroa.010.0.i.i.i391, <2 x float> %.sroa.4.0.i.i.i392, <4 x i32> <i32 poison, i32 1, i32 2, i32 2>
  %i.hi = insertelement <4 x float> %i.hh, float 2.000000e+00, i64 0
  %i.hj = fmul <4 x float> %i.hg, %i.hi           ; 3 uses
  %i.hk = extractelement <4 x float> %i.hj, i64 0
  %i.hl = fadd float %.sroa.6923.0.copyload, %i.hk
  %i.hm = fsub float %i.gb, %i.hl
  %i.hn = fsub float %i.hm, %i.fc                 ; 3 uses
  %i.ho = insertelement <2 x float> %i.ha, float %i.hn, i64 1 ; 2 uses
  %i.hp = fmul <2 x float> %.sroa.010.0.i.i.i, %i.ho
  %i.hq = insertelement <2 x float> %i.ha, float %i.hn, i64 0 ; 2 uses
  %i.hr = fmul <2 x float> %.sroa.010.0.i.i.i, %i.hq
  %i.hs = fsub <2 x float> %i.hp, %i.hc
  %i.ht = fsub <2 x float> %i.hb, %i.hr
  %i.hu = fmul <2 x float> %i.el, %i.hq
  %i.hv = fmul <2 x float> %i.el, %i.ho
  %i.hw = fsub <2 x float> %i.hs, %i.hu           ; 2 uses
  %i.hx = fsub <2 x float> %i.ht, %i.hv           ; 2 uses
  %i.hy = fmul <2 x float> %i.ei, %i.hw
  %i.hz = fmul <2 x float> %i.ep, %i.hx
  %i.ia = fsub <2 x float> %i.hy, %i.hz
  %foldExtExtBinop2453 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.hx
  %foldExtExtBinop2455 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.hw
  %shift2457 = shufflevector <2 x float> %foldExtExtBinop2455, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2458 = fsub <2 x float> %foldExtExtBinop2453, %shift2457
  %i.ib = extractelement <2 x float> %foldExtExtBinop2458, i64 0
  %i.ic = fmul <2 x float> %i.ia, splat (float 2.000000e+00)
  %i.id = fadd <2 x float> %i.gz, %i.ic
  %i.ie = fmul float %i.ib, 2.000000e+00
  %i.if = fadd float %i.hn, %i.ie
  %foldExtExtBinop2460 = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.010.0.i.i.i391
  %i.ig = shufflevector <4 x float> %i.hj, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ih = shufflevector <4 x float> %i.hj, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> %foldExtExtBinop2460, <2 x i32> <i32 0, i32 2>
  %i.ij = fsub <2 x float> %i.ig, %i.ii
  %i.ik = fmul <2 x float> %i.el, %.sroa.010.0.i.i.i391
  %i.il = fadd <2 x float> %i.ik, %i.ij
  %i.im = fmul <2 x float> %.sroa.010.0.i.i.i, %i.gj
  %i.in = fsub <2 x float> %i.il, %i.im
  %i.io = fmul <2 x float> %i.dw, %.sroa.4.0.i.i.i392 ; 2 uses
  %foldExtExtBinop2462 = fadd <2 x float> %foldExtExtBinop2451, %i.io
  %shift2464 = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2465 = fsub <2 x float> %foldExtExtBinop2462, %shift2464
  %i.ip = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.iq = shufflevector <2 x float> %.sroa.010.0.i.i.i391, <2 x float> %.sroa.4.0.i.i.i392, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ir = fmul <4 x float> %i.ip, %i.iq           ; 4 uses
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.it = shufflevector <4 x float> %i.ir, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.iu = shufflevector <4 x float> %i.ir, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.iv = shufflevector <4 x float> %i.ir, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iw = fadd <2 x float> %i.iu, %i.iv
  %i.ix = fadd <2 x float> %i.it, %i.iw
  %i.iy = fadd <2 x float> %i.is, %i.ix
  %.sroa.251.12.vec.insert.i = shufflevector <2 x float> %foldExtExtBinop2465, <2 x float> %i.iy, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.id, ptr %.sroa.4.0..sroa_idx.a, align 8, !tbaa !16
  store float %i.if, ptr %.sroa.5.0..sroa_idx.a, align 8, !tbaa !16
  %8 = shufflevector <2 x float> %i.in, <2 x float> %.sroa.251.12.vec.insert.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %8, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %6, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0)
  %i.iz = load float, ptr %i.bd, align 4, !tbaa !26 ; 8 uses
  %.sroa.0218.0.copyload = load <2 x float>, ptr %i.bf, align 8 ; 5 uses
  %.sroa.2219.0.copyload = load float, ptr %.sroa.2219.0..sroa_idx, align 8 ; 4 uses
  %i.ja = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2219.0.copyload
  %i.jb = fmul <2 x float> %i.ei, %.sroa.0218.0.copyload
  %i.jc = shufflevector <2 x float> %.sroa.0218.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jd = insertelement <2 x float> %i.jc, float %.sroa.2219.0.copyload, i64 1
  %i.je = fmul <2 x float> %.sroa.010.0.i.i.i, %i.jd
  %i.jf = fsub <2 x float> %i.je, %i.jb
  %i.jg = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0218.0.copyload ; 2 uses
  %i.jh = extractelement <2 x float> %i.jg, i64 0
  %i.ji = fsub float %i.jh, %i.ja
  %i.jj = extractelement <2 x float> %i.jg, i64 1
  %i.jk = fadd float %i.jj, %i.ji                 ; 2 uses
  %i.jl = shufflevector <2 x float> %.sroa.0218.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jm = insertelement <2 x float> %i.jl, float %.sroa.2219.0.copyload, i64 0
  %i.jn = fmul <2 x float> %i.el, %i.jm
  %i.jo = fadd <2 x float> %i.jn, %i.jf           ; 3 uses
  %i.jp = fmul <2 x float> %i.ei, %i.jo
  %i.jq = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jr = insertelement <2 x float> %i.jq, float %i.jk, i64 0
  %i.js = fmul <2 x float> %i.ep, %i.jr
  %i.jt = fsub <2 x float> %i.jp, %i.js
  %i.ju = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.jk
  %foldExtExtBinop2479 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.jo
  %i.jv = extractelement <2 x float> %foldExtExtBinop2479, i64 1
  %i.jw = fsub float %i.ju, %i.jv
  %i.jx = fmul <2 x float> %i.jt, splat (float 2.000000e+00)
  %i.jy = fadd <2 x float> %.sroa.0218.0.copyload, %i.jx ; 20 uses
  %i.jz = fmul float %i.jw, 2.000000e+00
  %i.ka = fadd float %.sroa.2219.0.copyload, %i.jz ; 19 uses
  %.sroa.0207.0.copyload = load <2 x float>, ptr %6, align 8 ; 22 uses
  %.sroa.2208.0.copyload = load float, ptr %.sroa.2208.0..sroa_idx, align 8 ; 19 uses
  %.sroa.0197.0.copyload = load <2 x float>, ptr %i.bg, align 4 ; 22 uses
  %.sroa.2198.0.copyload = load float, ptr %.sroa.2198.0..sroa_idx, align 4 ; 19 uses
  %i.kb = add nsw i32 %i.cu, 1                    ; 6 uses
  %i.kc = add nuw nsw i32 %.0318, 1               ; 2 uses
  %i.kd = fcmp ugt float %i.iz, 0.000000e+00
  br i1 %i.kd, label %bb.f, label %bb.e

bb.e:                                             ; preds = %b3GetSweepTransform.exit420
  store float %i.iz, ptr %i.be, align 4
  store i32 %i.kb, ptr %i.bh, align 4
  store i32 %.lcssa115211631977, ptr %i.br, align 4
  store i32 %i.ct, ptr %i.bs, align 4
  %i.ke = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2208.0.copyload
  %i.kf = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kg = insertelement <2 x float> %i.kf, float %.sroa.2208.0.copyload, i64 1
  %i.kh = fmul <2 x float> %.sroa.010.0.i.i.i, %i.kg
  %i.ki = fmul <2 x float> %i.ei, %.sroa.0207.0.copyload
  %i.kj = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2198.0.copyload
  %i.kk = shufflevector <2 x float> %.sroa.0197.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kl = insertelement <2 x float> %i.kk, float %.sroa.2198.0.copyload, i64 1
  %i.km = fmul <2 x float> %.sroa.010.0.i.i.i, %i.kl
  %i.kn = fmul <2 x float> %i.ei, %.sroa.0197.0.copyload
  store i32 2, ptr %0, align 4, !tbaa !104
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !98
  %i.ko = load float, ptr %i.z, align 4, !tbaa !101 ; 2 uses
  %i.kp = fmul float %i.ka, %i.ko
  %i.kq = load float, ptr %i.ab, align 4, !tbaa !101 ; 2 uses
  %i.kr = fmul float %i.ka, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.kt = fsub <2 x float> %i.kh, %i.ki
  %i.ku = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0207.0.copyload ; 2 uses
  %i.kv = extractelement <2 x float> %i.ku, i64 0
  %i.kw = fsub float %i.kv, %i.ke
  %i.kx = extractelement <2 x float> %i.ku, i64 1
  %i.ky = fadd float %i.kx, %i.kw                 ; 2 uses
  %i.kz = insertelement <2 x float> %i.kf, float %.sroa.2208.0.copyload, i64 0
  %i.la = fmul <2 x float> %i.el, %i.kz
  %i.lb = fadd <2 x float> %i.la, %i.kt           ; 3 uses
  %i.lc = fmul <2 x float> %i.ei, %i.lb
  %i.ld = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.le = insertelement <2 x float> %i.ld, float %i.ky, i64 0
  %i.lf = fmul <2 x float> %i.ep, %i.le
  %i.lg = fsub <2 x float> %i.lc, %i.lf
  %i.lh = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.ky
  %foldExtExtBinop2481 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.lb
  %i.li = extractelement <2 x float> %foldExtExtBinop2481, i64 1
  %i.lj = fsub float %i.lh, %i.li
  %i.lk = fmul <2 x float> %i.lg, splat (float 2.000000e+00)
  %i.ll = fadd <2 x float> %.sroa.0207.0.copyload, %i.lk
  %i.lm = fmul float %i.lj, 2.000000e+00
  %i.ln = fadd float %.sroa.2208.0.copyload, %i.lm
  %i.lo = fadd <2 x float> %i.fb, %i.ll
  %i.lp = fadd float %i.fc, %i.ln
  %i.lq = fsub <2 x float> %i.km, %i.kn
  %i.lr = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0197.0.copyload ; 2 uses
  %i.ls = extractelement <2 x float> %i.lr, i64 0
  %i.lt = fsub float %i.ls, %i.kj
  %i.lu = extractelement <2 x float> %i.lr, i64 1
  %i.lv = fadd float %i.lu, %i.lt                 ; 2 uses
  %i.lw = insertelement <2 x float> %i.kk, float %.sroa.2198.0.copyload, i64 0
  %i.lx = fmul <2 x float> %i.el, %i.lw
  %i.ly = fadd <2 x float> %i.lx, %i.lq           ; 3 uses
  %i.lz = fmul <2 x float> %i.ei, %i.ly
  %i.ma = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mb = insertelement <2 x float> %i.ma, float %i.lv, i64 0
  %i.mc = fmul <2 x float> %i.ep, %i.mb
  %i.md = fsub <2 x float> %i.lz, %i.mc
  %i.me = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.lv
  %foldExtExtBinop2483 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.ly
  %i.mf = extractelement <2 x float> %foldExtExtBinop2483, i64 1
  %i.mg = fsub float %i.me, %i.mf
  %i.mh = fmul <2 x float> %i.md, splat (float 2.000000e+00)
  %i.mi = fadd <2 x float> %.sroa.0197.0.copyload, %i.mh
  %i.mj = fmul float %i.mg, 2.000000e+00
  %i.mk = fadd float %.sroa.2198.0.copyload, %i.mj
  %i.ml = fadd <2 x float> %i.fb, %i.mi
  %i.mm = fadd float %i.fc, %i.mk
  %i.mn = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.mo = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mp = fmul <2 x float> %i.jy, %i.mo
  %i.mq = fadd <2 x float> %i.lo, %i.mp
  %i.mr = fadd float %i.lp, %i.kp
  %i.ms = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.mt = shufflevector <2 x float> %i.ms, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mu = fmul <2 x float> %i.jy, %i.mt
  %i.mv = fsub <2 x float> %i.ml, %i.mu
  %i.mw = fsub float %i.mm, %i.kr
  %i.mx = fmul <2 x float> %i.mq, splat (float 5.000000e-01)
  %i.my = fmul <2 x float> %i.mv, splat (float 5.000000e-01)
  %i.mz = fadd <2 x float> %i.mx, %i.my
  %i.na = fmul float %i.mr, 5.000000e-01
  %i.nb = fmul float %i.mw, 5.000000e-01
  %i.nc = fadd float %i.na, %i.nb
  %i.nd = fadd <2 x float> %.sroa.8961.0.copyload, %i.mz
  %i.ne = fadd float %.sroa.12966.0.copyload, %i.nc
  store <2 x float> %i.nd, ptr %i.ks, align 4, !tbaa !16
  store float %i.ne, ptr %.sroa.4172.0..sroa_idx, align 4, !tbaa !16
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.jy, ptr %i.nf, align 4, !tbaa !16
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ka, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !16
  br label %.thread1078

bb.f:                                             ; preds = %b3GetSweepTransform.exit420
  %i.ng = fcmp ugt float %i.iz, %i.bi
  br i1 %i.ng, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store float %i.iz, ptr %i.be, align 4
  store i32 %i.kb, ptr %i.bh, align 4
  store i32 %.lcssa115211631977, ptr %i.br, align 4
  store i32 %i.ct, ptr %i.bs, align 4
  %i.nh = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2208.0.copyload
  %i.ni = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nj = insertelement <2 x float> %i.ni, float %.sroa.2208.0.copyload, i64 1
  %i.nk = fmul <2 x float> %.sroa.010.0.i.i.i, %i.nj
  %i.nl = fmul <2 x float> %i.ei, %.sroa.0207.0.copyload
  %i.nm = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2198.0.copyload
  %i.nn = shufflevector <2 x float> %.sroa.0197.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.no = insertelement <2 x float> %i.nn, float %.sroa.2198.0.copyload, i64 1
  %i.np = fmul <2 x float> %.sroa.010.0.i.i.i, %i.no
  %i.nq = fmul <2 x float> %i.ei, %.sroa.0197.0.copyload
  store i32 3, ptr %0, align 4, !tbaa !104
  %i.nr = load float, ptr %i.z, align 4, !tbaa !101 ; 2 uses
  %i.ns = fmul float %i.ka, %i.nr
  %i.nt = load float, ptr %i.ab, align 4, !tbaa !101 ; 2 uses
  %i.nu = fmul float %i.ka, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.nw = fsub <2 x float> %i.nk, %i.nl
  %i.nx = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0207.0.copyload ; 2 uses
  %i.ny = extractelement <2 x float> %i.nx, i64 0
  %i.nz = fsub float %i.ny, %i.nh
  %i.oa = extractelement <2 x float> %i.nx, i64 1
  %i.ob = fadd float %i.oa, %i.nz                 ; 2 uses
  %i.oc = insertelement <2 x float> %i.ni, float %.sroa.2208.0.copyload, i64 0
  %i.od = fmul <2 x float> %i.el, %i.oc
  %i.oe = fadd <2 x float> %i.od, %i.nw           ; 3 uses
  %i.of = fmul <2 x float> %i.ei, %i.oe
  %i.og = shufflevector <2 x float> %i.oe, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.oh = insertelement <2 x float> %i.og, float %i.ob, i64 0
  %i.oi = fmul <2 x float> %i.ep, %i.oh
  %i.oj = fsub <2 x float> %i.of, %i.oi
  %i.ok = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.ob
  %foldExtExtBinop2485 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.oe
  %i.ol = extractelement <2 x float> %foldExtExtBinop2485, i64 1
  %i.om = fsub float %i.ok, %i.ol
  %i.on = fmul <2 x float> %i.oj, splat (float 2.000000e+00)
  %i.oo = fadd <2 x float> %.sroa.0207.0.copyload, %i.on
  %i.op = fmul float %i.om, 2.000000e+00
  %i.oq = fadd float %.sroa.2208.0.copyload, %i.op
  %i.or = fadd <2 x float> %i.fb, %i.oo
  %i.os = fadd float %i.fc, %i.oq
  %i.ot = fsub <2 x float> %i.np, %i.nq
  %i.ou = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0197.0.copyload ; 2 uses
  %i.ov = extractelement <2 x float> %i.ou, i64 0
  %i.ow = fsub float %i.ov, %i.nm
  %i.ox = extractelement <2 x float> %i.ou, i64 1
  %i.oy = fadd float %i.ox, %i.ow                 ; 2 uses
  %i.oz = insertelement <2 x float> %i.nn, float %.sroa.2198.0.copyload, i64 0
  %i.pa = fmul <2 x float> %i.el, %i.oz
  %i.pb = fadd <2 x float> %i.pa, %i.ot           ; 3 uses
  %i.pc = fmul <2 x float> %i.ei, %i.pb
  %i.pd = shufflevector <2 x float> %i.pb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
end_hunk_0
