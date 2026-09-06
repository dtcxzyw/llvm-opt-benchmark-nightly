Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FixedFunctionOpCPU?download=true
inline.NumInlined: 2146
inline.NumDeleted: 988
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK16OpenColorIO_v2_519Renderer_RGB_TO_HSV5applyEPKvPvl:bb.a
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader90

.lr.ph.preheader90:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.04576.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.04675.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.04774.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph._crit_edge, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader90, %.lr.ph._crit_edge
  %.04576 = phi i64 [ %i.ed, %.lr.ph._crit_edge ], [ %.04576.ph, %.lr.ph.preheader90 ]
  %.04675 = phi ptr [ %i.ec, %.lr.ph._crit_edge ], [ %.04675.ph, %.lr.ph.preheader90 ] ; 5 uses
  %.04774 = phi ptr [ %i.eb, %.lr.ph._crit_edge ], [ %.04774.ph, %.lr.ph.preheader90 ] ; 5 uses
  %i.cr = load float, ptr %.04774, align 4, !tbaa !16 ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.04774, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !16 ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.04774, i64 8
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !16 ; 6 uses
  %i.cw = fcmp olt float %i.ct, %i.cr
  %.sroa.speculated69 = select i1 %i.cw, float %i.ct, float %i.cr ; 2 uses
  %i.cx = fcmp olt float %i.cv, %.sroa.speculated69
  %.sroa.speculated62 = select i1 %i.cx, float %i.cv, float %.sroa.speculated69 ; 5 uses
  %i.cy = fcmp olt float %i.cr, %i.ct
  %.sroa.speculated66 = select i1 %i.cy, float %i.ct, float %i.cr ; 2 uses
  %i.cz = fcmp olt float %.sroa.speculated66, %i.cv
  %.sroa.speculated = select i1 %i.cz, float %i.cv, float %.sroa.speculated66 ; 9 uses
  %i.da = fcmp une float %.sroa.speculated62, %.sroa.speculated
  %i.db = fsub float %.sroa.speculated, %.sroa.speculated62 ; 5 uses
  br i1 %i.da, label %bb.b, label %.lr.ph._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.dc = fcmp une float %.sroa.speculated, 0.000000e+00
  %i.dd = fdiv float %i.db, %.sroa.speculated
  %.041 = select i1 %i.dc, float %i.dd, float 0.000000e+00
  %i.de = fcmp oeq float %i.cr, %.sroa.speculated
  br i1 %i.de, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.df = fsub float %i.ct, %i.cv
  %i.dg = fdiv float %i.df, %i.db
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.dh = fcmp oeq float %i.ct, %.sroa.speculated
  br i1 %i.dh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.di = fsub float %i.cv, %i.cr
  %i.dj = fdiv float %i.di, %i.db
  %i.dk = fadd float %i.dj, 2.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dl = fsub float %i.cr, %i.ct
  %i.dm = fdiv float %i.dl, %i.db
  %i.dn = fadd float %i.dm, 4.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.0 = phi float [ %i.dg, %bb.c ], [ %i.dk, %bb.e ], [ %i.dn, %bb.f ] ; 3 uses
  %i.do = fcmp olt float %.0, 0.000000e+00
  %i.dp = fadd nnan float %.0, 6.000000e+00
  %.1 = select i1 %i.do, float %i.dp, float %.0
  %i.dq = fmul float %.1, f0x3E2AAAAB
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.g
  %.142 = phi float [ %.041, %bb.g ], [ 0.000000e+00, %.lr.ph ]
  %.2 = phi float [ %i.dq, %bb.g ], [ 0.000000e+00, %.lr.ph ]
  %i.dr = fcmp olt float %.sroa.speculated62, 0.000000e+00
  %i.ds = fadd float %.sroa.speculated, %.sroa.speculated62
  %.044 = select i1 %i.dr, float %i.ds, float %.sroa.speculated
  %i.dt = fneg float %.sroa.speculated62          ; 2 uses
  %i.du = fcmp olt float %.sroa.speculated, %i.dt
  %i.dv = fdiv float %i.db, %i.dt
  %.243 = select i1 %i.du, float %i.dv, float %.142
  store float %.2, ptr %.04675, align 4, !tbaa !16
  %i.dw = getelementptr inbounds nuw i8, ptr %.04675, i64 4
  store float %.243, ptr %i.dw, align 4, !tbaa !16
  %i.dx = getelementptr inbounds nuw i8, ptr %.04675, i64 8
  store float %.044, ptr %i.dx, align 4, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %.04774, i64 12
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %.04675, i64 12
  store float %i.dz, ptr %i.ea, align 4, !tbaa !16
  %i.eb = getelementptr inbounds nuw i8, ptr %.04774, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %.04675, i64 16
  %i.ed = add nuw nsw i64 %.04576, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ed, %3
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
  %i.j = load float, ptr %next.gep, align 4, !tbaa !16, !alias.scope !177 ; 2 uses
  %i.k = load float, ptr %next.gep60, align 4, !tbaa !16, !alias.scope !177 ; 2 uses
  %i.l = load float, ptr %next.gep61, align 4, !tbaa !16, !alias.scope !177 ; 2 uses
  %i.m = load float, ptr %next.gep62, align 4, !tbaa !16, !alias.scope !177 ; 2 uses
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
  %i.af = load float, ptr %i.ab, align 4, !tbaa !16, !alias.scope !177
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !16, !alias.scope !177
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !16, !alias.scope !177
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !16, !alias.scope !177
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
  %i.av = load float, ptr %i.ar, align 4, !tbaa !16, !alias.scope !177
  %i.aw = load float, ptr %i.as, align 4, !tbaa !16, !alias.scope !177
  %i.ax = load float, ptr %i.at, align 4, !tbaa !16, !alias.scope !177
  %i.ay = load float, ptr %i.au, align 4, !tbaa !16, !alias.scope !177
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
  %i.cn = load float, ptr %i.cj, align 4, !tbaa !16, !alias.scope !177
  %i.co = load float, ptr %i.ck, align 4, !tbaa !16, !alias.scope !177
  %i.cp = load float, ptr %i.cl, align 4, !tbaa !16, !alias.scope !177
  %i.cq = load float, ptr %i.cm, align 4, !tbaa !16, !alias.scope !177
  %i.cr = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 3
  %4 = shufflevector <4 x float> %i.bh, <4 x float> %i.bm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = fcmp ogt <8 x float> %4, splat (float 1.000000e+00)
  %6 = shufflevector <4 x float> %i.bh, <4 x float> %i.bm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = select <8 x i1> %5, <8 x float> splat (float 1.000000e+00), <8 x float> %6
  %8 = shufflevector <4 x float> %i.ch, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %9 = shufflevector <4 x float> %i.cg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cv = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %7, <8 x float> %8, <8 x float> %9)
  %i.cw = shufflevector <4 x float> %i.ci, <4 x float> %i.cu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.cv, <8 x float> %i.cw, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep63, align 4, !tbaa !16, !alias.scope !178, !noalias !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader66

.lr.ph.preheader66:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.058.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.04657.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.04756.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader66, %.lr.ph
  %.058 = phi ptr [ %i.es, %.lr.ph ], [ %.058.ph, %.lr.ph.preheader66 ] ; 5 uses
  %.04657 = phi i64 [ %i.eu, %.lr.ph ], [ %.04657.ph, %.lr.ph.preheader66 ]
  %.04756 = phi ptr [ %i.et, %.lr.ph ], [ %.04756.ph, %.lr.ph.preheader66 ] ; 4 uses
  %i.cy = load float, ptr %.058, align 4, !tbaa !16 ; 2 uses
  %i.cz = tail call noundef float @llvm.floor.f32(float %i.cy)
  %i.da = fsub float %i.cy, %i.cz
  %i.db = fmul float %i.da, 6.000000e+00          ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.058, i64 4
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !16 ; 2 uses
  %i.de = fcmp ogt float %i.dd, 0.000000e+00
  %.sroa.speculated2.i = select i1 %i.de, float %i.dd, float 0.000000e+00 ; 2 uses
  %i.df = fcmp ogt float %.sroa.speculated2.i, 1.999000e+00
  %.sroa.speculated.i = select i1 %i.df, float 1.999000e+00, float %.sroa.speculated2.i ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !16 ; 6 uses
  %i.di = fadd float %i.db, -3.000000e+00
  %i.dj = tail call noundef float @llvm.fabs.f32(float %i.di)
  %i.dk = fadd float %i.db, -2.000000e+00
  %i.dl = tail call noundef float @llvm.fabs.f32(float %i.dk)
  %i.dm = fadd float %i.db, -4.000000e+00
  %i.dn = tail call noundef float @llvm.fabs.f32(float %i.dm)
  %i.do = fsub float 2.000000e+00, %i.dn          ; 2 uses
  %i.dp = fcmp ogt float %i.do, 0.000000e+00
  %.sroa.speculated2.i54 = select i1 %i.dp, float %i.do, float 0.000000e+00 ; 2 uses
  %i.dq = fcmp ogt float %.sroa.speculated2.i54, 1.000000e+00
  %.sroa.speculated.i55 = select i1 %i.dq, float 1.000000e+00, float %.sroa.speculated2.i54
  %i.dr = fsub float 1.000000e+00, %.sroa.speculated.i
  %i.ds = fmul float %i.dh, %i.dr                 ; 2 uses
  %i.dt = fcmp ogt float %.sroa.speculated.i, 1.000000e+00 ; 2 uses
  %i.du = fsub float 2.000000e+00, %.sroa.speculated.i ; 2 uses
  %i.dv = fdiv float %i.ds, %i.du                 ; 2 uses
  %i.dw = fsub float %i.dh, %i.dv
  %.044 = select i1 %i.dt, float %i.dw, float %i.dh
  %.043 = select i1 %i.dt, float %i.dv, float %i.ds
  %i.dx = fcmp olt float %i.dh, 0.000000e+00      ; 2 uses
  %i.dy = fdiv float %i.dh, %i.du                 ; 2 uses
  %i.dz = fsub float %i.dh, %i.dy
  %.145 = select i1 %i.dx, float %i.dz, float %.044
  %.1 = select i1 %i.dx, float %i.dy, float %.043 ; 3 uses
  %i.ea = fsub float %.145, %.1                   ; 2 uses
  %i.eb = insertelement <2 x float> <float poison, float 2.000000e+00>, float %i.dj, i64 0
  %i.ec = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.dl, i64 1
  %i.ed = fsub <2 x float> %i.eb, %i.ec           ; 2 uses
  %i.ee = fcmp ogt <2 x float> %i.ed, zeroinitializer
  %i.ef = select <2 x i1> %i.ee, <2 x float> %i.ed, <2 x float> zeroinitializer ; 2 uses
  %i.eg = fcmp ogt <2 x float> %i.ef, splat (float 1.000000e+00)
  %i.eh = select <2 x i1> %i.eg, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ef
  %i.ei = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = insertelement <2 x float> poison, float %.1, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.ej, <2 x float> %i.el)
  store <2 x float> %i.em, ptr %.04756, align 4, !tbaa !16
  %i.en = tail call float @llvm.fmuladd.f32(float %.sroa.speculated.i55, float %i.ea, float %.1)
  %i.eo = getelementptr inbounds nuw i8, ptr %.04756, i64 8
  store float %i.en, ptr %i.eo, align 4, !tbaa !16
  %i.ep = getelementptr inbounds nuw i8, ptr %.058, i64 12
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !16
  %i.er = getelementptr inbounds nuw i8, ptr %.04756, i64 12
  store float %i.eq, ptr %i.er, align 4, !tbaa !16
  %i.es = getelementptr inbounds nuw i8, ptr %.058, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %.04756, i64 16
  %i.eu = add nuw nsw i64 %.04657, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.eu, %3
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
  %i.bl = fadd float %i.g, -1.000000e-03
end_hunk_0
