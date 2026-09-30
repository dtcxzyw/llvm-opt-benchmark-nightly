Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/convert_scale.dispatch?download=true
inline.NumInlined: 458
inline.NumDeleted: 226
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 102
begin_hunk_0_@_ZN2cv12cpu_baselineL13cvtScale8u64uEPKhmS2_mPhmNS_5Size_IiEEPv:bb.a
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %indvars.iv.i.ph
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = uitofp i8 %i.aa to double
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.a, double %i.c) ; 2 uses
  %i.ad = fcmp olt double %i.ac, 0.000000e+00
  %.sroa.speculated.i.i.prol = select i1 %i.ad, double 0.000000e+00, double %i.ac
  %i.ae = tail call double @llvm.round.f64(double %.sroa.speculated.i.i.prol)
  %i.af = fptosi double %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i.ph
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !30
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ah = icmp eq i64 %wide.trip.count.i, %.neg
  br i1 %i.ah, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %indvars.iv.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.ak = uitofp i8 %i.aj to double
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.a, double %i.c) ; 2 uses
  %i.am = fcmp olt double %i.al, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.am, double 0.000000e+00, double %i.al
  %i.an = tail call double @llvm.round.f64(double %.sroa.speculated.i.i)
  %i.ao = fptosi double %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %indvars.iv.next.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = uitofp i8 %i.ar to double
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.a, double %i.c) ; 2 uses
  %i.au = fcmp olt double %i.at, 0.000000e+00
  %.sroa.speculated.i.i.1 = select i1 %i.au, double 0.000000e+00, double %i.at
  %i.av = tail call double @llvm.round.f64(double %.sroa.speculated.i.i.1)
  %i.aw = fptosi double %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.next.i
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !30
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !683

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ay = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %1
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.d
  %exitcond24.not.i = icmp eq i32 %i.ay, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIhmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !684

_ZN2cv12cpu_baseline7cvt_64fIhmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL13cvtScale8s64uEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %i.a = load double, ptr %7, align 8, !tbaa !16  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 4 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %6, 32    ; 2 uses
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.d = lshr i64 %5, 3                           ; 2 uses
  %i.e = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 0
  %i.f = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fIamEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = and i64 %6, 2147483647     ; 6 uses
  %i.g = add nuw nsw i64 %.sroa.2.0.extract.shift.i, 4294967295
  %i.h = and i64 %i.g, 4294967295                 ; 2 uses
  %i.i = mul i64 %i.d, %i.h
  %i.j = add i64 %i.i, %wide.trip.count.i
  %i.k = shl i64 %i.j, 3
  %scevgep = getelementptr i8, ptr %4, i64 %i.k
  %i.l = mul i64 %1, %i.h
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %scevgep9 = getelementptr i8, ptr %i.m, i64 %wide.trip.count.i
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 4
  %bound0 = icmp ult ptr %4, %scevgep9
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %n.vec = and i64 %6, 2147483646                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert11 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat12 = shufflevector <2 x double> %broadcast.splatinsert11, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.01521.i = phi i32 [ %i.ay, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.az, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 5 uses
  %.01719.i = phi ptr [ %i.ba, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.p
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %index
  %wide.load = load <2 x i8>, ptr %i.q, align 1, !tbaa !14, !alias.scope !693
  %i.r = sitofp <2 x i8> %wide.load to <2 x double>
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat12) ; 2 uses
  %i.t = fcmp olt <2 x double> %i.s, zeroinitializer
  %i.u = select <2 x i1> %i.t, <2 x double> zeroinitializer, <2 x double> %i.s
  %i.v = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.u)
  %i.w = fptosi <2 x double> %i.v to <2 x i64>
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.w, ptr %i.x, align 8, !tbaa !30, !alias.scope !694, !noalias !693
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !690

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %indvars.iv.i.ph
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = sitofp i8 %i.aa to double
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.a, double %i.c) ; 2 uses
  %i.ad = fcmp olt double %i.ac, 0.000000e+00
  %.sroa.speculated.i.i.prol = select i1 %i.ad, double 0.000000e+00, double %i.ac
  %i.ae = tail call double @llvm.round.f64(double %.sroa.speculated.i.i.prol)
  %i.af = fptosi double %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i.ph
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !30
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ah = icmp eq i64 %wide.trip.count.i, %.neg
  br i1 %i.ah, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %indvars.iv.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.ak = sitofp i8 %i.aj to double
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.a, double %i.c) ; 2 uses
  %i.am = fcmp olt double %i.al, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.am, double 0.000000e+00, double %i.al
  %i.an = tail call double @llvm.round.f64(double %.sroa.speculated.i.i)
  %i.ao = fptosi double %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %indvars.iv.next.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = sitofp i8 %i.ar to double
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.a, double %i.c) ; 2 uses
  %i.au = fcmp olt double %i.at, 0.000000e+00
  %.sroa.speculated.i.i.1 = select i1 %i.au, double 0.000000e+00, double %i.at
  %i.av = tail call double @llvm.round.f64(double %.sroa.speculated.i.i.1)
  %i.aw = fptosi double %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.next.i
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !30
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !691

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ay = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %1
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.d
  %exitcond24.not.i = icmp eq i32 %i.ay, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIamEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !692

_ZN2cv12cpu_baseline7cvt_64fIamEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL13cvtScale8b64uEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift = lshr i64 %6, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 2 uses
  %i.a = load double, ptr %7, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 3 uses
  %i.d = fcmp olt double %i.c, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.d, double 0.000000e+00, double %i.c
  %8 = tail call double @llvm.round.f64(double %.sroa.speculated.i) ; 3 uses
  %i.e = fadd double %i.a, %i.c                   ; 2 uses
  %i.f = fcmp olt double %i.e, 0.000000e+00
  %.sroa.speculated.i24 = select i1 %i.f, double 0.000000e+00, double %i.e
  %9 = tail call double @llvm.round.f64(double %.sroa.speculated.i24) ; 3 uses
  %i.g = lshr i64 %5, 3
  %i.h = icmp sgt i32 %.sroa.2.0.extract.trunc, 0
  %i.i = icmp sgt i32 %.sroa.0.0.extract.trunc, 0
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge29.split

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = and i64 %6, 2147483647
  %xtraiter = and i64 %6, 1
  %i.j = icmp eq i64 %wide.trip.count, 1
  %unroll_iter = and i64 %6, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod32 = trunc i64 %6 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.02128 = phi i32 [ %i.o, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02227 = phi ptr [ %i.q, %._crit_edge ], [ %4, %.preheader.preheader ] ; 4 uses
  %.02326 = phi ptr [ %i.p, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  br i1 %i.j, label %.epil.preheader, label %.preheader.new

._crit_edge29.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.k = getelementptr inbounds nuw i8, ptr %.02326, i64 %indvars.iv.epil.init
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %.not.epil = icmp eq i8 %i.l, 0
  %.v.epil.a = select i1 %.not.epil, double %8, double %9
  %i.m = fptosi double %.v.epil.a to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.02227, i64 %indvars.iv.epil.init
  store i64 %i.m, ptr %i.n, align 8, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.o = add nuw nsw i32 %.02128, 1               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02326, i64 %1
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.02227, i64 %i.g
  %exitcond31.not = icmp eq i32 %i.o, %.sroa.2.0.extract.trunc
  br i1 %exitcond31.not, label %._crit_edge29.split, label %.preheader, !llvm.loop !695

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.02326, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %.not = icmp eq i8 %i.s, 0
  %.v.a = select i1 %.not, double %8, double %9
  %i.t = fptosi double %.v.a to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.02227, i64 %indvars.iv
  store i64 %i.t, ptr %i.u, align 8, !tbaa !30
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.02326, i64 %indvars.iv.next
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %.not.1 = icmp eq i8 %i.w, 0
  %.v.1.a = select i1 %.not.1, double %8, double %9
  %i.x = fptosi double %.v.1.a to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.02227, i64 %indvars.iv.next
  store i64 %i.x, ptr %i.y, align 8, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !696
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14cvtScale16u64uEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %i.a = load double, ptr %7, align 8, !tbaa !16  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %6, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.d = lshr i64 %1, 1
  %i.e = lshr i64 %5, 3
  %i.f = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 0
  %i.g = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fItmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = and i64 %6, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 2
  %n.vec = and i64 %6, 2147483646                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert9 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat10 = shufflevector <2 x double> %broadcast.splatinsert9, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.01521.i = phi i32 [ %i.y, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.z, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 3 uses
  %.01719.i = phi ptr [ %i.aa, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %index
  %wide.load = load <2 x i16>, ptr %i.h, align 2, !tbaa !22
  %i.i = uitofp <2 x i16> %wide.load to <2 x double>
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat10) ; 2 uses
  %i.k = fcmp olt <2 x double> %i.j, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x double> zeroinitializer, <2 x double> %i.j
  %i.m = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.l)
  %i.n = fptosi <2 x double> %i.m to <2 x i64>
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.n, ptr %i.o, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !697

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.r = load i16, ptr %i.q, align 2, !tbaa !22
  %i.s = uitofp i16 %i.r to double
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.a, double %i.c) ; 2 uses
  %i.u = fcmp olt double %i.t, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.u, double 0.000000e+00, double %i.t
  %i.v = tail call double @llvm.round.f64(double %.sroa.speculated.i.i)
  %i.w = fptosi double %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.w, ptr %i.x, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !698

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.y = add nuw nsw i32 %.01521.i, 1             ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %i.d
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.y, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fItmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !699

_ZN2cv12cpu_baseline7cvt_64fItmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14cvtScale16s64uEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %i.a = load double, ptr %7, align 8, !tbaa !16  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %6, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.d = lshr i64 %1, 1
  %i.e = lshr i64 %5, 3
  %i.f = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 0
  %i.g = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fIsmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = and i64 %6, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 2
  %n.vec = and i64 %6, 2147483646                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert9 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat10 = shufflevector <2 x double> %broadcast.splatinsert9, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.01521.i = phi i32 [ %i.y, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.z, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 3 uses
  %.01719.i = phi ptr [ %i.aa, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %index
  %wide.load = load <2 x i16>, ptr %i.h, align 2, !tbaa !22
  %i.i = sitofp <2 x i16> %wide.load to <2 x double>
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat10) ; 2 uses
  %i.k = fcmp olt <2 x double> %i.j, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x double> zeroinitializer, <2 x double> %i.j
  %i.m = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.l)
  %i.n = fptosi <2 x double> %i.m to <2 x i64>
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.n, ptr %i.o, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !700

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.r = load i16, ptr %i.q, align 2, !tbaa !22
  %i.s = sitofp i16 %i.r to double
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.a, double %i.c) ; 2 uses
  %i.u = fcmp olt double %i.t, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.u, double 0.000000e+00, double %i.t
  %i.v = tail call double @llvm.round.f64(double %.sroa.speculated.i.i)
  %i.w = fptosi double %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.w, ptr %i.x, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !701

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.y = add nuw nsw i32 %.01521.i, 1             ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %i.d
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.y, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIsmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !702

_ZN2cv12cpu_baseline7cvt_64fIsmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14cvtScale32u64uEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %i.a = load double, ptr %7, align 8, !tbaa !16  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %6, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.d = lshr i64 %1, 2
  %i.e = lshr i64 %5, 3
  %i.f = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 0
  %i.g = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fIjmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = and i64 %6, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 2
  %n.vec = and i64 %6, 2147483646                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert9 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat10 = shufflevector <2 x double> %broadcast.splatinsert9, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br label %.preheader.i
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baselineL13cvtScale8u64sEPKhmS2_mPhmNS_5Size_IiEEPv:bb.a
  %i.r = uitofp <2 x i8> %wide.load to <2 x double>
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat12)
  %i.t = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.s)
  %i.u = fptosi <2 x double> %i.t to <2 x i64>
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.u, ptr %i.v, align 8, !tbaa !30, !alias.scope !737, !noalias !736
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !733

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %indvars.iv.i.ph
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %i.z = uitofp i8 %i.y to double
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.a, double %i.c)
  %i.ab = tail call double @llvm.round.f64(double %i.aa)
  %i.ac = fptosi double %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i.ph
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !30
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ae = icmp eq i64 %wide.trip.count.i, %.neg
  br i1 %i.ae, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %indvars.iv.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = uitofp i8 %i.ag to double
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.a, double %i.c)
  %i.aj = tail call double @llvm.round.f64(double %i.ai)
  %i.ak = fptosi double %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %indvars.iv.next.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14
  %i.ao = uitofp i8 %i.an to double
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.a, double %i.c)
  %i.aq = tail call double @llvm.round.f64(double %i.ap)
  %i.ar = fptosi double %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.next.i
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !30
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !734

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.at = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.d
  %exitcond24.not.i = icmp eq i32 %i.at, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIhlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !735

_ZN2cv12cpu_baseline7cvt_64fIhlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL13cvtScale8s64sEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %i.a = load double, ptr %7, align 8, !tbaa !16  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 4 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %6, 32    ; 2 uses
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.d = lshr i64 %5, 3                           ; 2 uses
  %i.e = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 0
  %i.f = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fIalEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = and i64 %6, 2147483647     ; 6 uses
  %i.g = add nuw nsw i64 %.sroa.2.0.extract.shift.i, 4294967295
  %i.h = and i64 %i.g, 4294967295                 ; 2 uses
  %i.i = mul i64 %i.d, %i.h
  %i.j = add i64 %i.i, %wide.trip.count.i
  %i.k = shl i64 %i.j, 3
  %scevgep = getelementptr i8, ptr %4, i64 %i.k
  %i.l = mul i64 %1, %i.h
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %scevgep9 = getelementptr i8, ptr %i.m, i64 %wide.trip.count.i
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  %bound0 = icmp ult ptr %4, %scevgep9
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %n.vec = and i64 %6, 2147483646                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert11 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat12 = shufflevector <2 x double> %broadcast.splatinsert11, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.01521.i = phi i32 [ %i.at, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.au, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 5 uses
  %.01719.i = phi ptr [ %i.av, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.p
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %index
  %wide.load = load <2 x i8>, ptr %i.q, align 1, !tbaa !14, !alias.scope !744
  %i.r = sitofp <2 x i8> %wide.load to <2 x double>
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat12)
  %i.t = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.s)
  %i.u = fptosi <2 x double> %i.t to <2 x i64>
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.u, ptr %i.v, align 8, !tbaa !30, !alias.scope !745, !noalias !744
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !741

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %indvars.iv.i.ph
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %i.z = sitofp i8 %i.y to double
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.a, double %i.c)
  %i.ab = tail call double @llvm.round.f64(double %i.aa)
  %i.ac = fptosi double %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i.ph
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !30
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ae = icmp eq i64 %wide.trip.count.i, %.neg
  br i1 %i.ae, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %indvars.iv.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = sitofp i8 %i.ag to double
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.a, double %i.c)
  %i.aj = tail call double @llvm.round.f64(double %i.ai)
  %i.ak = fptosi double %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %indvars.iv.next.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14
  %i.ao = sitofp i8 %i.an to double
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.a, double %i.c)
  %i.aq = tail call double @llvm.round.f64(double %i.ap)
  %i.ar = fptosi double %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.next.i
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !30
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !742

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.at = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.d
  %exitcond24.not.i = icmp eq i32 %i.at, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIalEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !743

_ZN2cv12cpu_baseline7cvt_64fIalEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL13cvtScale8b64sEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift = lshr i64 %6, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 2 uses
  %i.a = load double, ptr %7, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  %8 = tail call double @llvm.round.f64(double %i.c) ; 3 uses
  %i.d = fadd double %i.a, %i.c
  %9 = tail call double @llvm.round.f64(double %i.d) ; 3 uses
  %i.e = lshr i64 %5, 3
  %i.f = icmp sgt i32 %.sroa.2.0.extract.trunc, 0
  %i.g = icmp sgt i32 %.sroa.0.0.extract.trunc, 0
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge28.split

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = and i64 %6, 2147483647
  %xtraiter = and i64 %6, 1
  %i.h = icmp eq i64 %wide.trip.count, 1
  %unroll_iter = and i64 %6, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod31 = trunc i64 %6 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.02127 = phi i32 [ %i.m, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02226 = phi ptr [ %i.o, %._crit_edge ], [ %4, %.preheader.preheader ] ; 4 uses
  %.02325 = phi ptr [ %i.n, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  br i1 %i.h, label %.epil.preheader, label %.preheader.new

._crit_edge28.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.i = getelementptr inbounds nuw i8, ptr %.02325, i64 %indvars.iv.epil.init
  %i.j = load i8, ptr %i.i, align 1, !tbaa !14
  %.not.epil = icmp eq i8 %i.j, 0
  %.v.epil.a = select i1 %.not.epil, double %8, double %9
  %i.k = fptosi double %.v.epil.a to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.02226, i64 %indvars.iv.epil.init
  store i64 %i.k, ptr %i.l, align 8, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.m = add nuw nsw i32 %.02127, 1               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02325, i64 %1
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.02226, i64 %i.e
  %exitcond30.not = icmp eq i32 %i.m, %.sroa.2.0.extract.trunc
  br i1 %exitcond30.not, label %._crit_edge28.split, label %.preheader, !llvm.loop !746

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.02325, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %.not = icmp eq i8 %i.q, 0
  %.v.a = select i1 %.not, double %8, double %9
  %i.r = fptosi double %.v.a to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.02226, i64 %indvars.iv
  store i64 %i.r, ptr %i.s, align 8, !tbaa !30
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.02325, i64 %indvars.iv.next
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %.not.1 = icmp eq i8 %i.u, 0
  %.v.1.a = select i1 %.not.1, double %8, double %9
  %i.v = fptosi double %.v.1.a to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.02226, i64 %indvars.iv.next
  store i64 %i.v, ptr %i.w, align 8, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !747
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14cvtScale16u64sEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %i.a = load double, ptr %7, align 8, !tbaa !16  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %6, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.d = lshr i64 %1, 1
  %i.e = lshr i64 %5, 3
  %i.f = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 0
  %i.g = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fItlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = and i64 %6, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 2
  %n.vec = and i64 %6, 2147483646                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert9 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat10 = shufflevector <2 x double> %broadcast.splatinsert9, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.01521.i = phi i32 [ %i.v, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.w, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 3 uses
  %.01719.i = phi ptr [ %i.x, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %index
  %wide.load = load <2 x i16>, ptr %i.h, align 2, !tbaa !22
  %i.i = uitofp <2 x i16> %wide.load to <2 x double>
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat10)
  %i.k = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.j)
  %i.l = fptosi <2 x double> %i.k to <2 x i64>
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.l, ptr %i.m, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !748

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.p = load i16, ptr %i.o, align 2, !tbaa !22
  %i.q = uitofp i16 %i.p to double
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.a, double %i.c)
  %i.s = tail call double @llvm.round.f64(double %i.r)
  %i.t = fptosi double %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.t, ptr %i.u, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !749

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.v = add nuw nsw i32 %.01521.i, 1             ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %i.d
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.v, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fItlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !750

_ZN2cv12cpu_baseline7cvt_64fItlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14cvtScale16s64sEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %i.a = load double, ptr %7, align 8, !tbaa !16  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %6, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.d = lshr i64 %1, 1
  %i.e = lshr i64 %5, 3
  %i.f = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 0
  %i.g = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fIslEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = and i64 %6, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 2
  %n.vec = and i64 %6, 2147483646                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert9 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat10 = shufflevector <2 x double> %broadcast.splatinsert9, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.01521.i = phi i32 [ %i.v, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.w, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 3 uses
  %.01719.i = phi ptr [ %i.x, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %index
  %wide.load = load <2 x i16>, ptr %i.h, align 2, !tbaa !22
  %i.i = sitofp <2 x i16> %wide.load to <2 x double>
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat10)
  %i.k = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.j)
  %i.l = fptosi <2 x double> %i.k to <2 x i64>
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.l, ptr %i.m, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !751

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.p = load i16, ptr %i.o, align 2, !tbaa !22
  %i.q = sitofp i16 %i.p to double
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.a, double %i.c)
  %i.s = tail call double @llvm.round.f64(double %i.r)
  %i.t = fptosi double %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.t, ptr %i.u, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !752

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.v = add nuw nsw i32 %.01521.i, 1             ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %i.d
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.v, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIslEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !753

_ZN2cv12cpu_baseline7cvt_64fIslEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14cvtScale32u64sEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %i.a = load double, ptr %7, align 8, !tbaa !16  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %6, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.d = lshr i64 %1, 2
  %i.e = lshr i64 %5, 3
  %i.f = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 0
  %i.g = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fIjlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = and i64 %6, 2147483647
  %xtraiter = and i64 %6, 1
  %i.h = icmp eq i64 %wide.trip.count.i, 1
  %unroll_iter = and i64 %6, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod9 = trunc i64 %6 to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.01521.i = phi i32 [ %i.ad, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.ae, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 4 uses
  %.01719.i = phi ptr [ %i.af, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 4 uses
  br i1 %i.h, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
end_hunk_1
