Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blendif_lab?download=true
inline.NumInlined: 211
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_blend_vividlight:bb.a
  %.065 = phi i64 [ %i.fa, %bb.f ], [ %.065.ph, %scalar.ph.preheader ] ; 2 uses
  %.05464 = phi i64 [ %i.fb, %bb.f ], [ %.05464.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.065
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !34 ; 3 uses
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, %i.cj ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05464 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !34
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, f0x3C23D70A ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05464 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !34
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, f0x3C23D70A
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.ct = load <2 x float>, ptr %i.co, align 4, !tbaa !34
  %i.cu = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, splat (float 7.812500e-03) ; 2 uses
  %i.cv = load <2 x float>, ptr %i.cs, align 4, !tbaa !34
  %i.cw = fmul reassoc nsz arcp contract afn <2 x float> %i.cv, splat (float 7.812500e-03)
  %i.cx = load float, ptr %6, align 4, !tbaa !34
  %i.cy = load float, ptr %5, align 4, !tbaa !34
  %i.cz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cy) ; 4 uses
  %i.da = fadd reassoc nsz arcp contract afn float %i.cz, %i.cx ; 10 uses
  %i.db = fadd reassoc nsz arcp contract afn float %i.cz, %i.cn
  %i.dc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.db, float 0.000000e+00)
  %i.dd = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dc, float %i.da) ; 3 uses
  %i.de = fadd reassoc nsz arcp contract afn float %i.cz, %i.cr
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.de, float 0.000000e+00)
  %i.dg = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.df, float %i.da) ; 5 uses
  %i.dh = fmul reassoc nsz arcp contract afn float %i.da, 5.000000e-01
  %i.di = fmul reassoc nsz arcp contract afn float %i.da, 2.000000e+00 ; 2 uses
  %i.dj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ck ; 2 uses
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dd, %i.dj
  %i.dl = fcmp reassoc nsz arcp contract afn ogt float %i.dg, %i.dh
  br i1 %i.dl, label %bb.b, label %bb.d

bb.b:                                             ; preds = %scalar.ph
  %i.dm = fcmp reassoc nsz arcp contract afn ult float %i.dg, %i.da
  br i1 %i.dm, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.dn = fsub reassoc nsz arcp contract afn float %i.da, %i.dg
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.di
  %i.dp = fdiv reassoc nsz arcp contract afn float %i.dd, %i.do
  br label %bb.f

bb.d:                                             ; preds = %scalar.ph
  %i.dq = fcmp reassoc nsz arcp contract afn ugt float %i.dg, 0.000000e+00
  br i1 %i.dq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dr = fsub reassoc nsz arcp contract afn float %i.da, %i.dd
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dg, %i.di
  %i.dt = fdiv reassoc nsz arcp contract afn float %i.dr, %i.ds
  %i.du = fsub reassoc nsz arcp contract afn float %i.da, %i.dt
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %i.dv = phi reassoc nsz arcp contract afn float [ %i.dp, %bb.c ], [ 0.000000e+00, %bb.d ], [ %i.du, %bb.e ], [ %i.da, %bb.b ]
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dv, %i.ck
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, %i.dk
  %i.dy = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dx, float 0.000000e+00)
  %i.dz = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dy, float %i.da)
  %i.ea = fsub reassoc nsz arcp contract afn float %i.dz, %i.cz ; 2 uses
  %i.eb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cn, float f0x3C23D70A)
  %i.ec = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul reassoc nsz arcp contract afn <2 x float> %i.cu, %i.ed
  %i.ef = fadd reassoc nsz arcp contract afn <2 x float> %i.cw, %i.cu
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ea, %i.ck
  %i.eh = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fmul reassoc nsz arcp contract afn <2 x float> %i.ei, %i.ef
  %i.ek = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fdiv reassoc nsz arcp contract afn <2 x float> %i.ej, %i.el
  %i.en = fadd reassoc nsz arcp contract afn <2 x float> %i.em, %i.ee
  %i.eo = load <2 x float>, ptr %i.a, align 4, !tbaa !34
  %i.ep = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.en, <2 x float> %i.eo)
  %i.eq = load <2 x float>, ptr %i.b, align 4, !tbaa !34
  %i.er = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ep, <2 x float> %i.eq) ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.05464 ; 3 uses
  %i.et = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> %i.er, <2 x i32> <i32 0, i32 2>
  %i.ev = fmul reassoc nsz arcp contract afn <2 x float> %i.eu, <float 1.000000e+02, float 1.280000e+02>
  store <2 x float> %i.ev, ptr %i.es, align 4, !tbaa !34
  %i.ew = extractelement <2 x float> %i.er, i64 1
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ew, 1.280000e+02
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store float %i.ex, ptr %i.ey, align 4, !tbaa !34
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store float %i.cj, ptr %i.ez, align 4, !tbaa !34
  %i.fa = add nuw i64 %.065, 1                    ; 2 uses
  %i.fb = add i64 %.05464, 4
  %exitcond.not = icmp eq i64 %i.fa, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !391
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_linearlight(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %.051.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %.04250.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.o, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.e = shl i64 %4, 4                            ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 %i.e       ; 4 uses
  %i.g = add i64 %i.e, -4                         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %i.j = getelementptr i8, ptr %6, i64 12
  %i.k = getelementptr i8, ptr %5, i64 12
  %bound0 = icmp ult ptr %2, %i.h
  %bound1 = icmp ult ptr %0, %i.f
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %2, %i.i
  %bound168 = icmp ult ptr %1, %i.f
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %bound070 = icmp ult ptr %2, %i.j
  %bound171 = icmp ult ptr %6, %i.f
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx, %found.conflict72
  %bound074 = icmp ult ptr %2, %i.k
  %bound175 = icmp ult ptr %5, %i.f
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx77 = or i1 %conflict.rdx73, %found.conflict76
  br i1 %conflict.rdx77, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.l = and i64 %4, 7                            ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 8, i64 %i.l
  %n.vec = sub i64 %4, %i.n                       ; 3 uses
  %i.o = shl i64 %n.vec, 2
  %i.p = load float, ptr %6, align 4, !tbaa !34, !alias.scope !406
  %i.q = load float, ptr %5, align 4, !tbaa !34, !alias.scope !407
  %.scalar = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.q) ; 2 uses
  %i.r = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.s = shufflevector <8 x float> %i.r, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.scalar95 = fadd reassoc nsz arcp contract afn float %.scalar, %i.p
  %i.t = insertelement <8 x float> poison, float %.scalar95, i64 0
  %i.u = shufflevector <8 x float> %i.t, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.v = fmul reassoc nsz arcp contract afn <8 x float> %i.u, splat (float 2.000000e+00)
  %i.w = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !407
  %broadcast.splatinsert86 = insertelement <8 x float> poison, float %i.w, i64 0
  %broadcast.splat87 = shufflevector <8 x float> %broadcast.splatinsert86, <8 x float> poison, <8 x i32> zeroinitializer
  %i.x = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !406
  %broadcast.splatinsert88 = insertelement <8 x float> poison, float %i.x, i64 0
  %broadcast.splat89 = shufflevector <8 x float> %broadcast.splatinsert88, <8 x float> poison, <8 x i32> zeroinitializer
  %i.y = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !407
  %broadcast.splatinsert90 = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat91 = shufflevector <8 x float> %broadcast.splatinsert90, <8 x float> poison, <8 x i32> zeroinitializer
  %i.z = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !406
  %broadcast.splatinsert92 = insertelement <8 x float> poison, float %i.z, i64 0
  %broadcast.splat93 = shufflevector <8 x float> %broadcast.splatinsert92, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aa = shl i64 %index, 2                       ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.ab, align 4, !tbaa !34 ; 3 uses
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %wide.vec = load <32 x float>, ptr %i.ad, align 4, !tbaa !34, !alias.scope !408 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec80 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec81 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ae = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A) ; 2 uses
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec80, splat (float 7.812500e-03) ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec81, splat (float 7.812500e-03) ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aa
  %wide.vec82 = load <32 x float>, ptr %i.ah, align 4, !tbaa !34, !alias.scope !409 ; 3 uses
  %strided.vec83 = shufflevector <32 x float> %wide.vec82, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec84 = shufflevector <32 x float> %wide.vec82, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec85 = shufflevector <32 x float> %wide.vec82, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec83, splat (float f0x3C23D70A)
  %i.aj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec84, splat (float 7.812500e-03)
  %i.ak = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec85, splat (float 7.812500e-03)
  %i.al = fadd reassoc nsz arcp contract afn <8 x float> %i.s, %i.ae
  %i.am = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.al, <8 x float> zeroinitializer)
  %i.an = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.am, <8 x float> %i.u) ; 2 uses
  %i.ao = fadd reassoc nsz arcp contract afn <8 x float> %i.s, %i.ai
  %i.ap = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ao, <8 x float> zeroinitializer)
  %i.aq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ap, <8 x float> %i.u)
  %i.ar = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ac ; 3 uses
  %i.as = fmul reassoc nsz arcp contract afn <8 x float> %i.an, %i.ar
  %i.at = fmul reassoc nsz arcp contract afn <8 x float> %i.v, %i.aq
  %7 = fadd reassoc nsz arcp contract afn <8 x float> %i.an, %i.at
  %8 = fsub reassoc nsz arcp contract afn <8 x float> %7, %i.u
  %i.au = fmul reassoc nsz arcp contract afn <8 x float> %8, %i.ac
  %i.av = fadd reassoc nsz arcp contract afn <8 x float> %i.au, %i.as
  %i.aw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.av, <8 x float> zeroinitializer)
  %i.ax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.aw, <8 x float> %i.u)
  %i.ay = fsub reassoc nsz arcp contract afn <8 x float> %i.ax, %i.s ; 2 uses
  %i.az = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ae, <8 x float> splat (float f0x3C23D70A)) ; 2 uses
  %i.ba = fmul reassoc nsz arcp contract afn <8 x float> %i.af, %i.ar
  %i.bb = fadd reassoc nsz arcp contract afn <8 x float> %i.aj, %i.af
  %i.bc = fmul reassoc nsz arcp contract afn <8 x float> %i.ay, %i.ac ; 2 uses
  %i.bd = fmul reassoc nsz arcp contract afn <8 x float> %i.bc, %i.bb
  %i.be = fdiv reassoc nsz arcp contract afn <8 x float> %i.bd, %i.az
  %i.bf = fadd reassoc nsz arcp contract afn <8 x float> %i.be, %i.ba
  %i.bg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bf, <8 x float> %broadcast.splat87)
  %i.bh = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bg, <8 x float> %broadcast.splat89)
  %i.bi = fmul reassoc nsz arcp contract afn <8 x float> %i.ag, %i.ar
  %i.bj = fadd reassoc nsz arcp contract afn <8 x float> %i.ak, %i.ag
  %i.bk = fmul reassoc nsz arcp contract afn <8 x float> %i.bc, %i.bj
  %i.bl = fdiv reassoc nsz arcp contract afn <8 x float> %i.bk, %i.az
  %i.bm = fadd reassoc nsz arcp contract afn <8 x float> %i.bl, %i.bi
  %i.bn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bm, <8 x float> %broadcast.splat91)
  %i.bo = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bn, <8 x float> %broadcast.splat93)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aa
  %i.bq = fmul reassoc nsz arcp contract afn <8 x float> %i.bo, splat (float 1.280000e+02)
  %i.br = shufflevector <8 x float> %i.ay, <8 x float> %i.bh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bs = fmul reassoc nsz arcp contract afn <16 x float> %i.br, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.bt = shufflevector <8 x float> %i.bq, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bs, <16 x float> %i.bt, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.bp, align 4, !tbaa !34, !alias.scope !410, !noalias !411
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %scalar.ph.preheader, label %vector.body, !llvm.loop !404

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.051 = phi i64 [ %i.ea, %scalar.ph ], [ %.051.ph, %scalar.ph.preheader ] ; 2 uses
  %.04250 = phi i64 [ %i.eb, %scalar.ph ], [ %.04250.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.051
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.04250 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !34
  %i.by = fmul reassoc nsz arcp contract afn float %i.bx, f0x3C23D70A ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04250 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !34
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, f0x3C23D70A
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.ce = load float, ptr %6, align 4, !tbaa !34
  %i.cf = load float, ptr %5, align 4, !tbaa !34
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cf) ; 4 uses
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, %i.ce ; 5 uses
  %i.ci = fadd reassoc nsz arcp contract afn float %i.cg, %i.by
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ci, float 0.000000e+00)
  %i.ck = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cj, float %i.ch) ; 2 uses
  %i.cl = fadd reassoc nsz arcp contract afn float %i.cg, %i.cc
  %i.cm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cl, float 0.000000e+00)
  %i.cn = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cm, float %i.ch)
  %i.co = fmul reassoc nsz arcp contract afn float %i.ch, 2.000000e+00
  %i.cp = fmul reassoc nsz arcp contract afn float %i.co, %i.cn
  %9 = fadd reassoc nsz arcp contract afn float %i.ck, %i.cp
  %10 = fsub reassoc nsz arcp contract afn float %9, %i.ch
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.by, float f0x3C23D70A)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04250
  %i.cs = load float, ptr %i.bv, align 4, !tbaa !34 ; 3 uses
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.cs ; 3 uses
  %i.cu = fmul reassoc nsz arcp contract afn float %10, %i.ct
  %i.cv = load <2 x float>, ptr %i.bz, align 4, !tbaa !34
  %i.cw = fmul reassoc nsz arcp contract afn <2 x float> %i.cv, splat (float 7.812500e-03) ; 2 uses
  %i.cx = load <2 x float>, ptr %i.cd, align 4, !tbaa !34
  %i.cy = fmul reassoc nsz arcp contract afn <2 x float> %i.cx, splat (float 7.812500e-03)
  %i.cz = fadd reassoc nsz arcp contract afn <2 x float> %i.cy, %i.cw
  %i.da = load <2 x float>, ptr %i.a, align 4, !tbaa !34
  %i.db = load <2 x float>, ptr %i.b, align 4, !tbaa !34
  %i.dc = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ct ; 2 uses
  %i.dd = fmul reassoc nsz arcp contract afn float %i.ck, %i.dc
  %i.de = fadd reassoc nsz arcp contract afn float %i.cu, %i.dd
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.de, float 0.000000e+00)
  %i.dg = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.df, float %i.ch)
  %i.dh = fsub reassoc nsz arcp contract afn float %i.dg, %i.cg ; 2 uses
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.ct
  %i.dj = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul reassoc nsz arcp contract afn <2 x float> %i.cw, %i.dk
  %i.dm = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul reassoc nsz arcp contract afn <2 x float> %i.dn, %i.cz
  %i.dp = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fdiv reassoc nsz arcp contract afn <2 x float> %i.do, %i.dq
  %i.ds = fadd reassoc nsz arcp contract afn <2 x float> %i.dr, %i.dl
  %i.dt = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ds, <2 x float> %i.da)
  %i.du = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dt, <2 x float> %i.db)
  %i.dv = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.dw = shufflevector <2 x float> %i.du, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dx = shufflevector <4 x float> %i.dv, <4 x float> %i.dw, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.dy = insertelement <4 x float> %i.dx, float %i.cs, i64 3
  %i.dz = fmul reassoc nsz arcp contract afn <4 x float> %i.dy, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.dz, ptr %i.cr, align 4, !tbaa !34
  %i.ea = add nuw i64 %.051, 1                    ; 2 uses
  %i.eb = add i64 %.04250, 4
  %exitcond.not = icmp eq i64 %i.ea, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !405
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_pinlight(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %.049.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.p, %vector.body ]
  %.04248.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.e = shl i64 %4, 4                            ; 3 uses
  %i.f = getelementptr i8, ptr %2, i64 %i.e       ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 %i.e
  %i.h = getelementptr i8, ptr %i.g, i64 -4
  %i.i = getelementptr i8, ptr %1, i64 %i.e
  %i.j = getelementptr i8, ptr %i.i, i64 -12
  %i.k = getelementptr i8, ptr %6, i64 12
  %i.l = getelementptr i8, ptr %5, i64 12
  %bound0 = icmp ult ptr %2, %i.h
  %bound1 = icmp ult ptr %0, %i.f
  %found.conflict = and i1 %bound0, %bound1
  %bound068 = icmp ult ptr %2, %i.j
  %bound169 = icmp ult ptr %1, %i.f
  %found.conflict70 = and i1 %bound068, %bound169
  %conflict.rdx = or i1 %found.conflict, %found.conflict70
  %bound071 = icmp ult ptr %2, %i.k
  %bound172 = icmp ult ptr %6, %i.f
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %conflict.rdx, %found.conflict73
  %bound075 = icmp ult ptr %2, %i.l
  %bound176 = icmp ult ptr %5, %i.f
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx78 = or i1 %conflict.rdx74, %found.conflict77
  br i1 %conflict.rdx78, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.m = and i64 %4, 7                            ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 8, i64 %i.m
  %n.vec = sub i64 %4, %i.o                       ; 3 uses
  %i.p = shl i64 %n.vec, 2
  %i.q = load float, ptr %6, align 4, !tbaa !34, !alias.scope !420
  %i.r = load float, ptr %5, align 4, !tbaa !34, !alias.scope !421
  %.scalar = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.r) ; 2 uses
  %i.s = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.t = shufflevector <8 x float> %i.s, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.scalar94 = fadd reassoc nsz arcp contract afn float %.scalar, %i.q
  %i.u = insertelement <8 x float> poison, float %.scalar94, i64 0
  %i.v = shufflevector <8 x float> %i.u, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %i.v, splat (float 5.000000e-01) ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn <8 x float> %i.v, splat (float 2.000000e+00) ; 2 uses
  %i.y = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !421
  %broadcast.splatinsert85 = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat86 = shufflevector <8 x float> %broadcast.splatinsert85, <8 x float> poison, <8 x i32> zeroinitializer
  %i.z = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !420
  %broadcast.splatinsert87 = insertelement <8 x float> poison, float %i.z, i64 0
  %broadcast.splat88 = shufflevector <8 x float> %broadcast.splatinsert87, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aa = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !421
  %broadcast.splatinsert89 = insertelement <8 x float> poison, float %i.aa, i64 0
  %broadcast.splat90 = shufflevector <8 x float> %broadcast.splatinsert89, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ab = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !420
  %broadcast.splatinsert91 = insertelement <8 x float> poison, float %i.ab, i64 0
  %broadcast.splat92 = shufflevector <8 x float> %broadcast.splatinsert91, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = shl i64 %index, 2                       ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.ad, align 4, !tbaa !34 ; 3 uses
  %i.ae = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  %wide.vec = load <32 x float>, ptr %i.af, align 4, !tbaa !34, !alias.scope !422 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec81 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec82 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A)
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec81, splat (float 7.812500e-03)
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec82, splat (float 7.812500e-03)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %wide.vec83 = load <32 x float>, ptr %i.aj, align 4, !tbaa !34, !alias.scope !423
  %strided.vec84 = shufflevector <32 x float> %wide.vec83, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ak = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec84, splat (float f0x3C23D70A)
  %i.al = fadd reassoc nsz arcp contract afn <8 x float> %i.t, %i.ag
  %i.am = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.al, <8 x float> zeroinitializer)
  %i.an = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.am, <8 x float> %i.v) ; 4 uses
  %i.ao = fadd reassoc nsz arcp contract afn <8 x float> %i.t, %i.ak
  %i.ap = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ao, <8 x float> zeroinitializer)
  %i.aq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ap, <8 x float> %i.v) ; 3 uses
  %i.ar = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.aq, %i.w
  %i.as = fmul reassoc nsz arcp contract afn <8 x float> %i.aq, %i.x
  %i.at = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.an, <8 x float> %i.as)
  %i.au = fsub reassoc nsz arcp contract afn <8 x float> %i.aq, %i.w
  %i.av = fmul reassoc nsz arcp contract afn <8 x float> %i.au, %i.x
  %i.aw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.an, <8 x float> %i.av)
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.ar, <8 x float> %i.aw, <8 x float> %i.at
  %i.ax = fsub reassoc nsz arcp contract afn <8 x float> %predphi, %i.an
  %i.ay = fmul reassoc nsz arcp contract afn <8 x float> %i.ae, %i.ax
  %i.az = fadd reassoc nsz arcp contract afn <8 x float> %i.ay, %i.an
  %i.ba = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.az, <8 x float> zeroinitializer)
  %i.bb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ba, <8 x float> %i.v)
  %i.bc = fsub reassoc nsz arcp contract afn <8 x float> %i.bb, %i.t
  %i.bd = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ah, <8 x float> %broadcast.splat86)
  %i.be = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bd, <8 x float> %broadcast.splat88)
  %i.bf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ai, <8 x float> %broadcast.splat90)
  %i.bg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bf, <8 x float> %broadcast.splat92)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ac
  %i.bi = fmul reassoc nsz arcp contract afn <8 x float> %i.bg, splat (float 1.280000e+02)
  %i.bj = shufflevector <8 x float> %i.bc, <8 x float> %i.be, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bk = fmul reassoc nsz arcp contract afn <16 x float> %i.bj, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.bl = shufflevector <8 x float> %i.bi, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bk, <16 x float> %i.bl, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.bh, align 4, !tbaa !34, !alias.scope !424, !noalias !425
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %scalar.ph.preheader, label %vector.body, !llvm.loop !418

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.049 = phi i64 [ %i.dl, %bb.d ], [ %.049.ph, %scalar.ph.preheader ] ; 4 uses
  %.04248 = phi i64 [ %i.dk, %bb.d ], [ %.04248.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.04248
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !34 ; 3 uses
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.049 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !34
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, f0x3C23D70A
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bu = load <2 x float>, ptr %i.bt, align 4, !tbaa !34
  %i.bv = fmul reassoc nsz arcp contract afn <2 x float> %i.bu, splat (float 7.812500e-03)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.049
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !34
  %i.by = fmul reassoc nsz arcp contract afn float %i.bx, f0x3C23D70A
  %i.bz = load float, ptr %6, align 4, !tbaa !34
  %i.ca = load float, ptr %5, align 4, !tbaa !34
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ca) ; 4 uses
  %i.cc = fadd reassoc nsz arcp contract afn float %i.cb, %i.bz ; 5 uses
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cb, %i.bs
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cd, float 0.000000e+00)
  %i.cf = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ce, float %i.cc) ; 4 uses
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cb, %i.by
  %i.ch = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cg, float 0.000000e+00)
  %i.ci = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ch, float %i.cc) ; 3 uses
  %i.cj = fmul reassoc nsz arcp contract afn float %i.cc, 5.000000e-01 ; 2 uses
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cc, 2.000000e+00 ; 2 uses
end_hunk_0
begin_hunk_1_@_blend_lightness:bb.a
  %i.bv = add nuw i64 %.027, 1                    ; 2 uses
  %i.bw = add i64 %.02226, 4
  %exitcond.not = icmp eq i64 %i.bv, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !433
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_chromaticity(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %dt_Lab_2_LCH.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %dt_Lab_2_LCH.exit
  %.052 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %dt_Lab_2_LCH.exit ] ; 2 uses
  %.02251 = phi i64 [ 0, %.lr.ph ], [ %i.bm, %dt_Lab_2_LCH.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.052
  %i.d = load float, ptr %i.c, align 4, !tbaa !34 ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02251 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !34
  %i.g = fmul reassoc nsz arcp contract afn float %i.f, f0x3C23D70A
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !34
  %i.j = fmul reassoc nsz arcp contract afn <2 x float> %i.i, splat (float 7.812500e-03)
  %i.k = load <2 x float>, ptr %5, align 4, !tbaa !34 ; 4 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.g, float %i.l)
  %i.n = load <2 x float>, ptr %6, align 4, !tbaa !34 ; 3 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.m, float %i.o)
  %i.q = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %i.r = load float, ptr %i.a, align 4, !tbaa !34 ; 3 uses
  %i.s = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 1
  %i.u = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.j, <2 x float> %i.t) ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  %i.w = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.v, float %i.q) ; 2 uses
  %i.x = load float, ptr %i.b, align 4, !tbaa !34 ; 3 uses
  %i.y = extractelement <2 x float> %i.u, i64 1
  %i.z = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.y, float %i.x) ; 2 uses
  %i.aa = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.z, float %i.w) ; 3 uses
  %i.ab = fcmp reassoc nsz arcp contract afn ogt float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = fmul reassoc nnan nsz arcp contract afn float %i.aa, f0x3E22F983
  br label %dt_Lab_2_LCH.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aa)
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, f0x3E22F983
  %i.af = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ae
  br label %dt_Lab_2_LCH.exit

dt_Lab_2_LCH.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi nsz float [ %i.ac, %bb.c ], [ %i.af, %bb.d ]
  %i.ag = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.w, float noundef %i.z) #15 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02251 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !34
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, 7.812500e-03
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !34
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, 7.812500e-03
  %i.ao = extractelement <2 x float> %i.k, i64 1
  %i.ap = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ak, float %i.ao)
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ap, float %i.q)
  %i.ar = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.an, float %i.r)
  %i.as = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ar, float %i.x)
  %i.at = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.aq, float noundef %i.as) #15
  %i.au = fsub reassoc nsz arcp contract afn float %i.at, %i.ag
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %i.d
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, %i.ag ; 2 uses
  %i.ax = fmul reassoc nsz arcp contract afn float %.0.i, f0x40C90FDB
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ax) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.ay = fmul reassoc nsz arcp contract afn float %i.aw, %cos
  %i.az = fmul reassoc nsz arcp contract afn float %i.aw, %sin
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.az, float %i.r)
  %i.bb = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ba, float %i.x)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02251 ; 3 uses
  %i.bd = insertelement <2 x float> poison, float %i.p, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.ay, i64 1
  %i.bf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.be, <2 x float> %i.k)
  %i.bg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bf, <2 x float> %i.n)
  %i.bh = fmul reassoc nsz arcp contract afn <2 x float> %i.bg, <float 1.000000e+02, float 1.280000e+02>
  store <2 x float> %i.bh, ptr %i.bc, align 4, !tbaa !34
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bb, 1.280000e+02
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store float %i.bi, ptr %i.bj, align 4, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store float %i.d, ptr %i.bk, align 4, !tbaa !34
  %i.bl = add nuw i64 %.052, 1                    ; 2 uses
  %i.bm = add i64 %.02251, 4
  %exitcond.not = icmp eq i64 %i.bl, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_hue(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %dt_Lab_2_LCH.exit30, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %dt_Lab_2_LCH.exit30
  %.060 = phi i64 [ 0, %.lr.ph ], [ %i.bz, %dt_Lab_2_LCH.exit30 ] ; 4 uses
  %.02759 = phi i64 [ 0, %.lr.ph ], [ %i.by, %dt_Lab_2_LCH.exit30 ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02759
  %i.d = load float, ptr %i.c, align 4, !tbaa !34 ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.060 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !34
  %i.g = fmul reassoc nsz arcp contract afn float %i.f, f0x3C23D70A
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !34
  %i.j = fmul reassoc nsz arcp contract afn <2 x float> %i.i, splat (float 7.812500e-03)
  %i.k = load <2 x float>, ptr %5, align 4, !tbaa !34 ; 3 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.g, float %i.l)
  %i.n = load <2 x float>, ptr %6, align 4, !tbaa !34 ; 4 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.m, float %i.o)
  %i.q = extractelement <2 x float> %i.n, i64 1
  %i.r = load float, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  %i.s = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 1 ; 2 uses
  %i.u = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.j, <2 x float> %i.t) ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  %i.w = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.v, float %i.q) ; 2 uses
  %i.x = load float, ptr %i.b, align 4, !tbaa !34 ; 3 uses
  %i.y = extractelement <2 x float> %i.u, i64 1
  %i.z = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.y, float %i.x) ; 2 uses
  %i.aa = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.z, float %i.w) ; 3 uses
  %i.ab = fcmp reassoc nsz arcp contract afn ogt float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = fmul reassoc nnan nsz arcp contract afn float %i.aa, f0x3E22F983
  br label %dt_Lab_2_LCH.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aa)
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, f0x3E22F983
  %i.af = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ae
  br label %dt_Lab_2_LCH.exit

dt_Lab_2_LCH.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi nsz float [ %i.ac, %bb.c ], [ %i.af, %bb.d ] ; 3 uses
  %i.ag = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.w, float noundef %i.z) #15 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.060
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load <2 x float>, ptr %i.ai, align 4, !tbaa !34
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, splat (float 7.812500e-03)
  %i.al = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ak, <2 x float> %i.t)
  %i.am = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.an = insertelement <2 x float> %i.am, float %i.x, i64 1
  %i.ao = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.al, <2 x float> %i.an) ; 2 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 0
  %i.aq = extractelement <2 x float> %i.ao, i64 1
  %i.ar = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.aq, float %i.ap) ; 3 uses
  %i.as = fcmp reassoc nsz arcp contract afn ogt float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %dt_Lab_2_LCH.exit
  %i.at = fmul reassoc nnan nsz arcp contract afn float %i.ar, f0x3E22F983
  br label %dt_Lab_2_LCH.exit30

bb.f:                                             ; preds = %dt_Lab_2_LCH.exit
  %i.au = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ar)
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, f0x3E22F983
  %i.aw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.av
  br label %dt_Lab_2_LCH.exit30

dt_Lab_2_LCH.exit30:                              ; preds = %bb.e, %bb.f
  %.0.i29 = phi nsz float [ %i.at, %bb.e ], [ %i.aw, %bb.f ] ; 2 uses
  %i.ax = fsub reassoc nsz arcp contract afn float %.0.i, %.0.i29
  %i.ay = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ax) ; 3 uses
  %i.az = fcmp reassoc nsz arcp contract afn ogt float %i.ay, 5.000000e-01
  %i.ba = fneg reassoc nsz arcp contract afn float %i.d
  %i.bb = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.ay
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.ba
  %i.bd = fdiv reassoc nsz arcp contract afn float %i.bc, %i.ay
  %i.be = select reassoc nsz arcp contract afn i1 %i.az, float %i.bd, float %i.d
  %i.bf = fsub reassoc nsz arcp contract afn float %.0.i29, %.0.i
  %i.bg = fmul reassoc nsz arcp contract afn float %i.be, %i.bf
  %i.bh = fadd reassoc nsz arcp contract afn float %.0.i, %i.bg
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, 1.000000e+00
  %i.bj = frem reassoc nsz arcp contract afn float %i.bi, 1.000000e+00
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, f0x40C90FDB
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bk) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.bl = fmul reassoc nsz arcp contract afn float %cos, %i.ag
  %i.bm = fmul reassoc nsz arcp contract afn float %sin, %i.ag
  %i.bn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bm, float %i.r)
  %i.bo = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bn, float %i.x)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.060 ; 3 uses
  %i.bq = insertelement <2 x float> poison, float %i.p, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bl, i64 1
  %i.bs = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.br, <2 x float> %i.k)
  %i.bt = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bs, <2 x float> %i.n)
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, <float 1.000000e+02, float 1.280000e+02>
  store <2 x float> %i.bu, ptr %i.bp, align 4, !tbaa !34
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bo, 1.280000e+02
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store float %i.bv, ptr %i.bw, align 4, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store float %i.d, ptr %i.bx, align 4, !tbaa !34
  %i.by = add nuw i64 %.02759, 1                  ; 2 uses
  %i.bz = add i64 %.060, 4
  %exitcond.not = icmp eq i64 %i.by, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_color(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %dt_Lab_2_LCH.exit32, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %dt_Lab_2_LCH.exit32
  %.064 = phi i64 [ 0, %.lr.ph ], [ %i.cc, %dt_Lab_2_LCH.exit32 ] ; 4 uses
  %.02963 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %dt_Lab_2_LCH.exit32 ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02963
  %i.d = load float, ptr %i.c, align 4, !tbaa !34 ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.064 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !34
  %i.g = fmul reassoc nsz arcp contract afn float %i.f, f0x3C23D70A
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !34
  %i.j = fmul reassoc nsz arcp contract afn <2 x float> %i.i, splat (float 7.812500e-03)
  %i.k = load <2 x float>, ptr %5, align 4, !tbaa !34 ; 3 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.g, float %i.l)
  %i.n = load <2 x float>, ptr %6, align 4, !tbaa !34 ; 3 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.m, float %i.o)
  %i.q = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %i.r = load float, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  %i.s = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 1 ; 2 uses
  %i.u = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.j, <2 x float> %i.t) ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  %i.w = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.v, float %i.q) ; 2 uses
  %i.x = load float, ptr %i.b, align 4, !tbaa !34 ; 3 uses
  %i.y = extractelement <2 x float> %i.u, i64 1
  %i.z = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.y, float %i.x) ; 2 uses
  %i.aa = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.z, float %i.w) ; 3 uses
  %i.ab = fcmp reassoc nsz arcp contract afn ogt float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = fmul reassoc nnan nsz arcp contract afn float %i.aa, f0x3E22F983
  br label %dt_Lab_2_LCH.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aa)
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, f0x3E22F983
  %i.af = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ae
  br label %dt_Lab_2_LCH.exit

dt_Lab_2_LCH.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi nsz float [ %i.ac, %bb.c ], [ %i.af, %bb.d ] ; 3 uses
  %i.ag = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.w, float noundef %i.z) #15 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.064
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load <2 x float>, ptr %i.ai, align 4, !tbaa !34
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, splat (float 7.812500e-03)
  %i.al = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ak, <2 x float> %i.t) ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  %i.an = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.am, float %i.q) ; 2 uses
  %i.ao = extractelement <2 x float> %i.al, i64 1
  %i.ap = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ao, float %i.x) ; 2 uses
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ap, float %i.an) ; 3 uses
  %i.ar = fcmp reassoc nsz arcp contract afn ogt float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %dt_Lab_2_LCH.exit
  %i.as = fmul reassoc nnan nsz arcp contract afn float %i.aq, f0x3E22F983
  br label %dt_Lab_2_LCH.exit32

bb.f:                                             ; preds = %dt_Lab_2_LCH.exit
  %i.at = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aq)
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, f0x3E22F983
  %i.av = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.au
  br label %dt_Lab_2_LCH.exit32

dt_Lab_2_LCH.exit32:                              ; preds = %bb.e, %bb.f
  %.0.i31 = phi nsz float [ %i.as, %bb.e ], [ %i.av, %bb.f ] ; 2 uses
  %i.aw = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.an, float noundef %i.ap) #15
  %i.ax = fsub reassoc nsz arcp contract afn float %i.aw, %i.ag
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.d
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, %i.ag ; 2 uses
  %i.ba = fsub reassoc nsz arcp contract afn float %.0.i, %.0.i31
  %i.bb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ba) ; 3 uses
  %i.bc = fcmp reassoc nsz arcp contract afn ogt float %i.bb, 5.000000e-01
  %i.bd = fneg reassoc nsz arcp contract afn float %i.d
  %i.be = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.bb
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %i.bd
  %i.bg = fdiv reassoc nsz arcp contract afn float %i.bf, %i.bb
  %i.bh = select reassoc nsz arcp contract afn i1 %i.bc, float %i.bg, float %i.d
  %i.bi = fsub reassoc nsz arcp contract afn float %.0.i31, %.0.i
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bh, %i.bi
  %i.bk = fadd reassoc nsz arcp contract afn float %.0.i, %i.bj
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, 1.000000e+00
  %i.bm = frem reassoc nsz arcp contract afn float %i.bl, 1.000000e+00
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, f0x40C90FDB
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bn) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.bo = fmul reassoc nsz arcp contract afn float %cos, %i.az
  %i.bp = fmul reassoc nsz arcp contract afn float %sin, %i.az
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bp, float %i.r)
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bq, float %i.x)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064 ; 3 uses
  %i.bt = insertelement <2 x float> poison, float %i.p, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bo, i64 1
  %i.bv = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bu, <2 x float> %i.k)
  %i.bw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bv, <2 x float> %i.n)
  %i.bx = fmul reassoc nsz arcp contract afn <2 x float> %i.bw, <float 1.000000e+02, float 1.280000e+02>
  store <2 x float> %i.bx, ptr %i.bs, align 4, !tbaa !34
  %i.by = fmul reassoc nsz arcp contract afn float %i.br, 1.280000e+02
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store float %i.by, ptr %i.bz, align 4, !tbaa !34
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store float %i.d, ptr %i.ca, align 4, !tbaa !34
  %i.cb = add nuw i64 %.02963, 1                  ; 2 uses
  %i.cc = add i64 %.064, 4
  %exitcond.not = icmp eq i64 %i.cb, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_normal_bounded(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %.02527.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.e = shl i64 %4, 4                            ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 %i.e       ; 4 uses
  %i.g = add i64 %i.e, -4                         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %i.j = getelementptr i8, ptr %5, i64 12
  %i.k = getelementptr i8, ptr %6, i64 12
  %bound0 = icmp ult ptr %2, %i.h
  %bound1 = icmp ult ptr %0, %i.f
  %found.conflict = and i1 %bound0, %bound1
  %bound048 = icmp ult ptr %2, %i.i
  %bound149 = icmp ult ptr %1, %i.f
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx = or i1 %found.conflict, %found.conflict50
  %bound051 = icmp ult ptr %2, %i.j
  %bound152 = icmp ult ptr %5, %i.f
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx54 = or i1 %conflict.rdx, %found.conflict53
  %bound055 = icmp ult ptr %2, %i.k
  %bound156 = icmp ult ptr %6, %i.f
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx58 = or i1 %conflict.rdx54, %found.conflict57
  br i1 %conflict.rdx58, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.l = and i64 %4, 7                            ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 8, i64 %i.l
  %n.vec = sub i64 %4, %i.n                       ; 2 uses
  %i.o = load float, ptr %5, align 4, !tbaa !34, !alias.scope !448
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.o, i64 0
  %i.p = load float, ptr %6, align 4, !tbaa !34, !alias.scope !449
  %broadcast.splatinsert65 = insertelement <8 x float> poison, float %i.p, i64 0
  %i.q = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !448
  %broadcast.splatinsert67 = insertelement <8 x float> poison, float %i.q, i64 0
  %i.r = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !449
  %broadcast.splatinsert69 = insertelement <8 x float> poison, float %i.r, i64 0
  %i.s = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !448
  %broadcast.splatinsert71 = insertelement <8 x float> poison, float %i.s, i64 0
  %broadcast.splat72 = shufflevector <8 x float> %broadcast.splatinsert71, <8 x float> poison, <8 x i32> zeroinitializer
  %i.t = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !449
  %broadcast.splatinsert73 = insertelement <8 x float> poison, float %i.t, i64 0
  %broadcast.splat74 = shufflevector <8 x float> %broadcast.splatinsert73, <8 x float> poison, <8 x i32> zeroinitializer
  %i.u = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert67, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.v = shufflevector <8 x float> %broadcast.splatinsert65, <8 x float> %broadcast.splatinsert69, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = shl i64 %index, 2                        ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.x, align 4, !tbaa !34 ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %wide.vec = load <32 x float>, ptr %i.y, align 4, !tbaa !34, !alias.scope !450 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec59 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec60 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A) ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec59, splat (float 7.812500e-03) ; 2 uses
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec60, splat (float 7.812500e-03) ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.w
  %wide.vec61 = load <32 x float>, ptr %i.ac, align 4, !tbaa !34, !alias.scope !451 ; 3 uses
  %strided.vec62 = shufflevector <32 x float> %wide.vec61, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec63 = shufflevector <32 x float> %wide.vec61, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec64 = shufflevector <32 x float> %wide.vec61, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec62, splat (float f0x3C23D70A)
  %i.ae = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec63, splat (float 7.812500e-03)
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec64, splat (float 7.812500e-03)
  %i.ag = fsub reassoc nsz arcp contract afn <8 x float> %i.ad, %i.z
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %i.ag, %wide.load
  %i.ai = fadd reassoc nsz arcp contract afn <8 x float> %i.ah, %i.z
  %i.aj = fsub reassoc nsz arcp contract afn <8 x float> %i.ae, %i.aa
  %i.ak = fmul reassoc nsz arcp contract afn <8 x float> %i.aj, %wide.load
  %i.al = fadd reassoc nsz arcp contract afn <8 x float> %i.ak, %i.aa
  %i.am = fsub reassoc nsz arcp contract afn <8 x float> %i.af, %i.ab
  %i.an = fmul reassoc nsz arcp contract afn <8 x float> %i.am, %wide.load
  %i.ao = fadd reassoc nsz arcp contract afn <8 x float> %i.an, %i.ab
  %i.ap = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ao, <8 x float> %broadcast.splat72)
  %i.aq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ap, <8 x float> %broadcast.splat74)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.w
  %i.as = fmul reassoc nsz arcp contract afn <8 x float> %i.aq, splat (float 1.280000e+02)
  %i.at = shufflevector <8 x float> %i.ai, <8 x float> %i.al, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.au = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.at, <16 x float> %i.u)
  %i.av = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.au, <16 x float> %i.v)
  %i.aw = fmul reassoc nsz arcp contract afn <16 x float> %i.av, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.ax = shufflevector <8 x float> %i.as, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.aw, <16 x float> %i.ax, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ar, align 4, !tbaa !34, !alias.scope !452, !noalias !453
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %scalar.ph.preheader, label %vector.body, !llvm.loop !446

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02527 = phi i64 [ %i.ck, %scalar.ph ], [ %.02527.ph, %scalar.ph.preheader ] ; 3 uses
  %i.az = shl i64 %.02527, 2                      ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02527
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.az ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !34
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, f0x3C23D70A ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.az ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !34
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, f0x3C23D70A
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bj = fsub reassoc nsz arcp contract afn float %i.bh, %i.bd
  %i.bk = load float, ptr %5, align 4, !tbaa !34
  %i.bl = load float, ptr %6, align 4, !tbaa !34
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.az
  %i.bn = load float, ptr %i.ba, align 4, !tbaa !34 ; 3 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bj, %i.bn
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bd
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bp, float %i.bk)
  %i.br = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bq, float %i.bl)
  %i.bs = load <2 x float>, ptr %i.be, align 4, !tbaa !34
  %i.bt = fmul reassoc nsz arcp contract afn <2 x float> %i.bs, splat (float 7.812500e-03) ; 2 uses
  %i.bu = load <2 x float>, ptr %i.bi, align 4, !tbaa !34
  %i.bv = fmul reassoc nsz arcp contract afn <2 x float> %i.bu, splat (float 7.812500e-03)
  %i.bw = fsub reassoc nsz arcp contract afn <2 x float> %i.bv, %i.bt
  %i.bx = load <2 x float>, ptr %i.a, align 4, !tbaa !34
  %i.by = load <2 x float>, ptr %i.b, align 4, !tbaa !34
  %i.bz = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul reassoc nsz arcp contract afn <2 x float> %i.bw, %i.ca
  %i.cc = fadd reassoc nsz arcp contract afn <2 x float> %i.cb, %i.bt
  %i.cd = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cc, <2 x float> %i.bx)
  %i.ce = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cd, <2 x float> %i.by)
  %i.cf = insertelement <4 x float> poison, float %i.br, i64 0
  %i.cg = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ch = shufflevector <4 x float> %i.cf, <4 x float> %i.cg, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ci = insertelement <4 x float> %i.ch, float %i.bn, i64 3
  %i.cj = fmul reassoc nsz arcp contract afn <4 x float> %i.ci, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.cj, ptr %i.bm, align 4, !tbaa !34
  %i.ck = add nuw i64 %.02527, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ck, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !447
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_coloradjust(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %dt_Lab_2_LCH.exit32, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %dt_Lab_2_LCH.exit32
  %.061 = phi i64 [ 0, %.lr.ph ], [ %i.cc, %dt_Lab_2_LCH.exit32 ] ; 4 uses
  %.02960 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %dt_Lab_2_LCH.exit32 ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02960
  %i.d = load float, ptr %i.c, align 4, !tbaa !34 ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.061
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !34
  %i.h = fmul reassoc nsz arcp contract afn <2 x float> %i.g, splat (float 7.812500e-03)
  %i.i = load <2 x float>, ptr %5, align 4, !tbaa !34 ; 3 uses
  %i.j = load <2 x float>, ptr %6, align 4, !tbaa !34 ; 3 uses
  %i.k = extractelement <2 x float> %i.j, i64 1   ; 2 uses
  %i.l = load float, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  %i.m = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.n = insertelement <2 x float> %i.m, float %i.l, i64 1 ; 2 uses
  %i.o = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.h, <2 x float> %i.n) ; 2 uses
  %i.p = extractelement <2 x float> %i.o, i64 0
  %i.q = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.p, float %i.k) ; 2 uses
  %i.r = load float, ptr %i.b, align 4, !tbaa !34 ; 3 uses
  %i.s = extractelement <2 x float> %i.o, i64 1
  %i.t = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.s, float %i.r) ; 2 uses
  %i.u = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.t, float %i.q) ; 3 uses
  %i.v = fcmp reassoc nsz arcp contract afn ogt float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = fmul reassoc nnan nsz arcp contract afn float %i.u, f0x3E22F983
  br label %dt_Lab_2_LCH.exit

bb.d:                                             ; preds = %bb.b
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.u)
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, f0x3E22F983
  %i.z = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.y
  br label %dt_Lab_2_LCH.exit

dt_Lab_2_LCH.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi nsz float [ %i.w, %bb.c ], [ %i.z, %bb.d ] ; 3 uses
  %i.aa = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.q, float noundef %i.t) #15 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.061 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !34
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, f0x3C23D70A
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.af = load <2 x float>, ptr %i.ae, align 4, !tbaa !34
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.af, splat (float 7.812500e-03)
  %i.ah = extractelement <2 x float> %i.i, i64 0
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ad, float %i.ah)
  %i.aj = extractelement <2 x float> %i.j, i64 0
  %i.ak = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ai, float %i.aj)
  %i.al = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ag, <2 x float> %i.n) ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  %i.an = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.am, float %i.k) ; 2 uses
  %i.ao = extractelement <2 x float> %i.al, i64 1
  %i.ap = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ao, float %i.r) ; 2 uses
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ap, float %i.an) ; 3 uses
  %i.ar = fcmp reassoc nsz arcp contract afn ogt float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %dt_Lab_2_LCH.exit
  %i.as = fmul reassoc nnan nsz arcp contract afn float %i.aq, f0x3E22F983
  br label %dt_Lab_2_LCH.exit32

bb.f:                                             ; preds = %dt_Lab_2_LCH.exit
  %i.at = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aq)
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, f0x3E22F983
  %i.av = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.au
  br label %dt_Lab_2_LCH.exit32

dt_Lab_2_LCH.exit32:                              ; preds = %bb.e, %bb.f
  %.0.i31 = phi nsz float [ %i.as, %bb.e ], [ %i.av, %bb.f ] ; 2 uses
  %i.aw = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.an, float noundef %i.ap) #15
  %i.ax = fsub reassoc nsz arcp contract afn float %i.aw, %i.aa
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.d
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, %i.aa ; 2 uses
  %i.ba = fsub reassoc nsz arcp contract afn float %.0.i, %.0.i31
  %i.bb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ba) ; 3 uses
  %i.bc = fcmp reassoc nsz arcp contract afn ogt float %i.bb, 5.000000e-01
  %i.bd = fneg reassoc nsz arcp contract afn float %i.d
  %i.be = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.bb
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %i.bd
  %i.bg = fdiv reassoc nsz arcp contract afn float %i.bf, %i.bb
  %i.bh = select reassoc nsz arcp contract afn i1 %i.bc, float %i.bg, float %i.d
  %i.bi = fsub reassoc nsz arcp contract afn float %.0.i31, %.0.i
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bh, %i.bi
  %i.bk = fadd reassoc nsz arcp contract afn float %.0.i, %i.bj
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, 1.000000e+00
  %i.bm = frem reassoc nsz arcp contract afn float %i.bl, 1.000000e+00
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, f0x40C90FDB
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bn) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.bo = fmul reassoc nsz arcp contract afn float %cos, %i.az
  %i.bp = fmul reassoc nsz arcp contract afn float %sin, %i.az
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bp, float %i.l)
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bq, float %i.r)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.061 ; 3 uses
  %i.bt = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bo, i64 1
  %i.bv = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bu, <2 x float> %i.i)
  %i.bw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bv, <2 x float> %i.j)
  %i.bx = fmul reassoc nsz arcp contract afn <2 x float> %i.bw, <float 1.000000e+02, float 1.280000e+02>
  store <2 x float> %i.bx, ptr %i.bs, align 4, !tbaa !34
  %i.by = fmul reassoc nsz arcp contract afn float %i.br, 1.280000e+02
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store float %i.by, ptr %i.bz, align 4, !tbaa !34
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store float %i.d, ptr %i.ca, align 4, !tbaa !34
  %i.cb = add nuw i64 %.02960, 1                  ; 2 uses
  %i.cc = add i64 %.061, 4
  %exitcond.not = icmp eq i64 %i.cb, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_Lab_lightness(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader35, label %vector.memcheck

.lr.ph.preheader35:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.021.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ] ; 5 uses
  %.01620.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ae, %vector.body ] ; 5 uses
  %i.a = sub i64 %4, %.021.ph
  %.neg = add i64 %.021.ph, 1
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader35
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.021.ph
  %i.c = load float, ptr %i.b, align 4, !tbaa !34 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01620.ph ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !34
  %i.f = fmul reassoc nsz arcp contract afn float %i.e, f0x3C23D70A ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01620.ph
  %i.i = load float, ptr %i.h, align 4, !tbaa !34
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, f0x3C23D70A
  %i.k = fsub reassoc nsz arcp contract afn float %i.j, %i.f
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, %i.c
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, %i.f
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01620.ph ; 3 uses
  %i.o = fmul reassoc nsz arcp contract afn float %i.m, 1.000000e+02
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.q = load <2 x float>, ptr %i.g, align 4, !tbaa !34
  store float %i.o, ptr %i.n, align 4, !tbaa !34
  store <2 x float> %i.q, ptr %i.p, align 4, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store float %i.c, ptr %i.r, align 4, !tbaa !34
  %i.s = add nuw i64 %.021.ph, 1
  %i.t = add i64 %.01620.ph, 4
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader35
  %.021.unr = phi i64 [ %.021.ph, %.lr.ph.preheader35 ], [ %i.s, %.lr.ph.prol ]
  %.01620.unr = phi i64 [ %.01620.ph, %.lr.ph.preheader35 ], [ %i.t, %.lr.ph.prol ]
  %i.u = icmp eq i64 %4, %.neg
  br i1 %i.u, label %._crit_edge, label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.v = shl i64 %4, 4                            ; 3 uses
  %i.w = getelementptr i8, ptr %2, i64 %i.v       ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 %i.v
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %i.z = getelementptr i8, ptr %1, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.z, i64 -12
  %bound0 = icmp ult ptr %2, %i.y
  %bound1 = icmp ult ptr %0, %i.w
  %found.conflict = and i1 %bound0, %bound1
  %bound027 = icmp ult ptr %2, %i.aa
  %bound128 = icmp ult ptr %1, %i.w
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx = or i1 %found.conflict, %found.conflict29
  br i1 %conflict.rdx, label %.lr.ph.preheader35, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ab = and i64 %4, 7                           ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 8, i64 %i.ab
  %n.vec = sub i64 %4, %i.ad                      ; 3 uses
  %i.ae = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = shl i64 %index, 2                       ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.ag, align 4, !tbaa !34 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af
  %wide.vec = load <32 x float>, ptr %i.ah, align 4, !tbaa !34, !alias.scope !460 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec30 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec31 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A) ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.af
  %wide.vec32 = load <32 x float>, ptr %i.aj, align 4, !tbaa !34, !alias.scope !461
  %strided.vec33 = shufflevector <32 x float> %wide.vec32, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ak = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec33, splat (float f0x3C23D70A)
  %i.al = fsub reassoc nsz arcp contract afn <8 x float> %i.ak, %i.ai
  %i.am = fmul reassoc nsz arcp contract afn <8 x float> %i.al, %wide.load
  %i.an = fadd reassoc nsz arcp contract afn <8 x float> %i.am, %i.ai
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.af
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %i.an, splat (float 1.000000e+02)
  %i.aq = shufflevector <8 x float> %i.ap, <8 x float> %strided.vec30, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ar = shufflevector <8 x float> %strided.vec31, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.aq, <16 x float> %i.ar, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ao, align 4, !tbaa !34, !alias.scope !462, !noalias !463
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %.lr.ph.preheader35, label %vector.body, !llvm.loop !458

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.021 = phi i64 [ %i.cd, %.lr.ph ], [ %.021.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01620 = phi i64 [ %i.ce, %.lr.ph ], [ %.01620.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.021
  %i.au = load float, ptr %i.at, align 4, !tbaa !34 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01620 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !34
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, f0x3C23D70A ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01620
  %i.ba = load float, ptr %i.az, align 4, !tbaa !34
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, f0x3C23D70A
  %i.bc = fsub reassoc nsz arcp contract afn float %i.bb, %i.ax
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, %i.au
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %i.ax
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01620 ; 3 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.be, 1.000000e+02
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bi = load <2 x float>, ptr %i.ay, align 4, !tbaa !34
  store float %i.bg, ptr %i.bf, align 4, !tbaa !34
  store <2 x float> %i.bi, ptr %i.bh, align 4, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store float %i.au, ptr %i.bj, align 4, !tbaa !34
  %i.bk = add i64 %.01620, 4                      ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.021
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !34 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !34
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, f0x3C23D70A ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bk
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !34
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, f0x3C23D70A
  %i.bv = fsub reassoc nsz arcp contract afn float %i.bu, %i.bq
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, %i.bn
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %i.bq
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bk ; 3 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %i.bx, 1.000000e+02
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cb = load <2 x float>, ptr %i.br, align 4, !tbaa !34
  store float %i.bz, ptr %i.by, align 4, !tbaa !34
  store <2 x float> %i.cb, ptr %i.ca, align 4, !tbaa !34
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store float %i.bn, ptr %i.cc, align 4, !tbaa !34
  %i.cd = add nuw i64 %.021, 2                    ; 2 uses
  %i.ce = add i64 %.01620, 8
  %exitcond.not.1 = icmp eq i64 %i.cd, %4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !459
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_Lab_a(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader35, label %vector.memcheck

.lr.ph.preheader35:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.020.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ] ; 5 uses
  %.01619.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.aj, %vector.body ] ; 5 uses
  %i.a = sub i64 %4, %.020.ph
  %.neg = add i64 %.020.ph, 1
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_1
