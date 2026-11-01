Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/convert_scale.dispatch?download=true
inline.NumInlined: 458
inline.NumDeleted: 226
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 102
begin_hunk_0_@_ZN2cv12cpu_baselineL14cvtScale32s64uEPKhmS2_mPhmNS_5Size_IiEEPv:bb.a
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27
  %i.s = sitofp i32 %i.r to double
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.a, double %i.c) ; 2 uses
  %i.u = fcmp olt double %i.t, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.u, double 0.000000e+00, double %i.t
  %i.v = tail call double @llvm.round.f64(double %.sroa.speculated.i.i)
  %i.w = fptosi double %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.w, ptr %i.x, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !707

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.y = add nuw nsw i32 %.01521.i, 1             ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.01620.i, i64 %i.d
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.y, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIimEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !708

_ZN2cv12cpu_baseline7cvt_64fIimEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14cvtScale32f64uEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
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
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fIfmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

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
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.01620.i, i64 %index
  %wide.load = load <2 x float>, ptr %i.h, align 4, !tbaa !29
  %i.i = fpext <2 x float> %wide.load to <2 x double>
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat10) ; 2 uses
  %i.k = fcmp olt <2 x double> %i.j, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x double> zeroinitializer, <2 x double> %i.j
  %i.m = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.l)
  %i.n = fptosi <2 x double> %i.m to <2 x i64>
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.n, ptr %i.o, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !709

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.r = load float, ptr %i.q, align 4, !tbaa !29
  %i.s = fpext float %i.r to double
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.a, double %i.c) ; 2 uses
  %i.u = fcmp olt double %i.t, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.u, double 0.000000e+00, double %i.t
  %i.v = tail call double @llvm.round.f64(double %.sroa.speculated.i.i)
  %i.w = fptosi double %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.w, ptr %i.x, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !710

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.y = add nuw nsw i32 %.01521.i, 1             ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.01620.i, i64 %i.d
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.y, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIfmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !711

_ZN2cv12cpu_baseline7cvt_64fIfmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14cvtScale64f64uEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %i.a = load double, ptr %7, align 8, !tbaa !16  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %6, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.d = lshr i64 %1, 3
  %i.e = lshr i64 %5, 3
  %i.f = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 0
  %i.g = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fIdmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

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
  %.01521.i = phi i32 [ %i.w, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.x, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 3 uses
  %.01719.i = phi ptr [ %i.y, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %index
  %wide.load = load <2 x double>, ptr %i.h, align 8, !tbaa !16
  %i.i = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat10) ; 2 uses
  %i.j = fcmp olt <2 x double> %i.i, zeroinitializer
  %i.k = select <2 x i1> %i.j, <2 x double> zeroinitializer, <2 x double> %i.i
  %i.l = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.k)
  %i.m = fptosi <2 x double> %i.l to <2 x i64>
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.m, ptr %i.n, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !712

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.q = load double, ptr %i.p, align 8, !tbaa !16
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.a, double %i.c) ; 2 uses
  %i.s = fcmp olt double %i.r, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.s, double 0.000000e+00, double %i.r
  %i.t = tail call double @llvm.round.f64(double %.sroa.speculated.i.i)
  %i.u = fptosi double %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.u, ptr %i.v, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !713

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.w = add nuw nsw i32 %.01521.i, 1             ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %i.d
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.w, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIdmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !714

_ZN2cv12cpu_baseline7cvt_64fIdmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14cvtScale16f64uEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
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
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fINS_6hfloatEmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

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
  %.01521.i = phi i32 [ %i.ad, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.ae, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 3 uses
  %.01719.i = phi ptr [ %i.af, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %8 = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %index
  %wide.load = load <2 x i16>, ptr %8, align 2, !tbaa !24 ; 2 uses
  %9 = zext <2 x i16> %wide.load to <2 x i32>     ; 2 uses
  %10 = shl nuw nsw <2 x i32> %9, splat (i32 13)  ; 2 uses
  %11 = and <2 x i32> %10, splat (i32 268427264)  ; 2 uses
  %12 = add nuw nsw <2 x i32> %11, splat (i32 939524096)
  %13 = and <2 x i32> %9, splat (i32 31744)       ; 2 uses
  %14 = icmp eq <2 x i32> %13, splat (i32 31744)
  %15 = icmp eq <2 x i32> %13, zeroinitializer
  %16 = add nuw nsw <2 x i32> %11, splat (i32 947912704)
  %17 = bitcast <2 x i32> %16 to <2 x float>
  %18 = fadd <2 x float> %17, splat (float f0xB8800000)
  %19 = bitcast <2 x float> %18 to <2 x i32>
  %20 = or <2 x i32> %10, splat (i32 1879048192)
  %predphi = select <2 x i1> %15, <2 x i32> %19, <2 x i32> %12
  %predphi11 = select <2 x i1> %14, <2 x i32> %20, <2 x i32> %predphi
  %21 = sext <2 x i16> %wide.load to <2 x i32>
  %22 = and <2 x i32> %21, splat (i32 -2147483648)
  %23 = or <2 x i32> %predphi11, %22
  %24 = bitcast <2 x i32> %23 to <2 x float>
  %25 = fpext <2 x float> %24 to <2 x double>
  %26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat10) ; 2 uses
  %27 = fcmp olt <2 x double> %26, zeroinitializer
  %28 = select <2 x i1> %27, <2 x double> zeroinitializer, <2 x double> %26
  %29 = tail call <2 x double> @llvm.round.v2f64(<2 x double> %28)
  %30 = fptosi <2 x double> %29 to <2 x i64>
  %31 = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %30, ptr %31, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %32 = icmp eq i64 %index.next, %n.vec
  br i1 %32, label %middle.block, label %vector.body, !llvm.loop !715

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  br label %bb.b

bb.b:                                             ; preds = %scalar.ph.preheader, %_ZNK2cv6hfloatcvfEv.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK2cv6hfloatcvfEv.exit.i ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.i = load i16, ptr %i.h, align 2, !tbaa !24   ; 2 uses
  %i.j = zext i16 %i.i to i32                     ; 2 uses
  %i.k = shl nuw nsw i32 %i.j, 13                 ; 2 uses
  %i.l = and i32 %i.k, 268427264                  ; 2 uses
  %i.m = add nuw nsw i32 %i.l, 939524096
  %i.n = and i32 %i.j, 31744
  switch i32 %i.n, label %_ZNK2cv6hfloatcvfEv.exit.i [
    i32 31744, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = or i32 %i.k, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw nsw i32 %i.l, 947912704
  %i.q = bitcast i32 %i.p to float
  %i.r = fadd float %i.q, f0xB8800000
  %i.s = bitcast float %i.r to i32
  br label %_ZNK2cv6hfloatcvfEv.exit.i

_ZNK2cv6hfloatcvfEv.exit.i:                       ; preds = %bb.d, %bb.c, %bb.b
  %i.t = phi i32 [ %i.o, %bb.c ], [ %i.s, %bb.d ], [ %i.m, %bb.b ]
  %.signext.i.i = sext i16 %i.i to i32
  %i.u = and i32 %.signext.i.i, -2147483648
  %i.v = or i32 %i.t, %i.u
  %i.w = bitcast i32 %i.v to float
  %i.x = fpext float %i.w to double
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.a, double %i.c) ; 2 uses
  %i.z = fcmp olt double %i.y, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.z, double 0.000000e+00, double %i.y
  %i.aa = tail call double @llvm.round.f64(double %.sroa.speculated.i.i)
  %i.ab = fptosi double %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !716

._crit_edge.i:                                    ; preds = %_ZNK2cv6hfloatcvfEv.exit.i, %middle.block
  %i.ad = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %i.d
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.ad, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fINS_6hfloatEmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !717

_ZN2cv12cpu_baseline7cvt_64fINS_6hfloatEmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL15cvtScale16bf64uEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
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
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fINS_6bfloatEmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

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
  %.01521.i = phi i32 [ %i.ae, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.af, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 3 uses
  %.01719.i = phi ptr [ %i.ag, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %index
  %wide.load = load <2 x i16>, ptr %i.h, align 2, !tbaa !26
  %i.i = zext <2 x i16> %wide.load to <2 x i32>
  %i.j = shl nuw <2 x i32> %i.i, splat (i32 16)
  %i.k = bitcast <2 x i32> %i.j to <2 x float>
  %i.l = fpext <2 x float> %i.k to <2 x double>
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat10) ; 2 uses
  %i.n = fcmp olt <2 x double> %i.m, zeroinitializer
  %i.o = select <2 x i1> %i.n, <2 x double> zeroinitializer, <2 x double> %i.m
  %i.p = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.o)
  %i.q = fptosi <2 x double> %i.p to <2 x i64>
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.q, ptr %i.r, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !718

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !26
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw i32 %i.v, 16
  %i.x = bitcast i32 %i.w to float
  %i.y = fpext float %i.x to double
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.a, double %i.c) ; 2 uses
  %i.aa = fcmp olt double %i.z, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.aa, double 0.000000e+00, double %i.z
  %i.ab = tail call double @llvm.round.f64(double %.sroa.speculated.i.i)
  %i.ac = fptosi double %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !719

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.ae = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %i.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.ae, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fINS_6bfloatEmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !720

_ZN2cv12cpu_baseline7cvt_64fINS_6bfloatEmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL11cvtScale64uEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %i.a = load double, ptr %7, align 8, !tbaa !16  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 4 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %6, 32    ; 2 uses
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.d = lshr i64 %1, 3                           ; 2 uses
  %i.e = lshr i64 %5, 3                           ; 2 uses
  %i.f = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 0
  %i.g = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fImmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = and i64 %6, 2147483647     ; 6 uses
  %i.h = add nuw nsw i64 %.sroa.2.0.extract.shift.i, 4294967295
  %i.i = and i64 %i.h, 4294967295                 ; 2 uses
  %i.j = mul i64 %i.d, %i.i
  %i.k = add i64 %i.j, %wide.trip.count.i
  %i.l = shl i64 %i.k, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.l
  %i.m = mul i64 %i.e, %i.i
  %i.n = add i64 %i.m, %wide.trip.count.i
  %i.o = shl i64 %i.n, 3
  %scevgep11 = getelementptr i8, ptr %4, i64 %i.o
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 2
  %bound0 = icmp ult ptr %4, %scevgep
  %bound1 = icmp ult ptr %0, %scevgep11
  %found.conflict = and i1 %bound0, %bound1
  %i.p = or i64 %1, %5
  %i.q = icmp slt i64 %i.p, 0
  %i.r = or i1 %found.conflict, %i.q
  %n.vec = and i64 %6, 2147483646                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat14 = shufflevector <2 x double> %broadcast.splatinsert13, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.01521.i = phi i32 [ %i.ba, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.bb, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 5 uses
  %.01719.i = phi ptr [ %i.bc, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.r
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %index
  %wide.load = load <2 x i64>, ptr %i.s, align 8, !tbaa !30, !alias.scope !727
  %i.t = uitofp <2 x i64> %wide.load to <2 x double>
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat14) ; 2 uses
  %i.v = fcmp olt <2 x double> %i.u, zeroinitializer
  %i.w = select <2 x i1> %i.v, <2 x double> zeroinitializer, <2 x double> %i.u
  %i.x = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.w)
  %i.y = fptosi <2 x double> %i.x to <2 x i64>
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.y, ptr %i.z, align 8, !tbaa !30, !alias.scope !728, !noalias !727
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !724

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.i.ph
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !30
  %i.ad = uitofp i64 %i.ac to double
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.a, double %i.c) ; 2 uses
  %i.af = fcmp olt double %i.ae, 0.000000e+00
  %.sroa.speculated.i.i.prol = select i1 %i.af, double 0.000000e+00, double %i.ae
  %i.ag = tail call double @llvm.round.f64(double %.sroa.speculated.i.i.prol)
  %i.ah = fptosi double %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i.ph
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !30
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.aj = icmp eq i64 %wide.trip.count.i, %.neg
  br i1 %i.aj, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !30
  %i.am = uitofp i64 %i.al to double
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.a, double %i.c) ; 2 uses
  %i.ao = fcmp olt double %i.an, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ao, double 0.000000e+00, double %i.an
  %i.ap = tail call double @llvm.round.f64(double %.sroa.speculated.i.i)
  %i.aq = fptosi double %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.next.i
  %i.at = load i64, ptr %i.as, align 8, !tbaa !30
  %i.au = uitofp i64 %i.at to double
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double %i.a, double %i.c) ; 2 uses
  %i.aw = fcmp olt double %i.av, 0.000000e+00
  %.sroa.speculated.i.i.1 = select i1 %i.aw, double 0.000000e+00, double %i.av
  %i.ax = tail call double @llvm.round.f64(double %.sroa.speculated.i.i.1)
  %i.ay = fptosi double %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.next.i
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !30
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !725

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ba = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %i.d
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.ba, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fImmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !726

_ZN2cv12cpu_baseline7cvt_64fImmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14cvtScale64s64uEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %i.a = load double, ptr %7, align 8, !tbaa !16  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %6, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.d = lshr i64 %1, 3
  %i.e = lshr i64 %5, 3
  %i.f = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 0
  %i.g = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fIlmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = and i64 %6, 2147483647
  %xtraiter = and i64 %6, 1
  %i.h = icmp eq i64 %wide.trip.count.i, 1
  %unroll_iter = and i64 %6, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod9 = trunc i64 %6 to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.01521.i = phi i32 [ %i.ag, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.ah, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 4 uses
  %.01719.i = phi ptr [ %i.ai, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 4 uses
  br i1 %i.h, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = sitofp i64 %i.j to double
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.a, double %i.c) ; 2 uses
  %i.m = fcmp olt double %i.l, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.m, double 0.000000e+00, double %i.l
  %i.n = tail call double @llvm.round.f64(double %.sroa.speculated.i.i)
  %i.o = fptosi double %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.o, ptr %i.p, align 8, !tbaa !30
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.next.i
  %i.r = load i64, ptr %i.q, align 8, !tbaa !30
  %i.s = sitofp i64 %i.r to double
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.a, double %i.c) ; 2 uses
  %i.u = fcmp olt double %i.t, 0.000000e+00
  %.sroa.speculated.i.i.1 = select i1 %i.u, double 0.000000e+00, double %i.t
  %i.v = tail call double @llvm.round.f64(double %.sroa.speculated.i.i.1)
  %i.w = fptosi double %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.next.i
  store i64 %i.w, ptr %i.x, align 8, !tbaa !30
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !729

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.i.epil.init
  %i.z = load i64, ptr %i.y, align 8, !tbaa !30
  %i.aa = sitofp i64 %i.z to double
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.a, double %i.c) ; 2 uses
  %i.ac = fcmp olt double %i.ab, 0.000000e+00
  %.sroa.speculated.i.i.epil = select i1 %i.ac, double 0.000000e+00, double %i.ab
  %i.ad = tail call double @llvm.round.f64(double %.sroa.speculated.i.i.epil)
  %i.ae = fptosi double %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i.epil.init
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !30
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.ag = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %i.d
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.ag, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIlmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !730

_ZN2cv12cpu_baseline7cvt_64fIlmEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL13cvtScale8u64sEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
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
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fIhlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = and i64 %6, 2147483647     ; 6 uses
  %i.g = add nuw nsw i64 %.sroa.2.0.extract.shift.i, 4294967295
  %i.h = and i64 %i.g, 4294967295                 ; 2 uses
  %i.i = mul i64 %1, %i.h
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep = getelementptr i8, ptr %i.j, i64 %wide.trip.count.i
  %i.k = mul i64 %i.d, %i.h
  %i.l = add i64 %i.k, %wide.trip.count.i
  %i.m = shl i64 %i.l, 3
  %scevgep11 = getelementptr i8, ptr %4, i64 %i.m
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  %bound0 = icmp ult ptr %4, %scevgep
  %bound1 = icmp ult ptr %0, %scevgep11
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %n.vec = and i64 %6, 2147483646                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat14 = shufflevector <2 x double> %broadcast.splatinsert13, <2 x double> poison, <2 x i32> zeroinitializer
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
  %wide.load = load <2 x i8>, ptr %i.q, align 1, !tbaa !14, !alias.scope !737
  %i.r = uitofp <2 x i8> %wide.load to <2 x double>
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat14)
  %i.t = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.s)
  %i.u = fptosi <2 x double> %i.t to <2 x i64>
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.u, ptr %i.v, align 8, !tbaa !30, !alias.scope !738, !noalias !737
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !734

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
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !735

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.at = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.d
  %exitcond24.not.i = icmp eq i32 %i.at, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIhlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !736

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
  %i.i = mul i64 %1, %i.h
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep = getelementptr i8, ptr %i.j, i64 %wide.trip.count.i
  %i.k = mul i64 %i.d, %i.h
  %i.l = add i64 %i.k, %wide.trip.count.i
  %i.m = shl i64 %i.l, 3
  %scevgep11 = getelementptr i8, ptr %4, i64 %i.m
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  %bound0 = icmp ult ptr %4, %scevgep
  %bound1 = icmp ult ptr %0, %scevgep11
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %n.vec = and i64 %6, 2147483646                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat14 = shufflevector <2 x double> %broadcast.splatinsert13, <2 x double> poison, <2 x i32> zeroinitializer
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
  %wide.load = load <2 x i8>, ptr %i.q, align 1, !tbaa !14, !alias.scope !745
  %i.r = sitofp <2 x i8> %wide.load to <2 x double>
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat14)
  %i.t = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.s)
  %i.u = fptosi <2 x double> %i.t to <2 x i64>
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.u, ptr %i.v, align 8, !tbaa !30, !alias.scope !746, !noalias !745
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !742

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
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !743

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.at = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01620.i, i64 %1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.d
  %exitcond24.not.i = icmp eq i32 %i.at, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIalEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !744

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
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 4 uses
  %i.d = fadd double %i.a, %i.c                   ; 3 uses
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
  %.v.v.epil = select i1 %.not.epil, double %i.c, double %i.d
  %.v.epil = tail call double @llvm.round.f64(double %.v.v.epil)
  %i.k = fptosi double %.v.epil to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.02226, i64 %indvars.iv.epil.init
  store i64 %i.k, ptr %i.l, align 8, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.m = add nuw nsw i32 %.02127, 1               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02325, i64 %1
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.02226, i64 %i.e
  %exitcond30.not = icmp eq i32 %i.m, %.sroa.2.0.extract.trunc
  br i1 %exitcond30.not, label %._crit_edge28.split, label %.preheader, !llvm.loop !747

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.02325, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %.not = icmp eq i8 %i.q, 0
  %.v.v = select i1 %.not, double %i.c, double %i.d
  %.v = tail call double @llvm.round.f64(double %.v.v)
  %i.r = fptosi double %.v to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.02226, i64 %indvars.iv
  store i64 %i.r, ptr %i.s, align 8, !tbaa !30
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.02325, i64 %indvars.iv.next
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %.not.1 = icmp eq i8 %i.u, 0
  %.v.v.1 = select i1 %.not.1, double %i.c, double %i.d
  %.v.1 = tail call double @llvm.round.f64(double %.v.v.1)
  %i.v = fptosi double %.v.1 to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.02226, i64 %indvars.iv.next
  store i64 %i.v, ptr %i.w, align 8, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !748
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
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !749

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
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !750

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.v = add nuw nsw i32 %.01521.i, 1             ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %i.d
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.v, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fItlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !751

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
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !752

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
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !753

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.v = add nuw nsw i32 %.01521.i, 1             ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %i.d
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.v, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIslEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !754

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
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  %i.k = uitofp i32 %i.j to double
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.a, double %i.c)
  %i.m = tail call double @llvm.round.f64(double %i.l)
  %i.n = fptosi double %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.n, ptr %i.o, align 8, !tbaa !30
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.01620.i, i64 %indvars.iv.next.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !27
  %i.r = uitofp i32 %i.q to double
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double %i.a, double %i.c)
  %i.t = tail call double @llvm.round.f64(double %i.s)
  %i.u = fptosi double %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.next.i
  store i64 %i.u, ptr %i.v, align 8, !tbaa !30
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !755

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.01620.i, i64 %indvars.iv.i.epil.init
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27
  %i.y = uitofp i32 %i.x to double
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.a, double %i.c)
  %i.aa = tail call double @llvm.round.f64(double %i.z)
  %i.ab = fptosi double %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i.epil.init
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !30
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.ad = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.01620.i, i64 %i.d
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.ad, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIjlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !756

_ZN2cv12cpu_baseline7cvt_64fIjlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14cvtScale32s64sEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
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
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fIilEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

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
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.01620.i, i64 %index
  %wide.load = load <2 x i32>, ptr %i.h, align 4, !tbaa !27
  %i.i = sitofp <2 x i32> %wide.load to <2 x double>
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat10)
  %i.k = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.j)
  %i.l = fptosi <2 x double> %i.k to <2 x i64>
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.l, ptr %i.m, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !757

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27
  %i.q = sitofp i32 %i.p to double
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.a, double %i.c)
  %i.s = tail call double @llvm.round.f64(double %i.r)
  %i.t = fptosi double %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.t, ptr %i.u, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !758

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.v = add nuw nsw i32 %.01521.i, 1             ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.01620.i, i64 %i.d
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.v, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIilEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !759

_ZN2cv12cpu_baseline7cvt_64fIilEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14cvtScale32f64sEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
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
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fIflEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

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
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.01620.i, i64 %index
  %wide.load = load <2 x float>, ptr %i.h, align 4, !tbaa !29
  %i.i = fpext <2 x float> %wide.load to <2 x double>
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat10)
  %i.k = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.j)
  %i.l = fptosi <2 x double> %i.k to <2 x i64>
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.l, ptr %i.m, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !760

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.p = load float, ptr %i.o, align 4, !tbaa !29
  %i.q = fpext float %i.p to double
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.a, double %i.c)
  %i.s = tail call double @llvm.round.f64(double %i.r)
  %i.t = fptosi double %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.t, ptr %i.u, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !761

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.v = add nuw nsw i32 %.01521.i, 1             ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.01620.i, i64 %i.d
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.v, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIflEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !762

_ZN2cv12cpu_baseline7cvt_64fIflEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14cvtScale64f64sEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %i.a = load double, ptr %7, align 8, !tbaa !16  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %6, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.d = lshr i64 %1, 3
  %i.e = lshr i64 %5, 3
  %i.f = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 0
  %i.g = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fIdlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = and i64 %6, 2147483647
  %xtraiter = and i64 %6, 1
  %i.h = icmp eq i64 %wide.trip.count.i, 1
  %unroll_iter = and i64 %6, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod9 = trunc i64 %6 to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.01521.i = phi i32 [ %i.aa, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.ab, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 4 uses
  %.01719.i = phi ptr [ %i.ac, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 4 uses
  br i1 %i.h, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.j = load double, ptr %i.i, align 8, !tbaa !16
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.a, double %i.c)
  %i.l = tail call double @llvm.round.f64(double %i.k)
  %i.m = fptosi double %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.m, ptr %i.n, align 8, !tbaa !30
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.next.i
  %i.p = load double, ptr %i.o, align 8, !tbaa !16
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.a, double %i.c)
  %i.r = tail call double @llvm.round.f64(double %i.q)
  %i.s = fptosi double %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.next.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !30
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !763

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.i.epil.init
  %i.v = load double, ptr %i.u, align 8, !tbaa !16
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.a, double %i.c)
  %i.x = tail call double @llvm.round.f64(double %i.w)
  %i.y = fptosi double %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i.epil.init
  store i64 %i.y, ptr %i.z, align 8, !tbaa !30
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.aa = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %i.d
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.aa, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIdlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !764

_ZN2cv12cpu_baseline7cvt_64fIdlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14cvtScale16f64sEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %i.a = load double, ptr %7, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %6, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.d = lshr i64 %1, 1
  %i.e = lshr i64 %5, 3
  %i.f = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 0
  %i.g = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fINS_6hfloatElEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = and i64 %6, 2147483647
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.01521.i = phi i32 [ %i.ac, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.ad, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 2 uses
  %.01719.i = phi ptr [ %i.ae, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %_ZNK2cv6hfloatcvfEv.exit.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.i = load i16, ptr %i.h, align 2, !tbaa !24   ; 2 uses
  %i.j = zext i16 %i.i to i32                     ; 2 uses
  %i.k = shl nuw nsw i32 %i.j, 13                 ; 2 uses
  %i.l = and i32 %i.k, 268427264                  ; 2 uses
  %i.m = add nuw nsw i32 %i.l, 939524096
  %i.n = and i32 %i.j, 31744
  switch i32 %i.n, label %_ZNK2cv6hfloatcvfEv.exit.i [
    i32 31744, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = or i32 %i.k, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw nsw i32 %i.l, 947912704
  %i.q = bitcast i32 %i.p to float
  %i.r = fadd float %i.q, f0xB8800000
  %i.s = bitcast float %i.r to i32
  br label %_ZNK2cv6hfloatcvfEv.exit.i

_ZNK2cv6hfloatcvfEv.exit.i:                       ; preds = %bb.d, %bb.c, %bb.b
  %i.t = phi i32 [ %i.o, %bb.c ], [ %i.s, %bb.d ], [ %i.m, %bb.b ]
  %.signext.i.i = sext i16 %i.i to i32
  %i.u = and i32 %.signext.i.i, -2147483648
  %i.v = or i32 %i.t, %i.u
  %i.w = bitcast i32 %i.v to float
  %i.x = fpext float %i.w to double
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.a, double %i.c)
  %i.z = tail call double @llvm.round.f64(double %i.y)
  %i.aa = fptosi double %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !765

._crit_edge.i:                                    ; preds = %_ZNK2cv6hfloatcvfEv.exit.i
  %i.ac = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %i.d
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.ac, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fINS_6hfloatElEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !766

_ZN2cv12cpu_baseline7cvt_64fINS_6hfloatElEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL15cvtScale16bf64sEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
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
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fINS_6bfloatElEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

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
  %.01521.i = phi i32 [ %i.ab, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.ac, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 3 uses
  %.01719.i = phi ptr [ %i.ad, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %index
  %wide.load = load <2 x i16>, ptr %i.h, align 2, !tbaa !26
  %i.i = zext <2 x i16> %wide.load to <2 x i32>
  %i.j = shl nuw <2 x i32> %i.i, splat (i32 16)
  %i.k = bitcast <2 x i32> %i.j to <2 x float>
  %i.l = fpext <2 x float> %i.k to <2 x double>
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat10)
  %i.n = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.m)
  %i.o = fptosi <2 x double> %i.n to <2 x i64>
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.o, ptr %i.p, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !767

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.s = load i16, ptr %i.r, align 2, !tbaa !26
  %i.t = zext i16 %i.s to i32
  %i.u = shl nuw i32 %i.t, 16
  %i.v = bitcast i32 %i.u to float
  %i.w = fpext float %i.v to double
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double %i.a, double %i.c)
  %i.y = tail call double @llvm.round.f64(double %i.x)
  %i.z = fptosi double %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !768

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.ab = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.01620.i, i64 %i.d
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.ab, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fINS_6bfloatElEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !769

_ZN2cv12cpu_baseline7cvt_64fINS_6bfloatElEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14cvtScale64u64sEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %i.a = load double, ptr %7, align 8, !tbaa !16  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 4 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %6, 32    ; 2 uses
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.d = lshr i64 %1, 3                           ; 2 uses
  %i.e = lshr i64 %5, 3                           ; 2 uses
  %i.f = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 0
  %i.g = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fImlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = and i64 %6, 2147483647     ; 6 uses
  %i.h = add nuw nsw i64 %.sroa.2.0.extract.shift.i, 4294967295
  %i.i = and i64 %i.h, 4294967295                 ; 2 uses
  %i.j = mul i64 %i.d, %i.i
  %i.k = add i64 %i.j, %wide.trip.count.i
  %i.l = shl i64 %i.k, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.l
  %i.m = mul i64 %i.e, %i.i
  %i.n = add i64 %i.m, %wide.trip.count.i
  %i.o = shl i64 %i.n, 3
  %scevgep11 = getelementptr i8, ptr %4, i64 %i.o
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 4
  %bound0 = icmp ult ptr %4, %scevgep
  %bound1 = icmp ult ptr %0, %scevgep11
  %found.conflict = and i1 %bound0, %bound1
  %i.p = or i64 %1, %5
  %i.q = icmp slt i64 %i.p, 0
  %i.r = or i1 %found.conflict, %i.q
  %n.vec = and i64 %6, 2147483646                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat14 = shufflevector <2 x double> %broadcast.splatinsert13, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.01521.i = phi i32 [ %i.av, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01620.i = phi ptr [ %i.aw, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 5 uses
  %.01719.i = phi ptr [ %i.ax, %._crit_edge.i ], [ %4, %.preheader.preheader.i ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.r
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %index
  %wide.load = load <2 x i64>, ptr %i.s, align 8, !tbaa !30, !alias.scope !776
  %i.t = uitofp <2 x i64> %wide.load to <2 x double>
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat14)
  %i.v = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.u)
  %i.w = fptosi <2 x double> %i.v to <2 x i64>
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %index
  store <2 x i64> %i.w, ptr %i.x, align 8, !tbaa !30, !alias.scope !777, !noalias !776
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !773

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.i.ph
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !30
  %i.ab = uitofp i64 %i.aa to double
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.a, double %i.c)
  %i.ad = tail call double @llvm.round.f64(double %i.ac)
  %i.ae = fptosi double %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i.ph
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !30
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ag = icmp eq i64 %wide.trip.count.i, %.neg
  br i1 %i.ag, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !30
  %i.aj = uitofp i64 %i.ai to double
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.a, double %i.c)
  %i.al = tail call double @llvm.round.f64(double %i.ak)
  %i.am = fptosi double %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.am, ptr %i.an, align 8, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.next.i
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !30
  %i.aq = uitofp i64 %i.ap to double
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.a, double %i.c)
  %i.as = tail call double @llvm.round.f64(double %i.ar)
  %i.at = fptosi double %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.next.i
  store i64 %i.at, ptr %i.au, align 8, !tbaa !30
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !774

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.av = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %i.d
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.av, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fImlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !775

_ZN2cv12cpu_baseline7cvt_64fImlEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL11cvtScale64sEPKhmS2_mPhmNS_5Size_IiEEPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7) #4 {
bb.a:
  %i.a = load double, ptr %7, align 8, !tbaa !16  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !16 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %6, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.d = lshr i64 %1, 3
  %i.e = lshr i64 %5, 3
  %i.f = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 0
  %i.g = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN2cv12cpu_baseline7cvt_64fIllEEvPKT_mPT0_mNS_5Size_IiEEdd.exit

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
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = sitofp i64 %i.j to double
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.a, double %i.c)
  %i.m = tail call double @llvm.round.f64(double %i.l)
  %i.n = fptosi double %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i
  store i64 %i.n, ptr %i.o, align 8, !tbaa !30
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.next.i
  %i.q = load i64, ptr %i.p, align 8, !tbaa !30
  %i.r = sitofp i64 %i.q to double
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double %i.a, double %i.c)
  %i.t = tail call double @llvm.round.f64(double %i.s)
  %i.u = fptosi double %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.next.i
  store i64 %i.u, ptr %i.v, align 8, !tbaa !30
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !778

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %indvars.iv.i.epil.init
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30
  %i.y = sitofp i64 %i.x to double
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.a, double %i.c)
  %i.aa = tail call double @llvm.round.f64(double %i.z)
  %i.ab = fptosi double %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %indvars.iv.i.epil.init
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !30
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.ad = add nuw nsw i32 %.01521.i, 1            ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.01620.i, i64 %i.d
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.01719.i, i64 %i.e
  %exitcond24.not.i = icmp eq i32 %i.ad, %.sroa.2.0.extract.trunc.i
  br i1 %exitcond24.not.i, label %_ZN2cv12cpu_baseline7cvt_64fIllEEvPKT_mPT0_mNS_5Size_IiEEdd.exit, label %.preheader.i, !llvm.loop !779

_ZN2cv12cpu_baseline7cvt_64fIllEEvPKT_mPT0_mNS_5Size_IiEEdd.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN2cv19getConvertScaleFuncEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv19getConvertScaleFuncEiiE24__cv_trace_location_fn24)
  %i.a = invoke noundef ptr @_ZN2cv12cpu_baseline19getConvertScaleFuncEii(i32 noundef %0, i32 noundef %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !34
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #19
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %i.a

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.f
}

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv15convertScaleAbsERKNS_11_InputArrayERKNS_12_OutputArrayEdd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2, double noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %7 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 15 uses
  %i.a = alloca [2 x double], align 16            ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %i.b = alloca [3 x ptr], align 16               ; 7 uses
  %i.c = alloca [2 x ptr], align 16               ; 7 uses
  %10 = alloca %"class.cv::NAryMatIterator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv15convertScaleAbsERKNS_11_InputArrayERKNS_12_OutputArrayEddE24__cv_trace_location_fn89)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.d = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.a
  %i.e = icmp eq i32 %i.d, 65536
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !787, !noalias !788
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.g)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.m

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.m

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.h = load i32, ptr %8, align 8, !tbaa !795
  %i.i = lshr i32 %i.h, 5
  %i.j = and i32 %i.i, 127
  %i.k = add nuw nsw i32 %i.j, 1                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store double %2, ptr %i.a, align 16, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %3, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.n = shl nuw nsw i32 %i.k, 5
  %i.o = add nsw i32 %i.n, -32
  invoke void @_ZNK2cv12_OutputArray6createERKNS_8MatShapeEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(52) %i.m, i32 noundef %i.o, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.p = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc32 unwind label %bb.o

.noexc32:                                         ; preds = %bb.d
  %i.q = icmp eq i32 %i.p, 65536
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !787, !noalias !796
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.s)
          to label %_ZNK2cv11_InputArray6getMatEi.exit35 unwind label %bb.o

bb.f:                                             ; preds = %.noexc32
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit35 unwind label %bb.o

_ZNK2cv11_InputArray6getMatEi.exit35:             ; preds = %bb.e, %bb.f
  %i.t = load i32, ptr %8, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cvL18getCvtScaleAbsFuncEiE24__cv_trace_location_fn17)
          to label %.noexc36 unwind label %bb.s

.noexc36:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit35
  %i.u = and i32 %i.t, 31                         ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 13
  br i1 %i.v, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %.noexc36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv12cpu_baseline18getCvtScaleAbsFuncEi, ptr noundef nonnull @.str.1, i32 noundef 442) #17
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc.i
  unreachable

bb.i:                                             ; preds = %.noexc.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %4, align 8, !tbaa !13     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !14
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.body.i

switch.lookup:                                    ; preds = %.noexc36
  %i.ac = zext nneg i32 %i.u to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2cv15convertScaleAbsERKNS_11_InputArrayERKNS_12_OutputArrayEdd, i64 %i.ac
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !34
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %switch.lookup
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %bb.p unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #19
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.body

bb.m:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.n:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.o:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %bb.j, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !797
  %i.an = icmp slt i32 %i.am, 3
  br i1 %i.an, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ao = invoke i64 @_ZN2cv19getContinuousSize2DERNS_3MatES1_i(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef %i.k)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !798
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !798
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !30
  invoke void %switch.load(ptr noundef %i.aq, i64 noundef %i.as, ptr noundef null, i64 noundef 0, ptr noundef %i.au, i64 noundef %i.aw, i64 %i.ao, ptr noundef nonnull %i.a)
          to label %bb.z unwind label %bb.s

bb.s:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit35, %bb.r, %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr %8, ptr %i.b, align 16, !tbaa !800
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %9, ptr %i.ay, align 8, !tbaa !800
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.az, align 16, !tbaa !800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPPhi(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef -1)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !805
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = mul nsw i32 %i.k, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.insert.ext = zext i32 %i.bd to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 4294967296
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %bb.u
  %.016 = phi i64 [ 0, %bb.u ], [ %i.bk, %bb.y ]  ; 2 uses
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !806
  %i.bh = icmp ult i64 %.016, %i.bg
  br i1 %i.bh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bi = load ptr, ptr %i.c, align 16, !tbaa !807
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !807
  invoke void %switch.load(ptr noundef %i.bi, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef %i.bj, i64 noundef 0, i64 %.sroa.0.0.insert.insert, ptr noundef nonnull %i.a)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.bk = add nuw i64 %.016, 1
  %i.bl = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !784 ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.x, %bb.t
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.body

bb.z:                                             ; preds = %bb.r, %bb.w
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !34
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %7)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #19
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret void

.body:                                            ; preds = %bb.s, %.body.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn25 = phi { ptr, i32 } [ %lpad.loopexit.split-lp39, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ax, %bb.s ], [ %eh.lpad-body.i, %.body.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #16
  br label %bb.ac

bb.ac:                                            ; preds = %.body, %bb.o
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %.body ], [ %i.ak, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.n
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %bb.ac ], [ %i.aj, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.m
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn, %bb.ad ], [ %i.ai, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  resume { ptr, i32 } %.pn25.pn.pn.pn
}

declare void @_ZNK2cv12_OutputArray6createERKNS_8MatShapeEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(52), i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #5

declare i64 @_ZN2cv19getContinuousSize2DERNS_3MatES1_i(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPPhi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #9

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.round.v4f64(<4 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.round.v2f64(<2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #9
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v16f32
!515 = distinct !{!515, !17}
!516 = distinct !{!516, !17, !18}
!517 = !{!511}
!518 = !{!512}
!519 = distinct !{!519, i1 false, !"LVerDomain"}
!520 = distinct !{!520, !519}
!521 = distinct !{!521, !519}
!522 = distinct !{!522, !17, !18, !19}
!523 = distinct !{!523, !17, !18}
!524 = distinct !{!524, !17}
!525 = !{!520}
!526 = !{!521}
!527 = distinct !{!527, i1 false, !"LVerDomain"}
!528 = distinct !{!528, !527}
!529 = distinct !{!529, !527}
!530 = distinct !{!530, !17, !18, !19}
!531 = distinct !{!531, !17, !18}
!532 = distinct !{!532, !17}
!533 = !{!528}
!534 = !{!529}
!535 = distinct !{!535, !17, !18, !19}
!536 = distinct !{!536, !17, !19, !18}
!537 = distinct !{!537, !17}
!538 = distinct !{!538, !17, !18, !19}
!539 = distinct !{!539, !17, !19, !18}
!540 = distinct !{!540, !17}
!541 = distinct !{!541, !17, !18, !19}
!542 = distinct !{!542, !17, !19, !18}
!543 = distinct !{!543, !17}
!544 = distinct !{!544, !17, !18, !19}
!545 = distinct !{!545, !17, !19, !18}
!546 = distinct !{!546, !17}
!547 = distinct !{!547, i1 false, !"LVerDomain"}
!548 = distinct !{!548, !547}
!549 = distinct !{!549, !547}
!550 = distinct !{!550, !17, !18, !19}
!551 = distinct !{!551, !17, !18}
!552 = distinct !{!552, !17}
!553 = !{!548}
!554 = !{!549}
!555 = distinct !{!555, i1 false, !"LVerDomain"}
!556 = distinct !{!556, !555}
!557 = distinct !{!557, !555}
!558 = distinct !{!558, !17, !18, !19}
!559 = distinct !{!559, !17, !18}
!560 = distinct !{!560, !17}
!561 = !{!556}
!562 = !{!557}
!563 = distinct !{!563, !17, !18, !19}
!564 = distinct !{!564, !17, !19, !18}
!565 = distinct !{!565, !17}
!566 = distinct !{!566, !17, !18, !19}
!567 = distinct !{!567, !17, !19, !18}
!568 = distinct !{!568, !17}
!569 = distinct !{!569, i1 false, !"LVerDomain"}
!570 = distinct !{!570, !569}
!571 = distinct !{!571, !569}
!572 = distinct !{!572, !17, !18, !19}
!573 = distinct !{!573, !17, !18, !19}
!574 = distinct !{!574, !17}
!575 = distinct !{!575, !17, !18}
!576 = !{!570}
!577 = !{!571}
!578 = distinct !{!578, i1 false, !"LVerDomain"}
!579 = distinct !{!579, !578}
!580 = distinct !{!580, !578}
!581 = distinct !{!581, !17, !18, !19}
!582 = distinct !{!582, !17, !18, !19}
!583 = distinct !{!583, !17}
!584 = distinct !{!584, !17, !18}
!585 = !{!579}
!586 = !{!580}
!587 = distinct !{!587, i1 false, !"LVerDomain"}
!588 = distinct !{!588, !587}
!589 = distinct !{!589, !587}
!590 = distinct !{!590, !17, !18, !19}
!591 = distinct !{!591, !17, !18, !19}
!592 = distinct !{!592, !17}
!593 = distinct !{!593, !17, !18}
!594 = !{!588}
!595 = !{!"bool", !4, i64 0}
!596 = !{!595, !595, i64 0}
!597 = !{!589}
!598 = !{!"branch_weights", i32 8, i32 24}
!599 = distinct !{!599, i1 false, !"LVerDomain"}
!600 = distinct !{!600, !599}
!601 = distinct !{!601, !599}
!602 = distinct !{!602, !17, !18, !19}
!603 = distinct !{!603, !17}
!604 = distinct !{!604, !17, !18}
!605 = !{!600}
!606 = !{!601}
!607 = distinct !{!607, i1 false, !"LVerDomain"}
!608 = distinct !{!608, !607}
!609 = distinct !{!609, !607}
!610 = distinct !{!610, !17, !18, !19}
!611 = distinct !{!611, !17}
!612 = distinct !{!612, !17, !18}
!613 = !{!608}
!614 = !{!609}
!615 = distinct !{!615, i1 false, !"LVerDomain"}
!616 = distinct !{!616, !615}
!617 = distinct !{!617, !615}
!618 = distinct !{!618, !17, !18, !19}
!619 = distinct !{!619, !17}
!620 = distinct !{!620, !17, !18}
!621 = !{!616}
!622 = !{!617}
!623 = distinct !{!623, i1 false, !"LVerDomain"}
!624 = distinct !{!624, !623}
!625 = distinct !{!625, !623}
!626 = distinct !{!626, !17, !18, !19}
!627 = distinct !{!627, !17}
!628 = distinct !{!628, !17, !18}
!629 = !{!624}
!630 = !{!625}
!631 = distinct !{!631, i1 false, !"LVerDomain"}
!632 = distinct !{!632, !631}
!633 = distinct !{!633, !631}
!634 = distinct !{!634, !17, !18, !19}
!635 = distinct !{!635, !17}
!636 = distinct !{!636, !17, !18}
!637 = !{!632}
!638 = !{!633}
!639 = distinct !{!639, i1 false, !"LVerDomain"}
!640 = distinct !{!640, !639}
!641 = distinct !{!641, !639}
!642 = distinct !{!642, !17, !18, !19}
!643 = distinct !{!643, !17}
!644 = distinct !{!644, !17, !18}
!645 = !{!640}
!646 = !{!641}
!647 = distinct !{!647, i1 false, !"LVerDomain"}
!648 = distinct !{!648, !647}
!649 = distinct !{!649, !647}
!650 = distinct !{!650, !17, !18, !19}
!651 = distinct !{!651, !17}
!652 = distinct !{!652, !17, !18}
!653 = !{!648}
!654 = !{!649}
!655 = distinct !{!655, i1 false, !"LVerDomain"}
!656 = distinct !{!656, !655}
!657 = distinct !{!657, !655}
!658 = distinct !{!658, !17, !18, !19}
!659 = distinct !{!659, !17}
!660 = distinct !{!660, !17, !18}
!661 = !{!656}
!662 = !{!657}
!663 = distinct !{!663, i1 false, !"LVerDomain"}
!664 = distinct !{!664, !663}
!665 = distinct !{!665, !663}
!666 = distinct !{!666, !17, !18, !19}
!667 = distinct !{!667, !17}
!668 = distinct !{!668, !17, !18}
!669 = !{!664}
!670 = !{!665}
!671 = distinct !{!671, i1 false, !"LVerDomain"}
!672 = distinct !{!672, !671}
!673 = distinct !{!673, !671}
!674 = distinct !{!674, !17, !18, !19}
!675 = distinct !{!675, !17}
!676 = distinct !{!676, !17, !18}
!677 = !{!672}
!678 = !{!673}
!679 = distinct !{!679, i1 false, !"LVerDomain"}
!680 = distinct !{!680, !679}
!681 = distinct !{!681, !679}
!682 = distinct !{!682, !17, !18, !19}
!683 = distinct !{!683, !17, !18}
!684 = distinct !{!684, !17}
!685 = !{!680}
!686 = !{!681}
!687 = distinct !{!687, i1 false, !"LVerDomain"}
!688 = distinct !{!688, !687}
!689 = distinct !{!689, !687}
!690 = distinct !{!690, !17, !18, !19}
!691 = distinct !{!691, !17, !18}
!692 = distinct !{!692, !17}
!693 = !{!688}
!694 = !{!689}
!695 = distinct !{!695, !17}
!696 = distinct !{!696, !17}
!697 = distinct !{!697, !17, !18, !19}
!698 = distinct !{!698, !17, !19, !18}
!699 = distinct !{!699, !17}
!700 = distinct !{!700, !17, !18, !19}
!701 = distinct !{!701, !17, !19, !18}
!702 = distinct !{!702, !17}
!703 = distinct !{!703, !17, !18, !19}
!704 = distinct !{!704, !17, !19, !18}
!705 = distinct !{!705, !17}
!706 = distinct !{!706, !17, !18, !19}
!707 = distinct !{!707, !17, !19, !18}
!708 = distinct !{!708, !17}
!709 = distinct !{!709, !17, !18, !19}
!710 = distinct !{!710, !17, !19, !18}
!711 = distinct !{!711, !17}
!712 = distinct !{!712, !17, !18, !19}
!713 = distinct !{!713, !17, !19, !18}
!714 = distinct !{!714, !17}
!715 = distinct !{!715, !17, !18, !19}
!716 = distinct !{!716, !17, !19, !18}
!717 = distinct !{!717, !17}
!718 = distinct !{!718, !17, !18, !19}
!719 = distinct !{!719, !17, !19, !18}
!720 = distinct !{!720, !17}
!721 = distinct !{!721, i1 false, !"LVerDomain"}
!722 = distinct !{!722, !721}
!723 = distinct !{!723, !721}
!724 = distinct !{!724, !17, !18, !19}
!725 = distinct !{!725, !17, !18}
!726 = distinct !{!726, !17}
!727 = !{!722}
!728 = !{!723}
!729 = distinct !{!729, !17}
!730 = distinct !{!730, !17}
!731 = distinct !{!731, i1 false, !"LVerDomain"}
!732 = distinct !{!732, !731}
!733 = distinct !{!733, !731}
!734 = distinct !{!734, !17, !18, !19}
!735 = distinct !{!735, !17, !18}
!736 = distinct !{!736, !17}
!737 = !{!732}
!738 = !{!733}
!739 = distinct !{!739, i1 false, !"LVerDomain"}
!740 = distinct !{!740, !739}
!741 = distinct !{!741, !739}
!742 = distinct !{!742, !17, !18, !19}
!743 = distinct !{!743, !17, !18}
!744 = distinct !{!744, !17}
!745 = !{!740}
!746 = !{!741}
!747 = distinct !{!747, !17}
!748 = distinct !{!748, !17}
!749 = distinct !{!749, !17, !18, !19}
!750 = distinct !{!750, !17, !19, !18}
!751 = distinct !{!751, !17}
!752 = distinct !{!752, !17, !18, !19}
!753 = distinct !{!753, !17, !19, !18}
!754 = distinct !{!754, !17}
!755 = distinct !{!755, !17}
!756 = distinct !{!756, !17}
!757 = distinct !{!757, !17, !18, !19}
!758 = distinct !{!758, !17, !19, !18}
!759 = distinct !{!759, !17}
!760 = distinct !{!760, !17, !18, !19}
!761 = distinct !{!761, !17, !19, !18}
!762 = distinct !{!762, !17}
!763 = distinct !{!763, !17}
!764 = distinct !{!764, !17}
!765 = distinct !{!765, !17}
!766 = distinct !{!766, !17}
!767 = distinct !{!767, !17, !18, !19}
!768 = distinct !{!768, !17, !19, !18}
!769 = distinct !{!769, !17}
!770 = distinct !{!770, i1 false, !"LVerDomain"}
!771 = distinct !{!771, !770}
!772 = distinct !{!772, !770}
!773 = distinct !{!773, !17, !18, !19}
!774 = distinct !{!774, !17, !18}
!775 = distinct !{!775, !17}
!776 = !{!771}
!777 = !{!772}
!778 = distinct !{!778, !17}
!779 = distinct !{!779, !17}
!780 = distinct !{!780, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!781 = distinct !{!781, !780, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!782 = distinct !{!782, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!783 = distinct !{!783, !782, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!784 = distinct !{!784, !17}
!785 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!786 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !8, i64 8, !785, i64 16}
!787 = !{!786, !8, i64 8}
!788 = !{!781}
!789 = !{!"p1 _ZTSN2cv12MatAllocatorE", !8, i64 0}
!790 = !{!"p1 _ZTSN2cv8UMatDataE", !8, i64 0}
!791 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!792 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !791, i64 4, !5, i64 8, !4, i64 12}
!793 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!794 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !789, i64 56, !790, i64 64, !792, i64 72, !793, i64 128}
!795 = !{!794, !5, i64 0}
!796 = !{!783}
!797 = !{!794, !5, i64 4}
!798 = !{!794, !9, i64 24}
!799 = !{!"p1 _ZTSN2cv3MatE", !8, i64 0}
!800 = !{!799, !799, i64 0}
!801 = !{!"any p2 pointer", !8, i64 0}
!802 = !{!"p2 _ZTSN2cv3MatE", !801, i64 0}
!803 = !{!"p2 omnipotent char", !801, i64 0}
!804 = !{!"_ZTSN2cv15NAryMatIteratorE", !802, i64 0, !799, i64 8, !803, i64 16, !5, i64 24, !11, i64 32, !11, i64 40, !5, i64 48, !11, i64 56}
!805 = !{!804, !11, i64 40}
!806 = !{!804, !11, i64 32}
!807 = !{!9, !9, i64 0}
end_hunk_1
