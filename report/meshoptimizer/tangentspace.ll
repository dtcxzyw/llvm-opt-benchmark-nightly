Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/tangentspace?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@meshopt_generateTangents:bb.a
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
  br i1 %.not90.i, label %.preheader207, label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit
  %min.iters.check326 = icmp ult i64 %2, 51
  br i1 %min.iters.check326, label %.lr.ph218.preheader357, label %vector.memcheck

.lr.ph218.preheader357:                           ; preds = %vector.body336, %vector.memcheck, %.lr.ph218.preheader
  %.0132217.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph218.preheader ], [ %n.vec335, %vector.body336 ] ; 8 uses
  %12 = sub i64 %i.a, %.0132217.ph
  %.neg = add i64 %.0132217.ph, 1
  %xtraiter374 = and i64 %12, 1
  %lcmp.mod375.not = icmp eq i64 %xtraiter374, 0
  br i1 %lcmp.mod375.not, label %.lr.ph218.prol.loopexit, label %.lr.ph218.prol

.lr.ph218.prol:                                   ; preds = %.lr.ph218.preheader357
  %13 = trunc i64 %.0132217.ph to i32
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.0132217.ph
  store i32 %13, ptr %i.of, align 4, !tbaa !50
  %i.og = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0132217.ph
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 12
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !57 ; 2 uses
  %i.oj = fcmp ogt float %i.oi, 0.000000e+00
  %i.ok = zext i1 %i.oj to i8
  %i.ol = fcmp olt float %i.oi, 0.000000e+00
  %i.om = select i1 %i.ol, i8 2, i8 0
  %i.on = or disjoint i8 %i.om, %i.ok
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.0132217.ph
  store i8 %i.on, ptr %i.oo, align 1, !tbaa !58
  %14 = add nuw nsw i64 %.0132217.ph, 1
  br label %.lr.ph218.prol.loopexit

.lr.ph218.prol.loopexit:                          ; preds = %.lr.ph218.prol, %.lr.ph218.preheader357
  %.0132217.unr = phi i64 [ %.0132217.ph, %.lr.ph218.preheader357 ], [ %14, %.lr.ph218.prol ]
  %i.op = icmp eq i64 %i.a, %.neg
  br i1 %i.op, label %.preheader207, label %.lr.ph218

vector.memcheck:                                  ; preds = %.lr.ph218.preheader
  %i.oq = shl i64 %i.a, 2
  %i.or = getelementptr i8, ptr %i.nv, i64 %i.oq  ; 2 uses
  %i.os = getelementptr i8, ptr %i.oc, i64 %i.a   ; 2 uses
  %i.ot = getelementptr i8, ptr %i.jg, i64 12     ; 2 uses
  %i.ou = shl i64 %i.a, 4
  %i.ov = getelementptr i8, ptr %i.jg, i64 %i.ou  ; 2 uses
  %bound0 = icmp ult ptr %i.nv, %i.os
  %bound1 = icmp ult ptr %i.oc, %i.or
  %found.conflict = and i1 %bound0, %bound1
  %bound0327 = icmp ult ptr %i.nv, %i.ov
  %bound1328 = icmp ult ptr %i.ot, %i.or
  %found.conflict329 = and i1 %bound0327, %bound1328
  %conflict.rdx = or i1 %found.conflict, %found.conflict329
  %bound0330 = icmp ult ptr %i.oc, %i.ov
  %bound1331 = icmp ult ptr %i.ot, %i.os
  %found.conflict332 = and i1 %bound0330, %bound1331
  %conflict.rdx333 = or i1 %conflict.rdx, %found.conflict332
  br i1 %conflict.rdx333, label %.lr.ph218.preheader357, label %vector.ph334

vector.ph334:                                     ; preds = %vector.memcheck
  %i.ow = and i64 %i.a, 3                         ; 2 uses
  %i.ox = icmp eq i64 %i.ow, 0
  %i.oy = select i1 %i.ox, i64 4, i64 %i.ow
  %n.vec335 = sub nsw i64 %i.a, %i.oy             ; 2 uses
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph334
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next339, %vector.body336 ] ; 7 uses
  %vec.ind338 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph334 ], [ %vec.ind.next340, %vector.body336 ] ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %index337
  store <4 x i32> %vec.ind338, ptr %i.oz, align 4, !tbaa !50, !alias.scope !59, !noalias !60
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index337
  %i.pb = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index337
  %i.pc = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index337
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index337
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 12
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 28
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 44
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 60
  %i.pi = load float, ptr %i.pe, align 4, !tbaa !57, !alias.scope !61
  %i.pj = load float, ptr %i.pf, align 4, !tbaa !57, !alias.scope !61
  %i.pk = load float, ptr %i.pg, align 4, !tbaa !57, !alias.scope !61
  %i.pl = load float, ptr %i.ph, align 4, !tbaa !57, !alias.scope !61
  %i.pm = insertelement <4 x float> poison, float %i.pi, i64 0
  %i.pn = insertelement <4 x float> %i.pm, float %i.pj, i64 1
  %i.po = insertelement <4 x float> %i.pn, float %i.pk, i64 2
  %i.pp = insertelement <4 x float> %i.po, float %i.pl, i64 3 ; 2 uses
  %i.pq = fcmp ogt <4 x float> %i.pp, zeroinitializer
  %i.pr = zext <4 x i1> %i.pq to <4 x i8>
  %i.ps = fcmp olt <4 x float> %i.pp, zeroinitializer
  %i.pt = select <4 x i1> %i.ps, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.pu = or disjoint <4 x i8> %i.pt, %i.pr
  %i.pv = getelementptr inbounds nuw i8, ptr %i.oc, i64 %index337
  store <4 x i8> %i.pu, ptr %i.pv, align 1, !tbaa !58, !alias.scope !62, !noalias !61
  %index.next339 = add nuw i64 %index337, 4       ; 2 uses
  %vec.ind.next340 = add <4 x i32> %vec.ind338, splat (i32 4)
  %i.pw = icmp eq i64 %index.next339, %n.vec335
  br i1 %i.pw, label %.lr.ph218.preheader357, label %vector.body336, !llvm.loop !37

.preheader207:                                    ; preds = %.lr.ph218.prol.loopexit, %.lr.ph218, %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit
  br i1 %.not.i, label %.preheader206, label %.lr.ph220

.lr.ph220:                                        ; preds = %.preheader207
  %.not.i177 = icmp eq ptr %1, null               ; 2 uses
  br label %bb.v

.lr.ph218:                                        ; preds = %.lr.ph218.prol.loopexit, %.lr.ph218
  %.0132217 = phi i64 [ %i.qu, %.lr.ph218 ], [ %.0132217.unr, %.lr.ph218.prol.loopexit ] ; 6 uses
  %i.px = trunc i64 %.0132217 to i32
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.0132217
  store i32 %i.px, ptr %i.py, align 4, !tbaa !50
  %i.pz = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0132217
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 12
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !57 ; 2 uses
  %i.qc = fcmp ogt float %i.qb, 0.000000e+00
  %i.qd = zext i1 %i.qc to i8
  %i.qe = fcmp olt float %i.qb, 0.000000e+00
  %i.qf = select i1 %i.qe, i8 2, i8 0
  %i.qg = or disjoint i8 %i.qf, %i.qd
  %i.qh = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.0132217
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !58
  %i.qi = add nuw nsw i64 %.0132217, 1            ; 4 uses
  %i.qj = trunc i64 %i.qi to i32
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.qi
  store i32 %i.qj, ptr %i.qk, align 4, !tbaa !50
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %i.qi
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 12
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !57 ; 2 uses
  %i.qo = fcmp ogt float %i.qn, 0.000000e+00
  %i.qp = zext i1 %i.qo to i8
  %i.qq = fcmp olt float %i.qn, 0.000000e+00
  %i.qr = select i1 %i.qq, i8 2, i8 0
  %i.qs = or disjoint i8 %i.qr, %i.qp
  %i.qt = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.qi
  store i8 %i.qs, ptr %i.qt, align 1, !tbaa !58
  %i.qu = add nuw nsw i64 %.0132217, 2            ; 2 uses
  %exitcond246.not.1 = icmp eq i64 %i.qu, %i.a
  br i1 %exitcond246.not.1, label %.preheader207, label %.lr.ph218, !llvm.loop !38

.preheader206:                                    ; preds = %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit, %.preheader207
  br i1 %.not88.i, label %._crit_edge230, label %.lr.ph222.preheader

.lr.ph222.preheader:                              ; preds = %.preheader206
  %i.qv = add i64 %2, -1                          ; 2 uses
  %xtraiter376 = and i64 %2, 1
  %i.qw = icmp eq i64 %i.qv, 0
  br i1 %i.qw, label %.lr.ph222.epil.preheader, label %.lr.ph222.preheader.new

.lr.ph222.preheader.new:                          ; preds = %.lr.ph222.preheader
  %unroll_iter380 = and i64 %2, -2
  br label %.lr.ph222

bb.v:                                             ; preds = %.lr.ph220, %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit
  %.0131219 = phi i64 [ 0, %.lr.ph220 ], [ %i.qx, %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit ] ; 2 uses
  %i.qx = add nuw i64 %.0131219, 1                ; 3 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.qx
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !50 ; 2 uses
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.0131219
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !50 ; 3 uses
  %.not152 = icmp eq i32 %i.qz, %i.rb
  br i1 %.not152, label %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit, label %.lr.ph134.i

.lr.ph134.i:                                      ; preds = %bb.v
  %i.rc = zext i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.rc ; 2 uses
  %i.re = sub i32 %i.qz, %i.rb
  %i.rf = zext i32 %i.re to i64                   ; 3 uses
  br label %bb.w

.loopexit.i:                                      ; preds = %.critedge.i, %.thread.i
  %exitcond139.not.i = icmp eq i64 %i.sa, %i.rf
  br i1 %exitcond139.not.i, label %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit, label %bb.w, !llvm.loop !39

bb.w:                                             ; preds = %.loopexit.i, %.lr.ph134.i
  %.090133.i = phi i64 [ 0, %.lr.ph134.i ], [ %i.sa, %.loopexit.i ] ; 2 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %.090133.i ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !50 ; 2 uses
  %i.ri = lshr i32 %i.rh, 2                       ; 4 uses
  %i.rj = mul nuw i32 %i.ri, 3                    ; 3 uses
  %i.rk = and i32 %i.rh, 3
  %i.rl = zext nneg i32 %i.rk to i64
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %i.rl ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !50
  %i.ro = add i32 %i.rj, %i.rn                    ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 4
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !50
  %i.rr = add i32 %i.rj, %i.rq                    ; 2 uses
  br i1 %.not.i177, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.rs = zext i32 %i.ro to i64
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.rs
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !50
  %i.rv = zext i32 %i.rr to i64
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.rv
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !50
  br label %.thread.i

.thread.i:                                        ; preds = %bb.x, %bb.w
  %.pn.pn.in.i = phi i32 [ %i.ru, %bb.x ], [ %i.ro, %bb.w ]
  %.pn98.in.i = phi i32 [ %i.rx, %bb.x ], [ %i.rr, %bb.w ]
  %.pn.pn.i = zext i32 %.pn.pn.in.i to i64
  %.in128.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn.pn.i
  %i.ry = load i32, ptr %.in128.i, align 4, !tbaa !50
  %.pn98.i = zext i32 %.pn98.in.i to i64
  %.in97.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn98.i
  %i.rz = load i32, ptr %.in97.i, align 4, !tbaa !50
  %i.sa = add nuw nsw i64 %.090133.i, 1           ; 4 uses
  %i.sb = icmp samesign ult i64 %i.sa, %i.rf
  br i1 %i.sb, label %.lr.ph.i179, label %.loopexit.i

.lr.ph.i179:                                      ; preds = %.thread.i
  %i.sc = zext nneg i32 %i.ri to i64              ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.sc
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.sc ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.critedge.i, %.lr.ph.i179
  %.0132.i = phi i64 [ %i.sa, %.lr.ph.i179 ], [ %i.vh, %.critedge.i ] ; 2 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %.0132.i ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !50 ; 2 uses
  %i.sh = lshr i32 %i.sg, 2                       ; 4 uses
  %i.si = mul nuw i32 %i.sh, 3                    ; 3 uses
  %i.sj = and i32 %i.sg, 3
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %i.sk ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !50
  %i.sn = add i32 %i.si, %i.sm                    ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !50
  %i.sq = add i32 %i.si, %i.sp                    ; 2 uses
  br i1 %.not.i177, label %.thread124.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.sr = zext i32 %i.sn to i64
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sr
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !50
  %i.su = zext i32 %i.sq to i64
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !50
  br label %.thread124.i

.thread124.i:                                     ; preds = %bb.z, %bb.y
  %.pn100.pn.in.i = phi i32 [ %i.st, %bb.z ], [ %i.sn, %bb.y ]
  %.pn102.in.i = phi i32 [ %i.sw, %bb.z ], [ %i.sq, %bb.y ]
  %.pn100.pn.i = zext i32 %.pn100.pn.in.i to i64
  %.in.i180 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn100.pn.i
  %i.sx = load i32, ptr %.in.i180, align 4, !tbaa !50
  %i.sy = icmp eq i32 %i.sx, %i.rz
  br i1 %i.sy, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.thread124.i
  %.pn102.i = zext i32 %.pn102.in.i to i64
  %.in101.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn102.i
  %i.sz = load i32, ptr %.in101.i, align 4, !tbaa !50
  %i.ta = icmp eq i32 %i.sz, %i.ry
  br i1 %i.ta, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %bb.aa, %.thread124.i
  %i.tb = load i8, ptr %i.sd, align 1, !tbaa !58
  %i.tc = zext i8 %i.tb to i32                    ; 2 uses
  %i.td = zext nneg i32 %i.sh to i64              ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !58
  %i.tg = zext i8 %i.tf to i32                    ; 2 uses
  %i.th = or i32 %i.tg, %i.tc
  %.not103.i = icmp eq i32 %i.th, 3
  br i1 %.not103.i, label %.critedge.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ti = and i32 %i.tg, %i.tc
  %i.tj = icmp eq i32 %i.ti, 0
  br i1 %i.tj, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.tk = load i32, ptr %i.se, align 4, !tbaa !50 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ri, %i.tk
  br i1 %.not11.i.i, label %_ZN7meshoptL7follow2EPjj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %.lr.ph.i.i
  %i.tl = phi i32 [ %i.tp, %.lr.ph.i.i ], [ %i.tk, %bb.ad ] ; 3 uses
  %i.tm = phi ptr [ %i.to, %.lr.ph.i.i ], [ %i.se, %bb.ad ]
  %i.tn = zext i32 %i.tl to i64
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.tn ; 2 uses
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !50 ; 3 uses
  store i32 %i.tp, ptr %i.tm, align 4, !tbaa !50
  %.not.i.i182 = icmp eq i32 %i.tl, %i.tp
  br i1 %.not.i.i182, label %_ZN7meshoptL7follow2EPjj.exit.i, label %.lr.ph.i.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit.i:                  ; preds = %.lr.ph.i.i, %bb.ad
  %.0.lcssa.i.i = phi i32 [ %i.ri, %bb.ad ], [ %i.tl, %.lr.ph.i.i ] ; 3 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.td ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !50 ; 2 uses
  %.not11.i106.i = icmp eq i32 %i.sh, %i.tr
  br i1 %.not11.i106.i, label %_ZN7meshoptL7follow2EPjj.exit110.i, label %.lr.ph.i107.i

.lr.ph.i107.i:                                    ; preds = %_ZN7meshoptL7follow2EPjj.exit.i, %.lr.ph.i107.i
  %i.ts = phi i32 [ %i.tw, %.lr.ph.i107.i ], [ %i.tr, %_ZN7meshoptL7follow2EPjj.exit.i ] ; 3 uses
end_hunk_0
