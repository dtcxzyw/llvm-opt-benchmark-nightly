Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsgamma?download=true
inline.NumInlined: 30
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@cmsDupToneCurve:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.l = tail call fastcc ptr @AllocateToneCurveStruct(ptr noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, ptr noundef %i.i, ptr noundef %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @cmsJoinToneCurve(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [3 x %struct.cmsCurveSegment], align 16 ; 20 uses
  %i.a = tail call ptr @cmsReverseToneCurveEx(i32 noundef %3, ptr noundef %2) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread41, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_cmsCalloc(ptr noundef %0, i32 noundef %3, i32 noundef 4) #11 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  br label %.thread37

.lr.ph:                                           ; preds = %.preheader
  %i.e = add i32 %3, -1
  %i.f = uitofp i32 %i.e to float
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.g = trunc nuw i64 %indvars.iv to i32
  %i.h = uitofp i32 %i.g to float
  %i.i = fdiv float %i.h, %i.f
  %i.j = tail call float @cmsEvalToneCurveFloat(ptr noundef %1, float noundef %i.i)
  %i.k = tail call float @cmsEvalToneCurveFloat(ptr noundef nonnull %i.a, float noundef %i.j)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store float %i.k, ptr %i.l, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !84

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store <2 x float> <float f0xE4078678, float 0.000000e+00>, ptr %4, align 16, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 6, ptr %i.m, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double 1.000000e+00, ptr %i.n, align 16, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = load float, ptr %i.c, align 4, !tbaa !52
  %i.q = fpext float %i.p to double
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  store double %i.q, ptr %i.r, align 8, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  store double 0.000000e+00, ptr %i.s, align 16, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 112
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.t, align 16, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i32 0, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i32 %3, ptr %i.v, align 16, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 216
  store ptr %i.c, ptr %i.w, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 224
  store <2 x float> <float 1.000000e+00, float f0x64078678>, ptr %i.x, align 16, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 232
  store i32 6, ptr %i.y, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 240
  store double 1.000000e+00, ptr %i.z, align 16, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.ab = add i32 %3, -1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !52
  %i.af = fpext float %i.ae to double
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 264
  store double %i.af, ptr %i.ag, align 8, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 272
  store double 0.000000e+00, ptr %i.ah, align 16, !tbaa !49
  %i.ai = call ptr @cmsBuildSegmentedToneCurve(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %4)
  br label %.thread37

.thread37:                                        ; preds = %._crit_edge.thread, %bb.d
  %.0.i = phi ptr [ %i.ai, %bb.d ], [ null, %._crit_edge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @_cmsFree(ptr noundef %0, ptr noundef nonnull %i.c) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %.thread37
  %.0263639 = phi ptr [ %.0.i, %.thread37 ], [ null, %bb.b ]
  call void @cmsFreeToneCurve(ptr noundef nonnull %i.a)
  br label %.thread41

.thread41:                                        ; preds = %bb.a, %bb.e
  %.0263640 = phi ptr [ %.0263639, %bb.e ], [ null, %bb.a ]
  ret ptr %.0263640
}

; Function Attrs: nounwind uwtable
define ptr @cmsReverseToneCurveEx(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %GetParametricCurveByType.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !42   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %GetParametricCurveByType.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !47
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56
  %i.k = tail call ptr @_cmsContextGetClientChunk(ptr noundef %i.j, i32 noundef 6) #11
  %.047.i = load ptr, ptr %i.k, align 8, !tbaa !17 ; 2 uses
  %.not48.i = icmp eq ptr %.047.i, null
  br i1 %.not48.i, label %.lr.ph.i33.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %IsInSet.exit.thread.i
  %.049.i = phi ptr [ %.0.i, %IsInSet.exit.thread.i ], [ %.047.i, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.049.i, i64 4
  %i.m = load i32, ptr %.049.i, align 8, !tbaa !23 ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader.i.i, label %IsInSet.exit.thread.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !46
  %i.q = icmp eq i32 %i.g, %i.p
  br i1 %i.q, label %.loopexit71, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %IsInSet.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !0

IsInSet.exit.thread.i:                            ; preds = %bb.d, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.049.i, i64 176
  %.0.i = load ptr, ptr %i.r, align 8, !tbaa !17  ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.lr.ph.i33.i, label %.lr.ph.i, !llvm.loop !1

.lr.ph.i33.i:                                     ; preds = %bb.c, %IsInSet.exit.thread.i
  switch i32 %i.g, label %GetParametricCurveByType.exit [
    i32 1, label %.loopexit71
    i32 2, label %.loopexit71
    i32 3, label %.loopexit71
    i32 4, label %.loopexit71
    i32 5, label %.loopexit71
    i32 6, label %.loopexit71
    i32 7, label %.loopexit71
    i32 8, label %.loopexit71
    i32 108, label %.loopexit71
    i32 109, label %.loopexit71
  ]

.loopexit71:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i33.i, %.lr.ph.i33.i, %.lr.ph.i33.i, %.lr.ph.i33.i, %.lr.ph.i33.i, %.lr.ph.i33.i, %.lr.ph.i33.i, %.lr.ph.i33.i, %.lr.ph.i33.i, %.lr.ph.i33.i
  %i.s = load ptr, ptr %1, align 8, !tbaa !47
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !42
  %i.x = sub nsw i32 0, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.z = tail call ptr @cmsBuildParametricToneCurve(ptr noundef %i.t, i32 noundef %i.x, ptr noundef nonnull %i.y)
  br label %.loopexit

GetParametricCurveByType.exit:                    ; preds = %.lr.ph.i33.i, %bb.b, %bb.a
  %i.aa = load ptr, ptr %1, align 8, !tbaa !47
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56
  %i.ac = tail call fastcc ptr @AllocateToneCurveStruct(ptr noundef %i.ab, i32 noundef %0, i32 noundef 0, ptr noundef null, ptr noundef null) ; 6 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %GetParametricCurveByType.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 7 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !29
  %i.aj = add i32 %i.ai, -1                       ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !35
  %.not = icmp ugt i16 %i.ag, %i.am
  %i.an = icmp sgt i32 %0, 0
  br i1 %i.an, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.ao = add nsw i32 %0, -1
  %i.ap = uitofp nneg i32 %i.ao to double         ; 3 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !47
  %i.ar = getelementptr i8, ptr %i.aq, i64 80
  %.val = load i32, ptr %i.ar, align 8, !tbaa !46 ; 3 uses
  %i.as = icmp eq i32 %.val, 0
  %i.at = zext i32 %.val to i64                   ; 3 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.at
  %i.av = icmp sgt i32 %.val, 0                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  br i1 %i.as, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ax = uitofp i32 %i.aj to double
  %wide.trip.count = zext nneg i32 %0 to i64
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !30
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !30 ; 2 uses
  %wide.trip.count90 = zext nneg i32 %0 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us
  %n.vec = and i64 %wide.trip.count90, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x double> poison, double %i.ap, i64 0
  %broadcast.splat = shufflevector <8 x double> %broadcast.splatinsert, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bc = uitofp nneg <8 x i32> %vec.ind to <8 x double>
  %i.bd = fmul nnan <8 x double> %i.bc, splat (double 6.553500e+04)
  %i.be = fdiv <8 x double> %i.bd, %broadcast.splat
  %i.bf = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.be, <8 x double> zeroinitializer, <8 x double> zeroinitializer)
  %i.bg = fadd <8 x double> %i.bf, splat (double 5.000000e-01) ; 2 uses
  %i.bh = fcmp ult <8 x double> %i.bg, splat (double 6.553500e+04)
  %i.bi = fadd <8 x double> %i.bg, splat (double -3.276700e+04)
  %i.bj = fadd <8 x double> %i.bi, splat (double f0x4238000000000000)
  %i.bk = bitcast <8 x double> %i.bj to <8 x i64>
  %i.bl = lshr <8 x i64> %i.bk, splat (i64 16)
  %i.bm = trunc <8 x i64> %i.bl to <8 x i16>
  %i.bn = add <8 x i16> %i.bm, splat (i16 32767)
  %predphi = select <8 x i1> %i.bh, <8 x i16> %i.bn, <8 x i16> splat (i16 -1)
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %index
  store <8 x i16> %predphi, ptr %i.bo, align 2, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count90
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.split.us, %middle.block
  %indvars.iv87.ph = phi i64 [ 0, %.lr.ph.split.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_cmsQuickSaturateWord.exit65.us
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %_cmsQuickSaturateWord.exit65.us ], [ %indvars.iv87.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.br = uitofp nneg i32 %i.bq to double
  %i.bs = fmul nnan double %i.br, 6.553500e+04
  %i.bt = fdiv double %i.bs, %i.ap
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double 0.000000e+00, double 0.000000e+00)
  %i.bv = fadd double %i.bu, 5.000000e-01         ; 2 uses
  %i.bw = fcmp ult double %i.bv, 6.553500e+04
  br i1 %i.bw, label %bb.f, label %_cmsQuickSaturateWord.exit65.us

bb.f:                                             ; preds = %scalar.ph
  %i.bx = fadd double %i.bv, -3.276700e+04
  %i.by = fadd double %i.bx, f0x4238000000000000
  %i.bz = bitcast double %i.by to i64
  %i.ca = lshr i64 %i.bz, 16
  %i.cb = trunc i64 %i.ca to i16
  %i.cc = add i16 %i.cb, 32767
  br label %_cmsQuickSaturateWord.exit65.us

_cmsQuickSaturateWord.exit65.us:                  ; preds = %bb.f, %scalar.ph
  %.0.i64.us = phi i16 [ %i.cc, %bb.f ], [ -1, %scalar.ph ]
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv87
  store i16 %.0.i64.us, ptr %i.cd, align 2, !tbaa !35
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %.loopexit, label %scalar.ph, !llvm.loop !86

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_cmsQuickSaturateWord.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_cmsQuickSaturateWord.exit ] ; 3 uses
  %.04877 = phi double [ 0.000000e+00, %.lr.ph.split.preheader ], [ %.2, %_cmsQuickSaturateWord.exit ] ; 7 uses
  %.04975 = phi double [ 0.000000e+00, %.lr.ph.split.preheader ], [ %.251, %_cmsQuickSaturateWord.exit ] ; 7 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv to i32
  %i.cf = uitofp nneg i32 %i.ce to double
  %i.cg = fmul nnan double %i.cf, 6.553500e+04
  %i.ch = fdiv double %i.cg, %i.ap                ; 9 uses
  %i.ci = load i16, ptr %i.af, align 2, !tbaa !35 ; 2 uses
  %i.cj = load i16, ptr %i.au, align 2, !tbaa !35 ; 2 uses
  %i.ck = icmp ult i16 %i.ci, %i.cj
  br i1 %i.ck, label %.preheader.i62, label %.preheader1.i

.preheader1.i:                                    ; preds = %.lr.ph.split
  br i1 %i.av, label %.lr.ph.i60, label %GetInterval.exit.thread

.preheader.i62:                                   ; preds = %.lr.ph.split
  br i1 %i.av, label %.lr.ph12.i, label %GetInterval.exit.thread

.lr.ph12.i:                                       ; preds = %.preheader.i62, %bb.i
  %i.cl = phi i16 [ %i.cn, %bb.i ], [ %i.cj, %.preheader.i62 ] ; 3 uses
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %bb.i ], [ %i.at, %.preheader.i62 ] ; 2 uses
  %indvars.iv.next22.i = add nsw i64 %indvars.iv21.i, -1 ; 3 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next22.i
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !35 ; 4 uses
  %.not58.i = icmp ugt i16 %i.cn, %i.cl
  br i1 %.not58.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph12.i
  %i.co = uitofp i16 %i.cn to double
  %i.cp = fcmp ult double %i.ch, %i.co
  %i.cq = uitofp i16 %i.cl to double
  %i.cr = fcmp ugt double %i.ch, %i.cq
  %or.cond.i = or i1 %i.cr, %i.cp
  br i1 %or.cond.i, label %bb.i, label %GetInterval.exit

bb.h:                                             ; preds = %.lr.ph12.i
  %i.cs = uitofp i16 %i.cl to double
  %i.ct = fcmp ult double %i.ch, %i.cs
  %i.cu = uitofp i16 %i.cn to double
  %i.cv = fcmp ugt double %i.ch, %i.cu
  %or.cond61.i = or i1 %i.ct, %i.cv
  br i1 %or.cond61.i, label %bb.i, label %GetInterval.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cw = icmp samesign ugt i64 %indvars.iv21.i, 1
  br i1 %i.cw, label %.lr.ph12.i, label %GetInterval.exit.thread, !llvm.loop !87

.lr.ph.i60:                                       ; preds = %.preheader1.i, %bb.l
  %i.cx = phi i16 [ %i.cz, %bb.l ], [ %i.ci, %.preheader1.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %.preheader1.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next.i
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !35 ; 4 uses
  %.not.i61 = icmp ugt i16 %i.cx, %i.cz
  br i1 %.not.i61, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i60
  %i.da = uitofp i16 %i.cx to double
  %i.db = fcmp ult double %i.ch, %i.da
  %i.dc = uitofp i16 %i.cz to double
  %i.dd = fcmp ugt double %i.ch, %i.dc
  %or.cond63.i = or i1 %i.db, %i.dd
  br i1 %or.cond63.i, label %bb.l, label %.loopexit.loopexit32.split.loop.exit36.i

bb.k:                                             ; preds = %.lr.ph.i60
  %i.de = uitofp i16 %i.cz to double
  %i.df = fcmp ult double %i.ch, %i.de
  %i.dg = uitofp i16 %i.cx to double
  %i.dh = fcmp ugt double %i.ch, %i.dg
  %or.cond65.i = or i1 %i.dh, %i.df
  br i1 %or.cond65.i, label %bb.l, label %.loopexit.loopexit32.split.loop.exit34.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.at
  br i1 %exitcond.not.i, label %GetInterval.exit.thread, label %.lr.ph.i60, !llvm.loop !88

.loopexit.loopexit32.split.loop.exit34.i:         ; preds = %bb.k
  %2 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.m

.loopexit.loopexit32.split.loop.exit36.i:         ; preds = %bb.j
  %3 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.m

GetInterval.exit:                                 ; preds = %bb.g, %bb.h
  %.046.i = trunc i64 %indvars.iv.next22.i to i32 ; 2 uses
  %i.di = icmp sgt i32 %.046.i, -1
  br i1 %i.di, label %bb.m, label %GetInterval.exit.thread

bb.m:                                             ; preds = %.loopexit.loopexit32.split.loop.exit34.i, %.loopexit.loopexit32.split.loop.exit36.i, %GetInterval.exit
  %.046.i72 = phi i32 [ %.046.i, %GetInterval.exit ], [ %2, %.loopexit.loopexit32.split.loop.exit34.i ], [ %3, %.loopexit.loopexit32.split.loop.exit36.i ] ; 3 uses
  %4 = zext nneg i32 %.046.i72 to i64
  %5 = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %4
  %6 = load <2 x i16>, ptr %5, align 2, !tbaa !35
  %7 = uitofp <2 x i16> %6 to <2 x double>        ; 2 uses
  %8 = add nuw nsw i32 %.046.i72, 1
  %i.dj = uitofp nneg i32 %.046.i72 to double
  %i.dk = uitofp nneg i32 %8 to double
  %i.dl = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.dk, i64 1
  %i.dn = fmul nnan <2 x double> %i.dm, splat (double 6.553500e+04)
  %i.do = fdiv <2 x double> %i.dn, %i.az          ; 4 uses
  %9 = extractelement <2 x double> %7, i64 0      ; 2 uses
  %10 = extractelement <2 x double> %7, i64 1     ; 3 uses
  %i.dp = fcmp oeq double %9, %10
  br i1 %i.dp, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dq = extractelement <2 x double> %i.do, i64 0
  %i.dr = extractelement <2 x double> %i.do, i64 1
  %i.ds = select i1 %.not, double %i.dq, double %i.dr
  %i.dt = fadd double %i.ds, 5.000000e-01         ; 2 uses
  %i.du = fcmp ult double %i.dt, 6.553500e+04
  br i1 %i.du, label %bb.o, label %_cmsQuickSaturateWord.exit

bb.o:                                             ; preds = %bb.n
  %i.dv = fadd double %i.dt, -3.276700e+04
  %i.dw = fadd double %i.dv, f0x4238000000000000
  %i.dx = bitcast double %i.dw to i64
  %i.dy = lshr i64 %i.dx, 16
  %i.dz = trunc i64 %i.dy to i16
  %i.ea = add i16 %i.dz, 32767
  br label %_cmsQuickSaturateWord.exit

bb.p:                                             ; preds = %bb.m
  %i.eb = extractelement <2 x double> %i.do, i64 0
  %i.ec = extractelement <2 x double> %i.do, i64 1 ; 2 uses
  %i.ed = fsub double %i.ec, %i.eb
  %i.ee = fsub double %10, %9
  %i.ef = fdiv double %i.ed, %i.ee                ; 2 uses
  %i.eg = fneg double %i.ef
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eg, double %10, double %i.ec)
  br label %GetInterval.exit.thread

GetInterval.exit.thread:                          ; preds = %bb.l, %bb.i, %.preheader1.i, %.preheader.i62, %bb.p, %GetInterval.exit
  %.150 = phi double [ %i.ef, %bb.p ], [ %.04975, %GetInterval.exit ], [ %.04975, %.preheader.i62 ], [ %.04975, %bb.i ], [ %.04975, %.preheader1.i ], [ %.04975, %bb.l ] ; 4 uses
  %.1 = phi double [ %i.eh, %bb.p ], [ %.04877, %GetInterval.exit ], [ %.04877, %.preheader.i62 ], [ %.04877, %bb.i ], [ %.04877, %.preheader1.i ], [ %.04877, %bb.l ] ; 4 uses
  %i.ei = tail call double @llvm.fmuladd.f64(double %.150, double %i.ch, double %.1)
  %i.ej = fadd double %i.ei, 5.000000e-01         ; 3 uses
  %i.ek = fcmp ugt double %i.ej, 0.000000e+00
  br i1 %i.ek, label %bb.q, label %_cmsQuickSaturateWord.exit

bb.q:                                             ; preds = %GetInterval.exit.thread
  %i.el = fcmp ult double %i.ej, 6.553500e+04
  br i1 %i.el, label %bb.r, label %_cmsQuickSaturateWord.exit

bb.r:                                             ; preds = %bb.q
  %i.em = fadd double %i.ej, -3.276700e+04
  %i.en = fadd double %i.em, f0x4238000000000000
  %i.eo = bitcast double %i.en to i64
  %i.ep = lshr i64 %i.eo, 16
  %i.eq = trunc i64 %i.ep to i16
  %i.er = add i16 %i.eq, 32767
  br label %_cmsQuickSaturateWord.exit

_cmsQuickSaturateWord.exit:                       ; preds = %bb.r, %bb.q, %GetInterval.exit.thread, %bb.o, %bb.n
  %.0.i64.sink = phi i16 [ -1, %bb.n ], [ %i.ea, %bb.o ], [ %i.er, %bb.r ], [ 0, %GetInterval.exit.thread ], [ -1, %bb.q ]
  %.251 = phi double [ %.04975, %bb.n ], [ %.04975, %bb.o ], [ %.150, %bb.r ], [ %.150, %GetInterval.exit.thread ], [ %.150, %bb.q ]
  %.2 = phi double [ %.04877, %bb.n ], [ %.04877, %bb.o ], [ %.1, %bb.r ], [ %.1, %GetInterval.exit.thread ], [ %.1, %bb.q ]
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv
  store i16 %.0.i64.sink, ptr %i.es, align 2, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !89

.loopexit:                                        ; preds = %_cmsQuickSaturateWord.exit, %_cmsQuickSaturateWord.exit65.us, %middle.block, %bb.e, %GetParametricCurveByType.exit, %.loopexit71
  %.052 = phi ptr [ %i.z, %.loopexit71 ], [ null, %GetParametricCurveByType.exit ], [ %i.ac, %bb.e ], [ %i.ac, %middle.block ], [ %i.ac, %_cmsQuickSaturateWord.exit65.us ], [ %i.ac, %_cmsQuickSaturateWord.exit ]
  ret ptr %.052
}

declare ptr @_cmsCalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define float @cmsEvalToneCurveFloat(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !33   ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = fpext float %1 to double                 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = fmul double %i.h, 6.553500e+04
  %i.j = fadd double %i.i, 5.000000e-01           ; 3 uses
  %i.k = fcmp ugt double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.c, label %_cmsQuickSaturateWord.exit

bb.c:                                             ; preds = %bb.b
  %i.l = fcmp ult double %i.j, 6.553500e+04
  br i1 %i.l, label %bb.d, label %_cmsQuickSaturateWord.exit

bb.d:                                             ; preds = %bb.c
  %i.m = fadd double %i.j, -3.276700e+04
  %i.n = fadd double %i.m, f0x4238000000000000
  %i.o = bitcast double %i.n to i64
  %i.p = lshr i64 %i.o, 16
  %i.q = trunc i64 %i.p to i16
  %i.r = add i16 %i.q, 32767
  br label %_cmsQuickSaturateWord.exit

_cmsQuickSaturateWord.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i16 [ %i.r, %bb.d ], [ 0, %bb.b ], [ -1, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %.0.i, ptr %i.c, align 2, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.s = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55
  call void %i.u(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.s) #11, !inline_history !90
  %i.v = load i16, ptr %i.d, align 2, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.w = uitofp i16 %i.v to float
  %i.x = fdiv float %i.w, 6.553500e+04
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.y = icmp sgt i32 %i.f, 0
  br i1 %i.y, label %.lr.ph.i, label %EvalSegmentedFn.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ab = zext nneg i32 %i.f to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ab, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.ac = getelementptr inbounds nuw [112 x i8], ptr %i.aa, i64 %indvars.iv.next.i ; 5 uses
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !50 ; 3 uses
  %i.ae = fcmp ogt float %1, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !51 ; 2 uses
  %i.ah = fcmp ugt float %1, %i.ag
  br i1 %i.ah, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !42 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.al = fsub float %1, %i.ad
  %i.am = fsub float %i.ag, %i.ad
  %i.an = fdiv float %i.al, %i.am
  store float %i.an, ptr %i.b, align 4, !tbaa !52
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 200
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 208
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !55
  call void %i.aw(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %i.at) #11, !inline_history !2
  %i.ax = load float, ptr %i.a, align 4, !tbaa !52
  %i.ay = fpext float %i.ax to double
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !32
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.be = tail call double %i.bc(i32 noundef %i.aj, ptr noundef nonnull %i.bd, double noundef %i.h) #11, !inline_history !2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i7 = phi double [ %i.ay, %bb.i ], [ %i.be, %bb.j ] ; 2 uses
  %i.bf = call double @llvm.fabs.f64(double %.0.i7) #12
  %i.bg = fcmp oeq double %i.bf, +inf
  br i1 %i.bg, label %EvalSegmentedFn.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = fptrunc double %.0.i7 to float
  br label %EvalSegmentedFn.exit

bb.m:                                             ; preds = %bb.g, %bb.f
  %i.bi = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.bi, label %bb.f, label %EvalSegmentedFn.exit, !llvm.loop !3

EvalSegmentedFn.exit:                             ; preds = %bb.m, %bb.e, %bb.k, %bb.l
  %.037.i = phi float [ %i.bh, %bb.l ], [ f0x64078678, %bb.k ], [ f0xE4078678, %bb.e ], [ f0xE4078678, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.n

bb.n:                                             ; preds = %EvalSegmentedFn.exit, %_cmsQuickSaturateWord.exit
  %.0 = phi float [ %i.x, %_cmsQuickSaturateWord.exit ], [ %.037.i, %EvalSegmentedFn.exit ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @cmsIsToneCurveDescending(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29
  %i.f = add i32 %i.e, -1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !35
  %i.j = icmp ugt i16 %i.c, %i.i
  %i.k = zext i1 %i.j to i32
  ret i32 %i.k
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind uwtable
define ptr @cmsReverseToneCurve(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
end_hunk_0
