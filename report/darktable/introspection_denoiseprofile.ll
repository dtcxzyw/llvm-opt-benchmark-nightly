inline.NumInlined: 157
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 84
begin_hunk_0_@legacy_params:bb.a
bb.d:                                             ; preds = %bb.c
  %i.e = tail call noalias dereferenceable_or_null(416) ptr @malloc(i64 noundef 416) #27 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(412) %i.e, ptr noundef nonnull align 4 dereferenceable(412) %1, i64 412, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 412
  store i32 0, ptr %i.f, align 4, !tbaa !109
  store ptr %i.e, ptr %3, align 8, !tbaa !108
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink21 = phi i32 [ 416, %bb.d ], [ 412, %bb.b ]
  %.sink = phi i32 [ 12, %bb.d ], [ 11, %bb.b ]
  %.0.ph = phi i32 [ 0, %bb.d ], [ %i.c, %bb.b ]
  store i32 %.sink21, ptr %4, align 4, !tbaa !41
  store i32 %.sink, ptr %5, align 4, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef %0) local_unnamed_addr #1 {
.preheader:
  %1 = alloca %struct.dt_iop_denoiseprofile_params_t, align 16 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(376) %i.a, i8 0, i64 376, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 1, ptr %i.b, align 8, !tbaa !99
  store <4 x float> <float 1.000000e+00, float 7.000000e+00, float 1.200000e+00, float 0.000000e+00>, ptr %1, align 16, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float 0.000000e+00, ptr %i.c, align 16, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float -1.000000e+00, ptr %i.e, align 16, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x float> <float 1.000000e-01, float 1.000000e+00>, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 412
  store i32 0, ptr %i.g, align 4, !tbaa !112
  store <4 x i32> splat (i32 1), ptr %i.d, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 340
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %1, i64 92
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %gep.3.1 = getelementptr inbounds nuw i8, ptr %1, i64 148
  %gep14.5.1 = getelementptr inbounds nuw i8, ptr %1, i64 372
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 180
  %gep.5.3 = getelementptr inbounds nuw i8, ptr %1, i64 212
  %invariant.gep13.4 = getelementptr inbounds nuw i8, ptr %1, i64 244
  store <4 x float> <float f0x3E2AAAAB, float f0x3EAAAAAB, float 5.000000e-01, float f0x3F2AAAAB>, ptr %invariant.gep.1, align 16, !tbaa !16
  store <4 x float> <float f0x3E2AAAAB, float f0x3EAAAAAB, float 5.000000e-01, float f0x3F2AAAAB>, ptr %gep.1.1, align 4, !tbaa !16
  store <4 x float> <float f0x3E2AAAAB, float f0x3EAAAAAB, float 5.000000e-01, float f0x3F2AAAAB>, ptr %gep.2.1, align 8, !tbaa !16
  store <4 x float> splat (float 5.000000e-01), ptr %gep14.5.1, align 4, !tbaa !16
  %invariant.gep.5 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %gep.1.5 = getelementptr inbounds nuw i8, ptr %1, i64 108
  %gep14.1.5 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %gep.2.5 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %gep14.5.5 = getelementptr inbounds nuw i8, ptr %1, i64 388
  store <2 x float> <float f0x3F555556, float 1.000000e+00>, ptr %invariant.gep.5, align 16, !tbaa !16
  store <8 x float> splat (float 5.000000e-01), ptr %invariant.gep13.4, align 4, !tbaa !16
  store <2 x float> <float f0x3F555556, float 1.000000e+00>, ptr %gep.1.5, align 4, !tbaa !16
  store <8 x float> splat (float 5.000000e-01), ptr %gep14.1.5, align 4, !tbaa !16
  store <2 x float> <float f0x3F555556, float 1.000000e+00>, ptr %gep.2.5, align 8, !tbaa !16
  %gep14.2.6 = getelementptr inbounds nuw i8, ptr %1, i64 308
  store <8 x float> <float f0x3E2AAAAB, float f0x3EAAAAAB, float 5.000000e-01, float f0x3F2AAAAB, float f0x3F555556, float 1.000000e+00, float 0.000000e+00, float f0x3E2AAAAB>, ptr %gep.3.1, align 4, !tbaa !16
  store <8 x float> splat (float 5.000000e-01), ptr %gep14.2.6, align 4, !tbaa !16
  store <8 x float> <float 5.000000e-01, float f0x3F2AAAAB, float f0x3F555556, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %gep.5.3, align 4, !tbaa !16
  store <2 x float> splat (float 5.000000e-01), ptr %gep14.5.5, align 4, !tbaa !16
  store <8 x float> <float f0x3EAAAAAB, float 5.000000e-01, float f0x3F2AAAAB, float f0x3F555556, float 1.000000e+00, float 0.000000e+00, float f0x3E2AAAAB, float f0x3EAAAAAB>, ptr %i.i, align 4, !tbaa !16
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01>, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str, ptr noundef nonnull %i.j, i32 noundef 12, ptr noundef nonnull %1, i32 noundef 416, i32 noundef 1, i32 noundef 4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #18
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #18
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #18
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #18
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #18
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #18
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #18
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 28)) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !113 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.c, align 4, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.d, align 4, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load i32, ptr %i.e, align 4, !tbaa !99
  switch i32 %i.f, label %bb.c [
    i32 0, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.g = load float, ptr %i.b, align 4, !tbaa !123
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load float, ptr %i.h, align 4, !tbaa !124
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.i, float 2.000000e+00)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load float, ptr %i.k, align 8, !tbaa !125
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.l, float 1.000000e+00)
  %i.n = fdiv reassoc nsz arcp contract afn float %i.j, %i.m
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.n, float 1.000000e+00) ; 2 uses
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, %i.g
  %i.q = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.p)
  %i.r = fptosi float %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !126
  %i.u = fmul reassoc nsz arcp contract afn float %i.o, %i.t
  %i.v = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.u)
  %i.w = fptosi float %i.v to i32                 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !127
  %i.z = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.aa = mul nsw i32 %i.w, %i.w
  %i.ab = mul nsw i32 %i.aa, %i.w
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.ab to double
  %i.ad = sitofp reassoc nsz arcp contract afn i32 %i.w to double ; 2 uses
  %i.ae = fmul reassoc nnan nsz arcp contract afn double %i.ad, 7.000000e+00
  %i.af = tail call reassoc ninf nsz arcp contract afn double @llvm.sqrt.f64(double %i.ad)
  %i.ag = fmul reassoc nsz arcp contract afn double %i.ae, %i.af
  %i.ah = fadd reassoc nsz arcp contract afn double %i.ag, %i.ac
  %i.ai = fmul reassoc nsz arcp contract afn double %i.z, f0x3FC5555555555555
  %i.aj = fmul reassoc nsz arcp contract afn double %i.ai, %i.ah
  %i.ak = fptrunc reassoc nsz arcp contract afn double %i.aj to float
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ak)
  %i.am = sitofp reassoc nsz arcp contract afn i32 %i.w to float
  %i.an = fadd reassoc nsz arcp contract afn float %i.al, %i.am
  %i.ao = fptosi float %i.an to i32
  store <2 x float> <float 2.250000e+00, float 5.000000e+00>, ptr %4, align 4, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.000000e+00, ptr %i.ap, align 4, !tbaa !128
  %i.aq = add nsw i32 %i.ao, %i.r
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !124
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.au = load float, ptr %i.at, align 8, !tbaa !125 ; 3 uses
  %i.av = fdiv reassoc nsz arcp contract afn float %i.as, %i.au
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.av, float 1.000000e+00) ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ay = load <2 x i32>, ptr %i.ax, align 16, !tbaa !41
  %i.az = sitofp <2 x i32> %i.ay to <2 x float>   ; 2 uses
  %i.ba = extractelement <2 x float> %i.az, i64 1
  %i.bb = fmul reassoc nsz arcp contract afn float %i.au, %i.ba
  %i.bc = extractelement <2 x float> %i.az, i64 0
  %i.bd = fmul reassoc nsz arcp contract afn float %i.au, %i.bc
  %i.be = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bb, float %i.bd)
  %5 = fmul reassoc nsz arcp contract afn float %i.be, 2.000000e-01
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %5, float 2.570000e+02)
  %i.bg = fmul reassoc nnan nsz arcp contract afn float %i.bf, 5.000000e-01
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, -5.000000e-01
  %i.bi = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.bh) ; 7 uses
  %.reass = fdiv reassoc nsz arcp contract afn float 2.500000e+00, %i.aw
  %i.bj = fadd reassoc nsz arcp contract afn float %.reass, -5.000000e-01
  %i.bk = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.bj)
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, -5.000000e-01
  %i.bm = fdiv reassoc nsz arcp contract afn float %i.bl, %i.bi
  %i.bn = fcmp reassoc nsz arcp contract afn ogt float %i.bm, 1.000000e+00
  br i1 %i.bn, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.reass.1 = fdiv reassoc nsz arcp contract afn float 4.500000e+00, %i.aw
  %i.bo = fadd reassoc nsz arcp contract afn float %.reass.1, -5.000000e-01
  %i.bp = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.bo)
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bp, -5.000000e-01
  %i.br = fdiv reassoc nsz arcp contract afn float %i.bq, %i.bi
  %i.bs = fcmp reassoc nsz arcp contract afn ogt float %i.br, 1.000000e+00
  br i1 %i.bs, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.reass.2 = fdiv reassoc nsz arcp contract afn float 8.500000e+00, %i.aw
  %i.bt = fadd reassoc nsz arcp contract afn float %.reass.2, -5.000000e-01
  %i.bu = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.bt)
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bu, -5.000000e-01
  %i.bw = fdiv reassoc nsz arcp contract afn float %i.bv, %i.bi
  %i.bx = fcmp reassoc nsz arcp contract afn ogt float %i.bw, 1.000000e+00
  br i1 %i.bx, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.reass.3 = fdiv reassoc nsz arcp contract afn float 1.650000e+01, %i.aw
  %i.by = fadd reassoc nsz arcp contract afn float %.reass.3, -5.000000e-01
  %i.bz = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.by)
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, -5.000000e-01
  %i.cb = fdiv reassoc nsz arcp contract afn float %i.ca, %i.bi
  %i.cc = fcmp reassoc nsz arcp contract afn ogt float %i.cb, 1.000000e+00
  br i1 %i.cc, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.reass.4 = fdiv reassoc nsz arcp contract afn float 3.250000e+01, %i.aw
  %i.cd = fadd reassoc nsz arcp contract afn float %.reass.4, -5.000000e-01
  %i.ce = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.cd)
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, -5.000000e-01
  %i.cg = fdiv reassoc nsz arcp contract afn float %i.cf, %i.bi
  %i.ch = fcmp reassoc nsz arcp contract afn ogt float %i.cg, 1.000000e+00
  br i1 %i.ch, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.reass.5 = fdiv reassoc nsz arcp contract afn float 6.450000e+01, %i.aw
  %i.ci = fadd reassoc nsz arcp contract afn float %.reass.5, -5.000000e-01
  %i.cj = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.ci)
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, -5.000000e-01
  %i.cl = fdiv reassoc nsz arcp contract afn float %i.ck, %i.bi
  %i.cm = fcmp reassoc nsz arcp contract afn ogt float %i.cl, 1.000000e+00
  br i1 %i.cm, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.reass.6 = fdiv reassoc nsz arcp contract afn float 1.285000e+02, %i.aw
  %i.cn = fadd reassoc nsz arcp contract afn float %.reass.6, -5.000000e-01
  %i.co = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.cn)
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, -5.000000e-01
  %i.cq = fdiv reassoc nsz arcp contract afn float %i.cp, %i.bi
  %i.cr = fcmp reassoc nsz arcp contract afn ogt float %i.cq, 1.000000e+00
  br i1 %i.cr, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ 7, %bb.j ], [ 1, %bb.d ], [ 6, %bb.i ], [ 2, %bb.e ], [ 4, %bb.g ], [ 3, %bb.f ], [ 5, %bb.h ] ; 2 uses
  %i.cs = shl nuw nsw i32 1, %.0.lcssa
  store float 5.000000e+00, ptr %4, align 4, !tbaa !129
  %i.ct = uitofp nneg i32 %.0.lcssa to float
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, 3.500000e+00
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.cu, ptr %i.cv, align 4, !tbaa !130
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.cw, align 4, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.sink = phi i32 [ %i.cs, %bb.k ], [ %i.aq, %bb.b ]
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %.sink, ptr %i.cx, align 4, !tbaa !131
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %i.c = alloca [256 x i8], align 16              ; 4 uses
  %i.d = alloca [256 x i8], align 16              ; 4 uses
  %i.e = alloca [256 x i8], align 16              ; 4 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  %i.g = alloca ptr, align 8                      ; 8 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca [4 x float], align 16             ; 4 uses
  %i.j = alloca [4 x float], align 16             ; 5 uses
  %i.k = alloca [4 x float], align 16             ; 4 uses
  %i.l = alloca [4 x float], align 16             ; 7 uses
  %i.m = alloca [4 x float], align 16             ; 5 uses
  %i.n = alloca [4 x float], align 16             ; 4 uses
  %i.o = alloca [4 x float], align 16             ; 4 uses
  %i.p = alloca ptr, align 8                      ; 6 uses
  %i.q = alloca [4 x float], align 16             ; 7 uses
  %i.r = alloca [4 x float], align 16             ; 5 uses
  %i.s = alloca [4 x float], align 16             ; 4 uses
  %i.t = alloca [4 x float], align 16             ; 4 uses
  %i.u = alloca [4 x float], align 16             ; 4 uses
  %6 = alloca %struct.dt_nlmeans_param_t, align 8 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !113 ; 30 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load i32, ptr %i.x, align 4, !tbaa !99
  switch i32 %i.y, label %bb.az [
    i32 0, label %bb.b
    i32 3, label %bb.b
    i32 1, label %bb.q
    i32 4, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.z = load ptr, ptr %1, align 16, !tbaa !132
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !133
  %i.ac = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %i.z, i32 noundef %i.ab, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #18
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %process_nlmeans.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #18
  %i.ad = load ptr, ptr %1, align 16, !tbaa !132
  %i.ae = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef %i.ad, ptr noundef %4, ptr noundef %5, i32 noundef 1048580, ptr noundef nonnull %i.p, i32 noundef 0) #18
  %.not39.i = icmp eq i32 %i.ae, 0
  br i1 %.not39.i, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load float, ptr %i.af, align 4, !tbaa !124
  %i.ah = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ag, float 2.000000e+00)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !125
  %i.ak = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aj, float 1.000000e+00)
  %i.al = fdiv reassoc nsz arcp contract afn float %i.ah, %i.ak
  %i.am = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.al, float 1.000000e+00) ; 8 uses
  %i.an = load float, ptr %i.w, align 8, !tbaa !134
  %i.ao = fmul reassoc nsz arcp contract afn float %i.am, %i.an
  %i.ap = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ao)
  %i.aq = fptosi float %i.ap to i32               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !136
  %i.at = fptosi float %i.as to i32               ; 9 uses
  %i.au = getelementptr i8, ptr %i.w, i64 20
  %.val.i = load float, ptr %i.au, align 4, !tbaa !137 ; 3 uses
  %i.av = getelementptr i8, ptr %1, i64 8
  %.val40.i = load ptr, ptr %i.av, align 8, !tbaa !138 ; 6 uses
  %i.aw = getelementptr i8, ptr %.val40.i, i64 644
  %.val40.val.i = load i32, ptr %i.aw, align 4, !tbaa !139 ; 2 uses
  %i.ax = mul nsw i32 %i.at, %i.at
  %i.ay = mul nsw i32 %i.ax, %i.at
  %i.az = sitofp reassoc nsz arcp contract afn i32 %i.ay to double
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.at to double ; 3 uses
  %i.bb = fmul reassoc nnan nsz arcp contract afn double %i.ba, 7.000000e+00
  %i.bc = call reassoc ninf nsz arcp contract afn double @llvm.sqrt.f64(double %i.ba)
  %i.bd = fmul reassoc nsz arcp contract afn double %i.bb, %i.bc
  %i.be = fadd reassoc nsz arcp contract afn double %i.bd, %i.az
  %i.bf = fpext reassoc nsz arcp contract afn float %.val.i to double
  %i.bg = fmul reassoc nsz arcp contract afn double %i.bf, f0x3FC5555555555555
  %i.bh = fmul reassoc nsz arcp contract afn double %i.bg, %i.be
  %i.bi = fadd reassoc nsz arcp contract afn double %i.bh, %i.ba
  %i.bj = fptosi double %i.bi to i32              ; 2 uses
  %i.bk = and i32 %.val40.val.i, 268
  %or.cond1.i.i = icmp eq i32 %i.bk, 0
  br i1 %or.cond1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = call i32 @llvm.smin.i32(i32 %i.at, i32 3) ; 6 uses
  %i.bm = sub nsw i32 %i.bj, %i.bl
  %i.bn = sitofp reassoc nsz arcp contract afn i32 %i.bm to double
  %i.bo = fmul reassoc nnan nsz arcp contract afn double %i.bn, 6.000000e+00
  %i.bp = mul nsw i32 %i.bl, %i.bl
  %i.bq = mul nsw i32 %i.bp, %i.bl
  %i.br = sitofp reassoc nsz arcp contract afn i32 %i.bq to double
  %i.bs = sitofp reassoc nsz arcp contract afn i32 %i.bl to double ; 2 uses
  %i.bt = fmul reassoc nnan nsz arcp contract afn double %i.bs, 7.000000e+00
  %i.bu = call reassoc ninf nsz arcp contract afn double @llvm.sqrt.f64(double %i.bs)
  %i.bv = fmul reassoc nsz arcp contract afn double %i.bt, %i.bu
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.ss = insertelement <2 x double> poison, double %i.sl, i64 0
  %i.st = shufflevector <2 x double> %i.ss, <2 x double> poison, <2 x i32> zeroinitializer
  %i.su = fadd reassoc nsz arcp contract afn <2 x double> %i.sr, %i.st ; 2 uses
  %i.sv = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.su, zeroinitializer
  %i.sw = fptrunc <2 x double> %i.su to <2 x float>
  %i.sx = select <2 x i1> %i.sv, <2 x float> %i.sw, <2 x float> zeroinitializer ; 6 uses
  store <2 x float> %i.sx, ptr %i.j, align 16, !tbaa !16
  %i.sy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.sz = extractelement <2 x float> %i.si, i64 0 ; 2 uses
  %i.ta = fdiv reassoc nsz arcp contract afn float %i.on, %i.sz
  %i.tb = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ta)
  %i.tc = fpext reassoc nsz arcp contract afn float %i.tb to double
  %i.td = fmul reassoc nsz arcp contract afn double %i.tc, 1.000000e-01
  %i.te = fadd reassoc nsz arcp contract afn double %i.td, %i.sl ; 2 uses
  %i.tf = fcmp reassoc nsz arcp contract afn ogt double %i.te, 0.000000e+00
  %i.tg = fptrunc reassoc nsz arcp contract afn double %i.te to float
  %i.th = select i1 %i.tf, float %i.tg, float 0.000000e+00 ; 6 uses
  %i.ti = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.th, i64 0
  store <2 x float> %i.ti, ptr %i.sy, align 8, !tbaa !16
  %i.tj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.sk
  %i.tk = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 5.000000e-02, float %i.tj) ; 3 uses
  %i.tl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.sg
  %i.tm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.sf
  %i.tn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.sz
  %i.to = fadd reassoc nsz arcp contract afn float %i.tm, %i.tn
  %i.tp = fadd reassoc nsz arcp contract afn float %i.to, %i.tl
  %i.tq = fmul reassoc nsz arcp contract afn float %i.tp, f0x3FDDB3D7 ; 2 uses
  %i.tr = fmul reassoc nsz arcp contract afn float %i.sg, %i.sg
  %foldExtExtBinop265 = fmul reassoc nsz arcp contract afn <2 x float> %i.si, %i.si
  %i.ts = extractelement <2 x float> %foldExtExtBinop265, i64 0
  %i.tt = fmul reassoc nsz arcp contract afn float %i.sf, %i.sf ; 2 uses
  %i.tu = insertelement <2 x float> poison, float %i.tq, i64 0
  %i.tv = shufflevector <2 x float> %i.tu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tw = insertelement <2 x float> poison, float %i.sf, i64 0
  %i.tx = insertelement <2 x float> %i.tw, float %i.sg, i64 1
  %i.ty = fdiv reassoc nsz arcp contract afn <2 x float> %i.tv, %i.tx ; 6 uses
  %i.tz = fadd reassoc nsz arcp contract afn float %i.tr, %i.ts ; 3 uses
  %i.ua = fmul reassoc nsz arcp contract afn float %i.tt, 2.500000e-01
  %reass.mul.i.i = fmul reassoc nsz arcp contract afn float %i.tz, 6.250000e-02
  %i.ub = fmul reassoc nsz arcp contract afn float %i.tz, 2.500000e-01
  %i.uc = fadd reassoc nsz arcp contract afn float %reass.mul.i.i, %i.ua
  %i.ud = insertelement <2 x float> poison, float %i.uc, i64 0
  %i.ue = insertelement <2 x float> %i.ud, float %i.ub, i64 1
  %i.uf = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ue) ; 3 uses
  %i.ug = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.tq, i64 1
  %i.uh = shufflevector <2 x float> %i.uf, <2 x float> %i.si, <2 x i32> <i32 1, i32 2>
  %i.ui = fdiv reassoc nsz arcp contract afn <2 x float> %i.ug, %i.uh ; 6 uses
  %i.uj = fdiv reassoc nsz arcp contract afn <2 x float> <float 2.500000e-01, float 0.000000e+00>, %i.uf ; 7 uses
  %i.uk = fdiv reassoc nsz arcp contract afn <2 x float> <float -5.000000e-01, float 5.000000e-01>, %i.uf ; 7 uses
  %i.ul = extractelement <2 x float> %i.uj, i64 0 ; 3 uses
  %shift267 = shufflevector <2 x float> %i.uj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop268 = fmul reassoc nsz arcp contract afn <2 x float> %i.uj, %shift267 ; 2 uses
  %i.um = extractelement <2 x float> %foldExtExtBinop268, i64 0
  %i.un = extractelement <2 x float> %i.uk, i64 0 ; 3 uses
  %i.uo = extractelement <2 x float> %i.ui, i64 0 ; 2 uses
  %foldExtExtBinop270 = fmul reassoc nsz arcp contract afn <2 x float> %i.uk, %i.ui
  %foldExtExtBinop272 = fsub reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop268, %foldExtExtBinop270
  %i.up = extractelement <2 x float> %foldExtExtBinop272, i64 0 ; 4 uses
  %i.uq = extractelement <2 x float> %i.uk, i64 1 ; 2 uses
  %i.ur = fsub reassoc nsz arcp contract afn float %i.uo, %i.uq
  %i.us = fmul reassoc nsz arcp contract afn float %i.ur, %i.ul ; 4 uses
  %i.ut = fmul reassoc nsz arcp contract afn float %i.un, %i.uq
  %i.uu = fsub reassoc nsz arcp contract afn float %i.ut, %i.um ; 4 uses
  %i.uv = extractelement <2 x float> %i.ty, i64 1 ; 3 uses
  %i.uw = fmul reassoc nsz arcp contract afn float %i.up, %i.uv
  %i.ux = extractelement <2 x float> %i.ty, i64 0 ; 2 uses
  %i.uy = fmul reassoc nsz arcp contract afn float %i.us, %i.ux
  %i.uz = extractelement <2 x float> %i.ui, i64 1 ; 4 uses
  %i.va = fmul reassoc nsz arcp contract afn float %i.uu, %i.uz
  %i.vb = fadd reassoc nsz arcp contract afn float %i.va, %i.uy
  %i.vc = fadd reassoc nsz arcp contract afn float %i.vb, %i.uw ; 2 uses
  %i.vd = fcmp reassoc nsz arcp contract afn oeq float %i.vc, 0.000000e+00
  br i1 %i.vd, label %bb.ag, label %invert_matrix.exit218.i

invert_matrix.exit218.i:                          ; preds = %compute_wb_factors.exit.i
  %i.ve = fmul reassoc nsz arcp contract afn <2 x float> %i.uj, %i.ty ; 2 uses
  %i.vf = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vg = fmul reassoc nsz arcp contract afn <2 x float> %i.uk, %i.vf
  %i.vh = fsub reassoc nsz arcp contract afn <2 x float> %i.ve, %i.vg
  %i.vi = fsub reassoc nsz arcp contract afn float %i.uv, %i.uz
  %i.vj = fmul reassoc nsz arcp contract afn float %i.vi, %i.ul
  %i.vk = fmul reassoc nsz arcp contract afn float %i.un, %i.uz
  %i.vl = extractelement <2 x float> %i.ve, i64 0
  %i.vm = fsub reassoc nsz arcp contract afn float %i.vk, %i.vl
  %i.vn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.vc ; 5 uses
  %i.vo = fmul reassoc nsz arcp contract afn float %i.vn, %i.up
  %i.vp = fmul reassoc nsz arcp contract afn float %i.vn, %i.vm
  %i.vq = fmul reassoc nsz arcp contract afn float %i.vn, %i.us
  %i.vr = shufflevector <2 x float> %i.ty, <2 x float> %i.uk, <2 x i32> <i32 0, i32 3>
  %i.vs = fmul reassoc nsz arcp contract afn <2 x float> %i.ui, %i.vr
  %i.vt = shufflevector <2 x float> %i.ty, <2 x float> %i.uj, <2 x i32> <i32 3, i32 1>
  %i.vu = shufflevector <2 x float> %i.ui, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vv = fmul reassoc nsz arcp contract afn <2 x float> %i.vt, %i.vu
  %i.vw = fsub reassoc nsz arcp contract afn <2 x float> %i.vs, %i.vv
  %i.vx = insertelement <2 x float> poison, float %i.vn, i64 0
  %i.vy = shufflevector <2 x float> %i.vx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vz = fmul reassoc nsz arcp contract afn <2 x float> %i.vy, %i.vw
  %i.wa = insertelement <4 x float> poison, float %i.vn, i64 0
  %i.wb = shufflevector <4 x float> %i.wa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wc = insertelement <4 x float> poison, float %i.vj, i64 0
  %i.wd = insertelement <4 x float> %i.wc, float %i.uu, i64 1
  %i.we = shufflevector <2 x float> %i.vh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wf = shufflevector <4 x float> %i.wd, <4 x float> %i.we, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wg = fmul reassoc nsz arcp contract afn <4 x float> %i.wb, %i.wf
  br label %set_up_conversion_matrices.exit.i

bb.ag:                                            ; preds = %compute_wb_factors.exit.i
  %i.wh = fadd reassoc nsz arcp contract afn float %i.tz, %i.tt
  %i.wi = fmul reassoc nsz arcp contract afn float %i.wh, f0x3DE38E39
  %i.wj = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.wi)
  %i.wk = fdiv reassoc nsz arcp contract afn float f0x3EAAAAAB, %i.wj ; 9 uses
  %i.wl = fadd reassoc nsz arcp contract afn float %i.uu, %i.us
  %i.wm = fadd reassoc nsz arcp contract afn float %i.wl, %i.up
  %i.wn = fmul reassoc nsz arcp contract afn float %i.wm, %i.wk ; 2 uses
  %i.wo = fcmp reassoc nsz arcp contract afn oeq float %i.wn, 0.000000e+00
  br i1 %i.wo, label %set_up_conversion_matrices.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.wp = fmul reassoc nsz arcp contract afn float %i.wk, %i.uo ; 2 uses
  %i.wq = insertelement <2 x float> poison, float %i.wk, i64 0
  %i.wr = shufflevector <2 x float> %i.wq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ws = fmul reassoc nsz arcp contract afn <2 x float> %i.uk, %i.wr ; 3 uses
  %i.wt = extractelement <2 x float> %i.ws, i64 1
  %i.wu = fsub reassoc nsz arcp contract afn float %i.wt, %i.wp
  %i.wv = fmul reassoc nsz arcp contract afn <2 x float> %i.uj, %i.wr ; 5 uses
  %i.ww = extractelement <2 x float> %i.wv, i64 1
  %i.wx = fsub reassoc nsz arcp contract afn float %i.wp, %i.ww
  %i.wy = fsub reassoc nsz arcp contract afn <2 x float> %i.wv, %i.ws
  %foldExtExtBinop274 = fsub reassoc nsz arcp contract afn <2 x float> %i.wv, %i.wv
  %i.wz = extractelement <2 x float> %foldExtExtBinop274, i64 0
  %foldExtExtBinop276 = fsub reassoc nsz arcp contract afn <2 x float> %i.ws, %i.wv
  %i.xa = extractelement <2 x float> %foldExtExtBinop276, i64 0
  %i.xb = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.wn ; 6 uses
  %i.xc = fmul reassoc nsz arcp contract afn float %i.xb, %i.up
  %i.xd = fmul reassoc nsz arcp contract afn float %i.xb, %i.xa
  %i.xe = fmul reassoc nsz arcp contract afn float %i.xb, %i.wx
  %i.xf = fmul reassoc nsz arcp contract afn float %i.xb, %i.us
  %i.xg = fmul reassoc nsz arcp contract afn float %i.xb, %i.wu
  %i.xh = insertelement <4 x float> poison, float %i.xb, i64 0
  %i.xi = shufflevector <4 x float> %i.xh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xj = insertelement <4 x float> poison, float %i.wz, i64 0
  %i.xk = insertelement <4 x float> %i.xj, float %i.uu, i64 1
  %i.xl = shufflevector <2 x float> %i.wy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xm = shufflevector <4 x float> %i.xk, <4 x float> %i.xl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xn = fmul reassoc nsz arcp contract afn <4 x float> %i.xi, %i.xm
  %i.xo = insertelement <2 x float> poison, float %i.xe, i64 0
  %i.xp = insertelement <2 x float> %i.xo, float %i.xg, i64 1
  br label %set_up_conversion_matrices.exit.i

set_up_conversion_matrices.exit.i:                ; preds = %bb.ah, %bb.ag, %invert_matrix.exit218.i
  %.sroa.1362.0.i = phi nsz float [ %i.wk, %bb.ag ], [ %i.wk, %bb.ah ], [ %i.uz, %invert_matrix.exit218.i ]
  %.sroa.860.0.i = phi nsz float [ %i.wk, %bb.ag ], [ %i.wk, %bb.ah ], [ %i.ux, %invert_matrix.exit218.i ]
  %.sroa.058.0.i = phi nsz float [ %i.wk, %bb.ag ], [ %i.wk, %bb.ah ], [ %i.uv, %invert_matrix.exit218.i ]
  %.sroa.0.0.i = phi nsz float [ 0.000000e+00, %bb.ag ], [ %i.xc, %bb.ah ], [ %i.vo, %invert_matrix.exit218.i ]
  %.sroa.8.0.i = phi nsz float [ 0.000000e+00, %bb.ag ], [ %i.xd, %bb.ah ], [ %i.vp, %invert_matrix.exit218.i ]
  %.sroa.22.0.i = phi nsz float [ 0.000000e+00, %bb.ag ], [ %i.xf, %bb.ah ], [ %i.vq, %invert_matrix.exit218.i ]
  %i.xq = phi <2 x float> [ zeroinitializer, %bb.ag ], [ %i.xp, %bb.ah ], [ %i.vz, %invert_matrix.exit218.i ]
  %i.xr = phi <4 x float> [ zeroinitializer, %bb.ag ], [ %i.xn, %bb.ah ], [ %i.wg, %invert_matrix.exit218.i ] ; 4 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.w, i64 296 ; 3 uses
  %i.xt = load i32, ptr %i.xs, align 8, !tbaa !220
  %i.xu = icmp eq i32 %i.xt, 0                    ; 2 uses
  %i.xv = select reassoc nsz arcp contract afn i1 %i.xu, float 1.000000e+00, float 2.500000e+00
  %i.xw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.xx = load float, ptr %i.xw, align 8, !tbaa !191
  %i.xy = fmul reassoc nsz arcp contract afn float %i.xx, %i.on
  %i.xz = fmul reassoc nsz arcp contract afn float %i.xy, %i.xv ; 6 uses
  %i.ya = insertelement <2 x float> poison, float %i.xz, i64 0
  %i.yb = shufflevector <2 x float> %i.ya, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.yc = fmul reassoc nsz arcp contract afn <2 x float> %i.yb, %i.sh ; 7 uses
  %i.yd = extractelement <2 x float> %i.yc, i64 0
  %i.ye = extractelement <2 x float> %i.yc, i64 1 ; 2 uses
  %i.yf = fmul reassoc nsz arcp contract afn <2 x float> %i.yb, %i.si ; 5 uses
  %i.yg = extractelement <2 x float> %i.yf, i64 0 ; 2 uses
  %i.yh = shufflevector <2 x float> %i.yc, <2 x float> %i.yf, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x float> %i.yh, ptr %i.i, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  %i.yi = getelementptr inbounds nuw i8, ptr %i.w, i64 36 ; 2 uses
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !16 ; 4 uses
  %i.yk = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.yj, i64 0
  %i.yl = shufflevector <4 x float> %i.yk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ym = insertelement <4 x float> %i.yh, float 1.000000e+00, i64 3
  %i.yn = fmul reassoc nsz arcp contract afn <4 x float> %i.yl, %i.ym ; 6 uses
  %i.yo = fmul reassoc nsz arcp contract afn float %i.yj, %i.ye ; 2 uses
  store <4 x float> %i.yn, ptr %i.k, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  %i.yp = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.yq = load float, ptr %i.yp, align 8, !tbaa !16 ; 6 uses
  %i.yr = fmul reassoc nsz arcp contract afn float %i.yq, %i.yd ; 2 uses
  store float %i.yr, ptr %i.l, align 16, !tbaa !16
  %i.ys = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.yt = fmul reassoc nsz arcp contract afn float %i.yq, %i.ye ; 2 uses
  store float %i.yt, ptr %i.ys, align 4, !tbaa !16
  %i.yu = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.yv = fmul reassoc nsz arcp contract afn float %i.yq, %i.yg ; 2 uses
  store float %i.yv, ptr %i.yu, align 8, !tbaa !16
  %i.yw = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store float 0.000000e+00, ptr %i.yw, align 4, !tbaa !16
  %i.yx = getelementptr inbounds nuw i8, ptr %i.w, i64 292 ; 2 uses
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !192
  %.not196.i = icmp eq i32 %i.yy, 0
  %i.yz = load ptr, ptr %i.g, align 8, !tbaa !188 ; 14 uses
  br i1 %.not196.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %set_up_conversion_matrices.exit.i
  %i.za = extractelement <4 x float> %i.yn, i64 0 ; 2 uses
  %i.zb = fdiv reassoc nsz arcp contract afn float %i.yr, %i.za ; 2 uses
  %i.zc = fmul reassoc nsz arcp contract afn float %i.zb, %i.zb
  %i.zd = fadd reassoc nsz arcp contract afn float %i.zc, 3.750000e-01 ; 2 uses
  %i.ze = fdiv reassoc nsz arcp contract afn float %i.yt, %i.yo ; 2 uses
  %i.zf = fmul reassoc nsz arcp contract afn float %i.ze, %i.ze
  %i.zg = fadd reassoc nsz arcp contract afn float %i.zf, 3.750000e-01 ; 2 uses
  %i.zh = extractelement <4 x float> %i.yn, i64 2 ; 2 uses
  %i.zi = fdiv reassoc nsz arcp contract afn float %i.yv, %i.zh ; 2 uses
  %i.zj = fmul reassoc nsz arcp contract afn float %i.zi, %i.zi
  %i.zk = fadd reassoc nsz arcp contract afn float %i.zj, 3.750000e-01 ; 2 uses
  %i.zl = shl nsw i64 %i.qr, 2
  %i.zm = mul i64 %i.zl, %i.qs                    ; 4 uses
  %.not.i201.i = icmp eq i64 %i.zm, 0
  br i1 %.not.i201.i, label %precondition.exit.i, label %.preheader.i202.i.preheader.a

.preheader.i202.i.preheader.a:                    ; preds = %bb.ai
  %i.zn = add i64 %i.zm, -4                       ; 2 uses
  %i.zo = lshr exact i64 %i.zn, 2
  %i.zp = add nuw nsw i64 %i.zo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.zn, 28
  br i1 %min.iters.check, label %.preheader.i202.i.preheader283, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i202.i.preheader.a
  %i.zq = shl i64 %i.zm, 2                        ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.yz, i64 %i.zq
  %scevgep128 = getelementptr i8, ptr %2, i64 %i.zq
  %bound0 = icmp ult ptr %i.yz, %scevgep128
  %bound1 = icmp ult ptr %2, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i202.i.preheader283, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec.a = and i64 %i.zp, 9223372036854775800   ; 3 uses
  %i.zr = shl i64 %n.vec.a, 2
  %broadcast.splat.a = shufflevector <4 x float> %i.yn, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert129 = insertelement <8 x float> poison, float %i.zd, i64 0
  %broadcast.splat132 = shufflevector <4 x float> %i.yn, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert133 = insertelement <8 x float> poison, float %i.zg, i64 0
  %broadcast.splat136 = shufflevector <4 x float> %i.yn, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splatinsert137 = insertelement <8 x float> poison, float %i.zk, i64 0
  %broadcast.splat138 = shufflevector <8 x float> %broadcast.splatinsert137, <8 x float> poison, <8 x i32> zeroinitializer
  %i.zs = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat.a
  %i.zt = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat132
  %i.zu = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat136
  %i.zv = shufflevector <8 x float> %broadcast.splatinsert129, <8 x float> %broadcast.splatinsert133, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.zw = shl nuw i64 %index, 2                   ; 2 uses
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zw
  %wide.vec = load <32 x float>, ptr %i.zx, align 4, !tbaa !16, !alias.scope !221 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec139 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec140 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec141 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.zy = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %i.zs
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.zw
  %i.aaa = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec139, %i.zt
  %i.aab = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec140, %i.zu
  %i.aac = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat138, %i.aab
  %i.aad = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec141, splat (float +inf)
  %i.aae = shufflevector <8 x float> %i.zy, <8 x float> %i.aaa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaf = fadd reassoc nsz arcp contract afn <16 x float> %i.zv, %i.aae
  %7 = shufflevector <8 x float> %i.aac, <8 x float> %i.aad, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %8 = shufflevector <16 x float> %i.aaf, <16 x float> %7, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %9 = call reassoc nsz arcp contract afn <32 x float> @llvm.maxnum.v32f32(<32 x float> %8, <32 x float> zeroinitializer)
  %10 = call reassoc nnan nsz arcp contract afn <32 x float> @llvm.sqrt.v32f32(<32 x float> %9)
  %interleaved.vec = fmul reassoc nnan nsz arcp contract afn <32 x float> %10, splat (float 2.000000e+00)
  store <32 x float> %interleaved.vec, ptr %i.zz, align 4, !tbaa !16, !alias.scope !224, !noalias !221
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aag = icmp eq i64 %index.next, %n.vec.a
  br i1 %i.aag, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zp, %n.vec.a
  br i1 %cmp.n, label %precondition.exit.i, label %.preheader.i202.i.preheader283

.preheader.i202.i.preheader283:                   ; preds = %vector.memcheck, %.preheader.i202.i.preheader.a, %middle.block
  %.030.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i202.i.preheader.a ], [ %i.zr, %middle.block ]
  %i.aah = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.za
  %i.aai = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yo
  %i.aaj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.zh
  br label %.preheader.i202.i

.preheader.i202.i:                                ; preds = %.preheader.i202.i.preheader283, %.preheader.i202.i
  %.030.i.i = phi i64 [ %i.abk, %.preheader.i202.i ], [ %.030.i.i.ph, %.preheader.i202.i.preheader283 ] ; 6 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.030.i.i
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !16
  %i.aam = fmul reassoc nsz arcp contract afn float %i.aal, %i.aah
  %i.aan = fadd reassoc nsz arcp contract afn float %i.zd, %i.aam
  %i.aao = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aan, float 0.000000e+00)
  %i.aap = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.aao)
  %i.aaq = fmul reassoc nnan nsz arcp contract afn float %i.aap, 2.000000e+00
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %.030.i.i
  store float %i.aaq, ptr %i.aar, align 4, !tbaa !16
  %i.aas = or disjoint i64 %.030.i.i, 1           ; 2 uses
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aas
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !16
  %i.aav = fmul reassoc nsz arcp contract afn float %i.aau, %i.aai
  %i.aaw = fadd reassoc nsz arcp contract afn float %i.zg, %i.aav
  %i.aax = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aaw, float 0.000000e+00)
  %i.aay = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.aax)
  %i.aaz = fmul reassoc nnan nsz arcp contract afn float %i.aay, 2.000000e+00
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.aas
  store float %i.aaz, ptr %i.aba, align 4, !tbaa !16
  %i.abb = or disjoint i64 %.030.i.i, 2           ; 2 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.abb
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !16
  %i.abe = fmul reassoc nsz arcp contract afn float %i.abd, %i.aaj
  %i.abf = fadd reassoc nsz arcp contract afn float %i.zk, %i.abe
  %i.abg = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abf, float 0.000000e+00)
  %i.abh = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.abg)
  %i.abi = fmul reassoc nnan nsz arcp contract afn float %i.abh, 2.000000e+00
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.abb
  store float %i.abi, ptr %i.abj, align 4, !tbaa !16
  %11 = or disjoint i64 %.030.i.i, 3              ; 2 uses
  %12 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !16
  %14 = fmul reassoc nsz arcp contract afn float %13, +inf
  %15 = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %14, float 0.000000e+00)
  %16 = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %15)
  %17 = fmul reassoc nnan nsz arcp contract afn float %16, 2.000000e+00
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %11
  store float %17, ptr %18, align 4, !tbaa !16
  %i.abk = add nuw i64 %.030.i.i, 4               ; 2 uses
  %i.abl = icmp ult i64 %i.abk, %i.zm
  br i1 %i.abl, label %.preheader.i202.i, label %precondition.exit.i, !llvm.loop !227

bb.aj:                                            ; preds = %set_up_conversion_matrices.exit.i
  %i.abm = fmul reassoc nsz arcp contract afn <2 x float> %i.sx, splat (float 5.000000e-01)
  %i.abn = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.abm ; 4 uses
  %i.abo = fmul reassoc nsz arcp contract afn float %i.th, 5.000000e-01
  %i.abp = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.abo ; 4 uses
  %i.abq = shl nsw i64 %i.qr, 2
  %i.abr = mul i64 %i.abq, %i.qs                  ; 3 uses
  %.not.i203.i = icmp eq i64 %i.abr, 0            ; 2 uses
  br i1 %i.xu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not.i203.i, label %precondition.exit.sink.split.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ak
  %i.abs = fmul reassoc nsz arcp contract afn float %i.yj, %i.tk
  %i.abt = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.abs)
  %i.abu = shufflevector <2 x float> %i.sx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.abv = insertelement <4 x float> %i.abu, float 0.000000e+00, i64 3
  %i.abw = insertelement <4 x float> %i.abv, float %i.th, i64 2
  %i.abx = fsub reassoc nsz arcp contract afn <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>, %i.abw
  %i.aby = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.abt, i64 0
  %i.abz = shufflevector <4 x float> %i.aby, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aca = fmul reassoc nsz arcp contract afn <4 x float> %i.abz, %i.abx ; 3 uses
  %i.acb = insertelement <2 x float> poison, float %i.yq, i64 0
  %i.acc = shufflevector <2 x float> %i.acb, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.acd = add i64 %i.abr, -4                     ; 3 uses
  %i.ace = lshr exact i64 %i.acd, 2
  %i.acf = add nuw nsw i64 %i.ace, 1              ; 2 uses
  %i.acg = icmp eq i64 %i.acd, 0
  br i1 %i.acg, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.acf, 9223372036854775806
  %i.ach = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.yf
  %i.aci = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.yc
  %i.acj = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.aca
  %i.ack = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.yf
  %i.acl = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.yc
  %i.acm = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.aca
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.04247.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.aei, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  %i.acp = load <2 x float>, ptr %i.aco, align 4, !tbaa !16
  %i.acq = fmul reassoc nsz arcp contract afn <2 x float> %i.acp, %i.ach
  %i.acr = fadd reassoc nsz arcp contract afn <2 x float> %i.acq, %i.acc ; 2 uses
  %i.acs = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.acr, zeroinitializer
  %i.act = select <2 x i1> %i.acs, <2 x float> %i.acr, <2 x float> zeroinitializer ; 2 uses
  %i.acu = extractelement <2 x float> %i.act, i64 0
  %i.acv = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.acu, float %i.abp)
  %i.acw = load <2 x float>, ptr %i.acn, align 4, !tbaa !16
  %i.acx = fmul reassoc nsz arcp contract afn <2 x float> %i.acw, %i.aci
  %i.acy = fadd reassoc nsz arcp contract afn <2 x float> %i.acx, %i.acc ; 2 uses
  %i.acz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.acy, zeroinitializer
  %i.ada = select <2 x i1> %i.acz, <2 x float> %i.acy, <2 x float> zeroinitializer
  %i.adb = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.ada, <2 x float> %i.abn)
  %i.adc = insertelement <4 x float> poison, float %i.acv, i64 2
  %i.add = shufflevector <2 x float> %i.act, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ade = shufflevector <4 x float> %i.adc, <4 x float> %i.add, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.adf = shufflevector <2 x float> %i.adb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.adg = shufflevector <4 x float> %i.adf, <4 x float> %i.ade, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.adh = fmul reassoc nsz arcp contract afn <4 x float> %i.adg, splat (float 2.000000e+00)
  %i.adi = fmul reassoc nsz arcp contract afn <4 x float> %i.adh, %i.acj
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %.04247.i.i
  store <4 x float> %i.adi, ptr %i.adj, align 16, !tbaa !42, !alias.scope !228, !nontemporal !207
  %i.adk = or disjoint i64 %.04247.i.i, 4         ; 2 uses
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.adk ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  %i.adn = load <2 x float>, ptr %i.adm, align 4, !tbaa !16
  %i.ado = fmul reassoc nsz arcp contract afn <2 x float> %i.adn, %i.ack
  %i.adp = fadd reassoc nsz arcp contract afn <2 x float> %i.ado, %i.acc ; 2 uses
  %i.adq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.adp, zeroinitializer
  %i.adr = select <2 x i1> %i.adq, <2 x float> %i.adp, <2 x float> zeroinitializer ; 2 uses
  %i.ads = extractelement <2 x float> %i.adr, i64 0
  %i.adt = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ads, float %i.abp)
  %i.adu = load <2 x float>, ptr %i.adl, align 4, !tbaa !16
  %i.adv = fmul reassoc nsz arcp contract afn <2 x float> %i.adu, %i.acl
  %i.adw = fadd reassoc nsz arcp contract afn <2 x float> %i.adv, %i.acc ; 2 uses
  %i.adx = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.adw, zeroinitializer
  %i.ady = select <2 x i1> %i.adx, <2 x float> %i.adw, <2 x float> zeroinitializer
  %i.adz = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.ady, <2 x float> %i.abn)
  %i.aea = insertelement <4 x float> poison, float %i.adt, i64 2
  %i.aeb = shufflevector <2 x float> %i.adr, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aec = shufflevector <4 x float> %i.aea, <4 x float> %i.aeb, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.aed = shufflevector <2 x float> %i.adz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aee = shufflevector <4 x float> %i.aed, <4 x float> %i.aec, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aef = fmul reassoc nsz arcp contract afn <4 x float> %i.aee, splat (float 2.000000e+00)
  %i.aeg = fmul reassoc nsz arcp contract afn <4 x float> %i.aef, %i.acm
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.adk
  store <4 x float> %i.aeg, ptr %i.aeh, align 16, !tbaa !42, !alias.scope !228, !nontemporal !207
  %i.aei = add nuw i64 %.04247.i.i, 8             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %precondition.exit.sink.split.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.al:                                            ; preds = %bb.aj
  br i1 %.not.i203.i, label %precondition.exit.sink.split.i, label %.lr.ph.i205.i

.lr.ph.i205.i:                                    ; preds = %bb.al
  %i.aej = fmul reassoc nsz arcp contract afn float %i.yj, %i.tk
  %i.aek = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.th
  %i.ael = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aej) ; 2 uses
  %i.aem = fmul reassoc nsz arcp contract afn float %i.ael, %i.aek
  %i.aen = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.sx
  %i.aeo = insertelement <2 x float> poison, float %i.ael, i64 0
  %i.aep = shufflevector <2 x float> %i.aeo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeq = fmul reassoc nsz arcp contract afn <2 x float> %i.aep, %i.aen
  %i.aer = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xz
  %i.aes = shufflevector <2 x float> %i.ui, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aet = insertelement <2 x float> %i.aes, float %.sroa.1362.0.i, i64 0
  %i.aeu = insertelement <2 x float> poison, float %i.aer, i64 0 ; 2 uses
  %i.aev = shufflevector <2 x float> %i.aeu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aew = insertelement <2 x float> %i.uk, float %.sroa.860.0.i, i64 0
  %i.aex = fmul reassoc nsz arcp contract afn <2 x float> %i.aew, %i.aev
  %i.aey = insertelement <2 x float> %i.uj, float %.sroa.058.0.i, i64 0
  %i.aez = fmul reassoc nsz arcp contract afn <2 x float> %i.aey, %i.aev
  %i.afa = insertelement <2 x float> poison, float %i.yq, i64 0
  %i.afb = shufflevector <2 x float> %i.afa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aem
  %i.afd = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aeq
  %i.afe = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xz
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i205.i
  %.02832.i.i = phi i64 [ 0, %.lr.ph.i205.i ], [ %i.agp, %bb.am ] ; 3 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02832.i.i ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !16
  %i.afi = fadd reassoc nsz arcp contract afn float %i.afh, %i.yq ; 2 uses
  %i.afj = fcmp reassoc nsz arcp contract afn ogt float %i.afi, 0.000000e+00
  %i.afk = select reassoc nsz arcp contract afn i1 %i.afj, float %i.afi, float 0.000000e+00
  %i.afl = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.afk, float %i.abp)
  %i.afm = fmul reassoc nsz arcp contract afn float %i.afl, 2.000000e+00
  %i.afn = fmul reassoc nsz arcp contract afn float %i.afm, %i.afc ; 3 uses
  %i.afo = load <2 x float>, ptr %i.aff, align 4, !tbaa !16
  %i.afp = fadd reassoc nsz arcp contract afn <2 x float> %i.afo, %i.afb ; 2 uses
  %i.afq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.afp, zeroinitializer
  %i.afr = select <2 x i1> %i.afq, <2 x float> %i.afp, <2 x float> zeroinitializer
  %i.afs = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.afr, <2 x float> %i.abn)
  %i.aft = fmul reassoc nsz arcp contract afn <2 x float> %i.afs, splat (float 2.000000e+00)
  %i.afu = fmul reassoc nsz arcp contract afn <2 x float> %i.aft, %i.afd ; 4 uses
  %i.afv = shufflevector <2 x float> %i.afu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.afw = fmul reassoc nsz arcp contract afn <2 x float> %i.afv, %i.aex
  %i.afx = fmul reassoc nsz arcp contract afn <2 x float> %i.afu, %i.aez
  %i.afy = fadd reassoc nsz arcp contract afn <2 x float> %i.afx, %i.afw
  %i.afz = insertelement <2 x float> poison, float %i.afn, i64 0
  %i.aga = fmul reassoc nsz arcp contract afn <2 x float> %i.afz, %i.aeu
  %i.agb = shufflevector <2 x float> %i.aga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agc = fmul reassoc nsz arcp contract afn <2 x float> %i.agb, %i.aet
  %i.agd = fadd reassoc nsz arcp contract afn <2 x float> %i.afy, %i.agc
  %i.age = shufflevector <2 x float> %i.agd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.agf = extractelement <2 x float> %i.afu, i64 1 ; 2 uses
  %i.agg = fmul reassoc nsz arcp contract afn float %i.un, %i.agf
  %i.agh = extractelement <2 x float> %i.afu, i64 0 ; 2 uses
  %reass.add = fadd reassoc nsz arcp contract afn float %i.afn, %i.agh
  %i.agi = fmul reassoc nsz arcp contract afn float %i.ul, %reass.add
  %i.agj = fadd reassoc nsz arcp contract afn float %i.agi, %i.agg
  %i.agk = fmul reassoc nsz arcp contract afn float %i.agj, %i.afe
  %.sroa.0.8.vec.insert.i.i = insertelement <4 x float> %i.age, float %i.agk, i64 2
  %i.agl = fadd reassoc nsz arcp contract afn float %i.agf, %i.agh
  %i.agm = fadd reassoc nsz arcp contract afn float %i.agl, %i.afn
  %i.agn = fmul reassoc nsz arcp contract afn float %i.agm, 0.000000e+00
  %.sroa.0.12.vec.insert.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i, float %i.agn, i64 3
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %.02832.i.i
  store <4 x float> %.sroa.0.12.vec.insert.i.i, ptr %i.ago, align 16, !tbaa !42, !alias.scope !231, !nontemporal !207
  %i.agp = add nuw i64 %.02832.i.i, 4             ; 2 uses
  %i.agq = icmp ult i64 %i.agp, %i.abr
  br i1 %i.agq, label %bb.am, label %precondition.exit.sink.split.i

precondition.exit.sink.split.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %i.agr = and i64 %i.acd, 4
  %lcmp.mod.not.not = icmp eq i64 %i.agr, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %precondition.exit.sink.split.i

.lr.ph.i.i.epil.preheader:                        ; preds = %precondition.exit.sink.split.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.04247.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.aei, %precondition.exit.sink.split.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod285 = trunc i64 %i.acf to i1
  call void @llvm.assume(i1 %lcmp.mod285)
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i.epil.init ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 8
  %i.agu = load <2 x float>, ptr %i.agt, align 4, !tbaa !16
  %i.agv = fdiv reassoc nsz arcp contract afn <2 x float> %i.agu, %i.yf
  %i.agw = fadd reassoc nsz arcp contract afn <2 x float> %i.agv, %i.acc ; 2 uses
  %i.agx = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.agw, zeroinitializer
  %i.agy = select <2 x i1> %i.agx, <2 x float> %i.agw, <2 x float> zeroinitializer ; 2 uses
  %i.agz = extractelement <2 x float> %i.agy, i64 0
  %i.aha = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.agz, float %i.abp)
  %i.ahb = load <2 x float>, ptr %i.ags, align 4, !tbaa !16
  %i.ahc = fdiv reassoc nsz arcp contract afn <2 x float> %i.ahb, %i.yc
  %i.ahd = fadd reassoc nsz arcp contract afn <2 x float> %i.ahc, %i.acc ; 2 uses
  %i.ahe = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ahd, zeroinitializer
  %i.ahf = select <2 x i1> %i.ahe, <2 x float> %i.ahd, <2 x float> zeroinitializer
  %i.ahg = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.ahf, <2 x float> %i.abn)
  %i.ahh = insertelement <4 x float> poison, float %i.aha, i64 2
  %i.ahi = shufflevector <2 x float> %i.agy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ahj = shufflevector <4 x float> %i.ahh, <4 x float> %i.ahi, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.ahk = shufflevector <2 x float> %i.ahg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ahl = shufflevector <4 x float> %i.ahk, <4 x float> %i.ahj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ahm = fmul reassoc nsz arcp contract afn <4 x float> %i.ahl, splat (float 2.000000e+00)
  %i.ahn = fdiv reassoc nsz arcp contract afn <4 x float> %i.ahm, %i.aca
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %.04247.i.i.epil.init
  store <4 x float> %i.ahn, ptr %i.aho, align 16, !tbaa !42, !alias.scope !228, !nontemporal !207
  br label %precondition.exit.sink.split.i

precondition.exit.sink.split.i:                   ; preds = %bb.am, %.lr.ph.i.i.epil.preheader, %precondition.exit.sink.split.i.loopexit.unr-lcssa, %bb.al, %bb.ak
  call void @llvm.x86.sse.sfence()
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !188
  br label %precondition.exit.i

precondition.exit.i:                              ; preds = %.preheader.i202.i, %middle.block, %precondition.exit.sink.split.i, %bb.ai
  %19 = phi ptr [ %i.yz, %bb.ai ], [ %.pre, %precondition.exit.sink.split.i ], [ %i.yz, %middle.block ], [ %i.yz, %.preheader.i202.i ] ; 3 uses
  %i.ahp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !234, !noalias !235
  %.not.i206.i = icmp eq ptr %i.ahp, null
  br i1 %.not.i206.i, label %debug_dump_PFM.exit.i, label %bb.an

bb.an:                                            ; preds = %precondition.exit.i
  %i.ahq = load ptr, ptr %i.rc, align 8, !tbaa !138, !noalias !235
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 644
  %.val.i.i = load i32, ptr %i.ahr, align 4, !tbaa !139, !noalias !235
  %i.ahs = and i32 %.val.i.i, 2
  %.not5.i.i = icmp eq i32 %i.ahs, 0
  br i1 %.not5.i.i, label %debug_dump_PFM.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18, !noalias !235
  %i.aht = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 256, ptr noundef nonnull @.str.104, i32 noundef 0) #18, !noalias !235 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.e, ptr noundef %19, i32 noundef %i.qo, i32 noundef %i.qq, i32 noundef 16, ptr noundef nonnull @.str.107) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18, !noalias !235
  %.pre.i26 = load ptr, ptr %i.g, align 8, !tbaa !188
  br label %debug_dump_PFM.exit.i

debug_dump_PFM.exit.i:                            ; preds = %bb.ao, %bb.an, %precondition.exit.i
  %i.ahu = phi ptr [ %19, %precondition.exit.i ], [ %19, %bb.an ], [ %.pre.i26, %bb.ao ] ; 2 uses
  %i.ahv = load ptr, ptr %i.h, align 8, !tbaa !188
  call void @dt_iop_image_fill(ptr noundef %3, float noundef 0.000000e+00, i64 noundef %i.qr, i64 noundef %i.qs, i64 noundef 4) #18
  br i1 %i.pi, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %debug_dump_PFM.exit.i
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.w, i64 228
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.w, <4 x i64> <i64 144, i64 172, i64 200, i64 116>
  %i.ahz = uitofp reassoc nsz arcp contract afn i64 %i.qt to float
  %i.aia = fadd reassoc nsz arcp contract afn float %i.ahz, -1.000000e+00 ; 2 uses
  %i.aib = zext nneg i32 %.0178.lcssa.i to i64    ; 2 uses
  %i.aic = insertelement <2 x float> poison, float %i.aia, i64 0
  %i.aid = shufflevector <2 x float> %i.aic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aie = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aid
  %i.aif = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aia
  br label %bb.ap

.preheader.i:                                     ; preds = %variance_stabilizing_xform.exit.i, %debug_dump_PFM.exit.i
  %.0184.lcssa.i = phi ptr [ %i.ahu, %debug_dump_PFM.exit.i ], [ %.018341.i, %variance_stabilizing_xform.exit.i ] ; 13 uses
  %i.aig = shl i64 %i.qt, 2                       ; 8 uses
  %.not46.i = icmp eq i64 %i.aig, 0
  br i1 %.not46.i, label %._crit_edge.i, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.preheader.i
  %i.aih = mul nsw i64 %i.qs, %i.qr
  %i.aii = shl i64 %i.aih, 4                      ; 2 uses
  %scevgep143 = getelementptr i8, ptr %3, i64 %i.aii
  %scevgep144 = getelementptr i8, ptr %.0184.lcssa.i, i64 %i.aii
  %bound0145 = icmp ult ptr %3, %scevgep144
  %bound1146 = icmp ult ptr %.0184.lcssa.i, %scevgep143
  %found.conflict147 = and i1 %bound0145, %bound1146
  br i1 %found.conflict147, label %.lr.ph44.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck142
  %min.iters.check150 = icmp ult i64 %i.aig, 32
  br i1 %min.iters.check150, label %vec.epilog.vector.body.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check
  %n.vec152 = and i64 %i.aig, -32                 ; 4 uses
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next162, %vector.body153 ] ; 3 uses
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %.0184.lcssa.i, i64 %index154 ; 4 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 32
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aij, i64 64
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aij, i64 96
  %wide.load = load <8 x float>, ptr %i.aij, align 4, !tbaa !16, !alias.scope !238
  %wide.load155 = load <8 x float>, ptr %i.aik, align 4, !tbaa !16, !alias.scope !238
  %wide.load156 = load <8 x float>, ptr %i.ail, align 4, !tbaa !16, !alias.scope !238
  %wide.load157 = load <8 x float>, ptr %i.aim, align 4, !tbaa !16, !alias.scope !238
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index154 ; 5 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 32 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ain, i64 64 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ain, i64 96 ; 2 uses
  %wide.load158 = load <8 x float>, ptr %i.ain, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  %wide.load159 = load <8 x float>, ptr %i.aio, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  %wide.load160 = load <8 x float>, ptr %i.aip, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  %wide.load161 = load <8 x float>, ptr %i.aiq, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  %i.air = fadd reassoc nsz arcp contract afn <8 x float> %wide.load158, %wide.load
  %i.ais = fadd reassoc nsz arcp contract afn <8 x float> %wide.load159, %wide.load155
  %i.ait = fadd reassoc nsz arcp contract afn <8 x float> %wide.load160, %wide.load156
  %i.aiu = fadd reassoc nsz arcp contract afn <8 x float> %wide.load161, %wide.load157
  store <8 x float> %i.air, ptr %i.ain, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  store <8 x float> %i.ais, ptr %i.aio, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  store <8 x float> %i.ait, ptr %i.aip, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  store <8 x float> %i.aiu, ptr %i.aiq, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  %index.next162 = add nuw i64 %index154, 32      ; 2 uses
  %i.aiv = icmp eq i64 %index.next162, %n.vec152
  br i1 %i.aiv, label %middle.block163, label %vector.body153, !llvm.loop !243

middle.block163:                                  ; preds = %vector.body153
  %cmp.n164 = icmp eq i64 %i.aig, %n.vec152
  br i1 %cmp.n164, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block163
  %i.aiw = and i64 %i.qt, 7
  %min.epilog.iters.check = icmp eq i64 %i.aiw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph44.i.preheader, label %vec.epilog.vector.body.preheader, !prof !244

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index166.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec152, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

.lr.ph44.i.preheader:                             ; preds = %vector.memcheck142, %vec.epilog.iter.check
  %.043.i.ph = phi i64 [ %n.vec152, %vec.epilog.iter.check ], [ 0, %vector.memcheck142 ] ; 3 uses
  %xtraiter286 = and i64 %i.aig, 4                ; 2 uses
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol

.lr.ph44.i.prol:                                  ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i.prol
  %.043.i.prol = phi i64 [ %i.ajc, %.lr.ph44.i.prol ], [ %.043.i.ph, %.lr.ph44.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph44.i.prol ], [ 0, %.lr.ph44.i.preheader ]
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %.0184.lcssa.i, i64 %.043.i.prol
  %i.aiy = load float, ptr %i.aix, align 4, !tbaa !16
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.043.i.prol ; 2 uses
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !16
  %i.ajb = fadd reassoc nsz arcp contract afn float %i.aja, %i.aiy
  store float %i.ajb, ptr %i.aiz, align 4, !tbaa !16
  %i.ajc = add nuw i64 %.043.i.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter286
  br i1 %prol.iter.cmp.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol, !llvm.loop !245

.lr.ph44.i.prol.loopexit:                         ; preds = %.lr.ph44.i.prol, %.lr.ph44.i.preheader
  %.043.i.unr = phi i64 [ %.043.i.ph, %.lr.ph44.i.preheader ], [ %i.ajc, %.lr.ph44.i.prol ]
  %i.ajd = sub i64 %.043.i.ph, %i.aig
  %i.aje = icmp ugt i64 %i.ajd, -8
  br i1 %i.aje, label %._crit_edge.i, label %.lr.ph44.i

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index166 = phi i64 [ %index.next169, %vec.epilog.vector.body ], [ %index166.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %.0184.lcssa.i, i64 %index166
  %wide.load167 = load <4 x float>, ptr %i.ajf, align 4, !tbaa !16, !alias.scope !238
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index166 ; 2 uses
  %wide.load168 = load <4 x float>, ptr %i.ajg, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  %i.ajh = fadd reassoc nsz arcp contract afn <4 x float> %wide.load168, %wide.load167
  store <4 x float> %i.ajh, ptr %i.ajg, align 4, !tbaa !16, !alias.scope !241, !noalias !238
  %index.next169 = add nuw i64 %index166, 4       ; 2 uses
  %i.aji = icmp eq i64 %index.next169, %i.aig
  br i1 %i.aji, label %._crit_edge.i, label %vec.epilog.vector.body, !llvm.loop !247

bb.ap:                                            ; preds = %variance_stabilizing_xform.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %variance_stabilizing_xform.exit.i ] ; 3 uses
  %.018341.i = phi ptr [ %i.ahv, %.lr.ph.i ], [ %.018440.i, %variance_stabilizing_xform.exit.i ] ; 4 uses
  %.018440.i = phi ptr [ %i.ahu, %.lr.ph.i ], [ %.018341.i, %variance_stabilizing_xform.exit.i ] ; 2 uses
  %i.ajj = trunc nuw nsw i64 %indvars.iv.i to i32 ; 5 uses
  %i.ajk = uitofp nneg i32 %i.ajj to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  %i.ajl = load ptr, ptr %i.f, align 8, !tbaa !188
  %i.ajm = fmul reassoc nnan nsz arcp contract afn float %i.ajk, -2.000000e+00
  %i.ajn = call reassoc nsz arcp contract afn float @llvm.pow.f32(float f0x3F05DD98, float %i.ajm)
  call void @eaw_dn_decompose(ptr noundef %.018341.i, ptr noundef %.018440.i, ptr noundef %i.ajl, ptr noundef nonnull %i.m, i32 noundef %i.ajj, float noundef %i.ajn, i32 noundef %i.qo, i32 noundef %i.qq) #18
  %i.ajo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !234, !noalias !248
  %.not.i207.i = icmp eq ptr %i.ajo, null
  br i1 %.not.i207.i, label %debug_dump_PFM.exit214.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ajp = load ptr, ptr %i.rc, align 8, !tbaa !138, !noalias !249
  %i.ajq = getelementptr i8, ptr %i.ajp, i64 644
  %.val.i208.i = load i32, ptr %i.ajq, align 4, !tbaa !139, !noalias !249
  %i.ajr = and i32 %.val.i208.i, 2
  %.not5.i209.i = icmp eq i32 %i.ajr, 0
  br i1 %.not5.i209.i, label %debug_dump_PFM.exit214.i, label %debug_dump_PFM.exit210.i

debug_dump_PFM.exit210.i:                         ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18, !noalias !249
  %i.ajs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 256, ptr noundef nonnull @.str.105, i32 noundef %i.ajj) #18, !noalias !249 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.d, ptr noundef %.018341.i, i32 noundef %i.qo, i32 noundef %i.qq, i32 noundef 16, ptr noundef nonnull @.str.107) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18, !noalias !249
  %.pr.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !234, !noalias !252
  %i.ajt = icmp eq ptr %.pr.pre.i, null
  br i1 %i.ajt, label %debug_dump_PFM.exit214.i, label %debug_dump_PFM.exit210.thread.i

debug_dump_PFM.exit210.thread.i:                  ; preds = %debug_dump_PFM.exit210.i
  %.pre104 = load ptr, ptr %i.rc, align 8, !tbaa !138, !noalias !252
  %.phi.trans.insert = getelementptr i8, ptr %.pre104, i64 644
  %.val.i212.i.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !139, !noalias !252
  %.pre106 = and i32 %.val.i212.i.pre, 2
  %i.aju = icmp eq i32 %.pre106, 0
  br i1 %i.aju, label %debug_dump_PFM.exit214.i, label %bb.ar

bb.ar:                                            ; preds = %debug_dump_PFM.exit210.thread.i
  %i.ajv = load ptr, ptr %i.f, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18, !noalias !252
  %i.ajw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 256, ptr noundef nonnull @.str.106, i32 noundef %i.ajj) #18, !noalias !252 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.c, ptr noundef %i.ajv, i32 noundef %i.qo, i32 noundef %i.qq, i32 noundef 16, ptr noundef nonnull @.str.107) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !252
  br label %debug_dump_PFM.exit214.i

debug_dump_PFM.exit214.i:                         ; preds = %bb.aq, %bb.ar, %debug_dump_PFM.exit210.thread.i, %debug_dump_PFM.exit210.i, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) @__const.process_wavelets.boost, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18
  %i.ajx = load float, ptr %i.m, align 16, !tbaa !16
  %i.ajy = load <2 x float>, ptr %i.ahw, align 4, !tbaa !16
  %i.ajz = xor i64 %indvars.iv.i, -1
  %i.aka = add nsw i64 %i.ajz, %i.aib             ; 2 uses
  %i.akb = load i32, ptr %i.xs, align 8, !tbaa !220
  %i.akc = icmp eq i32 %i.akb, 0
  br i1 %i.akc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %debug_dump_PFM.exit214.i
  %i.akd = getelementptr inbounds [4 x i8], <4 x ptr> %i.ahy, i64 %i.aka
  %i.ake = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.akd, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !16 ; 2 uses
  %i.akf = fmul reassoc nsz arcp contract afn <4 x float> %i.ake, %i.ake ; 2 uses
  %i.akg = shufflevector <4 x float> %i.akf, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.akh = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.akg, <4 x i32> <i32 2, i32 2, i32 2, i32 1>
  %i.aki = fmul reassoc nsz arcp contract afn <4 x float> %i.akh, <float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 0.000000e+00>
  %i.akj = fmul reassoc nsz arcp contract afn <4 x float> %i.akf, %i.aki
  br label %variance_stabilizing_xform.exit.i

bb.at:                                            ; preds = %debug_dump_PFM.exit214.i
  %i.akk = getelementptr inbounds [4 x i8], ptr %i.ahx, i64 %i.aka
  %i.akl = call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 4 %i.akk, <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true>, <8 x float> poison), !tbaa !16
  %i.akm = shufflevector <8 x float> %i.akl, <8 x float> <float poison, float poison, float poison, float 1.000000e+00, float poison, float poison, float poison, float poison>, <4 x i32> <i32 0, i32 7, i32 7, i32 11> ; 2 uses
  %i.akn = fmul reassoc nsz arcp contract afn <4 x float> %i.akm, %i.akm
  %i.ako = fmul reassoc nsz arcp contract afn <4 x float> %i.akn, <float 3.200000e+01, float 3.200000e+01, float 3.200000e+01, float 0.000000e+00>
  br label %variance_stabilizing_xform.exit.i

end_hunk_1
begin_hunk_2_@CurveDataSample

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #5

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #5

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_paint(ptr noundef) local_unnamed_addr #5

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #5

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #5

declare void @cairo_fill(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @dt_iop_denoiseprofile_get_params(ptr nofree noundef captures(none) %0, i32 noundef %1, double noundef %2, double noundef %3, float noundef %4) unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [28 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = fmul reassoc nsz arcp contract afn float %4, %4
  %i.e = fpext reassoc nsz arcp contract afn float %i.d to double ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.g = getelementptr inbounds [28 x i8], ptr %i.f, i64 %i.b ; 4 uses
  %i.h = load <4 x float>, ptr %i.c, align 4, !tbaa !16
  %i.i = fpext <4 x float> %i.h to <4 x double>
  %i.j = insertelement <4 x double> poison, double %2, i64 0
  %i.k = shufflevector <4 x double> %i.j, <4 x double> poison, <4 x i32> zeroinitializer
  %i.l = fsub reassoc nsz arcp contract afn <4 x double> %i.k, %i.i ; 2 uses
  %i.m = fneg reassoc nsz arcp contract afn <4 x double> %i.l
  %i.n = fmul reassoc nsz arcp contract afn <4 x double> %i.l, %i.m
  %i.o = insertelement <4 x double> poison, double %i.e, i64 0
  %i.p = shufflevector <4 x double> %i.o, <4 x double> poison, <4 x i32> zeroinitializer
  %i.q = fdiv reassoc nsz arcp contract afn <4 x double> %i.n, %i.p
  %i.r = fptrunc <4 x double> %i.q to <4 x float>
  %i.s = tail call reassoc nsz arcp contract afn <4 x float> @llvm.exp.v4f32(<4 x float> %i.r) ; 2 uses
  %i.t = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.s
  %i.u = load <4 x float>, ptr %i.g, align 4, !tbaa !16
  %i.v = fmul reassoc nsz arcp contract afn <4 x float> %i.t, %i.u
  %i.w = fpext <4 x float> %i.v to <4 x double>
  %i.x = fpext <4 x float> %i.s to <4 x double>
  %i.y = insertelement <4 x double> poison, double %3, i64 0
  %i.z = shufflevector <4 x double> %i.y, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aa = fmul reassoc nsz arcp contract afn <4 x double> %i.z, %i.x
  %i.ab = fadd reassoc nsz arcp contract afn <4 x double> %i.aa, %i.w
  %i.ac = fptrunc <4 x double> %i.ab to <4 x float>
  store <4 x float> %i.ac, ptr %i.g, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.af = load <2 x float>, ptr %i.ad, align 4, !tbaa !16
  %i.ag = fpext <2 x float> %i.af to <2 x double>
  %i.ah = insertelement <2 x double> poison, double %2, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fsub reassoc nsz arcp contract afn <2 x double> %i.ai, %i.ag ; 2 uses
  %i.ak = fneg reassoc nsz arcp contract afn <2 x double> %i.aj
  %i.al = fmul reassoc nsz arcp contract afn <2 x double> %i.aj, %i.ak
  %i.am = insertelement <2 x double> poison, double %i.e, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fdiv reassoc nsz arcp contract afn <2 x double> %i.al, %i.an
  %i.ap = fptrunc <2 x double> %i.ao to <2 x float>
  %i.aq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.ap) ; 2 uses
  %i.ar = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aq
  %i.as = load <2 x float>, ptr %i.ae, align 4, !tbaa !16
  %i.at = fmul reassoc nsz arcp contract afn <2 x float> %i.ar, %i.as
  %i.au = fpext <2 x float> %i.at to <2 x double>
  %i.av = fpext <2 x float> %i.aq to <2 x double>
  %i.aw = insertelement <2 x double> poison, double %3, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fmul reassoc nsz arcp contract afn <2 x double> %i.ax, %i.av
  %i.az = fadd reassoc nsz arcp contract afn <2 x double> %i.ay, %i.au
  %i.ba = fptrunc <2 x double> %i.az to <2 x float>
  store <2 x float> %i.ba, ptr %i.ae, align 4, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !16
  %i.bd = fpext reassoc nsz arcp contract afn float %i.bc to double
  %i.be = fsub reassoc nsz arcp contract afn double %2, %i.bd ; 2 uses
  %i.bf = fneg reassoc nsz arcp contract afn double %i.be
  %i.bg = fmul reassoc nsz arcp contract afn double %i.be, %i.bf
  %i.bh = fdiv reassoc nsz arcp contract afn double %i.bg, %i.e
  %i.bi = fptrunc reassoc nsz arcp contract afn double %i.bh to float
  %i.bj = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.bi) ; 2 uses
  %i.bk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !16
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bk, %i.bm
  %i.bo = fpext reassoc nsz arcp contract afn float %i.bn to double
  %i.bp = fpext reassoc nsz arcp contract afn float %i.bj to double
  %i.bq = fmul reassoc nsz arcp contract afn double %3, %i.bp
  %i.br = fadd reassoc nsz arcp contract afn double %i.bq, %i.bo
  %i.bs = fptrunc reassoc nsz arcp contract afn double %i.br to float
  store float %i.bs, ptr %i.bl, align 4, !tbaa !16
  ret void
}

declare void @cairo_save(ptr noundef) local_unnamed_addr #5

declare void @cairo_set_operator(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #5

declare void @cairo_restore(ptr noundef) local_unnamed_addr #5

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #5

declare void @pango_font_description_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @pango_font_description_set_absolute_size(ptr noundef, double noundef) local_unnamed_addr #5

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #5

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @cairo_rotate(ptr noundef, double noundef) local_unnamed_addr #5

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #5

declare void @g_object_unref(ptr noundef) local_unnamed_addr #5

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #5

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #5

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #8

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @interpolate_set(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare float @interpolate_val(i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @dt_gui_ignore_scroll(ptr noundef) local_unnamed_addr #5

declare i32 @gtk_widget_event(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @dt_gui_get_scroll_unit_delta(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #5

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #5

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #5

declare void @gtk_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @g_free(ptr noundef) local_unnamed_addr #5

declare i32 @dt_bauhaus_combobox_get(ptr noundef) local_unnamed_addr #5

declare ptr @g_list_nth_data(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.powi.f32.i32(float, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.pow.v2f32(<2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.pow.v4f32(<4 x float>, <4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.sqrt.v32f32(<32 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.maxnum.v32f32(<32 x float>, <32 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nounwind }
attributes #19 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 32}
!12 = !{!"dt_iop_denoiseprofile_params_v1_t", !13, i64 0, !13, i64 4, !9, i64 8, !9, i64 20, !8, i64 32}
!13 = !{!"float", !9, i64 0}
!14 = !{!15, !8, i64 32}
!15 = !{!"dt_iop_denoiseprofile_params_v4_t", !13, i64 0, !13, i64 4, !9, i64 8, !9, i64 20, !8, i64 32, !9, i64 36, !9, i64 116}
!16 = !{!13, !13, i64 0}
!17 = !{!18, !24, i64 664}
!18 = !{!"dt_iop_module_t", !8, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !19, i64 144, !19, i64 152, !19, i64 160, !19, i64 168, !19, i64 176, !19, i64 184, !19, i64 192, !19, i64 200, !19, i64 208, !19, i64 216, !19, i64 224, !19, i64 232, !19, i64 240, !19, i64 248, !19, i64 256, !19, i64 264, !19, i64 272, !19, i64 280, !19, i64 288, !19, i64 296, !19, i64 304, !19, i64 312, !19, i64 320, !19, i64 328, !19, i64 336, !19, i64 344, !19, i64 352, !19, i64 360, !19, i64 368, !19, i64 376, !19, i64 384, !19, i64 392, !19, i64 400, !19, i64 408, !19, i64 416, !19, i64 424, !19, i64 432, !19, i64 440, !20, i64 448, !9, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !9, i64 512, !9, i64 528, !9, i64 544, !9, i64 560, !9, i64 576, !9, i64 592, !21, i64 608, !22, i64 616, !9, i64 640, !8, i64 656, !8, i64 660, !24, i64 664, !8, i64 672, !8, i64 676, !19, i64 680, !19, i64 688, !8, i64 696, !19, i64 704, !25, i64 712, !19, i64 752, !19, i64 760, !26, i64 768, !26, i64 776, !19, i64 784, !27, i64 792, !32, i64 824, !32, i64 832, !32, i64 840, !32, i64 848, !32, i64 856, !32, i64 864, !32, i64 872, !8, i64 880, !32, i64 888, !32, i64 896, !32, i64 904, !33, i64 912, !33, i64 920, !32, i64 928, !32, i64 936, !8, i64 944, !34, i64 952, !8, i64 960, !9, i64 964, !8, i64 1092, !32, i64 1096, !19, i64 1104, !8, i64 1112}
!19 = !{!"any pointer", !9, i64 0}
!20 = !{!"p1 _ZTS8_GModule", !19, i64 0}
!21 = !{!"p1 int", !19, i64 0}
!22 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !23, i64 8, !8, i64 16, !8, i64 20}
!23 = !{!"long", !9, i64 0}
!24 = !{!"p1 _ZTS12dt_develop_t", !19, i64 0}
!25 = !{!"dt_pthread_mutex_t", !9, i64 0}
!26 = !{!"p1 _ZTS25dt_develop_blend_params_t", !19, i64 0}
!27 = !{!"", !28, i64 0, !30, i64 16}
!28 = !{!"", !29, i64 0, !29, i64 8}
!29 = !{!"p1 _ZTS11_GHashTable", !19, i64 0}
!30 = !{!"", !31, i64 0, !8, i64 8}
!31 = !{!"p1 _ZTS15dt_iop_module_t", !19, i64 0}
!32 = !{!"p1 _ZTS10_GtkWidget", !19, i64 0}
!33 = !{!"p1 _ZTS7_GSList", !19, i64 0}
!34 = !{!"p1 _ZTS18dt_iop_module_so_t", !19, i64 0}
!35 = !{!36}
!36 = distinct !{!36, !37, !"dt_iop_denoiseprofile_get_auto_profile: argument 0"}
!37 = distinct !{!37, !"dt_iop_denoiseprofile_get_auto_profile"}
!38 = !{i64 0, i64 8, !39, i64 8, i64 8, !39, i64 16, i64 8, !39, i64 24, i64 4, !41, i64 32, i64 16, !42, i64 48, i64 16, !42}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 omnipotent char", !19, i64 0}
!41 = !{!8, !8, i64 0}
!42 = !{!9, !9, i64 0}
!43 = !{!44, !13, i64 132}
!44 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !19, i64 16, !45, i64 24, !45, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !45, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !31, i64 88, !46, i64 96, !47, i64 112, !8, i64 2000, !8, i64 2004, !25, i64 2008, !8, i64 2048, !55, i64 2056, !8, i64 2064, !31, i64 2072, !8, i64 2080, !55, i64 2088, !55, i64 2096, !8, i64 2104, !55, i64 2112, !55, i64 2120, !21, i64 2128, !21, i64 2136, !8, i64 2144, !8, i64 2148, !55, i64 2152, !57, i64 2160, !58, i64 2168, !55, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !13, i64 2196, !13, i64 2200, !31, i64 2208, !8, i64 2216, !59, i64 2224, !64, i64 2384, !65, i64 2496, !66, i64 2520, !67, i64 2560, !68, i64 2592, !69, i64 2608, !70, i64 2624, !32, i64 2664, !32, i64 2672, !71, i64 2680, !71, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !55, i64 2904, !8, i64 2912, !24, i64 2920}
!45 = !{!"double", !9, i64 0}
!46 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !19, i64 0}
!47 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !8, i64 40, !9, i64 44, !9, i64 108, !9, i64 172, !9, i64 300, !9, i64 364, !9, i64 428, !9, i64 492, !23, i64 560, !8, i64 568, !9, i64 572, !9, i64 800, !9, i64 864, !9, i64 928, !9, i64 992, !8, i64 1120, !9, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !13, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !23, i64 1448, !23, i64 1456, !23, i64 1464, !23, i64 1472, !8, i64 1480, !48, i64 1488, !9, i64 1616, !40, i64 1656, !8, i64 1664, !8, i64 1668, !52, i64 1672, !53, i64 1680, !54, i64 1704, !50, i64 1736, !9, i64 1738, !8, i64 1748, !8, i64 1752, !13, i64 1756, !13, i64 1760, !9, i64 1776, !9, i64 1792, !9, i64 1840, !55, i64 1856, !56, i64 1864, !8, i64 1872, !8, i64 1876}
!48 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !49, i64 48, !51, i64 64, !9, i64 96, !8, i64 112}
!49 = !{!"", !50, i64 0, !50, i64 2}
!50 = !{!"short", !9, i64 0}
!51 = !{!"", !8, i64 0, !9, i64 16}
!52 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!53 = !{!"dt_image_geoloc_t", !45, i64 0, !45, i64 8, !45, i64 16}
!54 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16}
!55 = !{!"p1 _ZTS6_GList", !19, i64 0}
!56 = !{!"p1 _ZTS16dt_cache_entry_t", !19, i64 0}
!57 = !{!"p1 _ZTS15dt_masks_form_t", !19, i64 0}
!58 = !{!"p1 _ZTS19dt_masks_form_gui_t", !19, i64 0}
!59 = !{!"", !60, i64 0, !31, i64 40, !61, i64 48, !63, i64 120}
!60 = !{!"dt_dev_proxy_exposure_t", !31, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32}
!61 = !{!"", !62, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64}
!62 = !{!"p1 _ZTS15dt_lib_module_t", !19, i64 0}
!63 = !{!"", !62, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32}
!64 = !{!"dt_dev_chroma_t", !31, i64 0, !31, i64 8, !9, i64 16, !9, i64 32, !9, i64 64, !8, i64 96}
!65 = !{!"", !31, i64 0, !31, i64 8, !19, i64 16}
!66 = !{!"", !32, i64 0, !32, i64 8, !8, i64 16, !8, i64 20, !13, i64 24, !13, i64 28, !8, i64 32}
!67 = !{!"", !32, i64 0, !32, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !13, i64 28}
!68 = !{!"", !32, i64 0, !32, i64 8}
!69 = !{!"", !32, i64 0, !8, i64 8}
!70 = !{!"", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32}
!71 = !{!"dt_dev_viewport_t", !32, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !46, i64 80, !32, i64 88, !24, i64 96}
!72 = !{!73, !19, i64 0}
!73 = !{!"_GList", !19, i64 0, !55, i64 8, !55, i64 16}
!74 = !{!75, !8, i64 24}
!75 = !{!"dt_noiseprofile_t", !40, i64 0, !40, i64 8, !40, i64 16, !8, i64 24, !9, i64 32, !9, i64 48}
!76 = !{!73, !55, i64 8}
!77 = !{!15, !13, i64 0}
!78 = !{!79, !13, i64 0}
!79 = !{!"dt_iop_denoiseprofile_params_v5_t", !13, i64 0, !13, i64 4, !13, i64 8, !9, i64 12, !9, i64 24, !8, i64 36, !9, i64 40, !9, i64 120}
!80 = !{!15, !13, i64 4}
!81 = !{!79, !13, i64 8}
!82 = !{!79, !8, i64 36}
!83 = !{!79, !13, i64 4}
!84 = !{!85, !13, i64 8}
!85 = !{!"dt_iop_denoiseprofile_params_v6_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !9, i64 16, !9, i64 28, !8, i64 40, !9, i64 44, !9, i64 124}
!86 = !{!85, !8, i64 40}
!87 = !{!85, !13, i64 12}
!88 = !{!89, !8, i64 44}
!89 = !{!"dt_iop_denoiseprofile_params_v7_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !9, i64 20, !9, i64 32, !8, i64 44, !9, i64 48, !9, i64 128, !8, i64 208, !8, i64 212}
!90 = !{!89, !13, i64 16}
!91 = !{!89, !8, i64 212}
!92 = !{!89, !8, i64 208}
!93 = !{!89, !13, i64 8}
!94 = !{!95, !13, i64 8}
!95 = !{!"dt_iop_denoiseprofile_params_v8_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !9, i64 32, !9, i64 44, !8, i64 56, !9, i64 60, !9, i64 140, !8, i64 220, !8, i64 224, !8, i64 228}
!96 = !{!95, !8, i64 56}
!97 = !{!95, !8, i64 228}
!98 = !{!95, !13, i64 28}
!99 = !{!100, !8, i64 56}
!100 = !{!"dt_iop_denoiseprofile_params_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !9, i64 32, !9, i64 44, !8, i64 56, !9, i64 60, !9, i64 228, !8, i64 396, !8, i64 400, !8, i64 404, !8, i64 408, !8, i64 412}
!101 = !{!100, !8, i64 404}
!102 = !{!18, !19, i64 688}
!103 = !{i64 0, i64 4, !16, i64 4, i64 4, !16, i64 8, i64 4, !16, i64 12, i64 4, !16, i64 16, i64 4, !16, i64 20, i64 4, !16, i64 24, i64 4, !16, i64 28, i64 4, !16, i64 32, i64 12, !42, i64 44, i64 12, !42, i64 56, i64 4, !41, i64 60, i64 168, !42, i64 228, i64 168, !42, i64 396, i64 4, !41, i64 400, i64 4, !41, i64 404, i64 4, !41, i64 408, i64 4, !41, i64 412, i64 4, !41}
!104 = !{!100, !8, i64 408}
!105 = !{!100, !13, i64 8}
!106 = !{!75, !40, i64 0}
!107 = !{!47, !13, i64 36}
!108 = !{!19, !19, i64 0}
!109 = !{!110, !8, i64 412}
!110 = !{!"dt_iop_denoiseprofile_params_v12_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !9, i64 32, !9, i64 44, !8, i64 56, !9, i64 60, !9, i64 228, !8, i64 396, !8, i64 400, !8, i64 404, !8, i64 408, !8, i64 412}
!111 = !{!100, !13, i64 16}
!112 = !{!100, !8, i64 412}
!113 = !{!114, !19, i64 16}
!114 = !{!"dt_dev_pixelpipe_iop_t", !31, i64 0, !46, i64 8, !19, i64 16, !19, i64 24, !8, i64 32, !8, i64 36, !115, i64 40, !21, i64 56, !22, i64 64, !9, i64 88, !13, i64 104, !8, i64 108, !8, i64 112, !23, i64 120, !8, i64 128, !8, i64 132, !117, i64 136, !117, i64 156, !117, i64 176, !117, i64 196, !8, i64 216, !8, i64 220, !48, i64 224, !48, i64 352, !9, i64 480, !8, i64 516, !29, i64 520, !118, i64 528, !118, i64 576}
!115 = !{!"dt_dev_histogram_collection_params_t", !116, i64 0, !8, i64 8}
!116 = !{!"p1 _ZTS18dt_histogram_roi_t", !19, i64 0}
!117 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !13, i64 16}
!118 = !{!"dt_dev_distorted_mask_cache_t", !119, i64 0, !117, i64 8, !23, i64 32, !23, i64 40}
!119 = !{!"p1 float", !19, i64 0}
!120 = !{!121, !8, i64 24}
!121 = !{!"dt_develop_tiling_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !8, i64 16, !8, i64 20, !8, i64 24}
!122 = !{!121, !8, i64 16}
!123 = !{!100, !13, i64 0}
!124 = !{!117, !13, i64 16}
!125 = !{!114, !13, i64 104}
!126 = !{!100, !13, i64 4}
!127 = !{!100, !13, i64 20}
!128 = !{!121, !13, i64 8}
!129 = !{!121, !13, i64 0}
!130 = !{!121, !13, i64 4}
!131 = !{!121, !8, i64 20}
!132 = !{!114, !31, i64 0}
!133 = !{!114, !8, i64 132}
!134 = !{!135, !13, i64 0}
!135 = !{!"dt_iop_denoiseprofile_data_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !9, i64 32, !9, i64 44, !8, i64 56, !9, i64 64, !8, i64 112, !9, i64 116, !8, i64 284, !8, i64 288, !8, i64 292, !8, i64 296}
!136 = !{!135, !13, i64 4}
!137 = !{!135, !13, i64 20}
!138 = !{!114, !46, i64 8}
!139 = !{!140, !8, i64 644}
!140 = !{!"dt_dev_pixelpipe_t", !141, i64 0, !8, i64 120, !23, i64 128, !119, i64 136, !8, i64 144, !8, i64 148, !13, i64 152, !8, i64 156, !8, i64 160, !48, i64 176, !145, i64 304, !145, i64 312, !145, i64 320, !145, i64 328, !55, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !40, i64 360, !23, i64 368, !8, i64 376, !8, i64 380, !13, i64 384, !9, i64 388, !23, i64 416, !25, i64 424, !25, i64 464, !25, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !146, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !9, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !47, i64 656, !8, i64 2544, !40, i64 2552, !8, i64 2560, !55, i64 2568, !55, i64 2576, !55, i64 2584, !8, i64 2592, !119, i64 2600, !23, i64 2608, !9, i64 2616, !9, i64 2632}
!141 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !23, i64 8, !23, i64 16, !142, i64 24, !143, i64 32, !144, i64 40, !143, i64 48, !21, i64 56, !21, i64 64, !23, i64 72, !8, i64 80, !23, i64 88, !23, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!142 = !{!"any p2 pointer", !19, i64 0}
!143 = !{!"p1 long", !19, i64 0}
!144 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !19, i64 0}
!145 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !19, i64 0}
!146 = !{!"dt_dev_detail_mask_t", !117, i64 0, !23, i64 24, !119, i64 32}
!147 = !{!148, !24, i64 64}
!148 = !{!"darktable_t", !149, i64 0, !8, i64 4, !8, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !150, i64 48, !151, i64 56, !24, i64 64, !152, i64 72, !153, i64 80, !154, i64 88, !155, i64 96, !156, i64 104, !157, i64 112, !158, i64 120, !159, i64 128, !160, i64 136, !161, i64 144, !162, i64 152, !163, i64 160, !164, i64 168, !165, i64 176, !166, i64 184, !167, i64 192, !168, i64 200, !169, i64 208, !170, i64 216, !171, i64 224, !9, i64 232, !25, i64 2792, !25, i64 2832, !25, i64 2872, !25, i64 2912, !25, i64 2952, !25, i64 2992, !40, i64 3032, !40, i64 3040, !40, i64 3048, !40, i64 3056, !40, i64 3064, !40, i64 3072, !40, i64 3080, !40, i64 3088, !40, i64 3096, !40, i64 3104, !40, i64 3112, !40, i64 3120, !40, i64 3128, !172, i64 3136, !55, i64 3288, !45, i64 3296, !55, i64 3304, !8, i64 3312, !9, i64 3316, !8, i64 3512, !8, i64 3516, !179, i64 3520, !180, i64 3528, !181, i64 3536, !182, i64 3576, !183, i64 3600, !184, i64 3632, !8, i64 3672}
end_hunk_2
