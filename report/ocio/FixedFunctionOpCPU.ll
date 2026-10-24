Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FixedFunctionOpCPU?download=true
inline.NumInlined: 2146
inline.NumDeleted: 988
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK16OpenColorIO_v2_519Renderer_RGB_TO_HSV5applyEPKvPvl:bb.a
  %i.bb = fcmp une <4 x float> %i.ay, zeroinitializer
  %i.bc = fdiv <4 x float> %i.ba, %i.ay
  %i.bd = fcmp oeq <4 x float> %i.s, %i.ay        ; 2 uses
  %i.be = xor <4 x i1> %i.bd, splat (i1 true)
  %i.bf = select <4 x i1> %i.az, <4 x i1> %i.be, <4 x i1> zeroinitializer
  %i.bg = fcmp une <4 x float> %i.ae, %i.ay
  %i.bh = select <4 x i1> %i.bf, <4 x i1> %i.bg, <4 x i1> zeroinitializer
  %i.bi = fsub <4 x float> %i.s, %i.ae
  %i.bj = fdiv <4 x float> %i.bi, %i.ba
  %i.bk = fadd <4 x float> %i.bj, splat (float 4.000000e+00)
  %i.bl = fsub <4 x float> %i.aq, %i.s
  %i.bm = fdiv <4 x float> %i.bl, %i.ba
  %i.bn = fadd <4 x float> %i.bm, splat (float 2.000000e+00)
  %i.bo = select <4 x i1> %i.az, <4 x i1> %i.bd, <4 x i1> zeroinitializer
  %i.bp = fsub <4 x float> %i.ae, %i.aq
  %i.bq = fdiv <4 x float> %i.bp, %i.ba
  %predphi = select <4 x i1> %i.bh, <4 x float> %i.bk, <4 x float> %i.bn
  %predphi86 = select <4 x i1> %i.bo, <4 x float> %i.bq, <4 x float> %predphi ; 3 uses
  %i.br = fcmp olt <4 x float> %predphi86, zeroinitializer
  %i.bs = fadd nnan <4 x float> %predphi86, splat (float 6.000000e+00)
  %i.bt = select <4 x i1> %i.br, <4 x float> %i.bs, <4 x float> %predphi86
  %i.bu = fmul <4 x float> %i.bt, splat (float f0x3E2AAAAB)
  %i.bv = and <4 x i1> %i.az, %i.bb
  %i.bw = select <4 x i1> %i.bv, <4 x float> %i.bc, <4 x float> zeroinitializer
  %predphi87 = select <4 x i1> %i.az, <4 x float> %i.bu, <4 x float> zeroinitializer
  %i.bx = fcmp olt <4 x float> %i.au, zeroinitializer
  %i.by = fadd <4 x float> %i.ay, %i.au
  %i.bz = select <4 x i1> %i.bx, <4 x float> %i.by, <4 x float> %i.ay
  %i.ca = fneg <4 x float> %i.au                  ; 2 uses
  %i.cb = fcmp olt <4 x float> %i.ay, %i.ca
  %i.cc = fdiv <4 x float> %i.ba, %i.ca
  %i.cd = select <4 x i1> %i.cb, <4 x float> %i.cc, <4 x float> %i.bw
  %i.ce = getelementptr inbounds nuw i8, ptr %next.gep82, i64 12
  %i.cf = getelementptr i8, ptr %i.i, i64 28
  %i.cg = getelementptr i8, ptr %i.j, i64 44
  %i.ch = getelementptr i8, ptr %i.k, i64 60
  %i.ci = load float, ptr %i.ce, align 4, !tbaa !16, !alias.scope !171
  %i.cj = load float, ptr %i.cf, align 4, !tbaa !16, !alias.scope !171
  %i.ck = load float, ptr %i.cg, align 4, !tbaa !16, !alias.scope !171
  %i.cl = load float, ptr %i.ch, align 4, !tbaa !16, !alias.scope !171
  %i.cm = insertelement <4 x float> poison, float %i.ci, i64 0
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 1
  %i.co = insertelement <4 x float> %i.cn, float %i.ck, i64 2
  %i.cp = insertelement <4 x float> %i.co, float %i.cl, i64 3
  %i.cq = shufflevector <4 x float> %predphi87, <4 x float> %i.cd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cr = shufflevector <4 x float> %i.bz, <4 x float> %i.cp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.cq, <8 x float> %i.cr, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !16, !alias.scope !172, !noalias !171
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader90

.lr.ph.preheader90:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.04576.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.04675.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.04774.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph._crit_edge, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader90, %.lr.ph._crit_edge
  %.04576 = phi i64 [ %i.ef, %.lr.ph._crit_edge ], [ %.04576.ph, %.lr.ph.preheader90 ]
  %.04675 = phi ptr [ %i.ee, %.lr.ph._crit_edge ], [ %.04675.ph, %.lr.ph.preheader90 ] ; 5 uses
  %.04774 = phi ptr [ %i.ed, %.lr.ph._crit_edge ], [ %.04774.ph, %.lr.ph.preheader90 ] ; 5 uses
  %i.ct = load float, ptr %.04774, align 4, !tbaa !16 ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.04774, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !16 ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.04774, i64 8
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !16 ; 6 uses
  %i.cy = fcmp olt float %i.cv, %i.ct
  %.sroa.speculated69 = select i1 %i.cy, float %i.cv, float %i.ct ; 2 uses
  %i.cz = fcmp olt float %i.cx, %.sroa.speculated69
  %.sroa.speculated62 = select i1 %i.cz, float %i.cx, float %.sroa.speculated69 ; 5 uses
  %i.da = fcmp olt float %i.ct, %i.cv
  %.sroa.speculated66 = select i1 %i.da, float %i.cv, float %i.ct ; 2 uses
  %i.db = fcmp olt float %.sroa.speculated66, %i.cx
  %.sroa.speculated = select i1 %i.db, float %i.cx, float %.sroa.speculated66 ; 9 uses
  %i.dc = fcmp une float %.sroa.speculated62, %.sroa.speculated
  %i.dd = fsub float %.sroa.speculated, %.sroa.speculated62 ; 5 uses
  br i1 %i.dc, label %bb.b, label %.lr.ph._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.de = fcmp une float %.sroa.speculated, 0.000000e+00
  %i.df = fdiv float %i.dd, %.sroa.speculated
  %.041 = select i1 %i.de, float %i.df, float 0.000000e+00
  %i.dg = fcmp oeq float %i.ct, %.sroa.speculated
  br i1 %i.dg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.dh = fsub float %i.cv, %i.cx
  %i.di = fdiv float %i.dh, %i.dd
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.dj = fcmp oeq float %i.cv, %.sroa.speculated
  br i1 %i.dj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dk = fsub float %i.cx, %i.ct
  %i.dl = fdiv float %i.dk, %i.dd
  %i.dm = fadd float %i.dl, 2.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dn = fsub float %i.ct, %i.cv
  %i.do = fdiv float %i.dn, %i.dd
  %i.dp = fadd float %i.do, 4.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.0 = phi float [ %i.di, %bb.c ], [ %i.dm, %bb.e ], [ %i.dp, %bb.f ] ; 3 uses
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !170
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
  %i.l = load float, ptr %next.gep, align 4, !tbaa !16, !alias.scope !178 ; 2 uses
  %i.m = load float, ptr %next.gep60, align 4, !tbaa !16, !alias.scope !178 ; 2 uses
  %i.n = load float, ptr %next.gep61, align 4, !tbaa !16, !alias.scope !178 ; 2 uses
  %i.o = load float, ptr %next.gep62, align 4, !tbaa !16, !alias.scope !178 ; 2 uses
  %i.p = insertelement <4 x float> poison, float %i.l, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3
  %i.t = tail call float @llvm.floor.f32(float %i.l)
  %i.u = tail call float @llvm.floor.f32(float %i.m)
  %i.v = tail call float @llvm.floor.f32(float %i.n)
  %i.w = tail call float @llvm.floor.f32(float %i.o)
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
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !16, !alias.scope !178
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !16, !alias.scope !178
  %i.aj = load float, ptr %i.af, align 4, !tbaa !16, !alias.scope !178
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !16, !alias.scope !178
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
  %i.ax = load float, ptr %i.at, align 4, !tbaa !16, !alias.scope !178
  %i.ay = load float, ptr %i.au, align 4, !tbaa !16, !alias.scope !178
  %i.az = load float, ptr %i.av, align 4, !tbaa !16, !alias.scope !178
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !16, !alias.scope !178
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
  %i.cp = load float, ptr %i.cl, align 4, !tbaa !16, !alias.scope !178
  %i.cq = load float, ptr %i.cm, align 4, !tbaa !16, !alias.scope !178
  %i.cr = load float, ptr %i.cn, align 4, !tbaa !16, !alias.scope !178
  %i.cs = load float, ptr %i.co, align 4, !tbaa !16, !alias.scope !178
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
  store <16 x float> %interleaved.vec, ptr %next.gep63, align 4, !tbaa !16, !alias.scope !179, !noalias !178
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !176

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
  %.058 = phi ptr [ %i.fb, %.lr.ph ], [ %.058.ph, %.lr.ph.preheader66 ] ; 5 uses
  %.04657 = phi i64 [ %i.fd, %.lr.ph ], [ %.04657.ph, %.lr.ph.preheader66 ]
  %.04756 = phi ptr [ %i.fc, %.lr.ph ], [ %.04756.ph, %.lr.ph.preheader66 ] ; 4 uses
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
  %i.ds = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fadd <2 x float> %i.dt, <float -2.000000e+00, float -4.000000e+00>
  %i.dv = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.du) ; 2 uses
  %i.dw = extractelement <2 x float> %i.dv, i64 1
  %i.dx = fsub float 2.000000e+00, %i.dw          ; 2 uses
  %i.dy = fcmp ogt float %i.dx, 0.000000e+00
  %.sroa.speculated2.i54 = select i1 %i.dy, float %i.dx, float 0.000000e+00 ; 2 uses
  %i.dz = fcmp ogt float %.sroa.speculated2.i54, 1.000000e+00
  %.sroa.speculated.i55 = select i1 %i.dz, float 1.000000e+00, float %.sroa.speculated2.i54
  %i.ea = fsub float 1.000000e+00, %.sroa.speculated.i
  %i.eb = fmul float %i.dp, %i.ea                 ; 2 uses
  %i.ec = fcmp ogt float %.sroa.speculated.i, 1.000000e+00 ; 2 uses
  %i.ed = fsub float 2.000000e+00, %.sroa.speculated.i ; 2 uses
  %i.ee = fdiv float %i.eb, %i.ed                 ; 2 uses
  %i.ef = fsub float %i.dp, %i.ee
  %.044 = select i1 %i.ec, float %i.ef, float %i.dp
  %.043 = select i1 %i.ec, float %i.ee, float %i.eb
  %i.eg = fcmp olt float %i.dp, 0.000000e+00      ; 2 uses
  %i.eh = fdiv float %i.dp, %i.ed                 ; 2 uses
  %i.ei = fsub float %i.dp, %i.eh
  %.145 = select i1 %i.eg, float %i.ei, float %.044
  %.1 = select i1 %i.eg, float %i.eh, float %.043 ; 3 uses
  %i.ej = fsub float %.145, %.1                   ; 2 uses
  %i.ek = insertelement <2 x float> <float poison, float 2.000000e+00>, float %i.dr, i64 0
  %i.el = shufflevector <2 x float> <float 1.000000e+00, float poison>, <2 x float> %i.dv, <2 x i32> <i32 0, i32 2>
  %i.em = fsub <2 x float> %i.ek, %i.el           ; 2 uses
  %i.en = fcmp ogt <2 x float> %i.em, zeroinitializer
  %i.eo = select <2 x i1> %i.en, <2 x float> %i.em, <2 x float> zeroinitializer ; 2 uses
  %i.ep = fcmp ogt <2 x float> %i.eo, splat (float 1.000000e+00)
  %i.eq = select <2 x i1> %i.ep, <2 x float> splat (float 1.000000e+00), <2 x float> %i.eo
  %i.er = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = insertelement <2 x float> poison, float %.1, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.es, <2 x float> %i.eu)
  store <2 x float> %i.ev, ptr %.04756, align 4, !tbaa !16
  %i.ew = tail call float @llvm.fmuladd.f32(float %.sroa.speculated.i55, float %i.ej, float %.1)
  %i.ex = getelementptr inbounds nuw i8, ptr %.04756, i64 8
  store float %i.ew, ptr %i.ex, align 4, !tbaa !16
  %i.ey = getelementptr inbounds nuw i8, ptr %.058, i64 12
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !16
  %i.fa = getelementptr inbounds nuw i8, ptr %.04756, i64 12
  store float %i.ez, ptr %i.fa, align 4, !tbaa !16
  %i.fb = getelementptr inbounds nuw i8, ptr %.058, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %.04756, i64 16
  %i.fd = add nuw nsw i64 %.04657, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.fd, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !177
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
end_hunk_0
