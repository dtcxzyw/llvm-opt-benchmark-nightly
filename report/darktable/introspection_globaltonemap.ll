Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_globaltonemap?download=true
inline.NumInlined: 28
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@process:bb.a
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !31  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !33
  %i.e = fcmp reassoc nsz arcp contract afn une float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.h = load float, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load float, ptr %i.i, align 4, !tbaa !35
  %i.k = fdiv reassoc nsz arcp contract afn float %i.h, %i.j
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.k, float 1.000000e+00)
  %i.m = load <2 x i32>, ptr %i.f, align 16, !tbaa !14
  %i.n = sitofp <2 x i32> %i.m to <2 x float>
  %i.o = insertelement <2 x float> poison, float %i.l, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fdiv reassoc nnan nsz arcp contract afn <2 x float> %i.n, %i.p ; 2 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = extractelement <2 x float> %i.q, i64 1
  %i.t = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.r, float %i.s)
  %i.u = fmul reassoc nnan nsz arcp contract afn float %i.t, 3.000000e-02
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37
  %i.z = tail call ptr @dt_bilateral_init(i32 noundef %i.w, i32 noundef %i.y, float noundef %i.u, float noundef 8.000000e+00) #19 ; 2 uses
  tail call void @dt_bilateral_splat(ptr noundef %i.z, ptr noundef %2) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.z, %bb.b ], [ null, %bb.a ]  ; 3 uses
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !38
  switch i32 %i.aa, label %process_reinhard.exit [
    i32 0, label %bb.d
    i32 2, label %bb.f
    i32 1, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !36
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !37
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %i.ag, %i.ad                ; 5 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %process_reinhard.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ai = getelementptr i8, ptr %1, i64 132
  %.val = load i32, ptr %i.ai, align 4, !tbaa !39
  %i.aj = sext i32 %.val to i64                   ; 3 uses
  %xtraiter81 = and i64 %i.ah, 1
  %i.ak = icmp eq i64 %i.ah, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ah, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %.01.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bs, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.e ]
  %i.al = mul i64 %.01.i, %i.aj                   ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.al ; 3 uses
  %i.ao = load float, ptr %i.am, align 4, !tbaa !40
  %i.ap = fpext reassoc nsz arcp contract afn float %i.ao to double
  %i.aq = fmul reassoc nsz arcp contract afn double %i.ap, 1.000000e-02
  %i.ar = fptrunc reassoc nsz arcp contract afn double %i.aq to float ; 2 uses
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, 1.000000e+00
  %i.at = fmul reassoc nsz arcp contract afn float %i.ar, 1.000000e+02
  %i.au = fdiv reassoc nsz arcp contract afn float %i.at, %i.as
  store float %i.au, ptr %i.an, align 4, !tbaa !40
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store float %i.aw, ptr %i.ax, align 4, !tbaa !40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store float %i.az, ptr %i.ba, align 4, !tbaa !40
  %i.bb = or disjoint i64 %.01.i, 1
  %i.bc = mul i64 %i.bb, %i.aj                    ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bc ; 3 uses
  %i.bf = load float, ptr %i.bd, align 4, !tbaa !40
  %i.bg = fpext reassoc nsz arcp contract afn float %i.bf to double
  %i.bh = fmul reassoc nsz arcp contract afn double %i.bg, 1.000000e-02
  %i.bi = fptrunc reassoc nsz arcp contract afn double %i.bh to float ; 2 uses
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, 1.000000e+00
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bi, 1.000000e+02
  %i.bl = fdiv reassoc nsz arcp contract afn float %i.bk, %i.bj
  store float %i.bl, ptr %i.be, align 4, !tbaa !40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store float %i.bn, ptr %i.bo, align 4, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !40
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store float %i.bq, ptr %i.br, align 4, !tbaa !40
  %i.bs = add nuw i64 %.01.i, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %process_reinhard.exit.loopexit.unr-lcssa, label %bb.e

bb.f:                                             ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bu = load ptr, ptr %i.bt, align 16, !tbaa !52 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !39 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !74
  %i.bz = load i32, ptr %i.by, align 16, !tbaa !97
  %i.ca = icmp ne i32 %i.bz, 0
  %i.cb = icmp ne ptr %i.bu, null                 ; 2 uses
  %or.cond.i = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond.i, label %bb.g, label %.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !98
  %i.ce = getelementptr i8, ptr %i.cd, i64 644
  %.val.i = load i32, ptr %i.ce, align 4, !tbaa !106
  %i.cf = and i32 %.val.i, 2
  %.not.i47 = icmp eq i32 %i.cf, 0
  br i1 %.not.i47, label %.preheader.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 5 uses
  %i.ch = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cg) #19 ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 40 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !56
  %i.ck = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cg) #19 ; 0 uses
  %.not73.i = icmp eq i64 %i.cj, 0
  br i1 %.not73.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = load ptr, ptr %i.bx, align 8, !tbaa !74
  %i.cm = load ptr, ptr %i.cc, align 8, !tbaa !98
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.co = load i32, ptr %i.cn, align 16, !tbaa !107
  %i.cp = sitofp reassoc nsz arcp contract afn i32 %i.co to double
  %i.cq = tail call i32 @dt_dev_sync_pixelpipe_hash(ptr noundef %i.cl, ptr noundef %i.cm, double noundef %i.cp, i32 noundef 3, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ci) #19
  %.not74.i = icmp eq i32 %i.cq, 0
  br i1 %.not74.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cr = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #19
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.cr) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.cs = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cg) #19 ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !57 ; 2 uses
  %i.cv = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cg) #19 ; 0 uses
  %i.cw = fcmp reassoc nsz arcp contract afn oeq float %i.cu, f0xFF7FFFFF
  br i1 %i.cw, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.k, %bb.g, %bb.f
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !36
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !37
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %i.dc, %i.cz                ; 7 uses
  %.not5.i = icmp eq i64 %i.dd, 0
  br i1 %.not5.i, label %.loopexit.i, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.preheader.i
  %i.de = sext i32 %i.bw to i64                   ; 5 uses
  %min.iters.check = icmp ugt i64 %i.dd, 31
  %ident.check.not = icmp eq i32 %i.bw, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph.i45
  %n.vec = and i64 %i.dd, -32                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x float> [ splat (float f0x38D1B717), %vector.ph ], [ %i.dn, %vector.body ] ; 2 uses
  %vec.phi66 = phi <8 x float> [ splat (float f0x38D1B717), %vector.ph ], [ %i.do, %vector.body ] ; 2 uses
  %vec.phi67 = phi <8 x float> [ splat (float f0x38D1B717), %vector.ph ], [ %i.dp, %vector.body ] ; 2 uses
  %vec.phi68 = phi <8 x float> [ splat (float f0x38D1B717), %vector.ph ], [ %i.dq, %vector.body ] ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %wide.load = load <8 x float>, ptr %i.df, align 4, !tbaa !40
  %wide.load69 = load <8 x float>, ptr %i.dg, align 4, !tbaa !40
  %wide.load70 = load <8 x float>, ptr %i.dh, align 4, !tbaa !40
  %wide.load71 = load <8 x float>, ptr %i.di, align 4, !tbaa !40
  %i.dj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, splat (float f0x3C23D70A) ; 2 uses
  %i.dk = fmul reassoc nsz arcp contract afn <8 x float> %wide.load69, splat (float f0x3C23D70A) ; 2 uses
  %i.dl = fmul reassoc nsz arcp contract afn <8 x float> %wide.load70, splat (float f0x3C23D70A) ; 2 uses
  %i.dm = fmul reassoc nsz arcp contract afn <8 x float> %wide.load71, splat (float f0x3C23D70A) ; 2 uses
  %i.dn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi, <8 x float> %i.dj) ; 2 uses
  %i.do = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi66, <8 x float> %i.dk) ; 2 uses
  %i.dp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi67, <8 x float> %i.dl) ; 2 uses
  %i.dq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi68, <8 x float> %i.dm) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dr = fcmp uno <8 x float> %i.dj, %i.dk
  %i.ds = fcmp uno <8 x float> %i.dl, %i.dm
  %6 = freeze <8 x i1> %i.dr
  %7 = freeze <8 x i1> %i.ds
  %i.dt = or <8 x i1> %6, %7
  %i.du = bitcast <8 x i1> %i.dt to i8
  %i.dv = icmp ne i8 %i.du, 0                     ; 7 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  %i.dx = or i1 %i.dv, %i.dw
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %i.dy = select i1 %i.dv, <8 x float> %vec.phi, <8 x float> %i.dn
  %i.dz = select i1 %i.dv, <8 x float> %vec.phi66, <8 x float> %i.do
  %i.ea = select i1 %i.dv, <8 x float> %vec.phi67, <8 x float> %i.dp
  %i.eb = select i1 %i.dv, <8 x float> %vec.phi68, <8 x float> %i.dq
  %i.ec = select i1 %i.dv, i64 %index, i64 %n.vec
  %rdx.minmax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.dy, <8 x float> %i.dz)
  %rdx.minmax72 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax, <8 x float> %i.ea)
  %rdx.minmax73 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax72, <8 x float> %i.eb)
  %i.ed = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax73) ; 2 uses
  %cmp.n = icmp ne i64 %i.dd, %n.vec
  %.not = or i1 %cmp.n, %i.dv
  br i1 %.not, label %scalar.ph.preheader, label %.loopexit.i

scalar.ph.preheader:                              ; preds = %.lr.ph.i45, %middle.block
  %.0682.i.ph = phi i64 [ 0, %.lr.ph.i45 ], [ %i.ec, %middle.block ] ; 4 uses
  %.0701.i.ph = phi float [ f0x38D1B717, %.lr.ph.i45 ], [ %i.ed, %middle.block ] ; 2 uses
  %i.ee = sub i64 %i.dd, %.0682.i.ph
  %xtraiter = and i64 %i.ee, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0682.i.prol = phi i64 [ %i.ek, %scalar.ph.prol ], [ %.0682.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0701.i.prol = phi float [ %i.ej, %scalar.ph.prol ], [ %.0701.i.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ef = mul i64 %.0682.i.prol, %i.de
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !40
  %i.ei = fmul reassoc nsz arcp contract afn float %i.eh, f0x3C23D70A
  %i.ej = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.0701.i.prol, float %i.ei) ; 3 uses
  %i.ek = add nuw i64 %.0682.i.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !72

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi float [ poison, %scalar.ph.preheader ], [ %i.ej, %scalar.ph.prol ]
  %.0682.i.unr = phi i64 [ %.0682.i.ph, %scalar.ph.preheader ], [ %i.ek, %scalar.ph.prol ]
  %.0701.i.unr = phi float [ %.0701.i.ph, %scalar.ph.preheader ], [ %i.ej, %scalar.ph.prol ]
  %i.el = sub i64 %.0682.i.ph, %i.dd
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0682.i = phi i64 [ %i.fk, %scalar.ph ], [ %.0682.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.0701.i = phi float [ %i.fj, %scalar.ph ], [ %.0701.i.unr, %scalar.ph.prol.loopexit ]
  %i.en = mul i64 %.0682.i, %i.de
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !40
  %i.eq = fmul reassoc nsz arcp contract afn float %i.ep, f0x3C23D70A
  %i.er = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.0701.i, float %i.eq)
  %i.es = add nuw i64 %.0682.i, 1
  %i.et = mul i64 %i.es, %i.de
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.et
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !40
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ev, f0x3C23D70A
  %i.ex = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.er, float %i.ew)
  %i.ey = add nuw i64 %.0682.i, 2
  %i.ez = mul i64 %i.ey, %i.de
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !40
  %i.fc = fmul reassoc nsz arcp contract afn float %i.fb, f0x3C23D70A
  %i.fd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ex, float %i.fc)
  %i.fe = add nuw i64 %.0682.i, 3
  %i.ff = mul i64 %i.fe, %i.de
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !40
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, f0x3C23D70A
  %i.fj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fd, float %i.fi) ; 2 uses
  %i.fk = add nuw i64 %.0682.i, 4                 ; 2 uses
  %exitcond.not.i46.3 = icmp eq i64 %i.fk, %i.dd
  br i1 %exitcond.not.i46.3, label %.loopexit.i, label %scalar.ph, !llvm.loop !73

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.i, %bb.k
  %.1.i = phi nsz float [ %i.cu, %bb.k ], [ f0x38D1B717, %.preheader.i ], [ %i.ed, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.fj, %scalar.ph ] ; 3 uses
  %i.fl = load ptr, ptr %i.bx, align 8, !tbaa !74 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 16, !tbaa !97
  %i.fn = icmp ne i32 %i.fm, 0
  %or.cond3.i = select i1 %i.fn, i1 %i.cb, i1 false
  br i1 %or.cond3.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.loopexit.i
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !98 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 644
  %.val76.i = load i32, ptr %i.fq, align 4, !tbaa !106
  %i.fr = and i32 %.val76.i, 4
  %.not75.i = icmp eq i32 %i.fr, 0
  br i1 %.not75.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ft = load i32, ptr %i.fs, align 16, !tbaa !107
  %i.fu = sitofp reassoc nsz arcp contract afn i32 %i.ft to double
  %i.fv = tail call i64 @dt_dev_hash_plus(ptr noundef nonnull %i.fl, ptr noundef nonnull %i.fp, double noundef %i.fu, i32 noundef 3) #19
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.fx = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.fw) #19 ; 0 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store float %.1.i, ptr %i.fy, align 8, !tbaa !57
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i64 %i.fv, ptr %i.fz, align 8, !tbaa !56
  %i.ga = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.fw) #19 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.loopexit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !111
  %i.gd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gc, float f0x38D1B717)
  %i.ge = tail call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.gd)
  %i.gf = fmul reassoc nnan nsz arcp contract afn float %i.ge, f0xBFB8AA3B
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !36
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !37
  %i.gl = sext i32 %i.gk to i64
  %i.gm = mul nsw i64 %i.gl, %i.gi                ; 2 uses
  %.not6.i = icmp eq i64 %i.gm, 0
  br i1 %.not6.i, label %process_reinhard.exit, label %.lr.ph4.i

.lr.ph4.i:                                        ; preds = %bb.n
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.go = load float, ptr %i.gn, align 4, !tbaa !112
  %i.gp = fpext reassoc nsz arcp contract afn float %i.go to double
  %i.gq = fmul reassoc nsz arcp contract afn double %i.gp, 1.000000e-02
  %i.gr = fadd reassoc nsz arcp contract afn float %.1.i, 1.000000e+00
  %i.gs = tail call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.gr)
  %i.gt = fpext reassoc nsz arcp contract afn float %i.gs to double
  %i.gu = fdiv reassoc nsz arcp contract afn double %i.gq, %i.gt
  %i.gv = fptrunc reassoc nsz arcp contract afn double %i.gu to float
  %i.gw = sext i32 %i.bw to i64
  %i.gx = fmul reassoc nsz arcp contract afn float %i.gv, 1.000000e+02
  %i.gy = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.1.i
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph4.i
  %.03.i = phi i64 [ 0, %.lr.ph4.i ], [ %i.hv, %bb.o ] ; 2 uses
  %i.gz = mul i64 %.03.i, %i.gw                   ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gz ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gz ; 3 uses
  %i.hc = load float, ptr %i.ha, align 4, !tbaa !40
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hc, f0x3C23D70A ; 2 uses
  %i.he = fadd reassoc nsz arcp contract afn float %i.hd, 1.000000e+00
  %i.hf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.he, float f0x38D1B717)
  %i.hg = tail call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.hf)
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hd, %i.gy
  %i.hi = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hh, float %i.gf)
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hi, 8.000000e+00
  %i.hk = fadd reassoc nsz arcp contract afn float %i.hj, 2.000000e+00
  %i.hl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hk, float f0x38D1B717)
  %i.hm = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.hl)
  %i.hn = fmul reassoc nsz arcp contract afn float %i.gx, %i.hg
  %i.ho = fdiv reassoc nsz arcp contract afn float %i.hn, %i.hm
  store float %i.ho, ptr %i.hb, align 4, !tbaa !40
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !40
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store float %i.hq, ptr %i.hr, align 4, !tbaa !40
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !40
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store float %i.ht, ptr %i.hu, align 4, !tbaa !40
  %i.hv = add nuw i64 %.03.i, 1                   ; 2 uses
  %exitcond7.not.i = icmp eq i64 %i.hv, %i.gm
  br i1 %exitcond7.not.i, label %process_reinhard.exit, label %bb.o

bb.p:                                             ; preds = %bb.c
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !36
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !37
  %i.ib = sext i32 %i.ia to i64
  %i.ic = mul nsw i64 %i.ib, %i.hy                ; 2 uses
  %.not.i48 = icmp eq i64 %i.ic, 0
  br i1 %.not.i48, label %process_reinhard.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.p
  %i.id = getelementptr i8, ptr %1, i64 132
  %.val44 = load i32, ptr %i.id, align 4, !tbaa !39
  %i.ie = sext i32 %.val44 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i49
  %.01.i50 = phi i64 [ 0, %.lr.ph.i49 ], [ %i.je, %bb.q ] ; 2 uses
  %i.if = mul i64 %.01.i50, %i.ie                 ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.if ; 3 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.if ; 3 uses
  %i.ii = load float, ptr %i.ig, align 4, !tbaa !40
  %i.ij = fpext reassoc nsz arcp contract afn float %i.ii to double
  %i.ik = fmul reassoc nsz arcp contract afn double %i.ij, 1.000000e-02
  %i.il = fptrunc reassoc nsz arcp contract afn double %i.ik to float
  %i.im = fadd reassoc nsz arcp contract afn float %i.il, -4.000000e-03
end_hunk_0
