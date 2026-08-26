Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/locallaplacian?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 56
begin_hunk_0_@gauss_reduce:bb.a
  store float %i.s, ptr %i.q, align 4, !tbaa !20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.t = mul nsw i64 %indvars.iv.next.i, %i.l
  %i.u = getelementptr [4 x i8], ptr %1, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !20
  store float %i.w, ptr %i.u, align 4, !tbaa !20
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %i.x = mul nsw i64 %indvars.iv.next.i.1, %i.l
  %i.y = getelementptr [4 x i8], ptr %1, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20
  store float %i.aa, ptr %i.y, align 4, !tbaa !20
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3
  %i.ab = mul nsw i64 %indvars.iv.next.i.2, %i.l
  %i.ac = getelementptr [4 x i8], ptr %1, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20
  store float %i.ae, ptr %i.ac, align 4, !tbaa !20
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %i.af = mul nsw i64 %indvars.iv.next.i.3, %i.l
  %i.ag = getelementptr [4 x i8], ptr %1, i64 %i.af ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !20
  store float %i.ai, ptr %i.ag, align 4, !tbaa !20
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5
  %i.aj = mul nsw i64 %indvars.iv.next.i.4, %i.l
  %i.ak = getelementptr [4 x i8], ptr %1, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !20
  store float %i.am, ptr %i.ak, align 4, !tbaa !20
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6
  %i.an = mul nsw i64 %indvars.iv.next.i.5, %i.l
  %i.ao = getelementptr [4 x i8], ptr %1, i64 %i.an ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !20
  store float %i.aq, ptr %i.ao, align 4, !tbaa !20
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7
  %i.ar = mul nsw i64 %indvars.iv.next.i.6, %i.l
  %i.as = getelementptr [4 x i8], ptr %1, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !20
  store float %i.au, ptr %i.as, align 4, !tbaa !20
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph34.i.preheader.unr-lcssa, label %.lr.ph.i

.lr.ph34.i.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph34.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph34.i.preheader.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.7, %.lr.ph34.i.preheader.unr-lcssa ]
  %lcmp.mod136 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.av = mul nsw i64 %indvars.iv.i.epil, %i.l
  %i.aw = getelementptr [4 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !20
  store float %i.ay, ptr %i.aw, align 4, !tbaa !20
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph34.i.preheader, label %.lr.ph.i.epil, !llvm.loop !223

.lr.ph34.i.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph34.i.preheader.unr-lcssa
  %xtraiter137 = and i64 %i.m, 7                  ; 3 uses
  %i.az = icmp ult i64 %i.n, 7
  br i1 %i.az, label %.lr.ph34.i.epil.preheader, label %.lr.ph34.i.preheader.new

.lr.ph34.i.preheader.new:                         ; preds = %.lr.ph34.i.preheader
  %unroll_iter141 = and i64 %i.m, -8
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.lr.ph34.i, %.lr.ph34.i.preheader.new
  %indvars.iv36.i = phi i64 [ 1, %.lr.ph34.i.preheader.new ], [ %indvars.iv.next37.i.7, %.lr.ph34.i ] ; 8 uses
  %niter142 = phi i64 [ 0, %.lr.ph34.i.preheader.new ], [ %niter142.next.7, %.lr.ph34.i ]
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %sext99 = mul i64 %sext, %indvars.iv.next37.i
  %i.ba = ashr exact i64 %sext99, 30
  %i.bb = getelementptr i8, ptr %1, i64 %i.ba     ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !20
  %i.be = getelementptr i8, ptr %i.bb, i64 -4
  store float %i.bd, ptr %i.be, align 4, !tbaa !20
  %indvars.iv.next37.i.1 = add nuw nsw i64 %indvars.iv36.i, 2
  %sext99.1 = mul i64 %sext, %indvars.iv.next37.i.1
  %i.bf = ashr exact i64 %sext99.1, 30
  %i.bg = getelementptr i8, ptr %1, i64 %i.bf     ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !20
  %i.bj = getelementptr i8, ptr %i.bg, i64 -4
  store float %i.bi, ptr %i.bj, align 4, !tbaa !20
  %indvars.iv.next37.i.2 = add nuw nsw i64 %indvars.iv36.i, 3
  %sext99.2 = mul i64 %sext, %indvars.iv.next37.i.2
  %i.bk = ashr exact i64 %sext99.2, 30
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !20
  %i.bo = getelementptr i8, ptr %i.bl, i64 -4
  store float %i.bn, ptr %i.bo, align 4, !tbaa !20
  %indvars.iv.next37.i.3 = add nuw nsw i64 %indvars.iv36.i, 4
  %sext99.3 = mul i64 %sext, %indvars.iv.next37.i.3
  %i.bp = ashr exact i64 %sext99.3, 30
  %i.bq = getelementptr i8, ptr %1, i64 %i.bp     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = load float, ptr %i.br, align 4, !tbaa !20
  %i.bt = getelementptr i8, ptr %i.bq, i64 -4
  store float %i.bs, ptr %i.bt, align 4, !tbaa !20
  %indvars.iv.next37.i.4 = add nuw nsw i64 %indvars.iv36.i, 5
  %sext99.4 = mul i64 %sext, %indvars.iv.next37.i.4
  %i.bu = ashr exact i64 %sext99.4, 30
  %i.bv = getelementptr i8, ptr %1, i64 %i.bu     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !20
  %i.by = getelementptr i8, ptr %i.bv, i64 -4
  store float %i.bx, ptr %i.by, align 4, !tbaa !20
  %indvars.iv.next37.i.5 = add nuw nsw i64 %indvars.iv36.i, 6
  %sext99.5 = mul i64 %sext, %indvars.iv.next37.i.5
  %i.bz = ashr exact i64 %sext99.5, 30
  %i.ca = getelementptr i8, ptr %1, i64 %i.bz     ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !20
  %i.cd = getelementptr i8, ptr %i.ca, i64 -4
  store float %i.cc, ptr %i.cd, align 4, !tbaa !20
  %indvars.iv.next37.i.6 = add nuw nsw i64 %indvars.iv36.i, 7
  %sext99.6 = mul i64 %sext, %indvars.iv.next37.i.6
  %i.ce = ashr exact i64 %sext99.6, 30
  %i.cf = getelementptr i8, ptr %1, i64 %i.ce     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !20
  %i.ci = getelementptr i8, ptr %i.cf, i64 -4
  store float %i.ch, ptr %i.ci, align 4, !tbaa !20
  %indvars.iv.next37.i.7 = add nuw nsw i64 %indvars.iv36.i, 8 ; 3 uses
  %sext99.7 = mul i64 %sext, %indvars.iv.next37.i.7
  %i.cj = ashr exact i64 %sext99.7, 30
  %i.ck = getelementptr i8, ptr %1, i64 %i.cj     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !20
  %i.cn = getelementptr i8, ptr %i.ck, i64 -4
  store float %i.cm, ptr %i.cn, align 4, !tbaa !20
  %niter142.next.7 = add i64 %niter142, 8         ; 2 uses
  %niter142.ncmp.7 = icmp eq i64 %niter142.next.7, %unroll_iter141
  br i1 %niter142.ncmp.7, label %ll_fill_boundary1.exit.loopexit.unr-lcssa, label %.lr.ph34.i

ll_fill_boundary1.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph34.i
  %lcmp.mod139.not = icmp eq i64 %xtraiter137, 0
  br i1 %lcmp.mod139.not, label %ll_fill_boundary1.exit, label %.lr.ph34.i.epil.preheader

.lr.ph34.i.epil.preheader:                        ; preds = %ll_fill_boundary1.exit.loopexit.unr-lcssa, %.lr.ph34.i.preheader
  %indvars.iv36.i.epil.init = phi i64 [ 1, %.lr.ph34.i.preheader ], [ %indvars.iv.next37.i.7, %ll_fill_boundary1.exit.loopexit.unr-lcssa ]
  %lcmp.mod140 = icmp ne i64 %xtraiter137, 0
  tail call void @llvm.assume(i1 %lcmp.mod140)
  br label %.lr.ph34.i.epil

.lr.ph34.i.epil:                                  ; preds = %.lr.ph34.i.epil, %.lr.ph34.i.epil.preheader
  %indvars.iv36.i.epil = phi i64 [ %indvars.iv.next37.i.epil, %.lr.ph34.i.epil ], [ %indvars.iv36.i.epil.init, %.lr.ph34.i.epil.preheader ]
  %epil.iter138 = phi i64 [ %epil.iter138.next, %.lr.ph34.i.epil ], [ 0, %.lr.ph34.i.epil.preheader ]
  %indvars.iv.next37.i.epil = add nuw nsw i64 %indvars.iv36.i.epil, 1 ; 2 uses
  %sext99.epil = mul i64 %sext, %indvars.iv.next37.i.epil
  %i.co = ashr exact i64 %sext99.epil, 30
  %i.cp = getelementptr i8, ptr %1, i64 %i.co     ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 -8
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !20
  %i.cs = getelementptr i8, ptr %i.cp, i64 -4
  store float %i.cr, ptr %i.cs, align 4, !tbaa !20
  %epil.iter138.next = add i64 %epil.iter138, 1   ; 2 uses
  %epil.iter138.cmp.not = icmp eq i64 %epil.iter138.next, %xtraiter137
  br i1 %epil.iter138.cmp.not, label %ll_fill_boundary1.exit, label %.lr.ph34.i.epil, !llvm.loop !224

ll_fill_boundary1.exit:                           ; preds = %ll_fill_boundary1.exit.loopexit.unr-lcssa, %.lr.ph34.i.epil, %._crit_edge111
  %i.ct = ashr exact i64 %sext, 30                ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %1, i64 %i.ct
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %i.cu, i64 %i.ct, i1 false)
  %sext101 = mul i64 %sext, %i.e
  %i.cv = ashr exact i64 %sext101, 30
  %i.cw = getelementptr inbounds i8, ptr %1, i64 %i.cv
  %i.cx = add nuw i64 %i.e, 4294967295
  %sext102 = mul i64 %sext, %i.cx
  %i.cy = ashr exact i64 %sext102, 30
  %i.cz = getelementptr inbounds i8, ptr %1, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cw, ptr align 4 %i.cz, i64 %i.ct, i1 false)
  ret void

bb.b:                                             ; preds = %.lr.ph110, %bb.d
  %.049108 = phi i64 [ 1, %.lr.ph110 ], [ %i.hl, %bb.d ] ; 3 uses
  %i.da = shl nuw i64 %.049108, 1
  %i.db = add i64 %i.da, -2
  %i.dc = mul i64 %i.db, %2
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dc ; 8 uses
  %i.de = mul i64 %.049108, %i.c
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr %i.dd, i64 %2 ; 2 uses
  %i.di = getelementptr i8, ptr %i.dd, i64 %.idx.i ; 3 uses
  %i.dj = getelementptr i8, ptr %i.dd, i64 %.idx41.i ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx42.i ; 2 uses
  %.sroa.656.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %.sroa.554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %.sroa.049.0.copyload.i = load float, ptr %i.di, align 4, !tbaa !20
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %.sroa.652.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %.sroa.652.0.copyload.i = load float, ptr %.sroa.652.0..sroa_idx.i, align 4, !tbaa !20
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dl = load <2 x float>, ptr %.sroa.656.0..sroa_idx.i, align 4, !tbaa !20
  %i.dm = load <2 x float>, ptr %.sroa.554.0..sroa_idx.i, align 4, !tbaa !20
  %i.dn = load <2 x float>, ptr %.sroa.450.0..sroa_idx.i, align 4, !tbaa !20 ; 2 uses
  %i.do = load <2 x float>, ptr %.sroa.446.0..sroa_idx.i, align 4, !tbaa !20
  %i.dp = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !20
  %i.dq = fadd reassoc nsz arcp contract afn <2 x float> %i.dl, %i.dp
  %i.dr = fadd reassoc nsz arcp contract afn <2 x float> %i.dn, %i.dm
  %i.ds = fadd reassoc nsz arcp contract afn <2 x float> %i.dr, %i.do
  %i.dt = fmul reassoc nsz arcp contract afn <2 x float> %i.dn, splat (float 2.000000e+00)
  %i.du = fadd reassoc nsz arcp contract afn <2 x float> %i.dt, %i.dq
  %i.dv = fmul reassoc nsz arcp contract afn <2 x float> %i.ds, splat (float 4.000000e+00)
  %i.dw = fadd reassoc nsz arcp contract afn <2 x float> %i.du, %i.dv ; 3 uses
  %i.dx = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.dd, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !20
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.dz = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.dh, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !20
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.eb = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.dj, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !20
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ed = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.dk, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !20
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ef = fadd reassoc nsz arcp contract afn <2 x float> %i.dy, %i.ee
  %4 = insertelement <2 x float> poison, float %.sroa.049.0.copyload.i, i64 0
  %5 = insertelement <2 x float> %4, float %.sroa.652.0.copyload.i, i64 1 ; 2 uses
  %i.eg = fadd reassoc nsz arcp contract afn <2 x float> %5, %i.ea
  %i.eh = fadd reassoc nsz arcp contract afn <2 x float> %i.eg, %i.ec
  %i.ei = fmul reassoc nsz arcp contract afn <2 x float> %5, splat (float 2.000000e+00)
  %i.ej = fadd reassoc nsz arcp contract afn <2 x float> %i.ei, %i.ef
  %i.ek = fmul reassoc nsz arcp contract afn <2 x float> %i.eh, splat (float 4.000000e+00)
  %i.el = fadd reassoc nsz arcp contract afn <2 x float> %i.ej, %i.ek ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.em = extractelement <2 x float> %i.dw, i64 1
  %i.en = extractelement <2 x float> %i.dw, i64 0
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.052.lcssa = phi ptr [ %i.dd, %bb.b ], [ %i.er, %.lr.ph ]
  %i.eo = phi <2 x float> [ %i.dw, %bb.b ], [ %i.fh, %.lr.ph ]
  %i.ep = phi <2 x float> [ %i.el, %bb.b ], [ %i.fw, %.lr.ph ]
  br i1 %.not.not, label %bb.c, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.6118.1.a = phi nsz float [ %i.fy, %.lr.ph ], [ %i.en, %.lr.ph.preheader ]
  %.sroa.10.1 = phi nsz float [ %i.fz, %.lr.ph ], [ %i.em, %.lr.ph.preheader ] ; 2 uses
  %.051105 = phi i64 [ %i.gm, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.052104 = phi ptr [ %i.er, %.lr.ph ], [ %i.dd, %.lr.ph.preheader ] ; 2 uses
  %i.eq = phi <2 x float> [ %i.fw, %.lr.ph ], [ %i.el, %.lr.ph.preheader ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.052104, i64 16 ; 7 uses
  %i.es = getelementptr [4 x i8], ptr %i.er, i64 %2 ; 2 uses
  %i.et = getelementptr i8, ptr %i.er, i64 %.idx.i ; 3 uses
  %i.eu = getelementptr i8, ptr %i.er, i64 %.idx41.i ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx42.i ; 2 uses
  %.sroa.656.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %.052104, i64 20
  %.sroa.554.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %.sroa.049.0.copyload.i73 = load float, ptr %i.et, align 4, !tbaa !20
  %.sroa.450.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %.sroa.652.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %.sroa.652.0.copyload.i79 = load float, ptr %.sroa.652.0..sroa_idx.i78, align 4, !tbaa !20
  %.sroa.446.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %.sroa.4.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ew = load <2 x float>, ptr %.sroa.656.0..sroa_idx.i60, align 4, !tbaa !20
  %i.ex = load <2 x float>, ptr %.sroa.554.0..sroa_idx.i67, align 4, !tbaa !20
  %i.ey = load <2 x float>, ptr %.sroa.450.0..sroa_idx.i74, align 4, !tbaa !20 ; 2 uses
  %i.ez = load <2 x float>, ptr %.sroa.446.0..sroa_idx.i81, align 4, !tbaa !20
  %i.fa = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i88, align 4, !tbaa !20
  %i.fb = fadd reassoc nsz arcp contract afn <2 x float> %i.ew, %i.fa
  %i.fc = fadd reassoc nsz arcp contract afn <2 x float> %i.ey, %i.ex
  %i.fd = fadd reassoc nsz arcp contract afn <2 x float> %i.fc, %i.ez
  %i.fe = fmul reassoc nsz arcp contract afn <2 x float> %i.ey, splat (float 2.000000e+00)
  %i.ff = fadd reassoc nsz arcp contract afn <2 x float> %i.fe, %i.fb
  %i.fg = fmul reassoc nsz arcp contract afn <2 x float> %i.fd, splat (float 4.000000e+00)
  %i.fh = fadd reassoc nsz arcp contract afn <2 x float> %i.ff, %i.fg ; 5 uses
  %i.fi = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.er, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !20
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fk = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.es, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !20
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fm = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.eu, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !20
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fo = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.ev, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !20
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fq = fadd reassoc nsz arcp contract afn <2 x float> %i.fj, %i.fp
  %6 = insertelement <2 x float> poison, float %.sroa.049.0.copyload.i73, i64 0
  %7 = insertelement <2 x float> %6, float %.sroa.652.0.copyload.i79, i64 1 ; 2 uses
  %i.fr = fadd reassoc nsz arcp contract afn <2 x float> %7, %i.fl
  %i.fs = fadd reassoc nsz arcp contract afn <2 x float> %i.fr, %i.fn
  %i.ft = fmul reassoc nsz arcp contract afn <2 x float> %7, splat (float 2.000000e+00)
  %i.fu = fadd reassoc nsz arcp contract afn <2 x float> %i.ft, %i.fq
  %i.fv = fmul reassoc nsz arcp contract afn <2 x float> %i.fs, splat (float 4.000000e+00)
  %i.fw = fadd reassoc nsz arcp contract afn <2 x float> %i.fu, %i.fv ; 4 uses
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <2 x float> %i.eq, %i.fw
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.051105
  %i.fy = extractelement <2 x float> %i.fh, i64 0
  %shift = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop132 = fadd reassoc nsz arcp contract afn <2 x float> %i.fh, %shift
  %i.fz = extractelement <2 x float> %i.fh, i64 1
  %i.ga = insertelement <2 x float> poison, float %.sroa.6118.1.a, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> %foldExtExtBinop132, <2 x i32> <i32 0, i32 2>
  %i.gc = fmul reassoc nsz arcp contract afn <2 x float> %i.gb, splat (float 4.000000e+00)
  %i.gd = shufflevector <2 x float> %i.eq, <2 x float> %i.fw, <2 x i32> <i32 1, i32 2>
  %i.ge = fmul reassoc nsz arcp contract afn <2 x float> %i.gd, <float 4.000000e+00, float 6.000000e+00>
  %i.gf = fmul reassoc nsz arcp contract afn float %.sroa.10.1, 6.000000e+00
  %i.gg = insertelement <2 x float> %foldExtExtBinop, float %.sroa.10.1, i64 1
  %i.gh = insertelement <2 x float> %i.fh, float %i.gf, i64 0
  %i.gi = fadd reassoc nsz arcp contract afn <2 x float> %i.gg, %i.ge
  %i.gj = fadd reassoc nsz arcp contract afn <2 x float> %i.gi, %i.gc
  %i.gk = fadd reassoc nsz arcp contract afn <2 x float> %i.gj, %i.gh
  %i.gl = fmul reassoc nsz arcp contract afn <2 x float> %i.gk, splat (float 3.906250e-03)
  store <2 x float> %i.gl, ptr %i.fx, align 4, !tbaa !20
  %i.gm = add i64 %.051105, 2                     ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.g
  br i1 %i.gn, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %._crit_edge
  %i.go = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 16 ; 5 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %2
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !20
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 %.idx41.i
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !20
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 %.idx.i
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !20
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 %.idx42.i
  %i.gw = fadd reassoc nsz arcp contract afn float %i.gs, %i.gq
  %i.gx = load float, ptr %i.go, align 4, !tbaa !20
  %i.gy = load float, ptr %i.gv, align 4, !tbaa !20
  %i.gz = insertelement <8 x float> poison, float %i.gw, i64 0
  %i.ha = insertelement <8 x float> %i.gz, float %i.gu, i64 1
  %i.hb = shufflevector <2 x float> %i.ep, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hc = shufflevector <8 x float> %i.ha, <8 x float> %i.hb, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 9, i32 poison, i32 poison, i32 8>
  %i.hd = insertelement <8 x float> %i.hc, float %i.gy, i64 5
  %i.he = insertelement <8 x float> %i.hd, float %i.gx, i64 6
  %i.hf = shufflevector <2 x float> %i.eo, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hg = shufflevector <8 x float> %i.he, <8 x float> %i.hf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.hh = fmul reassoc nsz arcp contract afn <8 x float> %i.hg, <float 4.000000e+00, float 6.000000e+00, float 4.000000e+00, float 6.000000e+00, float 4.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.hi = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.hh)
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hi, 3.906250e-03
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.g
  store float %i.hj, ptr %i.hk, align 4, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.hl = add nuw nsw i64 %.049108, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.hl, %i.e
  br i1 %exitcond.not, label %._crit_edge111, label %bb.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #8

declare void @dt_dump_pfm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc float @ll_laplacian(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %4, -1
  %i.c = and i32 %i.b, -2
  %i.d = add nsw i32 %i.c, -1
  %. = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 1, %bb.a ], [ %., %bb.b ]      ; 2 uses
  %i.f = icmp sgt i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %5, -1
  %i.h = and i32 %i.g, -2
  %i.i = add nsw i32 %i.h, -1
  %.20 = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ 1, %bb.c ], [ %.20, %bb.d ]    ; 2 uses
  %i.k = add nsw i32 %4, -1
  %i.l = sdiv i32 %i.k, 2                         ; 3 uses
  %i.m = add nsw i32 %i.l, 1                      ; 7 uses
  %i.n = sdiv i32 %i.j, 2
  %i.o = mul nsw i32 %i.n, %i.m
  %i.p = sdiv i32 %i.e, 2
  %i.q = add nsw i32 %i.o, %i.p                   ; 12 uses
  %i.r = and i32 %i.e, 1
  %i.s = shl i32 %i.j, 1
  %i.t = and i32 %i.s, 2
  %i.u = or disjoint i32 %i.t, %i.r
  switch i32 %i.u, label %default.unreachable [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = sub nsw i32 %i.q, %i.m
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w ; 3 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !20
  %i.z = sext i32 %i.q to i64
  %i.aa = getelementptr [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !20
  %i.ad = fadd reassoc nsz arcp contract afn float %i.y, %i.ac
  %i.ae = load float, ptr %i.aa, align 4, !tbaa !20
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, 6.000000e+00
  %i.ag = fadd reassoc nsz arcp contract afn float %i.ad, %i.af
  %i.ah = getelementptr i8, ptr %i.aa, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !20
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ag, %i.ai
  %i.ak = add nsw i32 %i.q, %i.m
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !20
  %i.ao = fadd reassoc nsz arcp contract afn float %i.aj, %i.an
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, 6.000000e+00
  %i.aq = getelementptr i8, ptr %i.x, i64 -4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !20
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, %i.ap
  %i.at = getelementptr i8, ptr %i.x, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !20
  %i.av = add i32 %i.q, %i.l
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !20
  %i.az = getelementptr i8, ptr %i.am, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !20
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ay, %i.au
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.as
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.ba
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, 1.562500e-02
  br label %ll_expand_gaussian.exit

bb.g:                                             ; preds = %bb.e
  %i.bf = sext i32 %i.q to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bf ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !20
  %i.bi = getelementptr i8, ptr %i.bg, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !20
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, %i.bh
  %i.bl = fpext reassoc nsz arcp contract afn float %i.bk to double
  %i.bm = fmul reassoc nsz arcp contract afn double %i.bl, 2.400000e+01
  %i.bn = sub nsw i32 %i.q, %i.m
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bo ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !20
  %i.br = getelementptr i8, ptr %i.bp, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !20
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bs, %i.bq
  %i.bu = add nsw i32 %i.q, %i.m
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !20
  %i.by = fadd reassoc nsz arcp contract afn float %i.bt, %i.bx
  %i.bz = getelementptr i8, ptr %i.bw, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !20
  %i.cb = fadd reassoc nsz arcp contract afn float %i.by, %i.ca
  %i.cc = fpext reassoc nsz arcp contract afn float %i.cb to double
  %i.cd = fmul reassoc nsz arcp contract afn double %i.cc, 4.000000e+00
  %i.ce = fadd reassoc nsz arcp contract afn double %i.cd, %i.bm
  %i.cf = fmul reassoc nsz arcp contract afn double %i.ce, 1.562500e-02
  %i.cg = fptrunc reassoc nsz arcp contract afn double %i.cf to float
  br label %ll_expand_gaussian.exit

bb.h:                                             ; preds = %bb.e
  %i.ch = sext i32 %i.q to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ch ; 2 uses
  %i.cj = add nsw i32 %i.q, %i.m
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.ci, i64 -4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !20
  %i.co = add i32 %i.q, %i.l
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !20
  %i.cs = load <2 x float>, ptr %i.ci, align 4, !tbaa !20
  %i.ct = load <2 x float>, ptr %i.cl, align 4, !tbaa !20
  %i.cu = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cr, i64 1
  %i.cv = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cn, i64 1
  %i.cw = fadd reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cu
  %i.cx = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cs
  %i.cy = fadd reassoc nsz arcp contract afn <2 x float> %i.cw, %i.cx
  %i.cz = fpext <2 x float> %i.cy to <2 x double> ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = fmul reassoc nsz arcp contract afn double %i.da, 2.400000e+01
  %i.dc = extractelement <2 x double> %i.cz, i64 1
  %i.dd = fmul reassoc nsz arcp contract afn double %i.dc, 4.000000e+00
  %i.de = fadd reassoc nsz arcp contract afn double %i.dd, %i.db
  %i.df = fmul reassoc nsz arcp contract afn double %i.de, 1.562500e-02
  %i.dg = fptrunc reassoc nsz arcp contract afn double %i.df to float
  br label %ll_expand_gaussian.exit

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.dh = sext i32 %i.q to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dh ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !20
  %i.dk = getelementptr i8, ptr %i.di, i64 4
end_hunk_0
