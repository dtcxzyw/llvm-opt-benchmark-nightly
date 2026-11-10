Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blendif_lab?download=true
inline.NumInlined: 211
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_blend_multiply:bb.a
  %i.p = load float, ptr %5, align 4, !tbaa !34, !alias.scope !236
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.p, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %i.q = load float, ptr %6, align 4, !tbaa !34, !alias.scope !237
  %broadcast.splatinsert70 = insertelement <8 x float> poison, float %i.q, i64 0
  %broadcast.splat71 = shufflevector <8 x float> %broadcast.splatinsert70, <8 x float> poison, <8 x i32> zeroinitializer
  %i.r = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !236
  %broadcast.splatinsert72 = insertelement <8 x float> poison, float %i.r, i64 0
  %broadcast.splat73 = shufflevector <8 x float> %broadcast.splatinsert72, <8 x float> poison, <8 x i32> zeroinitializer
  %i.s = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !237
  %broadcast.splatinsert74 = insertelement <8 x float> poison, float %i.s, i64 0
  %broadcast.splat75 = shufflevector <8 x float> %broadcast.splatinsert74, <8 x float> poison, <8 x i32> zeroinitializer
  %i.t = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !236
  %broadcast.splatinsert76 = insertelement <8 x float> poison, float %i.t, i64 0
  %broadcast.splat77 = shufflevector <8 x float> %broadcast.splatinsert76, <8 x float> poison, <8 x i32> zeroinitializer
  %i.u = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !237
  %broadcast.splatinsert78 = insertelement <8 x float> poison, float %i.u, i64 0
  %broadcast.splat79 = shufflevector <8 x float> %broadcast.splatinsert78, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = shl i64 %index, 2                        ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.w, align 4, !tbaa !34 ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %wide.vec = load <32 x float>, ptr %i.x, align 4, !tbaa !34, !alias.scope !238 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec64 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec65 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A) ; 2 uses
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec64, splat (float 7.812500e-03) ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec65, splat (float 7.812500e-03) ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.v
  %wide.vec66 = load <32 x float>, ptr %i.ab, align 4, !tbaa !34, !alias.scope !239 ; 3 uses
  %strided.vec67 = shufflevector <32 x float> %wide.vec66, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec68 = shufflevector <32 x float> %wide.vec66, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec69 = shufflevector <32 x float> %wide.vec66, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec68, splat (float 7.812500e-03)
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec69, splat (float 7.812500e-03)
  %i.ae = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load ; 3 uses
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, splat (float f0x3C23D70A)
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %i.af, %strided.vec67
  %i.ah = fadd reassoc nsz arcp contract afn <8 x float> %i.ag, %i.ae
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.ah, %i.y
  %i.aj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ai, <8 x float> %broadcast.splat)
  %i.ak = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.aj, <8 x float> %broadcast.splat71) ; 2 uses
  %i.al = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.y, <8 x float> splat (float f0x3C23D70A)) ; 2 uses
  %i.am = fmul reassoc nsz arcp contract afn <8 x float> %i.z, %i.ae
  %i.an = fadd reassoc nsz arcp contract afn <8 x float> %i.ac, %i.z
  %i.ao = fmul reassoc nsz arcp contract afn <8 x float> %i.ak, %wide.load ; 2 uses
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %i.ao, %i.an
  %i.aq = fdiv reassoc nsz arcp contract afn <8 x float> %i.ap, %i.al
  %i.ar = fadd reassoc nsz arcp contract afn <8 x float> %i.aq, %i.am
  %i.as = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ar, <8 x float> %broadcast.splat73)
  %i.at = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.as, <8 x float> %broadcast.splat75)
  %i.au = fmul reassoc nsz arcp contract afn <8 x float> %i.aa, %i.ae
  %i.av = fadd reassoc nsz arcp contract afn <8 x float> %i.ad, %i.aa
  %i.aw = fmul reassoc nsz arcp contract afn <8 x float> %i.ao, %i.av
  %i.ax = fdiv reassoc nsz arcp contract afn <8 x float> %i.aw, %i.al
  %i.ay = fadd reassoc nsz arcp contract afn <8 x float> %i.ax, %i.au
  %i.az = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ay, <8 x float> %broadcast.splat77)
  %i.ba = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.az, <8 x float> %broadcast.splat79)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.v
  %i.bc = fmul reassoc nsz arcp contract afn <8 x float> %i.ba, splat (float 1.280000e+02)
  %i.bd = shufflevector <8 x float> %i.ak, <8 x float> %i.at, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.be = fmul reassoc nsz arcp contract afn <16 x float> %i.bd, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.bf = shufflevector <8 x float> %i.bc, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.be, <16 x float> %i.bf, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.bb, align 4, !tbaa !34, !alias.scope !240, !noalias !241
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %scalar.ph.preheader, label %vector.body, !llvm.loop !234

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.037 = phi i64 [ %i.cy, %scalar.ph ], [ %.037.ph, %scalar.ph.preheader ] ; 2 uses
  %.02836 = phi i64 [ %i.cz, %scalar.ph ], [ %.02836.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.037
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02836 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !34
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, f0x3C23D70A ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02836 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = load float, ptr %5, align 4, !tbaa !34
  %i.bq = load float, ptr %6, align 4, !tbaa !34
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bk, float f0x3C23D70A)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02836
  %i.bt = load float, ptr %i.bh, align 4, !tbaa !34 ; 4 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, f0x3C23D70A
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.bn
  %i.bw = load <2 x float>, ptr %i.bl, align 4, !tbaa !34
  %i.bx = fmul reassoc nsz arcp contract afn <2 x float> %i.bw, splat (float 7.812500e-03) ; 2 uses
  %i.by = load <2 x float>, ptr %i.bo, align 4, !tbaa !34
  %i.bz = fmul reassoc nsz arcp contract afn <2 x float> %i.by, splat (float 7.812500e-03)
  %i.ca = fadd reassoc nsz arcp contract afn <2 x float> %i.bz, %i.bx
  %i.cb = load <2 x float>, ptr %i.a, align 4, !tbaa !34
  %i.cc = load <2 x float>, ptr %i.b, align 4, !tbaa !34
  %i.cd = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bt ; 2 uses
  %reass.add = fadd reassoc nsz arcp contract afn float %i.bv, %i.cd
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %i.bk
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %reass.mul, float %i.bp)
  %i.cf = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ce, float %i.bq) ; 2 uses
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.bt
  %i.ch = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul reassoc nsz arcp contract afn <2 x float> %i.bx, %i.ci
  %i.ck = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul reassoc nsz arcp contract afn <2 x float> %i.cl, %i.ca
  %i.cn = insertelement <2 x float> poison, float %i.br, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fdiv reassoc nsz arcp contract afn <2 x float> %i.cm, %i.co
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, %i.cj
  %i.cr = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cq, <2 x float> %i.cb)
  %i.cs = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cr, <2 x float> %i.cc)
  %i.ct = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.cu = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cw = insertelement <4 x float> %i.cv, float %i.bt, i64 3
  %i.cx = fmul reassoc arcp contract afn <4 x float> %i.cw, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.cx, ptr %i.bs, align 4, !tbaa !34
  %i.cy = add nuw i64 %.037, 1                    ; 2 uses
  %i.cz = add i64 %.02836, 4
  %exitcond.not = icmp eq i64 %i.cy, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !235
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_average(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #11 {
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
  %.02628.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
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
  %bound049 = icmp ult ptr %2, %i.i
  %bound150 = icmp ult ptr %1, %i.f
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx = or i1 %found.conflict, %found.conflict51
  %bound052 = icmp ult ptr %2, %i.j
  %bound153 = icmp ult ptr %5, %i.f
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx55 = or i1 %conflict.rdx, %found.conflict54
  %bound056 = icmp ult ptr %2, %i.k
  %bound157 = icmp ult ptr %6, %i.f
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %conflict.rdx55, %found.conflict58
  br i1 %conflict.rdx59, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.l = and i64 %4, 7                            ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 8, i64 %i.l
  %n.vec = sub i64 %4, %i.n                       ; 2 uses
  %i.o = load float, ptr %5, align 4, !tbaa !34, !alias.scope !250
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.o, i64 0
  %i.p = load float, ptr %6, align 4, !tbaa !34, !alias.scope !251
  %broadcast.splatinsert66 = insertelement <8 x float> poison, float %i.p, i64 0
  %i.q = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !250
  %broadcast.splatinsert68 = insertelement <8 x float> poison, float %i.q, i64 0
  %i.r = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !251
  %broadcast.splatinsert70 = insertelement <8 x float> poison, float %i.r, i64 0
  %i.s = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !250
  %broadcast.splatinsert72 = insertelement <8 x float> poison, float %i.s, i64 0
  %broadcast.splat73 = shufflevector <8 x float> %broadcast.splatinsert72, <8 x float> poison, <8 x i32> zeroinitializer
  %i.t = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !251
  %broadcast.splatinsert74 = insertelement <8 x float> poison, float %i.t, i64 0
  %broadcast.splat75 = shufflevector <8 x float> %broadcast.splatinsert74, <8 x float> poison, <8 x i32> zeroinitializer
  %i.u = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert68, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.v = shufflevector <8 x float> %broadcast.splatinsert66, <8 x float> %broadcast.splatinsert70, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = shl i64 %index, 2                        ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.x, align 4, !tbaa !34 ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %wide.vec = load <32 x float>, ptr %i.y, align 4, !tbaa !34, !alias.scope !252 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec60 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec61 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A) ; 3 uses
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec60, splat (float 7.812500e-03) ; 3 uses
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec61, splat (float 7.812500e-03) ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.w
  %wide.vec62 = load <32 x float>, ptr %i.ac, align 4, !tbaa !34, !alias.scope !253 ; 3 uses
  %strided.vec63 = shufflevector <32 x float> %wide.vec62, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec64 = shufflevector <32 x float> %wide.vec62, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec65 = shufflevector <32 x float> %wide.vec62, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec63, splat (float f0x3C23D70A)
  %i.ae = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec64, splat (float 7.812500e-03)
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec65, splat (float 7.812500e-03)
  %i.ag = fadd reassoc nsz arcp contract afn <8 x float> %i.ad, %i.z
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %i.ag, splat (float 5.000000e-01)
  %i.ai = fsub reassoc nsz arcp contract afn <8 x float> %i.ah, %i.z
  %i.aj = fmul reassoc nsz arcp contract afn <8 x float> %i.ai, %wide.load
  %i.ak = fadd reassoc nsz arcp contract afn <8 x float> %i.aj, %i.z
  %i.al = fadd reassoc nsz arcp contract afn <8 x float> %i.ae, %i.aa
  %i.am = fmul reassoc nsz arcp contract afn <8 x float> %i.al, splat (float 5.000000e-01)
  %i.an = fsub reassoc nsz arcp contract afn <8 x float> %i.am, %i.aa
  %i.ao = fmul reassoc nsz arcp contract afn <8 x float> %i.an, %wide.load
  %i.ap = fadd reassoc nsz arcp contract afn <8 x float> %i.ao, %i.aa
  %i.aq = fadd reassoc nsz arcp contract afn <8 x float> %i.af, %i.ab
  %i.ar = fmul reassoc nsz arcp contract afn <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.as = fsub reassoc nsz arcp contract afn <8 x float> %i.ar, %i.ab
  %i.at = fmul reassoc nsz arcp contract afn <8 x float> %i.as, %wide.load
  %i.au = fadd reassoc nsz arcp contract afn <8 x float> %i.at, %i.ab
  %i.av = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.au, <8 x float> %broadcast.splat73)
  %i.aw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.av, <8 x float> %broadcast.splat75)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.w
  %i.ay = fmul reassoc nsz arcp contract afn <8 x float> %i.aw, splat (float 1.280000e+02)
  %i.az = shufflevector <8 x float> %i.ak, <8 x float> %i.ap, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ba = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.az, <16 x float> %i.u)
  %i.bb = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.ba, <16 x float> %i.v)
  %i.bc = fmul reassoc nsz arcp contract afn <16 x float> %i.bb, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.bd = shufflevector <8 x float> %i.ay, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bc, <16 x float> %i.bd, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ax, align 4, !tbaa !34, !alias.scope !254, !noalias !255
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %scalar.ph.preheader, label %vector.body, !llvm.loop !248

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02628 = phi i64 [ %i.cu, %scalar.ph ], [ %.02628.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bf = shl i64 %.02628, 2                      ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02628
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bf ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !34
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, f0x3C23D70A ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bf ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !34
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, f0x3C23D70A
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bn, %i.bj
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, 5.000000e-01
  %i.br = fsub reassoc nsz arcp contract afn float %i.bq, %i.bj
  %i.bs = load float, ptr %5, align 4, !tbaa !34
  %i.bt = load float, ptr %6, align 4, !tbaa !34
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bf
  %i.bv = load float, ptr %i.bg, align 4, !tbaa !34 ; 3 uses
  %i.bw = fmul reassoc nsz arcp contract afn float %i.br, %i.bv
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %i.bj
  %i.by = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bx, float %i.bs)
  %i.bz = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.by, float %i.bt)
  %i.ca = load <2 x float>, ptr %i.bk, align 4, !tbaa !34
  %i.cb = fmul reassoc nsz arcp contract afn <2 x float> %i.ca, splat (float 7.812500e-03) ; 3 uses
  %i.cc = load <2 x float>, ptr %i.bo, align 4, !tbaa !34
  %i.cd = fmul reassoc nsz arcp contract afn <2 x float> %i.cc, splat (float 7.812500e-03)
  %i.ce = fadd reassoc nsz arcp contract afn <2 x float> %i.cd, %i.cb
  %i.cf = fmul reassoc nsz arcp contract afn <2 x float> %i.ce, splat (float 5.000000e-01)
  %i.cg = fsub reassoc nsz arcp contract afn <2 x float> %i.cf, %i.cb
  %i.ch = load <2 x float>, ptr %i.a, align 4, !tbaa !34
  %i.ci = load <2 x float>, ptr %i.b, align 4, !tbaa !34
  %i.cj = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul reassoc nsz arcp contract afn <2 x float> %i.cg, %i.ck
  %i.cm = fadd reassoc nsz arcp contract afn <2 x float> %i.cl, %i.cb
  %i.cn = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cm, <2 x float> %i.ch)
  %i.co = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cn, <2 x float> %i.ci)
  %i.cp = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.cq = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cs = insertelement <4 x float> %i.cr, float %i.bv, i64 3
  %i.ct = fmul reassoc arcp contract afn <4 x float> %i.cs, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.ct, ptr %i.bu, align 4, !tbaa !34
  %i.cu = add nuw i64 %.02628, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !249
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_add(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #11 {
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
  %.02628.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
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
  %bound049 = icmp ult ptr %2, %i.i
  %bound150 = icmp ult ptr %1, %i.f
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx = or i1 %found.conflict, %found.conflict51
  %bound052 = icmp ult ptr %2, %i.j
  %bound153 = icmp ult ptr %5, %i.f
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx55 = or i1 %conflict.rdx, %found.conflict54
  %bound056 = icmp ult ptr %2, %i.k
  %bound157 = icmp ult ptr %6, %i.f
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %conflict.rdx55, %found.conflict58
  br i1 %conflict.rdx59, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.l = and i64 %4, 7                            ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 8, i64 %i.l
  %n.vec = sub i64 %4, %i.n                       ; 2 uses
  %i.o = load float, ptr %5, align 4, !tbaa !34, !alias.scope !264
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.o, i64 0
  %i.p = load float, ptr %6, align 4, !tbaa !34, !alias.scope !265
  %broadcast.splatinsert66 = insertelement <8 x float> poison, float %i.p, i64 0
  %i.q = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !264
  %broadcast.splatinsert68 = insertelement <8 x float> poison, float %i.q, i64 0
  %i.r = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !265
  %broadcast.splatinsert70 = insertelement <8 x float> poison, float %i.r, i64 0
  %i.s = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !264
  %broadcast.splatinsert72 = insertelement <8 x float> poison, float %i.s, i64 0
  %broadcast.splat73 = shufflevector <8 x float> %broadcast.splatinsert72, <8 x float> poison, <8 x i32> zeroinitializer
  %i.t = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !265
  %broadcast.splatinsert74 = insertelement <8 x float> poison, float %i.t, i64 0
  %broadcast.splat75 = shufflevector <8 x float> %broadcast.splatinsert74, <8 x float> poison, <8 x i32> zeroinitializer
  %i.u = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert68, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.v = shufflevector <8 x float> %broadcast.splatinsert66, <8 x float> %broadcast.splatinsert70, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = shl i64 %index, 2                        ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.x, align 4, !tbaa !34 ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %wide.vec = load <32 x float>, ptr %i.y, align 4, !tbaa !34, !alias.scope !266 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec60 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec61 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A)
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec60, splat (float 7.812500e-03)
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec61, splat (float 7.812500e-03)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.w
  %wide.vec62 = load <32 x float>, ptr %i.ac, align 4, !tbaa !34, !alias.scope !267 ; 3 uses
  %strided.vec63 = shufflevector <32 x float> %wide.vec62, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec64 = shufflevector <32 x float> %wide.vec62, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec65 = shufflevector <32 x float> %wide.vec62, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec63, splat (float f0x3C23D70A)
  %i.ae = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec64, splat (float 7.812500e-03)
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec65, splat (float 7.812500e-03)
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %i.ad, %wide.load
  %i.ah = fadd reassoc nsz arcp contract afn <8 x float> %i.ag, %i.z
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.ae, %wide.load
  %i.aj = fadd reassoc nsz arcp contract afn <8 x float> %i.ai, %i.aa
  %i.ak = fmul reassoc nsz arcp contract afn <8 x float> %i.af, %wide.load
  %i.al = fadd reassoc nsz arcp contract afn <8 x float> %i.ak, %i.ab
  %i.am = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.al, <8 x float> %broadcast.splat73)
  %i.an = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.am, <8 x float> %broadcast.splat75)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.w
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %i.an, splat (float 1.280000e+02)
  %i.aq = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ar = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.aq, <16 x float> %i.u)
  %i.as = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.ar, <16 x float> %i.v)
  %i.at = fmul reassoc nsz arcp contract afn <16 x float> %i.as, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.au = shufflevector <8 x float> %i.ap, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.at, <16 x float> %i.au, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ao, align 4, !tbaa !34, !alias.scope !268, !noalias !269
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %scalar.ph.preheader, label %vector.body, !llvm.loop !262

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02628 = phi i64 [ %i.cf, %scalar.ph ], [ %.02628.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aw = shl i64 %.02628, 2                      ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02628
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !34
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, f0x3C23D70A
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !34
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, f0x3C23D70A
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bg = load float, ptr %5, align 4, !tbaa !34
  %i.bh = load float, ptr %6, align 4, !tbaa !34
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aw
  %i.bj = load float, ptr %i.ax, align 4, !tbaa !34 ; 3 uses
  %i.bk = fmul reassoc nsz arcp contract afn float %i.be, %i.bj
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %i.ba
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bl, float %i.bg)
  %i.bn = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bm, float %i.bh)
  %i.bo = load <2 x float>, ptr %i.bb, align 4, !tbaa !34
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bo, splat (float 7.812500e-03)
  %i.bq = load <2 x float>, ptr %i.bf, align 4, !tbaa !34
  %i.br = load <2 x float>, ptr %i.a, align 4, !tbaa !34
  %i.bs = load <2 x float>, ptr %i.b, align 4, !tbaa !34
  %i.bt = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, <float 7.812500e-03, float poison>
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul reassoc nsz arcp contract afn <2 x float> %i.bv, %i.bq
  %i.bx = fadd reassoc nsz arcp contract afn <2 x float> %i.bw, %i.bp
  %i.by = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bx, <2 x float> %i.br)
  %i.bz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.by, <2 x float> %i.bs)
  %i.ca = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.cb = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> %i.cb, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float %i.bj, i64 3
  %i.ce = fmul reassoc arcp contract afn <4 x float> %i.cd, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.ce, ptr %i.bi, align 4, !tbaa !34
  %i.cf = add nuw i64 %.02628, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cf, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !263
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_subtract(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #11 {
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
  %.03032.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
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
  %bound053 = icmp ult ptr %2, %i.i
  %bound154 = icmp ult ptr %1, %i.f
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx = or i1 %found.conflict, %found.conflict55
  %bound056 = icmp ult ptr %2, %i.j
  %bound157 = icmp ult ptr %5, %i.f
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %conflict.rdx, %found.conflict58
  %bound060 = icmp ult ptr %2, %i.k
  %bound161 = icmp ult ptr %6, %i.f
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %conflict.rdx59, %found.conflict62
  br i1 %conflict.rdx63, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.l = and i64 %4, 7                            ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 8, i64 %i.l
  %n.vec = sub i64 %4, %i.n                       ; 2 uses
  %i.o = load float, ptr %5, align 4, !tbaa !34, !alias.scope !278
  %broadcast.splatinsert64 = insertelement <8 x float> poison, float %i.o, i64 0
  %broadcast.splat65 = shufflevector <8 x float> %broadcast.splatinsert64, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.p = load float, ptr %6, align 4, !tbaa !34, !alias.scope !279
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.p, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.q = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %broadcast.splat65
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.q)
  %i.s = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !278
  %broadcast.splatinsert68 = insertelement <8 x float> poison, float %i.s, i64 0
  %broadcast.splat69 = shufflevector <8 x float> %broadcast.splatinsert68, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.t = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !279
  %broadcast.splatinsert66 = insertelement <8 x float> poison, float %i.t, i64 0
  %broadcast.splat67 = shufflevector <8 x float> %broadcast.splatinsert66, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.u = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat67, %broadcast.splat69
  %i.v = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.u)
  %i.w = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !278
  %broadcast.splatinsert72 = insertelement <8 x float> poison, float %i.w, i64 0
  %broadcast.splat73 = shufflevector <8 x float> %broadcast.splatinsert72, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.x = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !279
  %broadcast.splatinsert70 = insertelement <8 x float> poison, float %i.x, i64 0
  %broadcast.splat71 = shufflevector <8 x float> %broadcast.splatinsert70, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.y = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat71, %broadcast.splat73
  %i.z = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.y)
  %i.aa = shufflevector <8 x float> %broadcast.splat65, <8 x float> %broadcast.splat69, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ab = shufflevector <8 x float> %broadcast.splat, <8 x float> %broadcast.splat67, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = shl i64 %index, 2                       ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.ad, align 4, !tbaa !34 ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  %wide.vec = load <32 x float>, ptr %i.ae, align 4, !tbaa !34, !alias.scope !280 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec74 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec75 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A)
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec74, splat (float 7.812500e-03)
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec75, splat (float 7.812500e-03)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %wide.vec76 = load <32 x float>, ptr %i.ai, align 4, !tbaa !34, !alias.scope !281 ; 3 uses
  %strided.vec77 = shufflevector <32 x float> %wide.vec76, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec78 = shufflevector <32 x float> %wide.vec76, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec79 = shufflevector <32 x float> %wide.vec76, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.aj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec77, splat (float f0x3C23D70A)
  %i.ak = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec78, splat (float 7.812500e-03)
  %i.al = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec79, splat (float 7.812500e-03)
  %i.am = fsub reassoc nsz arcp contract afn <8 x float> %i.aj, %i.r
  %i.an = fmul reassoc nsz arcp contract afn <8 x float> %i.am, %wide.load
  %i.ao = fadd reassoc nsz arcp contract afn <8 x float> %i.an, %i.af
  %i.ap = fsub reassoc nsz arcp contract afn <8 x float> %i.ak, %i.v
  %i.aq = fmul reassoc nsz arcp contract afn <8 x float> %i.ap, %wide.load
  %i.ar = fadd reassoc nsz arcp contract afn <8 x float> %i.aq, %i.ag
  %i.as = fsub reassoc nsz arcp contract afn <8 x float> %i.al, %i.z
  %i.at = fmul reassoc nsz arcp contract afn <8 x float> %i.as, %wide.load
  %i.au = fadd reassoc nsz arcp contract afn <8 x float> %i.at, %i.ah
  %i.av = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.au, <8 x float> %broadcast.splat73)
  %i.aw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.av, <8 x float> %broadcast.splat71)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ac
  %i.ay = fmul reassoc nsz arcp contract afn <8 x float> %i.aw, splat (float 1.280000e+02)
  %i.az = shufflevector <8 x float> %i.ao, <8 x float> %i.ar, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ba = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.az, <16 x float> %i.aa)
  %i.bb = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.ba, <16 x float> %i.ab)
  %i.bc = fmul reassoc nsz arcp contract afn <16 x float> %i.bb, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.bd = shufflevector <8 x float> %i.ay, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bc, <16 x float> %i.bd, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ax, align 4, !tbaa !34, !alias.scope !282, !noalias !283
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %scalar.ph.preheader, label %vector.body, !llvm.loop !276

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03032 = phi i64 [ %i.cu, %scalar.ph ], [ %.03032.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bf = shl i64 %.03032, 2                      ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03032
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bf ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !34
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, f0x3C23D70A
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bf ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !34
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, f0x3C23D70A
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bp = load float, ptr %5, align 4, !tbaa !34  ; 2 uses
  %i.bq = load float, ptr %6, align 4, !tbaa !34  ; 2 uses
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, %i.bp
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.br)
  %i.bt = fsub reassoc nsz arcp contract afn float %i.bn, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bf
  %i.bv = load float, ptr %i.bg, align 4, !tbaa !34 ; 3 uses
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bt, %i.bv
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %i.bj
  %i.by = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bx, float %i.bp)
  %i.bz = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.by, float %i.bq)
  %i.ca = load <2 x float>, ptr %i.bk, align 4, !tbaa !34
  %i.cb = fmul reassoc nsz arcp contract afn <2 x float> %i.ca, splat (float 7.812500e-03)
  %i.cc = load <2 x float>, ptr %i.bo, align 4, !tbaa !34
  %i.cd = fmul reassoc nsz arcp contract afn <2 x float> %i.cc, splat (float 7.812500e-03)
  %i.ce = load <2 x float>, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  %i.cf = load <2 x float>, ptr %i.b, align 4, !tbaa !34 ; 2 uses
  %i.cg = fadd reassoc nsz arcp contract afn <2 x float> %i.cf, %i.ce
  %i.ch = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cg)
  %i.ci = fsub reassoc nsz arcp contract afn <2 x float> %i.cd, %i.ch
  %i.cj = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul reassoc nsz arcp contract afn <2 x float> %i.ci, %i.ck
  %i.cm = fadd reassoc nsz arcp contract afn <2 x float> %i.cl, %i.cb
  %i.cn = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cm, <2 x float> %i.ce)
  %i.co = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cn, <2 x float> %i.cf)
  %i.cp = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.cq = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cs = insertelement <4 x float> %i.cr, float %i.bv, i64 3
  %i.ct = fmul reassoc arcp contract afn <4 x float> %i.cs, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.ct, ptr %i.bu, align 4, !tbaa !34
  %i.cu = add nuw i64 %.03032, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !277
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_difference(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %.041.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %.03740.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.o, %vector.body ]
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
  %bound062 = icmp ult ptr %2, %i.i
  %bound163 = icmp ult ptr %1, %i.f
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx = or i1 %found.conflict, %found.conflict64
  %bound065 = icmp ult ptr %2, %i.j
  %bound166 = icmp ult ptr %6, %i.f
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx68 = or i1 %conflict.rdx, %found.conflict67
  %bound069 = icmp ult ptr %2, %i.k
  %bound170 = icmp ult ptr %5, %i.f
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx72 = or i1 %conflict.rdx68, %found.conflict71
  br i1 %conflict.rdx72, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.l = and i64 %4, 7                            ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 8, i64 %i.l
  %n.vec = sub i64 %4, %i.n                       ; 3 uses
  %i.o = shl i64 %n.vec, 2
  %i.p = load float, ptr %6, align 4, !tbaa !34, !alias.scope !292
  %i.q = load float, ptr %5, align 4, !tbaa !34, !alias.scope !293
  %.scalar = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.q) ; 2 uses
  %i.r = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.s = shufflevector <8 x float> %i.r, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.scalar90 = fadd reassoc nsz arcp contract afn float %.scalar, %i.p
  %i.t = insertelement <8 x float> poison, float %.scalar90, i64 0
  %i.u = shufflevector <8 x float> %i.t, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.v = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !292
  %i.w = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !293
  %.scalar91 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.w) ; 2 uses
  %i.x = insertelement <8 x float> poison, float %.scalar91, i64 0
  %i.y = shufflevector <8 x float> %i.x, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.scalar92 = fadd reassoc nsz arcp contract afn float %.scalar91, %i.v
  %i.z = insertelement <8 x float> poison, float %.scalar92, i64 0
  %i.aa = shufflevector <8 x float> %i.z, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ab = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !292
  %i.ac = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !293
  %.scalar93 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ac) ; 2 uses
  %i.ad = insertelement <8 x float> poison, float %.scalar93, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.scalar94 = fadd reassoc nsz arcp contract afn float %.scalar93, %i.ab
  %i.af = insertelement <8 x float> poison, float %.scalar94, i64 0
  %i.ag = shufflevector <8 x float> %i.af, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = shl i64 %index, 2                       ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.ai, align 4, !tbaa !34 ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %wide.vec = load <32 x float>, ptr %i.aj, align 4, !tbaa !34, !alias.scope !294 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec83 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec84 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ak = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A)
  %i.al = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec83, splat (float 7.812500e-03)
  %i.am = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec84, splat (float 7.812500e-03)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah
  %wide.vec85 = load <32 x float>, ptr %i.an, align 4, !tbaa !34, !alias.scope !295 ; 3 uses
  %strided.vec86 = shufflevector <32 x float> %wide.vec85, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec87 = shufflevector <32 x float> %wide.vec85, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec88 = shufflevector <32 x float> %wide.vec85, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ao = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec86, splat (float f0x3C23D70A)
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec87, splat (float 7.812500e-03)
  %i.aq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec88, splat (float 7.812500e-03)
  %i.ar = fadd reassoc nsz arcp contract afn <8 x float> %i.ak, %i.s
  %i.as = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ar, <8 x float> zeroinitializer)
  %i.at = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.as, <8 x float> %i.u) ; 3 uses
  %i.au = fadd reassoc nsz arcp contract afn <8 x float> %i.ao, %i.s
  %i.av = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.au, <8 x float> zeroinitializer)
  %i.aw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.av, <8 x float> %i.u)
  %i.ax = fsub reassoc nsz arcp contract afn <8 x float> %i.at, %i.aw
  %i.ay = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ax)
  %i.az = fsub reassoc nsz arcp contract afn <8 x float> %i.ay, %i.at
  %i.ba = fmul reassoc nsz arcp contract afn <8 x float> %i.az, %wide.load
  %i.bb = fadd reassoc nsz arcp contract afn <8 x float> %i.ba, %i.at
  %i.bc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bb, <8 x float> zeroinitializer)
  %i.bd = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bc, <8 x float> %i.u)
  %i.be = fsub reassoc nsz arcp contract afn <8 x float> %i.bd, %i.s
  %i.bf = fadd reassoc nsz arcp contract afn <8 x float> %i.al, %i.y
  %i.bg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bf, <8 x float> zeroinitializer)
  %i.bh = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bg, <8 x float> %i.aa) ; 3 uses
  %i.bi = fadd reassoc nsz arcp contract afn <8 x float> %i.ap, %i.y
  %i.bj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bi, <8 x float> zeroinitializer)
  %i.bk = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bj, <8 x float> %i.aa)
  %i.bl = fsub reassoc nsz arcp contract afn <8 x float> %i.bh, %i.bk
  %i.bm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bl)
  %i.bn = fsub reassoc nsz arcp contract afn <8 x float> %i.bm, %i.bh
  %i.bo = fmul reassoc nsz arcp contract afn <8 x float> %i.bn, %wide.load
  %i.bp = fadd reassoc nsz arcp contract afn <8 x float> %i.bo, %i.bh
  %i.bq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bp, <8 x float> zeroinitializer)
  %i.br = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bq, <8 x float> %i.aa)
  %i.bs = fsub reassoc nsz arcp contract afn <8 x float> %i.br, %i.y
  %i.bt = fadd reassoc nsz arcp contract afn <8 x float> %i.am, %i.ae
  %i.bu = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bt, <8 x float> zeroinitializer)
  %i.bv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bu, <8 x float> %i.ag) ; 3 uses
  %i.bw = fadd reassoc nsz arcp contract afn <8 x float> %i.aq, %i.ae
  %i.bx = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bw, <8 x float> zeroinitializer)
  %i.by = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bx, <8 x float> %i.ag)
  %i.bz = fsub reassoc nsz arcp contract afn <8 x float> %i.bv, %i.by
  %i.ca = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bz)
  %i.cb = fsub reassoc nsz arcp contract afn <8 x float> %i.ca, %i.bv
  %i.cc = fmul reassoc nsz arcp contract afn <8 x float> %i.cb, %wide.load
  %i.cd = fadd reassoc nsz arcp contract afn <8 x float> %i.cc, %i.bv
  %i.ce = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cd, <8 x float> zeroinitializer)
  %i.cf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ce, <8 x float> %i.ag)
  %i.cg = fsub reassoc nsz arcp contract afn <8 x float> %i.cf, %i.ae
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ah
  %i.ci = fmul reassoc nsz arcp contract afn <8 x float> %i.cg, splat (float 1.280000e+02)
  %i.cj = shufflevector <8 x float> %i.be, <8 x float> %i.bs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ck = fmul reassoc nsz arcp contract afn <16 x float> %i.cj, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.cl = shufflevector <8 x float> %i.ci, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ck, <16 x float> %i.cl, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ch, align 4, !tbaa !34, !alias.scope !296, !noalias !297
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %scalar.ph.preheader, label %vector.body, !llvm.loop !290

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
end_hunk_0
begin_hunk_1_@_blend_hue:bb.a
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
  %i.o = load float, ptr %5, align 4, !tbaa !34, !alias.scope !432
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.o, i64 0
  %i.p = load float, ptr %6, align 4, !tbaa !34, !alias.scope !433
  %broadcast.splatinsert65 = insertelement <8 x float> poison, float %i.p, i64 0
  %i.q = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !432
  %broadcast.splatinsert67 = insertelement <8 x float> poison, float %i.q, i64 0
  %i.r = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !433
  %broadcast.splatinsert69 = insertelement <8 x float> poison, float %i.r, i64 0
  %i.s = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !432
  %broadcast.splatinsert71 = insertelement <8 x float> poison, float %i.s, i64 0
  %broadcast.splat72 = shufflevector <8 x float> %broadcast.splatinsert71, <8 x float> poison, <8 x i32> zeroinitializer
  %i.t = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !433
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
  %wide.vec = load <32 x float>, ptr %i.y, align 4, !tbaa !34, !alias.scope !434 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec59 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec60 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A) ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec59, splat (float 7.812500e-03) ; 2 uses
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec60, splat (float 7.812500e-03) ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.w
  %wide.vec61 = load <32 x float>, ptr %i.ac, align 4, !tbaa !34, !alias.scope !435 ; 3 uses
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
  store <32 x float> %interleaved.vec, ptr %i.ar, align 4, !tbaa !34, !alias.scope !436, !noalias !437
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %scalar.ph.preheader, label %vector.body, !llvm.loop !430

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
  %i.cj = fmul reassoc arcp contract afn <4 x float> %i.ci, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.cj, ptr %i.bm, align 4, !tbaa !34
  %i.ck = add nuw i64 %.02527, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ck, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !431
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
end_hunk_1
begin_hunk_2_@_blend_Lab_b:bb.a
  %i.cd = load <2 x float>, ptr %i.br, align 4, !tbaa !34
  store <2 x float> %i.cd, ptr %i.cc, align 4, !tbaa !34
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cb, 1.280000e+02
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store float %i.ce, ptr %i.cf, align 4, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store float %i.bq, ptr %i.cg, align 4, !tbaa !34
  %i.ch = add nuw i64 %.021, 2                    ; 2 uses
  %i.ci = add i64 %.01620, 8
  %exitcond.not.1 = icmp eq i64 %i.ch, %4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !463
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_Lab_color(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader41, label %vector.memcheck

.lr.ph.preheader41:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.025.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ] ; 5 uses
  %.01824.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ah, %vector.body ] ; 5 uses
  %i.a = sub i64 %4, %.025.ph
  %.neg = add i64 %.025.ph, 1
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader41
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.025.ph
  %i.c = load float, ptr %i.b, align 4, !tbaa !34 ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01824.ph ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01824.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.c
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01824.ph ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load <2 x float>, ptr %i.f, align 4, !tbaa !34
  %i.m = load <2 x float>, ptr %i.h, align 4, !tbaa !34
  %i.n = insertelement <2 x float> poison, float %i.i, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul reassoc nsz arcp contract afn <2 x float> %i.l, %i.o
  %i.q = insertelement <2 x float> poison, float %i.c, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul reassoc nsz arcp contract afn <2 x float> %i.m, %i.r
  %i.t = fadd reassoc nsz arcp contract afn <2 x float> %i.s, %i.p
  store float %i.e, ptr %i.j, align 4, !tbaa !34
  store <2 x float> %i.t, ptr %i.k, align 4, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store float %i.c, ptr %i.u, align 4, !tbaa !34
  %i.v = add nuw i64 %.025.ph, 1
  %i.w = add i64 %.01824.ph, 4
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader41
  %.025.unr = phi i64 [ %.025.ph, %.lr.ph.preheader41 ], [ %i.v, %.lr.ph.prol ]
  %.01824.unr = phi i64 [ %.01824.ph, %.lr.ph.preheader41 ], [ %i.w, %.lr.ph.prol ]
  %i.x = icmp eq i64 %4, %.neg
  br i1 %i.x, label %._crit_edge, label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.y = shl i64 %4, 4                            ; 2 uses
  %i.z = getelementptr i8, ptr %2, i64 %i.y       ; 2 uses
  %i.aa = add i64 %i.y, -4                        ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa
  %i.ac = getelementptr i8, ptr %1, i64 4
  %i.ad = getelementptr i8, ptr %1, i64 %i.aa
  %bound0 = icmp ult ptr %2, %i.ab
  %bound1 = icmp ult ptr %0, %i.z
  %found.conflict = and i1 %bound0, %bound1
  %bound032 = icmp ult ptr %2, %i.ad
  %bound133 = icmp ult ptr %i.ac, %i.z
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %.lr.ph.preheader41, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ae = and i64 %4, 3                           ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = select i1 %i.af, i64 4, i64 %i.ae
  %n.vec = sub i64 %4, %i.ag                      ; 3 uses
  %i.ah = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = shl i64 %index, 2                       ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x float>, ptr %i.aj, align 4, !tbaa !34 ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %wide.vec = load <16 x float>, ptr %i.ak, align 4, !tbaa !34, !alias.scope !474 ; 3 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec35 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec36 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %wide.vec37 = load <16 x float>, ptr %i.am, align 4, !tbaa !34, !alias.scope !475 ; 2 uses
  %strided.vec38 = shufflevector <16 x float> %wide.vec37, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec39 = shufflevector <16 x float> %wide.vec37, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.an = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %wide.load ; 2 uses
  %i.ao = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec35, %i.an
  %i.ap = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec38, %wide.load
  %i.aq = fadd reassoc nsz arcp contract afn <4 x float> %i.ap, %i.ao
  %i.ar = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec36, %i.an
  %i.as = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec39, %wide.load
  %i.at = fadd reassoc nsz arcp contract afn <4 x float> %i.as, %i.ar
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ai
  %i.av = shufflevector <4 x float> %strided.vec, <4 x float> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aw = shufflevector <4 x float> %i.at, <4 x float> %wide.load, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.av, <8 x float> %i.aw, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.au, align 4, !tbaa !34, !alias.scope !476, !noalias !477
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %.lr.ph.preheader41, label %vector.body, !llvm.loop !472

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.025 = phi i64 [ %i.co, %.lr.ph ], [ %.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01824 = phi i64 [ %i.cp, %.lr.ph ], [ %.01824.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.025
  %i.az = load float, ptr %i.ay, align 4, !tbaa !34 ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01824 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01824
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.az
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01824 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load <2 x float>, ptr %i.bc, align 4, !tbaa !34
  %i.bj = load <2 x float>, ptr %i.be, align 4, !tbaa !34
  %i.bk = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bl
  %i.bn = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bj, %i.bo
  %i.bq = fadd reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bm
  store float %i.bb, ptr %i.bg, align 4, !tbaa !34
  store <2 x float> %i.bq, ptr %i.bh, align 4, !tbaa !34
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store float %i.az, ptr %i.br, align 4, !tbaa !34
  %i.bs = add i64 %.01824, 4                      ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.025
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !34 ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bs ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !34
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bs
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bv
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bs ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load <2 x float>, ptr %i.by, align 4, !tbaa !34
  %i.cf = load <2 x float>, ptr %i.ca, align 4, !tbaa !34
  %i.cg = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul reassoc nsz arcp contract afn <2 x float> %i.ce, %i.ch
  %i.cj = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul reassoc nsz arcp contract afn <2 x float> %i.cf, %i.ck
  %i.cm = fadd reassoc nsz arcp contract afn <2 x float> %i.cl, %i.ci
  store float %i.bx, ptr %i.cc, align 4, !tbaa !34
  store <2 x float> %i.cm, ptr %i.cd, align 4, !tbaa !34
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store float %i.bv, ptr %i.cn, align 4, !tbaa !34
  %i.co = add nuw i64 %.025, 2                    ; 2 uses
  %i.cp = add i64 %.01824, 8
  %exitcond.not.1 = icmp eq i64 %i.co, %4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !473
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_normal_unbounded(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.memcheck

.lr.ph.preheader43:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02123.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ] ; 6 uses
  %i.a = sub i64 %4, %.02123.ph
  %.neg = add i64 %.02123.ph, 1
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader43
  %i.b = shl i64 %.02123.ph, 2                    ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02123.ph
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !34
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !34
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.b
  %i.k = load float, ptr %i.c, align 4, !tbaa !34
  %i.l = load <2 x float>, ptr %i.d, align 4, !tbaa !34
  %i.m = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.f, i64 2
  %i.n = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.o = shufflevector <4 x float> %i.n, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.p = fmul reassoc nsz arcp contract afn <4 x float> %i.o, <float f0x3C23D70A, float 7.812500e-03, float 7.812500e-03, float 0.000000e+00>
  %i.q = fmul reassoc arcp contract afn <4 x float> %i.o, <float f0x3C23D70A, float 7.812500e-03, float 7.812500e-03, float -0.000000e+00>
  %i.r = load <2 x float>, ptr %i.g, align 4, !tbaa !34
  %i.s = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.i, i64 2
  %i.t = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.v = fmul reassoc nsz arcp contract afn <4 x float> %i.u, <float f0x3C23D70A, float 7.812500e-03, float 7.812500e-03, float 1.000000e+00>
  %i.w = fsub reassoc nsz arcp contract afn <4 x float> %i.v, %i.p
  %i.x = insertelement <4 x float> poison, float %i.k, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = fmul reassoc arcp contract afn <4 x float> %i.y, %i.w
  %i.aa = fadd reassoc arcp contract afn <4 x float> %i.z, %i.q
  %i.ab = fmul reassoc arcp contract afn <4 x float> %i.aa, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.ab, ptr %i.j, align 4, !tbaa !34
  %i.ac = add nuw i64 %.02123.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader43
  %.02123.unr = phi i64 [ %.02123.ph, %.lr.ph.preheader43 ], [ %i.ac, %.lr.ph.prol ]
  %i.ad = icmp eq i64 %4, %.neg
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ae = shl i64 %4, 4                           ; 2 uses
  %i.af = getelementptr i8, ptr %2, i64 %i.ae     ; 2 uses
  %i.ag = add i64 %i.ae, -4                       ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 %i.ag
  %i.ai = getelementptr i8, ptr %1, i64 %i.ag
  %bound0 = icmp ult ptr %2, %i.ah
  %bound1 = icmp ult ptr %0, %i.af
  %found.conflict = and i1 %bound0, %bound1
  %bound034 = icmp ult ptr %2, %i.ai
  %bound135 = icmp ult ptr %1, %i.af
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  br i1 %conflict.rdx, label %.lr.ph.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aj = and i64 %4, 7                           ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 8, i64 %i.aj
  %n.vec = sub i64 %4, %i.al                      ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 2                       ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.an, align 4, !tbaa !34 ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.am
  %wide.vec = load <32 x float>, ptr %i.ao, align 4, !tbaa !34, !alias.scope !484 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec37 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec38 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A) ; 2 uses
  %i.aq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec37, splat (float 7.812500e-03) ; 2 uses
  %i.ar = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec38, splat (float 7.812500e-03) ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am
  %wide.vec39 = load <32 x float>, ptr %i.as, align 4, !tbaa !34, !alias.scope !485 ; 3 uses
  %strided.vec40 = shufflevector <32 x float> %wide.vec39, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec41 = shufflevector <32 x float> %wide.vec39, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec42 = shufflevector <32 x float> %wide.vec39, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.at = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec40, splat (float f0x3C23D70A)
  %i.au = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec41, splat (float 7.812500e-03)
  %i.av = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec42, splat (float 7.812500e-03)
  %i.aw = fsub reassoc nsz arcp contract afn <8 x float> %i.at, %i.ap
  %i.ax = fmul reassoc nsz arcp contract afn <8 x float> %i.aw, %wide.load
  %i.ay = fadd reassoc nsz arcp contract afn <8 x float> %i.ax, %i.ap
  %i.az = fsub reassoc nsz arcp contract afn <8 x float> %i.au, %i.aq
  %i.ba = fmul reassoc nsz arcp contract afn <8 x float> %i.az, %wide.load
  %i.bb = fadd reassoc nsz arcp contract afn <8 x float> %i.ba, %i.aq
  %i.bc = fsub reassoc nsz arcp contract afn <8 x float> %i.av, %i.ar
  %i.bd = fmul reassoc nsz arcp contract afn <8 x float> %i.bc, %wide.load
  %i.be = fadd reassoc nsz arcp contract afn <8 x float> %i.bd, %i.ar
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.am
  %i.bg = fmul reassoc nsz arcp contract afn <8 x float> %i.be, splat (float 1.280000e+02)
  %i.bh = shufflevector <8 x float> %i.ay, <8 x float> %i.bb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bi = fmul reassoc nsz arcp contract afn <16 x float> %i.bh, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.bj = shufflevector <8 x float> %i.bg, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bi, <16 x float> %i.bj, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.bf, align 4, !tbaa !34, !alias.scope !486, !noalias !487
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %.lr.ph.preheader43, label %vector.body, !llvm.loop !482

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02123 = phi i64 [ %i.do, %.lr.ph ], [ %.02123.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bl = shl i64 %.02123, 2                      ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02123
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bl ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !34
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bl ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load float, ptr %i.br, align 4, !tbaa !34
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bl
  %i.bu = load float, ptr %i.bm, align 4, !tbaa !34
  %i.bv = load <2 x float>, ptr %i.bn, align 4, !tbaa !34
  %i.bw = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bp, i64 2
  %i.bx = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.bz = fmul reassoc nsz arcp contract afn <4 x float> %i.by, <float f0x3C23D70A, float 7.812500e-03, float 7.812500e-03, float 0.000000e+00>
  %i.ca = fmul reassoc arcp contract afn <4 x float> %i.by, <float f0x3C23D70A, float 7.812500e-03, float 7.812500e-03, float -0.000000e+00>
  %i.cb = load <2 x float>, ptr %i.bq, align 4, !tbaa !34
  %i.cc = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bs, i64 2
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cf = fmul reassoc nsz arcp contract afn <4 x float> %i.ce, <float f0x3C23D70A, float 7.812500e-03, float 7.812500e-03, float 1.000000e+00>
  %i.cg = fsub reassoc nsz arcp contract afn <4 x float> %i.cf, %i.bz
  %i.ch = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cj = fmul reassoc arcp contract afn <4 x float> %i.ci, %i.cg
  %i.ck = fadd reassoc arcp contract afn <4 x float> %i.cj, %i.ca
  %i.cl = fmul reassoc arcp contract afn <4 x float> %i.ck, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.cl, ptr %i.bt, align 4, !tbaa !34
  %i.cm = add nuw i64 %.02123, 1                  ; 2 uses
  %i.cn = shl i64 %i.cm, 2                        ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cm
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cn ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !34
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cn ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !34
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cn
  %i.cw = load float, ptr %i.co, align 4, !tbaa !34
  %i.cx = load <2 x float>, ptr %i.cp, align 4, !tbaa !34
  %i.cy = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.cr, i64 2
  %i.cz = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> %i.cy, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.db = fmul reassoc nsz arcp contract afn <4 x float> %i.da, <float f0x3C23D70A, float 7.812500e-03, float 7.812500e-03, float 0.000000e+00>
  %i.dc = fmul reassoc arcp contract afn <4 x float> %i.da, <float f0x3C23D70A, float 7.812500e-03, float 7.812500e-03, float -0.000000e+00>
  %i.dd = load <2 x float>, ptr %i.cs, align 4, !tbaa !34
  %i.de = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.cu, i64 2
  %i.df = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> %i.de, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dh = fmul reassoc nsz arcp contract afn <4 x float> %i.dg, <float f0x3C23D70A, float 7.812500e-03, float 7.812500e-03, float 1.000000e+00>
  %i.di = fsub reassoc nsz arcp contract afn <4 x float> %i.dh, %i.db
  %i.dj = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = fmul reassoc arcp contract afn <4 x float> %i.dk, %i.di
  %i.dm = fadd reassoc arcp contract afn <4 x float> %i.dl, %i.dc
  %i.dn = fmul reassoc arcp contract afn <4 x float> %i.dm, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.dn, ptr %i.cv, align 4, !tbaa !34
  %i.do = add nuw i64 %.02123, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.do, %4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !483
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.atan2.v8f32(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.minnum.v16f32(<16 x float>, <16 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.maxnum.v16f32(<16 x float>, <16 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!13 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!14 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!15 = !{!"dt_dev_histogram_collection_params_t", !14, i64 0, !8, i64 8}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 20}
!19 = !{!"float", !7, i64 0}
!20 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !19, i64 16}
!21 = !{!"short", !7, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 2}
!23 = !{!"", !8, i64 0, !7, i64 16}
!24 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !22, i64 48, !23, i64 64, !7, i64 96, !8, i64 112}
!25 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!26 = !{!"p1 float", !11, i64 0}
!27 = !{!"dt_dev_distorted_mask_cache_t", !26, i64 0, !20, i64 8, !17, i64 32, !17, i64 40}
!28 = !{!"dt_dev_pixelpipe_iop_t", !12, i64 0, !13, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !15, i64 40, !16, i64 56, !18, i64 64, !7, i64 88, !19, i64 104, !8, i64 108, !8, i64 112, !17, i64 120, !8, i64 128, !8, i64 132, !20, i64 136, !20, i64 156, !20, i64 176, !20, i64 196, !8, i64 216, !8, i64 220, !24, i64 224, !24, i64 352, !7, i64 480, !8, i64 516, !25, i64 520, !27, i64 528, !27, i64 576}
!29 = !{!28, !11, i64 24}
!30 = !{!28, !8, i64 132}
!31 = !{!20, !8, i64 8}
!32 = !{!20, !8, i64 12}
!33 = !{!"dt_develop_blend_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !19, i64 12, !19, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !19, i64 32, !8, i64 36, !19, i64 40, !19, i64 44, !19, i64 48, !19, i64 52, !8, i64 56, !7, i64 60, !7, i64 68, !7, i64 324, !7, i64 388, !8, i64 408, !8, i64 412, !8, i64 416}
!34 = !{!19, !19, i64 0}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !35, !36}
!38 = distinct !{!38, !35, !36}
!39 = distinct !{!39, !36, !35}
!40 = distinct !{!40, !35, !36}
!41 = distinct !{!41, !35, !36}
!42 = distinct !{!42, !36, !35}
!43 = distinct !{!43, i1 false, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !35, !36}
!47 = distinct !{!47, !35, !36}
!48 = distinct !{!48, !79}
!49 = distinct !{!49, i1 false, !"LVerDomain"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !35, !36}
!53 = distinct !{!53, !35, !36}
!54 = distinct !{!54, !79}
!55 = distinct !{!55, !35}
!56 = distinct !{!56, !35}
!57 = distinct !{!57, i1 false, !"LVerDomain"}
!58 = distinct !{!58, !57}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !35, !36}
!61 = distinct !{!61, !35, !36}
!62 = distinct !{!62, !79}
!63 = distinct !{!63, i1 false, !"LVerDomain"}
!64 = distinct !{!64, !63}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !35, !36}
!67 = distinct !{!67, !35, !36}
!68 = distinct !{!68, !79}
!69 = distinct !{!69, !35}
!70 = distinct !{!70, !35}
!71 = !{!8, !8, i64 0}
!72 = !{!33, !8, i64 28}
!73 = !{!33, !8, i64 20}
!74 = !{!33, !19, i64 16}
!75 = !{!33, !8, i64 0}
!76 = !{!"branch_weights", i32 4, i32 28}
!77 = !{!44}
!78 = !{!45}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!50}
!81 = !{!51}
!82 = !{!58}
!83 = !{!59}
!84 = !{!64}
!85 = !{!65}
!86 = distinct !{!86, i1 true, !"_blendif_lab_l"}
!87 = distinct !{!87, !86, !"_blendif_lab_l: argument 0"}
!88 = distinct !{!88, !86, !"_blendif_lab_l: argument 1"}
!89 = distinct !{!89, !86, !"_blendif_lab_l: argument 2"}
!90 = distinct !{!90, i1 true, !"_blendif_compute_factor"}
!91 = distinct !{!91, !90, !"_blendif_compute_factor: argument 0"}
!92 = distinct !{!92, !35, !36}
!93 = distinct !{!93, !35, !36}
!94 = distinct !{!94, !36, !35}
!95 = distinct !{!95, !36, !35}
!96 = distinct !{!96, i1 true, !"_blendif_lab_a"}
!97 = distinct !{!97, !96, !"_blendif_lab_a: argument 0"}
!98 = distinct !{!98, !96, !"_blendif_lab_a: argument 1"}
!99 = distinct !{!99, !96, !"_blendif_lab_a: argument 2"}
!100 = distinct !{!100, i1 true, !"_blendif_compute_factor"}
!101 = distinct !{!101, !100, !"_blendif_compute_factor: argument 0"}
!102 = distinct !{!102, !35, !36}
!103 = distinct !{!103, !35, !36}
!104 = distinct !{!104, !36, !35}
end_hunk_2
