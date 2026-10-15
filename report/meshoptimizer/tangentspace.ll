Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/tangentspace?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@meshopt_generateTangents:bb.a
  %niter377.next.3 = add nuw i64 %niter377, 4     ; 2 uses
  %niter377.ncmp.3 = icmp eq i64 %niter377.next.3, %unroll_iter376
  br i1 %niter377.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph85.i, !llvm.loop !26

bb.l:                                             ; preds = %bb.o, %.lr.ph87.i
  %.086.i = phi i64 [ 0, %.lr.ph87.i ], [ %i.jb, %bb.o ] ; 3 uses
  %.idx.i = mul nuw i64 %.086.i, 12               ; 2 uses
  br i1 %.not.i162, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i ; 3 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !50
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !50
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !50
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hy
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ia = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.in.i = phi ptr [ %i.hv, %bb.m ], [ %i.ib, %bb.n ]
  %.in80.i = phi ptr [ %i.hr, %bb.m ], [ %i.ia, %bb.n ]
  %.in74.i = phi ptr [ %i.hz, %bb.m ], [ %i.ic, %bb.n ]
  %i.id = load i32, ptr %.in80.i, align 4, !tbaa !50
  %i.ie = load i32, ptr %.in.i, align 4, !tbaa !50
  %i.if = load i32, ptr %.in74.i, align 4, !tbaa !50
  %.0.tr.i = trunc i64 %.086.i to i32
  %i.ig = shl i32 %.0.tr.i, 2                     ; 3 uses
  %i.ih = zext i32 %i.id to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ih ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !50 ; 2 uses
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !50
  %i.il = zext i32 %i.ij to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.il
  store i32 %i.ig, ptr %i.im, align 4, !tbaa !50
  %i.in = or disjoint i32 %i.ig, 1
  %i.io = zext i32 %i.ie to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.io ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !50 ; 2 uses
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !50
  %i.is = zext i32 %i.iq to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.is
  store i32 %i.in, ptr %i.it, align 4, !tbaa !50
  %i.iu = or disjoint i32 %i.ig, 2
  %i.iv = zext i32 %i.if to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.iv ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !50 ; 2 uses
  %i.iy = add i32 %i.ix, 1
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !50
  %i.iz = zext i32 %i.ix to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.iz
  store i32 %i.iu, ptr %i.ja, align 4, !tbaa !50
  %i.jb = add nuw nsw i64 %.086.i, 1              ; 2 uses
  %exitcond94.not.i = icmp eq i64 %i.jb, %i.a
  br i1 %exitcond94.not.i, label %.loopexit, label %bb.l, !llvm.loop !27

.loopexit:                                        ; preds = %bb.o, %.preheader.i
  store i32 0, ptr %i.ee, align 4, !tbaa !50
  %i.jc = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.jd = icmp ugt i64 %2, 3458764513820540927
  %i.je = shl nuw i64 %i.a, 4
  %i.jf = select i1 %i.jd, i64 -1, i64 %i.je
  %i.jg = invoke noundef ptr %i.jc(i64 noundef %i.jf)
          to label %bb.p unwind label %bb.w, !inline_history !28 ; 12 uses

bb.p:                                             ; preds = %.loopexit
  store i64 4, ptr %i.g, align 8, !tbaa !14
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !15
  br i1 %.not90.i, label %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %bb.p
  %.not.i168 = icmp eq ptr %1, null
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i167
  %.0127.i = phi i64 [ 0, %.lr.ph.i167 ], [ %i.nh, %bb.t ] ; 4 uses
  br i1 %.not.i168, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.idx.i169 = mul nuw i64 %.0127.i, 12
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i169 ; 3 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !50
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !50
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !50
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.jo = trunc i64 %.0127.i to i32
  %i.jp = mul i32 %i.jo, 3                        ; 3 uses
  %i.jq = add i32 %i.jp, 1
  %i.jr = add i32 %i.jp, 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.js = phi i32 [ %i.jl, %bb.r ], [ %i.jq, %bb.s ]
  %i.jt = phi i32 [ %i.jj, %bb.r ], [ %i.jp, %bb.s ]
  %i.ju = phi i32 [ %i.jn, %bb.r ], [ %i.jr, %bb.s ]
  %i.jv = zext i32 %i.jt to i64                   ; 2 uses
  %i.jw = mul i64 %i.l, %i.jv
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jw ; 2 uses
  %i.jy = zext i32 %i.js to i64                   ; 2 uses
  %i.jz = mul i64 %i.l, %i.jy
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jz ; 2 uses
  %i.kb = zext i32 %i.ju to i64                   ; 2 uses
  %i.kc = mul i64 %i.l, %i.kb
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kc ; 2 uses
  %i.ke = mul i64 %i.n, %i.jv
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ke ; 2 uses
  %i.kg = mul i64 %i.n, %i.jy
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.kg ; 2 uses
  %i.ki = mul i64 %i.n, %i.kb
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !52 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.kn = load float, ptr %i.km, align 4, !tbaa !52 ; 4 uses
  %i.ko = fsub float %i.kl, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !52 ; 3 uses
  %i.kr = fsub float %i.kq, %i.kn
  %i.ks = load float, ptr %i.kh, align 4, !tbaa !52
  %i.kt = load float, ptr %i.kf, align 4, !tbaa !52 ; 2 uses
  %i.ku = fsub float %i.ks, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !52
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !52 ; 2 uses
  %i.kz = load float, ptr %i.kj, align 4, !tbaa !52
  %i.la = fsub float %i.kz, %i.kt
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !52
  %i.ld = fneg float %i.kr
  %i.le = fneg float %i.la
  %i.lf = fcmp oeq float %i.kn, %i.kl
  %i.lg = fcmp oeq float %i.kn, %i.kq
  %i.lh = fcmp oeq float %i.kl, %i.kq
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0127.i
  %i.lj = load <2 x float>, ptr %i.ka, align 4, !tbaa !52 ; 3 uses
  %i.lk = load <2 x float>, ptr %i.jx, align 4, !tbaa !52 ; 4 uses
  %i.ll = fsub <2 x float> %i.lj, %i.lk
  %i.lm = load <2 x float>, ptr %i.kd, align 4, !tbaa !52 ; 3 uses
  %i.ln = fsub <2 x float> %i.lm, %i.lk
  %i.lo = fsub float %i.kw, %i.ky                 ; 3 uses
  %i.lp = fsub float %i.lc, %i.ky                 ; 3 uses
  %i.lq = fneg <2 x float> %i.ln
  %i.lr = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.ls = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lt = fmul <2 x float> %i.ls, %i.lq
  %i.lu = fmul float %i.lo, %i.ld
  %i.lv = tail call float @llvm.fmuladd.f32(float %i.lp, float %i.ko, float %i.lu) ; 3 uses
  %i.lw = fmul float %i.lo, %i.le
  %i.lx = tail call float @llvm.fmuladd.f32(float %i.ku, float %i.lp, float %i.lw) ; 2 uses
  %i.ly = fcmp oeq float %i.lx, 0.000000e+00
  %i.lz = fcmp ogt float %i.lx, 0.000000e+00
  %i.ma = select i1 %i.lz, float 1.000000e+00, float -1.000000e+00
  %i.mb = extractelement <2 x float> %i.lj, i64 0 ; 2 uses
  %i.mc = extractelement <2 x float> %i.lk, i64 0 ; 2 uses
  %i.md = fcmp oeq float %i.mc, %i.mb
  %i.me = extractelement <2 x float> %i.lj, i64 1 ; 2 uses
  %i.mf = extractelement <2 x float> %i.lk, i64 1 ; 2 uses
  %i.mg = fcmp oeq float %i.mf, %i.me
  %or.cond.i = select i1 %i.md, i1 %i.mg, i1 false
  %or.cond122.i = select i1 %or.cond.i, i1 %i.lf, i1 false
  %i.mh = extractelement <2 x float> %i.lm, i64 0 ; 2 uses
  %i.mi = fcmp oeq float %i.mc, %i.mh
  %i.mj = extractelement <2 x float> %i.lm, i64 1 ; 2 uses
  %i.mk = fcmp oeq float %i.mf, %i.mj
  %or.cond123.i = select i1 %i.mi, i1 %i.mk, i1 false
  %or.cond124.i = select i1 %or.cond123.i, i1 %i.lg, i1 false
  %i.ml = fcmp oeq float %i.mb, %i.mh
  %i.mm = fcmp oeq float %i.me, %i.mj
  %or.cond125.i = select i1 %i.ml, i1 %i.mm, i1 false
  %or.cond126.i = select i1 %or.cond125.i, i1 %i.lh, i1 false
  %i.mn = select i1 %or.cond126.i, i1 true, i1 %or.cond124.i
  %i.mo = select i1 %i.mn, i1 true, i1 %or.cond122.i
  %i.mp = select i1 %i.mo, i1 true, i1 %i.ly
  %i.mq = insertelement <2 x float> poison, float %i.lp, i64 0
  %i.mr = shufflevector <2 x float> %i.mq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ms = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mr, <2 x float> %i.ll, <2 x float> %i.lt) ; 4 uses
  %i.mt = select i1 %i.mp, float 0.000000e+00, float %i.ma ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.ms, %i.ms
  %i.mu = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.mv = extractelement <2 x float> %i.ms, i64 0 ; 2 uses
  %i.mw = tail call float @llvm.fmuladd.f32(float %i.mv, float %i.mv, float %i.mu)
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.lv, float %i.lv, float %i.mw) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.mx)
  %i.my = fcmp une float %i.mx, 0.000000e+00
  %i.mz = fdiv float %i.mt, %sqrt.i
  %i.na = select i1 %i.my, float %i.mz, float 0.000000e+00
  %i.nb = shufflevector <2 x float> %i.ms, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nc = insertelement <4 x float> %i.nb, float %i.na, i64 2 ; 2 uses
  %i.nd = insertelement <4 x float> %i.nc, float %i.mt, i64 3
  %i.ne = shufflevector <4 x float> %i.nc, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 2, i32 poison, i32 7>
  %i.nf = insertelement <4 x float> %i.ne, float %i.lv, i64 2
  %i.ng = fmul <4 x float> %i.nd, %i.nf
  store <4 x float> %i.ng, ptr %i.li, align 4, !tbaa !52
  %i.nh = add nuw nsw i64 %.0127.i, 1             ; 2 uses
  %exitcond.not.i170 = icmp eq i64 %i.nh, %i.a
  br i1 %exitcond.not.i170, label %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit, label %bb.q, !llvm.loop !29

_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit: ; preds = %bb.t, %bb.p
  %i.ni = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.nj = invoke noundef ptr %i.ni(i64 noundef %i.ei)
          to label %_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173 unwind label %bb.x, !inline_history !18 ; 22 uses

_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173:  ; preds = %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit
  %i.nk = load i64, ptr %i.g, align 8, !tbaa !14  ; 4 uses
  %i.nl = add nuw nsw i64 %i.nk, 1                ; 2 uses
  store i64 %i.nl, ptr %i.g, align 8, !tbaa !14
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.nk
  store ptr %i.nj, ptr %i.nm, align 8, !tbaa !15
  br i1 %.not88.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader362, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %index ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  store <4 x i32> %vec.ind, ptr %i.nn, align 4, !tbaa !50
  store <4 x i32> %step.add, ptr %i.no, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.np = icmp eq i64 %index.next, %n.vec
  br i1 %i.np, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader362

.lr.ph.preheader362:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0133217.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173
  %i.nq = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.nr = icmp ugt i64 %2, -4611686018427387905
  %i.ns = shl nuw i64 %i.a, 2
  %i.nt = select i1 %i.nr, i64 -1, i64 %i.ns
  %i.nu = invoke noundef ptr %i.nq(i64 noundef %i.nt)
          to label %bb.y unwind label %bb.z, !inline_history !18 ; 15 uses

bb.u:                                             ; preds = %._crit_edge.i, %_ZN7meshoptL12hashBuckets4Em.exit.i, %bb.a
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.v:                                             ; preds = %.noexc164, %bb.k
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.w:                                             ; preds = %.loopexit
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.x:                                             ; preds = %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.lr.ph:                                           ; preds = %.lr.ph.preheader362, %.lr.ph
  %.0133217 = phi i64 [ %i.ob, %.lr.ph ], [ %.0133217.ph, %.lr.ph.preheader362 ] ; 3 uses
  %i.nz = trunc i64 %.0133217 to i32
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0133217
  store i32 %i.nz, ptr %i.oa, align 4, !tbaa !50
  %i.ob = add nuw i64 %.0133217, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ob, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

bb.y:                                             ; preds = %._crit_edge
  %i.oc = add nuw nsw i64 %i.nk, 2                ; 2 uses
  store i64 %i.oc, ptr %i.g, align 8, !tbaa !14
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.nl
  store ptr %i.nu, ptr %i.od, align 8, !tbaa !15
  %i.oe = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.of = invoke noundef ptr %i.oe(i64 noundef %i.a)
          to label %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit unwind label %bb.aa, !inline_history !32 ; 13 uses

_ZN17meshopt_Allocator8allocateIhEEPT_m.exit:     ; preds = %bb.y
  %i.og = add nuw nsw i64 %i.nk, 3
  store i64 %i.og, ptr %i.g, align 8, !tbaa !14
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.oc
  store ptr %i.of, ptr %i.oh, align 8, !tbaa !15
  br i1 %.not90.i, label %.preheader208, label %.lr.ph219.preheader

.lr.ph219.preheader:                              ; preds = %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit
  %min.iters.check327 = icmp ult i64 %2, 51
  br i1 %min.iters.check327, label %.lr.ph219.preheader361, label %vector.memcheck

.lr.ph219.preheader361:                           ; preds = %vector.body337, %vector.memcheck, %.lr.ph219.preheader
  %.0132218.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph219.preheader ], [ %n.vec336, %vector.body337 ] ; 8 uses
  %i.oi = sub i64 %i.a, %.0132218.ph
  %.neg = add i64 %.0132218.ph, 1
  %xtraiter378 = and i64 %i.oi, 1
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod379.not, label %.lr.ph219.prol.loopexit, label %.lr.ph219.prol

.lr.ph219.prol:                                   ; preds = %.lr.ph219.preheader361
  %i.oj = trunc i64 %.0132218.ph to i32
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %.0132218.ph
  store i32 %i.oj, ptr %i.ok, align 4, !tbaa !50
  %i.ol = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0132218.ph
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  %i.on = load float, ptr %i.om, align 4, !tbaa !57 ; 2 uses
  %i.oo = fcmp ogt float %i.on, 0.000000e+00
  %i.op = zext i1 %i.oo to i8
  %i.oq = fcmp olt float %i.on, 0.000000e+00
  %i.or = select i1 %i.oq, i8 2, i8 0
  %i.os = or disjoint i8 %i.or, %i.op
  %i.ot = getelementptr inbounds nuw i8, ptr %i.of, i64 %.0132218.ph
  store i8 %i.os, ptr %i.ot, align 1, !tbaa !58
  %i.ou = add nuw nsw i64 %.0132218.ph, 1
  br label %.lr.ph219.prol.loopexit

.lr.ph219.prol.loopexit:                          ; preds = %.lr.ph219.prol, %.lr.ph219.preheader361
  %.0132218.unr = phi i64 [ %.0132218.ph, %.lr.ph219.preheader361 ], [ %i.ou, %.lr.ph219.prol ]
  %i.ov = icmp eq i64 %i.a, %.neg
  br i1 %i.ov, label %.preheader208, label %.lr.ph219

vector.memcheck:                                  ; preds = %.lr.ph219.preheader
  %i.ow = shl i64 %i.a, 2
  %i.ox = getelementptr i8, ptr %i.nu, i64 %i.ow  ; 2 uses
  %i.oy = getelementptr i8, ptr %i.of, i64 %i.a   ; 2 uses
  %i.oz = getelementptr i8, ptr %i.jg, i64 12     ; 2 uses
  %i.pa = shl i64 %i.a, 4
  %i.pb = getelementptr i8, ptr %i.jg, i64 %i.pa  ; 2 uses
  %bound0 = icmp ult ptr %i.nu, %i.oy
  %bound1 = icmp ult ptr %i.of, %i.ox
  %found.conflict = and i1 %bound0, %bound1
  %bound0328 = icmp ult ptr %i.nu, %i.pb
  %bound1329 = icmp ult ptr %i.oz, %i.ox
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx = or i1 %found.conflict, %found.conflict330
  %bound0331 = icmp ult ptr %i.of, %i.pb
  %bound1332 = icmp ult ptr %i.oz, %i.oy
  %found.conflict333 = and i1 %bound0331, %bound1332
  %conflict.rdx334 = or i1 %conflict.rdx, %found.conflict333
  br i1 %conflict.rdx334, label %.lr.ph219.preheader361, label %vector.ph335

vector.ph335:                                     ; preds = %vector.memcheck
  %i.pc = and i64 %i.a, 3                         ; 2 uses
  %i.pd = icmp eq i64 %i.pc, 0
  %i.pe = select i1 %i.pd, i64 4, i64 %i.pc
  %n.vec336 = sub nsw i64 %i.a, %i.pe             ; 2 uses
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph335
  %index338 = phi i64 [ 0, %vector.ph335 ], [ %index.next340, %vector.body337 ] ; 7 uses
  %vec.ind339 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph335 ], [ %vec.ind.next341, %vector.body337 ] ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %index338
  store <4 x i32> %vec.ind339, ptr %i.pf, align 4, !tbaa !50, !alias.scope !59, !noalias !60
  %i.pg = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.ph = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.pi = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.pj = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 12
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 28
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 44
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 60
  %i.po = load float, ptr %i.pk, align 4, !tbaa !57, !alias.scope !61
  %i.pp = load float, ptr %i.pl, align 4, !tbaa !57, !alias.scope !61
  %i.pq = load float, ptr %i.pm, align 4, !tbaa !57, !alias.scope !61
  %i.pr = load float, ptr %i.pn, align 4, !tbaa !57, !alias.scope !61
  %i.ps = insertelement <4 x float> poison, float %i.po, i64 0
  %i.pt = insertelement <4 x float> %i.ps, float %i.pp, i64 1
  %i.pu = insertelement <4 x float> %i.pt, float %i.pq, i64 2
  %i.pv = insertelement <4 x float> %i.pu, float %i.pr, i64 3 ; 2 uses
  %i.pw = fcmp ogt <4 x float> %i.pv, zeroinitializer
  %i.px = zext <4 x i1> %i.pw to <4 x i8>
  %i.py = fcmp olt <4 x float> %i.pv, zeroinitializer
  %i.pz = select <4 x i1> %i.py, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.qa = or disjoint <4 x i8> %i.pz, %i.px
  %i.qb = getelementptr inbounds nuw i8, ptr %i.of, i64 %index338
  store <4 x i8> %i.qa, ptr %i.qb, align 1, !tbaa !58, !alias.scope !62, !noalias !61
  %index.next340 = add nuw i64 %index338, 4       ; 2 uses
  %vec.ind.next341 = add <4 x i32> %vec.ind339, splat (i32 4)
  %i.qc = icmp eq i64 %index.next340, %n.vec336
end_hunk_0
begin_hunk_1_@meshopt_generateTangents:bb.a
  %i.ui = zext i32 %.0.lcssa.i109.i to i64        ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.ui ; 2 uses
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !58
  %i.ul = or i8 %i.uk, %i.uh
  %i.um = icmp eq i8 %i.ul, 3
  br i1 %i.um, label %.critedge.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.ui
  store i32 %.0.lcssa.i.i, ptr %i.un, align 4, !tbaa !50
  %i.uo = load i8, ptr %i.uj, align 1, !tbaa !58
  %i.up = load i8, ptr %i.ug, align 1, !tbaa !58
  %i.uq = or i8 %i.up, %i.uo
  store i8 %i.uq, ptr %i.ug, align 1, !tbaa !58
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN7meshoptL7follow2EPjj.exit110.i, %bb.ai
  %i.ur = load i32, ptr %i.ro, align 4, !tbaa !50
  %i.us = and i32 %i.ur, 3
  %i.ut = add nuw i32 %i.us, %i.rr                ; 3 uses
  %i.uu = zext i32 %i.ut to i64
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.uu ; 2 uses
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !50 ; 2 uses
  %.not11.i111.i = icmp eq i32 %i.ut, %i.uw
  br i1 %.not11.i111.i, label %_ZN7meshoptL7follow2EPjj.exit115.i, label %.lr.ph.i112.i

.lr.ph.i112.i:                                    ; preds = %bb.am, %.lr.ph.i112.i
  %i.ux = phi i32 [ %i.vb, %.lr.ph.i112.i ], [ %i.uw, %bb.am ] ; 3 uses
  %i.uy = phi ptr [ %i.va, %.lr.ph.i112.i ], [ %i.uv, %bb.am ]
  %i.uz = zext i32 %i.ux to i64
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.uz ; 2 uses
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !50 ; 3 uses
  store i32 %i.vb, ptr %i.uy, align 4, !tbaa !50
  %.not.i113.i = icmp eq i32 %i.ux, %i.vb
  br i1 %.not.i113.i, label %_ZN7meshoptL7follow2EPjj.exit115.i, label %.lr.ph.i112.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit115.i:               ; preds = %.lr.ph.i112.i, %bb.am
  %.0.lcssa.i114.i = phi i32 [ %i.ut, %bb.am ], [ %i.ux, %.lr.ph.i112.i ] ; 2 uses
  %i.vc = load i32, ptr %i.sn, align 4, !tbaa !50
  %i.vd = and i32 %i.vc, 3
  %i.ve = add nuw i32 %i.vd, %i.sq                ; 3 uses
  %i.vf = zext i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vf ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !50 ; 2 uses
  %.not11.i116.i = icmp eq i32 %i.ve, %i.vh
  br i1 %.not11.i116.i, label %_ZN7meshoptL7follow2EPjj.exit120.i, label %.lr.ph.i117.i

.lr.ph.i117.i:                                    ; preds = %_ZN7meshoptL7follow2EPjj.exit115.i, %.lr.ph.i117.i
  %i.vi = phi i32 [ %i.vm, %.lr.ph.i117.i ], [ %i.vh, %_ZN7meshoptL7follow2EPjj.exit115.i ] ; 3 uses
  %i.vj = phi ptr [ %i.vl, %.lr.ph.i117.i ], [ %i.vg, %_ZN7meshoptL7follow2EPjj.exit115.i ]
  %i.vk = zext i32 %i.vi to i64
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vk ; 2 uses
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !50 ; 3 uses
  store i32 %i.vm, ptr %i.vj, align 4, !tbaa !50
  %.not.i118.i = icmp eq i32 %i.vi, %i.vm
  br i1 %.not.i118.i, label %_ZN7meshoptL7follow2EPjj.exit120.i, label %.lr.ph.i117.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit120.i:               ; preds = %.lr.ph.i117.i, %_ZN7meshoptL7follow2EPjj.exit115.i
  %.0.lcssa.i119.i = phi i32 [ %i.ve, %_ZN7meshoptL7follow2EPjj.exit115.i ], [ %i.vi, %.lr.ph.i117.i ] ; 2 uses
  %.not105.i = icmp eq i32 %.0.lcssa.i114.i, %.0.lcssa.i119.i
  br i1 %.not105.i, label %.critedge.i, label %bb.an

bb.an:                                            ; preds = %_ZN7meshoptL7follow2EPjj.exit120.i
  %i.vn = zext i32 %.0.lcssa.i119.i to i64
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vn
  store i32 %.0.lcssa.i114.i, ptr %i.vo, align 4, !tbaa !50
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.an, %_ZN7meshoptL7follow2EPjj.exit120.i, %bb.ak, %bb.ah, %bb.ag
  %i.vp = add nuw nsw i64 %.0132.i, 1             ; 2 uses
  %exitcond.not.i181 = icmp eq i64 %i.vp, %i.rn
  br i1 %exitcond.not.i181, label %.loopexit.i, label %bb.ae, !llvm.loop !41

_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit: ; preds = %.loopexit.i, %bb.ab
  %exitcond248.not = icmp eq i64 %i.rf, %4
  br i1 %exitcond248.not, label %.preheader207, label %bb.ab, !llvm.loop !42

._crit_edge224.unr-lcssa:                         ; preds = %_ZN7meshoptL7follow2EPjj.exit.1
  %lcmp.mod382.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod382.not, label %._crit_edge224, label %.lr.ph223.epil.preheader

.lr.ph223.epil.preheader:                         ; preds = %._crit_edge224.unr-lcssa, %.lr.ph223.preheader
  %.0130222.epil.init = phi i64 [ 0, %.lr.ph223.preheader ], [ %i.act, %._crit_edge224.unr-lcssa ] ; 3 uses
  %lcmp.mod383 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod383)
  %i.vq = trunc i64 %.0130222.epil.init to i32    ; 2 uses
  %i.vr = and i64 %.0130222.epil.init, 4294967295
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vr ; 2 uses
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !50 ; 2 uses
  %.not11.i.epil = icmp eq i32 %i.vt, %i.vq
  br i1 %.not11.i.epil, label %_ZN7meshoptL7follow2EPjj.exit.epil, label %.lr.ph.i191.epil

.lr.ph.i191.epil:                                 ; preds = %.lr.ph223.epil.preheader, %.lr.ph.i191.epil
  %i.vu = phi i32 [ %i.vy, %.lr.ph.i191.epil ], [ %i.vt, %.lr.ph223.epil.preheader ] ; 3 uses
  %i.vv = phi ptr [ %i.vx, %.lr.ph.i191.epil ], [ %i.vs, %.lr.ph223.epil.preheader ]
  %i.vw = zext i32 %i.vu to i64
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vw ; 2 uses
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !50 ; 3 uses
  store i32 %i.vy, ptr %i.vv, align 4, !tbaa !50
  %.not.i192.epil = icmp eq i32 %i.vu, %i.vy
  br i1 %.not.i192.epil, label %_ZN7meshoptL7follow2EPjj.exit.epil, label %.lr.ph.i191.epil, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit.epil:               ; preds = %.lr.ph.i191.epil, %.lr.ph223.epil.preheader
  %.0.lcssa.i.epil = phi i32 [ %i.vq, %.lr.ph223.epil.preheader ], [ %i.vu, %.lr.ph.i191.epil ]
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0130222.epil.init
  store i32 %.0.lcssa.i.epil, ptr %i.vz, align 4, !tbaa !50
  br label %._crit_edge224

._crit_edge224:                                   ; preds = %._crit_edge224.unr-lcssa, %_ZN7meshoptL7follow2EPjj.exit.epil
  %i.wa = shl i64 %2, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.wa, i1 false)
  br i1 %.not90.i, label %.lr.ph228, label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %._crit_edge224
  %.not.i184 = icmp eq ptr %1, null
  %i.wb = and i32 %10, 1
  %i.wc = icmp eq i32 %i.wb, 0
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.i189, %.lr.ph.i183
  %.0152163.i = phi i64 [ 0, %.lr.ph.i183 ], [ %i.abx, %.loopexit.i189 ] ; 3 uses
  %i.wd = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0152163.i ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 12
  %i.wf = load float, ptr %i.we, align 4, !tbaa !57
  %i.wg = fcmp oeq float %i.wf, 0.000000e+00
  br i1 %i.wg, label %.loopexit.i189, label %.preheader.i185

.preheader.i185:                                  ; preds = %bb.ao
  %i.wh = mul nuw i64 %.0152163.i, 3              ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wj = getelementptr [4 x i8], ptr %1, i64 %i.wh ; 2 uses
  %i.wk = getelementptr [4 x i8], ptr %i.f, i64 %i.wh ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %.preheader.i185
  %indvars.iv.i = phi i64 [ 0, %.preheader.i185 ], [ %indvars.iv.next.i, %bb.as ] ; 4 uses
  %i.wl = add nuw i64 %indvars.iv.i, %i.wh        ; 3 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.wl
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !50
  %i.wo = zext i32 %i.wn to i64
  %.idx.i186 = shl nuw nsw i64 %i.wo, 4
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i186 ; 3 uses
  br i1 %.not.i184, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wl
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !50
  %i.ws = zext i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %indvars.iv.i ; 2 uses
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !50
  %i.wv = sext i32 %i.wu to i64
  %i.ww = getelementptr [4 x i8], ptr %i.wj, i64 %i.wv
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !50
  %i.wy = zext i32 %i.wx to i64
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.wy
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wt, i64 4
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !50
  %i.xc = sext i32 %i.xb to i64
  %i.xd = getelementptr [4 x i8], ptr %i.wj, i64 %i.xc
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !50
  %i.xf = zext i32 %i.xe to i64
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.xf
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %indvars.iv.i ; 2 uses
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !50
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr [4 x i8], ptr %i.wk, i64 %i.xj
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !50
  %i.xn = sext i32 %i.xm to i64
  %i.xo = getelementptr [4 x i8], ptr %i.wk, i64 %i.xn
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.in160.i = phi ptr [ %i.wz, %bb.aq ], [ %i.xk, %bb.ar ]
  %.pn.i = phi i64 [ %i.ws, %bb.aq ], [ %i.wl, %bb.ar ]
  %.in155.i = phi ptr [ %i.xg, %bb.aq ], [ %i.xo, %bb.ar ]
  %.in161.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn.i
  %i.xp = load i32, ptr %.in161.i, align 4, !tbaa !50
  %i.xq = load i32, ptr %.in160.i, align 4, !tbaa !50
  %i.xr = load i32, ptr %.in155.i, align 4, !tbaa !50
  %i.xs = zext i32 %i.xp to i64                   ; 2 uses
  %i.xt = mul i64 %i.l, %i.xs
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xt ; 3 uses
  %i.xv = zext i32 %i.xq to i64
  %i.xw = mul i64 %i.l, %i.xv
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xw ; 2 uses
  %i.xy = zext i32 %i.xr to i64
  %i.xz = mul i64 %i.l, %i.xy
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xz ; 2 uses
  %i.yb = mul i64 %i.m, %i.xs
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.yb ; 2 uses
  %i.yd = load float, ptr %i.wi, align 4, !tbaa !63 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !52 ; 3 uses
  %i.yg = fneg float %i.yf                        ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xu, i64 4
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %12 = load float, ptr %i.yi, align 4, !tbaa !52
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.yk = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %13 = load float, ptr %i.yk, align 4, !tbaa !52
  %i.yl = load <2 x float>, ptr %i.wd, align 4, !tbaa !52 ; 3 uses
  %i.ym = load <2 x float>, ptr %i.yc, align 4, !tbaa !52 ; 5 uses
  %foldExtExtBinop345 = fmul <2 x float> %i.yl, %i.ym
  %i.yn = extractelement <2 x float> %foldExtExtBinop345, i64 1
  %i.yo = extractelement <2 x float> %i.ym, i64 0
  %i.yp = extractelement <2 x float> %i.yl, i64 0
  %i.yq = tail call float @llvm.fmuladd.f32(float %i.yp, float %i.yo, float %i.yn)
  %i.yr = tail call float @llvm.fmuladd.f32(float %i.yd, float %i.yf, float %i.yq) ; 2 uses
  %i.ys = fneg <2 x float> %i.ym                  ; 3 uses
  %i.yt = insertelement <2 x float> poison, float %i.yr, i64 0
  %i.yu = shufflevector <2 x float> %i.yt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ys, <2 x float> %i.yu, <2 x float> %i.yl) ; 4 uses
  %i.yw = tail call float @llvm.fmuladd.f32(float %i.yg, float %i.yr, float %i.yd) ; 3 uses
  %foldExtExtBinop347 = fmul <2 x float> %i.yv, %i.yv
  %i.yx = extractelement <2 x float> %foldExtExtBinop347, i64 1
  %i.yy = extractelement <2 x float> %i.yv, i64 0 ; 2 uses
  %i.yz = tail call float @llvm.fmuladd.f32(float %i.yy, float %i.yy, float %i.yx)
  %i.za = tail call float @llvm.fmuladd.f32(float %i.yw, float %i.yw, float %i.yz) ; 2 uses
  %sqrt.i187 = tail call float @llvm.sqrt.f32(float %i.za)
  %i.zb = load float, ptr %i.xu, align 4, !tbaa !52
  %i.zc = load <2 x float>, ptr %i.xx, align 4, !tbaa !52 ; 2 uses
  %i.zd = load float, ptr %i.yh, align 4, !tbaa !52
  %i.ze = load float, ptr %i.yj, align 4, !tbaa !52
  %i.zf = load <2 x float>, ptr %i.ya, align 4, !tbaa !52 ; 2 uses
  %i.zg = shufflevector <2 x float> %i.zc, <2 x float> %i.zf, <2 x i32> <i32 0, i32 2>
  %i.zh = insertelement <2 x float> poison, float %i.zb, i64 0
  %i.zi = shufflevector <2 x float> %i.zh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zj = fsub <2 x float> %i.zg, %i.zi           ; 2 uses
  %i.zk = shufflevector <2 x float> %i.zc, <2 x float> %i.zf, <2 x i32> <i32 1, i32 3>
  %i.zl = insertelement <2 x float> poison, float %i.zd, i64 0
  %i.zm = shufflevector <2 x float> %i.zl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zn = fsub <2 x float> %i.zk, %i.zm           ; 2 uses
  %i.zo = insertelement <2 x float> poison, float %12, i64 0
  %i.zp = insertelement <2 x float> %i.zo, float %13, i64 1
  %i.zq = insertelement <2 x float> poison, float %i.ze, i64 0
  %i.zr = shufflevector <2 x float> %i.zq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zs = fsub <2 x float> %i.zp, %i.zr           ; 2 uses
  %i.zt = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zu = fmul <2 x float> %i.zt, %i.zn
  %i.zv = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zj, <2 x float> %i.zv, <2 x float> %i.zu)
  %i.zx = insertelement <2 x float> poison, float %i.yf, i64 0
  %i.zy = shufflevector <2 x float> %i.zx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zs, <2 x float> %i.zy, <2 x float> %i.zw) ; 3 uses
  %i.aaa = shufflevector <2 x float> %i.ys, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaa, <2 x float> %i.zz, <2 x float> %i.zj) ; 4 uses
  %i.aac = shufflevector <2 x float> %i.ys, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aac, <2 x float> %i.zz, <2 x float> %i.zn) ; 4 uses
  %i.aae = insertelement <2 x float> poison, float %i.yg, i64 0
  %i.aaf = shufflevector <2 x float> %i.aae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaf, <2 x float> %i.zz, <2 x float> %i.zs) ; 4 uses
  %i.aah = fmul <2 x float> %i.aad, %i.aad
  %i.aai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aab, <2 x float> %i.aab, <2 x float> %i.aah)
  %i.aaj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aag, <2 x float> %i.aag, <2 x float> %i.aai) ; 2 uses
  %shift = shufflevector <2 x float> %i.aaj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop349 = fmul <2 x float> %i.aaj, %shift
  %i.aak = extractelement <2 x float> %foldExtExtBinop349, i64 0
  %i.aal = tail call float @sqrtf(float noundef %i.aak) #11 ; 3 uses
  %shift351 = shufflevector <2 x float> %i.aad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop352 = fmul <2 x float> %i.aad, %shift351
  %i.aam = extractelement <2 x float> %foldExtExtBinop352, i64 0
  %i.aan = extractelement <2 x float> %i.aab, i64 0
  %i.aao = extractelement <2 x float> %i.aab, i64 1
  %i.aap = tail call float @llvm.fmuladd.f32(float %i.aan, float %i.aao, float %i.aam)
  %i.aaq = extractelement <2 x float> %i.aag, i64 0
  %i.aar = extractelement <2 x float> %i.aag, i64 1
  %i.aas = tail call float @llvm.fmuladd.f32(float %i.aaq, float %i.aar, float %i.aap)
  %i.aat = fcmp oeq float %i.aal, 0.000000e+00
  %i.aau = fcmp oeq float %i.za, 0.000000e+00
  %i.aav = insertelement <2 x float> poison, float %i.aal, i64 0
  %i.aaw = insertelement <2 x float> %i.aav, float %sqrt.i187, i64 1
  %i.aax = fdiv <2 x float> splat (float 1.000000e+00), %i.aaw ; 2 uses
  %i.aay = extractelement <2 x float> %i.aax, i64 0
  %i.aaz = select i1 %i.aat, float 0.000000e+00, float %i.aay
  %i.aba = fmul float %i.aaz, %i.aas              ; 2 uses
  %i.abb = tail call float @llvm.fabs.f32(float %i.aba) ; 2 uses
  %i.abc = fcmp ogt float %i.abb, 1.000000e+00
  %i.abd = select i1 %i.abc, float 1.000000e+00, float %i.abb ; 3 uses
  %i.abe = tail call float @llvm.fmuladd.f32(float %i.abd, float f0x3D52DA73, float f0xBE5253A5)
  %i.abf = tail call float @llvm.fmuladd.f32(float %i.abd, float %i.abe, float f0x3FC900CE)
  %i.abg = fsub float 1.000000e+00, %i.abd
  %i.abh = tail call float @sqrtf(float noundef %i.abg) #11
  %i.abi = fmul float %i.abh, %i.abf              ; 2 uses
  %i.abj = fcmp olt float %i.aba, 0.000000e+00
  %i.abk = fsub float f0x40490FDA, %i.abi
  %i.abl = select i1 %i.abj, float %i.abk, float %i.abi
  %i.abm = extractelement <2 x float> %i.aax, i64 1
  %i.abn = select i1 %i.aau, float 0.000000e+00, float %i.abm
  %i.abo = fmul float %i.abn, %i.abl              ; 2 uses
  %i.abp = fmul float %i.aal, %i.abo
  %.0.i = select i1 %i.wc, float %i.abp, float %i.abo ; 2 uses
  %i.abq = load <2 x float>, ptr %i.wp, align 4, !tbaa !52
  %i.abr = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.abs = shufflevector <2 x float> %i.abr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yv, <2 x float> %i.abs, <2 x float> %i.abq)
  store <2 x float> %i.abt, ptr %i.wp, align 4, !tbaa !52
  %i.abu = getelementptr inbounds nuw i8, ptr %i.wp, i64 8 ; 2 uses
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !52
  %i.abw = tail call float @llvm.fmuladd.f32(float %i.yw, float %.0.i, float %i.abv)
  store float %i.abw, ptr %i.abu, align 4, !tbaa !52
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i188, label %.loopexit.i189, label %bb.ap, !llvm.loop !43

.loopexit.i189:                                   ; preds = %bb.as, %bb.ao
  %i.abx = add nuw nsw i64 %.0152163.i, 1         ; 2 uses
  %exitcond166.not.i = icmp eq i64 %i.abx, %i.a
  br i1 %exitcond166.not.i, label %.lr.ph226, label %bb.ao, !llvm.loop !44

.lr.ph223:                                        ; preds = %_ZN7meshoptL7follow2EPjj.exit.1, %.lr.ph223.preheader.new
  %.0130222 = phi i64 [ 0, %.lr.ph223.preheader.new ], [ %i.act, %_ZN7meshoptL7follow2EPjj.exit.1 ] ; 5 uses
  %niter385 = phi i64 [ 0, %.lr.ph223.preheader.new ], [ %niter385.next.1, %_ZN7meshoptL7follow2EPjj.exit.1 ]
  %i.aby = trunc i64 %.0130222 to i32             ; 2 uses
  %i.abz = and i64 %.0130222, 4294967294
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.abz ; 2 uses
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !50 ; 2 uses
  %.not11.i = icmp eq i32 %i.acb, %i.aby
  br i1 %.not11.i, label %_ZN7meshoptL7follow2EPjj.exit, label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %.lr.ph223, %.lr.ph.i191
  %i.acc = phi i32 [ %i.acg, %.lr.ph.i191 ], [ %i.acb, %.lr.ph223 ] ; 3 uses
  %i.acd = phi ptr [ %i.acf, %.lr.ph.i191 ], [ %i.aca, %.lr.ph223 ]
  %i.ace = zext i32 %i.acc to i64
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.ace ; 2 uses
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !50 ; 3 uses
  store i32 %i.acg, ptr %i.acd, align 4, !tbaa !50
  %.not.i192 = icmp eq i32 %i.acc, %i.acg
  br i1 %.not.i192, label %_ZN7meshoptL7follow2EPjj.exit, label %.lr.ph.i191, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit:                    ; preds = %.lr.ph.i191, %.lr.ph223
  %.0.lcssa.i = phi i32 [ %i.aby, %.lr.ph223 ], [ %i.acc, %.lr.ph.i191 ]
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0130222
  store i32 %.0.lcssa.i, ptr %i.ach, align 4, !tbaa !50
  %i.aci = or disjoint i64 %.0130222, 1           ; 3 uses
  %i.acj = trunc i64 %i.aci to i32                ; 2 uses
  %i.ack = and i64 %i.aci, 4294967295
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.ack ; 2 uses
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !50 ; 2 uses
  %.not11.i.1 = icmp eq i32 %i.acm, %i.acj
  br i1 %.not11.i.1, label %_ZN7meshoptL7follow2EPjj.exit.1, label %.lr.ph.i191.1

.lr.ph.i191.1:                                    ; preds = %_ZN7meshoptL7follow2EPjj.exit, %.lr.ph.i191.1
  %i.acn = phi i32 [ %i.acr, %.lr.ph.i191.1 ], [ %i.acm, %_ZN7meshoptL7follow2EPjj.exit ] ; 3 uses
  %i.aco = phi ptr [ %i.acq, %.lr.ph.i191.1 ], [ %i.acl, %_ZN7meshoptL7follow2EPjj.exit ]
  %i.acp = zext i32 %i.acn to i64
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.acp ; 2 uses
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !50 ; 3 uses
  store i32 %i.acr, ptr %i.aco, align 4, !tbaa !50
  %.not.i192.1 = icmp eq i32 %i.acn, %i.acr
  br i1 %.not.i192.1, label %_ZN7meshoptL7follow2EPjj.exit.1, label %.lr.ph.i191.1, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit.1:                  ; preds = %.lr.ph.i191.1, %_ZN7meshoptL7follow2EPjj.exit
  %.0.lcssa.i.1 = phi i32 [ %i.acj, %_ZN7meshoptL7follow2EPjj.exit ], [ %i.acn, %.lr.ph.i191.1 ]
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.aci
  store i32 %.0.lcssa.i.1, ptr %i.acs, align 4, !tbaa !50
  %i.act = add nuw i64 %.0130222, 2               ; 2 uses
  %niter385.next.1 = add nuw i64 %niter385, 2     ; 2 uses
  %niter385.ncmp.1 = icmp eq i64 %niter385.next.1, %unroll_iter384
  br i1 %niter385.ncmp.1, label %._crit_edge224.unr-lcssa, label %.lr.ph223, !llvm.loop !45

.lr.ph228:                                        ; preds = %_ZN7meshoptL7follow2EPjj.exit199, %._crit_edge224
  %i.acu = and i32 %10, 2
  %i.acv = icmp eq i32 %i.acu, 0
  br label %bb.at

.lr.ph226:                                        ; preds = %.loopexit.i189, %_ZN7meshoptL7follow2EPjj.exit199
  %.0129225 = phi i64 [ %i.adn, %_ZN7meshoptL7follow2EPjj.exit199 ], [ 0, %.loopexit.i189 ] ; 5 uses
  %i.acw = trunc i64 %.0129225 to i32
  %i.acx = and i64 %.0129225, 4294967295
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.acx ; 2 uses
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !50 ; 2 uses
  %.not11.i194 = icmp eq i32 %i.acz, %i.acw
  br i1 %.not11.i194, label %.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge, label %.lr.ph.i195

.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge: ; preds = %.lr.ph226
  %.pre = and i64 %.0129225, 4294967295
  br label %_ZN7meshoptL7follow2EPjj.exit199

.lr.ph.i195:                                      ; preds = %.lr.ph226, %.lr.ph.i195
  %i.ada = phi i32 [ %i.ade, %.lr.ph.i195 ], [ %i.acz, %.lr.ph226 ] ; 2 uses
  %i.adb = phi ptr [ %i.add, %.lr.ph.i195 ], [ %i.acy, %.lr.ph226 ]
  %i.adc = zext i32 %i.ada to i64                 ; 2 uses
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.adc ; 2 uses
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !50 ; 3 uses
  store i32 %i.ade, ptr %i.adb, align 4, !tbaa !50
  %.not.i196 = icmp eq i32 %i.ada, %i.ade
  br i1 %.not.i196, label %_ZN7meshoptL7follow2EPjj.exit199, label %.lr.ph.i195, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit199:                 ; preds = %.lr.ph.i195, %.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge ], [ %i.adc, %.lr.ph.i195 ]
  %i.adf = getelementptr inbounds nuw i8, ptr %i.of, i64 %.pre-phi
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !58
  %i.adh = and i8 %i.adg, 1
  %.not148 = icmp eq i8 %i.adh, 0
  %i.adi = select i1 %.not148, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %.idx149 = mul i64 %.0129225, 48
  %i.adj = getelementptr i8, ptr %0, i64 %.idx149 ; 3 uses
  %i.adk = getelementptr i8, ptr %i.adj, i64 44
  store float %i.adi, ptr %i.adk, align 4, !tbaa !52
  %i.adl = getelementptr i8, ptr %i.adj, i64 28
  store float %i.adi, ptr %i.adl, align 4, !tbaa !52
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adj, i64 12
  store float %i.adi, ptr %i.adm, align 4, !tbaa !52
  %i.adn = add nuw nsw i64 %.0129225, 1           ; 2 uses
  %exitcond250.not.a = icmp eq i64 %i.adn, %i.a
  br i1 %exitcond250.not.a, label %.lr.ph228, label %.lr.ph226, !llvm.loop !46

bb.at:                                            ; preds = %.lr.ph228, %bb.aw
  %.0128227 = phi i64 [ 0, %.lr.ph228 ], [ %i.aek, %bb.aw ] ; 4 uses
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0128227
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !50
  %i.adq = zext i32 %i.adp to i64
  %i.adr = icmp eq i64 %.0128227, %i.adq
  br i1 %i.adr, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %.idx147 = shl nuw nsw i64 %.0128227, 4
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 %.idx147 ; 4 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 8 ; 2 uses
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !52 ; 3 uses
  %i.adv = load <2 x float>, ptr %i.ads, align 4, !tbaa !52 ; 4 uses
  %foldExtExtBinop354 = fmul <2 x float> %i.adv, %i.adv
  %i.adw = extractelement <2 x float> %foldExtExtBinop354, i64 1
  %i.adx = extractelement <2 x float> %i.adv, i64 0 ; 2 uses
  %i.ady = tail call float @llvm.fmuladd.f32(float %i.adx, float %i.adx, float %i.adw)
  %i.adz = tail call float @llvm.fmuladd.f32(float %i.adu, float %i.adu, float %i.ady) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.adz)
  %i.aea = fcmp oeq float %i.adz, 0.000000e+00
  %i.aeb = fdiv float 1.000000e+00, %sqrt
  %i.aec = select i1 %i.aea, float 0.000000e+00, float %i.aeb ; 3 uses
  %i.aed = insertelement <2 x float> poison, float %i.aec, i64 0
  %i.aee = shufflevector <2 x float> %i.aed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aef = fmul <2 x float> %i.adv, %i.aee        ; 2 uses
  store <2 x float> %i.aef, ptr %i.ads, align 4, !tbaa !52
  %i.aeg = fmul float %i.adu, %i.aec
  store float %i.aeg, ptr %i.adt, align 4, !tbaa !52
  br i1 %i.acv, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.aeh = fcmp oeq float %i.aec, 0.000000e+00
  %i.aei = extractelement <2 x float> %i.aef, i64 0
  %i.aej = select i1 %i.aeh, float 1.000000e+00, float %i.aei
  store float %i.aej, ptr %i.ads, align 4, !tbaa !52
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.at
  %i.aek = add nuw i64 %.0128227, 1               ; 2 uses
  %exitcond251.not = icmp eq i64 %i.aek, %2
  br i1 %exitcond251.not, label %.lr.ph230.preheader, label %bb.at, !llvm.loop !47

.lr.ph230.preheader:                              ; preds = %bb.aw
  %xtraiter386 = and i64 %2, 1
  %i.ael = icmp eq i64 %i.rd, 0
  br i1 %i.ael, label %.lr.ph230.epil.preheader, label %.lr.ph230.preheader.new

.lr.ph230.preheader.new:                          ; preds = %.lr.ph230.preheader
  %unroll_iter390 = and i64 %2, -2
  br label %.lr.ph230

._crit_edge231.loopexit.unr-lcssa:                ; preds = %bb.bc
  %lcmp.mod388.not = icmp eq i64 %xtraiter386, 0
  br i1 %lcmp.mod388.not, label %._crit_edge231, label %.lr.ph230.epil.preheader

.lr.ph230.epil.preheader:                         ; preds = %._crit_edge231.loopexit.unr-lcssa, %.lr.ph230.preheader
  %.0229.epil.init = phi i64 [ 0, %.lr.ph230.preheader ], [ %i.afk, %._crit_edge231.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod389 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod389)
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0229.epil.init
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !50
  %i.aeo = zext i32 %i.aen to i64                 ; 2 uses
  %.not.epil = icmp eq i64 %.0229.epil.init, %i.aeo
  br i1 %.not.epil, label %._crit_edge231, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph230.epil.preheader
  %.idx.epil = shl i64 %.0229.epil.init, 4
  %i.aep = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.epil
  %.idx146.epil = shl nuw nsw i64 %i.aeo, 4
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aep, ptr noundef nonnull align 4 dereferenceable(12) %i.aeq, i64 12, i1 false)
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %._crit_edge231.loopexit.unr-lcssa, %bb.ax, %.lr.ph230.epil.preheader, %.preheader207
  %i.aer = load i64, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %.not3.i = icmp eq i64 %i.aer, 0
  br i1 %.not3.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %._crit_edge231, %bb.ay
  %.04.i = phi i64 [ %i.aew, %bb.ay ], [ %i.aer, %._crit_edge231 ] ; 2 uses
  %i.aes = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !17
  %i.aet = getelementptr [8 x i8], ptr %11, i64 %.04.i
  %i.aeu = getelementptr i8, ptr %i.aet, i64 -8
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !15
  invoke void %i.aes(ptr noundef %i.aev)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %.lr.ph.i200
  %i.aew = add i64 %.04.i, -1                     ; 2 uses
  %.not.i201 = icmp eq i64 %i.aew, 0
  br i1 %.not.i201, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i200, !llvm.loop !0

bb.az:                                            ; preds = %.lr.ph.i200
  %i.aex = landingpad { ptr, i32 }
          catch ptr null
  %i.aey = extractvalue { ptr, i32 } %i.aex, 0
  tail call void @__clang_call_terminate(ptr %i.aey) #12
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.ay, %._crit_edge231
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  ret void

.lr.ph230:                                        ; preds = %bb.bc, %.lr.ph230.preheader.new
  %.0229 = phi i64 [ 0, %.lr.ph230.preheader.new ], [ %i.afk, %bb.bc ] ; 5 uses
  %niter391 = phi i64 [ 0, %.lr.ph230.preheader.new ], [ %niter391.next.1, %bb.bc ]
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0229
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !50
  %i.afb = zext i32 %i.afa to i64                 ; 2 uses
  %.not = icmp eq i64 %.0229, %i.afb
  br i1 %.not, label %.lr.ph230.1, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph230
  %.idx = shl i64 %.0229, 4
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.idx146 = shl nuw nsw i64 %i.afb, 4
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.afc, ptr noundef nonnull align 4 dereferenceable(12) %i.afd, i64 12, i1 false)
  br label %.lr.ph230.1

.lr.ph230.1:                                      ; preds = %.lr.ph230, %bb.ba
  %i.afe = or disjoint i64 %.0229, 1              ; 3 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.afe
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !50
  %i.afh = zext i32 %i.afg to i64                 ; 2 uses
  %.not.1 = icmp eq i64 %i.afe, %i.afh
  br i1 %.not.1, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph230.1
  %.idx.1 = shl i64 %i.afe, 4
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1
  %.idx146.1 = shl nuw nsw i64 %i.afh, 4
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.afi, ptr noundef nonnull align 4 dereferenceable(12) %i.afj, i64 12, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph230.1
  %i.afk = add nuw i64 %.0229, 2                  ; 2 uses
  %niter391.next.1 = add i64 %niter391, 2         ; 2 uses
  %niter391.ncmp.1 = icmp eq i64 %niter391.next.1, %unroll_iter390
  br i1 %niter391.ncmp.1, label %._crit_edge231.loopexit.unr-lcssa, label %.lr.ph230, !llvm.loop !48

bb.bd:                                            ; preds = %bb.v, %bb.x, %bb.aa, %bb.z, %bb.w, %bb.u
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.nv, %bb.u ], [ %i.nw, %bb.v ], [ %i.nx, %bb.w ], [ %i.ny, %bb.x ], [ %i.qd, %bb.z ], [ %i.qe, %bb.aa ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04 = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !17
  %i.d = getelementptr [8 x i8], ptr %0, i64 %.04
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  invoke void %i.c(ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %.04, -1                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #12
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !16}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"_ZTSN17meshopt_Allocator7StorageE", !10, i64 0, !10, i64 8}
!12 = !{!"long", !6, i64 0}
!13 = !{!"_ZTS17meshopt_Allocator", !6, i64 0, !12, i64 192}
!14 = !{!13, !12, i64 192}
!15 = !{!10, !10, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!11, !10, i64 8}
!18 = distinct !{null}
!19 = distinct !{!19, !16}
!20 = distinct !{null}
!21 = distinct !{!21, !16}
!22 = distinct !{null}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !53}
!25 = distinct !{!25, !53}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{null}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16, !54, !55}
!31 = distinct !{!31, !16, !55, !54}
!32 = distinct !{null}
!33 = distinct !{!33, i1 false, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !16, !54, !55}
!38 = distinct !{!38, !16, !54}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = !{!11, !10, i64 0}
!50 = !{!7, !7, i64 0}
!51 = !{!"float", !6, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = !{!"_ZTSN7meshopt7TangentE", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!57 = !{!56, !51, i64 12}
!58 = !{!6, !6, i64 0}
!59 = !{!34}
!60 = !{!36, !35}
!61 = !{!35}
!62 = !{!36}
!63 = !{!56, !51, i64 8}
end_hunk_1
