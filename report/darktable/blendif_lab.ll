inline.NumInlined: 211
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_blend_vividlight:bb.a
  %.065 = phi i64 [ %i.ev, %bb.f ], [ %.065.ph, %scalar.ph.preheader ] ; 2 uses
  %.05464 = phi i64 [ %i.ew, %bb.f ], [ %.05464.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.065
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !39 ; 3 uses
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ce, %i.ce ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05464 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !39
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, f0x3C23D70A ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05464 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !39
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, f0x3C23D70A
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.co = load <2 x float>, ptr %i.cj, align 4, !tbaa !39
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, splat (float 7.812500e-03) ; 2 uses
  %i.cq = load <2 x float>, ptr %i.cn, align 4, !tbaa !39
  %i.cr = fmul reassoc nsz arcp contract afn <2 x float> %i.cq, splat (float 7.812500e-03)
  %i.cs = load float, ptr %6, align 4, !tbaa !39
  %i.ct = load float, ptr %5, align 4, !tbaa !39
  %i.cu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ct) ; 4 uses
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, %i.cs ; 10 uses
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cu, %i.ci
  %i.cx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cw, float 0.000000e+00)
  %i.cy = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cx, float %i.cv) ; 3 uses
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cu, %i.cm
  %i.da = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cz, float 0.000000e+00)
  %i.db = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.da, float %i.cv) ; 5 uses
  %i.dc = fmul reassoc nsz arcp contract afn float %i.cv, 5.000000e-01
  %i.dd = fmul reassoc nsz arcp contract afn float %i.cv, 2.000000e+00 ; 2 uses
  %i.de = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cf ; 2 uses
  %i.df = fmul reassoc nsz arcp contract afn float %i.cy, %i.de
  %i.dg = fcmp reassoc nsz arcp contract afn ogt float %i.db, %i.dc
  br i1 %i.dg, label %bb.b, label %bb.d

bb.b:                                             ; preds = %scalar.ph
  %i.dh = fcmp reassoc nsz arcp contract afn ult float %i.db, %i.cv
  br i1 %i.dh, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.di = fsub reassoc nsz arcp contract afn float %i.cv, %i.db
  %i.dj = fmul reassoc nsz arcp contract afn float %i.di, %i.dd
  %i.dk = fdiv reassoc nsz arcp contract afn float %i.cy, %i.dj
  br label %bb.f

bb.d:                                             ; preds = %scalar.ph
  %i.dl = fcmp reassoc nsz arcp contract afn ugt float %i.db, 0.000000e+00
  br i1 %i.dl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dm = fsub reassoc nsz arcp contract afn float %i.cv, %i.cy
  %i.dn = fmul reassoc nsz arcp contract afn float %i.db, %i.dd
  %i.do = fdiv reassoc nsz arcp contract afn float %i.dm, %i.dn
  %i.dp = fsub reassoc nsz arcp contract afn float %i.cv, %i.do
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %i.dq = phi reassoc nsz arcp contract afn float [ %i.dk, %bb.c ], [ 0.000000e+00, %bb.d ], [ %i.dp, %bb.e ], [ %i.cv, %bb.b ]
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dq, %i.cf
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, %i.df
  %i.dt = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ds, float 0.000000e+00)
  %i.du = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dt, float %i.cv)
  %i.dv = fsub reassoc nsz arcp contract afn float %i.du, %i.cu ; 2 uses
  %i.dw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ci, float f0x3C23D70A)
  %i.dx = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul reassoc nsz arcp contract afn <2 x float> %i.cp, %i.dy
  %i.ea = fadd reassoc nsz arcp contract afn <2 x float> %i.cr, %i.cp
  %i.eb = fmul reassoc nsz arcp contract afn float %i.dv, %i.cf
  %i.ec = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul reassoc nsz arcp contract afn <2 x float> %i.ed, %i.ea
  %i.ef = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fdiv reassoc nsz arcp contract afn <2 x float> %i.ee, %i.eg
  %i.ei = fadd reassoc nsz arcp contract afn <2 x float> %i.eh, %i.dz
  %i.ej = load <2 x float>, ptr %i.a, align 4, !tbaa !39
  %i.ek = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ei, <2 x float> %i.ej)
  %i.el = load <2 x float>, ptr %i.b, align 4, !tbaa !39
  %i.em = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ek, <2 x float> %i.el) ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.05464 ; 3 uses
  %i.eo = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> %i.em, <2 x i32> <i32 0, i32 2>
  %i.eq = fmul reassoc nsz arcp contract afn <2 x float> %i.ep, <float 1.000000e+02, float 1.280000e+02>
  store <2 x float> %i.eq, ptr %i.en, align 4, !tbaa !39
  %i.er = extractelement <2 x float> %i.em, i64 1
  %i.es = fmul reassoc nsz arcp contract afn float %i.er, 1.280000e+02
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store float %i.es, ptr %i.et, align 4, !tbaa !39
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store float %i.ce, ptr %i.eu, align 4, !tbaa !39
  %i.ev = add nuw i64 %.065, 1                    ; 2 uses
  %i.ew = add i64 %.05464, 4
  %exitcond.not = icmp eq i64 %i.ev, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !397
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
  %.04250.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.j, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.e = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.e   ; 4 uses
  %i.f = add i64 %i.e, -4                         ; 2 uses
  %scevgep52 = getelementptr i8, ptr %0, i64 %i.f
  %scevgep53 = getelementptr i8, ptr %1, i64 %i.f
  %scevgep54 = getelementptr i8, ptr %6, i64 12
  %scevgep55 = getelementptr i8, ptr %5, i64 12
  %bound0 = icmp ult ptr %2, %scevgep52
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound056 = icmp ult ptr %2, %scevgep53
  %bound157 = icmp ult ptr %1, %scevgep
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx = or i1 %found.conflict, %found.conflict58
  %bound059 = icmp ult ptr %2, %scevgep54
  %bound160 = icmp ult ptr %6, %scevgep
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %conflict.rdx, %found.conflict61
  %bound063 = icmp ult ptr %2, %scevgep55
  %bound164 = icmp ult ptr %5, %scevgep
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx66 = or i1 %conflict.rdx62, %found.conflict65
  br i1 %conflict.rdx66, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.g = and i64 %4, 7                            ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 8, i64 %i.g
  %n.vec = sub i64 %4, %i.i                       ; 3 uses
  %i.j = shl i64 %n.vec, 2
  %i.k = load float, ptr %6, align 4, !tbaa !39, !alias.scope !398
  %i.l = load float, ptr %5, align 4, !tbaa !39, !alias.scope !401
  %.scalar = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.l) ; 2 uses
  %i.m = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.n = shufflevector <8 x float> %i.m, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.scalar84 = fadd reassoc nsz arcp contract afn float %.scalar, %i.k
  %i.o = insertelement <8 x float> poison, float %.scalar84, i64 0
  %i.p = shufflevector <8 x float> %i.o, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.q = fmul reassoc nsz arcp contract afn <8 x float> %i.p, splat (float 2.000000e+00)
  %i.r = load float, ptr %i.a, align 4, !tbaa !39, !alias.scope !401
  %broadcast.splatinsert75 = insertelement <8 x float> poison, float %i.r, i64 0
  %broadcast.splat76 = shufflevector <8 x float> %broadcast.splatinsert75, <8 x float> poison, <8 x i32> zeroinitializer
  %i.s = load float, ptr %i.b, align 4, !tbaa !39, !alias.scope !398
  %broadcast.splatinsert77 = insertelement <8 x float> poison, float %i.s, i64 0
  %broadcast.splat78 = shufflevector <8 x float> %broadcast.splatinsert77, <8 x float> poison, <8 x i32> zeroinitializer
  %i.t = load float, ptr %i.c, align 4, !tbaa !39, !alias.scope !401
  %broadcast.splatinsert79 = insertelement <8 x float> poison, float %i.t, i64 0
  %broadcast.splat80 = shufflevector <8 x float> %broadcast.splatinsert79, <8 x float> poison, <8 x i32> zeroinitializer
  %i.u = load float, ptr %i.d, align 4, !tbaa !39, !alias.scope !398
  %broadcast.splatinsert81 = insertelement <8 x float> poison, float %i.u, i64 0
  %broadcast.splat82 = shufflevector <8 x float> %broadcast.splatinsert81, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = shl i64 %index, 2                        ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.w, align 4, !tbaa !39 ; 3 uses
  %i.x = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %wide.vec = load <32 x float>, ptr %i.y, align 4, !tbaa !39, !alias.scope !403 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec69 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec70 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A) ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec69, splat (float 7.812500e-03) ; 2 uses
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec70, splat (float 7.812500e-03) ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.v
  %wide.vec71 = load <32 x float>, ptr %i.ac, align 4, !tbaa !39, !alias.scope !405 ; 3 uses
  %strided.vec72 = shufflevector <32 x float> %wide.vec71, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec73 = shufflevector <32 x float> %wide.vec71, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec74 = shufflevector <32 x float> %wide.vec71, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec72, splat (float f0x3C23D70A)
  %i.ae = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec73, splat (float 7.812500e-03)
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec74, splat (float 7.812500e-03)
  %i.ag = fadd reassoc nsz arcp contract afn <8 x float> %i.n, %i.z
  %i.ah = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ag, <8 x float> zeroinitializer)
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ah, <8 x float> %i.p) ; 2 uses
  %i.aj = fadd reassoc nsz arcp contract afn <8 x float> %i.n, %i.ad
  %i.ak = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aj, <8 x float> zeroinitializer)
  %i.al = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ak, <8 x float> %i.p)
  %i.am = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.x ; 3 uses
  %i.an = fmul reassoc nsz arcp contract afn <8 x float> %i.ai, %i.am
  %i.ao = fmul reassoc nsz arcp contract afn <8 x float> %i.q, %i.al
  %7 = fsub reassoc nsz arcp contract afn <8 x float> %i.ai, %i.p
  %8 = fadd reassoc nsz arcp contract afn <8 x float> %7, %i.ao
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %8, %i.x
  %i.aq = fadd reassoc nsz arcp contract afn <8 x float> %i.ap, %i.an
  %i.ar = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aq, <8 x float> zeroinitializer)
  %i.as = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ar, <8 x float> %i.p)
  %i.at = fsub reassoc nsz arcp contract afn <8 x float> %i.as, %i.n ; 2 uses
  %i.au = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.z, <8 x float> splat (float f0x3C23D70A)) ; 2 uses
  %i.av = fmul reassoc nsz arcp contract afn <8 x float> %i.aa, %i.am
  %i.aw = fadd reassoc nsz arcp contract afn <8 x float> %i.ae, %i.aa
  %i.ax = fmul reassoc nsz arcp contract afn <8 x float> %i.at, %i.x ; 2 uses
  %i.ay = fmul reassoc nsz arcp contract afn <8 x float> %i.ax, %i.aw
  %i.az = fdiv reassoc nsz arcp contract afn <8 x float> %i.ay, %i.au
  %i.ba = fadd reassoc nsz arcp contract afn <8 x float> %i.az, %i.av
  %i.bb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ba, <8 x float> %broadcast.splat76)
  %i.bc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bb, <8 x float> %broadcast.splat78)
  %i.bd = fmul reassoc nsz arcp contract afn <8 x float> %i.ab, %i.am
  %i.be = fadd reassoc nsz arcp contract afn <8 x float> %i.af, %i.ab
  %i.bf = fmul reassoc nsz arcp contract afn <8 x float> %i.ax, %i.be
  %i.bg = fdiv reassoc nsz arcp contract afn <8 x float> %i.bf, %i.au
  %i.bh = fadd reassoc nsz arcp contract afn <8 x float> %i.bg, %i.bd
  %i.bi = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bh, <8 x float> %broadcast.splat80)
  %i.bj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bi, <8 x float> %broadcast.splat82)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.v
  %i.bl = fmul reassoc nsz arcp contract afn <8 x float> %i.bj, splat (float 1.280000e+02)
  %i.bm = shufflevector <8 x float> %i.at, <8 x float> %i.bc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bn = fmul reassoc nsz arcp contract afn <16 x float> %i.bm, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.bo = shufflevector <8 x float> %i.bl, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bn, <16 x float> %i.bo, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.bk, align 4, !tbaa !39, !alias.scope !407, !noalias !409
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %scalar.ph.preheader, label %vector.body, !llvm.loop !410

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.051 = phi i64 [ %i.dv, %scalar.ph ], [ %.051.ph, %scalar.ph.preheader ] ; 2 uses
  %.04250 = phi i64 [ %i.dw, %scalar.ph ], [ %.04250.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.051
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.04250 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !39
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, f0x3C23D70A ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04250 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !39
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, f0x3C23D70A
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bz = load float, ptr %6, align 4, !tbaa !39
  %i.ca = load float, ptr %5, align 4, !tbaa !39
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ca) ; 4 uses
  %i.cc = fadd reassoc nsz arcp contract afn float %i.cb, %i.bz ; 5 uses
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cb, %i.bt
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cd, float 0.000000e+00)
  %i.cf = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ce, float %i.cc) ; 2 uses
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cb, %i.bx
  %i.ch = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cg, float 0.000000e+00)
  %i.ci = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ch, float %i.cc)
  %i.cj = fmul reassoc nsz arcp contract afn float %i.cc, 2.000000e+00
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, %i.ci
  %9 = fsub reassoc nsz arcp contract afn float %i.cf, %i.cc
  %10 = fadd reassoc nsz arcp contract afn float %9, %i.ck
  %i.cl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bt, float f0x3C23D70A)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04250
  %i.cn = load float, ptr %i.bq, align 4, !tbaa !39 ; 3 uses
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.cn ; 3 uses
  %i.cp = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.co ; 2 uses
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cf, %i.cp
  %i.cr = fmul reassoc nsz arcp contract afn float %10, %i.co
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, %i.cq
  %i.ct = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cs, float 0.000000e+00)
  %i.cu = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ct, float %i.cc)
  %i.cv = fsub reassoc nsz arcp contract afn float %i.cu, %i.cb ; 2 uses
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.co
  %i.cx = load <2 x float>, ptr %i.bu, align 4, !tbaa !39
  %i.cy = fmul reassoc nsz arcp contract afn <2 x float> %i.cx, splat (float 7.812500e-03) ; 2 uses
  %i.cz = load <2 x float>, ptr %i.by, align 4, !tbaa !39
  %i.da = fmul reassoc nsz arcp contract afn <2 x float> %i.cz, splat (float 7.812500e-03)
  %i.db = fadd reassoc nsz arcp contract afn <2 x float> %i.da, %i.cy
  %i.dc = load <2 x float>, ptr %i.a, align 4, !tbaa !39
  %i.dd = load <2 x float>, ptr %i.b, align 4, !tbaa !39
  %i.de = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul reassoc nsz arcp contract afn <2 x float> %i.cy, %i.df
  %i.dh = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul reassoc nsz arcp contract afn <2 x float> %i.di, %i.db
  %i.dk = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fdiv reassoc nsz arcp contract afn <2 x float> %i.dj, %i.dl
  %i.dn = fadd reassoc nsz arcp contract afn <2 x float> %i.dm, %i.dg
  %i.do = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dn, <2 x float> %i.dc)
  %i.dp = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.do, <2 x float> %i.dd)
  %i.dq = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.dr = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ds = shufflevector <4 x float> %i.dq, <4 x float> %i.dr, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.dt = insertelement <4 x float> %i.ds, float %i.cn, i64 3
  %i.du = fmul reassoc nsz arcp contract afn <4 x float> %i.dt, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.du, ptr %i.cm, align 4, !tbaa !39
  %i.dv = add nuw i64 %.051, 1                    ; 2 uses
  %i.dw = add i64 %.04250, 4
  %exitcond.not = icmp eq i64 %i.dv, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !411
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
  %.049.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %.04248.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.k, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.e = shl i64 %4, 4                            ; 3 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.e   ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep53 = getelementptr i8, ptr %i.f, i64 -4
  %i.g = getelementptr i8, ptr %1, i64 %i.e
  %scevgep54 = getelementptr i8, ptr %i.g, i64 -12
  %scevgep55 = getelementptr i8, ptr %6, i64 12
  %scevgep56 = getelementptr i8, ptr %5, i64 12
  %bound0 = icmp ult ptr %2, %scevgep53
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound057 = icmp ult ptr %2, %scevgep54
  %bound158 = icmp ult ptr %1, %scevgep
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx = or i1 %found.conflict, %found.conflict59
  %bound060 = icmp ult ptr %2, %scevgep55
  %bound161 = icmp ult ptr %6, %scevgep
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %conflict.rdx, %found.conflict62
  %bound064 = icmp ult ptr %2, %scevgep56
  %bound165 = icmp ult ptr %5, %scevgep
  %found.conflict66 = and i1 %bound064, %bound165
  %conflict.rdx67 = or i1 %conflict.rdx63, %found.conflict66
  br i1 %conflict.rdx67, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.h = and i64 %4, 7                            ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 8, i64 %i.h
  %n.vec = sub i64 %4, %i.j                       ; 3 uses
  %i.k = shl i64 %n.vec, 2
  %i.l = load float, ptr %6, align 4, !tbaa !39, !alias.scope !412
  %i.m = load float, ptr %5, align 4, !tbaa !39, !alias.scope !415
  %.scalar = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.m) ; 2 uses
  %i.n = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.o = shufflevector <8 x float> %i.n, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.scalar83 = fadd reassoc nsz arcp contract afn float %.scalar, %i.l
  %i.p = insertelement <8 x float> poison, float %.scalar83, i64 0
  %i.q = shufflevector <8 x float> %i.p, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.r = fmul reassoc nsz arcp contract afn <8 x float> %i.q, splat (float 5.000000e-01) ; 2 uses
  %i.s = fmul reassoc nsz arcp contract afn <8 x float> %i.q, splat (float 2.000000e+00) ; 2 uses
  %i.t = load float, ptr %i.a, align 4, !tbaa !39, !alias.scope !415
  %broadcast.splatinsert74 = insertelement <8 x float> poison, float %i.t, i64 0
  %broadcast.splat75 = shufflevector <8 x float> %broadcast.splatinsert74, <8 x float> poison, <8 x i32> zeroinitializer
  %i.u = load float, ptr %i.b, align 4, !tbaa !39, !alias.scope !412
  %broadcast.splatinsert76 = insertelement <8 x float> poison, float %i.u, i64 0
  %broadcast.splat77 = shufflevector <8 x float> %broadcast.splatinsert76, <8 x float> poison, <8 x i32> zeroinitializer
  %i.v = load float, ptr %i.c, align 4, !tbaa !39, !alias.scope !415
  %broadcast.splatinsert78 = insertelement <8 x float> poison, float %i.v, i64 0
  %broadcast.splat79 = shufflevector <8 x float> %broadcast.splatinsert78, <8 x float> poison, <8 x i32> zeroinitializer
  %i.w = load float, ptr %i.d, align 4, !tbaa !39, !alias.scope !412
  %broadcast.splatinsert80 = insertelement <8 x float> poison, float %i.w, i64 0
  %broadcast.splat81 = shufflevector <8 x float> %broadcast.splatinsert80, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = shl i64 %index, 2                        ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.y, align 4, !tbaa !39 ; 3 uses
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x
  %wide.vec = load <32 x float>, ptr %i.aa, align 4, !tbaa !39, !alias.scope !417 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec70 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec71 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A)
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec70, splat (float 7.812500e-03)
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec71, splat (float 7.812500e-03)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.x
  %wide.vec72 = load <32 x float>, ptr %i.ae, align 4, !tbaa !39, !alias.scope !419
  %strided.vec73 = shufflevector <32 x float> %wide.vec72, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec73, splat (float f0x3C23D70A)
  %i.ag = fadd reassoc nsz arcp contract afn <8 x float> %i.o, %i.ab
  %i.ah = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ag, <8 x float> zeroinitializer)
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ah, <8 x float> %i.q) ; 4 uses
  %i.aj = fadd reassoc nsz arcp contract afn <8 x float> %i.o, %i.af
  %i.ak = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aj, <8 x float> zeroinitializer)
  %i.al = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ak, <8 x float> %i.q) ; 3 uses
  %i.am = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.al, %i.r
  %i.an = fmul reassoc nsz arcp contract afn <8 x float> %i.al, %i.s
  %i.ao = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ai, <8 x float> %i.an)
  %i.ap = fsub reassoc nsz arcp contract afn <8 x float> %i.al, %i.r
  %i.aq = fmul reassoc nsz arcp contract afn <8 x float> %i.ap, %i.s
  %i.ar = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ai, <8 x float> %i.aq)
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.am, <8 x float> %i.ar, <8 x float> %i.ao
  %i.as = fsub reassoc nsz arcp contract afn <8 x float> %predphi, %i.ai
  %i.at = fmul reassoc nsz arcp contract afn <8 x float> %i.z, %i.as
  %i.au = fadd reassoc nsz arcp contract afn <8 x float> %i.at, %i.ai
  %i.av = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.au, <8 x float> zeroinitializer)
  %i.aw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.av, <8 x float> %i.q)
  %i.ax = fsub reassoc nsz arcp contract afn <8 x float> %i.aw, %i.o
  %i.ay = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ac, <8 x float> %broadcast.splat75)
  %i.az = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ay, <8 x float> %broadcast.splat77)
  %i.ba = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ad, <8 x float> %broadcast.splat79)
  %i.bb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ba, <8 x float> %broadcast.splat81)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x
  %i.bd = fmul reassoc nsz arcp contract afn <8 x float> %i.bb, splat (float 1.280000e+02)
  %i.be = shufflevector <8 x float> %i.ax, <8 x float> %i.az, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bf = fmul reassoc nsz arcp contract afn <16 x float> %i.be, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.bg = shufflevector <8 x float> %i.bd, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bf, <16 x float> %i.bg, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.bc, align 4, !tbaa !39, !alias.scope !421, !noalias !423
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %scalar.ph.preheader, label %vector.body, !llvm.loop !424

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.049 = phi i64 [ %i.df, %bb.d ], [ %.049.ph, %scalar.ph.preheader ] ; 2 uses
  %.04248 = phi i64 [ %i.dg, %bb.d ], [ %.04248.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.049
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !39 ; 3 uses
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.04248 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !39
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, f0x3C23D70A
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bp = load <2 x float>, ptr %i.bo, align 4, !tbaa !39
  %i.bq = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, splat (float 7.812500e-03)
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04248
  %i.bs = load float, ptr %i.br, align 4, !tbaa !39
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, f0x3C23D70A
  %i.bu = load float, ptr %6, align 4, !tbaa !39
  %i.bv = load float, ptr %5, align 4, !tbaa !39
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bv) ; 4 uses
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %i.bu ; 5 uses
  %i.by = fadd reassoc nsz arcp contract afn float %i.bw, %i.bn
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.by, float 0.000000e+00)
  %i.ca = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bz, float %i.bx) ; 4 uses
  %i.cb = fadd reassoc nsz arcp contract afn float %i.bw, %i.bt
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cb, float 0.000000e+00)
  %i.cd = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cc, float %i.bx) ; 3 uses
  %i.ce = fmul reassoc nsz arcp contract afn float %i.bx, 5.000000e-01 ; 2 uses
  %i.cf = fmul reassoc nsz arcp contract afn float %i.bx, 2.000000e+00 ; 2 uses
end_hunk_0
begin_hunk_1_@_blend_lightness:bb.a
  %i.bq = add nuw i64 %.027, 1                    ; 2 uses
  %i.br = add i64 %.02226, 4
  %exitcond.not = icmp eq i64 %i.bq, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !439
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
  %i.d = load float, ptr %i.c, align 4, !tbaa !39 ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02251 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !39
  %i.g = fmul reassoc nsz arcp contract afn float %i.f, f0x3C23D70A
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !39
  %i.j = fmul reassoc nsz arcp contract afn <2 x float> %i.i, splat (float 7.812500e-03)
  %i.k = load <2 x float>, ptr %5, align 4, !tbaa !39 ; 4 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.g, float %i.l)
  %i.n = load <2 x float>, ptr %6, align 4, !tbaa !39 ; 3 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.m, float %i.o)
  %i.q = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %i.r = load float, ptr %i.a, align 4, !tbaa !39 ; 3 uses
  %i.s = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 1
  %i.u = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.j, <2 x float> %i.t) ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  %i.w = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.v, float %i.q) ; 2 uses
  %i.x = load float, ptr %i.b, align 4, !tbaa !39 ; 3 uses
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
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !39
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, 7.812500e-03
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !39
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
  store <2 x float> %i.bh, ptr %i.bc, align 4, !tbaa !39
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bb, 1.280000e+02
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store float %i.bi, ptr %i.bj, align 4, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store float %i.d, ptr %i.bk, align 4, !tbaa !39
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
  %.060 = phi i64 [ 0, %.lr.ph ], [ %i.by, %dt_Lab_2_LCH.exit30 ] ; 2 uses
  %.02759 = phi i64 [ 0, %.lr.ph ], [ %i.bz, %dt_Lab_2_LCH.exit30 ] ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.060
  %i.d = load float, ptr %i.c, align 4, !tbaa !39 ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02759 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !39
  %i.g = fmul reassoc nsz arcp contract afn float %i.f, f0x3C23D70A
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !39
  %i.j = fmul reassoc nsz arcp contract afn <2 x float> %i.i, splat (float 7.812500e-03)
  %i.k = load <2 x float>, ptr %5, align 4, !tbaa !39 ; 3 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.g, float %i.l)
  %i.n = load <2 x float>, ptr %6, align 4, !tbaa !39 ; 4 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.m, float %i.o)
  %i.q = extractelement <2 x float> %i.n, i64 1
  %i.r = load float, ptr %i.a, align 4, !tbaa !39 ; 2 uses
  %i.s = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 1 ; 2 uses
  %i.u = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.j, <2 x float> %i.t) ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  %i.w = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.v, float %i.q) ; 2 uses
  %i.x = load float, ptr %i.b, align 4, !tbaa !39 ; 3 uses
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
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02759
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load <2 x float>, ptr %i.ai, align 4, !tbaa !39
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
  %i.bh = fadd reassoc nsz arcp contract afn float %.0.i, 1.000000e+00
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, %i.bg
  %i.bj = frem reassoc nsz arcp contract afn float %i.bi, 1.000000e+00
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, f0x40C90FDB
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bk) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.bl = fmul reassoc nsz arcp contract afn float %cos, %i.ag
  %i.bm = fmul reassoc nsz arcp contract afn float %sin, %i.ag
  %i.bn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bm, float %i.r)
  %i.bo = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bn, float %i.x)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02759 ; 3 uses
  %i.bq = insertelement <2 x float> poison, float %i.p, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bl, i64 1
  %i.bs = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.br, <2 x float> %i.k)
  %i.bt = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bs, <2 x float> %i.n)
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, <float 1.000000e+02, float 1.280000e+02>
  store <2 x float> %i.bu, ptr %i.bp, align 4, !tbaa !39
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bo, 1.280000e+02
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store float %i.bv, ptr %i.bw, align 4, !tbaa !39
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store float %i.d, ptr %i.bx, align 4, !tbaa !39
  %i.by = add nuw i64 %.060, 1                    ; 2 uses
  %i.bz = add i64 %.02759, 4
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
  %.064 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %dt_Lab_2_LCH.exit32 ] ; 2 uses
  %.02963 = phi i64 [ 0, %.lr.ph ], [ %i.cc, %dt_Lab_2_LCH.exit32 ] ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.064
  %i.d = load float, ptr %i.c, align 4, !tbaa !39 ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02963 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !39
  %i.g = fmul reassoc nsz arcp contract afn float %i.f, f0x3C23D70A
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !39
  %i.j = fmul reassoc nsz arcp contract afn <2 x float> %i.i, splat (float 7.812500e-03)
  %i.k = load <2 x float>, ptr %5, align 4, !tbaa !39 ; 3 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.g, float %i.l)
  %i.n = load <2 x float>, ptr %6, align 4, !tbaa !39 ; 3 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.m, float %i.o)
  %i.q = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %i.r = load float, ptr %i.a, align 4, !tbaa !39 ; 2 uses
  %i.s = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 1 ; 2 uses
  %i.u = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.j, <2 x float> %i.t) ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  %i.w = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.v, float %i.q) ; 2 uses
  %i.x = load float, ptr %i.b, align 4, !tbaa !39 ; 3 uses
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
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02963
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load <2 x float>, ptr %i.ai, align 4, !tbaa !39
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
  %i.bk = fadd reassoc nsz arcp contract afn float %.0.i, 1.000000e+00
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %i.bj
  %i.bm = frem reassoc nsz arcp contract afn float %i.bl, 1.000000e+00
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, f0x40C90FDB
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bn) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.bo = fmul reassoc nsz arcp contract afn float %cos, %i.az
  %i.bp = fmul reassoc nsz arcp contract afn float %sin, %i.az
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bp, float %i.r)
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bq, float %i.x)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02963 ; 3 uses
  %i.bt = insertelement <2 x float> poison, float %i.p, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bo, i64 1
  %i.bv = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bu, <2 x float> %i.k)
  %i.bw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bv, <2 x float> %i.n)
  %i.bx = fmul reassoc nsz arcp contract afn <2 x float> %i.bw, <float 1.000000e+02, float 1.280000e+02>
  store <2 x float> %i.bx, ptr %i.bs, align 4, !tbaa !39
  %i.by = fmul reassoc nsz arcp contract afn float %i.br, 1.280000e+02
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store float %i.by, ptr %i.bz, align 4, !tbaa !39
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store float %i.d, ptr %i.ca, align 4, !tbaa !39
  %i.cb = add nuw i64 %.064, 1                    ; 2 uses
  %i.cc = add i64 %.02963, 4
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
  %scevgep = getelementptr i8, ptr %2, i64 %i.e   ; 4 uses
  %i.f = add i64 %i.e, -4                         ; 2 uses
  %scevgep33 = getelementptr i8, ptr %0, i64 %i.f
  %scevgep34 = getelementptr i8, ptr %1, i64 %i.f
  %scevgep35 = getelementptr i8, ptr %5, i64 12
  %scevgep36 = getelementptr i8, ptr %6, i64 12
  %bound0 = icmp ult ptr %2, %scevgep33
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound037 = icmp ult ptr %2, %scevgep34
  %bound138 = icmp ult ptr %1, %scevgep
  %found.conflict39 = and i1 %bound037, %bound138
  %conflict.rdx = or i1 %found.conflict, %found.conflict39
  %bound040 = icmp ult ptr %2, %scevgep35
  %bound141 = icmp ult ptr %5, %scevgep
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx, %found.conflict42
  %bound044 = icmp ult ptr %2, %scevgep36
  %bound145 = icmp ult ptr %6, %scevgep
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx43, %found.conflict46
  br i1 %conflict.rdx47, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.g = and i64 %4, 7                            ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 8, i64 %i.g
  %n.vec = sub i64 %4, %i.i                       ; 2 uses
  %i.j = load float, ptr %5, align 4, !tbaa !39, !alias.scope !440
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.j, i64 0
  %i.k = load float, ptr %6, align 4, !tbaa !39, !alias.scope !443
  %broadcast.splatinsert54 = insertelement <8 x float> poison, float %i.k, i64 0
  %i.l = load float, ptr %i.a, align 4, !tbaa !39, !alias.scope !440
  %broadcast.splatinsert56 = insertelement <8 x float> poison, float %i.l, i64 0
  %i.m = load float, ptr %i.b, align 4, !tbaa !39, !alias.scope !443
  %broadcast.splatinsert58 = insertelement <8 x float> poison, float %i.m, i64 0
  %i.n = load float, ptr %i.c, align 4, !tbaa !39, !alias.scope !440
  %broadcast.splatinsert60 = insertelement <8 x float> poison, float %i.n, i64 0
  %broadcast.splat61 = shufflevector <8 x float> %broadcast.splatinsert60, <8 x float> poison, <8 x i32> zeroinitializer
  %i.o = load float, ptr %i.d, align 4, !tbaa !39, !alias.scope !443
  %broadcast.splatinsert62 = insertelement <8 x float> poison, float %i.o, i64 0
  %broadcast.splat63 = shufflevector <8 x float> %broadcast.splatinsert62, <8 x float> poison, <8 x i32> zeroinitializer
  %i.p = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert56, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.q = shufflevector <8 x float> %broadcast.splatinsert54, <8 x float> %broadcast.splatinsert58, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = shl i64 %index, 2                        ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.s, align 4, !tbaa !39 ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r
  %wide.vec = load <32 x float>, ptr %i.t, align 4, !tbaa !39, !alias.scope !445 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec48 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec49 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.u = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A) ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec48, splat (float 7.812500e-03) ; 2 uses
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec49, splat (float 7.812500e-03) ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r
  %wide.vec50 = load <32 x float>, ptr %i.x, align 4, !tbaa !39, !alias.scope !447 ; 3 uses
  %strided.vec51 = shufflevector <32 x float> %wide.vec50, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec52 = shufflevector <32 x float> %wide.vec50, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec53 = shufflevector <32 x float> %wide.vec50, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec51, splat (float f0x3C23D70A)
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec52, splat (float 7.812500e-03)
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec53, splat (float 7.812500e-03)
  %i.ab = fsub reassoc nsz arcp contract afn <8 x float> %i.y, %i.u
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.ab, %wide.load
  %i.ad = fadd reassoc nsz arcp contract afn <8 x float> %i.ac, %i.u
  %i.ae = fsub reassoc nsz arcp contract afn <8 x float> %i.z, %i.v
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %i.ae, %wide.load
  %i.ag = fadd reassoc nsz arcp contract afn <8 x float> %i.af, %i.v
  %i.ah = fsub reassoc nsz arcp contract afn <8 x float> %i.aa, %i.w
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.ah, %wide.load
  %i.aj = fadd reassoc nsz arcp contract afn <8 x float> %i.ai, %i.w
  %i.ak = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aj, <8 x float> %broadcast.splat61)
  %i.al = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ak, <8 x float> %broadcast.splat63)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r
  %i.an = fmul reassoc nsz arcp contract afn <8 x float> %i.al, splat (float 1.280000e+02)
  %i.ao = shufflevector <8 x float> %i.ad, <8 x float> %i.ag, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ap = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ao, <16 x float> %i.p)
  %i.aq = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.ap, <16 x float> %i.q)
  %i.ar = fmul reassoc nsz arcp contract afn <16 x float> %i.aq, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.as = shufflevector <8 x float> %i.an, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ar, <16 x float> %i.as, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.am, align 4, !tbaa !39, !alias.scope !449, !noalias !451
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %scalar.ph.preheader, label %vector.body, !llvm.loop !452

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02527 = phi i64 [ %i.cf, %scalar.ph ], [ %.02527.ph, %scalar.ph.preheader ] ; 3 uses
  %i.au = shl i64 %.02527, 2                      ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02527
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !39
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, f0x3C23D70A ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.au ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !39
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, f0x3C23D70A
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.be = fsub reassoc nsz arcp contract afn float %i.bc, %i.ay
  %i.bf = load float, ptr %5, align 4, !tbaa !39
  %i.bg = load float, ptr %6, align 4, !tbaa !39
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.au
  %i.bi = load float, ptr %i.av, align 4, !tbaa !39 ; 3 uses
  %i.bj = fmul reassoc nsz arcp contract afn float %i.be, %i.bi
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, %i.ay
  %i.bl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bk, float %i.bf)
  %i.bm = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bl, float %i.bg)
  %i.bn = load <2 x float>, ptr %i.az, align 4, !tbaa !39
  %i.bo = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, splat (float 7.812500e-03) ; 2 uses
  %i.bp = load <2 x float>, ptr %i.bd, align 4, !tbaa !39
  %i.bq = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, splat (float 7.812500e-03)
  %i.br = fsub reassoc nsz arcp contract afn <2 x float> %i.bq, %i.bo
  %i.bs = load <2 x float>, ptr %i.a, align 4, !tbaa !39
  %i.bt = load <2 x float>, ptr %i.b, align 4, !tbaa !39
  %i.bu = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul reassoc nsz arcp contract afn <2 x float> %i.br, %i.bv
  %i.bx = fadd reassoc nsz arcp contract afn <2 x float> %i.bw, %i.bo
  %i.by = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bx, <2 x float> %i.bs)
  %i.bz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.by, <2 x float> %i.bt)
  %i.ca = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.cb = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> %i.cb, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float %i.bi, i64 3
  %i.ce = fmul reassoc nsz arcp contract afn <4 x float> %i.cd, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.ce, ptr %i.bh, align 4, !tbaa !39
  %i.cf = add nuw i64 %.02527, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cf, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !453
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
  %.061 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %dt_Lab_2_LCH.exit32 ] ; 2 uses
  %.02960 = phi i64 [ 0, %.lr.ph ], [ %i.cc, %dt_Lab_2_LCH.exit32 ] ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.061
  %i.d = load float, ptr %i.c, align 4, !tbaa !39 ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02960
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !39
  %i.h = fmul reassoc nsz arcp contract afn <2 x float> %i.g, splat (float 7.812500e-03)
  %i.i = load <2 x float>, ptr %5, align 4, !tbaa !39 ; 3 uses
  %i.j = load <2 x float>, ptr %6, align 4, !tbaa !39 ; 3 uses
  %i.k = extractelement <2 x float> %i.j, i64 1   ; 2 uses
  %i.l = load float, ptr %i.a, align 4, !tbaa !39 ; 2 uses
  %i.m = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.n = insertelement <2 x float> %i.m, float %i.l, i64 1 ; 2 uses
  %i.o = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.h, <2 x float> %i.n) ; 2 uses
  %i.p = extractelement <2 x float> %i.o, i64 0
  %i.q = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.p, float %i.k) ; 2 uses
  %i.r = load float, ptr %i.b, align 4, !tbaa !39 ; 3 uses
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
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02960 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !39
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, f0x3C23D70A
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.af = load <2 x float>, ptr %i.ae, align 4, !tbaa !39
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
  %i.bk = fadd reassoc nsz arcp contract afn float %.0.i, 1.000000e+00
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %i.bj
  %i.bm = frem reassoc nsz arcp contract afn float %i.bl, 1.000000e+00
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, f0x40C90FDB
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bn) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.bo = fmul reassoc nsz arcp contract afn float %cos, %i.az
  %i.bp = fmul reassoc nsz arcp contract afn float %sin, %i.az
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bp, float %i.l)
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bq, float %i.r)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02960 ; 3 uses
  %i.bt = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bo, i64 1
  %i.bv = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bu, <2 x float> %i.i)
  %i.bw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bv, <2 x float> %i.j)
  %i.bx = fmul reassoc nsz arcp contract afn <2 x float> %i.bw, <float 1.000000e+02, float 1.280000e+02>
  store <2 x float> %i.bx, ptr %i.bs, align 4, !tbaa !39
  %i.by = fmul reassoc nsz arcp contract afn float %i.br, 1.280000e+02
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store float %i.by, ptr %i.bz, align 4, !tbaa !39
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store float %i.d, ptr %i.ca, align 4, !tbaa !39
  %i.cb = add nuw i64 %.061, 1                    ; 2 uses
  %i.cc = add i64 %.02960, 4
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
  br i1 %min.iters.check, label %.lr.ph.preheader32, label %vector.memcheck

.lr.ph.preheader32:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.021.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ] ; 5 uses
  %.01620.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ab, %vector.body ] ; 5 uses
  %i.a = sub i64 %4, %.021.ph
  %.neg = add i64 %.021.ph, 1
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader32
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.021.ph
  %i.c = load float, ptr %i.b, align 4, !tbaa !39 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01620.ph ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !39
  %i.f = fmul reassoc nsz arcp contract afn float %i.e, f0x3C23D70A ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01620.ph
  %i.i = load float, ptr %i.h, align 4, !tbaa !39
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, f0x3C23D70A
  %i.k = fsub reassoc nsz arcp contract afn float %i.j, %i.f
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, %i.c
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, %i.f
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01620.ph ; 3 uses
  %i.o = fmul reassoc nsz arcp contract afn float %i.m, 1.000000e+02
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.q = load <2 x float>, ptr %i.g, align 4, !tbaa !39
  store float %i.o, ptr %i.n, align 4, !tbaa !39
  store <2 x float> %i.q, ptr %i.p, align 4, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store float %i.c, ptr %i.r, align 4, !tbaa !39
  %i.s = add nuw i64 %.021.ph, 1
  %i.t = add i64 %.01620.ph, 4
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader32
  %.021.unr = phi i64 [ %.021.ph, %.lr.ph.preheader32 ], [ %i.s, %.lr.ph.prol ]
  %.01620.unr = phi i64 [ %.01620.ph, %.lr.ph.preheader32 ], [ %i.t, %.lr.ph.prol ]
  %i.u = icmp eq i64 %4, %.neg
  br i1 %i.u, label %._crit_edge, label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.v = shl i64 %4, 4                            ; 3 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.v   ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %scevgep22 = getelementptr i8, ptr %i.w, i64 -4
  %i.x = getelementptr i8, ptr %1, i64 %i.v
  %scevgep23 = getelementptr i8, ptr %i.x, i64 -12
  %bound0 = icmp ult ptr %2, %scevgep22
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound024 = icmp ult ptr %2, %scevgep23
  %bound125 = icmp ult ptr %1, %scevgep
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx = or i1 %found.conflict, %found.conflict26
  br i1 %conflict.rdx, label %.lr.ph.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.y = and i64 %4, 7                            ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 8, i64 %i.y
  %n.vec = sub i64 %4, %i.aa                      ; 3 uses
  %i.ab = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = shl i64 %index, 2                       ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.ad, align 4, !tbaa !39 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  %wide.vec = load <32 x float>, ptr %i.ae, align 4, !tbaa !39, !alias.scope !454 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec27 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec28 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A) ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %wide.vec29 = load <32 x float>, ptr %i.ag, align 4, !tbaa !39, !alias.scope !457
  %strided.vec30 = shufflevector <32 x float> %wide.vec29, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec30, splat (float f0x3C23D70A)
  %i.ai = fsub reassoc nsz arcp contract afn <8 x float> %i.ah, %i.af
  %i.aj = fmul reassoc nsz arcp contract afn <8 x float> %i.ai, %wide.load
  %i.ak = fadd reassoc nsz arcp contract afn <8 x float> %i.aj, %i.af
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ac
  %i.am = fmul reassoc nsz arcp contract afn <8 x float> %i.ak, splat (float 1.000000e+02)
  %i.an = shufflevector <8 x float> %i.am, <8 x float> %strided.vec27, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ao = shufflevector <8 x float> %strided.vec28, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.an, <16 x float> %i.ao, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.al, align 4, !tbaa !39, !alias.scope !459, !noalias !461
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %.lr.ph.preheader32, label %vector.body, !llvm.loop !462

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.021 = phi i64 [ %i.ca, %.lr.ph ], [ %.021.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01620 = phi i64 [ %i.cb, %.lr.ph ], [ %.01620.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.021
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !39 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01620 ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !39
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, f0x3C23D70A ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01620
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !39
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, f0x3C23D70A
  %i.az = fsub reassoc nsz arcp contract afn float %i.ay, %i.au
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, %i.ar
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %i.au
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01620 ; 3 uses
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bb, 1.000000e+02
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bf = load <2 x float>, ptr %i.av, align 4, !tbaa !39
  store float %i.bd, ptr %i.bc, align 4, !tbaa !39
  store <2 x float> %i.bf, ptr %i.be, align 4, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store float %i.ar, ptr %i.bg, align 4, !tbaa !39
  %i.bh = add i64 %.01620, 4                      ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.021
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !39 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bh ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !39
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, f0x3C23D70A ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bh
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !39
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, f0x3C23D70A
  %i.bs = fsub reassoc nsz arcp contract afn float %i.br, %i.bn
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.bk
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bt, %i.bn
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bh ; 3 uses
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bu, 1.000000e+02
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.by = load <2 x float>, ptr %i.bo, align 4, !tbaa !39
  store float %i.bw, ptr %i.bv, align 4, !tbaa !39
  store <2 x float> %i.by, ptr %i.bx, align 4, !tbaa !39
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store float %i.bk, ptr %i.bz, align 4, !tbaa !39
  %i.ca = add nuw i64 %.021, 2                    ; 2 uses
  %i.cb = add i64 %.01620, 8
  %exitcond.not.1 = icmp eq i64 %i.ca, %4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !463
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_Lab_a(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader32, label %vector.memcheck

.lr.ph.preheader32:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.020.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ] ; 5 uses
  %.01619.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.af, %vector.body ] ; 5 uses
  %i.a = sub i64 %4, %.020.ph
  %.neg = add i64 %.020.ph, 1
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_1
