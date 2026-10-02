Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/tangentspace?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@meshopt_generateTangents:bb.a
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
  store <4 x i32> %vec.ind339, ptr %i.pf, align 4, !tbaa !50, !alias.scope !66, !noalias !69
  %i.pg = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.ph = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.pi = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.pj = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 12
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 28
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 44
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 60
  %i.po = load float, ptr %i.pk, align 4, !tbaa !57, !alias.scope !70
  %i.pp = load float, ptr %i.pl, align 4, !tbaa !57, !alias.scope !70
  %i.pq = load float, ptr %i.pm, align 4, !tbaa !57, !alias.scope !70
  %i.pr = load float, ptr %i.pn, align 4, !tbaa !57, !alias.scope !70
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
  store <4 x i8> %i.qa, ptr %i.qb, align 1, !tbaa !58, !alias.scope !71, !noalias !70
  %index.next340 = add nuw i64 %index338, 4       ; 2 uses
  %vec.ind.next341 = add <4 x i32> %vec.ind339, splat (i32 4)
  %i.qc = icmp eq i64 %index.next340, %n.vec336
  br i1 %i.qc, label %.lr.ph219.preheader361, label %vector.body337, !llvm.loop !37

.preheader208:                                    ; preds = %.lr.ph219.prol.loopexit, %.lr.ph219, %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit
  br i1 %.not.i, label %.preheader207, label %.lr.ph221

.lr.ph221:                                        ; preds = %.preheader208
  %.not.i177 = icmp eq ptr %1, null               ; 2 uses
  br label %bb.ab

bb.z:                                             ; preds = %._crit_edge
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.aa:                                            ; preds = %bb.y
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.lr.ph219:                                        ; preds = %.lr.ph219.prol.loopexit, %.lr.ph219
  %.0132218 = phi i64 [ %i.rc, %.lr.ph219 ], [ %.0132218.unr, %.lr.ph219.prol.loopexit ] ; 6 uses
  %i.qf = trunc i64 %.0132218 to i32
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %.0132218
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !50
  %i.qh = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0132218
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 12
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !57 ; 2 uses
  %i.qk = fcmp ogt float %i.qj, 0.000000e+00
  %i.ql = zext i1 %i.qk to i8
  %i.qm = fcmp olt float %i.qj, 0.000000e+00
  %i.qn = select i1 %i.qm, i8 2, i8 0
  %i.qo = or disjoint i8 %i.qn, %i.ql
  %i.qp = getelementptr inbounds nuw i8, ptr %i.of, i64 %.0132218
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !58
  %i.qq = add nuw nsw i64 %.0132218, 1            ; 4 uses
  %i.qr = trunc i64 %i.qq to i32
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.qq
  store i32 %i.qr, ptr %i.qs, align 4, !tbaa !50
  %i.qt = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %i.qq
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 12
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !57 ; 2 uses
  %i.qw = fcmp ogt float %i.qv, 0.000000e+00
  %i.qx = zext i1 %i.qw to i8
  %i.qy = fcmp olt float %i.qv, 0.000000e+00
  %i.qz = select i1 %i.qy, i8 2, i8 0
  %i.ra = or disjoint i8 %i.qz, %i.qx
  %i.rb = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.qq
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !58
  %i.rc = add nuw nsw i64 %.0132218, 2            ; 2 uses
  %exitcond247.not.1 = icmp eq i64 %i.rc, %i.a
  br i1 %exitcond247.not.1, label %.preheader208, label %.lr.ph219, !llvm.loop !38

.preheader207:                                    ; preds = %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit, %.preheader208
  br i1 %.not88.i, label %._crit_edge231, label %.lr.ph223.preheader

.lr.ph223.preheader:                              ; preds = %.preheader207
  %i.rd = add i64 %2, -1                          ; 2 uses
  %xtraiter380 = and i64 %2, 1
  %i.re = icmp eq i64 %i.rd, 0
  br i1 %i.re, label %.lr.ph223.epil.preheader, label %.lr.ph223.preheader.new

.lr.ph223.preheader.new:                          ; preds = %.lr.ph223.preheader
  %unroll_iter384 = and i64 %2, -2
  br label %.lr.ph223

bb.ab:                                            ; preds = %.lr.ph221, %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit
  %.0131220 = phi i64 [ 0, %.lr.ph221 ], [ %i.rf, %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit ] ; 2 uses
  %i.rf = add nuw i64 %.0131220, 1                ; 3 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !50 ; 2 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.0131220
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !50 ; 3 uses
  %.not152 = icmp eq i32 %i.rh, %i.rj
  br i1 %.not152, label %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit, label %.lr.ph134.i

.lr.ph134.i:                                      ; preds = %bb.ab
  %i.rk = zext i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.rk ; 2 uses
  %i.rm = sub i32 %i.rh, %i.rj
  %i.rn = zext i32 %i.rm to i64                   ; 3 uses
  br label %bb.ac

.loopexit.i:                                      ; preds = %.critedge.i, %.thread.i
  %exitcond139.not.i = icmp eq i64 %i.si, %i.rn
  br i1 %exitcond139.not.i, label %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit, label %bb.ac, !llvm.loop !39

bb.ac:                                            ; preds = %.loopexit.i, %.lr.ph134.i
  %.090133.i = phi i64 [ 0, %.lr.ph134.i ], [ %i.si, %.loopexit.i ] ; 2 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %.090133.i ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !50 ; 2 uses
  %i.rq = lshr i32 %i.rp, 2                       ; 4 uses
  %i.rr = mul nuw i32 %i.rq, 3                    ; 3 uses
  %i.rs = and i32 %i.rp, 3
  %i.rt = zext nneg i32 %i.rs to i64
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %i.rt ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !50
  %i.rw = add i32 %i.rr, %i.rv                    ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !50
  %i.rz = add i32 %i.rr, %i.ry                    ; 2 uses
  br i1 %.not.i177, label %.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.sa = zext i32 %i.rw to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sa
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !50
  %i.sd = zext i32 %i.rz to i64
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sd
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !50
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ad, %bb.ac
  %.pn.pn.in.i = phi i32 [ %i.sc, %bb.ad ], [ %i.rw, %bb.ac ]
  %.pn98.in.i = phi i32 [ %i.sf, %bb.ad ], [ %i.rz, %bb.ac ]
  %.pn.pn.i = zext i32 %.pn.pn.in.i to i64
  %.in128.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn.pn.i
  %i.sg = load i32, ptr %.in128.i, align 4, !tbaa !50
  %.pn98.i = zext i32 %.pn98.in.i to i64
  %.in97.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn98.i
  %i.sh = load i32, ptr %.in97.i, align 4, !tbaa !50
  %i.si = add nuw nsw i64 %.090133.i, 1           ; 4 uses
  %i.sj = icmp samesign ult i64 %i.si, %i.rn
  br i1 %i.sj, label %.lr.ph.i179, label %.loopexit.i

.lr.ph.i179:                                      ; preds = %.thread.i
  %i.sk = zext nneg i32 %i.rq to i64              ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.sk
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.sk ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge.i, %.lr.ph.i179
  %.0132.i = phi i64 [ %i.si, %.lr.ph.i179 ], [ %i.vp, %.critedge.i ] ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %.0132.i ; 2 uses
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !50 ; 2 uses
  %i.sp = lshr i32 %i.so, 2                       ; 4 uses
  %i.sq = mul nuw i32 %i.sp, 3                    ; 3 uses
  %i.sr = and i32 %i.so, 3
  %i.ss = zext nneg i32 %i.sr to i64
  %i.st = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %i.ss ; 2 uses
  %i.su = load i32, ptr %i.st, align 4, !tbaa !50
  %i.sv = add i32 %i.sq, %i.su                    ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 4
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !50
  %i.sy = add i32 %i.sq, %i.sx                    ; 2 uses
  br i1 %.not.i177, label %.thread124.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.sz = zext i32 %i.sv to i64
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sz
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !50
  %i.tc = zext i32 %i.sy to i64
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !tbaa !50
  br label %.thread124.i

.thread124.i:                                     ; preds = %bb.af, %bb.ae
  %.pn100.pn.in.i = phi i32 [ %i.tb, %bb.af ], [ %i.sv, %bb.ae ]
  %.pn102.in.i = phi i32 [ %i.te, %bb.af ], [ %i.sy, %bb.ae ]
  %.pn100.pn.i = zext i32 %.pn100.pn.in.i to i64
  %.in.i180 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn100.pn.i
  %i.tf = load i32, ptr %.in.i180, align 4, !tbaa !50
  %i.tg = icmp eq i32 %i.tf, %i.sh
  br i1 %i.tg, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread124.i
  %.pn102.i = zext i32 %.pn102.in.i to i64
  %.in101.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn102.i
  %i.th = load i32, ptr %.in101.i, align 4, !tbaa !50
  %i.ti = icmp eq i32 %i.th, %i.sg
  br i1 %i.ti, label %bb.ah, label %.critedge.i

bb.ah:                                            ; preds = %bb.ag, %.thread124.i
  %i.tj = load i8, ptr %i.sl, align 1, !tbaa !58
  %i.tk = zext i8 %i.tj to i32                    ; 2 uses
  %i.tl = zext nneg i32 %i.sp to i64              ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.tl
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !58
  %i.to = zext i8 %i.tn to i32                    ; 2 uses
  %i.tp = or i32 %i.to, %i.tk
  %.not103.i = icmp eq i32 %i.tp, 3
  br i1 %.not103.i, label %.critedge.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.tq = and i32 %i.to, %i.tk
  %i.tr = icmp eq i32 %i.tq, 0
  br i1 %i.tr, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ts = load i32, ptr %i.sm, align 4, !tbaa !50 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.rq, %i.ts
  br i1 %.not11.i.i, label %_ZN7meshoptL7follow2EPjj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %.lr.ph.i.i
  %i.tt = phi i32 [ %i.tx, %.lr.ph.i.i ], [ %i.ts, %bb.aj ] ; 3 uses
  %i.tu = phi ptr [ %i.tw, %.lr.ph.i.i ], [ %i.sm, %bb.aj ]
  %i.tv = zext i32 %i.tt to i64
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.tv ; 2 uses
end_hunk_0
begin_hunk_1_@meshopt_generateTangents:bb.a
  invoke void %i.aet(ptr noundef %i.aew)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %.lr.ph.i200
  %i.aex = add i64 %.04.i, -1                     ; 2 uses
  %.not.i201 = icmp eq i64 %i.aex, 0
  br i1 %.not.i201, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i200, !llvm.loop !0

bb.az:                                            ; preds = %.lr.ph.i200
  %i.aey = landingpad { ptr, i32 }
          catch ptr null
  %i.aez = extractvalue { ptr, i32 } %i.aey, 0
  tail call void @__clang_call_terminate(ptr %i.aez) #12
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.ay, %._crit_edge231
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  ret void

.lr.ph230:                                        ; preds = %bb.bc, %.lr.ph230.preheader.new
  %.0229 = phi i64 [ 0, %.lr.ph230.preheader.new ], [ %i.afl, %bb.bc ] ; 5 uses
  %niter391 = phi i64 [ 0, %.lr.ph230.preheader.new ], [ %niter391.next.1, %bb.bc ]
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0229
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !50
  %i.afc = zext i32 %i.afb to i64                 ; 2 uses
  %.not = icmp eq i64 %.0229, %i.afc
  br i1 %.not, label %.lr.ph230.1, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph230
  %.idx = shl i64 %.0229, 4
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.idx146 = shl nuw nsw i64 %i.afc, 4
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.afd, ptr noundef nonnull align 4 dereferenceable(12) %i.afe, i64 12, i1 false)
  br label %.lr.ph230.1

.lr.ph230.1:                                      ; preds = %.lr.ph230, %bb.ba
  %i.aff = or disjoint i64 %.0229, 1              ; 3 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.aff
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !50
  %i.afi = zext i32 %i.afh to i64                 ; 2 uses
  %.not.1 = icmp eq i64 %i.aff, %i.afi
  br i1 %.not.1, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph230.1
  %.idx.1 = shl i64 %i.aff, 4
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1
  %.idx146.1 = shl nuw nsw i64 %i.afi, 4
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.afj, ptr noundef nonnull align 4 dereferenceable(12) %i.afk, i64 12, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph230.1
  %i.afl = add nuw i64 %.0229, 2                  ; 2 uses
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
!63 = !{!56, !51, i64 8}
!64 = distinct !{!64, i1 false, !"LVerDomain"}
!65 = distinct !{!65, !64}
!66 = !{!65}
!67 = distinct !{!67, !64}
!68 = distinct !{!68, !64}
!69 = !{!67, !68}
!70 = !{!68}
!71 = !{!67}
end_hunk_1
