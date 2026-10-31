Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_denoiseprofile?download=true
inline.NumInlined: 157
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 83
begin_hunk_0_@legacy_params:bb.a
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %2, 11
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noalias dereferenceable_or_null(416) ptr @malloc(i64 noundef 416) #27 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(412) %i.e, ptr noundef nonnull align 4 dereferenceable(412) %1, i64 412, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 412
  store i32 0, ptr %i.f, align 4, !tbaa !247
  store ptr %i.e, ptr %3, align 8, !tbaa !78
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink21 = phi i32 [ 416, %bb.d ], [ 412, %bb.b ]
  %.sink = phi i32 [ 12, %bb.d ], [ 11, %bb.b ]
  %.0.ph = phi i32 [ 0, %bb.d ], [ %i.c, %bb.b ]
  store i32 %.sink21, ptr %4, align 4, !tbaa !33
  store i32 %.sink, ptr %5, align 4, !tbaa !33
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
  store i32 1, ptr %i.b, align 8, !tbaa !71
  store <4 x float> <float 1.000000e+00, float 7.000000e+00, float 1.200000e+00, float 0.000000e+00>, ptr %1, align 16, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float 0.000000e+00, ptr %i.c, align 16, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float -1.000000e+00, ptr %i.e, align 16, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x float> <float 1.000000e-01, float 1.000000e+00>, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 412
  store i32 0, ptr %i.g, align 4, !tbaa !80
  store <4 x i32> splat (i32 1), ptr %i.d, align 4, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 340
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %1, i64 92
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %gep.3.1 = getelementptr inbounds nuw i8, ptr %1, i64 148
  %gep14.5.1 = getelementptr inbounds nuw i8, ptr %1, i64 372
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 180
  %gep.5.3 = getelementptr inbounds nuw i8, ptr %1, i64 212
  %invariant.gep13.4 = getelementptr inbounds nuw i8, ptr %1, i64 244
  store <4 x float> <float f0x3E2AAAAB, float f0x3EAAAAAB, float 5.000000e-01, float f0x3F2AAAAB>, ptr %invariant.gep.1, align 16, !tbaa !12
  store <4 x float> <float f0x3E2AAAAB, float f0x3EAAAAAB, float 5.000000e-01, float f0x3F2AAAAB>, ptr %gep.1.1, align 4, !tbaa !12
  store <4 x float> <float f0x3E2AAAAB, float f0x3EAAAAAB, float 5.000000e-01, float f0x3F2AAAAB>, ptr %gep.2.1, align 8, !tbaa !12
  store <4 x float> splat (float 5.000000e-01), ptr %gep14.5.1, align 4, !tbaa !12
  %invariant.gep.5 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %gep.1.5 = getelementptr inbounds nuw i8, ptr %1, i64 108
  %gep14.1.5 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %gep.2.5 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %gep14.5.5 = getelementptr inbounds nuw i8, ptr %1, i64 388
  store <2 x float> <float f0x3F555556, float 1.000000e+00>, ptr %invariant.gep.5, align 16, !tbaa !12
  store <8 x float> splat (float 5.000000e-01), ptr %invariant.gep13.4, align 4, !tbaa !12
  store <2 x float> <float f0x3F555556, float 1.000000e+00>, ptr %gep.1.5, align 4, !tbaa !12
  store <8 x float> splat (float 5.000000e-01), ptr %gep14.1.5, align 4, !tbaa !12
  store <2 x float> <float f0x3F555556, float 1.000000e+00>, ptr %gep.2.5, align 8, !tbaa !12
  %gep14.2.6 = getelementptr inbounds nuw i8, ptr %1, i64 308
  store <8 x float> <float f0x3E2AAAAB, float f0x3EAAAAAB, float 5.000000e-01, float f0x3F2AAAAB, float f0x3F555556, float 1.000000e+00, float 0.000000e+00, float f0x3E2AAAAB>, ptr %gep.3.1, align 4, !tbaa !12
  store <8 x float> splat (float 5.000000e-01), ptr %gep14.2.6, align 4, !tbaa !12
  store <8 x float> <float 5.000000e-01, float f0x3F2AAAAB, float f0x3F555556, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %gep.5.3, align 4, !tbaa !12
  store <2 x float> splat (float 5.000000e-01), ptr %gep14.5.5, align 4, !tbaa !12
  store <8 x float> <float f0x3EAAAAAB, float 5.000000e-01, float f0x3F2AAAAB, float f0x3F555556, float 1.000000e+00, float 0.000000e+00, float f0x3E2AAAAB, float f0x3EAAAAAB>, ptr %i.i, align 4, !tbaa !12
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01>, ptr %i.h, align 4, !tbaa !12
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !87  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.c, align 4, !tbaa !249
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.d, align 4, !tbaa !250
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load i32, ptr %i.e, align 4, !tbaa !71
  switch i32 %i.f, label %bb.c [
    i32 0, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.g = load float, ptr %i.b, align 4, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load float, ptr %i.h, align 4, !tbaa !89
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.i, float 2.000000e+00)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load float, ptr %i.k, align 8, !tbaa !90
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.l, float 1.000000e+00)
  %i.n = fdiv reassoc nsz arcp contract afn float %i.j, %i.m
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.n, float 1.000000e+00) ; 2 uses
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, %i.g
  %i.q = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.p)
  %i.r = fptosi float %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !251
  %i.u = fmul reassoc nsz arcp contract afn float %i.o, %i.t
  %i.v = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.u)
  %i.w = fptosi float %i.v to i32                 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !91
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
  store <2 x float> <float 2.250000e+00, float 5.000000e+00>, ptr %4, align 4, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.000000e+00, ptr %i.ap, align 4, !tbaa !252
  %i.aq = add nsw i32 %i.ao, %i.r
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !89
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.au = load float, ptr %i.at, align 8, !tbaa !90 ; 3 uses
  %i.av = fdiv reassoc nsz arcp contract afn float %i.as, %i.au
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.av, float 1.000000e+00) ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ay = load <2 x i32>, ptr %i.ax, align 16, !tbaa !33
  %i.az = sitofp <2 x i32> %i.ay to <2 x float>   ; 2 uses
  %i.ba = extractelement <2 x float> %i.az, i64 1
  %i.bb = fmul reassoc nsz arcp contract afn float %i.au, %i.ba
  %i.bc = extractelement <2 x float> %i.az, i64 0
  %i.bd = fmul reassoc nsz arcp contract afn float %i.au, %i.bc
  %i.be = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bb, float %i.bd)
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, 2.000000e-01
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bf, float 2.570000e+02)
  %i.bh = fmul reassoc nnan nsz arcp contract afn float %i.bg, 5.000000e-01
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, -5.000000e-01
  %i.bj = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.bi) ; 7 uses
  %.reass = fdiv reassoc nsz arcp contract afn float 2.500000e+00, %i.aw
  %i.bk = fadd reassoc nsz arcp contract afn float %.reass, -5.000000e-01
  %i.bl = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.bk)
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, -5.000000e-01
  %i.bn = fdiv reassoc nsz arcp contract afn float %i.bm, %i.bj
  %i.bo = fcmp reassoc nsz arcp contract afn ogt float %i.bn, 1.000000e+00
  br i1 %i.bo, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.reass.1 = fdiv reassoc nsz arcp contract afn float 4.500000e+00, %i.aw
  %i.bp = fadd reassoc nsz arcp contract afn float %.reass.1, -5.000000e-01
  %i.bq = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.bp)
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, -5.000000e-01
  %i.bs = fdiv reassoc nsz arcp contract afn float %i.br, %i.bj
  %i.bt = fcmp reassoc nsz arcp contract afn ogt float %i.bs, 1.000000e+00
  br i1 %i.bt, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.reass.2 = fdiv reassoc nsz arcp contract afn float 8.500000e+00, %i.aw
  %i.bu = fadd reassoc nsz arcp contract afn float %.reass.2, -5.000000e-01
  %i.bv = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.bu)
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, -5.000000e-01
  %i.bx = fdiv reassoc nsz arcp contract afn float %i.bw, %i.bj
  %i.by = fcmp reassoc nsz arcp contract afn ogt float %i.bx, 1.000000e+00
  br i1 %i.by, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.reass.3 = fdiv reassoc nsz arcp contract afn float 1.650000e+01, %i.aw
  %i.bz = fadd reassoc nsz arcp contract afn float %.reass.3, -5.000000e-01
  %i.ca = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.bz)
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, -5.000000e-01
  %i.cc = fdiv reassoc nsz arcp contract afn float %i.cb, %i.bj
  %i.cd = fcmp reassoc nsz arcp contract afn ogt float %i.cc, 1.000000e+00
  br i1 %i.cd, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.reass.4 = fdiv reassoc nsz arcp contract afn float 3.250000e+01, %i.aw
  %i.ce = fadd reassoc nsz arcp contract afn float %.reass.4, -5.000000e-01
  %i.cf = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.ce)
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, -5.000000e-01
  %i.ch = fdiv reassoc nsz arcp contract afn float %i.cg, %i.bj
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %i.ch, 1.000000e+00
  br i1 %i.ci, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.reass.5 = fdiv reassoc nsz arcp contract afn float 6.450000e+01, %i.aw
  %i.cj = fadd reassoc nsz arcp contract afn float %.reass.5, -5.000000e-01
  %i.ck = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.cj)
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, -5.000000e-01
  %i.cm = fdiv reassoc nsz arcp contract afn float %i.cl, %i.bj
  %i.cn = fcmp reassoc nsz arcp contract afn ogt float %i.cm, 1.000000e+00
  br i1 %i.cn, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.reass.6 = fdiv reassoc nsz arcp contract afn float 1.285000e+02, %i.aw
  %i.co = fadd reassoc nsz arcp contract afn float %.reass.6, -5.000000e-01
  %i.cp = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.co)
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, -5.000000e-01
  %i.cr = fdiv reassoc nsz arcp contract afn float %i.cq, %i.bj
  %i.cs = fcmp reassoc nsz arcp contract afn ogt float %i.cr, 1.000000e+00
  %spec.select = select i1 %i.cs, i32 6, i32 7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.048.lcssa = phi i32 [ 0, %bb.c ], [ 5, %bb.h ], [ 1, %bb.d ], [ %spec.select, %bb.i ], [ 2, %bb.e ], [ 4, %bb.g ], [ 3, %bb.f ] ; 2 uses
  %i.ct = shl nuw nsw i32 1, %.048.lcssa
  store float 5.000000e+00, ptr %4, align 4, !tbaa !253
  %i.cu = uitofp nsz nneg i32 %.048.lcssa to float
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, 3.500000e+00
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.cv, ptr %i.cw, align 4, !tbaa !254
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.cx, align 4, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.sink = phi i32 [ %i.ct, %bb.j ], [ %i.aq, %bb.b ]
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %.sink, ptr %i.cy, align 4, !tbaa !255
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
  %i.j = alloca [4 x float], align 16             ; 4 uses
  %i.k = alloca [4 x float], align 16             ; 4 uses
  %i.l = alloca [4 x float], align 16             ; 7 uses
  %i.m = alloca [4 x float], align 16             ; 5 uses
  %i.n = alloca [4 x float], align 16             ; 4 uses
  %i.o = alloca [4 x float], align 16             ; 6 uses
  %i.p = alloca ptr, align 8                      ; 6 uses
  %i.q = alloca [4 x float], align 16             ; 6 uses
  %i.r = alloca [4 x float], align 16             ; 4 uses
  %i.s = alloca [4 x float], align 16             ; 4 uses
  %i.t = alloca [4 x float], align 16             ; 4 uses
  %i.u = alloca [4 x float], align 16             ; 4 uses
  %6 = alloca %struct.dt_nlmeans_param_t, align 8 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !87  ; 32 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load i32, ptr %i.x, align 4, !tbaa !71
  switch i32 %i.y, label %bb.aw [
    i32 0, label %bb.b
    i32 3, label %bb.b
    i32 1, label %bb.p
    i32 4, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.z = load ptr, ptr %1, align 16, !tbaa !289
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !290
  %i.ac = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %i.z, i32 noundef %i.ab, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #18
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %process_nlmeans.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #18
  %i.ad = load ptr, ptr %1, align 16, !tbaa !289
  %i.ae = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef %i.ad, ptr noundef %4, ptr noundef %5, i32 noundef 1048580, ptr noundef nonnull %i.p, i32 noundef 0) #18
  %.not39.i = icmp eq i32 %i.ae, 0
  br i1 %.not39.i, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load float, ptr %i.af, align 4, !tbaa !89
  %i.ah = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ag, float 2.000000e+00)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !90
  %i.ak = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aj, float 1.000000e+00)
  %i.al = fdiv reassoc nsz arcp contract afn float %i.ah, %i.ak
  %i.am = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.al, float 1.000000e+00) ; 8 uses
  %i.an = load float, ptr %i.w, align 8, !tbaa !93
  %i.ao = fmul reassoc nsz arcp contract afn float %i.am, %i.an
  %i.ap = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ao)
  %i.aq = fptosi float %i.ap to i32               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !291
  %i.at = fptosi float %i.as to i32               ; 9 uses
  %i.au = getelementptr i8, ptr %i.w, i64 20
  %.val.i = load float, ptr %i.au, align 4, !tbaa !94 ; 3 uses
  %i.av = getelementptr i8, ptr %1, i64 8
  %.val40.i = load ptr, ptr %i.av, align 8, !tbaa !292 ; 6 uses
  %i.aw = getelementptr i8, ptr %.val40.i, i64 644
  %.val40.val.i = load i32, ptr %i.aw, align 4, !tbaa !300 ; 2 uses
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
end_hunk_0
begin_hunk_1_@process:bb.a
  call fastcc void @backtransform_v2(ptr noundef %3, i32 noundef %i.nt, i32 noundef %i.nu, float noundef %i.nw, ptr noundef nonnull readonly %i.r, float noundef %i.nx, float noundef %i.of, ptr noundef nonnull readonly %i.q)
  br label %nlmeans_backtransform.exit.i

nlmeans_backtransform.exit.i:                     ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  br label %bb.o

bb.o:                                             ; preds = %nlmeans_backtransform.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  br label %process_nlmeans.exit

bb.p:                                             ; preds = %bb.a, %bb.a
  %i.og = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.oh = load float, ptr %i.og, align 4, !tbaa !89
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.oj = load float, ptr %i.oi, align 8, !tbaa !90 ; 3 uses
  %i.ok = fdiv reassoc nsz arcp contract afn float %i.oh, %i.oj
  %i.ol = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ok, float 1.000000e+00) ; 12 uses
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.on = load i32, ptr %i.om, align 4, !tbaa !323
  %i.oo = sitofp reassoc nsz arcp contract afn i32 %i.on to float
  %i.op = fmul reassoc nsz arcp contract afn float %i.oj, %i.oo ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.or = load i32, ptr %i.oq, align 16, !tbaa !324
  %i.os = sitofp reassoc nsz arcp contract afn i32 %i.or to float
  %i.ot = fmul reassoc nsz arcp contract afn float %i.oj, %i.os ; 2 uses
  %i.ou = fcmp reassoc nsz arcp contract afn ogt float %i.op, %i.ot
  %..i = select reassoc nsz arcp contract afn i1 %i.ou, float %i.op, float %i.ot ; 2 uses
  %i.ov = fmul reassoc nsz arcp contract afn float %..i, 2.000000e-01
  %i.ow = fcmp reassoc nsz arcp contract afn ogt float %i.ov, 2.570000e+02
  %i.ox = fmul reassoc nsz arcp contract afn float %..i, 1.000000e-01
  %i.oy = fadd reassoc nsz arcp contract afn float %i.ox, -5.000000e-01
  %i.oz = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.oy)
  %i.pa = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.oz
  %i.pb = select i1 %i.ow, float f0x3E124925, float %i.pa ; 7 uses
  %.reass.i = fdiv reassoc nnan nsz arcp contract afn float 2.500000e+00, %i.ol
  %i.pc = fadd reassoc nnan nsz arcp contract afn float %.reass.i, -5.000000e-01
  %i.pd = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.pc)
  %i.pe = fadd reassoc nsz arcp contract afn float %i.pd, -5.000000e-01
  %i.pf = fmul reassoc nsz arcp contract afn float %i.pb, %i.pe
  %i.pg = fcmp reassoc nsz arcp contract afn ogt float %i.pf, 1.000000e+00 ; 2 uses
  br i1 %i.pg, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.reass.1.i = fdiv reassoc nnan nsz arcp contract afn float 4.500000e+00, %i.ol
  %i.ph = fadd reassoc nnan nsz arcp contract afn float %.reass.1.i, -5.000000e-01
  %i.pi = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.ph)
  %i.pj = fadd reassoc nsz arcp contract afn float %i.pi, -5.000000e-01
  %i.pk = fmul reassoc nsz arcp contract afn float %i.pb, %i.pj
  %i.pl = fcmp reassoc nsz arcp contract afn ogt float %i.pk, 1.000000e+00
  br i1 %i.pl, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.reass.2.i = fdiv reassoc nnan nsz arcp contract afn float 8.500000e+00, %i.ol
  %i.pm = fadd reassoc nnan nsz arcp contract afn float %.reass.2.i, -5.000000e-01
  %i.pn = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.pm)
  %i.po = fadd reassoc nsz arcp contract afn float %i.pn, -5.000000e-01
  %i.pp = fmul reassoc nsz arcp contract afn float %i.pb, %i.po
  %i.pq = fcmp reassoc nsz arcp contract afn ogt float %i.pp, 1.000000e+00
  br i1 %i.pq, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.reass.3.i = fdiv reassoc nnan nsz arcp contract afn float 1.650000e+01, %i.ol
  %i.pr = fadd reassoc nnan nsz arcp contract afn float %.reass.3.i, -5.000000e-01
  %i.ps = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.pr)
  %i.pt = fadd reassoc nsz arcp contract afn float %i.ps, -5.000000e-01
  %i.pu = fmul reassoc nsz arcp contract afn float %i.pb, %i.pt
  %i.pv = fcmp reassoc nsz arcp contract afn ogt float %i.pu, 1.000000e+00
  br i1 %i.pv, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.reass.4.i = fdiv reassoc nnan nsz arcp contract afn float 3.250000e+01, %i.ol
  %i.pw = fadd reassoc nnan nsz arcp contract afn float %.reass.4.i, -5.000000e-01
  %i.px = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.pw)
  %i.py = fadd reassoc nsz arcp contract afn float %i.px, -5.000000e-01
  %i.pz = fmul reassoc nsz arcp contract afn float %i.pb, %i.py
  %i.qa = fcmp reassoc nsz arcp contract afn ogt float %i.pz, 1.000000e+00
  br i1 %i.qa, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.reass.5.i = fdiv reassoc nnan nsz arcp contract afn float 6.450000e+01, %i.ol
  %i.qb = fadd reassoc nnan nsz arcp contract afn float %.reass.5.i, -5.000000e-01
  %i.qc = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.qb)
  %i.qd = fadd reassoc nsz arcp contract afn float %i.qc, -5.000000e-01
  %i.qe = fmul reassoc nsz arcp contract afn float %i.pb, %i.qd
  %i.qf = fcmp reassoc nsz arcp contract afn ogt float %i.qe, 1.000000e+00
  br i1 %i.qf, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.reass.6.i = fdiv reassoc nnan nsz arcp contract afn float 1.285000e+02, %i.ol
  %i.qg = fadd reassoc nnan nsz arcp contract afn float %.reass.6.i, -5.000000e-01
  %i.qh = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.qg)
  %i.qi = fadd reassoc nsz arcp contract afn float %i.qh, -5.000000e-01
  %i.qj = fmul reassoc nsz arcp contract afn float %i.pb, %i.qi
  %i.qk = fcmp reassoc nsz arcp contract afn ogt float %i.qj, 1.000000e+00
  %spec.select95.i = select i1 %i.qk, i32 6, i32 7
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.0178.lcssa.i = phi i32 [ 0, %bb.p ], [ 5, %bb.u ], [ 1, %bb.q ], [ %spec.select95.i, %bb.v ], [ 2, %bb.r ], [ 4, %bb.t ], [ 3, %bb.s ] ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !307 ; 9 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !308 ; 9 uses
  %i.qp = sext i32 %i.qm to i64                   ; 6 uses
  %i.qq = sext i32 %i.qo to i64                   ; 6 uses
  %i.qr = mul nsw i64 %i.qq, %i.qp                ; 4 uses
  %i.qs = shl nuw nsw i32 1, %.0178.lcssa.i       ; 2 uses
  %i.qt = icmp slt i32 %i.qm, %i.qs
  %i.qu = icmp slt i32 %i.qo, %i.qs
  %or.cond.i = select i1 %i.qt, i1 true, i1 %i.qu
  br i1 %or.cond.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.qv = shl i64 %i.qr, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %2, i64 %i.qv, i1 false)
  br label %process_nlmeans.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store ptr null, ptr %i.f, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store ptr null, ptr %i.g, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store ptr null, ptr %i.h, align 8, !tbaa !303
  %i.qw = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %5, i32 noundef 4, ptr noundef nonnull %i.g, i32 noundef 4, ptr noundef nonnull %i.h, i32 noundef 4, ptr noundef nonnull %i.f, i32 noundef 0, ptr noundef null) #18
  %.not.i23 = icmp eq i32 %i.qw, 0
  br i1 %.not.i23, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !290
  %i.qz = sext i32 %i.qy to i64
  call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.qz, ptr noundef nonnull %4, ptr noundef %5) #18
  br label %bb.av

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  %i.ra = getelementptr i8, ptr %1, i64 8         ; 4 uses
  %.val.i24 = load ptr, ptr %i.ra, align 8, !tbaa !292 ; 6 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.val.i24, i64 256
  %i.rc = getelementptr inbounds nuw i8, ptr %.val.i24, i64 260
  %i.rd = load float, ptr %i.rb, align 16, !tbaa !12 ; 2 uses
  %i.re = load float, ptr %i.rc, align 4, !tbaa !12 ; 2 uses
  %i.rf = fadd reassoc nsz arcp contract afn float %i.re, %i.rd
  %i.rg = getelementptr inbounds nuw i8, ptr %.val.i24, i64 264
  %i.rh = load float, ptr %i.rg, align 8, !tbaa !12 ; 2 uses
  %i.ri = fadd reassoc nsz arcp contract afn float %i.rf, %i.rh
  %i.rj = fmul reassoc nsz arcp contract afn float %i.ri, f0x3EAAAAAB ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.w, i64 288
  %i.rl = load i32, ptr %i.rk, align 8, !tbaa !302
  %.not.i.i25 = icmp eq i32 %i.rl, 0
  br i1 %.not.i.i25, label %.preheader.i.i, label %bb.ab

.preheader.i.i:                                   ; preds = %bb.aa
  %i.rm = getelementptr inbounds nuw i8, ptr %.val.i24, i64 272
  %i.rn = load float, ptr %i.rm, align 16, !tbaa !12
  %i.ro = fmul reassoc nsz arcp contract afn float %i.rn, 2.000000e+00
  %i.rp = getelementptr inbounds nuw i8, ptr %.val.i24, i64 276
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !12
  %i.rr = getelementptr inbounds nuw i8, ptr %.val.i24, i64 280
  %i.rs = load <2 x float>, ptr %i.rr, align 8, !tbaa !12
  %i.rt = fmul reassoc nsz arcp contract afn <2 x float> %i.rs, <float 2.000000e+00, float 0.000000e+00>
  br label %compute_wb_factors.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.ru = fcmp reassoc nsz arcp contract afn oeq float %i.rj, 0.000000e+00
  br i1 %i.ru, label %compute_wb_factors.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.rv = getelementptr inbounds nuw i8, ptr %i.w, i64 284
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !304
  %.not31.i.i = icmp eq i32 %i.rw, 0
  %i.rx = insertelement <2 x float> poison, float %i.rj, i64 0
  %i.ry = shufflevector <2 x float> %i.rx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br i1 %.not31.i.i, label %compute_wb_factors.exit.i, label %.preheader3.preheader.i.i

.preheader3.preheader.i.i:                        ; preds = %bb.ac
  %i.rz = insertelement <2 x float> %i.ry, float %i.rh, i64 0
  br label %compute_wb_factors.exit.i

compute_wb_factors.exit.i:                        ; preds = %.preheader3.preheader.i.i, %bb.ac, %bb.ab, %.preheader.i.i
  %i.sa = phi float [ %i.rq, %.preheader.i.i ], [ %i.rj, %bb.ac ], [ %i.re, %.preheader3.preheader.i.i ], [ 1.000000e+00, %bb.ab ] ; 6 uses
  %i.sb = phi float [ %i.ro, %.preheader.i.i ], [ %i.rj, %bb.ac ], [ %i.rd, %.preheader3.preheader.i.i ], [ 1.000000e+00, %bb.ab ] ; 6 uses
  %i.sc = phi <2 x float> [ %i.rt, %.preheader.i.i ], [ %i.ry, %bb.ac ], [ %i.rz, %.preheader3.preheader.i.i ], [ splat (float 1.000000e+00), %bb.ab ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  %i.sd = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.se = load float, ptr %i.sd, align 4, !tbaa !305 ; 2 uses
  %i.sf = fpext reassoc nsz arcp contract afn float %i.se to double ; 2 uses
  %i.sg = fdiv reassoc nsz arcp contract afn float %i.ol, %i.sb
  %i.sh = fdiv reassoc nsz arcp contract afn float %i.ol, %i.sa
  %i.si = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.sg)
  %i.sj = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.sh)
  %i.sk = insertelement <2 x float> poison, float %i.si, i64 0
  %i.sl = insertelement <2 x float> %i.sk, float %i.sj, i64 1
  %i.sm = fpext <2 x float> %i.sl to <2 x double>
  %i.sn = fmul reassoc nsz arcp contract afn <2 x double> %i.sm, splat (double 1.000000e-01)
  %i.so = insertelement <2 x double> poison, double %i.sf, i64 0
  %i.sp = shufflevector <2 x double> %i.so, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sq = fadd reassoc nsz arcp contract afn <2 x double> %i.sn, %i.sp ; 2 uses
  %i.sr = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.sq, zeroinitializer
  %i.ss = fptrunc <2 x double> %i.sq to <2 x float>
  %i.st = select <2 x i1> %i.sr, <2 x float> %i.ss, <2 x float> zeroinitializer ; 5 uses
  %i.su = extractelement <2 x float> %i.sc, i64 0 ; 3 uses
  %i.sv = fdiv reassoc nsz arcp contract afn float %i.ol, %i.su
  %i.sw = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.sv)
  %i.sx = fpext reassoc nsz arcp contract afn float %i.sw to double
  %i.sy = fmul reassoc nsz arcp contract afn double %i.sx, 1.000000e-01
  %i.sz = fadd reassoc nsz arcp contract afn double %i.sy, %i.sf ; 2 uses
  %i.ta = fcmp reassoc nsz arcp contract afn ogt double %i.sz, 0.000000e+00
  %i.tb = fptrunc reassoc nsz arcp contract afn double %i.sz to float
  %i.tc = select i1 %i.ta, float %i.tb, float 0.000000e+00 ; 5 uses
  %i.td = shufflevector <2 x float> %i.st, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.te = insertelement <4 x float> %i.td, float 0.000000e+00, i64 3
  %i.tf = insertelement <4 x float> %i.te, float %i.tc, i64 2 ; 2 uses
  store <4 x float> %i.tf, ptr %i.j, align 16, !tbaa !12
  %i.tg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.se
  %i.th = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 5.000000e-02, float %i.tg) ; 3 uses
  %i.ti = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.sb
  %i.tj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.sa
  %i.tk = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.su
  %i.tl = fadd reassoc nsz arcp contract afn float %i.tj, %i.tk
  %i.tm = fadd reassoc nsz arcp contract afn float %i.tl, %i.ti
  %i.tn = fmul reassoc nsz arcp contract afn float %i.tm, f0x3FDDB3D7 ; 3 uses
  %i.to = fdiv reassoc nsz arcp contract afn float %i.tn, %i.sb ; 6 uses
  %i.tp = fdiv reassoc nsz arcp contract afn float %i.tn, %i.sa ; 5 uses
  %i.tq = fdiv reassoc nsz arcp contract afn float %i.tn, %i.su ; 6 uses
  %i.tr = fmul reassoc nsz arcp contract afn float %i.sb, %i.sb
  %foldExtExtBinop274 = fmul reassoc nsz arcp contract afn <2 x float> %i.sc, %i.sc
  %i.ts = extractelement <2 x float> %foldExtExtBinop274, i64 0
  %i.tt = fadd reassoc nsz arcp contract afn float %i.tr, %i.ts ; 3 uses
  %i.tu = fmul reassoc nsz arcp contract afn float %i.sa, %i.sa ; 2 uses
  %i.tv = fmul reassoc nsz arcp contract afn float %i.tu, 2.500000e-01
  %reass.mul.i.i = fmul reassoc nsz arcp contract afn float %i.tt, 6.250000e-02
  %i.tw = fadd reassoc nsz arcp contract afn float %reass.mul.i.i, %i.tv
  %i.tx = insertelement <2 x float> poison, float %i.tt, i64 0
  %i.ty = insertelement <2 x float> %i.tx, float %i.tw, i64 1
  %i.tz = fmul reassoc nsz arcp contract afn <2 x float> %i.ty, <float 2.500000e-01, float 1.000000e+00>
  %i.ua = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.tz)
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.uc = fdiv reassoc nsz arcp contract afn <4 x float> <float 0.000000e+00, float 5.000000e-01, float -5.000000e-01, float 2.500000e-01>, %i.ub ; 8 uses
  %i.ud = extractelement <4 x float> %i.uc, i64 3 ; 6 uses
  %i.ue = fdiv reassoc nsz arcp contract afn <4 x float> <float 5.000000e-01, float -5.000000e-01, float 0.000000e+00, float -5.000000e-01>, %i.ub ; 2 uses
  %i.uf = extractelement <4 x float> %i.ue, i64 3 ; 6 uses
  %i.ug = extractelement <4 x float> %i.uc, i64 0 ; 3 uses
  %i.uh = fmul reassoc nsz arcp contract afn float %i.ud, %i.ug ; 2 uses
  %i.ui = extractelement <4 x float> %i.uc, i64 2 ; 4 uses
  %i.uj = fmul reassoc nsz arcp contract afn float %i.uf, %i.ui
  %i.uk = fsub reassoc nsz arcp contract afn float %i.uh, %i.uj ; 4 uses
  %i.ul = extractelement <4 x float> %i.uc, i64 1 ; 4 uses
  %i.um = fsub reassoc nsz arcp contract afn float %i.ui, %i.ul
  %i.un = fmul reassoc nsz arcp contract afn float %i.um, %i.ud ; 4 uses
  %i.uo = fmul reassoc nsz arcp contract afn float %i.uf, %i.ul
  %i.up = fsub reassoc nsz arcp contract afn float %i.uo, %i.uh ; 4 uses
  %i.uq = fmul reassoc nsz arcp contract afn float %i.uk, %i.to
  %i.ur = fmul reassoc nsz arcp contract afn float %i.un, %i.tp
  %i.us = fmul reassoc nsz arcp contract afn float %i.up, %i.tq
  %i.ut = fadd reassoc nsz arcp contract afn float %i.us, %i.ur
  %i.uu = fadd reassoc nsz arcp contract afn float %i.ut, %i.uq ; 2 uses
  %i.uv = fcmp reassoc nsz arcp contract afn oeq float %i.uu, 0.000000e+00
  br i1 %i.uv, label %bb.ad, label %invert_matrix.exit225.i

invert_matrix.exit225.i:                          ; preds = %compute_wb_factors.exit.i
  %i.uw = fmul reassoc nsz arcp contract afn float %i.ug, %i.to
  %i.ux = fmul reassoc nsz arcp contract afn float %i.ul, %i.tp
  %i.uy = fsub reassoc nsz arcp contract afn float %i.uw, %i.ux
  %i.uz = fmul reassoc nsz arcp contract afn float %i.ul, %i.tq
  %i.va = fmul reassoc nsz arcp contract afn float %i.ui, %i.to
  %i.vb = fsub reassoc nsz arcp contract afn float %i.uz, %i.va
  %i.vc = fmul reassoc nsz arcp contract afn float %i.ui, %i.tp
  %i.vd = fmul reassoc nsz arcp contract afn float %i.ug, %i.tq
  %i.ve = fsub reassoc nsz arcp contract afn float %i.vc, %i.vd
  %i.vf = fmul reassoc nsz arcp contract afn float %i.ud, %i.tp ; 2 uses
  %i.vg = fmul reassoc nsz arcp contract afn float %i.uf, %i.to
  %i.vh = fsub reassoc nsz arcp contract afn float %i.vf, %i.vg
  %i.vi = fsub reassoc nsz arcp contract afn float %i.to, %i.tq
  %i.vj = fmul reassoc nsz arcp contract afn float %i.vi, %i.ud
  %i.vk = fmul reassoc nsz arcp contract afn float %i.uf, %i.tq
  %i.vl = fsub reassoc nsz arcp contract afn float %i.vk, %i.vf
  %i.vm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.uu ; 9 uses
  %i.vn = fmul reassoc nsz arcp contract afn float %i.vm, %i.uk
  %i.vo = fmul reassoc nsz arcp contract afn float %i.vm, %i.vl
  %i.vp = fmul reassoc nsz arcp contract afn float %i.vm, %i.ve
  %i.vq = fmul reassoc nsz arcp contract afn float %i.vm, %i.un
  %i.vr = fmul reassoc nsz arcp contract afn float %i.vj, %i.vm
  %i.vs = fmul reassoc nsz arcp contract afn float %i.vm, %i.vb
  %i.vt = fmul reassoc nsz arcp contract afn float %i.vm, %i.up
  %i.vu = fmul reassoc nsz arcp contract afn float %i.vm, %i.vh
  %i.vv = fmul reassoc nsz arcp contract afn float %i.vm, %i.uy
  br label %set_up_conversion_matrices.exit.i

bb.ad:                                            ; preds = %compute_wb_factors.exit.i
  %i.vw = fadd reassoc nsz arcp contract afn float %i.tt, %i.tu
  %i.vx = fmul reassoc nsz arcp contract afn float %i.vw, f0x3DE38E39
  %i.vy = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.vx)
  %i.vz = fdiv reassoc nsz arcp contract afn float f0x3EAAAAAB, %i.vy ; 10 uses
  %i.wa = fadd reassoc nsz arcp contract afn float %i.up, %i.un
  %i.wb = fadd reassoc nsz arcp contract afn float %i.wa, %i.uk
  %i.wc = fmul reassoc nsz arcp contract afn float %i.wb, %i.vz ; 2 uses
  %i.wd = fcmp reassoc nsz arcp contract afn oeq float %i.wc, 0.000000e+00
  br i1 %i.wd, label %set_up_conversion_matrices.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.we = insertelement <4 x float> poison, float %i.vz, i64 0
  %i.wf = shufflevector <4 x float> %i.we, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wg = fmul reassoc nsz arcp contract afn float %i.ud, %i.vz ; 3 uses
  %i.wh = fmul reassoc nsz arcp contract afn float %i.uf, %i.vz
  %i.wi = fsub reassoc nsz arcp contract afn <4 x float> %i.uc, %i.ue
  %i.wj = fmul reassoc nsz arcp contract afn <4 x float> %i.wi, %i.wf ; 4 uses
  %i.wk = fsub reassoc nsz arcp contract afn float %i.wg, %i.wg
  %i.wl = fsub reassoc nsz arcp contract afn float %i.wh, %i.wg
  %i.wm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.wc ; 9 uses
  %i.wn = fmul reassoc nsz arcp contract afn float %i.wm, %i.uk
  %i.wo = fmul reassoc nsz arcp contract afn float %i.wm, %i.wl
  %i.wp = extractelement <4 x float> %i.wj, i64 2
  %i.wq = fmul reassoc nsz arcp contract afn float %i.wm, %i.wp
  %i.wr = fmul reassoc nsz arcp contract afn float %i.wm, %i.un
  %i.ws = fmul reassoc nsz arcp contract afn float %i.wm, %i.wk
  %i.wt = extractelement <4 x float> %i.wj, i64 1
  %i.wu = fmul reassoc nsz arcp contract afn float %i.wm, %i.wt
  %i.wv = fmul reassoc nsz arcp contract afn float %i.wm, %i.up
  %i.ww = extractelement <4 x float> %i.wj, i64 3
  %i.wx = fmul reassoc nsz arcp contract afn float %i.wm, %i.ww
  %i.wy = extractelement <4 x float> %i.wj, i64 0
  %i.wz = fmul reassoc nsz arcp contract afn float %i.wm, %i.wy
  br label %set_up_conversion_matrices.exit.i

set_up_conversion_matrices.exit.i:                ; preds = %bb.ae, %bb.ad, %invert_matrix.exit225.i
  %.sroa.1362.0.i = phi nsz float [ %i.vz, %bb.ad ], [ %i.vz, %bb.ae ], [ %i.tq, %invert_matrix.exit225.i ]
  %.sroa.860.0.i = phi nsz float [ %i.vz, %bb.ad ], [ %i.vz, %bb.ae ], [ %i.tp, %invert_matrix.exit225.i ]
  %.sroa.058.0.i = phi nsz float [ %i.vz, %bb.ad ], [ %i.vz, %bb.ae ], [ %i.to, %invert_matrix.exit225.i ]
  %.sroa.0.0.i = phi nsz float [ 0.000000e+00, %bb.ad ], [ %i.wn, %bb.ae ], [ %i.vn, %invert_matrix.exit225.i ]
  %.sroa.8.0.i = phi nsz float [ 0.000000e+00, %bb.ad ], [ %i.wo, %bb.ae ], [ %i.vo, %invert_matrix.exit225.i ]
  %.sroa.13.0.i = phi nsz float [ 0.000000e+00, %bb.ad ], [ %i.wq, %bb.ae ], [ %i.vp, %invert_matrix.exit225.i ]
  %.sroa.22.0.i = phi nsz float [ 0.000000e+00, %bb.ad ], [ %i.wr, %bb.ae ], [ %i.vq, %invert_matrix.exit225.i ]
  %.sroa.27.0.i = phi nsz float [ 0.000000e+00, %bb.ad ], [ %i.ws, %bb.ae ], [ %i.vr, %invert_matrix.exit225.i ]
  %.sroa.32.0.i = phi nsz float [ 0.000000e+00, %bb.ad ], [ %i.wu, %bb.ae ], [ %i.vs, %invert_matrix.exit225.i ]
  %.sroa.41.0.i = phi nsz float [ 0.000000e+00, %bb.ad ], [ %i.wv, %bb.ae ], [ %i.vt, %invert_matrix.exit225.i ]
  %.sroa.46.0.i = phi nsz float [ 0.000000e+00, %bb.ad ], [ %i.wx, %bb.ae ], [ %i.vu, %invert_matrix.exit225.i ]
  %.sroa.51.0.i = phi nsz float [ 0.000000e+00, %bb.ad ], [ %i.wz, %bb.ae ], [ %i.vv, %invert_matrix.exit225.i ]
  %i.xa = getelementptr inbounds nuw i8, ptr %i.w, i64 296 ; 3 uses
  %i.xb = load i32, ptr %i.xa, align 8, !tbaa !137
  %i.xc = icmp eq i32 %i.xb, 0                    ; 2 uses
  %i.xd = select reassoc nsz arcp contract afn i1 %i.xc, float 1.000000e+00, float 2.500000e+00
  %i.xe = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.xf = load float, ptr %i.xe, align 8, !tbaa !306
  %i.xg = fmul reassoc nsz arcp contract afn float %i.xf, %i.ol
  %i.xh = fmul reassoc nsz arcp contract afn float %i.xg, %i.xd ; 12 uses
  %i.xi = insertelement <2 x float> poison, float %i.xh, i64 0
  %i.xj = shufflevector <2 x float> %i.xi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xk = insertelement <2 x float> poison, float %i.sb, i64 0
  %i.xl = insertelement <2 x float> %i.xk, float %i.sa, i64 1
  %i.xm = fmul reassoc nsz arcp contract afn <2 x float> %i.xj, %i.xl ; 7 uses
  %i.xn = extractelement <2 x float> %i.xm, i64 0
  %i.xo = extractelement <2 x float> %i.xm, i64 1 ; 2 uses
  %i.xp = fmul reassoc nsz arcp contract afn <2 x float> %i.xj, %i.sc ; 5 uses
  %i.xq = extractelement <2 x float> %i.xp, i64 0 ; 2 uses
  %i.xr = shufflevector <2 x float> %i.xm, <2 x float> %i.xp, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x float> %i.xr, ptr %i.i, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  %i.xs = getelementptr inbounds nuw i8, ptr %i.w, i64 36 ; 2 uses
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !12 ; 4 uses
  %i.xu = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.xt, i64 0
  %i.xv = shufflevector <4 x float> %i.xu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.xw = insertelement <4 x float> %i.xr, float 1.000000e+00, i64 3
  %i.xx = fmul reassoc nsz arcp contract afn <4 x float> %i.xv, %i.xw ; 6 uses
  %i.xy = fmul reassoc nsz arcp contract afn float %i.xt, %i.xo ; 2 uses
  store <4 x float> %i.xx, ptr %i.k, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  %i.xz = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.ya = load float, ptr %i.xz, align 8, !tbaa !12 ; 6 uses
  %i.yb = fmul reassoc nsz arcp contract afn float %i.ya, %i.xn ; 2 uses
  store float %i.yb, ptr %i.l, align 16, !tbaa !12
  %i.yc = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.yd = fmul reassoc nsz arcp contract afn float %i.ya, %i.xo ; 2 uses
  store float %i.yd, ptr %i.yc, align 4, !tbaa !12
  %i.ye = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.yf = fmul reassoc nsz arcp contract afn float %i.ya, %i.xq ; 2 uses
  store float %i.yf, ptr %i.ye, align 8, !tbaa !12
  %i.yg = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store float 0.000000e+00, ptr %i.yg, align 4, !tbaa !12
  %i.yh = getelementptr inbounds nuw i8, ptr %i.w, i64 292 ; 2 uses
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !134
  %.not196.i = icmp eq i32 %i.yi, 0
  %i.yj = load ptr, ptr %i.g, align 8, !tbaa !303 ; 14 uses
  br i1 %.not196.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %set_up_conversion_matrices.exit.i
  %i.yk = extractelement <4 x float> %i.xx, i64 0 ; 2 uses
  %i.yl = fdiv reassoc nsz arcp contract afn float %i.yb, %i.yk ; 2 uses
  %i.ym = fmul reassoc nsz arcp contract afn float %i.yl, %i.yl
  %i.yn = fadd reassoc nsz arcp contract afn float %i.ym, 3.750000e-01 ; 2 uses
  %i.yo = fdiv reassoc nsz arcp contract afn float %i.yd, %i.xy ; 2 uses
  %i.yp = fmul reassoc nsz arcp contract afn float %i.yo, %i.yo
  %i.yq = fadd reassoc nsz arcp contract afn float %i.yp, 3.750000e-01 ; 2 uses
  %i.yr = extractelement <4 x float> %i.xx, i64 2 ; 2 uses
  %i.ys = fdiv reassoc nsz arcp contract afn float %i.yf, %i.yr ; 2 uses
  %i.yt = fmul reassoc nsz arcp contract afn float %i.ys, %i.ys
  %i.yu = fadd reassoc nsz arcp contract afn float %i.yt, 3.750000e-01 ; 2 uses
  %i.yv = shl nsw i64 %i.qp, 2
  %i.yw = mul i64 %i.yv, %i.qq                    ; 4 uses
  %.not.i201.i = icmp eq i64 %i.yw, 0
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.asg = call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.asf, <4 x float> %i.app)
  %i.ash = extractelement <8 x float> %i.aqz, i64 7
  %i.asi = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ash, float %i.apm)
  %i.asj = insertelement <8 x float> poison, float %i.asa, i64 0
  %i.ask = insertelement <8 x float> %i.asj, float %i.asc, i64 1
  %i.asl = insertelement <8 x float> %i.ask, float %i.ase, i64 2
  %i.asm = shufflevector <4 x float> %i.asg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.asn = shufflevector <8 x float> %i.asl, <8 x float> %i.asm, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.aso = insertelement <8 x float> %i.asn, float %i.asi, i64 7
  %i.asp = extractelement <8 x float> %i.ari, i64 0
  %i.asq = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.asp, float %i.aos)
  %i.asr = extractelement <8 x float> %i.ari, i64 1
  %i.ass = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.asr, float %i.aos)
  %i.ast = extractelement <8 x float> %i.ari, i64 2
  %i.asu = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ast, float %i.aos)
  %i.asv = shufflevector <8 x float> %i.ari, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.asw = call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.asv, <4 x float> %i.apo)
  %i.asx = extractelement <8 x float> %i.ari, i64 7
  %i.asy = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.asx, float %i.aos)
  %i.asz = insertelement <8 x float> poison, float %i.asq, i64 0
  %i.ata = insertelement <8 x float> %i.asz, float %i.ass, i64 1
  %i.atb = insertelement <8 x float> %i.ata, float %i.asu, i64 2
  %i.atc = shufflevector <4 x float> %i.asw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atd = shufflevector <8 x float> %i.atb, <8 x float> %i.atc, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.ate = insertelement <8 x float> %i.atd, float %i.asy, i64 7
  %i.atf = fsub reassoc nsz arcp contract afn <8 x float> %i.ate, %broadcast.splat215
  %i.atg = shufflevector <8 x float> %i.ary, <8 x float> %i.aso, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ath = fsub reassoc nsz arcp contract afn <16 x float> %i.atg, %i.apr
  %i.ati = shufflevector <8 x float> %i.atf, <8 x float> %broadcast.splat183, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec222 = shufflevector <16 x float> %i.ath, <16 x float> %i.ati, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec222, ptr %i.aps, align 4, !tbaa !12
  %index.next223 = add nuw i64 %index217, 8       ; 2 uses
  %i.atj = icmp eq i64 %index.next223, %n.vec181
  br i1 %i.atj, label %.preheader49.preheader.i.i.preheader, label %vector.body216, !llvm.loop !285

.preheader49.preheader.i.i.preheader:             ; preds = %vector.body216, %.preheader49.preheader.i.preheader.i
  %.04653.i.i.ph = phi i64 [ 0, %.preheader49.preheader.i.preheader.i ], [ %i.apk, %vector.body216 ]
  %i.atk = insertelement <2 x float> poison, float %i.aoa, i64 0
  %i.atl = shufflevector <2 x float> %i.atk, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader49.preheader.i.i

.preheader49.preheader.i.i:                       ; preds = %.preheader49.preheader.i.i.preheader, %.preheader49.preheader.i.i
  %.04653.i.i = phi i64 [ %i.auq, %.preheader49.preheader.i.i ], [ %.04653.i.i.ph, %.preheader49.preheader.i.i.preheader ] ; 2 uses
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.04653.i.i ; 5 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 4
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atm, i64 8 ; 2 uses
  %i.atp = load float, ptr %i.atm, align 4, !tbaa !12 ; 3 uses
  %.reass82 = fmul reassoc nsz arcp contract afn float %i.atp, %factor.op.fmul81
  %i.atq = load float, ptr %i.atn, align 4, !tbaa !12 ; 3 uses
  %.reass84 = fmul reassoc nsz arcp contract afn float %i.atq, %factor.op.fmul83
  %i.atr = load float, ptr %i.ato, align 4, !tbaa !12 ; 3 uses
  %.reass88 = fmul reassoc nsz arcp contract afn float %i.atp, %factor.op.fmul87
  %.reass90 = fmul reassoc nsz arcp contract afn float %i.atq, %factor.op.fmul89
  %.reass94 = fmul reassoc nsz arcp contract afn float %i.atp, %factor.op.fmul93
  %.reass96 = fmul reassoc nsz arcp contract afn float %i.atq, %factor.op.fmul95
  %.reass92 = fmul reassoc nsz arcp contract afn float %i.atr, %factor.op.fmul91
  %reass.add51 = fadd reassoc nsz arcp contract afn float %.reass96, %.reass94
  %reass.add52 = fadd reassoc nsz arcp contract afn float %reass.add51, %.reass92 ; 2 uses
  %i.ats = fcmp reassoc nsz arcp contract afn ogt float %reass.add52, 0.000000e+00
  %spec.select.2.i222.i = select reassoc nsz arcp contract afn i1 %i.ats, float %reass.add52, float 0.000000e+00 ; 3 uses
  %i.att = fmul reassoc nsz arcp contract afn float %spec.select.2.i222.i, %spec.select.2.i222.i
  %i.atu = fadd reassoc nsz arcp contract afn float %i.att, %i.aom ; 2 uses
  %i.atv = fcmp reassoc nsz arcp contract afn ogt float %i.atu, 0.000000e+00
  %i.atw = select reassoc nsz arcp contract afn i1 %i.atv, float %i.atu, float 0.000000e+00
  %i.atx = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.atw)
  %i.aty = fadd reassoc nsz arcp contract afn float %i.atx, %spec.select.2.i222.i
  %i.atz = fmul reassoc nsz arcp contract afn float %i.apa, %i.aty
  %i.aua = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.atz, float %i.aos)
  %.reass80 = fmul reassoc nsz arcp contract afn float %i.atr, %factor.op.fmul79
  %reass.add45 = fadd reassoc nsz arcp contract afn float %.reass84, %.reass82
  %reass.add46 = fadd reassoc nsz arcp contract afn float %reass.add45, %.reass80
  %.reass86 = fmul reassoc nsz arcp contract afn float %i.atr, %factor.op.fmul85
  %reass.add48 = fadd reassoc nsz arcp contract afn float %.reass90, %.reass88
  %reass.add49 = fadd reassoc nsz arcp contract afn float %reass.add48, %.reass86
  %i.aub = insertelement <2 x float> poison, float %reass.add46, i64 0
  %i.auc = insertelement <2 x float> %i.aub, float %reass.add49, i64 1 ; 2 uses
  %i.aud = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.auc, zeroinitializer
  %i.aue = select <2 x i1> %i.aud, <2 x float> %i.auc, <2 x float> zeroinitializer ; 3 uses
  %i.auf = fmul reassoc nsz arcp contract afn <2 x float> %i.aue, %i.aue
  %i.aug = fadd reassoc nsz arcp contract afn <2 x float> %i.auf, %i.aol ; 2 uses
  %i.auh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.aug, zeroinitializer
  %i.aui = select <2 x i1> %i.auh, <2 x float> %i.aug, <2 x float> zeroinitializer
  %i.auj = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.aui)
  %i.auk = fadd reassoc nsz arcp contract afn <2 x float> %i.auj, %i.aue
  %i.aul = fmul reassoc nsz arcp contract afn <2 x float> %i.aoy, %i.auk
  %i.aum = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.aul, <2 x float> %i.aop)
  %i.aun = fsub reassoc nsz arcp contract afn <2 x float> %i.aum, %i.atl
  store <2 x float> %i.aun, ptr %i.atm, align 4, !tbaa !12
  %i.auo = fsub reassoc nsz arcp contract afn float %i.aua, %i.aoa
  store float %i.auo, ptr %i.ato, align 4, !tbaa !12
  %i.aup = getelementptr inbounds nuw i8, ptr %i.atm, i64 12
  store float %i.apd, ptr %i.aup, align 4, !tbaa !12
  %i.auq = add nuw i64 %.04653.i.i, 4             ; 2 uses
  %i.aur = icmp ult i64 %i.auq, %i.apc
  br i1 %i.aur, label %.preheader49.preheader.i.i, label %backtransform_Y0U0V0.exit.i, !llvm.loop !286

backtransform_Y0U0V0.exit.i:                      ; preds = %.preheader49.preheader.i.i, %bb.au, %bb.at, %bb.ar
  %i.aus = load ptr, ptr %i.f, align 8, !tbaa !303
  call void @free(ptr noundef %i.aus) #18
  %i.aut = load ptr, ptr %i.h, align 8, !tbaa !303
  call void @free(ptr noundef %i.aut) #18
  %i.auu = load ptr, ptr %i.g, align 8, !tbaa !303
  call void @free(ptr noundef %i.auu) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %bb.av

bb.av:                                            ; preds = %backtransform_Y0U0V0.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %process_nlmeans.exit

bb.aw:                                            ; preds = %bb.a
  %i.auv = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.auw = load ptr, ptr %i.auv, align 16, !tbaa !138 ; 4 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !307
  %i.auz = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ava = load i32, ptr %i.auz, align 4, !tbaa !308
  %i.avb = sext i32 %i.auy to i64                 ; 2 uses
  %i.avc = sext i32 %i.ava to i64                 ; 2 uses
  %i.avd = mul nsw i64 %i.avc, %i.avb             ; 4 uses
  %i.ave = shl nsw i64 %i.avb, 2
  %i.avf = mul i64 %i.ave, %i.avc                 ; 2 uses
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.avf) #18
  %i.avg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.avh = load ptr, ptr %i.avg, align 8, !tbaa !292
  %i.avi = getelementptr i8, ptr %i.avh, i64 644
  %.val.i28 = load i32, ptr %i.avi, align 4, !tbaa !300
  %i.avj = and i32 %.val.i28, 4
  %i.avk = icmp ne i32 %i.avj, 0
  %i.avl = icmp eq ptr %i.auw, null
  %or.cond.i29 = select i1 %i.avk, i1 true, i1 %i.avl
  br i1 %or.cond.i29, label %process_nlmeans.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.avm = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %5, i32 noundef 1048580, ptr noundef nonnull %i.a, i32 noundef 0) #18
  %.not.i30 = icmp eq i32 %i.avm, 0
  br i1 %.not.i30, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.val65.i = load ptr, ptr %i.avg, align 8, !tbaa !292 ; 5 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %.val65.i, i64 256
  %i.avo = load <2 x float>, ptr %i.avn, align 16, !tbaa !12 ; 2 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %.val65.i, i64 264
  %i.avq = load float, ptr %i.avp, align 8, !tbaa !12 ; 2 uses
  %i.avr = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.avq, <2 x float> %i.avo)
  %i.avs = fmul reassoc nsz arcp contract afn float %i.avr, f0x3EAAAAAB ; 4 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %i.w, i64 288
  %i.avu = load i32, ptr %i.avt, align 8, !tbaa !302
  %.not.i.i31 = icmp eq i32 %i.avu, 0
  br i1 %.not.i.i31, label %.preheader.i.i44, label %bb.az

.preheader.i.i44:                                 ; preds = %bb.ay
  %i.avv = getelementptr inbounds nuw i8, ptr %.val65.i, i64 272
  %i.avw = load <2 x float>, ptr %i.avv, align 16, !tbaa !12
  %i.avx = getelementptr inbounds nuw i8, ptr %.val65.i, i64 280
  %i.avy = getelementptr inbounds nuw i8, ptr %.val65.i, i64 284
  %i.avz = load float, ptr %i.avy, align 4, !tbaa !12
  %i.awa = load float, ptr %i.avx, align 8, !tbaa !12
  %i.awb = fmul reassoc nsz arcp contract afn float %i.avz, 0.000000e+00
  br label %compute_wb_factors.exit.i34

bb.az:                                            ; preds = %bb.ay
  %i.awc = fcmp reassoc nsz arcp contract afn oeq float %i.avs, 0.000000e+00
  br i1 %i.awc, label %compute_wb_factors.exit.i34, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.awd = getelementptr inbounds nuw i8, ptr %i.w, i64 284
  %i.awe = load i32, ptr %i.awd, align 4, !tbaa !304
  %.not31.i.i32 = icmp eq i32 %i.awe, 0           ; 2 uses
  %i.awf = insertelement <2 x float> poison, float %i.avs, i64 0
  %i.awg = shufflevector <2 x float> %i.awf, <2 x float> poison, <2 x i32> zeroinitializer
  %spec.select300 = select nsz i1 %.not31.i.i32, float %i.avs, float %i.avq
  %spec.select301 = select i1 %.not31.i.i32, <2 x float> %i.awg, <2 x float> %i.avo
  br label %compute_wb_factors.exit.i34

compute_wb_factors.exit.i34:                      ; preds = %bb.ba, %bb.az, %.preheader.i.i44
  %.sroa.26.0.i = phi nsz float [ %i.awb, %.preheader.i.i44 ], [ 1.000000e+00, %bb.az ], [ %i.avs, %bb.ba ]
  %.sroa.18.0.i = phi nsz float [ %i.awa, %.preheader.i.i44 ], [ 1.000000e+00, %bb.az ], [ %spec.select300, %bb.ba ] ; 2 uses
  %i.awh = phi <2 x float> [ %i.avw, %.preheader.i.i44 ], [ splat (float 1.000000e+00), %bb.az ], [ %spec.select301, %bb.ba ] ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.awj = load float, ptr %i.awi, align 4, !tbaa !305 ; 2 uses
  %i.awk = fpext reassoc nsz arcp contract afn float %i.awj to double ; 2 uses
  %i.awl = call reassoc nsz arcp contract afn <2 x float> @llvm.log.v2f32(<2 x float> %i.awh)
  %i.awm = call reassoc nsz arcp contract afn float @llvm.log.f32(float %.sroa.18.0.i)
  %i.awn = fpext reassoc nsz arcp contract afn float %i.awm to double
  %i.awo = fmul reassoc nsz arcp contract afn double %i.awn, 1.000000e-01
  %i.awp = fsub reassoc nsz arcp contract afn double %i.awk, %i.awo ; 2 uses
  %i.awq = fcmp reassoc nsz arcp contract afn ogt double %i.awp, 0.000000e+00
  %i.awr = fptrunc reassoc nsz arcp contract afn double %i.awp to float
  %i.aws = select i1 %i.awq, float %i.awr, float 0.000000e+00 ; 2 uses
  %i.awt = load i32, ptr %i.aux, align 4, !tbaa !307
  %i.awu = load i32, ptr %i.auz, align 4, !tbaa !308
  %i.awv = sext i32 %i.awt to i64
  %i.aww = sext i32 %i.awu to i64
  %i.awx = fpext <2 x float> %i.awl to <2 x double>
  %i.awy = fmul reassoc nsz arcp contract afn <2 x double> %i.awx, splat (double 1.000000e-01)
  %i.awz = insertelement <2 x double> poison, double %i.awk, i64 0
  %i.axa = shufflevector <2 x double> %i.awz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.axb = fsub reassoc nsz arcp contract afn <2 x double> %i.axa, %i.awy ; 2 uses
  %i.axc = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.axb, zeroinitializer
  %i.axd = fptrunc <2 x double> %i.axb to <2 x float>
  %i.axe = select <2 x i1> %i.axc, <2 x float> %i.axd, <2 x float> zeroinitializer ; 2 uses
  %i.axf = fmul reassoc nsz arcp contract afn <2 x float> %i.axe, splat (float 5.000000e-01)
  %i.axg = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.axf ; 3 uses
  %i.axh = fmul reassoc nsz arcp contract afn float %i.aws, 5.000000e-01
  %i.axi = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.axh ; 3 uses
  %i.axj = shl nsw i64 %i.awv, 2
  %i.axk = mul i64 %i.axj, %i.aww                 ; 2 uses
  %.not.i66.i = icmp eq i64 %i.axk, 0
  br i1 %.not.i66.i, label %precondition_v2.exit.i, label %.lr.ph.preheader.i.i36

.lr.ph.preheader.i.i36:                           ; preds = %compute_wb_factors.exit.i34
  %i.axl = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.axm = load float, ptr %i.axl, align 8, !tbaa !12
  %i.axn = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.axo = load float, ptr %i.axn, align 8, !tbaa !306
  %i.axp = insertelement <2 x float> poison, float %i.axo, i64 0
  %i.axq = shufflevector <2 x float> %i.axp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.axr = insertelement <2 x float> poison, float %.sroa.18.0.i, i64 0
  %i.axs = insertelement <2 x float> %i.axr, float %.sroa.26.0.i, i64 1
  %i.axt = fmul reassoc nsz arcp contract afn <2 x float> %i.axq, %i.axs ; 3 uses
  %i.axu = fmul reassoc nsz arcp contract afn <2 x float> %i.axq, %i.awh ; 3 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.axw = load float, ptr %i.axv, align 4, !tbaa !12
  %i.axx = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.awj
  %i.axy = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 5.000000e-02, float %i.axx)
  %i.axz = fmul reassoc nsz arcp contract afn float %i.axw, %i.axy
  %i.aya = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.axz)
  %i.ayb = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aws, i64 2
  %i.ayc = shufflevector <2 x float> %i.axe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ayd = shufflevector <4 x float> %i.ayc, <4 x float> %i.ayb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aye = fsub reassoc nsz arcp contract afn <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>, %i.ayd
  %i.ayf = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.aya, i64 0
  %i.ayg = shufflevector <4 x float> %i.ayf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ayh = fmul reassoc nsz arcp contract afn <4 x float> %i.ayg, %i.aye ; 3 uses
  %i.ayi = insertelement <2 x float> poison, float %i.axm, i64 0
  %i.ayj = shufflevector <2 x float> %i.ayi, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.ayk = add i64 %i.axk, -4                     ; 3 uses
  %i.ayl = lshr exact i64 %i.ayk, 2
  %i.aym = add nuw nsw i64 %i.ayl, 1              ; 2 uses
  %i.ayn = icmp eq i64 %i.ayk, 0
  br i1 %i.ayn, label %.lr.ph.i.i37.epil.preheader, label %.lr.ph.preheader.i.i36.new

.lr.ph.preheader.i.i36.new:                       ; preds = %.lr.ph.preheader.i.i36
  %unroll_iter294 = and i64 %i.aym, 9223372036854775806
  %i.ayo = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.axt
  %i.ayp = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.axu
  %i.ayq = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ayh
  %i.ayr = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.axt
  %i.ays = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.axu
  %i.ayt = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ayh
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37, %.lr.ph.preheader.i.i36.new
  %.04247.i.i38 = phi i64 [ 0, %.lr.ph.preheader.i.i36.new ], [ %i.bap, %.lr.ph.i.i37 ] ; 4 uses
  %niter295 = phi i64 [ 0, %.lr.ph.preheader.i.i36.new ], [ %niter295.next.1, %.lr.ph.i.i37 ]
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i38 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 8
  %i.ayw = load <2 x float>, ptr %i.ayv, align 4, !tbaa !12
  %i.ayx = fmul reassoc nsz arcp contract afn <2 x float> %i.ayw, %i.ayo
  %i.ayy = fadd reassoc nsz arcp contract afn <2 x float> %i.ayx, %i.ayj ; 2 uses
  %i.ayz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ayy, zeroinitializer
  %i.aza = select <2 x i1> %i.ayz, <2 x float> %i.ayy, <2 x float> zeroinitializer ; 2 uses
  %i.azb = extractelement <2 x float> %i.aza, i64 0
  %i.azc = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.azb, float %i.axi)
  %i.azd = load <2 x float>, ptr %i.ayu, align 4, !tbaa !12
  %i.aze = fmul reassoc nsz arcp contract afn <2 x float> %i.azd, %i.ayp
  %i.azf = fadd reassoc nsz arcp contract afn <2 x float> %i.aze, %i.ayj ; 2 uses
  %i.azg = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.azf, zeroinitializer
  %i.azh = select <2 x i1> %i.azg, <2 x float> %i.azf, <2 x float> zeroinitializer
  %i.azi = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.azh, <2 x float> %i.axg)
  %i.azj = insertelement <4 x float> poison, float %i.azc, i64 2
  %i.azk = shufflevector <2 x float> %i.aza, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.azl = shufflevector <4 x float> %i.azj, <4 x float> %i.azk, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.azm = shufflevector <2 x float> %i.azi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.azn = shufflevector <4 x float> %i.azm, <4 x float> %i.azl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.azo = fmul reassoc nsz arcp contract afn <4 x float> %i.azn, splat (float 2.000000e+00)
  %i.azp = fmul reassoc nsz arcp contract afn <4 x float> %i.azo, %i.ayq
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.04247.i.i38
  store <4 x float> %i.azp, ptr %i.azq, align 16, !tbaa !34, !alias.scope !338, !nontemporal !312
  %i.azr = or disjoint i64 %.04247.i.i38, 4       ; 2 uses
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.azr ; 2 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azs, i64 8
  %i.azu = load <2 x float>, ptr %i.azt, align 4, !tbaa !12
  %i.azv = fmul reassoc nsz arcp contract afn <2 x float> %i.azu, %i.ayr
  %i.azw = fadd reassoc nsz arcp contract afn <2 x float> %i.azv, %i.ayj ; 2 uses
  %i.azx = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.azw, zeroinitializer
  %i.azy = select <2 x i1> %i.azx, <2 x float> %i.azw, <2 x float> zeroinitializer ; 2 uses
  %i.azz = extractelement <2 x float> %i.azy, i64 0
  %i.baa = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.azz, float %i.axi)
  %i.bab = load <2 x float>, ptr %i.azs, align 4, !tbaa !12
  %i.bac = fmul reassoc nsz arcp contract afn <2 x float> %i.bab, %i.ays
  %i.bad = fadd reassoc nsz arcp contract afn <2 x float> %i.bac, %i.ayj ; 2 uses
  %i.bae = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bad, zeroinitializer
  %i.baf = select <2 x i1> %i.bae, <2 x float> %i.bad, <2 x float> zeroinitializer
  %i.bag = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.baf, <2 x float> %i.axg)
  %i.bah = insertelement <4 x float> poison, float %i.baa, i64 2
  %i.bai = shufflevector <2 x float> %i.azy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.baj = shufflevector <4 x float> %i.bah, <4 x float> %i.bai, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.bak = shufflevector <2 x float> %i.bag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bal = shufflevector <4 x float> %i.bak, <4 x float> %i.baj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bam = fmul reassoc nsz arcp contract afn <4 x float> %i.bal, splat (float 2.000000e+00)
  %i.ban = fmul reassoc nsz arcp contract afn <4 x float> %i.bam, %i.ayt
  %i.bao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.azr
  store <4 x float> %i.ban, ptr %i.bao, align 16, !tbaa !34, !alias.scope !338, !nontemporal !312
  %i.bap = add nuw i64 %.04247.i.i38, 8           ; 2 uses
  %niter295.next.1 = add i64 %niter295, 2         ; 2 uses
  %niter295.ncmp.1.not = icmp eq i64 %niter295.next.1, %unroll_iter294
  br i1 %niter295.ncmp.1.not, label %precondition_v2.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i37

precondition_v2.exit.i.loopexit.unr-lcssa:        ; preds = %.lr.ph.i.i37
  %i.baq = and i64 %i.ayk, 4
  %lcmp.mod292.not.not = icmp eq i64 %i.baq, 0
  br i1 %lcmp.mod292.not.not, label %.lr.ph.i.i37.epil.preheader, label %precondition_v2.exit.i

.lr.ph.i.i37.epil.preheader:                      ; preds = %precondition_v2.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i36
  %.04247.i.i38.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i36 ], [ %i.bap, %precondition_v2.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod293 = trunc i64 %i.aym to i1
  call void @llvm.assume(i1 %lcmp.mod293)
  %i.bar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i38.epil.init ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 8
  %i.bat = load <2 x float>, ptr %i.bas, align 4, !tbaa !12
  %i.bau = fdiv reassoc nsz arcp contract afn <2 x float> %i.bat, %i.axt
  %i.bav = fadd reassoc nsz arcp contract afn <2 x float> %i.bau, %i.ayj ; 2 uses
  %i.baw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bav, zeroinitializer
  %i.bax = select <2 x i1> %i.baw, <2 x float> %i.bav, <2 x float> zeroinitializer ; 2 uses
  %i.bay = extractelement <2 x float> %i.bax, i64 0
  %i.baz = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bay, float %i.axi)
  %i.bba = load <2 x float>, ptr %i.bar, align 4, !tbaa !12
  %i.bbb = fdiv reassoc nsz arcp contract afn <2 x float> %i.bba, %i.axu
  %i.bbc = fadd reassoc nsz arcp contract afn <2 x float> %i.bbb, %i.ayj ; 2 uses
  %i.bbd = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bbc, zeroinitializer
  %i.bbe = select <2 x i1> %i.bbd, <2 x float> %i.bbc, <2 x float> zeroinitializer
  %i.bbf = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.bbe, <2 x float> %i.axg)
  %i.bbg = insertelement <4 x float> poison, float %i.baz, i64 2
  %i.bbh = shufflevector <2 x float> %i.bax, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bbi = shufflevector <4 x float> %i.bbg, <4 x float> %i.bbh, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.bbj = shufflevector <2 x float> %i.bbf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bbk = shufflevector <4 x float> %i.bbj, <4 x float> %i.bbi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bbl = fmul reassoc nsz arcp contract afn <4 x float> %i.bbk, splat (float 2.000000e+00)
  %i.bbm = fdiv reassoc nsz arcp contract afn <4 x float> %i.bbl, %i.ayh
  %i.bbn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.04247.i.i38.epil.init
  store <4 x float> %i.bbm, ptr %i.bbn, align 16, !tbaa !34, !alias.scope !338, !nontemporal !312
  br label %precondition_v2.exit.i

precondition_v2.exit.i:                           ; preds = %.lr.ph.i.i37.epil.preheader, %precondition_v2.exit.i.loopexit.unr-lcssa, %compute_wb_factors.exit.i34
  call void @llvm.x86.sse.sfence()
  %i.bbo = load ptr, ptr %i.a, align 8, !tbaa !303
  call fastcc void @sum_rec(i64 noundef %i.avd, ptr noundef %i.bbo, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.bbp = uitofp reassoc nsz arcp contract afn i64 %i.avd to float
  %i.bbq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bbr = load <4 x float>, ptr %3, align 4, !tbaa !12
  %i.bbs = insertelement <4 x float> poison, float %i.bbp, i64 0
  %i.bbt = shufflevector <4 x float> %i.bbs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bbu = fdiv reassoc nsz arcp contract afn <4 x float> %i.bbr, %i.bbt
  store <4 x float> %i.bbu, ptr %i.b, align 16, !tbaa !12
  %i.bbv = load ptr, ptr %i.a, align 8, !tbaa !303
  call fastcc void @variance_rec(i64 noundef %i.avd, ptr noundef %i.bbv, ptr noundef nonnull %3, ptr noundef %i.b)
  %i.bbw = add nsw i64 %i.avd, -1
  %i.bbx = uitofp reassoc nsz arcp contract afn i64 %i.bbw to float ; 2 uses
  %i.bby = load float, ptr %3, align 4, !tbaa !12
  %i.bbz = fdiv reassoc nsz arcp contract afn float %i.bby, %i.bbx
  %i.bca = load <2 x float>, ptr %i.bbq, align 4, !tbaa !12
  %i.bcb = insertelement <2 x float> poison, float %i.bbx, i64 0
  %i.bcc = shufflevector <2 x float> %i.bcb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bcd = fdiv reassoc nsz arcp contract afn <2 x float> %i.bca, %i.bcc ; 2 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.auw, i64 2232
  store float %i.bbz, ptr %i.bce, align 8, !tbaa !144
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.auw, i64 2248
  %i.bcg = extractelement <2 x float> %i.bcd, i64 0
  store float %i.bcg, ptr %i.bcf, align 8, !tbaa !145
  %i.bch = getelementptr inbounds nuw i8, ptr %i.auw, i64 2264
  %i.bci = extractelement <2 x float> %i.bcd, i64 1
  store float %i.bci, ptr %i.bch, align 8, !tbaa !146
  call void @dt_iop_image_copy(ptr noundef nonnull %3, ptr noundef %2, i64 noundef %i.avf) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.bb

bb.bb:                                            ; preds = %precondition_v2.exit.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %process_nlmeans.exit

process_nlmeans.exit:                             ; preds = %bb.bb, %bb.aw, %bb.av, %bb.x, %bb.o, %bb.b
  ret void
}

declare void @eaw_dn_decompose(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @eaw_synthesize(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @init(ptr noundef %0) local_unnamed_addr #1 {
.preheader:
  tail call void @dt_iop_default_init(ptr noundef %0) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !73  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %gep.3.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 156
end_hunk_2
begin_hunk_3_@sum_rec:bb.a
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = fadd reassoc nsz arcp contract afn float %i.q, %i.ab
  store float %i.ac, ptr %i.b, align 4, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12
  %i.af = fadd reassoc nsz arcp contract afn float %i.t, %i.ae
  store float %i.af, ptr %i.c, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !12
  %i.ai = fadd reassoc nsz arcp contract afn float %i.w, %i.ah
  store float %i.ai, ptr %i.d, align 4, !tbaa !12
  br label %common.ret

common.ret:                                       ; preds = %.preheader37.preheader, %.preheader.2, %.preheader.1, %.preheader.preheader, %.loopexit.loopexit43
  ret void

.loopexit.loopexit43:                             ; preds = %bb.a
  %i.aj = lshr i64 %0, 1                          ; 3 uses
  %i.ak = sub nuw i64 %0, %i.aj
  tail call fastcc void @sum_rec(i64 noundef %i.aj, ptr noundef %1, ptr noundef %2)
  %i.al = shl i64 %i.aj, 2                        ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.al ; 2 uses
  tail call fastcc void @sum_rec(i64 noundef %i.ak, ptr noundef %i.am, ptr noundef %i.an)
  %i.ao = load <4 x float>, ptr %i.an, align 4, !tbaa !12
  %i.ap = load <4 x float>, ptr %2, align 4, !tbaa !12
  %i.aq = fadd reassoc nsz arcp contract afn <4 x float> %i.ap, %i.ao
  store <4 x float> %i.aq, ptr %2, align 4, !tbaa !12
  br label %common.ret
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @variance_rec(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) unnamed_addr #21 {
bb.a:
  %i.a = icmp ult i64 %0, 4
  br i1 %i.a, label %.preheader43.preheader, label %.loopexit.loopexit49

.preheader43.preheader:                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false), !tbaa !12
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %common.ret, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader43.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.h = load float, ptr %1, align 4, !tbaa !12
  %i.i = load float, ptr %3, align 4, !tbaa !12
  %i.j = fsub reassoc nsz arcp contract afn float %i.h, %i.i ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, %i.j ; 2 uses
  store float %i.k, ptr %2, align 4, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !12
  %i.n = load float, ptr %i.b, align 4, !tbaa !12
  %i.o = fsub reassoc nsz arcp contract afn float %i.m, %i.n ; 2 uses
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, %i.o ; 2 uses
  store float %i.p, ptr %i.c, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !12
  %i.s = load float, ptr %i.d, align 4, !tbaa !12
  %i.t = fsub reassoc nsz arcp contract afn float %i.r, %i.s ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.t, %i.t ; 2 uses
  store float %i.u, ptr %i.e, align 4, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = load float, ptr %i.f, align 4, !tbaa !12
  %i.y = fsub reassoc nsz arcp contract afn float %i.w, %i.x ; 2 uses
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.y ; 2 uses
  store float %i.z, ptr %i.g, align 4, !tbaa !12
  %exitcond.not = icmp eq i64 %0, 1
  br i1 %exitcond.not, label %common.ret, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = load float, ptr %3, align 4, !tbaa !12
  %i.ad = fsub reassoc nsz arcp contract afn float %i.ab, %i.ac ; 2 uses
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.ad
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, %i.k ; 2 uses
  store float %i.af, ptr %2, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !12
  %i.ai = load float, ptr %i.b, align 4, !tbaa !12
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ah, %i.ai ; 2 uses
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.aj
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, %i.p ; 2 uses
  store float %i.al, ptr %i.c, align 4, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load float, ptr %i.am, align 4, !tbaa !12
  %i.ao = load float, ptr %i.d, align 4, !tbaa !12
  %i.ap = fsub reassoc nsz arcp contract afn float %i.an, %i.ao ; 2 uses
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, %i.ap
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, %i.u ; 2 uses
  store float %i.ar, ptr %i.e, align 4, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.at = load float, ptr %i.as, align 4, !tbaa !12
  %i.au = load float, ptr %i.f, align 4, !tbaa !12
  %i.av = fsub reassoc nsz arcp contract afn float %i.at, %i.au ; 2 uses
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, %i.av
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, %i.z ; 2 uses
  store float %i.ax, ptr %i.g, align 4, !tbaa !12
  %exitcond.not.1 = icmp eq i64 %0, 2
  br i1 %exitcond.not.1, label %common.ret, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load float, ptr %i.ay, align 4, !tbaa !12
  %i.ba = load float, ptr %3, align 4, !tbaa !12
  %i.bb = fsub reassoc nsz arcp contract afn float %i.az, %i.ba ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.bb
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.af
  store float %i.bd, ptr %2, align 4, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12
  %i.bg = load float, ptr %i.b, align 4, !tbaa !12
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bf, %i.bg ; 2 uses
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.bh
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.al
  store float %i.bj, ptr %i.c, align 4, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %i.bm = load float, ptr %i.d, align 4, !tbaa !12
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bl, %i.bm ; 2 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bn
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.ar
  store float %i.bp, ptr %i.e, align 4, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = load float, ptr %i.f, align 4, !tbaa !12
  %i.bt = fsub reassoc nsz arcp contract afn float %i.br, %i.bs ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bt
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bu, %i.ax
  store float %i.bv, ptr %i.g, align 4, !tbaa !12
  br label %common.ret

common.ret:                                       ; preds = %.preheader43.preheader, %.preheader.2, %.preheader.1, %.preheader.preheader, %.loopexit.loopexit49
  ret void

.loopexit.loopexit49:                             ; preds = %bb.a
  %i.bw = lshr i64 %0, 1                          ; 3 uses
  %i.bx = sub nuw i64 %0, %i.bw
  tail call fastcc void @variance_rec(i64 noundef %i.bw, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.by = shl i64 %i.bw, 2                        ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.by ; 2 uses
  tail call fastcc void @variance_rec(i64 noundef %i.bx, ptr noundef %i.bz, ptr noundef %i.ca, ptr noundef %3)
  %i.cb = load <4 x float>, ptr %i.ca, align 4, !tbaa !12
  %i.cc = load <4 x float>, ptr %2, align 4, !tbaa !12
  %i.cd = fadd reassoc nsz arcp contract afn <4 x float> %i.cc, %i.cb
  store <4 x float> %i.cd, ptr %2, align 4, !tbaa !12
  br label %common.ret
}

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @dt_noiseprofile_interpolate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @CurveDataSample(ptr noundef, ptr noundef) local_unnamed_addr #5

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
  %i.h = load <4 x float>, ptr %i.c, align 4, !tbaa !12
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
  %i.u = load <4 x float>, ptr %i.g, align 4, !tbaa !12
  %i.v = fmul reassoc nsz arcp contract afn <4 x float> %i.t, %i.u
  %i.w = fpext <4 x float> %i.v to <4 x double>
  %i.x = fpext <4 x float> %i.s to <4 x double>
  %i.y = insertelement <4 x double> poison, double %3, i64 0
  %i.z = shufflevector <4 x double> %i.y, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aa = fmul reassoc nsz arcp contract afn <4 x double> %i.z, %i.x
  %i.ab = fadd reassoc nsz arcp contract afn <4 x double> %i.aa, %i.w
  %i.ac = fptrunc <4 x double> %i.ab to <4 x float>
  store <4 x float> %i.ac, ptr %i.g, align 4, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.af = load <2 x float>, ptr %i.ad, align 4, !tbaa !12
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
  %i.as = load <2 x float>, ptr %i.ae, align 4, !tbaa !12
  %i.at = fmul reassoc nsz arcp contract afn <2 x float> %i.ar, %i.as
  %i.au = fpext <2 x float> %i.at to <2 x double>
  %i.av = fpext <2 x float> %i.aq to <2 x double>
  %i.aw = insertelement <2 x double> poison, double %3, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fmul reassoc nsz arcp contract afn <2 x double> %i.ax, %i.av
  %i.az = fadd reassoc nsz arcp contract afn <2 x double> %i.ay, %i.au
  %i.ba = fptrunc <2 x double> %i.az to <2 x float>
  store <2 x float> %i.ba, ptr %i.ae, align 4, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = fpext reassoc nsz arcp contract afn float %i.bc to double
  %i.be = fsub reassoc nsz arcp contract afn double %2, %i.bd ; 2 uses
  %i.bf = fneg reassoc nsz arcp contract afn double %i.be
  %i.bg = fmul reassoc nsz arcp contract afn double %i.be, %i.bf
  %i.bh = fdiv reassoc nsz arcp contract afn double %i.bg, %i.e
  %i.bi = fptrunc reassoc nsz arcp contract afn double %i.bh to float
  %i.bj = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.bi) ; 2 uses
  %i.bk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bk, %i.bm
  %i.bo = fpext reassoc nsz arcp contract afn float %i.bn to double
  %i.bp = fpext reassoc nsz arcp contract afn float %i.bj to double
  %i.bq = fmul reassoc nsz arcp contract afn double %3, %i.bp
  %i.br = fadd reassoc nsz arcp contract afn double %i.bq, %i.bo
  %i.bs = fptrunc reassoc nsz arcp contract afn double %i.br to float
  store float %i.bs, ptr %i.bl, align 4, !tbaa !12
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.sqrt.v32f32(<32 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.maxnum.v32f32(<32 x float>, <32 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <6 x float> @llvm.masked.load.v6f32.p0(ptr captures(none), <6 x i1>, <6 x float>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #8

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
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}
end_hunk_3
