Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes?download=true
inline.NumInlined: 74
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 55
begin_hunk_0_@CVodeQuadSensFree:bb.a
  %.not10 = icmp eq ptr %i.bn, null
  br i1 %.not10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.bn) #13
  store ptr null, ptr %i.bm, align 8, !tbaa !222
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a
  ret void
}

declare void @CVodeAdjFree(ptr noundef) local_unnamed_addr #4

declare i32 @cvProjFree(ptr noundef) local_unnamed_addr #4

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @cvRescale(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 15 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !262
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 8 uses
  store double %i.b, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !105  ; 4 uses
  %.not114 = icmp slt i32 %i.f, 1
  br i1 %.not114, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %load_initial = load double, ptr %i.d, align 8  ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.h = icmp ult i32 %i.f, 4
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.i = load double, ptr %i.a, align 8, !tbaa !262
  %i.j = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.k = fmul double %i.i, %store_forwarded       ; 2 uses
  store double %i.k, ptr %i.j, align 8, !tbaa !29
  %i.l = load double, ptr %i.a, align 8, !tbaa !262
  %i.m = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = fmul double %i.l, %i.k                   ; 2 uses
  store double %i.o, ptr %i.n, align 8, !tbaa !29
  %i.p = load double, ptr %i.a, align 8, !tbaa !262
  %i.q = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = fmul double %i.p, %i.o                   ; 2 uses
  store double %i.s, ptr %i.r, align 8, !tbaa !29
  %i.t = load double, ptr %i.a, align 8, !tbaa !262
  %i.u = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = fmul double %i.t, %i.s                   ; 3 uses
  store double %i.w, ptr %i.v, align 8, !tbaa !29
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod231 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod231)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %store_forwarded.epil = phi double [ %store_forwarded.epil.init, %.lr.ph.epil.preheader ], [ %i.z, %.lr.ph.epil ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.x = load double, ptr %i.a, align 8, !tbaa !262
  %i.y = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.epil
  %i.z = fmul double %i.x, %store_forwarded.epil  ; 2 uses
  store double %i.z, ptr %i.y, align 8, !tbaa !29
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !381

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ab = tail call i32 @N_VScaleVectorArray(i32 noundef %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.aa) #13 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !148
  %.not97 = icmp eq i32 %i.ad, 0
  br i1 %.not97, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ae = load i32, ptr %i.e, align 8, !tbaa !105
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.ah = tail call i32 @N_VScaleVectorArray(i32 noundef %i.ae, ptr noundef %i.af, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ag) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !172
  %.not98 = icmp eq i32 %i.aj, 0                  ; 2 uses
  br i1 %.not98, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !212
  %.not99 = icmp eq i32 %i.al, 0
  br i1 %.not99, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.an = load i32, ptr %i.am, align 8, !tbaa !156 ; 10 uses
  %i.ao = icmp sgt i32 %i.an, 0                   ; 2 uses
  br i1 %i.ao, label %.lr.ph118, label %.preheader109.thread

.preheader109.thread:                             ; preds = %bb.e
  %i.ap = load i32, ptr %i.e, align 8, !tbaa !105
  br label %._crit_edge125.split

.lr.ph118:                                        ; preds = %bb.e
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %wide.trip.count144 = zext nneg i32 %i.an to i64 ; 7 uses
  %.pre = load double, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %min.iters.check = icmp ult i32 %i.an, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph118
  %n.vec = and i64 %wide.trip.count144, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ar, align 8, !tbaa !29
  store <2 x double> %broadcast.splat, ptr %i.as, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !382

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count144
  br i1 %cmp.n, label %.preheader109, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph118, %middle.block
  %indvars.iv141.ph = phi i64 [ 0, %.lr.ph118 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader109:                                    ; preds = %scalar.ph, %middle.block
  %i.au = load i32, ptr %i.e, align 8, !tbaa !105 ; 4 uses
  %.not100123 = icmp sgt i32 %i.au, 0
  br i1 %.not100123, label %.preheader108.lr.ph.split, label %._crit_edge125.split

.preheader108.lr.ph.split:                        ; preds = %.preheader109
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !100 ; 4 uses
  %i.aw = zext nneg i32 %i.an to i64              ; 4 uses
  %i.ax = add nuw i32 %i.au, 1
  %wide.trip.count154 = zext i32 %i.ax to i64     ; 2 uses
  %wide.trip.count149 = zext nneg i32 %i.an to i64
  %i.ay = shl nuw nsw i64 %wide.trip.count144, 3
  %scevgep = getelementptr nuw i8, ptr %i.av, i64 %i.ay
  %i.az = mul nuw nsw i64 %wide.trip.count144, %wide.trip.count154
  %i.ba = shl i64 %i.az, 3
  %scevgep187 = getelementptr i8, ptr %i.av, i64 %i.ba
  %scevgep188 = getelementptr i8, ptr %0, i64 1024
  %min.iters.check190 = icmp ult i32 %i.an, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep188
  %bound1 = icmp ult ptr %i.a, %scevgep187
  %found.conflict = and i1 %bound0, %bound1
  %n.vec192 = and i64 %wide.trip.count144, 2147483644 ; 3 uses
  %cmp.n200 = icmp eq i64 %n.vec192, %wide.trip.count144
  %xtraiter232 = and i64 %i.aw, 3                 ; 2 uses
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br label %.preheader108

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph ], [ %indvars.iv141.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv141
  store double %.pre, ptr %i.bb, align 8, !tbaa !29
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %.preheader109, label %scalar.ph, !llvm.loop !383

.preheader108:                                    ; preds = %.preheader108.lr.ph.split, %._crit_edge122
  %indvars.iv151 = phi i64 [ 1, %.preheader108.lr.ph.split ], [ %indvars.iv.next152, %._crit_edge122 ] ; 3 uses
  %i.bc = add nsw i64 %indvars.iv151, -1
  %i.bd = mul nuw nsw i64 %i.bc, %i.aw
  %i.be = mul nuw nsw i64 %indvars.iv151, %i.aw
  %invariant.gep = getelementptr [8 x i8], ptr %i.av, i64 %i.bd ; 6 uses
  %invariant.gep185 = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.be ; 6 uses
  %brmerge = select i1 %min.iters.check190, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph189.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %.preheader108
  %i.bf = load double, ptr %i.a, align 8, !tbaa !262, !alias.scope !384
  %broadcast.splatinsert196 = insertelement <2 x double> poison, double %i.bf, i64 0
  %broadcast.splat197 = shufflevector <2 x double> %broadcast.splatinsert196, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next198, %vector.body193 ] ; 3 uses
  %i.bg = getelementptr [8 x i8], ptr %invariant.gep, i64 %index194 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %wide.load = load <2 x double>, ptr %i.bg, align 8, !tbaa !29, !alias.scope !387
  %wide.load195 = load <2 x double>, ptr %i.bh, align 8, !tbaa !29, !alias.scope !387
  %i.bi = fmul <2 x double> %broadcast.splat197, %wide.load
  %i.bj = fmul <2 x double> %broadcast.splat197, %wide.load195
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep185, i64 %index194 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <2 x double> %i.bi, ptr %i.bk, align 8, !tbaa !29, !alias.scope !389, !noalias !384
  store <2 x double> %i.bj, ptr %i.bl, align 8, !tbaa !29, !alias.scope !389, !noalias !384
  %index.next198 = add nuw i64 %index194, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next198, %n.vec192
  br i1 %i.bm, label %middle.block199, label %vector.body193, !llvm.loop !391

middle.block199:                                  ; preds = %vector.body193
  br i1 %cmp.n200, label %._crit_edge122, label %scalar.ph189.preheader

scalar.ph189.preheader:                           ; preds = %.preheader108, %middle.block199
  %indvars.iv146.ph = phi i64 [ %n.vec192, %middle.block199 ], [ 0, %.preheader108 ] ; 3 uses
  br i1 %lcmp.mod233.not, label %scalar.ph189.prol.loopexit, label %scalar.ph189.prol

scalar.ph189.prol:                                ; preds = %scalar.ph189.preheader, %scalar.ph189.prol
  %indvars.iv146.prol = phi i64 [ %indvars.iv.next147.prol, %scalar.ph189.prol ], [ %indvars.iv146.ph, %scalar.ph189.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph189.prol ], [ 0, %scalar.ph189.preheader ]
  %i.bn = load double, ptr %i.a, align 8, !tbaa !262
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv146.prol
  %i.bo = load double, ptr %gep.prol, align 8, !tbaa !29
  %i.bp = fmul double %i.bn, %i.bo
  %gep186.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep185, i64 %indvars.iv146.prol
  store double %i.bp, ptr %gep186.prol, align 8, !tbaa !29
  %indvars.iv.next147.prol = add nuw nsw i64 %indvars.iv146.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter232
  br i1 %prol.iter.cmp.not, label %scalar.ph189.prol.loopexit, label %scalar.ph189.prol, !llvm.loop !392

scalar.ph189.prol.loopexit:                       ; preds = %scalar.ph189.prol, %scalar.ph189.preheader
  %indvars.iv146.unr = phi i64 [ %indvars.iv146.ph, %scalar.ph189.preheader ], [ %indvars.iv.next147.prol, %scalar.ph189.prol ]
  %i.bq = sub nsw i64 %indvars.iv146.ph, %i.aw
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %._crit_edge122, label %scalar.ph189

scalar.ph189:                                     ; preds = %scalar.ph189.prol.loopexit, %scalar.ph189
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.3, %scalar.ph189 ], [ %indvars.iv146.unr, %scalar.ph189.prol.loopexit ] ; 6 uses
  %i.bs = load double, ptr %i.a, align 8, !tbaa !262
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv146
  %i.bt = load double, ptr %gep, align 8, !tbaa !29
  %i.bu = fmul double %i.bs, %i.bt
  %gep186 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep185, i64 %indvars.iv146
  store double %i.bu, ptr %gep186, align 8, !tbaa !29
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.bv = load double, ptr %i.a, align 8, !tbaa !262
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next147
  %i.bw = load double, ptr %gep.1, align 8, !tbaa !29
  %i.bx = fmul double %i.bv, %i.bw
  %gep186.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep185, i64 %indvars.iv.next147
  store double %i.bx, ptr %gep186.1, align 8, !tbaa !29
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %i.by = load double, ptr %i.a, align 8, !tbaa !262
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next147.1
  %i.bz = load double, ptr %gep.2, align 8, !tbaa !29
  %i.ca = fmul double %i.by, %i.bz
  %gep186.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep185, i64 %indvars.iv.next147.1
  store double %i.ca, ptr %gep186.2, align 8, !tbaa !29
  %indvars.iv.next147.2 = add nuw nsw i64 %indvars.iv146, 3 ; 2 uses
  %i.cb = load double, ptr %i.a, align 8, !tbaa !262
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next147.2
  %i.cc = load double, ptr %gep.3, align 8, !tbaa !29
  %i.cd = fmul double %i.cb, %i.cc
  %gep186.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep185, i64 %indvars.iv.next147.2
  store double %i.cd, ptr %gep186.3, align 8, !tbaa !29
  %indvars.iv.next147.3 = add nuw nsw i64 %indvars.iv146, 4 ; 2 uses
  %exitcond150.not.3 = icmp eq i64 %indvars.iv.next147.3, %wide.trip.count149
  br i1 %exitcond150.not.3, label %._crit_edge122, label %scalar.ph189, !llvm.loop !393

._crit_edge122:                                   ; preds = %scalar.ph189.prol.loopexit, %scalar.ph189, %middle.block199
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge125.split, label %.preheader108

._crit_edge125.split:                             ; preds = %._crit_edge122, %.preheader109.thread, %.preheader109
  %i.ce = phi i32 [ %i.ap, %.preheader109.thread ], [ %i.au, %.preheader109 ], [ %i.au, %._crit_edge122 ] ; 3 uses
  br i1 %.not98, label %.thread, label %.preheader107

.preheader107:                                    ; preds = %._crit_edge125.split
  %.not102129 = icmp slt i32 %i.ce, 1
  br i1 %.not102129, label %._crit_edge131.split, label %.preheader106.lr.ph

.preheader106.lr.ph:                              ; preds = %.preheader107
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 648
  br i1 %i.ao, label %.preheader106.lr.ph.split, label %._crit_edge131.split

.preheader106.lr.ph.split:                        ; preds = %.preheader106.lr.ph
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !101 ; 2 uses
  %i.ci = ptrtoaddr ptr %i.ch to i64
  %i.cj = zext nneg i32 %i.an to i64
  %i.ck = add nuw i32 %i.ce, 1
  %wide.trip.count164 = zext i32 %i.ck to i64
  %wide.trip.count159 = zext nneg i32 %i.an to i64 ; 6 uses
  %i.cl = shl nuw nsw i64 %wide.trip.count159, 3
  %min.iters.check204 = icmp ult i32 %i.an, 4
  %n.vec206 = and i64 %wide.trip.count159, 2147483644 ; 3 uses
  %cmp.n213 = icmp eq i64 %n.vec206, %wide.trip.count159
  %xtraiter234 = and i64 %wide.trip.count159, 3   ; 2 uses
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  br label %.preheader106

.preheader106:                                    ; preds = %.preheader106.lr.ph.split, %._crit_edge128
  %indvar = phi i64 [ 0, %.preheader106.lr.ph.split ], [ %indvar.next, %._crit_edge128 ] ; 2 uses
  %indvars.iv161 = phi i64 [ 1, %.preheader106.lr.ph.split ], [ %indvars.iv.next162, %._crit_edge128 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv161
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !164 ; 7 uses
  %i.co = add nsw i64 %indvars.iv161, -1
  %i.cp = mul nuw nsw i64 %i.co, %i.cj
  %i.cq = getelementptr [8 x i8], ptr %i.ch, i64 %i.cp ; 6 uses
  br i1 %min.iters.check204, label %scalar.ph203.preheader, label %vector.memcheck202

vector.memcheck202:                               ; preds = %.preheader106
  %i.cr = ptrtoaddr ptr %i.cn to i64
  %i.cs = mul i64 %i.cl, %indvar
  %i.ct = add i64 %i.cs, %i.ci
  %i.cu = sub i64 %i.cr, %i.ct
  %diff.check = icmp ugt i64 %i.cu, -32
  br i1 %diff.check, label %scalar.ph203.preheader, label %vector.body207

vector.body207:                                   ; preds = %vector.memcheck202, %vector.body207
  %index208 = phi i64 [ %index.next211, %vector.body207 ], [ 0, %vector.memcheck202 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index208 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load209 = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !63
  %wide.load210 = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !63
  %i.cx = getelementptr [8 x i8], ptr %i.cq, i64 %index208 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  store <2 x ptr> %wide.load209, ptr %i.cx, align 8, !tbaa !63
  store <2 x ptr> %wide.load210, ptr %i.cy, align 8, !tbaa !63
  %index.next211 = add nuw i64 %index208, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next211, %n.vec206
  br i1 %i.cz, label %middle.block212, label %vector.body207, !llvm.loop !394

middle.block212:                                  ; preds = %vector.body207
  br i1 %cmp.n213, label %._crit_edge128, label %scalar.ph203.preheader

scalar.ph203.preheader:                           ; preds = %vector.memcheck202, %.preheader106, %middle.block212
  %indvars.iv156.ph = phi i64 [ 0, %vector.memcheck202 ], [ 0, %.preheader106 ], [ %n.vec206, %middle.block212 ] ; 3 uses
  br i1 %lcmp.mod235.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol

scalar.ph203.prol:                                ; preds = %scalar.ph203.preheader, %scalar.ph203.prol
  %indvars.iv156.prol = phi i64 [ %indvars.iv.next157.prol, %scalar.ph203.prol ], [ %indvars.iv156.ph, %scalar.ph203.preheader ] ; 3 uses
  %prol.iter236 = phi i64 [ %prol.iter236.next, %scalar.ph203.prol ], [ 0, %scalar.ph203.preheader ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv156.prol
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !63
  %i.dc = getelementptr [8 x i8], ptr %i.cq, i64 %indvars.iv156.prol
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !63
  %indvars.iv.next157.prol = add nuw nsw i64 %indvars.iv156.prol, 1 ; 2 uses
  %prol.iter236.next = add i64 %prol.iter236, 1   ; 2 uses
  %prol.iter236.cmp.not = icmp eq i64 %prol.iter236.next, %xtraiter234
  br i1 %prol.iter236.cmp.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol, !llvm.loop !395

scalar.ph203.prol.loopexit:                       ; preds = %scalar.ph203.prol, %scalar.ph203.preheader
  %indvars.iv156.unr = phi i64 [ %indvars.iv156.ph, %scalar.ph203.preheader ], [ %indvars.iv.next157.prol, %scalar.ph203.prol ]
  %i.dd = sub nsw i64 %indvars.iv156.ph, %wide.trip.count159
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %._crit_edge128, label %scalar.ph203

scalar.ph203:                                     ; preds = %scalar.ph203.prol.loopexit, %scalar.ph203
  %indvars.iv156 = phi i64 [ %indvars.iv.next157.3, %scalar.ph203 ], [ %indvars.iv156.unr, %scalar.ph203.prol.loopexit ] ; 6 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv156
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !63
  %i.dh = getelementptr [8 x i8], ptr %i.cq, i64 %indvars.iv156
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !63
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.next157
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !63
  %i.dk = getelementptr [8 x i8], ptr %i.cq, i64 %indvars.iv.next157
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !63
  %indvars.iv.next157.1 = add nuw nsw i64 %indvars.iv156, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.next157.1
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !63
  %i.dn = getelementptr [8 x i8], ptr %i.cq, i64 %indvars.iv.next157.1
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !63
  %indvars.iv.next157.2 = add nuw nsw i64 %indvars.iv156, 3 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.next157.2
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !63
  %i.dq = getelementptr [8 x i8], ptr %i.cq, i64 %indvars.iv.next157.2
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !63
  %indvars.iv.next157.3 = add nuw nsw i64 %indvars.iv156, 4 ; 2 uses
  %exitcond160.not.3 = icmp eq i64 %indvars.iv.next157.3, %wide.trip.count159
  br i1 %exitcond160.not.3, label %._crit_edge128, label %scalar.ph203, !llvm.loop !396

._crit_edge128:                                   ; preds = %scalar.ph203.prol.loopexit, %scalar.ph203, %middle.block212
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond165.not, label %._crit_edge131.split, label %.preheader106

._crit_edge131.split:                             ; preds = %._crit_edge128, %.preheader106.lr.ph, %.preheader107
  %i.dr = mul nsw i32 %i.an, %i.ce
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !101 ; 2 uses
  %i.dv = tail call i32 @N_VScaleVectorArray(i32 noundef %i.dr, ptr noundef %i.ds, ptr noundef %i.du, ptr noundef %i.du) #13 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.d, %._crit_edge131.split, %._crit_edge125.split
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !212
  %.not103 = icmp eq i32 %i.dx, 0
  br i1 %.not103, label %bb.f, label %.preheader105

.preheader105:                                    ; preds = %.thread
  %i.dy = load i32, ptr %i.e, align 8, !tbaa !105 ; 3 uses
  %.not104136 = icmp slt i32 %i.dy, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre176 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !156 ; 5 uses
  br i1 %.not104136, label %._crit_edge138.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader105
  %i.dz = icmp sgt i32 %.pre176, 0
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 800
  br i1 %i.dz, label %.preheader.lr.ph.split, label %._crit_edge138.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !101 ; 2 uses
  %i.ed = ptrtoaddr ptr %i.ec to i64
  %i.ee = zext nneg i32 %.pre176 to i64
  %i.ef = add nuw i32 %i.dy, 1
  %wide.trip.count174 = zext i32 %i.ef to i64
  %wide.trip.count169 = zext nneg i32 %.pre176 to i64 ; 6 uses
  %i.eg = shl nuw nsw i64 %wide.trip.count169, 3
  %min.iters.check220 = icmp ult i32 %.pre176, 4
  %n.vec222 = and i64 %wide.trip.count169, 2147483644 ; 3 uses
  %cmp.n229 = icmp eq i64 %n.vec222, %wide.trip.count169
  %xtraiter237 = and i64 %wide.trip.count169, 3   ; 2 uses
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge135
  %indvar216 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next217, %._crit_edge135 ] ; 2 uses
  %indvars.iv171 = phi i64 [ 1, %.preheader.lr.ph.split ], [ %indvars.iv.next172, %._crit_edge135 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv171
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !164 ; 7 uses
  %i.ej = add nsw i64 %indvars.iv171, -1
  %i.ek = mul nuw nsw i64 %i.ej, %i.ee
  %i.el = getelementptr [8 x i8], ptr %i.ec, i64 %i.ek ; 6 uses
  br i1 %min.iters.check220, label %scalar.ph219.preheader, label %vector.memcheck215

vector.memcheck215:                               ; preds = %.preheader
  %i.em = ptrtoaddr ptr %i.ei to i64
  %i.en = mul i64 %i.eg, %indvar216
  %i.eo = add i64 %i.en, %i.ed
  %i.ep = sub i64 %i.em, %i.eo
  %diff.check218 = icmp ugt i64 %i.ep, -32
  br i1 %diff.check218, label %scalar.ph219.preheader, label %vector.body223

vector.body223:                                   ; preds = %vector.memcheck215, %vector.body223
  %index224 = phi i64 [ %index.next227, %vector.body223 ], [ 0, %vector.memcheck215 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %index224 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load225 = load <2 x ptr>, ptr %i.eq, align 8, !tbaa !63
  %wide.load226 = load <2 x ptr>, ptr %i.er, align 8, !tbaa !63
  %i.es = getelementptr [8 x i8], ptr %i.el, i64 %index224 ; 2 uses
  %i.et = getelementptr i8, ptr %i.es, i64 16
  store <2 x ptr> %wide.load225, ptr %i.es, align 8, !tbaa !63
  store <2 x ptr> %wide.load226, ptr %i.et, align 8, !tbaa !63
  %index.next227 = add nuw i64 %index224, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next227, %n.vec222
  br i1 %i.eu, label %middle.block228, label %vector.body223, !llvm.loop !397

middle.block228:                                  ; preds = %vector.body223
  br i1 %cmp.n229, label %._crit_edge135, label %scalar.ph219.preheader

scalar.ph219.preheader:                           ; preds = %vector.memcheck215, %.preheader, %middle.block228
  %indvars.iv166.ph = phi i64 [ 0, %vector.memcheck215 ], [ 0, %.preheader ], [ %n.vec222, %middle.block228 ] ; 3 uses
  br i1 %lcmp.mod238.not, label %scalar.ph219.prol.loopexit, label %scalar.ph219.prol

scalar.ph219.prol:                                ; preds = %scalar.ph219.preheader, %scalar.ph219.prol
  %indvars.iv166.prol = phi i64 [ %indvars.iv.next167.prol, %scalar.ph219.prol ], [ %indvars.iv166.ph, %scalar.ph219.preheader ] ; 3 uses
  %prol.iter239 = phi i64 [ %prol.iter239.next, %scalar.ph219.prol ], [ 0, %scalar.ph219.preheader ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv166.prol
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !63
  %i.ex = getelementptr [8 x i8], ptr %i.el, i64 %indvars.iv166.prol
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !63
  %indvars.iv.next167.prol = add nuw nsw i64 %indvars.iv166.prol, 1 ; 2 uses
  %prol.iter239.next = add i64 %prol.iter239, 1   ; 2 uses
  %prol.iter239.cmp.not = icmp eq i64 %prol.iter239.next, %xtraiter237
  br i1 %prol.iter239.cmp.not, label %scalar.ph219.prol.loopexit, label %scalar.ph219.prol, !llvm.loop !398

scalar.ph219.prol.loopexit:                       ; preds = %scalar.ph219.prol, %scalar.ph219.preheader
  %indvars.iv166.unr = phi i64 [ %indvars.iv166.ph, %scalar.ph219.preheader ], [ %indvars.iv.next167.prol, %scalar.ph219.prol ]
  %i.ey = sub nsw i64 %indvars.iv166.ph, %wide.trip.count169
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %._crit_edge135, label %scalar.ph219

scalar.ph219:                                     ; preds = %scalar.ph219.prol.loopexit, %scalar.ph219
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.3, %scalar.ph219 ], [ %indvars.iv166.unr, %scalar.ph219.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv166
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !63
  %i.fc = getelementptr [8 x i8], ptr %i.el, i64 %indvars.iv166
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !63
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next167
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !63
  %i.ff = getelementptr [8 x i8], ptr %i.el, i64 %indvars.iv.next167
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !63
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next167.1
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !63
  %i.fi = getelementptr [8 x i8], ptr %i.el, i64 %indvars.iv.next167.1
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !63
  %indvars.iv.next167.2 = add nuw nsw i64 %indvars.iv166, 3 ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next167.2
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !63
  %i.fl = getelementptr [8 x i8], ptr %i.el, i64 %indvars.iv.next167.2
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !63
  %indvars.iv.next167.3 = add nuw nsw i64 %indvars.iv166, 4 ; 2 uses
  %exitcond170.not.3 = icmp eq i64 %indvars.iv.next167.3, %wide.trip.count169
  br i1 %exitcond170.not.3, label %._crit_edge135, label %scalar.ph219, !llvm.loop !399

._crit_edge135:                                   ; preds = %scalar.ph219.prol.loopexit, %scalar.ph219, %middle.block228
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count174
  %indvar.next217 = add i64 %indvar216, 1
  br i1 %exitcond175.not, label %._crit_edge138.split, label %.preheader

._crit_edge138.split:                             ; preds = %._crit_edge135, %.preheader105, %.preheader.lr.ph
  %i.fm = mul nsw i32 %.pre176, %i.dy
  %i.fn = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !101 ; 2 uses
  %i.fq = tail call i32 @N_VScaleVectorArray(i32 noundef %i.fm, ptr noundef %i.fn, ptr noundef %i.fp, ptr noundef %i.fp) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge138.split, %.thread
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !253
  %i.ft = load double, ptr %i.a, align 8, !tbaa !262
  %i.fu = fmul double %i.fs, %i.ft                ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 992
  store double %i.fu, ptr %i.fv, align 8, !tbaa !250
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store double %i.fu, ptr %i.fw, align 8, !tbaa !123
  store double %i.fu, ptr %i.fr, align 8, !tbaa !253
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2400
  store i32 0, ptr %i.fx, align 8, !tbaa !120
  ret void
}

; Function Attrs: nounwind uwtable
define void @cvRestore(ptr nofree noundef captures(none) initializes((1032, 1040)) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store double %1, ptr %i.a, align 8, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !105  ; 3 uses
  %.not85 = icmp slt i32 %i.c, 1
  br i1 %.not85, label %._crit_edge, label %.preheader83.lr.ph

.preheader83.lr.ph:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  br label %.preheader83

.preheader83:                                     ; preds = %.preheader83.lr.ph, %bb.c
  %indvars.iv97 = phi i64 [ 1, %.preheader83.lr.ph ], [ %indvars.iv.next98, %bb.c ] ; 3 uses
  %i.e = phi i32 [ %i.c, %.preheader83.lr.ph ], [ %i.k, %bb.c ]
  %i.f = sext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader83, %bb.b
  %indvars.iv = phi i64 [ %i.f, %.preheader83 ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !63
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.i, double noundef -1.000000e+00, ptr noundef %i.j, ptr noundef %i.i) #13
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not75.not = icmp sgt i64 %indvars.iv, %indvars.iv97
  br i1 %.not75.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %i.k = load i32, ptr %i.b, align 8, !tbaa !105  ; 3 uses
  %i.l = sext i32 %i.k to i64
  %.not.not = icmp slt i64 %indvars.iv97, %i.l
  br i1 %.not.not, label %.preheader83, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.m = phi i32 [ %i.c, %bb.a ], [ %i.k, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !148
  %.not66 = icmp eq i32 %i.o, 0
  %.not6788 = icmp slt i32 %i.m, 1
  %or.cond = or i1 %.not66, %.not6788
  br i1 %or.cond, label %.loopexit82, label %.preheader80.lr.ph

.preheader80.lr.ph:                               ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 512
  br label %.preheader80

.preheader80:                                     ; preds = %.preheader80.lr.ph, %bb.e
  %indvars.iv103 = phi i64 [ 1, %.preheader80.lr.ph ], [ %indvars.iv.next104, %bb.e ] ; 3 uses
  %i.q = phi i32 [ %i.m, %.preheader80.lr.ph ], [ %i.w, %bb.e ]
  %i.r = sext i32 %i.q to i64
  br label %bb.d

bb.d:                                             ; preds = %.preheader80, %bb.d
  %indvars.iv100 = phi i64 [ %i.r, %.preheader80 ], [ %indvars.iv.next101, %bb.d ] ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv100 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63   ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !63
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.u, double noundef -1.000000e+00, ptr noundef %i.v, ptr noundef %i.u) #13
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, -1
  %.not74.not = icmp sgt i64 %indvars.iv100, %indvars.iv103
  br i1 %.not74.not, label %bb.d, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %i.w = load i32, ptr %i.b, align 8, !tbaa !105  ; 3 uses
  %i.x = sext i32 %i.w to i64
  %.not67.not = icmp slt i64 %indvars.iv103, %i.x
  br i1 %.not67.not, label %.preheader80, label %.loopexit82

.loopexit82:                                      ; preds = %bb.e, %._crit_edge
  %i.y = phi i32 [ %i.m, %._crit_edge ], [ %i.w, %bb.e ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !172
  %.not68 = icmp eq i32 %i.aa, 0
  %.not6991 = icmp slt i32 %i.y, 1
  %or.cond125 = or i1 %.not68, %.not6991
  br i1 %or.cond125, label %.loopexit79, label %.preheader77.lr.ph

.preheader77.lr.ph:                               ; preds = %.loopexit82
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %.preheader77

.preheader77:                                     ; preds = %.preheader77.lr.ph, %bb.g
  %indvars.iv109 = phi i64 [ 1, %.preheader77.lr.ph ], [ %indvars.iv.next110, %bb.g ] ; 3 uses
  %i.ad = phi i32 [ %i.y, %.preheader77.lr.ph ], [ %i.al, %bb.g ]
  %i.ae = sext i32 %i.ad to i64
  br label %bb.f

bb.f:                                             ; preds = %.preheader77, %bb.f
end_hunk_0
