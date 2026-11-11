Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_zonesystem?download=true
inline.NumInlined: 37
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@commit_params:bb.a
  br label %.loopexit.i

bb.e:                                             ; preds = %bb.b
  br i1 %.not.i, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.e, %bb.c
  %i.q = icmp eq i64 %indvars.iv44.i, %i.k
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv44.i
  %i.s = load float, ptr %i.r, align 4, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.i, %bb.e
  %i.t = phi float [ 0.000000e+00, %bb.e ], [ %i.s, %bb.f ], [ 1.000000e+00, %.thread.i ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv44.i ; 6 uses
  store float %i.t, ptr %i.u, align 4, !tbaa !54
  %.not3537.i = icmp slt i32 %.03239.i, 1
  %i.v = trunc nuw nsw i64 %indvars.iv44.i to i32 ; 3 uses
  br i1 %.not3537.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.w = zext i32 %.03140.i to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.w ; 6 uses
  %i.y = add nuw i32 %.03239.i, 1
  %i.z = sitofp reassoc nsz arcp contract afn i32 %i.y to float ; 5 uses
  %.pre = load float, ptr %i.x, align 4, !tbaa !54 ; 10 uses
  %i.aa = zext nneg i32 %.03239.i to i64          ; 2 uses
  %xtraiter = and i64 %i.aa, 3                    ; 3 uses
  %i.ab = icmp ult i32 %.03239.i, 4
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.aa, 2147483644
  %i.ac = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  %i.ad = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  %i.ae = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  %i.af = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.h ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.h ]
  %i.ag = load float, ptr %i.u, align 4, !tbaa !54
  %i.ah = fsub reassoc nsz arcp contract afn float %i.ag, %.pre
  %i.ai = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aj = uitofp nsz nneg i32 %i.ai to float
  %i.ak = fmul reassoc nsz arcp contract afn float %i.ah, %i.aj
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %i.ac
  %i.am = fadd reassoc nsz arcp contract afn float %i.al, %.pre
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  store float %i.am, ptr %gep.i, align 4, !tbaa !54
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.an = load float, ptr %i.u, align 4, !tbaa !54
  %i.ao = fsub reassoc nsz arcp contract afn float %i.an, %.pre
  %i.ap = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.aq = uitofp nsz nneg i32 %i.ap to float
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ao, %i.aq
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %i.ad
  %i.at = fadd reassoc nsz arcp contract afn float %i.as, %.pre
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.i
  store float %i.at, ptr %gep.i.1, align 4, !tbaa !54
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.au = load float, ptr %i.u, align 4, !tbaa !54
  %i.av = fsub reassoc nsz arcp contract afn float %i.au, %.pre
  %i.aw = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %i.ax = uitofp nsz nneg i32 %i.aw to float
  %i.ay = fmul reassoc nsz arcp contract afn float %i.av, %i.ax
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.ae
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, %.pre
  %gep.i.2 = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.i.1
  store float %i.ba, ptr %gep.i.2, align 4, !tbaa !54
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bb = load float, ptr %i.u, align 4, !tbaa !54
  %i.bc = fsub reassoc nsz arcp contract afn float %i.bb, %.pre
  %i.bd = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  %i.be = uitofp nsz nneg i32 %i.bd to float
  %i.bf = fmul reassoc nsz arcp contract afn float %i.bc, %i.be
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.af
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %.pre
  %gep.i.3 = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.i.2
  store float %i.bh, ptr %gep.i.3, align 4, !tbaa !54
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
  %i.bi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.bj = load float, ptr %i.u, align 4, !tbaa !54
  %i.bk = fsub reassoc nsz arcp contract afn float %i.bj, %.pre
  %i.bl = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  %i.bm = uitofp nsz nneg i32 %i.bl to float
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bk, %i.bm
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bi
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %.pre
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.epil
  store float %i.bp, ptr %gep.i.epil, align 4, !tbaa !54
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %bb.i, !llvm.loop !191

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.i, %bb.g, %bb.d
  %.133.i = phi i32 [ %i.p, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %.loopexit.i.loopexit.unr-lcssa ]
  %.1.i = phi i32 [ %.03140.i, %bb.d ], [ %i.v, %bb.g ], [ %i.v, %bb.i ], [ %i.v, %.loopexit.i.loopexit.unr-lcssa ]
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next45.i, %wide.trip.count47.i
  br i1 %exitcond48.not.i, label %_iop_zonesystem_calculate_zonemap.exit, label %bb.b

_iop_zonesystem_calculate_zonemap.exit:           ; preds = %.loopexit.i
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_iop_zonesystem_calculate_zonemap.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 204 ; 2 uses
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
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 36
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 68
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 100
  %wide.load = load <8 x float>, ptr %i.bs, align 4, !tbaa !54 ; 3 uses
  %wide.load37 = load <8 x float>, ptr %i.bt, align 4, !tbaa !54 ; 3 uses
  %wide.load38 = load <8 x float>, ptr %i.bu, align 4, !tbaa !54 ; 3 uses
  %wide.load39 = load <8 x float>, ptr %i.bv, align 4, !tbaa !54 ; 4 uses
  %i.bw = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bx = shufflevector <8 x float> %wide.load, <8 x float> %wide.load37, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.by = shufflevector <8 x float> %wide.load37, <8 x float> %wide.load38, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bz = shufflevector <8 x float> %wide.load38, <8 x float> %wide.load39, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ca = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %i.bw
  %i.cb = fsub reassoc nsz arcp contract afn <8 x float> %wide.load37, %i.bx
  %i.cc = fsub reassoc nsz arcp contract afn <8 x float> %wide.load38, %i.by
  %i.cd = fsub reassoc nsz arcp contract afn <8 x float> %wide.load39, %i.bz
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %i.ca, %broadcast.splat
  %i.cf = fmul reassoc nsz arcp contract afn <8 x float> %i.cb, %broadcast.splat
  %i.cg = fmul reassoc nsz arcp contract afn <8 x float> %i.cc, %broadcast.splat
  %i.ch = fmul reassoc nsz arcp contract afn <8 x float> %i.cd, %broadcast.splat
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  store <8 x float> %i.ce, ptr %i.ci, align 4, !tbaa !54
  store <8 x float> %i.cf, ptr %i.cj, align 4, !tbaa !54
  store <8 x float> %i.cg, ptr %i.ck, align 4, !tbaa !54
  store <8 x float> %i.ch, ptr %i.cl, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x float> %wide.load39, i64 7
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph28, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph63 = phi float [ %.pre35, %.lr.ph ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph28:                                         ; preds = %scalar.ph, %middle.block
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
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
  %i.co = add <8 x i32> %vec.ind48, splat (i32 8)
  %i.cp = add <8 x i32> %vec.ind48, splat (i32 16)
  %i.cq = add <8 x i32> %vec.ind48, splat (i32 24)
  %i.cr = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.cs = uitofp nneg <8 x i32> %step.add49.a to <8 x float>
  %i.ct = uitofp nneg <8 x i32> %step.add.250.a to <8 x float>
  %i.cu = uitofp nneg <8 x i32> %step.add.351.a to <8 x float>
  %i.cv = uitofp nneg <8 x i32> %vec.ind48 to <8 x float>
  %i.cw = uitofp nneg <8 x i32> %i.co to <8 x float>
  %i.cx = uitofp nneg <8 x i32> %i.cp to <8 x float>
  %i.cy = uitofp nneg <8 x i32> %i.cq to <8 x float>
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index45 ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 36
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 68
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 100
  %wide.load52 = load <8 x float>, ptr %4, align 4, !tbaa !54 ; 3 uses
  %wide.load53 = load <8 x float>, ptr %i.da, align 4, !tbaa !54 ; 3 uses
  %wide.load54 = load <8 x float>, ptr %i.db, align 4, !tbaa !54 ; 3 uses
  %wide.load55 = load <8 x float>, ptr %i.dc, align 4, !tbaa !54 ; 4 uses
  %i.dd = shufflevector <8 x float> %vector.recur47, <8 x float> %wide.load52, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.de = shufflevector <8 x float> %wide.load52, <8 x float> %wide.load53, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.df = shufflevector <8 x float> %wide.load53, <8 x float> %wide.load54, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.dg = shufflevector <8 x float> %wide.load54, <8 x float> %wide.load55, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.dh = fmul reassoc nsz arcp contract afn <8 x float> %i.dd, %i.cr
  %i.di = fmul reassoc nsz arcp contract afn <8 x float> %i.de, %i.cs
  %i.dj = fmul reassoc nsz arcp contract afn <8 x float> %i.df, %i.ct
  %i.dk = fmul reassoc nsz arcp contract afn <8 x float> %i.dg, %i.cu
  %i.dl = fmul reassoc nsz arcp contract afn <8 x float> %wide.load52, %i.cv
  %i.dm = fmul reassoc nsz arcp contract afn <8 x float> %wide.load53, %i.cw
  %i.dn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load54, %i.cx
  %i.do = fmul reassoc nsz arcp contract afn <8 x float> %wide.load55, %i.cy
  %i.dp = fsub reassoc nsz arcp contract afn <8 x float> %i.dh, %i.dl
  %i.dq = fsub reassoc nsz arcp contract afn <8 x float> %i.di, %i.dm
  %i.dr = fsub reassoc nsz arcp contract afn <8 x float> %i.dj, %i.dn
  %i.ds = fsub reassoc nsz arcp contract afn <8 x float> %i.dk, %i.do
  %i.dt = fmul reassoc nsz arcp contract afn <8 x float> %i.dp, splat (float 1.000000e+02)
  %i.du = fmul reassoc nsz arcp contract afn <8 x float> %i.dq, splat (float 1.000000e+02)
  %i.dv = fmul reassoc nsz arcp contract afn <8 x float> %i.dr, splat (float 1.000000e+02)
  %i.dw = fmul reassoc nsz arcp contract afn <8 x float> %i.ds, splat (float 1.000000e+02)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index45 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 96
  store <8 x float> %i.dt, ptr %i.dx, align 4, !tbaa !54
  store <8 x float> %i.du, ptr %i.dy, align 4, !tbaa !54
  store <8 x float> %i.dv, ptr %i.dz, align 4, !tbaa !54
  store <8 x float> %i.dw, ptr %i.ea, align 4, !tbaa !54
  %index.next56 = add nuw i64 %index45, 32        ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %vec.ind.next57 = add <8 x i32> %vec.ind48, splat (i32 32)
  %i.eb = icmp eq i64 %index.next56, %n.vec43
  br i1 %i.eb, label %middle.block58, label %vector.body44, !llvm.loop !193

middle.block58:                                   ; preds = %vector.body44
  %vector.recur.extract59 = extractelement <8 x float> %wide.load55, i64 7
  %cmp.n60 = icmp eq i64 %n.vec43, %wide.trip.count
  br i1 %cmp.n60, label %._crit_edge, label %scalar.ph40.preheader

scalar.ph40.preheader:                            ; preds = %.lr.ph28, %middle.block58
  %.ph = phi float [ %.pre36, %.lr.ph28 ], [ %vector.recur.extract59, %middle.block58 ]
  %indvars.iv30.ph = phi i64 [ 0, %.lr.ph28 ], [ %n.vec43, %middle.block58 ]
  br label %scalar.ph40

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ec = phi float [ %i.ee, %scalar.ph ], [ %.ph63, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !54 ; 2 uses
  %i.ef = fsub reassoc nsz arcp contract afn float %i.ee, %i.ec
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, %i.f
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  store float %i.eg, ptr %i.eh, align 4, !tbaa !54
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph28, label %scalar.ph, !llvm.loop !194

._crit_edge:                                      ; preds = %scalar.ph40, %middle.block58, %bb.a, %_iop_zonesystem_calculate_zonemap.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

scalar.ph40:                                      ; preds = %scalar.ph40.preheader, %scalar.ph40
  %i.ei = phi float [ %i.ep, %scalar.ph40 ], [ %.ph, %scalar.ph40.preheader ]
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %scalar.ph40 ], [ %indvars.iv30.ph, %scalar.ph40.preheader ] ; 3 uses
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 4 uses
  %i.ej = trunc nuw nsw i64 %indvars.iv.next31 to i32
  %i.ek = uitofp nsz nneg i32 %i.ej to float
  %i.el = fmul reassoc nsz arcp contract afn float %i.ei, %i.ek
  %i.em = trunc nuw nsw i64 %indvars.iv30 to i32
  %i.en = uitofp nsz nneg i32 %i.em to float
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next31
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !54 ; 2 uses
  %i.eq = fmul reassoc nsz arcp contract afn float %i.ep, %i.en
  %i.er = fsub reassoc nsz arcp contract afn float %i.el, %i.eq
  %i.es = fmul reassoc nsz arcp contract afn float %i.er, 1.000000e+02
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv30
  store float %i.es, ptr %i.et, align 4, !tbaa !54
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
