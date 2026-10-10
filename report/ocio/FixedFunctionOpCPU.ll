Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FixedFunctionOpCPU?download=true
inline.NumInlined: 2146
inline.NumDeleted: 988
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK16OpenColorIO_v2_519Renderer_RGB_TO_HSV5applyEPKvPvl:bb.a
  %i.dq = fcmp olt float %.0, 0.000000e+00
  %i.dr = fadd nnan float %.0, 6.000000e+00
  %.1 = select i1 %i.dq, float %i.dr, float %.0
  %i.ds = fmul float %.1, f0x3E2AAAAB
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.g
  %.142 = phi float [ %.041, %bb.g ], [ 0.000000e+00, %.lr.ph ]
  %.2 = phi float [ %i.ds, %bb.g ], [ 0.000000e+00, %.lr.ph ]
  %i.dt = fcmp olt float %.sroa.speculated62, 0.000000e+00
  %i.du = fadd float %.sroa.speculated, %.sroa.speculated62
  %.044 = select i1 %i.dt, float %i.du, float %.sroa.speculated
  %i.dv = fneg float %.sroa.speculated62          ; 2 uses
  %i.dw = fcmp olt float %.sroa.speculated, %i.dv
  %i.dx = fdiv float %i.dd, %i.dv
  %.243 = select i1 %i.dw, float %i.dx, float %.142
  store float %.2, ptr %.04675, align 4, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %.04675, i64 4
  store float %.243, ptr %i.dy, align 4, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %.04675, i64 8
  store float %.044, ptr %i.dz, align 4, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %.04774, i64 12
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !16
  %i.ec = getelementptr inbounds nuw i8, ptr %.04675, i64 12
  store float %i.eb, ptr %i.ec, align 4, !tbaa !16
  %i.ed = getelementptr inbounds nuw i8, ptr %.04774, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %.04675, i64 16
  %i.ef = add nuw nsw i64 %.04576, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ef, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !169
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_HSV_TO_RGBC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_HSV_TO_RGBE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_HSV_TO_RGB5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader66, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %1, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader66, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.e = shl i64 %n.vec, 4                        ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %2, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.h  ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep60 = getelementptr i8, ptr %i.i, i64 16
  %i.j = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep61 = getelementptr i8, ptr %i.j, i64 32
  %i.k = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep62 = getelementptr i8, ptr %i.k, i64 48
  %next.gep63 = getelementptr i8, ptr %2, i64 %i.h
  %i.l = load float, ptr %next.gep, align 4, !tbaa !16, !alias.scope !177 ; 2 uses
  %i.m = load float, ptr %next.gep60, align 4, !tbaa !16, !alias.scope !177 ; 2 uses
  %i.n = load float, ptr %next.gep61, align 4, !tbaa !16, !alias.scope !177 ; 2 uses
  %i.o = load float, ptr %next.gep62, align 4, !tbaa !16, !alias.scope !177 ; 2 uses
  %i.p = insertelement <4 x float> poison, float %i.l, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3
  %i.t = tail call noundef float @llvm.floor.f32(float %i.l)
  %i.u = tail call noundef float @llvm.floor.f32(float %i.m)
  %i.v = tail call noundef float @llvm.floor.f32(float %i.n)
  %i.w = tail call noundef float @llvm.floor.f32(float %i.o)
  %i.x = insertelement <4 x float> poison, float %i.t, i64 0
  %i.y = insertelement <4 x float> %i.x, float %i.u, i64 1
  %i.z = insertelement <4 x float> %i.y, float %i.v, i64 2
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 3
  %i.ab = fsub <4 x float> %i.s, %i.aa
  %i.ac = fmul <4 x float> %i.ab, splat (float 6.000000e+00) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ae = getelementptr i8, ptr %i.i, i64 20
  %i.af = getelementptr i8, ptr %i.j, i64 36
  %i.ag = getelementptr i8, ptr %i.k, i64 52
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !16, !alias.scope !177
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !16, !alias.scope !177
  %i.aj = load float, ptr %i.af, align 4, !tbaa !16, !alias.scope !177
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !16, !alias.scope !177
  %i.al = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 3 ; 2 uses
  %i.ap = fcmp ogt <4 x float> %i.ao, zeroinitializer
  %i.aq = select <4 x i1> %i.ap, <4 x float> %i.ao, <4 x float> zeroinitializer ; 2 uses
  %i.ar = fcmp ogt <4 x float> %i.aq, splat (float 1.999000e+00)
  %i.as = select <4 x i1> %i.ar, <4 x float> splat (float 1.999000e+00), <4 x float> %i.aq ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.au = getelementptr i8, ptr %i.i, i64 24
  %i.av = getelementptr i8, ptr %i.j, i64 40
  %i.aw = getelementptr i8, ptr %i.k, i64 56
  %i.ax = load float, ptr %i.at, align 4, !tbaa !16, !alias.scope !177
  %i.ay = load float, ptr %i.au, align 4, !tbaa !16, !alias.scope !177
  %i.az = load float, ptr %i.av, align 4, !tbaa !16, !alias.scope !177
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !16, !alias.scope !177
  %i.bb = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 3 ; 6 uses
  %i.bf = fadd <4 x float> %i.ac, splat (float -3.000000e+00)
  %i.bg = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bf)
  %i.bh = fadd <4 x float> %i.bg, splat (float -1.000000e+00) ; 2 uses
  %i.bi = fcmp ogt <4 x float> %i.bh, zeroinitializer
  %i.bj = select <4 x i1> %i.bi, <4 x float> %i.bh, <4 x float> zeroinitializer ; 2 uses
  %i.bk = fadd <4 x float> %i.ac, splat (float -2.000000e+00)
  %i.bl = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bk)
  %i.bm = fsub <4 x float> splat (float 2.000000e+00), %i.bl ; 2 uses
  %i.bn = fcmp ogt <4 x float> %i.bm, zeroinitializer
  %i.bo = select <4 x i1> %i.bn, <4 x float> %i.bm, <4 x float> zeroinitializer ; 2 uses
  %i.bp = fadd <4 x float> %i.ac, splat (float -4.000000e+00)
  %i.bq = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bp)
  %i.br = fsub <4 x float> splat (float 2.000000e+00), %i.bq ; 2 uses
  %i.bs = fcmp ogt <4 x float> %i.br, zeroinitializer
  %i.bt = select <4 x i1> %i.bs, <4 x float> %i.br, <4 x float> zeroinitializer ; 2 uses
  %i.bu = fcmp ogt <4 x float> %i.bt, splat (float 1.000000e+00)
  %i.bv = select <4 x i1> %i.bu, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bt
  %i.bw = fsub <4 x float> splat (float 1.000000e+00), %i.as
  %i.bx = fmul <4 x float> %i.be, %i.bw           ; 2 uses
  %i.by = fcmp ogt <4 x float> %i.as, splat (float 1.000000e+00) ; 2 uses
  %i.bz = fsub <4 x float> splat (float 2.000000e+00), %i.as ; 2 uses
  %i.ca = fdiv <4 x float> %i.bx, %i.bz           ; 2 uses
  %i.cb = fsub <4 x float> %i.be, %i.ca
  %i.cc = select <4 x i1> %i.by, <4 x float> %i.cb, <4 x float> %i.be
  %i.cd = select <4 x i1> %i.by, <4 x float> %i.ca, <4 x float> %i.bx
  %i.ce = fcmp olt <4 x float> %i.be, zeroinitializer ; 2 uses
  %i.cf = fdiv <4 x float> %i.be, %i.bz           ; 2 uses
  %i.cg = fsub <4 x float> %i.be, %i.cf
  %i.ch = select <4 x i1> %i.ce, <4 x float> %i.cg, <4 x float> %i.cc
  %i.ci = select <4 x i1> %i.ce, <4 x float> %i.cf, <4 x float> %i.cd ; 3 uses
  %i.cj = fsub <4 x float> %i.ch, %i.ci           ; 2 uses
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.cj, <4 x float> %i.ci)
  %i.cl = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.cm = getelementptr i8, ptr %i.i, i64 28
  %i.cn = getelementptr i8, ptr %i.j, i64 44
  %i.co = getelementptr i8, ptr %i.k, i64 60
  %i.cp = load float, ptr %i.cl, align 4, !tbaa !16, !alias.scope !177
  %i.cq = load float, ptr %i.cm, align 4, !tbaa !16, !alias.scope !177
  %i.cr = load float, ptr %i.cn, align 4, !tbaa !16, !alias.scope !177
  %i.cs = load float, ptr %i.co, align 4, !tbaa !16, !alias.scope !177
  %i.ct = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 1
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 2
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 3
  %i.cx = shufflevector <4 x float> %i.bj, <4 x float> %i.bo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cy = fcmp ogt <8 x float> %i.cx, splat (float 1.000000e+00)
  %i.cz = shufflevector <4 x float> %i.bj, <4 x float> %i.bo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.da = select <8 x i1> %i.cy, <8 x float> splat (float 1.000000e+00), <8 x float> %i.cz
  %i.db = shufflevector <4 x float> %i.cj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dc = shufflevector <4 x float> %i.ci, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.da, <8 x float> %i.db, <8 x float> %i.dc)
  %i.de = shufflevector <4 x float> %i.ck, <4 x float> %i.cw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.dd, <8 x float> %i.de, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep63, align 4, !tbaa !16, !alias.scope !178, !noalias !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader66

.lr.ph.preheader66:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.058.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.04657.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.04756.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader66, %.lr.ph
  %.058 = phi ptr [ %i.ev, %.lr.ph ], [ %.058.ph, %.lr.ph.preheader66 ] ; 5 uses
  %.04657 = phi i64 [ %i.ex, %.lr.ph ], [ %.04657.ph, %.lr.ph.preheader66 ]
  %.04756 = phi ptr [ %i.ew, %.lr.ph ], [ %.04756.ph, %.lr.ph.preheader66 ] ; 4 uses
  %i.dg = load float, ptr %.058, align 4, !tbaa !16 ; 2 uses
  %i.dh = tail call noundef float @llvm.floor.f32(float %i.dg)
  %i.di = fsub float %i.dg, %i.dh
  %i.dj = fmul float %i.di, 6.000000e+00          ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.058, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !16 ; 2 uses
  %i.dm = fcmp ogt float %i.dl, 0.000000e+00
  %.sroa.speculated2.i = select i1 %i.dm, float %i.dl, float 0.000000e+00 ; 2 uses
  %i.dn = fcmp ogt float %.sroa.speculated2.i, 1.999000e+00
  %.sroa.speculated.i = select i1 %i.dn, float 1.999000e+00, float %.sroa.speculated2.i ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !16 ; 6 uses
  %i.dq = fadd float %i.dj, -3.000000e+00
  %i.dr = tail call noundef float @llvm.fabs.f32(float %i.dq)
  %4 = insertelement <2 x float> poison, float %i.dj, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fadd <2 x float> %5, <float -2.000000e+00, float -4.000000e+00>
  %7 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %6) ; 2 uses
  %8 = extractelement <2 x float> %7, i64 1
  %i.ds = fsub float 2.000000e+00, %8             ; 2 uses
  %i.dt = fcmp ogt float %i.ds, 0.000000e+00
  %.sroa.speculated2.i54 = select i1 %i.dt, float %i.ds, float 0.000000e+00 ; 2 uses
  %i.du = fcmp ogt float %.sroa.speculated2.i54, 1.000000e+00
  %.sroa.speculated.i55 = select i1 %i.du, float 1.000000e+00, float %.sroa.speculated2.i54
  %i.dv = fsub float 1.000000e+00, %.sroa.speculated.i
  %i.dw = fmul float %i.dp, %i.dv                 ; 2 uses
  %i.dx = fcmp ogt float %.sroa.speculated.i, 1.000000e+00 ; 2 uses
  %i.dy = fsub float 2.000000e+00, %.sroa.speculated.i ; 2 uses
  %i.dz = fdiv float %i.dw, %i.dy                 ; 2 uses
  %i.ea = fsub float %i.dp, %i.dz
  %.044 = select i1 %i.dx, float %i.ea, float %i.dp
  %.043 = select i1 %i.dx, float %i.dz, float %i.dw
  %i.eb = fcmp olt float %i.dp, 0.000000e+00      ; 2 uses
  %i.ec = fdiv float %i.dp, %i.dy                 ; 2 uses
  %i.ed = fsub float %i.dp, %i.ec
  %.145 = select i1 %i.eb, float %i.ed, float %.044
  %.1 = select i1 %i.eb, float %i.ec, float %.043 ; 3 uses
  %i.ee = fsub float %.145, %.1                   ; 2 uses
  %i.ef = insertelement <2 x float> <float poison, float 2.000000e+00>, float %i.dr, i64 0
  %9 = shufflevector <2 x float> <float 1.000000e+00, float poison>, <2 x float> %7, <2 x i32> <i32 0, i32 2>
  %i.eg = fsub <2 x float> %i.ef, %9              ; 2 uses
  %i.eh = fcmp ogt <2 x float> %i.eg, zeroinitializer
  %i.ei = select <2 x i1> %i.eh, <2 x float> %i.eg, <2 x float> zeroinitializer ; 2 uses
  %i.ej = fcmp ogt <2 x float> %i.ei, splat (float 1.000000e+00)
  %i.ek = select <2 x i1> %i.ej, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ei
  %i.el = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = insertelement <2 x float> poison, float %.1, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.em, <2 x float> %i.eo)
  store <2 x float> %i.ep, ptr %.04756, align 4, !tbaa !16
  %i.eq = tail call float @llvm.fmuladd.f32(float %.sroa.speculated.i55, float %i.ee, float %.1)
  %i.er = getelementptr inbounds nuw i8, ptr %.04756, i64 8
  store float %i.eq, ptr %i.er, align 4, !tbaa !16
  %i.es = getelementptr inbounds nuw i8, ptr %.058, i64 12
  %i.et = load float, ptr %i.es, align 4, !tbaa !16
  %i.eu = getelementptr inbounds nuw i8, ptr %.04756, i64 12
  store float %i.et, ptr %i.eu, align 4, !tbaa !16
  %i.ev = getelementptr inbounds nuw i8, ptr %.058, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %.04756, i64 16
  %i.ex = add nuw nsw i64 %.04657, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ex, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !176
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_513applyHSYToRGBEPKvPvlNS_19FixedFunctionOpData5StyleE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.p
  %.0145 = phi ptr [ %i.dl, %bb.p ], [ %0, %bb.a ] ; 5 uses
  %.0111144 = phi ptr [ %i.dm, %bb.p ], [ %1, %bb.a ] ; 4 uses
  %.0113143 = phi i64 [ %i.dn, %bb.p ], [ 0, %bb.a ]
  %i.b = load float, ptr %.0145, align 4, !tbaa !16
  %i.c = fadd float %i.b, f0xBE2AAAAB             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0145, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0145, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !16 ; 9 uses
  %i.h = fcmp olt float %i.g, 0.000000e+00
  %i.i = fadd float %i.c, 5.000000e-01
  %i.j = select i1 %i.h, float %i.i, float %i.c   ; 2 uses
  %i.k = tail call noundef float @llvm.floor.f32(float %i.j)
  %i.l = fsub float %i.j, %i.k
  %i.m = fmul float %i.l, 6.000000e+00            ; 3 uses
  %i.n = fadd float %i.m, -3.000000e+00
  %i.o = tail call noundef float @llvm.fabs.f32(float %i.n)
  %i.p = fadd float %i.o, -1.000000e+00           ; 3 uses
  %i.q = fcmp ogt float %i.p, 1.000000e+00
  br i1 %i.q, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = fcmp olt float %i.p, 0.000000e+00
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.s = phi float [ 1.000000e+00, %.lr.ph ], [ %i.p, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.t = fadd float %i.m, -2.000000e+00
  %i.u = tail call noundef float @llvm.fabs.f32(float %i.t) ; 2 uses
  %i.v = fsub float 2.000000e+00, %i.u            ; 2 uses
  %i.w = fcmp ogt float %i.v, 1.000000e+00
  br i1 %i.w, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = fcmp ogt float %i.u, 2.000000e+00
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.y = phi float [ 1.000000e+00, %bb.d ], [ %i.v, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.z = fadd float %i.m, -4.000000e+00
  %i.aa = tail call noundef float @llvm.fabs.f32(float %i.z) ; 2 uses
  %i.ab = fsub float 2.000000e+00, %i.aa          ; 2 uses
  %i.ac = fcmp ogt float %i.ab, 1.000000e+00
  br i1 %i.ac, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = fcmp ogt float %i.aa, 2.000000e+00
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ae = phi float [ 1.000000e+00, %bb.g ], [ %i.ab, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  %i.af = fmul float %i.y, 7.152000e-01
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.s, float 2.126000e-01, float %i.af)
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ae, float 7.220000e-02, float %i.ag)
  %i.ai = fdiv float %i.g, %i.ah                  ; 2 uses
  %i.aj = fmul float %i.ae, %i.ai                 ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.s, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.y, i64 1
  %i.am = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %i.al, %i.an           ; 3 uses
  %i.ap = insertelement <2 x float> poison, float %i.g, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = fsub <2 x float> %i.ao, %i.aq           ; 3 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = tail call noundef float @llvm.fabs.f32(float %i.as)
  %i.au = extractelement <2 x float> %i.ar, i64 1
  %i.av = tail call noundef float @llvm.fabs.f32(float %i.au)
  %i.aw = fadd float %i.at, %i.av
  %i.ax = fsub float %i.aj, %i.g                  ; 2 uses
  %i.ay = tail call noundef float @llvm.fabs.f32(float %i.ax)
  %i.az = fadd float %i.ay, %i.aw                 ; 5 uses
  switch i32 %3, label %bb.o [
    i32 39, label %bb.k
    i32 40, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %shift = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ao, %shift
  %i.ba = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bb = fadd float %i.aj, %i.ba                 ; 2 uses
  %i.bc = fdiv float %i.e, 1.400000e+00           ; 4 uses
  %i.bd = fneg float %i.bc                        ; 3 uses
  %i.be = fmul float %i.bc, 3.000000e+00
  %i.bf = fmul float %i.g, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bb, float %i.bf)
  %i.bh = fadd float %i.bg, %i.az                 ; 2 uses
  %i.bi = fcmp ogt float %i.bh, f0x358637BD
  %.sroa.speculated139 = select i1 %i.bi, float %i.bh, float f0x358637BD
  %i.bj = fmul float %i.az, 5.000000e+00          ; 3 uses
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.g, float 3.000000e+00, float 1.500000e-01) ; 3 uses
  %i.bl = fmul float %i.bc, %i.bk
  %i.bm = fadd float %i.g, -1.000000e-03
  %i.bn = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bm, i64 1
  %i.bp = insertelement <2 x float> <float poison, float f0x3C1374BC>, float %.sroa.speculated139, i64 0
  %i.bq = fdiv <2 x float> %i.bo, %i.bp           ; 2 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0 ; 2 uses
  %i.bs = fcmp ogt float %i.br, 5.000000e+01
  %.sroa.speculated133 = select i1 %i.bs, float 5.000000e+01, float %i.br
  %i.bt = extractelement <2 x float> %i.bq, i64 1 ; 3 uses
  %i.bu = fcmp ogt float %i.bt, 1.000000e+00
  %i.bv = fcmp olt float %i.bt, 0.000000e+00
  %i.bw = select i1 %i.bv, float 0.000000e+00, float %i.bt
  %i.bx = select i1 %i.bu, float 1.000000e+00, float %i.bw ; 4 uses
  %i.by = fcmp oeq float %i.bx, 1.000000e+00
  br i1 %i.by, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = fcmp ogt float %i.bj, 1.000000e-10
  %.sroa.speculated128 = select i1 %i.bz, float %i.bj, float 1.000000e-10
  %i.ca = fdiv float %i.bc, %.sroa.speculated128
  %i.cb = fcmp oeq float %i.bx, 0.000000e+00
  br i1 %i.cb, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = fsub float 1.000000e+00, %i.bx
  %i.cd = fmul float %i.cc, %i.bj                 ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.g, float -3.000000e+00, float %i.bb) ; 2 uses
  %i.cf = fmul float %i.ce, %i.cd
  %i.cg = fmul float %i.bx, %i.az
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.bk, float %i.cg)
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.ce, float %i.ch) ; 3 uses
  %i.cj = fmul float %i.bk, %i.bd                 ; 2 uses
  %i.ck = fmul float %i.cf, 4.000000e+00
  %i.cl = fneg float %i.cj
  %i.cm = fmul float %i.ck, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.cm)
  %i.co = tail call noundef float @sqrtf(float noundef %i.cn) #24 ; 2 uses
  %i.cp = fneg float %i.co
  %i.cq = fsub float %i.cp, %i.ci                 ; 2 uses
  %i.cr = fmul float %i.cj, 2.000000e+00          ; 2 uses
  %i.cs = fdiv float %i.cr, %i.cq                 ; 2 uses
  %i.ct = fcmp ult float %i.cs, 0.000000e+00
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.co, float 2.000000e+00, float %i.cq)
  %i.cv = fdiv float %i.cr, %i.cu
  %i.cw = select i1 %i.ct, float %i.cv, float %i.cs
  br label %bb.p

bb.n:                                             ; preds = %bb.j
  %i.cx = fmul float %i.az, 4.000000e+00          ; 2 uses
  %i.cy = fcmp ogt float %i.cx, 1.000000e-10
  %.sroa.speculated123 = select i1 %i.cy, float %i.cx, float 1.000000e-10
  %i.cz = fdiv float %i.e, %.sroa.speculated123
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.da = fmul float %i.az, 1.250000e+00          ; 2 uses
  %i.db = fcmp ogt float %i.da, 1.000000e-10
  %.sroa.speculated = select i1 %i.db, float %i.da, float 1.000000e-10
  %i.dc = fdiv float %i.e, %.sroa.speculated
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.n, %bb.o
  %.1 = phi float [ %i.dc, %bb.o ], [ %i.cz, %bb.n ], [ %i.ca, %bb.l ], [ %i.cw, %bb.m ], [ %.sroa.speculated133, %bb.k ] ; 2 uses
  %i.dd = insertelement <2 x float> poison, float %.1, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.ar, <2 x float> %i.aq)
  store <2 x float> %i.df, ptr %.0111144, align 4, !tbaa !16
  %i.dg = tail call float @llvm.fmuladd.f32(float %.1, float %i.ax, float %i.g)
  %i.dh = getelementptr inbounds nuw i8, ptr %.0111144, i64 8
  store float %i.dg, ptr %i.dh, align 4, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %.0145, i64 12
  %i.dj = load float, ptr %i.di, align 4, !tbaa !16
  %i.dk = getelementptr inbounds nuw i8, ptr %.0111144, i64 12
  store float %i.dj, ptr %i.dk, align 4, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %.0145, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.0111144, i64 16
  %i.dn = add nuw nsw i64 %.0113143, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !179
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader113, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %2, 4                            ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 %i.b
  %i.d = getelementptr i8, ptr %0, i64 %i.b
  %bound0 = icmp ult ptr %1, %i.d
  %bound1 = icmp ult ptr %0, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader113, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, 9223372036854775804        ; 4 uses
  %i.e = shl i64 %n.vec, 4                        ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %1, i64 %i.e
  %i.h = icmp eq i32 %3, 37
  %predphi.v = select i1 %i.h, <4 x float> splat (float 4.000000e+00), <4 x float> splat (float 1.250000e+00)
  %i.i = icmp eq i32 %3, 36
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.j  ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 %i.j       ; 4 uses
  %next.gep101 = getelementptr i8, ptr %i.k, i64 16
  %i.l = getelementptr i8, ptr %0, i64 %i.j       ; 4 uses
  %next.gep102 = getelementptr i8, ptr %i.l, i64 32
  %i.m = getelementptr i8, ptr %0, i64 %i.j       ; 4 uses
  %next.gep103 = getelementptr i8, ptr %i.m, i64 48
  %next.gep104 = getelementptr i8, ptr %1, i64 %i.j
  %i.n = load float, ptr %next.gep, align 4, !tbaa !16, !alias.scope !185
  %i.o = load float, ptr %next.gep101, align 4, !tbaa !16, !alias.scope !185
  %i.p = load float, ptr %next.gep102, align 4, !tbaa !16, !alias.scope !185
  %i.q = load float, ptr %next.gep103, align 4, !tbaa !16, !alias.scope !185
  %i.r = insertelement <4 x float> poison, float %i.n, i64 0
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 1
  %i.t = insertelement <4 x float> %i.s, float %i.p, i64 2
  %i.u = insertelement <4 x float> %i.t, float %i.q, i64 3 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.w = getelementptr i8, ptr %i.k, i64 20
  %i.x = getelementptr i8, ptr %i.l, i64 36
  %i.y = getelementptr i8, ptr %i.m, i64 52
  %i.z = load float, ptr %i.v, align 4, !tbaa !16, !alias.scope !185
  %i.aa = load float, ptr %i.w, align 4, !tbaa !16, !alias.scope !185
  %i.ab = load float, ptr %i.x, align 4, !tbaa !16, !alias.scope !185
  %i.ac = load float, ptr %i.y, align 4, !tbaa !16, !alias.scope !185
  %i.ad = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.ab, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.ac, i64 3 ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ai = getelementptr i8, ptr %i.k, i64 24
  %i.aj = getelementptr i8, ptr %i.l, i64 40
  %i.ak = getelementptr i8, ptr %i.m, i64 56
  %i.al = load float, ptr %i.ah, align 4, !tbaa !16, !alias.scope !185
  %i.am = load float, ptr %i.ai, align 4, !tbaa !16, !alias.scope !185
  %i.an = load float, ptr %i.aj, align 4, !tbaa !16, !alias.scope !185
  %i.ao = load float, ptr %i.ak, align 4, !tbaa !16, !alias.scope !185
  %i.ap = insertelement <4 x float> poison, float %i.al, i64 0
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 1
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 2
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 3 ; 9 uses
  %i.at = fcmp olt <4 x float> %i.ag, %i.u
  %i.au = select <4 x i1> %i.at, <4 x float> %i.ag, <4 x float> %i.u ; 2 uses
  %i.av = fcmp olt <4 x float> %i.as, %i.au
  %i.aw = select <4 x i1> %i.av, <4 x float> %i.as, <4 x float> %i.au ; 2 uses
  %i.ax = fcmp olt <4 x float> %i.u, %i.ag
  %i.ay = select <4 x i1> %i.ax, <4 x float> %i.ag, <4 x float> %i.u ; 2 uses
  %i.az = fcmp olt <4 x float> %i.ay, %i.as
  %i.ba = select <4 x i1> %i.az, <4 x float> %i.as, <4 x float> %i.ay ; 4 uses
  %i.bb = fmul <4 x float> %i.ag, splat (float 7.152000e-01)
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> splat (float 2.126000e-01), <4 x float> %i.bb)
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> splat (float 7.220000e-02), <4 x float> %i.bc) ; 5 uses
  %i.be = fsub <4 x float> %i.u, %i.bd
  %i.bf = fsub <4 x float> %i.ag, %i.bd
  %i.bg = fsub <4 x float> %i.as, %i.bd
  %i.bh = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.be)
  %i.bi = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bf)
  %i.bj = fadd <4 x float> %i.bh, %i.bi
  %i.bk = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bg)
  %i.bl = fadd <4 x float> %i.bk, %i.bj           ; 4 uses
  %i.bm = fadd <4 x float> %i.u, %i.ag
  %i.bn = fadd <4 x float> %i.bm, %i.as
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> splat (float 7.000000e-02), <4 x float> splat (float f0x358637BD)) ; 2 uses
  %i.bp = fadd <4 x float> %i.bn, splat (float 1.500000e-01) ; 2 uses
  %i.bq = fcmp olt <4 x float> %i.bo, %i.bp
  %i.br = select <4 x i1> %i.bq, <4 x float> %i.bp, <4 x float> %i.bo
  %i.bs = fdiv <4 x float> %i.bl, %i.br
  %i.bt = fmul <4 x float> %i.bl, splat (float 5.000000e+00) ; 2 uses
  %i.bu = fadd <4 x float> %i.bd, splat (float -1.000000e-03)
  %i.bv = fdiv <4 x float> %i.bu, splat (float f0x3C1374BC) ; 3 uses
  %i.bw = fcmp ogt <4 x float> %i.bv, splat (float 1.000000e+00)
  %i.bx = fcmp olt <4 x float> %i.bv, zeroinitializer
  %i.by = select <4 x i1> %i.bx, <4 x float> zeroinitializer, <4 x float> %i.bv
  %i.bz = select <4 x i1> %i.bw, <4 x float> splat (float 1.000000e+00), <4 x float> %i.by
  %i.ca = fsub <4 x float> %i.bs, %i.bt
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.ca, <4 x float> %i.bt)
  %i.cc = fmul <4 x float> %i.cb, splat (float 1.400000e+00)
  %predphi = fmul <4 x float> %i.bl, %predphi.v
  %predphi105 = select i1 %i.i, <4 x float> %i.cc, <4 x float> %predphi
  %i.cd = fcmp une <4 x float> %i.aw, %i.ba       ; 3 uses
  %i.ce = fsub <4 x float> %i.ba, %i.aw
  %i.cf = fcmp oeq <4 x float> %i.u, %i.ba        ; 2 uses
  %i.cg = xor <4 x i1> %i.cf, splat (i1 true)
  %i.ch = select <4 x i1> %i.cd, <4 x i1> %i.cg, <4 x i1> zeroinitializer
  %i.ci = fcmp une <4 x float> %i.ag, %i.ba
  %i.cj = select <4 x i1> %i.ch, <4 x i1> %i.ci, <4 x i1> zeroinitializer ; 2 uses
  %i.ck = fsub <4 x float> %i.u, %i.ag
  %i.cl = fsub <4 x float> %i.as, %i.u
  %i.cm = select <4 x i1> %i.cd, <4 x i1> %i.cf, <4 x i1> zeroinitializer ; 2 uses
  %i.cn = fsub <4 x float> %i.ag, %i.as
  %predphi106 = select <4 x i1> %i.cj, <4 x float> %i.ck, <4 x float> %i.cl
  %predphi107 = select <4 x i1> %i.cm, <4 x float> %i.cn, <4 x float> %predphi106
  %predphi108 = select <4 x i1> %i.cj, <4 x float> splat (float 5.000000e+00), <4 x float> splat (float 3.000000e+00)
  %predphi109 = select <4 x i1> %i.cm, <4 x float> splat (float 1.000000e+00), <4 x float> %predphi108
  %i.co = fdiv <4 x float> %predphi107, %i.ce
  %i.cp = fadd <4 x float> %i.co, %predphi109
  %i.cq = fmul <4 x float> %i.cp, splat (float f0x3E2AAAAB)
  %predphi110 = select <4 x i1> %i.cd, <4 x float> %i.cq, <4 x float> zeroinitializer
  %i.cr = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.cs = getelementptr i8, ptr %i.k, i64 28
  %i.ct = getelementptr i8, ptr %i.l, i64 44
  %i.cu = getelementptr i8, ptr %i.m, i64 60
  %i.cv = load float, ptr %i.cr, align 4, !tbaa !16, !alias.scope !185
  %i.cw = load float, ptr %i.cs, align 4, !tbaa !16, !alias.scope !185
  %i.cx = load float, ptr %i.ct, align 4, !tbaa !16, !alias.scope !185
  %i.cy = load float, ptr %i.cu, align 4, !tbaa !16, !alias.scope !185
  %i.cz = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.da = insertelement <4 x float> %i.cz, float %i.cw, i64 1
  %i.db = insertelement <4 x float> %i.da, float %i.cx, i64 2
  %i.dc = insertelement <4 x float> %i.db, float %i.cy, i64 3
  %i.dd = shufflevector <4 x float> %predphi110, <4 x float> %predphi105, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.de = shufflevector <4 x float> %i.bd, <4 x float> %i.dc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.dd, <8 x float> %i.de, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep104, align 4, !tbaa !16, !alias.scope !186, !noalias !185
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader113

.lr.ph.preheader113:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.04993.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.05092.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  %.05291.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader113, %bb.l
  %.04993 = phi ptr [ %i.fa, %bb.l ], [ %.04993.ph, %.lr.ph.preheader113 ] ; 4 uses
  %.05092 = phi ptr [ %i.fb, %bb.l ], [ %.05092.ph, %.lr.ph.preheader113 ] ; 5 uses
  %.05291 = phi i64 [ %i.fc, %bb.l ], [ %.05291.ph, %.lr.ph.preheader113 ]
  %i.dg = load float, ptr %.04993, align 4, !tbaa !16 ; 10 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.04993, i64 4
  %4 = load <2 x float>, ptr %i.dh, align 4, !tbaa !16 ; 3 uses
  %5 = extractelement <2 x float> %4, i64 1       ; 8 uses
  %6 = extractelement <2 x float> %4, i64 0       ; 9 uses
  %i.di = fcmp olt float %6, %i.dg
  %.sroa.speculated83 = select i1 %i.di, float %6, float %i.dg ; 2 uses
  %i.dj = fcmp olt float %5, %.sroa.speculated83
  %.sroa.speculated72 = select i1 %i.dj, float %5, float %.sroa.speculated83 ; 2 uses
  %i.dk = fcmp olt float %i.dg, %6
  %.sroa.speculated80 = select i1 %i.dk, float %6, float %i.dg ; 2 uses
  %i.dl = fcmp olt float %.sroa.speculated80, %5
  %.sroa.speculated69 = select i1 %i.dl, float %5, float %.sroa.speculated80 ; 4 uses
  %i.dm = fmul float %6, 7.152000e-01
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dg, float 2.126000e-01, float %i.dm)
  %i.do = tail call float @llvm.fmuladd.f32(float %5, float 7.220000e-02, float %i.dn) ; 4 uses
  %i.dp = fsub float %i.dg, %i.do
  %7 = insertelement <2 x float> poison, float %i.do, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fsub <2 x float> %4, %8
  %i.dq = tail call noundef float @llvm.fabs.f32(float %i.dp)
  %10 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %9) ; 2 uses
  %11 = extractelement <2 x float> %10, i64 0
  %i.dr = fadd float %i.dq, %11
  %12 = extractelement <2 x float> %10, i64 1
  %i.ds = fadd float %12, %i.dr                   ; 5 uses
  switch i32 %3, label %bb.d [
    i32 36, label %bb.b
    i32 37, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.dt = fadd float %i.dg, %6
  %i.du = fadd float %i.dt, %5
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.ds, float 7.000000e-02, float f0x358637BD) ; 2 uses
  %i.dw = fadd float %i.du, 1.500000e-01          ; 2 uses
  %i.dx = fcmp olt float %i.dv, %i.dw
  %.sroa.speculated = select i1 %i.dx, float %i.dw, float %i.dv
  %i.dy = fdiv float %i.ds, %.sroa.speculated
  %i.dz = fmul float %i.ds, 5.000000e+00          ; 2 uses
  %i.ea = fadd float %i.do, -1.000000e-03
  %i.eb = fdiv float %i.ea, f0x3C1374BC           ; 3 uses
  %i.ec = fcmp ogt float %i.eb, 1.000000e+00
  %i.ed = fcmp olt float %i.eb, 0.000000e+00
  %i.ee = select i1 %i.ed, float 0.000000e+00, float %i.eb
  %i.ef = select i1 %i.ec, float 1.000000e+00, float %i.ee
  %i.eg = fsub float %i.dy, %i.dz
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.eg, float %i.dz)
  %i.ei = fmul float %i.eh, 1.400000e+00
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.ej = fmul float %i.ds, 4.000000e+00
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ek = fmul float %i.ds, 1.250000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.051 = phi float [ %i.ei, %bb.b ], [ %i.ej, %bb.c ], [ %i.ek, %bb.d ]
  %i.el = fcmp une float %.sroa.speculated72, %.sroa.speculated69
  br i1 %i.el, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.em = fsub float %.sroa.speculated69, %.sroa.speculated72
  %i.en = fcmp oeq float %i.dg, %.sroa.speculated69
  br i1 %i.en, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.eo = fsub float %6, %5
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ep = fcmp oeq float %6, %.sroa.speculated69
  br i1 %i.ep, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.eq = fsub float %5, %i.dg
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.er = fsub float %i.dg, %6
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.sink99 = phi float [ %i.eq, %bb.i ], [ %i.er, %bb.j ], [ %i.eo, %bb.g ]
  %.sink98 = phi float [ 3.000000e+00, %bb.i ], [ 5.000000e+00, %bb.j ], [ 1.000000e+00, %bb.g ]
  %i.es = fdiv float %.sink99, %i.em
  %i.et = fadd float %i.es, %.sink98
  %i.eu = fmul float %i.et, f0x3E2AAAAB
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %.1 = phi float [ %i.eu, %bb.k ], [ 0.000000e+00, %bb.e ]
  store float %.1, ptr %.05092, align 4, !tbaa !16
  %i.ev = getelementptr inbounds nuw i8, ptr %.05092, i64 4
  store float %.051, ptr %i.ev, align 4, !tbaa !16
  %i.ew = getelementptr inbounds nuw i8, ptr %.05092, i64 8
  store float %i.do, ptr %i.ew, align 4, !tbaa !16
  %i.ex = getelementptr inbounds nuw i8, ptr %.04993, i64 12
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !16
  %i.ez = getelementptr inbounds nuw i8, ptr %.05092, i64 12
  store float %i.ey, ptr %i.ez, align 4, !tbaa !16
  %i.fa = getelementptr inbounds nuw i8, ptr %.04993, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %.05092, i64 16
  %i.fc = add nuw nsw i64 %.05291, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.fc, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !184
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_LOGC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_LOGE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_523Renderer_RGB_TO_HSY_LOG5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.i.preheader, label %_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %1, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.e = shl i64 %n.vec, 4                        ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %2, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.h  ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep6 = getelementptr i8, ptr %i.i, i64 16
  %i.j = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep7 = getelementptr i8, ptr %i.j, i64 32
  %i.k = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep8 = getelementptr i8, ptr %i.k, i64 48
  %next.gep9 = getelementptr i8, ptr %2, i64 %i.h
  %i.l = load float, ptr %next.gep, align 4, !tbaa !16, !alias.scope !192
  %i.m = load float, ptr %next.gep6, align 4, !tbaa !16, !alias.scope !192
  %i.n = load float, ptr %next.gep7, align 4, !tbaa !16, !alias.scope !192
  %i.o = load float, ptr %next.gep8, align 4, !tbaa !16, !alias.scope !192
  %i.p = insertelement <4 x float> poison, float %i.l, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.u = getelementptr i8, ptr %i.i, i64 20
  %i.v = getelementptr i8, ptr %i.j, i64 36
  %i.w = getelementptr i8, ptr %i.k, i64 52
  %i.x = load float, ptr %i.t, align 4, !tbaa !16, !alias.scope !192
  %i.y = load float, ptr %i.u, align 4, !tbaa !16, !alias.scope !192
  %i.z = load float, ptr %i.v, align 4, !tbaa !16, !alias.scope !192
  %i.aa = load float, ptr %i.w, align 4, !tbaa !16, !alias.scope !192
  %i.ab = insertelement <4 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 1
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 2
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 3 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ag = getelementptr i8, ptr %i.i, i64 24
  %i.ah = getelementptr i8, ptr %i.j, i64 40
  %i.ai = getelementptr i8, ptr %i.k, i64 56
  %i.aj = load float, ptr %i.af, align 4, !tbaa !16, !alias.scope !192
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !16, !alias.scope !192
  %i.al = load float, ptr %i.ah, align 4, !tbaa !16, !alias.scope !192
  %i.am = load float, ptr %i.ai, align 4, !tbaa !16, !alias.scope !192
  %i.an = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 2
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 3 ; 8 uses
  %i.ar = fcmp olt <4 x float> %i.ae, %i.s
  %i.as = select <4 x i1> %i.ar, <4 x float> %i.ae, <4 x float> %i.s ; 2 uses
  %i.at = fcmp olt <4 x float> %i.aq, %i.as
  %i.au = select <4 x i1> %i.at, <4 x float> %i.aq, <4 x float> %i.as ; 2 uses
  %i.av = fcmp olt <4 x float> %i.s, %i.ae
  %i.aw = select <4 x i1> %i.av, <4 x float> %i.ae, <4 x float> %i.s ; 2 uses
  %i.ax = fcmp olt <4 x float> %i.aw, %i.aq
  %i.ay = select <4 x i1> %i.ax, <4 x float> %i.aq, <4 x float> %i.aw ; 4 uses
  %i.az = fmul <4 x float> %i.ae, splat (float 7.152000e-01)
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> splat (float 2.126000e-01), <4 x float> %i.az)
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> splat (float 7.220000e-02), <4 x float> %i.ba) ; 4 uses
  %i.bc = fsub <4 x float> %i.s, %i.bb
  %i.bd = fsub <4 x float> %i.ae, %i.bb
  %i.be = fsub <4 x float> %i.aq, %i.bb
  %i.bf = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bc)
  %i.bg = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bd)
  %i.bh = fadd <4 x float> %i.bf, %i.bg
  %i.bi = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.be)
  %i.bj = fadd <4 x float> %i.bi, %i.bh
  %i.bk = fmul <4 x float> %i.bj, splat (float 4.000000e+00)
  %i.bl = fcmp une <4 x float> %i.au, %i.ay       ; 3 uses
  %i.bm = fsub <4 x float> %i.ay, %i.au
  %i.bn = fcmp oeq <4 x float> %i.s, %i.ay        ; 2 uses
  %i.bo = xor <4 x i1> %i.bn, splat (i1 true)
  %i.bp = select <4 x i1> %i.bl, <4 x i1> %i.bo, <4 x i1> zeroinitializer
  %i.bq = fcmp oeq <4 x float> %i.ae, %i.ay
  %i.br = fsub <4 x float> %i.s, %i.ae
  %i.bs = select <4 x i1> %i.bp, <4 x i1> %i.bq, <4 x i1> zeroinitializer ; 2 uses
  %i.bt = fsub <4 x float> %i.aq, %i.s
  %i.bu = select <4 x i1> %i.bl, <4 x i1> %i.bn, <4 x i1> zeroinitializer ; 2 uses
  %i.bv = fsub <4 x float> %i.ae, %i.aq
  %predphi = select <4 x i1> %i.bs, <4 x float> %i.bt, <4 x float> %i.br
  %predphi10 = select <4 x i1> %i.bu, <4 x float> %i.bv, <4 x float> %predphi
  %predphi11 = select <4 x i1> %i.bs, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float 5.000000e+00)
  %predphi12 = select <4 x i1> %i.bu, <4 x float> splat (float 1.000000e+00), <4 x float> %predphi11
  %i.bw = fdiv <4 x float> %predphi10, %i.bm
  %i.bx = fadd <4 x float> %i.bw, %predphi12
  %i.by = fmul <4 x float> %i.bx, splat (float f0x3E2AAAAB)
  %predphi13 = select <4 x i1> %i.bl, <4 x float> %i.by, <4 x float> zeroinitializer
  %i.bz = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.ca = getelementptr i8, ptr %i.i, i64 28
  %i.cb = getelementptr i8, ptr %i.j, i64 44
  %i.cc = getelementptr i8, ptr %i.k, i64 60
  %i.cd = load float, ptr %i.bz, align 4, !tbaa !16, !alias.scope !192
  %i.ce = load float, ptr %i.ca, align 4, !tbaa !16, !alias.scope !192
  %i.cf = load float, ptr %i.cb, align 4, !tbaa !16, !alias.scope !192
  %i.cg = load float, ptr %i.cc, align 4, !tbaa !16, !alias.scope !192
  %i.ch = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 2
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 3
  %i.cl = shufflevector <4 x float> %predphi13, <4 x float> %i.bk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cm = shufflevector <4 x float> %i.bb, <4 x float> %i.ck, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.cl, <8 x float> %i.cm, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep9, align 4, !tbaa !16, !alias.scope !193, !noalias !192
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.04993.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.f, %middle.block ]
  %.05092.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.preheader ], [ %i.g, %middle.block ]
  %.05291.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader16, %bb.h
  %.04993.i = phi ptr [ %i.dr, %bb.h ], [ %.04993.i.ph, %.lr.ph.i.preheader16 ] ; 4 uses
  %.05092.i = phi ptr [ %i.ds, %bb.h ], [ %.05092.i.ph, %.lr.ph.i.preheader16 ] ; 5 uses
  %.05291.i = phi i64 [ %i.dt, %bb.h ], [ %.05291.i.ph, %.lr.ph.i.preheader16 ]
  %i.co = load float, ptr %.04993.i, align 4, !tbaa !16 ; 9 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.04993.i, i64 4
  %4 = load <2 x float>, ptr %i.cp, align 4, !tbaa !16 ; 3 uses
  %5 = extractelement <2 x float> %4, i64 1       ; 7 uses
  %6 = extractelement <2 x float> %4, i64 0       ; 8 uses
  %i.cq = fcmp olt float %6, %i.co
  %.sroa.speculated83.i = select i1 %i.cq, float %6, float %i.co ; 2 uses
  %i.cr = fcmp olt float %5, %.sroa.speculated83.i
  %.sroa.speculated72.i = select i1 %i.cr, float %5, float %.sroa.speculated83.i ; 2 uses
  %i.cs = fcmp olt float %i.co, %6
  %.sroa.speculated80.i = select i1 %i.cs, float %6, float %i.co ; 2 uses
  %i.ct = fcmp olt float %.sroa.speculated80.i, %5
  %.sroa.speculated69.i = select i1 %i.ct, float %5, float %.sroa.speculated80.i ; 4 uses
  %i.cu = fmul float %6, 7.152000e-01
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.co, float 2.126000e-01, float %i.cu)
  %i.cw = tail call float @llvm.fmuladd.f32(float %5, float 7.220000e-02, float %i.cv) ; 3 uses
  %i.cx = fsub float %i.co, %i.cw
  %7 = insertelement <2 x float> poison, float %i.cw, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fsub <2 x float> %4, %8
  %i.cy = tail call noundef float @llvm.fabs.f32(float %i.cx)
  %10 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %9) ; 2 uses
  %11 = extractelement <2 x float> %10, i64 0
  %i.cz = fadd float %i.cy, %11
  %12 = extractelement <2 x float> %10, i64 1
  %i.da = fadd float %12, %i.cz
  %i.db = fmul float %i.da, 4.000000e+00
  %i.dc = fcmp une float %.sroa.speculated72.i, %.sroa.speculated69.i
  br i1 %i.dc, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph.i
  %i.dd = fsub float %.sroa.speculated69.i, %.sroa.speculated72.i
  %i.de = fcmp oeq float %i.co, %.sroa.speculated69.i
  br i1 %i.de, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.df = fsub float %6, %5
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.dg = fcmp oeq float %6, %.sroa.speculated69.i
  br i1 %i.dg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dh = fsub float %5, %i.co
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.di = fsub float %i.co, %6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.sink99.i = phi float [ %i.dh, %bb.e ], [ %i.di, %bb.f ], [ %i.df, %bb.c ]
  %.sink98.i = phi float [ 3.000000e+00, %bb.e ], [ 5.000000e+00, %bb.f ], [ 1.000000e+00, %bb.c ]
  %i.dj = fdiv float %.sink99.i, %i.dd
  %i.dk = fadd float %i.dj, %.sink98.i
  %i.dl = fmul float %i.dk, f0x3E2AAAAB
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.1.i = phi float [ %i.dl, %bb.g ], [ 0.000000e+00, %.lr.ph.i ]
  store float %.1.i, ptr %.05092.i, align 4, !tbaa !16
  %i.dm = getelementptr inbounds nuw i8, ptr %.05092.i, i64 4
  store float %i.db, ptr %i.dm, align 4, !tbaa !16
  %i.dn = getelementptr inbounds nuw i8, ptr %.05092.i, i64 8
  store float %i.cw, ptr %i.dn, align 4, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %.04993.i, i64 12
  %i.dp = load float, ptr %i.do, align 4, !tbaa !16
  %i.dq = getelementptr inbounds nuw i8, ptr %.05092.i, i64 12
  store float %i.dp, ptr %i.dq, align 4, !tbaa !16
  %i.dr = getelementptr inbounds nuw i8, ptr %.04993.i, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %.05092.i, i64 16
  %i.dt = add nuw nsw i64 %.05291.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dt, %3
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit, label %.lr.ph.i, !llvm.loop !191

_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit: ; preds = %bb.h, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523Renderer_HSY_LOG_TO_RGBC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_523Renderer_HSY_LOG_TO_RGBE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_523Renderer_HSY_LOG_TO_RGB5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_513applyHSYToRGBEPKvPvlNS_19FixedFunctionOpData5StyleE(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 40)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_LINC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_LINE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_523Renderer_RGB_TO_HSY_LIN5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 36)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGBC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGBE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGB5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_513applyHSYToRGBEPKvPvlNS_19FixedFunctionOpData5StyleE(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 39)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VIDC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VIDE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VID5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.i.preheader, label %_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %1, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.e = shl i64 %n.vec, 4                        ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %2, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.h  ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep6 = getelementptr i8, ptr %i.i, i64 16
  %i.j = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep7 = getelementptr i8, ptr %i.j, i64 32
  %i.k = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep8 = getelementptr i8, ptr %i.k, i64 48
  %next.gep9 = getelementptr i8, ptr %2, i64 %i.h
  %i.l = load float, ptr %next.gep, align 4, !tbaa !16, !alias.scope !199
  %i.m = load float, ptr %next.gep6, align 4, !tbaa !16, !alias.scope !199
  %i.n = load float, ptr %next.gep7, align 4, !tbaa !16, !alias.scope !199
  %i.o = load float, ptr %next.gep8, align 4, !tbaa !16, !alias.scope !199
  %i.p = insertelement <4 x float> poison, float %i.l, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.u = getelementptr i8, ptr %i.i, i64 20
  %i.v = getelementptr i8, ptr %i.j, i64 36
  %i.w = getelementptr i8, ptr %i.k, i64 52
  %i.x = load float, ptr %i.t, align 4, !tbaa !16, !alias.scope !199
  %i.y = load float, ptr %i.u, align 4, !tbaa !16, !alias.scope !199
  %i.z = load float, ptr %i.v, align 4, !tbaa !16, !alias.scope !199
  %i.aa = load float, ptr %i.w, align 4, !tbaa !16, !alias.scope !199
  %i.ab = insertelement <4 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 1
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 2
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 3 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ag = getelementptr i8, ptr %i.i, i64 24
  %i.ah = getelementptr i8, ptr %i.j, i64 40
  %i.ai = getelementptr i8, ptr %i.k, i64 56
  %i.aj = load float, ptr %i.af, align 4, !tbaa !16, !alias.scope !199
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !16, !alias.scope !199
  %i.al = load float, ptr %i.ah, align 4, !tbaa !16, !alias.scope !199
  %i.am = load float, ptr %i.ai, align 4, !tbaa !16, !alias.scope !199
  %i.an = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 2
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 3 ; 8 uses
  %i.ar = fcmp olt <4 x float> %i.ae, %i.s
  %i.as = select <4 x i1> %i.ar, <4 x float> %i.ae, <4 x float> %i.s ; 2 uses
  %i.at = fcmp olt <4 x float> %i.aq, %i.as
  %i.au = select <4 x i1> %i.at, <4 x float> %i.aq, <4 x float> %i.as ; 2 uses
  %i.av = fcmp olt <4 x float> %i.s, %i.ae
  %i.aw = select <4 x i1> %i.av, <4 x float> %i.ae, <4 x float> %i.s ; 2 uses
  %i.ax = fcmp olt <4 x float> %i.aw, %i.aq
  %i.ay = select <4 x i1> %i.ax, <4 x float> %i.aq, <4 x float> %i.aw ; 4 uses
  %i.az = fmul <4 x float> %i.ae, splat (float 7.152000e-01)
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> splat (float 2.126000e-01), <4 x float> %i.az)
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> splat (float 7.220000e-02), <4 x float> %i.ba) ; 4 uses
  %i.bc = fsub <4 x float> %i.s, %i.bb
  %i.bd = fsub <4 x float> %i.ae, %i.bb
  %i.be = fsub <4 x float> %i.aq, %i.bb
  %i.bf = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bc)
  %i.bg = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bd)
  %i.bh = fadd <4 x float> %i.bf, %i.bg
  %i.bi = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.be)
  %i.bj = fadd <4 x float> %i.bi, %i.bh
  %i.bk = fmul <4 x float> %i.bj, splat (float 1.250000e+00)
  %i.bl = fcmp une <4 x float> %i.au, %i.ay       ; 3 uses
  %i.bm = fsub <4 x float> %i.ay, %i.au
  %i.bn = fcmp oeq <4 x float> %i.s, %i.ay        ; 2 uses
  %i.bo = xor <4 x i1> %i.bn, splat (i1 true)
  %i.bp = select <4 x i1> %i.bl, <4 x i1> %i.bo, <4 x i1> zeroinitializer
  %i.bq = fcmp oeq <4 x float> %i.ae, %i.ay
  %i.br = fsub <4 x float> %i.s, %i.ae
  %i.bs = select <4 x i1> %i.bp, <4 x i1> %i.bq, <4 x i1> zeroinitializer ; 2 uses
  %i.bt = fsub <4 x float> %i.aq, %i.s
  %i.bu = select <4 x i1> %i.bl, <4 x i1> %i.bn, <4 x i1> zeroinitializer ; 2 uses
  %i.bv = fsub <4 x float> %i.ae, %i.aq
  %predphi = select <4 x i1> %i.bs, <4 x float> %i.bt, <4 x float> %i.br
  %predphi10 = select <4 x i1> %i.bu, <4 x float> %i.bv, <4 x float> %predphi
  %predphi11 = select <4 x i1> %i.bs, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float 5.000000e+00)
  %predphi12 = select <4 x i1> %i.bu, <4 x float> splat (float 1.000000e+00), <4 x float> %predphi11
  %i.bw = fdiv <4 x float> %predphi10, %i.bm
  %i.bx = fadd <4 x float> %i.bw, %predphi12
  %i.by = fmul <4 x float> %i.bx, splat (float f0x3E2AAAAB)
  %predphi13 = select <4 x i1> %i.bl, <4 x float> %i.by, <4 x float> zeroinitializer
  %i.bz = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.ca = getelementptr i8, ptr %i.i, i64 28
  %i.cb = getelementptr i8, ptr %i.j, i64 44
  %i.cc = getelementptr i8, ptr %i.k, i64 60
  %i.cd = load float, ptr %i.bz, align 4, !tbaa !16, !alias.scope !199
  %i.ce = load float, ptr %i.ca, align 4, !tbaa !16, !alias.scope !199
  %i.cf = load float, ptr %i.cb, align 4, !tbaa !16, !alias.scope !199
  %i.cg = load float, ptr %i.cc, align 4, !tbaa !16, !alias.scope !199
  %i.ch = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 2
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 3
  %i.cl = shufflevector <4 x float> %predphi13, <4 x float> %i.bk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cm = shufflevector <4 x float> %i.bb, <4 x float> %i.ck, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.cl, <8 x float> %i.cm, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep9, align 4, !tbaa !16, !alias.scope !200, !noalias !199
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.04993.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.f, %middle.block ]
  %.05092.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.preheader ], [ %i.g, %middle.block ]
  %.05291.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader16, %bb.h
  %.04993.i = phi ptr [ %i.dr, %bb.h ], [ %.04993.i.ph, %.lr.ph.i.preheader16 ] ; 4 uses
  %.05092.i = phi ptr [ %i.ds, %bb.h ], [ %.05092.i.ph, %.lr.ph.i.preheader16 ] ; 5 uses
  %.05291.i = phi i64 [ %i.dt, %bb.h ], [ %.05291.i.ph, %.lr.ph.i.preheader16 ]
  %i.co = load float, ptr %.04993.i, align 4, !tbaa !16 ; 9 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.04993.i, i64 4
  %4 = load <2 x float>, ptr %i.cp, align 4, !tbaa !16 ; 3 uses
  %5 = extractelement <2 x float> %4, i64 1       ; 7 uses
  %6 = extractelement <2 x float> %4, i64 0       ; 8 uses
  %i.cq = fcmp olt float %6, %i.co
  %.sroa.speculated83.i = select i1 %i.cq, float %6, float %i.co ; 2 uses
  %i.cr = fcmp olt float %5, %.sroa.speculated83.i
  %.sroa.speculated72.i = select i1 %i.cr, float %5, float %.sroa.speculated83.i ; 2 uses
  %i.cs = fcmp olt float %i.co, %6
  %.sroa.speculated80.i = select i1 %i.cs, float %6, float %i.co ; 2 uses
  %i.ct = fcmp olt float %.sroa.speculated80.i, %5
  %.sroa.speculated69.i = select i1 %i.ct, float %5, float %.sroa.speculated80.i ; 4 uses
  %i.cu = fmul float %6, 7.152000e-01
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.co, float 2.126000e-01, float %i.cu)
  %i.cw = tail call float @llvm.fmuladd.f32(float %5, float 7.220000e-02, float %i.cv) ; 3 uses
  %i.cx = fsub float %i.co, %i.cw
  %7 = insertelement <2 x float> poison, float %i.cw, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fsub <2 x float> %4, %8
  %i.cy = tail call noundef float @llvm.fabs.f32(float %i.cx)
  %10 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %9) ; 2 uses
  %11 = extractelement <2 x float> %10, i64 0
  %i.cz = fadd float %i.cy, %11
  %12 = extractelement <2 x float> %10, i64 1
  %i.da = fadd float %12, %i.cz
  %i.db = fmul float %i.da, 1.250000e+00
  %i.dc = fcmp une float %.sroa.speculated72.i, %.sroa.speculated69.i
  br i1 %i.dc, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph.i
  %i.dd = fsub float %.sroa.speculated69.i, %.sroa.speculated72.i
  %i.de = fcmp oeq float %i.co, %.sroa.speculated69.i
  br i1 %i.de, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.df = fsub float %6, %5
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.dg = fcmp oeq float %6, %.sroa.speculated69.i
  br i1 %i.dg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dh = fsub float %5, %i.co
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.di = fsub float %i.co, %6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.sink99.i = phi float [ %i.dh, %bb.e ], [ %i.di, %bb.f ], [ %i.df, %bb.c ]
  %.sink98.i = phi float [ 3.000000e+00, %bb.e ], [ 5.000000e+00, %bb.f ], [ 1.000000e+00, %bb.c ]
  %i.dj = fdiv float %.sink99.i, %i.dd
  %i.dk = fadd float %i.dj, %.sink98.i
  %i.dl = fmul float %i.dk, f0x3E2AAAAB
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.1.i = phi float [ %i.dl, %bb.g ], [ 0.000000e+00, %.lr.ph.i ]
  store float %.1.i, ptr %.05092.i, align 4, !tbaa !16
  %i.dm = getelementptr inbounds nuw i8, ptr %.05092.i, i64 4
  store float %i.db, ptr %i.dm, align 4, !tbaa !16
  %i.dn = getelementptr inbounds nuw i8, ptr %.05092.i, i64 8
  store float %i.cw, ptr %i.dn, align 4, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %.04993.i, i64 12
  %i.dp = load float, ptr %i.do, align 4, !tbaa !16
  %i.dq = getelementptr inbounds nuw i8, ptr %.05092.i, i64 12
  store float %i.dp, ptr %i.dq, align 4, !tbaa !16
  %i.dr = getelementptr inbounds nuw i8, ptr %.04993.i, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %.05092.i, i64 16
  %i.dt = add nuw nsw i64 %.05291.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dt, %3
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit, label %.lr.ph.i, !llvm.loop !198

_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit: ; preds = %bb.h, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGB5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_513applyHSYToRGBEPKvPvlNS_19FixedFunctionOpData5StyleE(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 41)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_XYZ_TO_xyYC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_XYZ_TO_xyYE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_XYZ_TO_xyY5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %1, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.e = shl i64 %n.vec, 4                        ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %2, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.h  ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep32 = getelementptr i8, ptr %i.i, i64 16
  %i.j = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.j, i64 32
  %i.k = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.k, i64 48
  %next.gep35 = getelementptr i8, ptr %2, i64 %i.h
  %i.l = load float, ptr %next.gep, align 4, !tbaa !16, !alias.scope !206
  %i.m = load float, ptr %next.gep32, align 4, !tbaa !16, !alias.scope !206
  %i.n = load float, ptr %next.gep33, align 4, !tbaa !16, !alias.scope !206
  %i.o = load float, ptr %next.gep34, align 4, !tbaa !16, !alias.scope !206
  %i.p = insertelement <4 x float> poison, float %i.l, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.u = getelementptr i8, ptr %i.i, i64 20
  %i.v = getelementptr i8, ptr %i.j, i64 36
  %i.w = getelementptr i8, ptr %i.k, i64 52
  %i.x = load float, ptr %i.t, align 4, !tbaa !16, !alias.scope !206
  %i.y = load float, ptr %i.u, align 4, !tbaa !16, !alias.scope !206
  %i.z = load float, ptr %i.v, align 4, !tbaa !16, !alias.scope !206
  %i.aa = load float, ptr %i.w, align 4, !tbaa !16, !alias.scope !206
  %i.ab = insertelement <4 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 1
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 2
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 3 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ag = getelementptr i8, ptr %i.i, i64 24
  %i.ah = getelementptr i8, ptr %i.j, i64 40
  %i.ai = getelementptr i8, ptr %i.k, i64 56
  %i.aj = load float, ptr %i.af, align 4, !tbaa !16, !alias.scope !206
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !16, !alias.scope !206
  %i.al = load float, ptr %i.ah, align 4, !tbaa !16, !alias.scope !206
  %i.am = load float, ptr %i.ai, align 4, !tbaa !16, !alias.scope !206
  %i.an = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 2
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 3
  %i.ar = fadd <4 x float> %i.s, %i.ae
  %i.as = fadd <4 x float> %i.ar, %i.aq           ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.au = getelementptr i8, ptr %i.i, i64 28
  %i.av = getelementptr i8, ptr %i.j, i64 44
  %i.aw = getelementptr i8, ptr %i.k, i64 60
  %i.ax = load float, ptr %i.at, align 4, !tbaa !16, !alias.scope !206
  %i.ay = load float, ptr %i.au, align 4, !tbaa !16, !alias.scope !206
  %i.az = load float, ptr %i.av, align 4, !tbaa !16, !alias.scope !206
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !16, !alias.scope !206
  %i.bb = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 3
  %i.bf = shufflevector <4 x float> %i.s, <4 x float> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bg = shufflevector <4 x float> %i.as, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bh = fcmp oeq <8 x float> %i.bg, zeroinitializer
  %i.bi = shufflevector <4 x float> %i.as, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bj = fdiv <8 x float> splat (float 1.000000e+00), %i.bi
  %i.bk = select <8 x i1> %i.bh, <8 x float> zeroinitializer, <8 x float> %i.bj
  %i.bl = fmul <8 x float> %i.bf, %i.bk
  %i.bm = shufflevector <4 x float> %i.ae, <4 x float> %i.be, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bl, <8 x float> %i.bm, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep35, align 4, !tbaa !16, !alias.scope !207, !noalias !206
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader38

.lr.ph.preheader38:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.030.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.02629.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  %.02728.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader38, %.lr.ph
  %.030 = phi ptr [ %i.cf, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader38 ] ; 4 uses
  %.02629 = phi ptr [ %i.cg, %.lr.ph ], [ %.02629.ph, %.lr.ph.preheader38 ] ; 4 uses
  %.02728 = phi i64 [ %i.ch, %.lr.ph ], [ %.02728.ph, %.lr.ph.preheader38 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.030, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !16
  %i.bq = load <2 x float>, ptr %.030, align 4, !tbaa !16 ; 3 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0
  %i.bs = extractelement <2 x float> %i.bq, i64 1 ; 2 uses
  %i.bt = fadd float %i.br, %i.bs
  %i.bu = fadd float %i.bt, %i.bp                 ; 2 uses
  %i.bv = fcmp oeq float %i.bu, 0.000000e+00
  %i.bw = fdiv float 1.000000e+00, %i.bu
  %i.bx = select i1 %i.bv, float 0.000000e+00, float %i.bw
  %i.by = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x float> %i.bq, %i.bz
  store <2 x float> %i.ca, ptr %.02629, align 4, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %.02629, i64 8
  store float %i.bs, ptr %i.cb, align 4, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %.030, i64 12
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %.02629, i64 12
  store float %i.cd, ptr %i.ce, align 4, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.02629, i64 16
  %i.ch = add nuw nsw i64 %.02728, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ch, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !205
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_xyY_TO_XYZC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_xyY_TO_XYZE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_LINESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #24, !inline_history !419
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !89
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VIDESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VIDESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #24, !inline_history !420
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VIDESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VIDESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VIDESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !89
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #24, !inline_history !421
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !89
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = distinct !{!3, !22}
!4 = distinct !{null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"float", !9, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTSN16OpenColorIO_v2_55OpCPUE"}
!18 = !{!"_ZTSN16OpenColorIO_v2_526Renderer_ACES_RedMod03_FwdE", !17, i64 0, !15, i64 8, !15, i64 12, !15, i64 16}
!19 = !{!18, !15, i64 16}
!20 = !{!18, !15, i64 12}
!21 = !{!18, !15, i64 8}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"_ZTSN16OpenColorIO_v2_526Renderer_ACES_RedMod10_FwdE", !17, i64 0, !15, i64 8, !15, i64 12, !15, i64 16}
!24 = !{!23, !15, i64 16}
!25 = !{!23, !15, i64 12}
!26 = !{!23, !15, i64 8}
!27 = !{!"_ZTSN16OpenColorIO_v2_524Renderer_ACES_Glow03_FwdE", !17, i64 0, !15, i64 8, !15, i64 12}
!28 = !{!27, !15, i64 8}
!29 = !{!27, !15, i64 12}
!30 = !{!"_ZTSN16OpenColorIO_v2_529Renderer_ACES_DarkToDim10_FwdE", !17, i64 0, !15, i64 8}
!31 = !{!30, !15, i64 8}
!32 = !{!"any pointer", !9, i64 0}
!33 = !{!"p1 _ZTSN16OpenColorIO_v2_519FixedFunctionOpDataE", !32, i64 0}
!34 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !32, i64 0}
!35 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0}
!36 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0, !35, i64 8}
!37 = !{!36, !33, i64 0}
!38 = !{!"p1 double", !32, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!40 = !{!39, !38, i64 0}
!41 = !{!"double", !9, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"_ZTSN16OpenColorIO_v2_529Renderer_ACES_GamutComp13_FwdE", !17, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44}
!44 = !{!43, !15, i64 20}
!45 = !{!43, !15, i64 24}
!46 = !{!43, !15, i64 32}
!47 = !{!43, !15, i64 40}
!48 = !{!43, !15, i64 28}
!49 = !{!43, !15, i64 44}
!50 = !{!"_ZTSSt12__mutex_base", !9, i64 0}
!51 = !{!"_ZTSSt5mutex", !50, i64 0}
!52 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!53 = !{!"p1 omnipotent char", !32, i64 0}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !53, i64 0}
!55 = !{!"long", !9, i64 0}
!56 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !54, i64 0, !55, i64 8, !9, i64 16}
!57 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !32, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !60, i64 0}
!62 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !32, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!64 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !63, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !64, i64 0}
!66 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !65, i64 0}
!67 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !52, i64 0, !56, i64 8, !56, i64 40, !61, i64 72, !66, i64 96}
!68 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !51, i64 8, !67, i64 48}
!69 = !{!"_ZTSN16OpenColorIO_v2_519FixedFunctionOpData5StyleE", !9, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !39, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorIdSaIdEE", !71, i64 0}
!73 = !{!"_ZTSN16OpenColorIO_v2_519FixedFunctionOpDataE", !68, i64 0, !69, i64 168, !72, i64 176}
!74 = !{!73, !69, i64 168}
!75 = !{!"bool", !9, i64 0}
!76 = !{!"_ZTSSt5arrayIfLm9EE", !9, i64 0}
!77 = !{!"_ZTSN16OpenColorIO_v2_55ACES29JMhParamsE", !76, i64 0, !76, i64 36, !76, i64 72, !76, i64 108, !15, i64 144, !15, i64 148, !15, i64 152, !15, i64 156, !15, i64 160}
!78 = !{!"_ZTSN16OpenColorIO_v2_55ACES215ToneScaleParamsE", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40}
!79 = !{!"_ZTSSt5arrayIfLm363EE", !9, i64 0}
!80 = !{!"_ZTSN16OpenColorIO_v2_55ACES27Table1DE", !79, i64 0}
!81 = !{!"_ZTSN16OpenColorIO_v2_55ACES227SharedCompressionParametersE", !15, i64 0, !15, i64 4, !80, i64 8}
!82 = !{!"_ZTSN16OpenColorIO_v2_55ACES220ChromaCompressParamsE", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!83 = !{!"_ZTSSt5arrayIiLm2EE", !9, i64 0}
!84 = !{!"_ZTSSt5arrayIA3_fLm363EE", !9, i64 0}
!85 = !{!"_ZTSN16OpenColorIO_v2_55ACES27Table3DE", !84, i64 0}
!86 = !{!"_ZTSN16OpenColorIO_v2_55ACES219GamutCompressParamsE", !15, i64 0, !15, i64 4, !15, i64 8, !83, i64 12, !80, i64 20, !85, i64 1472}
!87 = !{!"_ZTSN16OpenColorIO_v2_531Renderer_ACES_OutputTransform20E", !17, i64 0, !75, i64 8, !77, i64 12, !77, i64 176, !78, i64 340, !81, i64 384, !82, i64 1844, !86, i64 1860}
!88 = !{!87, !75, i64 8}
!89 = !{!9, !9, i64 0}
!90 = !{i64 0, i64 36, !89, i64 36, i64 36, !89, i64 72, i64 36, !89, i64 108, i64 36, !89, i64 144, i64 4, !16, i64 148, i64 4, !16, i64 152, i64 4, !16, i64 156, i64 4, !16, i64 160, i64 4, !16}
!91 = !{i64 0, i64 4, !16, i64 4, i64 4, !16, i64 8, i64 4, !16, i64 12, i64 4, !16, i64 16, i64 4, !16, i64 20, i64 4, !16, i64 24, i64 4, !16, i64 28, i64 4, !16, i64 32, i64 4, !16, i64 36, i64 4, !16, i64 40, i64 4, !16}
!92 = !{i8 0, i8 2}
!93 = !{}
!94 = !{!87, !15, i64 1856}
!95 = !{!"_ZTSN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20E", !17, i64 0, !75, i64 8, !77, i64 12}
!96 = !{!95, !75, i64 8}
!97 = !{!"_ZTSN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20E", !17, i64 0, !75, i64 8, !77, i64 12, !78, i64 176, !81, i64 220, !82, i64 1680}
!98 = !{!97, !75, i64 8}
!99 = !{!97, !15, i64 1692}
!100 = !{!"_ZTSN16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_20E", !17, i64 0, !75, i64 8, !81, i64 12, !86, i64 1472}
!101 = !{!100, !75, i64 8}
!102 = !{!"_ZTSN16OpenColorIO_v2_525Renderer_REC2100_SurroundE", !17, i64 0, !15, i64 8, !15, i64 12}
!103 = !{!102, !15, i64 12}
!104 = !{!102, !15, i64 8}
!105 = !{!"llvm.loop.isvectorized", i32 1}
!106 = !{!"llvm.loop.unroll.runtime.disable"}
!107 = !{!39, !38, i64 8}
!108 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!109 = !{!38, !38, i64 0}
!110 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!111 = !{!"_ZTSN16OpenColorIO_v2_525Renderer_LIN_TO_GAMMA_LOG12GammaSegmentE", !15, i64 0, !15, i64 4, !15, i64 8}
!112 = !{!"_ZTSN16OpenColorIO_v2_525Renderer_LIN_TO_GAMMA_LOG10LogSegmentE", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16}
!113 = !{!"_ZTSN16OpenColorIO_v2_525Renderer_LIN_TO_GAMMA_LOGE", !17, i64 0, !15, i64 8, !15, i64 12, !111, i64 16, !112, i64 28}
!114 = !{!113, !15, i64 8}
!115 = !{!113, !15, i64 12}
!116 = !{!113, !15, i64 20}
!117 = !{!113, !15, i64 24}
!118 = !{!113, !15, i64 16}
!119 = !{!113, !15, i64 32}
!120 = !{!113, !15, i64 40}
!121 = !{!113, !15, i64 44}
!122 = !{!113, !15, i64 36}
!123 = !{!"_ZTSN16OpenColorIO_v2_525Renderer_GAMMA_LOG_TO_LINE", !113, i64 0, !15, i64 48, !15, i64 52}
!124 = !{!123, !15, i64 48}
!125 = !{!123, !15, i64 52}
!126 = !{!"_ZTSN16OpenColorIO_v2_526Renderer_LIN_TO_DOUBLE_LOG10LinSegmentE", !15, i64 0, !15, i64 4}
!127 = !{!"_ZTSN16OpenColorIO_v2_526Renderer_LIN_TO_DOUBLE_LOG10LogSegmentE", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!128 = !{!"_ZTSN16OpenColorIO_v2_526Renderer_LIN_TO_DOUBLE_LOGE", !17, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !127, i64 20, !127, i64 36, !126, i64 52}
!129 = !{!128, !15, i64 16}
!130 = !{!128, !15, i64 32}
!131 = !{!128, !15, i64 20}
!132 = !{!128, !15, i64 36}
!133 = !{!128, !15, i64 56}
!134 = !{!128, !15, i64 12}
!135 = !{!128, !15, i64 28}
!136 = !{!128, !15, i64 24}
!137 = !{!128, !15, i64 52}
!138 = !{!128, !15, i64 44}
!139 = !{!128, !15, i64 48}
!140 = !{!128, !15, i64 40}
!141 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!142 = !{!141, !10, i64 8}
!143 = !{!141, !10, i64 12}
!144 = !{!35, !34, i64 0}
!145 = !{!"p1 _ZTSN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20E", !32, i64 0}
!146 = !{!"p1 _ZTSN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20E", !32, i64 0}
!147 = !{!10, !10, i64 0}
!148 = !{!"_ZTSSt9type_info", !53, i64 8}
!149 = !{!148, !53, i64 8}
!150 = distinct !{!150, !22}
!151 = distinct !{!151, !22}
!152 = distinct !{!152, !22}
!153 = distinct !{!153, !22}
!154 = distinct !{!154, !22}
!155 = distinct !{!155, !22}
!156 = distinct !{!156, !22}
!157 = distinct !{!157, !22}
!158 = distinct !{!158, !22}
!159 = !{!43, !15, i64 36}
!160 = distinct !{!160, !22}
!161 = distinct !{!161, !22}
!162 = distinct !{!162, !22}
!163 = distinct !{!163, !22}
!164 = distinct !{!164, !22}
end_hunk_1
