Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/tangentspace?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@meshopt_generateTangents:bb.a
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
          to label %_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173 unwind label %bb.ai, !inline_history !18 ; 22 uses

_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173:  ; preds = %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit
  %i.nk = load i64, ptr %i.g, align 8, !tbaa !14  ; 4 uses
  %i.nl = add nuw nsw i64 %i.nk, 1                ; 2 uses
  store i64 %i.nl, ptr %i.g, align 8, !tbaa !14
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.nk
  store ptr %i.nj, ptr %i.nm, align 8, !tbaa !15
  br i1 %.not88.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader359, label %vector.ph

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
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader359

.lr.ph.preheader359:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0133217.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173
  %i.nq = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.nr = icmp ugt i64 %2, -4611686018427387905
  %i.ns = shl nuw i64 %i.a, 2
  %i.nt = select i1 %i.nr, i64 -1, i64 %i.ns
  %i.nu = invoke noundef ptr %i.nq(i64 noundef %i.nt)
          to label %bb.u unwind label %bb.ai, !inline_history !18 ; 15 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader359, %.lr.ph
  %.0133217 = phi i64 [ %i.nx, %.lr.ph ], [ %.0133217.ph, %.lr.ph.preheader359 ] ; 3 uses
  %i.nv = trunc i64 %.0133217 to i32
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0133217
  store i32 %i.nv, ptr %i.nw, align 4, !tbaa !50
  %i.nx = add nuw i64 %.0133217, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.nx, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

bb.u:                                             ; preds = %._crit_edge
  %i.ny = add nuw nsw i64 %i.nk, 2                ; 2 uses
  store i64 %i.ny, ptr %i.g, align 8, !tbaa !14
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.nl
  store ptr %i.nu, ptr %i.nz, align 8, !tbaa !15
  %i.oa = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.ob = invoke noundef ptr %i.oa(i64 noundef %i.a)
          to label %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit unwind label %bb.ai, !inline_history !32 ; 13 uses

_ZN17meshopt_Allocator8allocateIhEEPT_m.exit:     ; preds = %bb.u
  %i.oc = add nuw nsw i64 %i.nk, 3
  store i64 %i.oc, ptr %i.g, align 8, !tbaa !14
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ny
  store ptr %i.ob, ptr %i.od, align 8, !tbaa !15
  br i1 %.not90.i, label %.preheader208, label %.lr.ph219.preheader

.lr.ph219.preheader:                              ; preds = %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit
  %min.iters.check327 = icmp ult i64 %2, 51
  br i1 %min.iters.check327, label %.lr.ph219.preheader358, label %vector.memcheck

.lr.ph219.preheader358:                           ; preds = %vector.body337, %vector.memcheck, %.lr.ph219.preheader
  %.0132218.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph219.preheader ], [ %n.vec336, %vector.body337 ] ; 8 uses
  %i.oe = sub i64 %i.a, %.0132218.ph
  %.neg = add i64 %.0132218.ph, 1
  %xtraiter375 = and i64 %i.oe, 1
  %lcmp.mod376.not = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod376.not, label %.lr.ph219.prol.loopexit, label %.lr.ph219.prol

.lr.ph219.prol:                                   ; preds = %.lr.ph219.preheader358
  %i.of = trunc i64 %.0132218.ph to i32
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %.0132218.ph
  store i32 %i.of, ptr %i.og, align 4, !tbaa !50
  %i.oh = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0132218.ph
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !57 ; 2 uses
  %i.ok = fcmp ogt float %i.oj, 0.000000e+00
  %i.ol = zext i1 %i.ok to i8
  %i.om = fcmp olt float %i.oj, 0.000000e+00
  %i.on = select i1 %i.om, i8 2, i8 0
  %i.oo = or disjoint i8 %i.on, %i.ol
  %i.op = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.0132218.ph
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !58
  %i.oq = add nuw nsw i64 %.0132218.ph, 1
  br label %.lr.ph219.prol.loopexit

.lr.ph219.prol.loopexit:                          ; preds = %.lr.ph219.prol, %.lr.ph219.preheader358
  %.0132218.unr = phi i64 [ %.0132218.ph, %.lr.ph219.preheader358 ], [ %i.oq, %.lr.ph219.prol ]
  %i.or = icmp eq i64 %i.a, %.neg
  br i1 %i.or, label %.preheader208, label %.lr.ph219

vector.memcheck:                                  ; preds = %.lr.ph219.preheader
  %i.os = shl i64 %i.a, 2
  %i.ot = getelementptr i8, ptr %i.nu, i64 %i.os  ; 2 uses
  %i.ou = getelementptr i8, ptr %i.ob, i64 %i.a   ; 2 uses
  %bound0 = icmp ult ptr %i.nu, %i.ou
  %bound1 = icmp ult ptr %i.ob, %i.ot
  %found.conflict = and i1 %bound0, %bound1
  %12 = getelementptr i8, ptr %i.jg, i64 12       ; 2 uses
  %13 = shl i64 %i.a, 4
  %14 = getelementptr i8, ptr %i.jg, i64 %13      ; 2 uses
  %bound0328 = icmp ult ptr %i.nu, %14
  %bound1329 = icmp ult ptr %12, %i.ot
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx = or i1 %found.conflict, %found.conflict330
  %bound0331 = icmp ult ptr %i.ob, %14
  %bound1332 = icmp ult ptr %12, %i.ou
  %found.conflict333 = and i1 %bound0331, %bound1332
  %conflict.rdx334 = or i1 %conflict.rdx, %found.conflict333
  br i1 %conflict.rdx334, label %.lr.ph219.preheader358, label %vector.ph335

vector.ph335:                                     ; preds = %vector.memcheck
  %i.ov = and i64 %i.a, 3                         ; 2 uses
  %i.ow = icmp eq i64 %i.ov, 0
  %i.ox = select i1 %i.ow, i64 4, i64 %i.ov
  %n.vec336 = sub nsw i64 %i.a, %i.ox             ; 2 uses
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph335
  %index338 = phi i64 [ 0, %vector.ph335 ], [ %index.next340, %vector.body337 ] ; 7 uses
  %vec.ind339 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph335 ], [ %vec.ind.next341, %vector.body337 ] ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %index338
  store <4 x i32> %vec.ind339, ptr %i.oy, align 4, !tbaa !50, !alias.scope !59, !noalias !60
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.pb = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.pc = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 12
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 28
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 44
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 60
  %i.ph = load float, ptr %i.pd, align 4, !tbaa !57, !alias.scope !61
  %i.pi = load float, ptr %i.pe, align 4, !tbaa !57, !alias.scope !61
  %i.pj = load float, ptr %i.pf, align 4, !tbaa !57, !alias.scope !61
  %i.pk = load float, ptr %i.pg, align 4, !tbaa !57, !alias.scope !61
  %i.pl = insertelement <4 x float> poison, float %i.ph, i64 0
  %i.pm = insertelement <4 x float> %i.pl, float %i.pi, i64 1
  %i.pn = insertelement <4 x float> %i.pm, float %i.pj, i64 2
  %i.po = insertelement <4 x float> %i.pn, float %i.pk, i64 3 ; 2 uses
  %i.pp = fcmp ogt <4 x float> %i.po, zeroinitializer
  %i.pq = zext <4 x i1> %i.pp to <4 x i8>
  %i.pr = fcmp olt <4 x float> %i.po, zeroinitializer
  %i.ps = select <4 x i1> %i.pr, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.pt = or disjoint <4 x i8> %i.ps, %i.pq
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ob, i64 %index338
  store <4 x i8> %i.pt, ptr %i.pu, align 1, !tbaa !58, !alias.scope !62, !noalias !61
  %index.next340 = add nuw i64 %index338, 4       ; 2 uses
  %vec.ind.next341 = add <4 x i32> %vec.ind339, splat (i32 4)
  %i.pv = icmp eq i64 %index.next340, %n.vec336
  br i1 %i.pv, label %.lr.ph219.preheader358, label %vector.body337, !llvm.loop !37

.preheader208:                                    ; preds = %.lr.ph219.prol.loopexit, %.lr.ph219, %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit
  br i1 %.not.i, label %.preheader207, label %.lr.ph221

.lr.ph221:                                        ; preds = %.preheader208
  %.not.i177 = icmp eq ptr %1, null               ; 2 uses
  br label %bb.v

.lr.ph219:                                        ; preds = %.lr.ph219.prol.loopexit, %.lr.ph219
  %.0132218 = phi i64 [ %i.qt, %.lr.ph219 ], [ %.0132218.unr, %.lr.ph219.prol.loopexit ] ; 6 uses
  %i.pw = trunc i64 %.0132218 to i32
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %.0132218
  store i32 %i.pw, ptr %i.px, align 4, !tbaa !50
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0132218
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 12
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !57 ; 2 uses
  %i.qb = fcmp ogt float %i.qa, 0.000000e+00
  %i.qc = zext i1 %i.qb to i8
  %i.qd = fcmp olt float %i.qa, 0.000000e+00
  %i.qe = select i1 %i.qd, i8 2, i8 0
  %i.qf = or disjoint i8 %i.qe, %i.qc
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.0132218
  store i8 %i.qf, ptr %i.qg, align 1, !tbaa !58
  %i.qh = add nuw nsw i64 %.0132218, 1            ; 4 uses
  %i.qi = trunc i64 %i.qh to i32
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.qh
  store i32 %i.qi, ptr %i.qj, align 4, !tbaa !50
  %i.qk = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %i.qh
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 12
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !57 ; 2 uses
  %i.qn = fcmp ogt float %i.qm, 0.000000e+00
  %i.qo = zext i1 %i.qn to i8
  %i.qp = fcmp olt float %i.qm, 0.000000e+00
  %i.qq = select i1 %i.qp, i8 2, i8 0
  %i.qr = or disjoint i8 %i.qq, %i.qo
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.qh
  store i8 %i.qr, ptr %i.qs, align 1, !tbaa !58
  %i.qt = add nuw nsw i64 %.0132218, 2            ; 2 uses
  %exitcond247.not.1 = icmp eq i64 %i.qt, %i.a
  br i1 %exitcond247.not.1, label %.preheader208, label %.lr.ph219, !llvm.loop !38

.preheader207:                                    ; preds = %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit, %.preheader208
  br i1 %.not88.i, label %._crit_edge231, label %.lr.ph223.preheader

.lr.ph223.preheader:                              ; preds = %.preheader207
  %i.qu = add i64 %2, -1                          ; 2 uses
  %xtraiter377 = and i64 %2, 1
  %i.qv = icmp eq i64 %i.qu, 0
  br i1 %i.qv, label %.lr.ph223.epil.preheader, label %.lr.ph223.preheader.new

.lr.ph223.preheader.new:                          ; preds = %.lr.ph223.preheader
  %unroll_iter381 = and i64 %2, -2
  br label %.lr.ph223

bb.v:                                             ; preds = %.lr.ph221, %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit
  %.0131220 = phi i64 [ 0, %.lr.ph221 ], [ %i.qw, %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit ] ; 2 uses
  %i.qw = add nuw i64 %.0131220, 1                ; 3 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.qw
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !50 ; 2 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.0131220
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !50 ; 3 uses
  %.not152 = icmp eq i32 %i.qy, %i.ra
  br i1 %.not152, label %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit, label %.lr.ph134.i

.lr.ph134.i:                                      ; preds = %bb.v
  %i.rb = zext i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.rb ; 2 uses
  %i.rd = sub i32 %i.qy, %i.ra
  %i.re = zext i32 %i.rd to i64                   ; 3 uses
  br label %bb.w

.loopexit.i:                                      ; preds = %.critedge.i, %.thread.i
  %exitcond139.not.i = icmp eq i64 %i.rz, %i.re
  br i1 %exitcond139.not.i, label %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit, label %bb.w, !llvm.loop !39

bb.w:                                             ; preds = %.loopexit.i, %.lr.ph134.i
  %.090133.i = phi i64 [ 0, %.lr.ph134.i ], [ %i.rz, %.loopexit.i ] ; 2 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.090133.i ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !50 ; 2 uses
  %i.rh = lshr i32 %i.rg, 2                       ; 4 uses
  %i.ri = mul nuw i32 %i.rh, 3                    ; 3 uses
  %i.rj = and i32 %i.rg, 3
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %i.rk ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !50
  %i.rn = add i32 %i.ri, %i.rm                    ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !50
  %i.rq = add i32 %i.ri, %i.rp                    ; 2 uses
  br i1 %.not.i177, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.rr = zext i32 %i.rn to i64
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.rr
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !50
  %i.ru = zext i32 %i.rq to i64
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !50
  br label %.thread.i

.thread.i:                                        ; preds = %bb.x, %bb.w
  %.pn.pn.in.i = phi i32 [ %i.rt, %bb.x ], [ %i.rn, %bb.w ]
  %.pn98.in.i = phi i32 [ %i.rw, %bb.x ], [ %i.rq, %bb.w ]
  %.pn.pn.i = zext i32 %.pn.pn.in.i to i64
  %.in128.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn.pn.i
  %i.rx = load i32, ptr %.in128.i, align 4, !tbaa !50
  %.pn98.i = zext i32 %.pn98.in.i to i64
  %.in97.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn98.i
  %i.ry = load i32, ptr %.in97.i, align 4, !tbaa !50
  %i.rz = add nuw nsw i64 %.090133.i, 1           ; 4 uses
  %i.sa = icmp samesign ult i64 %i.rz, %i.re
  br i1 %i.sa, label %.lr.ph.i179, label %.loopexit.i

.lr.ph.i179:                                      ; preds = %.thread.i
  %i.sb = zext nneg i32 %i.rh to i64              ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.sb
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.sb ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.critedge.i, %.lr.ph.i179
  %.0132.i = phi i64 [ %i.rz, %.lr.ph.i179 ], [ %i.vg, %.critedge.i ] ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.0132.i ; 2 uses
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !50 ; 2 uses
  %i.sg = lshr i32 %i.sf, 2                       ; 4 uses
  %i.sh = mul nuw i32 %i.sg, 3                    ; 3 uses
  %i.si = and i32 %i.sf, 3
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %i.sj ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !50
  %i.sm = add i32 %i.sh, %i.sl                    ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !50
  %i.sp = add i32 %i.sh, %i.so                    ; 2 uses
  br i1 %.not.i177, label %.thread124.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.sq = zext i32 %i.sm to i64
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !50
  %i.st = zext i32 %i.sp to i64
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.st
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !50
  br label %.thread124.i

.thread124.i:                                     ; preds = %bb.z, %bb.y
  %.pn100.pn.in.i = phi i32 [ %i.ss, %bb.z ], [ %i.sm, %bb.y ]
  %.pn102.in.i = phi i32 [ %i.sv, %bb.z ], [ %i.sp, %bb.y ]
  %.pn100.pn.i = zext i32 %.pn100.pn.in.i to i64
  %.in.i180 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn100.pn.i
  %i.sw = load i32, ptr %.in.i180, align 4, !tbaa !50
  %i.sx = icmp eq i32 %i.sw, %i.ry
end_hunk_0
