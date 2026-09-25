Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/HNSW?download=true
inline.NumInlined: 2707
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN5faiss11hnsw_detail31search_from_candidates_panoramaERKNS_4HNSWEPKNS_9IndexHNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINS_4CMaxIfiEEEERNS_12VisitedTableERNS_9HNSWStatsEiiPKNS_16SearchParametersE:bb.a
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
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.op = load <2 x float>, ptr %i.ol, align 4, !tbaa !163, !alias.scope !637, !noalias !640 ; 2 uses
  %i.oq = shufflevector <2 x float> %i.op, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.or = load float, ptr %i.om, align 4, !tbaa !163, !alias.scope !637, !noalias !640
  %i.os = load float, ptr %i.on, align 4, !tbaa !163, !alias.scope !637, !noalias !640
  %i.ot = load float, ptr %i.oo, align 4, !tbaa !163, !alias.scope !637, !noalias !640
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ol, i64 20
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !163, !alias.scope !637, !noalias !640
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  %i.ox = load <10 x float>, ptr %i.ow, align 4, !tbaa !163, !alias.scope !637, !noalias !640 ; 10 uses
  %i.oy = shufflevector <10 x float> %i.ox, <10 x float> poison, <4 x i32> zeroinitializer
  %i.oz = shufflevector <10 x float> %i.ox, <10 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.pa = shufflevector <10 x float> %i.ox, <10 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.pb = shufflevector <10 x float> %i.ox, <10 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.pc = shufflevector <10 x float> %i.ox, <10 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.pd = shufflevector <10 x float> %i.ox, <10 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.pe = shufflevector <10 x float> %i.ox, <10 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.pf = shufflevector <10 x float> %i.ox, <10 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.pg = shufflevector <10 x float> %i.ox, <10 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.ph = shufflevector <10 x float> %i.ox, <10 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.pi = insertelement <4 x float> poison, float %i.ov, i64 0
  %i.pj = shufflevector <4 x float> %i.pi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pk = shufflevector <2 x float> %i.op, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.pl = insertelement <4 x float> poison, float %i.or, i64 0
  %i.pm = shufflevector <4 x float> %i.pl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pn = insertelement <4 x float> poison, float %i.os, i64 0
  %i.po = shufflevector <4 x float> %i.pn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pp = insertelement <4 x float> poison, float %i.ot, i64 0
  %i.pq = shufflevector <4 x float> %i.pp, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %bb.bm
  %.075.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.bm ], [ %i.pt, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.pr = icmp ult i64 %.075.lcssa.i.i.i.i.i, %.0607830
  br i1 %i.pr, label %.lr.ph87.preheader.i.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i
  %i.ps = load <16 x float>, ptr %i.ol, align 4, !tbaa !163, !alias.scope !637, !noalias !640
  br label %.lr.ph87.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.pt = phi i64 [ %i.vp, %.lr.ph.i.i.i.i.i ], [ 4, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.07583.i.i.i.i.i = phi i64 [ %i.pt, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !44, !noalias !641
  %i.pw = zext i32 %i.pv to i64
  %i.px = mul nsw i64 %i.gn, %i.pw
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.px ; 6 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 4
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !44, !noalias !641
  %i.qc = zext i32 %i.qb to i64
  %i.qd = mul nsw i64 %i.gn, %i.qc
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.qd ; 6 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !44, !noalias !641
  %i.qi = zext i32 %i.qh to i64
  %i.qj = mul nsw i64 %i.gn, %i.qi
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.qj ; 6 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 12
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !44, !noalias !641
  %i.qo = zext i32 %i.qn to i64
  %i.qp = mul nsw i64 %i.gn, %i.qo
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.qp ; 6 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.qz = load <4 x float>, ptr %i.py, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.ra = load <4 x float>, ptr %i.qe, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.rb = load <4 x float>, ptr %i.qk, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.rc = load <4 x float>, ptr %i.qq, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.rd = shufflevector <4 x float> %i.qz, <4 x float> %i.ra, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.re = shufflevector <4 x float> %i.rd, <4 x float> %i.rb, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.rf = shufflevector <4 x float> %i.re, <4 x float> %i.rc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.rg = fmul fast <4 x float> %i.rf, %i.pk
  %i.rh = shufflevector <4 x float> %i.qz, <4 x float> %i.ra, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ri = shufflevector <4 x float> %i.rh, <4 x float> %i.rb, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.rj = shufflevector <4 x float> %i.ri, <4 x float> %i.rc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.rk = fmul fast <4 x float> %i.rj, %i.oq
  %i.rl = fadd fast <4 x float> %i.rk, %i.rg
  %i.rm = shufflevector <4 x float> %i.qz, <4 x float> %i.ra, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.rn = shufflevector <4 x float> %i.rm, <4 x float> %i.rb, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ro = shufflevector <4 x float> %i.rn, <4 x float> %i.rc, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.rp = fmul fast <4 x float> %i.ro, %i.pm
  %i.rq = fadd fast <4 x float> %i.rl, %i.rp
  %i.rr = shufflevector <4 x float> %i.qz, <4 x float> %i.ra, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.rs = shufflevector <4 x float> %i.rr, <4 x float> %i.rb, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> %i.rc, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ru = fmul fast <4 x float> %i.rt, %i.po
  %i.rv = fadd fast <4 x float> %i.rq, %i.ru
  %i.rw = insertelement <4 x float> poison, float %i.qs, i64 0
  %i.rx = insertelement <4 x float> %i.rw, float %i.qu, i64 1
  %i.ry = insertelement <4 x float> %i.rx, float %i.qw, i64 2
  %i.rz = insertelement <4 x float> %i.ry, float %i.qy, i64 3
  %i.sa = fmul fast <4 x float> %i.rz, %i.pq
  %i.sb = fadd fast <4 x float> %i.rv, %i.sa
  %i.sc = getelementptr inbounds nuw i8, ptr %i.py, i64 20
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.se = getelementptr inbounds nuw i8, ptr %i.qe, i64 20
  %i.sf = load float, ptr %i.se, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.sg = getelementptr inbounds nuw i8, ptr %i.qk, i64 20
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.si = getelementptr inbounds nuw i8, ptr %i.qq, i64 20
  %i.sj = load float, ptr %i.si, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.sk = insertelement <4 x float> poison, float %i.sd, i64 0
  %i.sl = insertelement <4 x float> %i.sk, float %i.sf, i64 1
  %i.sm = insertelement <4 x float> %i.sl, float %i.sh, i64 2
  %i.sn = insertelement <4 x float> %i.sm, float %i.sj, i64 3
  %i.so = fmul fast <4 x float> %i.sn, %i.pj
  %i.sp = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  %i.sq = getelementptr inbounds nuw i8, ptr %i.qe, i64 24
  %i.sr = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
  %i.ss = getelementptr inbounds nuw i8, ptr %i.qq, i64 24
  %i.st = getelementptr inbounds nuw i8, ptr %i.py, i64 40
  %i.su = getelementptr inbounds nuw i8, ptr %i.qe, i64 40
  %i.sv = getelementptr inbounds nuw i8, ptr %i.qk, i64 40
  %i.sw = getelementptr inbounds nuw i8, ptr %i.qq, i64 40
  %i.sx = getelementptr inbounds nuw i8, ptr %i.py, i64 56
  %i.sy = getelementptr inbounds nuw i8, ptr %i.qe, i64 56
  %i.sz = getelementptr inbounds nuw i8, ptr %i.qk, i64 56
  %i.ta = getelementptr inbounds nuw i8, ptr %i.qq, i64 56
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i.i
  %i.tc = fadd fast <4 x float> %i.sb, %i.so
  %i.td = load <4 x float>, ptr %i.sp, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.te = load <4 x float>, ptr %i.sq, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.tf = load <4 x float>, ptr %i.sr, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.tg = load <4 x float>, ptr %i.ss, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.th = shufflevector <4 x float> %i.td, <4 x float> %i.te, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ti = shufflevector <4 x float> %i.th, <4 x float> %i.tf, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.tj = shufflevector <4 x float> %i.ti, <4 x float> %i.tg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.tk = fmul fast <4 x float> %i.tj, %i.oy
  %i.tl = fadd fast <4 x float> %i.tc, %i.tk
  %i.tm = shufflevector <4 x float> %i.td, <4 x float> %i.te, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.tn = shufflevector <4 x float> %i.tm, <4 x float> %i.tf, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.to = shufflevector <4 x float> %i.tn, <4 x float> %i.tg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.tp = fmul fast <4 x float> %i.to, %i.oz
  %i.tq = fadd fast <4 x float> %i.tl, %i.tp
  %i.tr = shufflevector <4 x float> %i.td, <4 x float> %i.te, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ts = shufflevector <4 x float> %i.tr, <4 x float> %i.tf, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.tt = shufflevector <4 x float> %i.ts, <4 x float> %i.tg, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.tu = fmul fast <4 x float> %i.tt, %i.pa
  %i.tv = fadd fast <4 x float> %i.tq, %i.tu
  %i.tw = shufflevector <4 x float> %i.td, <4 x float> %i.te, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.tx = shufflevector <4 x float> %i.tw, <4 x float> %i.tf, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.ty = shufflevector <4 x float> %i.tx, <4 x float> %i.tg, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.tz = fmul fast <4 x float> %i.ty, %i.pb
  %i.ua = fadd fast <4 x float> %i.tv, %i.tz
  %i.ub = load <4 x float>, ptr %i.st, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.uc = load <4 x float>, ptr %i.su, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.ud = load <4 x float>, ptr %i.sv, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.ue = load <4 x float>, ptr %i.sw, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 4 uses
  %i.uf = shufflevector <4 x float> %i.ub, <4 x float> %i.uc, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ug = shufflevector <4 x float> %i.uf, <4 x float> %i.ud, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> %i.ue, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ui = fmul fast <4 x float> %i.uh, %i.pc
  %i.uj = fadd fast <4 x float> %i.ua, %i.ui
  %i.uk = shufflevector <4 x float> %i.ub, <4 x float> %i.uc, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.ul = shufflevector <4 x float> %i.uk, <4 x float> %i.ud, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.um = shufflevector <4 x float> %i.ul, <4 x float> %i.ue, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.un = fmul fast <4 x float> %i.um, %i.pd
  %i.uo = fadd fast <4 x float> %i.uj, %i.un
  %i.up = shufflevector <4 x float> %i.ub, <4 x float> %i.uc, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.uq = shufflevector <4 x float> %i.up, <4 x float> %i.ud, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ur = shufflevector <4 x float> %i.uq, <4 x float> %i.ue, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.us = fmul fast <4 x float> %i.ur, %i.pe
  %i.ut = fadd fast <4 x float> %i.uo, %i.us
  %i.uu = shufflevector <4 x float> %i.ub, <4 x float> %i.uc, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.uv = shufflevector <4 x float> %i.uu, <4 x float> %i.ud, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.uw = shufflevector <4 x float> %i.uv, <4 x float> %i.ue, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ux = fmul fast <4 x float> %i.uw, %i.pf
  %i.uy = fadd fast <4 x float> %i.ut, %i.ux
  %i.uz = load <2 x float>, ptr %i.sx, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 2 uses
  %i.va = load <2 x float>, ptr %i.sy, align 4, !tbaa !163, !alias.scope !638, !noalias !642 ; 2 uses
  %i.vb = load <2 x float>, ptr %i.sz, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.vc = load <2 x float>, ptr %i.ta, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.vd = shufflevector <2 x float> %i.uz, <2 x float> %i.va, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ve = shufflevector <2 x float> %i.vb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.vf = shufflevector <4 x float> %i.vd, <4 x float> %i.ve, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.vg = shufflevector <2 x float> %i.vc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.vh = shufflevector <4 x float> %i.vf, <4 x float> %i.vg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.vi = fmul fast <4 x float> %i.vh, %i.pg
  %i.vj = fadd fast <4 x float> %i.uy, %i.vi
  %i.vk = shufflevector <2 x float> %i.uz, <2 x float> %i.va, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.vl = shufflevector <4 x float> %i.vk, <4 x float> %i.ve, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.vm = shufflevector <4 x float> %i.vl, <4 x float> %i.vg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.vn = fmul fast <4 x float> %i.vm, %i.ph
  %i.vo = fadd fast <4 x float> %i.vj, %i.vn
  store <4 x float> %i.vo, ptr %i.tb, align 4, !tbaa !163, !alias.scope !639, !noalias !643
  %i.vp = add i64 %i.pt, 4                        ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.vp, %.0607830
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !509

.lr.ph87.i.i.i.i.i:                               ; preds = %.lr.ph87.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i
  %.186.i.i.i.i.i = phi i64 [ %i.vz, %.lr.ph87.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i ] ; 3 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i.i
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !44, !noalias !641
  %i.vs = zext i32 %i.vr to i64
  %i.vt = mul nsw i64 %i.gn, %i.vs
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.vt
  %i.vv = load <16 x float>, ptr %i.vu, align 4, !tbaa !163, !alias.scope !638, !noalias !642
  %i.vw = fmul fast <16 x float> %i.vv, %i.ps
  %i.vx = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.vw)
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i.i
  store float %i.vx, ptr %i.vy, align 4, !tbaa !163, !alias.scope !639, !noalias !643
  %i.vz = add nuw i64 %.186.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.vz, %.0607830
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph827, label %.lr.ph87.i.i.i.i.i, !llvm.loop !510

bb.bn:                                            ; preds = %.lr.ph833
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  call void @llvm.experimental.noalias.scope.decl(metadata !645)
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %.not82.i.i.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.bn
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %wide.load1395 = load <4 x float>, ptr %i.wa, align 4, !tbaa !163, !alias.scope !644, !noalias !647 ; 4 uses
  %wide.load1396 = load <4 x float>, ptr %i.wb, align 4, !tbaa !163, !alias.scope !644, !noalias !647 ; 4 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 32
end_hunk_0
