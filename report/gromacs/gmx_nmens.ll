Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_nmens?download=true
inline.NumInlined: 315
inline.NumDeleted: 147
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z9gmx_nmensiPPc:bb.a
scalar.ph350.prol.loopexit:                       ; preds = %scalar.ph350.prol, %scalar.ph350.preheader
  %indvars.iv219.unr = phi i64 [ %indvars.iv219.ph, %scalar.ph350.preheader ], [ %indvars.iv.next220.prol, %scalar.ph350.prol ]
  %i.ks = sub nsw i64 %indvars.iv219.ph, %wide.trip.count222
  %i.kt = icmp ugt i64 %i.ks, -4
  br i1 %i.kt, label %.preheader142, label %scalar.ph350

.preheader142:                                    ; preds = %scalar.ph350.prol.loopexit, %scalar.ph350, %middle.block362, %.preheader143
  %storemerge98.lcssa = phi i32 [ 0, %.preheader143 ], [ %i.kc, %middle.block362 ], [ %i.kc, %scalar.ph350 ], [ %i.kc, %scalar.ph350.prol.loopexit ]
  store i32 %storemerge98.lcssa, ptr %i.q, align 4, !tbaa !10
  br i1 %i.kb, label %.lr.ph185, label %.preheader141

.lr.ph185:                                        ; preds = %.preheader142
  %i.ku = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.kv = load ptr, ptr %i.l, align 8
  %wide.trip.count231 = zext i32 %i.kc to i64     ; 7 uses
  %i.kw = mul nuw nsw i64 %wide.trip.count231, 12 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.jm, i64 %i.kw ; 2 uses
  %i.kx = shl nuw nsw i64 %wide.trip.count231, 2
  %scevgep323 = getelementptr i8, ptr %i.bs, i64 %i.kx
  %min.iters.check327 = icmp ult i32 %i.kc, 8
  %bound0324 = icmp ult ptr %i.jm, %scevgep323
  %bound1325 = icmp ult ptr %i.bs, %scevgep
  %found.conflict326 = and i1 %bound0324, %bound1325
  %n.vec329 = and i64 %wide.trip.count231, 2147483640 ; 3 uses
  %cmp.n342 = icmp eq i64 %n.vec329, %wide.trip.count231
  %xtraiter375 = and i64 %wide.trip.count231, 1
  %lcmp.mod376.not = icmp eq i64 %xtraiter375, 0
  %i.ky = add nsw i64 %wide.trip.count231, -1
  br label %bb.bd

scalar.ph350:                                     ; preds = %scalar.ph350.prol.loopexit, %scalar.ph350
  %indvars.iv219 = phi i64 [ %indvars.iv.next220.3, %scalar.ph350 ], [ %indvars.iv219.unr, %scalar.ph350.prol.loopexit ] ; 6 uses
  %i.kz = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %indvars.iv219 ; 3 uses
  %i.la = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv219 ; 3 uses
  %i.lb = load float, ptr %i.kz, align 4, !tbaa !82
  store float %i.lb, ptr %i.la, align 4, !tbaa !82
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !82
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  store float %i.ld, ptr %i.le, align 4, !tbaa !82
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !82
  %i.lh = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store float %i.lg, ptr %i.lh, align 4, !tbaa !82
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.li = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %indvars.iv.next220 ; 3 uses
  %i.lj = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next220 ; 3 uses
  %i.lk = load float, ptr %i.li, align 4, !tbaa !82
  store float %i.lk, ptr %i.lj, align 4, !tbaa !82
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !82
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  store float %i.lm, ptr %i.ln, align 4, !tbaa !82
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !82
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store float %i.lp, ptr %i.lq, align 4, !tbaa !82
  %indvars.iv.next220.1 = add nuw nsw i64 %indvars.iv219, 2 ; 2 uses
  %i.lr = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %indvars.iv.next220.1 ; 3 uses
  %i.ls = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next220.1 ; 3 uses
  %i.lt = load float, ptr %i.lr, align 4, !tbaa !82
  store float %i.lt, ptr %i.ls, align 4, !tbaa !82
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !82
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  store float %i.lv, ptr %i.lw, align 4, !tbaa !82
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !82
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store float %i.ly, ptr %i.lz, align 4, !tbaa !82
  %indvars.iv.next220.2 = add nuw nsw i64 %indvars.iv219, 3 ; 2 uses
  %i.ma = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %indvars.iv.next220.2 ; 3 uses
  %i.mb = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next220.2 ; 3 uses
  %i.mc = load float, ptr %i.ma, align 4, !tbaa !82
  store float %i.mc, ptr %i.mb, align 4, !tbaa !82
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.me = load float, ptr %i.md, align 4, !tbaa !82
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  store float %i.me, ptr %i.mf, align 4, !tbaa !82
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !82
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store float %i.mh, ptr %i.mi, align 4, !tbaa !82
  %indvars.iv.next220.3 = add nuw nsw i64 %indvars.iv219, 4 ; 2 uses
  %exitcond223.not.3 = icmp eq i64 %indvars.iv.next220.3, %wide.trip.count222
  br i1 %exitcond223.not.3, label %.preheader142, label %scalar.ph350, !llvm.loop !53

bb.az:                                            ; preds = %bb.aq
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %._crit_edge189
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.au
  %lpad.loopexit144 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit, %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit, %bb.ar, %._crit_edge192
  %lpad.loopexit.split-lp145 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ba:                                            ; preds = %bb.av, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit117
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.aw
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #19
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn96 = phi { ptr, i32 } [ %i.ml, %bb.bb ], [ %i.mk, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.loopexit.split-lp

.preheader141:                                    ; preds = %._crit_edge, %.preheader142
  %.169.lcssa = phi i32 [ %.068191, %.preheader142 ], [ %i.nj, %._crit_edge ]
  store i32 0, ptr %i.q, align 4, !tbaa !10
  %.pre245 = load ptr, ptr %i.r, align 8, !tbaa !65 ; 6 uses
  br i1 %i.kd, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %.preheader141
  %wide.trip.count241 = zext nneg i32 %i.kc to i64 ; 2 uses
  %xtraiter379 = and i64 %wide.trip.count241, 3   ; 3 uses
  %i.mm = icmp ult i32 %i.kc, 4
  br i1 %i.mm, label %.epil.preheader378, label %.lr.ph188.new

.lr.ph188.new:                                    ; preds = %.lr.ph188
  %unroll_iter383 = and i64 %wide.trip.count241, 2147483644
  br label %bb.be

bb.bd:                                            ; preds = %.lr.ph185, %._crit_edge
  %indvars.iv233 = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next234, %._crit_edge ] ; 3 uses
  %.169184 = phi i32 [ %.068191, %.lr.ph185 ], [ %i.nj, %._crit_edge ]
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv233
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !10
  %i.mp = load float, ptr @_ZZ9gmx_nmensiPPcE4temp, align 4, !tbaa !82
  %i.mq = fpext float %i.mp to double
  %i.mr = fmul double %i.mq, f0x3F998AC26C586BA4
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.1, i64 %indvars.iv233
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !10
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.mu
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !82
  %i.mx = fpext float %i.mw to double
  %i.my = fdiv double %i.mr, %i.mx
  %i.mz = call double @sqrt(double noundef %i.my) #19
  %i.na = fptrunc double %i.mz to float           ; 2 uses
  %i.nb = fdiv float %i.na, 6.553500e+04
  %i.nc = mul i32 %.169184, 1093
  %i.nd = add i32 %i.nc, 18257                    ; 2 uses
  %i.ne = and i32 %i.nd, 65535
  %narrow = mul i32 %i.nd, 1093
  %narrow103 = add i32 %narrow, 18257             ; 2 uses
  %i.nf = and i32 %narrow103, 65535
  %i.ng = add nuw nsw i32 %i.nf, %i.ne
  %narrow104 = mul i32 %narrow103, 1093
  %narrow105 = add i32 %narrow104, 18257          ; 2 uses
  %i.nh = and i32 %narrow105, 65535
  %i.ni = add nuw nsw i32 %i.ng, %i.nh
  %narrow106 = mul i32 %narrow105, 1093
  %narrow107 = add i32 %narrow106, 18257
  %i.nj = and i32 %narrow107, 65535               ; 3 uses
  %i.nk = add nuw nsw i32 %i.ni, %i.nj
  %i.nl = uitofp nneg i32 %i.nk to float
  %i.nm = fmul float %i.na, -2.000000e+00
  %i.nn = call float @llvm.fmuladd.f32(float %i.nb, float %i.nl, float %i.nm) ; 10 uses
  br i1 %i.kd, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.bd
  %i.no = sext i32 %i.mo to i64
  %i.np = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.no
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !103 ; 6 uses
  br i1 %min.iters.check327, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.lr.ph
  %scevgep322 = getelementptr i8, ptr %i.nq, i64 %i.kw
  %bound0 = icmp ult ptr %i.jm, %scevgep322
  %bound1 = icmp ult ptr %i.nq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict326
  br i1 %conflict.rdx, label %.preheader.preheader, label %vector.ph328

vector.ph328:                                     ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.nn, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph328
  %index331 = phi i64 [ 0, %vector.ph328 ], [ %index.next340, %vector.body330 ] ; 4 uses
  %i.nr = getelementptr inbounds nuw [12 x i8], ptr %i.nq, i64 %index331
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index331 ; 2 uses
  %i.nt = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %index331 ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.nr, align 4, !tbaa !82, !alias.scope !106 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec332 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec333 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.nu = fmul <8 x float> %broadcast.splat, %strided.vec
  %wide.load = load <8 x float>, ptr %i.ns, align 4, !tbaa !82, !alias.scope !107
  %wide.vec334 = load <24 x float>, ptr %i.nt, align 4, !tbaa !82, !alias.scope !108, !noalias !109 ; 3 uses
  %strided.vec335 = shufflevector <24 x float> %wide.vec334, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec336 = shufflevector <24 x float> %wide.vec334, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec337 = shufflevector <24 x float> %wide.vec334, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.nv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nu, <8 x float> %wide.load, <8 x float> %strided.vec335)
  %i.nw = fmul <8 x float> %broadcast.splat, %strided.vec332
  %wide.load338 = load <8 x float>, ptr %i.ns, align 4, !tbaa !82, !alias.scope !107 ; 2 uses
  %i.nx = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nw, <8 x float> %wide.load338, <8 x float> %strided.vec336)
  %i.ny = fmul <8 x float> %broadcast.splat, %strided.vec333
  %i.nz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ny, <8 x float> %wide.load338, <8 x float> %strided.vec337)
  %i.oa = shufflevector <8 x float> %i.nv, <8 x float> %i.nx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ob = shufflevector <8 x float> %i.nz, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.oa, <16 x float> %i.ob, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.nt, align 4, !tbaa !82, !alias.scope !108, !noalias !109
  %index.next340 = add nuw i64 %index331, 8       ; 2 uses
  %i.oc = icmp eq i64 %index.next340, %n.vec329
  br i1 %i.oc, label %middle.block341, label %vector.body330, !llvm.loop !58

middle.block341:                                  ; preds = %vector.body330
  br i1 %cmp.n342, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %.preheader.lr.ph, %middle.block341
  %indvars.iv228.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec329, %middle.block341 ] ; 6 uses
  br i1 %lcmp.mod376.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.od = getelementptr inbounds nuw [12 x i8], ptr %i.nq, i64 %indvars.iv228.ph ; 3 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv228.ph ; 3 uses
  %i.of = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv228.ph ; 4 uses
  %i.og = load float, ptr %i.od, align 4, !tbaa !82
  %i.oh = fmul float %i.nn, %i.og
  %i.oi = load float, ptr %i.oe, align 4, !tbaa !82
  %i.oj = load float, ptr %i.of, align 4, !tbaa !82
  %i.ok = call float @llvm.fmuladd.f32(float %i.oh, float %i.oi, float %i.oj)
  store float %i.ok, ptr %i.of, align 4, !tbaa !82
  %i.ol = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  %i.om = load float, ptr %i.ol, align 4, !tbaa !82
  %i.on = fmul float %i.nn, %i.om
  %i.oo = load float, ptr %i.oe, align 4, !tbaa !82
  %i.op = getelementptr inbounds nuw i8, ptr %i.of, i64 4 ; 2 uses
  %i.oq = load float, ptr %i.op, align 4, !tbaa !82
  %i.or = call float @llvm.fmuladd.f32(float %i.on, float %i.oo, float %i.oq)
  store float %i.or, ptr %i.op, align 4, !tbaa !82
  %i.os = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.ot = load float, ptr %i.os, align 4, !tbaa !82
  %i.ou = fmul float %i.nn, %i.ot
  %i.ov = load float, ptr %i.oe, align 4, !tbaa !82
  %i.ow = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 2 uses
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !82
  %i.oy = call float @llvm.fmuladd.f32(float %i.ou, float %i.ov, float %i.ox)
  store float %i.oy, ptr %i.ow, align 4, !tbaa !82
  %indvars.iv.next229.prol = or disjoint i64 %indvars.iv228.ph, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv228.unr = phi i64 [ %indvars.iv228.ph, %.preheader.preheader ], [ %indvars.iv.next229.prol, %.preheader.prol ]
  %i.oz = icmp eq i64 %indvars.iv228.ph, %i.ky
  br i1 %i.oz, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv228 = phi i64 [ %indvars.iv.next229.1, %.preheader ], [ %indvars.iv228.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.pa = getelementptr inbounds nuw [12 x i8], ptr %i.nq, i64 %indvars.iv228 ; 3 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv228 ; 3 uses
  %i.pc = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv228 ; 4 uses
  %i.pd = load float, ptr %i.pa, align 4, !tbaa !82
  %i.pe = fmul float %i.nn, %i.pd
  %i.pf = load float, ptr %i.pb, align 4, !tbaa !82
  %i.pg = load float, ptr %i.pc, align 4, !tbaa !82
  %i.ph = call float @llvm.fmuladd.f32(float %i.pe, float %i.pf, float %i.pg)
  store float %i.ph, ptr %i.pc, align 4, !tbaa !82
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !82
  %i.pk = fmul float %i.nn, %i.pj
  %i.pl = load float, ptr %i.pb, align 4, !tbaa !82
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pc, i64 4 ; 2 uses
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !82
  %i.po = call float @llvm.fmuladd.f32(float %i.pk, float %i.pl, float %i.pn)
  store float %i.po, ptr %i.pm, align 4, !tbaa !82
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !82
  %i.pr = fmul float %i.nn, %i.pq
  %i.ps = load float, ptr %i.pb, align 4, !tbaa !82
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 2 uses
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !82
  %i.pv = call float @llvm.fmuladd.f32(float %i.pr, float %i.ps, float %i.pu)
  store float %i.pv, ptr %i.pt, align 4, !tbaa !82
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 3 uses
  %i.pw = getelementptr inbounds nuw [12 x i8], ptr %i.nq, i64 %indvars.iv.next229 ; 3 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next229 ; 3 uses
  %i.py = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next229 ; 4 uses
  %i.pz = load float, ptr %i.pw, align 4, !tbaa !82
  %i.qa = fmul float %i.nn, %i.pz
  %i.qb = load float, ptr %i.px, align 4, !tbaa !82
  %i.qc = load float, ptr %i.py, align 4, !tbaa !82
  %i.qd = call float @llvm.fmuladd.f32(float %i.qa, float %i.qb, float %i.qc)
  store float %i.qd, ptr %i.py, align 4, !tbaa !82
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !82
  %i.qg = fmul float %i.nn, %i.qf
  %i.qh = load float, ptr %i.px, align 4, !tbaa !82
  %i.qi = getelementptr inbounds nuw i8, ptr %i.py, i64 4 ; 2 uses
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !82
  %i.qk = call float @llvm.fmuladd.f32(float %i.qg, float %i.qh, float %i.qj)
  store float %i.qk, ptr %i.qi, align 4, !tbaa !82
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !82
  %i.qn = fmul float %i.nn, %i.qm
  %i.qo = load float, ptr %i.px, align 4, !tbaa !82
  %i.qp = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 2 uses
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !82
  %i.qr = call float @llvm.fmuladd.f32(float %i.qn, float %i.qo, float %i.qq)
  store float %i.qr, ptr %i.qp, align 4, !tbaa !82
  %indvars.iv.next229.1 = add nuw nsw i64 %indvars.iv228, 2 ; 2 uses
  %exitcond232.not.1 = icmp eq i64 %indvars.iv.next229.1, %wide.trip.count231
  br i1 %exitcond232.not.1, label %._crit_edge, label %.preheader, !llvm.loop !59

._crit_edge:                                      ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block341, %bb.bd
  %storemerge108.lcssa = phi i32 [ 0, %bb.bd ], [ %i.kc, %middle.block341 ], [ %i.kc, %.preheader ], [ %i.kc, %.preheader.prol.loopexit ]
  store i32 %storemerge108.lcssa, ptr %i.q, align 4, !tbaa !10
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next234, %wide.trip.count236
  br i1 %exitcond237.not, label %.preheader141, label %bb.bd, !llvm.loop !60

bb.be:                                            ; preds = %bb.be, %.lr.ph188.new
  %indvars.iv238 = phi i64 [ 0, %.lr.ph188.new ], [ %indvars.iv.next239.3, %bb.be ] ; 6 uses
  %niter384 = phi i64 [ 0, %.lr.ph188.new ], [ %niter384.next.3, %bb.be ]
  %i.qs = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv238 ; 3 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %.pre245, i64 %indvars.iv238
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !10
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds [12 x i8], ptr %i.jp, i64 %i.qv ; 3 uses
  %i.qx = load float, ptr %i.qs, align 4, !tbaa !82
  store float %i.qx, ptr %i.qw, align 4, !tbaa !82
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !82
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  store float %i.qz, ptr %i.ra, align 4, !tbaa !82
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !82
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  store float %i.rc, ptr %i.rd, align 4, !tbaa !82
  %indvars.iv.next239 = or disjoint i64 %indvars.iv238, 1 ; 3 uses
  %i.re = trunc nuw nsw i64 %indvars.iv.next239 to i32
  store i32 %i.re, ptr %i.q, align 4, !tbaa !10
  %i.rf = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next239 ; 3 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %.pre245, i64 %indvars.iv.next239
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !10
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [12 x i8], ptr %i.jp, i64 %i.ri ; 3 uses
  %i.rk = load float, ptr %i.rf, align 4, !tbaa !82
  store float %i.rk, ptr %i.rj, align 4, !tbaa !82
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !82
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  store float %i.rm, ptr %i.rn, align 4, !tbaa !82
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !82
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  store float %i.rp, ptr %i.rq, align 4, !tbaa !82
  %indvars.iv.next239.1 = or disjoint i64 %indvars.iv238, 2 ; 3 uses
  %i.rr = trunc nuw nsw i64 %indvars.iv.next239.1 to i32
  store i32 %i.rr, ptr %i.q, align 4, !tbaa !10
  %i.rs = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next239.1 ; 3 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.pre245, i64 %indvars.iv.next239.1
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !10
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds [12 x i8], ptr %i.jp, i64 %i.rv ; 3 uses
  %i.rx = load float, ptr %i.rs, align 4, !tbaa !82
  store float %i.rx, ptr %i.rw, align 4, !tbaa !82
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rs, i64 4
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !82
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  store float %i.rz, ptr %i.sa, align 4, !tbaa !82
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !82
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  store float %i.sc, ptr %i.sd, align 4, !tbaa !82
  %indvars.iv.next239.2 = or disjoint i64 %indvars.iv238, 3 ; 3 uses
  %i.se = trunc nuw nsw i64 %indvars.iv.next239.2 to i32
  store i32 %i.se, ptr %i.q, align 4, !tbaa !10
  %i.sf = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next239.2 ; 3 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.pre245, i64 %indvars.iv.next239.2
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !10
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds [12 x i8], ptr %i.jp, i64 %i.si ; 3 uses
  %i.sk = load float, ptr %i.sf, align 4, !tbaa !82
  store float %i.sk, ptr %i.sj, align 4, !tbaa !82
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !82
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  store float %i.sm, ptr %i.sn, align 4, !tbaa !82
  %i.so = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sp = load float, ptr %i.so, align 4, !tbaa !82
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  store float %i.sp, ptr %i.sq, align 4, !tbaa !82
  %indvars.iv.next239.3 = add nuw nsw i64 %indvars.iv238, 4 ; 3 uses
  %i.sr = trunc nuw nsw i64 %indvars.iv.next239.3 to i32
  store i32 %i.sr, ptr %i.q, align 4, !tbaa !10
  %niter384.next.3 = add i64 %niter384, 4         ; 2 uses
  %niter384.ncmp.3 = icmp eq i64 %niter384.next.3, %unroll_iter383
  br i1 %niter384.ncmp.3, label %._crit_edge189.loopexit.unr-lcssa, label %bb.be, !llvm.loop !61

._crit_edge189.loopexit.unr-lcssa:                ; preds = %bb.be
  %lcmp.mod381.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod381.not, label %._crit_edge189, label %.epil.preheader378

.epil.preheader378:                               ; preds = %._crit_edge189.loopexit.unr-lcssa, %.lr.ph188
  %indvars.iv238.epil.init = phi i64 [ 0, %.lr.ph188 ], [ %indvars.iv.next239.3, %._crit_edge189.loopexit.unr-lcssa ]
  %lcmp.mod382 = icmp ne i64 %xtraiter379, 0
  call void @llvm.assume(i1 %lcmp.mod382)
end_hunk_0
