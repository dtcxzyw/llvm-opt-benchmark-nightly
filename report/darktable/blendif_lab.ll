Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blendif_lab?download=true
inline.NumInlined: 211
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_blend_multiply:bb.a
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx, %found.conflict47
  %bound049 = icmp ult ptr %2, %scevgep41
  %bound150 = icmp ult ptr %6, %scevgep
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %conflict.rdx48, %found.conflict51
  br i1 %conflict.rdx52, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.g = and i64 %4, 7                            ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 8, i64 %i.g
  %n.vec = sub i64 %4, %i.i                       ; 3 uses
  %i.j = shl i64 %n.vec, 2
  %i.k = load float, ptr %5, align 4, !tbaa !34, !alias.scope !252
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.k, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %i.l = load float, ptr %6, align 4, !tbaa !34, !alias.scope !253
  %broadcast.splatinsert59 = insertelement <8 x float> poison, float %i.l, i64 0
  %broadcast.splat60 = shufflevector <8 x float> %broadcast.splatinsert59, <8 x float> poison, <8 x i32> zeroinitializer
  %i.m = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !252
  %broadcast.splatinsert61 = insertelement <8 x float> poison, float %i.m, i64 0
  %broadcast.splat62 = shufflevector <8 x float> %broadcast.splatinsert61, <8 x float> poison, <8 x i32> zeroinitializer
  %i.n = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !253
  %broadcast.splatinsert63 = insertelement <8 x float> poison, float %i.n, i64 0
  %broadcast.splat64 = shufflevector <8 x float> %broadcast.splatinsert63, <8 x float> poison, <8 x i32> zeroinitializer
  %i.o = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !252
  %broadcast.splatinsert65 = insertelement <8 x float> poison, float %i.o, i64 0
  %broadcast.splat66 = shufflevector <8 x float> %broadcast.splatinsert65, <8 x float> poison, <8 x i32> zeroinitializer
  %i.p = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !253
  %broadcast.splatinsert67 = insertelement <8 x float> poison, float %i.p, i64 0
  %broadcast.splat68 = shufflevector <8 x float> %broadcast.splatinsert67, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = shl i64 %index, 2                        ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.r, align 4, !tbaa !34 ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  %wide.vec = load <32 x float>, ptr %i.s, align 4, !tbaa !34, !alias.scope !254 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec53 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec54 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A) ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec53, splat (float 7.812500e-03) ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec54, splat (float 7.812500e-03) ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q
  %wide.vec55 = load <32 x float>, ptr %i.w, align 4, !tbaa !34, !alias.scope !255 ; 3 uses
  %strided.vec56 = shufflevector <32 x float> %wide.vec55, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec57 = shufflevector <32 x float> %wide.vec55, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec58 = shufflevector <32 x float> %wide.vec55, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.x = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec57, splat (float 7.812500e-03)
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec58, splat (float 7.812500e-03)
  %i.z = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load ; 3 uses
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, splat (float f0x3C23D70A)
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %i.aa, %strided.vec56
  %i.ac = fadd reassoc nsz arcp contract afn <8 x float> %i.ab, %i.z
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %i.ac, %i.t
  %i.ae = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ad, <8 x float> %broadcast.splat)
  %i.af = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ae, <8 x float> %broadcast.splat60) ; 2 uses
  %i.ag = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.t, <8 x float> splat (float f0x3C23D70A)) ; 2 uses
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %i.u, %i.z
  %i.ai = fadd reassoc nsz arcp contract afn <8 x float> %i.x, %i.u
  %i.aj = fmul reassoc nsz arcp contract afn <8 x float> %i.af, %wide.load ; 2 uses
  %i.ak = fmul reassoc nsz arcp contract afn <8 x float> %i.aj, %i.ai
  %i.al = fdiv reassoc nsz arcp contract afn <8 x float> %i.ak, %i.ag
  %i.am = fadd reassoc nsz arcp contract afn <8 x float> %i.al, %i.ah
  %i.an = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.am, <8 x float> %broadcast.splat62)
  %i.ao = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.an, <8 x float> %broadcast.splat64)
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %i.v, %i.z
  %i.aq = fadd reassoc nsz arcp contract afn <8 x float> %i.y, %i.v
  %i.ar = fmul reassoc nsz arcp contract afn <8 x float> %i.aj, %i.aq
  %i.as = fdiv reassoc nsz arcp contract afn <8 x float> %i.ar, %i.ag
  %i.at = fadd reassoc nsz arcp contract afn <8 x float> %i.as, %i.ap
  %i.au = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.at, <8 x float> %broadcast.splat66)
  %i.av = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.au, <8 x float> %broadcast.splat68)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q
  %i.ax = fmul reassoc nsz arcp contract afn <8 x float> %i.av, splat (float 1.280000e+02)
  %i.ay = shufflevector <8 x float> %i.af, <8 x float> %i.ao, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.az = fmul reassoc nsz arcp contract afn <16 x float> %i.ay, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.ba = shufflevector <8 x float> %i.ax, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.az, <16 x float> %i.ba, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.aw, align 4, !tbaa !34, !alias.scope !256, !noalias !257
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %scalar.ph.preheader, label %vector.body, !llvm.loop !250

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.037 = phi i64 [ %i.ct, %scalar.ph ], [ %.037.ph, %scalar.ph.preheader ] ; 2 uses
  %.02836 = phi i64 [ %i.cu, %scalar.ph ], [ %.02836.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.037
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02836 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !34
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, f0x3C23D70A ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02836 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bk = load float, ptr %5, align 4, !tbaa !34
  %i.bl = load float, ptr %6, align 4, !tbaa !34
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bf, float f0x3C23D70A)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02836
  %i.bo = load float, ptr %i.bc, align 4, !tbaa !34 ; 4 uses
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, f0x3C23D70A
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, %i.bi
  %i.br = load <2 x float>, ptr %i.bg, align 4, !tbaa !34
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.br, splat (float 7.812500e-03) ; 2 uses
  %i.bt = load <2 x float>, ptr %i.bj, align 4, !tbaa !34
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, splat (float 7.812500e-03)
  %i.bv = fadd reassoc nsz arcp contract afn <2 x float> %i.bu, %i.bs
  %i.bw = load <2 x float>, ptr %i.a, align 4, !tbaa !34
  %i.bx = load <2 x float>, ptr %i.b, align 4, !tbaa !34
  %i.by = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bo ; 2 uses
  %reass.add = fadd reassoc nsz arcp contract afn float %i.bq, %i.by
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %i.bf
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %reass.mul, float %i.bk)
  %i.ca = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bz, float %i.bl) ; 2 uses
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, %i.bo
  %i.cc = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul reassoc nsz arcp contract afn <2 x float> %i.bs, %i.cd
  %i.cf = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul reassoc nsz arcp contract afn <2 x float> %i.cg, %i.bv
  %i.ci = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fdiv reassoc nsz arcp contract afn <2 x float> %i.ch, %i.cj
  %i.cl = fadd reassoc nsz arcp contract afn <2 x float> %i.ck, %i.ce
  %i.cm = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cl, <2 x float> %i.bw)
  %i.cn = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cm, <2 x float> %i.bx)
  %i.co = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cp = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cq = shufflevector <4 x float> %i.co, <4 x float> %i.cp, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cr = insertelement <4 x float> %i.cq, float %i.bo, i64 3
  %i.cs = fmul reassoc nsz arcp contract afn <4 x float> %i.cr, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.cs, ptr %i.bn, align 4, !tbaa !34
  %i.ct = add nuw i64 %.037, 1                    ; 2 uses
  %i.cu = add i64 %.02836, 4
  %exitcond.not = icmp eq i64 %i.ct, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !251
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
  %scevgep = getelementptr i8, ptr %2, i64 %i.e   ; 4 uses
  %i.f = add i64 %i.e, -4                         ; 2 uses
  %scevgep34 = getelementptr i8, ptr %0, i64 %i.f
  %scevgep35 = getelementptr i8, ptr %1, i64 %i.f
  %scevgep36 = getelementptr i8, ptr %5, i64 12
  %scevgep37 = getelementptr i8, ptr %6, i64 12
  %bound0 = icmp ult ptr %2, %scevgep34
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound038 = icmp ult ptr %2, %scevgep35
  %bound139 = icmp ult ptr %1, %scevgep
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict, %found.conflict40
  %bound041 = icmp ult ptr %2, %scevgep36
  %bound142 = icmp ult ptr %5, %scevgep
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  %bound045 = icmp ult ptr %2, %scevgep37
  %bound146 = icmp ult ptr %6, %scevgep
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  br i1 %conflict.rdx48, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.g = and i64 %4, 7                            ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 8, i64 %i.g
  %n.vec = sub i64 %4, %i.i                       ; 2 uses
  %i.j = load float, ptr %5, align 4, !tbaa !34, !alias.scope !266
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.j, i64 0
  %i.k = load float, ptr %6, align 4, !tbaa !34, !alias.scope !267
  %broadcast.splatinsert55 = insertelement <8 x float> poison, float %i.k, i64 0
  %i.l = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !266
  %broadcast.splatinsert57 = insertelement <8 x float> poison, float %i.l, i64 0
  %i.m = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !267
  %broadcast.splatinsert59 = insertelement <8 x float> poison, float %i.m, i64 0
  %i.n = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !266
  %broadcast.splatinsert61 = insertelement <8 x float> poison, float %i.n, i64 0
  %broadcast.splat62 = shufflevector <8 x float> %broadcast.splatinsert61, <8 x float> poison, <8 x i32> zeroinitializer
  %i.o = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !267
  %broadcast.splatinsert63 = insertelement <8 x float> poison, float %i.o, i64 0
  %broadcast.splat64 = shufflevector <8 x float> %broadcast.splatinsert63, <8 x float> poison, <8 x i32> zeroinitializer
  %7 = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert57, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %8 = shufflevector <8 x float> %broadcast.splatinsert55, <8 x float> %broadcast.splatinsert59, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 2                        ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.q, align 4, !tbaa !34 ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p
  %wide.vec = load <32 x float>, ptr %i.r, align 4, !tbaa !34, !alias.scope !268 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec49 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec50 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.s = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A) ; 3 uses
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec49, splat (float 7.812500e-03) ; 3 uses
  %i.u = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec50, splat (float 7.812500e-03) ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.p
  %wide.vec51 = load <32 x float>, ptr %i.v, align 4, !tbaa !34, !alias.scope !269 ; 3 uses
  %strided.vec52 = shufflevector <32 x float> %wide.vec51, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec53 = shufflevector <32 x float> %wide.vec51, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec54 = shufflevector <32 x float> %wide.vec51, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec52, splat (float f0x3C23D70A)
  %i.x = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec53, splat (float 7.812500e-03)
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec54, splat (float 7.812500e-03)
  %i.z = fadd reassoc nsz arcp contract afn <8 x float> %i.w, %i.s
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %i.z, splat (float 5.000000e-01)
  %i.ab = fsub reassoc nsz arcp contract afn <8 x float> %i.aa, %i.s
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.ab, %wide.load
  %i.ad = fadd reassoc nsz arcp contract afn <8 x float> %i.ac, %i.s
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %i.x, %i.t
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %i.ae, splat (float 5.000000e-01)
  %i.ag = fsub reassoc nsz arcp contract afn <8 x float> %i.af, %i.t
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %i.ag, %wide.load
  %i.ai = fadd reassoc nsz arcp contract afn <8 x float> %i.ah, %i.t
  %i.aj = fadd reassoc nsz arcp contract afn <8 x float> %i.y, %i.u
  %i.ak = fmul reassoc nsz arcp contract afn <8 x float> %i.aj, splat (float 5.000000e-01)
  %i.al = fsub reassoc nsz arcp contract afn <8 x float> %i.ak, %i.u
  %i.am = fmul reassoc nsz arcp contract afn <8 x float> %i.al, %wide.load
  %i.an = fadd reassoc nsz arcp contract afn <8 x float> %i.am, %i.u
  %i.ao = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.an, <8 x float> %broadcast.splat62)
  %i.ap = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ao, <8 x float> %broadcast.splat64)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.p
  %i.ar = fmul reassoc nsz arcp contract afn <8 x float> %i.ap, splat (float 1.280000e+02)
  %9 = shufflevector <8 x float> %i.ad, <8 x float> %i.ai, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %10 = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %9, <16 x float> %7)
  %i.as = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %10, <16 x float> %8)
  %i.at = fmul reassoc nsz arcp contract afn <16 x float> %i.as, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.au = shufflevector <8 x float> %i.ar, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.at, <16 x float> %i.au, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.aq, align 4, !tbaa !34, !alias.scope !270, !noalias !271
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %scalar.ph.preheader, label %vector.body, !llvm.loop !264

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02628 = phi i64 [ %i.cl, %scalar.ph ], [ %.02628.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aw = shl i64 %.02628, 2                      ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02628
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !34
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, f0x3C23D70A ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !34
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, f0x3C23D70A
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bg = fadd reassoc nsz arcp contract afn float %i.be, %i.ba
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, 5.000000e-01
  %i.bi = fsub reassoc nsz arcp contract afn float %i.bh, %i.ba
  %i.bj = load float, ptr %5, align 4, !tbaa !34
  %i.bk = load float, ptr %6, align 4, !tbaa !34
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aw
  %i.bm = load float, ptr %i.ax, align 4, !tbaa !34 ; 3 uses
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bi, %i.bm
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bn, %i.ba
  %i.bp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bo, float %i.bj)
  %i.bq = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bp, float %i.bk)
  %i.br = load <2 x float>, ptr %i.bb, align 4, !tbaa !34
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.br, splat (float 7.812500e-03) ; 3 uses
  %i.bt = load <2 x float>, ptr %i.bf, align 4, !tbaa !34
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, splat (float 7.812500e-03)
  %i.bv = fadd reassoc nsz arcp contract afn <2 x float> %i.bu, %i.bs
  %i.bw = fmul reassoc nsz arcp contract afn <2 x float> %i.bv, splat (float 5.000000e-01)
  %i.bx = fsub reassoc nsz arcp contract afn <2 x float> %i.bw, %i.bs
  %i.by = load <2 x float>, ptr %i.a, align 4, !tbaa !34
  %i.bz = load <2 x float>, ptr %i.b, align 4, !tbaa !34
  %i.ca = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul reassoc nsz arcp contract afn <2 x float> %i.bx, %i.cb
  %i.cd = fadd reassoc nsz arcp contract afn <2 x float> %i.cc, %i.bs
  %i.ce = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cd, <2 x float> %i.by)
  %i.cf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ce, <2 x float> %i.bz)
  %i.cg = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.ch = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %i.cg, <4 x float> %i.ch, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cj = insertelement <4 x float> %i.ci, float %i.bm, i64 3
  %i.ck = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.ck, ptr %i.bl, align 4, !tbaa !34
  %i.cl = add nuw i64 %.02628, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !265
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
  %scevgep = getelementptr i8, ptr %2, i64 %i.e   ; 4 uses
  %i.f = add i64 %i.e, -4                         ; 2 uses
  %scevgep34 = getelementptr i8, ptr %0, i64 %i.f
  %scevgep35 = getelementptr i8, ptr %1, i64 %i.f
  %scevgep36 = getelementptr i8, ptr %5, i64 12
  %scevgep37 = getelementptr i8, ptr %6, i64 12
  %bound0 = icmp ult ptr %2, %scevgep34
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound038 = icmp ult ptr %2, %scevgep35
  %bound139 = icmp ult ptr %1, %scevgep
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict, %found.conflict40
  %bound041 = icmp ult ptr %2, %scevgep36
  %bound142 = icmp ult ptr %5, %scevgep
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  %bound045 = icmp ult ptr %2, %scevgep37
  %bound146 = icmp ult ptr %6, %scevgep
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  br i1 %conflict.rdx48, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.g = and i64 %4, 7                            ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 8, i64 %i.g
  %n.vec = sub i64 %4, %i.i                       ; 2 uses
  %i.j = load float, ptr %5, align 4, !tbaa !34, !alias.scope !280
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.j, i64 0
  %i.k = load float, ptr %6, align 4, !tbaa !34, !alias.scope !281
  %broadcast.splatinsert55 = insertelement <8 x float> poison, float %i.k, i64 0
  %i.l = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !280
  %broadcast.splatinsert57 = insertelement <8 x float> poison, float %i.l, i64 0
  %i.m = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !281
  %broadcast.splatinsert59 = insertelement <8 x float> poison, float %i.m, i64 0
  %i.n = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !280
  %broadcast.splatinsert61 = insertelement <8 x float> poison, float %i.n, i64 0
  %broadcast.splat62 = shufflevector <8 x float> %broadcast.splatinsert61, <8 x float> poison, <8 x i32> zeroinitializer
  %i.o = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !281
  %broadcast.splatinsert63 = insertelement <8 x float> poison, float %i.o, i64 0
  %broadcast.splat64 = shufflevector <8 x float> %broadcast.splatinsert63, <8 x float> poison, <8 x i32> zeroinitializer
  %7 = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert57, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %8 = shufflevector <8 x float> %broadcast.splatinsert55, <8 x float> %broadcast.splatinsert59, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 2                        ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.q, align 4, !tbaa !34 ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p
  %wide.vec = load <32 x float>, ptr %i.r, align 4, !tbaa !34, !alias.scope !282 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec49 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec50 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.s = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A)
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec49, splat (float 7.812500e-03)
  %i.u = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec50, splat (float 7.812500e-03)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.p
  %wide.vec51 = load <32 x float>, ptr %i.v, align 4, !tbaa !34, !alias.scope !283 ; 3 uses
  %strided.vec52 = shufflevector <32 x float> %wide.vec51, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec53 = shufflevector <32 x float> %wide.vec51, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec54 = shufflevector <32 x float> %wide.vec51, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec52, splat (float f0x3C23D70A)
  %i.x = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec53, splat (float 7.812500e-03)
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec54, splat (float 7.812500e-03)
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %i.w, %wide.load
  %i.aa = fadd reassoc nsz arcp contract afn <8 x float> %i.z, %i.s
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %i.x, %wide.load
  %i.ac = fadd reassoc nsz arcp contract afn <8 x float> %i.ab, %i.t
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %i.y, %wide.load
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %i.ad, %i.u
  %i.af = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ae, <8 x float> %broadcast.splat62)
  %i.ag = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.af, <8 x float> %broadcast.splat64)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.p
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.ag, splat (float 1.280000e+02)
  %9 = shufflevector <8 x float> %i.aa, <8 x float> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %10 = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %9, <16 x float> %7)
  %i.aj = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %10, <16 x float> %8)
  %i.ak = fmul reassoc nsz arcp contract afn <16 x float> %i.aj, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.al = shufflevector <8 x float> %i.ai, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ak, <16 x float> %i.al, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ah, align 4, !tbaa !34, !alias.scope !284, !noalias !285
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %scalar.ph.preheader, label %vector.body, !llvm.loop !278

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02628 = phi i64 [ %i.bw, %scalar.ph ], [ %.02628.ph, %scalar.ph.preheader ] ; 3 uses
  %i.an = shl i64 %.02628, 2                      ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02628
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !34
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, f0x3C23D70A
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.an ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !34
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, f0x3C23D70A
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ax = load float, ptr %5, align 4, !tbaa !34
  %i.ay = load float, ptr %6, align 4, !tbaa !34
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.an
  %i.ba = load float, ptr %i.ao, align 4, !tbaa !34 ; 3 uses
  %i.bb = fmul reassoc nsz arcp contract afn float %i.av, %i.ba
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.ar
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bc, float %i.ax)
  %i.be = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bd, float %i.ay)
  %i.bf = load <2 x float>, ptr %i.as, align 4, !tbaa !34
  %i.bg = fmul reassoc nsz arcp contract afn <2 x float> %i.bf, splat (float 7.812500e-03)
  %i.bh = load <2 x float>, ptr %i.aw, align 4, !tbaa !34
  %i.bi = load <2 x float>, ptr %i.a, align 4, !tbaa !34
  %i.bj = load <2 x float>, ptr %i.b, align 4, !tbaa !34
  %i.bk = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bl = fmul reassoc nsz arcp contract afn <2 x float> %i.bk, <float 7.812500e-03, float poison>
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul reassoc nsz arcp contract afn <2 x float> %i.bm, %i.bh
  %i.bo = fadd reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bg
  %i.bp = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bo, <2 x float> %i.bi)
  %i.bq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bp, <2 x float> %i.bj)
  %i.br = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bs = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> %i.br, <4 x float> %i.bs, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bu = insertelement <4 x float> %i.bt, float %i.ba, i64 3
  %i.bv = fmul reassoc nsz arcp contract afn <4 x float> %i.bu, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.bv, ptr %i.az, align 4, !tbaa !34
  %i.bw = add nuw i64 %.02628, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !279
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
  %scevgep = getelementptr i8, ptr %2, i64 %i.e   ; 4 uses
  %i.f = add i64 %i.e, -4                         ; 2 uses
  %scevgep38 = getelementptr i8, ptr %0, i64 %i.f
  %scevgep39 = getelementptr i8, ptr %1, i64 %i.f
  %scevgep40 = getelementptr i8, ptr %5, i64 12
  %scevgep41 = getelementptr i8, ptr %6, i64 12
  %bound0 = icmp ult ptr %2, %scevgep38
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound042 = icmp ult ptr %2, %scevgep39
  %bound143 = icmp ult ptr %1, %scevgep
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %found.conflict, %found.conflict44
  %bound045 = icmp ult ptr %2, %scevgep40
  %bound146 = icmp ult ptr %5, %scevgep
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx, %found.conflict47
  %bound049 = icmp ult ptr %2, %scevgep41
  %bound150 = icmp ult ptr %6, %scevgep
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %conflict.rdx48, %found.conflict51
  br i1 %conflict.rdx52, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.g = and i64 %4, 7                            ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 8, i64 %i.g
  %n.vec = sub i64 %4, %i.i                       ; 2 uses
  %i.j = load float, ptr %5, align 4, !tbaa !34, !alias.scope !294
  %broadcast.splatinsert53 = insertelement <8 x float> poison, float %i.j, i64 0
  %broadcast.splat54 = shufflevector <8 x float> %broadcast.splatinsert53, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.k = load float, ptr %6, align 4, !tbaa !34, !alias.scope !295
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.k, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.l = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %broadcast.splat54
  %i.m = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.l)
  %i.n = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !294
  %broadcast.splatinsert57 = insertelement <8 x float> poison, float %i.n, i64 0
  %broadcast.splat58 = shufflevector <8 x float> %broadcast.splatinsert57, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.o = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !295
  %broadcast.splatinsert55 = insertelement <8 x float> poison, float %i.o, i64 0
  %broadcast.splat56 = shufflevector <8 x float> %broadcast.splatinsert55, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.p = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat56, %broadcast.splat58
  %i.q = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.p)
  %i.r = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !294
  %broadcast.splatinsert61 = insertelement <8 x float> poison, float %i.r, i64 0
  %broadcast.splat62 = shufflevector <8 x float> %broadcast.splatinsert61, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.s = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !295
  %broadcast.splatinsert59 = insertelement <8 x float> poison, float %i.s, i64 0
  %broadcast.splat60 = shufflevector <8 x float> %broadcast.splatinsert59, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.t = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat60, %broadcast.splat62
  %i.u = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.t)
  %7 = shufflevector <8 x float> %broadcast.splat54, <8 x float> %broadcast.splat58, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %8 = shufflevector <8 x float> %broadcast.splat, <8 x float> %broadcast.splat56, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = shl i64 %index, 2                        ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.w, align 4, !tbaa !34 ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %wide.vec = load <32 x float>, ptr %i.x, align 4, !tbaa !34, !alias.scope !296 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec63 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec64 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A)
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec63, splat (float 7.812500e-03)
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec64, splat (float 7.812500e-03)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.v
  %wide.vec65 = load <32 x float>, ptr %i.ab, align 4, !tbaa !34, !alias.scope !297 ; 3 uses
  %strided.vec66 = shufflevector <32 x float> %wide.vec65, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec67 = shufflevector <32 x float> %wide.vec65, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec68 = shufflevector <32 x float> %wide.vec65, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec66, splat (float f0x3C23D70A)
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec67, splat (float 7.812500e-03)
  %i.ae = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec68, splat (float 7.812500e-03)
  %i.af = fsub reassoc nsz arcp contract afn <8 x float> %i.ac, %i.m
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %i.af, %wide.load
  %i.ah = fadd reassoc nsz arcp contract afn <8 x float> %i.ag, %i.y
  %i.ai = fsub reassoc nsz arcp contract afn <8 x float> %i.ad, %i.q
  %i.aj = fmul reassoc nsz arcp contract afn <8 x float> %i.ai, %wide.load
  %i.ak = fadd reassoc nsz arcp contract afn <8 x float> %i.aj, %i.z
  %i.al = fsub reassoc nsz arcp contract afn <8 x float> %i.ae, %i.u
  %i.am = fmul reassoc nsz arcp contract afn <8 x float> %i.al, %wide.load
  %i.an = fadd reassoc nsz arcp contract afn <8 x float> %i.am, %i.aa
  %i.ao = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.an, <8 x float> %broadcast.splat62)
  %i.ap = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ao, <8 x float> %broadcast.splat60)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.v
  %i.ar = fmul reassoc nsz arcp contract afn <8 x float> %i.ap, splat (float 1.280000e+02)
  %9 = shufflevector <8 x float> %i.ah, <8 x float> %i.ak, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %10 = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %9, <16 x float> %7)
  %i.as = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %10, <16 x float> %8)
  %i.at = fmul reassoc nsz arcp contract afn <16 x float> %i.as, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.au = shufflevector <8 x float> %i.ar, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.at, <16 x float> %i.au, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.aq, align 4, !tbaa !34, !alias.scope !298, !noalias !299
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %scalar.ph.preheader, label %vector.body, !llvm.loop !292

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03032 = phi i64 [ %i.cl, %scalar.ph ], [ %.03032.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aw = shl i64 %.03032, 2                      ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03032
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !34
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, f0x3C23D70A
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !34
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, f0x3C23D70A
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bg = load float, ptr %5, align 4, !tbaa !34  ; 2 uses
  %i.bh = load float, ptr %6, align 4, !tbaa !34  ; 2 uses
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, %i.bg
  %i.bj = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bi)
  %i.bk = fsub reassoc nsz arcp contract afn float %i.be, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aw
  %i.bm = load float, ptr %i.ax, align 4, !tbaa !34 ; 3 uses
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bk, %i.bm
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bn, %i.ba
  %i.bp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bo, float %i.bg)
  %i.bq = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bp, float %i.bh)
  %i.br = load <2 x float>, ptr %i.bb, align 4, !tbaa !34
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.br, splat (float 7.812500e-03)
  %i.bt = load <2 x float>, ptr %i.bf, align 4, !tbaa !34
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, splat (float 7.812500e-03)
  %i.bv = load <2 x float>, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.b, align 4, !tbaa !34 ; 2 uses
  %i.bx = fadd reassoc nsz arcp contract afn <2 x float> %i.bw, %i.bv
  %i.by = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bx)
  %i.bz = fsub reassoc nsz arcp contract afn <2 x float> %i.bu, %i.by
  %i.ca = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul reassoc nsz arcp contract afn <2 x float> %i.bz, %i.cb
  %i.cd = fadd reassoc nsz arcp contract afn <2 x float> %i.cc, %i.bs
  %i.ce = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cd, <2 x float> %i.bv)
  %i.cf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ce, <2 x float> %i.bw)
  %i.cg = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.ch = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %i.cg, <4 x float> %i.ch, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cj = insertelement <4 x float> %i.ci, float %i.bm, i64 3
  %i.ck = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.ck, ptr %i.bl, align 4, !tbaa !34
  %i.cl = add nuw i64 %.03032, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !293
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
  %.03740.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.j, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.e = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.e   ; 4 uses
  %i.f = add i64 %i.e, -4                         ; 2 uses
  %scevgep47 = getelementptr i8, ptr %0, i64 %i.f
  %scevgep48 = getelementptr i8, ptr %1, i64 %i.f
  %scevgep49 = getelementptr i8, ptr %6, i64 12
  %scevgep50 = getelementptr i8, ptr %5, i64 12
  %bound0 = icmp ult ptr %2, %scevgep47
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound051 = icmp ult ptr %2, %scevgep48
  %bound152 = icmp ult ptr %1, %scevgep
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx = or i1 %found.conflict, %found.conflict53
  %bound054 = icmp ult ptr %2, %scevgep49
  %bound155 = icmp ult ptr %6, %scevgep
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx57 = or i1 %conflict.rdx, %found.conflict56
  %bound058 = icmp ult ptr %2, %scevgep50
  %bound159 = icmp ult ptr %5, %scevgep
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx61 = or i1 %conflict.rdx57, %found.conflict60
  br i1 %conflict.rdx61, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.g = and i64 %4, 7                            ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 8, i64 %i.g
  %n.vec = sub i64 %4, %i.i                       ; 3 uses
  %i.j = shl i64 %n.vec, 2
  %i.k = load float, ptr %6, align 4, !tbaa !34, !alias.scope !308
  %i.l = load float, ptr %5, align 4, !tbaa !34, !alias.scope !309
  %.scalar = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.l) ; 2 uses
  %i.m = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.n = shufflevector <8 x float> %i.m, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.scalar79 = fadd reassoc nsz arcp contract afn float %.scalar, %i.k
  %i.o = insertelement <8 x float> poison, float %.scalar79, i64 0
  %i.p = shufflevector <8 x float> %i.o, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.q = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !308
  %i.r = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !309
  %.scalar80 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.r) ; 2 uses
  %i.s = insertelement <8 x float> poison, float %.scalar80, i64 0
  %i.t = shufflevector <8 x float> %i.s, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.scalar81 = fadd reassoc nsz arcp contract afn float %.scalar80, %i.q
  %i.u = insertelement <8 x float> poison, float %.scalar81, i64 0
  %i.v = shufflevector <8 x float> %i.u, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.w = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !308
  %i.x = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !309
  %.scalar82 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.x) ; 2 uses
  %i.y = insertelement <8 x float> poison, float %.scalar82, i64 0
  %i.z = shufflevector <8 x float> %i.y, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.scalar83 = fadd reassoc nsz arcp contract afn float %.scalar82, %i.w
  %i.aa = insertelement <8 x float> poison, float %.scalar83, i64 0
  %i.ab = shufflevector <8 x float> %i.aa, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = shl i64 %index, 2                       ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.ad, align 4, !tbaa !34 ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  %wide.vec = load <32 x float>, ptr %i.ae, align 4, !tbaa !34, !alias.scope !310 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec72 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec73 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A)
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec72, splat (float 7.812500e-03)
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec73, splat (float 7.812500e-03)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %wide.vec74 = load <32 x float>, ptr %i.ai, align 4, !tbaa !34, !alias.scope !311 ; 3 uses
  %strided.vec75 = shufflevector <32 x float> %wide.vec74, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec76 = shufflevector <32 x float> %wide.vec74, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec77 = shufflevector <32 x float> %wide.vec74, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.aj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec75, splat (float f0x3C23D70A)
  %i.ak = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec76, splat (float 7.812500e-03)
  %i.al = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec77, splat (float 7.812500e-03)
  %i.am = fadd reassoc nsz arcp contract afn <8 x float> %i.af, %i.n
  %i.an = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.am, <8 x float> zeroinitializer)
  %i.ao = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.an, <8 x float> %i.p) ; 3 uses
  %i.ap = fadd reassoc nsz arcp contract afn <8 x float> %i.aj, %i.n
  %i.aq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ap, <8 x float> zeroinitializer)
  %i.ar = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.aq, <8 x float> %i.p)
  %i.as = fsub reassoc nsz arcp contract afn <8 x float> %i.ao, %i.ar
  %i.at = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.as)
  %i.au = fsub reassoc nsz arcp contract afn <8 x float> %i.at, %i.ao
  %i.av = fmul reassoc nsz arcp contract afn <8 x float> %i.au, %wide.load
  %i.aw = fadd reassoc nsz arcp contract afn <8 x float> %i.av, %i.ao
  %i.ax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aw, <8 x float> zeroinitializer)
  %i.ay = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ax, <8 x float> %i.p)
  %i.az = fsub reassoc nsz arcp contract afn <8 x float> %i.ay, %i.n
  %i.ba = fadd reassoc nsz arcp contract afn <8 x float> %i.ag, %i.t
  %i.bb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ba, <8 x float> zeroinitializer)
  %i.bc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bb, <8 x float> %i.v) ; 3 uses
  %i.bd = fadd reassoc nsz arcp contract afn <8 x float> %i.ak, %i.t
  %i.be = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bd, <8 x float> zeroinitializer)
  %i.bf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.be, <8 x float> %i.v)
  %i.bg = fsub reassoc nsz arcp contract afn <8 x float> %i.bc, %i.bf
  %i.bh = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bg)
  %i.bi = fsub reassoc nsz arcp contract afn <8 x float> %i.bh, %i.bc
  %i.bj = fmul reassoc nsz arcp contract afn <8 x float> %i.bi, %wide.load
  %i.bk = fadd reassoc nsz arcp contract afn <8 x float> %i.bj, %i.bc
  %i.bl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bk, <8 x float> zeroinitializer)
  %i.bm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bl, <8 x float> %i.v)
  %i.bn = fsub reassoc nsz arcp contract afn <8 x float> %i.bm, %i.t
  %i.bo = fadd reassoc nsz arcp contract afn <8 x float> %i.ah, %i.z
  %i.bp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bo, <8 x float> zeroinitializer)
  %i.bq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bp, <8 x float> %i.ab) ; 3 uses
  %i.br = fadd reassoc nsz arcp contract afn <8 x float> %i.al, %i.z
  %i.bs = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.br, <8 x float> zeroinitializer)
  %i.bt = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bs, <8 x float> %i.ab)
  %i.bu = fsub reassoc nsz arcp contract afn <8 x float> %i.bq, %i.bt
  %i.bv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bu)
  %i.bw = fsub reassoc nsz arcp contract afn <8 x float> %i.bv, %i.bq
  %i.bx = fmul reassoc nsz arcp contract afn <8 x float> %i.bw, %wide.load
  %i.by = fadd reassoc nsz arcp contract afn <8 x float> %i.bx, %i.bq
  %i.bz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.by, <8 x float> zeroinitializer)
  %i.ca = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bz, <8 x float> %i.ab)
  %i.cb = fsub reassoc nsz arcp contract afn <8 x float> %i.ca, %i.z
end_hunk_0
begin_hunk_1_@_blend_pinlight:bb.a
  %i.p = insertelement <8 x float> poison, float %.scalar83, i64 0
  %i.q = shufflevector <8 x float> %i.p, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.r = fmul reassoc nsz arcp contract afn <8 x float> %i.q, splat (float 5.000000e-01) ; 2 uses
  %i.s = fmul reassoc nsz arcp contract afn <8 x float> %i.q, splat (float 2.000000e+00) ; 2 uses
  %i.t = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !421
  %broadcast.splatinsert74 = insertelement <8 x float> poison, float %i.t, i64 0
  %broadcast.splat75 = shufflevector <8 x float> %broadcast.splatinsert74, <8 x float> poison, <8 x i32> zeroinitializer
  %i.u = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !420
  %broadcast.splatinsert76 = insertelement <8 x float> poison, float %i.u, i64 0
  %broadcast.splat77 = shufflevector <8 x float> %broadcast.splatinsert76, <8 x float> poison, <8 x i32> zeroinitializer
  %i.v = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !421
  %broadcast.splatinsert78 = insertelement <8 x float> poison, float %i.v, i64 0
  %broadcast.splat79 = shufflevector <8 x float> %broadcast.splatinsert78, <8 x float> poison, <8 x i32> zeroinitializer
  %i.w = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !420
  %broadcast.splatinsert80 = insertelement <8 x float> poison, float %i.w, i64 0
  %broadcast.splat81 = shufflevector <8 x float> %broadcast.splatinsert80, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = shl i64 %index, 2                        ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.y, align 4, !tbaa !34 ; 3 uses
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x
  %wide.vec = load <32 x float>, ptr %i.aa, align 4, !tbaa !34, !alias.scope !422 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec70 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec71 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A)
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec70, splat (float 7.812500e-03)
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec71, splat (float 7.812500e-03)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.x
  %wide.vec72 = load <32 x float>, ptr %i.ae, align 4, !tbaa !34, !alias.scope !423
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
  store <32 x float> %interleaved.vec, ptr %i.bc, align 4, !tbaa !34, !alias.scope !424, !noalias !425
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %scalar.ph.preheader, label %vector.body, !llvm.loop !418

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.049 = phi i64 [ %i.dg, %bb.d ], [ %.049.ph, %scalar.ph.preheader ] ; 4 uses
  %.04248 = phi i64 [ %i.df, %bb.d ], [ %.04248.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.04248
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !34 ; 3 uses
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.049 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !34
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, f0x3C23D70A
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bp = load <2 x float>, ptr %i.bo, align 4, !tbaa !34
  %i.bq = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, splat (float 7.812500e-03)
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.049
  %i.bs = load float, ptr %i.br, align 4, !tbaa !34
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, f0x3C23D70A
  %i.bu = load float, ptr %6, align 4, !tbaa !34
  %i.bv = load float, ptr %5, align 4, !tbaa !34
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
  %i.cg = fcmp reassoc nsz arcp contract afn ogt float %i.cd, %i.ce
  br i1 %i.cg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %scalar.ph
  %i.ch = fsub reassoc nsz arcp contract afn float %i.cd, %i.ce
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, %i.cf
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ca, float %i.ci)
  br label %bb.d

bb.c:                                             ; preds = %scalar.ph
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cd, %i.cf
  %i.cl = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ca, float %i.ck)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cm = phi reassoc nsz arcp contract afn float [ %i.cj, %bb.b ], [ %i.cl, %bb.c ]
  %i.cn = fsub reassoc nsz arcp contract afn float %i.cm, %i.ca
  %i.co = fmul reassoc nsz arcp contract afn float %i.bk, %i.cn
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, %i.ca
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cp, float 0.000000e+00)
  %i.cr = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cq, float %i.bx)
  %i.cs = fsub reassoc nsz arcp contract afn float %i.cr, %i.bw
  %i.ct = load <2 x float>, ptr %i.a, align 4, !tbaa !34
  %i.cu = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bq, <2 x float> %i.ct)
  %i.cv = load <2 x float>, ptr %i.b, align 4, !tbaa !34
  %i.cw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cu, <2 x float> %i.cv) ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.049 ; 3 uses
  %i.cy = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> %i.cw, <2 x i32> <i32 0, i32 2>
  %i.da = fmul reassoc nsz arcp contract afn <2 x float> %i.cz, <float 1.000000e+02, float 1.280000e+02>
  store <2 x float> %i.da, ptr %i.cx, align 4, !tbaa !34
  %i.db = extractelement <2 x float> %i.cw, i64 1
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, 1.280000e+02
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store float %i.dc, ptr %i.dd, align 4, !tbaa !34
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store float %i.bj, ptr %i.de, align 4, !tbaa !34
  %i.df = add nuw i64 %.04248, 1                  ; 2 uses
  %i.dg = add i64 %.049, 4
  %exitcond.not = icmp eq i64 %i.df, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !419
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_lightness(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #11 {
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
  %.027.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %.02226.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.k, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.e = shl i64 %4, 4                            ; 3 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.e   ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep28 = getelementptr i8, ptr %i.f, i64 -4
  %i.g = getelementptr i8, ptr %1, i64 %i.e
  %scevgep29 = getelementptr i8, ptr %i.g, i64 -12
  %scevgep30 = getelementptr i8, ptr %5, i64 12
  %scevgep31 = getelementptr i8, ptr %6, i64 12
  %bound0 = icmp ult ptr %2, %scevgep28
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound032 = icmp ult ptr %2, %scevgep29
  %bound133 = icmp ult ptr %1, %scevgep
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  %bound035 = icmp ult ptr %2, %scevgep30
  %bound136 = icmp ult ptr %5, %scevgep
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx38 = or i1 %conflict.rdx, %found.conflict37
  %bound039 = icmp ult ptr %2, %scevgep31
  %bound140 = icmp ult ptr %6, %scevgep
  %found.conflict41 = and i1 %bound039, %bound140
  %conflict.rdx42 = or i1 %conflict.rdx38, %found.conflict41
  br i1 %conflict.rdx42, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.h = and i64 %4, 7                            ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 8, i64 %i.h
  %n.vec = sub i64 %4, %i.j                       ; 3 uses
  %i.k = shl i64 %n.vec, 2
  %i.l = load float, ptr %5, align 4, !tbaa !34, !alias.scope !434
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.l, i64 0
  %i.m = load float, ptr %6, align 4, !tbaa !34, !alias.scope !435
  %broadcast.splatinsert47 = insertelement <8 x float> poison, float %i.m, i64 0
  %i.n = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !434
  %broadcast.splatinsert49 = insertelement <8 x float> poison, float %i.n, i64 0
  %i.o = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !435
  %broadcast.splatinsert51 = insertelement <8 x float> poison, float %i.o, i64 0
  %i.p = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !434
  %broadcast.splatinsert53 = insertelement <8 x float> poison, float %i.p, i64 0
  %broadcast.splat54 = shufflevector <8 x float> %broadcast.splatinsert53, <8 x float> poison, <8 x i32> zeroinitializer
  %i.q = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !435
  %broadcast.splatinsert55 = insertelement <8 x float> poison, float %i.q, i64 0
  %broadcast.splat56 = shufflevector <8 x float> %broadcast.splatinsert55, <8 x float> poison, <8 x i32> zeroinitializer
  %7 = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert49, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %8 = shufflevector <8 x float> %broadcast.splatinsert47, <8 x float> %broadcast.splatinsert51, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = shl i64 %index, 2                        ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.s, align 4, !tbaa !34 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r
  %wide.vec = load <32 x float>, ptr %i.t, align 4, !tbaa !34, !alias.scope !436 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec43 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec44 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.u = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A) ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec43, splat (float 7.812500e-03)
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec44, splat (float 7.812500e-03)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r
  %wide.vec45 = load <32 x float>, ptr %i.x, align 4, !tbaa !34, !alias.scope !437
  %strided.vec46 = shufflevector <32 x float> %wide.vec45, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec46, splat (float f0x3C23D70A)
  %i.z = fsub reassoc nsz arcp contract afn <8 x float> %i.y, %i.u
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %i.z, %wide.load
  %i.ab = fadd reassoc nsz arcp contract afn <8 x float> %i.aa, %i.u
  %9 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.w, <8 x float> %broadcast.splat54)
  %10 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %9, <8 x float> %broadcast.splat56)
  %11 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r
  %12 = fmul reassoc nsz arcp contract afn <8 x float> %10, splat (float 1.280000e+02)
  %13 = shufflevector <8 x float> %i.ab, <8 x float> %i.v, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %14 = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %13, <16 x float> %7)
  %i.ac = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %14, <16 x float> %8)
  %i.ad = fmul reassoc nsz arcp contract afn <16 x float> %i.ac, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.ae = shufflevector <8 x float> %12, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ad, <16 x float> %i.ae, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %11, align 4, !tbaa !34, !alias.scope !438, !noalias !439
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %scalar.ph.preheader, label %vector.body, !llvm.loop !432

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.027 = phi i64 [ %i.bi, %scalar.ph ], [ %.027.ph, %scalar.ph.preheader ] ; 2 uses
  %.02226 = phi i64 [ %i.bj, %scalar.ph ], [ %.02226.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.027
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02226 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !34
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, f0x3C23D70A ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02226
  %i.am = load float, ptr %i.al, align 4, !tbaa !34
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, f0x3C23D70A
  %i.ao = fsub reassoc nsz arcp contract afn float %i.an, %i.aj
  %i.ap = load float, ptr %5, align 4, !tbaa !34
  %i.aq = load float, ptr %6, align 4, !tbaa !34
  %i.ar = load <2 x float>, ptr %i.ak, align 4, !tbaa !34
  %i.as = fmul reassoc nsz arcp contract afn <2 x float> %i.ar, splat (float 7.812500e-03)
  %i.at = load <2 x float>, ptr %i.a, align 4, !tbaa !34
  %i.au = load <2 x float>, ptr %i.b, align 4, !tbaa !34
  %i.av = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.as, <2 x float> %i.at)
  %i.aw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.av, <2 x float> %i.au)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02226
  %i.ay = load float, ptr %i.ag, align 4, !tbaa !34 ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %i.ao, %i.ay
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, %i.aj
  %i.bb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ba, float %i.ap)
  %i.bc = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bb, float %i.aq)
  %i.bd = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.be = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bf = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bg = insertelement <4 x float> %i.bf, float %i.ay, i64 3
  %i.bh = fmul reassoc nsz arcp contract afn <4 x float> %i.bg, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.bh, ptr %i.ax, align 4, !tbaa !34
  %i.bi = add nuw i64 %.027, 1                    ; 2 uses
  %i.bj = add i64 %.02226, 4
  %exitcond.not = icmp eq i64 %i.bi, %4
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

end_hunk_1
begin_hunk_2_@_blend_hue:bb.a
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
  %i.j = load float, ptr %5, align 4, !tbaa !34, !alias.scope !448
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.j, i64 0
  %i.k = load float, ptr %6, align 4, !tbaa !34, !alias.scope !449
  %broadcast.splatinsert54 = insertelement <8 x float> poison, float %i.k, i64 0
  %i.l = load float, ptr %i.a, align 4, !tbaa !34, !alias.scope !448
  %broadcast.splatinsert56 = insertelement <8 x float> poison, float %i.l, i64 0
  %i.m = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !449
  %broadcast.splatinsert58 = insertelement <8 x float> poison, float %i.m, i64 0
  %i.n = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !448
  %broadcast.splatinsert60 = insertelement <8 x float> poison, float %i.n, i64 0
  %broadcast.splat61 = shufflevector <8 x float> %broadcast.splatinsert60, <8 x float> poison, <8 x i32> zeroinitializer
  %i.o = load float, ptr %i.d, align 4, !tbaa !34, !alias.scope !449
  %broadcast.splatinsert62 = insertelement <8 x float> poison, float %i.o, i64 0
  %broadcast.splat63 = shufflevector <8 x float> %broadcast.splatinsert62, <8 x float> poison, <8 x i32> zeroinitializer
  %7 = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert56, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %8 = shufflevector <8 x float> %broadcast.splatinsert54, <8 x float> %broadcast.splatinsert58, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 2                        ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.q, align 4, !tbaa !34 ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p
  %wide.vec = load <32 x float>, ptr %i.r, align 4, !tbaa !34, !alias.scope !450 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec48 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec49 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.s = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A) ; 2 uses
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec48, splat (float 7.812500e-03) ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec49, splat (float 7.812500e-03) ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.p
  %wide.vec50 = load <32 x float>, ptr %i.v, align 4, !tbaa !34, !alias.scope !451 ; 3 uses
  %strided.vec51 = shufflevector <32 x float> %wide.vec50, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec52 = shufflevector <32 x float> %wide.vec50, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec53 = shufflevector <32 x float> %wide.vec50, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec51, splat (float f0x3C23D70A)
  %i.x = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec52, splat (float 7.812500e-03)
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec53, splat (float 7.812500e-03)
  %i.z = fsub reassoc nsz arcp contract afn <8 x float> %i.w, %i.s
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %i.z, %wide.load
  %i.ab = fadd reassoc nsz arcp contract afn <8 x float> %i.aa, %i.s
  %i.ac = fsub reassoc nsz arcp contract afn <8 x float> %i.x, %i.t
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %i.ac, %wide.load
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %i.ad, %i.t
  %i.af = fsub reassoc nsz arcp contract afn <8 x float> %i.y, %i.u
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %i.af, %wide.load
  %i.ah = fadd reassoc nsz arcp contract afn <8 x float> %i.ag, %i.u
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ah, <8 x float> %broadcast.splat61)
  %i.aj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ai, <8 x float> %broadcast.splat63)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.p
  %i.al = fmul reassoc nsz arcp contract afn <8 x float> %i.aj, splat (float 1.280000e+02)
  %9 = shufflevector <8 x float> %i.ab, <8 x float> %i.ae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %10 = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %9, <16 x float> %7)
  %i.am = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %10, <16 x float> %8)
  %i.an = fmul reassoc nsz arcp contract afn <16 x float> %i.am, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 1.280000e+02>
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.an, <16 x float> %i.ao, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ak, align 4, !tbaa !34, !alias.scope !452, !noalias !453
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %scalar.ph.preheader, label %vector.body, !llvm.loop !446

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02527 = phi i64 [ %i.cb, %scalar.ph ], [ %.02527.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aq = shl i64 %.02527, 2                      ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02527
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !34
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, f0x3C23D70A ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aq ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !34
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, f0x3C23D70A
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = fsub reassoc nsz arcp contract afn float %i.ay, %i.au
  %i.bb = load float, ptr %5, align 4, !tbaa !34
  %i.bc = load float, ptr %6, align 4, !tbaa !34
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aq
  %i.be = load float, ptr %i.ar, align 4, !tbaa !34 ; 3 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.ba, %i.be
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bf, %i.au
  %i.bh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bg, float %i.bb)
  %i.bi = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bh, float %i.bc)
  %i.bj = load <2 x float>, ptr %i.av, align 4, !tbaa !34
  %i.bk = fmul reassoc nsz arcp contract afn <2 x float> %i.bj, splat (float 7.812500e-03) ; 2 uses
  %i.bl = load <2 x float>, ptr %i.az, align 4, !tbaa !34
  %i.bm = fmul reassoc nsz arcp contract afn <2 x float> %i.bl, splat (float 7.812500e-03)
  %i.bn = fsub reassoc nsz arcp contract afn <2 x float> %i.bm, %i.bk
  %i.bo = load <2 x float>, ptr %i.a, align 4, !tbaa !34
  %i.bp = load <2 x float>, ptr %i.b, align 4, !tbaa !34
  %i.bq = insertelement <2 x float> poison, float %i.be, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, %i.br
  %i.bt = fadd reassoc nsz arcp contract afn <2 x float> %i.bs, %i.bk
  %i.bu = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bt, <2 x float> %i.bo)
  %i.bv = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bu, <2 x float> %i.bp)
  %i.bw = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bx = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.by = shufflevector <4 x float> %i.bw, <4 x float> %i.bx, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bz = insertelement <4 x float> %i.by, float %i.be, i64 3
  %i.ca = fmul reassoc nsz arcp contract afn <4 x float> %i.bz, <float 1.000000e+02, float 1.280000e+02, float 1.280000e+02, float 1.000000e+00>
  store <4 x float> %i.ca, ptr %i.bd, align 4, !tbaa !34
  %i.cb = add nuw i64 %.02527, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %4
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
  br i1 %min.iters.check, label %.lr.ph.preheader32, label %vector.memcheck

.lr.ph.preheader32:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.021.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ] ; 5 uses
  %.01620.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ab, %vector.body ] ; 5 uses
  %i.a = sub i64 %4, %.021.ph
  %.neg = add i64 %.021.ph, 1
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_2
