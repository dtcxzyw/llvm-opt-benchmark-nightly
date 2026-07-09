inline.NumInlined: 2146
inline.NumDeleted: 989
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK16OpenColorIO_v2_519Renderer_RGB_TO_HSV5applyEPKvPvl:bb.a
  %i.dn = fcmp olt float %.041, 0.000000e+00
  %i.do = fadd nnan float %.041, 6.000000e+00
  %.1 = select i1 %i.dn, float %i.do, float %.041
  %i.dp = fmul float %.1, f0x3E2AAAAB
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.g
  %.143 = phi float [ %.042, %bb.g ], [ 0.000000e+00, %.lr.ph ]
  %.2 = phi float [ %i.dp, %bb.g ], [ 0.000000e+00, %.lr.ph ]
  %i.dq = fcmp olt float %.sroa.speculated62, 0.000000e+00
  %i.dr = fadd float %.sroa.speculated, %.sroa.speculated62
  %.045 = select i1 %i.dq, float %i.dr, float %.sroa.speculated
  %i.ds = fneg float %.sroa.speculated62          ; 2 uses
  %i.dt = fcmp olt float %.sroa.speculated, %i.ds
  %i.du = fdiv float %i.da, %i.ds
  %.244 = select i1 %i.dt, float %i.du, float %.143
  store float %.2, ptr %.04675, align 4, !tbaa !9
  %i.dv = getelementptr inbounds nuw i8, ptr %.04675, i64 4
  store float %.244, ptr %i.dv, align 4, !tbaa !9
  %i.dw = getelementptr inbounds nuw i8, ptr %.04675, i64 8
  store float %.045, ptr %i.dw, align 4, !tbaa !9
  %i.dx = getelementptr inbounds nuw i8, ptr %.076, i64 12
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !9
  %i.dz = getelementptr inbounds nuw i8, ptr %.04675, i64 12
  store float %i.dy, ptr %i.dz, align 4, !tbaa !9
  %i.ea = getelementptr inbounds nuw i8, ptr %.076, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.04675, i64 16
  %i.ec = add nuw nsw i64 %.04774, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ec, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_HSV_TO_RGBC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_HSV_TO_RGBE, i64 16), ptr %0, align 8, !tbaa !7
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
  %scevgep = getelementptr i8, ptr %2, i64 %i.b
  %scevgep59 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep59
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader66, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.c = shl i64 %n.vec, 4                        ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %2, i64 %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.f  ; 4 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep60 = getelementptr i8, ptr %i.g, i64 16
  %i.h = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep61 = getelementptr i8, ptr %i.h, i64 32
  %i.i = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep62 = getelementptr i8, ptr %i.i, i64 48
  %next.gep63 = getelementptr i8, ptr %2, i64 %i.f
  %i.j = load float, ptr %next.gep, align 4, !tbaa !9, !alias.scope !127 ; 2 uses
  %i.k = load float, ptr %next.gep60, align 4, !tbaa !9, !alias.scope !127 ; 2 uses
  %i.l = load float, ptr %next.gep61, align 4, !tbaa !9, !alias.scope !127 ; 2 uses
  %i.m = load float, ptr %next.gep62, align 4, !tbaa !9, !alias.scope !127 ; 2 uses
  %i.n = insertelement <4 x float> poison, float %i.j, i64 0
  %i.o = insertelement <4 x float> %i.n, float %i.k, i64 1
  %i.p = insertelement <4 x float> %i.o, float %i.l, i64 2
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 3
  %i.r = tail call noundef float @llvm.floor.f32(float %i.j)
  %i.s = tail call noundef float @llvm.floor.f32(float %i.k)
  %i.t = tail call noundef float @llvm.floor.f32(float %i.l)
  %i.u = tail call noundef float @llvm.floor.f32(float %i.m)
  %i.v = insertelement <4 x float> poison, float %i.r, i64 0
  %i.w = insertelement <4 x float> %i.v, float %i.s, i64 1
  %i.x = insertelement <4 x float> %i.w, float %i.t, i64 2
  %i.y = insertelement <4 x float> %i.x, float %i.u, i64 3
  %i.z = fsub <4 x float> %i.q, %i.y
  %i.aa = fmul <4 x float> %i.z, splat (float 6.000000e+00) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ac = getelementptr i8, ptr %i.g, i64 20
  %i.ad = getelementptr i8, ptr %i.h, i64 36
  %i.ae = getelementptr i8, ptr %i.i, i64 52
  %i.af = load float, ptr %i.ab, align 4, !tbaa !9, !alias.scope !127
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !9, !alias.scope !127
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !9, !alias.scope !127
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !9, !alias.scope !127
  %i.aj = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 1
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 2
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 3 ; 2 uses
  %i.an = fcmp ogt <4 x float> %i.am, zeroinitializer
  %i.ao = select <4 x i1> %i.an, <4 x float> %i.am, <4 x float> zeroinitializer ; 2 uses
  %i.ap = fcmp ogt <4 x float> %i.ao, splat (float 1.999000e+00)
  %i.aq = select <4 x i1> %i.ap, <4 x float> splat (float 1.999000e+00), <4 x float> %i.ao ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.as = getelementptr i8, ptr %i.g, i64 24
  %i.at = getelementptr i8, ptr %i.h, i64 40
  %i.au = getelementptr i8, ptr %i.i, i64 56
  %i.av = load float, ptr %i.ar, align 4, !tbaa !9, !alias.scope !127
  %i.aw = load float, ptr %i.as, align 4, !tbaa !9, !alias.scope !127
  %i.ax = load float, ptr %i.at, align 4, !tbaa !9, !alias.scope !127
  %i.ay = load float, ptr %i.au, align 4, !tbaa !9, !alias.scope !127
  %i.az = insertelement <4 x float> poison, float %i.av, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 1
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 2
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 3 ; 6 uses
  %i.bd = fadd <4 x float> %i.aa, splat (float -3.000000e+00)
  %i.be = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bd)
  %i.bf = fadd <4 x float> %i.be, splat (float -1.000000e+00) ; 2 uses
  %i.bg = fcmp ogt <4 x float> %i.bf, zeroinitializer
  %i.bh = select <4 x i1> %i.bg, <4 x float> %i.bf, <4 x float> zeroinitializer ; 2 uses
  %i.bi = fadd <4 x float> %i.aa, splat (float -2.000000e+00)
  %i.bj = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bi)
  %i.bk = fsub <4 x float> splat (float 2.000000e+00), %i.bj ; 2 uses
  %i.bl = fcmp ogt <4 x float> %i.bk, zeroinitializer
  %i.bm = select <4 x i1> %i.bl, <4 x float> %i.bk, <4 x float> zeroinitializer ; 2 uses
  %i.bn = fadd <4 x float> %i.aa, splat (float -4.000000e+00)
  %i.bo = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bn)
  %i.bp = fsub <4 x float> splat (float 2.000000e+00), %i.bo ; 2 uses
  %i.bq = fcmp ogt <4 x float> %i.bp, zeroinitializer
  %i.br = select <4 x i1> %i.bq, <4 x float> %i.bp, <4 x float> zeroinitializer ; 2 uses
  %i.bs = fcmp ogt <4 x float> %i.br, splat (float 1.000000e+00)
  %i.bt = select <4 x i1> %i.bs, <4 x float> splat (float 1.000000e+00), <4 x float> %i.br
  %i.bu = fsub <4 x float> splat (float 1.000000e+00), %i.aq
  %i.bv = fmul <4 x float> %i.bc, %i.bu           ; 2 uses
  %i.bw = fcmp ogt <4 x float> %i.aq, splat (float 1.000000e+00) ; 2 uses
  %i.bx = fsub <4 x float> splat (float 2.000000e+00), %i.aq ; 2 uses
  %i.by = fdiv <4 x float> %i.bv, %i.bx           ; 2 uses
  %i.bz = fsub <4 x float> %i.bc, %i.by
  %i.ca = select <4 x i1> %i.bw, <4 x float> %i.bz, <4 x float> %i.bc
  %i.cb = select <4 x i1> %i.bw, <4 x float> %i.by, <4 x float> %i.bv
  %i.cc = fcmp olt <4 x float> %i.bc, zeroinitializer ; 2 uses
  %i.cd = fdiv <4 x float> %i.bc, %i.bx           ; 2 uses
  %i.ce = fsub <4 x float> %i.bc, %i.cd
  %i.cf = select <4 x i1> %i.cc, <4 x float> %i.ce, <4 x float> %i.ca
  %i.cg = select <4 x i1> %i.cc, <4 x float> %i.cd, <4 x float> %i.cb ; 3 uses
  %i.ch = fsub <4 x float> %i.cf, %i.cg           ; 2 uses
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.ch, <4 x float> %i.cg)
  %i.cj = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.ck = getelementptr i8, ptr %i.g, i64 28
  %i.cl = getelementptr i8, ptr %i.h, i64 44
  %i.cm = getelementptr i8, ptr %i.i, i64 60
  %i.cn = load float, ptr %i.cj, align 4, !tbaa !9, !alias.scope !127
  %i.co = load float, ptr %i.ck, align 4, !tbaa !9, !alias.scope !127
  %i.cp = load float, ptr %i.cl, align 4, !tbaa !9, !alias.scope !127
  %i.cq = load float, ptr %i.cm, align 4, !tbaa !9, !alias.scope !127
  %i.cr = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 3
  %i.cv = shufflevector <4 x float> %i.bh, <4 x float> %i.bm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cw = fcmp ogt <8 x float> %i.cv, splat (float 1.000000e+00)
  %i.cx = shufflevector <4 x float> %i.bh, <4 x float> %i.bm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cy = select <8 x i1> %i.cw, <8 x float> splat (float 1.000000e+00), <8 x float> %i.cx
  %i.cz = shufflevector <4 x float> %i.ch, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.da = shufflevector <4 x float> %i.cg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.db = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cy, <8 x float> %i.cz, <8 x float> %i.da)
  %i.dc = shufflevector <4 x float> %i.ci, <4 x float> %i.cu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.db, <8 x float> %i.dc, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep63, align 4, !tbaa !9, !alias.scope !130, !noalias !127
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader66

.lr.ph.preheader66:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.058.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.04657.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.04756.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader66, %.lr.ph
  %.058 = phi ptr [ %i.et, %.lr.ph ], [ %.058.ph, %.lr.ph.preheader66 ] ; 5 uses
  %.04657 = phi ptr [ %i.eu, %.lr.ph ], [ %.04657.ph, %.lr.ph.preheader66 ] ; 4 uses
  %.04756 = phi i64 [ %i.ev, %.lr.ph ], [ %.04756.ph, %.lr.ph.preheader66 ]
  %i.de = load float, ptr %.058, align 4, !tbaa !9 ; 2 uses
  %i.df = tail call noundef float @llvm.floor.f32(float %i.de)
  %i.dg = fsub float %i.de, %i.df
  %i.dh = fmul float %i.dg, 6.000000e+00          ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.058, i64 4
  %i.dj = load float, ptr %i.di, align 4, !tbaa !9 ; 2 uses
  %i.dk = fcmp ogt float %i.dj, 0.000000e+00
  %.sroa.speculated2.i = select i1 %i.dk, float %i.dj, float 0.000000e+00 ; 2 uses
  %i.dl = fcmp ogt float %.sroa.speculated2.i, 1.999000e+00
  %.sroa.speculated.i = select i1 %i.dl, float 1.999000e+00, float %.sroa.speculated2.i ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !9 ; 6 uses
  %i.do = fadd float %i.dh, -4.000000e+00
  %i.dp = tail call noundef float @llvm.fabs.f32(float %i.do)
  %i.dq = fsub float 2.000000e+00, %i.dp          ; 2 uses
  %i.dr = fcmp ogt float %i.dq, 0.000000e+00
  %.sroa.speculated2.i54 = select i1 %i.dr, float %i.dq, float 0.000000e+00 ; 2 uses
  %i.ds = fcmp ogt float %.sroa.speculated2.i54, 1.000000e+00
  %.sroa.speculated.i55 = select i1 %i.ds, float 1.000000e+00, float %.sroa.speculated2.i54
  %i.dt = fsub float 1.000000e+00, %.sroa.speculated.i
  %i.du = fmul float %i.dn, %i.dt                 ; 2 uses
  %i.dv = fcmp ogt float %.sroa.speculated.i, 1.000000e+00 ; 2 uses
  %i.dw = fsub float 2.000000e+00, %.sroa.speculated.i ; 2 uses
  %i.dx = fdiv float %i.du, %i.dw                 ; 2 uses
  %i.dy = fsub float %i.dn, %i.dx
  %.044 = select i1 %i.dv, float %i.dy, float %i.dn
  %.043 = select i1 %i.dv, float %i.dx, float %i.du
  %i.dz = fcmp olt float %i.dn, 0.000000e+00      ; 2 uses
  %i.ea = fdiv float %i.dn, %i.dw                 ; 2 uses
  %i.eb = fsub float %i.dn, %i.ea
  %.145 = select i1 %i.dz, float %i.eb, float %.044
  %.1 = select i1 %i.dz, float %i.ea, float %.043 ; 3 uses
  %i.ec = fsub float %.145, %.1                   ; 2 uses
  %i.ed = insertelement <2 x float> poison, float %i.dh, i64 0
  %4 = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = fadd <2 x float> %4, <float -3.000000e+00, float -2.000000e+00>
  %6 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %5) ; 2 uses
  %7 = fadd <2 x float> %6, <float -1.000000e+00, float poison>
  %i.ee = fsub <2 x float> <float poison, float 2.000000e+00>, %6
  %8 = shufflevector <2 x float> %7, <2 x float> %i.ee, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ef = fcmp ogt <2 x float> %8, zeroinitializer
  %i.eg = select <2 x i1> %i.ef, <2 x float> %8, <2 x float> zeroinitializer ; 2 uses
  %i.eh = fcmp ogt <2 x float> %i.eg, splat (float 1.000000e+00)
  %i.ei = select <2 x i1> %i.eh, <2 x float> splat (float 1.000000e+00), <2 x float> %i.eg
  %i.ej = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = insertelement <2 x float> poison, float %.1, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ek, <2 x float> %i.em)
  store <2 x float> %i.en, ptr %.04657, align 4, !tbaa !9
  %i.eo = tail call float @llvm.fmuladd.f32(float %.sroa.speculated.i55, float %i.ec, float %.1)
  %i.ep = getelementptr inbounds nuw i8, ptr %.04657, i64 8
  store float %i.eo, ptr %i.ep, align 4, !tbaa !9
  %i.eq = getelementptr inbounds nuw i8, ptr %.058, i64 12
  %i.er = load float, ptr %i.eq, align 4, !tbaa !9
  %i.es = getelementptr inbounds nuw i8, ptr %.04657, i64 12
  store float %i.er, ptr %i.es, align 4, !tbaa !9
  %i.et = getelementptr inbounds nuw i8, ptr %.058, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %.04657, i64 16
  %i.ev = add nuw nsw i64 %.04756, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ev, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !133
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_513applyHSYToRGBEPKvPvlNS_19FixedFunctionOpData5StyleE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.p
  %.0145 = phi ptr [ %i.dh, %bb.p ], [ %0, %bb.a ] ; 5 uses
  %.0111144 = phi ptr [ %i.di, %bb.p ], [ %1, %bb.a ] ; 4 uses
  %.0112143 = phi i64 [ %i.dj, %bb.p ], [ 0, %bb.a ]
  %i.b = load float, ptr %.0145, align 4, !tbaa !9
  %i.c = fadd float %i.b, f0xBE2AAAAB             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0145, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !9  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0145, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !9  ; 9 uses
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
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.g, float 3.000000e+00, float 1.500000e-01) ; 3 uses
  %i.bk = fmul float %i.bc, %i.bj
  %i.bl = fdiv float %i.bk, %.sroa.speculated139  ; 2 uses
  %i.bm = fcmp ogt float %i.bl, 5.000000e+01
  %.sroa.speculated133 = select i1 %i.bm, float 5.000000e+01, float %i.bl
  %i.bn = fmul float %i.az, 5.000000e+00          ; 3 uses
  %i.bo = fadd float %i.g, -1.000000e-03
  %i.bp = fdiv float %i.bo, f0x3C1374BC           ; 3 uses
  %i.bq = fcmp ogt float %i.bp, 1.000000e+00
  %i.br = fcmp olt float %i.bp, 0.000000e+00
  %i.bs = select i1 %i.br, float 0.000000e+00, float %i.bp
  %i.bt = select i1 %i.bq, float 1.000000e+00, float %i.bs ; 4 uses
  %i.bu = fcmp oeq float %i.bt, 1.000000e+00
  br i1 %i.bu, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = fcmp ogt float %i.bn, 1.000000e-10
  %.sroa.speculated128 = select i1 %i.bv, float %i.bn, float 1.000000e-10
  %i.bw = fdiv float %i.bc, %.sroa.speculated128
  %i.bx = fcmp oeq float %i.bt, 0.000000e+00
  br i1 %i.bx, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = fsub float 1.000000e+00, %i.bt
  %i.bz = fmul float %i.by, %i.bn                 ; 2 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.g, float -3.000000e+00, float %i.bb) ; 2 uses
  %i.cb = fmul float %i.ca, %i.bz
  %i.cc = fmul float %i.bt, %i.az
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bj, float %i.cc)
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.ca, float %i.cd) ; 3 uses
  %i.cf = fmul float %i.bj, %i.bd                 ; 2 uses
  %i.cg = fmul float %i.cb, 4.000000e+00
  %i.ch = fneg float %i.cf
  %i.ci = fmul float %i.cg, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.ci)
  %i.ck = tail call noundef float @sqrtf(float noundef %i.cj) #25, !tbaa !3 ; 2 uses
  %i.cl = fneg float %i.ck
  %i.cm = fsub float %i.cl, %i.ce                 ; 2 uses
  %i.cn = fmul float %i.cf, 2.000000e+00          ; 2 uses
  %i.co = fdiv float %i.cn, %i.cm                 ; 2 uses
  %i.cp = fcmp ult float %i.co, 0.000000e+00
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.ck, float 2.000000e+00, float %i.cm)
  %i.cr = fdiv float %i.cn, %i.cq
  %i.cs = select i1 %i.cp, float %i.cr, float %i.co
  br label %bb.p

bb.n:                                             ; preds = %bb.j
  %i.ct = fmul float %i.az, 4.000000e+00          ; 2 uses
  %i.cu = fcmp ogt float %i.ct, 1.000000e-10
  %.sroa.speculated123 = select i1 %i.cu, float %i.ct, float 1.000000e-10
  %i.cv = fdiv float %i.e, %.sroa.speculated123
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.cw = fmul float %i.az, 1.250000e+00          ; 2 uses
  %i.cx = fcmp ogt float %i.cw, 1.000000e-10
  %.sroa.speculated = select i1 %i.cx, float %i.cw, float 1.000000e-10
  %i.cy = fdiv float %i.e, %.sroa.speculated
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.n, %bb.o
  %.1 = phi float [ %i.cy, %bb.o ], [ %i.cv, %bb.n ], [ %i.bw, %bb.l ], [ %i.cs, %bb.m ], [ %.sroa.speculated133, %bb.k ] ; 2 uses
  %i.cz = insertelement <2 x float> poison, float %.1, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.ar, <2 x float> %i.aq)
  store <2 x float> %i.db, ptr %.0111144, align 4, !tbaa !9
  %i.dc = tail call float @llvm.fmuladd.f32(float %.1, float %i.ax, float %i.g)
  %i.dd = getelementptr inbounds nuw i8, ptr %.0111144, i64 8
  store float %i.dc, ptr %i.dd, align 4, !tbaa !9
end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_LINESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
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
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25, !inline_history !416
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !376  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !94
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
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
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VIDESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VIDESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25, !inline_history !417
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VIDESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VIDESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VIDESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !376  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !94
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
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
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25, !inline_history !418
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !376  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !94
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

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
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!12, !10, i64 16}
!12 = !{!"_ZTSN16OpenColorIO_v2_526Renderer_ACES_RedMod03_FwdE", !13, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!13 = !{!"_ZTSN16OpenColorIO_v2_55OpCPUE"}
!14 = !{!12, !10, i64 12}
!15 = !{!12, !10, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{!20, !10, i64 16}
!20 = !{!"_ZTSN16OpenColorIO_v2_526Renderer_ACES_RedMod10_FwdE", !13, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!21 = !{!20, !10, i64 12}
!22 = !{!20, !10, i64 8}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = !{!26, !10, i64 8}
!26 = !{!"_ZTSN16OpenColorIO_v2_524Renderer_ACES_Glow03_FwdE", !13, i64 0, !10, i64 8, !10, i64 12}
!27 = !{!26, !10, i64 12}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = !{!31, !10, i64 8}
!31 = !{!"_ZTSN16OpenColorIO_v2_529Renderer_ACES_DarkToDim10_FwdE", !13, i64 0, !10, i64 8}
!32 = distinct !{!32, !17}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0, !37, i64 8}
!35 = !{!"p1 _ZTSN16OpenColorIO_v2_519FixedFunctionOpDataE", !36, i64 0}
!36 = !{!"any pointer", !5, i64 0}
!37 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !38, i64 0}
!38 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0}
!39 = !{!40, !41, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 double", !36, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"double", !5, i64 0}
!44 = !{!45, !10, i64 20}
!45 = !{!"_ZTSN16OpenColorIO_v2_529Renderer_ACES_GamutComp13_FwdE", !13, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44}
!46 = !{!45, !10, i64 24}
!47 = !{!45, !10, i64 32}
!48 = !{!45, !10, i64 40}
!49 = !{!45, !10, i64 28}
!50 = !{!45, !10, i64 44}
!51 = distinct !{!51, !17}
!52 = !{!45, !10, i64 36}
!53 = distinct !{!53, !17}
!54 = !{!55, !75, i64 168}
!55 = !{!"_ZTSN16OpenColorIO_v2_519FixedFunctionOpDataE", !56, i64 0, !75, i64 168, !76, i64 176}
!56 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !57, i64 8, !59, i64 48}
!57 = !{!"_ZTSSt5mutex", !58, i64 0}
!58 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!59 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !60, i64 0, !61, i64 8, !61, i64 40, !65, i64 72, !70, i64 96}
!60 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !62, i64 0, !64, i64 8, !5, i64 16}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !63, i64 0}
!63 = !{!"p1 omnipotent char", !36, i64 0}
!64 = !{!"long", !5, i64 0}
!65 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !66, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !67, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!69 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !36, i64 0}
!70 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !71, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !72, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !73, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!74 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !36, i64 0}
!75 = !{!"_ZTSN16OpenColorIO_v2_519FixedFunctionOpData5StyleE", !5, i64 0}
!76 = !{!"_ZTSSt6vectorIdSaIdEE", !77, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !40, i64 0}
!79 = !{!80, !81, i64 8}
!80 = !{!"_ZTSN16OpenColorIO_v2_531Renderer_ACES_OutputTransform20E", !13, i64 0, !81, i64 8, !82, i64 12, !82, i64 176, !84, i64 340, !85, i64 384, !88, i64 1844, !89, i64 1860}
!81 = !{!"bool", !5, i64 0}
!82 = !{!"_ZTSN16OpenColorIO_v2_55ACES29JMhParamsE", !83, i64 0, !83, i64 36, !83, i64 72, !83, i64 108, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160}
!83 = !{!"_ZTSSt5arrayIfLm9EE", !5, i64 0}
!84 = !{!"_ZTSN16OpenColorIO_v2_55ACES215ToneScaleParamsE", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40}
!85 = !{!"_ZTSN16OpenColorIO_v2_55ACES227SharedCompressionParametersE", !10, i64 0, !10, i64 4, !86, i64 8}
!86 = !{!"_ZTSN16OpenColorIO_v2_55ACES27Table1DE", !87, i64 0}
!87 = !{!"_ZTSSt5arrayIfLm363EE", !5, i64 0}
!88 = !{!"_ZTSN16OpenColorIO_v2_55ACES220ChromaCompressParamsE", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!89 = !{!"_ZTSN16OpenColorIO_v2_55ACES219GamutCompressParamsE", !10, i64 0, !10, i64 4, !10, i64 8, !90, i64 12, !86, i64 20, !91, i64 1472}
!90 = !{!"_ZTSSt5arrayIiLm2EE", !5, i64 0}
!91 = !{!"_ZTSN16OpenColorIO_v2_55ACES27Table3DE", !92, i64 0}
!92 = !{!"_ZTSSt5arrayIA3_fLm363EE", !5, i64 0}
!93 = !{i64 0, i64 36, !94, i64 36, i64 36, !94, i64 72, i64 36, !94, i64 108, i64 36, !94, i64 144, i64 4, !9, i64 148, i64 4, !9, i64 152, i64 4, !9, i64 156, i64 4, !9, i64 160, i64 4, !9}
!94 = !{!5, !5, i64 0}
!95 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !9, i64 20, i64 4, !9, i64 24, i64 4, !9, i64 28, i64 4, !9, i64 32, i64 4, !9, i64 36, i64 4, !9, i64 40, i64 4, !9}
!96 = !{i8 0, i8 2}
!97 = !{}
!98 = !{!80, !10, i64 1856}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17}
!101 = !{!102, !81, i64 8}
!102 = !{!"_ZTSN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20E", !13, i64 0, !81, i64 8, !82, i64 12}
!103 = distinct !{!103, !17}
!104 = distinct !{!104, !17}
!105 = !{!106, !81, i64 8}
!106 = !{!"_ZTSN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20E", !13, i64 0, !81, i64 8, !82, i64 12, !84, i64 176, !85, i64 220, !88, i64 1680}
!107 = !{!106, !10, i64 1692}
!108 = distinct !{!108, !17}
!109 = distinct !{!109, !17}
!110 = !{!111, !81, i64 8}
!111 = !{!"_ZTSN16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_20E", !13, i64 0, !81, i64 8, !85, i64 12, !89, i64 1472}
!112 = distinct !{!112, !17}
!113 = distinct !{!113, !17}
!114 = !{!115, !10, i64 12}
!115 = !{!"_ZTSN16OpenColorIO_v2_525Renderer_REC2100_SurroundE", !13, i64 0, !10, i64 8, !10, i64 12}
!116 = !{!115, !10, i64 8}
!117 = distinct !{!117, !17}
!118 = !{!119}
!119 = distinct !{!119, !120}
!120 = distinct !{!120, !"LVerDomain"}
!121 = !{!122}
!122 = distinct !{!122, !120}
!123 = distinct !{!123, !17, !124, !125}
!124 = !{!"llvm.loop.isvectorized", i32 1}
!125 = !{!"llvm.loop.unroll.runtime.disable"}
!126 = distinct !{!126, !17, !124}
!127 = !{!128}
!128 = distinct !{!128, !129}
!129 = distinct !{!129, !"LVerDomain"}
!130 = !{!131}
!131 = distinct !{!131, !129}
!132 = distinct !{!132, !17, !124, !125}
!133 = distinct !{!133, !17, !124}
!134 = distinct !{!134, !17}
!135 = !{!136}
!136 = distinct !{!136, !137}
!137 = distinct !{!137, !"LVerDomain"}
!138 = !{!139}
!139 = distinct !{!139, !137}
!140 = distinct !{!140, !17, !124, !125}
!141 = distinct !{!141, !17, !124}
!142 = !{!143}
!143 = distinct !{!143, !144}
!144 = distinct !{!144, !"LVerDomain"}
!145 = !{!146}
!146 = distinct !{!146, !144}
!147 = distinct !{!147, !17, !124, !125}
!148 = distinct !{!148, !17, !124}
!149 = !{!150}
!150 = distinct !{!150, !151}
!151 = distinct !{!151, !"LVerDomain"}
!152 = !{!153}
!153 = distinct !{!153, !151}
!154 = distinct !{!154, !17, !124, !125}
!155 = distinct !{!155, !17, !124}
!156 = !{!157}
!157 = distinct !{!157, !158}
!158 = distinct !{!158, !"LVerDomain"}
!159 = !{!160}
!160 = distinct !{!160, !158}
end_hunk_1
