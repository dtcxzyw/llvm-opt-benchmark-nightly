Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/interpolation?download=true
inline.NumInlined: 33
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 40
begin_hunk_0_@dt_interpolation_resample_mask:bb.a
  %i.he = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index292 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next298, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi293 = phi <4 x float> [ %i.he, %vec.epilog.ph ], [ %i.hh, %vec.epilog.vector.body ]
  %gep378 = getelementptr [4 x i8], ptr %invariant.gep377, i64 %index292
  %wide.load294 = load <4 x i32>, ptr %gep378, align 4, !tbaa !89
  %i.hf = sext <4 x i32> %wide.load294 to <4 x i64>
  %gep380 = getelementptr [4 x i8], ptr %invariant.gep379, i64 %index292
  %wide.load295 = load <4 x float>, ptr %gep380, align 4, !tbaa !19
  %wide.gep296 = getelementptr inbounds nuw [4 x i8], ptr %i.gj, <4 x i64> %i.hf
  %wide.masked.gather297 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep296, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !19
  %i.hg = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather297, %wide.load295
  %i.hh = fadd reassoc nsz arcp contract afn <4 x float> %i.hg, %vec.phi293 ; 2 uses
  %index.next298 = add nuw i64 %index292, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.hi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !141

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hj = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.hh) ; 2 uses
  br i1 %cmp.n299, label %._crit_edge.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv224.ph = phi i64 [ %i.fr, %iter.check ], [ %i.fu, %vec.epilog.iter.check ], [ %i.fx, %vec.epilog.middle.block ]
  %indvars.iv222.ph = phi i64 [ %i.fq, %iter.check ], [ %i.fv, %vec.epilog.iter.check ], [ %i.fy, %vec.epilog.middle.block ]
  %.0159.us.us.ph = phi i32 [ 0, %iter.check ], [ %i.fw, %vec.epilog.iter.check ], [ %i.fz, %vec.epilog.middle.block ]
  %.0121158.us.us.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.hd, %vec.epilog.iter.check ], [ %i.hj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %vec.epilog.scalar.ph ], [ %indvars.iv224.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv222 = phi i64 [ %indvars.iv.next223, %vec.epilog.scalar.ph ], [ %indvars.iv222.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0159.us.us = phi i32 [ %i.ht, %vec.epilog.scalar.ph ], [ %.0159.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.0121158.us.us = phi float [ %i.hs, %vec.epilog.scalar.ph ], [ %.0121158.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next223 = add nsw i64 %indvars.iv222, 1
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %indvars.iv222
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !89
  %i.hm = sext i32 %i.hl to i64
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, 1
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv224
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !19
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.hm
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !19
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hq, %i.ho
  %i.hs = fadd reassoc nsz arcp contract afn float %i.hr, %.0121158.us.us ; 2 uses
  %i.ht = add nuw nsw i32 %.0159.us.us, 1         ; 2 uses
  %exitcond229.not = icmp eq i32 %i.ht, %i.ew
  br i1 %exitcond229.not, label %._crit_edge.us.us, label %vec.epilog.scalar.ph, !llvm.loop !142

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa270 = phi float [ %i.hj, %vec.epilog.middle.block ], [ %i.hd, %middle.block ], [ %i.hs, %vec.epilog.scalar.ph ]
  %indvars.iv.next231 = add nsw i64 %indvars.iv230, 1
  %indvars.iv.next233 = add nsw i64 %indvars.iv232, 1
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv232
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !19
  %i.hw = fmul reassoc nsz arcp contract afn float %i.hv, %.lcssa270
  %i.hx = fadd reassoc nsz arcp contract afn float %i.hw, %.0123166.us.us ; 2 uses
  %i.hy = add nuw nsw i32 %.0122167.us.us, 1      ; 2 uses
  %exitcond237.not = icmp eq i32 %i.hy, %i.ee
  br i1 %exitcond237.not, label %._crit_edge170.us, label %iter.check

._crit_edge170.us.loopexit206:                    ; preds = %.lr.ph169.split.us186, %vec.epilog.middle.block337, %middle.block319
  %.lcssa = phi float [ %i.fp, %vec.epilog.middle.block337 ], [ %i.fk, %middle.block319 ], [ %i.gd, %.lr.ph169.split.us186 ]
  %i.hz = mul i32 %i.ee, %i.ew                    ; 2 uses
  %i.ia = sub i32 %.0126183.us, %i.hz
  %i.ib = sub i32 %.0125184.us, %i.hz
  br label %._crit_edge170.us

._crit_edge170.us:                                ; preds = %._crit_edge.us.us, %._crit_edge170.us.loopexit206
  %.us-phi177.us = phi i32 [ %i.ia, %._crit_edge170.us.loopexit206 ], [ %.0126183.us, %._crit_edge.us.us ]
  %.us-phi178.us = phi i32 [ %i.ib, %._crit_edge170.us.loopexit206 ], [ %.0125184.us, %._crit_edge.us.us ]
  %.us-phi179.us = phi float [ %.lcssa, %._crit_edge170.us.loopexit206 ], [ %i.hx, %._crit_edge.us.us ] ; 3 uses
  %i.ic = shl nuw nsw i64 %indvars.iv238, 2
  %i.id = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ic
  %i.ie = fcmp reassoc nsz arcp contract afn oge float %.us-phi179.us, 0.000000e+00
  %i.if = fcmp reassoc nsz arcp contract afn ole float %.us-phi179.us, 1.000000e+00
  %i.ig = select reassoc nsz arcp contract afn i1 %i.if, float %.us-phi179.us, float 1.000000e+00
  %i.ih = select reassoc nsz arcp contract afn i1 %i.ie, float %i.ig, float 0.000000e+00
  store float %i.ih, ptr %i.id, align 4, !tbaa !19
  %i.ii = add nsw i32 %.us-phi178.us, %i.ew
  %i.ij = add nsw i32 %.us-phi177.us, %i.ew
  %exitcond243.not = icmp eq i64 %indvars.iv.next239, %i.dy
  br i1 %exitcond243.not, label %._crit_edge, label %.lr.ph169.us

._crit_edge:                                      ; preds = %._crit_edge170.us, %.lr.ph.split.preheader
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count247
  br i1 %exitcond248.not, label %.loopexit, label %.lr.ph

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.o
  %.pre257 = phi ptr [ %.pre257.pre, %..critedge_crit_edge ], [ null, %bb.o ]
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef null, i32 noundef -1, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull @.str.14) #12
  %.pre255 = load ptr, ptr %i.b, align 8, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %dt_get_perf_times.exit153, %.lr.ph200, %.critedge
  %i.ik = phi ptr [ %.pre257, %.critedge ], [ %.pre258, %.lr.ph200 ], [ %.pre258, %dt_get_perf_times.exit153 ], [ %.pre258, %._crit_edge ]
  %i.il = phi ptr [ %.pre255, %.critedge ], [ %.pre256, %.lr.ph200 ], [ %.pre256, %dt_get_perf_times.exit153 ], [ %.pre256, %._crit_edge ]
  %.sroa.0.0 = phi nsz double [ 0.000000e+00, %.critedge ], [ %.sroa.0.1, %.lr.ph200 ], [ %.sroa.0.1, %dt_get_perf_times.exit153 ], [ %.sroa.0.1, %._crit_edge ] ; 2 uses
  %.sroa.5.0 = phi nsz double [ 0.000000e+00, %.critedge ], [ %.sroa.5.1, %.lr.ph200 ], [ %.sroa.5.1, %dt_get_perf_times.exit153 ], [ %.sroa.5.1, %._crit_edge ] ; 2 uses
  call void @free(ptr noundef %i.il) #12
  call void @free(ptr noundef %i.ik) #12
  %i.im = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !77
  %i.in = and i32 %i.im, 16
  %.not.i154 = icmp eq i32 %i.in, 0
  br i1 %.not.i154, label %_show_2_times.exit, label %bb.s

bb.s:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.io = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #12 ; 0 uses
  %i.ip = load i64, ptr %6, align 8, !tbaa !84
  %i.iq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.is = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %5) #12 ; 0 uses
  %i.it = load <2 x i64>, ptr %5, align 16, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.iu = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !77
  %i.iv = and i32 %i.iu, 16
  %.not7.not.i = icmp eq i32 %i.iv, 0
  br i1 %.not7.not.i, label %_show_2_times.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.iw = sitofp reassoc nsz arcp contract afn <2 x i64> %i.it to <2 x double> ; 2 uses
  %i.ix = extractelement <2 x double> %i.iw, i64 1
  %i.iy = fmul reassoc nnan nsz arcp contract afn double %i.ix, f0x3EB0C6F7A0B5ED8D
  %i.iz = extractelement <2 x double> %i.iw, i64 0
  %i.ja = fadd reassoc nsz arcp contract afn double %i.iy, %i.iz
  %i.jb = sitofp reassoc nsz arcp contract afn i64 %i.ir to double
  %i.jc = fmul reassoc nnan nsz arcp contract afn double %i.jb, f0x3EB0C6F7A0B5ED8D
  %i.jd = add nsw i64 %i.ip, -1290608000
  %i.je = sitofp reassoc nsz arcp contract afn i64 %i.jd to double
  %i.jf = fadd reassoc nsz arcp contract afn double %i.jc, %i.je
  %i.jg = fsub reassoc nsz arcp contract afn double %.sroa.0.0, %i.aa
  %i.jh = fsub reassoc nsz arcp contract afn double %.sroa.5.0, %i.z
  %i.ji = fsub reassoc nsz arcp contract afn double %i.jf, %.sroa.0.0
  %i.jj = fsub reassoc nsz arcp contract afn double %i.ja, %.sroa.5.0
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.15, double noundef %i.jg, double noundef %i.jh, double noundef %i.ji, double noundef %i.jj) #12
  br label %_show_2_times.exit

_show_2_times.exit:                               ; preds = %bb.t, %bb.s, %.loopexit, %._crit_edge204
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_interpolation_resample_roi_mask(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.dt_iop_roi_t, align 4       ; 6 uses
  %6 = alloca %struct.dt_iop_roi_t, align 4       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !90
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !32
  store i32 0, ptr %5, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !90
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !32
  store i32 0, ptr %6, align 4, !tbaa !31
  call void @dt_interpolation_resample_mask(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal noundef float @_maketaps_bilinear(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, float %2, float noundef %3, float noundef %4) #8 {
.preheader32.preheader:
  %i.a = fmul reassoc nsz arcp contract afn float %4, 4.000000e+00 ; 3 uses
  %i.b = shl i64 %1, 30
  %i.c = add i64 %i.b, 3221225472
  %i.d = ashr i64 %i.c, 32                        ; 5 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.preheader30.preheader

.preheader30.preheader:                           ; preds = %.preheader32.preheader
  %i.e = insertelement <4 x float> poison, float %4, i64 0
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <4 x i32> zeroinitializer
  %i.g = fmul reassoc arcp contract afn <4 x float> %i.f, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00>
  %i.h = insertelement <4 x float> poison, float %3, i64 0
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> zeroinitializer
  %i.j = fadd reassoc nsz arcp contract afn <4 x float> %i.g, %i.i ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.preheader30.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.preheader30.preheader
  %n.vec = and i64 %i.d, -8                       ; 4 uses
  %5 = uitofp i64 %n.vec to float
  %i.k = fmul reassoc nsz arcp contract afn float %i.a, %5
  %i.l = insertelement <4 x float> poison, float %i.k, i64 0
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> zeroinitializer
  %i.n = fadd reassoc nsz arcp contract afn <4 x float> %i.j, %i.m
  %broadcast.splat = shufflevector <4 x float> %i.j, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splatinsert44 = insertelement <8 x float> poison, float %i.a, i64 0
  %broadcast.splat45 = shufflevector <8 x float> %broadcast.splatinsert44, <8 x float> poison, <8 x i32> zeroinitializer
  %i.o = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat45, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00> ; 4 uses
  %induction = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.o
  %i.p = fmul reassoc nsz arcp contract afn float %4, 3.200000e+01
  %broadcast.splatinsert46 = insertelement <8 x float> poison, float %i.p, i64 0
  %broadcast.splat47 = shufflevector <8 x float> %broadcast.splatinsert46, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat49 = shufflevector <4 x float> %i.j, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %induction50 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat49, %i.o
  %broadcast.splat52 = shufflevector <4 x float> %i.j, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %induction53 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat52, %i.o
  %broadcast.splat55 = shufflevector <4 x float> %i.j, <4 x float> poison, <8 x i32> zeroinitializer
  %induction56 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat55, %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x float> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind57 = phi <8 x float> [ %induction50, %vector.ph ], [ %vec.ind.next60, %vector.body ] ; 2 uses
  %vec.ind58 = phi <8 x float> [ %induction53, %vector.ph ], [ %vec.ind.next61, %vector.body ] ; 2 uses
  %vec.ind59 = phi <8 x float> [ %induction56, %vector.ph ], [ %vec.ind.next62, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.s = shufflevector <8 x float> %vec.ind59, <8 x float> %vec.ind58, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.t = shufflevector <8 x float> %vec.ind57, <8 x float> %vec.ind, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.u = shufflevector <16 x float> %i.s, <16 x float> %i.t, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.v = tail call reassoc nsz arcp contract afn <32 x float> @llvm.fabs.v32f32(<32 x float> %i.u)
  %interleaved.vec = fsub reassoc nsz arcp contract afn <32 x float> splat (float 1.000000e+00), %i.v
  store <32 x float> %interleaved.vec, ptr %i.r, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind, %broadcast.splat47
  %vec.ind.next60 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind57, %broadcast.splat47
  %vec.ind.next61 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind58, %broadcast.splat47
  %vec.ind.next62 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind59, %broadcast.splat47
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.preheader30.preheader67

.preheader30.preheader67:                         ; preds = %.preheader30.preheader, %middle.block
  %.02637.ph = phi i64 [ 0, %.preheader30.preheader ], [ %n.vec, %middle.block ]
  %.ph = phi <4 x float> [ %i.j, %.preheader30.preheader ], [ %i.n, %middle.block ]
  %i.x = insertelement <4 x float> poison, float %i.a, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader30

.preheader30:                                     ; preds = %.preheader30.preheader67, %.preheader30
  %.02637 = phi i64 [ %i.ae, %.preheader30 ], [ %.02637.ph, %.preheader30.preheader67 ] ; 2 uses
  %i.z = phi <4 x float> [ %i.ad, %.preheader30 ], [ %.ph, %.preheader30.preheader67 ] ; 2 uses
  %.idx = shl i64 %.02637, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.ab = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.z)
  %i.ac = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ab
  store <4 x float> %i.ac, ptr %i.aa, align 4, !tbaa !19
  %i.ad = fadd reassoc nsz arcp contract afn <4 x float> %i.z, %i.y
  %i.ae = add nuw i64 %.02637, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.preheader30, !llvm.loop !144

._crit_edge:                                      ; preds = %.preheader30, %middle.block, %.preheader32.preheader
  ret float 1.000000e+00
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal noundef float @_maketaps_bicubic(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, float %2, float noundef %3, float noundef %4) #8 {
.preheader77.preheader:
  %i.a = fmul reassoc nsz arcp contract afn float %4, 4.000000e+00 ; 3 uses
  %i.b = shl i64 %1, 30
  %i.c = add i64 %i.b, 3221225472
  %i.d = ashr i64 %i.c, 32                        ; 5 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader77.preheader
  %i.e = insertelement <4 x float> poison, float %4, i64 0
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <4 x i32> zeroinitializer
  %i.g = fmul reassoc arcp contract afn <4 x float> %i.f, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00>
  %i.h = insertelement <4 x float> poison, float %3, i64 0
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> zeroinitializer
  %i.j = fadd reassoc nsz arcp contract afn <4 x float> %i.g, %i.i ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.preheader165, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.d, -8                       ; 4 uses
  %5 = uitofp i64 %n.vec to float
  %i.k = fmul reassoc nsz arcp contract afn float %i.a, %5
  %i.l = insertelement <4 x float> poison, float %i.k, i64 0
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> zeroinitializer
  %i.n = fadd reassoc nsz arcp contract afn <4 x float> %i.j, %i.m
  %broadcast.splat = shufflevector <4 x float> %i.j, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splatinsert142 = insertelement <8 x float> poison, float %i.a, i64 0
  %broadcast.splat143 = shufflevector <8 x float> %broadcast.splatinsert142, <8 x float> poison, <8 x i32> zeroinitializer
  %i.o = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat143, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00> ; 4 uses
  %induction = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.o
  %i.p = fmul reassoc nsz arcp contract afn float %4, 3.200000e+01
  %broadcast.splatinsert144 = insertelement <8 x float> poison, float %i.p, i64 0
  %broadcast.splat145 = shufflevector <8 x float> %broadcast.splatinsert144, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat147 = shufflevector <4 x float> %i.j, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %induction148 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat147, %i.o
  %broadcast.splat150 = shufflevector <4 x float> %i.j, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %induction151 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat150, %i.o
  %broadcast.splat153 = shufflevector <4 x float> %i.j, <4 x float> poison, <8 x i32> zeroinitializer
  %induction154 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat153, %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x float> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %vec.ind155 = phi <8 x float> [ %induction148, %vector.ph ], [ %vec.ind.next158, %vector.body ] ; 6 uses
  %vec.ind156 = phi <8 x float> [ %induction151, %vector.ph ], [ %vec.ind.next159, %vector.body ] ; 6 uses
  %vec.ind157 = phi <8 x float> [ %induction154, %vector.ph ], [ %vec.ind.next160, %vector.body ] ; 6 uses
  %i.q = fcmp reassoc nsz arcp contract afn olt <8 x float> %vec.ind157, zeroinitializer
  %i.r = fneg reassoc nsz arcp contract afn <8 x float> %vec.ind157
  %i.s = select reassoc nsz arcp contract afn <8 x i1> %i.q, <8 x float> %i.r, <8 x float> %vec.ind157 ; 4 uses
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind157, %vec.ind157 ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn olt <8 x float> %vec.ind156, zeroinitializer
  %i.v = fneg reassoc nsz arcp contract afn <8 x float> %vec.ind156
  %i.w = select reassoc nsz arcp contract afn <8 x i1> %i.u, <8 x float> %i.v, <8 x float> %vec.ind156 ; 4 uses
  %i.x = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind156, %vec.ind156 ; 2 uses
  %i.y = fcmp reassoc nsz arcp contract afn olt <8 x float> %vec.ind155, zeroinitializer
  %i.z = fneg reassoc nsz arcp contract afn <8 x float> %vec.ind155
  %i.aa = select reassoc nsz arcp contract afn <8 x i1> %i.y, <8 x float> %i.z, <8 x float> %vec.ind155 ; 4 uses
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind155, %vec.ind155 ; 2 uses
  %i.ac = fcmp reassoc nsz arcp contract afn olt <8 x float> %vec.ind, zeroinitializer
  %i.ad = fneg reassoc nsz arcp contract afn <8 x float> %vec.ind
  %i.ae = select reassoc nsz arcp contract afn <8 x i1> %i.ac, <8 x float> %i.ad, <8 x float> %vec.ind ; 4 uses
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind, %vec.ind ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %i.s, splat (float 5.000000e+00) ; 2 uses
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %i.w, splat (float 5.000000e+00) ; 2 uses
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.aa, splat (float 5.000000e+00) ; 2 uses
  %i.aj = fmul reassoc nsz arcp contract afn <8 x float> %i.ae, splat (float 5.000000e+00) ; 2 uses
  %i.ak = shl i64 %index, 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.am = shufflevector <8 x float> %i.s, <8 x float> %i.w, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.an = fcmp reassoc nsz arcp contract afn ugt <16 x float> %i.am, splat (float 1.000000e+00)
  %i.ao = shufflevector <8 x float> %i.ag, <8 x float> %i.ah, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ap = fadd reassoc nsz arcp contract afn <16 x float> %i.ao, splat (float -8.000000e+00)
  %i.aq = shufflevector <8 x float> %i.t, <8 x float> %i.x, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ar = fsub reassoc nsz arcp contract afn <16 x float> %i.ap, %i.aq
  %i.as = shufflevector <8 x float> %i.s, <8 x float> %i.w, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.at = fmul reassoc nsz arcp contract afn <16 x float> %i.ar, %i.as
  %i.au = fmul reassoc nsz arcp contract afn <16 x float> %i.at, splat (float 5.000000e-01)
  %i.av = fadd reassoc nsz arcp contract afn <16 x float> %i.au, splat (float 2.000000e+00)
  %i.aw = shufflevector <8 x float> %i.t, <8 x float> %i.x, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ax = fmul reassoc nsz arcp contract afn <16 x float> %i.aw, splat (float 3.000000e+00)
  %i.ay = shufflevector <8 x float> %i.ag, <8 x float> %i.ah, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.az = fsub reassoc nsz arcp contract afn <16 x float> %i.ax, %i.ay
  %i.ba = shufflevector <8 x float> %i.s, <8 x float> %i.w, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bb = fmul reassoc nsz arcp contract afn <16 x float> %i.az, %i.ba
  %i.bc = fmul reassoc nsz arcp contract afn <16 x float> %i.bb, splat (float 5.000000e-01)
  %i.bd = fadd reassoc nsz arcp contract afn <16 x float> %i.bc, splat (float 1.000000e+00)
  %i.be = select <16 x i1> %i.an, <16 x float> %i.av, <16 x float> %i.bd
  %i.bf = shufflevector <8 x float> %i.aa, <8 x float> %i.ae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bg = fcmp reassoc nsz arcp contract afn ugt <16 x float> %i.bf, splat (float 1.000000e+00)
  %i.bh = shufflevector <8 x float> %i.ai, <8 x float> %i.aj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bi = fadd reassoc nsz arcp contract afn <16 x float> %i.bh, splat (float -8.000000e+00)
  %i.bj = shufflevector <8 x float> %i.ab, <8 x float> %i.af, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bk = fsub reassoc nsz arcp contract afn <16 x float> %i.bi, %i.bj
  %i.bl = shufflevector <8 x float> %i.aa, <8 x float> %i.ae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bm = fmul reassoc nsz arcp contract afn <16 x float> %i.bk, %i.bl
  %i.bn = fmul reassoc nsz arcp contract afn <16 x float> %i.bm, splat (float 5.000000e-01)
  %i.bo = fadd reassoc nsz arcp contract afn <16 x float> %i.bn, splat (float 2.000000e+00)
  %i.bp = shufflevector <8 x float> %i.ab, <8 x float> %i.af, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bq = fmul reassoc nsz arcp contract afn <16 x float> %i.bp, splat (float 3.000000e+00)
  %i.br = shufflevector <8 x float> %i.ai, <8 x float> %i.aj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bs = fsub reassoc nsz arcp contract afn <16 x float> %i.bq, %i.br
  %i.bt = shufflevector <8 x float> %i.aa, <8 x float> %i.ae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bu = fmul reassoc nsz arcp contract afn <16 x float> %i.bs, %i.bt
  %i.bv = fmul reassoc nsz arcp contract afn <16 x float> %i.bu, splat (float 5.000000e-01)
  %i.bw = fadd reassoc nsz arcp contract afn <16 x float> %i.bv, splat (float 1.000000e+00)
  %i.bx = select <16 x i1> %i.bg, <16 x float> %i.bo, <16 x float> %i.bw
  %interleaved.vec = shufflevector <16 x float> %i.be, <16 x float> %i.bx, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.al, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind, %broadcast.splat145
  %vec.ind.next158 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind155, %broadcast.splat145
  %vec.ind.next159 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind156, %broadcast.splat145
  %vec.ind.next160 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind157, %broadcast.splat145
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader165

.lr.ph.preheader165:                              ; preds = %.lr.ph.preheader, %middle.block
  %.07086.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.ph = phi <4 x float> [ %i.j, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %i.bz = insertelement <4 x float> poison, float %i.a, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader77.preheader
  ret float 1.000000e+00

.lr.ph:                                           ; preds = %.lr.ph.preheader165, %.lr.ph
  %.07086 = phi i64 [ %i.cv, %.lr.ph ], [ %.07086.ph, %.lr.ph.preheader165 ] ; 2 uses
  %i.cb = phi <4 x float> [ %i.cu, %.lr.ph ], [ %.ph, %.lr.ph.preheader165 ] ; 6 uses
  %i.cc = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.cb, zeroinitializer
  %i.cd = fneg reassoc nsz arcp contract afn <4 x float> %i.cb
  %i.ce = fmul reassoc nsz arcp contract afn <4 x float> %i.cb, %i.cb ; 2 uses
  %.idx = shl i64 %.07086, 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.cg = select <4 x i1> %i.cc, <4 x float> %i.cd, <4 x float> %i.cb ; 4 uses
  %i.ch = fmul reassoc nsz arcp contract afn <4 x float> %i.cg, splat (float 5.000000e+00) ; 2 uses
  %i.ci = fadd reassoc nsz arcp contract afn <4 x float> %i.ch, splat (float -8.000000e+00)
  %i.cj = fsub reassoc nsz arcp contract afn <4 x float> %i.ci, %i.ce
  %i.ck = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, %i.cg
  %i.cl = fmul reassoc nsz arcp contract afn <4 x float> %i.ck, splat (float 5.000000e-01)
  %i.cm = fadd reassoc nsz arcp contract afn <4 x float> %i.cl, splat (float 2.000000e+00)
  %i.cn = fmul reassoc nsz arcp contract afn <4 x float> %i.ce, splat (float 3.000000e+00)
  %i.co = fsub reassoc nsz arcp contract afn <4 x float> %i.cn, %i.ch
  %i.cp = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %i.cg
  %i.cq = fmul reassoc nsz arcp contract afn <4 x float> %i.cp, splat (float 5.000000e-01)
  %i.cr = fadd reassoc nsz arcp contract afn <4 x float> %i.cq, splat (float 1.000000e+00)
  %i.cs = fcmp reassoc nsz arcp contract afn ugt <4 x float> %i.cg, splat (float 1.000000e+00)
  %i.ct = select <4 x i1> %i.cs, <4 x float> %i.cm, <4 x float> %i.cr
  store <4 x float> %i.ct, ptr %i.cf, align 4, !tbaa !19
  %i.cu = fadd reassoc nsz arcp contract afn <4 x float> %i.cb, %i.ca
  %i.cv = add nuw i64 %.07086, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cv, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !146
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal float @_maketaps_lanczos(ptr nofree noundef captures(none) %0, i64 noundef %1, float noundef %2, float noundef %3, float noundef %4) #9 {
.preheader78.preheader:
  %i.a = fmul reassoc nsz arcp contract afn float %4, 4.000000e+00 ; 3 uses
  %i.b = shl i64 %1, 30
  %i.c = add i64 %i.b, 3221225472
  %i.d = ashr i64 %i.c, 32                        ; 5 uses
  %.not91 = icmp eq i64 %i.d, 0
  br i1 %.not91, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader78.preheader
  %i.e = insertelement <4 x float> poison, float %4, i64 0
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <4 x i32> zeroinitializer
  %i.g = fmul reassoc arcp contract afn <4 x float> %i.f, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00>
  %i.h = insertelement <4 x float> poison, float %3, i64 0
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> zeroinitializer
  %i.j = fadd reassoc nsz arcp contract afn <4 x float> %i.g, %i.i ; 6 uses
  %i.k = insertelement <4 x float> poison, float %2, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.m = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.l ; 6 uses
  %i.n = fmul reassoc nsz arcp contract afn <4 x float> %i.m, splat (float f0x3ECF817A) ; 5 uses
  %i.o = fneg reassoc nsz arcp contract afn <4 x float> %i.l ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.preheader76.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.d, -8                       ; 4 uses
  %5 = uitofp i64 %n.vec to float
  %i.p = fmul reassoc nsz arcp contract afn float %i.a, %5
  %i.q = insertelement <4 x float> poison, float %i.p, i64 0
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> zeroinitializer
  %i.s = fadd reassoc nsz arcp contract afn <4 x float> %i.j, %i.r
  %broadcast.splat = shufflevector <4 x float> %i.m, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat154 = shufflevector <4 x float> %i.m, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat156 = shufflevector <4 x float> %i.m, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat158 = shufflevector <4 x float> %i.m, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat160 = shufflevector <4 x float> %i.n, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat162 = shufflevector <4 x float> %i.n, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat164 = shufflevector <4 x float> %i.n, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat166 = shufflevector <4 x float> %i.n, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat168 = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat170 = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat172 = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat174 = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splatinsert175 = insertelement <8 x float> poison, float %2, i64 0
  %broadcast.splat176 = shufflevector <8 x float> %broadcast.splatinsert175, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat178 = shufflevector <4 x float> %i.j, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splatinsert179 = insertelement <8 x float> poison, float %i.a, i64 0
  %broadcast.splat180 = shufflevector <8 x float> %broadcast.splatinsert179, <8 x float> poison, <8 x i32> zeroinitializer
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat180, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00> ; 4 uses
  %induction = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat178, %i.t
  %i.u = fmul reassoc nsz arcp contract afn float %4, 3.200000e+01
  %broadcast.splatinsert181 = insertelement <8 x float> poison, float %i.u, i64 0
  %broadcast.splat182 = shufflevector <8 x float> %broadcast.splatinsert181, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat184 = shufflevector <4 x float> %i.j, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %induction185 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat184, %i.t
  %broadcast.splat187 = shufflevector <4 x float> %i.j, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %induction188 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat187, %i.t
  %broadcast.splat190 = shufflevector <4 x float> %i.j, <4 x float> poison, <8 x i32> zeroinitializer
  %induction191 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat190, %i.t
  %invariant.op = fmul reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %broadcast.splat
  %invariant.op238 = fmul reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %broadcast.splat154
  %invariant.op240 = fmul reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %broadcast.splat156
  %invariant.op242 = fmul reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %broadcast.splat158
  %factor.op.fmul = fmul reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %broadcast.splat160
  %factor.op.fmul245 = fmul reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %broadcast.splat162
  %factor.op.fmul247 = fmul reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %broadcast.splat164
  %factor.op.fmul249 = fmul reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %broadcast.splat166
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x float> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 7 uses
  %vec.ind192 = phi <8 x float> [ %induction185, %vector.ph ], [ %vec.ind.next195, %vector.body ] ; 7 uses
  %vec.ind193 = phi <8 x float> [ %induction188, %vector.ph ], [ %vec.ind.next196, %vector.body ] ; 7 uses
  %vec.ind194 = phi <8 x float> [ %induction191, %vector.ph ], [ %vec.ind.next197, %vector.body ] ; 7 uses
  %i.v = fptosi <8 x float> %vec.ind194 to <8 x i32> ; 2 uses
  %i.w = sitofp reassoc nsz arcp contract afn <8 x i32> %i.v to <8 x float>
  %i.x = fsub reassoc nsz arcp contract afn <8 x float> %vec.ind194, %i.w ; 2 uses
  %i.y = and <8 x i32> %i.v, splat (i32 1)
  %i.z = icmp eq <8 x i32> %i.y, zeroinitializer
  %i.aa = fptosi <8 x float> %vec.ind193 to <8 x i32> ; 2 uses
  %i.ab = sitofp reassoc nsz arcp contract afn <8 x i32> %i.aa to <8 x float>
  %i.ac = fsub reassoc nsz arcp contract afn <8 x float> %vec.ind193, %i.ab ; 2 uses
  %i.ad = and <8 x i32> %i.aa, splat (i32 1)
  %i.ae = icmp eq <8 x i32> %i.ad, zeroinitializer
  %i.af = fptosi <8 x float> %vec.ind192 to <8 x i32> ; 2 uses
  %i.ag = sitofp reassoc nsz arcp contract afn <8 x i32> %i.af to <8 x float>
  %i.ah = fsub reassoc nsz arcp contract afn <8 x float> %vec.ind192, %i.ag ; 2 uses
  %i.ai = and <8 x i32> %i.af, splat (i32 1)
  %i.aj = icmp eq <8 x i32> %i.ai, zeroinitializer
  %i.ak = fptosi <8 x float> %vec.ind to <8 x i32> ; 2 uses
  %i.al = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ak to <8 x float>
  %i.am = fsub reassoc nsz arcp contract afn <8 x float> %vec.ind, %i.al ; 2 uses
  %i.an = and <8 x i32> %i.ak, splat (i32 1)
  %i.ao = icmp eq <8 x i32> %i.an, zeroinitializer
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %i.x, splat (float f0x40490FDB)
  %.reass244 = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind194, %factor.op.fmul
  %.reass = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind194, %invariant.op
  %i.aq = fmul reassoc nsz arcp contract afn <8 x float> %i.ac, splat (float f0x40490FDB)
  %.reass246 = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind193, %factor.op.fmul245
  %.reass239 = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind193, %invariant.op238
  %i.ar = fmul reassoc nsz arcp contract afn <8 x float> %i.ah, splat (float f0x40490FDB)
  %.reass248 = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind192, %factor.op.fmul247
  %.reass241 = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind192, %invariant.op240
  %i.as = fmul reassoc nsz arcp contract afn <8 x float> %i.am, splat (float f0x40490FDB)
  %.reass250 = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind, %factor.op.fmul249
  %.reass243 = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind, %invariant.op242
  %i.at = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ap)
  %i.au = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aq)
  %i.av = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ar)
  %i.aw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.as)
  %i.ax = fmul reassoc nsz arcp contract afn <8 x float> %i.x, splat (float f0x3FA2F983)
  %i.ay = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %i.at
  %i.az = fmul reassoc nsz arcp contract afn <8 x float> %i.ax, %i.ay ; 2 uses
  %i.ba = fmul reassoc nsz arcp contract afn <8 x float> %i.ac, splat (float f0x3FA2F983)
  %i.bb = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %i.au
  %i.bc = fmul reassoc nsz arcp contract afn <8 x float> %i.ba, %i.bb ; 2 uses
  %i.bd = fmul reassoc nsz arcp contract afn <8 x float> %i.ah, splat (float f0x3FA2F983)
  %i.be = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %i.av
  %i.bf = fmul reassoc nsz arcp contract afn <8 x float> %i.bd, %i.be ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn <8 x float> %i.am, splat (float f0x3FA2F983)
  %i.bh = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %i.aw
  %i.bi = fmul reassoc nsz arcp contract afn <8 x float> %i.bg, %i.bh ; 2 uses
  %i.bj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.az)
  %i.bk = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bc)
  %i.bl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bf)
  %i.bm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bi)
  %i.bn = fmul reassoc nsz arcp contract afn <8 x float> %i.bj, splat (float 2.250000e-01)
  %i.bo = fadd reassoc nsz arcp contract afn <8 x float> %i.bn, splat (float f0x3F466666)
  %i.bp = fmul reassoc nsz arcp contract afn <8 x float> %i.bo, %i.az
  %i.bq = fmul reassoc nsz arcp contract afn <8 x float> %i.bk, splat (float 2.250000e-01)
  %i.br = fadd reassoc nsz arcp contract afn <8 x float> %i.bq, splat (float f0x3F466666)
  %i.bs = fmul reassoc nsz arcp contract afn <8 x float> %i.br, %i.bc
  %i.bt = fmul reassoc nsz arcp contract afn <8 x float> %i.bl, splat (float 2.250000e-01)
  %i.bu = fadd reassoc nsz arcp contract afn <8 x float> %i.bt, splat (float f0x3F466666)
  %i.bv = fmul reassoc nsz arcp contract afn <8 x float> %i.bu, %i.bf
  %i.bw = fmul reassoc nsz arcp contract afn <8 x float> %i.bm, splat (float 2.250000e-01)
  %i.bx = fadd reassoc nsz arcp contract afn <8 x float> %i.bw, splat (float f0x3F466666)
  %i.by = fmul reassoc nsz arcp contract afn <8 x float> %i.bx, %i.bi
  %i.bz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %.reass)
  %i.ca = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %.reass239)
  %i.cb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %.reass241)
  %i.cc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %.reass243)
  %i.cd = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %i.bz
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %.reass244, %i.cd ; 2 uses
  %i.cf = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %i.ca
  %i.cg = fmul reassoc nsz arcp contract afn <8 x float> %.reass246, %i.cf ; 2 uses
  %i.ch = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %i.cb
  %i.ci = fmul reassoc nsz arcp contract afn <8 x float> %.reass248, %i.ch ; 2 uses
  %i.cj = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x40490FDB), %i.cc
  %i.ck = fmul reassoc nsz arcp contract afn <8 x float> %.reass250, %i.cj ; 2 uses
  %i.cl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ce)
  %i.cm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cg)
  %i.cn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ci)
  %i.co = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ck)
  %i.cp = fmul reassoc nsz arcp contract afn <8 x float> %i.cl, splat (float 2.250000e-01)
  %i.cq = fadd reassoc nsz arcp contract afn <8 x float> %i.cp, splat (float f0x3F466666)
  %i.cr = fmul reassoc nsz arcp contract afn <8 x float> %i.cq, %i.ce
  %i.cs = fmul reassoc nsz arcp contract afn <8 x float> %i.cm, splat (float 2.250000e-01)
  %i.ct = fadd reassoc nsz arcp contract afn <8 x float> %i.cs, splat (float f0x3F466666)
  %i.cu = fmul reassoc nsz arcp contract afn <8 x float> %i.ct, %i.cg
  %i.cv = fmul reassoc nsz arcp contract afn <8 x float> %i.cn, splat (float 2.250000e-01)
  %i.cw = fadd reassoc nsz arcp contract afn <8 x float> %i.cv, splat (float f0x3F466666)
  %i.cx = fmul reassoc nsz arcp contract afn <8 x float> %i.cw, %i.ci
  %i.cy = fmul reassoc nsz arcp contract afn <8 x float> %i.co, splat (float 2.250000e-01)
  %i.cz = fadd reassoc nsz arcp contract afn <8 x float> %i.cy, splat (float f0x3F466666)
  %i.da = fmul reassoc nsz arcp contract afn <8 x float> %i.cz, %i.ck
  %i.db = select reassoc nsz arcp contract afn <8 x i1> %i.z, <8 x float> %broadcast.splat176, <8 x float> %broadcast.splat168
  %i.dc = fmul reassoc nsz arcp contract afn <8 x float> %i.db, %i.bp
  %i.dd = fmul reassoc nsz arcp contract afn <8 x float> %i.dc, %i.cr
  %i.de = fadd reassoc nsz arcp contract afn <8 x float> %i.dd, splat (float f0x3089705F)
  %i.df = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind194, %vec.ind194
  %i.dg = fmul reassoc nsz arcp contract afn <8 x float> %i.df, splat (float f0x411DE9E7)
  %i.dh = fadd reassoc nsz arcp contract afn <8 x float> %i.dg, splat (float f0x3089705F)
  %i.di = select reassoc nsz arcp contract afn <8 x i1> %i.ae, <8 x float> %broadcast.splat176, <8 x float> %broadcast.splat170
  %i.dj = fmul reassoc nsz arcp contract afn <8 x float> %i.di, %i.bs
  %i.dk = fmul reassoc nsz arcp contract afn <8 x float> %i.dj, %i.cu
  %i.dl = fadd reassoc nsz arcp contract afn <8 x float> %i.dk, splat (float f0x3089705F)
  %i.dm = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind193, %vec.ind193
  %i.dn = fmul reassoc nsz arcp contract afn <8 x float> %i.dm, splat (float f0x411DE9E7)
  %i.do = fadd reassoc nsz arcp contract afn <8 x float> %i.dn, splat (float f0x3089705F)
  %i.dp = select reassoc nsz arcp contract afn <8 x i1> %i.aj, <8 x float> %broadcast.splat176, <8 x float> %broadcast.splat172
  %i.dq = fmul reassoc nsz arcp contract afn <8 x float> %i.dp, %i.bv
  %i.dr = fmul reassoc nsz arcp contract afn <8 x float> %i.dq, %i.cx
  %i.ds = fadd reassoc nsz arcp contract afn <8 x float> %i.dr, splat (float f0x3089705F)
  %i.dt = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind192, %vec.ind192
  %i.du = fmul reassoc nsz arcp contract afn <8 x float> %i.dt, splat (float f0x411DE9E7)
  %i.dv = fadd reassoc nsz arcp contract afn <8 x float> %i.du, splat (float f0x3089705F)
  %i.dw = select reassoc nsz arcp contract afn <8 x i1> %i.ao, <8 x float> %broadcast.splat176, <8 x float> %broadcast.splat174
  %i.dx = fmul reassoc nsz arcp contract afn <8 x float> %i.dw, %i.by
  %i.dy = fmul reassoc nsz arcp contract afn <8 x float> %i.dx, %i.da
  %i.dz = fadd reassoc nsz arcp contract afn <8 x float> %i.dy, splat (float f0x3089705F)
  %i.ea = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind, %vec.ind
  %i.eb = fmul reassoc nsz arcp contract afn <8 x float> %i.ea, splat (float f0x411DE9E7)
  %i.ec = fadd reassoc nsz arcp contract afn <8 x float> %i.eb, splat (float f0x3089705F)
  %i.ed = shl i64 %index, 4
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 %i.ed
  %i.ef = fdiv reassoc nsz arcp contract afn <8 x float> %i.de, %i.dh
  %i.eg = fdiv reassoc nsz arcp contract afn <8 x float> %i.dl, %i.do
  %i.eh = fdiv reassoc nsz arcp contract afn <8 x float> %i.ds, %i.dv
  %i.ei = fdiv reassoc nsz arcp contract afn <8 x float> %i.dz, %i.ec
  %i.ej = shufflevector <8 x float> %i.ef, <8 x float> %i.eg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ek = shufflevector <8 x float> %i.eh, <8 x float> %i.ei, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ej, <16 x float> %i.ek, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ee, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind, %broadcast.splat182
  %vec.ind.next195 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind192, %broadcast.splat182
  %vec.ind.next196 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind193, %broadcast.splat182
  %vec.ind.next197 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind194, %broadcast.splat182
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.preheader, label %.preheader76.preheader

.preheader76.preheader:                           ; preds = %.lr.ph, %middle.block
  %.07287.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.ph = phi <4 x float> [ %i.j, %.lr.ph ], [ %i.s, %middle.block ]
  %invariant.op251 = fmul reassoc nsz arcp contract afn <4 x float> splat (float f0x40490FDB), %i.m
  %factor.op.fmul253 = fmul reassoc nsz arcp contract afn <4 x float> splat (float f0x40490FDB), %i.n
  %i.em = insertelement <4 x float> poison, float %i.a, i64 0
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader76

.preheader:                                       ; preds = %.preheader76, %middle.block, %.preheader78.preheader
end_hunk_0
