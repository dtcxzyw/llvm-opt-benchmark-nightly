Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blendif_rgb_hsl?download=true
inline.NumInlined: 129
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_blend_subtract:bb.a
  %i.bo = add i64 %.02428, 4
  %exitcond.not = icmp eq i64 %i.bn, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !280
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_difference(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader45, label %vector.memcheck

.lr.ph.preheader45:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02428.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.i, %vector.body ]
  %.02527.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
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
  %bound035 = icmp ult ptr %2, %i.e
  %bound136 = icmp ult ptr %1, %i.b
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx = or i1 %found.conflict, %found.conflict37
  br i1 %conflict.rdx, label %.lr.ph.preheader45, label %vector.ph

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
  %wide.load = load <8 x float>, ptr %i.k, align 4, !tbaa !34 ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %wide.vec = load <32 x float>, ptr %i.l, align 4, !tbaa !34, !alias.scope !291 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec38 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec39 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %wide.vec40 = load <32 x float>, ptr %i.m, align 4, !tbaa !34, !alias.scope !292 ; 3 uses
  %strided.vec41 = shufflevector <32 x float> %wide.vec40, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec42 = shufflevector <32 x float> %wide.vec40, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec43 = shufflevector <32 x float> %wide.vec40, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.n = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %strided.vec41
  %i.o = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.n)
  %i.p = fsub reassoc nsz arcp contract afn <8 x float> %i.o, %strided.vec
  %i.q = fmul reassoc nsz arcp contract afn <8 x float> %i.p, %wide.load
  %i.r = fadd reassoc nsz arcp contract afn <8 x float> %i.q, %strided.vec
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.t = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec38, %strided.vec42
  %i.u = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.t)
  %i.v = fsub reassoc nsz arcp contract afn <8 x float> %i.u, %strided.vec38
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %i.v, %wide.load
  %i.x = fadd reassoc nsz arcp contract afn <8 x float> %i.w, %strided.vec38
  %i.y = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec39, %strided.vec43
  %i.z = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.y)
  %i.aa = fsub reassoc nsz arcp contract afn <8 x float> %i.z, %strided.vec39
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %i.aa, %wide.load
  %i.ac = fadd reassoc nsz arcp contract afn <8 x float> %i.ab, %strided.vec39
  %i.ad = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ac, <8 x float> zeroinitializer)
  %i.ae = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ad, <8 x float> splat (float 1.000000e+00))
  %i.af = shufflevector <8 x float> %i.r, <8 x float> %i.x, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ag = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.af, <16 x float> zeroinitializer)
  %i.ah = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.ag, <16 x float> splat (float 1.000000e+00))
  %i.ai = shufflevector <8 x float> %i.ae, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ah, <16 x float> %i.ai, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.s, align 4, !tbaa !34, !alias.scope !293, !noalias !294
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %.lr.ph.preheader45, label %vector.body, !llvm.loop !289

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader45, %.lr.ph
  %.02428 = phi i64 [ %i.ca, %.lr.ph ], [ %.02428.ph, %.lr.ph.preheader45 ] ; 6 uses
  %.02527 = phi i64 [ %i.bz, %.lr.ph ], [ %.02527.ph, %.lr.ph.preheader45 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02527
  %i.al = load float, ptr %i.ak, align 4, !tbaa !34 ; 4 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02428
  %i.an = load float, ptr %i.am, align 4, !tbaa !34 ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02428
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !34
  %i.aq = fsub reassoc nsz arcp contract afn float %i.an, %i.ap
  %i.ar = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aq)
  %i.as = fsub reassoc nsz arcp contract afn float %i.ar, %i.an
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, %i.al
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, %i.an
  %i.av = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.au, float 0.000000e+00)
  %i.aw = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.av, float 1.000000e+00)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02428 ; 2 uses
  store float %i.aw, ptr %i.ax, align 4, !tbaa !34
  %i.ay = or disjoint i64 %.02428, 1              ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !34 ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ay
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !34
  %i.bd = fsub reassoc nsz arcp contract afn float %i.ba, %i.bc
  %i.be = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bd)
  %i.bf = fsub reassoc nsz arcp contract afn float %i.be, %i.ba
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.al
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %i.ba
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bh, float 0.000000e+00)
  %i.bj = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bi, float 1.000000e+00)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ay
  store float %i.bj, ptr %i.bk, align 4, !tbaa !34
  %i.bl = or disjoint i64 %.02428, 2              ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !34 ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bl
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !34
  %i.bq = fsub reassoc nsz arcp contract afn float %i.bn, %i.bp
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bq)
  %i.bs = fsub reassoc nsz arcp contract afn float %i.br, %i.bn
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.al
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bt, %i.bn
  %i.bv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bu, float 0.000000e+00)
  %i.bw = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bv, float 1.000000e+00)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bl
  store float %i.bw, ptr %i.bx, align 4, !tbaa !34
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store float %i.al, ptr %i.by, align 4, !tbaa !34
  %i.bz = add nuw i64 %.02527, 1                  ; 2 uses
  %i.ca = add i64 %.02428, 4
  %exitcond.not = icmp eq i64 %i.bz, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !290
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_screen(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader47, label %vector.memcheck

.lr.ph.preheader47:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.030.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02429.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.i, %vector.body ]
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
  %wide.load = load <8 x float>, ptr %i.k, align 4, !tbaa !34 ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %wide.vec = load <32 x float>, ptr %i.l, align 4, !tbaa !34, !alias.scope !301 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec40 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec41 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.m = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.n = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.m, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %wide.vec42 = load <32 x float>, ptr %i.o, align 4, !tbaa !34, !alias.scope !302 ; 3 uses
  %strided.vec43 = shufflevector <32 x float> %wide.vec42, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec44 = shufflevector <32 x float> %wide.vec42, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec45 = shufflevector <32 x float> %wide.vec42, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.p = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec43, <8 x float> zeroinitializer)
  %i.q = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.p, <8 x float> splat (float 1.000000e+00))
  %i.r = fsub fast <8 x float> splat (float 1.000000e+00), %i.q
  %i.s = fadd fast <8 x float> %i.n, splat (float -1.000000e+00)
  %i.t = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.r, %i.s
  %i.u = fsub fast <8 x float> splat (float 1.000000e+00), %i.n
  %i.v = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.u, %i.t
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %i.v, %wide.load
  %i.x = fadd reassoc nsz arcp contract afn <8 x float> %i.w, %i.n
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.z = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec40, <8 x float> zeroinitializer)
  %i.aa = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.z, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.ab = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec44, <8 x float> zeroinitializer)
  %i.ac = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ab, <8 x float> splat (float 1.000000e+00))
  %i.ad = fsub fast <8 x float> splat (float 1.000000e+00), %i.ac
  %i.ae = fadd fast <8 x float> %i.aa, splat (float -1.000000e+00)
  %i.af = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ad, %i.ae
  %i.ag = fsub fast <8 x float> splat (float 1.000000e+00), %i.aa
  %i.ah = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.ag, %i.af
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.ah, %wide.load
  %i.aj = fadd reassoc nsz arcp contract afn <8 x float> %i.ai, %i.aa
  %i.ak = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec41, <8 x float> zeroinitializer)
  %i.al = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ak, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.am = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec45, <8 x float> zeroinitializer)
  %i.an = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.am, <8 x float> splat (float 1.000000e+00))
  %i.ao = fsub fast <8 x float> splat (float 1.000000e+00), %i.an
  %i.ap = fadd fast <8 x float> %i.al, splat (float -1.000000e+00)
  %i.aq = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ao, %i.ap
  %i.ar = fsub fast <8 x float> splat (float 1.000000e+00), %i.al
  %i.as = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.ar, %i.aq
  %i.at = fmul reassoc nsz arcp contract afn <8 x float> %i.as, %wide.load
  %i.au = fadd reassoc nsz arcp contract afn <8 x float> %i.at, %i.al
  %i.av = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.au, <8 x float> zeroinitializer)
  %i.aw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.av, <8 x float> splat (float 1.000000e+00))
  %i.ax = shufflevector <8 x float> %i.x, <8 x float> %i.aj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ay = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ax, <16 x float> zeroinitializer)
  %i.az = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.ay, <16 x float> splat (float 1.000000e+00))
  %i.ba = shufflevector <8 x float> %i.aw, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.az, <16 x float> %i.ba, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.y, align 4, !tbaa !34, !alias.scope !303, !noalias !304
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %.lr.ph.preheader47, label %vector.body, !llvm.loop !299

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader47, %.lr.ph
  %.030 = phi i64 [ %i.dd, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader47 ] ; 2 uses
  %.02429 = phi i64 [ %i.de, %.lr.ph ], [ %.02429.ph, %.lr.ph.preheader47 ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.030
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !34 ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02429
  %i.bf = load float, ptr %i.be, align 4, !tbaa !34
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bf, float 0.000000e+00)
  %i.bh = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bg, float 1.000000e+00) ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02429
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !34
  %i.bk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bj, float 0.000000e+00)
  %i.bl = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.bk, float 1.000000e+00)
  %i.bm = fsub fast float 1.000000e+00, %i.bl
  %i.bn = fadd fast float %i.bh, -1.000000e+00
  %.neg26 = fmul reassoc nnan nsz arcp contract afn float %i.bm, %i.bn
  %.neg27 = fsub fast float 1.000000e+00, %i.bh
  %i.bo = fadd reassoc nnan nsz arcp contract afn float %.neg27, %.neg26
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, %i.bd
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bp, %i.bh
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bq, float 0.000000e+00)
  %i.bs = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.br, float 1.000000e+00)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02429 ; 2 uses
  store float %i.bs, ptr %i.bt, align 4, !tbaa !34
  %i.bu = or disjoint i64 %.02429, 1              ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !34
  %i.bx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bw, float 0.000000e+00)
  %i.by = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bx, float 1.000000e+00) ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bu
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !34
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ca, float 0.000000e+00)
  %i.cc = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.cb, float 1.000000e+00)
  %i.cd = fsub fast float 1.000000e+00, %i.cc
  %i.ce = fadd fast float %i.by, -1.000000e+00
  %.neg26.1 = fmul reassoc nnan nsz arcp contract afn float %i.cd, %i.ce
  %.neg27.1 = fsub fast float 1.000000e+00, %i.by
  %i.cf = fadd reassoc nnan nsz arcp contract afn float %.neg27.1, %.neg26.1
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.bd
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, %i.by
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ch, float 0.000000e+00)
  %i.cj = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ci, float 1.000000e+00)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bu
  store float %i.cj, ptr %i.ck, align 4, !tbaa !34
  %i.cl = or disjoint i64 %.02429, 2              ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cl
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !34
  %i.co = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cn, float 0.000000e+00)
  %i.cp = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.co, float 1.000000e+00) ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cl
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !34
  %i.cs = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cr, float 0.000000e+00)
  %i.ct = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.cs, float 1.000000e+00)
  %i.cu = fsub fast float 1.000000e+00, %i.ct
  %i.cv = fadd fast float %i.cp, -1.000000e+00
  %.neg26.2 = fmul reassoc nnan nsz arcp contract afn float %i.cu, %i.cv
  %.neg27.2 = fsub fast float 1.000000e+00, %i.cp
  %i.cw = fadd reassoc nnan nsz arcp contract afn float %.neg27.2, %.neg26.2
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, %i.bd
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, %i.cp
  %i.cz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cy, float 0.000000e+00)
  %i.da = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cz, float 1.000000e+00)
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cl
  store float %i.da, ptr %i.db, align 4, !tbaa !34
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store float %i.bd, ptr %i.dc, align 4, !tbaa !34
  %i.dd = add nuw i64 %.030, 1                    ; 2 uses
  %i.de = add i64 %.02429, 4
  %exitcond.not = icmp eq i64 %i.dd, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !300
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
  %.02934.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.d, %vector.body ]
  %.03033.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.a = and i64 %4, 7                            ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = select i1 %i.b, i64 8, i64 %i.a
  %n.vec = sub i64 %4, %i.c                       ; 3 uses
  %i.d = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = shl i64 %index, 2                        ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.f, align 4, !tbaa !34 ; 3 uses
  %i.g = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %wide.vec = load <32 x float>, ptr %i.h, align 4, !tbaa !34 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec42 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec43 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.i = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.j = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.i, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %wide.vec44 = load <32 x float>, ptr %i.k, align 4, !tbaa !34 ; 3 uses
  %strided.vec45 = shufflevector <32 x float> %wide.vec44, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec46 = shufflevector <32 x float> %wide.vec44, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec47 = shufflevector <32 x float> %wide.vec44, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.l = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec45, <8 x float> zeroinitializer)
  %i.m = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.l, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.n = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.j, splat (float 2.000000e+00) ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e
  %i.p = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec42, <8 x float> zeroinitializer)
  %i.q = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.p, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec46, <8 x float> zeroinitializer)
  %i.s = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.r, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.t = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.q, splat (float 2.000000e+00) ; 2 uses
  %i.u = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec43, <8 x float> zeroinitializer)
  %i.v = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.u, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.w = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec47, <8 x float> zeroinitializer)
  %i.x = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.w, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.y = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.v, splat (float 5.000000e-01)
  %i.z = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.v, splat (float 2.000000e+00) ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %i.z, %i.x
  %i.ab = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.z
  %i.ac = fsub fast <8 x float> splat (float 1.000000e+00), %i.x
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %i.ab, %i.ac
  %i.ae = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ad
  %predphi49 = select reassoc nsz arcp contract afn <8 x i1> %i.y, <8 x float> %i.ae, <8 x float> %i.aa
  %i.af = fsub reassoc nsz arcp contract afn <8 x float> %predphi49, %i.v
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %i.g, %i.af
  %i.ah = fadd reassoc nsz arcp contract afn <8 x float> %i.ag, %i.v
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ah, <8 x float> zeroinitializer)
  %i.aj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ai, <8 x float> splat (float 1.000000e+00))
  %i.ak = shufflevector <8 x float> %i.g, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.al = shufflevector <8 x float> %i.j, <8 x float> %i.q, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.am = fcmp reassoc nsz arcp contract afn ogt <16 x float> %i.al, splat (float 5.000000e-01)
  %i.an = shufflevector <8 x float> %i.n, <8 x float> %i.t, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ao = fsub reassoc nnan nsz arcp contract afn <16 x float> splat (float 2.000000e+00), %i.an
  %i.ap = shufflevector <8 x float> %i.m, <8 x float> %i.s, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aq = fsub fast <16 x float> splat (float 1.000000e+00), %i.ap
  %i.ar = fmul reassoc nsz arcp contract afn <16 x float> %i.ao, %i.aq
  %i.as = fsub reassoc nsz arcp contract afn <16 x float> splat (float 1.000000e+00), %i.ar
  %i.at = shufflevector <8 x float> %i.n, <8 x float> %i.t, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.au = shufflevector <8 x float> %i.m, <8 x float> %i.s, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.av = fmul reassoc nsz arcp contract afn <16 x float> %i.at, %i.au
  %i.aw = select reassoc nsz arcp contract afn <16 x i1> %i.am, <16 x float> %i.as, <16 x float> %i.av
  %i.ax = shufflevector <8 x float> %i.j, <8 x float> %i.q, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ay = fsub reassoc nsz arcp contract afn <16 x float> %i.aw, %i.ax
  %i.az = fmul reassoc nsz arcp contract afn <16 x float> %i.ak, %i.ay
  %i.ba = shufflevector <8 x float> %i.j, <8 x float> %i.q, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bb = fadd reassoc nsz arcp contract afn <16 x float> %i.az, %i.ba
  %i.bc = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bb, <16 x float> zeroinitializer)
  %i.bd = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bc, <16 x float> splat (float 1.000000e+00))
  %i.be = shufflevector <8 x float> %i.aj, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bd, <16 x float> %i.be, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.o, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %.lr.ph.preheader51, label %vector.body, !llvm.loop !305

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader51, %bb.j
  %.02934 = phi i64 [ %i.eb, %bb.j ], [ %.02934.ph, %.lr.ph.preheader51 ] ; 6 uses
  %.03033 = phi i64 [ %i.ea, %bb.j ], [ %.03033.ph, %.lr.ph.preheader51 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03033
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !34 ; 3 uses
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.bh ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02934
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !34
  %i.bl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bk, float 0.000000e+00)
  %i.bm = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bl, float 1.000000e+00) ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02934
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !34
  %i.bp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bo, float 0.000000e+00)
  %i.bq = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bp, float 1.000000e+00) ; 2 uses
  %i.br = fcmp reassoc nsz arcp contract afn ogt float %i.bm, 5.000000e-01
  %i.bs = fmul reassoc nnan nsz arcp contract afn float %i.bm, 2.000000e+00 ; 2 uses
  br i1 %i.br, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.bt = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.bs
  %i.bu = fsub fast float 1.000000e+00, %i.bq
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bt, %i.bu
  %i.bw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bv
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bs, %i.bq
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.by = phi reassoc nsz arcp contract afn float [ %i.bw, %bb.b ], [ %i.bx, %bb.c ]
  %i.bz = fsub reassoc nsz arcp contract afn float %i.by, %i.bm
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bi, %i.bz
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, %i.bm
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cb, float 0.000000e+00)
  %i.cd = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cc, float 1.000000e+00)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02934 ; 2 uses
  store float %i.cd, ptr %i.ce, align 4, !tbaa !34
  %i.cf = or disjoint i64 %.02934, 1              ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !34
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ch, float 0.000000e+00)
  %i.cj = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ci, float 1.000000e+00) ; 4 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cf
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !34
  %i.cm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cl, float 0.000000e+00)
  %i.cn = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cm, float 1.000000e+00) ; 2 uses
  %i.co = fcmp reassoc nsz arcp contract afn ogt float %i.cj, 5.000000e-01
  %i.cp = fmul reassoc nnan nsz arcp contract afn float %i.cj, 2.000000e+00 ; 2 uses
  br i1 %i.co, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.cn
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cr = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.cp
  %i.cs = fsub fast float 1.000000e+00, %i.cn
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cr, %i.cs
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
  store float %i.da, ptr %i.db, align 4, !tbaa !34
  %i.dc = or disjoint i64 %.02934, 2              ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !34
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.de, float 0.000000e+00)
  %i.dg = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.df, float 1.000000e+00) ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dc
  %i.di = load float, ptr %i.dh, align 4, !tbaa !34
  %i.dj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.di, float 0.000000e+00)
  %i.dk = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dj, float 1.000000e+00) ; 2 uses
  %i.dl = fcmp reassoc nsz arcp contract afn ogt float %i.dg, 5.000000e-01
  %i.dm = fmul reassoc nnan nsz arcp contract afn float %i.dg, 2.000000e+00 ; 2 uses
  br i1 %i.dl, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, %i.dk
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.do = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.dm
  %i.dp = fsub fast float 1.000000e+00, %i.dk
  %i.dq = fmul reassoc nsz arcp contract afn float %i.do, %i.dp
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
  store float %i.dx, ptr %i.dy, align 4, !tbaa !34
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store float %i.bh, ptr %i.dz, align 4, !tbaa !34
  %i.ea = add nuw i64 %.03033, 1                  ; 2 uses
  %i.eb = add i64 %.02934, 4
  %exitcond.not = icmp eq i64 %i.ea, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !306
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_softlight(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader59, label %vector.memcheck

.lr.ph.preheader59:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02934.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.i, %vector.body ]
  %.03033.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
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
  %bound047 = icmp ult ptr %2, %i.e
  %bound148 = icmp ult ptr %1, %i.b
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx = or i1 %found.conflict, %found.conflict49
  br i1 %conflict.rdx, label %.lr.ph.preheader59, label %vector.ph

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
  %i.l = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %wide.vec = load <32 x float>, ptr %i.m, align 4, !tbaa !34, !alias.scope !313 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec50 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec51 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.n = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.o = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.n, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %wide.vec52 = load <32 x float>, ptr %i.p, align 4, !tbaa !34, !alias.scope !314 ; 3 uses
  %strided.vec53 = shufflevector <32 x float> %wide.vec52, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec54 = shufflevector <32 x float> %wide.vec52, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec55 = shufflevector <32 x float> %wide.vec52, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.q = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec53, <8 x float> zeroinitializer)
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.q, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.t = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec50, <8 x float> zeroinitializer)
  %i.u = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.t, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.v = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec54, <8 x float> zeroinitializer)
  %i.w = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.v, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.x = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec51, <8 x float> zeroinitializer)
  %i.y = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.x, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.z = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec55, <8 x float> zeroinitializer)
  %i.aa = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.z, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.ab = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.aa, splat (float 5.000000e-01)
  %i.ac = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.aa, splat (float 5.000000e-01)
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %i.ac, %i.y
  %i.ae = fsub fast <8 x float> splat (float 1.000000e+00), %i.y
  %i.af = fsub fast <8 x float> splat (float 1.500000e+00), %i.aa
  %i.ag = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.af, %i.ae
  %i.ah = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ag
  %predphi57 = select reassoc nsz arcp contract afn <8 x i1> %i.ab, <8 x float> %i.ah, <8 x float> %i.ad
  %i.ai = fsub reassoc nsz arcp contract afn <8 x float> %predphi57, %i.y
  %i.aj = fmul reassoc nsz arcp contract afn <8 x float> %i.l, %i.ai
  %i.ak = fadd reassoc nsz arcp contract afn <8 x float> %i.aj, %i.y
  %i.al = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ak, <8 x float> zeroinitializer)
  %i.am = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.al, <8 x float> splat (float 1.000000e+00))
  %i.an = shufflevector <8 x float> %i.l, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ao = shufflevector <8 x float> %i.r, <8 x float> %i.w, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ap = fcmp reassoc nsz arcp contract afn ogt <16 x float> %i.ao, splat (float 5.000000e-01)
  %i.aq = shufflevector <8 x float> %i.r, <8 x float> %i.w, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ar = fsub fast <16 x float> splat (float 1.500000e+00), %i.aq
  %i.as = shufflevector <8 x float> %i.o, <8 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.at = fsub fast <16 x float> splat (float 1.000000e+00), %i.as
  %i.au = fmul reassoc nnan nsz arcp contract afn <16 x float> %i.ar, %i.at
  %i.av = fsub reassoc nnan nsz arcp contract afn <16 x float> splat (float 1.000000e+00), %i.au
  %i.aw = shufflevector <8 x float> %i.r, <8 x float> %i.w, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ax = fadd reassoc nnan nsz arcp contract afn <16 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = shufflevector <8 x float> %i.o, <8 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.az = fmul reassoc nsz arcp contract afn <16 x float> %i.ax, %i.ay
  %i.ba = select reassoc nsz arcp contract afn <16 x i1> %i.ap, <16 x float> %i.av, <16 x float> %i.az
  %i.bb = shufflevector <8 x float> %i.o, <8 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bc = fsub reassoc nsz arcp contract afn <16 x float> %i.ba, %i.bb
  %i.bd = fmul reassoc nsz arcp contract afn <16 x float> %i.an, %i.bc
  %i.be = shufflevector <8 x float> %i.o, <8 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bf = fadd reassoc nsz arcp contract afn <16 x float> %i.bd, %i.be
  %i.bg = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bf, <16 x float> zeroinitializer)
  %i.bh = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bg, <16 x float> splat (float 1.000000e+00))
  %i.bi = shufflevector <8 x float> %i.am, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bh, <16 x float> %i.bi, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.s, align 4, !tbaa !34, !alias.scope !315, !noalias !316
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %.lr.ph.preheader59, label %vector.body, !llvm.loop !311

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader59, %bb.j
  %.02934 = phi i64 [ %i.ef, %bb.j ], [ %.02934.ph, %.lr.ph.preheader59 ] ; 6 uses
  %.03033 = phi i64 [ %i.ee, %bb.j ], [ %.03033.ph, %.lr.ph.preheader59 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03033
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !34 ; 3 uses
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02934
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !34
  %i.bp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bo, float 0.000000e+00)
  %i.bq = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bp, float 1.000000e+00) ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02934
  %i.bs = load float, ptr %i.br, align 4, !tbaa !34
  %i.bt = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bs, float 0.000000e+00)
  %i.bu = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bt, float 1.000000e+00) ; 3 uses
  %i.bv = fcmp reassoc nsz arcp contract afn ogt float %i.bu, 5.000000e-01
  br i1 %i.bv, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.bw = fsub fast float 1.000000e+00, %i.bq
  %i.bx = fsub fast float 1.500000e+00, %i.bu
  %i.by = fmul reassoc nnan nsz arcp contract afn float %i.bx, %i.bw
  %i.bz = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.by
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ca = fadd reassoc nnan nsz arcp contract afn float %i.bu, 5.000000e-01
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, %i.bq
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cc = phi reassoc nsz arcp contract afn float [ %i.bz, %bb.b ], [ %i.cb, %bb.c ]
  %i.cd = fsub reassoc nsz arcp contract afn float %i.cc, %i.bq
  %i.ce = fmul reassoc nsz arcp contract afn float %i.bm, %i.cd
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, %i.bq
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cf, float 0.000000e+00)
  %i.ch = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cg, float 1.000000e+00)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02934 ; 2 uses
  store float %i.ch, ptr %i.ci, align 4, !tbaa !34
  %i.cj = or disjoint i64 %.02934, 1              ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !34
  %i.cm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cl, float 0.000000e+00)
  %i.cn = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cm, float 1.000000e+00) ; 4 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cj
  %i.cp = load float, ptr %i.co, align 4, !tbaa !34
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cp, float 0.000000e+00)
  %i.cr = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cq, float 1.000000e+00) ; 3 uses
  %i.cs = fcmp reassoc nsz arcp contract afn ogt float %i.cr, 5.000000e-01
  br i1 %i.cs, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ct = fadd reassoc nnan nsz arcp contract afn float %i.cr, 5.000000e-01
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, %i.cn
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cv = fsub fast float 1.000000e+00, %i.cn
  %i.cw = fsub fast float 1.500000e+00, %i.cr
  %i.cx = fmul reassoc nnan nsz arcp contract afn float %i.cw, %i.cv
  %i.cy = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.cx
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cz = phi reassoc nsz arcp contract afn float [ %i.cy, %bb.f ], [ %i.cu, %bb.e ]
  %i.da = fsub reassoc nsz arcp contract afn float %i.cz, %i.cn
  %i.db = fmul reassoc nsz arcp contract afn float %i.bm, %i.da
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, %i.cn
  %i.dd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dc, float 0.000000e+00)
  %i.de = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dd, float 1.000000e+00)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cj
  store float %i.de, ptr %i.df, align 4, !tbaa !34
  %i.dg = or disjoint i64 %.02934, 2              ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !34
  %i.dj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.di, float 0.000000e+00)
  %i.dk = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dj, float 1.000000e+00) ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !34
  %i.dn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dm, float 0.000000e+00)
  %i.do = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dn, float 1.000000e+00) ; 3 uses
  %i.dp = fcmp reassoc nsz arcp contract afn ogt float %i.do, 5.000000e-01
  br i1 %i.dp, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dq = fadd reassoc nnan nsz arcp contract afn float %i.do, 5.000000e-01
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dq, %i.dk
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ds = fsub fast float 1.000000e+00, %i.dk
  %i.dt = fsub fast float 1.500000e+00, %i.do
  %i.du = fmul reassoc nnan nsz arcp contract afn float %i.dt, %i.ds
  %i.dv = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.du
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dw = phi reassoc nsz arcp contract afn float [ %i.dv, %bb.i ], [ %i.dr, %bb.h ]
  %i.dx = fsub reassoc nsz arcp contract afn float %i.dw, %i.dk
  %i.dy = fmul reassoc nsz arcp contract afn float %i.bm, %i.dx
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, %i.dk
  %i.ea = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dz, float 0.000000e+00)
  %i.eb = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ea, float 1.000000e+00)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dg
  store float %i.eb, ptr %i.ec, align 4, !tbaa !34
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store float %i.bl, ptr %i.ed, align 4, !tbaa !34
  %i.ee = add nuw i64 %.03033, 1                  ; 2 uses
  %i.ef = add i64 %.02934, 4
  %exitcond.not = icmp eq i64 %i.ee, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !312
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_hardlight(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader59, label %vector.memcheck

.lr.ph.preheader59:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02934.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.i, %vector.body ]
  %.03033.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
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
  %bound047 = icmp ult ptr %2, %i.e
  %bound148 = icmp ult ptr %1, %i.b
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx = or i1 %found.conflict, %found.conflict49
  br i1 %conflict.rdx, label %.lr.ph.preheader59, label %vector.ph

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
  %i.l = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %wide.vec = load <32 x float>, ptr %i.m, align 4, !tbaa !34, !alias.scope !323 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec50 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec51 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.n = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.o = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.n, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %wide.vec52 = load <32 x float>, ptr %i.p, align 4, !tbaa !34, !alias.scope !324 ; 3 uses
  %strided.vec53 = shufflevector <32 x float> %wide.vec52, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec54 = shufflevector <32 x float> %wide.vec52, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec55 = shufflevector <32 x float> %wide.vec52, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.q = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec53, <8 x float> zeroinitializer)
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.q, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.s = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.o, splat (float 2.000000e+00) ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.u = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec50, <8 x float> zeroinitializer)
  %i.v = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.u, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.w = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec54, <8 x float> zeroinitializer)
  %i.x = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.w, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.y = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.v, splat (float 2.000000e+00) ; 2 uses
  %i.z = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec51, <8 x float> zeroinitializer)
  %i.aa = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.z, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.ab = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec55, <8 x float> zeroinitializer)
  %i.ac = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ab, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.ad = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ac, splat (float 5.000000e-01)
  %i.ae = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aa, splat (float 2.000000e+00) ; 2 uses
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %i.ae, %i.ac
  %i.ag = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.ae
  %i.ah = fsub fast <8 x float> splat (float 1.000000e+00), %i.ac
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.ag, %i.ah
  %i.aj = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ai
  %predphi57 = select reassoc nsz arcp contract afn <8 x i1> %i.ad, <8 x float> %i.aj, <8 x float> %i.af
  %i.ak = fsub reassoc nsz arcp contract afn <8 x float> %predphi57, %i.aa
  %i.al = fmul reassoc nsz arcp contract afn <8 x float> %i.l, %i.ak
  %i.am = fadd reassoc nsz arcp contract afn <8 x float> %i.al, %i.aa
  %i.an = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.am, <8 x float> zeroinitializer)
  %i.ao = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.an, <8 x float> splat (float 1.000000e+00))
  %i.ap = shufflevector <8 x float> %i.l, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aq = shufflevector <8 x float> %i.r, <8 x float> %i.x, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ar = fcmp reassoc nsz arcp contract afn ogt <16 x float> %i.aq, splat (float 5.000000e-01)
  %i.as = shufflevector <8 x float> %i.s, <8 x float> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.at = fsub reassoc nnan nsz arcp contract afn <16 x float> splat (float 2.000000e+00), %i.as
  %i.au = shufflevector <8 x float> %i.r, <8 x float> %i.x, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.av = fsub fast <16 x float> splat (float 1.000000e+00), %i.au
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
  %i.bz = fsub fast float 1.000000e+00, %i.bv
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
  %i.cx = fsub fast float 1.000000e+00, %i.cs
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
  %i.du = fsub fast float 1.000000e+00, %i.dp
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
  %i.y = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.r, splat (float 1.000000e+00)
  %i.z = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.v
  %i.aa = fdiv reassoc nsz arcp contract afn <8 x float> %i.o, %i.z
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.t, <8 x float> zeroinitializer, <8 x float> %i.x
  %predphi58 = select reassoc nsz arcp contract afn <8 x i1> %i.s, <8 x float> %i.aa, <8 x float> %predphi
  %predphi59 = select reassoc nsz arcp contract afn <8 x i1> %i.y, <8 x float> %predphi58, <8 x float> splat (float 1.000000e+00)
  %i.ab = fsub reassoc nsz arcp contract afn <8 x float> %predphi59, %i.o
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.l, %i.ab
  %i.ad = fadd reassoc nsz arcp contract afn <8 x float> %i.ac, %i.o
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.af = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec52, <8 x float> zeroinitializer)
  %i.ag = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.af, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.ah = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec56, <8 x float> zeroinitializer)
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ah, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.ai, splat (float 5.000000e-01)
  %i.ak = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.ai, zeroinitializer
  %i.al = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ag
  %i.am = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ai, splat (float 2.000000e+00) ; 2 uses
  %i.an = fdiv reassoc nsz arcp contract afn <8 x float> %i.al, %i.am
  %i.ao = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.an
  %i.ap = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.ai, splat (float 1.000000e+00)
  %i.aq = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.am
  %i.ar = fdiv reassoc nsz arcp contract afn <8 x float> %i.ag, %i.aq
  %predphi60 = select reassoc nsz arcp contract afn <8 x i1> %i.ap, <8 x float> splat (float 1.000000e+00), <8 x float> %i.ar
  %predphi61 = select reassoc nsz arcp contract afn <8 x i1> %i.aj, <8 x float> %i.ao, <8 x float> %predphi60
  %predphi62 = select reassoc nsz arcp contract afn <8 x i1> %i.ak, <8 x float> %predphi61, <8 x float> zeroinitializer
  %i.as = fsub reassoc nsz arcp contract afn <8 x float> %predphi62, %i.ag
  %i.at = fmul reassoc nsz arcp contract afn <8 x float> %i.l, %i.as
  %i.au = fadd reassoc nsz arcp contract afn <8 x float> %i.at, %i.ag
  %i.av = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec53, <8 x float> zeroinitializer)
  %i.aw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.av, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.ax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec57, <8 x float> zeroinitializer)
  %i.ay = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ax, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.az = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.ay, zeroinitializer
  %i.bb = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.aw
  %i.bc = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ay, splat (float 2.000000e+00) ; 2 uses
  %i.bd = fdiv reassoc nsz arcp contract afn <8 x float> %i.bb, %i.bc
  %i.be = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.bd
  %i.bf = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.ay, splat (float 1.000000e+00)
  %i.bg = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.bc
  %i.bh = fdiv reassoc nsz arcp contract afn <8 x float> %i.aw, %i.bg
  %predphi63 = select reassoc nsz arcp contract afn <8 x i1> %i.bf, <8 x float> splat (float 1.000000e+00), <8 x float> %i.bh
  %predphi64 = select reassoc nsz arcp contract afn <8 x i1> %i.az, <8 x float> %i.be, <8 x float> %predphi63
  %predphi65 = select reassoc nsz arcp contract afn <8 x i1> %i.ba, <8 x float> %predphi64, <8 x float> zeroinitializer
  %i.bi = fsub reassoc nsz arcp contract afn <8 x float> %predphi65, %i.aw
  %i.bj = fmul reassoc nsz arcp contract afn <8 x float> %i.l, %i.bi
  %i.bk = fadd reassoc nsz arcp contract afn <8 x float> %i.bj, %i.aw
  %i.bl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bk, <8 x float> zeroinitializer)
  %i.bm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bl, <8 x float> splat (float 1.000000e+00))
  %i.bn = shufflevector <8 x float> %i.ad, <8 x float> %i.au, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bo = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bn, <16 x float> zeroinitializer)
  %i.bp = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.bo, <16 x float> splat (float 1.000000e+00))
  %i.bq = shufflevector <8 x float> %i.bm, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bp, <16 x float> %i.bq, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ae, align 4, !tbaa !34, !alias.scope !335, !noalias !336
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %.lr.ph.preheader67, label %vector.body, !llvm.loop !331

._crit_edge:                                      ; preds = %bb.p, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader67, %bb.p
  %.03136 = phi i64 [ %i.ew, %bb.p ], [ %.03136.ph, %.lr.ph.preheader67 ] ; 6 uses
  %.03235 = phi i64 [ %i.ev, %bb.p ], [ %.03235.ph, %.lr.ph.preheader67 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03235
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !34 ; 3 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bt ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03136
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !34
  %i.bx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bw, float 0.000000e+00)
  %i.by = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bx, float 1.000000e+00) ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.03136
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !34
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ca, float 0.000000e+00)
  %i.cc = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cb, float 1.000000e+00) ; 5 uses
  %i.cd = fcmp reassoc nsz arcp contract afn ogt float %i.cc, 5.000000e-01
  br i1 %i.cd, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.ce = fcmp reassoc nsz arcp contract afn ult float %i.cc, 1.000000e+00
  br i1 %i.ce, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.cf = fmul reassoc nnan nsz arcp contract afn float %i.cc, 2.000000e+00
  %i.cg = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.cf
  %i.ch = fdiv reassoc nsz arcp contract afn float %i.by, %i.cg
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.ci = fcmp reassoc nsz arcp contract afn ugt float %i.cc, 0.000000e+00
  br i1 %i.ci, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.by
  %i.ck = fmul reassoc nnan nsz arcp contract afn float %i.cc, 2.000000e+00
  %i.cl = fdiv reassoc nsz arcp contract afn float %i.cj, %i.ck
  %i.cm = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cl
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.cn = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.b ], [ %i.ch, %bb.c ], [ %i.cm, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.co = fsub reassoc nsz arcp contract afn float %i.cn, %i.by
  %i.cp = fmul reassoc nsz arcp contract afn float %i.bu, %i.co
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, %i.by
  %i.cr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cq, float 0.000000e+00)
  %i.cs = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cr, float 1.000000e+00)
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03136 ; 2 uses
  store float %i.cs, ptr %i.ct, align 4, !tbaa !34
  %i.cu = or disjoint i64 %.03136, 1              ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !34
  %i.cx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cw, float 0.000000e+00)
  %i.cy = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cx, float 1.000000e+00) ; 4 uses
end_hunk_0
