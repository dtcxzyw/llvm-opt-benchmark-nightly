Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_zonesystem?download=true
inline.NumInlined: 37
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@commit_params:bb.a

bb.e:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %indvars.iv44.i, 0
  br i1 %i.q, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.c
  %i.r = icmp eq i64 %indvars.iv44.i, %i.k
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.i
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv44.i
  %i.t = load float, ptr %i.s, align 4, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.i, %bb.e
  %i.u = phi float [ 0.000000e+00, %bb.e ], [ %i.t, %bb.f ], [ 1.000000e+00, %.thread.i ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv44.i ; 6 uses
  store float %i.u, ptr %i.v, align 4, !tbaa !54
  %.not3537.i = icmp slt i32 %.03239.i, 1
  %i.w = trunc nuw nsw i64 %indvars.iv44.i to i32 ; 3 uses
  br i1 %.not3537.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.x = zext i32 %.03140.i to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.x ; 6 uses
  %i.z = add nuw i32 %.03239.i, 1
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to float ; 5 uses
  %.pre = load float, ptr %i.y, align 4, !tbaa !54 ; 10 uses
  %i.ab = zext nneg i32 %.03239.i to i64          ; 2 uses
  %xtraiter = and i64 %i.ab, 3                    ; 3 uses
  %i.ac = icmp ult i32 %.03239.i, 4
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ab, 2147483644
  %i.ad = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aa
  %i.ae = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aa
  %i.af = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aa
  %i.ag = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aa
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.h ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.h ]
  %i.ah = load float, ptr %i.v, align 4, !tbaa !54
  %i.ai = fsub reassoc nsz arcp contract afn float %i.ah, %.pre
  %i.aj = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ak = uitofp nsz nneg i32 %i.aj to float
  %i.al = fmul reassoc nsz arcp contract afn float %i.ai, %i.ak
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.ad
  %i.an = fadd reassoc nsz arcp contract afn float %i.am, %.pre
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  store float %i.an, ptr %gep.i, align 4, !tbaa !54
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = load float, ptr %i.v, align 4, !tbaa !54
  %i.ap = fsub reassoc nsz arcp contract afn float %i.ao, %.pre
  %i.aq = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ar = uitofp nsz nneg i32 %i.aq to float
  %i.as = fmul reassoc nsz arcp contract afn float %i.ap, %i.ar
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, %i.ae
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, %.pre
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i
  store float %i.au, ptr %gep.i.1, align 4, !tbaa !54
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.av = load float, ptr %i.v, align 4, !tbaa !54
  %i.aw = fsub reassoc nsz arcp contract afn float %i.av, %.pre
  %i.ax = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %i.ay = uitofp nsz nneg i32 %i.ax to float
  %i.az = fmul reassoc nsz arcp contract afn float %i.aw, %i.ay
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, %i.af
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %.pre
  %gep.i.2 = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i.1
  store float %i.bb, ptr %gep.i.2, align 4, !tbaa !54
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bc = load float, ptr %i.v, align 4, !tbaa !54
  %i.bd = fsub reassoc nsz arcp contract afn float %i.bc, %.pre
  %i.be = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  %i.bf = uitofp nsz nneg i32 %i.be to float
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bd, %i.bf
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, %i.ag
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, %.pre
  %gep.i.3 = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i.2
  store float %i.bi, ptr %gep.i.3, align 4, !tbaa !54
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %bb.h

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i.3, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod64 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.bj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aa
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.bk = load float, ptr %i.v, align 4, !tbaa !54
  %i.bl = fsub reassoc nsz arcp contract afn float %i.bk, %.pre
  %i.bm = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  %i.bn = uitofp nsz nneg i32 %i.bm to float
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bl, %i.bn
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, %i.bj
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bp, %.pre
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i.epil
  store float %i.bq, ptr %gep.i.epil, align 4, !tbaa !54
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %bb.i, !llvm.loop !191

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.i, %bb.g, %bb.d
  %.133.i = phi i32 [ %i.p, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %.loopexit.i.loopexit.unr-lcssa ]
  %.1.i = phi i32 [ %.03140.i, %bb.d ], [ %i.w, %bb.g ], [ %i.w, %bb.i ], [ %i.w, %.loopexit.i.loopexit.unr-lcssa ]
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next45.i, %wide.trip.count47.i
  br i1 %exitcond48.not.i, label %_iop_zonesystem_calculate_zonemap.exit, label %bb.b

_iop_zonesystem_calculate_zonemap.exit:           ; preds = %.loopexit.i
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_iop_zonesystem_calculate_zonemap.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 204 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 5 uses
  %.pre35 = load float, ptr %i.a, align 16, !tbaa !54 ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 33
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %vector.recur.init = insertelement <8 x float> poison, float %.pre35, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph ], [ %wide.load39, %vector.body ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 36
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 68
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 100
  %wide.load = load <8 x float>, ptr %i.bt, align 4, !tbaa !54 ; 3 uses
  %wide.load37 = load <8 x float>, ptr %i.bu, align 4, !tbaa !54 ; 3 uses
  %wide.load38 = load <8 x float>, ptr %i.bv, align 4, !tbaa !54 ; 3 uses
  %wide.load39 = load <8 x float>, ptr %i.bw, align 4, !tbaa !54 ; 4 uses
  %i.bx = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.by = shufflevector <8 x float> %wide.load, <8 x float> %wide.load37, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bz = shufflevector <8 x float> %wide.load37, <8 x float> %wide.load38, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ca = shufflevector <8 x float> %wide.load38, <8 x float> %wide.load39, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.cb = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %i.bx
  %i.cc = fsub reassoc nsz arcp contract afn <8 x float> %wide.load37, %i.by
  %i.cd = fsub reassoc nsz arcp contract afn <8 x float> %wide.load38, %i.bz
  %i.ce = fsub reassoc nsz arcp contract afn <8 x float> %wide.load39, %i.ca
  %i.cf = fmul reassoc nsz arcp contract afn <8 x float> %i.cb, %broadcast.splat
  %i.cg = fmul reassoc nsz arcp contract afn <8 x float> %i.cc, %broadcast.splat
  %i.ch = fmul reassoc nsz arcp contract afn <8 x float> %i.cd, %broadcast.splat
  %i.ci = fmul reassoc nsz arcp contract afn <8 x float> %i.ce, %broadcast.splat
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  store <8 x float> %i.cf, ptr %i.cj, align 4, !tbaa !54
  store <8 x float> %i.cg, ptr %i.ck, align 4, !tbaa !54
  store <8 x float> %i.ch, ptr %i.cl, align 4, !tbaa !54
  store <8 x float> %i.ci, ptr %i.cm, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x float> %wide.load39, i64 7
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph28, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph63 = phi float [ %.pre35, %.lr.ph ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph28:                                         ; preds = %scalar.ph, %middle.block
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %wide.trip.count33 = zext nneg i32 %i.e to i64
  %.pre36 = load float, ptr %i.a, align 16, !tbaa !54 ; 2 uses
  %min.iters.check41 = icmp ult i32 %i.d, 33
  br i1 %min.iters.check41, label %scalar.ph40.preheader, label %vector.ph42

vector.ph42:                                      ; preds = %.lr.ph28
  %n.vec43 = and i64 %wide.trip.count, 2147483616 ; 3 uses
  %vector.recur.init46 = insertelement <8 x float> poison, float %.pre36, i64 7
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph42
  %index45 = phi i64 [ 0, %vector.ph42 ], [ %index.next56, %vector.body44 ] ; 3 uses
  %vector.recur47 = phi <8 x float> [ %vector.recur.init46, %vector.ph42 ], [ %wide.load55, %vector.body44 ]
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph42 ], [ %vec.ind.next, %vector.body44 ] ; 5 uses
  %vec.ind48 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph42 ], [ %vec.ind.next57, %vector.body44 ] ; 5 uses
  %step.add49.a = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.250.a = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.351.a = add <8 x i32> %vec.ind, splat (i32 24)
  %i.cp = add <8 x i32> %vec.ind48, splat (i32 8)
  %i.cq = add <8 x i32> %vec.ind48, splat (i32 16)
  %i.cr = add <8 x i32> %vec.ind48, splat (i32 24)
  %i.cs = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.ct = uitofp nneg <8 x i32> %step.add49.a to <8 x float>
  %i.cu = uitofp nneg <8 x i32> %step.add.250.a to <8 x float>
  %i.cv = uitofp nneg <8 x i32> %step.add.351.a to <8 x float>
  %i.cw = uitofp nneg <8 x i32> %vec.ind48 to <8 x float>
  %i.cx = uitofp nneg <8 x i32> %i.cp to <8 x float>
  %i.cy = uitofp nneg <8 x i32> %i.cq to <8 x float>
  %i.cz = uitofp nneg <8 x i32> %i.cr to <8 x float>
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index45 ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 36
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 68
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 100
  %wide.load52 = load <8 x float>, ptr %4, align 4, !tbaa !54 ; 3 uses
  %wide.load53 = load <8 x float>, ptr %i.db, align 4, !tbaa !54 ; 3 uses
  %wide.load54 = load <8 x float>, ptr %i.dc, align 4, !tbaa !54 ; 3 uses
  %wide.load55 = load <8 x float>, ptr %i.dd, align 4, !tbaa !54 ; 4 uses
  %i.de = shufflevector <8 x float> %vector.recur47, <8 x float> %wide.load52, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.df = shufflevector <8 x float> %wide.load52, <8 x float> %wide.load53, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.dg = shufflevector <8 x float> %wide.load53, <8 x float> %wide.load54, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.dh = shufflevector <8 x float> %wide.load54, <8 x float> %wide.load55, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.di = fmul reassoc nsz arcp contract afn <8 x float> %i.de, %i.cs
  %i.dj = fmul reassoc nsz arcp contract afn <8 x float> %i.df, %i.ct
  %i.dk = fmul reassoc nsz arcp contract afn <8 x float> %i.dg, %i.cu
  %i.dl = fmul reassoc nsz arcp contract afn <8 x float> %i.dh, %i.cv
  %i.dm = fmul reassoc nsz arcp contract afn <8 x float> %wide.load52, %i.cw
  %i.dn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load53, %i.cx
  %i.do = fmul reassoc nsz arcp contract afn <8 x float> %wide.load54, %i.cy
  %i.dp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load55, %i.cz
  %i.dq = fsub reassoc nsz arcp contract afn <8 x float> %i.di, %i.dm
  %i.dr = fsub reassoc nsz arcp contract afn <8 x float> %i.dj, %i.dn
  %i.ds = fsub reassoc nsz arcp contract afn <8 x float> %i.dk, %i.do
  %i.dt = fsub reassoc nsz arcp contract afn <8 x float> %i.dl, %i.dp
  %i.du = fmul reassoc nsz arcp contract afn <8 x float> %i.dq, splat (float 1.000000e+02)
  %i.dv = fmul reassoc nsz arcp contract afn <8 x float> %i.dr, splat (float 1.000000e+02)
  %i.dw = fmul reassoc nsz arcp contract afn <8 x float> %i.ds, splat (float 1.000000e+02)
  %i.dx = fmul reassoc nsz arcp contract afn <8 x float> %i.dt, splat (float 1.000000e+02)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index45 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 96
  store <8 x float> %i.du, ptr %i.dy, align 4, !tbaa !54
  store <8 x float> %i.dv, ptr %i.dz, align 4, !tbaa !54
  store <8 x float> %i.dw, ptr %i.ea, align 4, !tbaa !54
  store <8 x float> %i.dx, ptr %i.eb, align 4, !tbaa !54
  %index.next56 = add nuw i64 %index45, 32        ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %vec.ind.next57 = add <8 x i32> %vec.ind48, splat (i32 32)
  %i.ec = icmp eq i64 %index.next56, %n.vec43
  br i1 %i.ec, label %middle.block58, label %vector.body44, !llvm.loop !193

middle.block58:                                   ; preds = %vector.body44
  %vector.recur.extract59 = extractelement <8 x float> %wide.load55, i64 7
  %cmp.n60 = icmp eq i64 %n.vec43, %wide.trip.count
  br i1 %cmp.n60, label %._crit_edge, label %scalar.ph40.preheader

scalar.ph40.preheader:                            ; preds = %.lr.ph28, %middle.block58
  %.ph = phi float [ %.pre36, %.lr.ph28 ], [ %vector.recur.extract59, %middle.block58 ]
  %indvars.iv30.ph = phi i64 [ 0, %.lr.ph28 ], [ %n.vec43, %middle.block58 ]
  br label %scalar.ph40

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ed = phi float [ %i.ef, %scalar.ph ], [ %.ph63, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !54 ; 2 uses
  %i.eg = fsub reassoc nsz arcp contract afn float %i.ef, %i.ed
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.f
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  store float %i.eh, ptr %i.ei, align 4, !tbaa !54
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph28, label %scalar.ph, !llvm.loop !194

._crit_edge:                                      ; preds = %scalar.ph40, %middle.block58, %bb.a, %_iop_zonesystem_calculate_zonemap.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

scalar.ph40:                                      ; preds = %scalar.ph40.preheader, %scalar.ph40
  %i.ej = phi float [ %i.eq, %scalar.ph40 ], [ %.ph, %scalar.ph40.preheader ]
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %scalar.ph40 ], [ %indvars.iv30.ph, %scalar.ph40.preheader ] ; 3 uses
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 4 uses
  %i.ek = trunc nuw nsw i64 %indvars.iv.next31 to i32
  %i.el = uitofp nsz nneg i32 %i.ek to float
  %i.em = fmul reassoc nsz arcp contract afn float %i.ej, %i.el
  %i.en = trunc nuw nsw i64 %indvars.iv30 to i32
  %i.eo = uitofp nsz nneg i32 %i.en to float
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next31
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !54 ; 2 uses
  %i.er = fmul reassoc nsz arcp contract afn float %i.eq, %i.eo
  %i.es = fsub reassoc nsz arcp contract afn float %i.em, %i.er
  %i.et = fmul reassoc nsz arcp contract afn float %i.es, 1.000000e+02
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv30
  store float %i.et, ptr %i.eu, align 4, !tbaa !54
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge, label %scalar.ph40, !llvm.loop !195
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(300) ptr @calloc(i64 noundef 1, i64 noundef 300) #22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29
  tail call void @free(ptr noundef %i.b) #21
  store ptr null, ptr %i.a, align 16, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  tail call void @gtk_widget_queue_draw(ptr noundef %i.d) #21
  ret void
}

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  %i.b = tail call ptr @dt_alloc_aligned(i64 noundef 104) #21 ; 10 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.c, i8 0, i64 80, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.b, ptr %i.d, align 16, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 0, ptr %i.e, align 4, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.f, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 0, ptr %i.g, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.h = tail call ptr @dtgtk_drawing_area_new_with_height(i32 noundef 0) #21 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !69
  %i.j = tail call i64 @g_signal_connect_data(ptr noundef %i.h, ptr noundef nonnull @.str.3, ptr noundef nonnull @size_allocate_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.l = tail call i64 @g_signal_connect_data(ptr noundef %i.k, ptr noundef nonnull @.str.4, ptr noundef nonnull @dt_iop_zonesystem_preview_draw, ptr noundef %0, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !69
  tail call void @gtk_widget_add_events(ptr noundef %i.m, i32 noundef 8964) #21
  %i.n = tail call ptr @gtk_drawing_area_new() #21 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 9 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !65
  %i.p = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #21
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.n, ptr noundef %i.p) #21
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !65
  %i.r = tail call i64 @g_signal_connect_data(ptr noundef %i.q, ptr noundef nonnull @.str.4, ptr noundef nonnull @dt_iop_zonesystem_bar_draw, ptr noundef %0, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !65
  %i.t = tail call i64 @g_signal_connect_data(ptr noundef %i.s, ptr noundef nonnull @.str.6, ptr noundef nonnull @dt_iop_zonesystem_bar_motion_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !65
  %i.v = tail call i64 @g_signal_connect_data(ptr noundef %i.u, ptr noundef nonnull @.str.7, ptr noundef nonnull @dt_iop_zonesystem_bar_leave_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !65
  %i.x = tail call i64 @g_signal_connect_data(ptr noundef %i.w, ptr noundef nonnull @.str.8, ptr noundef nonnull @dt_iop_zonesystem_bar_button_press, ptr noundef %0, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !65
  %i.z = tail call i64 @g_signal_connect_data(ptr noundef %i.y, ptr noundef nonnull @.str.9, ptr noundef nonnull @dt_iop_zonesystem_bar_button_release, ptr noundef %0, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !65
  %i.ab = tail call i64 @g_signal_connect_data(ptr noundef %i.aa, ptr noundef nonnull @.str.10, ptr noundef nonnull @dt_iop_zonesystem_bar_scrolled, ptr noundef %0, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !65
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !107
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 5560
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !197
  %i.ag = or i32 %i.af, 8964
  tail call void @gtk_widget_add_events(ptr noundef %i.ac, i32 noundef %i.ag) #21
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !65
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !107
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1432
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !112
  %i.al = fmul reassoc nsz arcp contract afn double %i.ak, 4.000000e+01
  %i.am = fptosi double %i.al to i32
  tail call void @gtk_widget_set_size_request(ptr noundef %i.ah, i32 noundef -1, i32 noundef %i.am) #21
  %i.an = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #21
  %i.ao = load <2 x ptr>, ptr %i.i, align 8, !tbaa !198
  store <2 x ptr> %i.ao, ptr %i.a, align 16, !tbaa !199
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ap, align 16, !tbaa !199
  %i.aq = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.11, i32 noundef 459, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.an, ptr noundef nonnull %i.a) #21
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !113
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !200
  %i.at = and i32 %i.as, 2
  %i.au = icmp ne i32 %i.at, 0
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3400), align 8
  %i.aw = icmp ne i32 %i.av, 0
  %or.cond = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_iop_gui_alloc.exit
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !201
  %i.ay = and i32 %i.ax, 1048576
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef 462, ptr noundef nonnull @__FUNCTION__.gui_init) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_iop_gui_alloc.exit
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !202
  call void @dt_control_signal_connect(ptr noundef %i.az, i32 noundef 21, ptr noundef nonnull @_iop_zonesystem_redraw_preview_callback, ptr noundef nonnull %0) #21
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  ret void
}

declare ptr @dtgtk_drawing_area_new_with_height(i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @size_allocate_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !44  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_0
