Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/tangentspace?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@meshopt_generateTangents:bb.a
  br i1 %niter.ncmp.1, label %.preheader81.i.loopexit356.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !23

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph85.i
  %lcmp.mod367.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod367.not, label %.preheader.i, label %.lr.ph85.i.epil.preheader

.lr.ph85.i.epil.preheader:                        ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph85.i.preheader
  %.06484.i.epil.init = phi i64 [ 0, %.lr.ph85.i.preheader ], [ %i.hn, %.preheader.i.loopexit.unr-lcssa ]
  %.06583.i.epil.init = phi i32 [ 0, %.lr.ph85.i.preheader ], [ %i.hm, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod368 = icmp ne i64 %xtraiter365, 0
  tail call void @llvm.assume(i1 %lcmp.mod368)
  br label %.lr.ph85.i.epil

.lr.ph85.i.epil:                                  ; preds = %.lr.ph85.i.epil, %.lr.ph85.i.epil.preheader
  %.06484.i.epil = phi i64 [ %i.gx, %.lr.ph85.i.epil ], [ %.06484.i.epil.init, %.lr.ph85.i.epil.preheader ] ; 2 uses
  %.06583.i.epil = phi i32 [ %i.gw, %.lr.ph85.i.epil ], [ %.06583.i.epil.init, %.lr.ph85.i.epil.preheader ] ; 2 uses
  %epil.iter366 = phi i64 [ %epil.iter366.next, %.lr.ph85.i.epil ], [ 0, %.lr.ph85.i.epil.preheader ]
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.06484.i.epil ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !50
  store i32 %.06583.i.epil, ptr %i.gu, align 4, !tbaa !50
  %i.gw = add i32 %i.gv, %.06583.i.epil
  %i.gx = add nuw i64 %.06484.i.epil, 1
  %epil.iter366.next = add i64 %epil.iter366, 1   ; 2 uses
  %epil.iter366.cmp.not = icmp eq i64 %epil.iter366.next, %xtraiter365
  br i1 %epil.iter366.cmp.not, label %.preheader.i, label %.lr.ph85.i.epil, !llvm.loop !25

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph85.i.epil, %.preheader81.i
  %.not90.i = icmp ult i64 %2, 3                  ; 4 uses
  br i1 %.not90.i, label %.loopexit, label %.lr.ph87.i

.lr.ph87.i:                                       ; preds = %.preheader.i
  %.not.i162 = icmp eq ptr %1, null
  br label %bb.l

.lr.ph85.i:                                       ; preds = %.lr.ph85.i, %.lr.ph85.i.preheader.new
  %.06484.i = phi i64 [ 0, %.lr.ph85.i.preheader.new ], [ %i.hn, %.lr.ph85.i ] ; 5 uses
  %.06583.i = phi i32 [ 0, %.lr.ph85.i.preheader.new ], [ %i.hm, %.lr.ph85.i ] ; 2 uses
  %niter370 = phi i64 [ 0, %.lr.ph85.i.preheader.new ], [ %niter370.next.3, %.lr.ph85.i ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.06484.i ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !50
  store i32 %.06583.i, ptr %i.gy, align 4, !tbaa !50
  %i.ha = add i32 %i.gz, %.06583.i                ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.06484.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !50
  store i32 %i.ha, ptr %i.hc, align 4, !tbaa !50
  %i.he = add i32 %i.hd, %i.ha                    ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.06484.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !50
  store i32 %i.he, ptr %i.hg, align 4, !tbaa !50
  %i.hi = add i32 %i.hh, %i.he                    ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.06484.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 12 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !50
  store i32 %i.hi, ptr %i.hk, align 4, !tbaa !50
  %i.hm = add i32 %i.hl, %i.hi                    ; 2 uses
  %i.hn = add nuw i64 %.06484.i, 4                ; 2 uses
  %niter370.next.3 = add nuw i64 %niter370, 4     ; 2 uses
  %niter370.ncmp.3 = icmp eq i64 %niter370.next.3, %unroll_iter369
  br i1 %niter370.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph85.i, !llvm.loop !26

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
  %.0127.i = phi i64 [ 0, %.lr.ph.i167 ], [ %i.nb, %bb.t ] ; 4 uses
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
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !52
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
  %12 = insertelement <2 x float> poison, float %i.lc, i64 0
  %13 = insertelement <2 x float> %12, float %i.kw, i64 1
  %14 = insertelement <2 x float> poison, float %i.ky, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = fsub <2 x float> %13, %15                 ; 4 uses
  %i.lo = fneg <2 x float> %i.ln
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %18 = fmul <2 x float> %17, %i.lo
  %19 = extractelement <2 x float> %16, i64 1     ; 2 uses
  %i.lp = fmul float %19, %i.ld
  %20 = extractelement <2 x float> %16, i64 0     ; 2 uses
  %i.lq = tail call float @llvm.fmuladd.f32(float %20, float %i.ko, float %i.lp) ; 3 uses
  %i.lr = fmul float %19, %i.le
  %i.ls = tail call float @llvm.fmuladd.f32(float %i.ku, float %20, float %i.lr) ; 2 uses
  %i.lt = fcmp oeq float %i.ls, 0.000000e+00
  %i.lu = fcmp ogt float %i.ls, 0.000000e+00
  %i.lv = select i1 %i.lu, float 1.000000e+00, float -1.000000e+00
  %i.lw = extractelement <2 x float> %i.lj, i64 0 ; 2 uses
  %i.lx = extractelement <2 x float> %i.lk, i64 0 ; 2 uses
  %i.ly = fcmp oeq float %i.lx, %i.lw
  %i.lz = extractelement <2 x float> %i.lj, i64 1 ; 2 uses
  %i.ma = extractelement <2 x float> %i.lk, i64 1 ; 2 uses
  %i.mb = fcmp oeq float %i.ma, %i.lz
  %or.cond.i = select i1 %i.ly, i1 %i.mb, i1 false
  %or.cond122.i = select i1 %or.cond.i, i1 %i.lf, i1 false
  %i.mc = extractelement <2 x float> %i.lm, i64 0 ; 2 uses
  %i.md = fcmp oeq float %i.lx, %i.mc
  %i.me = extractelement <2 x float> %i.lm, i64 1 ; 2 uses
  %i.mf = fcmp oeq float %i.ma, %i.me
  %or.cond123.i = select i1 %i.md, i1 %i.mf, i1 false
  %or.cond124.i = select i1 %or.cond123.i, i1 %i.lg, i1 false
  %i.mg = fcmp oeq float %i.lw, %i.mc
  %i.mh = fcmp oeq float %i.lz, %i.me
  %or.cond125.i = select i1 %i.mg, i1 %i.mh, i1 false
  %or.cond126.i = select i1 %or.cond125.i, i1 %i.lh, i1 false
  %i.mi = select i1 %or.cond126.i, i1 true, i1 %or.cond124.i
  %i.mj = select i1 %i.mi, i1 true, i1 %or.cond122.i
  %i.mk = select i1 %i.mj, i1 true, i1 %i.lt
  %i.ml = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> %i.ll, <2 x float> %18) ; 4 uses
  %i.mn = select i1 %i.mk, float 0.000000e+00, float %i.lv ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.mm, %i.mm
  %i.mo = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.mp = extractelement <2 x float> %i.mm, i64 0 ; 2 uses
  %i.mq = tail call float @llvm.fmuladd.f32(float %i.mp, float %i.mp, float %i.mo)
  %i.mr = tail call float @llvm.fmuladd.f32(float %i.lq, float %i.lq, float %i.mq) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.mr)
  %i.ms = fcmp une float %i.mr, 0.000000e+00
  %i.mt = fdiv float %i.mn, %sqrt.i
  %i.mu = select i1 %i.ms, float %i.mt, float 0.000000e+00
  %i.mv = shufflevector <2 x float> %i.mm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mw = insertelement <4 x float> %i.mv, float %i.mu, i64 2 ; 2 uses
  %i.mx = insertelement <4 x float> %i.mw, float %i.mn, i64 3
  %i.my = shufflevector <4 x float> %i.mw, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 2, i32 poison, i32 7>
  %i.mz = insertelement <4 x float> %i.my, float %i.lq, i64 2
  %i.na = fmul <4 x float> %i.mx, %i.mz
  store <4 x float> %i.na, ptr %i.li, align 4, !tbaa !52
  %i.nb = add nuw nsw i64 %.0127.i, 1             ; 2 uses
  %exitcond.not.i170 = icmp eq i64 %i.nb, %i.a
  br i1 %exitcond.not.i170, label %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit, label %bb.q, !llvm.loop !29

_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit: ; preds = %bb.t, %bb.p
  %i.nc = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.nd = invoke noundef ptr %i.nc(i64 noundef %i.ei)
          to label %_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173 unwind label %bb.x, !inline_history !18 ; 22 uses

_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173:  ; preds = %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit
  %i.ne = load i64, ptr %i.g, align 8, !tbaa !14  ; 4 uses
  %i.nf = add nsw i64 %i.ne, 1                    ; 2 uses
  store i64 %i.nf, ptr %i.g, align 8, !tbaa !14
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ne
  store ptr %i.nd, ptr %i.ng, align 8, !tbaa !15
  br i1 %.not88.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader355, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %index ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  store <4 x i32> %vec.ind, ptr %i.nh, align 4, !tbaa !50
  store <4 x i32> %step.add, ptr %i.ni, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.nj = icmp eq i64 %index.next, %n.vec
  br i1 %i.nj, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader355

.lr.ph.preheader355:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0133217.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173
  %i.nk = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.nl = icmp ugt i64 %2, -4611686018427387905
  %i.nm = shl nuw i64 %i.a, 2
  %i.nn = select i1 %i.nl, i64 -1, i64 %i.nm
  %i.no = invoke noundef ptr %i.nk(i64 noundef %i.nn)
          to label %bb.y unwind label %bb.z, !inline_history !18 ; 15 uses

bb.u:                                             ; preds = %._crit_edge.i, %_ZN7meshoptL12hashBuckets4Em.exit.i, %bb.a
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.v:                                             ; preds = %.noexc164, %bb.k
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.w:                                             ; preds = %.loopexit
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.x:                                             ; preds = %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.lr.ph:                                           ; preds = %.lr.ph.preheader355, %.lr.ph
  %.0133217 = phi i64 [ %i.nv, %.lr.ph ], [ %.0133217.ph, %.lr.ph.preheader355 ] ; 3 uses
  %i.nt = trunc i64 %.0133217 to i32
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %.0133217
  store i32 %i.nt, ptr %i.nu, align 4, !tbaa !50
  %i.nv = add nuw i64 %.0133217, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.nv, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

bb.y:                                             ; preds = %._crit_edge
  %i.nw = add nsw i64 %i.ne, 2                    ; 2 uses
  store i64 %i.nw, ptr %i.g, align 8, !tbaa !14
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.nf
  store ptr %i.no, ptr %i.nx, align 8, !tbaa !15
  %i.ny = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.nz = invoke noundef ptr %i.ny(i64 noundef %i.a)
          to label %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit unwind label %bb.aa, !inline_history !32 ; 13 uses

_ZN17meshopt_Allocator8allocateIhEEPT_m.exit:     ; preds = %bb.y
  %i.oa = add nsw i64 %i.ne, 3
  store i64 %i.oa, ptr %i.g, align 8, !tbaa !14
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.nw
  store ptr %i.nz, ptr %i.ob, align 8, !tbaa !15
  br i1 %.not90.i, label %.preheader208, label %.lr.ph219.preheader

.lr.ph219.preheader:                              ; preds = %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit
  %min.iters.check327 = icmp ult i64 %2, 51
  br i1 %min.iters.check327, label %.lr.ph219.preheader354, label %vector.memcheck

.lr.ph219.preheader354:                           ; preds = %vector.body330, %vector.memcheck, %.lr.ph219.preheader
  %.0132218.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph219.preheader ], [ %n.vec329, %vector.body330 ] ; 8 uses
  %i.oc = sub i64 %i.a, %.0132218.ph
  %.neg = add i64 %.0132218.ph, 1
  %xtraiter371 = and i64 %i.oc, 1
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod372.not, label %.lr.ph219.prol.loopexit, label %.lr.ph219.prol

.lr.ph219.prol:                                   ; preds = %.lr.ph219.preheader354
  %i.od = trunc i64 %.0132218.ph to i32
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %.0132218.ph
  store i32 %i.od, ptr %i.oe, align 4, !tbaa !50
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0132218.ph
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 12
  %i.oh = load float, ptr %i.og, align 4, !tbaa !57 ; 2 uses
  %i.oi = fcmp ogt float %i.oh, 0.000000e+00
  %i.oj = zext i1 %i.oi to i8
  %i.ok = fcmp olt float %i.oh, 0.000000e+00
  %i.ol = select i1 %i.ok, i8 2, i8 0
  %i.om = or disjoint i8 %i.ol, %i.oj
  %i.on = getelementptr inbounds nuw i8, ptr %i.nz, i64 %.0132218.ph
  store i8 %i.om, ptr %i.on, align 1, !tbaa !58
  %i.oo = add nuw nsw i64 %.0132218.ph, 1
  br label %.lr.ph219.prol.loopexit

.lr.ph219.prol.loopexit:                          ; preds = %.lr.ph219.prol, %.lr.ph219.preheader354
  %.0132218.unr = phi i64 [ %.0132218.ph, %.lr.ph219.preheader354 ], [ %i.oo, %.lr.ph219.prol ]
  %i.op = icmp eq i64 %i.a, %.neg
  br i1 %i.op, label %.preheader208, label %.lr.ph219

vector.memcheck:                                  ; preds = %.lr.ph219.preheader
  %i.oq = shl i64 %i.a, 2
  %scevgep = getelementptr i8, ptr %i.no, i64 %i.oq ; 2 uses
  %scevgep316 = getelementptr i8, ptr %i.nz, i64 %i.a ; 2 uses
  %scevgep317 = getelementptr i8, ptr %i.jg, i64 12 ; 2 uses
  %i.or = shl i64 %i.a, 4
  %scevgep318 = getelementptr i8, ptr %i.jg, i64 %i.or ; 2 uses
  %bound0 = icmp ult ptr %i.no, %scevgep316
  %bound1 = icmp ult ptr %i.nz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0319 = icmp ult ptr %i.no, %scevgep318
  %bound1320 = icmp ult ptr %scevgep317, %scevgep
  %found.conflict321 = and i1 %bound0319, %bound1320
  %conflict.rdx = or i1 %found.conflict, %found.conflict321
  %bound0322 = icmp ult ptr %i.nz, %scevgep318
  %bound1323 = icmp ult ptr %scevgep317, %scevgep316
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx325 = or i1 %conflict.rdx, %found.conflict324
  br i1 %conflict.rdx325, label %.lr.ph219.preheader354, label %vector.ph328

vector.ph328:                                     ; preds = %vector.memcheck
  %i.os = and i64 %i.a, 3                         ; 2 uses
  %i.ot = icmp eq i64 %i.os, 0
  %i.ou = select i1 %i.ot, i64 4, i64 %i.os
  %n.vec329 = sub nsw i64 %i.a, %i.ou             ; 2 uses
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph328
  %index331 = phi i64 [ 0, %vector.ph328 ], [ %index.next333, %vector.body330 ] ; 7 uses
  %vec.ind332 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph328 ], [ %vec.ind.next334, %vector.body330 ] ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %index331
  store <4 x i32> %vec.ind332, ptr %i.ov, align 4, !tbaa !50, !alias.scope !59, !noalias !60
  %i.ow = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index331
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index331
  %i.oy = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index331
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index331
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 12
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 28
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 44
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 60
  %i.pe = load float, ptr %i.pa, align 4, !tbaa !57, !alias.scope !61
  %i.pf = load float, ptr %i.pb, align 4, !tbaa !57, !alias.scope !61
  %i.pg = load float, ptr %i.pc, align 4, !tbaa !57, !alias.scope !61
  %i.ph = load float, ptr %i.pd, align 4, !tbaa !57, !alias.scope !61
  %i.pi = insertelement <4 x float> poison, float %i.pe, i64 0
  %i.pj = insertelement <4 x float> %i.pi, float %i.pf, i64 1
  %i.pk = insertelement <4 x float> %i.pj, float %i.pg, i64 2
  %i.pl = insertelement <4 x float> %i.pk, float %i.ph, i64 3 ; 2 uses
  %i.pm = fcmp ogt <4 x float> %i.pl, zeroinitializer
  %i.pn = zext <4 x i1> %i.pm to <4 x i8>
end_hunk_0
