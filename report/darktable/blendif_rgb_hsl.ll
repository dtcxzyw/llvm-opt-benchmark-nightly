inline.NumInlined: 129
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_blend_screen:bb.a
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f
  %wide.vec39 = load <32 x float>, ptr %i.k, align 4, !tbaa !39, !alias.scope !325 ; 3 uses
  %strided.vec40 = shufflevector <32 x float> %wide.vec39, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec41 = shufflevector <32 x float> %wide.vec39, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec42 = shufflevector <32 x float> %wide.vec39, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.l = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec40, <8 x float> zeroinitializer)
  %i.m = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.l, <8 x float> splat (float 1.000000e+00))
  %i.n = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.m
  %i.o = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.j, splat (float -1.000000e+00)
  %i.p = fmul reassoc nsz arcp contract afn <8 x float> %i.n, %i.o
  %i.q = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.j
  %i.r = fadd reassoc nsz arcp contract afn <8 x float> %i.q, %i.p
  %i.s = fmul reassoc nsz arcp contract afn <8 x float> %i.r, %wide.load
  %i.t = fadd reassoc nsz arcp contract afn <8 x float> %i.s, %i.j
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f
  %i.v = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec37, <8 x float> zeroinitializer)
  %i.w = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.v, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.x = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec41, <8 x float> zeroinitializer)
  %i.y = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.x, <8 x float> splat (float 1.000000e+00))
  %i.z = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.y
  %i.aa = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.w, splat (float -1.000000e+00)
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %i.z, %i.aa
  %i.ac = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.w
  %i.ad = fadd reassoc nsz arcp contract afn <8 x float> %i.ac, %i.ab
  %i.ae = fmul reassoc nsz arcp contract afn <8 x float> %i.ad, %wide.load
  %i.af = fadd reassoc nsz arcp contract afn <8 x float> %i.ae, %i.w
  %i.ag = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec38, <8 x float> zeroinitializer)
  %i.ah = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ag, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec42, <8 x float> zeroinitializer)
  %i.aj = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ai, <8 x float> splat (float 1.000000e+00))
  %i.ak = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.aj
  %i.al = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.ah, splat (float -1.000000e+00)
  %i.am = fmul reassoc nsz arcp contract afn <8 x float> %i.ak, %i.al
  %i.an = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ah
  %i.ao = fadd reassoc nsz arcp contract afn <8 x float> %i.an, %i.am
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %i.ao, %wide.load
  %i.aq = fadd reassoc nsz arcp contract afn <8 x float> %i.ap, %i.ah
  %i.ar = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aq, <8 x float> zeroinitializer)
  %i.as = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ar, <8 x float> splat (float 1.000000e+00))
  %i.at = shufflevector <8 x float> %i.t, <8 x float> %i.af, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.au = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.at, <16 x float> zeroinitializer)
  %i.av = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.au, <16 x float> splat (float 1.000000e+00))
  %i.aw = shufflevector <8 x float> %i.as, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.av, <16 x float> %i.aw, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.u, align 4, !tbaa !39, !alias.scope !327, !noalias !329
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %.lr.ph.preheader44, label %vector.body, !llvm.loop !330

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader44, %.lr.ph
  %.030 = phi i64 [ %i.cz, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader44 ] ; 2 uses
  %.02429 = phi i64 [ %i.da, %.lr.ph ], [ %.02429.ph, %.lr.ph.preheader44 ] ; 6 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.030
  %i.az = load float, ptr %i.ay, align 4, !tbaa !39 ; 4 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02429
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !39
  %i.bc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bb, float 0.000000e+00)
  %i.bd = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bc, float 1.000000e+00) ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02429
  %i.bf = load float, ptr %i.be, align 4, !tbaa !39
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bf, float 0.000000e+00)
  %i.bh = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.bg, float 1.000000e+00)
  %i.bi = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.bh
  %i.bj = fadd reassoc nnan nsz arcp contract afn float %i.bd, -1.000000e+00
  %.neg26 = fmul reassoc nsz arcp contract afn float %i.bi, %i.bj
  %.neg27 = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.bd
  %i.bk = fadd reassoc nsz arcp contract afn float %.neg27, %.neg26
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, %i.az
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.bd
  %i.bn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bm, float 0.000000e+00)
  %i.bo = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bn, float 1.000000e+00)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02429 ; 2 uses
  store float %i.bo, ptr %i.bp, align 4, !tbaa !39
  %i.bq = or disjoint i64 %.02429, 1              ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !39
  %i.bt = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bs, float 0.000000e+00)
  %i.bu = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bt, float 1.000000e+00) ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !39
  %i.bx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bw, float 0.000000e+00)
  %i.by = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.bx, float 1.000000e+00)
  %i.bz = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.by
  %i.ca = fadd reassoc nnan nsz arcp contract afn float %i.bu, -1.000000e+00
  %.neg26.1 = fmul reassoc nsz arcp contract afn float %i.bz, %i.ca
  %.neg27.1 = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.bu
  %i.cb = fadd reassoc nsz arcp contract afn float %.neg27.1, %.neg26.1
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.az
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cc, %i.bu
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cd, float 0.000000e+00)
  %i.cf = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ce, float 1.000000e+00)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bq
  store float %i.cf, ptr %i.cg, align 4, !tbaa !39
  %i.ch = or disjoint i64 %.02429, 2              ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !39
  %i.ck = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cj, float 0.000000e+00)
  %i.cl = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ck, float 1.000000e+00) ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ch
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !39
  %i.co = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cn, float 0.000000e+00)
  %i.cp = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.co, float 1.000000e+00)
  %i.cq = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.cp
  %i.cr = fadd reassoc nnan nsz arcp contract afn float %i.cl, -1.000000e+00
  %.neg26.2 = fmul reassoc nsz arcp contract afn float %i.cq, %i.cr
  %.neg27.2 = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.cl
  %i.cs = fadd reassoc nsz arcp contract afn float %.neg27.2, %.neg26.2
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.az
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, %i.cl
  %i.cv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cu, float 0.000000e+00)
  %i.cw = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cv, float 1.000000e+00)
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ch
  store float %i.cw, ptr %i.cx, align 4, !tbaa !39
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store float %i.az, ptr %i.cy, align 4, !tbaa !39
  %i.cz = add nuw i64 %.030, 1                    ; 2 uses
  %i.da = add i64 %.02429, 4
  %exitcond.not = icmp eq i64 %i.cz, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !331
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_overlay(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader51, label %vector.ph

.lr.ph.preheader51:                               ; preds = %vector.body, %.lr.ph.preheader
  %.034.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02933.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.c, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.mod.vf = and i64 %4, 7                       ; 2 uses
  %i.a = icmp eq i64 %n.mod.vf, 0
  %i.b = select i1 %i.a, i64 8, i64 %n.mod.vf
  %n.vec = sub i64 %4, %i.b                       ; 3 uses
  %i.c = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = shl i64 %index, 2                        ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.e, align 4, !tbaa !39 ; 3 uses
  %i.f = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %wide.vec = load <32 x float>, ptr %i.g, align 4, !tbaa !39 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec42 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec43 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.h = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.i = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.h, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.d
  %wide.vec44 = load <32 x float>, ptr %i.j, align 4, !tbaa !39 ; 3 uses
  %strided.vec45 = shufflevector <32 x float> %wide.vec44, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec46 = shufflevector <32 x float> %wide.vec44, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec47 = shufflevector <32 x float> %wide.vec44, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.k = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec45, <8 x float> zeroinitializer)
  %i.l = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.k, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.m = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.i, splat (float 2.000000e+00) ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d
  %i.o = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec42, <8 x float> zeroinitializer)
  %i.p = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.o, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.q = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec46, <8 x float> zeroinitializer)
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.q, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.s = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.p, splat (float 2.000000e+00) ; 2 uses
  %i.t = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec43, <8 x float> zeroinitializer)
  %i.u = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.t, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.v = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec47, <8 x float> zeroinitializer)
  %i.w = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.v, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.x = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.u, splat (float 5.000000e-01)
  %i.y = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.u, splat (float 2.000000e+00) ; 2 uses
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %i.y, %i.w
  %i.aa = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.y
  %i.ab = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.w
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.aa, %i.ab
  %i.ad = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ac
  %predphi49 = select reassoc nsz arcp contract afn <8 x i1> %i.x, <8 x float> %i.ad, <8 x float> %i.z
  %i.ae = fsub reassoc nsz arcp contract afn <8 x float> %predphi49, %i.u
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %i.f, %i.ae
  %i.ag = fadd reassoc nsz arcp contract afn <8 x float> %i.af, %i.u
  %i.ah = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ag, <8 x float> zeroinitializer)
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ah, <8 x float> splat (float 1.000000e+00))
  %i.aj = shufflevector <8 x float> %i.f, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ak = shufflevector <8 x float> %i.i, <8 x float> %i.p, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.al = fcmp reassoc nsz arcp contract afn ogt <16 x float> %i.ak, splat (float 5.000000e-01)
  %i.am = shufflevector <8 x float> %i.m, <8 x float> %i.s, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.an = fsub reassoc nnan nsz arcp contract afn <16 x float> splat (float 2.000000e+00), %i.am
  %i.ao = shufflevector <8 x float> %i.l, <8 x float> %i.r, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ap = fsub reassoc nnan nsz arcp contract afn <16 x float> splat (float 1.000000e+00), %i.ao
  %i.aq = fmul reassoc nsz arcp contract afn <16 x float> %i.an, %i.ap
  %i.ar = fsub reassoc nsz arcp contract afn <16 x float> splat (float 1.000000e+00), %i.aq
  %5 = fmul reassoc nsz arcp contract afn <8 x float> %i.m, %i.l
  %6 = fmul reassoc nsz arcp contract afn <8 x float> %i.s, %i.r
  %7 = shufflevector <8 x float> %5, <8 x float> %6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.as = select reassoc nsz arcp contract afn <16 x i1> %i.al, <16 x float> %i.ar, <16 x float> %7
  %i.at = shufflevector <8 x float> %i.i, <8 x float> %i.p, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.au = fsub reassoc nsz arcp contract afn <16 x float> %i.as, %i.at
  %i.av = fmul reassoc nsz arcp contract afn <16 x float> %i.aj, %i.au
  %i.aw = shufflevector <8 x float> %i.i, <8 x float> %i.p, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ax = fadd reassoc nsz arcp contract afn <16 x float> %i.av, %i.aw
  %i.ay = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ax, <16 x float> zeroinitializer)
  %i.az = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.ay, <16 x float> splat (float 1.000000e+00))
  %i.ba = shufflevector <8 x float> %i.ai, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.az, <16 x float> %i.ba, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.n, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %.lr.ph.preheader51, label %vector.body, !llvm.loop !332

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader51, %bb.j
  %.034 = phi i64 [ %i.dw, %bb.j ], [ %.034.ph, %.lr.ph.preheader51 ] ; 2 uses
  %.02933 = phi i64 [ %i.dx, %bb.j ], [ %.02933.ph, %.lr.ph.preheader51 ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.034
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !39 ; 3 uses
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.bd ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02933
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !39
  %i.bh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bg, float 0.000000e+00)
  %i.bi = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bh, float 1.000000e+00) ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02933
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !39
  %i.bl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bk, float 0.000000e+00)
  %i.bm = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bl, float 1.000000e+00) ; 2 uses
  %i.bn = fcmp reassoc nsz arcp contract afn ogt float %i.bi, 5.000000e-01
  %i.bo = fmul reassoc nnan nsz arcp contract afn float %i.bi, 2.000000e+00 ; 2 uses
  br i1 %i.bn, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.bp = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.bo
  %i.bq = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.bm
  %i.br = fmul reassoc nsz arcp contract afn float %i.bp, %i.bq
  %i.bs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.br
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bo, %i.bm
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bu = phi reassoc nsz arcp contract afn float [ %i.bs, %bb.b ], [ %i.bt, %bb.c ]
  %i.bv = fsub reassoc nsz arcp contract afn float %i.bu, %i.bi
  %i.bw = fmul reassoc nsz arcp contract afn float %i.be, %i.bv
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %i.bi
  %i.by = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bx, float 0.000000e+00)
  %i.bz = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.by, float 1.000000e+00)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02933 ; 2 uses
  store float %i.bz, ptr %i.ca, align 4, !tbaa !39
  %i.cb = or disjoint i64 %.02933, 1              ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !39
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cd, float 0.000000e+00)
  %i.cf = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ce, float 1.000000e+00) ; 4 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cb
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !39
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ch, float 0.000000e+00)
  %i.cj = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ci, float 1.000000e+00) ; 2 uses
  %i.ck = fcmp reassoc nsz arcp contract afn ogt float %i.cf, 5.000000e-01
  %i.cl = fmul reassoc nnan nsz arcp contract afn float %i.cf, 2.000000e+00 ; 2 uses
  br i1 %i.ck, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, %i.cj
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cn = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.cl
  %i.co = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.cj
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cn, %i.co
  %i.cq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cp
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cr = phi reassoc nsz arcp contract afn float [ %i.cq, %bb.f ], [ %i.cm, %bb.e ]
  %i.cs = fsub reassoc nsz arcp contract afn float %i.cr, %i.cf
  %i.ct = fmul reassoc nsz arcp contract afn float %i.be, %i.cs
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, %i.cf
  %i.cv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cu, float 0.000000e+00)
  %i.cw = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cv, float 1.000000e+00)
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cb
  store float %i.cw, ptr %i.cx, align 4, !tbaa !39
  %i.cy = or disjoint i64 %.02933, 2              ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !39
  %i.db = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.da, float 0.000000e+00)
  %i.dc = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.db, float 1.000000e+00) ; 4 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cy
  %i.de = load float, ptr %i.dd, align 4, !tbaa !39
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.de, float 0.000000e+00)
  %i.dg = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.df, float 1.000000e+00) ; 2 uses
  %i.dh = fcmp reassoc nsz arcp contract afn ogt float %i.dc, 5.000000e-01
  %i.di = fmul reassoc nnan nsz arcp contract afn float %i.dc, 2.000000e+00 ; 2 uses
  br i1 %i.dh, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dj = fmul reassoc nsz arcp contract afn float %i.di, %i.dg
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.dk = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.di
  %i.dl = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.dg
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dk, %i.dl
  %i.dn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dm
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.do = phi reassoc nsz arcp contract afn float [ %i.dn, %bb.i ], [ %i.dj, %bb.h ]
  %i.dp = fsub reassoc nsz arcp contract afn float %i.do, %i.dc
  %i.dq = fmul reassoc nsz arcp contract afn float %i.be, %i.dp
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dq, %i.dc
  %i.ds = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dr, float 0.000000e+00)
  %i.dt = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ds, float 1.000000e+00)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cy
  store float %i.dt, ptr %i.du, align 4, !tbaa !39
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store float %i.bd, ptr %i.dv, align 4, !tbaa !39
  %i.dw = add nuw i64 %.034, 1                    ; 2 uses
  %i.dx = add i64 %.02933, 4
  %exitcond.not = icmp eq i64 %i.dw, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !333
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_softlight(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader56, label %vector.memcheck

.lr.ph.preheader56:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.034.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02933.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.e, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep42 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep43 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep42
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound044 = icmp ult ptr %2, %scevgep43
  %bound145 = icmp ult ptr %1, %scevgep
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  br i1 %conflict.rdx, label %.lr.ph.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %4, 7                       ; 2 uses
  %i.c = icmp eq i64 %n.mod.vf, 0
  %i.d = select i1 %i.c, i64 8, i64 %n.mod.vf
  %n.vec = sub i64 %4, %i.d                       ; 3 uses
  %i.e = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = shl i64 %index, 2                        ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.g, align 4, !tbaa !39 ; 3 uses
  %i.h = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %wide.vec = load <32 x float>, ptr %i.i, align 4, !tbaa !39, !alias.scope !334 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec47 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec48 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.j = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.k = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.j, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f
  %wide.vec49 = load <32 x float>, ptr %i.l, align 4, !tbaa !39, !alias.scope !337 ; 3 uses
  %strided.vec50 = shufflevector <32 x float> %wide.vec49, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec51 = shufflevector <32 x float> %wide.vec49, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec52 = shufflevector <32 x float> %wide.vec49, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.m = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec50, <8 x float> zeroinitializer)
  %i.n = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.m, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f
  %i.p = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec47, <8 x float> zeroinitializer)
  %i.q = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.p, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec51, <8 x float> zeroinitializer)
  %i.s = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.r, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.t = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec48, <8 x float> zeroinitializer)
  %i.u = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.t, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.v = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec52, <8 x float> zeroinitializer)
  %i.w = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.v, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.x = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.w, splat (float 5.000000e-01)
  %i.y = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.w, splat (float 5.000000e-01)
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %i.y, %i.u
end_hunk_0
begin_hunk_1_@_blend_softlight:bb.a
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.034
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !39 ; 3 uses
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.bh ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02933
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !39
  %i.bl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bk, float 0.000000e+00)
  %i.bm = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bl, float 1.000000e+00) ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02933
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !39
  %i.bp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bo, float 0.000000e+00)
  %i.bq = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bp, float 1.000000e+00) ; 3 uses
  %i.br = fcmp reassoc nsz arcp contract afn ogt float %i.bq, 5.000000e-01
  br i1 %i.br, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.bs = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.bm
  %i.bt = fsub reassoc nnan nsz arcp contract afn float 1.500000e+00, %i.bq
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bs
  %i.bv = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bu
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.bw = fadd reassoc nnan nsz arcp contract afn float %i.bq, 5.000000e-01
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bm
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.by = phi reassoc nsz arcp contract afn float [ %i.bv, %bb.b ], [ %i.bx, %bb.c ]
  %i.bz = fsub reassoc nsz arcp contract afn float %i.by, %i.bm
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bi, %i.bz
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, %i.bm
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cb, float 0.000000e+00)
  %i.cd = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cc, float 1.000000e+00)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02933 ; 2 uses
  store float %i.cd, ptr %i.ce, align 4, !tbaa !39
  %i.cf = or disjoint i64 %.02933, 1              ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !39
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ch, float 0.000000e+00)
  %i.cj = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ci, float 1.000000e+00) ; 4 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cf
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !39
  %i.cm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cl, float 0.000000e+00)
  %i.cn = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cm, float 1.000000e+00) ; 3 uses
  %i.co = fcmp reassoc nsz arcp contract afn ogt float %i.cn, 5.000000e-01
  br i1 %i.co, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cp = fadd reassoc nnan nsz arcp contract afn float %i.cn, 5.000000e-01
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.cj
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cr = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.cj
  %i.cs = fsub reassoc nnan nsz arcp contract afn float 1.500000e+00, %i.cn
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.cr
  %i.cu = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ct
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cv = phi reassoc nsz arcp contract afn float [ %i.cu, %bb.f ], [ %i.cq, %bb.e ]
  %i.cw = fsub reassoc nsz arcp contract afn float %i.cv, %i.cj
  %i.cx = fmul reassoc nsz arcp contract afn float %i.bi, %i.cw
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, %i.cj
  %i.cz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cy, float 0.000000e+00)
  %i.da = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cz, float 1.000000e+00)
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cf
  store float %i.da, ptr %i.db, align 4, !tbaa !39
  %i.dc = or disjoint i64 %.02933, 2              ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !39
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.de, float 0.000000e+00)
  %i.dg = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.df, float 1.000000e+00) ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dc
  %i.di = load float, ptr %i.dh, align 4, !tbaa !39
  %i.dj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.di, float 0.000000e+00)
  %i.dk = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dj, float 1.000000e+00) ; 3 uses
  %i.dl = fcmp reassoc nsz arcp contract afn ogt float %i.dk, 5.000000e-01
  br i1 %i.dl, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dm = fadd reassoc nnan nsz arcp contract afn float %i.dk, 5.000000e-01
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, %i.dg
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.do = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.dg
  %i.dp = fsub reassoc nnan nsz arcp contract afn float 1.500000e+00, %i.dk
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, %i.do
  %i.dr = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ds = phi reassoc nsz arcp contract afn float [ %i.dr, %bb.i ], [ %i.dn, %bb.h ]
  %i.dt = fsub reassoc nsz arcp contract afn float %i.ds, %i.dg
  %i.du = fmul reassoc nsz arcp contract afn float %i.bi, %i.dt
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, %i.dg
  %i.dw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dv, float 0.000000e+00)
  %i.dx = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dw, float 1.000000e+00)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dc
  store float %i.dx, ptr %i.dy, align 4, !tbaa !39
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store float %i.bh, ptr %i.dz, align 4, !tbaa !39
  %i.ea = add nuw i64 %.034, 1                    ; 2 uses
  %i.eb = add i64 %.02933, 4
  %exitcond.not = icmp eq i64 %i.ea, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !343
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_hardlight(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader56, label %vector.memcheck

.lr.ph.preheader56:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.034.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02933.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.e, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep42 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep43 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep42
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound044 = icmp ult ptr %2, %scevgep43
  %bound145 = icmp ult ptr %1, %scevgep
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  br i1 %conflict.rdx, label %.lr.ph.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %4, 7                       ; 2 uses
  %i.c = icmp eq i64 %n.mod.vf, 0
  %i.d = select i1 %i.c, i64 8, i64 %n.mod.vf
  %n.vec = sub i64 %4, %i.d                       ; 3 uses
  %i.e = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = shl i64 %index, 2                        ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.g, align 4, !tbaa !39 ; 3 uses
  %i.h = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %wide.vec = load <32 x float>, ptr %i.i, align 4, !tbaa !39, !alias.scope !344 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec47 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec48 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.j = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.k = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.j, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f
  %wide.vec49 = load <32 x float>, ptr %i.l, align 4, !tbaa !39, !alias.scope !347 ; 3 uses
  %strided.vec50 = shufflevector <32 x float> %wide.vec49, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec51 = shufflevector <32 x float> %wide.vec49, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec52 = shufflevector <32 x float> %wide.vec49, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.m = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec50, <8 x float> zeroinitializer)
  %i.n = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.m, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.o = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.k, splat (float 2.000000e+00) ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f
  %i.q = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec47, <8 x float> zeroinitializer)
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.q, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.s = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec51, <8 x float> zeroinitializer)
  %i.t = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.s, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.u = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.r, splat (float 2.000000e+00) ; 2 uses
  %i.v = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec48, <8 x float> zeroinitializer)
  %i.w = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.v, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.x = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec52, <8 x float> zeroinitializer)
  %i.y = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.x, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.z = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.y, splat (float 5.000000e-01)
  %i.aa = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.w, splat (float 2.000000e+00) ; 2 uses
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %i.aa, %i.y
  %i.ac = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.aa
  %i.ad = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.y
  %i.ae = fmul reassoc nsz arcp contract afn <8 x float> %i.ac, %i.ad
  %i.af = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ae
  %predphi54 = select reassoc nsz arcp contract afn <8 x i1> %i.z, <8 x float> %i.af, <8 x float> %i.ab
  %i.ag = fsub reassoc nsz arcp contract afn <8 x float> %predphi54, %i.w
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %i.h, %i.ag
  %i.ai = fadd reassoc nsz arcp contract afn <8 x float> %i.ah, %i.w
  %i.aj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ai, <8 x float> zeroinitializer)
  %i.ak = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.aj, <8 x float> splat (float 1.000000e+00))
  %i.al = shufflevector <8 x float> %i.h, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.am = shufflevector <8 x float> %i.n, <8 x float> %i.t, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.an = fcmp reassoc nsz arcp contract afn ogt <16 x float> %i.am, splat (float 5.000000e-01)
  %i.ao = shufflevector <8 x float> %i.o, <8 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ap = fsub reassoc nnan nsz arcp contract afn <16 x float> splat (float 2.000000e+00), %i.ao
  %i.aq = shufflevector <8 x float> %i.n, <8 x float> %i.t, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ar = fsub reassoc nnan nsz arcp contract afn <16 x float> splat (float 1.000000e+00), %i.aq
  %i.as = fmul reassoc nsz arcp contract afn <16 x float> %i.ap, %i.ar
  %i.at = fsub reassoc nsz arcp contract afn <16 x float> splat (float 1.000000e+00), %i.as
  %5 = fmul reassoc nsz arcp contract afn <8 x float> %i.o, %i.n
  %6 = fmul reassoc nsz arcp contract afn <8 x float> %i.u, %i.t
  %7 = shufflevector <8 x float> %5, <8 x float> %6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.au = select reassoc nsz arcp contract afn <16 x i1> %i.an, <16 x float> %i.at, <16 x float> %7
  %i.av = shufflevector <8 x float> %i.k, <8 x float> %i.r, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aw = fsub reassoc nsz arcp contract afn <16 x float> %i.au, %i.av
  %i.ax = fmul reassoc nsz arcp contract afn <16 x float> %i.al, %i.aw
  %i.ay = shufflevector <8 x float> %i.k, <8 x float> %i.r, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.az = fadd reassoc nsz arcp contract afn <16 x float> %i.ax, %i.ay
  %i.ba = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.az, <16 x float> zeroinitializer)
  %i.bb = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.ba, <16 x float> splat (float 1.000000e+00))
  %i.bc = shufflevector <8 x float> %i.ak, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bb, <16 x float> %i.bc, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.p, align 4, !tbaa !39, !alias.scope !349, !noalias !351
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %.lr.ph.preheader56, label %vector.body, !llvm.loop !352

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader56, %bb.j
  %.034 = phi i64 [ %i.dy, %bb.j ], [ %.034.ph, %.lr.ph.preheader56 ] ; 2 uses
  %.02933 = phi i64 [ %i.dz, %bb.j ], [ %.02933.ph, %.lr.ph.preheader56 ] ; 6 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.034
  %i.bf = load float, ptr %i.be, align 4, !tbaa !39 ; 3 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.bf ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02933
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !39
  %i.bj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bi, float 0.000000e+00)
  %i.bk = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bj, float 1.000000e+00) ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02933
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !39
  %i.bn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bm, float 0.000000e+00)
  %i.bo = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bn, float 1.000000e+00) ; 3 uses
  %i.bp = fcmp reassoc nsz arcp contract afn ogt float %i.bo, 5.000000e-01
  %i.bq = fmul reassoc nnan nsz arcp contract afn float %i.bk, 2.000000e+00 ; 2 uses
  br i1 %i.bp, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.br = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.bq
  %i.bs = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.bo
  %i.bt = fmul reassoc nsz arcp contract afn float %i.br, %i.bs
  %i.bu = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bt
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bq, %i.bo
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bw = phi reassoc nsz arcp contract afn float [ %i.bu, %bb.b ], [ %i.bv, %bb.c ]
  %i.bx = fsub reassoc nsz arcp contract afn float %i.bw, %i.bk
  %i.by = fmul reassoc nsz arcp contract afn float %i.bg, %i.bx
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, %i.bk
  %i.ca = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bz, float 0.000000e+00)
  %i.cb = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ca, float 1.000000e+00)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02933 ; 2 uses
  store float %i.cb, ptr %i.cc, align 4, !tbaa !39
  %i.cd = or disjoint i64 %.02933, 1              ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !39
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cf, float 0.000000e+00)
  %i.ch = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cg, float 1.000000e+00) ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cd
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !39
  %i.ck = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cj, float 0.000000e+00)
  %i.cl = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ck, float 1.000000e+00) ; 3 uses
  %i.cm = fcmp reassoc nsz arcp contract afn ogt float %i.cl, 5.000000e-01
  %i.cn = fmul reassoc nnan nsz arcp contract afn float %i.ch, 2.000000e+00 ; 2 uses
  br i1 %i.cm, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.cl
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cp = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.cn
  %i.cq = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.cl
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cp, %i.cq
  %i.cs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cr
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ct = phi reassoc nsz arcp contract afn float [ %i.cs, %bb.f ], [ %i.co, %bb.e ]
  %i.cu = fsub reassoc nsz arcp contract afn float %i.ct, %i.ch
  %i.cv = fmul reassoc nsz arcp contract afn float %i.bg, %i.cu
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cv, %i.ch
  %i.cx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cw, float 0.000000e+00)
  %i.cy = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cx, float 1.000000e+00)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cd
  store float %i.cy, ptr %i.cz, align 4, !tbaa !39
  %i.da = or disjoint i64 %.02933, 2              ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !39
  %i.dd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dc, float 0.000000e+00)
  %i.de = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dd, float 1.000000e+00) ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da
  %i.dg = load float, ptr %i.df, align 4, !tbaa !39
  %i.dh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dg, float 0.000000e+00)
  %i.di = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dh, float 1.000000e+00) ; 3 uses
  %i.dj = fcmp reassoc nsz arcp contract afn ogt float %i.di, 5.000000e-01
  %i.dk = fmul reassoc nnan nsz arcp contract afn float %i.de, 2.000000e+00 ; 2 uses
  br i1 %i.dj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.di
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.dm = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.dk
  %i.dn = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.di
  %i.do = fmul reassoc nsz arcp contract afn float %i.dm, %i.dn
  %i.dp = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.do
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dq = phi reassoc nsz arcp contract afn float [ %i.dp, %bb.i ], [ %i.dl, %bb.h ]
  %i.dr = fsub reassoc nsz arcp contract afn float %i.dq, %i.de
  %i.ds = fmul reassoc nsz arcp contract afn float %i.bg, %i.dr
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %i.de
  %i.du = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dt, float 0.000000e+00)
  %i.dv = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.du, float 1.000000e+00)
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.da
  store float %i.dv, ptr %i.dw, align 4, !tbaa !39
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store float %i.bf, ptr %i.dx, align 4, !tbaa !39
  %i.dy = add nuw i64 %.034, 1                    ; 2 uses
  %i.dz = add i64 %.02933, 4
  %exitcond.not = icmp eq i64 %i.dy, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !353
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_vividlight(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader64, label %vector.memcheck

.lr.ph.preheader64:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.036.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.03135.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.e, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep44 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep45 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep44
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound046 = icmp ult ptr %2, %scevgep45
  %bound147 = icmp ult ptr %1, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx = or i1 %found.conflict, %found.conflict48
  br i1 %conflict.rdx, label %.lr.ph.preheader64, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %4, 7                       ; 2 uses
  %i.c = icmp eq i64 %n.mod.vf, 0
  %i.d = select i1 %i.c, i64 8, i64 %n.mod.vf
  %n.vec = sub i64 %4, %i.d                       ; 3 uses
  %i.e = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = shl i64 %index, 2                        ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.g, align 4, !tbaa !39 ; 3 uses
  %i.h = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %wide.vec = load <32 x float>, ptr %i.i, align 4, !tbaa !39, !alias.scope !354 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec49 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec50 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.j = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.k = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.j, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f
  %wide.vec51 = load <32 x float>, ptr %i.l, align 4, !tbaa !39, !alias.scope !357 ; 3 uses
  %strided.vec52 = shufflevector <32 x float> %wide.vec51, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec53 = shufflevector <32 x float> %wide.vec51, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec54 = shufflevector <32 x float> %wide.vec51, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.m = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec52, <8 x float> zeroinitializer)
  %i.n = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.m, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.o = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.n, splat (float 5.000000e-01)
  %i.p = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.n, zeroinitializer
  %i.q = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.k
  %i.r = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.n, splat (float 2.000000e+00) ; 2 uses
  %i.s = fdiv reassoc nsz arcp contract afn <8 x float> %i.q, %i.r
  %i.t = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.s
  %i.u = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.n, splat (float 1.000000e+00) ; 2 uses
  %i.v = and <8 x i1> %i.o, %i.u
  %i.w = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.r
  %i.x = fdiv reassoc nsz arcp contract afn <8 x float> %i.k, %i.w
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.p, <8 x float> zeroinitializer, <8 x float> %i.t
  %predphi55 = select reassoc nsz arcp contract afn <8 x i1> %i.v, <8 x float> %i.x, <8 x float> %predphi
end_hunk_1
