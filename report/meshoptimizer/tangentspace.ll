Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/tangentspace?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@meshopt_generateTangents:bb.a
  %niter373.next.3 = add nuw i64 %niter373, 4     ; 2 uses
  %niter373.ncmp.3 = icmp eq i64 %niter373.next.3, %unroll_iter372
  br i1 %niter373.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph85.i, !llvm.loop !26

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
          to label %bb.p unwind label %bb.ai, !inline_history !28 ; 12 uses

bb.p:                                             ; preds = %.loopexit
  store i64 4, ptr %i.g, align 8, !tbaa !14
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !15
  br i1 %.not90.i, label %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %bb.p
  %.not.i168 = icmp eq ptr %1, null
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i167
  %.0127.i = phi i64 [ 0, %.lr.ph.i167 ], [ %i.ni, %bb.t ] ; 4 uses
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
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.lv, float %i.lv, float %i.mw)
  %i.my = tail call float @sqrtf(float noundef %i.mx) #11 ; 2 uses
  %i.mz = fcmp une float %i.my, 0.000000e+00
  %i.na = fdiv float %i.mt, %i.my
  %i.nb = select i1 %i.mz, float %i.na, float 0.000000e+00
  %i.nc = shufflevector <2 x float> %i.ms, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nd = insertelement <4 x float> %i.nc, float %i.nb, i64 2 ; 2 uses
  %i.ne = insertelement <4 x float> %i.nd, float %i.mt, i64 3
  %i.nf = shufflevector <4 x float> %i.nd, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 2, i32 poison, i32 7>
  %i.ng = insertelement <4 x float> %i.nf, float %i.lv, i64 2
  %i.nh = fmul <4 x float> %i.ne, %i.ng
  store <4 x float> %i.nh, ptr %i.li, align 4, !tbaa !52
  %i.ni = add nuw nsw i64 %.0127.i, 1             ; 2 uses
  %exitcond.not.i170 = icmp eq i64 %i.ni, %i.a
  br i1 %exitcond.not.i170, label %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit, label %bb.q, !llvm.loop !29

_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit: ; preds = %bb.t, %bb.p
  %i.nj = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.nk = invoke noundef ptr %i.nj(i64 noundef %i.ei)
          to label %_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173 unwind label %bb.ai, !inline_history !18 ; 22 uses

_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173:  ; preds = %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit
  %i.nl = load i64, ptr %i.g, align 8, !tbaa !14  ; 4 uses
  %i.nm = add nuw nsw i64 %i.nl, 1                ; 2 uses
  store i64 %i.nm, ptr %i.g, align 8, !tbaa !14
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.nl
  store ptr %i.nk, ptr %i.nn, align 8, !tbaa !15
  br i1 %.not88.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader358, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %index ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  store <4 x i32> %vec.ind, ptr %i.no, align 4, !tbaa !50
  store <4 x i32> %step.add, ptr %i.np, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.nq = icmp eq i64 %index.next, %n.vec
  br i1 %i.nq, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader358

.lr.ph.preheader358:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0133216.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173
  %i.nr = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.ns = icmp ugt i64 %2, -4611686018427387905
  %i.nt = shl nuw i64 %i.a, 2
  %i.nu = select i1 %i.ns, i64 -1, i64 %i.nt
  %i.nv = invoke noundef ptr %i.nr(i64 noundef %i.nu)
          to label %bb.u unwind label %bb.ai, !inline_history !18 ; 15 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader358, %.lr.ph
  %.0133216 = phi i64 [ %i.ny, %.lr.ph ], [ %.0133216.ph, %.lr.ph.preheader358 ] ; 3 uses
  %i.nw = trunc i64 %.0133216 to i32
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0133216
  store i32 %i.nw, ptr %i.nx, align 4, !tbaa !50
  %i.ny = add nuw i64 %.0133216, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ny, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

bb.u:                                             ; preds = %._crit_edge
  %i.nz = add nuw nsw i64 %i.nl, 2                ; 2 uses
  store i64 %i.nz, ptr %i.g, align 8, !tbaa !14
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.nm
  store ptr %i.nv, ptr %i.oa, align 8, !tbaa !15
  %i.ob = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.oc = invoke noundef ptr %i.ob(i64 noundef %i.a)
          to label %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit unwind label %bb.ai, !inline_history !32 ; 13 uses

_ZN17meshopt_Allocator8allocateIhEEPT_m.exit:     ; preds = %bb.u
  %i.od = add nuw nsw i64 %i.nl, 3
  store i64 %i.od, ptr %i.g, align 8, !tbaa !14
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.nz
  store ptr %i.oc, ptr %i.oe, align 8, !tbaa !15
  br i1 %.not90.i, label %.preheader207.a, label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit
  %min.iters.check326 = icmp ult i64 %2, 51
  br i1 %min.iters.check326, label %.lr.ph218.preheader357, label %vector.memcheck

.lr.ph218.preheader357:                           ; preds = %vector.body336, %vector.memcheck, %.lr.ph218.preheader
  %.0132217.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph218.preheader ], [ %n.vec335, %vector.body336 ] ; 8 uses
  %i.of = sub i64 %i.a, %.0132217.ph
  %.neg = add i64 %.0132217.ph, 1
  %xtraiter374 = and i64 %i.of, 1
  %lcmp.mod375.not = icmp eq i64 %xtraiter374, 0
  br i1 %lcmp.mod375.not, label %.lr.ph218.prol.loopexit, label %.lr.ph218.prol

.lr.ph218.prol:                                   ; preds = %.lr.ph218.preheader357
  %i.og = trunc i64 %.0132217.ph to i32
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.0132217.ph
  store i32 %i.og, ptr %i.oh, align 4, !tbaa !50
  %i.oi = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0132217.ph
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 12
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !57 ; 2 uses
  %i.ol = fcmp ogt float %i.ok, 0.000000e+00
  %i.om = zext i1 %i.ol to i8
  %i.on = fcmp olt float %i.ok, 0.000000e+00
  %i.oo = select i1 %i.on, i8 2, i8 0
  %i.op = or disjoint i8 %i.oo, %i.om
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.0132217.ph
  store i8 %i.op, ptr %i.oq, align 1, !tbaa !58
  %i.or = add nuw nsw i64 %.0132217.ph, 1
  br label %.lr.ph218.prol.loopexit

.lr.ph218.prol.loopexit:                          ; preds = %.lr.ph218.prol, %.lr.ph218.preheader357
  %.0132217.unr = phi i64 [ %.0132217.ph, %.lr.ph218.preheader357 ], [ %i.or, %.lr.ph218.prol ]
  %i.os = icmp eq i64 %i.a, %.neg
  br i1 %i.os, label %.preheader207.a, label %.lr.ph218

vector.memcheck:                                  ; preds = %.lr.ph218.preheader
  %i.ot = shl i64 %i.a, 2
  %i.ou = getelementptr i8, ptr %i.nv, i64 %i.ot  ; 2 uses
  %i.ov = getelementptr i8, ptr %i.oc, i64 %i.a   ; 2 uses
  %i.ow = getelementptr i8, ptr %i.jg, i64 12     ; 2 uses
  %i.ox = shl i64 %i.a, 4
  %i.oy = getelementptr i8, ptr %i.jg, i64 %i.ox  ; 2 uses
  %bound0 = icmp ult ptr %i.nv, %i.ov
  %bound1 = icmp ult ptr %i.oc, %i.ou
  %found.conflict = and i1 %bound0, %bound1
  %bound0327 = icmp ult ptr %i.nv, %i.oy
  %bound1328 = icmp ult ptr %i.ow, %i.ou
  %found.conflict329 = and i1 %bound0327, %bound1328
  %conflict.rdx = or i1 %found.conflict, %found.conflict329
  %bound0330 = icmp ult ptr %i.oc, %i.oy
  %bound1331 = icmp ult ptr %i.ow, %i.ov
  %found.conflict332 = and i1 %bound0330, %bound1331
  %conflict.rdx333 = or i1 %conflict.rdx, %found.conflict332
  br i1 %conflict.rdx333, label %.lr.ph218.preheader357, label %vector.ph334

vector.ph334:                                     ; preds = %vector.memcheck
  %i.oz = and i64 %i.a, 3                         ; 2 uses
  %i.pa = icmp eq i64 %i.oz, 0
  %i.pb = select i1 %i.pa, i64 4, i64 %i.oz
  %n.vec335 = sub nsw i64 %i.a, %i.pb             ; 2 uses
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph334
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next339, %vector.body336 ] ; 7 uses
  %vec.ind338 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph334 ], [ %vec.ind.next340, %vector.body336 ] ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %index337
  store <4 x i32> %vec.ind338, ptr %i.pc, align 4, !tbaa !50, !alias.scope !59, !noalias !60
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index337
  %i.pe = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index337
  %i.pf = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index337
  %i.pg = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index337
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 12
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 28
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 44
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 60
  %i.pl = load float, ptr %i.ph, align 4, !tbaa !57, !alias.scope !61
  %i.pm = load float, ptr %i.pi, align 4, !tbaa !57, !alias.scope !61
  %i.pn = load float, ptr %i.pj, align 4, !tbaa !57, !alias.scope !61
  %i.po = load float, ptr %i.pk, align 4, !tbaa !57, !alias.scope !61
  %i.pp = insertelement <4 x float> poison, float %i.pl, i64 0
  %i.pq = insertelement <4 x float> %i.pp, float %i.pm, i64 1
  %i.pr = insertelement <4 x float> %i.pq, float %i.pn, i64 2
  %i.ps = insertelement <4 x float> %i.pr, float %i.po, i64 3 ; 2 uses
  %i.pt = fcmp ogt <4 x float> %i.ps, zeroinitializer
  %i.pu = zext <4 x i1> %i.pt to <4 x i8>
  %i.pv = fcmp olt <4 x float> %i.ps, zeroinitializer
  %i.pw = select <4 x i1> %i.pv, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.px = or disjoint <4 x i8> %i.pw, %i.pu
  %i.py = getelementptr inbounds nuw i8, ptr %i.oc, i64 %index337
  store <4 x i8> %i.px, ptr %i.py, align 1, !tbaa !58, !alias.scope !62, !noalias !61
  %index.next339 = add nuw i64 %index337, 4       ; 2 uses
  %vec.ind.next340 = add <4 x i32> %vec.ind338, splat (i32 4)
  %i.pz = icmp eq i64 %index.next339, %n.vec335
  br i1 %i.pz, label %.lr.ph218.preheader357, label %vector.body336, !llvm.loop !37

.preheader207.a:                                  ; preds = %.lr.ph218.prol.loopexit, %.lr.ph218, %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit
  br i1 %.not.i, label %.preheader206, label %.lr.ph220

.lr.ph220:                                        ; preds = %.preheader207.a
  %.not.i177 = icmp eq ptr %1, null               ; 2 uses
  br label %bb.v

.lr.ph218:                                        ; preds = %.lr.ph218.prol.loopexit, %.lr.ph218
  %.0132217 = phi i64 [ %i.qx, %.lr.ph218 ], [ %.0132217.unr, %.lr.ph218.prol.loopexit ] ; 6 uses
  %i.qa = trunc i64 %.0132217 to i32
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.0132217
  store i32 %i.qa, ptr %i.qb, align 4, !tbaa !50
  %i.qc = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0132217
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 12
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !57 ; 2 uses
  %i.qf = fcmp ogt float %i.qe, 0.000000e+00
  %i.qg = zext i1 %i.qf to i8
  %i.qh = fcmp olt float %i.qe, 0.000000e+00
end_hunk_0
begin_hunk_1_@meshopt_generateTangents:bb.a
  %i.ug = or i8 %i.uf, %i.uc
  %i.uh = icmp eq i8 %i.ug, 3
  br i1 %i.uh, label %.critedge.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.ud
  store i32 %.0.lcssa.i.i, ptr %i.ui, align 4, !tbaa !50
  %i.uj = load i8, ptr %i.ue, align 1, !tbaa !58
  %i.uk = load i8, ptr %i.ub, align 1, !tbaa !58
  %i.ul = or i8 %i.uk, %i.uj
  store i8 %i.ul, ptr %i.ub, align 1, !tbaa !58
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN7meshoptL7follow2EPjj.exit110.i, %bb.ac
  %i.um = load i32, ptr %i.rj, align 4, !tbaa !50
  %i.un = and i32 %i.um, 3
  %i.uo = add nuw i32 %i.un, %i.rm                ; 3 uses
  %i.up = zext i32 %i.uo to i64
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.up ; 2 uses
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !50 ; 2 uses
  %.not11.i111.i = icmp eq i32 %i.uo, %i.ur
  br i1 %.not11.i111.i, label %_ZN7meshoptL7follow2EPjj.exit115.i, label %.lr.ph.i112.i

.lr.ph.i112.i:                                    ; preds = %bb.ag, %.lr.ph.i112.i
  %i.us = phi i32 [ %i.uw, %.lr.ph.i112.i ], [ %i.ur, %bb.ag ] ; 3 uses
  %i.ut = phi ptr [ %i.uv, %.lr.ph.i112.i ], [ %i.uq, %bb.ag ]
  %i.uu = zext i32 %i.us to i64
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.uu ; 2 uses
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !50 ; 3 uses
  store i32 %i.uw, ptr %i.ut, align 4, !tbaa !50
  %.not.i113.i = icmp eq i32 %i.us, %i.uw
  br i1 %.not.i113.i, label %_ZN7meshoptL7follow2EPjj.exit115.i, label %.lr.ph.i112.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit115.i:               ; preds = %.lr.ph.i112.i, %bb.ag
  %.0.lcssa.i114.i = phi i32 [ %i.uo, %bb.ag ], [ %i.us, %.lr.ph.i112.i ] ; 2 uses
  %i.ux = load i32, ptr %i.si, align 4, !tbaa !50
  %i.uy = and i32 %i.ux, 3
  %i.uz = add nuw i32 %i.uy, %i.sl                ; 3 uses
  %i.va = zext i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.va ; 2 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !50 ; 2 uses
  %.not11.i116.i = icmp eq i32 %i.uz, %i.vc
  br i1 %.not11.i116.i, label %_ZN7meshoptL7follow2EPjj.exit120.i, label %.lr.ph.i117.i

.lr.ph.i117.i:                                    ; preds = %_ZN7meshoptL7follow2EPjj.exit115.i, %.lr.ph.i117.i
  %i.vd = phi i32 [ %i.vh, %.lr.ph.i117.i ], [ %i.vc, %_ZN7meshoptL7follow2EPjj.exit115.i ] ; 3 uses
  %i.ve = phi ptr [ %i.vg, %.lr.ph.i117.i ], [ %i.vb, %_ZN7meshoptL7follow2EPjj.exit115.i ]
  %i.vf = zext i32 %i.vd to i64
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.vf ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !50 ; 3 uses
  store i32 %i.vh, ptr %i.ve, align 4, !tbaa !50
  %.not.i118.i = icmp eq i32 %i.vd, %i.vh
  br i1 %.not.i118.i, label %_ZN7meshoptL7follow2EPjj.exit120.i, label %.lr.ph.i117.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit120.i:               ; preds = %.lr.ph.i117.i, %_ZN7meshoptL7follow2EPjj.exit115.i
  %.0.lcssa.i119.i = phi i32 [ %i.uz, %_ZN7meshoptL7follow2EPjj.exit115.i ], [ %i.vd, %.lr.ph.i117.i ] ; 2 uses
  %.not105.i = icmp eq i32 %.0.lcssa.i114.i, %.0.lcssa.i119.i
  br i1 %.not105.i, label %.critedge.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN7meshoptL7follow2EPjj.exit120.i
  %i.vi = zext i32 %.0.lcssa.i119.i to i64
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.vi
  store i32 %.0.lcssa.i114.i, ptr %i.vj, align 4, !tbaa !50
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ah, %_ZN7meshoptL7follow2EPjj.exit120.i, %bb.ae, %bb.ab, %bb.aa
  %i.vk = add nuw nsw i64 %.0132.i, 1             ; 2 uses
  %exitcond.not.i181 = icmp eq i64 %i.vk, %i.ri
  br i1 %exitcond.not.i181, label %.loopexit.i, label %bb.y, !llvm.loop !41

bb.ai:                                            ; preds = %bb.a, %_ZN7meshoptL12hashBuckets4Em.exit.i, %._crit_edge.i, %bb.u, %._crit_edge, %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit, %.loopexit, %.noexc164, %bb.k
  %i.vl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  resume { ptr, i32 } %i.vl

_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit: ; preds = %.loopexit.i, %bb.v
  %exitcond247.not = icmp eq i64 %i.ra, %4
  br i1 %exitcond247.not, label %.preheader206, label %bb.v, !llvm.loop !42

._crit_edge223.unr-lcssa:                         ; preds = %_ZN7meshoptL7follow2EPjj.exit.1
  %lcmp.mod378.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod378.not, label %._crit_edge223, label %.lr.ph222.epil.preheader

.lr.ph222.epil.preheader:                         ; preds = %._crit_edge223.unr-lcssa, %.lr.ph222.preheader
  %.0130221.epil.init = phi i64 [ 0, %.lr.ph222.preheader ], [ %i.abj, %._crit_edge223.unr-lcssa ] ; 3 uses
  %lcmp.mod379 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod379)
  %i.vm = trunc i64 %.0130221.epil.init to i32    ; 2 uses
  %i.vn = and i64 %.0130221.epil.init, 4294967295
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.vn ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !50 ; 2 uses
  %.not11.i.epil = icmp eq i32 %i.vp, %i.vm
  br i1 %.not11.i.epil, label %_ZN7meshoptL7follow2EPjj.exit.epil, label %.lr.ph.i190.epil

.lr.ph.i190.epil:                                 ; preds = %.lr.ph222.epil.preheader, %.lr.ph.i190.epil
  %i.vq = phi i32 [ %i.vu, %.lr.ph.i190.epil ], [ %i.vp, %.lr.ph222.epil.preheader ] ; 3 uses
  %i.vr = phi ptr [ %i.vt, %.lr.ph.i190.epil ], [ %i.vo, %.lr.ph222.epil.preheader ]
  %i.vs = zext i32 %i.vq to i64
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.vs ; 2 uses
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !50 ; 3 uses
  store i32 %i.vu, ptr %i.vr, align 4, !tbaa !50
  %.not.i191.epil = icmp eq i32 %i.vq, %i.vu
  br i1 %.not.i191.epil, label %_ZN7meshoptL7follow2EPjj.exit.epil, label %.lr.ph.i190.epil, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit.epil:               ; preds = %.lr.ph.i190.epil, %.lr.ph222.epil.preheader
  %.0.lcssa.i.epil = phi i32 [ %i.vm, %.lr.ph222.epil.preheader ], [ %i.vq, %.lr.ph.i190.epil ]
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0130221.epil.init
  store i32 %.0.lcssa.i.epil, ptr %i.vv, align 4, !tbaa !50
  br label %._crit_edge223

._crit_edge223:                                   ; preds = %._crit_edge223.unr-lcssa, %_ZN7meshoptL7follow2EPjj.exit.epil
  %i.vw = shl i64 %2, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.vw, i1 false)
  br i1 %.not90.i, label %.lr.ph227, label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %._crit_edge223
  %.not.i184 = icmp eq ptr %1, null
  %i.vx = and i32 %10, 1
  %i.vy = icmp eq i32 %i.vx, 0
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.i188, %.lr.ph.i183
  %.0152163.i = phi i64 [ 0, %.lr.ph.i183 ], [ %i.aan, %.loopexit.i188 ] ; 3 uses
  %i.vz = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0152163.i ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 12
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !57
  %i.wc = fcmp oeq float %i.wb, 0.000000e+00
  br i1 %i.wc, label %.loopexit.i188, label %.preheader.i185

.preheader.i185:                                  ; preds = %bb.aj
  %i.wd = mul nuw i64 %.0152163.i, 3              ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wf = getelementptr [4 x i8], ptr %1, i64 %i.wd ; 2 uses
  %i.wg = getelementptr [4 x i8], ptr %i.f, i64 %i.wd ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.an, %.preheader.i185
  %indvars.iv.i = phi i64 [ 0, %.preheader.i185 ], [ %indvars.iv.next.i, %bb.an ] ; 4 uses
  %i.wh = add nuw i64 %indvars.iv.i, %i.wd        ; 3 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.wh
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !50
  %i.wk = zext i32 %i.wj to i64
  %.idx.i186 = shl nuw nsw i64 %i.wk, 4
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i186 ; 3 uses
  br i1 %.not.i184, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wh
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !50
  %i.wo = zext i32 %i.wn to i64
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %indvars.iv.i ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !50
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr [4 x i8], ptr %i.wf, i64 %i.wr
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !50
  %i.wu = zext i32 %i.wt to i64
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.wu
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wp, i64 4
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !50
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr [4 x i8], ptr %i.wf, i64 %i.wy
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !50
  %i.xb = zext i32 %i.xa to i64
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.xb
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %indvars.iv.i ; 2 uses
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !50
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr [4 x i8], ptr %i.wg, i64 %i.xf
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !50
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr [4 x i8], ptr %i.wg, i64 %i.xj
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.in160.i = phi ptr [ %i.wv, %bb.al ], [ %i.xg, %bb.am ]
  %.pn.i = phi i64 [ %i.wo, %bb.al ], [ %i.wh, %bb.am ]
  %.in155.i = phi ptr [ %i.xc, %bb.al ], [ %i.xk, %bb.am ]
  %.in161.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn.i
  %i.xl = load i32, ptr %.in161.i, align 4, !tbaa !50
  %i.xm = load i32, ptr %.in160.i, align 4, !tbaa !50
  %i.xn = load i32, ptr %.in155.i, align 4, !tbaa !50
  %i.xo = zext i32 %i.xl to i64                   ; 2 uses
  %i.xp = mul i64 %i.l, %i.xo
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xp ; 3 uses
  %i.xr = zext i32 %i.xm to i64
  %i.xs = mul i64 %i.l, %i.xr
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xs ; 3 uses
  %i.xu = zext i32 %i.xn to i64
  %i.xv = mul i64 %i.l, %i.xu
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xv ; 3 uses
  %i.xx = mul i64 %i.m, %i.xo
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.xx ; 2 uses
  %i.xz = load float, ptr %i.we, align 4, !tbaa !63 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xt, i64 4
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xq, i64 4
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xw, i64 4
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.yh = load float, ptr %i.ya, align 4, !tbaa !52 ; 3 uses
  %i.yi = fneg float %i.yh                        ; 3 uses
  %12 = insertelement <2 x float> poison, float %i.yh, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = load <2 x float>, ptr %i.vz, align 4, !tbaa !52 ; 3 uses
  %15 = load <2 x float>, ptr %i.xy, align 4, !tbaa !52 ; 5 uses
  %foldExtExtBinop344 = fmul <2 x float> %14, %15
  %16 = extractelement <2 x float> %foldExtExtBinop344, i64 1
  %17 = extractelement <2 x float> %15, i64 0
  %18 = extractelement <2 x float> %14, i64 0
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %17, float %16)
  %20 = tail call float @llvm.fmuladd.f32(float %i.xz, float %i.yh, float %19) ; 2 uses
  %21 = fneg <2 x float> %15                      ; 3 uses
  %22 = insertelement <2 x float> poison, float %20, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %23, <2 x float> %14) ; 4 uses
  %25 = tail call float @llvm.fmuladd.f32(float %i.yi, float %20, float %i.xz) ; 3 uses
  %foldExtExtBinop346 = fmul <2 x float> %24, %24
  %26 = extractelement <2 x float> %foldExtExtBinop346, i64 1
  %27 = extractelement <2 x float> %24, i64 0     ; 2 uses
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %26)
  %29 = tail call float @llvm.fmuladd.f32(float %25, float %25, float %28)
  %30 = tail call float @sqrtf(float noundef %29) #11 ; 2 uses
  %31 = load float, ptr %i.xt, align 4, !tbaa !52
  %32 = load float, ptr %i.xq, align 4, !tbaa !52
  %33 = load float, ptr %i.yb, align 4, !tbaa !52
  %34 = load float, ptr %i.yc, align 4, !tbaa !52
  %35 = load float, ptr %i.yd, align 4, !tbaa !52
  %36 = load float, ptr %i.ye, align 4, !tbaa !52 ; 2 uses
  %37 = fsub float %35, %36                       ; 2 uses
  %38 = load float, ptr %i.xw, align 4, !tbaa !52
  %39 = insertelement <2 x float> poison, float %31, i64 0
  %40 = insertelement <2 x float> %39, float %38, i64 1
  %41 = insertelement <2 x float> poison, float %32, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = fsub <2 x float> %40, %42                 ; 3 uses
  %44 = load float, ptr %i.yf, align 4, !tbaa !52
  %i.yj = insertelement <2 x float> poison, float %33, i64 0
  %45 = insertelement <2 x float> %i.yj, float %44, i64 1
  %46 = insertelement <2 x float> poison, float %34, i64 0
  %47 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> zeroinitializer
  %48 = fsub <2 x float> %45, %47                 ; 2 uses
  %49 = load float, ptr %i.yg, align 4, !tbaa !52
  %50 = fsub float %49, %36                       ; 2 uses
  %51 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %52 = fmul <2 x float> %51, %48
  %53 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %54 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> %53, <2 x float> %52)
  %55 = insertelement <2 x float> poison, float %37, i64 0
  %56 = insertelement <2 x float> %55, float %50, i64 1
  %i.yk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %56, <2 x float> %13, <2 x float> %54) ; 3 uses
  %57 = shufflevector <2 x float> %i.yk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %58 = extractelement <2 x float> %i.yk, i64 0
  %i.yl = extractelement <2 x float> %43, i64 0
  %i.ym = extractelement <2 x float> %21, i64 0
  %i.yn = tail call float @llvm.fmuladd.f32(float %i.ym, float %58, float %i.yl) ; 3 uses
  %i.yo = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.yp = insertelement <4 x float> %i.yo, float %i.yi, i64 2
  %i.yq = shufflevector <4 x float> %i.yp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %59 = shufflevector <2 x float> %48, <2 x float> %43, <4 x i32> <i32 0, i32 3, i32 poison, i32 1>
  %60 = insertelement <4 x float> %59, float %37, i64 2
  %i.yr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yq, <4 x float> %57, <4 x float> %60) ; 6 uses
  %i.ys = extractelement <2 x float> %i.yk, i64 1
  %i.yt = tail call float @llvm.fmuladd.f32(float %i.yi, float %i.ys, float %50) ; 3 uses
  %i.yu = extractelement <4 x float> %i.yr, i64 0
  %foldExtExtBinop348 = fmul <4 x float> %i.yr, %i.yr
  %i.yv = extractelement <4 x float> %foldExtExtBinop348, i64 0
  %i.yw = tail call float @llvm.fmuladd.f32(float %i.yn, float %i.yn, float %i.yv)
  %i.yx = extractelement <4 x float> %i.yr, i64 2 ; 3 uses
  %i.yy = tail call float @llvm.fmuladd.f32(float %i.yx, float %i.yx, float %i.yw)
  %i.yz = extractelement <4 x float> %i.yr, i64 3 ; 3 uses
  %i.za = fmul float %i.yz, %i.yz
  %i.zb = extractelement <4 x float> %i.yr, i64 1 ; 3 uses
  %i.zc = tail call float @llvm.fmuladd.f32(float %i.zb, float %i.zb, float %i.za)
  %i.zd = tail call float @llvm.fmuladd.f32(float %i.yt, float %i.yt, float %i.zc)
  %i.ze = fmul float %i.yy, %i.zd
  %i.zf = tail call float @sqrtf(float noundef %i.ze) #11 ; 3 uses
  %i.zg = fmul float %i.yu, %i.yz
  %i.zh = tail call float @llvm.fmuladd.f32(float %i.yn, float %i.zb, float %i.zg)
  %i.zi = tail call float @llvm.fmuladd.f32(float %i.yx, float %i.yt, float %i.zh)
  %i.zj = fcmp oeq float %i.zf, 0.000000e+00
  %i.zk = fcmp oeq float %30, 0.000000e+00
  %i.zl = insertelement <2 x float> poison, float %i.zf, i64 0
  %i.zm = insertelement <2 x float> %i.zl, float %30, i64 1
  %i.zn = fdiv <2 x float> splat (float 1.000000e+00), %i.zm ; 2 uses
  %i.zo = extractelement <2 x float> %i.zn, i64 0
  %i.zp = select i1 %i.zj, float 0.000000e+00, float %i.zo
  %i.zq = fmul float %i.zp, %i.zi                 ; 2 uses
  %i.zr = tail call float @llvm.fabs.f32(float %i.zq) ; 2 uses
  %i.zs = fcmp ogt float %i.zr, 1.000000e+00
  %i.zt = select i1 %i.zs, float 1.000000e+00, float %i.zr ; 3 uses
  %i.zu = tail call float @llvm.fmuladd.f32(float %i.zt, float f0x3D52DA73, float f0xBE5253A5)
  %i.zv = tail call float @llvm.fmuladd.f32(float %i.zt, float %i.zu, float f0x3FC900CE)
  %i.zw = fsub float 1.000000e+00, %i.zt
  %i.zx = tail call float @sqrtf(float noundef %i.zw) #11
  %i.zy = fmul float %i.zx, %i.zv                 ; 2 uses
  %i.zz = fcmp olt float %i.zq, 0.000000e+00
  %i.aaa = fsub float f0x40490FDA, %i.zy
  %i.aab = select i1 %i.zz, float %i.aaa, float %i.zy
  %i.aac = extractelement <2 x float> %i.zn, i64 1
  %i.aad = select i1 %i.zk, float 0.000000e+00, float %i.aac
  %i.aae = fmul float %i.aad, %i.aab              ; 2 uses
  %i.aaf = fmul float %i.zf, %i.aae
  %.0.i = select i1 %i.vy, float %i.aaf, float %i.aae ; 2 uses
  %i.aag = load <2 x float>, ptr %i.wl, align 4, !tbaa !52
  %i.aah = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.aai = shufflevector <2 x float> %i.aah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %i.aai, <2 x float> %i.aag)
  store <2 x float> %i.aaj, ptr %i.wl, align 4, !tbaa !52
  %i.aak = getelementptr inbounds nuw i8, ptr %i.wl, i64 8 ; 2 uses
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !52
  %i.aam = tail call float @llvm.fmuladd.f32(float %25, float %.0.i, float %i.aal)
  store float %i.aam, ptr %i.aak, align 4, !tbaa !52
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i187 = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i187, label %.loopexit.i188, label %bb.ak, !llvm.loop !43

.loopexit.i188:                                   ; preds = %bb.an, %bb.aj
  %i.aan = add nuw nsw i64 %.0152163.i, 1         ; 2 uses
  %exitcond166.not.i = icmp eq i64 %i.aan, %i.a
  br i1 %exitcond166.not.i, label %.lr.ph225, label %bb.aj, !llvm.loop !44

.lr.ph222:                                        ; preds = %_ZN7meshoptL7follow2EPjj.exit.1, %.lr.ph222.preheader.new
  %.0130221 = phi i64 [ 0, %.lr.ph222.preheader.new ], [ %i.abj, %_ZN7meshoptL7follow2EPjj.exit.1 ] ; 5 uses
  %niter381 = phi i64 [ 0, %.lr.ph222.preheader.new ], [ %niter381.next.1, %_ZN7meshoptL7follow2EPjj.exit.1 ]
  %i.aao = trunc i64 %.0130221 to i32             ; 2 uses
  %i.aap = and i64 %.0130221, 4294967294
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.aap ; 2 uses
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !50 ; 2 uses
  %.not11.i = icmp eq i32 %i.aar, %i.aao
  br i1 %.not11.i, label %_ZN7meshoptL7follow2EPjj.exit, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %.lr.ph222, %.lr.ph.i190
  %i.aas = phi i32 [ %i.aaw, %.lr.ph.i190 ], [ %i.aar, %.lr.ph222 ] ; 3 uses
  %i.aat = phi ptr [ %i.aav, %.lr.ph.i190 ], [ %i.aaq, %.lr.ph222 ]
  %i.aau = zext i32 %i.aas to i64
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.aau ; 2 uses
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !50 ; 3 uses
  store i32 %i.aaw, ptr %i.aat, align 4, !tbaa !50
  %.not.i191 = icmp eq i32 %i.aas, %i.aaw
  br i1 %.not.i191, label %_ZN7meshoptL7follow2EPjj.exit, label %.lr.ph.i190, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit:                    ; preds = %.lr.ph.i190, %.lr.ph222
  %.0.lcssa.i = phi i32 [ %i.aao, %.lr.ph222 ], [ %i.aas, %.lr.ph.i190 ]
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0130221
  store i32 %.0.lcssa.i, ptr %i.aax, align 4, !tbaa !50
  %i.aay = or disjoint i64 %.0130221, 1           ; 3 uses
  %i.aaz = trunc i64 %i.aay to i32                ; 2 uses
  %i.aba = and i64 %i.aay, 4294967295
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.aba ; 2 uses
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !50 ; 2 uses
  %.not11.i.1 = icmp eq i32 %i.abc, %i.aaz
  br i1 %.not11.i.1, label %_ZN7meshoptL7follow2EPjj.exit.1, label %.lr.ph.i190.1

.lr.ph.i190.1:                                    ; preds = %_ZN7meshoptL7follow2EPjj.exit, %.lr.ph.i190.1
  %i.abd = phi i32 [ %i.abh, %.lr.ph.i190.1 ], [ %i.abc, %_ZN7meshoptL7follow2EPjj.exit ] ; 3 uses
  %i.abe = phi ptr [ %i.abg, %.lr.ph.i190.1 ], [ %i.abb, %_ZN7meshoptL7follow2EPjj.exit ]
  %i.abf = zext i32 %i.abd to i64
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.abf ; 2 uses
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !50 ; 3 uses
  store i32 %i.abh, ptr %i.abe, align 4, !tbaa !50
  %.not.i191.1 = icmp eq i32 %i.abd, %i.abh
  br i1 %.not.i191.1, label %_ZN7meshoptL7follow2EPjj.exit.1, label %.lr.ph.i190.1, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit.1:                  ; preds = %.lr.ph.i190.1, %_ZN7meshoptL7follow2EPjj.exit
  %.0.lcssa.i.1 = phi i32 [ %i.aaz, %_ZN7meshoptL7follow2EPjj.exit ], [ %i.abd, %.lr.ph.i190.1 ]
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.aay
  store i32 %.0.lcssa.i.1, ptr %i.abi, align 4, !tbaa !50
  %i.abj = add nuw i64 %.0130221, 2               ; 2 uses
  %niter381.next.1 = add nuw i64 %niter381, 2     ; 2 uses
  %niter381.ncmp.1 = icmp eq i64 %niter381.next.1, %unroll_iter380
  br i1 %niter381.ncmp.1, label %._crit_edge223.unr-lcssa, label %.lr.ph222, !llvm.loop !45

.lr.ph227:                                        ; preds = %_ZN7meshoptL7follow2EPjj.exit198, %._crit_edge223
  %i.abk = and i32 %10, 2
  %i.abl = icmp eq i32 %i.abk, 0
  br label %bb.ao

.lr.ph225:                                        ; preds = %.loopexit.i188, %_ZN7meshoptL7follow2EPjj.exit198
  %.0129224 = phi i64 [ %i.acd, %_ZN7meshoptL7follow2EPjj.exit198 ], [ 0, %.loopexit.i188 ] ; 5 uses
  %i.abm = trunc i64 %.0129224 to i32
  %i.abn = and i64 %.0129224, 4294967295
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.abn ; 2 uses
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !50 ; 2 uses
  %.not11.i193 = icmp eq i32 %i.abp, %i.abm
  br i1 %.not11.i193, label %.lr.ph225._ZN7meshoptL7follow2EPjj.exit198_crit_edge, label %.lr.ph.i194

.lr.ph225._ZN7meshoptL7follow2EPjj.exit198_crit_edge: ; preds = %.lr.ph225
  %.pre = and i64 %.0129224, 4294967295
  br label %_ZN7meshoptL7follow2EPjj.exit198

.lr.ph.i194:                                      ; preds = %.lr.ph225, %.lr.ph.i194
  %i.abq = phi i32 [ %i.abu, %.lr.ph.i194 ], [ %i.abp, %.lr.ph225 ] ; 2 uses
  %i.abr = phi ptr [ %i.abt, %.lr.ph.i194 ], [ %i.abo, %.lr.ph225 ]
  %i.abs = zext i32 %i.abq to i64                 ; 2 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.abs ; 2 uses
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !50 ; 3 uses
  store i32 %i.abu, ptr %i.abr, align 4, !tbaa !50
  %.not.i195 = icmp eq i32 %i.abq, %i.abu
  br i1 %.not.i195, label %_ZN7meshoptL7follow2EPjj.exit198, label %.lr.ph.i194, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit198:                 ; preds = %.lr.ph.i194, %.lr.ph225._ZN7meshoptL7follow2EPjj.exit198_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.lr.ph225._ZN7meshoptL7follow2EPjj.exit198_crit_edge ], [ %i.abs, %.lr.ph.i194 ]
  %i.abv = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.pre-phi
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !58
  %i.abx = and i8 %i.abw, 1
  %.not148 = icmp eq i8 %i.abx, 0
  %i.aby = select i1 %.not148, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %.idx149 = mul i64 %.0129224, 48
  %i.abz = getelementptr i8, ptr %0, i64 %.idx149 ; 3 uses
  %i.aca = getelementptr i8, ptr %i.abz, i64 44
  store float %i.aby, ptr %i.aca, align 4, !tbaa !52
  %i.acb = getelementptr i8, ptr %i.abz, i64 28
  store float %i.aby, ptr %i.acb, align 4, !tbaa !52
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abz, i64 12
  store float %i.aby, ptr %i.acc, align 4, !tbaa !52
  %i.acd = add nuw nsw i64 %.0129224, 1           ; 2 uses
  %exitcond249.not = icmp eq i64 %i.acd, %i.a
  br i1 %exitcond249.not, label %.lr.ph227, label %.lr.ph225, !llvm.loop !46

bb.ao:                                            ; preds = %.lr.ph227, %bb.ar
  %.0128226 = phi i64 [ 0, %.lr.ph227 ], [ %i.adb, %bb.ar ] ; 4 uses
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0128226
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !50
  %i.acg = zext i32 %i.acf to i64
  %i.ach = icmp eq i64 %.0128226, %i.acg
  br i1 %i.ach, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %.idx147 = shl nuw nsw i64 %.0128226, 4
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 %.idx147 ; 4 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 8 ; 2 uses
  %i.ack = load float, ptr %i.acj, align 4, !tbaa !52 ; 3 uses
  %i.acl = load <2 x float>, ptr %i.aci, align 4, !tbaa !52 ; 4 uses
  %foldExtExtBinop350 = fmul <2 x float> %i.acl, %i.acl
  %i.acm = extractelement <2 x float> %foldExtExtBinop350, i64 1
  %i.acn = extractelement <2 x float> %i.acl, i64 0 ; 2 uses
  %i.aco = tail call float @llvm.fmuladd.f32(float %i.acn, float %i.acn, float %i.acm)
  %i.acp = tail call float @llvm.fmuladd.f32(float %i.ack, float %i.ack, float %i.aco)
  %i.acq = tail call float @sqrtf(float noundef %i.acp) #11 ; 2 uses
  %i.acr = fcmp oeq float %i.acq, 0.000000e+00
  %i.acs = fdiv float 1.000000e+00, %i.acq
  %i.act = select i1 %i.acr, float 0.000000e+00, float %i.acs ; 3 uses
  %i.acu = insertelement <2 x float> poison, float %i.act, i64 0
  %i.acv = shufflevector <2 x float> %i.acu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acw = fmul <2 x float> %i.acl, %i.acv        ; 2 uses
  store <2 x float> %i.acw, ptr %i.aci, align 4, !tbaa !52
  %i.acx = fmul float %i.ack, %i.act
  store float %i.acx, ptr %i.acj, align 4, !tbaa !52
  br i1 %i.abl, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.acy = fcmp oeq float %i.act, 0.000000e+00
  %i.acz = extractelement <2 x float> %i.acw, i64 0
  %i.ada = select i1 %i.acy, float 1.000000e+00, float %i.acz
  store float %i.ada, ptr %i.aci, align 4, !tbaa !52
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.ao
  %i.adb = add nuw i64 %.0128226, 1               ; 2 uses
  %exitcond250.not = icmp eq i64 %i.adb, %2
  br i1 %exitcond250.not, label %.lr.ph229.preheader, label %bb.ao, !llvm.loop !47

.lr.ph229.preheader:                              ; preds = %bb.ar
  %xtraiter382 = and i64 %2, 1
  %i.adc = icmp eq i64 %i.qy, 0
  br i1 %i.adc, label %.lr.ph229.epil.preheader, label %.lr.ph229.preheader.new

.lr.ph229.preheader.new:                          ; preds = %.lr.ph229.preheader
  %unroll_iter386 = and i64 %2, -2
  br label %.lr.ph229

._crit_edge230.loopexit.unr-lcssa:                ; preds = %bb.ax
  %lcmp.mod384.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod384.not, label %._crit_edge230, label %.lr.ph229.epil.preheader

.lr.ph229.epil.preheader:                         ; preds = %._crit_edge230.loopexit.unr-lcssa, %.lr.ph229.preheader
  %.0228.epil.init = phi i64 [ 0, %.lr.ph229.preheader ], [ %i.aeb, %._crit_edge230.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod385 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod385)
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0228.epil.init
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !50
  %i.adf = zext i32 %i.ade to i64                 ; 2 uses
  %.not.epil = icmp eq i64 %.0228.epil.init, %i.adf
  br i1 %.not.epil, label %._crit_edge230, label %bb.as

bb.as:                                            ; preds = %.lr.ph229.epil.preheader
  %.idx.epil = shl i64 %.0228.epil.init, 4
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.epil
  %.idx146.epil = shl nuw nsw i64 %i.adf, 4
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.adg, ptr noundef nonnull align 4 dereferenceable(12) %i.adh, i64 12, i1 false)
  br label %._crit_edge230

._crit_edge230:                                   ; preds = %._crit_edge230.loopexit.unr-lcssa, %bb.as, %.lr.ph229.epil.preheader, %.preheader206
  %i.adi = load i64, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %.not3.i = icmp eq i64 %i.adi, 0
  br i1 %.not3.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %._crit_edge230, %bb.at
  %.04.i = phi i64 [ %i.adn, %bb.at ], [ %i.adi, %._crit_edge230 ] ; 2 uses
  %i.adj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !17
  %i.adk = getelementptr [8 x i8], ptr %11, i64 %.04.i
  %i.adl = getelementptr i8, ptr %i.adk, i64 -8
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !15
  invoke void %i.adj(ptr noundef %i.adm)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %.lr.ph.i199
  %i.adn = add i64 %.04.i, -1                     ; 2 uses
  %.not.i200 = icmp eq i64 %i.adn, 0
  br i1 %.not.i200, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i199, !llvm.loop !0

bb.au:                                            ; preds = %.lr.ph.i199
  %i.ado = landingpad { ptr, i32 }
          catch ptr null
  %i.adp = extractvalue { ptr, i32 } %i.ado, 0
  tail call void @__clang_call_terminate(ptr %i.adp) #12
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.at, %._crit_edge230
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  ret void

.lr.ph229:                                        ; preds = %bb.ax, %.lr.ph229.preheader.new
  %.0228 = phi i64 [ 0, %.lr.ph229.preheader.new ], [ %i.aeb, %bb.ax ] ; 5 uses
  %niter387 = phi i64 [ 0, %.lr.ph229.preheader.new ], [ %niter387.next.1, %bb.ax ]
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0228
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !50
  %i.ads = zext i32 %i.adr to i64                 ; 2 uses
  %.not = icmp eq i64 %.0228, %i.ads
  br i1 %.not, label %.lr.ph229.1, label %bb.av

bb.av:                                            ; preds = %.lr.ph229
  %.idx = shl i64 %.0228, 4
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.idx146 = shl nuw nsw i64 %i.ads, 4
  %i.adu = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.adt, ptr noundef nonnull align 4 dereferenceable(12) %i.adu, i64 12, i1 false)
  br label %.lr.ph229.1

.lr.ph229.1:                                      ; preds = %.lr.ph229, %bb.av
  %i.adv = or disjoint i64 %.0228, 1              ; 3 uses
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.adv
  %i.adx = load i32, ptr %i.adw, align 4, !tbaa !50
  %i.ady = zext i32 %i.adx to i64                 ; 2 uses
  %.not.1 = icmp eq i64 %i.adv, %i.ady
  br i1 %.not.1, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph229.1
  %.idx.1 = shl i64 %i.adv, 4
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1
  %.idx146.1 = shl nuw nsw i64 %i.ady, 4
  %i.aea = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.adz, ptr noundef nonnull align 4 dereferenceable(12) %i.aea, i64 12, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph229.1
  %i.aeb = add nuw i64 %.0228, 2                  ; 2 uses
  %niter387.next.1 = add nuw i64 %niter387, 2     ; 2 uses
  %niter387.ncmp.1 = icmp eq i64 %niter387.next.1, %unroll_iter386
  br i1 %niter387.ncmp.1, label %._crit_edge230.loopexit.unr-lcssa, label %.lr.ph229, !llvm.loop !48
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
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

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
