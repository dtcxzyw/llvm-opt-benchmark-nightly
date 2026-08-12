inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4ncnn25resize_bicubic_image_avx2ERKNS_3MatERS0_PfPiS4_S5_:bb.a
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.0437631.i, i64 %indvars.iv.i
  store <8 x float> %i.ms, ptr %i.mt, align 1, !tbaa !25
  %i.mu = getelementptr inbounds nuw i8, ptr %.0455599.i, i64 128 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.mv = icmp slt i64 %indvars.iv.next.i, %invariant.op.i
  br i1 %i.mv, label %.thread589.3.i, label %.preheader595.loopexit.i, !llvm.loop !50

.lr.ph603.i:                                      ; preds = %.lr.ph603.i, %.lr.ph603.preheader.i
  %indvars.iv648.i = phi i64 [ %i.la, %.lr.ph603.preheader.i ], [ %indvars.iv.next649.i, %.lr.ph603.i ] ; 6 uses
  %.1456602.i = phi ptr [ %.0455.lcssa.i, %.lr.ph603.preheader.i ], [ %i.ny, %.lr.ph603.i ] ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv648.i
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !23
  %i.my = sext i32 %i.mx to i64                   ; 4 uses
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.my
  %i.na = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.my
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.my
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.my
  %i.nd = getelementptr inbounds i8, ptr %i.mz, i64 -4
  %i.ne = load <4 x float>, ptr %.1456602.i, align 4, !tbaa !28 ; 4 uses
  %i.nf = load <4 x float>, ptr %i.nd, align 4, !tbaa !28
  %i.ng = fmul fast <4 x float> %i.nf, %i.ne
  %i.nh = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ng)
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %.0431634.i, i64 %indvars.iv648.i
  store float %i.nh, ptr %i.ni, align 4, !tbaa !28
  %i.nj = getelementptr inbounds i8, ptr %i.na, i64 -4
  %i.nk = load <4 x float>, ptr %i.nj, align 4, !tbaa !28
  %i.nl = fmul fast <4 x float> %i.nk, %i.ne
  %i.nm = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.nl)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.0433633.i, i64 %indvars.iv648.i
  store float %i.nm, ptr %i.nn, align 4, !tbaa !28
  %i.no = getelementptr inbounds i8, ptr %i.nb, i64 -4
  %i.np = load <4 x float>, ptr %i.no, align 4, !tbaa !28
  %i.nq = fmul fast <4 x float> %i.np, %i.ne
  %i.nr = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.nq)
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %.0435632.i, i64 %indvars.iv648.i
  store float %i.nr, ptr %i.ns, align 4, !tbaa !28
  %i.nt = getelementptr inbounds i8, ptr %i.nc, i64 -4
  %i.nu = load <4 x float>, ptr %i.nt, align 4, !tbaa !28
  %i.nv = fmul fast <4 x float> %i.nu, %i.ne
  %i.nw = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.nv)
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %.0437631.i, i64 %indvars.iv648.i
  store float %i.nw, ptr %i.nx, align 4, !tbaa !28
  %i.ny = getelementptr inbounds nuw i8, ptr %.1456602.i, i64 16
  %indvars.iv.next649.i = add nuw nsw i64 %indvars.iv648.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next649.i, %i.z
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph603.i, !llvm.loop !51

.loopexit.i:                                      ; preds = %.lr.ph603.i, %.lr.ph612.i, %.lr.ph620.i, %.lr.ph628.i.prol.loopexit, %.lr.ph628.i, %.preheader595.i, %.preheader593.i, %.preheader591.i, %.preheader.i, %bb.ac
  %.1438.i = phi ptr [ %.0437631.i, %bb.ac ], [ %.0431634.i, %.preheader.i ], [ %.0433633.i, %.preheader591.i ], [ %.0435632.i, %.preheader593.i ], [ %.0437631.i, %.preheader595.i ], [ %.0435632.i, %.lr.ph612.i ], [ %.0431634.i, %.lr.ph628.i.prol.loopexit ], [ %.0433633.i, %.lr.ph620.i ], [ %.0431634.i, %.lr.ph628.i ], [ %.0437631.i, %.lr.ph603.i ] ; 7 uses
  %.1436.i = phi ptr [ %.0435632.i, %bb.ac ], [ %.0437631.i, %.preheader.i ], [ %.0431634.i, %.preheader591.i ], [ %.0433633.i, %.preheader593.i ], [ %.0435632.i, %.preheader595.i ], [ %.0433633.i, %.lr.ph612.i ], [ %.0437631.i, %.lr.ph628.i.prol.loopexit ], [ %.0431634.i, %.lr.ph620.i ], [ %.0437631.i, %.lr.ph628.i ], [ %.0435632.i, %.lr.ph603.i ] ; 7 uses
  %.1434.i = phi ptr [ %.0433633.i, %bb.ac ], [ %.0435632.i, %.preheader.i ], [ %.0437631.i, %.preheader591.i ], [ %.0431634.i, %.preheader593.i ], [ %.0433633.i, %.preheader595.i ], [ %.0431634.i, %.lr.ph612.i ], [ %.0435632.i, %.lr.ph628.i.prol.loopexit ], [ %.0437631.i, %.lr.ph620.i ], [ %.0435632.i, %.lr.ph628.i ], [ %.0433633.i, %.lr.ph603.i ] ; 7 uses
  %.1432.i = phi ptr [ %.0431634.i, %bb.ac ], [ %.0433633.i, %.preheader.i ], [ %.0435632.i, %.preheader591.i ], [ %.0437631.i, %.preheader593.i ], [ %.0431634.i, %.preheader595.i ], [ %.0437631.i, %.lr.ph612.i ], [ %.0433633.i, %.lr.ph628.i.prol.loopexit ], [ %.0435632.i, %.lr.ph620.i ], [ %.0433633.i, %.lr.ph628.i ], [ %.0431634.i, %.lr.ph603.i ] ; 7 uses
  %.1438.i52 = ptrtoaddr ptr %.1438.i to i64
  %.1436.i53 = ptrtoaddr ptr %.1436.i to i64
  %.1434.i55 = ptrtoaddr ptr %.1434.i to i64
  %.1432.i58 = ptrtoaddr ptr %.1432.i to i64
  %i.nz = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.oa = ptrtoaddr ptr %i.nz to i64              ; 2 uses
  %i.ob = load i32, ptr %i.a, align 4, !tbaa !9
  %i.oc = sext i32 %i.ob to i64
  %i.od = mul i64 %indvars.iv676.i, %i.oc
  %i.oe = load i64, ptr %i.y, align 8, !tbaa !24
  %i.of = mul i64 %i.od, %i.oe                    ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.of ; 5 uses
  %i.oh = load float, ptr %.0635.i, align 4, !tbaa !28 ; 5 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.0635.i, i64 4
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !28 ; 5 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.0635.i, i64 8
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !28 ; 5 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.0635.i, i64 12
  %i.on = load float, ptr %i.om, align 4, !tbaa !28 ; 5 uses
  %i.oo = insertelement <8 x float> poison, float %i.oh, i64 0
  %i.op = shufflevector <8 x float> %i.oo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.oq = insertelement <8 x float> poison, float %i.oj, i64 0
  %i.or = shufflevector <8 x float> %i.oq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.os = insertelement <8 x float> poison, float %i.ol, i64 0
  %i.ot = shufflevector <8 x float> %i.os, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ou = insertelement <8 x float> poison, float %i.on, i64 0
  %i.ov = shufflevector <8 x float> %i.ou, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.loopexit.i ] ; 6 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.1432.i, i64 %indvars.iv.i.i
  %i.ox = load <8 x float>, ptr %i.ow, align 1, !tbaa !25
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %.1434.i, i64 %indvars.iv.i.i
  %i.oz = load <8 x float>, ptr %i.oy, align 1, !tbaa !25
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.1436.i, i64 %indvars.iv.i.i
  %i.pb = load <8 x float>, ptr %i.pa, align 1, !tbaa !25
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %.1438.i, i64 %indvars.iv.i.i
  %i.pd = load <8 x float>, ptr %i.pc, align 1, !tbaa !25
  %i.pe = fmul fast <8 x float> %i.ox, %i.op
  %i.pf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oz, <8 x float> nofpclass(nan inf) %i.or, <8 x float> nofpclass(nan inf) %i.pe)
  %i.pg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pb, <8 x float> nofpclass(nan inf) %i.ot, <8 x float> nofpclass(nan inf) %i.pf)
  %i.ph = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pd, <8 x float> nofpclass(nan inf) %i.ov, <8 x float> nofpclass(nan inf) %i.pg)
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv.i.i
  store <8 x float> %i.ph, ptr %i.pi, align 1, !tbaa !25
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 8 ; 3 uses
  %i.pj = or disjoint i64 %indvars.iv.next.i.i, 7
  %i.pk = icmp samesign ult i64 %i.pj, %i.z
  br i1 %i.pk, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !52

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.pl = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.loopexit.i
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.pl, %._crit_edge.loopexit.i.i ] ; 3 uses
  %i.pm = insertelement <4 x float> poison, float %i.oh, i64 0
  %i.pn = shufflevector <4 x float> %i.pm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.po = insertelement <4 x float> poison, float %i.oj, i64 0
  %i.pp = shufflevector <4 x float> %i.po, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pq = insertelement <4 x float> poison, float %i.ol, i64 0
  %i.pr = shufflevector <4 x float> %i.pq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ps = insertelement <4 x float> poison, float %i.on, i64 0
  %i.pt = shufflevector <4 x float> %i.ps, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pu = or disjoint i32 %.0.lcssa.i.i, 3
  %i.pv = icmp slt i32 %i.pu, %i.b
  br i1 %i.pv, label %.lr.ph75.preheader.i.i, label %.preheader.i.i

.lr.ph75.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %i.pw = zext nneg i32 %.0.lcssa.i.i to i64
  br label %.lr.ph75.i.i

.preheader.loopexit.i.i:                          ; preds = %.lr.ph75.i.i
  %i.px = trunc nuw nsw i64 %indvars.iv.next83.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %._crit_edge.i.i
  %.1.lcssa.i.i = phi i32 [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.px, %.preheader.loopexit.i.i ] ; 2 uses
  %i.py = icmp slt i32 %.1.lcssa.i.i, %i.b
  br i1 %i.py, label %iter.check, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i

iter.check:                                       ; preds = %.preheader.i.i
  %i.pz = zext i32 %.1.lcssa.i.i to i64           ; 7 uses
  %i.qa = sub nsw i64 %i.z, %i.pz                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.qa, 8
  br i1 %min.iters.check, label %.lr.ph78.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.qb = add i64 %i.of, %i.oa                    ; 2 uses
  %i.qc = sub i64 %.1438.i52, %i.qb
  %diff.check = icmp ugt i64 %i.qc, -128
  %i.qd = sub i64 %.1436.i53, %i.qb
  %diff.check54 = icmp ugt i64 %i.qd, -128
  %conflict.rdx = or i1 %diff.check, %diff.check54
  %i.qe = add i64 %i.of, %i.oa                    ; 2 uses
  %i.qf = sub i64 %.1434.i55, %i.qe
  %diff.check56 = icmp ugt i64 %i.qf, -128
  %conflict.rdx57 = or i1 %conflict.rdx, %diff.check56
  %i.qg = sub i64 %.1432.i58, %i.qe
  %diff.check59 = icmp ugt i64 %i.qg, -128
  %conflict.rdx60 = or i1 %conflict.rdx57, %diff.check59
  br i1 %conflict.rdx60, label %.lr.ph78.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check61 = icmp ult i64 %i.qa, 32
  br i1 %min.iters.check61, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.qh = and i64 %i.qa, 24
  %n.vec = and i64 %i.qa, -32                     ; 4 uses
  %i.qi = add nsw i64 %n.vec, %i.pz
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.oh, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert62 = insertelement <8 x float> poison, float %i.oj, i64 0
  %broadcast.splat63 = shufflevector <8 x float> %broadcast.splatinsert62, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert64 = insertelement <8 x float> poison, float %i.ol, i64 0
  %broadcast.splat65 = shufflevector <8 x float> %broadcast.splatinsert64, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert66 = insertelement <8 x float> poison, float %i.on, i64 0
  %broadcast.splat67 = shufflevector <8 x float> %broadcast.splatinsert66, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qj = add nuw i64 %index, %i.pz               ; 5 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %.1432.i, i64 %i.qj ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 32
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 64
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 96
  %wide.load = load <8 x float>, ptr %i.qk, align 4, !tbaa !28
  %wide.load68 = load <8 x float>, ptr %i.ql, align 4, !tbaa !28
  %wide.load69 = load <8 x float>, ptr %i.qm, align 4, !tbaa !28
  %wide.load70 = load <8 x float>, ptr %i.qn, align 4, !tbaa !28
  %i.qo = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.qp = fmul fast <8 x float> %wide.load68, %broadcast.splat
  %i.qq = fmul fast <8 x float> %wide.load69, %broadcast.splat
  %i.qr = fmul fast <8 x float> %wide.load70, %broadcast.splat
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.1434.i, i64 %i.qj ; 4 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 32
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 96
  %wide.load71 = load <8 x float>, ptr %i.qs, align 4, !tbaa !28
  %wide.load72 = load <8 x float>, ptr %i.qt, align 4, !tbaa !28
  %wide.load73 = load <8 x float>, ptr %i.qu, align 4, !tbaa !28
  %wide.load74 = load <8 x float>, ptr %i.qv, align 4, !tbaa !28
  %i.qw = fmul fast <8 x float> %wide.load71, %broadcast.splat63
  %i.qx = fmul fast <8 x float> %wide.load72, %broadcast.splat63
  %i.qy = fmul fast <8 x float> %wide.load73, %broadcast.splat63
  %i.qz = fmul fast <8 x float> %wide.load74, %broadcast.splat63
  %i.ra = fadd fast <8 x float> %i.qo, %i.qw
  %i.rb = fadd fast <8 x float> %i.qp, %i.qx
  %i.rc = fadd fast <8 x float> %i.qq, %i.qy
  %i.rd = fadd fast <8 x float> %i.qr, %i.qz
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %.1436.i, i64 %i.qj ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 96
  %wide.load75 = load <8 x float>, ptr %i.re, align 4, !tbaa !28
  %wide.load76 = load <8 x float>, ptr %i.rf, align 4, !tbaa !28
  %wide.load77 = load <8 x float>, ptr %i.rg, align 4, !tbaa !28
  %wide.load78 = load <8 x float>, ptr %i.rh, align 4, !tbaa !28
  %i.ri = fmul fast <8 x float> %wide.load75, %broadcast.splat65
  %i.rj = fmul fast <8 x float> %wide.load76, %broadcast.splat65
  %i.rk = fmul fast <8 x float> %wide.load77, %broadcast.splat65
  %i.rl = fmul fast <8 x float> %wide.load78, %broadcast.splat65
  %i.rm = fadd fast <8 x float> %i.ra, %i.ri
  %i.rn = fadd fast <8 x float> %i.rb, %i.rj
  %i.ro = fadd fast <8 x float> %i.rc, %i.rk
  %i.rp = fadd fast <8 x float> %i.rd, %i.rl
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %.1438.i, i64 %i.qj ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 32
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 64
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 96
  %wide.load79 = load <8 x float>, ptr %i.rq, align 4, !tbaa !28
  %wide.load80 = load <8 x float>, ptr %i.rr, align 4, !tbaa !28
  %wide.load81 = load <8 x float>, ptr %i.rs, align 4, !tbaa !28
  %wide.load82 = load <8 x float>, ptr %i.rt, align 4, !tbaa !28
  %i.ru = fmul fast <8 x float> %wide.load79, %broadcast.splat67
  %i.rv = fmul fast <8 x float> %wide.load80, %broadcast.splat67
  %i.rw = fmul fast <8 x float> %wide.load81, %broadcast.splat67
  %i.rx = fmul fast <8 x float> %wide.load82, %broadcast.splat67
  %i.ry = fadd fast <8 x float> %i.rm, %i.ru
  %i.rz = fadd fast <8 x float> %i.rn, %i.rv
  %i.sa = fadd fast <8 x float> %i.ro, %i.rw
  %i.sb = fadd fast <8 x float> %i.rp, %i.rx
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.qj ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 32
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 64
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 96
  store <8 x float> %i.ry, ptr %i.sc, align 4, !tbaa !28
  store <8 x float> %i.rz, ptr %i.sd, align 4, !tbaa !28
  store <8 x float> %i.sa, ptr %i.se, align 4, !tbaa !28
  store <8 x float> %i.sb, ptr %i.sf, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.sg = icmp eq i64 %index.next, %n.vec
  br i1 %i.sg, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qa, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.qh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph78.i.i.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec83 = and i64 %i.qa, -8                    ; 3 uses
  %i.sh = add nsw i64 %n.vec83, %i.pz
  %broadcast.splatinsert84 = insertelement <8 x float> poison, float %i.oh, i64 0
  %broadcast.splat85 = shufflevector <8 x float> %broadcast.splatinsert84, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert86 = insertelement <8 x float> poison, float %i.oj, i64 0
  %broadcast.splat87 = shufflevector <8 x float> %broadcast.splatinsert86, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert88 = insertelement <8 x float> poison, float %i.ol, i64 0
  %broadcast.splat89 = shufflevector <8 x float> %broadcast.splatinsert88, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert90 = insertelement <8 x float> poison, float %i.on, i64 0
  %broadcast.splat91 = shufflevector <8 x float> %broadcast.splatinsert90, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index92 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 2 uses
  %i.si = add nuw i64 %index92, %i.pz             ; 5 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %.1432.i, i64 %i.si
  %wide.load93 = load <8 x float>, ptr %i.sj, align 4, !tbaa !28
  %i.sk = fmul fast <8 x float> %wide.load93, %broadcast.splat85
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.1434.i, i64 %i.si
  %wide.load94 = load <8 x float>, ptr %i.sl, align 4, !tbaa !28
  %i.sm = fmul fast <8 x float> %wide.load94, %broadcast.splat87
  %i.sn = fadd fast <8 x float> %i.sk, %i.sm
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.1436.i, i64 %i.si
  %wide.load95 = load <8 x float>, ptr %i.so, align 4, !tbaa !28
  %i.sp = fmul fast <8 x float> %wide.load95, %broadcast.splat89
  %i.sq = fadd fast <8 x float> %i.sn, %i.sp
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %.1438.i, i64 %i.si
  %wide.load96 = load <8 x float>, ptr %i.sr, align 4, !tbaa !28
  %i.ss = fmul fast <8 x float> %wide.load96, %broadcast.splat91
  %i.st = fadd fast <8 x float> %i.sq, %i.ss
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.si
  store <8 x float> %i.st, ptr %i.su, align 4, !tbaa !28
  %index.next97 = add nuw i64 %index92, 8         ; 2 uses
  %i.sv = icmp eq i64 %index.next97, %n.vec83
  br i1 %i.sv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %i.qa, %n.vec83
  br i1 %cmp.n98, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i, label %.lr.ph78.i.i.preheader

.lr.ph78.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv85.i.i.ph = phi i64 [ %i.pz, %iter.check ], [ %i.pz, %vector.memcheck ], [ %i.qi, %vec.epilog.iter.check ], [ %i.sh, %vec.epilog.middle.block ]
  br label %.lr.ph78.i.i

.lr.ph75.i.i:                                     ; preds = %.lr.ph75.i.i, %.lr.ph75.preheader.i.i
  %indvars.iv82.i.i = phi i64 [ %i.pw, %.lr.ph75.preheader.i.i ], [ %indvars.iv.next83.i.i, %.lr.ph75.i.i ] ; 6 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %.1432.i, i64 %indvars.iv82.i.i
  %i.sx = load <4 x float>, ptr %i.sw, align 1, !tbaa !25
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %.1434.i, i64 %indvars.iv82.i.i
  %i.sz = load <4 x float>, ptr %i.sy, align 1, !tbaa !25
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %.1436.i, i64 %indvars.iv82.i.i
  %i.tb = load <4 x float>, ptr %i.ta, align 1, !tbaa !25
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %.1438.i, i64 %indvars.iv82.i.i
  %i.td = load <4 x float>, ptr %i.tc, align 1, !tbaa !25
  %i.te = fmul fast <4 x float> %i.sx, %i.pn
  %i.tf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sz, <4 x float> nofpclass(nan inf) %i.pp, <4 x float> nofpclass(nan inf) %i.te)
  %i.tg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.tb, <4 x float> nofpclass(nan inf) %i.pr, <4 x float> nofpclass(nan inf) %i.tf)
  %i.th = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.td, <4 x float> nofpclass(nan inf) %i.pt, <4 x float> nofpclass(nan inf) %i.tg)
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv82.i.i
  store <4 x float> %i.th, ptr %i.ti, align 1, !tbaa !25
  %indvars.iv.next83.i.i = add nuw nsw i64 %indvars.iv82.i.i, 4 ; 3 uses
  %i.tj = icmp slt i64 %indvars.iv.next83.i.i, %invariant.op.i.i
  br i1 %i.tj, label %.lr.ph75.i.i, label %.preheader.loopexit.i.i, !llvm.loop !55

.lr.ph78.i.i:                                     ; preds = %.lr.ph78.i.i.preheader, %.lr.ph78.i.i
  %indvars.iv85.i.i = phi i64 [ %indvars.iv.next86.i.i, %.lr.ph78.i.i ], [ %indvars.iv85.i.i.ph, %.lr.ph78.i.i.preheader ] ; 6 uses
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %.1432.i, i64 %indvars.iv85.i.i
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !28
  %i.tm = fmul fast float %i.tl, %i.oh
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %.1434.i, i64 %indvars.iv85.i.i
  %i.to = load float, ptr %i.tn, align 4, !tbaa !28
  %i.tp = fmul fast float %i.to, %i.oj
  %i.tq = fadd fast float %i.tm, %i.tp
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %.1436.i, i64 %indvars.iv85.i.i
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !28
  %i.tt = fmul fast float %i.ts, %i.ol
  %i.tu = fadd fast float %i.tq, %i.tt
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %.1438.i, i64 %indvars.iv85.i.i
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !28
  %i.tx = fmul fast float %i.tw, %i.on
  %i.ty = fadd fast float %i.tu, %i.tx
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv85.i.i
  store float %i.ty, ptr %i.tz, align 4, !tbaa !28
  %indvars.iv.next86.i.i = add nuw nsw i64 %indvars.iv85.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next86.i.i, %i.z
  br i1 %exitcond.not.i.i, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i, label %.lr.ph78.i.i, !llvm.loop !56

_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i: ; preds = %.lr.ph78.i.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.i
  %i.ua = getelementptr inbounds nuw i8, ptr %.0635.i, i64 16
  %indvars.iv.next677.i = add nuw nsw i64 %indvars.iv676.i, 1 ; 2 uses
  %exitcond680.not.i = icmp eq i64 %indvars.iv.next677.i, %wide.trip.count679.i
  br i1 %exitcond680.not.i, label %._crit_edge.i, label %bb.ac, !llvm.loop !57

bb.ak:                                            ; preds = %bb.ab
  %i.ub = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4
  %i.uc = icmp eq i32 %i.ub, 1
  br i1 %i.uc, label %bb.al, label %_ZN4ncnn3MatD2Ev.exit496.i

bb.al:                                            ; preds = %bb.ak
  %i.ud = load ptr, ptr %i.l, align 8, !tbaa !19  ; 3 uses
  %.not3.i519.i = icmp eq ptr %i.ud, null
  %i.ue = load ptr, ptr %8, align 8, !tbaa !17    ; 3 uses
  br i1 %.not3.i519.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.uf = load ptr, ptr %i.ud, align 8, !tbaa !20
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 24
  %i.uh = load ptr, ptr %i.ug, align 8
  invoke void %i.uh(ptr noundef nonnull align 8 dereferenceable(8) %i.ud, ptr noundef %i.ue)
          to label %_ZN4ncnn3MatD2Ev.exit496.i unwind label %bb.ap, !inline_history !22

bb.an:                                            ; preds = %bb.al
  %.not.i533.i = icmp eq ptr %i.ue, null
  br i1 %.not.i533.i, label %_ZN4ncnn3MatD2Ev.exit496.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @free(ptr noundef nonnull %i.ue) #10
  br label %_ZN4ncnn3MatD2Ev.exit496.i

bb.ap:                                            ; preds = %bb.am
  %i.ui = landingpad { ptr, i32 }
          catch ptr null
  %i.uj = extractvalue { ptr, i32 } %i.ui, 0
  call void @__clang_call_terminate(ptr %i.uj) #11
  unreachable

_ZN4ncnn3MatD2Ev.exit496.i:                       ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak, %bb.ab, %bb.aa
  %.pn488.pn.pn.i = phi { ptr, i32 } [ %i.br, %bb.aa ], [ %i.bs, %bb.ak ], [ %i.bs, %bb.ab ], [ %i.bs, %bb.am ], [ %i.bs, %bb.an ], [ %i.bs, %bb.ao ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %i.uk = load ptr, ptr %i.h, align 8, !tbaa !18  ; 2 uses
  %.not.i522.i = icmp eq ptr %i.uk, null
  br i1 %.not.i522.i, label %_ZN4ncnn3MatD2Ev.exit495.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit496.i
  %i.ul = atomicrmw add ptr %i.uk, i32 -1 acq_rel, align 4
  %i.um = icmp eq i32 %i.ul, 1
  br i1 %i.um, label %bb.ar, label %_ZN4ncnn3MatD2Ev.exit495.i

bb.ar:                                            ; preds = %bb.aq
  %i.un = load ptr, ptr %i.i, align 8, !tbaa !19  ; 3 uses
  %.not3.i523.i = icmp eq ptr %i.un, null
  %i.uo = load ptr, ptr %7, align 8, !tbaa !17    ; 3 uses
  br i1 %.not3.i523.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.up = load ptr, ptr %i.un, align 8, !tbaa !20
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.ur = load ptr, ptr %i.uq, align 8
  invoke void %i.ur(ptr noundef nonnull align 8 dereferenceable(8) %i.un, ptr noundef %i.uo)
          to label %_ZN4ncnn3MatD2Ev.exit495.i unwind label %bb.av, !inline_history !22

bb.at:                                            ; preds = %bb.ar
  %.not.i531.i = icmp eq ptr %i.uo, null
  br i1 %.not.i531.i, label %_ZN4ncnn3MatD2Ev.exit495.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.uo) #10
  br label %_ZN4ncnn3MatD2Ev.exit495.i

bb.av:                                            ; preds = %bb.as
  %i.us = landingpad { ptr, i32 }
          catch ptr null
  %i.ut = extractvalue { ptr, i32 } %i.us, 0
  call void @__clang_call_terminate(ptr %i.ut) #11
  unreachable

_ZN4ncnn3MatD2Ev.exit495.i:                       ; preds = %bb.au, %bb.at, %bb.as, %bb.aq, %_ZN4ncnn3MatD2Ev.exit496.i, %bb.z
  %.pn488.pn.pn.pn.i = phi { ptr, i32 } [ %i.bq, %bb.z ], [ %.pn488.pn.pn.i, %bb.aq ], [ %.pn488.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit496.i ], [ %.pn488.pn.pn.i, %bb.as ], [ %.pn488.pn.pn.i, %bb.at ], [ %.pn488.pn.pn.i, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.uu = load ptr, ptr %i.e, align 8, !tbaa !18  ; 2 uses
  %.not.i526.i = icmp eq ptr %i.uu, null
  br i1 %.not.i526.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit495.i
  %i.uv = atomicrmw add ptr %i.uu, i32 -1 acq_rel, align 4
  %i.uw = icmp eq i32 %i.uv, 1
  br i1 %i.uw, label %bb.ax, label %_ZN4ncnn3MatD2Ev.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.ux = load ptr, ptr %i.f, align 8, !tbaa !19  ; 3 uses
  %.not3.i527.i = icmp eq ptr %i.ux, null
  %i.uy = load ptr, ptr %6, align 8, !tbaa !17    ; 3 uses
  br i1 %.not3.i527.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.uz = load ptr, ptr %i.ux, align 8, !tbaa !20
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 24
  %i.vb = load ptr, ptr %i.va, align 8
  invoke void %i.vb(ptr noundef nonnull align 8 dereferenceable(8) %i.ux, ptr noundef %i.uy)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.bb, !inline_history !22

bb.az:                                            ; preds = %bb.ax
  %.not.i530.i = icmp eq ptr %i.uy, null
  br i1 %.not.i530.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef nonnull %i.uy) #10
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.bb:                                            ; preds = %bb.ay
  %i.vc = landingpad { ptr, i32 }
          catch ptr null
  %i.vd = extractvalue { ptr, i32 } %i.vc, 0
  call void @__clang_call_terminate(ptr %i.vd) #11
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw, %_ZN4ncnn3MatD2Ev.exit495.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  resume { ptr, i32 } %.pn488.pn.pn.pn.i

_ZN4ncnnL20resize_bicubic_imageERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit498.i, %bb.t, %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 44}
!10 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !12, i64 8, !13, i64 16, !6, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!15 = !{!10, !6, i64 48}
!16 = !{!10, !13, i64 64}
!17 = !{!10, !11, i64 0}
!18 = !{!10, !12, i64 8}
!19 = !{!10, !14, i64 32}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !8, i64 0}
!22 = distinct !{null}
!23 = !{!6, !6, i64 0}
!24 = !{!10, !13, i64 16}
!25 = !{!7, !7, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!29, !29, i64 0}
!29 = !{!"float", !7, i64 0}
!30 = distinct !{!30, !27}
!31 = distinct !{!31, !27}
end_hunk_0
