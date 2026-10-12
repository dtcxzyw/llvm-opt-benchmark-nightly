Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@wavelets_process:bb.a
  %wide.masked.gather153 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep152, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !627, !noalias !629
  %i.gn = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather151, %wide.masked.gather149
  %i.go = fmul reassoc nsz arcp contract afn <8 x float> %i.gn, splat (float 2.500000e-01)
  %i.gp = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather153, %wide.masked.gather147
  %i.gq = fmul reassoc nsz arcp contract afn <8 x float> %i.gp, splat (float 6.250000e-02)
  %i.gr = fadd reassoc nsz arcp contract afn <8 x float> %i.go, %i.gm
  %i.gs = fadd reassoc nsz arcp contract afn <8 x float> %i.gr, %i.gq ; 2 uses
  %i.gt = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gs, zeroinitializer
  %i.gu = select reassoc nsz arcp contract afn <8 x i1> %i.gt, <8 x float> zeroinitializer, <8 x float> %i.gs ; 2 uses
  %i.gv = shufflevector <8 x float> %i.ft, <8 x float> %i.gc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gw = shufflevector <8 x float> %i.gl, <8 x float> %i.gu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.gv, <16 x float> %i.gw, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.eu, align 4, !tbaa !12, !alias.scope !629, !noalias !627
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.et
  %wide.vec154 = load <32 x float>, ptr %i.gx, align 4, !tbaa !12, !noalias !622 ; 4 uses
  %strided.vec155 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec156 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec157 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec158 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.gy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec155, %i.ft
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.et
  %i.ha = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec156, %i.gc
  %i.hb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec157, %i.gl
  %i.hc = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec158, %i.gu
  %i.hd = shufflevector <8 x float> %i.gy, <8 x float> %i.ha, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.he = shufflevector <8 x float> %i.hb, <8 x float> %i.hc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec159 = shufflevector <16 x float> %i.hd, <16 x float> %i.he, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec159, ptr %i.gz, align 4, !tbaa !12, !alias.scope !630, !noalias !622
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next160 = add <8 x i32> %vec.ind120, splat (i32 8)
  %i.hf = icmp eq i64 %index.next, %n.vec
  br i1 %i.hf, label %middle.block, label %vector.body, !llvm.loop !610

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.03663.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %dwt_interleave_rows.exit.i
  %i.hg = add nuw nsw i64 %.03764.i, 1            ; 2 uses
  %exitcond69.not.i = icmp eq i64 %i.hg, %4
  br i1 %exitcond69.not.i, label %decompose_2D_Bspline.exit, label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03663.i = phi i64 [ %i.it, %scalar.ph ], [ %.03663.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.hh = add i64 %.03663.i, %i.en
  %i.hi = shl i64 %i.hh, 2                        ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.hi
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.hk = trunc i64 %.03663.i to i32              ; 2 uses
  %i.hl = sub nsw i32 %i.hk, %i.an
  %i.hm = call i32 @llvm.smax.i32(i32 %i.hl, i32 0)
  %i.hn = shl nuw nsw i32 %i.hm, 2
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = sub nsw i32 %i.hk, %i.al
  %i.hq = call i32 @llvm.smax.i32(i32 %i.hp, i32 0)
  %i.hr = shl nuw nsw i32 %i.hq, 2
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = add nuw nsw i64 %.03663.i, %i.ao
  %..i41.i = call i64 @llvm.umin.i64(i64 %i.ht, i64 %i.n)
  %i.hu = add nuw nsw i64 %.03663.i, %i.ap
  %i.hv = call i64 @llvm.umin.i64(i64 %i.hu, i64 %i.n)
  %i.hw = getelementptr [4 x i8], ptr %i.j, i64 %i.ho
  %i.hx = getelementptr [4 x i8], ptr %i.j, i64 %i.hs
  %.idx.i.i = shl i64 %.03663.i, 4
  %i.hy = getelementptr i8, ptr %i.j, i64 %.idx.i.i
  %.idx25.i.i = shl i64 %..i41.i, 4
  %i.hz = getelementptr i8, ptr %i.j, i64 %.idx25.i.i
  %.idx26.i.i = shl i64 %i.hv, 4
  %i.ia = getelementptr i8, ptr %i.j, i64 %.idx26.i.i
  %i.ib = load <4 x float>, ptr %i.hw, align 16, !tbaa !12, !alias.scope !627, !noalias !629
  %i.ic = load <4 x float>, ptr %i.hx, align 16, !tbaa !12, !alias.scope !627, !noalias !629
  %i.id = load <4 x float>, ptr %i.hy, align 16, !tbaa !12, !alias.scope !627, !noalias !629
  %i.ie = fmul reassoc nsz arcp contract afn <4 x float> %i.id, splat (float 3.750000e-01)
  %i.if = load <4 x float>, ptr %i.hz, align 16, !tbaa !12, !alias.scope !627, !noalias !629
  %i.ig = load <4 x float>, ptr %i.ia, align 16, !tbaa !12, !alias.scope !627, !noalias !629
  %i.ih = fadd reassoc nsz arcp contract afn <4 x float> %i.if, %i.ic
  %i.ii = fmul reassoc nsz arcp contract afn <4 x float> %i.ih, splat (float 2.500000e-01)
  %i.ij = fadd reassoc nsz arcp contract afn <4 x float> %i.ig, %i.ib
  %i.ik = fmul reassoc nsz arcp contract afn <4 x float> %i.ij, splat (float 6.250000e-02)
  %i.il = fadd reassoc nsz arcp contract afn <4 x float> %i.ii, %i.ie
  %i.im = fadd reassoc nsz arcp contract afn <4 x float> %i.il, %i.ik ; 2 uses
  %i.in = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.im, zeroinitializer
  %i.io = select <4 x i1> %i.in, <4 x float> zeroinitializer, <4 x float> %i.im ; 2 uses
  store <4 x float> %i.io, ptr %i.hj, align 4, !tbaa !12, !alias.scope !629, !noalias !627
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.hi
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.hi
  %i.ir = load <4 x float>, ptr %i.ip, align 4, !tbaa !12, !noalias !622
  %i.is = fsub reassoc nsz arcp contract afn <4 x float> %i.ir, %i.io
  store <4 x float> %i.is, ptr %i.iq, align 4, !tbaa !12, !noalias !622
  %i.it = add nuw nsw i64 %.03663.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.it, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !611

decompose_2D_Bspline.exit:                        ; preds = %._crit_edge.i, %bb.c
  %.not80 = icmp eq i32 %.054119, %i.k            ; 2 uses
  %i.iu = shl nuw nsw i32 %.054119, 2
  %i.iv = call fastcc float @equivalent_sigma_at_step(i32 noundef %i.iu) ; 2 uses
  %i.iw = fmul reassoc nsz arcp contract afn float %i.iv, %i.iv ; 4 uses
  br i1 %i.o, label %bb.i, label %bb.s

bb.i:                                             ; preds = %decompose_2D_Bspline.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %.0, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ]
  br i1 %.not.i, label %guide_laplacians.exit, label %.lr.ph321.i

.lr.ph321.i:                                      ; preds = %bb.i
  %.not.i.i59 = icmp slt i32 %i.al, %i.l
  %.reass318.i = add i32 %invariant.op.i, %i.al
  %i.ix = add nsw i32 %i.al, -1
  %i.iy = and i32 %i.ix, %i.l                     ; 3 uses
  %i.iz = icmp eq i32 %i.iy, 0
  %i.ja = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.iw
  %i.jb = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.iw
  %i.jc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.iw
  %i.jd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.iw
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i65, %.lr.ph321.i
  %.0252319.i = phi i64 [ 0, %.lr.ph321.i ], [ %i.ke, %._crit_edge.i65 ] ; 2 uses
  %i.je = trunc i64 %.0252319.i to i32            ; 5 uses
  br i1 %.not.i.i59, label %bb.k, label %dwt_interleave_rows.exit.i61

bb.k:                                             ; preds = %bb.j
  %i.jf = sdiv i32 %.reass318.i, %i.al            ; 4 uses
  br i1 %i.iz, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.jg = mul nsw i32 %i.iy, %i.jf                ; 2 uses
  %i.jh = icmp sgt i32 %i.jg, %i.je
  br i1 %i.jh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ji = sdiv i32 %i.je, %i.jf
  %i.jj = srem i32 %i.je, %i.jf
  %i.jk = shl nsw i32 %i.jj, %.054119
  %i.jl = add nsw i32 %i.jk, %i.ji
  br label %dwt_interleave_rows.exit.i61

bb.n:                                             ; preds = %bb.l
  %i.jm = sub nsw i32 %i.je, %i.jg                ; 2 uses
  %i.jn = add nsw i32 %i.jf, -1                   ; 2 uses
  %i.jo = sdiv i32 %i.jm, %i.jn
  %i.jp = add nsw i32 %i.jo, %i.iy
  %i.jq = srem i32 %i.jm, %i.jn
  %i.jr = shl nsw i32 %i.jq, %.054119
  %i.js = add nsw i32 %i.jp, %i.jr
  br label %dwt_interleave_rows.exit.i61

dwt_interleave_rows.exit.i61:                     ; preds = %bb.n, %bb.m, %bb.j
  %.1.i.i62 = phi i32 [ %i.je, %bb.j ], [ %i.jl, %bb.m ], [ %i.js, %bb.n ] ; 4 uses
  %i.jt = sub nsw i32 %.1.i.i62, %i.al
  %i.ju = call i32 @llvm.smax.i32(i32 %i.jt, i32 0)
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = mul i64 %3, %i.jv                       ; 3 uses
  %i.jx = sext i32 %.1.i.i62 to i64
  %i.jy = mul i64 %3, %i.jx                       ; 3 uses
  %i.jz = add i32 %.1.i.i62, %i.al
  %..i = call i32 @llvm.smin.i32(i32 %i.jz, i32 %invariant.op.i)
  %i.ka = sext i32 %..i to i64
  %i.kb = mul i64 %3, %i.ka                       ; 3 uses
  br i1 %.not.i40.i, label %._crit_edge.i65, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %dwt_interleave_rows.exit.i61
  %i.kc = add nsw i32 %.1.i.i62, 3
  %i.kd = sext i32 %i.kc to i64
  br label %bb.o

._crit_edge.i65:                                  ; preds = %.thread290.i, %dwt_interleave_rows.exit.i61
  %i.ke = add nuw nsw i64 %.0252319.i, 1          ; 2 uses
  %exitcond330.not.i = icmp eq i64 %i.ke, %4
  br i1 %exitcond330.not.i, label %guide_laplacians.exit, label %bb.j

bb.o:                                             ; preds = %.thread290.i, %.lr.ph.i63
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i63 ], [ %indvars.iv.next.i, %.thread290.i ] ; 6 uses
  %i.kf = add i64 %indvars.iv.i, %i.jy
  %i.kg = shl i64 %i.kf, 2                        ; 7 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !12, !alias.scope !633, !noalias !635 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !636
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.kg ; 2 uses
  %i.kl = or disjoint i64 %i.kg, 1                ; 2 uses
  %i.km = or disjoint i64 %i.kg, 2                ; 3 uses
  %i.kn = load <4 x float>, ptr %i.kk, align 16, !tbaa !12, !alias.scope !631, !noalias !637 ; 7 uses
  store <4 x float> %i.kn, ptr %i.a, align 16, !tbaa !12, !noalias !636
  %i.ko = fcmp reassoc nsz arcp contract afn ogt float %i.kj, 0.000000e+00 ; 2 uses
  br i1 %i.ko, label %.preheader294.i, label %bb.p

.preheader294.i:                                  ; preds = %bb.o
  %i.kp = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.kq = sub nsw i32 %i.kp, %i.al
  %i.kr = call i32 @llvm.smax.i32(i32 %i.kq, i32 0)
  %i.ks = zext nneg i32 %i.kr to i64              ; 3 uses
  %i.kt = add nuw i32 %i.al, %i.kp
  %.269.i = call i32 @llvm.smin.i32(i32 %i.kt, i32 %i.q)
  %i.ku = sext i32 %.269.i to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !636
  %i.kv = add i64 %i.jw, %i.ks
  %.idx.i = shl i64 %i.kv, 4
  %i.kw = getelementptr inbounds nuw i8, ptr %6, i64 %.idx.i
  %i.kx = add i64 %indvars.iv.i, %i.jw
  %.idx262.i = shl i64 %i.kx, 4
  %i.ky = getelementptr inbounds nuw i8, ptr %6, i64 %.idx262.i
  %i.kz = add i64 %i.jw, %i.ku
  %.idx263.i = shl i64 %i.kz, 4
  %i.la = getelementptr inbounds nuw i8, ptr %6, i64 %.idx263.i
  %i.lb = add i64 %i.jy, %i.ks
  %.idx264.i = shl i64 %i.lb, 4
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 %.idx264.i
  %i.ld = add i64 %i.jy, %i.ku
  %.idx265.i = shl i64 %i.ld, 4
  %i.le = getelementptr i8, ptr %6, i64 %.idx265.i
  %i.lf = add i64 %i.kb, %i.ks
  %.idx266.i = shl i64 %i.lf, 4
  %i.lg = getelementptr i8, ptr %6, i64 %.idx266.i
  %i.lh = add i64 %indvars.iv.i, %i.kb
  %.idx267.i = shl i64 %i.lh, 4
  %i.li = getelementptr i8, ptr %6, i64 %.idx267.i
  %i.lj = add i64 %i.kb, %i.ku
  %.idx268.i = shl i64 %i.lj, 4
  %i.lk = getelementptr i8, ptr %6, i64 %.idx268.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kw, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ky, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.la, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.lc, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kk, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.le, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.lg, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.li, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.lk, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33, !noalias !636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33, !noalias !636
  %i.ll = load <4 x float>, ptr %i.b, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.lm = load <4 x float>, ptr %i.u, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.ln = load <4 x float>, ptr %i.v, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.lo = load <4 x float>, ptr %i.w, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.lp = load <4 x float>, ptr %i.x, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.lq = load <4 x float>, ptr %i.y, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.lr = load <4 x float>, ptr %i.z, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.ls = load <4 x float>, ptr %i.aa, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.lt = load <4 x float>, ptr %i.ab, align 16, !tbaa !12, !noalias !636 ; 2 uses
  %i.lu = shufflevector <4 x float> %i.lm, <4 x float> %i.ll, <8 x i32> <i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lv = shufflevector <4 x float> %i.ln, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lw = shufflevector <8 x float> %i.lu, <8 x float> %i.lv, <8 x i32> <i32 0, i32 1, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lx = shufflevector <4 x float> %i.lo, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ly = shufflevector <8 x float> %i.lw, <8 x float> %i.lx, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lz = shufflevector <4 x float> %i.lp, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ma = shufflevector <8 x float> %i.ly, <8 x float> %i.lz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 11, i32 poison, i32 poison, i32 poison>
  %i.mb = shufflevector <4 x float> %i.lq, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mc = shufflevector <8 x float> %i.ma, <8 x float> %i.mb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 poison, i32 poison>
  %i.md = shufflevector <4 x float> %i.lr, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.me = shufflevector <8 x float> %i.mc, <8 x float> %i.md, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 poison>
  %i.mf = shufflevector <4 x float> %i.ls, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mg = shufflevector <8 x float> %i.me, <8 x float> %i.mf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  %i.mh = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.mg)
  %i.mi = insertelement <4 x float> %i.lm, float %i.mh, i64 3
  %i.mj = insertelement <4 x float> %i.ll, float -0.000000e+00, i64 3
  %i.mk = fadd reassoc nsz arcp contract afn <4 x float> %i.mi, %i.mj
  %i.ml = insertelement <4 x float> %i.ln, float -0.000000e+00, i64 3
  %i.mm = fadd reassoc nsz arcp contract afn <4 x float> %i.mk, %i.ml
  %i.mn = insertelement <4 x float> %i.lo, float -0.000000e+00, i64 3
  %i.mo = fadd reassoc nsz arcp contract afn <4 x float> %i.mm, %i.mn
  %i.mp = insertelement <4 x float> %i.lp, float -0.000000e+00, i64 3
  %i.mq = fadd reassoc nsz arcp contract afn <4 x float> %i.mo, %i.mp
  %i.mr = insertelement <4 x float> %i.lq, float -0.000000e+00, i64 3
  %i.ms = fadd reassoc nsz arcp contract afn <4 x float> %i.mq, %i.mr
  %i.mt = insertelement <4 x float> %i.lr, float -0.000000e+00, i64 3
  %i.mu = fadd reassoc nsz arcp contract afn <4 x float> %i.ms, %i.mt
  %i.mv = insertelement <4 x float> %i.ls, float -0.000000e+00, i64 3
  %i.mw = fadd reassoc nsz arcp contract afn <4 x float> %i.mu, %i.mv
  %i.mx = fadd reassoc nsz arcp contract afn <4 x float> %i.mw, %i.lt
  %i.my = fmul reassoc nsz arcp contract afn <4 x float> %i.mx, splat (float f0x3DE38E39) ; 14 uses
  %i.mz = extractelement <4 x float> %i.my, i64 0
  store float %i.mz, ptr %i.c, align 16, !tbaa !12, !noalias !636
  %i.na = extractelement <4 x float> %i.my, i64 1 ; 2 uses
  store float %i.na, ptr %i.ad, align 4, !tbaa !12, !noalias !636
  %i.nb = extractelement <4 x float> %i.my, i64 2 ; 2 uses
  store float %i.nb, ptr %i.ae, align 8, !tbaa !12, !noalias !636
  %i.nc = extractelement <4 x float> %i.my, i64 3 ; 2 uses
  store float %i.nc, ptr %i.af, align 4, !tbaa !12, !noalias !636
  %i.nd = fsub reassoc nsz arcp contract afn <4 x float> %i.ll, %i.my ; 3 uses
  %i.ne = fmul reassoc nsz arcp contract afn <4 x float> %i.nd, %i.nd
  %i.nf = fsub reassoc nsz arcp contract afn <4 x float> %i.lm, %i.my ; 3 uses
  %i.ng = fmul reassoc nsz arcp contract afn <4 x float> %i.nf, %i.nf
  %i.nh = fadd reassoc nsz arcp contract afn <4 x float> %i.ng, %i.ne
  %i.ni = fsub reassoc nsz arcp contract afn <4 x float> %i.ln, %i.my ; 3 uses
  %i.nj = fmul reassoc nsz arcp contract afn <4 x float> %i.ni, %i.ni
  %i.nk = fadd reassoc nsz arcp contract afn <4 x float> %i.nh, %i.nj
  %i.nl = fsub reassoc nsz arcp contract afn <4 x float> %i.lo, %i.my ; 3 uses
  %i.nm = fmul reassoc nsz arcp contract afn <4 x float> %i.nl, %i.nl
  %i.nn = fadd reassoc nsz arcp contract afn <4 x float> %i.nk, %i.nm
  %i.no = fsub reassoc nsz arcp contract afn <4 x float> %i.lp, %i.my ; 3 uses
  %i.np = fmul reassoc nsz arcp contract afn <4 x float> %i.no, %i.no
  %i.nq = fadd reassoc nsz arcp contract afn <4 x float> %i.nn, %i.np
  %i.nr = fsub reassoc nsz arcp contract afn <4 x float> %i.lq, %i.my ; 3 uses
  %i.ns = fmul reassoc nsz arcp contract afn <4 x float> %i.nr, %i.nr
  %i.nt = fadd reassoc nsz arcp contract afn <4 x float> %i.nq, %i.ns
  %i.nu = fsub reassoc nsz arcp contract afn <4 x float> %i.lr, %i.my ; 3 uses
  %i.nv = fmul reassoc nsz arcp contract afn <4 x float> %i.nu, %i.nu
  %i.nw = fadd reassoc nsz arcp contract afn <4 x float> %i.nt, %i.nv
  %i.nx = fsub reassoc nsz arcp contract afn <4 x float> %i.ls, %i.my ; 3 uses
  %i.ny = fmul reassoc nsz arcp contract afn <4 x float> %i.nx, %i.nx
  %i.nz = fadd reassoc nsz arcp contract afn <4 x float> %i.nw, %i.ny
  %i.oa = fsub reassoc nsz arcp contract afn <4 x float> %i.lt, %i.my ; 3 uses
  %i.ob = fmul reassoc nsz arcp contract afn <4 x float> %i.oa, %i.oa
  %i.oc = fadd reassoc nsz arcp contract afn <4 x float> %i.nz, %i.ob
  %i.od = fmul reassoc nsz arcp contract afn <4 x float> %i.oc, splat (float f0x3DE38E39) ; 4 uses
  store <4 x float> %i.od, ptr %i.d, align 16, !tbaa !12, !noalias !636
  %i.oe = extractelement <4 x float> %i.od, i64 0 ; 2 uses
  %i.of = fcmp reassoc nsz arcp contract afn ogt float %i.oe, 0.000000e+00 ; 2 uses
  %spec.select.i66 = select i1 %i.of, i64 0, i64 3
  %spec.select270.i = select nsz i1 %i.of, float %i.oe, float 0.000000e+00 ; 2 uses
  %i.og = extractelement <4 x float> %i.od, i64 1 ; 2 uses
  %i.oh = fcmp reassoc nsz arcp contract afn ogt float %i.og, %spec.select270.i ; 2 uses
  %spec.select.1.i = select i1 %i.oh, i64 1, i64 %spec.select.i66
  %spec.select270.1.i = select nsz i1 %i.oh, float %i.og, float %spec.select270.i
  %i.oi = extractelement <4 x float> %i.od, i64 2
  %i.oj = fcmp reassoc nsz arcp contract afn ogt float %i.oi, %spec.select270.1.i
  %spec.select.2.i = select i1 %i.oj, i64 2, i64 %spec.select.1.i ; 12 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %spec.select.2.i
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !12, !noalias !636 ; 13 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %spec.select.2.i
  %i.on = load float, ptr %i.om, align 4, !tbaa !12, !noalias !636
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %spec.select.2.i
  %i.op = load float, ptr %i.oo, align 4, !tbaa !12, !noalias !636
  %i.oq = fsub reassoc nsz arcp contract afn float %i.on, %i.ol
  %factor.op.fmul.i = fmul reassoc nsz arcp contract afn float %i.oq, f0x3DE38E39
  %i.or = insertelement <4 x float> poison, float %factor.op.fmul.i, i64 0
  %i.os = shufflevector <4 x float> %i.or, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ot = fmul reassoc nsz arcp contract afn <4 x float> %i.os, %i.nd
  %i.ou = fsub reassoc nsz arcp contract afn float %i.op, %i.ol
  %factor.op.fmul.1.i = fmul reassoc nsz arcp contract afn float %i.ou, f0x3DE38E39
  %i.ov = insertelement <4 x float> poison, float %factor.op.fmul.1.i, i64 0
  %i.ow = shufflevector <4 x float> %i.ov, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ox = fmul reassoc nsz arcp contract afn <4 x float> %i.ow, %i.nf
  %i.oy = fadd reassoc nsz arcp contract afn <4 x float> %i.ox, %i.ot
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %spec.select.2.i
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !12, !noalias !636
  %i.pb = fsub reassoc nsz arcp contract afn float %i.pa, %i.ol
  %factor.op.fmul.2.i = fmul reassoc nsz arcp contract afn float %i.pb, f0x3DE38E39
  %i.pc = insertelement <4 x float> poison, float %factor.op.fmul.2.i, i64 0
  %i.pd = shufflevector <4 x float> %i.pc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pe = fmul reassoc nsz arcp contract afn <4 x float> %i.pd, %i.ni
  %i.pf = fadd reassoc nsz arcp contract afn <4 x float> %i.oy, %i.pe
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %spec.select.2.i
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !12, !noalias !636
  %i.pi = fsub reassoc nsz arcp contract afn float %i.ph, %i.ol
  %factor.op.fmul.3.i = fmul reassoc nsz arcp contract afn float %i.pi, f0x3DE38E39
  %i.pj = insertelement <4 x float> poison, float %factor.op.fmul.3.i, i64 0
  %i.pk = shufflevector <4 x float> %i.pj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pl = fmul reassoc nsz arcp contract afn <4 x float> %i.pk, %i.nl
  %i.pm = fadd reassoc nsz arcp contract afn <4 x float> %i.pf, %i.pl
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %spec.select.2.i
  %i.po = load float, ptr %i.pn, align 4, !tbaa !12, !noalias !636
  %i.pp = fsub reassoc nsz arcp contract afn float %i.po, %i.ol
  %factor.op.fmul.4.i = fmul reassoc nsz arcp contract afn float %i.pp, f0x3DE38E39
  %i.pq = insertelement <4 x float> poison, float %factor.op.fmul.4.i, i64 0
  %i.pr = shufflevector <4 x float> %i.pq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ps = fmul reassoc nsz arcp contract afn <4 x float> %i.pr, %i.no
  %i.pt = fadd reassoc nsz arcp contract afn <4 x float> %i.pm, %i.ps
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %spec.select.2.i
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !12, !noalias !636
  %i.pw = fsub reassoc nsz arcp contract afn float %i.pv, %i.ol
  %factor.op.fmul.5.i = fmul reassoc nsz arcp contract afn float %i.pw, f0x3DE38E39
  %i.px = insertelement <4 x float> poison, float %factor.op.fmul.5.i, i64 0
  %i.py = shufflevector <4 x float> %i.px, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pz = fmul reassoc nsz arcp contract afn <4 x float> %i.py, %i.nr
  %i.qa = fadd reassoc nsz arcp contract afn <4 x float> %i.pt, %i.pz
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %spec.select.2.i
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !12, !noalias !636
  %i.qd = fsub reassoc nsz arcp contract afn float %i.qc, %i.ol
  %factor.op.fmul.6.i = fmul reassoc nsz arcp contract afn float %i.qd, f0x3DE38E39
  %i.qe = insertelement <4 x float> poison, float %factor.op.fmul.6.i, i64 0
  %i.qf = shufflevector <4 x float> %i.qe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qg = fmul reassoc nsz arcp contract afn <4 x float> %i.qf, %i.nu
  %i.qh = fadd reassoc nsz arcp contract afn <4 x float> %i.qa, %i.qg
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %spec.select.2.i
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !12, !noalias !636
  %i.qk = fsub reassoc nsz arcp contract afn float %i.qj, %i.ol
  %factor.op.fmul.7.i = fmul reassoc nsz arcp contract afn float %i.qk, f0x3DE38E39
  %i.ql = insertelement <4 x float> poison, float %factor.op.fmul.7.i, i64 0
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qn = fmul reassoc nsz arcp contract afn <4 x float> %i.qm, %i.nx
  %i.qo = fadd reassoc nsz arcp contract afn <4 x float> %i.qh, %i.qn
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %spec.select.2.i
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !12, !noalias !636
  %i.qr = fsub reassoc nsz arcp contract afn float %i.qq, %i.ol
  %factor.op.fmul.8.i = fmul reassoc nsz arcp contract afn float %i.qr, f0x3DE38E39
  %i.qs = insertelement <4 x float> poison, float %factor.op.fmul.8.i, i64 0
  %i.qt = shufflevector <4 x float> %i.qs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qu = fmul reassoc nsz arcp contract afn <4 x float> %i.qt, %i.oa
  %i.qv = fadd reassoc nsz arcp contract afn <4 x float> %i.qo, %i.qu
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kg
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !12, !alias.scope !633, !noalias !635
end_hunk_0
