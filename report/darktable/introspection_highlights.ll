Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@wavelets_process:bb.a
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !603

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i, label %.lr.ph.i.i.preheader36

.lr.ph.i.i.preheader36:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.036.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader36, %.lr.ph.i.i
  %.036.i.i = phi i64 [ %i.el, %.lr.ph.i.i ], [ %.036.i.i.ph, %.lr.ph.i.i.preheader36 ] ; 2 uses
  %i.dp = shl nuw i64 %.036.i.i, 2                ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.dp ; 5 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dp
  %i.ds = getelementptr [4 x i8], ptr %i.dq, i64 %i.bl
  %i.dt = getelementptr [4 x i8], ptr %i.dq, i64 %i.bp
  %i.du = getelementptr [4 x i8], ptr %i.dq, i64 %i.bq
  %i.dv = getelementptr [4 x i8], ptr %i.dq, i64 %i.bs
  %i.dw = getelementptr [4 x i8], ptr %i.dq, i64 %i.bv
  %i.dx = load <4 x float>, ptr %i.ds, align 4, !tbaa !12, !alias.scope !619, !noalias !621
  %i.dy = load <4 x float>, ptr %i.dt, align 4, !tbaa !12, !alias.scope !619, !noalias !621
  %i.dz = load <4 x float>, ptr %i.du, align 4, !tbaa !12, !alias.scope !619, !noalias !621
  %i.ea = fmul reassoc nsz arcp contract afn <4 x float> %i.dz, splat (float 3.750000e-01)
  %i.eb = load <4 x float>, ptr %i.dv, align 4, !tbaa !12, !alias.scope !619, !noalias !621
  %i.ec = load <4 x float>, ptr %i.dw, align 4, !tbaa !12, !alias.scope !619, !noalias !621
  %i.ed = fadd reassoc nsz arcp contract afn <4 x float> %i.eb, %i.dy
  %i.ee = fmul reassoc nsz arcp contract afn <4 x float> %i.ed, splat (float 2.500000e-01)
  %i.ef = fadd reassoc nsz arcp contract afn <4 x float> %i.ec, %i.dx
  %i.eg = fmul reassoc nsz arcp contract afn <4 x float> %i.ef, splat (float 6.250000e-02)
  %i.eh = fadd reassoc nsz arcp contract afn <4 x float> %i.ee, %i.ea
  %i.ei = fadd reassoc nsz arcp contract afn <4 x float> %i.eh, %i.eg ; 2 uses
  %i.ej = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ei, zeroinitializer
  %i.ek = select <4 x i1> %i.ej, <4 x float> zeroinitializer, <4 x float> %i.ei
  store <4 x float> %i.ek, ptr %i.dr, align 16, !tbaa !12, !alias.scope !620, !noalias !622
  %i.el = add nuw nsw i64 %.036.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.el, %3
  br i1 %exitcond.not.i.i, label %.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !604

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %middle.block
  %i.em = mul i64 %3, %i.bh
  br label %bb.i

._crit_edge.i:                                    ; preds = %bb.i, %dwt_interleave_rows.exit.i
  %i.en = add nuw nsw i64 %.03764.i, 1            ; 2 uses
  %exitcond69.not.i = icmp eq i64 %i.en, %4
  br i1 %exitcond69.not.i, label %decompose_2D_Bspline.exit, label %bb.d

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %.03663.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ga, %bb.i ] ; 6 uses
  %i.eo = add i64 %.03663.i, %i.em
  %i.ep = shl i64 %i.eo, 2                        ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.ep
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.er = trunc i64 %.03663.i to i32              ; 2 uses
  %i.es = sub nsw i32 %i.er, %i.am
  %i.et = call i32 @llvm.smax.i32(i32 %i.es, i32 0)
  %i.eu = shl nuw nsw i32 %i.et, 2
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = sub nsw i32 %i.er, %i.ak
  %i.ex = call i32 @llvm.smax.i32(i32 %i.ew, i32 0)
  %i.ey = shl nuw nsw i32 %i.ex, 2
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = add nuw nsw i64 %.03663.i, %i.an
  %..i41.i = call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.n)
  %i.fb = add nuw nsw i64 %.03663.i, %i.ao
  %i.fc = call i64 @llvm.umin.i64(i64 %i.fb, i64 %i.n)
  %i.fd = getelementptr [4 x i8], ptr %i.j, i64 %i.ev
  %i.fe = getelementptr [4 x i8], ptr %i.j, i64 %i.ez
  %.idx.i.i = shl i64 %.03663.i, 4
  %i.ff = getelementptr i8, ptr %i.j, i64 %.idx.i.i
  %.idx25.i.i = shl i64 %..i41.i, 4
  %i.fg = getelementptr i8, ptr %i.j, i64 %.idx25.i.i
  %.idx26.i.i = shl i64 %i.fc, 4
  %i.fh = getelementptr i8, ptr %i.j, i64 %.idx26.i.i
  %i.fi = load <4 x float>, ptr %i.fd, align 16, !tbaa !12, !alias.scope !623, !noalias !625
  %i.fj = load <4 x float>, ptr %i.fe, align 16, !tbaa !12, !alias.scope !623, !noalias !625
  %i.fk = load <4 x float>, ptr %i.ff, align 16, !tbaa !12, !alias.scope !623, !noalias !625
  %i.fl = fmul reassoc nsz arcp contract afn <4 x float> %i.fk, splat (float 3.750000e-01)
  %i.fm = load <4 x float>, ptr %i.fg, align 16, !tbaa !12, !alias.scope !623, !noalias !625
  %i.fn = load <4 x float>, ptr %i.fh, align 16, !tbaa !12, !alias.scope !623, !noalias !625
  %i.fo = fadd reassoc nsz arcp contract afn <4 x float> %i.fm, %i.fj
  %i.fp = fmul reassoc nsz arcp contract afn <4 x float> %i.fo, splat (float 2.500000e-01)
  %i.fq = fadd reassoc nsz arcp contract afn <4 x float> %i.fn, %i.fi
  %i.fr = fmul reassoc nsz arcp contract afn <4 x float> %i.fq, splat (float 6.250000e-02)
  %i.fs = fadd reassoc nsz arcp contract afn <4 x float> %i.fp, %i.fl
  %i.ft = fadd reassoc nsz arcp contract afn <4 x float> %i.fs, %i.fr ; 2 uses
  %i.fu = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ft, zeroinitializer
  %i.fv = select <4 x i1> %i.fu, <4 x float> zeroinitializer, <4 x float> %i.ft ; 2 uses
  store <4 x float> %i.fv, ptr %i.eq, align 4, !tbaa !12, !alias.scope !625, !noalias !623
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.ep
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ep
  %i.fy = load <4 x float>, ptr %i.fw, align 4, !tbaa !12, !noalias !618
  %i.fz = fsub reassoc nsz arcp contract afn <4 x float> %i.fy, %i.fv
  store <4 x float> %i.fz, ptr %i.fx, align 4, !tbaa !12, !noalias !618
  %i.ga = add nuw nsw i64 %.03663.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ga, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.i

decompose_2D_Bspline.exit:                        ; preds = %._crit_edge.i, %bb.c
  %.not82 = icmp eq i32 %.054121, %i.k            ; 2 uses
  %i.gb = shl nuw nsw i32 %.054121, 2
  %i.gc = call fastcc float @equivalent_sigma_at_step(i32 noundef %i.gb) ; 2 uses
  %i.gd = fmul reassoc nsz arcp contract afn float %i.gc, %i.gc ; 4 uses
  br i1 %i.o, label %bb.j, label %bb.t

bb.j:                                             ; preds = %decompose_2D_Bspline.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %.0, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ]
  br i1 %.not.i, label %guide_laplacians.exit, label %.lr.ph321.i

.lr.ph321.i:                                      ; preds = %bb.j
  %.not.i.i59 = icmp slt i32 %i.ak, %i.l
  %.reass318.i = add i32 %invariant.op.i, %i.ak
  %i.ge = add nsw i32 %i.ak, -1
  %i.gf = and i32 %i.ge, %i.l                     ; 3 uses
  %i.gg = icmp eq i32 %i.gf, 0
  %i.gh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gd
  %i.gi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gd
  %i.gj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gd
  %i.gk = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gd
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i65, %.lr.ph321.i
  %.0252319.i = phi i64 [ 0, %.lr.ph321.i ], [ %i.hl, %._crit_edge.i65 ] ; 2 uses
  %i.gl = trunc i64 %.0252319.i to i32            ; 5 uses
  br i1 %.not.i.i59, label %bb.l, label %dwt_interleave_rows.exit.i61

bb.l:                                             ; preds = %bb.k
  %i.gm = sdiv i32 %.reass318.i, %i.ak            ; 4 uses
  br i1 %i.gg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gn = mul nsw i32 %i.gf, %i.gm                ; 2 uses
  %i.go = icmp sgt i32 %i.gn, %i.gl
  br i1 %i.go, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.gp = sdiv i32 %i.gl, %i.gm
  %i.gq = srem i32 %i.gl, %i.gm
  %i.gr = shl nsw i32 %i.gq, %.054121
  %i.gs = add nsw i32 %i.gr, %i.gp
  br label %dwt_interleave_rows.exit.i61

bb.o:                                             ; preds = %bb.m
  %i.gt = sub nsw i32 %i.gl, %i.gn                ; 2 uses
  %i.gu = add nsw i32 %i.gm, -1                   ; 2 uses
  %i.gv = sdiv i32 %i.gt, %i.gu
  %i.gw = add nsw i32 %i.gv, %i.gf
  %i.gx = srem i32 %i.gt, %i.gu
  %i.gy = shl nsw i32 %i.gx, %.054121
  %i.gz = add nsw i32 %i.gw, %i.gy
  br label %dwt_interleave_rows.exit.i61

dwt_interleave_rows.exit.i61:                     ; preds = %bb.o, %bb.n, %bb.k
  %.1.i.i62 = phi i32 [ %i.gl, %bb.k ], [ %i.gs, %bb.n ], [ %i.gz, %bb.o ] ; 4 uses
  %i.ha = sub nsw i32 %.1.i.i62, %i.ak
  %i.hb = call i32 @llvm.smax.i32(i32 %i.ha, i32 0)
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = mul i64 %3, %i.hc                       ; 3 uses
  %i.he = sext i32 %.1.i.i62 to i64
  %i.hf = mul i64 %3, %i.he                       ; 3 uses
  %i.hg = add i32 %.1.i.i62, %i.ak
  %..i = call i32 @llvm.smin.i32(i32 %i.hg, i32 %invariant.op.i)
  %i.hh = sext i32 %..i to i64
  %i.hi = mul i64 %3, %i.hh                       ; 3 uses
  br i1 %.not.i40.i, label %._crit_edge.i65, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %dwt_interleave_rows.exit.i61
  %i.hj = add nsw i32 %.1.i.i62, 3
  %i.hk = sext i32 %i.hj to i64
  br label %bb.p

._crit_edge.i65:                                  ; preds = %.thread290.i, %dwt_interleave_rows.exit.i61
  %i.hl = add nuw nsw i64 %.0252319.i, 1          ; 2 uses
  %exitcond333.not.i = icmp eq i64 %i.hl, %4
  br i1 %exitcond333.not.i, label %guide_laplacians.exit, label %bb.k

bb.p:                                             ; preds = %.thread290.i, %.lr.ph.i63
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i63 ], [ %indvars.iv.next.i, %.thread290.i ] ; 6 uses
  %i.hm = add i64 %indvars.iv.i, %i.hf
  %i.hn = shl i64 %i.hm, 2                        ; 7 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !12, !alias.scope !628, !noalias !630 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !631
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.hn ; 2 uses
  %i.hs = or disjoint i64 %i.hn, 1                ; 2 uses
  %i.ht = or disjoint i64 %i.hn, 2                ; 3 uses
  %i.hu = load <4 x float>, ptr %i.hr, align 16, !tbaa !12, !alias.scope !626, !noalias !632 ; 7 uses
  store <4 x float> %i.hu, ptr %i.a, align 16, !tbaa !12, !noalias !631
  %i.hv = fcmp reassoc nsz arcp contract afn ogt float %i.hq, 0.000000e+00 ; 2 uses
  br i1 %i.hv, label %.preheader294.i, label %bb.q

.preheader294.i:                                  ; preds = %bb.p
  %i.hw = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %13 = add i32 %i.ak, %i.hw
  %i.hx = call i32 @llvm.smin.i32(i32 %13, i32 %i.q)
  %smin327.i = sext i32 %i.hx to i64              ; 3 uses
  %14 = add i64 %i.hf, %smin327.i
  %15 = shl i64 %14, 4
  %scevgep.i = getelementptr i8, ptr %6, i64 %15
  %16 = sub i32 %i.hw, %i.ak
  %smax.i = call i32 @llvm.smax.i32(i32 %16, i32 0)
  %17 = zext nneg i32 %smax.i to i64              ; 3 uses
  %i.hy = add i64 %i.hi, %17
  %i.hz = shl i64 %i.hy, 4
  %scevgep326.i = getelementptr i8, ptr %6, i64 %i.hz
  %i.ia = add i64 %i.hi, %smin327.i
  %i.ib = shl i64 %i.ia, 4
  %scevgep328.i = getelementptr i8, ptr %6, i64 %i.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !631
  %i.ic = add i64 %i.hd, %17
  %.idx.i.a = shl i64 %i.ic, 4
  %i.id = getelementptr inbounds nuw i8, ptr %6, i64 %.idx.i.a
  %i.ie = add i64 %indvars.iv.i, %i.hd
  %.idx262.i = shl i64 %i.ie, 4
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 %.idx262.i
  %i.ig = add i64 %i.hd, %smin327.i
  %.idx263.i = shl i64 %i.ig, 4
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 %.idx263.i
  %i.ii = add i64 %i.hf, %17
  %.idx264.i = shl i64 %i.ii, 4
  %i.ij = getelementptr inbounds nuw i8, ptr %6, i64 %.idx264.i
  %i.ik = add i64 %indvars.iv.i, %i.hi
  %.idx267.i = shl i64 %i.ik, 4
  %i.il = getelementptr i8, ptr %6, i64 %.idx267.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.id, i64 16, i1 false), !tbaa !12, !noalias !632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.if, i64 16, i1 false), !tbaa !12, !noalias !632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ih, i64 16, i1 false), !tbaa !12, !noalias !632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ij, i64 16, i1 false), !tbaa !12, !noalias !632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.hr, i64 16, i1 false), !tbaa !12, !noalias !632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.i, i64 16, i1 false), !tbaa !12, !noalias !632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep326.i, i64 16, i1 false), !tbaa !12, !noalias !632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.il, i64 16, i1 false), !tbaa !12, !noalias !632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep328.i, i64 16, i1 false), !tbaa !12, !noalias !632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33, !noalias !631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33, !noalias !631
  %i.im = load <4 x float>, ptr %i.b, align 16, !tbaa !12, !noalias !631 ; 3 uses
  %i.in = load <4 x float>, ptr %i.u, align 16, !tbaa !12, !noalias !631 ; 3 uses
  %i.io = load <4 x float>, ptr %i.v, align 16, !tbaa !12, !noalias !631 ; 3 uses
  %i.ip = load <4 x float>, ptr %i.w, align 16, !tbaa !12, !noalias !631 ; 3 uses
  %i.iq = load <4 x float>, ptr %i.x, align 16, !tbaa !12, !noalias !631 ; 3 uses
  %i.ir = load <4 x float>, ptr %i.y, align 16, !tbaa !12, !noalias !631 ; 3 uses
  %i.is = load <4 x float>, ptr %i.z, align 16, !tbaa !12, !noalias !631 ; 3 uses
  %i.it = load <4 x float>, ptr %i.aa, align 16, !tbaa !12, !noalias !631 ; 3 uses
  %i.iu = load <4 x float>, ptr %i.ab, align 16, !tbaa !12, !noalias !631 ; 2 uses
  %i.iv = shufflevector <4 x float> %i.in, <4 x float> %i.im, <8 x i32> <i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iw = shufflevector <4 x float> %i.io, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ix = shufflevector <8 x float> %i.iv, <8 x float> %i.iw, <8 x i32> <i32 0, i32 1, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iy = shufflevector <4 x float> %i.ip, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iz = shufflevector <8 x float> %i.ix, <8 x float> %i.iy, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ja = shufflevector <4 x float> %i.iq, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jb = shufflevector <8 x float> %i.iz, <8 x float> %i.ja, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 11, i32 poison, i32 poison, i32 poison>
  %i.jc = shufflevector <4 x float> %i.ir, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jd = shufflevector <8 x float> %i.jb, <8 x float> %i.jc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 poison, i32 poison>
  %i.je = shufflevector <4 x float> %i.is, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jf = shufflevector <8 x float> %i.jd, <8 x float> %i.je, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 poison>
  %i.jg = shufflevector <4 x float> %i.it, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jh = shufflevector <8 x float> %i.jf, <8 x float> %i.jg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  %i.ji = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.jh)
  %i.jj = insertelement <4 x float> %i.in, float %i.ji, i64 3
  %i.jk = insertelement <4 x float> %i.im, float -0.000000e+00, i64 3
  %i.jl = fadd reassoc nsz arcp contract afn <4 x float> %i.jj, %i.jk
  %i.jm = insertelement <4 x float> %i.io, float -0.000000e+00, i64 3
  %i.jn = fadd reassoc nsz arcp contract afn <4 x float> %i.jl, %i.jm
  %i.jo = insertelement <4 x float> %i.ip, float -0.000000e+00, i64 3
  %i.jp = fadd reassoc nsz arcp contract afn <4 x float> %i.jn, %i.jo
  %i.jq = insertelement <4 x float> %i.iq, float -0.000000e+00, i64 3
  %i.jr = fadd reassoc nsz arcp contract afn <4 x float> %i.jp, %i.jq
  %i.js = insertelement <4 x float> %i.ir, float -0.000000e+00, i64 3
  %i.jt = fadd reassoc nsz arcp contract afn <4 x float> %i.jr, %i.js
  %i.ju = insertelement <4 x float> %i.is, float -0.000000e+00, i64 3
  %i.jv = fadd reassoc nsz arcp contract afn <4 x float> %i.jt, %i.ju
  %i.jw = insertelement <4 x float> %i.it, float -0.000000e+00, i64 3
  %i.jx = fadd reassoc nsz arcp contract afn <4 x float> %i.jv, %i.jw
  %i.jy = fadd reassoc nsz arcp contract afn <4 x float> %i.jx, %i.iu
  %i.jz = fmul reassoc nsz arcp contract afn <4 x float> %i.jy, splat (float f0x3DE38E39) ; 14 uses
  %i.ka = extractelement <4 x float> %i.jz, i64 0
  store float %i.ka, ptr %i.c, align 16, !tbaa !12, !noalias !631
  %i.kb = extractelement <4 x float> %i.jz, i64 1 ; 2 uses
  store float %i.kb, ptr %i.ad, align 4, !tbaa !12, !noalias !631
  %i.kc = extractelement <4 x float> %i.jz, i64 2 ; 2 uses
  store float %i.kc, ptr %i.ae, align 8, !tbaa !12, !noalias !631
  %i.kd = extractelement <4 x float> %i.jz, i64 3 ; 2 uses
  store float %i.kd, ptr %i.af, align 4, !tbaa !12, !noalias !631
  %i.ke = fsub reassoc nsz arcp contract afn <4 x float> %i.im, %i.jz ; 3 uses
  %i.kf = fmul reassoc nsz arcp contract afn <4 x float> %i.ke, %i.ke
  %i.kg = fsub reassoc nsz arcp contract afn <4 x float> %i.in, %i.jz ; 3 uses
  %i.kh = fmul reassoc nsz arcp contract afn <4 x float> %i.kg, %i.kg
  %i.ki = fadd reassoc nsz arcp contract afn <4 x float> %i.kh, %i.kf
  %i.kj = fsub reassoc nsz arcp contract afn <4 x float> %i.io, %i.jz ; 3 uses
  %i.kk = fmul reassoc nsz arcp contract afn <4 x float> %i.kj, %i.kj
  %i.kl = fadd reassoc nsz arcp contract afn <4 x float> %i.ki, %i.kk
  %i.km = fsub reassoc nsz arcp contract afn <4 x float> %i.ip, %i.jz ; 3 uses
  %i.kn = fmul reassoc nsz arcp contract afn <4 x float> %i.km, %i.km
  %i.ko = fadd reassoc nsz arcp contract afn <4 x float> %i.kl, %i.kn
  %i.kp = fsub reassoc nsz arcp contract afn <4 x float> %i.iq, %i.jz ; 3 uses
  %i.kq = fmul reassoc nsz arcp contract afn <4 x float> %i.kp, %i.kp
  %i.kr = fadd reassoc nsz arcp contract afn <4 x float> %i.ko, %i.kq
  %i.ks = fsub reassoc nsz arcp contract afn <4 x float> %i.ir, %i.jz ; 3 uses
  %i.kt = fmul reassoc nsz arcp contract afn <4 x float> %i.ks, %i.ks
  %i.ku = fadd reassoc nsz arcp contract afn <4 x float> %i.kr, %i.kt
  %i.kv = fsub reassoc nsz arcp contract afn <4 x float> %i.is, %i.jz ; 3 uses
  %i.kw = fmul reassoc nsz arcp contract afn <4 x float> %i.kv, %i.kv
  %i.kx = fadd reassoc nsz arcp contract afn <4 x float> %i.ku, %i.kw
  %i.ky = fsub reassoc nsz arcp contract afn <4 x float> %i.it, %i.jz ; 3 uses
  %i.kz = fmul reassoc nsz arcp contract afn <4 x float> %i.ky, %i.ky
  %i.la = fadd reassoc nsz arcp contract afn <4 x float> %i.kx, %i.kz
  %i.lb = fsub reassoc nsz arcp contract afn <4 x float> %i.iu, %i.jz ; 3 uses
  %i.lc = fmul reassoc nsz arcp contract afn <4 x float> %i.lb, %i.lb
  %i.ld = fadd reassoc nsz arcp contract afn <4 x float> %i.la, %i.lc
  %i.le = fmul reassoc nsz arcp contract afn <4 x float> %i.ld, splat (float f0x3DE38E39) ; 4 uses
  store <4 x float> %i.le, ptr %i.d, align 16, !tbaa !12, !noalias !631
  %i.lf = extractelement <4 x float> %i.le, i64 0 ; 2 uses
  %i.lg = fcmp reassoc nsz arcp contract afn ogt float %i.lf, 0.000000e+00 ; 2 uses
  %spec.select.i66 = select i1 %i.lg, i64 0, i64 3
  %spec.select270.i = select nsz i1 %i.lg, float %i.lf, float 0.000000e+00 ; 2 uses
  %i.lh = extractelement <4 x float> %i.le, i64 1 ; 2 uses
  %i.li = fcmp reassoc nsz arcp contract afn ogt float %i.lh, %spec.select270.i ; 2 uses
  %spec.select.1.i = select i1 %i.li, i64 1, i64 %spec.select.i66
  %spec.select270.1.i = select nsz i1 %i.li, float %i.lh, float %spec.select270.i
  %i.lj = extractelement <4 x float> %i.le, i64 2
  %i.lk = fcmp reassoc nsz arcp contract afn ogt float %i.lj, %spec.select270.1.i
  %spec.select.2.i = select i1 %i.lk, i64 2, i64 %spec.select.1.i ; 12 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %spec.select.2.i
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !12, !noalias !631 ; 13 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %spec.select.2.i
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !12, !noalias !631
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %spec.select.2.i
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !12, !noalias !631
  %i.lr = fsub reassoc nsz arcp contract afn float %i.lo, %i.lm
  %factor.op.fmul.i = fmul reassoc nsz arcp contract afn float %i.lr, f0x3DE38E39
  %i.ls = insertelement <4 x float> poison, float %factor.op.fmul.i, i64 0
  %i.lt = shufflevector <4 x float> %i.ls, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lu = fmul reassoc nsz arcp contract afn <4 x float> %i.lt, %i.ke
  %i.lv = fsub reassoc nsz arcp contract afn float %i.lq, %i.lm
  %factor.op.fmul.1.i = fmul reassoc nsz arcp contract afn float %i.lv, f0x3DE38E39
  %i.lw = insertelement <4 x float> poison, float %factor.op.fmul.1.i, i64 0
  %i.lx = shufflevector <4 x float> %i.lw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ly = fmul reassoc nsz arcp contract afn <4 x float> %i.lx, %i.kg
  %i.lz = fadd reassoc nsz arcp contract afn <4 x float> %i.ly, %i.lu
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %spec.select.2.i
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !12, !noalias !631
  %i.mc = fsub reassoc nsz arcp contract afn float %i.mb, %i.lm
  %factor.op.fmul.2.i = fmul reassoc nsz arcp contract afn float %i.mc, f0x3DE38E39
  %i.md = insertelement <4 x float> poison, float %factor.op.fmul.2.i, i64 0
  %i.me = shufflevector <4 x float> %i.md, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mf = fmul reassoc nsz arcp contract afn <4 x float> %i.me, %i.kj
  %i.mg = fadd reassoc nsz arcp contract afn <4 x float> %i.lz, %i.mf
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %spec.select.2.i
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !12, !noalias !631
  %i.mj = fsub reassoc nsz arcp contract afn float %i.mi, %i.lm
  %factor.op.fmul.3.i = fmul reassoc nsz arcp contract afn float %i.mj, f0x3DE38E39
  %i.mk = insertelement <4 x float> poison, float %factor.op.fmul.3.i, i64 0
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mm = fmul reassoc nsz arcp contract afn <4 x float> %i.ml, %i.km
  %i.mn = fadd reassoc nsz arcp contract afn <4 x float> %i.mg, %i.mm
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %spec.select.2.i
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !12, !noalias !631
  %i.mq = fsub reassoc nsz arcp contract afn float %i.mp, %i.lm
  %factor.op.fmul.4.i = fmul reassoc nsz arcp contract afn float %i.mq, f0x3DE38E39
  %i.mr = insertelement <4 x float> poison, float %factor.op.fmul.4.i, i64 0
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mt = fmul reassoc nsz arcp contract afn <4 x float> %i.ms, %i.kp
  %i.mu = fadd reassoc nsz arcp contract afn <4 x float> %i.mn, %i.mt
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %spec.select.2.i
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !12, !noalias !631
  %i.mx = fsub reassoc nsz arcp contract afn float %i.mw, %i.lm
  %factor.op.fmul.5.i = fmul reassoc nsz arcp contract afn float %i.mx, f0x3DE38E39
  %i.my = insertelement <4 x float> poison, float %factor.op.fmul.5.i, i64 0
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> poison, <4 x i32> zeroinitializer
  %i.na = fmul reassoc nsz arcp contract afn <4 x float> %i.mz, %i.ks
  %i.nb = fadd reassoc nsz arcp contract afn <4 x float> %i.mu, %i.na
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %spec.select.2.i
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !12, !noalias !631
  %i.ne = fsub reassoc nsz arcp contract afn float %i.nd, %i.lm
  %factor.op.fmul.6.i = fmul reassoc nsz arcp contract afn float %i.ne, f0x3DE38E39
  %i.nf = insertelement <4 x float> poison, float %factor.op.fmul.6.i, i64 0
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nh = fmul reassoc nsz arcp contract afn <4 x float> %i.ng, %i.kv
  %i.ni = fadd reassoc nsz arcp contract afn <4 x float> %i.nb, %i.nh
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %spec.select.2.i
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !12, !noalias !631
  %i.nl = fsub reassoc nsz arcp contract afn float %i.nk, %i.lm
  %factor.op.fmul.7.i = fmul reassoc nsz arcp contract afn float %i.nl, f0x3DE38E39
  %i.nm = insertelement <4 x float> poison, float %factor.op.fmul.7.i, i64 0
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.no = fmul reassoc nsz arcp contract afn <4 x float> %i.nn, %i.ky
  %i.np = fadd reassoc nsz arcp contract afn <4 x float> %i.ni, %i.no
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %spec.select.2.i
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !12, !noalias !631
  %i.ns = fsub reassoc nsz arcp contract afn float %i.nr, %i.lm
  %factor.op.fmul.8.i = fmul reassoc nsz arcp contract afn float %i.ns, f0x3DE38E39
  %i.nt = insertelement <4 x float> poison, float %factor.op.fmul.8.i, i64 0
  %i.nu = shufflevector <4 x float> %i.nt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nv = fmul reassoc nsz arcp contract afn <4 x float> %i.nu, %i.lb
  %i.nw = fadd reassoc nsz arcp contract afn <4 x float> %i.np, %i.nv
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hn
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !12, !alias.scope !628, !noalias !630
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hs
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !12, !alias.scope !628, !noalias !630
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ht
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !12, !alias.scope !628, !noalias !630
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %spec.select.2.i
  %i.oe = load float, ptr %i.od, align 4, !tbaa !12, !noalias !631
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %spec.select.2.i ; 4 uses
  %i.og = load float, ptr %i.of, align 4, !tbaa !12, !noalias !631
  %reass.add.i = fsub reassoc nsz arcp contract afn float %i.og, %i.lm
  %i.oh = extractelement <4 x float> %i.hu, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.jz, %i.hu
  %.neg292.i = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.oi = extractelement <4 x float> %i.hu, i64 1 ; 2 uses
  %.neg292.1.i = fsub reassoc nsz arcp contract afn float %i.kb, %i.oi
  %i.oj = extractelement <4 x float> %i.hu, i64 2 ; 2 uses
  %.neg292.2.i = fsub reassoc nsz arcp contract afn float %i.kc, %i.oj
  %i.ok = insertelement <4 x float> poison, float %i.oe, i64 0
  %i.ol = shufflevector <4 x float> %i.ok, <4 x float> poison, <4 x i32> zeroinitializer
  %i.om = fdiv reassoc nsz arcp contract afn <4 x float> %i.nw, %i.ol
  %i.on = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.om, <4 x float> zeroinitializer) ; 4 uses
  %i.oo = extractelement <4 x float> %i.on, i64 0
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, %i.oo
  %i.op = fadd reassoc nsz arcp contract afn float %.neg292.i, %reass.mul.i
  %i.oq = fmul reassoc nsz arcp contract afn float %i.op, %i.ny
  %i.or = fmul reassoc nsz arcp contract afn float %i.oq, %i.gh
  %i.os = extractelement <4 x float> %i.hu, i64 3 ; 2 uses
  %.neg292.3.i = fsub reassoc nsz arcp contract afn float %i.kd, %i.os
  %i.ot = fadd reassoc nsz arcp contract afn float %i.or, %i.oh ; 2 uses
  store float %i.ot, ptr %i.a, align 16, !tbaa !12, !noalias !631
  %i.ou = load float, ptr %i.of, align 4, !tbaa !12, !noalias !631
  %reass.add.1.i = fsub reassoc nsz arcp contract afn float %i.ou, %i.lm
  %i.ov = extractelement <4 x float> %i.on, i64 1
  %reass.mul.1.i = fmul reassoc nsz arcp contract afn float %reass.add.1.i, %i.ov
  %i.ow = fadd reassoc nsz arcp contract afn float %.neg292.1.i, %reass.mul.1.i
  %i.ox = fmul reassoc nsz arcp contract afn float %i.ow, %i.oa
  %i.oy = fmul reassoc nsz arcp contract afn float %i.ox, %i.gi
end_hunk_0
begin_hunk_1_@wavelets_process:bb.a
  %i.tk = xor i32 %i.tj, %i.tf
  %i.tl = call noundef i32 @llvm.fshl.i32(i32 %i.tj, i32 %i.tj, i32 11)
  %i.tm = add i32 %i.tl, %i.tk
  %i.tn = lshr i32 %i.tm, 8
  %i.to = uitofp reassoc nsz arcp contract afn nneg i32 %i.tn to float
  %i.tp = fmul reassoc nnan nsz arcp contract afn float %i.st, f0x34C90FDB
  %sincos.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.tp)
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1
  %i.tq = fmul reassoc nnan nsz arcp contract afn float %i.ti, f0x34C90FDB
  %sincos60.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.tq)
  %sin61.i.i.i = extractvalue { float, float } %sincos60.i.i.i, 0
  %i.tr = fmul reassoc nnan nsz arcp contract afn float %i.to, f0x34C90FDB
  %sincos63.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.tr)
  %cos65.i.i.i = extractvalue { float, float } %sincos63.i.i.i, 1
  %i.ts = add i32 %i.tg, %i.tf
  %i.tt = lshr i32 %i.ts, 8
  %i.tu = uitofp reassoc nsz arcp contract afn nneg i32 %i.tt to float
  %i.tv = fmul reassoc nnan nsz arcp contract afn float %i.tu, f0x33800000
  %i.tw = call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.tv, float f0x00800000)
  %i.tx = call fast float @llvm.log.f32(float %i.tw)
  %i.ty = fmul reassoc nnan nsz arcp contract afn float %i.tx, -2.000000e+00
  %i.tz = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ty)
  %i.ua = add i32 %i.sr, %i.sp
  %i.ub = add i32 %i.sd, %i.sc
  %i.uc = insertelement <2 x i32> poison, i32 %i.ub, i64 0
  %i.ud = insertelement <2 x i32> %i.uc, i32 %i.ua, i64 1
  %i.ue = lshr <2 x i32> %i.ud, splat (i32 8)
  %i.uf = uitofp nneg <2 x i32> %i.ue to <2 x float>
  %i.ug = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.uf, splat (float f0x33800000)
  %i.uh = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ug, <2 x float> splat (float f0x00800000))
  %i.ui = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.uh)
  %i.uj = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ui, splat (float -2.000000e+00)
  %i.uk = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.uj)
  %i.ul = extractelement <2 x float> %i.pz, i64 0
  %i.um = fadd reassoc nnan nsz arcp contract afn float %i.ul, 3.750000e-01
  %i.un = load float, ptr %i.qi, align 4, !tbaa !12, !alias.scope !629, !noalias !633 ; 2 uses
  %i.uo = fadd reassoc nsz arcp contract afn float %i.un, 3.750000e-01
  %i.up = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.uo, float 0.000000e+00)
  %i.uq = fmul reassoc nsz arcp contract afn float %cos65.i.i.i, %i.tz
  %i.ur = fmul reassoc nsz arcp contract afn float %i.uq, %i.qk
  %i.us = load float, ptr %i.qj, align 8, !tbaa !12, !alias.scope !629, !noalias !633 ; 3 uses
  %i.ut = fadd reassoc nsz arcp contract afn float %i.us, 3.750000e-01
  %i.uu = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ut, float 0.000000e+00)
  %i.uv = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.uu)
  %i.uw = fmul reassoc nnan nsz arcp contract afn float %i.uv, 2.000000e+00
  %i.ux = fadd reassoc nsz arcp contract afn float %i.uw, %i.ur ; 2 uses
  %i.uy = fmul reassoc nsz arcp contract afn float %i.ux, %i.ux
  %i.uz = fmul reassoc nsz arcp contract afn float %i.qk, %i.qk
  %i.va = fsub reassoc nsz arcp contract afn float %i.uy, %i.uz
  %i.vb = fmul reassoc nsz arcp contract afn float %i.va, 2.500000e-01
  %i.vc = insertelement <2 x float> poison, float %cos.i.i.i, i64 0
  %i.vd = insertelement <2 x float> %i.vc, float %sin61.i.i.i, i64 1
  %i.ve = fmul reassoc nsz arcp contract afn <2 x float> %i.vd, %i.uk
  %i.vf = fmul reassoc nsz arcp contract afn <2 x float> %i.ve, %i.qh
  %i.vg = insertelement <2 x float> poison, float %i.um, i64 0
  %i.vh = insertelement <2 x float> %i.vg, float %i.up, i64 1
  %i.vi = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.vh)
  %i.vj = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.vi, splat (float 2.000000e+00)
  %i.vk = fadd reassoc nsz arcp contract afn <2 x float> %i.vj, %i.vf ; 2 uses
  %i.vl = fmul reassoc nsz arcp contract afn <2 x float> %i.vk, %i.vk
  %i.vm = fmul reassoc nsz arcp contract afn <2 x float> %i.qh, %i.qh
  %i.vn = fsub reassoc nsz arcp contract afn <2 x float> %i.vl, %i.vm
  %i.vo = fmul reassoc nsz arcp contract afn <2 x float> %i.vn, splat (float 2.500000e-01)
  %i.vp = insertelement <2 x float> %i.pz, float %i.un, i64 1 ; 2 uses
  %i.vq = fsub reassoc nsz arcp contract afn <2 x float> splat (float -3.750000e-01), %i.vp
  %i.vr = fadd reassoc nsz arcp contract afn <2 x float> %i.vq, %i.vo
  %i.vs = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.vr)
  %i.vt = insertelement <2 x float> poison, float %i.hq, i64 0
  %i.vu = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vv = fmul reassoc nsz arcp contract afn <2 x float> %i.vs, %i.vu
  %i.vw = fadd reassoc nsz arcp contract afn <2 x float> %i.vv, %i.vp
  %i.vx = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.vw, <2 x float> zeroinitializer)
  %i.vy = fsub reassoc nsz arcp contract afn float -3.750000e-01, %i.us
  %i.vz = fadd reassoc nsz arcp contract afn float %i.vy, %i.vb
  %i.wa = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.vz)
  %i.wb = fmul reassoc nsz arcp contract afn float %i.wa, %i.hq
  %i.wc = fadd reassoc nsz arcp contract afn float %i.wb, %i.us
  %i.wd = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wc, float 0.000000e+00)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader295.preheader.i
  %i.we = phi float [ %i.qg, %.preheader295.preheader.i ], [ %i.wd, %bb.r ] ; 3 uses
  %i.wf = phi <2 x float> [ %i.pz, %.preheader295.preheader.i ], [ %i.vx, %bb.r ] ; 5 uses
  %foldExtExtBinop26 = fmul reassoc nsz arcp contract afn <2 x float> %i.wf, %i.wf
  %i.wg = extractelement <2 x float> %foldExtExtBinop26, i64 0
  %foldExtExtBinop28 = fmul reassoc nsz arcp contract afn <2 x float> %i.wf, %i.wf
  %i.wh = extractelement <2 x float> %foldExtExtBinop28, i64 1
  %i.wi = fmul reassoc nsz arcp contract afn float %i.we, %i.we
  %i.wj = fadd reassoc nsz arcp contract afn float %i.wh, %i.wi
  %i.wk = fadd reassoc nsz arcp contract afn float %i.wj, %i.wg
  %i.wl = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.wk)
  %i.wm = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wl, float f0x358637BD) ; 2 uses
  %i.wn = shufflevector <2 x float> %i.wf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wo = insertelement <4 x float> %i.wn, float %i.we, i64 2
  %i.wp = insertelement <4 x float> %i.wo, float %i.wm, i64 3
  %i.wq = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.wm, i64 0
  %i.wr = shufflevector <4 x float> %i.wq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ws = fdiv reassoc nsz arcp contract afn <4 x float> %i.wp, %i.wr
  store <4 x float> %i.ws, ptr %i.pr, align 16, !tbaa !12, !alias.scope !629, !noalias !633
  br label %.thread290.i

.thread290.i:                                     ; preds = %bb.s, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !631
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i, %3
  br i1 %exitcond.not.i64, label %._crit_edge.i65, label %bb.p

bb.t:                                             ; preds = %decompose_2D_Bspline.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %.0, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ]
  br i1 %.not.i, label %guide_laplacians.exit, label %.lr.ph214.i

.lr.ph214.i:                                      ; preds = %bb.t
  %.not.i.i69 = icmp slt i32 %i.ak, %i.l
  %.reass.i70 = add i32 %invariant.op.i, %i.ak
  %i.wt = add nsw i32 %i.ak, -1
  %i.wu = and i32 %i.wt, %i.l                     ; 3 uses
  %i.wv = icmp eq i32 %i.wu, 0
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i78, %.lr.ph214.i
  %.0179212.i = phi i64 [ 0, %.lr.ph214.i ], [ %i.xu, %._crit_edge.i78 ] ; 2 uses
  %i.ww = trunc i64 %.0179212.i to i32            ; 5 uses
  br i1 %.not.i.i69, label %bb.v, label %dwt_interleave_rows.exit.i72

bb.v:                                             ; preds = %bb.u
  %i.wx = sdiv i32 %.reass.i70, %i.ak             ; 4 uses
  br i1 %i.wv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.wy = mul nsw i32 %i.wu, %i.wx                ; 2 uses
  %i.wz = icmp sgt i32 %i.wy, %i.ww
  br i1 %i.wz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.xa = sdiv i32 %i.ww, %i.wx
  %i.xb = srem i32 %i.ww, %i.wx
  %i.xc = shl nsw i32 %i.xb, %.054121
  %i.xd = add nsw i32 %i.xc, %i.xa
  br label %dwt_interleave_rows.exit.i72

bb.y:                                             ; preds = %bb.w
  %i.xe = sub nsw i32 %i.ww, %i.wy                ; 2 uses
  %i.xf = add nsw i32 %i.wx, -1                   ; 2 uses
  %i.xg = sdiv i32 %i.xe, %i.xf
  %i.xh = add nsw i32 %i.xg, %i.wu
  %i.xi = srem i32 %i.xe, %i.xf
  %i.xj = shl nsw i32 %i.xi, %.054121
  %i.xk = add nsw i32 %i.xh, %i.xj
  br label %dwt_interleave_rows.exit.i72

dwt_interleave_rows.exit.i72:                     ; preds = %bb.y, %bb.x, %bb.u
  %.1.i.i73 = phi i32 [ %i.ww, %bb.u ], [ %i.xd, %bb.x ], [ %i.xk, %bb.y ] ; 3 uses
  %i.xl = sext i32 %.1.i.i73 to i64
  %i.xm = sub i32 %.1.i.i73, %i.ak
  %i.xn = call i32 @llvm.smax.i32(i32 %i.xm, i32 0)
  %i.xo = zext nneg i32 %i.xn to i64
  %i.xp = mul i64 %3, %i.xo                       ; 3 uses
  %i.xq = mul i64 %3, %i.xl                       ; 3 uses
  %i.xr = add i32 %.1.i.i73, %i.ak
  %..i74 = call i32 @llvm.smin.i32(i32 %i.xr, i32 %invariant.op.i)
  %i.xs = sext i32 %..i74 to i64
  %i.xt = mul i64 %3, %i.xs                       ; 3 uses
  br i1 %.not.i40.i, label %._crit_edge.i78, label %.lr.ph.i75

._crit_edge.i78:                                  ; preds = %.loopexit.i76, %dwt_interleave_rows.exit.i72
  %i.xu = add nuw nsw i64 %.0179212.i, 1          ; 2 uses
  %exitcond220.not.i = icmp eq i64 %i.xu, %4
  br i1 %exitcond220.not.i, label %guide_laplacians.exit, label %bb.u

.lr.ph.i75:                                       ; preds = %dwt_interleave_rows.exit.i72, %.loopexit.i76
  %.0178211.i = phi i64 [ %i.abu, %.loopexit.i76 ], [ 0, %dwt_interleave_rows.exit.i72 ] ; 5 uses
  %i.xv = add i64 %.0178211.i, %i.xq
  %i.xw = shl i64 %i.xv, 2                        ; 6 uses
  %i.xx = or disjoint i64 %i.xw, 2                ; 3 uses
  %i.xy = or disjoint i64 %i.xw, 3                ; 2 uses
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.xy
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !12, !alias.scope !637, !noalias !639
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.xw
  %i.yc = load <2 x float>, ptr %i.yb, align 16, !tbaa !12, !alias.scope !635, !noalias !640 ; 3 uses
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.xx
  %i.ye = load float, ptr %i.yd, align 8, !tbaa !12, !alias.scope !635, !noalias !640 ; 3 uses
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.xy
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !12, !alias.scope !635, !noalias !640 ; 3 uses
  %i.yh = fcmp reassoc nsz arcp contract afn ogt float %i.ya, 0.000000e+00 ; 2 uses
  br i1 %i.yh, label %.preheader.i, label %bb.z

.preheader.i:                                     ; preds = %.lr.ph.i75
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.xx
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !12, !alias.scope !637, !noalias !639
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.xw
  %i.yl = trunc i64 %.0178211.i to i32            ; 2 uses
  %i.ym = sub i32 %i.yl, %i.ak
  %smax.i79 = call i32 @llvm.smax.i32(i32 %i.ym, i32 0)
  %i.yn = zext nneg i32 %smax.i79 to i64          ; 3 uses
  %18 = add i64 %i.xt, %i.yn
  %19 = shl i64 %18, 4
  %scevgep.i80 = getelementptr i8, ptr %6, i64 %19 ; 2 uses
  %20 = add i32 %i.ak, %i.yl
  %.194.i = call i32 @llvm.smin.i32(i32 %20, i32 %i.q)
  %21 = sext i32 %.194.i to i64                   ; 3 uses
  %i.yo = add i64 %i.xp, %i.yn
  %.idx.i81 = shl i64 %i.yo, 4
  %i.yp = getelementptr inbounds nuw i8, ptr %6, i64 %.idx.i81 ; 2 uses
  %i.yq = add i64 %.0178211.i, %i.xp
  %.idx187.i = shl i64 %i.yq, 4
  %i.yr = getelementptr inbounds nuw i8, ptr %6, i64 %.idx187.i ; 2 uses
  %i.ys = add i64 %i.xp, %21
  %.idx188.i = shl i64 %i.ys, 4
  %i.yt = getelementptr inbounds nuw i8, ptr %6, i64 %.idx188.i ; 2 uses
  %i.yu = add i64 %i.xq, %i.yn
  %.idx189.i = shl i64 %i.yu, 4
  %i.yv = getelementptr inbounds nuw i8, ptr %6, i64 %.idx189.i ; 2 uses
  %i.yw = add i64 %i.xq, %21
  %.idx190.i = shl i64 %i.yw, 4
  %i.yx = getelementptr i8, ptr %6, i64 %.idx190.i ; 2 uses
  %i.yy = add i64 %.0178211.i, %i.xt
  %.idx192.i = shl i64 %i.yy, 4
  %i.yz = getelementptr i8, ptr %6, i64 %.idx192.i ; 2 uses
  %i.za = add i64 %i.xt, %21
  %.idx193.i = shl i64 %i.za, 4
  %i.zb = getelementptr i8, ptr %6, i64 %.idx193.i ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !12, !alias.scope !635, !noalias !640
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %.sroa.10.16.copyload.i = load float, ptr %.sroa.10.16..sroa_idx.i, align 8, !tbaa !12, !alias.scope !635, !noalias !640
  %.sroa.15.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %.sroa.15.32.copyload.i = load float, ptr %.sroa.15.32..sroa_idx.i, align 8, !tbaa !12, !alias.scope !635, !noalias !640
  %.sroa.20.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %.sroa.20.48.copyload.i = load float, ptr %.sroa.20.48..sroa_idx.i, align 8, !tbaa !12, !alias.scope !635, !noalias !640
  %.sroa.30.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %.sroa.30.80.copyload.i = load float, ptr %.sroa.30.80..sroa_idx.i, align 8, !tbaa !12, !alias.scope !635, !noalias !640
  %.sroa.35.96.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i80, i64 8
  %.sroa.35.96.copyload.i = load float, ptr %.sroa.35.96.scevgep.sroa_idx.i, align 8, !tbaa !12, !alias.scope !635, !noalias !640
  %.sroa.40.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %.sroa.40.112.copyload.i = load float, ptr %.sroa.40.112..sroa_idx.i, align 8, !tbaa !12, !alias.scope !635, !noalias !640
  %.sroa.45.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %.sroa.45.128.copyload.i = load float, ptr %.sroa.45.128..sroa_idx.i, align 8, !tbaa !12, !alias.scope !635, !noalias !640
  %i.zc = fmul reassoc nsz arcp contract afn <2 x float> %i.ah, %i.yc
  %i.zd = load <2 x float>, ptr %i.yp, align 16, !tbaa !12, !alias.scope !635, !noalias !640
  %i.ze = load <2 x float>, ptr %i.yr, align 16, !tbaa !12, !alias.scope !635, !noalias !640
  %i.zf = load <2 x float>, ptr %i.yt, align 16, !tbaa !12, !alias.scope !635, !noalias !640
  %i.zg = load <2 x float>, ptr %i.yv, align 16, !tbaa !12, !alias.scope !635, !noalias !640
  %i.zh = load <2 x float>, ptr %i.yx, align 16, !tbaa !12, !alias.scope !635, !noalias !640
  %i.zi = load <2 x float>, ptr %scevgep.i80, align 16, !tbaa !12, !alias.scope !635, !noalias !640
  %i.zj = load <2 x float>, ptr %i.yz, align 16, !tbaa !12, !alias.scope !635, !noalias !640
  %i.zk = load <2 x float>, ptr %i.zb, align 16, !tbaa !12, !alias.scope !635, !noalias !640
  %i.zl = fadd reassoc nsz arcp contract afn <2 x float> %i.zg, %i.ze
  %i.zm = fadd reassoc nsz arcp contract afn <2 x float> %i.zl, %i.zh
  %i.zn = fadd reassoc nsz arcp contract afn <2 x float> %i.zm, %i.zj
  %i.zo = fmul reassoc nsz arcp contract afn <2 x float> %i.zn, splat (float 5.000000e-01)
  %i.zp = fadd reassoc nsz arcp contract afn <2 x float> %i.zf, %i.zd
  %i.zq = fadd reassoc nsz arcp contract afn <2 x float> %i.zp, %i.zi
  %i.zr = fadd reassoc nsz arcp contract afn <2 x float> %i.zq, %i.zk
  %i.zs = fmul reassoc nsz arcp contract afn <2 x float> %i.zr, splat (float 2.500000e-01)
  %i.zt = fadd reassoc nsz arcp contract afn <2 x float> %i.zs, %i.zo
  %i.zu = load <2 x float>, ptr %i.yk, align 4, !tbaa !12, !alias.scope !637, !noalias !639
  %i.zv = fmul reassoc nsz arcp contract afn <2 x float> %i.zu, splat (float f0x3EA0DE4A)
  %i.zw = fadd reassoc nsz arcp contract afn <2 x float> %i.zt, %i.zc
  %i.zx = fmul reassoc nsz arcp contract afn <2 x float> %i.zv, %i.zw
  %i.zy = fadd reassoc nsz arcp contract afn <2 x float> %i.zx, %i.yc
  %i.zz = fmul reassoc nsz arcp contract afn float %i.yj, f0x3EA0DE4A
  %reass.add99.a = fadd reassoc nsz arcp contract afn float %.sroa.20.48.copyload.i, %.sroa.10.16.copyload.i
  %reass.add100 = fadd reassoc nsz arcp contract afn float %reass.add99.a, %.sroa.30.80.copyload.i
  %reass.add101.a = fadd reassoc nsz arcp contract afn float %reass.add100, %.sroa.40.112.copyload.i
  %reass.mul102 = fmul reassoc nsz arcp contract afn float %reass.add101.a, 5.000000e-01
  %reass.add103.a = fadd reassoc nsz arcp contract afn float %.sroa.15.32.copyload.i, %.sroa.5.0.copyload.i
  %reass.add104 = fadd reassoc nsz arcp contract afn float %reass.add103.a, %.sroa.35.96.copyload.i
  %reass.add105 = fadd reassoc nsz arcp contract afn float %reass.add104, %.sroa.45.128.copyload.i
  %reass.mul106 = fmul reassoc nsz arcp contract afn float %reass.add105, 2.500000e-01
  %reass.mul112 = fmul reassoc nsz arcp contract afn float %reass.add107, %i.ye
  %i.aaa = fadd reassoc nsz arcp contract afn float %reass.mul106, %reass.mul102
  %i.aab = fadd reassoc nsz arcp contract afn float %i.aaa, %reass.mul112
  %i.aac = fmul reassoc nsz arcp contract afn float %i.zz, %i.aab
  %i.aad = fadd reassoc nsz arcp contract afn float %i.aac, %i.ye
  br label %bb.z

bb.z:                                             ; preds = %.preheader.i, %.lr.ph.i75
  %.sroa.11264.0.i = phi nsz float [ %i.aad, %.preheader.i ], [ %i.ye, %.lr.ph.i75 ] ; 3 uses
  %i.aae = phi <2 x float> [ %i.zy, %.preheader.i ], [ %i.yc, %.lr.ph.i75 ] ; 3 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.xw ; 9 uses
  br i1 %.not149.not, label %.preheader199.i, label %.preheader197.i

.preheader199.i:                                  ; preds = %bb.z
  store <2 x float> %i.aae, ptr %i.aaf, align 16, !tbaa !12, !alias.scope !638, !noalias !641
  %.sroa.11264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  store float %.sroa.11264.0.i, ptr %.sroa.11264.0..sroa_idx.i, align 8, !tbaa !12, !alias.scope !638, !noalias !641
  %.sroa.15266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aaf, i64 12
  store float %i.yg, ptr %.sroa.15266.0..sroa_idx.i, align 4, !tbaa !12, !alias.scope !638, !noalias !641
  %i.aag = insertelement <2 x float> poison, float %.sroa.11264.0.i, i64 0
  %i.aah = insertelement <2 x float> %i.aag, float %i.yg, i64 1
  br label %.loopexit198.i

.preheader197.i:                                  ; preds = %bb.z
  %i.aai = load <2 x float>, ptr %i.aaf, align 16, !tbaa !12, !alias.scope !638, !noalias !641
  %i.aaj = fadd reassoc nsz arcp contract afn <2 x float> %i.aai, %i.aae ; 2 uses
  store <2 x float> %i.aaj, ptr %i.aaf, align 16, !tbaa !12, !alias.scope !638, !noalias !641
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8 ; 2 uses
  %i.aal = load <2 x float>, ptr %i.aak, align 8, !tbaa !12, !alias.scope !638, !noalias !641
  %i.aam = insertelement <2 x float> poison, float %.sroa.11264.0.i, i64 0
  %i.aan = insertelement <2 x float> %i.aam, float %i.yg, i64 1
  %i.aao = fadd reassoc nsz arcp contract afn <2 x float> %i.aal, %i.aan ; 2 uses
  store <2 x float> %i.aao, ptr %i.aak, align 8, !tbaa !12, !alias.scope !638, !noalias !641
  br label %.loopexit198.i

.loopexit198.i:                                   ; preds = %.preheader197.i, %.preheader199.i
  %i.aap = phi <2 x float> [ %i.aae, %.preheader199.i ], [ %i.aaj, %.preheader197.i ]
  %i.aaq = phi <2 x float> [ %i.aah, %.preheader199.i ], [ %i.aao, %.preheader197.i ]
  br i1 %.not82, label %.preheader196.preheader.i, label %.loopexit.i76

.preheader196.preheader.i:                        ; preds = %.loopexit198.i
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.xw
  %i.aas = load <2 x float>, ptr %i.aar, align 16, !tbaa !12, !alias.scope !636, !noalias !642
  %i.aat = fadd reassoc nsz arcp contract afn <2 x float> %i.aas, %i.aap
  %i.aau = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aat, <2 x float> zeroinitializer) ; 6 uses
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.xx
  %i.aaw = load <2 x float>, ptr %i.aav, align 8, !tbaa !12, !alias.scope !636, !noalias !642
  %i.aax = fadd reassoc nsz arcp contract afn <2 x float> %i.aaw, %i.aaq ; 2 uses
  %i.aay = extractelement <2 x float> %i.aax, i64 0
  %i.aaz = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aay, float 0.000000e+00) ; 4 uses
  %i.aba = extractelement <2 x float> %i.aax, i64 1
  %i.abb = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aba, float 0.000000e+00) ; 3 uses
  br i1 %i.yh, label %.loopexit195.loopexit.i, label %.loopexit.loopexit.i

.loopexit195.loopexit.i:                          ; preds = %.preheader196.preheader.i
  %foldExtExtBinop30 = fmul reassoc nsz arcp contract afn <2 x float> %i.aau, %i.aau
  %foldExtExtBinop32 = fmul reassoc nsz arcp contract afn <2 x float> %i.aau, %i.aau
  %shift = shufflevector <2 x float> %foldExtExtBinop32, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop34 = fadd reassoc nsz arcp contract afn <2 x float> %shift, %foldExtExtBinop30
  %i.abc = extractelement <2 x float> %foldExtExtBinop34, i64 0
  %i.abd = fmul reassoc nsz arcp contract afn float %i.aaz, %i.aaz
  %i.abe = fadd reassoc nsz arcp contract afn float %i.abc, %i.abd
  %i.abf = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.abe) ; 2 uses
  %i.abg = fcmp reassoc nsz arcp contract afn ogt float %i.abf, f0x38D1B717
  %i.abh = select reassoc nsz arcp contract afn i1 %i.abg, float %i.abf, float 1.000000e+00 ; 2 uses
  %i.abi = insertelement <2 x float> poison, float %i.abh, i64 0
  %i.abj = shufflevector <2 x float> %i.abi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abk = fdiv reassoc nsz arcp contract afn <2 x float> %i.aau, %i.abj
  %i.abl = fdiv reassoc nsz arcp contract afn float %i.aaz, %i.abh
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit195.loopexit.i, %.preheader196.preheader.i
  %i.abm = phi float [ %i.abl, %.loopexit195.loopexit.i ], [ %i.aaz, %.preheader196.preheader.i ]
  %i.abn = phi <2 x float> [ %i.abk, %.loopexit195.loopexit.i ], [ %i.aau, %.preheader196.preheader.i ]
  %i.abo = insertelement <2 x float> poison, float %i.abb, i64 0
  %i.abp = shufflevector <2 x float> %i.abo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abq = fmul reassoc nsz arcp contract afn <2 x float> %i.abn, %i.abp
  store <2 x float> %i.abq, ptr %i.aaf, align 16, !tbaa !12, !alias.scope !638, !noalias !641
  %i.abr = fmul reassoc nsz arcp contract afn float %i.abm, %i.abb
  %i.abs = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  store float %i.abr, ptr %i.abs, align 8, !tbaa !12, !alias.scope !638, !noalias !641
  %i.abt = getelementptr inbounds nuw i8, ptr %i.aaf, i64 12
  store float %i.abb, ptr %i.abt, align 4, !tbaa !12, !alias.scope !638, !noalias !641
  br label %.loopexit.i76

.loopexit.i76:                                    ; preds = %.loopexit.loopexit.i, %.loopexit198.i
  %i.abu = add nuw nsw i64 %.0178211.i, 1         ; 2 uses
  %exitcond.not.i77 = icmp eq i64 %i.abu, %3
  br i1 %exitcond.not.i77, label %._crit_edge.i78, label %.lr.ph.i75

guide_laplacians.exit:                            ; preds = %._crit_edge.i78, %._crit_edge.i65, %bb.t, %bb.j
  %i.abv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !141
  %.not56 = icmp eq ptr %i.abv, null
  br i1 %.not56, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %guide_laplacians.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.abw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.125, i32 noundef %.054121) #33 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.e, ptr noundef %.053, i32 noundef %i.p, i32 noundef %i.l, i32 noundef 16, ptr noundef nonnull @.str.123) #33
  %i.abx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.126, i32 noundef %.054121) #33 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.e, ptr noundef %.0, i32 noundef %i.p, i32 noundef %i.l, i32 noundef 16, ptr noundef nonnull @.str.123) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %guide_laplacians.exit
  %i.aby = add nuw nsw i32 %.054121, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.aby, %5
  br i1 %exitcond.not, label %bb.b, label %bb.c
}

declare void @dt_dump_pfm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #14

; Function Attrs: inlinehint nofree nosync nounwind memory(none) uwtable
define internal fastcc float @equivalent_sigma_at_step(i32 noundef %0) unnamed_addr #27 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %common.ret1, label %bb.b

common.ret1:                                      ; preds = %bb.a, %bb.b
  %common.ret1.op = phi float [ %i.j, %bb.b ], [ f0x3F871634, %bb.a ]
  ret float %common.ret1.op

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %0, -1
  %i.c = tail call fastcc float @equivalent_sigma_at_step(i32 noundef %i.b) ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %i.c, %i.c
  %i.e = uitofp reassoc nsz arcp contract afn i32 %0 to float
  %i.f = tail call reassoc nnan nsz arcp contract afn float @llvm.exp2.f32(float %i.e)
  %i.g = fmul reassoc nnan nsz arcp contract afn float %i.f, f0x3F871634 ; 2 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %i.g
  %i.i = fadd reassoc nsz arcp contract afn float %i.d, %i.h
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.i)
  br label %common.ret1
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #14

declare i32 @dt_bauhaus_widget_get_quad_active(ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_paint(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_toggle(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14
end_hunk_1
