Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_intersector_hybrid4_bvh4?download=true
inline.NumInlined: 1818
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6embree4sse222BVHNIntersectorKHybridILi4ELi4ELi1ELb1ENS0_24SubdivPatch1IntersectorKILi4EEELb1EE8occludedEPNS_9vint_implILi4EEEPNS_5Accel12IntersectorsERNS_4RayKILi4EEEPNS_15RayQueryContextE:bb.a
  %i.iz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hu, <4 x float> %i.im)
  %i.ja = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ia, <4 x float> %i.is)
  %i.jb = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.iz, <4 x float> %i.ja)
  %i.jc = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ig, <4 x float> %i.iy)
  %i.jd = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jb, <4 x float> %i.jc)
  %i.je = fmul <4 x float> %i.jd, splat (float f0x3F7FFFFA) ; 2 uses
  %i.jf = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hu, <4 x float> %i.im)
  %i.jg = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ia, <4 x float> %i.is)
  %i.jh = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jf, <4 x float> %i.jg)
  %i.ji = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ig, <4 x float> %i.iy)
  %i.jj = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jh, <4 x float> %i.ji)
  %i.jk = fmul <4 x float> %i.jj, splat (float f0x3F800003)
  %i.jl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.je, <4 x float> %i.bb)
  %i.jm = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jk, <4 x float> %.sroa.32.01492)
  %i.jn = fcmp ole <4 x float> %i.jl, %i.jm       ; 2 uses
  %i.jo = bitcast <4 x i1> %i.jn to i4
  %.not1360.2 = icmp eq i4 %i.jo, 0
  br i1 %.not1360.2, label %bb.r, label %bb.p, !prof !70

bb.p:                                             ; preds = %bb.o
  %i.jp = select <4 x i1> %i.jn, <4 x float> %i.je, <4 x float> splat (float +inf) ; 2 uses
  %.not77.2 = icmp eq i64 %.sroa.0128.3.ph.1, 8
  br i1 %.not77.2, label %bb.r, label %bb.q, !prof !70

bb.q:                                             ; preds = %bb.p
  store i64 %.sroa.0128.3.ph.1, ptr %.655.ph.1, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %.655.ph.1, i64 8
  store <4 x float> %.sroa.0122.3.ph.1, ptr %.6.ph.1, align 16
  %i.jr = getelementptr inbounds nuw i8, ptr %.6.ph.1, i64 16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.0128.3.ph.2 = phi i64 [ %i.ho, %bb.p ], [ %i.ho, %bb.q ], [ %.sroa.0128.3.ph.1, %bb.o ] ; 4 uses
  %.sroa.0122.3.ph.2 = phi <4 x float> [ %i.jp, %bb.p ], [ %i.jp, %bb.q ], [ %.sroa.0122.3.ph.1, %bb.o ] ; 3 uses
  %.655.ph.2 = phi ptr [ %.655.ph.1, %bb.p ], [ %i.jq, %bb.q ], [ %.655.ph.1, %bb.o ] ; 5 uses
  %.6.ph.2 = phi ptr [ %.6.ph.1, %bb.p ], [ %i.jr, %bb.q ], [ %.6.ph.1, %bb.o ] ; 5 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.jt = load i64, ptr %i.js, align 8            ; 3 uses
  %.not78.3 = icmp eq i64 %i.jt, 8
  br i1 %.not78.3, label %bb.v, label %bb.s, !prof !70

bb.s:                                             ; preds = %bb.r
  %i.ju = getelementptr inbounds nuw i8, ptr %i.df, i64 44
  %i.jv = load float, ptr %i.ju, align 4, !noalias !3431
  %i.jw = insertelement <4 x float> poison, float %i.jv, i64 0
  %i.jx = shufflevector <4 x float> %i.jw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jy = fsub <4 x float> %i.jx, %i.t
  %i.jz = fmul <4 x float> %i.aq, %i.jy           ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.df, i64 76
  %i.kb = load float, ptr %i.ka, align 4, !noalias !3431
  %i.kc = insertelement <4 x float> poison, float %i.kb, i64 0
  %i.kd = shufflevector <4 x float> %i.kc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ke = fsub <4 x float> %i.kd, %i.v
  %i.kf = fmul <4 x float> %i.as, %i.ke           ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.df, i64 108
  %i.kh = load float, ptr %i.kg, align 4, !noalias !3431
  %i.ki = insertelement <4 x float> poison, float %i.kh, i64 0
  %i.kj = shufflevector <4 x float> %i.ki, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kk = fsub <4 x float> %i.kj, %i.x
  %i.kl = fmul <4 x float> %i.au, %i.kk           ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.df, i64 60
  %i.kn = load float, ptr %i.km, align 4, !noalias !3431
  %i.ko = insertelement <4 x float> poison, float %i.kn, i64 0
  %i.kp = shufflevector <4 x float> %i.ko, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kq = fsub <4 x float> %i.kp, %i.t
  %i.kr = fmul <4 x float> %i.aq, %i.kq           ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.df, i64 92
  %i.kt = load float, ptr %i.ks, align 4, !noalias !3431
  %i.ku = insertelement <4 x float> poison, float %i.kt, i64 0
  %i.kv = shufflevector <4 x float> %i.ku, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kw = fsub <4 x float> %i.kv, %i.v
  %i.kx = fmul <4 x float> %i.as, %i.kw           ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.df, i64 124
  %i.kz = load float, ptr %i.ky, align 4, !noalias !3431
  %i.la = insertelement <4 x float> poison, float %i.kz, i64 0
  %i.lb = shufflevector <4 x float> %i.la, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lc = fsub <4 x float> %i.lb, %i.x
  %i.ld = fmul <4 x float> %i.au, %i.lc           ; 2 uses
  %i.le = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jz, <4 x float> %i.kr)
  %i.lf = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kf, <4 x float> %i.kx)
  %i.lg = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.le, <4 x float> %i.lf)
  %i.lh = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kl, <4 x float> %i.ld)
  %i.li = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.lg, <4 x float> %i.lh)
  %i.lj = fmul <4 x float> %i.li, splat (float f0x3F7FFFFA) ; 2 uses
  %i.lk = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jz, <4 x float> %i.kr)
  %i.ll = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kf, <4 x float> %i.kx)
  %i.lm = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.lk, <4 x float> %i.ll)
  %i.ln = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kl, <4 x float> %i.ld)
  %i.lo = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.lm, <4 x float> %i.ln)
  %i.lp = fmul <4 x float> %i.lo, splat (float f0x3F800003)
  %i.lq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.lj, <4 x float> %i.bb)
  %i.lr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.lp, <4 x float> %.sroa.32.01492)
  %i.ls = fcmp ole <4 x float> %i.lq, %i.lr       ; 2 uses
  %i.lt = bitcast <4 x i1> %i.ls to i4
  %.not1360.3 = icmp eq i4 %i.lt, 0
  br i1 %.not1360.3, label %bb.v, label %bb.t, !prof !70

bb.t:                                             ; preds = %bb.s
  %i.lu = select <4 x i1> %i.ls, <4 x float> %i.lj, <4 x float> splat (float +inf) ; 2 uses
  %.not77.3 = icmp eq i64 %.sroa.0128.3.ph.2, 8
  br i1 %.not77.3, label %.thread, label %bb.u, !prof !70

bb.u:                                             ; preds = %bb.t
  store i64 %.sroa.0128.3.ph.2, ptr %.655.ph.2, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %.655.ph.2, i64 8
  store <4 x float> %.sroa.0122.3.ph.2, ptr %.6.ph.2, align 16
  %i.lw = getelementptr inbounds nuw i8, ptr %.6.ph.2, i64 16
  br label %.thread

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.n, %bb.j
  %.sroa.0128.1.lcssa = phi i64 [ %.sroa.0128.3.ph.2, %bb.s ], [ %.sroa.0128.3.ph.1, %bb.n ], [ %.sroa.0128.3.ph, %bb.j ], [ %.sroa.0128.3.ph.2, %bb.r ] ; 2 uses
  %.sroa.0122.1.lcssa = phi <4 x float> [ %.sroa.0122.3.ph.2, %bb.s ], [ %.sroa.0122.3.ph.1, %bb.n ], [ %.sroa.0122.3.ph, %bb.j ], [ %.sroa.0122.3.ph.2, %bb.r ]
  %.352.lcssa = phi ptr [ %.655.ph.2, %bb.s ], [ %.655.ph.1, %bb.n ], [ %.2511386, %bb.j ], [ %.655.ph.2, %bb.r ] ; 2 uses
  %.3.lcssa = phi ptr [ %.6.ph.2, %bb.s ], [ %.6.ph.1, %bb.n ], [ %.21387, %bb.j ], [ %.6.ph.2, %bb.r ] ; 2 uses
  %i.lx = icmp eq i64 %.sroa.0128.1.lcssa, 8
  br i1 %i.lx, label %.thread1328, label %.thread, !prof !77

.thread:                                          ; preds = %bb.u, %bb.t, %bb.v
  %.3.lcssa1423 = phi ptr [ %.3.lcssa, %bb.v ], [ %i.lw, %bb.u ], [ %.6.ph.2, %bb.t ] ; 4 uses
  %.352.lcssa1422 = phi ptr [ %.352.lcssa, %bb.v ], [ %i.lv, %bb.u ], [ %.655.ph.2, %bb.t ] ; 4 uses
  %.sroa.0122.1.lcssa1421 = phi <4 x float> [ %.sroa.0122.1.lcssa, %bb.v ], [ %i.lu, %bb.u ], [ %i.lu, %bb.t ] ; 3 uses
  %.sroa.0128.1.lcssa1420 = phi i64 [ %.sroa.0128.1.lcssa, %bb.v ], [ %i.jt, %bb.u ], [ %i.jt, %bb.t ] ; 4 uses
  %i.ly = fcmp ugt <4 x float> %.sroa.32.01492, %.sroa.0122.1.lcssa1421
  %i.lz = bitcast <4 x i1> %i.ly to i4            ; 3 uses
  %i.ma = zext i4 %i.lz to i32                    ; 2 uses
  %i.mb = and i4 %i.lz, 1
  %i.mc = lshr i32 %i.ma, 1
  %.lobit = and i32 %i.mc, 1
  %i.md = zext nneg i32 %.lobit to i64
  %i.me = lshr i32 %i.ma, 2
  %.lobit1361 = and i32 %i.me, 1
  %i.mf = zext nneg i32 %.lobit1361 to i64
  %.lobit1362 = lshr i4 %i.lz, 3
  %narrow = add nuw nsw i4 %.lobit1362, %i.mb
  %i.mg = zext nneg i4 %narrow to i64
  %i.mh = add nuw nsw i64 %i.mg, %i.md
  %i.mi = add nuw nsw i64 %i.mh, %i.mf
  %.not79 = icmp samesign ugt i64 %i.mi, %i.bi
  br i1 %.not79, label %bb.i, label %bb.w, !prof !69, !llvm.loop !3352

bb.w:                                             ; preds = %.thread
  %i.mj = getelementptr inbounds nuw i8, ptr %.352.lcssa1422, i64 8
  store i64 %.sroa.0128.1.lcssa1420, ptr %.352.lcssa1422, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %.3.lcssa1423, i64 16
  store <4 x float> %.sroa.0122.1.lcssa1421, ptr %.3.lcssa1423, align 16
  br label %.thread1328

._crit_edge:                                      ; preds = %.preheader1365, %bb.i
  %.sroa.0128.0.lcssa = phi i64 [ %.sroa.0128.1.lcssa1420, %bb.i ], [ %i.cu, %.preheader1365 ] ; 4 uses
  %.sroa.0122.0.lcssa = phi <4 x float> [ %.sroa.0122.1.lcssa1421, %bb.i ], [ %i.cx, %.preheader1365 ]
  %.251.lcssa = phi ptr [ %.352.lcssa1422, %bb.i ], [ %i.cv, %.preheader1365 ] ; 4 uses
  %.2.lcssa = phi ptr [ %.3.lcssa1423, %bb.i ], [ %i.cw, %.preheader1365 ] ; 4 uses
  %i.ml = icmp eq i64 %.sroa.0128.0.lcssa, -8
  br i1 %i.ml, label %.thread1334, label %bb.x, !prof !70

bb.x:                                             ; preds = %._crit_edge
  %i.mm = fcmp ugt <4 x float> %.sroa.32.01492, %.sroa.0122.0.lcssa
  %i.mn = bitcast <4 x i1> %i.mm to i4
  %i.mo = icmp eq i4 %i.mn, 0
  br i1 %i.mo, label %.loopexit.loopexit, label %bb.y, !prof !70, !llvm.loop !3351

bb.y:                                             ; preds = %bb.x
  %i.mp = and i64 %.sroa.0128.0.lcssa, 15
  %i.mq = icmp eq i64 %i.mp, 8
  br i1 %i.mq, label %bb.z, label %bb.ay, !prof !69

bb.z:                                             ; preds = %bb.y
  %i.mr = xor <4 x i32> %i.ct, splat (i32 -1)
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.0169.01491, i64 20
  %i.mt = load i32, ptr %i.ms, align 4, !noalias !3432
  %i.mu = zext i32 %i.mt to i64                   ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0169.01491, i64 12
  %i.mw = load i32, ptr %i.mv, align 4, !noalias !3432 ; 2 uses
  %i.mx = zext i32 %i.mw to i64                   ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0169.01491, i64 36
  %i.mz = load i32, ptr %i.my, align 4, !noalias !3432
  %i.na = zext i32 %i.mz to i64
  %i.nb = getelementptr i8, ptr %.sroa.0169.01491, i64 %i.na
  %i.nc = lshr i64 %.sroa.0128.0.lcssa, 4
  %i.nd = getelementptr [4 x i8], ptr %i.nb, i64 %i.nc
  %i.ne = getelementptr i8, ptr %i.nd, i64 44     ; 7 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.mu ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.mu, 3
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 %.idx.i ; 4 uses
  %.idx79.i = mul nuw nsw i64 %i.mu, 12
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 %.idx79.i ; 6 uses
  %i.ni = icmp eq i32 %i.mw, 2
  %i.nj = select i1 %i.ni, i64 1, i64 2
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0169.01491, i64 16
  %i.nl = load i32, ptr %i.nk, align 8, !noalias !3432
  %i.nm = icmp ne i32 %i.nl, 2
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0169.01491, i64 24 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.0169.01491, i64 28 ; 2 uses
  br label %.preheader1364

.preheader1364:                                   ; preds = %bb.z, %.critedge.i
  %i.np = phi i1 [ %i.nm, %bb.z ], [ false, %.critedge.i ]
  %.078.i1391 = phi i64 [ 0, %bb.z ], [ 1, %.critedge.i ] ; 2 uses
  %i.nq = phi <4 x i32> [ %i.mr, %bb.z ], [ %i.akt, %.critedge.i ]
  %i.nr = mul nuw nsw i64 %.078.i1391, %i.mx      ; 2 uses
  %12 = shl nuw nsw i64 %i.mx, %.078.i1391        ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit, %.preheader1364
  %.0.i1490 = phi i64 [ 0, %.preheader1364 ], [ %i.nu, %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit ] ; 3 uses
  %i.ns = phi <4 x i32> [ %i.nq, %.preheader1364 ], [ %i.akq, %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit ] ; 3 uses
  %i.nt = add nuw nsw i64 %.0.i1490, %i.nr        ; 4 uses
  %i.nu = add nuw nsw i64 %.0.i1490, 1            ; 4 uses
  %i.nv = add nuw nsw i64 %i.nu, %i.nr            ; 5 uses
  %i.nw = add nuw nsw i64 %.0.i1490, %12          ; 5 uses
  %i.nx = add nuw nsw i64 %i.nu, %12              ; 4 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.nt
  %i.nz = load float, ptr %i.ny, align 4, !noalias !3432
  %i.oa = insertelement <4 x float> poison, float %i.nz, i64 0
  %i.ob = shufflevector <4 x float> %i.oa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.nt
  %i.od = load float, ptr %i.oc, align 4, !noalias !3432
  %i.oe = insertelement <4 x float> poison, float %i.od, i64 0
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.nt
  %i.oh = load float, ptr %i.og, align 4, !noalias !3432
  %i.oi = insertelement <4 x float> poison, float %i.oh, i64 0
  %i.oj = shufflevector <4 x float> %i.oi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.nv
  %i.ol = load float, ptr %i.ok, align 4, !noalias !3432
  %i.om = insertelement <4 x float> poison, float %i.ol, i64 0
  %i.on = shufflevector <4 x float> %i.om, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.nv
  %i.op = load float, ptr %i.oo, align 4, !noalias !3432
  %i.oq = insertelement <4 x float> poison, float %i.op, i64 0
  %i.or = shufflevector <4 x float> %i.oq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.nv
  %i.ot = load float, ptr %i.os, align 4, !noalias !3432
  %i.ou = insertelement <4 x float> poison, float %i.ot, i64 0
  %i.ov = shufflevector <4 x float> %i.ou, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.nw
  %i.ox = load float, ptr %i.ow, align 4, !noalias !3432
  %i.oy = insertelement <4 x float> poison, float %i.ox, i64 0
  %i.oz = shufflevector <4 x float> %i.oy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.nw
  %i.pb = load float, ptr %i.pa, align 4, !noalias !3432
  %i.pc = insertelement <4 x float> poison, float %i.pb, i64 0
  %i.pd = shufflevector <4 x float> %i.pc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.nw
  %i.pf = load float, ptr %i.pe, align 4, !noalias !3432
  %i.pg = insertelement <4 x float> poison, float %i.pf, i64 0
  %i.ph = shufflevector <4 x float> %i.pg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.nx
  %i.pj = load float, ptr %i.pi, align 4, !noalias !3432
  %i.pk = insertelement <4 x float> poison, float %i.pj, i64 0
  %i.pl = shufflevector <4 x float> %i.pk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.nx
  %i.pn = load float, ptr %i.pm, align 4, !noalias !3432
  %i.po = insertelement <4 x float> poison, float %i.pn, i64 0
  %i.pp = shufflevector <4 x float> %i.po, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.nx
  %i.pr = load float, ptr %i.pq, align 4, !noalias !3432
  %i.ps = insertelement <4 x float> poison, float %i.pr, i64 0
  %i.pt = shufflevector <4 x float> %i.ps, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pu = load i32, ptr %i.nn, align 8, !noalias !3432 ; 2 uses
  %i.pv = load i32, ptr %i.no, align 4, !noalias !3432
  %i.pw = load <4 x float>, ptr %2, align 16, !noalias !3433 ; 3 uses
  %i.px = load <4 x float>, ptr %i.u, align 16, !noalias !3433 ; 3 uses
  %i.py = load <4 x float>, ptr %i.w, align 16, !noalias !3433 ; 3 uses
  %i.pz = load <4 x float>, ptr %i.s, align 16, !noalias !3433 ; 4 uses
  %i.qa = load <4 x float>, ptr %i.y, align 16, !noalias !3433 ; 4 uses
  %i.qb = load <4 x float>, ptr %i.z, align 16, !noalias !3433 ; 4 uses
  %i.qc = fsub <4 x float> %i.ob, %i.pw           ; 5 uses
  %i.qd = fsub <4 x float> %i.of, %i.px           ; 5 uses
  %i.qe = fsub <4 x float> %i.oj, %i.py           ; 5 uses
  %i.qf = fsub <4 x float> %i.on, %i.pw           ; 4 uses
  %i.qg = fsub <4 x float> %i.or, %i.px           ; 4 uses
  %i.qh = fsub <4 x float> %i.ov, %i.py           ; 4 uses
  %i.qi = fsub <4 x float> %i.oz, %i.pw           ; 4 uses
  %i.qj = fsub <4 x float> %i.pd, %i.px           ; 4 uses
  %i.qk = fsub <4 x float> %i.ph, %i.py           ; 4 uses
  %i.ql = fsub <4 x float> %i.qi, %i.qc           ; 4 uses
  %i.qm = fsub <4 x float> %i.qj, %i.qd           ; 4 uses
  %i.qn = fsub <4 x float> %i.qk, %i.qe           ; 4 uses
  %i.qo = fsub <4 x float> %i.qc, %i.qf           ; 6 uses
  %i.qp = fsub <4 x float> %i.qd, %i.qg           ; 6 uses
  %i.qq = fsub <4 x float> %i.qe, %i.qh           ; 6 uses
  %i.qr = fsub <4 x float> %i.qf, %i.qi           ; 4 uses
  %i.qs = fsub <4 x float> %i.qg, %i.qj           ; 4 uses
  %i.qt = fsub <4 x float> %i.qh, %i.qk           ; 4 uses
  %i.qu = fadd <4 x float> %i.qi, %i.qc           ; 2 uses
  %i.qv = fadd <4 x float> %i.qj, %i.qd           ; 2 uses
  %i.qw = fadd <4 x float> %i.qk, %i.qe           ; 2 uses
  %i.qx = fmul <4 x float> %i.qv, %i.qn
  %i.qy = fmul <4 x float> %i.qm, %i.qw
  %i.qz = fsub <4 x float> %i.qy, %i.qx
  %i.ra = fmul <4 x float> %i.ql, %i.qw
  %i.rb = fmul <4 x float> %i.qu, %i.qn
  %i.rc = fsub <4 x float> %i.rb, %i.ra
  %i.rd = fmul <4 x float> %i.qu, %i.qm
  %i.re = fmul <4 x float> %i.ql, %i.qv
  %i.rf = fsub <4 x float> %i.re, %i.rd
  %i.rg = fmul <4 x float> %i.rf, %i.qb
  %i.rh = fmul <4 x float> %i.qa, %i.rc
  %i.ri = fadd <4 x float> %i.rg, %i.rh
  %i.rj = fmul <4 x float> %i.pz, %i.qz
  %i.rk = fadd <4 x float> %i.rj, %i.ri           ; 4 uses
  %i.rl = fadd <4 x float> %i.qc, %i.qf           ; 2 uses
  %i.rm = fadd <4 x float> %i.qd, %i.qg           ; 2 uses
  %i.rn = fadd <4 x float> %i.qe, %i.qh           ; 2 uses
  %i.ro = fmul <4 x float> %i.rm, %i.qq
  %i.rp = fmul <4 x float> %i.qp, %i.rn
  %i.rq = fsub <4 x float> %i.rp, %i.ro
  %i.rr = fmul <4 x float> %i.qo, %i.rn
  %i.rs = fmul <4 x float> %i.rl, %i.qq
  %i.rt = fsub <4 x float> %i.rs, %i.rr
  %i.ru = fmul <4 x float> %i.rl, %i.qp
  %i.rv = fmul <4 x float> %i.qo, %i.rm
  %i.rw = fsub <4 x float> %i.rv, %i.ru
  %i.rx = fmul <4 x float> %i.rw, %i.qb
  %i.ry = fmul <4 x float> %i.qa, %i.rt
  %i.rz = fadd <4 x float> %i.rx, %i.ry
  %i.sa = fmul <4 x float> %i.pz, %i.rq
  %i.sb = fadd <4 x float> %i.sa, %i.rz           ; 4 uses
  %i.sc = fadd <4 x float> %i.qf, %i.qi           ; 2 uses
  %i.sd = fadd <4 x float> %i.qg, %i.qj           ; 2 uses
  %i.se = fadd <4 x float> %i.qh, %i.qk           ; 2 uses
  %i.sf = fmul <4 x float> %i.sd, %i.qt
  %i.sg = fmul <4 x float> %i.qs, %i.se
  %i.sh = fsub <4 x float> %i.sg, %i.sf
  %i.si = fmul <4 x float> %i.qr, %i.se
  %i.sj = fmul <4 x float> %i.sc, %i.qt
  %i.sk = fsub <4 x float> %i.sj, %i.si
  %i.sl = fmul <4 x float> %i.sc, %i.qs
  %i.sm = fmul <4 x float> %i.qr, %i.sd
  %i.sn = fsub <4 x float> %i.sm, %i.sl
  %i.so = fmul <4 x float> %i.sn, %i.qb
  %i.sp = fmul <4 x float> %i.qa, %i.sk
  %i.sq = fadd <4 x float> %i.so, %i.sp
  %i.sr = fmul <4 x float> %i.pz, %i.sh
  %i.ss = fadd <4 x float> %i.sr, %i.sq           ; 3 uses
  %i.st = fadd <4 x float> %i.rk, %i.sb
  %i.su = fadd <4 x float> %i.ss, %i.st           ; 2 uses
  %i.sv = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.su)
  %i.sw = fmul <4 x float> %i.sv, splat (float f0x34000000) ; 2 uses
  %i.sx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.rk, <4 x float> %i.sb)
  %i.sy = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.sx, <4 x float> %i.ss)
  %i.sz = fneg <4 x float> %i.sw
  %i.ta = fcmp uge <4 x float> %i.sy, %i.sz
  %i.tb = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.rk, <4 x float> %i.sb)
  %i.tc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.tb, <4 x float> %i.ss)
  %i.td = fcmp ole <4 x float> %i.tc, %i.sw
  %i.te = or <4 x i1> %i.ta, %i.td
  %i.tf = select <4 x i1> %i.te, <4 x i32> %i.ns, <4 x i32> zeroinitializer ; 3 uses
  %i.tg = icmp slt <4 x i32> %i.tf, zeroinitializer
  %i.th = bitcast <4 x i1> %i.tg to i4
  %i.ti = icmp eq i4 %i.th, 0
  br i1 %i.ti, label %_ZNK6embree4sse220PlueckerIntersectorKILi4ELi4EE10intersectKINS0_6MapUV0ILi4EEENS0_17OccludedKEpilogMUILi1ELi4ELb1EEEEENS_11vboolf_implILi4EEERKS9_RNS_4RayKILi4EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESK_SK_RKT_RKT0_.exit, label %bb.ab, !prof !70

bb.ab:                                            ; preds = %bb.aa
  %i.tj = fmul <4 x float> %i.qp, %i.qn           ; 2 uses
  %i.tk = fmul <4 x float> %i.ql, %i.qq           ; 2 uses
  %i.tl = fmul <4 x float> %i.qo, %i.qm           ; 2 uses
  %i.tm = fmul <4 x float> %i.qs, %i.qq           ; 2 uses
  %i.tn = fmul <4 x float> %i.qo, %i.qt           ; 2 uses
  %i.to = fmul <4 x float> %i.qr, %i.qp           ; 2 uses
  %i.tp = fmul <4 x float> %i.qm, %i.qq
  %i.tq = fsub <4 x float> %i.tp, %i.tj
  %i.tr = fmul <4 x float> %i.qo, %i.qn
  %i.ts = fsub <4 x float> %i.tr, %i.tk
  %i.tt = fmul <4 x float> %i.ql, %i.qp
  %i.tu = fsub <4 x float> %i.tt, %i.tl
  %i.tv = fmul <4 x float> %i.qp, %i.qt
  %i.tw = fsub <4 x float> %i.tv, %i.tm
  %i.tx = fmul <4 x float> %i.qr, %i.qq
  %i.ty = fsub <4 x float> %i.tx, %i.tn
  %i.tz = fmul <4 x float> %i.qo, %i.qs
  %i.ua = fsub <4 x float> %i.tz, %i.to
  %i.ub = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.tj)
  %i.uc = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.tm)
  %i.ud = fcmp uge <4 x float> %i.ub, %i.uc
  %i.ue = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.tk)
  %i.uf = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.tn)
  %i.ug = fcmp uge <4 x float> %i.ue, %i.uf
  %i.uh = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.tl)
  %i.ui = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.to)
  %i.uj = fcmp uge <4 x float> %i.uh, %i.ui
  %.v = select <4 x i1> %i.ud, <4 x float> %i.tw, <4 x float> %i.tq ; 3 uses
  %.v1344 = select <4 x i1> %i.ug, <4 x float> %i.ty, <4 x float> %i.ts ; 3 uses
  %.v1345 = select <4 x i1> %i.uj, <4 x float> %i.ua, <4 x float> %i.tu ; 3 uses
  %i.uk = fmul <4 x float> %i.qb, %.v1345
  %i.ul = fmul <4 x float> %i.qa, %.v1344
  %i.um = fadd <4 x float> %i.uk, %i.ul
  %i.un = fmul <4 x float> %i.pz, %.v
  %i.uo = fadd <4 x float> %i.un, %i.um           ; 2 uses
  %i.up = fadd <4 x float> %i.uo, %i.uo           ; 3 uses
  %i.uq = fmul <4 x float> %i.qe, %.v1345
  %i.ur = fmul <4 x float> %i.qd, %.v1344
  %i.us = fadd <4 x float> %i.uq, %i.ur
  %i.ut = fmul <4 x float> %i.qc, %.v
  %i.uu = fadd <4 x float> %i.ut, %i.us           ; 2 uses
  %i.uv = fadd <4 x float> %i.uu, %i.uu
  %i.uw = call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.up) ; 3 uses
  %i.ux = fmul <4 x float> %i.up, %i.uw
  %i.uy = fsub <4 x float> splat (float 1.000000e+00), %i.ux
  %i.uz = fmul <4 x float> %i.uw, %i.uy
  %i.va = fadd <4 x float> %i.uw, %i.uz
  %i.vb = fmul <4 x float> %i.uv, %i.va           ; 3 uses
  %i.vc = load <4 x float>, ptr %i.av, align 16, !noalias !3434
  %i.vd = fcmp ole <4 x float> %i.vc, %i.vb
  %i.ve = load <4 x float>, ptr %i.m, align 16, !noalias !3435
  %i.vf = fcmp ole <4 x float> %i.vb, %i.ve
  %i.vg = and <4 x i1> %i.vd, %i.vf
  %i.vh = fcmp une <4 x float> %i.up, zeroinitializer
  %i.vi = select <4 x i1> %i.vh, <4 x i1> %i.vg, <4 x i1> zeroinitializer
  %i.vj = select <4 x i1> %i.vi, <4 x i32> %i.tf, <4 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@_ZN6embree4sse222BVHNIntersectorKHybridILi4ELi4ELi1ELb1ENS0_24SubdivPatch1IntersectorKILi4EEELb1EE8occludedEPNS_9vint_implILi4EEEPNS_5Accel12IntersectorsERNS_4RayKILi4EEEPNS_15RayQueryContextE:bb.a
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 52
  %i.agf = load i32, ptr %i.age, align 4, !noalias !3448
  %i.agg = insertelement <4 x i32> poison, i32 %i.agf, i64 0
  %i.agh = shufflevector <4 x i32> %i.agg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.agi = load <4 x i32>, ptr %i.bm, align 16, !noalias !3449
  %i.agj = and <4 x i32> %i.agh, %i.agi
  %.not1354 = icmp eq <4 x i32> %i.agj, zeroinitializer
  %i.agk = select <4 x i1> %.not1354, <4 x i32> zeroinitializer, <4 x i32> %.sroa.0672.0 ; 6 uses
  %i.agl = icmp slt <4 x i32> %i.agk, zeroinitializer
  %i.agm = bitcast <4 x i1> %i.agl to i4
  %i.agn = icmp eq i4 %i.agm, 0
  br i1 %i.agn, label %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit, label %bb.ao, !prof !70

bb.ao:                                            ; preds = %_ZNK6embree4sse220PlueckerIntersectorKILi4ELi4EE10intersectKINS0_6MapUV1ILi4EEENS0_17OccludedKEpilogMUILi1ELi4ELb1EEEEENS_11vboolf_implILi4EEERKS9_RNS_4RayKILi4EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESK_SK_RKT_RKT0_.exit
  %i.ago = load ptr, ptr %i.bn, align 8, !noalias !3448
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 16
  %i.agq = load ptr, ptr %i.agp, align 8, !noalias !3448
  %.not1355 = icmp eq ptr %i.agq, null
  br i1 %.not1355, label %bb.ap, label %.critedge.i81, !prof !69

bb.ap:                                            ; preds = %bb.ao
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agd, i64 72
  %i.ags = load ptr, ptr %i.agr, align 8, !noalias !3448
  %.not1356 = icmp eq ptr %i.ags, null
  br i1 %.not1356, label %bb.ax, label %.critedge.i81, !prof !69

.critedge.i81:                                    ; preds = %bb.ap, %bb.ao
  %i.agt = call <4 x float> @llvm.fabs.v4f32(<4 x float> %.sroa.6680.1)
  %i.agu = call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %.sroa.6680.1) ; 3 uses
  %i.agv = fmul <4 x float> %.sroa.6680.1, %i.agu
  %i.agw = fsub <4 x float> splat (float 1.000000e+00), %i.agv
  %i.agx = fmul <4 x float> %i.agu, %i.agw
  %i.agy = fadd <4 x float> %i.agu, %i.agx
  %i.agz = fcmp uge <4 x float> %i.agt, splat (float 1.000000e-18)
  %i.aha = select <4 x i1> %i.agz, <4 x float> %i.agy, <4 x float> zeroinitializer ; 2 uses
  %i.ahb = fmul <4 x float> %.sroa.0678.1, %i.aha
  %i.ahc = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ahb, <4 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.ahd = fmul <4 x float> %.sroa.4679.1, %i.aha
  %i.ahe = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ahd, <4 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.nv
  %i.ahg = load float, ptr %i.ahf, align 4, !noalias !3450
  %i.ahh = insertelement <4 x float> poison, float %i.ahg, i64 0
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.nw
  %i.ahj = load float, ptr %i.ahi, align 4, !noalias !3450
  %i.ahk = insertelement <4 x float> poison, float %i.ahj, i64 0
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.nx
  %i.ahm = load float, ptr %i.ahl, align 4, !noalias !3450
  %i.ahn = insertelement <4 x float> poison, float %i.ahm, i64 0
  %i.aho = bitcast <4 x float> %i.ahk to <4 x i32>
  %i.ahp = shufflevector <4 x i32> %i.aho, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahq = lshr <4 x i32> %i.ahp, splat (i32 16)
  %i.ahr = and <4 x i32> %i.ahp, splat (i32 65535)
  %i.ahs = uitofp nneg <4 x i32> %i.ahr to <4 x float>
  %i.aht = fmul nnan <4 x float> %i.ahs, splat (float f0x39000000)
  %i.ahu = uitofp nneg <4 x i32> %i.ahq to <4 x float>
  %i.ahv = fmul nnan <4 x float> %i.ahu, splat (float f0x39000000)
  %i.ahw = bitcast <4 x float> %i.ahh to <4 x i32>
  %i.ahx = shufflevector <4 x i32> %i.ahw, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahy = lshr <4 x i32> %i.ahx, splat (i32 16)
  %i.ahz = and <4 x i32> %i.ahx, splat (i32 65535)
  %i.aia = uitofp nneg <4 x i32> %i.ahz to <4 x float>
  %i.aib = fmul nnan <4 x float> %i.aia, splat (float f0x39000000)
  %i.aic = uitofp nneg <4 x i32> %i.ahy to <4 x float>
  %i.aid = fmul nnan <4 x float> %i.aic, splat (float f0x39000000)
  %i.aie = bitcast <4 x float> %i.ahn to <4 x i32>
  %i.aif = shufflevector <4 x i32> %i.aie, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aig = lshr <4 x i32> %i.aif, splat (i32 16)
  %i.aih = and <4 x i32> %i.aif, splat (i32 65535)
  %i.aii = uitofp nneg <4 x i32> %i.aih to <4 x float>
  %i.aij = fmul nnan <4 x float> %i.aii, splat (float f0x39000000)
  %i.aik = uitofp nneg <4 x i32> %i.aig to <4 x float>
  %i.ail = fmul nnan <4 x float> %i.aik, splat (float f0x39000000)
  %i.aim = fsub <4 x float> splat (float 1.000000e+00), %i.ahc
  %i.ain = fsub <4 x float> %i.aim, %i.ahe        ; 2 uses
  %i.aio = fmul <4 x float> %i.ain, %i.aht
  %i.aip = fmul <4 x float> %i.ain, %i.ahv
  %i.aiq = fmul <4 x float> %i.ahe, %i.aij
  %i.air = fadd <4 x float> %i.aio, %i.aiq
  %i.ais = fmul <4 x float> %i.ahe, %i.ail
  %i.ait = fadd <4 x float> %i.aip, %i.ais
  %i.aiu = fmul <4 x float> %i.ahc, %i.aib
  %i.aiv = fadd <4 x float> %i.aiu, %i.air
  %i.aiw = fmul <4 x float> %i.ahc, %i.aid
  %i.aix = fadd <4 x float> %i.aiw, %i.ait
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9, !noalias !3448
  %i.aiy = load ptr, ptr %i.e, align 8, !noalias !3448 ; 2 uses
  %i.aiz = insertelement <4 x i32> poison, i32 %i.aah, i64 0
  %i.aja = shufflevector <4 x i32> %i.aiz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ajb = insertelement <4 x i32> poison, i32 %i.aai, i64 0
  %i.ajc = shufflevector <4 x i32> %i.ajb, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x float> %.sroa.12684.1, ptr %6, align 16, !noalias !3448
  store <4 x float> %.sroa.14685.1, ptr %i.bz, align 16, !noalias !3448
  store <4 x float> %.sroa.16686.1, ptr %i.ca, align 16, !noalias !3448
  store <4 x float> %i.aiv, ptr %i.cb, align 16, !noalias !3448
  store <4 x float> %i.aix, ptr %i.cc, align 16, !noalias !3448
  store <4 x i32> %i.ajc, ptr %i.cd, align 16, !noalias !3448
  store <4 x i32> %i.aja, ptr %i.ce, align 16, !noalias !3448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.ptr12.i.i82, i8 -1, i64 32, i1 false)
  %i.ajd = load i32, ptr %i.aiy, align 4, !noalias !3448
  %i.aje = insertelement <4 x i32> poison, i32 %i.ajd, i64 0
  %i.ajf = shufflevector <4 x i32> %i.aje, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ajf, ptr %.ptr12.i.i82, align 16, !noalias !3448
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aiy, i64 4
  %i.ajh = load i32, ptr %i.ajg, align 4, !noalias !3448
  %i.aji = insertelement <4 x i32> poison, i32 %i.ajh, i64 0
  %i.ajj = shufflevector <4 x i32> %i.aji, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ajj, ptr %.ptr17.i.i86, align 16, !noalias !3448
  %i.ajk = load <4 x i32>, ptr %i.m, align 16, !noalias !3448 ; 2 uses
  %i.ajl = and <4 x i32> %i.agk, %.sroa.10683.1
  %i.ajm = xor <4 x i32> %i.agk, splat (i32 -1)
  %i.ajn = and <4 x i32> %i.ajk, %i.ajm
  %i.ajo = or <4 x i32> %i.ajn, %i.ajl
  store <4 x i32> %i.ajo, ptr %i.m, align 16, !noalias !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9, !noalias !3451
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9, !noalias !3451
  store <4 x i32> %i.agk, ptr %5, align 16, !noalias !3451
  store ptr %5, ptr %4, align 8, !noalias !3451
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.agd, i64 24
  %i.ajq = load ptr, ptr %i.ajp, align 8, !noalias !3451
  store ptr %i.ajq, ptr %i.cf, align 8, !noalias !3451
  %i.ajr = load ptr, ptr %i.e, align 8, !noalias !3451
  store ptr %i.ajr, ptr %i.cg, align 8, !noalias !3451
  store ptr %2, ptr %i.ch, align 8, !noalias !3451
  store ptr %6, ptr %i.ci, align 8, !noalias !3451
  store i32 4, ptr %i.cj, align 8, !noalias !3451
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.agd, i64 72
  %i.ajt = load ptr, ptr %i.ajs, align 8, !noalias !3452 ; 2 uses
  %.not.i.i91 = icmp eq ptr %i.ajt, null
  br i1 %.not.i.i91, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.critedge.i81
  call void %i.ajt(ptr noundef nonnull %4), !noalias !3452, !inline_history !41
  %.pre1405 = load <4 x i32>, ptr %5, align 16, !noalias !3453
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.critedge.i81
  %i.aju = phi <4 x i32> [ %.pre1405, %bb.aq ], [ %i.agk, %.critedge.i81 ] ; 3 uses
  %i.ajv = icmp ne <4 x i32> %i.aju, zeroinitializer ; 2 uses
  %i.ajw = bitcast <4 x i1> %i.ajv to i4
  %i.ajx = icmp eq i4 %i.ajw, 0
  br i1 %i.ajx, label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i93, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ajy = load ptr, ptr %i.bn, align 8, !noalias !3452 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 16
  %i.aka = load ptr, ptr %i.ajz, align 8, !noalias !3452 ; 2 uses
  %.not14.i.i92 = icmp eq ptr %i.aka, null
  br i1 %.not14.i.i92, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.akb = load i32, ptr %i.ajy, align 8, !noalias !3452
  %i.akc = and i32 %i.akb, 2
  %.not1357 = icmp eq i32 %i.akc, 0
  br i1 %.not1357, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.akd = getelementptr inbounds nuw i8, ptr %i.agd, i64 60
  %i.ake = load i32, ptr %i.akd, align 4, !noalias !3452
  %i.akf = and i32 %i.ake, 4194304
  %.not1358 = icmp eq i32 %i.akf, 0
  br i1 %.not1358, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  call void %i.aka(ptr noundef nonnull %4), !noalias !3452, !inline_history !41
  %.pre1406 = load <4 x i32>, ptr %5, align 16, !noalias !3454
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.as
  %i.akg = phi <4 x i32> [ %.pre1406, %bb.av ], [ %i.aju, %bb.au ], [ %i.aju, %bb.as ]
  %i.akh = icmp ne <4 x i32> %i.akg, zeroinitializer ; 2 uses
  %i.aki = load ptr, ptr %i.ch, align 8, !noalias !3452
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 128 ; 2 uses
  %i.akk = load <4 x float>, ptr %i.akj, align 16, !noalias !3455
  %i.akl = select <4 x i1> %i.akh, <4 x float> splat (float -inf), <4 x float> %i.akk
  store <4 x float> %i.akl, ptr %i.akj, align 16, !noalias !3452
  br label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i93

_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i93: ; preds = %bb.aw, %bb.ar
  %.sroa.01149.0.in.in = phi <4 x i1> [ %i.ajv, %bb.ar ], [ %i.akh, %bb.aw ] ; 2 uses
  %.sroa.01149.0.in = sext <4 x i1> %.sroa.01149.0.in.in to <4 x i32>
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9, !noalias !3451
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9, !noalias !3451
  %i.akm = load <4 x i32>, ptr %i.m, align 16, !noalias !3456
  %i.akn = select <4 x i1> %.sroa.01149.0.in.in, <4 x i32> %i.akm, <4 x i32> %i.ajk
  store <4 x i32> %i.akn, ptr %i.m, align 16, !noalias !3448
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9, !noalias !3448
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i93, %bb.ap
  %.sroa.01169.0.in = phi <4 x i32> [ %.sroa.01149.0.in, %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i93 ], [ %i.agk, %bb.ap ]
  %i.ako = xor <4 x i32> %.sroa.01169.0.in, splat (i32 -1)
  %i.akp = and <4 x i32> %i.aad, %i.ako
  br label %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit

_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit: ; preds = %_ZNK6embree4sse220PlueckerIntersectorKILi4ELi4EE10intersectKINS0_6MapUV1ILi4EEENS0_17OccludedKEpilogMUILi1ELi4ELb1EEEEENS_11vboolf_implILi4EEERKS9_RNS_4RayKILi4EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESK_SK_RKT_RKT0_.exit, %bb.ax
  %i.akq = phi <4 x i32> [ %i.akp, %bb.ax ], [ %i.aad, %_ZNK6embree4sse220PlueckerIntersectorKILi4ELi4EE10intersectKINS0_6MapUV1ILi4EEENS0_17OccludedKEpilogMUILi1ELi4ELb1EEEEENS_11vboolf_implILi4EEERKS9_RNS_4RayKILi4EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESK_SK_RKT_RKT0_.exit ] ; 3 uses
  %i.akr = icmp slt <4 x i32> %i.akq, zeroinitializer
  %i.aks = bitcast <4 x i1> %i.akr to i4
  %.not1359 = icmp eq i4 %i.aks, 0
  %exitcond.not = icmp eq i64 %i.nu, %i.nj
  %or.cond = or i1 %.not1359, %exitcond.not
  br i1 %or.cond, label %.critedge.i, label %bb.aa, !llvm.loop !42

.critedge.i:                                      ; preds = %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV0ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit, %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit
  %i.akt = phi <4 x i32> [ %i.aad, %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV0ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit ], [ %i.akq, %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit ] ; 2 uses
  br i1 %i.np, label %.preheader1364, label %_ZN6embree4sse219GridSOAIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS2_15PrecalculationsERNS_4RayKILi4EEEPNS_15RayQueryContextEPKvRm.exit, !llvm.loop !43

_ZN6embree4sse219GridSOAIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS2_15PrecalculationsERNS_4RayKILi4EEEPNS_15RayQueryContextEPKvRm.exit: ; preds = %.critedge.i
  %i.aku = xor <4 x i32> %i.akt, splat (i32 -1)
  br label %_ZN6embree4sse224SubdivPatch1IntersectorKILi4EE8occludedILb1EEENS_11vboolf_implILi4EEERKS5_PKNS_5Accel12IntersectorsERNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_4RayKILi4EEEPNS_15RayQueryContextEPKNS0_7GridSOAEmRKNS0_8TravRayKILi4EXT_EEERm.exit

bb.ay:                                            ; preds = %bb.y
  %i.akv = and i64 %.sroa.0128.0.lcssa, -16
  %i.akw = inttoptr i64 %i.akv to ptr             ; 3 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 48
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akw, i64 44
  %i.akz = load i32, ptr %i.aky, align 4, !noalias !3457
  %i.ala = zext i32 %i.akz to i64
  %i.alb = getelementptr i8, ptr %i.akx, i64 %i.ala
  %i.alc = load i64, ptr %i.alb, align 8, !noalias !3457
  br label %_ZN6embree4sse224SubdivPatch1IntersectorKILi4EE8occludedILb1EEENS_11vboolf_implILi4EEERKS5_PKNS_5Accel12IntersectorsERNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_4RayKILi4EEEPNS_15RayQueryContextEPKNS0_7GridSOAEmRKNS0_8TravRayKILi4EXT_EEERm.exit

_ZN6embree4sse224SubdivPatch1IntersectorKILi4EE8occludedILb1EEENS_11vboolf_implILi4EEERKS5_PKNS_5Accel12IntersectorsERNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_4RayKILi4EEEPNS_15RayQueryContextEPKNS0_7GridSOAEmRKNS0_8TravRayKILi4EXT_EEERm.exit: ; preds = %_ZN6embree4sse219GridSOAIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS2_15PrecalculationsERNS_4RayKILi4EEEPNS_15RayQueryContextEPKvRm.exit, %bb.ay
  %.sroa.0169.5 = phi ptr [ %.sroa.0169.01491, %_ZN6embree4sse219GridSOAIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS2_15PrecalculationsERNS_4RayKILi4EEEPNS_15RayQueryContextEPKvRm.exit ], [ %i.akw, %bb.ay ] ; 2 uses
  %.01290 = phi i64 [ 0, %_ZN6embree4sse219GridSOAIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS2_15PrecalculationsERNS_4RayKILi4EEEPNS_15RayQueryContextEPKvRm.exit ], [ %i.alc, %bb.ay ] ; 2 uses
  %i.ald = phi <4 x i32> [ %i.aku, %_ZN6embree4sse219GridSOAIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS2_15PrecalculationsERNS_4RayKILi4EEEPNS_15RayQueryContextEPKvRm.exit ], [ %i.bl, %bb.ay ]
  %i.ale = or <4 x i32> %i.ald, %i.ct             ; 6 uses
  %i.alf = icmp sgt <4 x i32> %i.ale, splat (i32 -1)
  %i.alg = bitcast <4 x i1> %i.alf to i4
  %i.alh = icmp eq i4 %i.alg, 0
  br i1 %i.alh, label %.thread1334, label %bb.az

bb.az:                                            ; preds = %_ZN6embree4sse224SubdivPatch1IntersectorKILi4EE8occludedILb1EEENS_11vboolf_implILi4EEERKS5_PKNS_5Accel12IntersectorsERNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_4RayKILi4EEEPNS_15RayQueryContextEPKNS0_7GridSOAEmRKNS0_8TravRayKILi4EXT_EEERm.exit
  %i.ali = and <4 x i32> %i.ale, splat (i32 -8388608)
  %i.alj = xor <4 x i32> %i.ale, splat (i32 -1)
  %i.alk = bitcast <4 x float> %.sroa.32.01492 to <4 x i32>
  %i.all = and <4 x i32> %i.alj, %i.alk
  %i.alm = or <4 x i32> %i.ali, %i.all
  %i.aln = bitcast <4 x i32> %i.alm to <4 x float> ; 2 uses
  %.not76 = icmp eq i64 %.01290, 0
  br i1 %.not76, label %.loopexit.loopexit, label %bb.ba, !prof !69

bb.ba:                                            ; preds = %bb.az
  store i64 %.01290, ptr %.251.lcssa, align 8
  %i.alo = getelementptr inbounds nuw i8, ptr %.251.lcssa, i64 8
  store <4 x float> splat (float -inf), ptr %.2.lcssa, align 16
  %i.alp = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 16
  br label %.loopexit.loopexit

.thread1328:                                      ; preds = %.lr.ph, %bb.v, %bb.w
  %.1362 = phi ptr [ %i.mj, %bb.w ], [ %.2511386, %.lr.ph ], [ %.352.lcssa, %bb.v ]
  %.13 = phi ptr [ %i.mk, %bb.w ], [ %.21387, %.lr.ph ], [ %.3.lcssa, %bb.v ]
  %i.alq = getelementptr inbounds i8, ptr %.1362, i64 -8 ; 2 uses
  %i.alr = load i64, ptr %i.alq, align 8          ; 2 uses
  %i.als = icmp eq i64 %i.alr, -8
  br i1 %i.als, label %.thread1334, label %bb.h, !prof !78

.thread1334:                                      ; preds = %_ZN6embree4sse224SubdivPatch1IntersectorKILi4EE8occludedILb1EEENS_11vboolf_implILi4EEERKS5_PKNS_5Accel12IntersectorsERNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_4RayKILi4EEEPNS_15RayQueryContextEPKNS0_7GridSOAEmRKNS0_8TravRayKILi4EXT_EEERm.exit, %._crit_edge, %.loopexit.loopexit, %.thread1328, %bb.g
  %i.alt = phi <4 x i32> [ %i.ba, %bb.g ], [ %i.ct, %.thread1328 ], [ %i.ale, %_ZN6embree4sse224SubdivPatch1IntersectorKILi4EE8occludedILb1EEENS_11vboolf_implILi4EEERKS5_PKNS_5Accel12IntersectorsERNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_4RayKILi4EEEPNS_15RayQueryContextEPKNS0_7GridSOAEmRKNS0_8TravRayKILi4EXT_EEERm.exit ], [ %.ph, %.loopexit.loopexit ], [ %i.ct, %._crit_edge ]
  %i.alu = select <4 x i1> %i.p, <4 x i32> %i.alt, <4 x i32> zeroinitializer ; 2 uses
  %i.alv = load <4 x i32>, ptr %i.m, align 16, !noalias !3458
  %i.alw = and <4 x i32> %i.alu, splat (i32 -8388608)
  %i.alx = xor <4 x i32> %i.alu, splat (i32 -1)
  %i.aly = and <4 x i32> %i.alv, %i.alx
  %i.alz = or <4 x i32> %i.alw, %i.aly
  store <4 x i32> %i.alz, ptr %i.m, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.bb

bb.bb:                                            ; preds = %.thread1334, %.critedge, %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6embree4sse230BVH4SubdivPatch1MBIntersector4Ev(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.embree::Accel::Intersector4") align 8 captures(none) initializes((0, 24)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @_ZN6embree4sse222BVHNIntersectorKHybridILi4ELi4ELi16777232ELb0ENS0_26SubdivPatch1MBIntersectorKILi4EEELb1EE9intersectEPNS_9vint_implILi4EEEPNS_5Accel12IntersectorsERNS_7RayHitKILi4EEEPNS_15RayQueryContextE, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN6embree4sse222BVHNIntersectorKHybridILi4ELi4ELi16777232ELb0ENS0_26SubdivPatch1MBIntersectorKILi4EEELb1EE8occludedEPNS_9vint_implILi4EEEPNS_5Accel12IntersectorsERNS_4RayKILi4EEEPNS_15RayQueryContextE, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.21, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse222BVHNIntersectorKHybridILi4ELi4ELi16777232ELb0ENS0_26SubdivPatch1MBIntersectorKILi4EEELb1EE9intersectEPNS_9vint_implILi4EEEPNS_5Accel12IntersectorsERNS_7RayHitKILi4EEEPNS_15RayQueryContextE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 16 dereferenceable(336) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"class.embree::sse2::SubdivPatch1PrecalculationsK", align 8 ; 4 uses
  %5 = alloca %"struct.embree::sse2::TravRayK", align 16 ; 17 uses
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 8
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load <4 x i32>, ptr %0, align 16, !noalias !3466
  %i.f = icmp eq <4 x i32> %i.e, splat (i32 -1)   ; 3 uses
  %i.g = bitcast <4 x i1> %i.f to i4              ; 2 uses
  %i.h = icmp eq i4 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.c, !prof !70

bb.c:                                             ; preds = %bb.b
  %i.i = zext i4 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr null, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.k = load <4 x float>, ptr %2, align 16
  store <4 x float> %i.k, ptr %5, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = load <4 x float>, ptr %i.l, align 16
  store <4 x float> %i.n, ptr %i.m, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.q = load <4 x float>, ptr %i.o, align 16
  store <4 x float> %i.q, ptr %i.p, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.s = load <4 x float>, ptr %i.j, align 16     ; 3 uses
  store <4 x float> %i.s, ptr %i.r, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.v = load <4 x float>, ptr %i.t, align 16     ; 3 uses
  store <4 x float> %i.v, ptr %i.u, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.y = load <4 x float>, ptr %i.w, align 16     ; 3 uses
  store <4 x float> %i.y, ptr %i.x, align 16
  %i.z = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.s)
  %i.aa = fcmp uge <4 x float> %i.z, splat (float 1.000000e-18)
  %i.ab = select <4 x i1> %i.aa, <4 x float> %i.s, <4 x float> splat (float 1.000000e-18) ; 2 uses
  %i.ac = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.v)
  %i.ad = fcmp uge <4 x float> %i.ac, splat (float 1.000000e-18)
  %i.ae = select <4 x i1> %i.ad, <4 x float> %i.v, <4 x float> splat (float 1.000000e-18) ; 2 uses
  %i.af = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.y)
  %i.ag = fcmp uge <4 x float> %i.af, splat (float 1.000000e-18)
  %i.ah = select <4 x i1> %i.ag, <4 x float> %i.y, <4 x float> splat (float 1.000000e-18) ; 2 uses
  %i.ai = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.ab) ; 3 uses
  %i.aj = fmul <4 x float> %i.ab, %i.ai
  %i.ak = fsub <4 x float> splat (float 1.000000e+00), %i.aj
  %i.al = fmul <4 x float> %i.ai, %i.ak
  %i.am = fadd <4 x float> %i.ai, %i.al           ; 2 uses
  %i.an = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.ae) ; 3 uses
  %i.ao = fmul <4 x float> %i.ae, %i.an
  %i.ap = fsub <4 x float> splat (float 1.000000e+00), %i.ao
  %i.aq = fmul <4 x float> %i.an, %i.ap
  %i.ar = fadd <4 x float> %i.an, %i.aq           ; 2 uses
  %i.as = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.ah) ; 3 uses
  %i.at = fmul <4 x float> %i.ah, %i.as
  %i.au = fsub <4 x float> splat (float 1.000000e+00), %i.at
  %i.av = fmul <4 x float> %i.as, %i.au
  %i.aw = fadd <4 x float> %i.as, %i.av           ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 96
  store <4 x float> %i.am, ptr %i.ax, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 112
  store <4 x float> %i.ar, ptr %i.ay, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 128
  store <4 x float> %i.aw, ptr %i.az, align 16
  %i.ba = fcmp olt <4 x float> %i.am, zeroinitializer
  %.inner = select <4 x i1> %i.ba, <4 x i32> splat (i32 16), <4 x i32> zeroinitializer
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 144
  store <4 x i32> %.inner, ptr %i.bb, align 16
  %i.bc = fcmp uge <4 x float> %i.ar, zeroinitializer
  %.inner88 = select <4 x i1> %i.bc, <4 x i32> splat (i32 32), <4 x i32> splat (i32 48)
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 160
  store <4 x i32> %.inner88, ptr %i.bd, align 16
  %i.be = fcmp uge <4 x float> %i.aw, zeroinitializer
  %.inner92 = select <4 x i1> %i.be, <4 x i32> splat (i32 64), <4 x i32> splat (i32 80)
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 176
  store <4 x i32> %.inner92, ptr %i.bf, align 16
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bh = load <4 x float>, ptr %i.bg, align 16, !noalias !3467
  %i.bi = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bh, <4 x float> zeroinitializer)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.bk = load <4 x float>, ptr %i.bj, align 16, !noalias !3468
  %i.bl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bk, <4 x float> zeroinitializer)
  %i.bm = select <4 x i1> %i.f, <4 x float> %i.bi, <4 x float> splat (float +inf)
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 192
  store <4 x float> %i.bm, ptr %i.bn, align 16
  %i.bo = select <4 x i1> %i.f, <4 x float> %i.bl, <4 x float> splat (float -inf)
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 208
  store <4 x float> %i.bo, ptr %i.bp, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %.084 = phi i64 [ %i.i, %bb.c ], [ %i.bs, %bb.d ] ; 3 uses
  %i.bq = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.084) #10, !srcloc !71
  %i.br = add nsw i64 %.084, -1
  %i.bs = and i64 %i.br, %.084                    ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 16
  call void @_ZN6embree4sse222BVHNIntersectorKHybridILi4ELi4ELi16777232ELb0ENS0_26SubdivPatch1MBIntersectorKILi4EEELb1EE10intersect1EPNS_5Accel12IntersectorsEPKNS_4BVHNILi4EEENS_10NodeRefPtrILi4EEEmRNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_7RayHitKILi4EEERKNS0_8TravRayKILi4ELb0EEEPNS_15RayQueryContextE(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 %.sroa.0.0.copyload, i64 noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 16 dereferenceable(336) %2, ptr noundef nonnull align 16 dereferenceable(224) %5, ptr noundef %3)
  %.not = icmp eq i64 %i.bs, 0
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !3465

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.f

end_hunk_1
begin_hunk_2_@_ZN6embree4sse222BVHNIntersectorKHybridILi4ELi4ELi16777232ELb0ENS0_26SubdivPatch1MBIntersectorKILi4EEELb1EE8occludedEPNS_9vint_implILi4EEEPNS_5Accel12IntersectorsERNS_4RayKILi4EEEPNS_15RayQueryContextE:bb.a
  %i.gp = fmul <4 x float> %i.aq, %i.go           ; 2 uses
  %i.gq = fsub <4 x float> %i.ez, %i.p
  %i.gr = fmul <4 x float> %i.av, %i.gq           ; 2 uses
  %i.gs = fsub <4 x float> %i.fj, %i.r
  %i.gt = fmul <4 x float> %i.ba, %i.gs           ; 2 uses
  %i.gu = fsub <4 x float> %i.ft, %i.n
  %i.gv = fmul <4 x float> %i.aq, %i.gu           ; 2 uses
  %i.gw = fsub <4 x float> %i.gd, %i.p
  %i.gx = fmul <4 x float> %i.av, %i.gw           ; 2 uses
  %i.gy = fsub <4 x float> %i.gn, %i.r
  %i.gz = fmul <4 x float> %i.ba, %i.gy           ; 2 uses
  %i.ha = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gp, <4 x float> %i.gv)
  %i.hb = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gr, <4 x float> %i.gx)
  %i.hc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ha, <4 x float> %i.hb)
  %i.hd = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gt, <4 x float> %i.gz)
  %i.he = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hc, <4 x float> %i.hd) ; 2 uses
  %i.hf = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gp, <4 x float> %i.gv)
  %i.hg = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gr, <4 x float> %i.gx)
  %i.hh = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hf, <4 x float> %i.hg)
  %i.hi = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gt, <4 x float> %i.gz)
  %i.hj = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hh, <4 x float> %i.hi)
  %i.hk = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.he, <4 x float> %i.bh)
  %i.hl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hj, <4 x float> %.sroa.32.01651)
  %i.hm = fcmp ole <4 x float> %i.hk, %i.hl       ; 2 uses
  br i1 %.not1539, label %bb.j, label %_ZN6embree4sse218intersectNodeKMB4DILi4ELi4EEENS_6vtypesIXT0_EE5vboolENS_4BVHNIXT_EE7NodeRefEmRKNS0_8TravRayKIXT0_ELb0EEERKNS3_6vfloatERSC_.exit, !prof !70

bb.j:                                             ; preds = %bb.i
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  %i.ho = load float, ptr %i.hn, align 4, !noalias !3581
  %i.hp = insertelement <4 x float> poison, float %i.ho, i64 0
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hr = fcmp ole <4 x float> %i.hq, %i.en
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv
  %i.ht = load float, ptr %i.hs, align 4, !noalias !3581
  %i.hu = insertelement <4 x float> poison, float %i.ht, i64 0
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hw = fcmp olt <4 x float> %i.en, %i.hv
  %i.hx = and <4 x i1> %i.hr, %i.hw
  %i.hy = and <4 x i1> %i.hm, %i.hx
  br label %_ZN6embree4sse218intersectNodeKMB4DILi4ELi4EEENS_6vtypesIXT0_EE5vboolENS_4BVHNIXT_EE7NodeRefEmRKNS0_8TravRayKIXT0_ELb0EEERKNS3_6vfloatERSC_.exit

_ZN6embree4sse218intersectNodeKMB4DILi4ELi4EEENS_6vtypesIXT0_EE5vboolENS_4BVHNIXT_EE7NodeRefEmRKNS0_8TravRayKIXT0_ELb0EEERKNS3_6vfloatERSC_.exit: ; preds = %bb.i, %bb.j
  %.sroa.0234.0.in.in = phi <4 x i1> [ %i.hm, %bb.i ], [ %i.hy, %bb.j ]
  %i.hz = and <4 x i1> %i.dl, %.sroa.0234.0.in.in ; 2 uses
  %i.ia = bitcast <4 x i1> %i.hz to i4
  %.not1540 = icmp eq i4 %i.ia, 0
  br i1 %.not1540, label %bb.m, label %bb.k, !prof !70

bb.k:                                             ; preds = %_ZN6embree4sse218intersectNodeKMB4DILi4ELi4EEENS_6vtypesIXT0_EE5vboolENS_4BVHNIXT_EE7NodeRefEmRKNS0_8TravRayKIXT0_ELb0EEERKNS3_6vfloatERSC_.exit
  %i.ib = select <4 x i1> %i.hz, <4 x float> %i.he, <4 x float> splat (float +inf) ; 2 uses
  %.not70 = icmp eq i64 %.sroa.0109.11559, 8
  br i1 %.not70, label %bb.m, label %bb.l, !prof !70

bb.l:                                             ; preds = %bb.k
  store i64 %.sroa.0109.11559, ptr %.3461561, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %.3461561, i64 8
  store <4 x float> %.sroa.0103.11560, ptr %.31562, align 16
  %i.id = getelementptr inbounds nuw i8, ptr %.31562, i64 16
  br label %bb.m

bb.m:                                             ; preds = %_ZN6embree4sse218intersectNodeKMB4DILi4ELi4EEENS_6vtypesIXT0_EE5vboolENS_4BVHNIXT_EE7NodeRefEmRKNS0_8TravRayKIXT0_ELb0EEERKNS3_6vfloatERSC_.exit, %bb.l, %bb.k
  %.sroa.0109.3.ph = phi i64 [ %i.ee, %bb.k ], [ %i.ee, %bb.l ], [ %.sroa.0109.11559, %_ZN6embree4sse218intersectNodeKMB4DILi4ELi4EEENS_6vtypesIXT0_EE5vboolENS_4BVHNIXT_EE7NodeRefEmRKNS0_8TravRayKIXT0_ELb0EEERKNS3_6vfloatERSC_.exit ] ; 2 uses
  %.sroa.0103.3.ph = phi <4 x float> [ %i.ib, %bb.k ], [ %i.ib, %bb.l ], [ %.sroa.0103.11560, %_ZN6embree4sse218intersectNodeKMB4DILi4ELi4EEENS_6vtypesIXT0_EE5vboolENS_4BVHNIXT_EE7NodeRefEmRKNS0_8TravRayKIXT0_ELb0EEERKNS3_6vfloatERSC_.exit ] ; 2 uses
  %.649.ph = phi ptr [ %.3461561, %bb.k ], [ %i.ic, %bb.l ], [ %.3461561, %_ZN6embree4sse218intersectNodeKMB4DILi4ELi4EEENS_6vtypesIXT0_EE5vboolENS_4BVHNIXT_EE7NodeRefEmRKNS0_8TravRayKIXT0_ELb0EEERKNS3_6vfloatERSC_.exit ] ; 2 uses
  %.6.ph = phi ptr [ %.31562, %bb.k ], [ %i.id, %bb.l ], [ %.31562, %_ZN6embree4sse218intersectNodeKMB4DILi4ELi4EEENS_6vtypesIXT0_EE5vboolENS_4BVHNIXT_EE7NodeRefEmRKNS0_8TravRayKIXT0_ELb0EEERKNS3_6vfloatERSC_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.n, label %bb.h, !llvm.loop !3492

bb.n:                                             ; preds = %bb.h, %bb.m
  %.sroa.0109.1.lcssa = phi i64 [ %.sroa.0109.11559, %bb.h ], [ %.sroa.0109.3.ph, %bb.m ] ; 3 uses
  %.sroa.0103.1.lcssa = phi <4 x float> [ %.sroa.0103.11560, %bb.h ], [ %.sroa.0103.3.ph, %bb.m ] ; 3 uses
  %.346.lcssa = phi ptr [ %.3461561, %bb.h ], [ %.649.ph, %bb.m ] ; 4 uses
  %.3.lcssa = phi ptr [ %.31562, %bb.h ], [ %.6.ph, %bb.m ] ; 4 uses
  %i.ie = icmp eq i64 %.sroa.0109.1.lcssa, 8
  br i1 %i.ie, label %.thread1504, label %bb.o, !prof !70

bb.o:                                             ; preds = %bb.n
  %i.if = fcmp ugt <4 x float> %.sroa.32.01651, %.sroa.0103.1.lcssa
  %i.ig = bitcast <4 x i1> %i.if to i4            ; 3 uses
  %i.ih = zext i4 %i.ig to i32                    ; 2 uses
  %i.ii = and i4 %i.ig, 1
  %i.ij = lshr i32 %i.ih, 1
  %.lobit = and i32 %i.ij, 1
  %i.ik = zext nneg i32 %.lobit to i64
  %i.il = lshr i32 %i.ih, 2
  %.lobit1541 = and i32 %i.il, 1
  %i.im = zext nneg i32 %.lobit1541 to i64
  %.lobit1542 = lshr i4 %i.ig, 3
  %narrow = add nuw nsw i4 %.lobit1542, %i.ii
  %i.in = zext nneg i4 %narrow to i64
  %i.io = add nuw nsw i64 %i.in, %i.ik
  %i.ip = add nuw nsw i64 %i.io, %i.im
  %.not72 = icmp samesign ugt i64 %i.ip, %i.bq
  br i1 %.not72, label %.preheader1545, label %bb.p, !prof !69, !llvm.loop !3493

bb.p:                                             ; preds = %bb.o
  %i.iq = getelementptr inbounds nuw i8, ptr %.346.lcssa, i64 8
  store i64 %.sroa.0109.1.lcssa, ptr %.346.lcssa, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 16
  store <4 x float> %.sroa.0103.1.lcssa, ptr %.3.lcssa, align 16
  br label %.thread1504

bb.q:                                             ; preds = %.preheader1545
  %i.is = icmp eq i64 %.sroa.0109.0, -8
  br i1 %i.is, label %.thread1513, label %bb.r, !prof !70

bb.r:                                             ; preds = %bb.q
  %i.it = fcmp ugt <4 x float> %.sroa.32.01651, %.sroa.0103.0
  %i.iu = bitcast <4 x i1> %i.it to i4
  %i.iv = icmp eq i4 %i.iu, 0
  br i1 %i.iv, label %.loopexit.loopexit, label %bb.s, !prof !70, !llvm.loop !3485

bb.s:                                             ; preds = %bb.r
  %i.iw = and i64 %.sroa.0109.0, 15
  %i.ix = icmp eq i64 %i.iw, 8
  br i1 %i.ix, label %bb.t, label %bb.au, !prof !69

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9, !noalias !3583
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0150.01650, i64 8
  %i.iz = load i32, ptr %i.iy, align 8, !noalias !3583
  %i.ja = add i32 %i.iz, -1
  %i.jb = uitofp i32 %i.ja to float
  %i.jc = insertelement <4 x float> poison, float %i.jb, i64 0
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3584)
  %i.je = load <4 x float>, ptr %i.bt, align 16, !noalias !3585
  %i.jf = fmul <4 x float> %i.je, %i.jd           ; 2 uses
  %i.jg = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.jf)
  %i.jh = fadd <4 x float> %i.jd, splat (float -1.000000e+00)
  %i.ji = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jg, <4 x float> %i.jh)
  %i.jj = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ji, <4 x float> zeroinitializer) ; 2 uses
  %i.jk = fsub <4 x float> %i.jf, %i.jj           ; 13 uses
  %i.jl = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.jj) ; 2 uses
  store <4 x i32> %i.jl, ptr %10, align 16, !alias.scope !3584, !noalias !3583
  %i.jm = icmp sgt <4 x i32> %i.dc, splat (i32 -1)
  %i.jn = bitcast <4 x i1> %i.jm to i4            ; 2 uses
  %.not15221565 = icmp eq i4 %i.jn, 0
  br i1 %.not15221565, label %_ZN6embree4sse221GridSOAMBIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS0_19GridSOAIntersectorKILi4EE15PrecalculationsERNS_4RayKILi4EEEPNS_15RayQueryContextEPKvRm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.jo = xor <4 x i32> %i.dc, splat (i32 -1)     ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0150.01650, i64 40
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0150.01650, i64 20
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0150.01650, i64 12
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0150.01650, i64 36
  %i.jt = lshr i64 %.sroa.0109.0, 4
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0150.01650, i64 16
  %i.jv = fsub <4 x float> splat (float 1.000000e+00), %i.jk ; 12 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0150.01650, i64 24 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0150.01650, i64 28 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %_ZN6embree4sse221GridSOAMBIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS0_19GridSOAIntersectorKILi4EE15PrecalculationsERNS_4RayKILi4EEERKNS_11vfloat_implILi4EEEiPNS_15RayQueryContextEPKvRm.exit
  %i.jy = phi i4 [ %i.jn, %.lr.ph ], [ %i.ama, %_ZN6embree4sse221GridSOAMBIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS0_19GridSOAIntersectorKILi4EE15PrecalculationsERNS_4RayKILi4EEERKNS_11vfloat_implILi4EEEiPNS_15RayQueryContextEPKvRm.exit ]
  %i.jz = phi <4 x i32> [ %i.jo, %.lr.ph ], [ %i.alw, %_ZN6embree4sse221GridSOAMBIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS0_19GridSOAIntersectorKILi4EE15PrecalculationsERNS_4RayKILi4EEERKNS_11vfloat_implILi4EEEiPNS_15RayQueryContextEPKvRm.exit ] ; 2 uses
  %.sroa.0312.0.in1566 = phi <4 x i32> [ %i.jo, %.lr.ph ], [ %i.aly, %_ZN6embree4sse221GridSOAMBIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS0_19GridSOAIntersectorKILi4EE15PrecalculationsERNS_4RayKILi4EEERKNS_11vfloat_implILi4EEEiPNS_15RayQueryContextEPKvRm.exit ]
  %i.ka = zext i4 %i.jy to i64
  %i.kb = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ka) #10, !srcloc !71
  %sext.i = shl i64 %i.kb, 32
  %i.kc = ashr exact i64 %sext.i, 30
  %i.kd = getelementptr inbounds nuw i8, ptr %10, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !noalias !3583 ; 2 uses
  %i.kf = insertelement <4 x i32> poison, i32 %i.ke, i64 0
  %i.kg = shufflevector <4 x i32> %i.kf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.kh = icmp eq <4 x i32> %i.kg, %i.jl
  %i.ki = select <4 x i1> %i.kh, <4 x i32> %i.jz, <4 x i32> zeroinitializer ; 3 uses
  %i.kj = load i32, ptr %i.jp, align 8, !noalias !3586 ; 2 uses
  %i.kk = lshr i32 %i.kj, 2
  %i.kl = zext nneg i32 %i.kk to i64              ; 4 uses
  %i.km = load i32, ptr %i.jq, align 4, !noalias !3586
  %i.kn = zext i32 %i.km to i64                   ; 3 uses
  %i.ko = load i32, ptr %i.jr, align 4, !noalias !3586 ; 2 uses
  %i.kp = zext i32 %i.ko to i64                   ; 2 uses
  %i.kq = sext i32 %i.ke to i64
  %i.kr = load i32, ptr %i.js, align 4, !noalias !3586
  %i.ks = zext i32 %i.kr to i64
  %i.kt = zext i32 %i.kj to i64
  %i.ku = mul nsw i64 %i.kt, %i.kq
  %i.kv = getelementptr i8, ptr %.sroa.0150.01650, i64 %i.ku
  %i.kw = getelementptr i8, ptr %i.kv, i64 %i.ks
  %i.kx = getelementptr [4 x i8], ptr %i.kw, i64 %i.jt
  %i.ky = getelementptr i8, ptr %i.kx, i64 44     ; 11 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.kn ; 8 uses
  %.idx.i = shl nuw nsw i64 %i.kn, 3
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.idx.i ; 8 uses
  %.idx117.i = mul nuw nsw i64 %i.kn, 12
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.idx117.i ; 6 uses
  %i.lc = icmp eq i32 %i.ko, 2
  %i.ld = select i1 %i.lc, i64 1, i64 2
  %i.le = load i32, ptr %i.ju, align 8, !noalias !3586
  %i.lf = icmp ne i32 %i.le, 2
  br label %.preheader1544

.preheader1544:                                   ; preds = %bb.u, %.thread1509
  %i.lg = phi i1 [ %i.lf, %bb.u ], [ false, %.thread1509 ]
  %.0116.i1564 = phi i64 [ 0, %bb.u ], [ 1, %.thread1509 ] ; 2 uses
  %i.lh = phi <4 x i32> [ %i.ki, %bb.u ], [ %i.alu, %.thread1509 ]
  %i.li = mul nuw nsw i64 %.0116.i1564, %i.kp     ; 2 uses
  %13 = shl nuw nsw i64 %i.kp, %.0116.i1564       ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.at, %.preheader1544
  %.0.i1649 = phi i64 [ 0, %.preheader1544 ], [ %i.ll, %bb.at ] ; 3 uses
  %i.lj = phi <4 x i32> [ %i.lh, %.preheader1544 ], [ %i.alr, %bb.at ] ; 3 uses
  %i.lk = add nuw nsw i64 %.0.i1649, %i.li        ; 4 uses
  %i.ll = add nuw nsw i64 %.0.i1649, 1            ; 4 uses
  %i.lm = add nuw nsw i64 %i.ll, %i.li            ; 4 uses
  %i.ln = add nuw nsw i64 %.0.i1649, %13          ; 4 uses
  %i.lo = add nuw nsw i64 %i.ll, %13              ; 4 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.lk
  %i.lq = load float, ptr %i.lp, align 4, !noalias !3583
  %i.lr = insertelement <4 x float> poison, float %i.lq, i64 0
  %i.ls = shufflevector <4 x float> %i.lr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.lk
  %i.lu = load float, ptr %i.lt, align 4, !noalias !3583
  %i.lv = insertelement <4 x float> poison, float %i.lu, i64 0
  %i.lw = shufflevector <4 x float> %i.lv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.lk
  %i.ly = load float, ptr %i.lx, align 4, !noalias !3583
  %i.lz = insertelement <4 x float> poison, float %i.ly, i64 0
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.lm
  %i.mc = load float, ptr %i.mb, align 4, !noalias !3583
  %i.md = insertelement <4 x float> poison, float %i.mc, i64 0
  %i.me = shufflevector <4 x float> %i.md, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.lm
  %i.mg = load float, ptr %i.mf, align 4, !noalias !3583
  %i.mh = insertelement <4 x float> poison, float %i.mg, i64 0
  %i.mi = shufflevector <4 x float> %i.mh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.lm
  %i.mk = load float, ptr %i.mj, align 4, !noalias !3583
  %i.ml = insertelement <4 x float> poison, float %i.mk, i64 0
  %i.mm = shufflevector <4 x float> %i.ml, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.ln
  %i.mo = load float, ptr %i.mn, align 4, !noalias !3583
  %i.mp = insertelement <4 x float> poison, float %i.mo, i64 0
  %i.mq = shufflevector <4 x float> %i.mp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.ln
  %i.ms = load float, ptr %i.mr, align 4, !noalias !3583
  %i.mt = insertelement <4 x float> poison, float %i.ms, i64 0
  %i.mu = shufflevector <4 x float> %i.mt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.ln
  %i.mw = load float, ptr %i.mv, align 4, !noalias !3583
  %i.mx = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.lo
  %i.na = load float, ptr %i.mz, align 4, !noalias !3583
  %i.nb = insertelement <4 x float> poison, float %i.na, i64 0
  %i.nc = shufflevector <4 x float> %i.nb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.lo
  %i.ne = load float, ptr %i.nd, align 4, !noalias !3583
  %i.nf = insertelement <4 x float> poison, float %i.ne, i64 0
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.lo
  %i.ni = load float, ptr %i.nh, align 4, !noalias !3583
  %i.nj = insertelement <4 x float> poison, float %i.ni, i64 0
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nl = add nuw nsw i64 %i.lk, %i.kl            ; 4 uses
  %i.nm = add nuw nsw i64 %i.lm, %i.kl            ; 5 uses
  %i.nn = add nuw nsw i64 %i.ln, %i.kl            ; 5 uses
  %i.no = add nuw nsw i64 %i.lo, %i.kl            ; 4 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.nl
  %i.nq = load float, ptr %i.np, align 4, !noalias !3583
  %i.nr = insertelement <4 x float> poison, float %i.nq, i64 0
  %i.ns = shufflevector <4 x float> %i.nr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.nl
  %i.nu = load float, ptr %i.nt, align 4, !noalias !3583
  %i.nv = insertelement <4 x float> poison, float %i.nu, i64 0
  %i.nw = shufflevector <4 x float> %i.nv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.nl
  %i.ny = load float, ptr %i.nx, align 4, !noalias !3583
  %i.nz = insertelement <4 x float> poison, float %i.ny, i64 0
  %i.oa = shufflevector <4 x float> %i.nz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.nm
  %i.oc = load float, ptr %i.ob, align 4, !noalias !3583
  %i.od = insertelement <4 x float> poison, float %i.oc, i64 0
  %i.oe = shufflevector <4 x float> %i.od, <4 x float> poison, <4 x i32> zeroinitializer
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.nm
  %i.og = load float, ptr %i.of, align 4, !noalias !3583
  %i.oh = insertelement <4 x float> poison, float %i.og, i64 0
  %i.oi = shufflevector <4 x float> %i.oh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.nm
  %i.ok = load float, ptr %i.oj, align 4, !noalias !3583
  %i.ol = insertelement <4 x float> poison, float %i.ok, i64 0
  %i.om = shufflevector <4 x float> %i.ol, <4 x float> poison, <4 x i32> zeroinitializer
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.nn
  %i.oo = load float, ptr %i.on, align 4, !noalias !3583
  %i.op = insertelement <4 x float> poison, float %i.oo, i64 0
  %i.oq = shufflevector <4 x float> %i.op, <4 x float> poison, <4 x i32> zeroinitializer
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.nn
  %i.os = load float, ptr %i.or, align 4, !noalias !3583
  %i.ot = insertelement <4 x float> poison, float %i.os, i64 0
  %i.ou = shufflevector <4 x float> %i.ot, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.nn
  %i.ow = load float, ptr %i.ov, align 4, !noalias !3583
  %i.ox = insertelement <4 x float> poison, float %i.ow, i64 0
  %i.oy = shufflevector <4 x float> %i.ox, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.no
  %i.pa = load float, ptr %i.oz, align 4, !noalias !3583
  %i.pb = insertelement <4 x float> poison, float %i.pa, i64 0
  %i.pc = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.no
  %i.pe = load float, ptr %i.pd, align 4, !noalias !3583
  %i.pf = insertelement <4 x float> poison, float %i.pe, i64 0
  %i.pg = shufflevector <4 x float> %i.pf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.no
  %i.pi = load float, ptr %i.ph, align 4, !noalias !3583
  %i.pj = insertelement <4 x float> poison, float %i.pi, i64 0
  %i.pk = shufflevector <4 x float> %i.pj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pl = fmul <4 x float> %i.jk, %i.ns
  %i.pm = fmul <4 x float> %i.jk, %i.nw
  %i.pn = fmul <4 x float> %i.jk, %i.oa
  %i.po = fmul <4 x float> %i.jv, %i.ls
  %i.pp = fadd <4 x float> %i.po, %i.pl
  %i.pq = fmul <4 x float> %i.jv, %i.lw
  %i.pr = fadd <4 x float> %i.pq, %i.pm
  %i.ps = fmul <4 x float> %i.jv, %i.ma
  %i.pt = fadd <4 x float> %i.ps, %i.pn
  %i.pu = fmul <4 x float> %i.jk, %i.oe
  %i.pv = fmul <4 x float> %i.jk, %i.oi
  %i.pw = fmul <4 x float> %i.jk, %i.om
  %i.px = fmul <4 x float> %i.jv, %i.me
  %i.py = fadd <4 x float> %i.px, %i.pu           ; 2 uses
  %i.pz = fmul <4 x float> %i.jv, %i.mi
  %i.qa = fadd <4 x float> %i.pz, %i.pv           ; 2 uses
  %i.qb = fmul <4 x float> %i.jv, %i.mm
  %i.qc = fadd <4 x float> %i.qb, %i.pw           ; 2 uses
  %i.qd = fmul <4 x float> %i.jk, %i.oq
  %i.qe = fmul <4 x float> %i.jk, %i.ou
  %i.qf = fmul <4 x float> %i.jk, %i.oy
  %i.qg = fmul <4 x float> %i.jv, %i.mq
  %i.qh = fadd <4 x float> %i.qg, %i.qd           ; 2 uses
  %i.qi = fmul <4 x float> %i.jv, %i.mu
  %i.qj = fadd <4 x float> %i.qi, %i.qe           ; 2 uses
  %i.qk = fmul <4 x float> %i.jv, %i.my
  %i.ql = fadd <4 x float> %i.qk, %i.qf           ; 2 uses
  %i.qm = fmul <4 x float> %i.jk, %i.pc
  %i.qn = fmul <4 x float> %i.jk, %i.pg
  %i.qo = fmul <4 x float> %i.jk, %i.pk
  %i.qp = fmul <4 x float> %i.jv, %i.nc
  %i.qq = fadd <4 x float> %i.qp, %i.qm
  %i.qr = fmul <4 x float> %i.jv, %i.ng
  %i.qs = fadd <4 x float> %i.qr, %i.qn
  %i.qt = fmul <4 x float> %i.jv, %i.nk
  %i.qu = fadd <4 x float> %i.qt, %i.qo
  %i.qv = load i32, ptr %i.jw, align 8, !noalias !3583 ; 2 uses
  %i.qw = load i32, ptr %i.jx, align 4, !noalias !3583
  %i.qx = load <4 x float>, ptr %2, align 16, !noalias !3587 ; 3 uses
  %i.qy = load <4 x float>, ptr %i.o, align 16, !noalias !3587 ; 3 uses
  %i.qz = load <4 x float>, ptr %i.q, align 16, !noalias !3587 ; 3 uses
  %i.ra = load <4 x float>, ptr %i.m, align 16, !noalias !3587 ; 4 uses
  %i.rb = load <4 x float>, ptr %i.s, align 16, !noalias !3587 ; 4 uses
  %i.rc = load <4 x float>, ptr %i.t, align 16, !noalias !3587 ; 4 uses
  %i.rd = fsub <4 x float> %i.pp, %i.qx           ; 5 uses
  %i.re = fsub <4 x float> %i.pr, %i.qy           ; 5 uses
  %i.rf = fsub <4 x float> %i.pt, %i.qz           ; 5 uses
  %i.rg = fsub <4 x float> %i.py, %i.qx           ; 4 uses
  %i.rh = fsub <4 x float> %i.qa, %i.qy           ; 4 uses
  %i.ri = fsub <4 x float> %i.qc, %i.qz           ; 4 uses
  %i.rj = fsub <4 x float> %i.qh, %i.qx           ; 4 uses
  %i.rk = fsub <4 x float> %i.qj, %i.qy           ; 4 uses
  %i.rl = fsub <4 x float> %i.ql, %i.qz           ; 4 uses
  %i.rm = fsub <4 x float> %i.rj, %i.rd           ; 4 uses
  %i.rn = fsub <4 x float> %i.rk, %i.re           ; 4 uses
  %i.ro = fsub <4 x float> %i.rl, %i.rf           ; 4 uses
  %i.rp = fsub <4 x float> %i.rd, %i.rg           ; 6 uses
  %i.rq = fsub <4 x float> %i.re, %i.rh           ; 6 uses
  %i.rr = fsub <4 x float> %i.rf, %i.ri           ; 6 uses
  %i.rs = fsub <4 x float> %i.rg, %i.rj           ; 4 uses
  %i.rt = fsub <4 x float> %i.rh, %i.rk           ; 4 uses
  %i.ru = fsub <4 x float> %i.ri, %i.rl           ; 4 uses
  %i.rv = fadd <4 x float> %i.rj, %i.rd           ; 2 uses
  %i.rw = fadd <4 x float> %i.rk, %i.re           ; 2 uses
  %i.rx = fadd <4 x float> %i.rl, %i.rf           ; 2 uses
  %i.ry = fmul <4 x float> %i.rw, %i.ro
  %i.rz = fmul <4 x float> %i.rn, %i.rx
  %i.sa = fsub <4 x float> %i.rz, %i.ry
  %i.sb = fmul <4 x float> %i.rm, %i.rx
  %i.sc = fmul <4 x float> %i.rv, %i.ro
  %i.sd = fsub <4 x float> %i.sc, %i.sb
  %i.se = fmul <4 x float> %i.rv, %i.rn
  %i.sf = fmul <4 x float> %i.rm, %i.rw
  %i.sg = fsub <4 x float> %i.sf, %i.se
  %i.sh = fmul <4 x float> %i.sg, %i.rc
  %i.si = fmul <4 x float> %i.rb, %i.sd
  %i.sj = fadd <4 x float> %i.sh, %i.si
  %i.sk = fmul <4 x float> %i.ra, %i.sa
  %i.sl = fadd <4 x float> %i.sk, %i.sj           ; 4 uses
  %i.sm = fadd <4 x float> %i.rd, %i.rg           ; 2 uses
  %i.sn = fadd <4 x float> %i.re, %i.rh           ; 2 uses
  %i.so = fadd <4 x float> %i.rf, %i.ri           ; 2 uses
  %i.sp = fmul <4 x float> %i.sn, %i.rr
  %i.sq = fmul <4 x float> %i.rq, %i.so
  %i.sr = fsub <4 x float> %i.sq, %i.sp
  %i.ss = fmul <4 x float> %i.rp, %i.so
  %i.st = fmul <4 x float> %i.sm, %i.rr
  %i.su = fsub <4 x float> %i.st, %i.ss
  %i.sv = fmul <4 x float> %i.sm, %i.rq
  %i.sw = fmul <4 x float> %i.rp, %i.sn
  %i.sx = fsub <4 x float> %i.sw, %i.sv
  %i.sy = fmul <4 x float> %i.sx, %i.rc
  %i.sz = fmul <4 x float> %i.rb, %i.su
  %i.ta = fadd <4 x float> %i.sy, %i.sz
  %i.tb = fmul <4 x float> %i.ra, %i.sr
  %i.tc = fadd <4 x float> %i.tb, %i.ta           ; 4 uses
  %i.td = fadd <4 x float> %i.rg, %i.rj           ; 2 uses
  %i.te = fadd <4 x float> %i.rh, %i.rk           ; 2 uses
  %i.tf = fadd <4 x float> %i.ri, %i.rl           ; 2 uses
  %i.tg = fmul <4 x float> %i.te, %i.ru
end_hunk_2
begin_hunk_3_@_ZN6embree4sse222BVHNIntersectorKHybridILi4ELi4ELi1ELb1ENS0_24SubdivPatch1IntersectorKILi4EEELb1EE17intersectCoherentEPNS_9vint_implILi4EEEPNS_5Accel12IntersectorsERNS_7RayHitKILi4EEEPNS_15RayQueryContextE:bb.a
  %i.ji = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jk = fsub <4 x float> %i.jj, %i.l
  %i.jl = fmul <4 x float> %i.ag, %i.jk           ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.ir
  %i.jn = load float, ptr %i.jm, align 4, !noalias !12891
  %i.jo = insertelement <4 x float> poison, float %i.jn, i64 0
  %i.jp = shufflevector <4 x float> %i.jo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jq = fsub <4 x float> %i.jp, %i.h
  %i.jr = fmul <4 x float> %i.ac, %i.jq           ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.ir
  %i.jt = load float, ptr %i.js, align 4, !noalias !12891
  %i.ju = insertelement <4 x float> poison, float %i.jt, i64 0
  %i.jv = shufflevector <4 x float> %i.ju, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jw = fsub <4 x float> %i.jv, %i.j
  %i.jx = fmul <4 x float> %i.ae, %i.jw           ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.ir
  %i.jz = load float, ptr %i.jy, align 4, !noalias !12891
  %i.ka = insertelement <4 x float> poison, float %i.jz, i64 0
  %i.kb = shufflevector <4 x float> %i.ka, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kc = fsub <4 x float> %i.kb, %i.l
  %i.kd = fmul <4 x float> %i.ag, %i.kc           ; 2 uses
  %i.ke = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.iz, <4 x float> %i.jr)
  %i.kf = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jf, <4 x float> %i.jx)
  %i.kg = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ke, <4 x float> %i.kf)
  %i.kh = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jl, <4 x float> %i.kd)
  %i.ki = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kg, <4 x float> %i.kh)
  %i.kj = fmul <4 x float> %i.ki, splat (float f0x3F7FFFFA)
  %i.kk = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.iz, <4 x float> %i.jr)
  %i.kl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jf, <4 x float> %i.jx)
  %i.km = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kk, <4 x float> %i.kl)
  %i.kn = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jl, <4 x float> %i.kd)
  %i.ko = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.km, <4 x float> %i.kn)
  %i.kp = fmul <4 x float> %i.ko, splat (float f0x3F800003)
  %i.kq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kj, <4 x float> %i.ck)
  %i.kr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kp, <4 x float> %.sroa.44.01838)
  %i.ks = fcmp ole <4 x float> %i.kq, %i.kr
  %i.kt = bitcast <4 x i1> %i.ks to i4
  %.not1746 = icmp eq i4 %i.kt, 0
  br i1 %.not1746, label %bb.j, label %bb.f, !prof !70

bb.f:                                             ; preds = %bb.e
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %i.ir
  %i.kv = load float, ptr %i.ku, align 4          ; 2 uses
  %i.kw = insertelement <4 x float> poison, float %i.kv, i64 0
  %i.kx = shufflevector <4 x float> %i.kw, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.ir
  %.sroa.01.0.copyload = load i64, ptr %i.ky, align 8 ; 4 uses
  %i.kz = inttoptr i64 %.sroa.01.0.copyload to ptr ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.kz, i32 0, i32 3, i32 1)
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.la, i32 0, i32 3, i32 1)
  %i.lb = fcmp olt <4 x float> %i.kx, %.sroa.0115.1
  %i.lc = bitcast <4 x i1> %i.lb to i4
  %.not1747 = icmp eq i4 %i.lc, 0
  br i1 %.not1747, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not73 = icmp eq i64 %.sroa.0119.1, 8
  br i1 %.not73, label %bb.j, label %bb.h, !prof !70

bb.h:                                             ; preds = %bb.g
  store i64 %.sroa.0119.1, ptr %.362, align 16
  %i.ld = extractelement <4 x float> %.sroa.0115.1, i64 0
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  store i64 %.sroa.01.0.copyload, ptr %.362, align 16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i
  %.sink = phi float [ %i.kv, %bb.i ], [ %i.ld, %bb.h ]
  %.sroa.0119.3.ph = phi i64 [ %.sroa.0119.1, %bb.i ], [ %.sroa.01.0.copyload, %bb.h ]
  %.sroa.0115.3.ph = phi <4 x float> [ %.sroa.0115.1, %bb.i ], [ %i.kx, %bb.h ]
  %.3.ph = add i64 %.0, 1
  %i.le = getelementptr inbounds nuw i8, ptr %.362, i64 8
  store float %.sink, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %.362, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.g, %bb.e
  %.sroa.0119.3 = phi i64 [ %.sroa.0119.1, %bb.e ], [ %.sroa.01.0.copyload, %bb.g ], [ %.sroa.0119.3.ph, %.sink.split ] ; 5 uses
  %.sroa.0115.3 = phi <4 x float> [ %.sroa.0115.1, %bb.e ], [ %i.kx, %bb.g ], [ %.sroa.0115.3.ph, %.sink.split ] ; 2 uses
  %.6 = phi ptr [ %.362, %bb.e ], [ %.362, %bb.g ], [ %i.lf, %.sink.split ] ; 10 uses
  %.3 = phi i64 [ %.0, %bb.e ], [ %.0, %bb.g ], [ %.3.ph, %.sink.split ] ; 3 uses
  %.not74 = icmp eq i64 %i.it, 0
  br i1 %.not74, label %bb.k, label %bb.e, !llvm.loop !12707

bb.k:                                             ; preds = %bb.j
  %i.lg = icmp eq i64 %.sroa.0119.3, 8
  br i1 %i.lg, label %bb.ba, label %bb.l, !prof !70

bb.l:                                             ; preds = %bb.k
  %i.lh = icmp ugt i64 %.3, 1
  br i1 %i.lh, label %bb.m, label %bb.t, !prof !70

bb.m:                                             ; preds = %bb.l
  %i.li = getelementptr inbounds i8, ptr %.6, i64 -32 ; 4 uses
  %i.lj = getelementptr inbounds i8, ptr %.6, i64 -24 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 8
  %i.ll = getelementptr inbounds i8, ptr %.6, i64 -16 ; 4 uses
  %i.lm = getelementptr inbounds i8, ptr %.6, i64 -8 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 8
  %i.lo = icmp ult i32 %i.lk, %i.ln
  br i1 %i.lo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.li, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.li, ptr noundef nonnull align 16 dereferenceable(12) %i.ll, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ll, ptr noundef nonnull align 16 dereferenceable(12) %6, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not75 = icmp eq i64 %.3, 2
  br i1 %.not75, label %bb.t, label %bb.p, !prof !69

bb.p:                                             ; preds = %bb.o
  %i.lp = getelementptr inbounds i8, ptr %.6, i64 -48 ; 4 uses
  %i.lq = getelementptr inbounds i8, ptr %.6, i64 -40 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 8            ; 2 uses
  %i.ls = load i32, ptr %i.lm, align 8
  %i.lt = icmp ult i32 %i.lr, %i.ls
  br i1 %i.lt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %i.lp, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.lp, ptr noundef nonnull align 16 dereferenceable(12) %i.ll, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ll, ptr noundef nonnull align 16 dereferenceable(12) %5, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.pre = load i32, ptr %i.lq, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.lu = phi i32 [ %.pre, %bb.q ], [ %i.lr, %bb.p ]
  %i.lv = load i32, ptr %i.lj, align 8
  %i.lw = icmp ult i32 %i.lu, %i.lv
  br i1 %i.lw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %i.lp, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.lp, ptr noundef nonnull align 16 dereferenceable(12) %i.li, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.li, ptr noundef nonnull align 16 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.s, %bb.r, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %i.lx = and i64 %.sroa.0119.3, 8
  %.not = icmp eq i64 %i.lx, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge, !prof !76, !llvm.loop !12708

._crit_edge:                                      ; preds = %.preheader1751, %bb.t
  %.sroa.0119.0.lcssa = phi i64 [ %.sroa.0119.3, %bb.t ], [ %i.gz, %.preheader1751 ] ; 3 uses
  %.sroa.0115.0.lcssa = phi <4 x float> [ %.sroa.0115.3, %bb.t ], [ %i.gv, %.preheader1751 ]
  %.261.lcssa = phi ptr [ %.6, %bb.t ], [ %i.gr, %.preheader1751 ] ; 5 uses
  %i.ly = fcmp ugt <4 x float> %.sroa.44.01838, %.sroa.0115.0.lcssa ; 5 uses
  %i.lz = bitcast <4 x i1> %i.ly to i4
  %i.ma = icmp eq i4 %i.lz, 0
  br i1 %i.ma, label %.loopexit.loopexit, label %bb.u, !prof !70, !llvm.loop !12702

bb.u:                                             ; preds = %._crit_edge
  %i.mb = and i64 %.sroa.0119.0.lcssa, 15
  %i.mc = icmp eq i64 %i.mb, 8
  br i1 %i.mc, label %bb.v, label %bb.aw, !prof !69

bb.v:                                             ; preds = %bb.u
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0206.11837, i64 20
  %i.me = load i32, ptr %i.md, align 4
  %i.mf = zext i32 %i.me to i64                   ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0206.11837, i64 12
  %i.mh = load i32, ptr %i.mg, align 4            ; 2 uses
  %i.mi = zext i32 %i.mh to i64                   ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0206.11837, i64 36
  %i.mk = load i32, ptr %i.mj, align 4
  %i.ml = zext i32 %i.mk to i64
  %i.mm = getelementptr i8, ptr %.sroa.0206.11837, i64 %i.ml
  %i.mn = lshr i64 %.sroa.0119.0.lcssa, 4
  %i.mo = getelementptr [4 x i8], ptr %i.mm, i64 %i.mn
  %i.mp = getelementptr i8, ptr %i.mo, i64 44     ; 7 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.mf ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.mf, 3
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 %.idx.i ; 4 uses
  %.idx78.i = mul nuw nsw i64 %i.mf, 12
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 %.idx78.i ; 4 uses
  %i.mt = icmp ne i32 %i.mh, 2
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0206.11837, i64 16
  %i.mv = load i32, ptr %i.mu, align 8
  %i.mw = icmp ne i32 %i.mv, 2
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.0206.11837, i64 24 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0206.11837, i64 28 ; 2 uses
  br label %.preheader1749

.preheader1749:                                   ; preds = %bb.v, %bb.w
  %i.mz = phi i1 [ %i.mw, %bb.v ], [ false, %bb.w ]
  %.077.i1762 = phi i64 [ 0, %bb.v ], [ 1, %bb.w ] ; 2 uses
  %i.na = mul nuw nsw i64 %.077.i1762, %i.mi      ; 2 uses
  %16 = shl nuw nsw i64 %i.mi, %.077.i1762        ; 2 uses
  br label %bb.x

bb.w:                                             ; preds = %_ZNK6embree4sse218IntersectKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit
  br i1 %i.mz, label %.preheader1749, label %_ZN6embree4sse224SubdivPatch1IntersectorKILi4EE9intersectILb1EEEvRKNS_11vboolf_implILi4EEEPKNS_5Accel12IntersectorsERNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_7RayHitKILi4EEEPNS_15RayQueryContextEPKNS0_7GridSOAEmRKNS0_8TravRayKILi4EXT_EEERm.exit, !llvm.loop !12709

bb.x:                                             ; preds = %.preheader1749, %_ZNK6embree4sse218IntersectKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit
  %i.nb = phi i1 [ %i.mt, %.preheader1749 ], [ false, %_ZNK6embree4sse218IntersectKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit ]
  %.0.i1761 = phi i64 [ 0, %.preheader1749 ], [ 1, %_ZNK6embree4sse218IntersectKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit ] ; 3 uses
  %i.nc = add nuw nsw i64 %.0.i1761, %i.na        ; 4 uses
  %i.nd = add nuw nsw i64 %.0.i1761, 1            ; 2 uses
  %i.ne = add nuw nsw i64 %i.nd, %i.na            ; 4 uses
  %i.nf = add nuw nsw i64 %.0.i1761, %16          ; 4 uses
  %i.ng = add nuw nsw i64 %i.nd, %16              ; 4 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.nc
  %i.ni = load float, ptr %i.nh, align 4
  %i.nj = insertelement <4 x float> poison, float %i.ni, i64 0
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.nc
  %i.nm = load float, ptr %i.nl, align 4
  %i.nn = insertelement <4 x float> poison, float %i.nm, i64 0
  %i.no = shufflevector <4 x float> %i.nn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.nc
  %i.nq = load float, ptr %i.np, align 4
  %i.nr = insertelement <4 x float> poison, float %i.nq, i64 0
  %i.ns = shufflevector <4 x float> %i.nr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.ne
  %i.nu = load float, ptr %i.nt, align 4
  %i.nv = insertelement <4 x float> poison, float %i.nu, i64 0
  %i.nw = shufflevector <4 x float> %i.nv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.ne
  %i.ny = load float, ptr %i.nx, align 4
  %i.nz = insertelement <4 x float> poison, float %i.ny, i64 0
  %i.oa = shufflevector <4 x float> %i.nz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.ne
  %i.oc = load float, ptr %i.ob, align 4
  %i.od = insertelement <4 x float> poison, float %i.oc, i64 0
  %i.oe = shufflevector <4 x float> %i.od, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.nf
  %i.og = load float, ptr %i.of, align 4
  %i.oh = insertelement <4 x float> poison, float %i.og, i64 0
  %i.oi = shufflevector <4 x float> %i.oh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.nf
  %i.ok = load float, ptr %i.oj, align 4
  %i.ol = insertelement <4 x float> poison, float %i.ok, i64 0
  %i.om = shufflevector <4 x float> %i.ol, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.nf
  %i.oo = load float, ptr %i.on, align 4
  %i.op = insertelement <4 x float> poison, float %i.oo, i64 0
  %i.oq = shufflevector <4 x float> %i.op, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.ng
  %i.os = load float, ptr %i.or, align 4
  %i.ot = insertelement <4 x float> poison, float %i.os, i64 0
  %i.ou = shufflevector <4 x float> %i.ot, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.ng
  %i.ow = load float, ptr %i.ov, align 4
  %i.ox = insertelement <4 x float> poison, float %i.ow, i64 0
  %i.oy = shufflevector <4 x float> %i.ox, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.ng
  %i.pa = load float, ptr %i.oz, align 4
  %i.pb = insertelement <4 x float> poison, float %i.pa, i64 0
  %i.pc = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pd = load i32, ptr %i.mx, align 8            ; 3 uses
  %i.pe = load i32, ptr %i.my, align 4            ; 2 uses
  %i.pf = load <4 x float>, ptr %2, align 16, !noalias !12892 ; 5 uses
  %i.pg = load <4 x float>, ptr %i.i, align 16, !noalias !12892 ; 5 uses
  %i.ph = load <4 x float>, ptr %i.k, align 16, !noalias !12892 ; 5 uses
  %i.pi = load <4 x float>, ptr %i.g, align 16, !noalias !12892 ; 6 uses
  %i.pj = load <4 x float>, ptr %i.m, align 16, !noalias !12892 ; 6 uses
  %i.pk = load <4 x float>, ptr %i.n, align 16, !noalias !12892 ; 6 uses
  %i.pl = fsub <4 x float> %i.nk, %i.pf           ; 5 uses
  %i.pm = fsub <4 x float> %i.no, %i.pg           ; 5 uses
  %i.pn = fsub <4 x float> %i.ns, %i.ph           ; 5 uses
  %i.po = fsub <4 x float> %i.nw, %i.pf           ; 6 uses
  %i.pp = fsub <4 x float> %i.oa, %i.pg           ; 6 uses
  %i.pq = fsub <4 x float> %i.oe, %i.ph           ; 6 uses
  %i.pr = fsub <4 x float> %i.oi, %i.pf           ; 6 uses
  %i.ps = fsub <4 x float> %i.om, %i.pg           ; 6 uses
  %i.pt = fsub <4 x float> %i.oq, %i.ph           ; 6 uses
  %i.pu = fsub <4 x float> %i.pr, %i.pl           ; 4 uses
  %i.pv = fsub <4 x float> %i.ps, %i.pm           ; 4 uses
  %i.pw = fsub <4 x float> %i.pt, %i.pn           ; 4 uses
  %i.px = fsub <4 x float> %i.pl, %i.po           ; 6 uses
  %i.py = fsub <4 x float> %i.pm, %i.pp           ; 6 uses
  %i.pz = fsub <4 x float> %i.pn, %i.pq           ; 6 uses
  %i.qa = fsub <4 x float> %i.po, %i.pr           ; 4 uses
  %i.qb = fsub <4 x float> %i.pp, %i.ps           ; 4 uses
  %i.qc = fsub <4 x float> %i.pq, %i.pt           ; 4 uses
  %i.qd = fadd <4 x float> %i.pr, %i.pl           ; 2 uses
  %i.qe = fadd <4 x float> %i.ps, %i.pm           ; 2 uses
  %i.qf = fadd <4 x float> %i.pt, %i.pn           ; 2 uses
  %i.qg = fmul <4 x float> %i.qe, %i.pw
  %i.qh = fmul <4 x float> %i.pv, %i.qf
  %i.qi = fsub <4 x float> %i.qh, %i.qg
  %i.qj = fmul <4 x float> %i.pu, %i.qf
  %i.qk = fmul <4 x float> %i.qd, %i.pw
  %i.ql = fsub <4 x float> %i.qk, %i.qj
  %i.qm = fmul <4 x float> %i.qd, %i.pv
  %i.qn = fmul <4 x float> %i.pu, %i.qe
  %i.qo = fsub <4 x float> %i.qn, %i.qm
  %i.qp = fmul <4 x float> %i.qo, %i.pk
  %i.qq = fmul <4 x float> %i.pj, %i.ql
  %i.qr = fadd <4 x float> %i.qp, %i.qq
  %i.qs = fmul <4 x float> %i.pi, %i.qi
  %i.qt = fadd <4 x float> %i.qs, %i.qr           ; 4 uses
  %i.qu = fadd <4 x float> %i.pl, %i.po           ; 2 uses
  %i.qv = fadd <4 x float> %i.pm, %i.pp           ; 2 uses
  %i.qw = fadd <4 x float> %i.pn, %i.pq           ; 2 uses
  %i.qx = fmul <4 x float> %i.qv, %i.pz
  %i.qy = fmul <4 x float> %i.py, %i.qw
  %i.qz = fsub <4 x float> %i.qy, %i.qx
  %i.ra = fmul <4 x float> %i.px, %i.qw
  %i.rb = fmul <4 x float> %i.qu, %i.pz
  %i.rc = fsub <4 x float> %i.rb, %i.ra
  %i.rd = fmul <4 x float> %i.qu, %i.py
  %i.re = fmul <4 x float> %i.px, %i.qv
  %i.rf = fsub <4 x float> %i.re, %i.rd
  %i.rg = fmul <4 x float> %i.rf, %i.pk
  %i.rh = fmul <4 x float> %i.pj, %i.rc
  %i.ri = fadd <4 x float> %i.rg, %i.rh
  %i.rj = fmul <4 x float> %i.pi, %i.qz
  %i.rk = fadd <4 x float> %i.rj, %i.ri           ; 4 uses
  %i.rl = fadd <4 x float> %i.po, %i.pr           ; 4 uses
  %i.rm = fadd <4 x float> %i.pp, %i.ps           ; 4 uses
  %i.rn = fadd <4 x float> %i.pq, %i.pt           ; 4 uses
  %i.ro = fmul <4 x float> %i.rm, %i.qc
  %i.rp = fmul <4 x float> %i.qb, %i.rn
  %i.rq = fsub <4 x float> %i.rp, %i.ro
  %i.rr = fmul <4 x float> %i.qa, %i.rn
  %i.rs = fmul <4 x float> %i.rl, %i.qc
  %i.rt = fsub <4 x float> %i.rs, %i.rr
  %i.ru = fmul <4 x float> %i.rl, %i.qb
  %i.rv = fmul <4 x float> %i.qa, %i.rm
  %i.rw = fsub <4 x float> %i.rv, %i.ru
  %i.rx = fmul <4 x float> %i.rw, %i.pk
  %i.ry = fmul <4 x float> %i.pj, %i.rt
  %i.rz = fadd <4 x float> %i.rx, %i.ry
  %i.sa = fmul <4 x float> %i.pi, %i.rq
  %i.sb = fadd <4 x float> %i.sa, %i.rz           ; 3 uses
  %i.sc = fadd <4 x float> %i.qt, %i.rk
  %i.sd = fadd <4 x float> %i.sb, %i.sc           ; 2 uses
  %i.se = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.sd)
  %i.sf = fmul <4 x float> %i.se, splat (float f0x34000000) ; 2 uses
  %i.sg = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qt, <4 x float> %i.rk)
  %i.sh = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.sg, <4 x float> %i.sb)
  %i.si = fneg <4 x float> %i.sf
  %i.sj = fcmp uge <4 x float> %i.sh, %i.si
  %i.sk = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qt, <4 x float> %i.rk)
  %i.sl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.sk, <4 x float> %i.sb)
  %i.sm = fcmp ole <4 x float> %i.sl, %i.sf
  %i.sn = or <4 x i1> %i.sj, %i.sm
  %i.so = and <4 x i1> %i.ly, %i.sn               ; 3 uses
  %i.sp = bitcast <4 x i1> %i.so to i4
  %i.sq = icmp eq i4 %i.sp, 0
  br i1 %i.sq, label %_ZNK6embree4sse220PlueckerIntersectorKILi4ELi4EE10intersectKINS0_6MapUV0ILi4EEEEENS_11vboolf_implILi4EEERKS7_RNS_4RayKILi4EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESI_SI_RKT_RNS0_12PlueckerHitKILi4ESJ_EE.exit, label %bb.y, !prof !70

bb.y:                                             ; preds = %bb.x
  %i.sr = fmul <4 x float> %i.py, %i.pw           ; 2 uses
  %i.ss = fmul <4 x float> %i.pu, %i.pz           ; 2 uses
  %i.st = fmul <4 x float> %i.px, %i.pv           ; 2 uses
  %i.su = fmul <4 x float> %i.qb, %i.pz           ; 2 uses
  %i.sv = fmul <4 x float> %i.px, %i.qc           ; 2 uses
  %i.sw = fmul <4 x float> %i.qa, %i.py           ; 2 uses
  %i.sx = fmul <4 x float> %i.pv, %i.pz
  %i.sy = fsub <4 x float> %i.sx, %i.sr
  %i.sz = fmul <4 x float> %i.px, %i.pw
  %i.ta = fsub <4 x float> %i.sz, %i.ss
  %i.tb = fmul <4 x float> %i.pu, %i.py
  %i.tc = fsub <4 x float> %i.tb, %i.st
  %i.td = fmul <4 x float> %i.py, %i.qc
  %i.te = fsub <4 x float> %i.td, %i.su
  %i.tf = fmul <4 x float> %i.qa, %i.pz
  %i.tg = fsub <4 x float> %i.tf, %i.sv
  %i.th = fmul <4 x float> %i.px, %i.qb
  %i.ti = fsub <4 x float> %i.th, %i.sw
  %i.tj = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.sr)
  %i.tk = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.su)
  %i.tl = fcmp uge <4 x float> %i.tj, %i.tk
  %i.tm = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ss)
  %i.tn = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.sv)
  %i.to = fcmp uge <4 x float> %i.tm, %i.tn
  %i.tp = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.st)
  %i.tq = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.sw)
  %i.tr = fcmp uge <4 x float> %i.tp, %i.tq
  %.v1732 = select <4 x i1> %i.tl, <4 x float> %i.te, <4 x float> %i.sy ; 3 uses
  %.v1733 = select <4 x i1> %i.to, <4 x float> %i.tg, <4 x float> %i.ta ; 3 uses
  %.v1734 = select <4 x i1> %i.tr, <4 x float> %i.ti, <4 x float> %i.tc ; 3 uses
  %i.ts = fmul <4 x float> %i.pk, %.v1734
  %i.tt = fmul <4 x float> %i.pj, %.v1733
  %i.tu = fadd <4 x float> %i.ts, %i.tt
  %i.tv = fmul <4 x float> %i.pi, %.v1732
  %i.tw = fadd <4 x float> %i.tv, %i.tu           ; 2 uses
  %i.tx = fadd <4 x float> %i.tw, %i.tw           ; 3 uses
  %i.ty = fmul <4 x float> %i.pn, %.v1734
  %i.tz = fmul <4 x float> %i.pm, %.v1733
  %i.ua = fadd <4 x float> %i.ty, %i.tz
  %i.ub = fmul <4 x float> %i.pl, %.v1732
  %i.uc = fadd <4 x float> %i.ub, %i.ua           ; 2 uses
  %i.ud = fadd <4 x float> %i.uc, %i.uc
  %i.ue = call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.tx) ; 3 uses
  %i.uf = fmul <4 x float> %i.tx, %i.ue
  %i.ug = fsub <4 x float> splat (float 1.000000e+00), %i.uf
  %i.uh = fmul <4 x float> %i.ue, %i.ug
  %i.ui = fadd <4 x float> %i.ue, %i.uh
  %i.uj = fmul <4 x float> %i.ud, %i.ui           ; 3 uses
  %i.uk = load <4 x float>, ptr %i.ah, align 16, !noalias !12893
  %i.ul = fcmp ole <4 x float> %i.uk, %i.uj
  %i.um = load <4 x float>, ptr %i.ak, align 16, !noalias !12894
  %i.un = fcmp ole <4 x float> %i.uj, %i.um
  %i.uo = and <4 x i1> %i.ul, %i.un
  %i.up = fcmp une <4 x float> %i.tx, zeroinitializer
  %i.uq = and <4 x i1> %i.up, %i.uo
  %i.ur = and <4 x i1> %i.so, %i.uq
  %i.us = bitcast <4 x float> %i.uj to <4 x i32>
end_hunk_3
begin_hunk_4_@_ZN6embree4sse222BVHNIntersectorKHybridILi4ELi4ELi1ELb1ENS0_24SubdivPatch1IntersectorKILi4EEELb1EE16occludedCoherentEPNS_9vint_implILi4EEEPNS_5Accel12IntersectorsERNS_4RayKILi4EEEPNS_15RayQueryContextE:bb.a
  %.not1583 = icmp eq i64 %i.hc, 0
  br i1 %.not1583, label %.lr.ph, label %._crit_edge.thread, !prof !75

bb.e:                                             ; preds = %bb.k
  %i.hd = and i64 %.sroa.093.2, 8
  %.not = icmp eq i64 %i.hd, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge, !prof !76, !llvm.loop !13302

.lr.ph:                                           ; preds = %.preheader1576, %bb.e
  %.2421585 = phi ptr [ %.5, %bb.e ], [ %i.gw, %.preheader1576 ] ; 2 uses
  %.sroa.093.01584 = phi i64 [ %.sroa.093.2, %bb.e ], [ %i.hb, %.preheader1576 ]
  %i.he = inttoptr i64 %.sroa.093.01584 to ptr    ; 7 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 32 ; 7 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %..i.i
  %i.hh = load <4 x float>, ptr %i.hg, align 16, !alias.scope !13385
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.fr
  %i.hj = load <4 x float>, ptr %i.hi, align 16, !alias.scope !13385
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.ft
  %i.hl = load <4 x float>, ptr %i.hk, align 16, !alias.scope !13385
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.fu
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !alias.scope !13385
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.fv
  %i.hp = load <4 x float>, ptr %i.ho, align 16, !alias.scope !13385
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.fw
  %i.hr = load <4 x float>, ptr %i.hq, align 16, !alias.scope !13385
  %i.hs = fsub <4 x float> %i.hh, %i.fy
  %i.ht = fmul <4 x float> %i.fz, %i.hs
  %i.hu = fsub <4 x float> %i.hj, %i.ga
  %i.hv = fmul <4 x float> %i.gb, %i.hu
  %i.hw = fsub <4 x float> %i.hl, %i.gc
  %i.hx = fmul <4 x float> %i.gd, %i.hw
  %i.hy = fsub <4 x float> %i.hn, %i.ge
  %i.hz = fmul <4 x float> %i.gf, %i.hy
  %i.ia = fsub <4 x float> %i.hp, %i.gg
  %i.ib = fmul <4 x float> %i.gh, %i.ia
  %i.ic = fsub <4 x float> %i.hr, %i.gi
  %i.id = fmul <4 x float> %i.gj, %i.ic
  %i.ie = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ht, <4 x float> %i.hv)
  %i.if = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hx, <4 x float> %i.gk)
  %i.ig = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ie, <4 x float> %i.if)
  %i.ih = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hz, <4 x float> %i.ib)
  %i.ii = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.id, <4 x float> %i.gl)
  %i.ij = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ih, <4 x float> %i.ii)
  %i.ik = fmul <4 x float> %i.ig, splat (float f0x3F7FFFFC)
  %i.il = fmul <4 x float> %i.ij, splat (float f0x3F800002)
  %i.im = fcmp ole <4 x float> %i.ik, %i.il
  %i.in = bitcast <4 x i1> %i.im to i4            ; 2 uses
  %.not54 = icmp eq i4 %i.in, 0
  br i1 %.not54, label %.thread, label %.preheader1575, !prof !70

.preheader1575:                                   ; preds = %.lr.ph
  %i.io = zext i4 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.he, i64 64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.he, i64 96
  %i.ir = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.is = getelementptr inbounds nuw i8, ptr %i.he, i64 80
  %i.it = getelementptr inbounds nuw i8, ptr %i.he, i64 112
  br label %bb.f

bb.f:                                             ; preds = %.preheader1575, %bb.j
  %.sroa.093.1 = phi i64 [ %.sroa.093.2, %bb.j ], [ 8, %.preheader1575 ] ; 3 uses
  %.01510 = phi i64 [ %i.iw, %bb.j ], [ %i.io, %.preheader1575 ] ; 3 uses
  %.343 = phi ptr [ %.5, %bb.j ], [ %.2421585, %.preheader1575 ] ; 5 uses
  %.1 = phi i64 [ %.2, %bb.j ], [ 0, %.preheader1575 ] ; 2 uses
  %i.iu = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.01510) #10, !srcloc !71 ; 7 uses
  %i.iv = add nsw i64 %.01510, -1
  %i.iw = and i64 %i.iv, %.01510                  ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.iu
  %i.iy = load float, ptr %i.ix, align 4, !noalias !13386
  %i.iz = insertelement <4 x float> poison, float %i.iy, i64 0
  %i.ja = shufflevector <4 x float> %i.iz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jb = fsub <4 x float> %i.ja, %i.i
  %i.jc = fmul <4 x float> %i.ad, %i.jb           ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.iu
  %i.je = load float, ptr %i.jd, align 4, !noalias !13386
  %i.jf = insertelement <4 x float> poison, float %i.je, i64 0
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jh = fsub <4 x float> %i.jg, %i.k
  %i.ji = fmul <4 x float> %i.af, %i.jh           ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.iu
  %i.jk = load float, ptr %i.jj, align 4, !noalias !13386
  %i.jl = insertelement <4 x float> poison, float %i.jk, i64 0
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jn = fsub <4 x float> %i.jm, %i.m
  %i.jo = fmul <4 x float> %i.ah, %i.jn           ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.iu
  %i.jq = load float, ptr %i.jp, align 4, !noalias !13386
  %i.jr = insertelement <4 x float> poison, float %i.jq, i64 0
  %i.js = shufflevector <4 x float> %i.jr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jt = fsub <4 x float> %i.js, %i.i
  %i.ju = fmul <4 x float> %i.ad, %i.jt           ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.iu
  %i.jw = load float, ptr %i.jv, align 4, !noalias !13386
  %i.jx = insertelement <4 x float> poison, float %i.jw, i64 0
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jz = fsub <4 x float> %i.jy, %i.k
  %i.ka = fmul <4 x float> %i.af, %i.jz           ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.iu
  %i.kc = load float, ptr %i.kb, align 4, !noalias !13386
  %i.kd = insertelement <4 x float> poison, float %i.kc, i64 0
  %i.ke = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kf = fsub <4 x float> %i.ke, %i.m
  %i.kg = fmul <4 x float> %i.ah, %i.kf           ; 2 uses
  %i.kh = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jc, <4 x float> %i.ju)
  %i.ki = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ji, <4 x float> %i.ka)
  %i.kj = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kh, <4 x float> %i.ki)
  %i.kk = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jo, <4 x float> %i.kg)
  %i.kl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kj, <4 x float> %i.kk)
  %i.km = fmul <4 x float> %i.kl, splat (float f0x3F7FFFFA)
  %i.kn = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jc, <4 x float> %i.ju)
  %i.ko = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ji, <4 x float> %i.ka)
  %i.kp = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kn, <4 x float> %i.ko)
  %i.kq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jo, <4 x float> %i.kg)
  %i.kr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kp, <4 x float> %i.kq)
  %i.ks = fmul <4 x float> %i.kr, splat (float f0x3F800003)
  %i.kt = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.km, <4 x float> %i.ck)
  %i.ku = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ks, <4 x float> %.sroa.44.01648)
  %i.kv = fcmp ole <4 x float> %i.kt, %i.ku
  %i.kw = bitcast <4 x i1> %i.kv to i4            ; 2 uses
  %.not1571 = icmp eq i4 %i.kw, 0
  br i1 %.not1571, label %bb.j, label %bb.g, !prof !70

bb.g:                                             ; preds = %bb.f
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.iu
  %.sroa.01.0.copyload = load i64, ptr %i.kx, align 8 ; 2 uses
  %i.ky = inttoptr i64 %.sroa.01.0.copyload to ptr ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.ky, i32 0, i32 3, i32 1)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.kz, i32 0, i32 3, i32 1)
  %.not55 = icmp eq i64 %.sroa.093.1, 8
  br i1 %.not55, label %bb.i, label %bb.h, !prof !70

bb.h:                                             ; preds = %bb.g
  store i64 %.sroa.093.1, ptr %.343, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %.343, i64 8
  store i64 %.1, ptr %i.la, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %.343, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.4 = phi ptr [ %i.lb, %bb.h ], [ %.343, %bb.g ]
  %i.lc = zext i4 %i.kw to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.sroa.093.2 = phi i64 [ %.sroa.01.0.copyload, %bb.i ], [ %.sroa.093.1, %bb.f ] ; 5 uses
  %.5 = phi ptr [ %.4, %bb.i ], [ %.343, %bb.f ]  ; 5 uses
  %.2 = phi i64 [ %i.lc, %bb.i ], [ %.1, %bb.f ]  ; 2 uses
  %.not56 = icmp eq i64 %i.iw, 0
  br i1 %.not56, label %bb.k, label %bb.f, !llvm.loop !13307

bb.k:                                             ; preds = %bb.j
  %.not1572 = icmp eq i64 %.sroa.093.2, 8
  br i1 %.not1572, label %.thread, label %bb.e, !llvm.loop !13302

._crit_edge:                                      ; preds = %bb.e
  %i.ld = icmp eq i64 %.2, 0
  br i1 %i.ld, label %.loopexit.loopexit, label %._crit_edge.thread, !prof !83, !llvm.loop !13301

._crit_edge.thread:                               ; preds = %.preheader1576, %._crit_edge
  %.242.lcssa1610 = phi ptr [ %.5, %._crit_edge ], [ %i.gw, %.preheader1576 ] ; 4 uses
  %.sroa.093.0.lcssa1609 = phi i64 [ %.sroa.093.2, %._crit_edge ], [ %i.hb, %.preheader1576 ] ; 3 uses
  %i.le = and i64 %.sroa.093.0.lcssa1609, 15
  %i.lf = icmp eq i64 %i.le, 8
  br i1 %i.lf, label %bb.l, label %bb.ak, !prof !69

bb.l:                                             ; preds = %._crit_edge.thread
  %i.lg = xor <4 x i32> %i.gu, splat (i32 -1)
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0187.11647, i64 20
  %i.li = load i32, ptr %i.lh, align 4, !noalias !13387
  %i.lj = zext i32 %i.li to i64                   ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0187.11647, i64 12
  %i.ll = load i32, ptr %i.lk, align 4, !noalias !13387 ; 2 uses
  %i.lm = zext i32 %i.ll to i64                   ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0187.11647, i64 36
  %i.lo = load i32, ptr %i.ln, align 4, !noalias !13387
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr i8, ptr %.sroa.0187.11647, i64 %i.lp
  %i.lr = lshr i64 %.sroa.093.0.lcssa1609, 4
  %i.ls = getelementptr [4 x i8], ptr %i.lq, i64 %i.lr
  %i.lt = getelementptr i8, ptr %i.ls, i64 44     ; 7 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lj ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.lj, 3
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 %.idx.i ; 4 uses
  %.idx79.i = mul nuw nsw i64 %i.lj, 12
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 %.idx79.i ; 6 uses
  %i.lx = icmp eq i32 %i.ll, 2
  %i.ly = select i1 %i.lx, i64 1, i64 2
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0187.11647, i64 16
  %i.ma = load i32, ptr %i.lz, align 8, !noalias !13387
  %i.mb = icmp ne i32 %i.ma, 2
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0187.11647, i64 24 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0187.11647, i64 28 ; 2 uses
  br label %.preheader1574

.preheader1574:                                   ; preds = %bb.l, %.critedge.i
  %i.me = phi i1 [ %i.mb, %bb.l ], [ false, %.critedge.i ]
  %.078.i1588 = phi i64 [ 0, %bb.l ], [ 1, %.critedge.i ] ; 2 uses
  %i.mf = phi <4 x i32> [ %i.lg, %bb.l ], [ %i.aji, %.critedge.i ]
  %i.mg = mul nuw nsw i64 %.078.i1588, %i.lm      ; 2 uses
  %12 = shl nuw nsw i64 %i.lm, %.078.i1588        ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit, %.preheader1574
  %.0.i1646 = phi i64 [ 0, %.preheader1574 ], [ %i.mj, %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit ] ; 3 uses
  %i.mh = phi <4 x i32> [ %i.mf, %.preheader1574 ], [ %i.ajf, %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit ] ; 3 uses
  %i.mi = add nuw nsw i64 %.0.i1646, %i.mg        ; 4 uses
  %i.mj = add nuw nsw i64 %.0.i1646, 1            ; 4 uses
  %i.mk = add nuw nsw i64 %i.mj, %i.mg            ; 5 uses
  %i.ml = add nuw nsw i64 %.0.i1646, %12          ; 5 uses
  %i.mm = add nuw nsw i64 %i.mj, %12              ; 4 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.mi
  %i.mo = load float, ptr %i.mn, align 4, !noalias !13387
  %i.mp = insertelement <4 x float> poison, float %i.mo, i64 0
  %i.mq = shufflevector <4 x float> %i.mp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.mi
  %i.ms = load float, ptr %i.mr, align 4, !noalias !13387
  %i.mt = insertelement <4 x float> poison, float %i.ms, i64 0
  %i.mu = shufflevector <4 x float> %i.mt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.mi
  %i.mw = load float, ptr %i.mv, align 4, !noalias !13387
  %i.mx = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.mk
  %i.na = load float, ptr %i.mz, align 4, !noalias !13387
  %i.nb = insertelement <4 x float> poison, float %i.na, i64 0
  %i.nc = shufflevector <4 x float> %i.nb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.mk
  %i.ne = load float, ptr %i.nd, align 4, !noalias !13387
  %i.nf = insertelement <4 x float> poison, float %i.ne, i64 0
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.mk
  %i.ni = load float, ptr %i.nh, align 4, !noalias !13387
  %i.nj = insertelement <4 x float> poison, float %i.ni, i64 0
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.ml
  %i.nm = load float, ptr %i.nl, align 4, !noalias !13387
  %i.nn = insertelement <4 x float> poison, float %i.nm, i64 0
  %i.no = shufflevector <4 x float> %i.nn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.ml
  %i.nq = load float, ptr %i.np, align 4, !noalias !13387
  %i.nr = insertelement <4 x float> poison, float %i.nq, i64 0
  %i.ns = shufflevector <4 x float> %i.nr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.ml
  %i.nu = load float, ptr %i.nt, align 4, !noalias !13387
  %i.nv = insertelement <4 x float> poison, float %i.nu, i64 0
  %i.nw = shufflevector <4 x float> %i.nv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.mm
  %i.ny = load float, ptr %i.nx, align 4, !noalias !13387
  %i.nz = insertelement <4 x float> poison, float %i.ny, i64 0
  %i.oa = shufflevector <4 x float> %i.nz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.mm
  %i.oc = load float, ptr %i.ob, align 4, !noalias !13387
  %i.od = insertelement <4 x float> poison, float %i.oc, i64 0
  %i.oe = shufflevector <4 x float> %i.od, <4 x float> poison, <4 x i32> zeroinitializer
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.mm
  %i.og = load float, ptr %i.of, align 4, !noalias !13387
  %i.oh = insertelement <4 x float> poison, float %i.og, i64 0
  %i.oi = shufflevector <4 x float> %i.oh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oj = load i32, ptr %i.mc, align 8, !noalias !13387 ; 2 uses
  %i.ok = load i32, ptr %i.md, align 4, !noalias !13387
  %i.ol = load <4 x float>, ptr %2, align 16, !noalias !13388 ; 3 uses
  %i.om = load <4 x float>, ptr %i.j, align 16, !noalias !13388 ; 3 uses
  %i.on = load <4 x float>, ptr %i.l, align 16, !noalias !13388 ; 3 uses
  %i.oo = load <4 x float>, ptr %i.h, align 16, !noalias !13388 ; 4 uses
  %i.op = load <4 x float>, ptr %i.n, align 16, !noalias !13388 ; 4 uses
  %i.oq = load <4 x float>, ptr %i.o, align 16, !noalias !13388 ; 4 uses
  %i.or = fsub <4 x float> %i.mq, %i.ol           ; 5 uses
  %i.os = fsub <4 x float> %i.mu, %i.om           ; 5 uses
  %i.ot = fsub <4 x float> %i.my, %i.on           ; 5 uses
  %i.ou = fsub <4 x float> %i.nc, %i.ol           ; 4 uses
  %i.ov = fsub <4 x float> %i.ng, %i.om           ; 4 uses
  %i.ow = fsub <4 x float> %i.nk, %i.on           ; 4 uses
  %i.ox = fsub <4 x float> %i.no, %i.ol           ; 4 uses
  %i.oy = fsub <4 x float> %i.ns, %i.om           ; 4 uses
  %i.oz = fsub <4 x float> %i.nw, %i.on           ; 4 uses
  %i.pa = fsub <4 x float> %i.ox, %i.or           ; 4 uses
  %i.pb = fsub <4 x float> %i.oy, %i.os           ; 4 uses
  %i.pc = fsub <4 x float> %i.oz, %i.ot           ; 4 uses
  %i.pd = fsub <4 x float> %i.or, %i.ou           ; 6 uses
  %i.pe = fsub <4 x float> %i.os, %i.ov           ; 6 uses
  %i.pf = fsub <4 x float> %i.ot, %i.ow           ; 6 uses
  %i.pg = fsub <4 x float> %i.ou, %i.ox           ; 4 uses
  %i.ph = fsub <4 x float> %i.ov, %i.oy           ; 4 uses
  %i.pi = fsub <4 x float> %i.ow, %i.oz           ; 4 uses
  %i.pj = fadd <4 x float> %i.ox, %i.or           ; 2 uses
  %i.pk = fadd <4 x float> %i.oy, %i.os           ; 2 uses
  %i.pl = fadd <4 x float> %i.oz, %i.ot           ; 2 uses
  %i.pm = fmul <4 x float> %i.pk, %i.pc
  %i.pn = fmul <4 x float> %i.pb, %i.pl
  %i.po = fsub <4 x float> %i.pn, %i.pm
  %i.pp = fmul <4 x float> %i.pa, %i.pl
  %i.pq = fmul <4 x float> %i.pj, %i.pc
  %i.pr = fsub <4 x float> %i.pq, %i.pp
  %i.ps = fmul <4 x float> %i.pj, %i.pb
  %i.pt = fmul <4 x float> %i.pa, %i.pk
  %i.pu = fsub <4 x float> %i.pt, %i.ps
  %i.pv = fmul <4 x float> %i.pu, %i.oq
  %i.pw = fmul <4 x float> %i.op, %i.pr
  %i.px = fadd <4 x float> %i.pv, %i.pw
  %i.py = fmul <4 x float> %i.oo, %i.po
  %i.pz = fadd <4 x float> %i.py, %i.px           ; 4 uses
  %i.qa = fadd <4 x float> %i.or, %i.ou           ; 2 uses
  %i.qb = fadd <4 x float> %i.os, %i.ov           ; 2 uses
  %i.qc = fadd <4 x float> %i.ot, %i.ow           ; 2 uses
  %i.qd = fmul <4 x float> %i.qb, %i.pf
  %i.qe = fmul <4 x float> %i.pe, %i.qc
  %i.qf = fsub <4 x float> %i.qe, %i.qd
  %i.qg = fmul <4 x float> %i.pd, %i.qc
  %i.qh = fmul <4 x float> %i.qa, %i.pf
  %i.qi = fsub <4 x float> %i.qh, %i.qg
  %i.qj = fmul <4 x float> %i.qa, %i.pe
  %i.qk = fmul <4 x float> %i.pd, %i.qb
  %i.ql = fsub <4 x float> %i.qk, %i.qj
  %i.qm = fmul <4 x float> %i.ql, %i.oq
  %i.qn = fmul <4 x float> %i.op, %i.qi
  %i.qo = fadd <4 x float> %i.qm, %i.qn
  %i.qp = fmul <4 x float> %i.oo, %i.qf
  %i.qq = fadd <4 x float> %i.qp, %i.qo           ; 4 uses
  %i.qr = fadd <4 x float> %i.ou, %i.ox           ; 2 uses
  %i.qs = fadd <4 x float> %i.ov, %i.oy           ; 2 uses
  %i.qt = fadd <4 x float> %i.ow, %i.oz           ; 2 uses
  %i.qu = fmul <4 x float> %i.qs, %i.pi
  %i.qv = fmul <4 x float> %i.ph, %i.qt
  %i.qw = fsub <4 x float> %i.qv, %i.qu
  %i.qx = fmul <4 x float> %i.pg, %i.qt
  %i.qy = fmul <4 x float> %i.qr, %i.pi
  %i.qz = fsub <4 x float> %i.qy, %i.qx
  %i.ra = fmul <4 x float> %i.qr, %i.ph
  %i.rb = fmul <4 x float> %i.pg, %i.qs
  %i.rc = fsub <4 x float> %i.rb, %i.ra
  %i.rd = fmul <4 x float> %i.rc, %i.oq
  %i.re = fmul <4 x float> %i.op, %i.qz
  %i.rf = fadd <4 x float> %i.rd, %i.re
  %i.rg = fmul <4 x float> %i.oo, %i.qw
  %i.rh = fadd <4 x float> %i.rg, %i.rf           ; 3 uses
  %i.ri = fadd <4 x float> %i.pz, %i.qq
  %i.rj = fadd <4 x float> %i.rh, %i.ri           ; 2 uses
  %i.rk = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rj)
  %i.rl = fmul <4 x float> %i.rk, splat (float f0x34000000) ; 2 uses
  %i.rm = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.pz, <4 x float> %i.qq)
  %i.rn = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.rm, <4 x float> %i.rh)
  %i.ro = fneg <4 x float> %i.rl
  %i.rp = fcmp uge <4 x float> %i.rn, %i.ro
  %i.rq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pz, <4 x float> %i.qq)
  %i.rr = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.rq, <4 x float> %i.rh)
  %i.rs = fcmp ole <4 x float> %i.rr, %i.rl
  %i.rt = or <4 x i1> %i.rp, %i.rs
  %i.ru = select <4 x i1> %i.rt, <4 x i32> %i.mh, <4 x i32> zeroinitializer ; 3 uses
  %i.rv = icmp slt <4 x i32> %i.ru, zeroinitializer
  %i.rw = bitcast <4 x i1> %i.rv to i4
  %i.rx = icmp eq i4 %i.rw, 0
  br i1 %i.rx, label %_ZNK6embree4sse220PlueckerIntersectorKILi4ELi4EE10intersectKINS0_6MapUV0ILi4EEENS0_17OccludedKEpilogMUILi1ELi4ELb1EEEEENS_11vboolf_implILi4EEERKS9_RNS_4RayKILi4EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESK_SK_RKT_RKT0_.exit, label %bb.n, !prof !70

bb.n:                                             ; preds = %bb.m
  %i.ry = fmul <4 x float> %i.pe, %i.pc           ; 2 uses
  %i.rz = fmul <4 x float> %i.pa, %i.pf           ; 2 uses
  %i.sa = fmul <4 x float> %i.pd, %i.pb           ; 2 uses
  %i.sb = fmul <4 x float> %i.ph, %i.pf           ; 2 uses
  %i.sc = fmul <4 x float> %i.pd, %i.pi           ; 2 uses
  %i.sd = fmul <4 x float> %i.pg, %i.pe           ; 2 uses
  %i.se = fmul <4 x float> %i.pb, %i.pf
  %i.sf = fsub <4 x float> %i.se, %i.ry
  %i.sg = fmul <4 x float> %i.pd, %i.pc
  %i.sh = fsub <4 x float> %i.sg, %i.rz
  %i.si = fmul <4 x float> %i.pa, %i.pe
  %i.sj = fsub <4 x float> %i.si, %i.sa
  %i.sk = fmul <4 x float> %i.pe, %i.pi
  %i.sl = fsub <4 x float> %i.sk, %i.sb
  %i.sm = fmul <4 x float> %i.pg, %i.pf
  %i.sn = fsub <4 x float> %i.sm, %i.sc
  %i.so = fmul <4 x float> %i.pd, %i.ph
  %i.sp = fsub <4 x float> %i.so, %i.sd
  %i.sq = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ry)
  %i.sr = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.sb)
  %i.ss = fcmp uge <4 x float> %i.sq, %i.sr
  %i.st = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rz)
  %i.su = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.sc)
  %i.sv = fcmp uge <4 x float> %i.st, %i.su
  %i.sw = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.sa)
  %i.sx = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.sd)
  %i.sy = fcmp uge <4 x float> %i.sw, %i.sx
  %.v1554 = select <4 x i1> %i.ss, <4 x float> %i.sl, <4 x float> %i.sf ; 3 uses
  %.v1555 = select <4 x i1> %i.sv, <4 x float> %i.sn, <4 x float> %i.sh ; 3 uses
  %.v1556 = select <4 x i1> %i.sy, <4 x float> %i.sp, <4 x float> %i.sj ; 3 uses
  %i.sz = fmul <4 x float> %i.oq, %.v1556
  %i.ta = fmul <4 x float> %i.op, %.v1555
  %i.tb = fadd <4 x float> %i.sz, %i.ta
  %i.tc = fmul <4 x float> %i.oo, %.v1554
  %i.td = fadd <4 x float> %i.tc, %i.tb           ; 2 uses
  %i.te = fadd <4 x float> %i.td, %i.td           ; 3 uses
  %i.tf = fmul <4 x float> %i.ot, %.v1556
  %i.tg = fmul <4 x float> %i.os, %.v1555
  %i.th = fadd <4 x float> %i.tf, %i.tg
  %i.ti = fmul <4 x float> %i.or, %.v1554
  %i.tj = fadd <4 x float> %i.ti, %i.th           ; 2 uses
  %i.tk = fadd <4 x float> %i.tj, %i.tj
  %i.tl = call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.te) ; 3 uses
  %i.tm = fmul <4 x float> %i.te, %i.tl
  %i.tn = fsub <4 x float> splat (float 1.000000e+00), %i.tm
  %i.to = fmul <4 x float> %i.tl, %i.tn
  %i.tp = fadd <4 x float> %i.tl, %i.to
  %i.tq = fmul <4 x float> %i.tk, %i.tp           ; 3 uses
  %i.tr = load <4 x float>, ptr %i.ai, align 16, !noalias !13389
  %i.ts = fcmp ole <4 x float> %i.tr, %i.tq
  %i.tt = load <4 x float>, ptr %i.al, align 16, !noalias !13390
  %i.tu = fcmp ole <4 x float> %i.tq, %i.tt
  %i.tv = and <4 x i1> %i.ts, %i.tu
  %i.tw = fcmp une <4 x float> %i.te, zeroinitializer
  %i.tx = select <4 x i1> %i.tw, <4 x i1> %i.tv, <4 x i1> zeroinitializer
  %i.ty = select <4 x i1> %i.tx, <4 x i32> %i.ru, <4 x i32> zeroinitializer
end_hunk_4
begin_hunk_5_@_ZN6embree4sse222BVHNIntersectorKHybridILi4ELi4ELi1ELb1ENS0_24SubdivPatch1IntersectorKILi4EEELb1EE16occludedCoherentEPNS_9vint_implILi4EEEPNS_5Accel12IntersectorsERNS_4RayKILi4EEEPNS_15RayQueryContextE:bb.a
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 52
  %i.aeu = load i32, ptr %i.aet, align 4, !noalias !13403
  %i.aev = insertelement <4 x i32> poison, i32 %i.aeu, i64 0
  %i.aew = shufflevector <4 x i32> %i.aev, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aex = load <4 x i32>, ptr %i.az, align 16, !noalias !13404
  %i.aey = and <4 x i32> %i.aew, %i.aex
  %.not1565 = icmp eq <4 x i32> %i.aey, zeroinitializer
  %i.aez = select <4 x i1> %.not1565, <4 x i32> zeroinitializer, <4 x i32> %.sroa.0891.0 ; 6 uses
  %i.afa = icmp slt <4 x i32> %i.aez, zeroinitializer
  %i.afb = bitcast <4 x i1> %i.afa to i4
  %i.afc = icmp eq i4 %i.afb, 0
  br i1 %i.afc, label %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit, label %bb.aa, !prof !70

bb.aa:                                            ; preds = %_ZNK6embree4sse220PlueckerIntersectorKILi4ELi4EE10intersectKINS0_6MapUV1ILi4EEENS0_17OccludedKEpilogMUILi1ELi4ELb1EEEEENS_11vboolf_implILi4EEERKS9_RNS_4RayKILi4EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESK_SK_RKT_RKT0_.exit
  %i.afd = load ptr, ptr %i.ba, align 8, !noalias !13403
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 16
  %i.aff = load ptr, ptr %i.afe, align 8, !noalias !13403
  %.not1566 = icmp eq ptr %i.aff, null
  br i1 %.not1566, label %bb.ab, label %.critedge.i60, !prof !69

bb.ab:                                            ; preds = %bb.aa
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aes, i64 72
  %i.afh = load ptr, ptr %i.afg, align 8, !noalias !13403
  %.not1567 = icmp eq ptr %i.afh, null
  br i1 %.not1567, label %bb.aj, label %.critedge.i60, !prof !69

.critedge.i60:                                    ; preds = %bb.ab, %bb.aa
  %i.afi = call <4 x float> @llvm.fabs.v4f32(<4 x float> %.sroa.6899.1)
  %i.afj = call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %.sroa.6899.1) ; 3 uses
  %i.afk = fmul <4 x float> %.sroa.6899.1, %i.afj
  %i.afl = fsub <4 x float> splat (float 1.000000e+00), %i.afk
  %i.afm = fmul <4 x float> %i.afj, %i.afl
  %i.afn = fadd <4 x float> %i.afj, %i.afm
  %i.afo = fcmp uge <4 x float> %i.afi, splat (float 1.000000e-18)
  %i.afp = select <4 x i1> %i.afo, <4 x float> %i.afn, <4 x float> zeroinitializer ; 2 uses
  %i.afq = fmul <4 x float> %.sroa.0897.1, %i.afp
  %i.afr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.afq, <4 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.afs = fmul <4 x float> %.sroa.4898.1, %i.afp
  %i.aft = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.afs, <4 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.mk
  %i.afv = load float, ptr %i.afu, align 4, !noalias !13405
  %i.afw = insertelement <4 x float> poison, float %i.afv, i64 0
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.ml
  %i.afy = load float, ptr %i.afx, align 4, !noalias !13405
  %i.afz = insertelement <4 x float> poison, float %i.afy, i64 0
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.mm
  %i.agb = load float, ptr %i.aga, align 4, !noalias !13405
  %i.agc = insertelement <4 x float> poison, float %i.agb, i64 0
  %i.agd = bitcast <4 x float> %i.afz to <4 x i32>
  %i.age = shufflevector <4 x i32> %i.agd, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.agf = lshr <4 x i32> %i.age, splat (i32 16)
  %i.agg = and <4 x i32> %i.age, splat (i32 65535)
  %i.agh = uitofp nneg <4 x i32> %i.agg to <4 x float>
  %i.agi = fmul nnan <4 x float> %i.agh, splat (float f0x39000000)
  %i.agj = uitofp nneg <4 x i32> %i.agf to <4 x float>
  %i.agk = fmul nnan <4 x float> %i.agj, splat (float f0x39000000)
  %i.agl = bitcast <4 x float> %i.afw to <4 x i32>
  %i.agm = shufflevector <4 x i32> %i.agl, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.agn = lshr <4 x i32> %i.agm, splat (i32 16)
  %i.ago = and <4 x i32> %i.agm, splat (i32 65535)
  %i.agp = uitofp nneg <4 x i32> %i.ago to <4 x float>
  %i.agq = fmul nnan <4 x float> %i.agp, splat (float f0x39000000)
  %i.agr = uitofp nneg <4 x i32> %i.agn to <4 x float>
  %i.ags = fmul nnan <4 x float> %i.agr, splat (float f0x39000000)
  %i.agt = bitcast <4 x float> %i.agc to <4 x i32>
  %i.agu = shufflevector <4 x i32> %i.agt, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.agv = lshr <4 x i32> %i.agu, splat (i32 16)
  %i.agw = and <4 x i32> %i.agu, splat (i32 65535)
  %i.agx = uitofp nneg <4 x i32> %i.agw to <4 x float>
  %i.agy = fmul nnan <4 x float> %i.agx, splat (float f0x39000000)
  %i.agz = uitofp nneg <4 x i32> %i.agv to <4 x float>
  %i.aha = fmul nnan <4 x float> %i.agz, splat (float f0x39000000)
  %i.ahb = fsub <4 x float> splat (float 1.000000e+00), %i.afr
  %i.ahc = fsub <4 x float> %i.ahb, %i.aft        ; 2 uses
  %i.ahd = fmul <4 x float> %i.ahc, %i.agi
  %i.ahe = fmul <4 x float> %i.ahc, %i.agk
  %i.ahf = fmul <4 x float> %i.aft, %i.agy
  %i.ahg = fadd <4 x float> %i.ahd, %i.ahf
  %i.ahh = fmul <4 x float> %i.aft, %i.aha
  %i.ahi = fadd <4 x float> %i.ahe, %i.ahh
  %i.ahj = fmul <4 x float> %i.afr, %i.agq
  %i.ahk = fadd <4 x float> %i.ahj, %i.ahg
  %i.ahl = fmul <4 x float> %i.afr, %i.ags
  %i.ahm = fadd <4 x float> %i.ahl, %i.ahi
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9, !noalias !13403
  %i.ahn = load ptr, ptr %i.bb, align 8, !noalias !13403 ; 2 uses
  %i.aho = insertelement <4 x i32> poison, i32 %i.yw, i64 0
  %i.ahp = shufflevector <4 x i32> %i.aho, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ahq = insertelement <4 x i32> poison, i32 %i.yx, i64 0
  %i.ahr = shufflevector <4 x i32> %i.ahq, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x float> %.sroa.12903.1, ptr %6, align 16, !noalias !13403
  store <4 x float> %.sroa.14904.1, ptr %i.bn, align 16, !noalias !13403
  store <4 x float> %.sroa.16905.1, ptr %i.bo, align 16, !noalias !13403
  store <4 x float> %i.ahk, ptr %i.bp, align 16, !noalias !13403
  store <4 x float> %i.ahm, ptr %i.bq, align 16, !noalias !13403
  store <4 x i32> %i.ahr, ptr %i.br, align 16, !noalias !13403
  store <4 x i32> %i.ahp, ptr %i.bs, align 16, !noalias !13403
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.ptr12.i.i61, i8 -1, i64 32, i1 false)
  %i.ahs = load i32, ptr %i.ahn, align 4, !noalias !13403
  %i.aht = insertelement <4 x i32> poison, i32 %i.ahs, i64 0
  %i.ahu = shufflevector <4 x i32> %i.aht, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ahu, ptr %.ptr12.i.i61, align 16, !noalias !13403
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahn, i64 4
  %i.ahw = load i32, ptr %i.ahv, align 4, !noalias !13403
  %i.ahx = insertelement <4 x i32> poison, i32 %i.ahw, i64 0
  %i.ahy = shufflevector <4 x i32> %i.ahx, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ahy, ptr %.ptr17.i.i65, align 16, !noalias !13403
  %i.ahz = load <4 x i32>, ptr %i.al, align 16, !noalias !13403 ; 2 uses
  %i.aia = and <4 x i32> %i.aez, %.sroa.10902.1
  %i.aib = xor <4 x i32> %i.aez, splat (i32 -1)
  %i.aic = and <4 x i32> %i.ahz, %i.aib
  %i.aid = or <4 x i32> %i.aic, %i.aia
  store <4 x i32> %i.aid, ptr %i.al, align 16, !noalias !13403
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9, !noalias !13406
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9, !noalias !13406
  store <4 x i32> %i.aez, ptr %5, align 16, !noalias !13406
  store ptr %5, ptr %4, align 8, !noalias !13406
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aes, i64 24
  %i.aif = load ptr, ptr %i.aie, align 8, !noalias !13406
  store ptr %i.aif, ptr %i.bt, align 8, !noalias !13406
  %i.aig = load ptr, ptr %i.bb, align 8, !noalias !13406
  store ptr %i.aig, ptr %i.bu, align 8, !noalias !13406
  store ptr %2, ptr %i.bv, align 8, !noalias !13406
  store ptr %6, ptr %i.bw, align 8, !noalias !13406
  store i32 4, ptr %i.bx, align 8, !noalias !13406
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aes, i64 72
  %i.aii = load ptr, ptr %i.aih, align 8, !noalias !13407 ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.aii, null
  br i1 %.not.i.i70, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.critedge.i60
  call void %i.aii(ptr noundef nonnull %4), !noalias !13407, !inline_history !41
  %.pre1595 = load <4 x i32>, ptr %5, align 16, !noalias !13408
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.critedge.i60
  %i.aij = phi <4 x i32> [ %.pre1595, %bb.ac ], [ %i.aez, %.critedge.i60 ] ; 3 uses
  %i.aik = icmp ne <4 x i32> %i.aij, zeroinitializer ; 2 uses
  %i.ail = bitcast <4 x i1> %i.aik to i4
  %i.aim = icmp eq i4 %i.ail, 0
  br i1 %i.aim, label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i72, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ain = load ptr, ptr %i.ba, align 8, !noalias !13407 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 16
  %i.aip = load ptr, ptr %i.aio, align 8, !noalias !13407 ; 2 uses
  %.not14.i.i71 = icmp eq ptr %i.aip, null
  br i1 %.not14.i.i71, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.aiq = load i32, ptr %i.ain, align 8, !noalias !13407
  %i.air = and i32 %i.aiq, 2
  %.not1568 = icmp eq i32 %i.air, 0
  br i1 %.not1568, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aes, i64 60
  %i.ait = load i32, ptr %i.ais, align 4, !noalias !13407
  %i.aiu = and i32 %i.ait, 4194304
  %.not1569 = icmp eq i32 %i.aiu, 0
  br i1 %.not1569, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void %i.aip(ptr noundef nonnull %4), !noalias !13407, !inline_history !41
  %.pre1596 = load <4 x i32>, ptr %5, align 16, !noalias !13409
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.aiv = phi <4 x i32> [ %.pre1596, %bb.ah ], [ %i.aij, %bb.ag ], [ %i.aij, %bb.ae ]
  %i.aiw = icmp ne <4 x i32> %i.aiv, zeroinitializer ; 2 uses
  %i.aix = load ptr, ptr %i.bv, align 8, !noalias !13407
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 128 ; 2 uses
  %i.aiz = load <4 x float>, ptr %i.aiy, align 16, !noalias !13410
  %i.aja = select <4 x i1> %i.aiw, <4 x float> splat (float -inf), <4 x float> %i.aiz
  store <4 x float> %i.aja, ptr %i.aiy, align 16, !noalias !13407
  br label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i72

_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i72: ; preds = %bb.ai, %bb.ad
  %.sroa.01368.0.in.in = phi <4 x i1> [ %i.aik, %bb.ad ], [ %i.aiw, %bb.ai ] ; 2 uses
  %.sroa.01368.0.in = sext <4 x i1> %.sroa.01368.0.in.in to <4 x i32>
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9, !noalias !13406
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9, !noalias !13406
  %i.ajb = load <4 x i32>, ptr %i.al, align 16, !noalias !13411
  %i.ajc = select <4 x i1> %.sroa.01368.0.in.in, <4 x i32> %i.ajb, <4 x i32> %i.ahz
  store <4 x i32> %i.ajc, ptr %i.al, align 16, !noalias !13403
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9, !noalias !13403
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i72, %bb.ab
  %.sroa.01388.0.in = phi <4 x i32> [ %.sroa.01368.0.in, %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i72 ], [ %i.aez, %bb.ab ]
  %i.ajd = xor <4 x i32> %.sroa.01388.0.in, splat (i32 -1)
  %i.aje = and <4 x i32> %i.ys, %i.ajd
  br label %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit

_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit: ; preds = %_ZNK6embree4sse220PlueckerIntersectorKILi4ELi4EE10intersectKINS0_6MapUV1ILi4EEENS0_17OccludedKEpilogMUILi1ELi4ELb1EEEEENS_11vboolf_implILi4EEERKS9_RNS_4RayKILi4EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESK_SK_RKT_RKT0_.exit, %bb.aj
  %i.ajf = phi <4 x i32> [ %i.aje, %bb.aj ], [ %i.ys, %_ZNK6embree4sse220PlueckerIntersectorKILi4ELi4EE10intersectKINS0_6MapUV1ILi4EEENS0_17OccludedKEpilogMUILi1ELi4ELb1EEEEENS_11vboolf_implILi4EEERKS9_RNS_4RayKILi4EEERKNS_4Vec3INS_11vfloat_implILi4EEEEESK_SK_RKT_RKT0_.exit ] ; 3 uses
  %i.ajg = icmp slt <4 x i32> %i.ajf, zeroinitializer
  %i.ajh = bitcast <4 x i1> %i.ajg to i4
  %.not1570 = icmp eq i4 %i.ajh, 0
  %exitcond.not = icmp eq i64 %i.mj, %i.ly
  %or.cond = or i1 %.not1570, %exitcond.not
  br i1 %or.cond, label %.critedge.i, label %bb.m, !llvm.loop !42

.critedge.i:                                      ; preds = %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV0ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit, %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit
  %i.aji = phi <4 x i32> [ %i.ys, %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV0ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit ], [ %i.ajf, %_ZNK6embree4sse217OccludedKEpilogMUILi1ELi4ELb1EEclINS0_12PlueckerHitKILi4ENS0_6MapUV1ILi4EEEEEEENS_11vboolf_implILi4EEERKS9_RKT_.exit ] ; 2 uses
  br i1 %i.me, label %.preheader1574, label %_ZN6embree4sse219GridSOAIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS2_15PrecalculationsERNS_4RayKILi4EEEPNS_15RayQueryContextEPKvRm.exit, !llvm.loop !43

_ZN6embree4sse219GridSOAIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS2_15PrecalculationsERNS_4RayKILi4EEEPNS_15RayQueryContextEPKvRm.exit: ; preds = %.critedge.i
  %i.ajj = xor <4 x i32> %i.aji, splat (i32 -1)
  br label %_ZN6embree4sse224SubdivPatch1IntersectorKILi4EE8occludedILb1EEENS_11vboolf_implILi4EEERKS5_PKNS_5Accel12IntersectorsERNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_4RayKILi4EEEPNS_15RayQueryContextEPKNS0_7GridSOAEmRKNS0_8TravRayKILi4EXT_EEERm.exit

bb.ak:                                            ; preds = %._crit_edge.thread
  %i.ajk = and i64 %.sroa.093.0.lcssa1609, -16
  %i.ajl = inttoptr i64 %i.ajk to ptr             ; 3 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 48
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajl, i64 44
  %i.ajo = load i32, ptr %i.ajn, align 4, !noalias !13412
  %i.ajp = zext i32 %i.ajo to i64
  %i.ajq = getelementptr i8, ptr %i.ajm, i64 %i.ajp
  %i.ajr = load i64, ptr %i.ajq, align 8, !noalias !13412
  br label %_ZN6embree4sse224SubdivPatch1IntersectorKILi4EE8occludedILb1EEENS_11vboolf_implILi4EEERKS5_PKNS_5Accel12IntersectorsERNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_4RayKILi4EEEPNS_15RayQueryContextEPKNS0_7GridSOAEmRKNS0_8TravRayKILi4EXT_EEERm.exit

_ZN6embree4sse224SubdivPatch1IntersectorKILi4EE8occludedILb1EEENS_11vboolf_implILi4EEERKS5_PKNS_5Accel12IntersectorsERNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_4RayKILi4EEEPNS_15RayQueryContextEPKNS0_7GridSOAEmRKNS0_8TravRayKILi4EXT_EEERm.exit: ; preds = %_ZN6embree4sse219GridSOAIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS2_15PrecalculationsERNS_4RayKILi4EEEPNS_15RayQueryContextEPKvRm.exit, %bb.ak
  %.sroa.0187.5 = phi ptr [ %.sroa.0187.11647, %_ZN6embree4sse219GridSOAIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS2_15PrecalculationsERNS_4RayKILi4EEEPNS_15RayQueryContextEPKvRm.exit ], [ %i.ajl, %bb.ak ] ; 3 uses
  %.01509 = phi i64 [ 0, %_ZN6embree4sse219GridSOAIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS2_15PrecalculationsERNS_4RayKILi4EEEPNS_15RayQueryContextEPKvRm.exit ], [ %i.ajr, %bb.ak ] ; 2 uses
  %i.ajs = phi <4 x i32> [ %i.ajj, %_ZN6embree4sse219GridSOAIntersectorKILi4EE8occludedERKNS_11vboolf_implILi4EEERNS2_15PrecalculationsERNS_4RayKILi4EEEPNS_15RayQueryContextEPKvRm.exit ], [ %i.ay, %bb.ak ]
  %i.ajt = or <4 x i32> %i.ajs, %i.gu             ; 5 uses
  %i.aju = xor <4 x i32> %i.ajt, splat (i32 -1)   ; 2 uses
  %i.ajv = and <4 x i32> %i.gt, %i.aju            ; 3 uses
  %i.ajw = icmp slt <4 x i32> %i.ajv, zeroinitializer
  %i.ajx = bitcast <4 x i1> %i.ajw to i4          ; 2 uses
  %i.ajy = icmp eq i4 %i.ajx, 0
  br i1 %i.ajy, label %.thread1544, label %bb.al, !prof !70

bb.al:                                            ; preds = %_ZN6embree4sse224SubdivPatch1IntersectorKILi4EE8occludedILb1EEENS_11vboolf_implILi4EEERKS5_PKNS_5Accel12IntersectorsERNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_4RayKILi4EEEPNS_15RayQueryContextEPKNS0_7GridSOAEmRKNS0_8TravRayKILi4EXT_EEERm.exit
  %i.ajz = and <4 x i32> %i.ajt, splat (i32 -8388608)
  %i.aka = bitcast <4 x float> %.sroa.44.01648 to <4 x i32>
  %i.akb = and <4 x i32> %i.aju, %i.aka
  %i.akc = or <4 x i32> %i.ajz, %i.akb
  %i.akd = bitcast <4 x i32> %i.akc to <4 x float> ; 2 uses
  %.not53 = icmp eq i64 %.01509, 0
  br i1 %.not53, label %.loopexit.loopexit, label %bb.am, !prof !69

bb.am:                                            ; preds = %bb.al
  store i64 %.01509, ptr %.242.lcssa1610, align 8
  %i.ake = zext i4 %i.ajx to i64
  %i.akf = getelementptr inbounds nuw i8, ptr %.242.lcssa1610, i64 8
  store i64 %i.ake, ptr %i.akf, align 8
  %i.akg = getelementptr inbounds nuw i8, ptr %.242.lcssa1610, i64 16
  br label %.loopexit.loopexit

.thread:                                          ; preds = %.lr.ph, %bb.k
  %.9 = phi ptr [ %.2421585, %.lr.ph ], [ %.5, %bb.k ] ; 2 uses
  %i.akh = icmp eq ptr %.9, %11
  br i1 %i.akh, label %.thread1544, label %bb.d, !prof !78

.thread1544:                                      ; preds = %_ZN6embree4sse224SubdivPatch1IntersectorKILi4EE8occludedILb1EEENS_11vboolf_implILi4EEERKS5_PKNS_5Accel12IntersectorsERNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_4RayKILi4EEEPNS_15RayQueryContextEPKNS0_7GridSOAEmRKNS0_8TravRayKILi4EXT_EEERm.exit, %.loopexit.loopexit, %.thread
  %.sroa.0187.4 = phi ptr [ %.sroa.0187.11647, %.thread ], [ %.sroa.0187.3.ph, %.loopexit.loopexit ], [ %.sroa.0187.5, %_ZN6embree4sse224SubdivPatch1IntersectorKILi4EE8occludedILb1EEENS_11vboolf_implILi4EEERKS5_PKNS_5Accel12IntersectorsERNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_4RayKILi4EEEPNS_15RayQueryContextEPKNS0_7GridSOAEmRKNS0_8TravRayKILi4EXT_EEERm.exit ]
  %i.aki = phi <4 x i32> [ %i.gu, %.thread ], [ %.ph, %.loopexit.loopexit ], [ %i.ajt, %_ZN6embree4sse224SubdivPatch1IntersectorKILi4EE8occludedILb1EEENS_11vboolf_implILi4EEERKS5_PKNS_5Accel12IntersectorsERNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_4RayKILi4EEEPNS_15RayQueryContextEPKNS0_7GridSOAEmRKNS0_8TravRayKILi4EXT_EEERm.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %.not57 = icmp eq i64 %i.cj, 0
  br i1 %.not57, label %bb.an, label %bb.c, !llvm.loop !13376

bb.an:                                            ; preds = %.thread1544
  %i.akj = select <4 x i1> %i.b, <4 x i32> %i.aki, <4 x i32> zeroinitializer ; 2 uses
  %i.akk = load <4 x i32>, ptr %i.al, align 16, !noalias !13413
  %i.akl = and <4 x i32> %i.akj, splat (i32 -8388608)
  %i.akm = xor <4 x i32> %i.akj, splat (i32 -1)
  %i.akn = and <4 x i32> %i.akk, %i.akm
  %i.ako = or <4 x i32> %i.akn, %i.akl
  store <4 x i32> %i.ako, ptr %i.al, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %bb.an
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse222BVHNIntersectorKHybridILi4ELi4ELi16777232ELb0ENS0_26SubdivPatch1MBIntersectorKILi4EEELb1EE10intersect1EPNS_5Accel12IntersectorsEPKNS_4BVHNILi4EEENS_10NodeRefPtrILi4EEEmRNS0_28SubdivPatch1PrecalculationsKILi4ENS0_19GridSOAIntersectorKILi4EE15PrecalculationsEEERNS_7RayHitKILi4EEERKNS0_8TravRayKILi4ELb0EEEPNS_15RayQueryContextE(ptr noundef %0, ptr noundef %1, i64 %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 16 dereferenceable(336) %5, ptr noundef nonnull align 16 dereferenceable(224) %6, ptr noundef %7) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %struct.RTCFilterFunctionNArguments, align 8 ; 10 uses
  %9 = alloca %"struct.embree::vint_impl", align 16 ; 6 uses
  %10 = alloca %"struct.embree::vboolf_impl", align 16 ; 6 uses
  %11 = alloca %"struct.embree::HitK", align 16   ; 13 uses
  %12 = alloca %"struct.embree::sse2::PlueckerHitM.78", align 16 ; 13 uses
  %13 = alloca %"struct.embree::sse2::GridSOA::MapUV", align 8 ; 6 uses
  %14 = alloca %struct.RTCFilterFunctionNArguments, align 8 ; 10 uses
  %15 = alloca %"struct.embree::vint_impl", align 16 ; 6 uses
  %16 = alloca %"struct.embree::vboolf_impl", align 16 ; 6 uses
  %17 = alloca %"struct.embree::HitK", align 16   ; 13 uses
  %18 = alloca %"struct.embree::sse2::PlueckerHitM.78", align 16 ; 13 uses
  %19 = alloca %"struct.embree::sse2::GridSOA::MapUV", align 8 ; 6 uses
  %20 = alloca [244 x %"struct.embree::StackItemT"], align 16 ; 7 uses
  %21 = alloca %"struct.embree::vfloat_impl", align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #9
  %i.a = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 %2, ptr %20, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %3
  %i.g = load float, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %3
  %i.j = load float, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %3
  %i.l = load float, ptr %i.k, align 4
  %i.m = insertelement <4 x float> poison, float %i.l, i64 0
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %3
  %i.q = load float, ptr %i.p, align 4
  %i.r = insertelement <4 x float> poison, float %i.q, i64 0
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %3
  %i.v = load float, ptr %i.u, align 4
  %i.w = insertelement <4 x float> poison, float %i.v, i64 0
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %3
  %i.z = load float, ptr %i.y, align 4
  %i.aa = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %3
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %3
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %3
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %3
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %3
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = xor i64 %i.ao, 16
  %i.ay = xor i64 %i.as, 16
  %i.az = xor i64 %i.aw, 16
  %i.ba = insertelement <4 x float> poison, float %i.g, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = insertelement <4 x float> poison, float %i.j, i64 0
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %3 ; 13 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %3 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %3 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %3 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %3 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %3 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %3 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %3 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 144 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 160 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %3 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 96
  %.ptr12.i.i.i48 = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %.ptr17.i.i.i52 = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.cr = trunc i64 %3 to i32
  %i.cs = shl nuw i32 1, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 16
end_hunk_5
