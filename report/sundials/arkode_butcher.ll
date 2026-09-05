Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_butcher?download=true
inline.NumInlined: 182
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 246
loop-unroll.NumRuntimeUnrolled: 184
loop-unroll.NumUnrolled: 430
begin_hunk_0_@__ButcherSimplifyingAssumptions:bb.a
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.x, double %i.z, double %i.v)
  %indvars.iv.next.i95.2 = or disjoint i64 %indvars.iv.i94, 3 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i95.2
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i95.2
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !22
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ae, double %i.aa) ; 3 uses
  %indvars.iv.next.i95.3 = add nuw nsw i64 %indvars.iv.i94, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %arkode_butcher_dot.exit.unr-lcssa, label %.preheader162

arkode_butcher_dot.exit.unr-lcssa:                ; preds = %.preheader162
  br i1 %lcmp.mod.not, label %arkode_butcher_dot.exit, label %.preheader162.epil.preheader

.preheader162.epil.preheader:                     ; preds = %arkode_butcher_dot.exit.unr-lcssa, %.preheader162.preheader
  %indvars.iv.i94.epil.init = phi i64 [ 0, %.preheader162.preheader ], [ %indvars.iv.next.i95.3, %arkode_butcher_dot.exit.unr-lcssa ]
  %.epil.init = phi double [ 0.000000e+00, %.preheader162.preheader ], [ %i.af, %arkode_butcher_dot.exit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod215)
  br label %.preheader162.epil

.preheader162.epil:                               ; preds = %.preheader162.epil, %.preheader162.epil.preheader
  %indvars.iv.i94.epil = phi i64 [ %indvars.iv.next.i95.epil, %.preheader162.epil ], [ %indvars.iv.i94.epil.init, %.preheader162.epil.preheader ] ; 3 uses
  %i.ag = phi double [ %i.al, %.preheader162.epil ], [ %.epil.init, %.preheader162.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader162.epil ], [ 0, %.preheader162.epil.preheader ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i94.epil
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i94.epil
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !22
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ak, double %i.ag) ; 2 uses
  %indvars.iv.next.i95.epil = add nuw nsw i64 %indvars.iv.i94.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %arkode_butcher_dot.exit, label %.preheader162.epil, !llvm.loop !253

arkode_butcher_dot.exit:                          ; preds = %.preheader162.epil, %arkode_butcher_dot.exit.unr-lcssa
  %.lcssa213 = phi double [ %i.af, %arkode_butcher_dot.exit.unr-lcssa ], [ %i.al, %.preheader162.epil ]
  %i.am = uitofp nneg i32 %.077141 to double
  %i.an = fdiv double 1.000000e+00, %i.am
  %i.ao = fsub double %i.an, %.lcssa213
  %i.ap = tail call double @llvm.fabs.f64(double %i.ao)
  %i.aq = fcmp ogt double %i.ap, f0x3E50000000000000
  br i1 %i.aq, label %.preheader129.us.preheader, label %bb.b

bb.b:                                             ; preds = %arkode_butcher_dot.exit
  %i.ar = add nuw nsw i32 %.081140, 1             ; 2 uses
  %i.as = add nuw nsw i32 %.077141, 1
  %exitcond.not = icmp eq i32 %i.ar, 999
  br i1 %exitcond.not, label %.preheader129.us.preheader, label %.preheader.preheader.i

.preheader129.us.preheader:                       ; preds = %arkode_butcher_dot.exit, %bb.b
  %.081.lcssa = phi i32 [ %.081140, %arkode_butcher_dot.exit ], [ 999, %bb.b ] ; 2 uses
  %xtraiter216 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.at = icmp ult i64 %i.e, 3
  %unroll_iter223 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod220.not = icmp eq i64 %xtraiter216, 0
  %lcmp.mod222 = icmp ne i64 %xtraiter216, 0
  br label %.preheader129.us

.preheader129.us:                                 ; preds = %.preheader129.us.preheader, %..critedge_crit_edge.us
  %.074144.us = phi i32 [ %i.cm, %..critedge_crit_edge.us ], [ 1, %.preheader129.us.preheader ] ; 4 uses
  %.080143.us = phi i32 [ %i.cl, %..critedge_crit_edge.us ], [ 0, %.preheader129.us.preheader ] ; 2 uses
  %i.au = add nsw i32 %.074144.us, -1
  %i.av = uitofp nneg i32 %.074144.us to double
  br label %.preheader.preheader.i98.us

bb.c:                                             ; preds = %.epilog-lcssa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond174.not, label %..critedge_crit_edge.us, label %.preheader.preheader.i98.us

.preheader.preheader.i98.us:                      ; preds = %.preheader129.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader129.us ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  br label %.preheader.i100.us

.preheader.i100.us:                               ; preds = %.preheader.i100.us, %.preheader.preheader.i98.us
  %indvars.iv.i101.us = phi i64 [ 0, %.preheader.preheader.i98.us ], [ %indvars.iv.next.i102.us, %.preheader.i100.us ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i101.us
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !22
  %i.ay = tail call double @SUNRpowerI(double noundef %i.ax, i32 noundef range(i32 -2147483648, 999) %i.au) #18
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i101.us
  store double %i.ay, ptr %i.az, align 8, !tbaa !22
  %indvars.iv.next.i102.us = add nuw nsw i64 %indvars.iv.i101.us, 1 ; 2 uses
  %exitcond.not.i103.us = icmp eq i64 %indvars.iv.next.i102.us, %wide.trip.count.i
  br i1 %exitcond.not.i103.us, label %bb.d, label %.preheader.i100.us

bb.d:                                             ; preds = %.preheader.i100.us
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15 ; 6 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %arkode_butcher_vp.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  br i1 %i.at, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.i108.us = phi i64 [ %indvars.iv.next.i109.us.3, %.preheader ], [ 0, %.preheader.preheader ] ; 6 uses
  %i.bd = phi double [ %i.bx, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %niter224 = phi i64 [ %niter224.next.3, %.preheader ], [ 0, %.preheader.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i108.us
  %i.bf = load double, ptr %i.be, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i108.us
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !22
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bh, double %i.bd)
  %indvars.iv.next.i109.us = or disjoint i64 %indvars.iv.i108.us, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i109.us
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !22
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i109.us
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !22
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bm, double %i.bi)
  %indvars.iv.next.i109.us.1 = or disjoint i64 %indvars.iv.i108.us, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i109.us.1
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i109.us.1
  %i.br = load double, ptr %i.bq, align 8, !tbaa !22
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.br, double %i.bn)
  %indvars.iv.next.i109.us.2 = or disjoint i64 %indvars.iv.i108.us, 3 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i109.us.2
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !22
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i109.us.2
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !22
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bw, double %i.bs) ; 3 uses
  %indvars.iv.next.i109.us.3 = add nuw nsw i64 %indvars.iv.i108.us, 4 ; 2 uses
  %niter224.next.3 = add i64 %niter224, 4         ; 2 uses
  %niter224.ncmp.3 = icmp eq i64 %niter224.next.3, %unroll_iter223
  br i1 %niter224.ncmp.3, label %.unr-lcssa, label %.preheader

.unr-lcssa:                                       ; preds = %.preheader
  br i1 %lcmp.mod220.not, label %.epilog-lcssa, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %indvars.iv.i108.us.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.i109.us.3, %.unr-lcssa ]
  %.epil.init219 = phi double [ 0.000000e+00, %.preheader.preheader ], [ %i.bx, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod222)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv.i108.us.epil = phi i64 [ %indvars.iv.next.i109.us.epil, %.preheader.epil ], [ %indvars.iv.i108.us.epil.init, %.preheader.epil.preheader ] ; 3 uses
  %i.by = phi double [ %i.cd, %.preheader.epil ], [ %.epil.init219, %.preheader.epil.preheader ]
  %epil.iter217 = phi i64 [ %epil.iter217.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i108.us.epil
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i108.us.epil
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !22
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.cc, double %i.by) ; 2 uses
  %indvars.iv.next.i109.us.epil = add nuw nsw i64 %indvars.iv.i108.us.epil, 1
  %epil.iter217.next = add i64 %epil.iter217, 1   ; 2 uses
  %epil.iter217.cmp.not = icmp eq i64 %epil.iter217.next, %xtraiter216
  br i1 %epil.iter217.cmp.not, label %.epilog-lcssa, label %.preheader.epil, !llvm.loop !254

.epilog-lcssa:                                    ; preds = %.preheader.epil, %.unr-lcssa
  %.lcssa210 = phi double [ %i.bx, %.unr-lcssa ], [ %i.cd, %.preheader.epil ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !22
  %i.cg = tail call double @SUNRpowerI(double noundef %i.cf, i32 noundef %.074144.us) #18
  %i.ch = fdiv double %i.cg, %i.av
  %i.ci = fsub double %i.ch, %.lcssa210
  %i.cj = tail call double @llvm.fabs.f64(double %i.ci)
  %i.ck = fcmp ogt double %i.cj, f0x3E50000000000000
  br i1 %i.ck, label %.preheader127.us.preheader, label %bb.c

..critedge_crit_edge.us:                          ; preds = %bb.c
  %i.cl = add nuw nsw i32 %.080143.us, 1          ; 2 uses
  %i.cm = add nuw nsw i32 %.074144.us, 1
  %exitcond175.not = icmp eq i32 %i.cl, 999
  br i1 %exitcond175.not, label %.preheader127.us.preheader, label %.preheader129.us

.preheader127.us.preheader:                       ; preds = %..critedge_crit_edge.us, %.epilog-lcssa
  %.080137 = phi i32 [ %.080143.us, %.epilog-lcssa ], [ 999, %..critedge_crit_edge.us ] ; 2 uses
  br label %.preheader127.us

.preheader127.us:                                 ; preds = %.preheader127.us.preheader, %..critedge92_crit_edge.split.us.us
  %.175152.us = phi i32 [ %i.dm, %..critedge92_crit_edge.split.us.us ], [ 1, %.preheader127.us.preheader ] ; 4 uses
  %.079151.us = phi i32 [ %i.dl, %..critedge92_crit_edge.split.us.us ], [ 0, %.preheader127.us.preheader ] ; 2 uses
  %i.cn = add nsw i32 %.175152.us, -1
  %i.co = uitofp nneg i32 %.175152.us to double
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %4, %.preheader127.us
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %4 ], [ 0, %.preheader127.us ] ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.us.us
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %bb.e ], [ 0, %.preheader.us.us ] ; 4 uses
  %.5147.us.us = phi double [ %i.cz, %bb.e ], [ 0.000000e+00, %.preheader.us.us ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv176
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !15
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv181
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !22
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv176
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !22
  %i.cv = fmul double %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv176
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !22
  %i.cy = tail call double @SUNRpowerI(double noundef %i.cx, i32 noundef %i.cn) #18
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cy, double %.5147.us.us) ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count.i
  br i1 %exitcond180.not, label %._crit_edge.us.us, label %bb.e

._crit_edge.us.us:                                ; preds = %bb.e
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv181
  %i.db = load double, ptr %i.da, align 8, !tbaa !22
  %i.dc = fdiv double %i.db, %i.co
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv181
  %i.de = load double, ptr %i.dd, align 8, !tbaa !22
  %i.df = tail call double @SUNRpowerI(double noundef %i.de, i32 noundef %.175152.us) #18
  %i.dg = fsub double 1.000000e+00, %i.df
  %i.dh = fmul double %i.dc, %i.dg
  %i.di = fsub double %i.dh, %i.cz
  %i.dj = tail call double @llvm.fabs.f64(double %i.di)
  %i.dk = fcmp ogt double %i.dj, f0x3E50000000000000
  br i1 %i.dk, label %.loopexit, label %4

4:                                                ; preds = %._crit_edge.us.us
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count.i
  br i1 %exitcond185.not, label %..critedge92_crit_edge.split.us.us, label %.preheader.us.us

..critedge92_crit_edge.split.us.us:               ; preds = %4
  %i.dl = add nuw nsw i32 %.079151.us, 1          ; 2 uses
  %i.dm = add nuw nsw i32 %.175152.us, 1
  %exitcond186.not = icmp eq i32 %i.dl, 999
  br i1 %exitcond186.not, label %.loopexit, label %.preheader127.us

.loopexit:                                        ; preds = %..critedge92_crit_edge.split.us.us, %._crit_edge.us.us
  %.079133 = phi i32 [ %.079151.us, %._crit_edge.us.us ], [ 999, %..critedge92_crit_edge.split.us.us ]
  %.not90155 = icmp eq i32 %.081.lcssa, 0
  br i1 %.not90155, label %arkode_butcher_vp.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.dn = shl nuw i32 %.080137, 1
  %i.do = add i32 %i.dn, 2
  %i.dp = add nuw i32 %.080137, 1
  %i.dq = add i32 %i.dp, %.079133
  %i.dr = add nsw i32 %.081.lcssa, -1
  %umin = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.dr)
  %umin187 = tail call i32 @llvm.umin.i32(i32 %umin, i32 %i.do)
  %i.ds = add nuw i32 %umin187, 1
  br label %arkode_butcher_vp.exit

arkode_butcher_vp.exit:                           ; preds = %bb.d, %.loopexit, %.lr.ph.preheader, %bb.a
  %.082 = phi i32 [ 0, %bb.a ], [ %i.ds, %.lr.ph.preheader ], [ 0, %.loopexit ], [ 0, %bb.d ]
  tail call void @free(ptr noundef %i.b) #18
  ret i32 %.082
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @ARKodeButcherTable_CheckARKOrder(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(none) initializes((0, 4)) %2, ptr nofree noundef captures(none) initializes((0, 4)) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %.sroa.09439 = alloca ptr, align 16             ; 31 uses
  %.sroa.31 = alloca ptr, align 8                 ; 31 uses
  %.sroa.09409 = alloca ptr, align 16             ; 37 uses
  %.sroa.379410 = alloca ptr, align 8             ; 37 uses
  %.sroa.09374 = alloca ptr, align 16             ; 27 uses
  %.sroa.27 = alloca ptr, align 8                 ; 27 uses
  %.sroa.0 = alloca ptr, align 16                 ; 37 uses
  %.sroa.37 = alloca ptr, align 8                 ; 37 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09439)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.31)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09409)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.379410)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09374)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.37)
  store i32 0, ptr %3, align 4, !tbaa !26
  store i32 0, ptr %2, align 4, !tbaa !26
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13   ; 932 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 713 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 218 uses
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.loopexit, label %bb.d

._crit_edge:                                      ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 1184 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16   ; 21 uses
  %i.p = icmp eq ptr %i.o, null
  %i.q = icmp eq ptr %1, null
  %or.cond2249 = or i1 %i.q, %i.p
  br i1 %or.cond2249, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !13   ; 3 uses
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14   ; 713 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.loopexit, label %.lr.ph2981.preheader

.lr.ph2981.preheader:                             ; preds = %bb.g
  %wide.trip.count3825 = zext nneg i32 %i.s to i64
  br label %.lr.ph2981

bb.h:                                             ; preds = %.lr.ph2981
  %indvars.iv.next3823 = add nuw nsw i64 %indvars.iv3822, 1 ; 2 uses
  %exitcond3826.not = icmp eq i64 %indvars.iv.next3823, %wide.trip.count3825
  br i1 %exitcond3826.not, label %._crit_edge2982, label %.lr.ph2981

.lr.ph2981:                                       ; preds = %.lr.ph2981.preheader, %bb.h
  %indvars.iv3822 = phi i64 [ 0, %.lr.ph2981.preheader ], [ %indvars.iv.next3823, %bb.h ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv3822
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.loopexit, label %bb.h

._crit_edge2982:                                  ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17 ; 1184 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %._crit_edge2982
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16 ; 21 uses
  %i.af = icmp ne ptr %i.ae, null
  %.not = icmp eq i32 %i.c, %i.s
  %or.cond2608 = and i1 %.not, %i.af
  br i1 %or.cond2608, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  store ptr %i.f, ptr %.sroa.09439, align 16, !tbaa !395
  store ptr %i.o, ptr %.sroa.09409, align 16, !tbaa !15
  store ptr %i.l, ptr %.sroa.09374, align 16, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18 ; 42 uses
  store ptr %i.ah, ptr %.sroa.0, align 16, !tbaa !15
  store ptr %i.v, ptr %.sroa.31, align 8, !tbaa !395
  store ptr %i.ae, ptr %.sroa.379410, align 8, !tbaa !15
  store ptr %i.ab, ptr %.sroa.27, align 8, !tbaa !15
  store ptr %i.ah, ptr %.sroa.37, align 8, !tbaa !15
  %i.ai = icmp ne ptr %4, null                    ; 76 uses
  br i1 %i.ai, label %bb.k, label %.preheader.us.preheader.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call i64 @fwrite(ptr nonnull @.str.86, i64 34, i64 1, ptr nonnull %4) ; 0 uses
  br label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %bb.j, %bb.k
  %wide.trip.count29.i = zext nneg i32 %i.c to i64 ; 116 uses
  %i.ak = add nsw i64 %wide.trip.count, -1        ; 76 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.al = icmp ult i64 %i.ak, 7
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod8483 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.l, %.preheader.us.preheader.i
  %indvars.iv26.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next27.i, %bb.l ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv26.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15 ; 9 uses
  br i1 %i.al, label %.epil.preheader, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 9 uses
  %.018.us.i = phi double [ %i.bs, %.preheader.us.i.new ], [ 0.000000e+00, %.preheader.us.i ]
  %niter = phi i64 [ %niter.next.7, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !22
  %i.aq = fadd double %.018.us.i, %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load double, ptr %i.as, align 8, !tbaa !22
  %i.au = fadd double %i.aq, %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !22
  %i.ay = fadd double %i.au, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !22
  %i.bc = fadd double %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load double, ptr %i.be, align 8, !tbaa !22
  %i.bg = fadd double %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !22
  %i.bk = fadd double %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !22
end_hunk_0
