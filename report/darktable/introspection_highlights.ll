Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 97
begin_hunk_0_@wavelets_process:bb.a

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.memcheck ] ; 3 uses
  %vec.ind120 = phi <8 x i32> [ %vec.ind.next160, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.memcheck ] ; 3 uses
  %i.ep = add i64 %index, %i.ek
  %i.eq = shl i64 %i.ep, 2                        ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.es = sub nsw <8 x i32> %vec.ind120, %broadcast.splat
  %i.et = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.es, <8 x i32> zeroinitializer)
  %i.eu = shl nuw nsw <8 x i32> %i.et, splat (i32 2)
  %i.ev = zext nneg <8 x i32> %i.eu to <8 x i64>
  %i.ew = sub nsw <8 x i32> %vec.ind120, %broadcast.splat113
  %i.ex = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ew, <8 x i32> zeroinitializer)
  %i.ey = shl nuw nsw <8 x i32> %i.ex, splat (i32 2)
  %i.ez = zext nneg <8 x i32> %i.ey to <8 x i64>
  %i.fa = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat115
  %i.fb = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %i.fa, <8 x i64> %broadcast.splat117)
  %i.fc = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat119
  %i.fd = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %i.fc, <8 x i64> %broadcast.splat117)
  %wide.gep = getelementptr [4 x i8], ptr %i.j, <8 x i64> %i.ev ; 4 uses
  %wide.gep121 = getelementptr [4 x i8], ptr %i.j, <8 x i64> %i.ez ; 4 uses
  %i.fe = shl i64 %index, 4
  %i.ff = getelementptr i8, ptr %i.j, i64 %i.fe
  %i.fg = shl <8 x i64> %i.fb, splat (i64 4)
  %wide.gep122 = getelementptr i8, ptr %i.j, <8 x i64> %i.fg ; 4 uses
  %i.fh = shl <8 x i64> %i.fd, splat (i64 4)
  %wide.gep123 = getelementptr i8, ptr %i.j, <8 x i64> %i.fh ; 4 uses
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.masked.gather124 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep121, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.vec = load <32 x float>, ptr %i.ff, align 64, !tbaa !12, !alias.scope !618, !noalias !615 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec125 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec126 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec127 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.fi = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float 3.750000e-01)
  %wide.masked.gather128 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep122, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.masked.gather129 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep123, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %i.fj = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather128, %wide.masked.gather124
  %i.fk = fmul reassoc nsz arcp contract afn <8 x float> %i.fj, splat (float 2.500000e-01)
  %i.fl = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather129, %wide.masked.gather
  %i.fm = fmul reassoc nsz arcp contract afn <8 x float> %i.fl, splat (float 6.250000e-02)
  %i.fn = fadd reassoc nsz arcp contract afn <8 x float> %i.fk, %i.fi
  %i.fo = fadd reassoc nsz arcp contract afn <8 x float> %i.fn, %i.fm ; 2 uses
  %i.fp = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fo, zeroinitializer
  %i.fq = select reassoc nsz arcp contract afn <8 x i1> %i.fp, <8 x float> zeroinitializer, <8 x float> %i.fo ; 2 uses
  %wide.gep130 = getelementptr i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather131 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep130, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.gep132 = getelementptr i8, <8 x ptr> %wide.gep121, i64 4
  %wide.masked.gather133 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep132, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %i.fr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec125, splat (float 3.750000e-01)
  %wide.gep134 = getelementptr i8, <8 x ptr> %wide.gep122, i64 4
  %wide.masked.gather135 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep134, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.gep136 = getelementptr i8, <8 x ptr> %wide.gep123, i64 4
  %wide.masked.gather137 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep136, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %i.fs = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather135, %wide.masked.gather133
  %i.ft = fmul reassoc nsz arcp contract afn <8 x float> %i.fs, splat (float 2.500000e-01)
  %i.fu = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather137, %wide.masked.gather131
  %i.fv = fmul reassoc nsz arcp contract afn <8 x float> %i.fu, splat (float 6.250000e-02)
  %i.fw = fadd reassoc nsz arcp contract afn <8 x float> %i.ft, %i.fr
  %i.fx = fadd reassoc nsz arcp contract afn <8 x float> %i.fw, %i.fv ; 2 uses
  %i.fy = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fx, zeroinitializer
  %i.fz = select reassoc nsz arcp contract afn <8 x i1> %i.fy, <8 x float> zeroinitializer, <8 x float> %i.fx ; 2 uses
  %wide.gep138 = getelementptr i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather139 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep138, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.gep140 = getelementptr i8, <8 x ptr> %wide.gep121, i64 8
  %wide.masked.gather141 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep140, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %i.ga = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec126, splat (float 3.750000e-01)
  %wide.gep142 = getelementptr i8, <8 x ptr> %wide.gep122, i64 8
  %wide.masked.gather143 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep142, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.gep144 = getelementptr i8, <8 x ptr> %wide.gep123, i64 8
  %wide.masked.gather145 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep144, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %i.gb = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather143, %wide.masked.gather141
  %i.gc = fmul reassoc nsz arcp contract afn <8 x float> %i.gb, splat (float 2.500000e-01)
  %i.gd = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather145, %wide.masked.gather139
  %i.ge = fmul reassoc nsz arcp contract afn <8 x float> %i.gd, splat (float 6.250000e-02)
  %i.gf = fadd reassoc nsz arcp contract afn <8 x float> %i.gc, %i.ga
  %i.gg = fadd reassoc nsz arcp contract afn <8 x float> %i.gf, %i.ge ; 2 uses
  %i.gh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gg, zeroinitializer
  %i.gi = select reassoc nsz arcp contract afn <8 x i1> %i.gh, <8 x float> zeroinitializer, <8 x float> %i.gg ; 2 uses
  %wide.gep146 = getelementptr i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather147 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep146, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.gep148 = getelementptr i8, <8 x ptr> %wide.gep121, i64 12
  %wide.masked.gather149 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep148, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec127, splat (float 3.750000e-01)
  %wide.gep150 = getelementptr i8, <8 x ptr> %wide.gep122, i64 12
  %wide.masked.gather151 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep150, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.gep152 = getelementptr i8, <8 x ptr> %wide.gep123, i64 12
  %wide.masked.gather153 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep152, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %i.gk = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather151, %wide.masked.gather149
  %i.gl = fmul reassoc nsz arcp contract afn <8 x float> %i.gk, splat (float 2.500000e-01)
  %i.gm = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather153, %wide.masked.gather147
  %i.gn = fmul reassoc nsz arcp contract afn <8 x float> %i.gm, splat (float 6.250000e-02)
  %i.go = fadd reassoc nsz arcp contract afn <8 x float> %i.gl, %i.gj
  %i.gp = fadd reassoc nsz arcp contract afn <8 x float> %i.go, %i.gn ; 2 uses
  %i.gq = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gp, zeroinitializer
  %i.gr = select reassoc nsz arcp contract afn <8 x i1> %i.gq, <8 x float> zeroinitializer, <8 x float> %i.gp ; 2 uses
  %i.gs = shufflevector <8 x float> %i.fq, <8 x float> %i.fz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gt = shufflevector <8 x float> %i.gi, <8 x float> %i.gr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.gs, <16 x float> %i.gt, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.er, align 4, !tbaa !12, !alias.scope !620
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.eq
  %wide.vec154 = load <32 x float>, ptr %i.gu, align 4, !tbaa !12, !noalias !615 ; 4 uses
  %strided.vec155 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec156 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec157 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec158 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.gv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec155, %i.fq
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.eq
  %i.gx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec156, %i.fz
  %i.gy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec157, %i.gi
  %i.gz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec158, %i.gr
  %i.ha = shufflevector <8 x float> %i.gv, <8 x float> %i.gx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hb = shufflevector <8 x float> %i.gy, <8 x float> %i.gz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec159 = shufflevector <16 x float> %i.ha, <16 x float> %i.hb, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec159, ptr %i.gw, align 4, !tbaa !12, !alias.scope !621, !noalias !615
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next160 = add <8 x i32> %vec.ind120, splat (i32 8)
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !603

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.03663.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %dwt_interleave_rows.exit.i
  %i.hd = add nuw nsw i64 %.03764.i, 1            ; 2 uses
  %exitcond69.not.i = icmp eq i64 %i.hd, %4
  br i1 %exitcond69.not.i, label %decompose_2D_Bspline.exit, label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03663.i = phi i64 [ %i.iq, %scalar.ph ], [ %.03663.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.he = add i64 %.03663.i, %i.ek
  %i.hf = shl i64 %i.he, 2                        ; 3 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.hf
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.hh = trunc i64 %.03663.i to i32              ; 2 uses
  %i.hi = sub nsw i32 %i.hh, %i.ak
  %i.hj = call i32 @llvm.smax.i32(i32 %i.hi, i32 0)
  %i.hk = shl nuw nsw i32 %i.hj, 2
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = sub nsw i32 %i.hh, %i.ai
  %i.hn = call i32 @llvm.smax.i32(i32 %i.hm, i32 0)
  %i.ho = shl nuw nsw i32 %i.hn, 2
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = add nuw nsw i64 %.03663.i, %i.al
  %..i41.i = call i64 @llvm.umin.i64(i64 %i.hq, i64 %i.n)
  %i.hr = add nuw nsw i64 %.03663.i, %i.am
  %i.hs = call i64 @llvm.umin.i64(i64 %i.hr, i64 %i.n)
  %i.ht = getelementptr [4 x i8], ptr %i.j, i64 %i.hl
  %i.hu = getelementptr [4 x i8], ptr %i.j, i64 %i.hp
  %.idx.i.i = shl i64 %.03663.i, 4
  %i.hv = getelementptr i8, ptr %i.j, i64 %.idx.i.i
  %.idx25.i.i = shl i64 %..i41.i, 4
  %i.hw = getelementptr i8, ptr %i.j, i64 %.idx25.i.i
  %.idx26.i.i = shl i64 %i.hs, 4
  %i.hx = getelementptr i8, ptr %i.j, i64 %.idx26.i.i
  %i.hy = load <4 x float>, ptr %i.ht, align 16, !tbaa !12, !alias.scope !618, !noalias !615
  %i.hz = load <4 x float>, ptr %i.hu, align 16, !tbaa !12, !alias.scope !618, !noalias !615
  %i.ia = load <4 x float>, ptr %i.hv, align 16, !tbaa !12, !alias.scope !618, !noalias !615
  %i.ib = fmul reassoc nsz arcp contract afn <4 x float> %i.ia, splat (float 3.750000e-01)
  %i.ic = load <4 x float>, ptr %i.hw, align 16, !tbaa !12, !alias.scope !618, !noalias !615
  %i.id = load <4 x float>, ptr %i.hx, align 16, !tbaa !12, !alias.scope !618, !noalias !615
  %i.ie = fadd reassoc nsz arcp contract afn <4 x float> %i.ic, %i.hz
  %i.if = fmul reassoc nsz arcp contract afn <4 x float> %i.ie, splat (float 2.500000e-01)
  %i.ig = fadd reassoc nsz arcp contract afn <4 x float> %i.id, %i.hy
  %i.ih = fmul reassoc nsz arcp contract afn <4 x float> %i.ig, splat (float 6.250000e-02)
  %i.ii = fadd reassoc nsz arcp contract afn <4 x float> %i.if, %i.ib
  %i.ij = fadd reassoc nsz arcp contract afn <4 x float> %i.ii, %i.ih ; 2 uses
  %i.ik = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ij, zeroinitializer
  %i.il = select <4 x i1> %i.ik, <4 x float> zeroinitializer, <4 x float> %i.ij ; 2 uses
  store <4 x float> %i.il, ptr %i.hg, align 4, !tbaa !12, !alias.scope !620
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.hf
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.hf
  %i.io = load <4 x float>, ptr %i.im, align 4, !tbaa !12, !noalias !615
  %i.ip = fsub reassoc nsz arcp contract afn <4 x float> %i.io, %i.il
  store <4 x float> %i.ip, ptr %i.in, align 4, !tbaa !12, !noalias !615
  %i.iq = add nuw nsw i64 %.03663.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.iq, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !604

decompose_2D_Bspline.exit:                        ; preds = %._crit_edge.i, %bb.c
  %.not80 = icmp eq i32 %.054119, %i.k            ; 2 uses
  %i.ir = shl nuw nsw i32 %.054119, 2
  %i.is = call fastcc float @equivalent_sigma_at_step(i32 noundef %i.ir) ; 2 uses
  %i.it = fmul reassoc nsz arcp contract afn float %i.is, %i.is ; 4 uses
  br i1 %i.o, label %bb.i, label %bb.s

bb.i:                                             ; preds = %decompose_2D_Bspline.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %.0, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ]
  br i1 %.not.i, label %guide_laplacians.exit, label %.lr.ph321.i

.lr.ph321.i:                                      ; preds = %bb.i
  %.not.i.i59 = icmp slt i32 %i.ai, %i.l
  %.reass318.i = add i32 %invariant.op.i, %i.ai
  %i.iu = add nsw i32 %i.ai, -1
  %i.iv = and i32 %i.iu, %i.l                     ; 3 uses
  %i.iw = icmp eq i32 %i.iv, 0
  %i.ix = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.it
  %i.iy = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.it
  %i.iz = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.it
  %i.ja = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.it
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i65, %.lr.ph321.i
  %.0252319.i = phi i64 [ 0, %.lr.ph321.i ], [ %i.kb, %._crit_edge.i65 ] ; 2 uses
  %i.jb = trunc i64 %.0252319.i to i32            ; 5 uses
  br i1 %.not.i.i59, label %bb.k, label %dwt_interleave_rows.exit.i61

bb.k:                                             ; preds = %bb.j
  %i.jc = sdiv i32 %.reass318.i, %i.ai            ; 4 uses
  br i1 %i.iw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.jd = mul nsw i32 %i.iv, %i.jc                ; 2 uses
  %i.je = icmp sgt i32 %i.jd, %i.jb
  br i1 %i.je, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.jf = sdiv i32 %i.jb, %i.jc
  %i.jg = srem i32 %i.jb, %i.jc
  %i.jh = shl nsw i32 %i.jg, %.054119
  %i.ji = add nsw i32 %i.jh, %i.jf
  br label %dwt_interleave_rows.exit.i61

bb.n:                                             ; preds = %bb.l
  %i.jj = sub nsw i32 %i.jb, %i.jd                ; 2 uses
  %i.jk = add nsw i32 %i.jc, -1                   ; 2 uses
  %i.jl = sdiv i32 %i.jj, %i.jk
  %i.jm = add nsw i32 %i.jl, %i.iv
  %i.jn = srem i32 %i.jj, %i.jk
  %i.jo = shl nsw i32 %i.jn, %.054119
  %i.jp = add nsw i32 %i.jm, %i.jo
  br label %dwt_interleave_rows.exit.i61

dwt_interleave_rows.exit.i61:                     ; preds = %bb.n, %bb.m, %bb.j
  %.1.i.i62 = phi i32 [ %i.jb, %bb.j ], [ %i.ji, %bb.m ], [ %i.jp, %bb.n ] ; 4 uses
  %i.jq = sub nsw i32 %.1.i.i62, %i.ai
  %i.jr = call i32 @llvm.smax.i32(i32 %i.jq, i32 0)
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = mul i64 %3, %i.js                       ; 3 uses
  %i.ju = sext i32 %.1.i.i62 to i64
  %i.jv = mul i64 %3, %i.ju                       ; 3 uses
  %i.jw = add i32 %.1.i.i62, %i.ai
  %..i = call i32 @llvm.smin.i32(i32 %i.jw, i32 %invariant.op.i)
  %i.jx = sext i32 %..i to i64
  %i.jy = mul i64 %3, %i.jx                       ; 3 uses
  br i1 %.not.i40.i, label %._crit_edge.i65, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %dwt_interleave_rows.exit.i61
  %i.jz = add nsw i32 %.1.i.i62, 3
  %i.ka = sext i32 %i.jz to i64
  br label %bb.o

._crit_edge.i65:                                  ; preds = %.thread290.i, %dwt_interleave_rows.exit.i61
  %i.kb = add nuw nsw i64 %.0252319.i, 1          ; 2 uses
  %exitcond330.not.i = icmp eq i64 %i.kb, %4
  br i1 %exitcond330.not.i, label %guide_laplacians.exit, label %bb.j

bb.o:                                             ; preds = %.thread290.i, %.lr.ph.i63
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i63 ], [ %indvars.iv.next.i, %.thread290.i ] ; 6 uses
  %i.kc = add i64 %indvars.iv.i, %i.jv
  %i.kd = shl i64 %i.kc, 2                        ; 7 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !12, !alias.scope !624 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !626
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.kd ; 2 uses
  %i.ki = or disjoint i64 %i.kd, 1                ; 2 uses
  %i.kj = or disjoint i64 %i.kd, 2                ; 3 uses
  %i.kk = load <4 x float>, ptr %i.kh, align 16, !tbaa !12, !alias.scope !622 ; 10 uses
  store <4 x float> %i.kk, ptr %i.a, align 16, !tbaa !12, !noalias !626
  %i.kl = fcmp reassoc nsz arcp contract afn ogt float %i.kg, 0.000000e+00 ; 2 uses
  br i1 %i.kl, label %.preheader294.i, label %bb.p

.preheader294.i:                                  ; preds = %bb.o
  %i.km = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.kn = sub i32 %i.km, %i.ai
  %i.ko = call i32 @llvm.smax.i32(i32 %i.kn, i32 0)
  %i.kp = zext nneg i32 %i.ko to i64              ; 3 uses
  %i.kq = add i32 %i.ai, %i.km
  %.269.i = call i32 @llvm.smin.i32(i32 %i.kq, i32 %i.q)
  %i.kr = sext i32 %.269.i to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !626
  %i.ks = add i64 %i.jt, %i.kp
  %.idx.i = shl i64 %i.ks, 4
  %i.kt = getelementptr inbounds nuw i8, ptr %6, i64 %.idx.i
  %i.ku = add i64 %indvars.iv.i, %i.jt
  %.idx262.i = shl i64 %i.ku, 4
  %i.kv = getelementptr inbounds nuw i8, ptr %6, i64 %.idx262.i
  %i.kw = add i64 %i.jt, %i.kr
  %.idx263.i = shl i64 %i.kw, 4
  %i.kx = getelementptr inbounds nuw i8, ptr %6, i64 %.idx263.i
  %i.ky = add i64 %i.jv, %i.kp
  %.idx264.i = shl i64 %i.ky, 4
  %i.kz = getelementptr inbounds nuw i8, ptr %6, i64 %.idx264.i
  %i.la = add i64 %i.jv, %i.kr
  %.idx265.i = shl i64 %i.la, 4
  %i.lb = getelementptr i8, ptr %6, i64 %.idx265.i
  %i.lc = add i64 %i.jy, %i.kp
  %.idx266.i = shl i64 %i.lc, 4
  %i.ld = getelementptr i8, ptr %6, i64 %.idx266.i
  %i.le = add i64 %indvars.iv.i, %i.jy
  %.idx267.i = shl i64 %i.le, 4
  %i.lf = getelementptr i8, ptr %6, i64 %.idx267.i
  %i.lg = add i64 %i.jy, %i.kr
  %.idx268.i = shl i64 %i.lg, 4
  %i.lh = getelementptr i8, ptr %6, i64 %.idx268.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kt, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kv, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kx, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kz, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kh, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.lb, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ld, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.lf, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.lh, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33, !noalias !626
  %i.li = load <4 x float>, ptr %i.b, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.lj = load <4 x float>, ptr %i.u, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.lk = load <4 x float>, ptr %i.v, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.ll = load <4 x float>, ptr %i.w, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.lm = load <4 x float>, ptr %i.x, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.ln = load <4 x float>, ptr %i.y, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.lo = load <4 x float>, ptr %i.z, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.lp = load <4 x float>, ptr %i.aa, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.lq = load <4 x float>, ptr %i.ab, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.lr = fadd reassoc nsz arcp contract afn <4 x float> %i.lj, %i.li
  %i.ls = fadd reassoc nsz arcp contract afn <4 x float> %i.lr, %i.lk
  %i.lt = fadd reassoc nsz arcp contract afn <4 x float> %i.ls, %i.ll
  %i.lu = fadd reassoc nsz arcp contract afn <4 x float> %i.lt, %i.lm
  %i.lv = fadd reassoc nsz arcp contract afn <4 x float> %i.lu, %i.ln
  %i.lw = fadd reassoc nsz arcp contract afn <4 x float> %i.lv, %i.lo
  %i.lx = fadd reassoc nsz arcp contract afn <4 x float> %i.lw, %i.lp
  %i.ly = fadd reassoc nsz arcp contract afn <4 x float> %i.lx, %i.lq
  %i.lz = fmul reassoc nsz arcp contract afn <4 x float> %i.ly, splat (float f0x3DE38E39) ; 14 uses
  store <4 x float> %i.lz, ptr %i.c, align 16, !tbaa !12, !noalias !626
  %i.ma = fsub reassoc nsz arcp contract afn <4 x float> %i.li, %i.lz ; 3 uses
  %i.mb = fmul reassoc nsz arcp contract afn <4 x float> %i.ma, %i.ma
  %i.mc = fsub reassoc nsz arcp contract afn <4 x float> %i.lj, %i.lz ; 3 uses
  %i.md = fmul reassoc nsz arcp contract afn <4 x float> %i.mc, %i.mc
  %i.me = fadd reassoc nsz arcp contract afn <4 x float> %i.md, %i.mb
  %i.mf = fsub reassoc nsz arcp contract afn <4 x float> %i.lk, %i.lz ; 3 uses
  %i.mg = fmul reassoc nsz arcp contract afn <4 x float> %i.mf, %i.mf
  %i.mh = fadd reassoc nsz arcp contract afn <4 x float> %i.me, %i.mg
  %i.mi = fsub reassoc nsz arcp contract afn <4 x float> %i.ll, %i.lz ; 3 uses
  %i.mj = fmul reassoc nsz arcp contract afn <4 x float> %i.mi, %i.mi
  %i.mk = fadd reassoc nsz arcp contract afn <4 x float> %i.mh, %i.mj
  %i.ml = fsub reassoc nsz arcp contract afn <4 x float> %i.lm, %i.lz ; 3 uses
  %i.mm = fmul reassoc nsz arcp contract afn <4 x float> %i.ml, %i.ml
  %i.mn = fadd reassoc nsz arcp contract afn <4 x float> %i.mk, %i.mm
  %i.mo = fsub reassoc nsz arcp contract afn <4 x float> %i.ln, %i.lz ; 3 uses
  %i.mp = fmul reassoc nsz arcp contract afn <4 x float> %i.mo, %i.mo
  %i.mq = fadd reassoc nsz arcp contract afn <4 x float> %i.mn, %i.mp
  %i.mr = fsub reassoc nsz arcp contract afn <4 x float> %i.lo, %i.lz ; 3 uses
  %i.ms = fmul reassoc nsz arcp contract afn <4 x float> %i.mr, %i.mr
  %i.mt = fadd reassoc nsz arcp contract afn <4 x float> %i.mq, %i.ms
  %i.mu = fsub reassoc nsz arcp contract afn <4 x float> %i.lp, %i.lz ; 3 uses
  %i.mv = fmul reassoc nsz arcp contract afn <4 x float> %i.mu, %i.mu
  %i.mw = fadd reassoc nsz arcp contract afn <4 x float> %i.mt, %i.mv
  %i.mx = fsub reassoc nsz arcp contract afn <4 x float> %i.lq, %i.lz ; 3 uses
  %i.my = fmul reassoc nsz arcp contract afn <4 x float> %i.mx, %i.mx
  %i.mz = fadd reassoc nsz arcp contract afn <4 x float> %i.mw, %i.my
  %i.na = fmul reassoc nsz arcp contract afn <4 x float> %i.mz, splat (float f0x3DE38E39) ; 4 uses
  store <4 x float> %i.na, ptr %i.d, align 16, !tbaa !12, !noalias !626
  %i.nb = extractelement <4 x float> %i.na, i64 0 ; 2 uses
  %i.nc = fcmp reassoc nsz arcp contract afn ogt float %i.nb, 0.000000e+00 ; 2 uses
  %spec.select.i66 = select i1 %i.nc, i64 0, i64 3
  %spec.select270.i = select nsz i1 %i.nc, float %i.nb, float 0.000000e+00 ; 2 uses
  %i.nd = extractelement <4 x float> %i.na, i64 1 ; 2 uses
  %i.ne = fcmp reassoc nsz arcp contract afn ogt float %i.nd, %spec.select270.i ; 2 uses
  %spec.select.1.i = select i1 %i.ne, i64 1, i64 %spec.select.i66
  %spec.select270.1.i = select nsz i1 %i.ne, float %i.nd, float %spec.select270.i
  %i.nf = extractelement <4 x float> %i.na, i64 2
  %i.ng = fcmp reassoc nsz arcp contract afn ogt float %i.nf, %spec.select270.1.i
  %spec.select.2.i = select i1 %i.ng, i64 2, i64 %spec.select.1.i ; 12 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %spec.select.2.i
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !12, !noalias !626 ; 13 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %spec.select.2.i
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !12, !noalias !626
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %spec.select.2.i
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !12, !noalias !626
  %i.nn = fsub reassoc nsz arcp contract afn float %i.nk, %i.ni
  %factor.op.fmul.i = fmul reassoc nsz arcp contract afn float %i.nn, f0x3DE38E39
  %i.no = insertelement <4 x float> poison, float %factor.op.fmul.i, i64 0
  %i.np = shufflevector <4 x float> %i.no, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nq = fmul reassoc nsz arcp contract afn <4 x float> %i.np, %i.ma
  %i.nr = fsub reassoc nsz arcp contract afn float %i.nm, %i.ni
  %factor.op.fmul.1.i = fmul reassoc nsz arcp contract afn float %i.nr, f0x3DE38E39
end_hunk_0
begin_hunk_1_@wavelets_process:bb.a
  %i.sb = fadd reassoc nsz arcp contract afn float %i.sa, %i.ry
  %i.sc = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sb, float 0.000000e+00) ; 3 uses
  store float %i.sc, ptr %i.rx, align 8, !tbaa !12, !alias.scope !625
  %or.cond3.i = and i1 %i.ac, %i.kl
  br i1 %or.cond3.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader295.preheader.i
  %i.sd = fmul reassoc nsz arcp contract afn <2 x float> %i.rv, %i.ah ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.sg = fmul reassoc nsz arcp contract afn float %i.sc, %10 ; 3 uses
  %i.sh = add nuw nsw i64 %indvars.iv.i, 1        ; 2 uses
  %i.si = mul i64 %i.sh, 7109453100751455733      ; 2 uses
  %i.sj = lshr i64 %i.si, 28
  %i.sk = xor i64 %i.sj, %i.si
  %i.sl = mul i64 %i.sk, -3808689974395783757
  %i.sm = lshr i64 %i.sl, 32
  %i.sn = trunc nuw i64 %i.sm to i32              ; 2 uses
  %i.so = mul nsw i64 %i.sh, %i.ka                ; 2 uses
  %i.sp = lshr i64 %i.so, 33
  %i.sq = xor i64 %i.sp, %i.so
  %i.sr = mul i64 %i.sq, 7109453100751455733      ; 2 uses
  %i.ss = lshr i64 %i.sr, 28
  %i.st = xor i64 %i.ss, %i.sr
  %i.su = mul i64 %i.st, -3808689974395783757
  %i.sv = lshr i64 %i.su, 32
  %i.sw = trunc nuw i64 %i.sv to i32              ; 3 uses
  %i.sx = shl i32 %i.sw, 9
  %i.sy = xor i32 %i.sn, 635086878                ; 2 uses
  %i.sz = xor i32 %i.sw, -1171427716              ; 3 uses
  %i.ta = xor i32 %i.sy, %i.sw                    ; 3 uses
  %i.tb = xor i32 %i.sz, %i.sn                    ; 2 uses
  %i.tc = xor i32 %i.sx, %i.sy
  %i.td = call noundef i32 @llvm.fshl.i32(i32 %i.sz, i32 %i.sz, i32 11)
  %i.te = shl i32 %i.ta, 9
  %i.tf = xor i32 %i.tc, %i.tb                    ; 2 uses
  %i.tg = xor i32 %i.td, %i.ta                    ; 3 uses
  %i.th = xor i32 %i.tf, %i.ta                    ; 3 uses
  %i.ti = xor i32 %i.tg, %i.tb                    ; 2 uses
  %i.tj = xor i32 %i.tf, %i.te
  %i.tk = call noundef i32 @llvm.fshl.i32(i32 %i.tg, i32 %i.tg, i32 11)
  %i.tl = shl i32 %i.th, 9
  %i.tm = xor i32 %i.tj, %i.ti                    ; 2 uses
  %i.tn = xor i32 %i.th, %i.tk                    ; 3 uses
  %i.to = xor i32 %i.tm, %i.th                    ; 3 uses
  %i.tp = xor i32 %i.tn, %i.ti                    ; 2 uses
  %i.tq = xor i32 %i.tm, %i.tl
  %i.tr = call noundef i32 @llvm.fshl.i32(i32 %i.tn, i32 %i.tn, i32 11)
  %i.ts = shl i32 %i.to, 9
  %i.tt = xor i32 %i.tq, %i.tp                    ; 2 uses
  %i.tu = xor i32 %i.to, %i.tr                    ; 3 uses
  %i.tv = xor i32 %i.tt, %i.to                    ; 3 uses
  %i.tw = xor i32 %i.tt, %i.ts
  %i.tx = shl i32 %i.tv, 9
  %i.ty = xor i32 %i.tu, %i.tp                    ; 3 uses
  %i.tz = call noundef i32 @llvm.fshl.i32(i32 %i.tu, i32 %i.tu, i32 11) ; 2 uses
  %i.ua = xor i32 %i.tw, %i.ty                    ; 2 uses
  %i.ub = xor i32 %i.tv, %i.tz                    ; 3 uses
  %i.uc = xor i32 %i.ua, %i.tv                    ; 3 uses
  %i.ud = xor i32 %i.ub, %i.ty                    ; 3 uses
  %i.ue = xor i32 %i.ua, %i.tx
  %i.uf = call noundef i32 @llvm.fshl.i32(i32 %i.ub, i32 %i.ub, i32 11) ; 2 uses
  %i.ug = add i32 %i.uf, %i.ud
  %i.uh = shl i32 %i.uc, 9
  %i.ui = xor i32 %i.ue, %i.ud                    ; 2 uses
  %i.uj = xor i32 %i.uc, %i.uf                    ; 3 uses
  %i.uk = xor i32 %i.ui, %i.uc                    ; 3 uses
  %i.ul = xor i32 %i.uj, %i.ud                    ; 3 uses
  %i.um = xor i32 %i.ui, %i.uh
  %i.un = call noundef i32 @llvm.fshl.i32(i32 %i.uj, i32 %i.uj, i32 11) ; 2 uses
  %i.uo = lshr i32 %i.ug, 8
  %i.up = uitofp reassoc nsz arcp contract afn nneg i32 %i.uo to float
  %i.uq = shl i32 %i.uk, 9
  %i.ur = xor i32 %i.um, %i.ul                    ; 2 uses
  %i.us = xor i32 %i.uk, %i.un                    ; 3 uses
  %i.ut = xor i32 %i.ur, %i.uk                    ; 2 uses
  %i.uu = xor i32 %i.us, %i.ul                    ; 3 uses
  %i.uv = xor i32 %i.ur, %i.uq
  %i.uw = call noundef i32 @llvm.fshl.i32(i32 %i.us, i32 %i.us, i32 11) ; 2 uses
  %i.ux = add i32 %i.uw, %i.uu
  %i.uy = xor i32 %i.uv, %i.uu
  %i.uz = xor i32 %i.ut, %i.uw                    ; 3 uses
  %i.va = xor i32 %i.uy, %i.ut
  %i.vb = xor i32 %i.uz, %i.uu                    ; 2 uses
  %i.vc = call noundef i32 @llvm.fshl.i32(i32 %i.uz, i32 %i.uz, i32 11) ; 2 uses
  %i.vd = lshr i32 %i.ux, 8
  %i.ve = uitofp reassoc nsz arcp contract afn nneg i32 %i.vd to float
  %i.vf = xor i32 %i.va, %i.vc                    ; 3 uses
  %i.vg = xor i32 %i.vf, %i.vb
  %i.vh = call noundef i32 @llvm.fshl.i32(i32 %i.vf, i32 %i.vf, i32 11)
  %i.vi = add i32 %i.vh, %i.vg
  %i.vj = lshr i32 %i.vi, 8
  %i.vk = uitofp reassoc nsz arcp contract afn nneg i32 %i.vj to float
  %i.vl = fmul reassoc nnan nsz arcp contract afn float %i.up, f0x34C90FDB
  %sincos.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.vl)
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1
  %i.vm = fmul reassoc nnan nsz arcp contract afn float %i.ve, f0x34C90FDB
  %sincos60.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.vm)
  %sin61.i.i.i = extractvalue { float, float } %sincos60.i.i.i, 0
  %i.vn = fmul reassoc nnan nsz arcp contract afn float %i.vk, f0x34C90FDB
  %sincos63.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.vn)
  %cos65.i.i.i = extractvalue { float, float } %sincos63.i.i.i, 1
  %i.vo = add i32 %i.vc, %i.vb
  %i.vp = lshr i32 %i.vo, 8
  %i.vq = uitofp reassoc nsz arcp contract afn nneg i32 %i.vp to float
  %i.vr = fmul reassoc nnan nsz arcp contract afn float %i.vq, f0x33800000
  %i.vs = call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.vr, float f0x00800000)
  %i.vt = call fast float @llvm.log.f32(float %i.vs)
  %i.vu = fmul reassoc nnan nsz arcp contract afn float %i.vt, -2.000000e+00
  %i.vv = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.vu)
  %i.vw = add i32 %i.un, %i.ul
  %i.vx = add i32 %i.tz, %i.ty
  %i.vy = insertelement <2 x i32> poison, i32 %i.vx, i64 0
  %i.vz = insertelement <2 x i32> %i.vy, i32 %i.vw, i64 1
  %i.wa = lshr <2 x i32> %i.vz, splat (i32 8)
  %i.wb = uitofp nneg <2 x i32> %i.wa to <2 x float>
  %i.wc = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.wb, splat (float f0x33800000)
  %i.wd = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.wc, <2 x float> splat (float f0x00800000))
  %i.we = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.wd)
  %i.wf = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.we, splat (float -2.000000e+00)
  %i.wg = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.wf)
  %i.wh = extractelement <2 x float> %i.rv, i64 0
  %i.wi = fadd reassoc nnan nsz arcp contract afn float %i.wh, 3.750000e-01
  %i.wj = load float, ptr %i.se, align 4, !tbaa !12, !alias.scope !625 ; 2 uses
  %i.wk = fadd reassoc nsz arcp contract afn float %i.wj, 3.750000e-01
  %i.wl = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wk, float 0.000000e+00)
  %i.wm = fmul reassoc nsz arcp contract afn float %cos65.i.i.i, %i.vv
  %i.wn = fmul reassoc nsz arcp contract afn float %i.wm, %i.sg
  %i.wo = load float, ptr %i.sf, align 8, !tbaa !12, !alias.scope !625 ; 3 uses
  %i.wp = fadd reassoc nsz arcp contract afn float %i.wo, 3.750000e-01
  %i.wq = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wp, float 0.000000e+00)
  %i.wr = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.wq)
  %i.ws = fmul reassoc nnan nsz arcp contract afn float %i.wr, 2.000000e+00
  %i.wt = fadd reassoc nsz arcp contract afn float %i.ws, %i.wn ; 2 uses
  %i.wu = fmul reassoc nsz arcp contract afn float %i.wt, %i.wt
  %i.wv = fmul reassoc nsz arcp contract afn float %i.sg, %i.sg
  %i.ww = fsub reassoc nsz arcp contract afn float %i.wu, %i.wv
  %i.wx = fmul reassoc nsz arcp contract afn float %i.ww, 2.500000e-01
  %i.wy = insertelement <2 x float> poison, float %cos.i.i.i, i64 0
  %i.wz = insertelement <2 x float> %i.wy, float %sin61.i.i.i, i64 1
  %i.xa = fmul reassoc nsz arcp contract afn <2 x float> %i.wz, %i.wg
  %i.xb = fmul reassoc nsz arcp contract afn <2 x float> %i.xa, %i.sd
  %i.xc = insertelement <2 x float> poison, float %i.wi, i64 0
  %i.xd = insertelement <2 x float> %i.xc, float %i.wl, i64 1
  %i.xe = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.xd)
  %i.xf = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.xe, splat (float 2.000000e+00)
  %i.xg = fadd reassoc nsz arcp contract afn <2 x float> %i.xf, %i.xb ; 2 uses
  %i.xh = fmul reassoc nsz arcp contract afn <2 x float> %i.xg, %i.xg
  %i.xi = fmul reassoc nsz arcp contract afn <2 x float> %i.sd, %i.sd
  %i.xj = fsub reassoc nsz arcp contract afn <2 x float> %i.xh, %i.xi
  %i.xk = fmul reassoc nsz arcp contract afn <2 x float> %i.xj, splat (float 2.500000e-01)
  %i.xl = insertelement <2 x float> %i.rv, float %i.wj, i64 1 ; 2 uses
  %i.xm = fsub reassoc nsz arcp contract afn <2 x float> splat (float -3.750000e-01), %i.xl
  %i.xn = fadd reassoc nsz arcp contract afn <2 x float> %i.xm, %i.xk
  %i.xo = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xn)
  %i.xp = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.xq = shufflevector <2 x float> %i.xp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xr = fmul reassoc nsz arcp contract afn <2 x float> %i.xo, %i.xq
  %i.xs = fadd reassoc nsz arcp contract afn <2 x float> %i.xr, %i.xl
  %i.xt = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.xs, <2 x float> zeroinitializer)
  %i.xu = fsub reassoc nsz arcp contract afn float -3.750000e-01, %i.wo
  %i.xv = fadd reassoc nsz arcp contract afn float %i.xu, %i.wx
  %i.xw = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.xv)
  %i.xx = fmul reassoc nsz arcp contract afn float %i.xw, %i.kg
  %i.xy = fadd reassoc nsz arcp contract afn float %i.xx, %i.wo
  %i.xz = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xy, float 0.000000e+00)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.preheader295.preheader.i
  %i.ya = phi float [ %i.sc, %.preheader295.preheader.i ], [ %i.xz, %bb.q ] ; 3 uses
  %i.yb = phi <2 x float> [ %i.rv, %.preheader295.preheader.i ], [ %i.xt, %bb.q ] ; 5 uses
  %foldExtExtBinop204 = fmul reassoc nsz arcp contract afn <2 x float> %i.yb, %i.yb
  %i.yc = extractelement <2 x float> %foldExtExtBinop204, i64 0
  %foldExtExtBinop206 = fmul reassoc nsz arcp contract afn <2 x float> %i.yb, %i.yb
  %i.yd = extractelement <2 x float> %foldExtExtBinop206, i64 1
  %i.ye = fmul reassoc nsz arcp contract afn float %i.ya, %i.ya
  %i.yf = fadd reassoc nsz arcp contract afn float %i.yd, %i.ye
  %i.yg = fadd reassoc nsz arcp contract afn float %i.yf, %i.yc
  %i.yh = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.yg)
  %i.yi = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.yh, float f0x358637BD) ; 2 uses
  %i.yj = shufflevector <2 x float> %i.yb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.yk = insertelement <4 x float> %i.yj, float %i.ya, i64 2
  %i.yl = insertelement <4 x float> %i.yk, float %i.yi, i64 3
  %i.ym = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.yi, i64 0
  %i.yn = shufflevector <4 x float> %i.ym, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.yo = fdiv reassoc nsz arcp contract afn <4 x float> %i.yl, %i.yn
  store <4 x float> %i.yo, ptr %i.rn, align 16, !tbaa !12, !alias.scope !625
  br label %.thread290.i

.thread290.i:                                     ; preds = %bb.r, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !626
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i, %3
  br i1 %exitcond.not.i64, label %._crit_edge.i65, label %bb.o

bb.s:                                             ; preds = %decompose_2D_Bspline.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %.0, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ]
  br i1 %.not.i, label %guide_laplacians.exit, label %.lr.ph214.i

.lr.ph214.i:                                      ; preds = %bb.s
  %.not.i.i69 = icmp slt i32 %i.ai, %i.l
  %.reass.i70 = add i32 %invariant.op.i, %i.ai
  %i.yp = add nsw i32 %i.ai, -1
  %i.yq = and i32 %i.yp, %i.l                     ; 3 uses
  %i.yr = icmp eq i32 %i.yq, 0
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i78, %.lr.ph214.i
  %.0179212.i = phi i64 [ 0, %.lr.ph214.i ], [ %i.zq, %._crit_edge.i78 ] ; 2 uses
  %i.ys = trunc i64 %.0179212.i to i32            ; 5 uses
  br i1 %.not.i.i69, label %bb.u, label %dwt_interleave_rows.exit.i72

bb.u:                                             ; preds = %bb.t
  %i.yt = sdiv i32 %.reass.i70, %i.ai             ; 4 uses
  br i1 %i.yr, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.yu = mul nsw i32 %i.yq, %i.yt                ; 2 uses
  %i.yv = icmp sgt i32 %i.yu, %i.ys
  br i1 %i.yv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.yw = sdiv i32 %i.ys, %i.yt
  %i.yx = srem i32 %i.ys, %i.yt
  %i.yy = shl nsw i32 %i.yx, %.054119
  %i.yz = add nsw i32 %i.yy, %i.yw
  br label %dwt_interleave_rows.exit.i72

bb.x:                                             ; preds = %bb.v
  %i.za = sub nsw i32 %i.ys, %i.yu                ; 2 uses
  %i.zb = add nsw i32 %i.yt, -1                   ; 2 uses
  %i.zc = sdiv i32 %i.za, %i.zb
  %i.zd = add nsw i32 %i.zc, %i.yq
  %i.ze = srem i32 %i.za, %i.zb
  %i.zf = shl nsw i32 %i.ze, %.054119
  %i.zg = add nsw i32 %i.zd, %i.zf
  br label %dwt_interleave_rows.exit.i72

dwt_interleave_rows.exit.i72:                     ; preds = %bb.x, %bb.w, %bb.t
  %.1.i.i73 = phi i32 [ %i.ys, %bb.t ], [ %i.yz, %bb.w ], [ %i.zg, %bb.x ] ; 3 uses
  %i.zh = sext i32 %.1.i.i73 to i64
  %i.zi = sub i32 %.1.i.i73, %i.ai
  %i.zj = call i32 @llvm.smax.i32(i32 %i.zi, i32 0)
  %i.zk = zext nneg i32 %i.zj to i64
  %i.zl = mul i64 %3, %i.zk                       ; 3 uses
  %i.zm = mul i64 %3, %i.zh                       ; 3 uses
  %i.zn = add i32 %.1.i.i73, %i.ai
  %..i74 = call i32 @llvm.smin.i32(i32 %i.zn, i32 %invariant.op.i)
  %i.zo = sext i32 %..i74 to i64
  %i.zp = mul i64 %3, %i.zo                       ; 3 uses
  br i1 %.not.i40.i, label %._crit_edge.i78, label %.lr.ph.i75

._crit_edge.i78:                                  ; preds = %.loopexit.i76, %dwt_interleave_rows.exit.i72
  %i.zq = add nuw nsw i64 %.0179212.i, 1          ; 2 uses
  %exitcond220.not.i = icmp eq i64 %i.zq, %4
  br i1 %exitcond220.not.i, label %guide_laplacians.exit, label %bb.t

.lr.ph.i75:                                       ; preds = %dwt_interleave_rows.exit.i72, %.loopexit.i76
  %.0178211.i = phi i64 [ %i.adv, %.loopexit.i76 ], [ 0, %dwt_interleave_rows.exit.i72 ] ; 5 uses
  %i.zr = add i64 %.0178211.i, %i.zm
  %i.zs = shl i64 %i.zr, 2                        ; 6 uses
  %i.zt = or disjoint i64 %i.zs, 2                ; 3 uses
  %i.zu = or disjoint i64 %i.zs, 3                ; 2 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zu
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !12, !alias.scope !631
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.zs
  %i.zy = load <2 x float>, ptr %i.zx, align 16, !tbaa !12, !alias.scope !629 ; 3 uses
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.zt
  %i.aaa = load float, ptr %i.zz, align 8, !tbaa !12, !alias.scope !629 ; 3 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.zu
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !12, !alias.scope !629 ; 3 uses
  %i.aad = fcmp reassoc nsz arcp contract afn ogt float %i.zw, 0.000000e+00 ; 2 uses
  br i1 %i.aad, label %.preheader.i, label %bb.y

.preheader.i:                                     ; preds = %.lr.ph.i75
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zt
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !12, !alias.scope !631
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zs
  %i.aah = trunc i64 %.0178211.i to i32           ; 2 uses
  %i.aai = sub i32 %i.aah, %i.ai
  %i.aaj = call i32 @llvm.smax.i32(i32 %i.aai, i32 0)
  %i.aak = zext nneg i32 %i.aaj to i64            ; 3 uses
  %i.aal = add i32 %i.ai, %i.aah
  %.194.i = call i32 @llvm.smin.i32(i32 %i.aal, i32 %i.q)
  %i.aam = sext i32 %.194.i to i64                ; 3 uses
  %i.aan = add i64 %i.zl, %i.aak
  %.idx.i79 = shl i64 %i.aan, 4
  %i.aao = getelementptr inbounds nuw i8, ptr %6, i64 %.idx.i79 ; 2 uses
  %i.aap = add i64 %.0178211.i, %i.zl
  %.idx187.i = shl i64 %i.aap, 4
  %i.aaq = getelementptr inbounds nuw i8, ptr %6, i64 %.idx187.i ; 2 uses
  %i.aar = add i64 %i.zl, %i.aam
  %.idx188.i = shl i64 %i.aar, 4
  %i.aas = getelementptr inbounds nuw i8, ptr %6, i64 %.idx188.i ; 2 uses
  %i.aat = add i64 %i.zm, %i.aak
  %.idx189.i = shl i64 %i.aat, 4
  %i.aau = getelementptr inbounds nuw i8, ptr %6, i64 %.idx189.i ; 2 uses
  %i.aav = add i64 %i.zm, %i.aam
  %.idx190.i = shl i64 %i.aav, 4
  %i.aaw = getelementptr i8, ptr %6, i64 %.idx190.i ; 2 uses
  %i.aax = add i64 %i.zp, %i.aak
  %.idx191.i = shl i64 %i.aax, 4
  %i.aay = getelementptr i8, ptr %6, i64 %.idx191.i ; 2 uses
  %i.aaz = add i64 %.0178211.i, %i.zp
  %.idx192.i = shl i64 %i.aaz, 4
  %i.aba = getelementptr i8, ptr %6, i64 %.idx192.i ; 2 uses
  %i.abb = add i64 %i.zp, %i.aam
  %.idx193.i = shl i64 %i.abb, 4
  %i.abc = getelementptr i8, ptr %6, i64 %.idx193.i ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  %.sroa.10.16.copyload.i = load float, ptr %.sroa.10.16..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.15.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aas, i64 8
  %.sroa.15.32.copyload.i = load float, ptr %.sroa.15.32..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.20.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %.sroa.20.48.copyload.i = load float, ptr %.sroa.20.48..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.30.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  %.sroa.30.80.copyload.i = load float, ptr %.sroa.30.80..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.35.96..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  %.sroa.35.96.copyload.i = load float, ptr %.sroa.35.96..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.40.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %.sroa.40.112.copyload.i = load float, ptr %.sroa.40.112..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.45.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  %.sroa.45.128.copyload.i = load float, ptr %.sroa.45.128..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %i.abd = fmul reassoc nsz arcp contract afn <2 x float> %i.af, %i.zy
  %i.abe = load <2 x float>, ptr %i.aao, align 16, !tbaa !12, !alias.scope !629
  %i.abf = load <2 x float>, ptr %i.aaq, align 16, !tbaa !12, !alias.scope !629
  %i.abg = load <2 x float>, ptr %i.aas, align 16, !tbaa !12, !alias.scope !629
  %i.abh = load <2 x float>, ptr %i.aau, align 16, !tbaa !12, !alias.scope !629
  %i.abi = load <2 x float>, ptr %i.aaw, align 16, !tbaa !12, !alias.scope !629
  %i.abj = load <2 x float>, ptr %i.aay, align 16, !tbaa !12, !alias.scope !629
  %i.abk = load <2 x float>, ptr %i.aba, align 16, !tbaa !12, !alias.scope !629
  %i.abl = load <2 x float>, ptr %i.abc, align 16, !tbaa !12, !alias.scope !629
  %i.abm = fadd reassoc nsz arcp contract afn <2 x float> %i.abh, %i.abf
  %i.abn = fadd reassoc nsz arcp contract afn <2 x float> %i.abm, %i.abi
  %i.abo = fadd reassoc nsz arcp contract afn <2 x float> %i.abn, %i.abk
  %i.abp = fmul reassoc nsz arcp contract afn <2 x float> %i.abo, splat (float 5.000000e-01)
  %i.abq = fadd reassoc nsz arcp contract afn <2 x float> %i.abg, %i.abe
  %i.abr = fadd reassoc nsz arcp contract afn <2 x float> %i.abq, %i.abj
  %i.abs = fadd reassoc nsz arcp contract afn <2 x float> %i.abr, %i.abl
  %i.abt = fmul reassoc nsz arcp contract afn <2 x float> %i.abs, splat (float 2.500000e-01)
  %i.abu = fadd reassoc nsz arcp contract afn <2 x float> %i.abt, %i.abp
  %i.abv = load <2 x float>, ptr %i.aag, align 4, !tbaa !12, !alias.scope !631
  %i.abw = fmul reassoc nsz arcp contract afn <2 x float> %i.abv, splat (float f0x3EA0DE4A)
  %i.abx = fadd reassoc nsz arcp contract afn <2 x float> %i.abu, %i.abd
  %i.aby = fmul reassoc nsz arcp contract afn <2 x float> %i.abw, %i.abx
  %i.abz = fadd reassoc nsz arcp contract afn <2 x float> %i.aby, %i.zy
  %i.aca = fmul reassoc nsz arcp contract afn float %i.aaf, f0x3EA0DE4A
  %reass.add97 = fadd reassoc nsz arcp contract afn float %.sroa.20.48.copyload.i, %.sroa.10.16.copyload.i
  %reass.add98 = fadd reassoc nsz arcp contract afn float %reass.add97, %.sroa.30.80.copyload.i
  %reass.add99 = fadd reassoc nsz arcp contract afn float %reass.add98, %.sroa.40.112.copyload.i
  %reass.mul100 = fmul reassoc nsz arcp contract afn float %reass.add99, 5.000000e-01
  %reass.add101 = fadd reassoc nsz arcp contract afn float %.sroa.15.32.copyload.i, %.sroa.5.0.copyload.i
  %reass.add102 = fadd reassoc nsz arcp contract afn float %reass.add101, %.sroa.35.96.copyload.i
  %reass.add103 = fadd reassoc nsz arcp contract afn float %reass.add102, %.sroa.45.128.copyload.i
  %reass.mul104 = fmul reassoc nsz arcp contract afn float %reass.add103, 2.500000e-01
  %reass.mul110 = fmul reassoc nsz arcp contract afn float %reass.add105, %i.aaa
  %i.acb = fadd reassoc nsz arcp contract afn float %reass.mul104, %reass.mul100
  %i.acc = fadd reassoc nsz arcp contract afn float %i.acb, %reass.mul110
  %i.acd = fmul reassoc nsz arcp contract afn float %i.aca, %i.acc
  %i.ace = fadd reassoc nsz arcp contract afn float %i.acd, %i.aaa
  br label %bb.y

bb.y:                                             ; preds = %.preheader.i, %.lr.ph.i75
  %.sroa.11264.0.i = phi nsz float [ %i.ace, %.preheader.i ], [ %i.aaa, %.lr.ph.i75 ] ; 3 uses
  %i.acf = phi <2 x float> [ %i.abz, %.preheader.i ], [ %i.zy, %.lr.ph.i75 ] ; 3 uses
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zs ; 9 uses
  br i1 %.not147.not, label %.preheader199.i, label %.preheader197.i

.preheader199.i:                                  ; preds = %bb.y
  store <2 x float> %i.acf, ptr %i.acg, align 16, !tbaa !12, !alias.scope !632
  %.sroa.11264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  store float %.sroa.11264.0.i, ptr %.sroa.11264.0..sroa_idx.i, align 8, !tbaa !12, !alias.scope !632
  %.sroa.15266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acg, i64 12
  store float %i.aac, ptr %.sroa.15266.0..sroa_idx.i, align 4, !tbaa !12, !alias.scope !632
  %i.ach = insertelement <2 x float> poison, float %.sroa.11264.0.i, i64 0
  %i.aci = insertelement <2 x float> %i.ach, float %i.aac, i64 1
  br label %.loopexit198.i

.preheader197.i:                                  ; preds = %bb.y
  %i.acj = load <2 x float>, ptr %i.acg, align 16, !tbaa !12, !alias.scope !632
  %i.ack = fadd reassoc nsz arcp contract afn <2 x float> %i.acj, %i.acf ; 2 uses
  store <2 x float> %i.ack, ptr %i.acg, align 16, !tbaa !12, !alias.scope !632
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acg, i64 8 ; 2 uses
  %i.acm = load <2 x float>, ptr %i.acl, align 8, !tbaa !12, !alias.scope !632
  %i.acn = insertelement <2 x float> poison, float %.sroa.11264.0.i, i64 0
  %i.aco = insertelement <2 x float> %i.acn, float %i.aac, i64 1
  %i.acp = fadd reassoc nsz arcp contract afn <2 x float> %i.acm, %i.aco ; 2 uses
  store <2 x float> %i.acp, ptr %i.acl, align 8, !tbaa !12, !alias.scope !632
  br label %.loopexit198.i

.loopexit198.i:                                   ; preds = %.preheader197.i, %.preheader199.i
  %i.acq = phi <2 x float> [ %i.acf, %.preheader199.i ], [ %i.ack, %.preheader197.i ]
  %i.acr = phi <2 x float> [ %i.aci, %.preheader199.i ], [ %i.acp, %.preheader197.i ]
  br i1 %.not80, label %.preheader196.preheader.i, label %.loopexit.i76

end_hunk_1
