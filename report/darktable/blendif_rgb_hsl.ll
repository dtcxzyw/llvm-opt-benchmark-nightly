Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blendif_rgb_hsl?download=true
inline.NumInlined: 129
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_blend_hardlight:bb.a
  %i.av = fsub reassoc nnan nsz arcp contract afn <16 x float> splat (float 1.000000e+00), %i.au
  %i.aw = fmul reassoc nsz arcp contract afn <16 x float> %i.at, %i.av
  %i.ax = fsub reassoc nsz arcp contract afn <16 x float> splat (float 1.000000e+00), %i.aw
  %i.ay = shufflevector <8 x float> %i.s, <8 x float> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.az = shufflevector <8 x float> %i.r, <8 x float> %i.x, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ba = fmul reassoc nsz arcp contract afn <16 x float> %i.ay, %i.az
  %i.bb = select reassoc nsz arcp contract afn <16 x i1> %i.ar, <16 x float> %i.ax, <16 x float> %i.ba
  %i.bc = shufflevector <8 x float> %i.o, <8 x float> %i.v, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bd = fsub reassoc nsz arcp contract afn <16 x float> %i.bb, %i.bc
  %i.be = fmul reassoc nsz arcp contract afn <16 x float> %i.ap, %i.bd
  %i.bf = shufflevector <8 x float> %i.o, <8 x float> %i.v, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bg = fadd reassoc nsz arcp contract afn <16 x float> %i.be, %i.bf
  %i.bh = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bg, <16 x float> zeroinitializer)
  %i.bi = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bh, <16 x float> splat (float 1.000000e+00))
  %i.bj = shufflevector <8 x float> %i.ao, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bi, <16 x float> %i.bj, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.t, align 4, !tbaa !34, !alias.scope !325, !noalias !326
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %.lr.ph.preheader59, label %vector.body, !llvm.loop !321

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader59, %bb.j
  %.02934 = phi i64 [ %i.eg, %bb.j ], [ %.02934.ph, %.lr.ph.preheader59 ] ; 6 uses
  %.03033 = phi i64 [ %i.ef, %bb.j ], [ %.03033.ph, %.lr.ph.preheader59 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03033
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !34 ; 3 uses
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.bm ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02934
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !34
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bp, float 0.000000e+00)
  %i.br = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bq, float 1.000000e+00) ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02934
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !34
  %i.bu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bt, float 0.000000e+00)
  %i.bv = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bu, float 1.000000e+00) ; 3 uses
  %i.bw = fcmp reassoc nsz arcp contract afn ogt float %i.bv, 5.000000e-01
  %i.bx = fmul reassoc nnan nsz arcp contract afn float %i.br, 2.000000e+00 ; 2 uses
  br i1 %i.bw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.by = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.bx
  %i.bz = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.bv
  %i.ca = fmul reassoc nsz arcp contract afn float %i.by, %i.bz
  %i.cb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ca
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.cc = fmul reassoc nsz arcp contract afn float %i.bx, %i.bv
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cd = phi reassoc nsz arcp contract afn float [ %i.cb, %bb.b ], [ %i.cc, %bb.c ]
  %i.ce = fsub reassoc nsz arcp contract afn float %i.cd, %i.br
  %i.cf = fmul reassoc nsz arcp contract afn float %i.bn, %i.ce
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, %i.br
  %i.ch = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cg, float 0.000000e+00)
  %i.ci = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ch, float 1.000000e+00)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02934 ; 2 uses
  store float %i.ci, ptr %i.cj, align 4, !tbaa !34
  %i.ck = or disjoint i64 %.02934, 1              ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ck
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !34
  %i.cn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cm, float 0.000000e+00)
  %i.co = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cn, float 1.000000e+00) ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ck
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !34
  %i.cr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cq, float 0.000000e+00)
  %i.cs = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cr, float 1.000000e+00) ; 3 uses
  %i.ct = fcmp reassoc nsz arcp contract afn ogt float %i.cs, 5.000000e-01
  %i.cu = fmul reassoc nnan nsz arcp contract afn float %i.co, 2.000000e+00 ; 2 uses
  br i1 %i.ct, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, %i.cs
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cw = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.cu
  %i.cx = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.cs
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cw, %i.cx
  %i.cz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cy
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.da = phi reassoc nsz arcp contract afn float [ %i.cz, %bb.f ], [ %i.cv, %bb.e ]
  %i.db = fsub reassoc nsz arcp contract afn float %i.da, %i.co
  %i.dc = fmul reassoc nsz arcp contract afn float %i.bn, %i.db
  %i.dd = fadd reassoc nsz arcp contract afn float %i.dc, %i.co
  %i.de = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dd, float 0.000000e+00)
  %i.df = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.de, float 1.000000e+00)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ck
  store float %i.df, ptr %i.dg, align 4, !tbaa !34
  %i.dh = or disjoint i64 %.02934, 2              ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !34
  %i.dk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dj, float 0.000000e+00)
  %i.dl = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dk, float 1.000000e+00) ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dh
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !34
  %i.do = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dn, float 0.000000e+00)
  %i.dp = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.do, float 1.000000e+00) ; 3 uses
  %i.dq = fcmp reassoc nsz arcp contract afn ogt float %i.dp, 5.000000e-01
  %i.dr = fmul reassoc nnan nsz arcp contract afn float %i.dl, 2.000000e+00 ; 2 uses
  br i1 %i.dq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, %i.dp
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.dt = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.dr
  %i.du = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.dp
  %i.dv = fmul reassoc nsz arcp contract afn float %i.dt, %i.du
  %i.dw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dv
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dx = phi reassoc nsz arcp contract afn float [ %i.dw, %bb.i ], [ %i.ds, %bb.h ]
  %i.dy = fsub reassoc nsz arcp contract afn float %i.dx, %i.dl
  %i.dz = fmul reassoc nsz arcp contract afn float %i.bn, %i.dy
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, %i.dl
  %i.eb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ea, float 0.000000e+00)
  %i.ec = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.eb, float 1.000000e+00)
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dh
  store float %i.ec, ptr %i.ed, align 4, !tbaa !34
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store float %i.bm, ptr %i.ee, align 4, !tbaa !34
  %i.ef = add nuw i64 %.03033, 1                  ; 2 uses
  %i.eg = add i64 %.02934, 4
  %exitcond.not = icmp eq i64 %i.ef, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !322
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_vividlight(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader67, label %vector.memcheck

.lr.ph.preheader67:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.03136.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.i, %vector.body ]
  %.03235.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 %i.a       ; 2 uses
  %i.c = add i64 %i.a, -4                         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %1, i64 %i.c
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %0, %i.b
  %found.conflict = and i1 %bound0, %bound1
  %bound049 = icmp ult ptr %2, %i.e
  %bound150 = icmp ult ptr %1, %i.b
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx = or i1 %found.conflict, %found.conflict51
  br i1 %conflict.rdx, label %.lr.ph.preheader67, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.f = and i64 %4, 7                            ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = select i1 %i.g, i64 8, i64 %i.f
  %n.vec = sub i64 %4, %i.h                       ; 3 uses
  %i.i = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = shl i64 %index, 2                        ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.k, align 4, !tbaa !34 ; 3 uses
  %i.l = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %wide.vec = load <32 x float>, ptr %i.m, align 4, !tbaa !34, !alias.scope !333 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec52 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec53 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.n = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.o = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.n, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %wide.vec54 = load <32 x float>, ptr %i.p, align 4, !tbaa !34, !alias.scope !334 ; 3 uses
  %strided.vec55 = shufflevector <32 x float> %wide.vec54, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec56 = shufflevector <32 x float> %wide.vec54, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec57 = shufflevector <32 x float> %wide.vec54, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.q = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec55, <8 x float> zeroinitializer)
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.q, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.s = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.r, splat (float 5.000000e-01)
  %i.t = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.r, zeroinitializer
  %i.u = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.o
  %i.v = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.r, splat (float 2.000000e+00) ; 2 uses
  %i.w = fdiv reassoc nsz arcp contract afn <8 x float> %i.u, %i.v
  %i.x = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.w
  %i.y = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.r, splat (float 1.000000e+00) ; 2 uses
  %5 = and <8 x i1> %i.s, %i.y
  %i.z = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.v
  %i.aa = fdiv reassoc nsz arcp contract afn <8 x float> %i.o, %i.z
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.t, <8 x float> zeroinitializer, <8 x float> %i.x
  %predphi58 = select reassoc nsz arcp contract afn <8 x i1> %5, <8 x float> %i.aa, <8 x float> %predphi
  %predphi59 = select reassoc nsz arcp contract afn <8 x i1> %i.y, <8 x float> %predphi58, <8 x float> splat (float 1.000000e+00)
  %i.ab = fsub reassoc nsz arcp contract afn <8 x float> %predphi59, %i.o
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.l, %i.ab
  %i.ad = fadd reassoc nsz arcp contract afn <8 x float> %i.ac, %i.o
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.af = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec52, <8 x float> zeroinitializer)
  %i.ag = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.af, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.ah = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec56, <8 x float> zeroinitializer)
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ah, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %6 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ai, splat (float 5.000000e-01)
  %i.aj = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.ai, zeroinitializer ; 2 uses
  %7 = xor <8 x i1> %6, %i.aj
  %i.ak = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ag
  %i.al = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ai, splat (float 2.000000e+00) ; 2 uses
  %i.am = fdiv reassoc nsz arcp contract afn <8 x float> %i.ak, %i.al
  %i.an = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.am
  %i.ao = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.ai, splat (float 1.000000e+00)
  %i.ap = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.al
  %i.aq = fdiv reassoc nsz arcp contract afn <8 x float> %i.ag, %i.ap
  %predphi60 = select reassoc nsz arcp contract afn <8 x i1> %i.ao, <8 x float> splat (float 1.000000e+00), <8 x float> %i.aq
  %predphi61 = select reassoc nsz arcp contract afn <8 x i1> %7, <8 x float> %i.an, <8 x float> %predphi60
  %predphi62 = select reassoc nsz arcp contract afn <8 x i1> %i.aj, <8 x float> %predphi61, <8 x float> zeroinitializer
  %i.ar = fsub reassoc nsz arcp contract afn <8 x float> %predphi62, %i.ag
  %i.as = fmul reassoc nsz arcp contract afn <8 x float> %i.l, %i.ar
  %i.at = fadd reassoc nsz arcp contract afn <8 x float> %i.as, %i.ag
  %i.au = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec53, <8 x float> zeroinitializer)
  %i.av = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.au, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.aw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec57, <8 x float> zeroinitializer)
  %i.ax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.aw, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %8 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ax, splat (float 5.000000e-01)
  %i.ay = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.ax, zeroinitializer ; 2 uses
  %9 = xor <8 x i1> %8, %i.ay
  %i.az = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.av
  %i.ba = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ax, splat (float 2.000000e+00) ; 2 uses
  %i.bb = fdiv reassoc nsz arcp contract afn <8 x float> %i.az, %i.ba
  %i.bc = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.bb
  %i.bd = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.ax, splat (float 1.000000e+00)
  %i.be = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.ba
  %i.bf = fdiv reassoc nsz arcp contract afn <8 x float> %i.av, %i.be
  %predphi63 = select reassoc nsz arcp contract afn <8 x i1> %i.bd, <8 x float> splat (float 1.000000e+00), <8 x float> %i.bf
  %predphi64 = select reassoc nsz arcp contract afn <8 x i1> %9, <8 x float> %i.bc, <8 x float> %predphi63
  %predphi65 = select reassoc nsz arcp contract afn <8 x i1> %i.ay, <8 x float> %predphi64, <8 x float> zeroinitializer
  %i.bg = fsub reassoc nsz arcp contract afn <8 x float> %predphi65, %i.av
  %i.bh = fmul reassoc nsz arcp contract afn <8 x float> %i.l, %i.bg
  %i.bi = fadd reassoc nsz arcp contract afn <8 x float> %i.bh, %i.av
  %i.bj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bi, <8 x float> zeroinitializer)
  %i.bk = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bj, <8 x float> splat (float 1.000000e+00))
  %i.bl = shufflevector <8 x float> %i.ad, <8 x float> %i.at, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bm = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bl, <16 x float> zeroinitializer)
  %i.bn = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bm, <16 x float> splat (float 1.000000e+00))
  %i.bo = shufflevector <8 x float> %i.bk, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bn, <16 x float> %i.bo, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ae, align 4, !tbaa !34, !alias.scope !335, !noalias !336
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %.lr.ph.preheader67, label %vector.body, !llvm.loop !331

._crit_edge:                                      ; preds = %bb.p, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader67, %bb.p
  %.03136 = phi i64 [ %i.eu, %bb.p ], [ %.03136.ph, %.lr.ph.preheader67 ] ; 6 uses
  %.03235 = phi i64 [ %i.et, %bb.p ], [ %.03235.ph, %.lr.ph.preheader67 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03235
  %i.br = load float, ptr %i.bq, align 4, !tbaa !34 ; 3 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %i.br ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03136
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !34
  %i.bv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bu, float 0.000000e+00)
  %i.bw = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bv, float 1.000000e+00) ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.03136
  %i.by = load float, ptr %i.bx, align 4, !tbaa !34
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.by, float 0.000000e+00)
  %i.ca = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bz, float 1.000000e+00) ; 5 uses
  %i.cb = fcmp reassoc nsz arcp contract afn ogt float %i.ca, 5.000000e-01
  br i1 %i.cb, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.cc = fcmp reassoc nsz arcp contract afn ult float %i.ca, 1.000000e+00
  br i1 %i.cc, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.cd = fmul reassoc nnan nsz arcp contract afn float %i.ca, 2.000000e+00
  %i.ce = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.cd
  %i.cf = fdiv reassoc nsz arcp contract afn float %i.bw, %i.ce
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.cg = fcmp reassoc nsz arcp contract afn ugt float %i.ca, 0.000000e+00
  br i1 %i.cg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ch = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bw
  %i.ci = fmul reassoc nnan nsz arcp contract afn float %i.ca, 2.000000e+00
  %i.cj = fdiv reassoc nsz arcp contract afn float %i.ch, %i.ci
  %i.ck = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cj
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.cl = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.b ], [ %i.cf, %bb.c ], [ %i.ck, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.cm = fsub reassoc nsz arcp contract afn float %i.cl, %i.bw
  %i.cn = fmul reassoc nsz arcp contract afn float %i.bs, %i.cm
  %i.co = fadd reassoc nsz arcp contract afn float %i.cn, %i.bw
  %i.cp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.co, float 0.000000e+00)
  %i.cq = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cp, float 1.000000e+00)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03136 ; 2 uses
  store float %i.cq, ptr %i.cr, align 4, !tbaa !34
  %i.cs = or disjoint i64 %.03136, 1              ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !34
  %i.cv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cu, float 0.000000e+00)
  %i.cw = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cv, float 1.000000e+00) ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cs
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !34
  %i.cz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cy, float 0.000000e+00)
  %i.da = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cz, float 1.000000e+00) ; 5 uses
  %i.db = fcmp reassoc nsz arcp contract afn ogt float %i.da, 5.000000e-01
  br i1 %i.db, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dc = fcmp reassoc nsz arcp contract afn ugt float %i.da, 0.000000e+00
  br i1 %i.dc, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.dd = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cw
  %i.de = fmul reassoc nnan nsz arcp contract afn float %i.da, 2.000000e+00
  %i.df = fdiv reassoc nsz arcp contract afn float %i.dd, %i.de
  %i.dg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.df
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.dh = fcmp reassoc nsz arcp contract afn ult float %i.da, 1.000000e+00
  br i1 %i.dh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.di = fmul reassoc nnan nsz arcp contract afn float %i.da, 2.000000e+00
  %i.dj = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.di
  %i.dk = fdiv reassoc nsz arcp contract afn float %i.cw, %i.dj
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.dl = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.i ], [ %i.dk, %bb.j ], [ %i.dg, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.dm = fsub reassoc nsz arcp contract afn float %i.dl, %i.cw
  %i.dn = fmul reassoc nsz arcp contract afn float %i.bs, %i.dm
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, %i.cw
  %i.dp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.do, float 0.000000e+00)
  %i.dq = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dp, float 1.000000e+00)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cs
  store float %i.dq, ptr %i.dr, align 4, !tbaa !34
  %i.ds = or disjoint i64 %.03136, 2              ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !34
  %i.dv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.du, float 0.000000e+00)
  %i.dw = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dv, float 1.000000e+00) ; 4 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ds
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !34
  %i.dz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dy, float 0.000000e+00)
  %i.ea = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dz, float 1.000000e+00) ; 5 uses
  %i.eb = fcmp reassoc nsz arcp contract afn ogt float %i.ea, 5.000000e-01
  br i1 %i.eb, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ec = fcmp reassoc nsz arcp contract afn ugt float %i.ea, 0.000000e+00
  br i1 %i.ec, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ed = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dw
  %i.ee = fmul reassoc nnan nsz arcp contract afn float %i.ea, 2.000000e+00
  %i.ef = fdiv reassoc nsz arcp contract afn float %i.ed, %i.ee
  %i.eg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ef
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.eh = fcmp reassoc nsz arcp contract afn ult float %i.ea, 1.000000e+00
  br i1 %i.eh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ei = fmul reassoc nnan nsz arcp contract afn float %i.ea, 2.000000e+00
  %i.ej = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.ei
  %i.ek = fdiv reassoc nsz arcp contract afn float %i.dw, %i.ej
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.el = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.n ], [ %i.ek, %bb.o ], [ %i.eg, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.em = fsub reassoc nsz arcp contract afn float %i.el, %i.dw
  %i.en = fmul reassoc nsz arcp contract afn float %i.bs, %i.em
  %i.eo = fadd reassoc nsz arcp contract afn float %i.en, %i.dw
  %i.ep = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.eo, float 0.000000e+00)
  %i.eq = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ep, float 1.000000e+00)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ds
  store float %i.eq, ptr %i.er, align 4, !tbaa !34
  %i.es = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store float %i.br, ptr %i.es, align 4, !tbaa !34
  %i.et = add nuw i64 %.03235, 1                  ; 2 uses
  %i.eu = add i64 %.03136, 4
  %exitcond.not = icmp eq i64 %i.et, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !332
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_linearlight(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader47, label %vector.memcheck

.lr.ph.preheader47:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.030.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02629.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.i, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 %i.a       ; 2 uses
  %i.c = add i64 %i.a, -4                         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %1, i64 %i.c
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %0, %i.b
  %found.conflict = and i1 %bound0, %bound1
  %bound037 = icmp ult ptr %2, %i.e
  %bound138 = icmp ult ptr %1, %i.b
  %found.conflict39 = and i1 %bound037, %bound138
  %conflict.rdx = or i1 %found.conflict, %found.conflict39
  br i1 %conflict.rdx, label %.lr.ph.preheader47, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.f = and i64 %4, 7                            ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = select i1 %i.g, i64 8, i64 %i.f
  %n.vec = sub i64 %4, %i.h                       ; 3 uses
  %i.i = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = shl i64 %index, 2                        ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
end_hunk_0
