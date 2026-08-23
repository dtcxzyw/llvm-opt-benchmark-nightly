Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_dense?download=true
inline.NumInlined: 8
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@SUNDlsMat_DensePOTRF:bb.a
  %i.ap = add nuw nsw i64 %.03445.i, 1
  br label %SUNDlsMat_densePOTRF.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit.i
  %i.aq = tail call double @sqrt(double noundef %i.an) #6 ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 2
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.f, -2                       ; 3 uses
  %i.ar = add i64 %.03445.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.03445.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.at, align 8, !tbaa !18
  %i.au = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.au, ptr %i.at, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.144.i.ph = phi i64 [ %.03445.i, %.lr.ph.preheader.i ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.144.i = phi i64 [ %i.az, %.lr.ph.i ], [ %.144.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.144.i ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !18
  %i.ay = fdiv double %i.ax, %i.aq
  store double %i.ay, ptr %i.aw, align 8, !tbaa !18
  %i.az = add nuw nsw i64 %.144.i, 1              ; 2 uses
  %exitcond50.not.i = icmp eq i64 %i.az, %i.d
  br i1 %exitcond50.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !78

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %i.ba = add nuw nsw i64 %.03445.i, 1            ; 2 uses
  %exitcond51.not.i = icmp eq i64 %i.ba, %i.d
  br i1 %exitcond51.not.i, label %SUNDlsMat_densePOTRF.exit, label %.lr.ph47.i

SUNDlsMat_densePOTRF.exit:                        ; preds = %._crit_edge.i, %bb.a, %bb.c
  %.036.i = phi i64 [ %i.ap, %bb.c ], [ 0, %bb.a ], [ 0, %._crit_edge.i ]
  ret i64 %.036.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @SUNDlsMat_densePOTRF(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph47, label %.loopexit40

.lr.ph47:                                         ; preds = %bb.a, %._crit_edge
  %.03445 = phi i64 [ %i.aw, %._crit_edge ], [ 0, %bb.a ] ; 17 uses
  %i.b = sub nsw i64 %1, %.03445                  ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03445
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 4 uses
  %.not.not = icmp eq i64 %.03445, 0
  br i1 %.not.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph47
  %xtraiter = and i64 %.03445, 1
  %i.e = icmp eq i64 %.03445, 1
  %unroll_iter = and i64 %.03445, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod59 = trunc i64 %.03445 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.b
  %.03543 = phi i64 [ %i.ah, %bb.b ], [ %.03445, %.preheader.preheader ] ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03543 ; 4 uses
  %.promoted = load double, ptr %i.f, align 8, !tbaa !18 ; 2 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.042 = phi i64 [ %i.y, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %i.g = phi double [ %i.x, %.preheader.new ], [ %.promoted, %.preheader ]
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.042
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.03543
  %i.k = load double, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.03445
  %i.m = load double, ptr %i.l, align 8, !tbaa !18
  %i.n = fneg double %i.k
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.m, double %i.g) ; 2 uses
  store double %i.o, ptr %i.f, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.042
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.03543
  %i.t = load double, ptr %i.s, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.03445
  %i.v = load double, ptr %i.u, align 8, !tbaa !18
  %i.w = fneg double %i.t
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double %i.v, double %i.o) ; 3 uses
  store double %i.x, ptr %i.f, align 8, !tbaa !18
  %i.y = add nuw nsw i64 %.042, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.new

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %bb.b, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %.042.epil.init = phi i64 [ 0, %.preheader ], [ %i.y, %.unr-lcssa ]
  %.epil.init = phi double [ %.promoted, %.preheader ], [ %i.x, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.042.epil.init
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17  ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.03543
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.03445
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  %i.af = fneg double %i.ac
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.ae, double %.epil.init)
  store double %i.ag, ptr %i.f, align 8, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.ah = add nuw nsw i64 %.03543, 1              ; 2 uses
  %exitcond49.not = icmp eq i64 %i.ah, %1
  br i1 %exitcond49.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.b, %.lr.ph47
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03445
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !18 ; 2 uses
  %i.ak = fcmp ugt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.al = add nuw nsw i64 %.03445, 1
  br label %.loopexit40

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.am = tail call double @sqrt(double noundef %i.aj) #6 ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 2
  br i1 %min.iters.check, label %.lr.ph.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, -2                       ; 3 uses
  %i.an = add i64 %.03445, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.am, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03445
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ap, align 8, !tbaa !18
  %i.aq = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.aq, ptr %i.ap, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader57

.lr.ph.preheader57:                               ; preds = %.lr.ph.preheader, %middle.block
  %.144.ph = phi i64 [ %.03445, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader57, %.lr.ph
  %.144 = phi i64 [ %i.av, %.lr.ph ], [ %.144.ph, %.lr.ph.preheader57 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.144 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !18
  %i.au = fdiv double %i.at, %i.am
  store double %i.au, ptr %i.as, align 8, !tbaa !18
  %i.av = add nuw nsw i64 %.144, 1                ; 2 uses
  %exitcond50.not = icmp eq i64 %i.av, %1
  br i1 %exitcond50.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.aw = add nuw nsw i64 %.03445, 1              ; 2 uses
  %exitcond51.not = icmp eq i64 %i.aw, %1
  br i1 %exitcond51.not, label %.loopexit40, label %.lr.ph47

.loopexit40:                                      ; preds = %._crit_edge, %bb.a, %bb.c
  %.036 = phi i64 [ %i.al, %bb.c ], [ 0, %bb.a ], [ 0, %._crit_edge ]
  ret i64 %.036
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_DensePOTRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 8 uses
  %i.e = add i64 %i.d, -1                         ; 5 uses
  %i.f = icmp sgt i64 %i.d, 1                     ; 2 uses
  br i1 %i.f, label %.lr.ph.preheader.i.preheader, label %._crit_edge.i

.lr.ph.preheader.i.preheader:                     ; preds = %bb.a
  %i.g = shl i64 %i.d, 3                          ; 2 uses
  %scevgep4 = getelementptr i8, ptr %1, i64 %i.g
  br label %.lr.ph.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %exitcond64.not.i = icmp eq i64 %i.p, %i.e
  br i1 %exitcond64.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %.loopexit.i
  %.053.i = phi i64 [ %i.p, %.loopexit.i ], [ 0, %.lr.ph.preheader.i.preheader ] ; 6 uses
  %i.h = sub i64 %i.e, %.053.i                    ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.053.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 7 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.053.i
  %i.l = load double, ptr %i.k, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.053.i ; 6 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !18
  %i.o = fdiv double %i.n, %i.l
  store double %i.o, ptr %i.m, align 8, !tbaa !18
  %i.p = add nuw nsw i64 %.053.i, 1               ; 6 uses
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.q = shl i64 %.053.i, 3
  %i.r = add i64 %i.q, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.r
  %scevgep5 = getelementptr nuw i8, ptr %i.j, i64 %i.r
  %scevgep6 = getelementptr i8, ptr %i.j, i64 %i.g
  %bound0 = icmp ult ptr %scevgep, %scevgep6
  %bound1 = icmp ult ptr %scevgep5, %scevgep4
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -4                       ; 3 uses
  %i.s = add i64 %i.p, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = add nuw i64 %i.p, %index                 ; 2 uses
  %i.u = load double, ptr %i.m, align 8, !tbaa !18, !alias.scope !81
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <2 x double>, ptr %i.v, align 8, !tbaa !18, !alias.scope !84
  %wide.load7 = load <2 x double>, ptr %i.w, align 8, !tbaa !18, !alias.scope !84
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %wide.load8 = load <2 x double>, ptr %i.x, align 8, !tbaa !18, !alias.scope !86, !noalias !84
  %wide.load9 = load <2 x double>, ptr %i.y, align 8, !tbaa !18, !alias.scope !86, !noalias !84
  %.scalar = fneg double %i.u
  %i.z = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %wide.load, <2 x double> %wide.load8)
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %wide.load7, <2 x double> %wide.load9)
  store <2 x double> %i.ab, ptr %i.x, align 8, !tbaa !18, !alias.scope !86, !noalias !84
  store <2 x double> %i.ac, ptr %i.y, align 8, !tbaa !18, !alias.scope !86, !noalias !84
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.04952.i.ph = phi i64 [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.preheader.i ], [ %i.s, %middle.block ] ; 6 uses
  %i.ae = sub i64 %i.d, %.04952.i.ph
  %.neg = add i64 %.04952.i.ph, 1
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.af = load double, ptr %i.m, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.04952.i.ph
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04952.i.ph ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !18
  %i.ak = fneg double %i.af
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ah, double %i.aj)
  store double %i.al, ptr %i.ai, align 8, !tbaa !18
  %i.am = add nuw nsw i64 %.04952.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.04952.i.unr = phi i64 [ %.04952.i.ph, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph.i.prol ]
  %i.an = icmp eq i64 %i.d, %.neg
  br i1 %i.an, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.04952.i = phi i64 [ %i.bd, %.lr.ph.i ], [ %.04952.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ao = load double, ptr %i.m, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.04952.i
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04952.i ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !18
  %i.at = fneg double %i.ao
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double %i.aq, double %i.as)
  store double %i.au, ptr %i.ar, align 8, !tbaa !18
  %i.av = add nuw nsw i64 %.04952.i, 1            ; 2 uses
  %i.aw = load double, ptr %i.m, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.av
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !18
  %i.bb = fneg double %i.aw
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.ay, double %i.ba)
  store double %i.bc, ptr %i.az, align 8, !tbaa !18
  %i.bd = add nuw nsw i64 %.04952.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bd, %i.d
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !89

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.a
  %i.be = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !17
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.e ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !18
  %i.bi = getelementptr inbounds [8 x i8], ptr %1, i64 %i.e ; 3 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !18
  %i.bk = fdiv double %i.bj, %i.bh                ; 2 uses
  store double %i.bk, ptr %i.bi, align 8, !tbaa !18
  %i.bl = load double, ptr %i.bg, align 8, !tbaa !18
  %i.bm = fdiv double %i.bk, %i.bl
  store double %i.bm, ptr %i.bi, align 8, !tbaa !18
  br i1 %i.f, label %.lr.ph62.preheader.i, label %SUNDlsMat_densePOTRS.exit

.lr.ph62.preheader.i:                             ; preds = %._crit_edge.i
  %i.bn = add nsw i64 %i.d, -2
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %._crit_edge59.i, %.lr.ph62.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge59.i ], [ 0, %.lr.ph62.preheader.i ] ; 3 uses
  %.15060.i = phi i64 [ %i.cn, %._crit_edge59.i ], [ %i.bn, %.lr.ph62.preheader.i ] ; 7 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.15060.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !17 ; 4 uses
  %.155.i = add nuw nsw i64 %.15060.i, 1          ; 3 uses
  %2 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.15060.i ; 5 uses
  %.promoted.i = load double, ptr %2, align 8, !tbaa !18 ; 2 uses
  %3 = and i64 %indvar, 1
  %lcmp.mod11.not.not = icmp eq i64 %3, 0
  br i1 %lcmp.mod11.not.not, label %.lr.ph58.i.prol, label %.lr.ph58.i.prol.loopexit

.lr.ph58.i.prol:                                  ; preds = %.lr.ph62.i
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.155.i
  %i.br = load double, ptr %i.bq, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.155.i
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !18
  %i.bu = fneg double %i.br
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bt, double %.promoted.i) ; 3 uses
  store double %i.bv, ptr %2, align 8, !tbaa !18
  %.1.i.prol = add nuw nsw i64 %.15060.i, 2
  br label %.lr.ph58.i.prol.loopexit

.lr.ph58.i.prol.loopexit:                         ; preds = %.lr.ph58.i.prol, %.lr.ph62.i
  %.lcssa.unr = phi double [ poison, %.lr.ph62.i ], [ %i.bv, %.lr.ph58.i.prol ]
  %.unr = phi double [ %.promoted.i, %.lr.ph62.i ], [ %i.bv, %.lr.ph58.i.prol ]
  %.156.i.unr = phi i64 [ %.155.i, %.lr.ph62.i ], [ %.1.i.prol, %.lr.ph58.i.prol ]
  %i.bw = icmp eq i64 %indvar, 0
  br i1 %i.bw, label %._crit_edge59.i, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %.lr.ph58.i.prol.loopexit, %.lr.ph58.i
  %i.bx = phi double [ %i.cj, %.lr.ph58.i ], [ %.unr, %.lr.ph58.i.prol.loopexit ]
  %.156.i = phi i64 [ %.1.i.1, %.lr.ph58.i ], [ %.156.i.unr, %.lr.ph58.i.prol.loopexit ] ; 4 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.156.i
  %i.bz = load double, ptr %i.by, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.156.i
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !18
  %i.cc = fneg double %i.bz
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cb, double %i.bx) ; 2 uses
  store double %i.cd, ptr %2, align 8, !tbaa !18
  %.1.i = add nuw nsw i64 %.156.i, 1              ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.1.i
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.1.i
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !18
  %i.ci = fneg double %i.cf
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.ch, double %i.cd) ; 3 uses
  store double %i.cj, ptr %2, align 8, !tbaa !18
  %.1.i.1 = add nuw nsw i64 %.156.i, 2            ; 2 uses
  %exitcond65.not.i.1 = icmp eq i64 %.1.i.1, %i.d
  br i1 %exitcond65.not.i.1, label %._crit_edge59.i, label %.lr.ph58.i

._crit_edge59.i:                                  ; preds = %.lr.ph58.i, %.lr.ph58.i.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.lr.ph58.i.prol.loopexit ], [ %i.cj, %.lr.ph58.i ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.15060.i
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !18
  %i.cm = fdiv double %.lcssa, %i.cl
  store double %i.cm, ptr %2, align 8, !tbaa !18
  %i.cn = add nsw i64 %.15060.i, -1
  %i.co = icmp sgt i64 %.15060.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.co, label %.lr.ph62.i, label %SUNDlsMat_densePOTRS.exit

SUNDlsMat_densePOTRS.exit:                        ; preds = %._crit_edge59.i, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_densePOTRS(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = add i64 %1, -1                           ; 5 uses
  %i.b = icmp sgt i64 %1, 1                       ; 2 uses
  br i1 %i.b, label %.lr.ph.preheader.preheader, label %._crit_edge

.lr.ph.preheader.preheader:                       ; preds = %bb.a
  %i.c = shl i64 %1, 3                            ; 2 uses
  %scevgep68 = getelementptr i8, ptr %2, i64 %i.c
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %exitcond64.not = icmp eq i64 %i.l, %i.a
  br i1 %exitcond64.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.preheader, %.loopexit
  %.053 = phi i64 [ %i.l, %.loopexit ], [ 0, %.lr.ph.preheader.preheader ] ; 6 uses
  %i.d = sub i64 %i.a, %.053                      ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.053
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 7 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.053
  %i.h = load double, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.053 ; 6 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !18
  %i.k = fdiv double %i.j, %i.h
  store double %i.k, ptr %i.i, align 8, !tbaa !18
  %i.l = add nuw nsw i64 %.053, 1                 ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.m = shl i64 %.053, 3
  %i.n = add i64 %i.m, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.n
  %scevgep69 = getelementptr nuw i8, ptr %i.f, i64 %i.n
  %scevgep70 = getelementptr i8, ptr %i.f, i64 %i.c
  %bound0 = icmp ult ptr %scevgep, %scevgep70
  %bound1 = icmp ult ptr %scevgep69, %scevgep68
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -4                       ; 3 uses
  %i.o = add i64 %i.l, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = add nuw i64 %i.l, %index                 ; 2 uses
  %i.q = load double, ptr %i.i, align 8, !tbaa !18, !alias.scope !90
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x double>, ptr %i.r, align 8, !tbaa !18, !alias.scope !93
  %wide.load71 = load <2 x double>, ptr %i.s, align 8, !tbaa !18, !alias.scope !93
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load72 = load <2 x double>, ptr %i.t, align 8, !tbaa !18, !alias.scope !95, !noalias !93
  %wide.load73 = load <2 x double>, ptr %i.u, align 8, !tbaa !18, !alias.scope !95, !noalias !93
  %.scalar = fneg double %i.q
  %i.v = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %wide.load, <2 x double> %wide.load72)
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %wide.load71, <2 x double> %wide.load73)
  store <2 x double> %i.x, ptr %i.t, align 8, !tbaa !18, !alias.scope !95, !noalias !93
  store <2 x double> %i.y, ptr %i.u, align 8, !tbaa !18, !alias.scope !95, !noalias !93
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader74

.lr.ph.preheader74:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.04952.ph = phi i64 [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader ], [ %i.o, %middle.block ] ; 6 uses
  %i.aa = sub i64 %1, %.04952.ph
  %.neg = add i64 %.04952.ph, 1
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader74
  %i.ab = load double, ptr %i.i, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.04952.ph
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04952.ph ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !18
  %i.ag = fneg double %i.ab
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ad, double %i.af)
  store double %i.ah, ptr %i.ae, align 8, !tbaa !18
  %i.ai = add nuw nsw i64 %.04952.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader74
  %.04952.unr = phi i64 [ %.04952.ph, %.lr.ph.preheader74 ], [ %i.ai, %.lr.ph.prol ]
  %i.aj = icmp eq i64 %1, %.neg
  br i1 %i.aj, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04952 = phi i64 [ %i.az, %.lr.ph ], [ %.04952.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ak = load double, ptr %i.i, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.04952
  %i.am = load double, ptr %i.al, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04952 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !18
  %i.ap = fneg double %i.ak
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.am, double %i.ao)
  store double %i.aq, ptr %i.an, align 8, !tbaa !18
  %i.ar = add nuw nsw i64 %.04952, 1              ; 2 uses
  %i.as = load double, ptr %i.i, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ar
  %i.au = load double, ptr %i.at, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ar ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !18
  %i.ax = fneg double %i.as
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.au, double %i.aw)
  store double %i.ay, ptr %i.av, align 8, !tbaa !18
  %i.az = add nuw nsw i64 %.04952, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.az, %1
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !17
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.a ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !18
  %i.be = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a ; 3 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !18
  %i.bg = fdiv double %i.bf, %i.bd                ; 2 uses
  store double %i.bg, ptr %i.be, align 8, !tbaa !18
  %i.bh = load double, ptr %i.bc, align 8, !tbaa !18
  %i.bi = fdiv double %i.bg, %i.bh
  store double %i.bi, ptr %i.be, align 8, !tbaa !18
  br i1 %i.b, label %.lr.ph62.preheader, label %._crit_edge63

.lr.ph62.preheader:                               ; preds = %._crit_edge
  %i.bj = add nsw i64 %1, -2
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %._crit_edge59
  %indvar = phi i64 [ 0, %.lr.ph62.preheader ], [ %indvar.next, %._crit_edge59 ] ; 3 uses
  %.15060 = phi i64 [ %i.bj, %.lr.ph62.preheader ], [ %i.co, %._crit_edge59 ] ; 8 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.15060
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !17 ; 4 uses
  %.155 = add nuw nsw i64 %.15060, 1              ; 4 uses
  %i.bm = icmp slt i64 %.155, %1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.15060 ; 4 uses
  %.promoted = load double, ptr %i.bn, align 8, !tbaa !18 ; 3 uses
  br i1 %i.bm, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %.lr.ph62
  %i.bo = and i64 %indvar, 1
  %lcmp.mod76.not.not = icmp eq i64 %i.bo, 0
  br i1 %lcmp.mod76.not.not, label %.lr.ph58.prol, label %.lr.ph58.prol.loopexit

.lr.ph58.prol:                                    ; preds = %.lr.ph58.preheader
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.155
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.155
  %i.bs = load double, ptr %i.br, align 8, !tbaa !18
  %i.bt = fneg double %i.bq
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bs, double %.promoted) ; 3 uses
  store double %i.bu, ptr %i.bn, align 8, !tbaa !18
  %.1.prol = add nuw nsw i64 %.15060, 2
  br label %.lr.ph58.prol.loopexit

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph58.preheader ], [ %i.bu, %.lr.ph58.prol ]
  %.unr = phi double [ %.promoted, %.lr.ph58.preheader ], [ %i.bu, %.lr.ph58.prol ]
  %.156.unr = phi i64 [ %.155, %.lr.ph58.preheader ], [ %.1.prol, %.lr.ph58.prol ]
  %i.bv = icmp eq i64 %indvar, 0
  br i1 %i.bv, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %i.bw = phi double [ %i.ci, %.lr.ph58 ], [ %.unr, %.lr.ph58.prol.loopexit ]
  %.156 = phi i64 [ %.1.1, %.lr.ph58 ], [ %.156.unr, %.lr.ph58.prol.loopexit ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.156
  %i.by = load double, ptr %i.bx, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.156
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !18
  %i.cb = fneg double %i.by
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.ca, double %i.bw) ; 2 uses
  store double %i.cc, ptr %i.bn, align 8, !tbaa !18
  %.1 = add nuw nsw i64 %.156, 1                  ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.1
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !18
  %i.ch = fneg double %i.ce
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cg, double %i.cc) ; 3 uses
end_hunk_0
