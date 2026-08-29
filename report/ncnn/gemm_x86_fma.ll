Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_fma?download=true
inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 134
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN4ncnnL36transpose_compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii:bb.a
  br i1 %i.fi, label %.lr.ph177.i, label %._crit_edge178.i

.lr.ph177.i:                                      ; preds = %bb.h, %.lr.ph177.i
  %.0418175.i = phi i32 [ %i.kt, %.lr.ph177.i ], [ 0, %bb.h ]
  %.0421174.i = phi <8 x float> [ %i.kr, %.lr.ph177.i ], [ zeroinitializer, %bb.h ]
  %.0422173.i = phi <8 x float> [ %i.ko, %.lr.ph177.i ], [ zeroinitializer, %bb.h ]
  %.0423172.i = phi <8 x float> [ %i.kl, %.lr.ph177.i ], [ zeroinitializer, %bb.h ]
  %.0425171.i = phi ptr [ %i.ks, %.lr.ph177.i ], [ %i.jy, %bb.h ] ; 5 uses
  %.084170.i = phi <8 x float> [ %i.ki, %.lr.ph177.i ], [ zeroinitializer, %bb.h ]
  %i.jz = load <8 x i32>, ptr %.0425171.i, align 1, !tbaa !116
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.0425171.i, i64 %i.l
  %i.kb = load <8 x i32>, ptr %i.ka, align 1, !tbaa !116
  %i.kc = getelementptr inbounds nuw i8, ptr %.0425171.i, i64 %.idx457.i
  %i.kd = load <8 x i32>, ptr %i.kc, align 1, !tbaa !116
  %i.ke = getelementptr inbounds nuw i8, ptr %.0425171.i, i64 %.idx458.i
  %i.kf = load <8 x i32>, ptr %i.ke, align 1, !tbaa !116
  %i.kg = and <8 x i32> %i.jz, splat (i32 2147483647)
  %i.kh = bitcast <8 x i32> %i.kg to <8 x float>
  %i.ki = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.084170.i, <8 x float> nofpclass(nan inf) %i.kh) ; 2 uses
  %i.kj = and <8 x i32> %i.kb, splat (i32 2147483647)
  %i.kk = bitcast <8 x i32> %i.kj to <8 x float>
  %i.kl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0423172.i, <8 x float> nofpclass(nan inf) %i.kk) ; 2 uses
  %i.km = and <8 x i32> %i.kd, splat (i32 2147483647)
  %i.kn = bitcast <8 x i32> %i.km to <8 x float>
  %i.ko = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0422173.i, <8 x float> nofpclass(nan inf) %i.kn) ; 2 uses
  %i.kp = and <8 x i32> %i.kf, splat (i32 2147483647)
  %i.kq = bitcast <8 x i32> %i.kp to <8 x float>
  %i.kr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0421174.i, <8 x float> nofpclass(nan inf) %i.kq) ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0425171.i, i64 %.idx459.i ; 2 uses
  %i.kt = add nuw nsw i32 %.0418175.i, 4          ; 2 uses
  %i.ku = or disjoint i32 %i.kt, 3
  %i.kv = icmp slt i32 %i.ku, %i.m
  br i1 %i.kv, label %.lr.ph177.i, label %._crit_edge178.i, !llvm.loop !852

._crit_edge178.i:                                 ; preds = %.lr.ph177.i, %bb.h
  %.084.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.h ], [ %i.ki, %.lr.ph177.i ]
  %.0425.lcssa.i = phi ptr [ %i.jy, %bb.h ], [ %i.ks, %.lr.ph177.i ] ; 2 uses
  %.0423.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.h ], [ %i.kl, %.lr.ph177.i ]
  %.0422.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.h ], [ %i.ko, %.lr.ph177.i ]
  %.0421.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.h ], [ %i.kr, %.lr.ph177.i ]
  %.0418.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.fj, %.lr.ph177.i ] ; 3 uses
  %i.kw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.084.lcssa.i, <8 x float> nofpclass(nan inf) %.0422.lcssa.i) ; 2 uses
  %i.kx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0423.lcssa.i, <8 x float> nofpclass(nan inf) %.0421.lcssa.i) ; 2 uses
  %i.ky = or disjoint i32 %.0418.lcssa.i, 1
  %i.kz = icmp slt i32 %i.ky, %i.m
  br i1 %i.kz, label %.lr.ph190.i, label %._crit_edge191.i

.lr.ph190.i:                                      ; preds = %._crit_edge178.i, %.lr.ph190.i
  %.1419188.i = phi i32 [ %i.lk, %.lr.ph190.i ], [ %.0418.lcssa.i, %._crit_edge178.i ]
  %.1424187.i = phi <8 x float> [ %i.li, %.lr.ph190.i ], [ %i.kx, %._crit_edge178.i ]
  %.1426186.i = phi ptr [ %i.lj, %.lr.ph190.i ], [ %.0425.lcssa.i, %._crit_edge178.i ] ; 3 uses
  %.185185.i = phi <8 x float> [ %i.lf, %.lr.ph190.i ], [ %i.kw, %._crit_edge178.i ]
  %i.la = load <8 x i32>, ptr %.1426186.i, align 1, !tbaa !116
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.1426186.i, i64 %i.l
  %i.lc = load <8 x i32>, ptr %i.lb, align 1, !tbaa !116
  %i.ld = and <8 x i32> %i.la, splat (i32 2147483647)
  %i.le = bitcast <8 x i32> %i.ld to <8 x float>
  %i.lf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.185185.i, <8 x float> nofpclass(nan inf) %i.le) ; 2 uses
  %i.lg = and <8 x i32> %i.lc, splat (i32 2147483647)
  %i.lh = bitcast <8 x i32> %i.lg to <8 x float>
  %i.li = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.1424187.i, <8 x float> nofpclass(nan inf) %i.lh) ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.1426186.i, i64 %.idx457.i ; 2 uses
  %i.lk = add nuw nsw i32 %.1419188.i, 2          ; 3 uses
  %i.ll = or disjoint i32 %i.lk, 1
  %i.lm = icmp slt i32 %i.ll, %i.m
  br i1 %i.lm, label %.lr.ph190.i, label %._crit_edge191.i, !llvm.loop !853

._crit_edge191.i:                                 ; preds = %.lr.ph190.i, %._crit_edge178.i
  %.185.lcssa.i = phi <8 x float> [ %i.kw, %._crit_edge178.i ], [ %i.lf, %.lr.ph190.i ]
  %.1426.lcssa.i = phi ptr [ %.0425.lcssa.i, %._crit_edge178.i ], [ %i.lj, %.lr.ph190.i ] ; 2 uses
  %.1424.lcssa.i = phi <8 x float> [ %i.kx, %._crit_edge178.i ], [ %i.li, %.lr.ph190.i ]
  %.1419.lcssa.i = phi i32 [ %.0418.lcssa.i, %._crit_edge178.i ], [ %i.lk, %.lr.ph190.i ] ; 5 uses
  %i.ln = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.185.lcssa.i, <8 x float> nofpclass(nan inf) %.1424.lcssa.i) ; 3 uses
  %i.lo = icmp slt i32 %.1419.lcssa.i, %i.m
  br i1 %i.lo, label %.lr.ph200.i.preheader, label %._crit_edge201.i

.lr.ph200.i.preheader:                            ; preds = %._crit_edge191.i
  %i.lp = sub i32 %i.m, %.1419.lcssa.i
  %xtraiter271 = and i32 %i.lp, 3                 ; 2 uses
  %lcmp.mod272.not = icmp eq i32 %xtraiter271, 0
  br i1 %lcmp.mod272.not, label %.lr.ph200.i.prol.loopexit, label %.lr.ph200.i.prol

.lr.ph200.i.prol:                                 ; preds = %.lr.ph200.i.preheader, %.lr.ph200.i.prol
  %.2420198.i.prol = phi i32 [ %i.lv, %.lr.ph200.i.prol ], [ %.1419.lcssa.i, %.lr.ph200.i.preheader ]
  %.2427197.i.prol = phi ptr [ %i.lu, %.lr.ph200.i.prol ], [ %.1426.lcssa.i, %.lr.ph200.i.preheader ] ; 2 uses
  %.286196.i.prol = phi <8 x float> [ %i.lt, %.lr.ph200.i.prol ], [ %i.ln, %.lr.ph200.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph200.i.prol ], [ 0, %.lr.ph200.i.preheader ]
  %i.lq = load <8 x i32>, ptr %.2427197.i.prol, align 1, !tbaa !116
  %i.lr = and <8 x i32> %i.lq, splat (i32 2147483647)
  %i.ls = bitcast <8 x i32> %i.lr to <8 x float>
  %i.lt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.286196.i.prol, <8 x float> nofpclass(nan inf) %i.ls) ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.2427197.i.prol, i64 %i.l ; 2 uses
  %i.lv = add nuw nsw i32 %.2420198.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter271
  br i1 %prol.iter.cmp.not, label %.lr.ph200.i.prol.loopexit, label %.lr.ph200.i.prol, !llvm.loop !854

.lr.ph200.i.prol.loopexit:                        ; preds = %.lr.ph200.i.prol, %.lr.ph200.i.preheader
  %.lcssa251.unr = phi <8 x float> [ poison, %.lr.ph200.i.preheader ], [ %i.lt, %.lr.ph200.i.prol ]
  %.2420198.i.unr = phi i32 [ %.1419.lcssa.i, %.lr.ph200.i.preheader ], [ %i.lv, %.lr.ph200.i.prol ]
  %.2427197.i.unr = phi ptr [ %.1426.lcssa.i, %.lr.ph200.i.preheader ], [ %i.lu, %.lr.ph200.i.prol ]
  %.286196.i.unr = phi <8 x float> [ %i.ln, %.lr.ph200.i.preheader ], [ %i.lt, %.lr.ph200.i.prol ]
  %i.lw = sub i32 %.1419.lcssa.i, %i.m
  %i.lx = icmp ugt i32 %i.lw, -4
  br i1 %i.lx, label %._crit_edge201.i, label %.lr.ph200.i

.lr.ph200.i:                                      ; preds = %.lr.ph200.i.prol.loopexit, %.lr.ph200.i
  %.2420198.i = phi i32 [ %i.ms, %.lr.ph200.i ], [ %.2420198.i.unr, %.lr.ph200.i.prol.loopexit ]
  %.2427197.i = phi ptr [ %i.mr, %.lr.ph200.i ], [ %.2427197.i.unr, %.lr.ph200.i.prol.loopexit ] ; 2 uses
  %.286196.i = phi <8 x float> [ %i.mq, %.lr.ph200.i ], [ %.286196.i.unr, %.lr.ph200.i.prol.loopexit ]
  %i.ly = load <8 x i32>, ptr %.2427197.i, align 1, !tbaa !116
  %i.lz = and <8 x i32> %i.ly, splat (i32 2147483647)
  %i.ma = bitcast <8 x i32> %i.lz to <8 x float>
  %i.mb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.286196.i, <8 x float> nofpclass(nan inf) %i.ma)
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.2427197.i, i64 %i.l ; 2 uses
  %i.md = load <8 x i32>, ptr %i.mc, align 1, !tbaa !116
  %i.me = and <8 x i32> %i.md, splat (i32 2147483647)
  %i.mf = bitcast <8 x i32> %i.me to <8 x float>
  %i.mg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.mb, <8 x float> nofpclass(nan inf) %i.mf)
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.l ; 2 uses
  %i.mi = load <8 x i32>, ptr %i.mh, align 1, !tbaa !116
  %i.mj = and <8 x i32> %i.mi, splat (i32 2147483647)
  %i.mk = bitcast <8 x i32> %i.mj to <8 x float>
  %i.ml = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.mg, <8 x float> nofpclass(nan inf) %i.mk)
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.l ; 2 uses
  %i.mn = load <8 x i32>, ptr %i.mm, align 1, !tbaa !116
  %i.mo = and <8 x i32> %i.mn, splat (i32 2147483647)
  %i.mp = bitcast <8 x i32> %i.mo to <8 x float>
  %i.mq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ml, <8 x float> nofpclass(nan inf) %i.mp) ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.l
  %i.ms = add nuw nsw i32 %.2420198.i, 4          ; 2 uses
  %exitcond330.not.i.3 = icmp eq i32 %i.ms, %i.m
  br i1 %exitcond330.not.i.3, label %._crit_edge201.i, label %.lr.ph200.i, !llvm.loop !855

._crit_edge201.i:                                 ; preds = %.lr.ph200.i.prol.loopexit, %.lr.ph200.i, %._crit_edge191.i
  %.286.lcssa.i = phi <8 x float> [ %i.ln, %._crit_edge191.i ], [ %.lcssa251.unr, %.lr.ph200.i.prol.loopexit ], [ %i.mq, %.lr.ph200.i ] ; 7 uses
  switch i32 %i.b, label %.thread112.i [
    i32 8, label %.thread108.i
    i32 4, label %bb.i
    i32 1, label %bb.j
  ]

.thread108.i:                                     ; preds = %._crit_edge201.i
  %i.mt = shufflevector <8 x float> %.286.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mu = shufflevector <8 x float> %.286.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mt, <4 x float> nofpclass(nan inf) %i.mu) ; 2 uses
  %i.mw = shufflevector <4 x float> %i.mv, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.mx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mv, <4 x float> nofpclass(nan inf) %i.mw) ; 2 uses
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.mz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.mx, <4 x float> nofpclass(nan inf) %i.my)
  %i.na = extractelement <4 x float> %i.mz, i64 0 ; 2 uses
  %i.nb = fdiv fast float 1.270000e+02, %i.na
  store float %i.nb, ptr %.8205.i, align 4, !tbaa !68
  %i.nc = fmul fast float %i.na, f0x3C010204
  %i.nd = fmul fast float %i.nc, %i.fp
  store float %i.nd, ptr %.8409204.i, align 4, !tbaa !68
  %i.ne = getelementptr inbounds nuw i8, ptr %.8205.i, i64 4
  %i.nf = getelementptr inbounds nuw i8, ptr %.8409204.i, i64 4
  br label %.thread112.i

bb.i:                                             ; preds = %._crit_edge201.i
  %i.ng = shufflevector <8 x float> %.286.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nh = shufflevector <8 x float> %.286.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ni = shufflevector <8 x float> %.286.lcssa.i, <8 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.nj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ng, <4 x float> nofpclass(nan inf) %i.ni) ; 2 uses
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.nl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.nj, <4 x float> nofpclass(nan inf) %i.nk)
  %i.nm = shufflevector <4 x float> %i.nh, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.nn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nh, <4 x float> nofpclass(nan inf) %i.nm) ; 2 uses
  %i.no = shufflevector <4 x float> %i.nn, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.np = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.nn, <4 x float> nofpclass(nan inf) %i.no)
  %i.nq = shufflevector <4 x float> %i.nl, <4 x float> %i.np, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.nr = fdiv fast <2 x float> splat (float 1.270000e+02), %i.nq
  store <2 x float> %i.nr, ptr %.8205.i, align 4, !tbaa !68
  %i.ns = fmul fast <2 x float> %i.nq, splat (float f0x3C010204)
  %i.nt = fmul fast <2 x float> %i.ns, %i.fo
  store <2 x float> %i.nt, ptr %.8409204.i, align 4, !tbaa !68
  %i.nu = getelementptr inbounds nuw i8, ptr %.8205.i, i64 8
  %i.nv = getelementptr inbounds nuw i8, ptr %.8409204.i, i64 8
  br label %.thread112.i

bb.j:                                             ; preds = %._crit_edge201.i
  %i.nw = fdiv fast <8 x float> splat (float 1.270000e+02), %.286.lcssa.i
  %i.nx = fmul fast <8 x float> %.286.lcssa.i, %i.fn
  store <8 x float> %i.nw, ptr %.8205.i, align 32, !tbaa !116
  store <8 x float> %i.nx, ptr %.8409204.i, align 32, !tbaa !116
  %i.ny = getelementptr inbounds nuw i8, ptr %.8205.i, i64 32
  %i.nz = getelementptr inbounds nuw i8, ptr %.8409204.i, i64 32
  br label %.thread112.i

.thread112.i:                                     ; preds = %bb.j, %bb.i, %.thread108.i, %._crit_edge201.i
  %.11412.i = phi ptr [ %i.nz, %bb.j ], [ %.8409204.i, %._crit_edge201.i ], [ %i.nf, %.thread108.i ], [ %i.nv, %bb.i ] ; 2 uses
  %.11.i = phi ptr [ %i.ny, %bb.j ], [ %.8205.i, %._crit_edge201.i ], [ %i.ne, %.thread108.i ], [ %i.nu, %bb.i ] ; 2 uses
  %indvars.iv.next332.i = add nuw nsw i64 %indvars.iv331.i, 8 ; 2 uses
  %i.oa = trunc i64 %indvars.iv.next332.i to i32  ; 2 uses
  %i.ob = or i32 %i.oa, 7
  %i.oc = icmp slt i32 %i.ob, %i.r
  br i1 %i.oc, label %bb.h, label %.preheader119.i, !llvm.loop !856

.preheader118.i:                                  ; preds = %bb.n, %.preheader119.i
  %.3431.lcssa.i = phi i32 [ %.2430.lcssa.i, %.preheader119.i ], [ %i.ub, %bb.n ] ; 10 uses
  %.12413.lcssa.i = phi ptr [ %.8409.lcssa.i, %.preheader119.i ], [ %.14415.i, %bb.n ] ; 11 uses
  %.12.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader119.i ], [ %.14.i, %bb.n ] ; 11 uses
  %i.od = or disjoint i32 %.3431.lcssa.i, 1
  %i.oe = icmp slt i32 %i.od, %i.r
  br i1 %i.oe, label %.lr.ph262.i, label %.preheader.i

.lr.ph262.i:                                      ; preds = %.preheader118.i
  %i.of = load ptr, ptr %0, align 8, !tbaa !18
  %i.og = mul nsw i32 %i.b, %2
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.oh
  %i.oj = icmp sgt i32 %i.m, 0
  br i1 %i.oj, label %.lr.ph255.us.preheader.i, label %.lr.ph262.split.i.preheader

.lr.ph262.split.i.preheader:                      ; preds = %.lr.ph262.i
  %4 = add i32 %.3431.lcssa.i, 3
  %5 = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %4)
  %i.ok = add i32 %5, -2
  %i.ol = sub i32 %i.ok, %.3431.lcssa.i           ; 2 uses
  %i.om = lshr i32 %i.ol, 1
  %narrow = add nuw i32 %i.om, 1
  %i.on = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.ol, 18
  br i1 %min.iters.check, label %.lr.ph262.split.i.preheader226, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph262.split.i.preheader
  %6 = add i32 %.3431.lcssa.i, 3
  %smax = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %6)
  %i.oo = add i32 %smax, -2
  %i.op = sub i32 %i.oo, %.3431.lcssa.i
  %i.oq = lshr i32 %i.op, 1
  %i.or = zext nneg i32 %i.oq to i64
  %i.os = shl nuw nsw i64 %i.or, 3
  %i.ot = add nuw nsw i64 %i.os, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %.12.lcssa.i, i64 %i.ot
  %scevgep185 = getelementptr i8, ptr %.12413.lcssa.i, i64 %i.ot
  %bound0 = icmp ult ptr %.12.lcssa.i, %scevgep185
  %bound1 = icmp ult ptr %.12413.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph262.split.i.preheader226, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.on, 4294967288              ; 4 uses
  %i.ou = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.ov = getelementptr i8, ptr %.12.lcssa.i, i64 %i.ou ; 2 uses
  %i.ow = getelementptr i8, ptr %.12413.lcssa.i, i64 %i.ou ; 2 uses
  %i.ox = trunc nuw i64 %n.vec to i32
  %i.oy = shl i32 %i.ox, 1
  %i.oz = add i32 %.3431.lcssa.i, %i.oy           ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.pa = shl i64 %index, 3                       ; 5 uses
  %i.pb = or disjoint i64 %i.pa, 16               ; 2 uses
  %i.pc = or disjoint i64 %i.pa, 32               ; 2 uses
  %i.pd = or disjoint i64 %i.pa, 48               ; 2 uses
  %next.gep = getelementptr i8, ptr %.12.lcssa.i, i64 %i.pa
  %next.gep186 = getelementptr i8, ptr %.12.lcssa.i, i64 %i.pb
  %next.gep187 = getelementptr i8, ptr %.12.lcssa.i, i64 %i.pc
  %next.gep188 = getelementptr i8, ptr %.12.lcssa.i, i64 %i.pd
  %next.gep189 = getelementptr i8, ptr %.12413.lcssa.i, i64 %i.pa
  %next.gep190 = getelementptr i8, ptr %.12413.lcssa.i, i64 %i.pb
  %next.gep191 = getelementptr i8, ptr %.12413.lcssa.i, i64 %i.pc
  %next.gep192 = getelementptr i8, ptr %.12413.lcssa.i, i64 %i.pd
  store <4 x float> splat (float +inf), ptr %next.gep, align 4, !tbaa !68, !alias.scope !857, !noalias !860
  store <4 x float> splat (float +inf), ptr %next.gep186, align 4, !tbaa !68, !alias.scope !857, !noalias !860
  store <4 x float> splat (float +inf), ptr %next.gep187, align 4, !tbaa !68, !alias.scope !857, !noalias !860
  store <4 x float> splat (float +inf), ptr %next.gep188, align 4, !tbaa !68, !alias.scope !857, !noalias !860
  store <4 x float> zeroinitializer, ptr %next.gep189, align 4, !tbaa !68, !alias.scope !860
  store <4 x float> zeroinitializer, ptr %next.gep190, align 4, !tbaa !68, !alias.scope !860
  store <4 x float> zeroinitializer, ptr %next.gep191, align 4, !tbaa !68, !alias.scope !860
  store <4 x float> zeroinitializer, ptr %next.gep192, align 4, !tbaa !68, !alias.scope !860
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pe = icmp eq i64 %index.next, %n.vec
  br i1 %i.pe, label %middle.block, label %vector.body, !llvm.loop !862

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.on
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph262.split.i.preheader226

.lr.ph262.split.i.preheader226:                   ; preds = %vector.memcheck, %.lr.ph262.split.i.preheader, %middle.block
  %.15261.i.ph = phi ptr [ %.12.lcssa.i, %vector.memcheck ], [ %.12.lcssa.i, %.lr.ph262.split.i.preheader ], [ %i.ov, %middle.block ]
  %.15416260.i.ph = phi ptr [ %.12413.lcssa.i, %vector.memcheck ], [ %.12413.lcssa.i, %.lr.ph262.split.i.preheader ], [ %i.ow, %middle.block ]
  %.4432259.i.ph = phi i32 [ %.3431.lcssa.i, %vector.memcheck ], [ %.3431.lcssa.i, %.lr.ph262.split.i.preheader ], [ %i.oz, %middle.block ]
  br label %.lr.ph262.split.i

.lr.ph255.us.preheader.i:                         ; preds = %.lr.ph262.i
  %i.pf = zext i32 %.3431.lcssa.i to i64
  %i.pg = insertelement <2 x float> poison, float %1, i64 0
  %i.ph = shufflevector <2 x float> %i.pg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pi = add nsw i32 %i.m, -1
  %xtraiter276 = and i32 %i.m, 3                  ; 3 uses
  %i.pj = icmp ult i32 %i.pi, 3
  %unroll_iter280 = and i32 %i.m, 2147483644
  %lcmp.mod277.not = icmp eq i32 %xtraiter276, 0
  %lcmp.mod279 = icmp ne i32 %xtraiter276, 0
  %i.pk = fdiv fast <2 x float> splat (float 1.000000e+00), %i.ph
  br label %.lr.ph255.us.i

.lr.ph255.us.i:                                   ; preds = %._crit_edge256.us.i, %.lr.ph255.us.preheader.i
  %indvars.iv339.i = phi i64 [ %i.pf, %.lr.ph255.us.preheader.i ], [ %indvars.iv.next340.i, %._crit_edge256.us.i ] ; 2 uses
  %.15261.us.i = phi ptr [ %.12.lcssa.i, %.lr.ph255.us.preheader.i ], [ %i.ql, %._crit_edge256.us.i ] ; 2 uses
  %.15416260.us.i = phi ptr [ %.12413.lcssa.i, %.lr.ph255.us.preheader.i ], [ %i.qm, %._crit_edge256.us.i ] ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv339.i ; 2 uses
  br i1 %i.pj, label %.epil.preheader, label %.lr.ph255.us.i.new

.lr.ph255.us.i.new:                               ; preds = %.lr.ph255.us.i, %.lr.ph255.us.i.new
  %.0389252.us.i = phi ptr [ %i.qc, %.lr.ph255.us.i.new ], [ %i.pl, %.lr.ph255.us.i ] ; 2 uses
  %i.pm = phi <2 x float> [ %i.qb, %.lr.ph255.us.i.new ], [ zeroinitializer, %.lr.ph255.us.i ]
  %niter281 = phi i32 [ %niter281.next.3, %.lr.ph255.us.i.new ], [ 0, %.lr.ph255.us.i ]
  %i.pn = load <2 x float>, ptr %.0389252.us.i, align 4, !tbaa !68
  %i.po = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pn)
  %i.pp = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.pm, <2 x float> %i.po)
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.0389252.us.i, i64 %i.l ; 2 uses
  %i.pr = load <2 x float>, ptr %i.pq, align 4, !tbaa !68
  %i.ps = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pr)
  %i.pt = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.pp, <2 x float> %i.ps)
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.l ; 2 uses
  %i.pv = load <2 x float>, ptr %i.pu, align 4, !tbaa !68
  %i.pw = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pv)
  %i.px = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.pt, <2 x float> %i.pw)
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %i.l ; 2 uses
  %i.pz = load <2 x float>, ptr %i.py, align 4, !tbaa !68
  %i.qa = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pz)
  %i.qb = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.px, <2 x float> %i.qa) ; 3 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.l ; 2 uses
  %niter281.next.3 = add nuw nsw i32 %niter281, 4 ; 2 uses
  %niter281.ncmp.3 = icmp eq i32 %niter281.next.3, %unroll_iter280
  br i1 %niter281.ncmp.3, label %._crit_edge256.us.i.unr-lcssa, label %.lr.ph255.us.i.new, !llvm.loop !863

._crit_edge256.us.i.unr-lcssa:                    ; preds = %.lr.ph255.us.i.new
  br i1 %lcmp.mod277.not, label %._crit_edge256.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge256.us.i.unr-lcssa, %.lr.ph255.us.i
  %.0389252.us.i.epil.init = phi ptr [ %i.pl, %.lr.ph255.us.i ], [ %i.qc, %._crit_edge256.us.i.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph255.us.i ], [ %i.qb, %._crit_edge256.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod279)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.0389252.us.i.epil = phi ptr [ %.0389252.us.i.epil.init, %.epil.preheader ], [ %i.qh, %bb.k ] ; 2 uses
  %i.qd = phi <2 x float> [ %.epil.init, %.epil.preheader ], [ %i.qg, %bb.k ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.qe = load <2 x float>, ptr %.0389252.us.i.epil, align 4, !tbaa !68
  %i.qf = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.qe)
  %i.qg = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.qd, <2 x float> %i.qf) ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.0389252.us.i.epil, i64 %i.l
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter276
  br i1 %epil.iter.cmp.not, label %._crit_edge256.us.i, label %bb.k, !llvm.loop !864

._crit_edge256.us.i:                              ; preds = %bb.k, %._crit_edge256.us.i.unr-lcssa
  %.lcssa = phi <2 x float> [ %i.qb, %._crit_edge256.us.i.unr-lcssa ], [ %i.qg, %bb.k ] ; 2 uses
  %i.qi = fdiv fast <2 x float> splat (float 1.270000e+02), %.lcssa
  store <2 x float> %i.qi, ptr %.15261.us.i, align 4, !tbaa !68
  %i.qj = fmul fast <2 x float> %.lcssa, splat (float f0x3C010204)
  %i.qk = fmul fast <2 x float> %i.qj, %i.pk
  store <2 x float> %i.qk, ptr %.15416260.us.i, align 4, !tbaa !68
  %i.ql = getelementptr inbounds nuw i8, ptr %.15261.us.i, i64 8 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.15416260.us.i, i64 8 ; 2 uses
  %indvars.iv.next340.i = add nuw nsw i64 %indvars.iv339.i, 2 ; 2 uses
  %i.qn = trunc i64 %indvars.iv.next340.i to i32  ; 2 uses
  %i.qo = or i32 %i.qn, 1
  %i.qp = icmp slt i32 %i.qo, %i.r
  br i1 %i.qp, label %.lr.ph255.us.i, label %.preheader.i, !llvm.loop !865

bb.l:                                             ; preds = %bb.n, %.lr.ph246.i
  %indvars.iv335.i = phi i64 [ %i.jt, %.lr.ph246.i ], [ %indvars.iv.next336.i, %bb.n ] ; 2 uses
  %.12245.i = phi ptr [ %.8.lcssa.i, %.lr.ph246.i ], [ %.14.i, %bb.n ] ; 5 uses
  %.12413244.i = phi ptr [ %.8409.lcssa.i, %.lr.ph246.i ], [ %.14415.i, %bb.n ] ; 5 uses
  %i.qq = load ptr, ptr %0, align 8, !tbaa !18
  %i.qr = getelementptr inbounds [4 x i8], ptr %i.qq, i64 %i.jq
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv335.i ; 2 uses
  br i1 %i.jr, label %.lr.ph217.i, label %._crit_edge218.i

.lr.ph217.i:                                      ; preds = %bb.l, %.lr.ph217.i
  %.0390215.i = phi i32 [ %i.rn, %.lr.ph217.i ], [ 0, %bb.l ]
  %.0391214.i = phi <4 x float> [ %i.rl, %.lr.ph217.i ], [ zeroinitializer, %bb.l ]
  %.0392213.i = phi <4 x float> [ %i.ri, %.lr.ph217.i ], [ zeroinitializer, %bb.l ]
  %.0393212.i = phi <4 x float> [ %i.rf, %.lr.ph217.i ], [ zeroinitializer, %bb.l ]
  %.0395211.i = phi ptr [ %i.rm, %.lr.ph217.i ], [ %i.qs, %bb.l ] ; 5 uses
  %.089210.i = phi <4 x float> [ %i.rc, %.lr.ph217.i ], [ zeroinitializer, %bb.l ]
  %i.qt = load <4 x i32>, ptr %.0395211.i, align 1, !tbaa !116
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.0395211.i, i64 %i.l
  %i.qv = load <4 x i32>, ptr %i.qu, align 1, !tbaa !116
  %i.qw = getelementptr inbounds nuw i8, ptr %.0395211.i, i64 %.idx453.i
  %i.qx = load <4 x i32>, ptr %i.qw, align 1, !tbaa !116
  %i.qy = getelementptr inbounds nuw i8, ptr %.0395211.i, i64 %.idx454.i
  %i.qz = load <4 x i32>, ptr %i.qy, align 1, !tbaa !116
  %i.ra = and <4 x i32> %i.qt, splat (i32 2147483647)
  %i.rb = bitcast <4 x i32> %i.ra to <4 x float>
  %i.rc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.089210.i, <4 x float> nofpclass(nan inf) %i.rb) ; 2 uses
  %i.rd = and <4 x i32> %i.qv, splat (i32 2147483647)
  %i.re = bitcast <4 x i32> %i.rd to <4 x float>
  %i.rf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0393212.i, <4 x float> nofpclass(nan inf) %i.re) ; 2 uses
  %i.rg = and <4 x i32> %i.qx, splat (i32 2147483647)
  %i.rh = bitcast <4 x i32> %i.rg to <4 x float>
  %i.ri = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0392213.i, <4 x float> nofpclass(nan inf) %i.rh) ; 2 uses
  %i.rj = and <4 x i32> %i.qz, splat (i32 2147483647)
  %i.rk = bitcast <4 x i32> %i.rj to <4 x float>
  %i.rl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0391214.i, <4 x float> nofpclass(nan inf) %i.rk) ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.0395211.i, i64 %.idx455.i ; 2 uses
  %i.rn = add nuw nsw i32 %.0390215.i, 4          ; 2 uses
  %i.ro = or disjoint i32 %i.rn, 3
  %i.rp = icmp slt i32 %i.ro, %i.m
  br i1 %i.rp, label %.lr.ph217.i, label %._crit_edge218.i, !llvm.loop !866

._crit_edge218.i:                                 ; preds = %.lr.ph217.i, %bb.l
  %.089.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.l ], [ %i.rc, %.lr.ph217.i ]
  %.0395.lcssa.i = phi ptr [ %i.qs, %bb.l ], [ %i.rm, %.lr.ph217.i ] ; 2 uses
  %.0393.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.l ], [ %i.rf, %.lr.ph217.i ]
  %.0392.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.l ], [ %i.ri, %.lr.ph217.i ]
  %.0391.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.l ], [ %i.rl, %.lr.ph217.i ]
  %.0390.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.js, %.lr.ph217.i ] ; 3 uses
  %i.rq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.089.lcssa.i, <4 x float> nofpclass(nan inf) %.0392.lcssa.i) ; 2 uses
  %i.rr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0393.lcssa.i, <4 x float> nofpclass(nan inf) %.0391.lcssa.i) ; 2 uses
  %i.rs = or disjoint i32 %.0390.lcssa.i, 1
  %i.rt = icmp slt i32 %i.rs, %i.m
  br i1 %i.rt, label %.lr.ph230.i, label %._crit_edge231.i

.lr.ph230.i:                                      ; preds = %._crit_edge218.i, %.lr.ph230.i
  %.1228.i = phi i32 [ %i.se, %.lr.ph230.i ], [ %.0390.lcssa.i, %._crit_edge218.i ]
  %.1394227.i = phi <4 x float> [ %i.sc, %.lr.ph230.i ], [ %i.rr, %._crit_edge218.i ]
  %.1396226.i = phi ptr [ %i.sd, %.lr.ph230.i ], [ %.0395.lcssa.i, %._crit_edge218.i ] ; 3 uses
  %.190225.i = phi <4 x float> [ %i.rz, %.lr.ph230.i ], [ %i.rq, %._crit_edge218.i ]
  %i.ru = load <4 x i32>, ptr %.1396226.i, align 1, !tbaa !116
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.1396226.i, i64 %i.l
  %i.rw = load <4 x i32>, ptr %i.rv, align 1, !tbaa !116
end_hunk_0
begin_hunk_1_@_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.113 = phi ptr [ %i.lm, %.lr.ph ], [ %.016628, %.lr.ph.preheader ] ; 9 uses
  %.017112 = phi ptr [ %i.ln, %.lr.ph ], [ %i.kp, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.kq = load <2 x i64>, ptr %.017112, align 1, !tbaa !116
  store <2 x i64> %i.kq, ptr %.113, align 1, !tbaa !116
  %i.kr = getelementptr inbounds nuw i8, ptr %.113, i64 16
  %i.ks = getelementptr inbounds nuw i8, ptr %.017112, i64 16
  %i.kt = load <2 x i64>, ptr %i.ks, align 1, !tbaa !116
  store <2 x i64> %i.kt, ptr %i.kr, align 1, !tbaa !116
  %i.ku = getelementptr inbounds nuw i8, ptr %.113, i64 32
  %i.kv = getelementptr inbounds nuw i8, ptr %.017112, i64 32
  %i.kw = load <2 x i64>, ptr %i.kv, align 1, !tbaa !116
  store <2 x i64> %i.kw, ptr %i.ku, align 1, !tbaa !116
  %i.kx = getelementptr inbounds nuw i8, ptr %.113, i64 48
  %i.ky = getelementptr inbounds nuw i8, ptr %.017112, i64 48
  %i.kz = load <2 x i64>, ptr %i.ky, align 1, !tbaa !116
  store <2 x i64> %i.kz, ptr %i.kx, align 1, !tbaa !116
  %i.la = getelementptr inbounds nuw i8, ptr %.113, i64 64
  %i.lb = getelementptr inbounds nuw i8, ptr %.017112, i64 64
  %i.lc = load <2 x i64>, ptr %i.lb, align 1, !tbaa !116
  store <2 x i64> %i.lc, ptr %i.la, align 1, !tbaa !116
  %i.ld = getelementptr inbounds nuw i8, ptr %.113, i64 80
  %i.le = getelementptr inbounds nuw i8, ptr %.017112, i64 80
  %i.lf = load <2 x i64>, ptr %i.le, align 1, !tbaa !116
  store <2 x i64> %i.lf, ptr %i.ld, align 1, !tbaa !116
  %i.lg = getelementptr inbounds nuw i8, ptr %.113, i64 96
  %i.lh = getelementptr inbounds nuw i8, ptr %.017112, i64 96
  %i.li = load <2 x i64>, ptr %i.lh, align 1, !tbaa !116
  store <2 x i64> %i.li, ptr %i.lg, align 1, !tbaa !116
  %i.lj = getelementptr inbounds nuw i8, ptr %.113, i64 112
  %i.lk = getelementptr inbounds nuw i8, ptr %.017112, i64 112
  %i.ll = load <2 x i64>, ptr %i.lk, align 1, !tbaa !116
  store <2 x i64> %i.ll, ptr %i.lj, align 1, !tbaa !116
  %i.lm = getelementptr inbounds nuw i8, ptr %.113, i64 128 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.017112, i64 128 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit7.loopexit443.unr-lcssa, label %.lr.ph, !llvm.loop !1081

.loopexit10:                                      ; preds = %bb.b
  br i1 %i.q, label %bb.c, label %.loopexit8

bb.c:                                             ; preds = %.loopexit10
  br i1 %i.r, label %.lr.ph19.preheader, label %.loopexit7

.lr.ph19.preheader:                               ; preds = %bb.c
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.idx194 ; 2 uses
  br i1 %i.x, label %.lr.ph19.epil.preheader, label %.lr.ph19

.lr.ph19:                                         ; preds = %.lr.ph19.preheader, %.lr.ph19
  %.318 = phi ptr [ %i.mk, %.lr.ph19 ], [ %.016628, %.lr.ph19.preheader ] ; 9 uses
  %.217317 = phi ptr [ %i.ml, %.lr.ph19 ], [ %i.kp, %.lr.ph19.preheader ] ; 5 uses
  %.019215 = phi ptr [ %i.mm, %.lr.ph19 ], [ %i.lo, %.lr.ph19.preheader ] ; 5 uses
  %niter455 = phi i32 [ %niter455.next.3, %.lr.ph19 ], [ 0, %.lr.ph19.preheader ]
  %i.lp = load i64, ptr %.217317, align 1, !tbaa !116
  store i64 %i.lp, ptr %.318, align 1, !tbaa !116
  %i.lq = getelementptr inbounds nuw i8, ptr %.318, i64 8
  %i.lr = load i64, ptr %.019215, align 1, !tbaa !116
  store i64 %i.lr, ptr %i.lq, align 1, !tbaa !116
  %i.ls = getelementptr inbounds nuw i8, ptr %.318, i64 16
  %i.lt = getelementptr inbounds nuw i8, ptr %.217317, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %.019215, i64 8
  %i.lv = load i64, ptr %i.lt, align 1, !tbaa !116
  store i64 %i.lv, ptr %i.ls, align 1, !tbaa !116
  %i.lw = getelementptr inbounds nuw i8, ptr %.318, i64 24
  %i.lx = load i64, ptr %i.lu, align 1, !tbaa !116
  store i64 %i.lx, ptr %i.lw, align 1, !tbaa !116
  %i.ly = getelementptr inbounds nuw i8, ptr %.318, i64 32
  %i.lz = getelementptr inbounds nuw i8, ptr %.217317, i64 16
  %i.ma = getelementptr inbounds nuw i8, ptr %.019215, i64 16
  %i.mb = load i64, ptr %i.lz, align 1, !tbaa !116
  store i64 %i.mb, ptr %i.ly, align 1, !tbaa !116
  %i.mc = getelementptr inbounds nuw i8, ptr %.318, i64 40
  %i.md = load i64, ptr %i.ma, align 1, !tbaa !116
  store i64 %i.md, ptr %i.mc, align 1, !tbaa !116
  %i.me = getelementptr inbounds nuw i8, ptr %.318, i64 48
  %i.mf = getelementptr inbounds nuw i8, ptr %.217317, i64 24
  %i.mg = getelementptr inbounds nuw i8, ptr %.019215, i64 24
  %i.mh = load i64, ptr %i.mf, align 1, !tbaa !116
  store i64 %i.mh, ptr %i.me, align 1, !tbaa !116
  %i.mi = getelementptr inbounds nuw i8, ptr %.318, i64 56
  %i.mj = load i64, ptr %i.mg, align 1, !tbaa !116
  store i64 %i.mj, ptr %i.mi, align 1, !tbaa !116
  %i.mk = getelementptr inbounds nuw i8, ptr %.318, i64 64 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.217317, i64 32 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.019215, i64 32 ; 2 uses
  %niter455.next.3 = add nuw nsw i32 %niter455, 4 ; 2 uses
  %niter455.ncmp.3 = icmp eq i32 %niter455.next.3, %unroll_iter454
  br i1 %niter455.ncmp.3, label %.loopexit7.loopexit.unr-lcssa, label %.lr.ph19, !llvm.loop !1082

.loopexit8:                                       ; preds = %.loopexit10
  br i1 %brmerge112, label %.loopexit7, label %.lr.ph25

.lr.ph25:                                         ; preds = %.loopexit8, %.lr.ph25
  %.524 = phi ptr [ %i.nj, %.lr.ph25 ], [ %.016628, %.loopexit8 ] ; 9 uses
  %.417523 = phi ptr [ %i.nk, %.lr.ph25 ], [ %i.kp, %.loopexit8 ] ; 9 uses
  %.019022 = phi i32 [ %i.nl, %.lr.ph25 ], [ 0, %.loopexit8 ]
  %i.mn = load i16, ptr %.417523, align 2, !tbaa !686
  store i16 %i.mn, ptr %.524, align 2, !tbaa !686
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.417523, i64 %i.k
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !686
  %i.mq = getelementptr inbounds nuw i8, ptr %.524, i64 2
  store i16 %i.mp, ptr %i.mq, align 2, !tbaa !686
  %i.mr = getelementptr inbounds nuw i8, ptr %.417523, i64 %.idx195
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !686
  %i.mt = getelementptr inbounds nuw i8, ptr %.524, i64 4
  store i16 %i.ms, ptr %i.mt, align 2, !tbaa !686
  %i.mu = getelementptr inbounds nuw i8, ptr %.417523, i64 %.idx196
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !686
  %i.mw = getelementptr inbounds nuw i8, ptr %.524, i64 6
  store i16 %i.mv, ptr %i.mw, align 2, !tbaa !686
  %i.mx = getelementptr inbounds nuw i8, ptr %.417523, i64 %.idx194
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !686
  %i.mz = getelementptr inbounds nuw i8, ptr %.524, i64 8
  store i16 %i.my, ptr %i.mz, align 2, !tbaa !686
  %i.na = getelementptr inbounds nuw i8, ptr %.417523, i64 %.idx198
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !686
  %i.nc = getelementptr inbounds nuw i8, ptr %.524, i64 10
  store i16 %i.nb, ptr %i.nc, align 2, !tbaa !686
  %i.nd = getelementptr inbounds nuw i8, ptr %.417523, i64 %.idx199
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !686
  %i.nf = getelementptr inbounds nuw i8, ptr %.524, i64 12
  store i16 %i.ne, ptr %i.nf, align 2, !tbaa !686
  %i.ng = getelementptr inbounds nuw i8, ptr %.417523, i64 %.idx200
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !686
  %i.ni = getelementptr inbounds nuw i8, ptr %.524, i64 14
  store i16 %i.nh, ptr %i.ni, align 2, !tbaa !686
  %i.nj = getelementptr inbounds nuw i8, ptr %.524, i64 16 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.417523, i64 2
  %i.nl = add nuw nsw i32 %.019022, 1             ; 2 uses
  %exitcond141.not = icmp eq i32 %i.nl, %4
  br i1 %exitcond141.not, label %.loopexit7, label %.lr.ph25, !llvm.loop !1083

.loopexit7.loopexit.unr-lcssa:                    ; preds = %.lr.ph19
  br i1 %lcmp.mod451.not, label %.loopexit7, label %.lr.ph19.epil.preheader

.lr.ph19.epil.preheader:                          ; preds = %.loopexit7.loopexit.unr-lcssa, %.lr.ph19.preheader
  %.318.epil.init = phi ptr [ %.016628, %.lr.ph19.preheader ], [ %i.mk, %.loopexit7.loopexit.unr-lcssa ]
  %.217317.epil.init = phi ptr [ %i.kp, %.lr.ph19.preheader ], [ %i.ml, %.loopexit7.loopexit.unr-lcssa ]
  %.019215.epil.init = phi ptr [ %i.lo, %.lr.ph19.preheader ], [ %i.mm, %.loopexit7.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod453)
  br label %.lr.ph19.epil

.lr.ph19.epil:                                    ; preds = %.lr.ph19.epil, %.lr.ph19.epil.preheader
  %.318.epil = phi ptr [ %i.np, %.lr.ph19.epil ], [ %.318.epil.init, %.lr.ph19.epil.preheader ] ; 3 uses
  %.217317.epil = phi ptr [ %i.nq, %.lr.ph19.epil ], [ %.217317.epil.init, %.lr.ph19.epil.preheader ] ; 2 uses
  %.019215.epil = phi ptr [ %i.nr, %.lr.ph19.epil ], [ %.019215.epil.init, %.lr.ph19.epil.preheader ] ; 2 uses
  %epil.iter450 = phi i32 [ %epil.iter450.next, %.lr.ph19.epil ], [ 0, %.lr.ph19.epil.preheader ]
  %i.nm = load i64, ptr %.217317.epil, align 1, !tbaa !116
  store i64 %i.nm, ptr %.318.epil, align 1, !tbaa !116
  %i.nn = getelementptr inbounds nuw i8, ptr %.318.epil, i64 8
  %i.no = load i64, ptr %.019215.epil, align 1, !tbaa !116
  store i64 %i.no, ptr %i.nn, align 1, !tbaa !116
  %i.np = getelementptr inbounds nuw i8, ptr %.318.epil, i64 16 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.217317.epil, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %.019215.epil, i64 8
  %epil.iter450.next = add i32 %epil.iter450, 1   ; 2 uses
  %epil.iter450.cmp.not = icmp eq i32 %epil.iter450.next, %xtraiter449
  br i1 %epil.iter450.cmp.not, label %.loopexit7, label %.lr.ph19.epil, !llvm.loop !1084

.loopexit7.loopexit443.unr-lcssa:                 ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.loopexit7, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit7.loopexit443.unr-lcssa, %.lr.ph.preheader
  %.113.epil.init = phi ptr [ %.016628, %.lr.ph.preheader ], [ %i.lm, %.loopexit7.loopexit443.unr-lcssa ]
  %.017112.epil.init = phi ptr [ %i.kp, %.lr.ph.preheader ], [ %i.ln, %.loopexit7.loopexit443.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod448)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.113.epil = phi ptr [ %i.nt, %.lr.ph.epil ], [ %.113.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.017112.epil = phi ptr [ %i.nu, %.lr.ph.epil ], [ %.017112.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ns = load <2 x i64>, ptr %.017112.epil, align 1, !tbaa !116
  store <2 x i64> %i.ns, ptr %.113.epil, align 1, !tbaa !116
  %i.nt = getelementptr inbounds nuw i8, ptr %.113.epil, i64 16 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.017112.epil, i64 16
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit7, label %.lr.ph.epil, !llvm.loop !1085

.loopexit7:                                       ; preds = %.loopexit7.loopexit443.unr-lcssa, %.lr.ph.epil, %.lr.ph25, %.loopexit7.loopexit.unr-lcssa, %.lr.ph19.epil, %bb.c, %.loopexit8
  %.6 = phi ptr [ %.016628, %.loopexit8 ], [ %i.nj, %.lr.ph25 ], [ %i.np, %.lr.ph19.epil ], [ %.016628, %bb.c ], [ %i.mk, %.loopexit7.loopexit.unr-lcssa ], [ %i.lm, %.loopexit7.loopexit443.unr-lcssa ], [ %i.nt, %.lr.ph.epil ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.nv = or disjoint i64 %indvars.iv.next, 7
  %i.nw = icmp samesign ult i64 %i.nv, %i.t
  br i1 %i.nw, label %bb.b, label %.preheader5.loopexit, !llvm.loop !1086

.preheader1.loopexit:                             ; preds = %.loopexit.us
  %i.nx = trunc nuw nsw i64 %indvars.iv.next150 to i32
  br label %.preheader1

.preheader1.loopexit116:                          ; preds = %..loopexit4_crit_edge.us75.us
  %i.ny = trunc nuw nsw i64 %indvars.iv.next145 to i32
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.loopexit116, %.preheader3.us71.preheader, %.lr.ph61.split.split.preheader, %.preheader1.loopexit, %.preheader5
  %.1168.lcssa = phi i32 [ %.0167.lcssa, %.preheader5 ], [ %i.nx, %.preheader1.loopexit ], [ %i.hl, %.lr.ph61.split.split.preheader ], [ %i.if, %.preheader3.us71.preheader ], [ %i.ny, %.preheader1.loopexit116 ] ; 6 uses
  %.7.lcssa = phi ptr [ %.0166.lcssa, %.preheader5 ], [ %.11.lcssa.us, %.preheader1.loopexit ], [ %.0166.lcssa, %.lr.ph61.split.split.preheader ], [ %.0166.lcssa, %.preheader3.us71.preheader ], [ %.lcssa201, %.preheader1.loopexit116 ] ; 3 uses
  %i.nz = or disjoint i32 %.1168.lcssa, 1
  %i.oa = icmp slt i32 %i.nz, %2
  br i1 %i.oa, label %.lr.ph91, label %.preheader

.lr.ph91:                                         ; preds = %.preheader1
  %i.ob = load ptr, ptr %0, align 8, !tbaa !18    ; 5 uses
  %i.oc = sext i32 %3 to i64                      ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ob, i64 %i.oc
  %i.od = icmp sgt i32 %4, 0
  br i1 %i.od, label %.lr.ph87.us.preheader, label %.lr.ph91.split.preheader

.lr.ph91.split.preheader:                         ; preds = %.lr.ph91
  %5 = add i32 %.1168.lcssa, 3
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 %5)
  %i.oe = add i32 %smax, -2
  %i.of = sub i32 %i.oe, %.1168.lcssa
  %i.og = and i32 %i.of, -2
  %i.oh = add i32 %.1168.lcssa, %i.og
  %i.oi = add i32 %i.oh, 2
  br label %.preheader

.lr.ph87.us.preheader:                            ; preds = %.lr.ph91
  %i.oj = sext i32 %.1168.lcssa to i64            ; 4 uses
  %i.ok = sext i32 %1 to i64                      ; 2 uses
  %i.ol = sext i32 %2 to i64
  %invariant.op189 = add nsw i64 %i.ol, -1        ; 2 uses
  %i.om = add nsw i32 %4, -1
  %i.on = zext i32 %i.om to i64                   ; 2 uses
  %i.oo = shl nuw nsw i64 %i.on, 2
  %i.op = add nsw i64 %i.oj, %i.ok                ; 2 uses
  %i.oq = shl nsw i64 %i.op, 1                    ; 3 uses
  %i.or = add nsw i64 %i.oq, 2
  %i.os = mul i64 %i.k, %i.or
  %i.ot = shl nsw i64 %i.oc, 1                    ; 3 uses
  %i.ou = getelementptr i8, ptr %i.ob, i64 %i.os
  %scevgep339 = getelementptr i8, ptr %i.ou, i64 %i.ot
  %i.ov = add nsw i64 %i.oj, 2
  %smax340 = tail call i64 @llvm.smax.i64(i64 %invariant.op189, i64 %i.ov)
  %i.ow = xor i64 %i.oj, -1
  %i.ox = add i64 %smax340, %i.ow
  %i.oy = shl i64 %i.ox, 1
  %i.oz = and i64 %i.oy, -4                       ; 2 uses
  %i.pa = add i64 %i.oz, %i.oq
  %i.pb = add i64 %i.pa, 2
  %i.pc = mul i64 %i.k, %i.pb
  %i.pd = shl nuw nsw i64 %i.on, 1                ; 2 uses
  %i.pe = getelementptr i8, ptr %i.ob, i64 %i.pc
  %i.pf = getelementptr i8, ptr %i.pe, i64 %i.ot
  %i.pg = getelementptr i8, ptr %i.pf, i64 %i.pd
  %scevgep341.a = getelementptr i8, ptr %i.pg, i64 2
  %i.ph = mul i64 %i.k, %i.op
  %i.pi = add i64 %i.ph, %i.oc
  %i.pj = shl i64 %i.pi, 1
  %scevgep342.a = getelementptr i8, ptr %i.ob, i64 %i.pj
  %i.pk = add i64 %i.oz, %i.oq
  %i.pl = mul i64 %i.k, %i.pk
  %i.pm = getelementptr i8, ptr %i.ob, i64 %i.pl
  %i.pn = getelementptr i8, ptr %i.pm, i64 %i.ot
  %i.po = getelementptr i8, ptr %i.pn, i64 %i.pd
  %scevgep343 = getelementptr i8, ptr %i.po, i64 2
  %i.pp = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check352 = icmp ult i32 %4, 12
  %.mask = and i64 %i.k, 2305843009213693952
  %stride.check350 = icmp ne i64 %.mask, 0
  %n.vec354 = and i64 %i.pp, 2147483640           ; 5 uses
  %i.pq = trunc nuw nsw i64 %n.vec354 to i32
  %i.pr = shl nuw nsw i64 %n.vec354, 1            ; 2 uses
  %i.ps = shl nuw nsw i64 %n.vec354, 2
  %cmp.n369 = icmp eq i64 %n.vec354, %i.pp
  br label %.lr.ph87.us

.lr.ph87.us:                                      ; preds = %.lr.ph87.us.preheader, %._crit_edge.us
  %indvars.iv153 = phi i64 [ %i.oj, %.lr.ph87.us.preheader ], [ %indvars.iv.next154, %._crit_edge.us ] ; 2 uses
  %.1390.us = phi ptr [ %.7.lcssa, %.lr.ph87.us.preheader ], [ %.lcssa192, %._crit_edge.us ] ; 8 uses
  %i.pt = add nsw i64 %indvars.iv153, %i.ok
  %i.pu = mul i64 %i.k, %i.pt
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.pu ; 5 uses
  %i.pv = getelementptr inbounds nuw [2 x i8], ptr %gep.us, i64 %i.k ; 4 uses
  br i1 %min.iters.check352, label %scalar.ph.preheader, label %vector.memcheck337

vector.memcheck337:                               ; preds = %.lr.ph87.us
  %i.pw = getelementptr i8, ptr %.1390.us, i64 %i.oo
  %scevgep338 = getelementptr i8, ptr %i.pw, i64 4 ; 2 uses
  %bound0344 = icmp ult ptr %.1390.us, %scevgep341.a
  %bound1345 = icmp ult ptr %scevgep339, %scevgep338
  %found.conflict346 = and i1 %bound0344, %bound1345
  %bound0347 = icmp ult ptr %.1390.us, %scevgep343
  %bound1348 = icmp ult ptr %scevgep342.a, %scevgep338
  %found.conflict349 = and i1 %bound0347, %bound1348
  %i.px = or i1 %found.conflict349, %stride.check350
  %conflict.rdx351 = or i1 %found.conflict346, %i.px
  br i1 %conflict.rdx351, label %scalar.ph.preheader, label %vector.ph353

vector.ph353:                                     ; preds = %vector.memcheck337
  %i.py = getelementptr i8, ptr %i.pv, i64 %i.pr
  %i.pz = getelementptr i8, ptr %gep.us, i64 %i.pr
  %i.qa = getelementptr i8, ptr %.1390.us, i64 %i.ps ; 2 uses
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph353
  %index356 = phi i64 [ 0, %vector.ph353 ], [ %index.next367, %vector.body355 ] ; 3 uses
  %i.qb = shl i64 %index356, 1                    ; 2 uses
  %next.gep357.a = getelementptr i8, ptr %i.pv, i64 %i.qb ; 2 uses
  %next.gep358.a = getelementptr i8, ptr %gep.us, i64 %i.qb ; 2 uses
  %i.qc = shl i64 %index356, 2                    ; 2 uses
  %next.gep359.a = getelementptr i8, ptr %.1390.us, i64 %i.qc
  %i.qd = getelementptr i8, ptr %.1390.us, i64 %i.qc
  %next.gep360 = getelementptr i8, ptr %i.qd, i64 16
  %i.qe = getelementptr i8, ptr %next.gep358.a, i64 8
  %wide.load361.a = load <4 x i16>, ptr %next.gep358.a, align 2, !tbaa !686, !alias.scope !1087
  %wide.load362.a = load <4 x i16>, ptr %i.qe, align 2, !tbaa !686, !alias.scope !1087
  %i.qf = getelementptr i8, ptr %next.gep357.a, i64 8
  %wide.load363.a = load <4 x i16>, ptr %next.gep357.a, align 2, !tbaa !686, !alias.scope !1090
  %wide.load364 = load <4 x i16>, ptr %i.qf, align 2, !tbaa !686, !alias.scope !1090
  %interleaved.vec365.a = shufflevector <4 x i16> %wide.load361.a, <4 x i16> %wide.load363.a, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec365.a, ptr %next.gep359.a, align 2, !tbaa !686, !alias.scope !1092, !noalias !1094
  %interleaved.vec366 = shufflevector <4 x i16> %wide.load362.a, <4 x i16> %wide.load364, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec366, ptr %next.gep360, align 2, !tbaa !686, !alias.scope !1092, !noalias !1094
  %index.next367 = add nuw i64 %index356, 8       ; 2 uses
  %i.qg = icmp eq i64 %index.next367, %n.vec354
  br i1 %i.qg, label %middle.block368, label %vector.body355, !llvm.loop !1095

middle.block368:                                  ; preds = %vector.body355
  br i1 %cmp.n369, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck337, %.lr.ph87.us, %middle.block368
  %.016386.us.ph = phi i32 [ 0, %vector.memcheck337 ], [ 0, %.lr.ph87.us ], [ %i.pq, %middle.block368 ] ; 4 uses
  %.016485.us.ph = phi ptr [ %i.pv, %vector.memcheck337 ], [ %i.pv, %.lr.ph87.us ], [ %i.py, %middle.block368 ] ; 2 uses
  %.016584.us.ph = phi ptr [ %gep.us, %vector.memcheck337 ], [ %gep.us, %.lr.ph87.us ], [ %i.pz, %middle.block368 ] ; 2 uses
  %.1483.us.ph = phi ptr [ %.1390.us, %vector.memcheck337 ], [ %.1390.us, %.lr.ph87.us ], [ %i.qa, %middle.block368 ] ; 2 uses
  %i.qh = sub i32 %4, %.016386.us.ph
  %xtraiter464 = and i32 %i.qh, 3                 ; 2 uses
  %lcmp.mod465.not = icmp eq i32 %xtraiter464, 0
  br i1 %lcmp.mod465.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.016386.us.prol = phi i32 [ %i.qo, %scalar.ph.prol ], [ %.016386.us.ph, %scalar.ph.preheader ]
  %.016485.us.prol = phi ptr [ %i.qn, %scalar.ph.prol ], [ %.016485.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.016584.us.prol = phi ptr [ %i.qm, %scalar.ph.prol ], [ %.016584.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.1483.us.prol = phi ptr [ %i.ql, %scalar.ph.prol ], [ %.1483.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter466 = phi i32 [ %prol.iter466.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.qi = load i16, ptr %.016584.us.prol, align 2, !tbaa !686
  store i16 %i.qi, ptr %.1483.us.prol, align 2, !tbaa !686
  %i.qj = load i16, ptr %.016485.us.prol, align 2, !tbaa !686
  %i.qk = getelementptr inbounds nuw i8, ptr %.1483.us.prol, i64 2
  store i16 %i.qj, ptr %i.qk, align 2, !tbaa !686
  %i.ql = getelementptr inbounds nuw i8, ptr %.1483.us.prol, i64 4 ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.016584.us.prol, i64 2 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.016485.us.prol, i64 2 ; 2 uses
  %i.qo = add nuw nsw i32 %.016386.us.prol, 1     ; 2 uses
  %prol.iter466.next = add i32 %prol.iter466, 1   ; 2 uses
  %prol.iter466.cmp.not = icmp eq i32 %prol.iter466.next, %xtraiter464
  br i1 %prol.iter466.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1096

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa432.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ql, %scalar.ph.prol ]
  %.016386.us.unr = phi i32 [ %.016386.us.ph, %scalar.ph.preheader ], [ %i.qo, %scalar.ph.prol ]
  %.016485.us.unr = phi ptr [ %.016485.us.ph, %scalar.ph.preheader ], [ %i.qn, %scalar.ph.prol ]
  %.016584.us.unr = phi ptr [ %.016584.us.ph, %scalar.ph.preheader ], [ %i.qm, %scalar.ph.prol ]
  %.1483.us.unr = phi ptr [ %.1483.us.ph, %scalar.ph.preheader ], [ %i.ql, %scalar.ph.prol ]
  %i.qp = sub i32 %.016386.us.ph, %4
  %i.qq = icmp ugt i32 %i.qp, -4
  br i1 %i.qq, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.016386.us = phi i32 [ %i.rp, %scalar.ph ], [ %.016386.us.unr, %scalar.ph.prol.loopexit ]
  %.016485.us = phi ptr [ %i.ro, %scalar.ph ], [ %.016485.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.016584.us = phi ptr [ %i.rn, %scalar.ph ], [ %.016584.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.1483.us = phi ptr [ %i.rm, %scalar.ph ], [ %.1483.us.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.qr = load i16, ptr %.016584.us, align 2, !tbaa !686
  store i16 %i.qr, ptr %.1483.us, align 2, !tbaa !686
  %i.qs = load i16, ptr %.016485.us, align 2, !tbaa !686
  %i.qt = getelementptr inbounds nuw i8, ptr %.1483.us, i64 2
  store i16 %i.qs, ptr %i.qt, align 2, !tbaa !686
  %i.qu = getelementptr inbounds nuw i8, ptr %.1483.us, i64 4
  %i.qv = getelementptr inbounds nuw i8, ptr %.016584.us, i64 2
  %i.qw = getelementptr inbounds nuw i8, ptr %.016485.us, i64 2
  %i.qx = load i16, ptr %i.qv, align 2, !tbaa !686
  store i16 %i.qx, ptr %i.qu, align 2, !tbaa !686
  %i.qy = load i16, ptr %i.qw, align 2, !tbaa !686
  %i.qz = getelementptr inbounds nuw i8, ptr %.1483.us, i64 6
  store i16 %i.qy, ptr %i.qz, align 2, !tbaa !686
  %i.ra = getelementptr inbounds nuw i8, ptr %.1483.us, i64 8
  %i.rb = getelementptr inbounds nuw i8, ptr %.016584.us, i64 4
  %i.rc = getelementptr inbounds nuw i8, ptr %.016485.us, i64 4
  %i.rd = load i16, ptr %i.rb, align 2, !tbaa !686
  store i16 %i.rd, ptr %i.ra, align 2, !tbaa !686
  %i.re = load i16, ptr %i.rc, align 2, !tbaa !686
  %i.rf = getelementptr inbounds nuw i8, ptr %.1483.us, i64 10
  store i16 %i.re, ptr %i.rf, align 2, !tbaa !686
  %i.rg = getelementptr inbounds nuw i8, ptr %.1483.us, i64 12
  %i.rh = getelementptr inbounds nuw i8, ptr %.016584.us, i64 6
  %i.ri = getelementptr inbounds nuw i8, ptr %.016485.us, i64 6
  %i.rj = load i16, ptr %i.rh, align 2, !tbaa !686
  store i16 %i.rj, ptr %i.rg, align 2, !tbaa !686
  %i.rk = load i16, ptr %i.ri, align 2, !tbaa !686
  %i.rl = getelementptr inbounds nuw i8, ptr %.1483.us, i64 14
  store i16 %i.rk, ptr %i.rl, align 2, !tbaa !686
  %i.rm = getelementptr inbounds nuw i8, ptr %.1483.us, i64 16 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.016584.us, i64 8
  %i.ro = getelementptr inbounds nuw i8, ptr %.016485.us, i64 8
  %i.rp = add nuw nsw i32 %.016386.us, 4          ; 2 uses
  %exitcond152.not.3 = icmp eq i32 %i.rp, %4
  br i1 %exitcond152.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1097

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block368
  %.lcssa192 = phi ptr [ %i.qa, %middle.block368 ], [ %.lcssa432.unr, %scalar.ph.prol.loopexit ], [ %i.rm, %scalar.ph ] ; 2 uses
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 2 ; 3 uses
  %i.rq = icmp slt i64 %indvars.iv.next154, %invariant.op189
  br i1 %i.rq, label %.lr.ph87.us, label %.preheader.loopexit, !llvm.loop !1098

.preheader.loopexit:                              ; preds = %._crit_edge.us
  %i.rr = trunc nsw i64 %indvars.iv.next154 to i32
  br label %.preheader

end_hunk_1
begin_hunk_2_@_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.015211 = phi ptr [ %i.kp, %.lr.ph ], [ %i.jr, %.lr.ph.preheader ] ; 9 uses
  %.116010 = phi ptr [ %i.ko, %.lr.ph ], [ %.015926, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.js = load <2 x i64>, ptr %.015211, align 1, !tbaa !116
  store <2 x i64> %i.js, ptr %.116010, align 1, !tbaa !116
  %i.jt = getelementptr inbounds nuw i8, ptr %.116010, i64 16
  %i.ju = getelementptr inbounds nuw i8, ptr %.015211, i64 16
  %i.jv = load <2 x i64>, ptr %i.ju, align 1, !tbaa !116
  store <2 x i64> %i.jv, ptr %i.jt, align 1, !tbaa !116
  %i.jw = getelementptr inbounds nuw i8, ptr %.116010, i64 32
  %i.jx = getelementptr inbounds nuw i8, ptr %.015211, i64 32
  %i.jy = load <2 x i64>, ptr %i.jx, align 1, !tbaa !116
  store <2 x i64> %i.jy, ptr %i.jw, align 1, !tbaa !116
  %i.jz = getelementptr inbounds nuw i8, ptr %.116010, i64 48
  %i.ka = getelementptr inbounds nuw i8, ptr %.015211, i64 48
  %i.kb = load <2 x i64>, ptr %i.ka, align 1, !tbaa !116
  store <2 x i64> %i.kb, ptr %i.jz, align 1, !tbaa !116
  %i.kc = getelementptr inbounds nuw i8, ptr %.116010, i64 64
  %i.kd = getelementptr inbounds nuw i8, ptr %.015211, i64 64
  %i.ke = load <2 x i64>, ptr %i.kd, align 1, !tbaa !116
  store <2 x i64> %i.ke, ptr %i.kc, align 1, !tbaa !116
  %i.kf = getelementptr inbounds nuw i8, ptr %.116010, i64 80
  %i.kg = getelementptr inbounds nuw i8, ptr %.015211, i64 80
  %i.kh = load <2 x i64>, ptr %i.kg, align 1, !tbaa !116
  store <2 x i64> %i.kh, ptr %i.kf, align 1, !tbaa !116
  %i.ki = getelementptr inbounds nuw i8, ptr %.116010, i64 96
  %i.kj = getelementptr inbounds nuw i8, ptr %.015211, i64 96
  %i.kk = load <2 x i64>, ptr %i.kj, align 1, !tbaa !116
  store <2 x i64> %i.kk, ptr %i.ki, align 1, !tbaa !116
  %i.kl = getelementptr inbounds nuw i8, ptr %.116010, i64 112
  %i.km = getelementptr inbounds nuw i8, ptr %.015211, i64 112
  %i.kn = load <2 x i64>, ptr %i.km, align 1, !tbaa !116
  store <2 x i64> %i.kn, ptr %i.kl, align 1, !tbaa !116
  %i.ko = getelementptr inbounds nuw i8, ptr %.116010, i64 128 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.015211, i64 128 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit6.loopexit406.unr-lcssa, label %.lr.ph, !llvm.loop !1132

.loopexit9:                                       ; preds = %bb.b
  br i1 %i.q, label %bb.c, label %.loopexit7

bb.c:                                             ; preds = %.loopexit9
  br i1 %i.r, label %.lr.ph18.preheader, label %.loopexit6

.lr.ph18.preheader:                               ; preds = %bb.c
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jr, i64 %.idx165 ; 2 uses
  br i1 %i.x, label %.lr.ph18.epil.preheader, label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18.preheader, %.lr.ph18
  %.015016 = phi ptr [ %i.lo, %.lr.ph18 ], [ %i.kq, %.lr.ph18.preheader ] ; 5 uses
  %.215415 = phi ptr [ %i.ln, %.lr.ph18 ], [ %i.jr, %.lr.ph18.preheader ] ; 5 uses
  %.316214 = phi ptr [ %i.lm, %.lr.ph18 ], [ %.015926, %.lr.ph18.preheader ] ; 9 uses
  %niter418 = phi i32 [ %niter418.next.3, %.lr.ph18 ], [ 0, %.lr.ph18.preheader ]
  %i.kr = load i64, ptr %.215415, align 1, !tbaa !116
  store i64 %i.kr, ptr %.316214, align 1, !tbaa !116
  %i.ks = getelementptr inbounds nuw i8, ptr %.316214, i64 8
  %i.kt = load i64, ptr %.015016, align 1, !tbaa !116
  store i64 %i.kt, ptr %i.ks, align 1, !tbaa !116
  %i.ku = getelementptr inbounds nuw i8, ptr %.316214, i64 16
  %i.kv = getelementptr inbounds nuw i8, ptr %.215415, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %.015016, i64 8
  %i.kx = load i64, ptr %i.kv, align 1, !tbaa !116
  store i64 %i.kx, ptr %i.ku, align 1, !tbaa !116
  %i.ky = getelementptr inbounds nuw i8, ptr %.316214, i64 24
  %i.kz = load i64, ptr %i.kw, align 1, !tbaa !116
  store i64 %i.kz, ptr %i.ky, align 1, !tbaa !116
  %i.la = getelementptr inbounds nuw i8, ptr %.316214, i64 32
  %i.lb = getelementptr inbounds nuw i8, ptr %.215415, i64 16
  %i.lc = getelementptr inbounds nuw i8, ptr %.015016, i64 16
  %i.ld = load i64, ptr %i.lb, align 1, !tbaa !116
  store i64 %i.ld, ptr %i.la, align 1, !tbaa !116
  %i.le = getelementptr inbounds nuw i8, ptr %.316214, i64 40
  %i.lf = load i64, ptr %i.lc, align 1, !tbaa !116
  store i64 %i.lf, ptr %i.le, align 1, !tbaa !116
  %i.lg = getelementptr inbounds nuw i8, ptr %.316214, i64 48
  %i.lh = getelementptr inbounds nuw i8, ptr %.215415, i64 24
  %i.li = getelementptr inbounds nuw i8, ptr %.015016, i64 24
  %i.lj = load i64, ptr %i.lh, align 1, !tbaa !116
  store i64 %i.lj, ptr %i.lg, align 1, !tbaa !116
  %i.lk = getelementptr inbounds nuw i8, ptr %.316214, i64 56
  %i.ll = load i64, ptr %i.li, align 1, !tbaa !116
  store i64 %i.ll, ptr %i.lk, align 1, !tbaa !116
  %i.lm = getelementptr inbounds nuw i8, ptr %.316214, i64 64 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.215415, i64 32 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.015016, i64 32 ; 2 uses
  %niter418.next.3 = add nuw nsw i32 %niter418, 4 ; 2 uses
  %niter418.ncmp.3 = icmp eq i32 %niter418.next.3, %unroll_iter417
  br i1 %niter418.ncmp.3, label %.loopexit6.loopexit.unr-lcssa, label %.lr.ph18, !llvm.loop !1133

.loopexit7:                                       ; preds = %.loopexit9
  br i1 %brmerge98, label %.loopexit6, label %.lr.ph24

.lr.ph24:                                         ; preds = %.loopexit7, %.lr.ph24
  %.014823 = phi i32 [ %i.mn, %.lr.ph24 ], [ 0, %.loopexit7 ]
  %.422 = phi ptr [ %i.mm, %.lr.ph24 ], [ %i.jr, %.loopexit7 ] ; 9 uses
  %.521 = phi ptr [ %i.ml, %.lr.ph24 ], [ %.015926, %.loopexit7 ] ; 9 uses
  %i.lp = load i16, ptr %.422, align 2, !tbaa !686
  store i16 %i.lp, ptr %.521, align 2, !tbaa !686
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.422, i64 %i.k
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !686
  %i.ls = getelementptr inbounds nuw i8, ptr %.521, i64 2
  store i16 %i.lr, ptr %i.ls, align 2, !tbaa !686
  %i.lt = getelementptr inbounds nuw i8, ptr %.422, i64 %.idx166
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !686
  %i.lv = getelementptr inbounds nuw i8, ptr %.521, i64 4
  store i16 %i.lu, ptr %i.lv, align 2, !tbaa !686
  %i.lw = getelementptr inbounds nuw i8, ptr %.422, i64 %.idx167
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !686
  %i.ly = getelementptr inbounds nuw i8, ptr %.521, i64 6
  store i16 %i.lx, ptr %i.ly, align 2, !tbaa !686
  %i.lz = getelementptr inbounds nuw i8, ptr %.422, i64 %.idx165
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !686
  %i.mb = getelementptr inbounds nuw i8, ptr %.521, i64 8
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !686
  %i.mc = getelementptr inbounds nuw i8, ptr %.422, i64 %.idx169
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !686
  %i.me = getelementptr inbounds nuw i8, ptr %.521, i64 10
  store i16 %i.md, ptr %i.me, align 2, !tbaa !686
  %i.mf = getelementptr inbounds nuw i8, ptr %.422, i64 %.idx170
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !686
  %i.mh = getelementptr inbounds nuw i8, ptr %.521, i64 12
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !686
  %i.mi = getelementptr inbounds nuw i8, ptr %.422, i64 %.idx171
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !686
  %i.mk = getelementptr inbounds nuw i8, ptr %.521, i64 14
  store i16 %i.mj, ptr %i.mk, align 2, !tbaa !686
  %i.ml = getelementptr inbounds nuw i8, ptr %.521, i64 16 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.422, i64 2
  %i.mn = add nuw nsw i32 %.014823, 1             ; 2 uses
  %exitcond121.not = icmp eq i32 %i.mn, %4
  br i1 %exitcond121.not, label %.loopexit6, label %.lr.ph24, !llvm.loop !1134

.loopexit6.loopexit.unr-lcssa:                    ; preds = %.lr.ph18
  br i1 %lcmp.mod414.not, label %.loopexit6, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit6.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.015016.epil.init = phi ptr [ %i.kq, %.lr.ph18.preheader ], [ %i.lo, %.loopexit6.loopexit.unr-lcssa ]
  %.215415.epil.init = phi ptr [ %i.jr, %.lr.ph18.preheader ], [ %i.ln, %.loopexit6.loopexit.unr-lcssa ]
  %.316214.epil.init = phi ptr [ %.015926, %.lr.ph18.preheader ], [ %i.lm, %.loopexit6.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod416)
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.015016.epil = phi ptr [ %i.mt, %.lr.ph18.epil ], [ %.015016.epil.init, %.lr.ph18.epil.preheader ] ; 2 uses
  %.215415.epil = phi ptr [ %i.ms, %.lr.ph18.epil ], [ %.215415.epil.init, %.lr.ph18.epil.preheader ] ; 2 uses
  %.316214.epil = phi ptr [ %i.mr, %.lr.ph18.epil ], [ %.316214.epil.init, %.lr.ph18.epil.preheader ] ; 3 uses
  %epil.iter413 = phi i32 [ %epil.iter413.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.mo = load i64, ptr %.215415.epil, align 1, !tbaa !116
  store i64 %i.mo, ptr %.316214.epil, align 1, !tbaa !116
  %i.mp = getelementptr inbounds nuw i8, ptr %.316214.epil, i64 8
  %i.mq = load i64, ptr %.015016.epil, align 1, !tbaa !116
  store i64 %i.mq, ptr %i.mp, align 1, !tbaa !116
  %i.mr = getelementptr inbounds nuw i8, ptr %.316214.epil, i64 16 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.215415.epil, i64 8
  %i.mt = getelementptr inbounds nuw i8, ptr %.015016.epil, i64 8
  %epil.iter413.next = add i32 %epil.iter413, 1   ; 2 uses
  %epil.iter413.cmp.not = icmp eq i32 %epil.iter413.next, %xtraiter412
  br i1 %epil.iter413.cmp.not, label %.loopexit6, label %.lr.ph18.epil, !llvm.loop !1135

.loopexit6.loopexit406.unr-lcssa:                 ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.loopexit6, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit6.loopexit406.unr-lcssa, %.lr.ph.preheader
  %.015211.epil.init = phi ptr [ %i.jr, %.lr.ph.preheader ], [ %i.kp, %.loopexit6.loopexit406.unr-lcssa ]
  %.116010.epil.init = phi ptr [ %.015926, %.lr.ph.preheader ], [ %i.ko, %.loopexit6.loopexit406.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod411)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.015211.epil = phi ptr [ %i.mw, %.lr.ph.epil ], [ %.015211.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.116010.epil = phi ptr [ %i.mv, %.lr.ph.epil ], [ %.116010.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.mu = load <2 x i64>, ptr %.015211.epil, align 1, !tbaa !116
  store <2 x i64> %i.mu, ptr %.116010.epil, align 1, !tbaa !116
  %i.mv = getelementptr inbounds nuw i8, ptr %.116010.epil, i64 16 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.015211.epil, i64 16
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit6, label %.lr.ph.epil, !llvm.loop !1136

.loopexit6:                                       ; preds = %.loopexit6.loopexit406.unr-lcssa, %.lr.ph.epil, %.lr.ph24, %.loopexit6.loopexit.unr-lcssa, %.lr.ph18.epil, %bb.c, %.loopexit7
  %.6 = phi ptr [ %.015926, %.loopexit7 ], [ %i.ml, %.lr.ph24 ], [ %i.mr, %.lr.ph18.epil ], [ %.015926, %bb.c ], [ %i.lm, %.loopexit6.loopexit.unr-lcssa ], [ %i.ko, %.loopexit6.loopexit406.unr-lcssa ], [ %i.mv, %.lr.ph.epil ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.mx = or disjoint i64 %indvars.iv.next, 7
  %i.my = icmp samesign ult i64 %i.mx, %i.t
  br i1 %i.my, label %bb.b, label %.preheader4.loopexit, !llvm.loop !1137

.preheader1.loopexit:                             ; preds = %.loopexit.us
  %i.mz = trunc nuw nsw i64 %indvars.iv.next130 to i32
  br label %.preheader1

.preheader1.loopexit102:                          ; preds = %..loopexit3_crit_edge.us61.us
  %i.na = trunc nuw nsw i64 %indvars.iv.next125 to i32
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.loopexit102, %.preheader2.us57.preheader, %.lr.ph47.split.split.preheader, %.preheader1.loopexit, %.preheader4
  %.7.lcssa = phi ptr [ %.0159.lcssa, %.preheader4 ], [ %.10.lcssa.us, %.preheader1.loopexit ], [ %.0159.lcssa, %.lr.ph47.split.split.preheader ], [ %.0159.lcssa, %.preheader2.us57.preheader ], [ %.lcssa174, %.preheader1.loopexit102 ] ; 3 uses
  %.1156.lcssa = phi i32 [ %.0155.lcssa, %.preheader4 ], [ %i.mz, %.preheader1.loopexit ], [ %i.gn, %.lr.ph47.split.split.preheader ], [ %i.hh, %.preheader2.us57.preheader ], [ %i.na, %.preheader1.loopexit102 ] ; 6 uses
  %i.nb = or disjoint i32 %.1156.lcssa, 1
  %i.nc = icmp slt i32 %i.nb, %2
  br i1 %i.nc, label %.lr.ph77, label %.preheader

.lr.ph77:                                         ; preds = %.preheader1
  %i.nd = load ptr, ptr %0, align 8, !tbaa !18    ; 5 uses
  %i.ne = sext i32 %3 to i64                      ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.nd, i64 %i.ne
  %i.nf = icmp sgt i32 %4, 0
  br i1 %i.nf, label %.lr.ph73.us.preheader, label %.lr.ph77.split.preheader

.lr.ph77.split.preheader:                         ; preds = %.lr.ph77
  %5 = add i32 %.1156.lcssa, 3
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 %5)
  %i.ng = add i32 %smax, -2
  %i.nh = sub i32 %i.ng, %.1156.lcssa
  %i.ni = and i32 %i.nh, -2
  %i.nj = add i32 %.1156.lcssa, %i.ni
  %i.nk = add i32 %i.nj, 2
  br label %.preheader

.lr.ph73.us.preheader:                            ; preds = %.lr.ph77
  %i.nl = sext i32 %.1156.lcssa to i64            ; 4 uses
  %i.nm = sext i32 %1 to i64                      ; 2 uses
  %i.nn = sext i32 %2 to i64
  %invariant.op167 = add nsw i64 %i.nn, -1        ; 2 uses
  %i.no = add nsw i32 %4, -1
  %i.np = zext i32 %i.no to i64                   ; 2 uses
  %i.nq = shl nuw nsw i64 %i.np, 2
  %i.nr = add nsw i64 %i.nl, %i.nm                ; 2 uses
  %i.ns = shl nsw i64 %i.nr, 1                    ; 3 uses
  %i.nt = add nsw i64 %i.ns, 2
  %i.nu = mul i64 %i.k, %i.nt
  %i.nv = shl nsw i64 %i.ne, 1                    ; 3 uses
  %i.nw = getelementptr i8, ptr %i.nd, i64 %i.nu
  %scevgep307 = getelementptr i8, ptr %i.nw, i64 %i.nv
  %i.nx = add nsw i64 %i.nl, 2
  %smax308 = tail call i64 @llvm.smax.i64(i64 %invariant.op167, i64 %i.nx)
  %i.ny = xor i64 %i.nl, -1
  %i.nz = add i64 %smax308, %i.ny
  %i.oa = shl i64 %i.nz, 1
  %i.ob = and i64 %i.oa, -4                       ; 2 uses
  %i.oc = add i64 %i.ob, %i.ns
  %i.od = add i64 %i.oc, 2
  %i.oe = mul i64 %i.k, %i.od
  %i.of = shl nuw nsw i64 %i.np, 1                ; 2 uses
  %i.og = getelementptr i8, ptr %i.nd, i64 %i.oe
  %i.oh = getelementptr i8, ptr %i.og, i64 %i.nv
  %i.oi = getelementptr i8, ptr %i.oh, i64 %i.of
  %scevgep309.a = getelementptr i8, ptr %i.oi, i64 2
  %i.oj = mul i64 %i.k, %i.nr
  %i.ok = add i64 %i.oj, %i.ne
  %i.ol = shl i64 %i.ok, 1
  %scevgep310.a = getelementptr i8, ptr %i.nd, i64 %i.ol
  %i.om = add i64 %i.ob, %i.ns
  %i.on = mul i64 %i.k, %i.om
  %i.oo = getelementptr i8, ptr %i.nd, i64 %i.on
  %i.op = getelementptr i8, ptr %i.oo, i64 %i.nv
  %i.oq = getelementptr i8, ptr %i.op, i64 %i.of
  %scevgep311 = getelementptr i8, ptr %i.oq, i64 2
  %i.or = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check320 = icmp ult i32 %4, 12
  %.mask = and i64 %i.k, 2305843009213693952
  %stride.check318 = icmp ne i64 %.mask, 0
  %n.vec322 = and i64 %i.or, 2147483640           ; 5 uses
  %i.os = trunc nuw nsw i64 %n.vec322 to i32
  %i.ot = shl nuw nsw i64 %n.vec322, 1            ; 2 uses
  %i.ou = shl nuw nsw i64 %n.vec322, 2
  %cmp.n337 = icmp eq i64 %n.vec322, %i.or
  br label %.lr.ph73.us

.lr.ph73.us:                                      ; preds = %.lr.ph73.us.preheader, %._crit_edge.us
  %indvars.iv133 = phi i64 [ %i.nl, %.lr.ph73.us.preheader ], [ %indvars.iv.next134, %._crit_edge.us ] ; 2 uses
  %.1275.us = phi ptr [ %.7.lcssa, %.lr.ph73.us.preheader ], [ %.lcssa170, %._crit_edge.us ] ; 8 uses
  %i.ov = add nsw i64 %indvars.iv133, %i.nm
  %i.ow = mul i64 %i.k, %i.ov
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ow ; 5 uses
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %gep.us, i64 %i.k ; 4 uses
  br i1 %min.iters.check320, label %scalar.ph.preheader, label %vector.memcheck305

vector.memcheck305:                               ; preds = %.lr.ph73.us
  %i.oy = getelementptr i8, ptr %.1275.us, i64 %i.nq
  %scevgep306 = getelementptr i8, ptr %i.oy, i64 4 ; 2 uses
  %bound0312 = icmp ult ptr %.1275.us, %scevgep309.a
  %bound1313 = icmp ult ptr %scevgep307, %scevgep306
  %found.conflict314 = and i1 %bound0312, %bound1313
  %bound0315 = icmp ult ptr %.1275.us, %scevgep311
  %bound1316 = icmp ult ptr %scevgep310.a, %scevgep306
  %found.conflict317 = and i1 %bound0315, %bound1316
  %i.oz = or i1 %found.conflict317, %stride.check318
  %conflict.rdx319 = or i1 %found.conflict314, %i.oz
  br i1 %conflict.rdx319, label %scalar.ph.preheader, label %vector.ph321

vector.ph321:                                     ; preds = %vector.memcheck305
  %i.pa = getelementptr i8, ptr %i.ox, i64 %i.ot
  %i.pb = getelementptr i8, ptr %gep.us, i64 %i.ot
  %i.pc = getelementptr i8, ptr %.1275.us, i64 %i.ou ; 2 uses
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph321
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next335, %vector.body323 ] ; 3 uses
  %i.pd = shl i64 %index324, 1                    ; 2 uses
  %next.gep325.a = getelementptr i8, ptr %i.ox, i64 %i.pd ; 2 uses
  %next.gep326.a = getelementptr i8, ptr %gep.us, i64 %i.pd ; 2 uses
  %i.pe = shl i64 %index324, 2                    ; 2 uses
  %next.gep327.a = getelementptr i8, ptr %.1275.us, i64 %i.pe
  %i.pf = getelementptr i8, ptr %.1275.us, i64 %i.pe
  %next.gep328 = getelementptr i8, ptr %i.pf, i64 16
  %i.pg = getelementptr i8, ptr %next.gep326.a, i64 8
  %wide.load329.a = load <4 x i16>, ptr %next.gep326.a, align 2, !tbaa !686, !alias.scope !1138
  %wide.load330.a = load <4 x i16>, ptr %i.pg, align 2, !tbaa !686, !alias.scope !1138
  %i.ph = getelementptr i8, ptr %next.gep325.a, i64 8
  %wide.load331.a = load <4 x i16>, ptr %next.gep325.a, align 2, !tbaa !686, !alias.scope !1141
  %wide.load332 = load <4 x i16>, ptr %i.ph, align 2, !tbaa !686, !alias.scope !1141
  %interleaved.vec333.a = shufflevector <4 x i16> %wide.load329.a, <4 x i16> %wide.load331.a, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec333.a, ptr %next.gep327.a, align 2, !tbaa !686, !alias.scope !1143, !noalias !1145
  %interleaved.vec334 = shufflevector <4 x i16> %wide.load330.a, <4 x i16> %wide.load332, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec334, ptr %next.gep328, align 2, !tbaa !686, !alias.scope !1143, !noalias !1145
  %index.next335 = add nuw i64 %index324, 8       ; 2 uses
  %i.pi = icmp eq i64 %index.next335, %n.vec322
  br i1 %i.pi, label %middle.block336, label %vector.body323, !llvm.loop !1146

middle.block336:                                  ; preds = %vector.body323
  br i1 %cmp.n337, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck305, %.lr.ph73.us, %middle.block336
  %.013972.us.ph = phi i32 [ 0, %vector.memcheck305 ], [ 0, %.lr.ph73.us ], [ %i.os, %middle.block336 ] ; 4 uses
  %.014071.us.ph = phi ptr [ %i.ox, %vector.memcheck305 ], [ %i.ox, %.lr.ph73.us ], [ %i.pa, %middle.block336 ] ; 2 uses
  %.014170.us.ph = phi ptr [ %gep.us, %vector.memcheck305 ], [ %gep.us, %.lr.ph73.us ], [ %i.pb, %middle.block336 ] ; 2 uses
  %.1369.us.ph = phi ptr [ %.1275.us, %vector.memcheck305 ], [ %.1275.us, %.lr.ph73.us ], [ %i.pc, %middle.block336 ] ; 2 uses
  %i.pj = sub i32 %4, %.013972.us.ph
  %xtraiter427 = and i32 %i.pj, 3                 ; 2 uses
  %lcmp.mod428.not = icmp eq i32 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.013972.us.prol = phi i32 [ %i.pq, %scalar.ph.prol ], [ %.013972.us.ph, %scalar.ph.preheader ]
  %.014071.us.prol = phi ptr [ %i.pp, %scalar.ph.prol ], [ %.014071.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.014170.us.prol = phi ptr [ %i.po, %scalar.ph.prol ], [ %.014170.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.1369.us.prol = phi ptr [ %i.pn, %scalar.ph.prol ], [ %.1369.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter429 = phi i32 [ %prol.iter429.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.pk = load i16, ptr %.014170.us.prol, align 2, !tbaa !686
  store i16 %i.pk, ptr %.1369.us.prol, align 2, !tbaa !686
  %i.pl = load i16, ptr %.014071.us.prol, align 2, !tbaa !686
  %i.pm = getelementptr inbounds nuw i8, ptr %.1369.us.prol, i64 2
  store i16 %i.pl, ptr %i.pm, align 2, !tbaa !686
  %i.pn = getelementptr inbounds nuw i8, ptr %.1369.us.prol, i64 4 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.014170.us.prol, i64 2 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.014071.us.prol, i64 2 ; 2 uses
  %i.pq = add nuw nsw i32 %.013972.us.prol, 1     ; 2 uses
  %prol.iter429.next = add i32 %prol.iter429, 1   ; 2 uses
  %prol.iter429.cmp.not = icmp eq i32 %prol.iter429.next, %xtraiter427
  br i1 %prol.iter429.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1147

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa400.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.pn, %scalar.ph.prol ]
  %.013972.us.unr = phi i32 [ %.013972.us.ph, %scalar.ph.preheader ], [ %i.pq, %scalar.ph.prol ]
  %.014071.us.unr = phi ptr [ %.014071.us.ph, %scalar.ph.preheader ], [ %i.pp, %scalar.ph.prol ]
  %.014170.us.unr = phi ptr [ %.014170.us.ph, %scalar.ph.preheader ], [ %i.po, %scalar.ph.prol ]
  %.1369.us.unr = phi ptr [ %.1369.us.ph, %scalar.ph.preheader ], [ %i.pn, %scalar.ph.prol ]
  %i.pr = sub i32 %.013972.us.ph, %4
  %i.ps = icmp ugt i32 %i.pr, -4
  br i1 %i.ps, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.013972.us = phi i32 [ %i.qr, %scalar.ph ], [ %.013972.us.unr, %scalar.ph.prol.loopexit ]
  %.014071.us = phi ptr [ %i.qq, %scalar.ph ], [ %.014071.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.014170.us = phi ptr [ %i.qp, %scalar.ph ], [ %.014170.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.1369.us = phi ptr [ %i.qo, %scalar.ph ], [ %.1369.us.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.pt = load i16, ptr %.014170.us, align 2, !tbaa !686
  store i16 %i.pt, ptr %.1369.us, align 2, !tbaa !686
  %i.pu = load i16, ptr %.014071.us, align 2, !tbaa !686
  %i.pv = getelementptr inbounds nuw i8, ptr %.1369.us, i64 2
  store i16 %i.pu, ptr %i.pv, align 2, !tbaa !686
  %i.pw = getelementptr inbounds nuw i8, ptr %.1369.us, i64 4
  %i.px = getelementptr inbounds nuw i8, ptr %.014170.us, i64 2
  %i.py = getelementptr inbounds nuw i8, ptr %.014071.us, i64 2
  %i.pz = load i16, ptr %i.px, align 2, !tbaa !686
  store i16 %i.pz, ptr %i.pw, align 2, !tbaa !686
  %i.qa = load i16, ptr %i.py, align 2, !tbaa !686
  %i.qb = getelementptr inbounds nuw i8, ptr %.1369.us, i64 6
  store i16 %i.qa, ptr %i.qb, align 2, !tbaa !686
  %i.qc = getelementptr inbounds nuw i8, ptr %.1369.us, i64 8
  %i.qd = getelementptr inbounds nuw i8, ptr %.014170.us, i64 4
  %i.qe = getelementptr inbounds nuw i8, ptr %.014071.us, i64 4
  %i.qf = load i16, ptr %i.qd, align 2, !tbaa !686
  store i16 %i.qf, ptr %i.qc, align 2, !tbaa !686
  %i.qg = load i16, ptr %i.qe, align 2, !tbaa !686
  %i.qh = getelementptr inbounds nuw i8, ptr %.1369.us, i64 10
  store i16 %i.qg, ptr %i.qh, align 2, !tbaa !686
  %i.qi = getelementptr inbounds nuw i8, ptr %.1369.us, i64 12
  %i.qj = getelementptr inbounds nuw i8, ptr %.014170.us, i64 6
  %i.qk = getelementptr inbounds nuw i8, ptr %.014071.us, i64 6
  %i.ql = load i16, ptr %i.qj, align 2, !tbaa !686
  store i16 %i.ql, ptr %i.qi, align 2, !tbaa !686
  %i.qm = load i16, ptr %i.qk, align 2, !tbaa !686
  %i.qn = getelementptr inbounds nuw i8, ptr %.1369.us, i64 14
  store i16 %i.qm, ptr %i.qn, align 2, !tbaa !686
  %i.qo = getelementptr inbounds nuw i8, ptr %.1369.us, i64 16 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.014170.us, i64 8
  %i.qq = getelementptr inbounds nuw i8, ptr %.014071.us, i64 8
  %i.qr = add nuw nsw i32 %.013972.us, 4          ; 2 uses
  %exitcond132.not.3 = icmp eq i32 %i.qr, %4
  br i1 %exitcond132.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1148

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block336
  %.lcssa170 = phi ptr [ %i.pc, %middle.block336 ], [ %.lcssa400.unr, %scalar.ph.prol.loopexit ], [ %i.qo, %scalar.ph ] ; 2 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 2 ; 3 uses
  %i.qs = icmp slt i64 %indvars.iv.next134, %invariant.op167
  br i1 %i.qs, label %.lr.ph73.us, label %.preheader.loopexit, !llvm.loop !1149

.preheader.loopexit:                              ; preds = %._crit_edge.us
  %i.qt = trunc nsw i64 %indvars.iv.next134 to i32
  br label %.preheader

end_hunk_2
begin_hunk_3_@_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a

.lr.ph128.epil.preheader:                         ; preds = %.loopexit.loopexit288.unr-lcssa, %.lr.ph128.preheader
  %.0246126.epil.init = phi ptr [ %i.pi, %.lr.ph128.preheader ], [ %i.pu, %.loopexit.loopexit288.unr-lcssa ]
  %.22125.epil.init = phi ptr [ %.21143, %.lr.ph128.preheader ], [ %i.pt, %.loopexit.loopexit288.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod333)
  br label %.lr.ph128.epil

.lr.ph128.epil:                                   ; preds = %.lr.ph128.epil, %.lr.ph128.epil.preheader
  %.0246126.epil = phi ptr [ %i.rn, %.lr.ph128.epil ], [ %.0246126.epil.init, %.lr.ph128.epil.preheader ] ; 2 uses
  %.22125.epil = phi ptr [ %i.rm, %.lr.ph128.epil ], [ %.22125.epil.init, %.lr.ph128.epil.preheader ] ; 2 uses
  %epil.iter330 = phi i32 [ %epil.iter330.next, %.lr.ph128.epil ], [ 0, %.lr.ph128.epil.preheader ]
  %i.rl = load <2 x i64>, ptr %.0246126.epil, align 1, !tbaa !116
  store <2 x i64> %i.rl, ptr %.22125.epil, align 1, !tbaa !116
  %i.rm = getelementptr inbounds nuw i8, ptr %.22125.epil, i64 16 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.0246126.epil, i64 %.idx280
  %epil.iter330.next = add i32 %epil.iter330, 1   ; 2 uses
  %epil.iter330.cmp.not = icmp eq i32 %epil.iter330.next, %xtraiter329
  br i1 %epil.iter330.cmp.not, label %.loopexit, label %.lr.ph128.epil, !llvm.loop !1175

.loopexit:                                        ; preds = %.loopexit.loopexit288.unr-lcssa, %.lr.ph128.epil, %.loopexit.loopexit287.unr-lcssa, %.lr.ph134.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph140.epil, %.loopexit37
  %.27 = phi ptr [ %.21143, %.loopexit37 ], [ %i.rg, %.lr.ph140.epil ], [ %i.rj, %.lr.ph134.epil ], [ %i.rd, %.loopexit.loopexit.unr-lcssa ], [ %i.qf, %.loopexit.loopexit287.unr-lcssa ], [ %i.pt, %.loopexit.loopexit288.unr-lcssa ], [ %i.rm, %.lr.ph128.epil ]
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count
  br i1 %exitcond214.not, label %._crit_edge, label %bb.e, !llvm.loop !1176

._crit_edge:                                      ; preds = %.loopexit, %.preheader40
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20gemm_AT_BT_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiiffiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %18, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %19) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not162 = icmp sgt i32 %i.k, %i.j
  br i1 %.not162, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.054163 = phi i32 [ %i.k, %.lr.ph ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.u = sdiv i32 %.054163, %i.t
  %i.v = srem i32 %.054163, %i.t
  %i.w = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.u                   ; 3 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !45     ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.v                   ; 3 uses
  %i.aa = load i32, ptr %6, align 4, !tbaa !45
  %i.ab = sub nsw i32 %i.aa, %i.x
  %.sroa.speculated158 = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 2 uses
  %i.ac = load i32, ptr %7, align 4, !tbaa !45
  %i.ad = sub nsw i32 %i.ac, %i.z
  %.sroa.speculated154 = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.ad) ; 2 uses
  %i.ae = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc84 unwind label %bb.e

.noexc84:                                         ; preds = %bb.c
  %i.af = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1177
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !1177
  %i.ah = sext i32 %i.ae to i64
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !59, !noalias !1177
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %9, align 4, !tbaa !45    ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %_ZN4ncnn3MatD2Ev.exit58.preheader, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit58.preheader:                ; preds = %.noexc84
  %.pre = load i32, ptr %10, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit58

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit58, %.noexc84
  %i.ao = load i32, ptr %15, align 4, !tbaa !45
  %i.ap = load float, ptr %16, align 4, !tbaa !68
  %i.aq = load float, ptr %17, align 4, !tbaa !68
  %i.ar = load i32, ptr %18, align 4, !tbaa !45
  %i.as = load i32, ptr %19, align 4, !tbaa !45
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %i.al, ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.ao, i32 noundef %i.x, i32 noundef %.sroa.speculated158, i32 noundef %i.z, i32 noundef %.sroa.speculated154, float noundef nofpclass(nan inf) %i.ap, float noundef nofpclass(nan inf) %i.aq, i32 noundef %i.ar, i32 noundef %i.as)
  %i.at = add nsw i32 %.054163, 1
  %i.au = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.054163, %i.au
  br i1 %.not.not, label %bb.c, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit58:                          ; preds = %_ZN4ncnn3MatD2Ev.exit58.preheader, %_ZN4ncnn3MatD2Ev.exit58
  %i.av = phi i32 [ %i.cc, %_ZN4ncnn3MatD2Ev.exit58 ], [ %.pre, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 2 uses
  %i.aw = phi i32 [ %i.ce, %_ZN4ncnn3MatD2Ev.exit58 ], [ %i.am, %_ZN4ncnn3MatD2Ev.exit58.preheader ]
  %.0161 = phi i32 [ %i.cd, %_ZN4ncnn3MatD2Ev.exit58 ], [ 0, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 4 uses
  %i.ax = sub nsw i32 %i.aw, %.0161
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ax)
  %i.ay = load i32, ptr %4, align 4, !tbaa !45
  %i.az = sdiv i32 %i.x, %i.ay
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !88, !noalias !1180
  %i.bb = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1180
  %i.bc = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1180
  %i.bd = sext i32 %i.az to i64
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = load i64, ptr %i.p, align 8, !tbaa !59, !noalias !1180 ; 2 uses
  %i.bg = mul i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %i.bi = sext i32 %i.ba to i64
  %i.bj = sdiv i32 %.0161, %i.av
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = mul i64 %i.bf, %i.bi
  %i.bm = mul i64 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %i.bo = load i32, ptr %5, align 4, !tbaa !45
  %i.bp = sdiv i32 %i.z, %i.bo
  %i.bq = load i32, ptr %i.q, align 4, !tbaa !88, !noalias !1183
  %i.br = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1183
  %i.bs = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1183
  %i.bt = sext i32 %i.bp to i64
  %i.bu = mul i64 %i.bs, %i.bt
  %i.bv = load i64, ptr %i.s, align 8, !tbaa !59, !noalias !1183 ; 2 uses
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  %i.by = sext i32 %i.bq to i64
  %i.bz = mul i64 %i.bv, %i.by
  %i.ca = mul i64 %i.bz, %i.bk
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ca
  call fastcc void @_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii(ptr %i.bn, ptr %i.cb, ptr %i.al, i32 noundef %.sroa.speculated158, i32 noundef %.sroa.speculated154, i32 noundef %.0161, i32 noundef %.sroa.speculated)
  %i.cc = load i32, ptr %10, align 4, !tbaa !45   ; 2 uses
  %i.cd = add nsw i32 %i.cc, %.0161               ; 2 uses
  %i.ce = load i32, ptr %9, align 4, !tbaa !45    ; 2 uses
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %_ZN4ncnn3MatD2Ev.exit58, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1186

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #26
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii(ptr nofree readonly %.0.val, ptr nofree readonly %.0.val1, ptr nofree %.0.val3, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %0, 7
  br i1 %i.a, label %.preheader308.lr.ph, label %.preheader304

.preheader308.lr.ph:                              ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 7
  %.not594 = icmp eq i32 %2, 0                    ; 6 uses
  %i.c = icmp sgt i32 %3, 0                       ; 4 uses
  %i.d = shl nsw i32 %3, 3
  %i.e = sext i32 %i.d to i64
  %i.f = add i32 %3, -1
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = shl nuw nsw i64 %i.g, 4
  %i.i = and i32 %1, -8
  %i.j = shl nuw nsw i64 %i.g, 3
  %i.k = shl nuw nsw i64 %i.g, 2
  %i.l = add nsw i32 %1, -1                       ; 2 uses
  %i.m = shl nuw nsw i64 %i.g, 1
  br label %.preheader308

.preheader308:                                    ; preds = %.preheader308.lr.ph, %._crit_edge400
  %.0454410 = phi ptr [ %.0.val, %.preheader308.lr.ph ], [ %i.gg, %._crit_edge400 ] ; 5 uses
  %.0456409 = phi ptr [ %.0.val3, %.preheader308.lr.ph ], [ %.4.lcssa, %._crit_edge400 ] ; 2 uses
  %.0460408 = phi i32 [ 0, %.preheader308.lr.ph ], [ %i.gh, %._crit_edge400 ]
  br i1 %i.b, label %.lr.ph331, label %.preheader307

.preheader304.loopexit:                           ; preds = %._crit_edge400
  %i.n = and i32 %0, 2147483640
  br label %.preheader304

.preheader304:                                    ; preds = %.preheader304.loopexit, %bb.a
  %.0460.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %.preheader304.loopexit ] ; 3 uses
  %.0456.lcssa = phi ptr [ %.0.val3, %bb.a ], [ %.4.lcssa, %.preheader304.loopexit ] ; 2 uses
  %.0454.lcssa = phi ptr [ %.0.val, %bb.a ], [ %i.gg, %.preheader304.loopexit ] ; 2 uses
  %i.o = or disjoint i32 %.0460.lcssa, 3
  %i.p = icmp slt i32 %i.o, %0
  br i1 %i.p, label %.preheader303.lr.ph, label %.preheader299

.preheader303.lr.ph:                              ; preds = %.preheader304
  %i.q = icmp sgt i32 %1, 7
  %.not590 = icmp eq i32 %2, 0                    ; 6 uses
  %i.r = icmp sgt i32 %3, 0                       ; 4 uses
  %i.s = shl nsw i32 %3, 2
  %i.t = sext i32 %i.s to i64
  %i.u = add i32 %3, -1
  %i.v = zext i32 %i.u to i64                     ; 4 uses
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = and i32 %1, -8
  %i.y = shl nuw nsw i64 %i.v, 3
  %i.z = shl nuw nsw i64 %i.v, 2
  %i.aa = add nsw i32 %1, -1                      ; 2 uses
  %i.ab = shl nuw nsw i64 %i.v, 1
  %i.ac = add i32 %3, -1                          ; 2 uses
  %xtraiter = and i32 %3, 1
  %i.ad = icmp eq i32 %i.ac, 0
  %unroll_iter = and i32 %3, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod449 = trunc i32 %3 to i1
  %xtraiter450 = and i32 %3, 1
  %i.ae = icmp eq i32 %i.ac, 0
  %unroll_iter454 = and i32 %3, 2147483646
  %lcmp.mod451.not = icmp eq i32 %xtraiter450, 0
  %lcmp.mod453 = trunc i32 %3 to i1
  br label %.preheader303

.preheader307:                                    ; preds = %._crit_edge, %.preheader308
  %.0518.lcssa = phi i32 [ 0, %.preheader308 ], [ %i.i, %._crit_edge ] ; 3 uses
  %.0464.lcssa = phi ptr [ %.0.val1, %.preheader308 ], [ %.1465.lcssa, %._crit_edge ] ; 2 uses
  %.1457.lcssa = phi ptr [ %.0456409, %.preheader308 ], [ %i.cd, %._crit_edge ] ; 2 uses
  %i.af = or disjoint i32 %.0518.lcssa, 3
  %i.ag = icmp slt i32 %i.af, %1
  br i1 %i.ag, label %.lr.ph353, label %.preheader306

.lr.ph331:                                        ; preds = %.preheader308, %._crit_edge
  %.1457330 = phi ptr [ %i.cd, %._crit_edge ], [ %.0456409, %.preheader308 ] ; 17 uses
  %.0464329 = phi ptr [ %.1465.lcssa, %._crit_edge ], [ %.0.val1, %.preheader308 ] ; 3 uses
  %.0518328 = phi i32 [ %i.ce, %._crit_edge ], [ 0, %.preheader308 ]
  br i1 %.not594, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph331
  %i.ah = load <8 x float>, ptr %.1457330, align 32, !tbaa !116
  %i.ai = getelementptr inbounds nuw i8, ptr %.1457330, i64 32
  %i.aj = load <8 x float>, ptr %i.ai, align 32, !tbaa !116
  %i.ak = getelementptr inbounds nuw i8, ptr %.1457330, i64 64
  %i.al = load <8 x float>, ptr %i.ak, align 32, !tbaa !116
  %i.am = getelementptr inbounds nuw i8, ptr %.1457330, i64 96
  %i.an = load <8 x float>, ptr %i.am, align 32, !tbaa !116
  %i.ao = getelementptr inbounds nuw i8, ptr %.1457330, i64 128
  %i.ap = load <8 x float>, ptr %i.ao, align 32, !tbaa !116
  %i.aq = getelementptr inbounds nuw i8, ptr %.1457330, i64 160
  %i.ar = load <8 x float>, ptr %i.aq, align 32, !tbaa !116
  %i.as = getelementptr inbounds nuw i8, ptr %.1457330, i64 192
  %i.at = load <8 x float>, ptr %i.as, align 32, !tbaa !116
  %i.au = getelementptr inbounds nuw i8, ptr %.1457330, i64 224
  %i.av = load <8 x float>, ptr %i.au, align 32, !tbaa !116
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph331
  %.0233 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.av, %bb.b ] ; 2 uses
  %.0231 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.at, %bb.b ] ; 2 uses
  %.0229 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.ar, %bb.b ] ; 2 uses
  %.0227 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.ap, %bb.b ] ; 2 uses
  %.0225 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.an, %bb.b ] ; 2 uses
  %.0223 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.al, %bb.b ] ; 2 uses
  %.0221 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.aj, %bb.b ] ; 2 uses
  %.0219 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.ah, %bb.b ] ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.1465319 = phi ptr [ %i.bt, %.lr.ph ], [ %.0464329, %bb.c ] ; 2 uses
  %.0522318 = phi ptr [ %i.bs, %.lr.ph ], [ %.0454410, %bb.c ] ; 2 uses
  %.0523317 = phi i32 [ %i.bu, %.lr.ph ], [ 0, %bb.c ]
  %.1220316 = phi <8 x float> [ %i.bk, %.lr.ph ], [ %.0219, %bb.c ]
  %.1222315 = phi <8 x float> [ %i.bl, %.lr.ph ], [ %.0221, %bb.c ]
  %.1224314 = phi <8 x float> [ %i.bm, %.lr.ph ], [ %.0223, %bb.c ]
  %.1226313 = phi <8 x float> [ %i.bn, %.lr.ph ], [ %.0225, %bb.c ]
  %.1228312 = phi <8 x float> [ %i.bo, %.lr.ph ], [ %.0227, %bb.c ]
  %.1230311 = phi <8 x float> [ %i.bp, %.lr.ph ], [ %.0229, %bb.c ]
  %.1232310 = phi <8 x float> [ %i.bq, %.lr.ph ], [ %.0231, %bb.c ]
  %.1234309 = phi <8 x float> [ %i.br, %.lr.ph ], [ %.0233, %bb.c ]
  %i.aw = load <8 x i16>, ptr %.0522318, align 1, !tbaa !116 ; 2 uses
  %i.ax = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ay = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.az = shufflevector <8 x i16> %i.ax, <8 x i16> %i.ay, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ba = bitcast <16 x i16> %i.az to <8 x float> ; 5 uses
  %i.bb = load <8 x i16>, ptr %.1465319, align 1, !tbaa !116 ; 2 uses
  %i.bc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bd = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.be = shufflevector <8 x i16> %i.bc, <8 x i16> %i.bd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bf = bitcast <16 x i16> %i.be to <8 x float> ; 4 uses
  %i.bg = shufflevector <8 x float> %i.ba, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 4 uses
  %i.bh = shufflevector <8 x float> %i.bf, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.bi = shufflevector <8 x float> %i.bf, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 3 uses
  %i.bj = shufflevector <8 x float> %i.bi, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.bk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.bf, <8 x float> nofpclass(nan inf) %.1220316) ; 2 uses
  %i.bl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.bh, <8 x float> nofpclass(nan inf) %.1222315) ; 2 uses
  %i.bm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.bf, <8 x float> nofpclass(nan inf) %.1224314) ; 2 uses
  %i.bn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.bh, <8 x float> nofpclass(nan inf) %.1226313) ; 2 uses
  %i.bo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.bi, <8 x float> nofpclass(nan inf) %.1228312) ; 2 uses
  %i.bp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.bj, <8 x float> nofpclass(nan inf) %.1230311) ; 2 uses
  %i.bq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.bi, <8 x float> nofpclass(nan inf) %.1232310) ; 2 uses
  %i.br = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.bj, <8 x float> nofpclass(nan inf) %.1234309) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0522318, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.1465319, i64 16
  %i.bu = add nuw nsw i32 %.0523317, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bu, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1187

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bv = getelementptr i8, ptr %.0464329, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.bv, i64 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.1234.lcssa = phi <8 x float> [ %.0233, %bb.c ], [ %i.br, %._crit_edge.loopexit ]
  %.1232.lcssa = phi <8 x float> [ %.0231, %bb.c ], [ %i.bq, %._crit_edge.loopexit ]
  %.1230.lcssa = phi <8 x float> [ %.0229, %bb.c ], [ %i.bp, %._crit_edge.loopexit ]
  %.1228.lcssa = phi <8 x float> [ %.0227, %bb.c ], [ %i.bo, %._crit_edge.loopexit ]
  %.1226.lcssa = phi <8 x float> [ %.0225, %bb.c ], [ %i.bn, %._crit_edge.loopexit ]
  %.1224.lcssa = phi <8 x float> [ %.0223, %bb.c ], [ %i.bm, %._crit_edge.loopexit ]
  %.1222.lcssa = phi <8 x float> [ %.0221, %bb.c ], [ %i.bl, %._crit_edge.loopexit ]
  %.1220.lcssa = phi <8 x float> [ %.0219, %bb.c ], [ %i.bk, %._crit_edge.loopexit ]
  %.1465.lcssa = phi ptr [ %.0464329, %bb.c ], [ %scevgep, %._crit_edge.loopexit ] ; 2 uses
  store <8 x float> %.1220.lcssa, ptr %.1457330, align 32, !tbaa !116
  %i.bw = getelementptr inbounds nuw i8, ptr %.1457330, i64 32
  store <8 x float> %.1222.lcssa, ptr %i.bw, align 32, !tbaa !116
  %i.bx = getelementptr inbounds nuw i8, ptr %.1457330, i64 64
  store <8 x float> %.1224.lcssa, ptr %i.bx, align 32, !tbaa !116
  %i.by = getelementptr inbounds nuw i8, ptr %.1457330, i64 96
  store <8 x float> %.1226.lcssa, ptr %i.by, align 32, !tbaa !116
  %i.bz = getelementptr inbounds nuw i8, ptr %.1457330, i64 128
  store <8 x float> %.1228.lcssa, ptr %i.bz, align 32, !tbaa !116
  %i.ca = getelementptr inbounds nuw i8, ptr %.1457330, i64 160
  store <8 x float> %.1230.lcssa, ptr %i.ca, align 32, !tbaa !116
  %i.cb = getelementptr inbounds nuw i8, ptr %.1457330, i64 192
  store <8 x float> %.1232.lcssa, ptr %i.cb, align 32, !tbaa !116
  %i.cc = getelementptr inbounds nuw i8, ptr %.1457330, i64 224
  store <8 x float> %.1234.lcssa, ptr %i.cc, align 32, !tbaa !116
  %i.cd = getelementptr inbounds nuw i8, ptr %.1457330, i64 256 ; 2 uses
  %i.ce = add nuw nsw i32 %.0518328, 8            ; 2 uses
  %i.cf = or disjoint i32 %i.ce, 7
  %i.cg = icmp slt i32 %i.cf, %1
  br i1 %i.cg, label %.lr.ph331, label %.preheader307, !llvm.loop !1188

.preheader306:                                    ; preds = %._crit_edge344, %.preheader307
  %.1519.lcssa = phi i32 [ %.0518.lcssa, %.preheader307 ], [ %i.ey, %._crit_edge344 ] ; 7 uses
  %.2466.lcssa = phi ptr [ %.0464.lcssa, %.preheader307 ], [ %.3467.lcssa, %._crit_edge344 ] ; 4 uses
  %.2458.lcssa = phi ptr [ %.1457.lcssa, %.preheader307 ], [ %i.ex, %._crit_edge344 ] ; 5 uses
  %i.ch = or disjoint i32 %.1519.lcssa, 1
  %i.ci = icmp slt i32 %i.ch, %1
  br i1 %i.ci, label %.lr.ph371, label %.preheader305

.lr.ph371:                                        ; preds = %.preheader306
  br i1 %i.c, label %.lr.ph371.split.us, label %.lr.ph371.split

.lr.ph371.split.us:                               ; preds = %.lr.ph371, %._crit_edge364.us
  %.3459370.us = phi ptr [ %i.dg, %._crit_edge364.us ], [ %.2458.lcssa, %.lr.ph371 ] ; 5 uses
  %.4468369.us = phi ptr [ %scevgep910, %._crit_edge364.us ], [ %.2466.lcssa, %.lr.ph371 ] ; 2 uses
  %.2520368.us = phi i32 [ %i.dh, %._crit_edge364.us ], [ %.1519.lcssa, %.lr.ph371 ]
  br i1 %.not594, label %.lr.ph363.us.preheader, label %bb.d

bb.d:                                             ; preds = %.lr.ph371.split.us
  %i.cj = load <8 x float>, ptr %.3459370.us, align 32, !tbaa !116
  %i.ck = getelementptr inbounds nuw i8, ptr %.3459370.us, i64 32
  %i.cl = load <8 x float>, ptr %i.ck, align 32, !tbaa !116
  br label %.lr.ph363.us.preheader

.lr.ph363.us.preheader:                           ; preds = %bb.d, %.lr.ph371.split.us
  %.1244358.us.ph = phi <8 x float> [ zeroinitializer, %.lr.ph371.split.us ], [ %i.cj, %bb.d ]
  %.1246357.us.ph = phi <8 x float> [ zeroinitializer, %.lr.ph371.split.us ], [ %i.cl, %bb.d ]
  br label %.lr.ph363.us

.lr.ph363.us:                                     ; preds = %.lr.ph363.us.preheader, %.lr.ph363.us
  %.5469361.us = phi ptr [ %i.dc, %.lr.ph363.us ], [ %.4468369.us, %.lr.ph363.us.preheader ] ; 2 uses
  %.0573360.us = phi i32 [ %i.dd, %.lr.ph363.us ], [ 0, %.lr.ph363.us.preheader ]
  %.0574359.us = phi ptr [ %i.db, %.lr.ph363.us ], [ %.0454410, %.lr.ph363.us.preheader ] ; 2 uses
  %.1244358.us = phi <8 x float> [ %i.cz, %.lr.ph363.us ], [ %.1244358.us.ph, %.lr.ph363.us.preheader ]
  %.1246357.us = phi <8 x float> [ %i.da, %.lr.ph363.us ], [ %.1246357.us.ph, %.lr.ph363.us.preheader ]
  %i.cm = load <8 x i16>, ptr %.0574359.us, align 1, !tbaa !116 ; 2 uses
  %i.cn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.co = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cp = shufflevector <8 x i16> %i.cn, <8 x i16> %i.co, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cq = bitcast <16 x i16> %i.cp to <8 x float> ; 2 uses
  %i.cr = load float, ptr %.5469361.us, align 1, !tbaa !116
  %i.cs = insertelement <4 x float> poison, float %i.cr, i64 0
  %i.ct = bitcast <4 x float> %i.cs to <8 x i16>  ; 2 uses
  %i.cu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ct, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.cv = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ct, <8 x i32> <i32 4, i32 8, i32 5, i32 9, i32 6, i32 8, i32 7, i32 9>
  %i.cw = shufflevector <8 x i16> %i.cu, <8 x i16> %i.cv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cx = bitcast <16 x i16> %i.cw to <8 x float> ; 2 uses
  %i.cy = shufflevector <8 x float> %i.cx, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.cz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cq, <8 x float> nofpclass(nan inf) %i.cx, <8 x float> nofpclass(nan inf) %.1244358.us) ; 2 uses
  %i.da = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cq, <8 x float> nofpclass(nan inf) %i.cy, <8 x float> nofpclass(nan inf) %.1246357.us) ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0574359.us, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %.5469361.us, i64 4
  %i.dd = add nuw nsw i32 %.0573360.us, 1         ; 2 uses
  %exitcond911.not = icmp eq i32 %i.dd, %3
  br i1 %exitcond911.not, label %._crit_edge364.us, label %.lr.ph363.us, !llvm.loop !1189

._crit_edge364.us:                                ; preds = %.lr.ph363.us
  %i.de = getelementptr i8, ptr %.4468369.us, i64 %i.k
  %scevgep910 = getelementptr i8, ptr %i.de, i64 4 ; 2 uses
  store <8 x float> %i.cz, ptr %.3459370.us, align 32, !tbaa !116
  %i.df = getelementptr inbounds nuw i8, ptr %.3459370.us, i64 32
  store <8 x float> %i.da, ptr %i.df, align 32, !tbaa !116
  %i.dg = getelementptr inbounds nuw i8, ptr %.3459370.us, i64 64 ; 2 uses
  %i.dh = add nuw nsw i32 %.2520368.us, 2         ; 3 uses
  %i.di = or disjoint i32 %i.dh, 1
  %i.dj = icmp slt i32 %i.di, %1
  br i1 %i.dj, label %.lr.ph371.split.us, label %.preheader305, !llvm.loop !1190

.lr.ph371.split:                                  ; preds = %.lr.ph371
  br i1 %.not594, label %.lr.ph371.split.split.us.preheader, label %.lr.ph371.split.split

.lr.ph371.split.split.us.preheader:               ; preds = %.lr.ph371.split
  %4 = add i32 %.1519.lcssa, 3
  %smax = tail call i32 @llvm.smax.i32(i32 %1, i32 %4)
  %5 = add i32 %smax, -2
  %i.dk = sub i32 %5, %.1519.lcssa                ; 2 uses
  %i.dl = lshr i32 %i.dk, 1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 6                ; 2 uses
  %i.do = add nuw nsw i64 %i.dn, 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1) %.2458.lcssa, i8 0, i64 %i.do, i1 false), !tbaa !116
  %scevgep907 = getelementptr i8, ptr %.2458.lcssa, i64 64
  %scevgep909 = getelementptr i8, ptr %scevgep907, i64 %i.dn
  %i.dp = add i32 %.1519.lcssa, 2
  %i.dq = and i32 %i.dk, -2
  %i.dr = add i32 %i.dp, %i.dq
  br label %.preheader305

.lr.ph353:                                        ; preds = %.preheader307, %._crit_edge344
  %.2458352 = phi ptr [ %i.ex, %._crit_edge344 ], [ %.1457.lcssa, %.preheader307 ] ; 9 uses
  %.2466351 = phi ptr [ %.3467.lcssa, %._crit_edge344 ], [ %.0464.lcssa, %.preheader307 ] ; 3 uses
  %.1519350 = phi i32 [ %i.ey, %._crit_edge344 ], [ %.0518.lcssa, %.preheader307 ]
  br i1 %.not594, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph353
  %i.ds = load <8 x float>, ptr %.2458352, align 32, !tbaa !116
  %i.dt = getelementptr inbounds nuw i8, ptr %.2458352, i64 32
  %i.du = load <8 x float>, ptr %i.dt, align 32, !tbaa !116
  %i.dv = getelementptr inbounds nuw i8, ptr %.2458352, i64 64
  %i.dw = load <8 x float>, ptr %i.dv, align 32, !tbaa !116
  %i.dx = getelementptr inbounds nuw i8, ptr %.2458352, i64 96
  %i.dy = load <8 x float>, ptr %i.dx, align 32, !tbaa !116
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph353
  %.0241 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph353 ], [ %i.dy, %bb.e ] ; 2 uses
  %.0239 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph353 ], [ %i.dw, %bb.e ] ; 2 uses
  %.0237 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph353 ], [ %i.du, %bb.e ] ; 2 uses
  %.0235 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph353 ], [ %i.ds, %bb.e ] ; 2 uses
  br i1 %i.c, label %.lr.ph343, label %._crit_edge344

.lr.ph343:                                        ; preds = %bb.f, %.lr.ph343
  %.3467341 = phi ptr [ %i.er, %.lr.ph343 ], [ %.2466351, %bb.f ] ; 2 uses
  %.0524340 = phi ptr [ %i.eq, %.lr.ph343 ], [ %.0454410, %bb.f ] ; 2 uses
  %.0575339 = phi i32 [ %i.es, %.lr.ph343 ], [ 0, %bb.f ]
  %.1236338 = phi <8 x float> [ %i.em, %.lr.ph343 ], [ %.0235, %bb.f ]
  %.1238337 = phi <8 x float> [ %i.en, %.lr.ph343 ], [ %.0237, %bb.f ]
  %.1240336 = phi <8 x float> [ %i.eo, %.lr.ph343 ], [ %.0239, %bb.f ]
  %.1242335 = phi <8 x float> [ %i.ep, %.lr.ph343 ], [ %.0241, %bb.f ]
  %i.dz = load <8 x i16>, ptr %.0524340, align 1, !tbaa !116 ; 2 uses
  %i.ea = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.dz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ec = shufflevector <8 x i16> %i.ea, <8 x i16> %i.eb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ed = bitcast <16 x i16> %i.ec to <8 x float> ; 3 uses
  %i.ee = load i64, ptr %.3467341, align 1, !tbaa !116
  %i.ef = insertelement <2 x i64> poison, i64 %i.ee, i64 0
  %i.eg = bitcast <2 x i64> %i.ef to <8 x i16>
  %i.eh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ei = bitcast <8 x i16> %i.eh to <4 x float>  ; 2 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ek = shufflevector <8 x float> %i.ed, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.el = shufflevector <4 x float> %i.ei, <4 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.em = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ed, <8 x float> nofpclass(nan inf) %i.ej, <8 x float> nofpclass(nan inf) %.1236338) ; 2 uses
  %i.en = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ed, <8 x float> nofpclass(nan inf) %i.el, <8 x float> nofpclass(nan inf) %.1238337) ; 2 uses
  %i.eo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ek, <8 x float> nofpclass(nan inf) %i.ej, <8 x float> nofpclass(nan inf) %.1240336) ; 2 uses
  %i.ep = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ek, <8 x float> nofpclass(nan inf) %i.el, <8 x float> nofpclass(nan inf) %.1242335) ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0524340, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %.3467341, i64 8
  %i.es = add nuw nsw i32 %.0575339, 1            ; 2 uses
  %exitcond906.not = icmp eq i32 %i.es, %3
  br i1 %exitcond906.not, label %._crit_edge344.loopexit, label %.lr.ph343, !llvm.loop !1191

._crit_edge344.loopexit:                          ; preds = %.lr.ph343
  %i.et = getelementptr i8, ptr %.2466351, i64 %i.j
  %scevgep905 = getelementptr i8, ptr %i.et, i64 8
  br label %._crit_edge344

._crit_edge344:                                   ; preds = %._crit_edge344.loopexit, %bb.f
  %.1242.lcssa = phi <8 x float> [ %.0241, %bb.f ], [ %i.ep, %._crit_edge344.loopexit ]
  %.1240.lcssa = phi <8 x float> [ %.0239, %bb.f ], [ %i.eo, %._crit_edge344.loopexit ]
  %.1238.lcssa = phi <8 x float> [ %.0237, %bb.f ], [ %i.en, %._crit_edge344.loopexit ]
  %.1236.lcssa = phi <8 x float> [ %.0235, %bb.f ], [ %i.em, %._crit_edge344.loopexit ]
  %.3467.lcssa = phi ptr [ %.2466351, %bb.f ], [ %scevgep905, %._crit_edge344.loopexit ] ; 2 uses
  store <8 x float> %.1236.lcssa, ptr %.2458352, align 32, !tbaa !116
  %i.eu = getelementptr inbounds nuw i8, ptr %.2458352, i64 32
  store <8 x float> %.1238.lcssa, ptr %i.eu, align 32, !tbaa !116
  %i.ev = getelementptr inbounds nuw i8, ptr %.2458352, i64 64
  store <8 x float> %.1240.lcssa, ptr %i.ev, align 32, !tbaa !116
  %i.ew = getelementptr inbounds nuw i8, ptr %.2458352, i64 96
  store <8 x float> %.1242.lcssa, ptr %i.ew, align 32, !tbaa !116
  %i.ex = getelementptr inbounds nuw i8, ptr %.2458352, i64 128 ; 2 uses
  %i.ey = add nuw nsw i32 %.1519350, 4            ; 3 uses
  %i.ez = or disjoint i32 %i.ey, 3
  %i.fa = icmp slt i32 %i.ez, %1
  br i1 %i.fa, label %.lr.ph353, label %.preheader306, !llvm.loop !1192

.preheader305:                                    ; preds = %.lr.ph371.split.split, %._crit_edge364.us, %.lr.ph371.split.split.us.preheader, %.preheader306
  %.2520.lcssa = phi i32 [ %.1519.lcssa, %.preheader306 ], [ %i.dr, %.lr.ph371.split.split.us.preheader ], [ %i.dh, %._crit_edge364.us ], [ %i.gd, %.lr.ph371.split.split ] ; 4 uses
  %.4468.lcssa = phi ptr [ %.2466.lcssa, %.preheader306 ], [ %.2466.lcssa, %.lr.ph371.split.split.us.preheader ], [ %scevgep910, %._crit_edge364.us ], [ %.2466.lcssa, %.lr.ph371.split.split ]
  %.3459.lcssa = phi ptr [ %.2458.lcssa, %.preheader306 ], [ %scevgep909, %.lr.ph371.split.split.us.preheader ], [ %i.dg, %._crit_edge364.us ], [ %i.gc, %.lr.ph371.split.split ] ; 5 uses
  %i.fb = icmp slt i32 %.2520.lcssa, %1
  br i1 %i.fb, label %.lr.ph399, label %._crit_edge400

.lr.ph399:                                        ; preds = %.preheader305
  br i1 %i.c, label %.lr.ph399.split.us, label %.lr.ph399.split

.lr.ph399.split.us:                               ; preds = %.lr.ph399, %._crit_edge393.us
  %.4398.us = phi ptr [ %i.ft, %._crit_edge393.us ], [ %.3459.lcssa, %.lr.ph399 ] ; 3 uses
  %.6470397.us = phi ptr [ %scevgep916, %._crit_edge393.us ], [ %.4468.lcssa, %.lr.ph399 ] ; 2 uses
  %.3521396.us = phi i32 [ %i.fu, %._crit_edge393.us ], [ %.2520.lcssa, %.lr.ph399 ]
  br i1 %.not594, label %.lr.ph392.us.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph399.split.us
  %i.fc = load <8 x float>, ptr %.4398.us, align 32, !tbaa !116
  br label %.lr.ph392.us.preheader

.lr.ph392.us.preheader:                           ; preds = %bb.g, %.lr.ph399.split.us
  %.1248387.us.ph = phi <8 x float> [ zeroinitializer, %.lr.ph399.split.us ], [ %i.fc, %bb.g ]
  br label %.lr.ph392.us

.lr.ph392.us:                                     ; preds = %.lr.ph392.us.preheader, %.lr.ph392.us
  %.7471390.us = phi ptr [ %i.fq, %.lr.ph392.us ], [ %.6470397.us, %.lr.ph392.us.preheader ] ; 2 uses
  %.0571389.us = phi i32 [ %i.fr, %.lr.ph392.us ], [ 0, %.lr.ph392.us.preheader ]
  %.0572388.us = phi ptr [ %i.fp, %.lr.ph392.us ], [ %.0454410, %.lr.ph392.us.preheader ] ; 2 uses
  %.1248387.us = phi <8 x float> [ %i.fo, %.lr.ph392.us ], [ %.1248387.us.ph, %.lr.ph392.us.preheader ]
  %i.fd = load <8 x i16>, ptr %.0572388.us, align 1, !tbaa !116 ; 2 uses
  %i.fe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ff = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fg = shufflevector <8 x i16> %i.fe, <8 x i16> %i.ff, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fh = bitcast <16 x i16> %i.fg to <8 x float>
  %i.fi = load i16, ptr %.7471390.us, align 2, !tbaa !686
  %i.fj = zext i16 %i.fi to i32
  %i.fk = shl nuw i32 %i.fj, 16
  %i.fl = insertelement <8 x i32> poison, i32 %i.fk, i64 0
  %i.fm = bitcast <8 x i32> %i.fl to <8 x float>
  %i.fn = shufflevector <8 x float> %i.fm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fh, <8 x float> nofpclass(nan inf) %i.fn, <8 x float> nofpclass(nan inf) %.1248387.us) ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0572388.us, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %.7471390.us, i64 2
  %i.fr = add nuw nsw i32 %.0571389.us, 1         ; 2 uses
  %exitcond917.not.a = icmp eq i32 %i.fr, %3
  br i1 %exitcond917.not.a, label %._crit_edge393.us, label %.lr.ph392.us, !llvm.loop !1193

._crit_edge393.us:                                ; preds = %.lr.ph392.us
  %i.fs = getelementptr i8, ptr %.6470397.us, i64 %i.m
  %scevgep916 = getelementptr i8, ptr %i.fs, i64 2
  store <8 x float> %i.fo, ptr %.4398.us, align 32, !tbaa !116
  %i.ft = getelementptr inbounds nuw i8, ptr %.4398.us, i64 32 ; 2 uses
  %i.fu = add nuw nsw i32 %.3521396.us, 1         ; 2 uses
  %exitcond918.not = icmp eq i32 %i.fu, %1
  br i1 %exitcond918.not, label %._crit_edge400, label %.lr.ph399.split.us, !llvm.loop !1194

.lr.ph399.split:                                  ; preds = %.lr.ph399
  br i1 %.not594, label %.lr.ph399.split.split.us.preheader, label %.lr.ph399.split.split.preheader

.lr.ph399.split.split.preheader:                  ; preds = %.lr.ph399.split
  %scevgep912.a = getelementptr i8, ptr %.3459.lcssa, i64 32
  %i.fv = sub i32 %i.l, %.2520.lcssa
  %i.fw = zext i32 %i.fv to i64
  %i.fx = shl nuw nsw i64 %i.fw, 5
  %scevgep913.a = getelementptr i8, ptr %scevgep912.a, i64 %i.fx
  br label %._crit_edge400

.lr.ph399.split.split.us.preheader:               ; preds = %.lr.ph399.split
  %i.fy = sub i32 %i.l, %.2520.lcssa
  %i.fz = zext i32 %i.fy to i64
  %i.ga = shl nuw nsw i64 %i.fz, 5                ; 2 uses
  %i.gb = add nuw nsw i64 %i.ga, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1) %.3459.lcssa, i8 0, i64 %i.gb, i1 false), !tbaa !116
  %scevgep914.a = getelementptr i8, ptr %.3459.lcssa, i64 32
  %scevgep915 = getelementptr i8, ptr %scevgep914.a, i64 %i.ga
  br label %._crit_edge400

.lr.ph371.split.split:                            ; preds = %.lr.ph371.split, %.lr.ph371.split.split
  %.3459370 = phi ptr [ %i.gc, %.lr.ph371.split.split ], [ %.2458.lcssa, %.lr.ph371.split ]
  %.2520368 = phi i32 [ %i.gd, %.lr.ph371.split.split ], [ %.1519.lcssa, %.lr.ph371.split ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.3459370, i64 64 ; 2 uses
  %i.gd = add nuw nsw i32 %.2520368, 2            ; 3 uses
  %i.ge = or disjoint i32 %i.gd, 1
  %i.gf = icmp slt i32 %i.ge, %1
  br i1 %i.gf, label %.lr.ph371.split.split, label %.preheader305, !llvm.loop !1190

._crit_edge400:                                   ; preds = %._crit_edge393.us, %.lr.ph399.split.split.preheader, %.lr.ph399.split.split.us.preheader, %.preheader305
  %.4.lcssa = phi ptr [ %.3459.lcssa, %.preheader305 ], [ %scevgep915, %.lr.ph399.split.split.us.preheader ], [ %scevgep913.a, %.lr.ph399.split.split.preheader ], [ %i.ft, %._crit_edge393.us ] ; 2 uses
  %i.gg = getelementptr inbounds [2 x i8], ptr %.0454410, i64 %i.e ; 2 uses
  %i.gh = add nuw nsw i32 %.0460408, 8            ; 2 uses
  %i.gi = or disjoint i32 %i.gh, 7
  %i.gj = icmp slt i32 %i.gi, %0
  br i1 %i.gj, label %.preheader308, label %.preheader304.loopexit, !llvm.loop !1195

.preheader303:                                    ; preds = %.preheader303.lr.ph, %._crit_edge503
  %.1455513 = phi ptr [ %.0454.lcssa, %.preheader303.lr.ph ], [ %i.ow, %._crit_edge503 ] ; 7 uses
  %.5512 = phi ptr [ %.0456.lcssa, %.preheader303.lr.ph ], [ %.9.lcssa, %._crit_edge503 ] ; 2 uses
  %.1461511 = phi i32 [ %.0460.lcssa, %.preheader303.lr.ph ], [ %i.ox, %._crit_edge503 ]
  br i1 %i.q, label %.lr.ph433, label %.preheader302

.preheader299:                                    ; preds = %._crit_edge503, %.preheader304
  %.1461.lcssa = phi i32 [ %.0460.lcssa, %.preheader304 ], [ %i.ox, %._crit_edge503 ] ; 3 uses
  %.5.lcssa = phi ptr [ %.0456.lcssa, %.preheader304 ], [ %.9.lcssa, %._crit_edge503 ] ; 2 uses
  %.1455.lcssa = phi ptr [ %.0454.lcssa, %.preheader304 ], [ %i.ow, %._crit_edge503 ] ; 2 uses
  %i.gk = or disjoint i32 %.1461.lcssa, 1
  %i.gl = icmp slt i32 %i.gk, %0
  br i1 %i.gl, label %.preheader298.lr.ph, label %.preheader294

.preheader298.lr.ph:                              ; preds = %.preheader299
  %i.gm = icmp sgt i32 %1, 7
  %.not586 = icmp eq i32 %2, 0                    ; 5 uses
  %i.gn = icmp sgt i32 %3, 0                      ; 4 uses
  %i.go = shl nsw i32 %3, 1
  %i.gp = sext i32 %i.go to i64
  %i.gq = add i32 %1, -8                          ; 2 uses
  %i.gr = and i32 %i.gq, -8
  %i.gs = add i32 %i.gr, 8                        ; 4 uses
  %i.gt = lshr i32 %i.gq, 3
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 6
  %i.gw = add nuw nsw i64 %i.gv, 64               ; 2 uses
  %i.gx = add i32 %3, -1
  %i.gy = zext i32 %i.gx to i64                   ; 4 uses
  %i.gz = shl nuw nsw i64 %i.gy, 4
  %i.ha = shl nuw nsw i64 %i.gy, 3
  %i.hb = shl nuw nsw i64 %i.gy, 2
  %i.hc = shl nuw nsw i64 %i.gy, 1
  %i.hd = add i32 %1, -8                          ; 2 uses
  %i.he = lshr i32 %i.hd, 3
  %i.hf = add nuw nsw i32 %i.he, 1                ; 2 uses
  %xtraiter456 = and i32 %i.hf, 7                 ; 3 uses
  %i.hg = icmp ult i32 %i.hd, 56
  %unroll_iter460 = and i32 %i.hf, 1073741816
  %lcmp.mod457.not = icmp eq i32 %xtraiter456, 0
  %lcmp.mod459 = icmp ne i32 %xtraiter456, 0
  %xtraiter462 = and i32 %3, 1
  %i.hh = icmp eq i32 %3, 1
  %unroll_iter468 = and i32 %3, 2147483646
  %lcmp.mod464.not = icmp eq i32 %xtraiter462, 0
  %lcmp.mod467 = trunc i32 %3 to i1
  %i.hi = zext nneg i32 %3 to i64                 ; 2 uses
  %min.iters.check122 = icmp ult i32 %3, 4
  %n.vec124 = and i64 %i.hi, 2147483644           ; 4 uses
  %i.hj = trunc nuw nsw i64 %n.vec124 to i32
  %i.hk = shl nuw nsw i64 %n.vec124, 2            ; 2 uses
  %cmp.n141 = icmp eq i64 %n.vec124, %i.hi
  %i.hl = zext nneg i32 %3 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %i.hl, 2147483640              ; 5 uses
  %i.hm = trunc nuw nsw i64 %n.vec to i32
  %i.hn = shl nuw nsw i64 %n.vec, 2
  %i.ho = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.hl
  br label %.preheader298

.preheader302:                                    ; preds = %._crit_edge424, %.preheader303
  %.0563.lcssa = phi ptr [ %.0.val1, %.preheader303 ], [ %.1564.lcssa, %._crit_edge424 ] ; 2 uses
  %.0559.lcssa = phi i32 [ 0, %.preheader303 ], [ %i.x, %._crit_edge424 ] ; 3 uses
  %.6.lcssa = phi ptr [ %.5512, %.preheader303 ], [ %i.iw, %._crit_edge424 ] ; 2 uses
  %i.hp = or disjoint i32 %.0559.lcssa, 3
  %i.hq = icmp slt i32 %i.hp, %1
  br i1 %i.hq, label %.lr.ph455, label %.preheader301

.lr.ph433:                                        ; preds = %.preheader303, %._crit_edge424
  %.6432 = phi ptr [ %i.iw, %._crit_edge424 ], [ %.5512, %.preheader303 ] ; 9 uses
  %.0559431 = phi i32 [ %i.ix, %._crit_edge424 ], [ 0, %.preheader303 ]
  %.0563430 = phi ptr [ %.1564.lcssa, %._crit_edge424 ], [ %.0.val1, %.preheader303 ] ; 3 uses
  br i1 %.not590, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph433
  %i.hr = load <8 x float>, ptr %.6432, align 32, !tbaa !116
  %i.hs = getelementptr inbounds nuw i8, ptr %.6432, i64 32
  %i.ht = load <8 x float>, ptr %i.hs, align 32, !tbaa !116
  %i.hu = getelementptr inbounds nuw i8, ptr %.6432, i64 64
  %i.hv = load <8 x float>, ptr %i.hu, align 32, !tbaa !116
  %i.hw = getelementptr inbounds nuw i8, ptr %.6432, i64 96
  %i.hx = load <8 x float>, ptr %i.hw, align 32, !tbaa !116
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph433
  %.0261 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph433 ], [ %i.hx, %bb.h ] ; 2 uses
  %.0259 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph433 ], [ %i.hv, %bb.h ] ; 2 uses
  %.0257 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph433 ], [ %i.ht, %bb.h ] ; 2 uses
  %.0255 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph433 ], [ %i.hr, %bb.h ] ; 2 uses
  br i1 %i.r, label %.lr.ph423, label %._crit_edge424

.lr.ph423:                                        ; preds = %bb.i, %.lr.ph423
  %.0557421 = phi i32 [ %i.ir, %.lr.ph423 ], [ 0, %bb.i ]
  %.0558420 = phi ptr [ %i.ip, %.lr.ph423 ], [ %.1455513, %bb.i ] ; 2 uses
  %.1564419 = phi ptr [ %i.iq, %.lr.ph423 ], [ %.0563430, %bb.i ] ; 2 uses
  %.1256418 = phi <8 x float> [ %i.il, %.lr.ph423 ], [ %.0255, %bb.i ]
  %.1258417 = phi <8 x float> [ %i.im, %.lr.ph423 ], [ %.0257, %bb.i ]
  %.1260416 = phi <8 x float> [ %i.in, %.lr.ph423 ], [ %.0259, %bb.i ]
  %.1262415 = phi <8 x float> [ %i.io, %.lr.ph423 ], [ %.0261, %bb.i ]
  %i.hy = load i64, ptr %.0558420, align 1, !tbaa !116
  %i.hz = insertelement <2 x i64> poison, i64 %i.hy, i64 0
  %i.ia = bitcast <2 x i64> %i.hz to <8 x i16>
  %i.ib = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ia, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ic = bitcast <8 x i16> %i.ib to <4 x float>  ; 2 uses
  %i.id = shufflevector <4 x float> %i.ic, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ie = load <8 x i16>, ptr %.1564419, align 1, !tbaa !116 ; 2 uses
  %i.if = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ie, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ig = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ie, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ih = shufflevector <8 x i16> %i.if, <8 x i16> %i.ig, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ii = bitcast <16 x i16> %i.ih to <8 x float> ; 3 uses
  %i.ij = shufflevector <4 x float> %i.ic, <4 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ik = shufflevector <8 x float> %i.ii, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.il = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.id, <8 x float> nofpclass(nan inf) %i.ii, <8 x float> nofpclass(nan inf) %.1256418) ; 2 uses
  %i.im = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ij, <8 x float> nofpclass(nan inf) %i.ii, <8 x float> nofpclass(nan inf) %.1258417) ; 2 uses
  %i.in = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.id, <8 x float> nofpclass(nan inf) %i.ik, <8 x float> nofpclass(nan inf) %.1260416) ; 2 uses
  %i.io = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ij, <8 x float> nofpclass(nan inf) %i.ik, <8 x float> nofpclass(nan inf) %.1262415) ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.0558420, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %.1564419, i64 16
  %i.ir = add nuw nsw i32 %.0557421, 1            ; 2 uses
  %exitcond920.not = icmp eq i32 %i.ir, %3
  br i1 %exitcond920.not, label %._crit_edge424.loopexit, label %.lr.ph423, !llvm.loop !1196

._crit_edge424.loopexit:                          ; preds = %.lr.ph423
  %i.is = getelementptr i8, ptr %.0563430, i64 %i.w
  %scevgep919 = getelementptr i8, ptr %i.is, i64 16
  br label %._crit_edge424

._crit_edge424:                                   ; preds = %._crit_edge424.loopexit, %bb.i
  %.1262.lcssa = phi <8 x float> [ %.0261, %bb.i ], [ %i.io, %._crit_edge424.loopexit ]
  %.1260.lcssa = phi <8 x float> [ %.0259, %bb.i ], [ %i.in, %._crit_edge424.loopexit ]
  %.1258.lcssa = phi <8 x float> [ %.0257, %bb.i ], [ %i.im, %._crit_edge424.loopexit ]
  %.1256.lcssa = phi <8 x float> [ %.0255, %bb.i ], [ %i.il, %._crit_edge424.loopexit ]
  %.1564.lcssa = phi ptr [ %.0563430, %bb.i ], [ %scevgep919, %._crit_edge424.loopexit ] ; 2 uses
  store <8 x float> %.1256.lcssa, ptr %.6432, align 32, !tbaa !116
  %i.it = getelementptr inbounds nuw i8, ptr %.6432, i64 32
  store <8 x float> %.1258.lcssa, ptr %i.it, align 32, !tbaa !116
  %i.iu = getelementptr inbounds nuw i8, ptr %.6432, i64 64
  store <8 x float> %.1260.lcssa, ptr %i.iu, align 32, !tbaa !116
  %i.iv = getelementptr inbounds nuw i8, ptr %.6432, i64 96
  store <8 x float> %.1262.lcssa, ptr %i.iv, align 32, !tbaa !116
  %i.iw = getelementptr inbounds nuw i8, ptr %.6432, i64 128 ; 2 uses
  %i.ix = add nuw nsw i32 %.0559431, 8            ; 2 uses
  %i.iy = or disjoint i32 %i.ix, 7
  %i.iz = icmp slt i32 %i.iy, %1
  br i1 %i.iz, label %.lr.ph433, label %.preheader302, !llvm.loop !1197

.preheader301:                                    ; preds = %._crit_edge446, %.preheader302
  %.2565.lcssa = phi ptr [ %.0563.lcssa, %.preheader302 ], [ %.3566.lcssa, %._crit_edge446 ] ; 4 uses
  %.1560.lcssa = phi i32 [ %.0559.lcssa, %.preheader302 ], [ %i.mp, %._crit_edge446 ] ; 7 uses
  %.7.lcssa = phi ptr [ %.6.lcssa, %.preheader302 ], [ %i.mo, %._crit_edge446 ] ; 5 uses
  %i.ja = or disjoint i32 %.1560.lcssa, 1
  %i.jb = icmp slt i32 %i.ja, %1
  br i1 %i.jb, label %.lr.ph473, label %.preheader300

.lr.ph473:                                        ; preds = %.preheader301
  br i1 %i.r, label %.lr.ph473.split.us, label %.lr.ph473.split

.lr.ph473.split.us:                               ; preds = %.lr.ph473, %._crit_edge466.us
  %.8472.us = phi ptr [ %i.ky, %._crit_edge466.us ], [ %.7.lcssa, %.lr.ph473 ] ; 5 uses
  %.2561471.us = phi i32 [ %i.kz, %._crit_edge466.us ], [ %.1560.lcssa, %.lr.ph473 ]
  %.4567470.us = phi ptr [ %scevgep927.a, %._crit_edge466.us ], [ %.2565.lcssa, %.lr.ph473 ] ; 3 uses
  br i1 %.not590, label %.lr.ph465.us.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph473.split.us
  %i.jc = load <4 x float>, ptr %.8472.us, align 16, !tbaa !116
  %i.jd = getelementptr inbounds nuw i8, ptr %.8472.us, i64 16
  %i.je = load <4 x float>, ptr %i.jd, align 16, !tbaa !116
  br label %.lr.ph465.us.preheader

.lr.ph465.us.preheader:                           ; preds = %bb.j, %.lr.ph473.split.us
  %.1272460.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph473.split.us ], [ %i.jc, %bb.j ] ; 2 uses
  %.1274459.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph473.split.us ], [ %i.je, %bb.j ] ; 2 uses
  br i1 %i.ad, label %.lr.ph465.us.epil.preheader, label %.lr.ph465.us

.lr.ph465.us:                                     ; preds = %.lr.ph465.us.preheader, %.lr.ph465.us
  %.0554462.us = phi ptr [ %i.kh, %.lr.ph465.us ], [ %.1455513, %.lr.ph465.us.preheader ] ; 3 uses
  %.5568461.us = phi ptr [ %i.ki, %.lr.ph465.us ], [ %.4567470.us, %.lr.ph465.us.preheader ] ; 3 uses
  %.1272460.us = phi <4 x float> [ %i.kf, %.lr.ph465.us ], [ %.1272460.us.ph, %.lr.ph465.us.preheader ]
  %.1274459.us = phi <4 x float> [ %i.kg, %.lr.ph465.us ], [ %.1274459.us.ph, %.lr.ph465.us.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph465.us ], [ 0, %.lr.ph465.us.preheader ]
  %i.jf = load i64, ptr %.0554462.us, align 1, !tbaa !116
  %i.jg = insertelement <2 x i64> poison, i64 %i.jf, i64 0
  %i.jh = bitcast <2 x i64> %i.jg to <8 x i16>
  %i.ji = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jj = bitcast <8 x i16> %i.ji to <4 x float>  ; 2 uses
  %i.jk = load float, ptr %.5568461.us, align 1, !tbaa !116
  %i.jl = insertelement <4 x float> poison, float %i.jk, i64 0
  %i.jm = bitcast <4 x float> %i.jl to <8 x i16>
  %i.jn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.jo = bitcast <8 x i16> %i.jn to <4 x float>  ; 2 uses
  %i.jp = shufflevector <4 x float> %i.jo, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.jq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jj, <4 x float> nofpclass(nan inf) %i.jo, <4 x float> nofpclass(nan inf) %.1272460.us)
  %i.jr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jj, <4 x float> nofpclass(nan inf) %i.jp, <4 x float> nofpclass(nan inf) %.1274459.us)
  %i.js = getelementptr inbounds nuw i8, ptr %.0554462.us, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %.5568461.us, i64 4
  %i.ju = load i64, ptr %i.js, align 1, !tbaa !116
  %i.jv = insertelement <2 x i64> poison, i64 %i.ju, i64 0
  %i.jw = bitcast <2 x i64> %i.jv to <8 x i16>
  %i.jx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jy = bitcast <8 x i16> %i.jx to <4 x float>  ; 2 uses
  %i.jz = load float, ptr %i.jt, align 1, !tbaa !116
  %i.ka = insertelement <4 x float> poison, float %i.jz, i64 0
  %i.kb = bitcast <4 x float> %i.ka to <8 x i16>
  %i.kc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.kd = bitcast <8 x i16> %i.kc to <4 x float>  ; 2 uses
  %i.ke = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.kf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jy, <4 x float> nofpclass(nan inf) %i.kd, <4 x float> nofpclass(nan inf) %i.jq) ; 3 uses
  %i.kg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jy, <4 x float> nofpclass(nan inf) %i.ke, <4 x float> nofpclass(nan inf) %i.jr) ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.0554462.us, i64 16 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.5568461.us, i64 8 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge466.us.unr-lcssa, label %.lr.ph465.us, !llvm.loop !1198

._crit_edge466.us.unr-lcssa:                      ; preds = %.lr.ph465.us
  br i1 %lcmp.mod.not, label %._crit_edge466.us, label %.lr.ph465.us.epil.preheader

.lr.ph465.us.epil.preheader:                      ; preds = %._crit_edge466.us.unr-lcssa, %.lr.ph465.us.preheader
  %.0554462.us.epil.init = phi ptr [ %.1455513, %.lr.ph465.us.preheader ], [ %i.kh, %._crit_edge466.us.unr-lcssa ]
  %.5568461.us.epil.init = phi ptr [ %.4567470.us, %.lr.ph465.us.preheader ], [ %i.ki, %._crit_edge466.us.unr-lcssa ]
  %.1272460.us.epil.init = phi <4 x float> [ %.1272460.us.ph, %.lr.ph465.us.preheader ], [ %i.kf, %._crit_edge466.us.unr-lcssa ]
  %.1274459.us.epil.init = phi <4 x float> [ %.1274459.us.ph, %.lr.ph465.us.preheader ], [ %i.kg, %._crit_edge466.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod449)
  %i.kj = load i64, ptr %.0554462.us.epil.init, align 1, !tbaa !116
  %i.kk = insertelement <2 x i64> poison, i64 %i.kj, i64 0
  %i.kl = bitcast <2 x i64> %i.kk to <8 x i16>
  %i.km = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kn = bitcast <8 x i16> %i.km to <4 x float>  ; 2 uses
  %i.ko = load float, ptr %.5568461.us.epil.init, align 1, !tbaa !116
  %i.kp = insertelement <4 x float> poison, float %i.ko, i64 0
  %i.kq = bitcast <4 x float> %i.kp to <8 x i16>
  %i.kr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.ks = bitcast <8 x i16> %i.kr to <4 x float>  ; 2 uses
  %i.kt = shufflevector <4 x float> %i.ks, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ku = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kn, <4 x float> nofpclass(nan inf) %i.ks, <4 x float> nofpclass(nan inf) %.1272460.us.epil.init)
  %i.kv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kn, <4 x float> nofpclass(nan inf) %i.kt, <4 x float> nofpclass(nan inf) %.1274459.us.epil.init)
  br label %._crit_edge466.us

._crit_edge466.us:                                ; preds = %._crit_edge466.us.unr-lcssa, %.lr.ph465.us.epil.preheader
  %.lcssa415 = phi <4 x float> [ %i.kf, %._crit_edge466.us.unr-lcssa ], [ %i.ku, %.lr.ph465.us.epil.preheader ]
  %.lcssa414 = phi <4 x float> [ %i.kg, %._crit_edge466.us.unr-lcssa ], [ %i.kv, %.lr.ph465.us.epil.preheader ]
  %i.kw = getelementptr i8, ptr %.4567470.us, i64 %i.z
  %scevgep927.a = getelementptr i8, ptr %i.kw, i64 4 ; 2 uses
  store <4 x float> %.lcssa415, ptr %.8472.us, align 16, !tbaa !116
  %i.kx = getelementptr inbounds nuw i8, ptr %.8472.us, i64 16
  store <4 x float> %.lcssa414, ptr %i.kx, align 16, !tbaa !116
  %i.ky = getelementptr inbounds nuw i8, ptr %.8472.us, i64 32 ; 2 uses
  %i.kz = add nuw nsw i32 %.2561471.us, 2         ; 3 uses
  %i.la = or disjoint i32 %i.kz, 1
  %i.lb = icmp slt i32 %i.la, %1
  br i1 %i.lb, label %.lr.ph473.split.us, label %.preheader300, !llvm.loop !1199

.lr.ph473.split:                                  ; preds = %.lr.ph473
  br i1 %.not590, label %.lr.ph473.split.split.us.preheader, label %.lr.ph473.split.split

.lr.ph473.split.split.us.preheader:               ; preds = %.lr.ph473.split
  %6 = add i32 %.1560.lcssa, 3
  %smax923 = tail call i32 @llvm.smax.i32(i32 %1, i32 %6)
  %7 = add i32 %smax923, -2
  %i.lc = sub i32 %7, %.1560.lcssa                ; 2 uses
  %i.ld = lshr i32 %i.lc, 1
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = shl nuw nsw i64 %i.le, 5                ; 2 uses
  %i.lg = add nuw nsw i64 %i.lf, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.7.lcssa, i8 0, i64 %i.lg, i1 false), !tbaa !116
  %scevgep924 = getelementptr i8, ptr %.7.lcssa, i64 32
  %scevgep926.a = getelementptr i8, ptr %scevgep924, i64 %i.lf
  %i.lh = add i32 %.1560.lcssa, 2
  %i.li = and i32 %i.lc, -2
  %i.lj = add i32 %i.lh, %i.li
  br label %.preheader300

.lr.ph455:                                        ; preds = %.preheader302, %._crit_edge446
  %.7454 = phi ptr [ %i.mo, %._crit_edge446 ], [ %.6.lcssa, %.preheader302 ] ; 9 uses
  %.1560453 = phi i32 [ %i.mp, %._crit_edge446 ], [ %.0559.lcssa, %.preheader302 ]
  %.2565452 = phi ptr [ %.3566.lcssa, %._crit_edge446 ], [ %.0563.lcssa, %.preheader302 ] ; 3 uses
  br i1 %.not590, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph455
  %i.lk = load <4 x float>, ptr %.7454, align 16, !tbaa !116
  %i.ll = getelementptr inbounds nuw i8, ptr %.7454, i64 16
  %i.lm = load <4 x float>, ptr %i.ll, align 16, !tbaa !116
  %i.ln = getelementptr inbounds nuw i8, ptr %.7454, i64 32
  %i.lo = load <4 x float>, ptr %i.ln, align 16, !tbaa !116
  %i.lp = getelementptr inbounds nuw i8, ptr %.7454, i64 48
  %i.lq = load <4 x float>, ptr %i.lp, align 16, !tbaa !116
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph455
  %.0269 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph455 ], [ %i.lq, %bb.k ] ; 2 uses
  %.0267 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph455 ], [ %i.lo, %bb.k ] ; 2 uses
  %.0265 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph455 ], [ %i.lm, %bb.k ] ; 2 uses
  %.0263 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph455 ], [ %i.lk, %bb.k ] ; 2 uses
  br i1 %i.r, label %.lr.ph445, label %._crit_edge446

.lr.ph445:                                        ; preds = %bb.l, %.lr.ph445
  %.0555443 = phi i32 [ %i.mj, %.lr.ph445 ], [ 0, %bb.l ]
  %.0556442 = phi ptr [ %i.mh, %.lr.ph445 ], [ %.1455513, %bb.l ] ; 2 uses
  %.3566441 = phi ptr [ %i.mi, %.lr.ph445 ], [ %.2565452, %bb.l ] ; 2 uses
  %.1264440 = phi <4 x float> [ %i.md, %.lr.ph445 ], [ %.0263, %bb.l ]
  %.1266439 = phi <4 x float> [ %i.me, %.lr.ph445 ], [ %.0265, %bb.l ]
  %.1268438 = phi <4 x float> [ %i.mf, %.lr.ph445 ], [ %.0267, %bb.l ]
  %.1270437 = phi <4 x float> [ %i.mg, %.lr.ph445 ], [ %.0269, %bb.l ]
  %i.lr = load i64, ptr %.0556442, align 1, !tbaa !116
  %i.ls = insertelement <2 x i64> poison, i64 %i.lr, i64 0
  %i.lt = bitcast <2 x i64> %i.ls to <8 x i16>
  %i.lu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lv = bitcast <8 x i16> %i.lu to <4 x float>  ; 3 uses
  %i.lw = load i64, ptr %.3566441, align 1, !tbaa !116
  %i.lx = insertelement <2 x i64> poison, i64 %i.lw, i64 0
  %i.ly = bitcast <2 x i64> %i.lx to <8 x i16>
  %i.lz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ly, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ma = bitcast <8 x i16> %i.lz to <4 x float>  ; 3 uses
  %i.mb = shufflevector <4 x float> %i.lv, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.mc = shufflevector <4 x float> %i.ma, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.md = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lv, <4 x float> nofpclass(nan inf) %i.ma, <4 x float> nofpclass(nan inf) %.1264440) ; 2 uses
  %i.me = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lv, <4 x float> nofpclass(nan inf) %i.mc, <4 x float> nofpclass(nan inf) %.1266439) ; 2 uses
  %i.mf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mb, <4 x float> nofpclass(nan inf) %i.ma, <4 x float> nofpclass(nan inf) %.1268438) ; 2 uses
  %i.mg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mb, <4 x float> nofpclass(nan inf) %i.mc, <4 x float> nofpclass(nan inf) %.1270437) ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0556442, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %.3566441, i64 8
  %i.mj = add nuw nsw i32 %.0555443, 1            ; 2 uses
  %exitcond922.not = icmp eq i32 %i.mj, %3
  br i1 %exitcond922.not, label %._crit_edge446.loopexit, label %.lr.ph445, !llvm.loop !1200

._crit_edge446.loopexit:                          ; preds = %.lr.ph445
  %i.mk = getelementptr i8, ptr %.2565452, i64 %i.y
  %scevgep921 = getelementptr i8, ptr %i.mk, i64 8
  br label %._crit_edge446

._crit_edge446:                                   ; preds = %._crit_edge446.loopexit, %bb.l
  %.1270.lcssa = phi <4 x float> [ %.0269, %bb.l ], [ %i.mg, %._crit_edge446.loopexit ]
  %.1268.lcssa = phi <4 x float> [ %.0267, %bb.l ], [ %i.mf, %._crit_edge446.loopexit ]
  %.1266.lcssa = phi <4 x float> [ %.0265, %bb.l ], [ %i.me, %._crit_edge446.loopexit ]
  %.1264.lcssa = phi <4 x float> [ %.0263, %bb.l ], [ %i.md, %._crit_edge446.loopexit ]
  %.3566.lcssa = phi ptr [ %.2565452, %bb.l ], [ %scevgep921, %._crit_edge446.loopexit ] ; 2 uses
  store <4 x float> %.1264.lcssa, ptr %.7454, align 16, !tbaa !116
  %i.ml = getelementptr inbounds nuw i8, ptr %.7454, i64 16
  store <4 x float> %.1266.lcssa, ptr %i.ml, align 16, !tbaa !116
  %i.mm = getelementptr inbounds nuw i8, ptr %.7454, i64 32
  store <4 x float> %.1268.lcssa, ptr %i.mm, align 16, !tbaa !116
  %i.mn = getelementptr inbounds nuw i8, ptr %.7454, i64 48
  store <4 x float> %.1270.lcssa, ptr %i.mn, align 16, !tbaa !116
  %i.mo = getelementptr inbounds nuw i8, ptr %.7454, i64 64 ; 2 uses
  %i.mp = add nuw nsw i32 %.1560453, 4            ; 3 uses
  %i.mq = or disjoint i32 %i.mp, 3
  %i.mr = icmp slt i32 %i.mq, %1
  br i1 %i.mr, label %.lr.ph455, label %.preheader301, !llvm.loop !1201

.preheader300:                                    ; preds = %.lr.ph473.split.split, %._crit_edge466.us, %.lr.ph473.split.split.us.preheader, %.preheader301
  %.4567.lcssa = phi ptr [ %.2565.lcssa, %.preheader301 ], [ %scevgep927.a, %._crit_edge466.us ], [ %.2565.lcssa, %.lr.ph473.split.split.us.preheader ], [ %.2565.lcssa, %.lr.ph473.split.split ]
  %.2561.lcssa = phi i32 [ %.1560.lcssa, %.preheader301 ], [ %i.kz, %._crit_edge466.us ], [ %i.lj, %.lr.ph473.split.split.us.preheader ], [ %i.ot, %.lr.ph473.split.split ] ; 4 uses
  %.8.lcssa = phi ptr [ %.7.lcssa, %.preheader301 ], [ %i.ky, %._crit_edge466.us ], [ %scevgep926.a, %.lr.ph473.split.split.us.preheader ], [ %i.os, %.lr.ph473.split.split ] ; 5 uses
  %i.ms = icmp slt i32 %.2561.lcssa, %1
  br i1 %i.ms, label %.lr.ph502, label %._crit_edge503

.lr.ph502:                                        ; preds = %.preheader300
  br i1 %i.r, label %.lr.ph502.split.us, label %.lr.ph502.split

.lr.ph502.split.us:                               ; preds = %.lr.ph502, %._crit_edge496.us
  %.9501.us = phi ptr [ %i.oj, %._crit_edge496.us ], [ %.8.lcssa, %.lr.ph502 ] ; 3 uses
  %.3562500.us = phi i32 [ %i.ok, %._crit_edge496.us ], [ %.2561.lcssa, %.lr.ph502 ]
  %.6569499.us = phi ptr [ %scevgep933.a, %._crit_edge496.us ], [ %.4567.lcssa, %.lr.ph502 ] ; 3 uses
  br i1 %.not590, label %.lr.ph495.us.preheader, label %bb.m

bb.m:                                             ; preds = %.lr.ph502.split.us
  %i.mt = load <4 x float>, ptr %.9501.us, align 16, !tbaa !116
  br label %.lr.ph495.us.preheader

.lr.ph495.us.preheader:                           ; preds = %bb.m, %.lr.ph502.split.us
  %.1276490.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph502.split.us ], [ %i.mt, %bb.m ] ; 2 uses
  br i1 %i.ae, label %.lr.ph495.us.epil.preheader, label %.lr.ph495.us

.lr.ph495.us:                                     ; preds = %.lr.ph495.us.preheader, %.lr.ph495.us
  %.0552492.us = phi ptr [ %i.nu, %.lr.ph495.us ], [ %.1455513, %.lr.ph495.us.preheader ] ; 3 uses
  %.7570491.us = phi ptr [ %i.nv, %.lr.ph495.us ], [ %.6569499.us, %.lr.ph495.us.preheader ] ; 3 uses
  %.1276490.us = phi <4 x float> [ %i.nt, %.lr.ph495.us ], [ %.1276490.us.ph, %.lr.ph495.us.preheader ]
  %niter455 = phi i32 [ %niter455.next.1, %.lr.ph495.us ], [ 0, %.lr.ph495.us.preheader ]
  %i.mu = load i64, ptr %.0552492.us, align 1, !tbaa !116
  %i.mv = insertelement <2 x i64> poison, i64 %i.mu, i64 0
  %i.mw = bitcast <2 x i64> %i.mv to <8 x i16>
  %i.mx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.my = bitcast <8 x i16> %i.mx to <4 x float>
  %i.mz = load i16, ptr %.7570491.us, align 2, !tbaa !686
  %i.na = zext i16 %i.mz to i32
  %i.nb = shl nuw i32 %i.na, 16
  %i.nc = insertelement <4 x i32> poison, i32 %i.nb, i64 0
  %i.nd = bitcast <4 x i32> %i.nc to <4 x float>
  %i.ne = shufflevector <4 x float> %i.nd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.my, <4 x float> nofpclass(nan inf) %i.ne, <4 x float> nofpclass(nan inf) %.1276490.us)
  %i.ng = getelementptr inbounds nuw i8, ptr %.0552492.us, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %.7570491.us, i64 2
  %i.ni = load i64, ptr %i.ng, align 1, !tbaa !116
  %i.nj = insertelement <2 x i64> poison, i64 %i.ni, i64 0
  %i.nk = bitcast <2 x i64> %i.nj to <8 x i16>
  %i.nl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nm = bitcast <8 x i16> %i.nl to <4 x float>
  %i.nn = load i16, ptr %i.nh, align 2, !tbaa !686
  %i.no = zext i16 %i.nn to i32
  %i.np = shl nuw i32 %i.no, 16
  %i.nq = insertelement <4 x i32> poison, i32 %i.np, i64 0
  %i.nr = bitcast <4 x i32> %i.nq to <4 x float>
  %i.ns = shufflevector <4 x float> %i.nr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nm, <4 x float> nofpclass(nan inf) %i.ns, <4 x float> nofpclass(nan inf) %i.nf) ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.0552492.us, i64 16 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.7570491.us, i64 4 ; 2 uses
  %niter455.next.1 = add nuw nsw i32 %niter455, 2 ; 2 uses
  %niter455.ncmp.1 = icmp eq i32 %niter455.next.1, %unroll_iter454
  br i1 %niter455.ncmp.1, label %._crit_edge496.us.unr-lcssa, label %.lr.ph495.us, !llvm.loop !1202

._crit_edge496.us.unr-lcssa:                      ; preds = %.lr.ph495.us
  br i1 %lcmp.mod451.not, label %._crit_edge496.us, label %.lr.ph495.us.epil.preheader

.lr.ph495.us.epil.preheader:                      ; preds = %._crit_edge496.us.unr-lcssa, %.lr.ph495.us.preheader
  %.0552492.us.epil.init = phi ptr [ %.1455513, %.lr.ph495.us.preheader ], [ %i.nu, %._crit_edge496.us.unr-lcssa ]
  %.7570491.us.epil.init = phi ptr [ %.6569499.us, %.lr.ph495.us.preheader ], [ %i.nv, %._crit_edge496.us.unr-lcssa ]
  %.1276490.us.epil.init = phi <4 x float> [ %.1276490.us.ph, %.lr.ph495.us.preheader ], [ %i.nt, %._crit_edge496.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod453)
  %i.nw = load i64, ptr %.0552492.us.epil.init, align 1, !tbaa !116
  %i.nx = insertelement <2 x i64> poison, i64 %i.nw, i64 0
  %i.ny = bitcast <2 x i64> %i.nx to <8 x i16>
  %i.nz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ny, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.oa = bitcast <8 x i16> %i.nz to <4 x float>
  %i.ob = load i16, ptr %.7570491.us.epil.init, align 2, !tbaa !686
  %i.oc = zext i16 %i.ob to i32
  %i.od = shl nuw i32 %i.oc, 16
  %i.oe = insertelement <4 x i32> poison, i32 %i.od, i64 0
  %i.of = bitcast <4 x i32> %i.oe to <4 x float>
  %i.og = shufflevector <4 x float> %i.of, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oa, <4 x float> nofpclass(nan inf) %i.og, <4 x float> nofpclass(nan inf) %.1276490.us.epil.init)
  br label %._crit_edge496.us

._crit_edge496.us:                                ; preds = %._crit_edge496.us.unr-lcssa, %.lr.ph495.us.epil.preheader
  %.lcssa418 = phi <4 x float> [ %i.nt, %._crit_edge496.us.unr-lcssa ], [ %i.oh, %.lr.ph495.us.epil.preheader ]
  %i.oi = getelementptr i8, ptr %.6569499.us, i64 %i.ab
  %scevgep933.a = getelementptr i8, ptr %i.oi, i64 2
  store <4 x float> %.lcssa418, ptr %.9501.us, align 16, !tbaa !116
  %i.oj = getelementptr inbounds nuw i8, ptr %.9501.us, i64 16 ; 2 uses
  %i.ok = add nuw nsw i32 %.3562500.us, 1         ; 2 uses
  %exitcond935.not.a = icmp eq i32 %i.ok, %1
  br i1 %exitcond935.not.a, label %._crit_edge503, label %.lr.ph502.split.us, !llvm.loop !1203

.lr.ph502.split:                                  ; preds = %.lr.ph502
  br i1 %.not590, label %.lr.ph502.split.split.us.preheader, label %.lr.ph502.split.split.preheader

.lr.ph502.split.split.preheader:                  ; preds = %.lr.ph502.split
  %scevgep929.a = getelementptr i8, ptr %.8.lcssa, i64 16
  %i.ol = sub i32 %i.aa, %.2561.lcssa
  %i.om = zext i32 %i.ol to i64
  %i.on = shl nuw nsw i64 %i.om, 4
  %scevgep930 = getelementptr i8, ptr %scevgep929.a, i64 %i.on
  br label %._crit_edge503

.lr.ph502.split.split.us.preheader:               ; preds = %.lr.ph502.split
  %i.oo = sub i32 %i.aa, %.2561.lcssa
  %i.op = zext i32 %i.oo to i64
  %i.oq = shl nuw nsw i64 %i.op, 4                ; 2 uses
  %i.or = add nuw nsw i64 %i.oq, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.8.lcssa, i8 0, i64 %i.or, i1 false), !tbaa !116
  %scevgep931 = getelementptr i8, ptr %.8.lcssa, i64 16
end_hunk_3
