Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mltaln9?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 95
begin_hunk_0_@supg:bb.a
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x double>, ptr %i.n, align 8, !tbaa !140
  %wide.load285 = load <2 x double>, ptr %i.o, align 8, !tbaa !140
  %i.p = fptrunc <2 x double> %wide.load to <2 x float>
  %i.q = fptrunc <2 x double> %wide.load285 to <2 x float>
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store <2 x float> %i.p, ptr %i.r, align 4, !tbaa !138
  store <2 x float> %i.q, ptr %i.s, align 4, !tbaa !138
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !406

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader161, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader161 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.v = load double, ptr %i.u, align 8, !tbaa !140
  %i.w = fptrunc double %i.v to float
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  store float %i.w, ptr %i.x, align 4, !tbaa !138
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count219
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !407

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count219
  br i1 %exitcond220.not, label %.preheader158.lr.ph, label %.preheader161, !llvm.loop !408

.preheader158.lr.ph:                              ; preds = %._crit_edge
  %i.y = load ptr, ptr @supg.tmplen, align 8, !tbaa !136
  %i.z = zext nneg i32 %0 to i64
  %i.aa = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.y, i8 0, i64 %i.aa, i1 false), !tbaa !138
  %i.ab = load ptr, ptr @supg.pair, align 8
  %wide.trip.count232 = zext nneg i32 %0 to i64
  %xtraiter = and i64 %wide.trip.count219, 3      ; 3 uses
  %i.ac = icmp ult i32 %0, 4
  %unroll_iter = and i64 %wide.trip.count219, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod286 = icmp ne i64 %xtraiter, 0
  br label %.preheader158

.preheader158:                                    ; preds = %.preheader158.lr.ph, %._crit_edge167
  %indvars.iv229 = phi i64 [ 0, %.preheader158.lr.ph ], [ %indvars.iv.next230, %._crit_edge167 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv229 ; 5 uses
  br i1 %i.ac, label %.epil.preheader, label %.preheader158.new

.lr.ph170:                                        ; preds = %._crit_edge167
  %i.ae = load ptr, ptr @supg.pair, align 8, !tbaa !146 ; 5 uses
  %xtraiter288 = and i64 %wide.trip.count219, 3   ; 3 uses
  %i.af = icmp ult i32 %0, 4
  br i1 %i.af, label %.epil.preheader287, label %.lr.ph170.new

.lr.ph170.new:                                    ; preds = %.lr.ph170
  %unroll_iter292 = and i64 %wide.trip.count219, 2147483644
  br label %bb.f

.preheader158.new:                                ; preds = %.preheader158, %.preheader158.new
  %indvars.iv224 = phi i64 [ %indvars.iv.next225.3, %.preheader158.new ], [ 0, %.preheader158 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader158.new ], [ 0, %.preheader158 ]
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !132
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv224
  store i8 0, ptr %i.ah, align 1, !tbaa !128
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !132
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv224
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 0, ptr %i.ak, align 1, !tbaa !128
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !132
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv224
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i8 0, ptr %i.an, align 1, !tbaa !128
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !132
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv224
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  store i8 0, ptr %i.aq, align 1, !tbaa !128
  %indvars.iv.next225.3 = add nuw nsw i64 %indvars.iv224, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge167.unr-lcssa, label %.preheader158.new, !llvm.loop !409

._crit_edge167.unr-lcssa:                         ; preds = %.preheader158.new
  br i1 %lcmp.mod.not, label %._crit_edge167, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge167.unr-lcssa, %.preheader158
  %indvars.iv224.epil.init = phi i64 [ 0, %.preheader158 ], [ %indvars.iv.next225.3, %._crit_edge167.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod286)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv224.epil = phi i64 [ %indvars.iv224.epil.init, %.epil.preheader ], [ %indvars.iv.next225.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !132
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv224.epil
  store i8 0, ptr %i.as, align 1, !tbaa !128
  %indvars.iv.next225.epil = add nuw nsw i64 %indvars.iv224.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge167, label %bb.d, !llvm.loop !410

._crit_edge167:                                   ; preds = %bb.d, %._crit_edge167.unr-lcssa
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next230, %wide.trip.count232
  br i1 %exitcond233.not, label %.lr.ph170, label %.preheader158, !llvm.loop !411

.preheader156.unr-lcssa:                          ; preds = %bb.f
  %lcmp.mod290.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod290.not, label %.preheader156, label %.epil.preheader287

.epil.preheader287:                               ; preds = %.preheader156.unr-lcssa, %.lr.ph170
  %indvars.iv234.epil.init = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next235.3, %.preheader156.unr-lcssa ]
  %lcmp.mod291 = icmp ne i64 %xtraiter288, 0
  tail call void @llvm.assume(i1 %lcmp.mod291)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader287
  %indvars.iv234.epil = phi i64 [ %indvars.iv234.epil.init, %.epil.preheader287 ], [ %indvars.iv.next235.epil, %bb.e ] ; 3 uses
  %epil.iter289 = phi i64 [ 0, %.epil.preheader287 ], [ %epil.iter289.next, %bb.e ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv234.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !132
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv234.epil
  store i8 1, ptr %i.av, align 1, !tbaa !128
  %indvars.iv.next235.epil = add nuw nsw i64 %indvars.iv234.epil, 1
  %epil.iter289.next = add i64 %epil.iter289, 1   ; 2 uses
  %epil.iter289.cmp.not = icmp eq i64 %epil.iter289.next, %xtraiter288
  br i1 %epil.iter289.cmp.not, label %.preheader156, label %bb.e, !llvm.loop !412

.preheader156:                                    ; preds = %bb.e, %.preheader156.unr-lcssa
  %.not284 = icmp eq i32 %0, 1
  br i1 %.not284, label %._crit_edge214, label %.lr.ph213

.lr.ph213:                                        ; preds = %.preheader156
  %i.aw = add nsw i32 %0, -1                      ; 2 uses
  %i.ax = load ptr, ptr @supg.eff, align 8, !tbaa !170 ; 4 uses
  %i.ay = load ptr, ptr @supg.pair, align 8       ; 5 uses
  %i.az = load ptr, ptr @supg.tmplen, align 8, !tbaa !136 ; 2 uses
  %wide.trip.count269 = zext i32 %i.aw to i64     ; 2 uses
  %i.ba = add nsw i32 %0, -2
  %xtraiter297 = and i64 %wide.trip.count219, 3   ; 3 uses
  %i.bb = icmp ult i32 %0, 4
  %unroll_iter302 = and i64 %wide.trip.count219, 2147483644
  %lcmp.mod299.not = icmp eq i64 %xtraiter297, 0
  %lcmp.mod301 = icmp ne i64 %xtraiter297, 0
  %xtraiter305 = and i64 %wide.trip.count219, 3   ; 3 uses
  %i.bc = icmp ult i32 %0, 4
  %unroll_iter310 = and i64 %wide.trip.count219, 2147483644
  %lcmp.mod307.not = icmp eq i64 %xtraiter305, 0
  %lcmp.mod309 = icmp ne i64 %xtraiter305, 0
  %xtraiter313 = and i64 %wide.trip.count219, 1
  %unroll_iter317 = and i64 %wide.trip.count219, 2147483646
  %lcmp.mod315.not = icmp eq i64 %xtraiter313, 0
  %lcmp.mod316 = trunc i32 %0 to i1
  %xtraiter320 = and i64 %wide.trip.count219, 3   ; 3 uses
  %i.bd = icmp ult i32 %0, 4
  %unroll_iter324 = and i64 %wide.trip.count219, 2147483644
  %lcmp.mod322.not = icmp eq i64 %xtraiter320, 0
  %lcmp.mod323 = icmp ne i64 %xtraiter320, 0
  br label %.lr.ph186.preheader

bb.f:                                             ; preds = %bb.f, %.lr.ph170.new
  %indvars.iv234 = phi i64 [ 0, %.lr.ph170.new ], [ %indvars.iv.next235.3, %bb.f ] ; 6 uses
  %niter293 = phi i64 [ 0, %.lr.ph170.new ], [ %niter293.next.3, %bb.f ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv234
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !132
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %indvars.iv234
  store i8 1, ptr %i.bg, align 1, !tbaa !128
  %indvars.iv.next235 = or disjoint i64 %indvars.iv234, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next235
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !132
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.next235
  store i8 1, ptr %i.bj, align 1, !tbaa !128
  %indvars.iv.next235.1 = or disjoint i64 %indvars.iv234, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next235.1
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !132
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next235.1
  store i8 1, ptr %i.bm, align 1, !tbaa !128
  %indvars.iv.next235.2 = or disjoint i64 %indvars.iv234, 3 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next235.2
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !132
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv.next235.2
  store i8 1, ptr %i.bp, align 1, !tbaa !128
  %indvars.iv.next235.3 = add nuw nsw i64 %indvars.iv234, 4 ; 2 uses
  %niter293.next.3 = add i64 %niter293, 4         ; 2 uses
  %niter293.ncmp.3 = icmp eq i64 %niter293.next.3, %unroll_iter292
  br i1 %niter293.ncmp.3, label %.preheader156.unr-lcssa, label %bb.f, !llvm.loop !413

.lr.ph186.preheader:                              ; preds = %._crit_edge211, %.lr.ph213
  %indvars.iv266 = phi i64 [ 0, %.lr.ph213 ], [ %indvars.iv.next267, %._crit_edge211 ] ; 3 uses
  br label %.lr.ph177.preheader

.loopexit:                                        ; preds = %.lr.ph177, %.lr.ph177.prol.loopexit
  %.2131.lcssa = phi float [ %.2131.lcssa.unr, %.lr.ph177.prol.loopexit ], [ %.2131.1, %.lr.ph177 ] ; 2 uses
  %.2128.lcssa = phi i32 [ %.2128.lcssa.unr, %.lr.ph177.prol.loopexit ], [ %.2128.1, %.lr.ph177 ] ; 5 uses
  %.2.lcssa = phi i32 [ %.2.lcssa.unr, %.lr.ph177.prol.loopexit ], [ %.2.1, %.lr.ph177 ] ; 5 uses
  %exitcond244.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count269
  br i1 %exitcond244.not, label %.lr.ph194, label %.lr.ph177.preheader, !llvm.loop !414

.lr.ph177.preheader:                              ; preds = %.loopexit, %.lr.ph186.preheader
  %indvars.iv240 = phi i64 [ 0, %.lr.ph186.preheader ], [ %indvars.iv.next241, %.loopexit ] ; 5 uses
  %.0184 = phi i32 [ -1, %.lr.ph186.preheader ], [ %.2.lcssa, %.loopexit ] ; 2 uses
  %.0126183 = phi i32 [ -1, %.lr.ph186.preheader ], [ %.2128.lcssa, %.loopexit ] ; 2 uses
  %.0129182 = phi float [ 9.999000e+03, %.lr.ph186.preheader ], [ %.2131.lcssa, %.loopexit ] ; 3 uses
  %.0133181 = phi ptr [ %i.ax, %.lr.ph186.preheader ], [ %i.bt, %.loopexit ] ; 2 uses
  %i.bq = trunc i64 %indvars.iv240 to i32
  %i.br = sub i32 %i.aw, %i.bq
  %i.bs = trunc i64 %indvars.iv240 to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %.0133181, i64 8
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 3 uses
  %i.bu = load ptr, ptr %.0133181, align 8, !tbaa !136
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv240 ; 2 uses
  %i.bw = trunc nuw nsw i64 %indvars.iv.next241 to i32 ; 3 uses
  %i.bx = trunc nuw nsw i64 %indvars.iv240 to i32 ; 2 uses
  %xtraiter294 = and i32 %i.br, 1
  %lcmp.mod295.not = icmp eq i32 %xtraiter294, 0
  br i1 %lcmp.mod295.not, label %.lr.ph177.prol.loopexit, label %.lr.ph177.prol

.lr.ph177.prol:                                   ; preds = %.lr.ph177.preheader
  %.0132.prol = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.by = load float, ptr %.0132.prol, align 4, !tbaa !138 ; 2 uses
  %i.bz = fcmp olt float %i.by, %.0129182         ; 3 uses
  %.2131.prol = select i1 %i.bz, float %i.by, float %.0129182 ; 2 uses
  %.2128.prol = select i1 %i.bz, i32 %i.bx, i32 %.0126183 ; 2 uses
  %.2.prol = select i1 %i.bz, i32 %i.bw, i32 %.0184 ; 2 uses
  %i.ca = add nuw nsw i32 %i.bw, 1
  br label %.lr.ph177.prol.loopexit

.lr.ph177.prol.loopexit:                          ; preds = %.lr.ph177.prol, %.lr.ph177.preheader
  %.2131.lcssa.unr = phi float [ poison, %.lr.ph177.preheader ], [ %.2131.prol, %.lr.ph177.prol ]
  %.2128.lcssa.unr = phi i32 [ poison, %.lr.ph177.preheader ], [ %.2128.prol, %.lr.ph177.prol ]
  %.2.lcssa.unr = phi i32 [ poison, %.lr.ph177.preheader ], [ %.2.prol, %.lr.ph177.prol ]
  %.1175.unr = phi i32 [ %.0184, %.lr.ph177.preheader ], [ %.2.prol, %.lr.ph177.prol ]
  %.1127174.unr = phi i32 [ %.0126183, %.lr.ph177.preheader ], [ %.2128.prol, %.lr.ph177.prol ]
  %.1130173.unr = phi float [ %.0129182, %.lr.ph177.preheader ], [ %.2131.prol, %.lr.ph177.prol ]
  %.pn172.unr = phi ptr [ %i.bv, %.lr.ph177.preheader ], [ %.0132.prol, %.lr.ph177.prol ]
  %.2144171.unr = phi i32 [ %i.bw, %.lr.ph177.preheader ], [ %i.ca, %.lr.ph177.prol ]
  %i.cb = icmp eq i32 %i.ba, %i.bs
  br i1 %i.cb, label %.loopexit, label %.lr.ph177

.lr.ph177:                                        ; preds = %.lr.ph177.prol.loopexit, %.lr.ph177
  %.1175 = phi i32 [ %.2.1, %.lr.ph177 ], [ %.1175.unr, %.lr.ph177.prol.loopexit ]
  %.1127174 = phi i32 [ %.2128.1, %.lr.ph177 ], [ %.1127174.unr, %.lr.ph177.prol.loopexit ]
  %.1130173 = phi float [ %.2131.1, %.lr.ph177 ], [ %.1130173.unr, %.lr.ph177.prol.loopexit ] ; 2 uses
  %.pn172 = phi ptr [ %.0132.1, %.lr.ph177 ], [ %.pn172.unr, %.lr.ph177.prol.loopexit ] ; 2 uses
  %.2144171 = phi i32 [ %i.ci, %.lr.ph177 ], [ %.2144171.unr, %.lr.ph177.prol.loopexit ] ; 3 uses
  %.0132 = getelementptr inbounds nuw i8, ptr %.pn172, i64 4
  %i.cc = load float, ptr %.0132, align 4, !tbaa !138 ; 2 uses
  %i.cd = fcmp olt float %i.cc, %.1130173         ; 3 uses
  %.2131 = select i1 %i.cd, float %i.cc, float %.1130173 ; 2 uses
  %.2 = select i1 %i.cd, i32 %.2144171, i32 %.1175
  %i.ce = add nuw nsw i32 %.2144171, 1
  %.0132.1 = getelementptr inbounds nuw i8, ptr %.pn172, i64 8 ; 2 uses
  %i.cf = load float, ptr %.0132.1, align 4, !tbaa !138 ; 2 uses
  %i.cg = fcmp olt float %i.cf, %.2131            ; 3 uses
  %.2131.1 = select i1 %i.cg, float %i.cf, float %.2131 ; 2 uses
  %i.ch = or i1 %i.cg, %i.cd
  %.2128.1 = select i1 %i.ch, i32 %i.bx, i32 %.1127174 ; 2 uses
  %.2.1 = select i1 %i.cg, i32 %i.ce, i32 %.2     ; 2 uses
  %i.ci = add nuw nsw i32 %.2144171, 2            ; 2 uses
  %exitcond239.not.1 = icmp eq i32 %i.ci, %0
  br i1 %exitcond239.not.1, label %.loopexit, label %.lr.ph177, !llvm.loop !415

.lr.ph194:                                        ; preds = %.loopexit
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv266
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !148 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !150 ; 2 uses
  %i.cm = sext i32 %.2128.lcssa to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !132 ; 5 uses
  br i1 %i.bb, label %.epil.preheader296, label %.lr.ph194.new

.lr.ph194.new:                                    ; preds = %.lr.ph194, %bb.n
  %indvars.iv245 = phi i64 [ %indvars.iv.next246.3, %bb.n ], [ 0, %.lr.ph194 ] ; 6 uses
  %.0134192 = phi ptr [ %.1135.3, %bb.n ], [ %i.cl, %.lr.ph194 ] ; 3 uses
  %niter303 = phi i64 [ %niter303.next.3, %bb.n ], [ 0, %.lr.ph194 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv245
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !128
  %i.cr = icmp sgt i8 %i.cq, 0
  br i1 %i.cr, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph194.new
  %i.cs = getelementptr inbounds nuw i8, ptr %.0134192, i64 4
  %i.ct = trunc nuw nsw i64 %indvars.iv245 to i32
  store i32 %i.ct, ptr %.0134192, align 4, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph194.new, %bb.g
  %.1135 = phi ptr [ %i.cs, %bb.g ], [ %.0134192, %.lr.ph194.new ] ; 3 uses
  %indvars.iv.next246 = or disjoint i64 %indvars.iv245, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.next246
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !128
  %i.cw = icmp sgt i8 %i.cv, 0
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cx = getelementptr inbounds nuw i8, ptr %.1135, i64 4
  %i.cy = trunc nuw nsw i64 %indvars.iv.next246 to i32
  store i32 %i.cy, ptr %.1135, align 4, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1135.1 = phi ptr [ %i.cx, %bb.i ], [ %.1135, %bb.h ] ; 3 uses
  %indvars.iv.next246.1 = or disjoint i64 %indvars.iv245, 2 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.next246.1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !128
  %i.db = icmp sgt i8 %i.da, 0
  br i1 %i.db, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dc = getelementptr inbounds nuw i8, ptr %.1135.1, i64 4
  %i.dd = trunc nuw nsw i64 %indvars.iv.next246.1 to i32
  store i32 %i.dd, ptr %.1135.1, align 4, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1135.2 = phi ptr [ %i.dc, %bb.k ], [ %.1135.1, %bb.j ] ; 3 uses
  %indvars.iv.next246.2 = or disjoint i64 %indvars.iv245, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.next246.2
  %i.df = load i8, ptr %i.de, align 1, !tbaa !128
  %i.dg = icmp sgt i8 %i.df, 0
  br i1 %i.dg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %.1135.2, i64 4
  %i.di = trunc nuw nsw i64 %indvars.iv.next246.2 to i32
  store i32 %i.di, ptr %.1135.2, align 4, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1135.3 = phi ptr [ %i.dh, %bb.m ], [ %.1135.2, %bb.l ] ; 3 uses
  %indvars.iv.next246.3 = add nuw nsw i64 %indvars.iv245, 4 ; 2 uses
  %niter303.next.3 = add i64 %niter303, 4         ; 2 uses
  %niter303.ncmp.3 = icmp eq i64 %niter303.next.3, %unroll_iter302
  br i1 %niter303.ncmp.3, label %.lr.ph200.unr-lcssa, label %.lr.ph194.new, !llvm.loop !416

.lr.ph200.unr-lcssa:                              ; preds = %bb.n
  br i1 %lcmp.mod299.not, label %.lr.ph200, label %.epil.preheader296

.epil.preheader296:                               ; preds = %.lr.ph200.unr-lcssa, %.lr.ph194
  %indvars.iv245.epil.init = phi i64 [ 0, %.lr.ph194 ], [ %indvars.iv.next246.3, %.lr.ph200.unr-lcssa ]
  %.0134192.epil.init = phi ptr [ %i.cl, %.lr.ph194 ], [ %.1135.3, %.lr.ph200.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod301)
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.epil.preheader296
  %indvars.iv245.epil = phi i64 [ %indvars.iv245.epil.init, %.epil.preheader296 ], [ %indvars.iv.next246.epil, %bb.q ] ; 3 uses
  %.0134192.epil = phi ptr [ %.0134192.epil.init, %.epil.preheader296 ], [ %.1135.epil, %bb.q ] ; 3 uses
  %epil.iter298 = phi i64 [ 0, %.epil.preheader296 ], [ %epil.iter298.next, %bb.q ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv245.epil
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !128
  %i.dl = icmp sgt i8 %i.dk, 0
  br i1 %i.dl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %.0134192.epil, i64 4
  %i.dn = trunc nuw nsw i64 %indvars.iv245.epil to i32
  store i32 %i.dn, ptr %.0134192.epil, align 4, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1135.epil = phi ptr [ %i.dm, %bb.p ], [ %.0134192.epil, %bb.o ] ; 2 uses
  %indvars.iv.next246.epil = add nuw nsw i64 %indvars.iv245.epil, 1
  %epil.iter298.next = add i64 %epil.iter298, 1   ; 2 uses
  %epil.iter298.cmp.not = icmp eq i64 %epil.iter298.next, %xtraiter297
  br i1 %epil.iter298.cmp.not, label %.lr.ph200, label %bb.o, !llvm.loop !417

.lr.ph200:                                        ; preds = %bb.q, %.lr.ph200.unr-lcssa
  %.1135.lcssa = phi ptr [ %.1135.3, %.lr.ph200.unr-lcssa ], [ %.1135.epil, %bb.q ]
  store i32 -1, ptr %.1135.lcssa, align 4, !tbaa !13
  %i.do = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !150 ; 2 uses
  %i.dq = sext i32 %.2.lcssa to i64               ; 6 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !132 ; 5 uses
  br i1 %i.bc, label %.epil.preheader304, label %.lr.ph200.new

.lr.ph200.new:                                    ; preds = %.lr.ph200, %bb.y
  %indvars.iv250 = phi i64 [ %indvars.iv.next251.3, %bb.y ], [ 0, %.lr.ph200 ] ; 6 uses
  %.2136198 = phi ptr [ %.3.3, %bb.y ], [ %i.dp, %.lr.ph200 ] ; 3 uses
  %niter311 = phi i64 [ %niter311.next.3, %bb.y ], [ 0, %.lr.ph200 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv250
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !128
  %i.dv = icmp sgt i8 %i.du, 0
  br i1 %i.dv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph200.new
  %i.dw = getelementptr inbounds nuw i8, ptr %.2136198, i64 4
  %i.dx = trunc nuw nsw i64 %indvars.iv250 to i32
  store i32 %i.dx, ptr %.2136198, align 4, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph200.new, %bb.r
  %.3 = phi ptr [ %i.dw, %bb.r ], [ %.2136198, %.lr.ph200.new ] ; 3 uses
  %indvars.iv.next251 = or disjoint i64 %indvars.iv250, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv.next251
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !128
  %i.ea = icmp sgt i8 %i.dz, 0
  br i1 %i.ea, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.ec = trunc nuw nsw i64 %indvars.iv.next251 to i32
  store i32 %i.ec, ptr %.3, align 4, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3.1 = phi ptr [ %i.eb, %bb.t ], [ %.3, %bb.s ] ; 3 uses
  %indvars.iv.next251.1 = or disjoint i64 %indvars.iv250, 2 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv.next251.1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !128
  %i.ef = icmp sgt i8 %i.ee, 0
  br i1 %i.ef, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eg = getelementptr inbounds nuw i8, ptr %.3.1, i64 4
  %i.eh = trunc nuw nsw i64 %indvars.iv.next251.1 to i32
  store i32 %i.eh, ptr %.3.1, align 4, !tbaa !13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.3.2 = phi ptr [ %i.eg, %bb.v ], [ %.3.1, %bb.u ] ; 3 uses
  %indvars.iv.next251.2 = or disjoint i64 %indvars.iv250, 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv.next251.2
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !128
  %i.ek = icmp sgt i8 %i.ej, 0
  br i1 %i.ek, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.el = getelementptr inbounds nuw i8, ptr %.3.2, i64 4
  %i.em = trunc nuw nsw i64 %indvars.iv.next251.2 to i32
  store i32 %i.em, ptr %.3.2, align 4, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.3.3 = phi ptr [ %i.el, %bb.x ], [ %.3.2, %bb.w ] ; 3 uses
  %indvars.iv.next251.3 = add nuw nsw i64 %indvars.iv250, 4 ; 2 uses
  %niter311.next.3 = add i64 %niter311, 4         ; 2 uses
  %niter311.ncmp.3 = icmp eq i64 %niter311.next.3, %unroll_iter310
  br i1 %niter311.ncmp.3, label %.lr.ph205.unr-lcssa, label %.lr.ph200.new, !llvm.loop !418

.lr.ph205.unr-lcssa:                              ; preds = %bb.y
  br i1 %lcmp.mod307.not, label %.lr.ph205, label %.epil.preheader304

.epil.preheader304:                               ; preds = %.lr.ph205.unr-lcssa, %.lr.ph200
  %indvars.iv250.epil.init = phi i64 [ 0, %.lr.ph200 ], [ %indvars.iv.next251.3, %.lr.ph205.unr-lcssa ]
  %.2136198.epil.init = phi ptr [ %i.dp, %.lr.ph200 ], [ %.3.3, %.lr.ph205.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod309)
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.epil.preheader304
  %indvars.iv250.epil = phi i64 [ %indvars.iv250.epil.init, %.epil.preheader304 ], [ %indvars.iv.next251.epil, %bb.ab ] ; 3 uses
  %.2136198.epil = phi ptr [ %.2136198.epil.init, %.epil.preheader304 ], [ %.3.epil, %bb.ab ] ; 3 uses
  %epil.iter306 = phi i64 [ 0, %.epil.preheader304 ], [ %epil.iter306.next, %bb.ab ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv250.epil
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !128
  %i.ep = icmp sgt i8 %i.eo, 0
  br i1 %i.ep, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %.2136198.epil, i64 4
  %i.er = trunc nuw nsw i64 %indvars.iv250.epil to i32
  store i32 %i.er, ptr %.2136198.epil, align 4, !tbaa !13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.3.epil = phi ptr [ %i.eq, %bb.aa ], [ %.2136198.epil, %bb.z ] ; 2 uses
  %indvars.iv.next251.epil = add nuw nsw i64 %indvars.iv250.epil, 1
  %epil.iter306.next = add i64 %epil.iter306, 1   ; 2 uses
  %epil.iter306.cmp.not = icmp eq i64 %epil.iter306.next, %xtraiter305
  br i1 %epil.iter306.cmp.not, label %.lr.ph205, label %bb.z, !llvm.loop !419

.lr.ph205:                                        ; preds = %bb.ab, %.lr.ph205.unr-lcssa
  %.3.lcssa = phi ptr [ %.3.3, %.lr.ph205.unr-lcssa ], [ %.3.epil, %bb.ab ]
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.dq
  %.pre275.a = load float, ptr %.phi.trans.insert, align 4, !tbaa !138
  store i32 -1, ptr %.3.lcssa, align 4, !tbaa !13
  %i.es = fpext float %.2131.lcssa to double
  %i.et = fmul double %i.es, 5.000000e-01         ; 2 uses
  %i.eu = sext i32 %.2128.lcssa to i64            ; 5 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.eu ; 2 uses
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !138
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv266
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !142
  %i.ez = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %.pre275.a, i64 1
  %i.fb = fpext <2 x float> %i.fa to <2 x double>
  %i.fc = insertelement <2 x double> poison, double %i.et, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = fsub <2 x double> %i.fd, %i.fb
  store <2 x double> %i.fe, ptr %i.ey, align 8, !tbaa !140
  %i.ff = fptrunc double %i.et to float
  store float %i.ff, ptr %i.ev, align 4, !tbaa !138
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.dq ; 3 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.eu ; 3 uses
  br label %bb.ac

.lr.ph207.unr-lcssa:                              ; preds = %bb.ac
  br i1 %lcmp.mod315.not, label %.lr.ph207, label %.epil.preheader312

.epil.preheader312:                               ; preds = %.lr.ph207.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod316)
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !132
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %indvars.iv.next256.1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !128
  %i.fl = icmp sgt i8 %i.fk, 0
  %i.fm = zext i1 %i.fl to i8
  %i.fn = load ptr, ptr %i.fh, align 8, !tbaa !132
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %indvars.iv.next256.1 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !128
  %i.fq = add i8 %i.fp, %i.fm
  store i8 %i.fq, ptr %i.fo, align 1, !tbaa !128
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.unr-lcssa, %.epil.preheader312
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.dq ; 5 uses
  br i1 %i.bd, label %.epil.preheader319, label %.lr.ph207.new

bb.ac:                                            ; preds = %bb.ac, %.lr.ph205
  %indvars.iv255 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next256.1, %bb.ac ] ; 4 uses
  %niter318 = phi i64 [ 0, %.lr.ph205 ], [ %niter318.next.1, %bb.ac ]
  %i.fs = load ptr, ptr %i.fg, align 8, !tbaa !132
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv255
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !128
  %i.fv = icmp sgt i8 %i.fu, 0
  %i.fw = zext i1 %i.fv to i8
  %i.fx = load ptr, ptr %i.fh, align 8, !tbaa !132
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %indvars.iv255 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !128
  %i.ga = add i8 %i.fz, %i.fw
  store i8 %i.ga, ptr %i.fy, align 1, !tbaa !128
  %indvars.iv.next256 = or disjoint i64 %indvars.iv255, 1 ; 2 uses
  %i.gb = load ptr, ptr %i.fg, align 8, !tbaa !132
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv.next256
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !128
  %i.ge = icmp sgt i8 %i.gd, 0
  %i.gf = zext i1 %i.ge to i8
  %i.gg = load ptr, ptr %i.fh, align 8, !tbaa !132
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv.next256 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !128
  %i.gj = add i8 %i.gi, %i.gf
  store i8 %i.gj, ptr %i.gh, align 1, !tbaa !128
  %indvars.iv.next256.1 = add nuw nsw i64 %indvars.iv255, 2 ; 3 uses
  %niter318.next.1 = add i64 %niter318, 2         ; 2 uses
  %niter318.ncmp.1 = icmp eq i64 %niter318.next.1, %unroll_iter317
  br i1 %niter318.ncmp.1, label %.lr.ph207.unr-lcssa, label %bb.ac, !llvm.loop !420

.lr.ph210.unr-lcssa:                              ; preds = %.lr.ph207.new
  br i1 %lcmp.mod322.not, label %.lr.ph210, label %.epil.preheader319

.epil.preheader319:                               ; preds = %.lr.ph210.unr-lcssa, %.lr.ph207
  %indvars.iv260.epil.init = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next261.3, %.lr.ph210.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod323)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader319
  %indvars.iv260.epil = phi i64 [ %indvars.iv260.epil.init, %.epil.preheader319 ], [ %indvars.iv.next261.epil, %bb.ad ] ; 2 uses
  %epil.iter321 = phi i64 [ 0, %.epil.preheader319 ], [ %epil.iter321.next, %bb.ad ]
  %i.gk = load ptr, ptr %i.fr, align 8, !tbaa !132
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %indvars.iv260.epil
  store i8 0, ptr %i.gl, align 1, !tbaa !128
  %indvars.iv.next261.epil = add nuw nsw i64 %indvars.iv260.epil, 1
  %epil.iter321.next = add i64 %epil.iter321, 1   ; 2 uses
  %epil.iter321.cmp.not = icmp eq i64 %epil.iter321.next, %xtraiter320
  br i1 %epil.iter321.cmp.not, label %.lr.ph210, label %bb.ad, !llvm.loop !421

.lr.ph210:                                        ; preds = %bb.ad, %.lr.ph210.unr-lcssa
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.eu
  br label %bb.ae

.lr.ph207.new:                                    ; preds = %.lr.ph207, %.lr.ph207.new
  %indvars.iv260 = phi i64 [ %indvars.iv.next261.3, %.lr.ph207.new ], [ 0, %.lr.ph207 ] ; 5 uses
  %niter325 = phi i64 [ %niter325.next.3, %.lr.ph207.new ], [ 0, %.lr.ph207 ]
  %i.gn = load ptr, ptr %i.fr, align 8, !tbaa !132
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %indvars.iv260
  store i8 0, ptr %i.go, align 1, !tbaa !128
  %i.gp = load ptr, ptr %i.fr, align 8, !tbaa !132
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv260
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  store i8 0, ptr %i.gr, align 1, !tbaa !128
  %i.gs = load ptr, ptr %i.fr, align 8, !tbaa !132
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %indvars.iv260
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  store i8 0, ptr %i.gu, align 1, !tbaa !128
  %i.gv = load ptr, ptr %i.fr, align 8, !tbaa !132
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %indvars.iv260
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 3
  store i8 0, ptr %i.gx, align 1, !tbaa !128
  %indvars.iv.next261.3 = add nuw nsw i64 %indvars.iv260, 4 ; 2 uses
  %niter325.next.3 = add i64 %niter325, 4         ; 2 uses
  %niter325.ncmp.3 = icmp eq i64 %niter325.next.3, %unroll_iter324
  br i1 %niter325.ncmp.3, label %.lr.ph210.unr-lcssa, label %.lr.ph207.new, !llvm.loop !422

bb.ae:                                            ; preds = %.lr.ph210, %bb.ai
  %.9208 = phi i32 [ 0, %.lr.ph210 ], [ %i.hs, %bb.ai ] ; 8 uses
  %.not153 = icmp eq i32 %.9208, %.2128.lcssa
  %.not154 = icmp eq i32 %.9208, %.2.lcssa
  %or.cond = select i1 %.not153, i1 true, i1 %.not154
  br i1 %or.cond, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gy = icmp slt i32 %.9208, %.2128.lcssa
  br i1 %i.gy, label %._crit_edge276, label %bb.ag

._crit_edge276:                                   ; preds = %bb.af
  %.pre277.a = zext nneg i32 %.9208 to i64        ; 2 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.9..0 = tail call i32 @llvm.smin.i32(i32 %.9208, i32 %.2.lcssa)
  %.0..9 = tail call i32 @llvm.smax.i32(i32 %.9208, i32 %.2.lcssa)
  %.pre271 = zext nneg i32 %.9208 to i64
  %.pre273 = zext nneg i32 %.0..9 to i64
  %.pre279 = sext i32 %.9..0 to i64
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge276, %bb.ag
  %.pre-phi280 = phi i64 [ %.pre277.a, %._crit_edge276 ], [ %.pre279, %bb.ag ]
  %.pre-phi278 = phi i64 [ %.pre277.a, %._crit_edge276 ], [ %i.eu, %bb.ag ]
  %.pre-phi274 = phi i64 [ %i.dq, %._crit_edge276 ], [ %.pre273, %bb.ag ]
  %.pre-phi272 = phi i64 [ %i.eu, %._crit_edge276 ], [ %.pre271, %bb.ag ]
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %.pre-phi278
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !136
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %.pre-phi272 ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !138 ; 3 uses
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %.pre-phi280
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !136
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.he, i64 %.pre-phi274 ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !138 ; 3 uses
  %i.hh = fcmp olt float %i.hc, %i.hg
  %i.hi = select i1 %i.hh, float %i.hc, float %i.hg
  %i.hj = fpext float %i.hi to double
  %i.hk = fadd float %i.hc, %i.hg
  %i.hl = fpext float %i.hk to double
  %i.hm = fmul double %i.hl, 5.000000e-01
  %i.hn = fmul double %i.hm, 1.000000e-01
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hj, double 9.000000e-01, double %i.hn)
  %i.hp = fptrunc double %i.ho to float
  store float %i.hp, ptr %i.hb, align 4, !tbaa !138
  store float 9.999000e+03, ptr %i.hf, align 4, !tbaa !138
  %i.hq = load ptr, ptr %i.gm, align 8, !tbaa !136
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.dq
  store float 9.999000e+03, ptr %i.hr, align 4, !tbaa !138
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah
  %i.hs = add nuw nsw i32 %.9208, 1               ; 2 uses
  %exitcond265.not = icmp eq i32 %i.hs, %0
  br i1 %exitcond265.not, label %._crit_edge211, label %bb.ae, !llvm.loop !423

._crit_edge211:                                   ; preds = %bb.ai
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %._crit_edge214, label %.lr.ph186.preheader, !llvm.loop !424

._crit_edge214:                                   ; preds = %._crit_edge211, %bb.c, %.preheader156
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @spg(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 !guid !444 {
bb.a:
  %i.a = alloca [50000 x double], align 16        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = load i32, ptr @njob, align 4, !tbaa !13  ; 2 uses
  %i.c = tail call ptr @AllocateDoubleMtx(i32 noundef %i.b, i32 noundef %i.b) #33 ; 5 uses
  %i.d = load i32, ptr @njob, align 4, !tbaa !13  ; 2 uses
  %i.e = tail call ptr @AllocateCharMtx(i32 noundef %i.d, i32 noundef %i.d) #33 ; 11 uses
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.preheader201.preheader, label %._crit_edge247

.preheader201.preheader:                          ; preds = %bb.a
  %wide.trip.count252 = zext nneg i32 %0 to i64   ; 19 uses
  %i.g = add nsw i64 %wide.trip.count252, -1      ; 5 uses
  %min.iters.check = icmp ult i32 %0, 4
  %n.vec = and i64 %wide.trip.count252, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count252
  %xtraiter = and i64 %wide.trip.count252, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader201

.preheader201:                                    ; preds = %.preheader201.preheader, %._crit_edge
  %indvars.iv249 = phi i64 [ 0, %.preheader201.preheader ], [ %indvars.iv.next250, %._crit_edge ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv249
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !142  ; 7 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv249
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !142  ; 7 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = ptrtoaddr ptr %i.i to i64
  %i.n = sub i64 %i.m, %i.l
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond318 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond318, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader201, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader201 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !140
  %wide.load315 = load <2 x double>, ptr %i.p, align 8, !tbaa !140
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x double> %wide.load, ptr %i.q, align 8, !tbaa !140
  store <2 x double> %wide.load315, ptr %i.r, align 8, !tbaa !140
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !426

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader201, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader201 ], [ %n.vec, %middle.block ] ; 3 uses
  %i.t = sub nsw i64 %i.g, %indvars.iv.ph
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.prol
  %i.v = load double, ptr %i.u, align 8, !tbaa !140
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.prol
  store double %i.v, ptr %i.w, align 8, !tbaa !140
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !427

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.x = icmp ult i64 %i.t, 3
  br i1 %i.x, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.z = load double, ptr %i.y, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double %i.z, ptr %i.aa, align 8, !tbaa !140
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !140
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  store double %i.ac, ptr %i.ad, align 8, !tbaa !140
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.af = load double, ptr %i.ae, align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.1
  store double %i.af, ptr %i.ag, align 8, !tbaa !140
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !140
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.2
  store double %i.ai, ptr %i.aj, align 8, !tbaa !140
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count252
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !428

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %.preheader198.preheader, label %.preheader201, !llvm.loop !429

.preheader198.preheader:                          ; preds = %._crit_edge
  %i.ak = zext nneg i32 %0 to i64
  %i.al = shl nuw nsw i64 %i.ak, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.al, i1 false), !tbaa !140
  %wide.trip.count265 = zext nneg i32 %0 to i64
  %xtraiter319 = and i64 %wide.trip.count252, 3   ; 3 uses
  %i.am = icmp ult i32 %0, 4
  %unroll_iter = and i64 %wide.trip.count252, 2147483644
  %lcmp.mod320.not = icmp eq i64 %xtraiter319, 0
  %lcmp.mod321 = icmp ne i64 %xtraiter319, 0
  br label %.preheader198

.preheader198:                                    ; preds = %.preheader198.preheader, %._crit_edge207
  %indvars.iv262 = phi i64 [ 0, %.preheader198.preheader ], [ %indvars.iv.next263, %._crit_edge207 ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv262 ; 5 uses
  br i1 %i.am, label %.epil.preheader, label %.preheader198.new

.lr.ph210.preheader:                              ; preds = %._crit_edge207
  %xtraiter322 = and i64 %wide.trip.count252, 3   ; 3 uses
  %i.ao = icmp ult i32 %0, 4
  br i1 %i.ao, label %.lr.ph210.epil.preheader, label %.lr.ph210.preheader.new

.lr.ph210.preheader.new:                          ; preds = %.lr.ph210.preheader
  %unroll_iter326 = and i64 %wide.trip.count252, 2147483644
  br label %.lr.ph210

.preheader198.new:                                ; preds = %.preheader198, %.preheader198.new
  %indvars.iv257 = phi i64 [ %indvars.iv.next258.3, %.preheader198.new ], [ 0, %.preheader198 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader198.new ], [ 0, %.preheader198 ]
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !132
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv257
  store i8 0, ptr %i.aq, align 1, !tbaa !128
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !132
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv257
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 0, ptr %i.at, align 1, !tbaa !128
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !132
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv257
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 0, ptr %i.aw, align 1, !tbaa !128
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !132
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv257
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  store i8 0, ptr %i.az, align 1, !tbaa !128
  %indvars.iv.next258.3 = add nuw nsw i64 %indvars.iv257, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge207.unr-lcssa, label %.preheader198.new, !llvm.loop !430

._crit_edge207.unr-lcssa:                         ; preds = %.preheader198.new
  br i1 %lcmp.mod320.not, label %._crit_edge207, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge207.unr-lcssa, %.preheader198
  %indvars.iv257.epil.init = phi i64 [ 0, %.preheader198 ], [ %indvars.iv.next258.3, %._crit_edge207.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod321)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv257.epil = phi i64 [ %indvars.iv257.epil.init, %.epil.preheader ], [ %indvars.iv.next258.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !132
end_hunk_0
