Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/HNSW?download=true
inline.NumInlined: 2707
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN5faiss11hnsw_detail31search_from_candidates_panoramaERKNS_4HNSWEPKNS_9IndexHNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINS_4CMaxIfiEEEERNS_12VisitedTableERNS_9HNSWStatsEiiPKNS_16SearchParametersE:bb.a
.preheader:                                       ; preds = %._crit_edge828, %.critedge
  %.0607.lcssa = phi i64 [ %.0164716, %.critedge ], [ %.1, %._crit_edge828 ] ; 2 uses
  %.1184.lcssa = phi i32 [ %.0183, %.critedge ], [ %i.eqi, %._crit_edge828 ] ; 2 uses
  %.not844 = icmp eq i64 %.0607.lcssa, 0
  br i1 %.not844, label %._crit_edge840, label %.lr.ph839

.lr.ph833:                                        ; preds = %.critedge, %._crit_edge828
  %.0157832 = phi i64 [ %i.jm, %._crit_edge828 ], [ 0, %.critedge ] ; 2 uses
  %.1184831 = phi i32 [ %i.eqi, %._crit_edge828 ], [ %.0183, %.critedge ]
  %.0607830 = phi i64 [ %.1, %._crit_edge828 ], [ %.0164716, %.critedge ] ; 76 uses
  %i.jm = add nuw i64 %.0157832, 1                ; 5 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0449.0, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !163
  %i.jp = mul i64 %.0157832, %i.eg                ; 20 uses
  %i.jq = mul i64 %i.jm, %i.eg
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.jq, i64 %i.fg) ; 3 uses
  %i.jr = sub i64 %.sroa.speculated, %i.jp        ; 12 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.jp ; 87 uses
  switch i64 %i.jr, label %bb.ca [
    i64 8, label %bb.bl
    i64 16, label %bb.bm
    i64 24, label %bb.bn
    i64 32, label %bb.bo
    i64 40, label %bb.bp
    i64 48, label %bb.bq
    i64 56, label %bb.br
    i64 64, label %bb.bs
    i64 72, label %bb.bt
    i64 80, label %bb.bu
    i64 88, label %bb.bv
    i64 96, label %bb.bw
    i64 104, label %bb.bx
    i64 112, label %bb.by
    i64 120, label %bb.bz
  ]

bb.bl:                                            ; preds = %.lr.ph833
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %.not82.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.bl
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load <2 x float>, ptr %i.jt, align 4, !tbaa !163, !alias.scope !630, !noalias !633 ; 2 uses
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jx = load <6 x float>, ptr %i.ju, align 4, !tbaa !163, !alias.scope !630, !noalias !633 ; 6 uses
  %i.jy = shufflevector <2 x float> %i.jv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.jz = shufflevector <6 x float> %i.jx, <6 x float> poison, <4 x i32> zeroinitializer
  %i.ka = shufflevector <6 x float> %i.jx, <6 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kb = shufflevector <6 x float> %i.jx, <6 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.kc = shufflevector <6 x float> %i.jx, <6 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.kd = shufflevector <6 x float> %i.jx, <6 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ke = shufflevector <6 x float> %i.jx, <6 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  br label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i, %bb.bl
  %.075.lcssa.i.i.i.i = phi i64 [ 0, %bb.bl ], [ %i.ks, %.lr.ph.i.i.i.i ] ; 6 uses
  %i.kf = icmp ult i64 %.075.lcssa.i.i.i.i, %.0607830
  br i1 %i.kf, label %.lr.ph87.preheader.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.kg = load <8 x float>, ptr %i.jt, align 4, !tbaa !163, !alias.scope !630, !noalias !633 ; 3 uses
  %.neg = or disjoint i64 %.075.lcssa.i.i.i.i, 1
  %xtraiter = and i64 %.0607830, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph87.i.i.i.i.prol.loopexit, label %.lr.ph87.i.i.i.i.prol

.lr.ph87.i.i.i.i.prol:                            ; preds = %.lr.ph87.preheader.i.i.i.i
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.075.lcssa.i.i.i.i
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !44, !noalias !634
  %i.kj = zext i32 %i.ki to i64
  %i.kk = mul nsw i64 %i.go, %i.kj
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.kk
  %i.km = load <8 x float>, ptr %i.kl, align 4, !tbaa !163, !alias.scope !631, !noalias !635
  %i.kn = fmul fast <8 x float> %i.km, %i.kg
  %i.ko = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.kn)
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.075.lcssa.i.i.i.i
  store float %i.ko, ptr %i.kp, align 4, !tbaa !163, !alias.scope !632, !noalias !636
  %i.kq = or disjoint i64 %.075.lcssa.i.i.i.i, 1
  br label %.lr.ph87.i.i.i.i.prol.loopexit

.lr.ph87.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph87.i.i.i.i.prol, %.lr.ph87.preheader.i.i.i.i
  %.186.i.i.i.i.unr = phi i64 [ %.075.lcssa.i.i.i.i, %.lr.ph87.preheader.i.i.i.i ], [ %i.kq, %.lr.ph87.i.i.i.i.prol ]
  %i.kr = icmp eq i64 %.0607830, %.neg
  br i1 %i.kr, label %.lr.ph827, label %.lr.ph87.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %i.ks = phi i64 [ %i.nq, %.lr.ph.i.i.i.i ], [ 4, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.07583.i.i.i.i = phi i64 [ %i.ks, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 5 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !44, !noalias !634
  %i.kv = zext i32 %i.ku to i64
  %i.kw = mul nsw i64 %i.go, %i.kv
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.kw ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !44, !noalias !634
  %i.lb = zext i32 %i.la to i64
  %i.lc = mul nsw i64 %i.go, %i.lb
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !44, !noalias !634
  %i.lh = zext i32 %i.lg to i64
  %i.li = mul nsw i64 %i.go, %i.lh
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.li ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !44, !noalias !634
  %i.ln = zext i32 %i.lm to i64
  %i.lo = mul nsw i64 %i.go, %i.ln
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.lo ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i
  %i.lv = load <4 x float>, ptr %i.kx, align 4, !tbaa !163, !alias.scope !631, !noalias !635 ; 4 uses
  %i.lw = load <4 x float>, ptr %i.ld, align 4, !tbaa !163, !alias.scope !631, !noalias !635 ; 4 uses
  %i.lx = load <4 x float>, ptr %i.lj, align 4, !tbaa !163, !alias.scope !631, !noalias !635 ; 4 uses
  %i.ly = load <4 x float>, ptr %i.lp, align 4, !tbaa !163, !alias.scope !631, !noalias !635 ; 4 uses
  %i.lz = shufflevector <4 x float> %i.lv, <4 x float> %i.lw, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> %i.lx, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> %i.ly, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mc = fmul fast <4 x float> %i.mb, %i.jy
  %i.md = shufflevector <4 x float> %i.lv, <4 x float> %i.lw, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.me = shufflevector <4 x float> %i.md, <4 x float> %i.lx, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.mf = shufflevector <4 x float> %i.me, <4 x float> %i.ly, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.mg = fmul fast <4 x float> %i.mf, %i.jw
  %i.mh = fadd fast <4 x float> %i.mg, %i.mc
  %i.mi = shufflevector <4 x float> %i.lv, <4 x float> %i.lw, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.mj = shufflevector <4 x float> %i.mi, <4 x float> %i.lx, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.mk = shufflevector <4 x float> %i.mj, <4 x float> %i.ly, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ml = fmul fast <4 x float> %i.mk, %i.jz
  %i.mm = fadd fast <4 x float> %i.mh, %i.ml
  %i.mn = shufflevector <4 x float> %i.lv, <4 x float> %i.lw, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> %i.lx, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.mp = shufflevector <4 x float> %i.mo, <4 x float> %i.ly, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.mq = fmul fast <4 x float> %i.mp, %i.ka
  %i.mr = fadd fast <4 x float> %i.mm, %i.mq
  %i.ms = load <4 x float>, ptr %i.lq, align 4, !tbaa !163, !alias.scope !631, !noalias !635 ; 4 uses
  %i.mt = load <4 x float>, ptr %i.lr, align 4, !tbaa !163, !alias.scope !631, !noalias !635 ; 4 uses
  %i.mu = load <4 x float>, ptr %i.ls, align 4, !tbaa !163, !alias.scope !631, !noalias !635 ; 4 uses
  %i.mv = load <4 x float>, ptr %i.lt, align 4, !tbaa !163, !alias.scope !631, !noalias !635 ; 4 uses
  %i.mw = shufflevector <4 x float> %i.ms, <4 x float> %i.mt, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> %i.mu, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> %i.mv, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mz = fmul fast <4 x float> %i.my, %i.kb
  %i.na = fadd fast <4 x float> %i.mr, %i.mz
  %i.nb = shufflevector <4 x float> %i.ms, <4 x float> %i.mt, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.nc = shufflevector <4 x float> %i.nb, <4 x float> %i.mu, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.nd = shufflevector <4 x float> %i.nc, <4 x float> %i.mv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ne = fmul fast <4 x float> %i.nd, %i.kc
  %i.nf = fadd fast <4 x float> %i.na, %i.ne
  %i.ng = shufflevector <4 x float> %i.ms, <4 x float> %i.mt, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> %i.mu, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ni = shufflevector <4 x float> %i.nh, <4 x float> %i.mv, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.nj = fmul fast <4 x float> %i.ni, %i.kd
  %i.nk = fadd fast <4 x float> %i.nf, %i.nj
  %i.nl = shufflevector <4 x float> %i.ms, <4 x float> %i.mt, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.nm = shufflevector <4 x float> %i.nl, <4 x float> %i.mu, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> %i.mv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.no = fmul fast <4 x float> %i.nn, %i.ke
  %i.np = fadd fast <4 x float> %i.nk, %i.no
  store <4 x float> %i.np, ptr %i.lu, align 4, !tbaa !163, !alias.scope !632, !noalias !636
  %i.nq = add i64 %i.ks, 4                        ; 2 uses
  %.not.i.i.i.i289 = icmp ugt i64 %i.nq, %.0607830
  br i1 %.not.i.i.i.i289, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !503

.lr.ph87.i.i.i.i:                                 ; preds = %.lr.ph87.i.i.i.i.prol.loopexit, %.lr.ph87.i.i.i.i
  %.186.i.i.i.i = phi i64 [ %i.ok, %.lr.ph87.i.i.i.i ], [ %.186.i.i.i.i.unr, %.lr.ph87.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !44, !noalias !634
  %i.nt = zext i32 %i.ns to i64
  %i.nu = mul nsw i64 %i.go, %i.nt
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.nu
  %i.nw = load <8 x float>, ptr %i.nv, align 4, !tbaa !163, !alias.scope !631, !noalias !635
  %i.nx = fmul fast <8 x float> %i.nw, %i.kg
  %i.ny = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.nx)
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i
  store float %i.ny, ptr %i.nz, align 4, !tbaa !163, !alias.scope !632, !noalias !636
  %i.oa = add nuw i64 %.186.i.i.i.i, 1            ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !44, !noalias !634
  %i.od = zext i32 %i.oc to i64
  %i.oe = mul nsw i64 %i.go, %i.od
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.oe
  %i.og = load <8 x float>, ptr %i.of, align 4, !tbaa !163, !alias.scope !631, !noalias !635
  %i.oh = fmul fast <8 x float> %i.og, %i.kg
  %i.oi = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.oh)
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.oa
  store float %i.oi, ptr %i.oj, align 4, !tbaa !163, !alias.scope !632, !noalias !636
  %i.ok = add nuw i64 %.186.i.i.i.i, 2            ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.ok, %.0607830
  br i1 %exitcond.not.i.i.i.i.1, label %.lr.ph827, label %.lr.ph87.i.i.i.i, !llvm.loop !504

bb.bm:                                            ; preds = %.lr.ph833
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %.not82.i.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.bm
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  %15 = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.on = load <2 x float>, ptr %i.ol, align 4, !tbaa !163, !alias.scope !637, !noalias !640 ; 2 uses
  %i.oo = shufflevector <2 x float> %i.on, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %16 = load float, ptr %15, align 4, !tbaa !163, !alias.scope !637, !noalias !640
  %17 = load float, ptr %14, align 4, !tbaa !163, !alias.scope !637, !noalias !640
  %18 = load float, ptr %i.om, align 4, !tbaa !163, !alias.scope !637, !noalias !640
  %i.op = getelementptr inbounds nuw i8, ptr %i.ol, i64 20
  %i.oq = load float, ptr %i.op, align 4, !tbaa !163, !alias.scope !637, !noalias !640
  %i.or = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  %i.os = load <10 x float>, ptr %i.or, align 4, !tbaa !163, !alias.scope !637, !noalias !640 ; 10 uses
  %i.ot = shufflevector <10 x float> %i.os, <10 x float> poison, <4 x i32> zeroinitializer
  %i.ou = shufflevector <10 x float> %i.os, <10 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ov = shufflevector <10 x float> %i.os, <10 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ow = shufflevector <10 x float> %i.os, <10 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ox = shufflevector <10 x float> %i.os, <10 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.oy = shufflevector <10 x float> %i.os, <10 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.oz = shufflevector <10 x float> %i.os, <10 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.pa = shufflevector <10 x float> %i.os, <10 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.pb = shufflevector <10 x float> %i.os, <10 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.pc = shufflevector <10 x float> %i.os, <10 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.pd = insertelement <4 x float> poison, float %i.oq, i64 0
  %i.pe = shufflevector <4 x float> %i.pd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pf = shufflevector <2 x float> %i.on, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %19 = insertelement <4 x float> poison, float %18, i64 0
  %20 = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> zeroinitializer
  %21 = insertelement <4 x float> poison, float %17, i64 0
  %i.pg = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> zeroinitializer
  %22 = insertelement <4 x float> poison, float %16, i64 0
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %bb.bm
  %.075.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.bm ], [ %i.pj, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ph = icmp ult i64 %.075.lcssa.i.i.i.i.i, %.0607830
  br i1 %i.ph, label %.lr.ph87.preheader.i.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i
  %i.pi = load <16 x float>, ptr %i.ol, align 4, !tbaa !163, !alias.scope !637, !noalias !640
  br label %.lr.ph87.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.pj = phi i64 [ %i.vf, %.lr.ph.i.i.i.i.i ], [ 4, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.07583.i.i.i.i.i = phi i64 [ %i.pj, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !44, !noalias !641
  %i.pm = zext i32 %i.pl to i64
  %i.pn = mul nsw i64 %i.gn, %i.pm
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.pn ; 6 uses
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !44, !noalias !641
  %i.ps = zext i32 %i.pr to i64
  %i.pt = mul nsw i64 %i.gn, %i.ps
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.pt ; 6 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !44, !noalias !641
  %i.py = zext i32 %i.px to i64
  %i.pz = mul nsw i64 %i.gn, %i.py
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.pz ; 6 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 12
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !44, !noalias !641
  %i.qe = zext i32 %i.qd to i64
  %i.qf = mul nsw i64 %i.gn, %i.qe
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.qf ; 6 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.qp = load <4 x float>, ptr %i.po, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.qq = load <4 x float>, ptr %i.pu, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.qr = load <4 x float>, ptr %i.qa, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.qs = load <4 x float>, ptr %i.qg, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.qt = shufflevector <4 x float> %i.qp, <4 x float> %i.qq, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.qu = shufflevector <4 x float> %i.qt, <4 x float> %i.qr, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.qv = shufflevector <4 x float> %i.qu, <4 x float> %i.qs, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.qw = fmul fast <4 x float> %i.qv, %i.pf
  %i.qx = shufflevector <4 x float> %i.qp, <4 x float> %i.qq, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.qy = shufflevector <4 x float> %i.qx, <4 x float> %i.qr, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.qz = shufflevector <4 x float> %i.qy, <4 x float> %i.qs, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ra = fmul fast <4 x float> %i.qz, %i.oo
  %i.rb = fadd fast <4 x float> %i.ra, %i.qw
  %i.rc = shufflevector <4 x float> %i.qp, <4 x float> %i.qq, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.rd = shufflevector <4 x float> %i.rc, <4 x float> %i.qr, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.re = shufflevector <4 x float> %i.rd, <4 x float> %i.qs, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.rf = fmul fast <4 x float> %i.re, %20
  %i.rg = fadd fast <4 x float> %i.rb, %i.rf
  %i.rh = shufflevector <4 x float> %i.qp, <4 x float> %i.qq, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.ri = shufflevector <4 x float> %i.rh, <4 x float> %i.qr, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.rj = shufflevector <4 x float> %i.ri, <4 x float> %i.qs, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.rk = fmul fast <4 x float> %i.rj, %i.pg
  %i.rl = fadd fast <4 x float> %i.rg, %i.rk
  %i.rm = insertelement <4 x float> poison, float %i.qi, i64 0
  %i.rn = insertelement <4 x float> %i.rm, float %i.qk, i64 1
  %i.ro = insertelement <4 x float> %i.rn, float %i.qm, i64 2
  %i.rp = insertelement <4 x float> %i.ro, float %i.qo, i64 3
  %i.rq = fmul fast <4 x float> %i.rp, %23
  %i.rr = fadd fast <4 x float> %i.rl, %i.rq
  %i.rs = getelementptr inbounds nuw i8, ptr %i.po, i64 20
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.ru = getelementptr inbounds nuw i8, ptr %i.pu, i64 20
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.rw = getelementptr inbounds nuw i8, ptr %i.qa, i64 20
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.ry = getelementptr inbounds nuw i8, ptr %i.qg, i64 20
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.sa = insertelement <4 x float> poison, float %i.rt, i64 0
  %i.sb = insertelement <4 x float> %i.sa, float %i.rv, i64 1
  %i.sc = insertelement <4 x float> %i.sb, float %i.rx, i64 2
  %i.sd = insertelement <4 x float> %i.sc, float %i.rz, i64 3
  %i.se = fmul fast <4 x float> %i.sd, %i.pe
  %i.sf = getelementptr inbounds nuw i8, ptr %i.po, i64 24
  %i.sg = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  %i.si = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.sj = getelementptr inbounds nuw i8, ptr %i.po, i64 40
  %i.sk = getelementptr inbounds nuw i8, ptr %i.pu, i64 40
  %i.sl = getelementptr inbounds nuw i8, ptr %i.qa, i64 40
  %i.sm = getelementptr inbounds nuw i8, ptr %i.qg, i64 40
  %i.sn = getelementptr inbounds nuw i8, ptr %i.po, i64 56
  %i.so = getelementptr inbounds nuw i8, ptr %i.pu, i64 56
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qa, i64 56
  %i.sq = getelementptr inbounds nuw i8, ptr %i.qg, i64 56
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i.i
  %i.ss = fadd fast <4 x float> %i.rr, %i.se
  %i.st = load <4 x float>, ptr %i.sf, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.su = load <4 x float>, ptr %i.sg, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.sv = load <4 x float>, ptr %i.sh, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.sw = load <4 x float>, ptr %i.si, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.sx = shufflevector <4 x float> %i.st, <4 x float> %i.su, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.sy = shufflevector <4 x float> %i.sx, <4 x float> %i.sv, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.sz = shufflevector <4 x float> %i.sy, <4 x float> %i.sw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ta = fmul fast <4 x float> %i.sz, %i.ot
  %i.tb = fadd fast <4 x float> %i.ss, %i.ta
  %i.tc = shufflevector <4 x float> %i.st, <4 x float> %i.su, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.td = shufflevector <4 x float> %i.tc, <4 x float> %i.sv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.te = shufflevector <4 x float> %i.td, <4 x float> %i.sw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.tf = fmul fast <4 x float> %i.te, %i.ou
  %i.tg = fadd fast <4 x float> %i.tb, %i.tf
  %i.th = shufflevector <4 x float> %i.st, <4 x float> %i.su, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ti = shufflevector <4 x float> %i.th, <4 x float> %i.sv, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.tj = shufflevector <4 x float> %i.ti, <4 x float> %i.sw, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.tk = fmul fast <4 x float> %i.tj, %i.ov
  %i.tl = fadd fast <4 x float> %i.tg, %i.tk
  %i.tm = shufflevector <4 x float> %i.st, <4 x float> %i.su, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.tn = shufflevector <4 x float> %i.tm, <4 x float> %i.sv, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.to = shufflevector <4 x float> %i.tn, <4 x float> %i.sw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.tp = fmul fast <4 x float> %i.to, %i.ow
  %i.tq = fadd fast <4 x float> %i.tl, %i.tp
  %i.tr = load <4 x float>, ptr %i.sj, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.ts = load <4 x float>, ptr %i.sk, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.tt = load <4 x float>, ptr %i.sl, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.tu = load <4 x float>, ptr %i.sm, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.tv = shufflevector <4 x float> %i.tr, <4 x float> %i.ts, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.tw = shufflevector <4 x float> %i.tv, <4 x float> %i.tt, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.tx = shufflevector <4 x float> %i.tw, <4 x float> %i.tu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ty = fmul fast <4 x float> %i.tx, %i.ox
  %i.tz = fadd fast <4 x float> %i.tq, %i.ty
  %i.ua = shufflevector <4 x float> %i.tr, <4 x float> %i.ts, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.ub = shufflevector <4 x float> %i.ua, <4 x float> %i.tt, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.uc = shufflevector <4 x float> %i.ub, <4 x float> %i.tu, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ud = fmul fast <4 x float> %i.uc, %i.oy
  %i.ue = fadd fast <4 x float> %i.tz, %i.ud
  %i.uf = shufflevector <4 x float> %i.tr, <4 x float> %i.ts, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ug = shufflevector <4 x float> %i.uf, <4 x float> %i.tt, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> %i.tu, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ui = fmul fast <4 x float> %i.uh, %i.oz
  %i.uj = fadd fast <4 x float> %i.ue, %i.ui
  %i.uk = shufflevector <4 x float> %i.tr, <4 x float> %i.ts, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.ul = shufflevector <4 x float> %i.uk, <4 x float> %i.tt, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.um = shufflevector <4 x float> %i.ul, <4 x float> %i.tu, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.un = fmul fast <4 x float> %i.um, %i.pa
  %i.uo = fadd fast <4 x float> %i.uj, %i.un
  %i.up = load <2 x float>, ptr %i.sn, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 2 uses
  %i.uq = load <2 x float>, ptr %i.so, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 2 uses
  %i.ur = load <2 x float>, ptr %i.sp, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.us = load <2 x float>, ptr %i.sq, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.ut = shufflevector <2 x float> %i.up, <2 x float> %i.uq, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.uu = shufflevector <2 x float> %i.ur, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.uv = shufflevector <4 x float> %i.ut, <4 x float> %i.uu, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.uw = shufflevector <2 x float> %i.us, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ux = shufflevector <4 x float> %i.uv, <4 x float> %i.uw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.uy = fmul fast <4 x float> %i.ux, %i.pb
  %i.uz = fadd fast <4 x float> %i.uo, %i.uy
  %i.va = shufflevector <2 x float> %i.up, <2 x float> %i.uq, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> %i.uu, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.vc = shufflevector <4 x float> %i.vb, <4 x float> %i.uw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.vd = fmul fast <4 x float> %i.vc, %i.pc
  %i.ve = fadd fast <4 x float> %i.uz, %i.vd
  store <4 x float> %i.ve, ptr %i.sr, align 4, !tbaa !163, !alias.scope !639, !noalias !643
  %i.vf = add i64 %i.pj, 4                        ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.vf, %.0607830
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !509

.lr.ph87.i.i.i.i.i:                               ; preds = %.lr.ph87.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i
  %.186.i.i.i.i.i = phi i64 [ %i.vp, %.lr.ph87.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i ] ; 3 uses
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i.i
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !44, !noalias !641
  %i.vi = zext i32 %i.vh to i64
  %i.vj = mul nsw i64 %i.gn, %i.vi
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.vj
  %i.vl = load <16 x float>, ptr %i.vk, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.vm = fmul fast <16 x float> %i.vl, %i.pi
  %i.vn = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.vm)
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i.i
  store float %i.vn, ptr %i.vo, align 4, !tbaa !163, !alias.scope !639, !noalias !643
  %i.vp = add nuw i64 %.186.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.vp, %.0607830
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph827, label %.lr.ph87.i.i.i.i.i, !llvm.loop !510

bb.bn:                                            ; preds = %.lr.ph833
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  call void @llvm.experimental.noalias.scope.decl(metadata !645)
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %.not82.i.i.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.bn
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 16
  %wide.load1395 = load <4 x float>, ptr %i.vq, align 4, !tbaa !163, !alias.scope !644, !noalias !647 ; 4 uses
  %wide.load1396 = load <4 x float>, ptr %i.vr, align 4, !tbaa !163, !alias.scope !644, !noalias !647 ; 4 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 32
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 48
  %wide.load1395.1 = load <4 x float>, ptr %i.vs, align 4, !tbaa !163, !alias.scope !644, !noalias !647 ; 4 uses
  %wide.load1396.1 = load <4 x float>, ptr %i.vt, align 4, !tbaa !163, !alias.scope !644, !noalias !647 ; 4 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vq, i64 64
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vq, i64 80
  %wide.load1395.2 = load <4 x float>, ptr %i.vu, align 4, !tbaa !163, !alias.scope !644, !noalias !647 ; 4 uses
  %wide.load1396.2 = load <4 x float>, ptr %i.vv, align 4, !tbaa !163, !alias.scope !644, !noalias !647 ; 4 uses
  br label %.lr.ph.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %bb.bn
  %.075.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.bn ], [ %i.vy, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.vw = icmp ult i64 %.075.lcssa.i.i.i.i.i.i, %.0607830
  br i1 %i.vw, label %.lr.ph87.preheader.i.i.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i
  %i.vx = load <24 x float>, ptr %i.vq, align 4, !tbaa !163, !alias.scope !644, !noalias !647
  br label %.lr.ph87.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.vy = phi i64 [ %i.zm, %.lr.ph.i.i.i.i.i.i ], [ 4, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.07583.i.i.i.i.i.i = phi i64 [ %i.vy, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 5 uses
  %i.vz = or disjoint i64 %.07583.i.i.i.i.i.i, 3  ; 2 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.vz
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !44, !noalias !648
  %i.wc = zext i32 %i.wb to i64
  %i.wd = mul nsw i64 %i.gm, %i.wc
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.wd ; 6 uses
  %i.wf = or disjoint i64 %.07583.i.i.i.i.i.i, 2  ; 2 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.wf
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !44, !noalias !648
  %i.wi = zext i32 %i.wh to i64
  %i.wj = mul nsw i64 %i.gm, %i.wi
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.wj ; 6 uses
  %i.wl = or disjoint i64 %.07583.i.i.i.i.i.i, 1  ; 2 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.wl
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !44, !noalias !648
  %i.wo = zext i32 %i.wn to i64
  %i.wp = mul nsw i64 %i.gm, %i.wo
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.wp ; 6 uses
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i.i
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !44, !noalias !648
  %i.wt = zext i32 %i.ws to i64
  %i.wu = mul nsw i64 %i.gm, %i.wt
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.wu ; 6 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  %wide.load1397 = load <4 x float>, ptr %i.wv, align 4, !tbaa !163, !alias.scope !645, !noalias !649
  %wide.load1398 = load <4 x float>, ptr %i.ww, align 4, !tbaa !163, !alias.scope !645, !noalias !649
  %i.wx = fmul fast <4 x float> %wide.load1397, %wide.load1395
  %i.wy = fmul fast <4 x float> %wide.load1398, %wide.load1396
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  %wide.load1399 = load <4 x float>, ptr %i.wq, align 4, !tbaa !163, !alias.scope !645, !noalias !649
  %wide.load1400 = load <4 x float>, ptr %i.wz, align 4, !tbaa !163, !alias.scope !645, !noalias !649
  %i.xa = fmul fast <4 x float> %wide.load1399, %wide.load1395
  %i.xb = fmul fast <4 x float> %wide.load1400, %wide.load1396
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %wide.load1401 = load <4 x float>, ptr %i.wk, align 4, !tbaa !163, !alias.scope !645, !noalias !649
  %wide.load1402 = load <4 x float>, ptr %i.xc, align 4, !tbaa !163, !alias.scope !645, !noalias !649
  %i.xd = fmul fast <4 x float> %wide.load1401, %wide.load1395
  %i.xe = fmul fast <4 x float> %wide.load1402, %wide.load1396
  %i.xf = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  %wide.load1403 = load <4 x float>, ptr %i.we, align 4, !tbaa !163, !alias.scope !645, !noalias !649
  %wide.load1404 = load <4 x float>, ptr %i.xf, align 4, !tbaa !163, !alias.scope !645, !noalias !649
  %i.xg = fmul fast <4 x float> %wide.load1403, %wide.load1395
  %i.xh = fmul fast <4 x float> %wide.load1404, %wide.load1396
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wv, i64 32
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wv, i64 48
  %wide.load1397.1 = load <4 x float>, ptr %i.xi, align 4, !tbaa !163, !alias.scope !645, !noalias !649
  %wide.load1398.1 = load <4 x float>, ptr %i.xj, align 4, !tbaa !163, !alias.scope !645, !noalias !649
  %i.xk = fmul fast <4 x float> %wide.load1397.1, %wide.load1395.1
  %i.xl = fmul fast <4 x float> %wide.load1398.1, %wide.load1396.1
  %i.xm = fadd fast <4 x float> %i.xk, %i.wx
  %i.xn = fadd fast <4 x float> %i.xl, %i.wy
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wq, i64 32
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wq, i64 48
end_hunk_0
