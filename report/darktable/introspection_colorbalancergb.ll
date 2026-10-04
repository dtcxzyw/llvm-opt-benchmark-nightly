Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalancergb?download=true
inline.NumInlined: 213
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 49
begin_hunk_0_@name:bb.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @aliases() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #19
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #19
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #19
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #19
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #19
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #19
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #19
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(132) ptr @malloc(i64 noundef 132) #24 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.sroa.942.0..0.22.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.1046.0..0.22.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(96) %1, i64 96, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !218
  %i.e = fmul reassoc nsz arcp contract afn float %i.d, f0x3C23D70A
  store float %i.e, ptr %i.c, align 4, !tbaa !218
  store <4 x float> <float 1.845000e-01, float 0.000000e+00, float 1.845000e-01, float 0.000000e+00>, ptr %.sroa.942.0..0.22.sroa_idx, align 4, !tbaa !12
  store i32 0, ptr %.sroa.1046.0..0.22.sroa_idx, align 4, !tbaa !219
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noalias dereferenceable_or_null(132) ptr @malloc(i64 noundef 132) #24 ; 4 uses
  %.sroa.942.0..0.13.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.sroa.1046.0..0.13.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.f, ptr noundef nonnull align 4 dereferenceable(112) %1, i64 112, i1 false)
  store <4 x float> <float 1.845000e-01, float 0.000000e+00, float 1.845000e-01, float 0.000000e+00>, ptr %.sroa.942.0..0.13.sroa_idx, align 4, !tbaa !12
  store i32 0, ptr %.sroa.1046.0..0.13.sroa_idx, align 4, !tbaa !219
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(132) ptr @malloc(i64 noundef 132) #24 ; 5 uses
  %.sroa.10.0..0.5.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  %.sroa.1046.0..0.5.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %i.g, ptr noundef nonnull align 4 dereferenceable(116) %1, i64 116, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.845000e-01>, ptr %.sroa.10.0..0.5.sroa_idx, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !220
  store i32 0, ptr %.sroa.1046.0..0.5.sroa_idx, align 4, !tbaa !219
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noalias dereferenceable_or_null(132) ptr @malloc(i64 noundef 132) #24 ; 3 uses
  %.sroa.1046.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.i, ptr noundef nonnull align 4 dereferenceable(128) %1, i64 128, i1 false)
  store i32 0, ptr %.sroa.1046.0..0..sroa_idx, align 4, !tbaa !219
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sink = phi ptr [ %i.i, %bb.e ], [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.a, %bb.b ]
  store ptr %.sink, ptr %3, align 8, !tbaa !14
  store i32 132, ptr %4, align 4, !tbaa !221
  store i32 5, ptr %5, align 4, !tbaa !221
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.dt_iop_colorbalancergb_params_t, align 4 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %1, i8 0, i64 128, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  store float 1.845000e-01, ptr %i.c, align 4, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float 1.845000e-01, ptr %i.d, align 4, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  store float 2.000000e-01, ptr %i.f, align 4, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float 1.000000e-01, ptr %i.g, align 4, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <2 x float> <float -5.000000e-02, float 5.000000e-02>, ptr %i.h, align 4, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !225
  %i.l = tail call i32 (...) %i.k() #19
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.i, i32 noundef %i.l, ptr noundef nonnull %1, i32 noundef 132, i32 noundef 1, i32 noundef 4) #19
  store i32 1, ptr %i.e, align 4, !tbaa !20
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  store <4 x float> <float 2.000000e-01, float -5.000000e-01, float 0.000000e+00, float 3.000000e-01>, ptr %i.m, align 4, !tbaa !12
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !225
  %i.o = call i32 (...) %i.n() #19
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.i, i32 noundef %i.o, ptr noundef nonnull %1, i32 noundef 132, i32 noundef 1, i32 noundef 4) #19
  store <4 x float> <float 2.000000e-01, float -2.500000e-01, float 0.000000e+00, float 5.000000e-01>, ptr %i.m, align 4, !tbaa !12
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !225
  %i.q = call i32 (...) %i.p() #19
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.i, i32 noundef %i.q, ptr noundef nonnull %1, i32 noundef 132, i32 noundef 1, i32 noundef 4) #19
  store <4 x float> <float 2.000000e-01, float -2.500000e-01, float 0.000000e+00, float 2.500000e-01>, ptr %i.m, align 4, !tbaa !12
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !225
  %i.s = call i32 (...) %i.r() #19
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.i, i32 noundef %i.s, ptr noundef nonnull %1, i32 noundef 132, i32 noundef 1, i32 noundef 4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !41  ; 37 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !52  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = tail call ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef %0, ptr noundef %i.g) #19 ; 10 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 576
  %gep.1.i = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  %gep.2.i = getelementptr inbounds nuw i8, ptr %i.h, i64 608
  %invariant.gep.2.i = getelementptr inbounds nuw i8, ptr %i.h, i64 584
  %i.k = load float, ptr %invariant.gep.2.i, align 4, !tbaa !12 ; 2 uses
  %gep.1.2.i = getelementptr inbounds nuw i8, ptr %i.h, i64 600
  %i.l = load float, ptr %gep.1.2.i, align 4, !tbaa !12 ; 2 uses
  %gep.2.2.i = getelementptr inbounds nuw i8, ptr %i.h, i64 616
  %i.m = load float, ptr %gep.2.2.i, align 4, !tbaa !12 ; 2 uses
  %i.n = fmul reassoc nsz arcp contract afn float %i.k, 4.039210e-04
  %i.o = fmul reassoc nsz arcp contract afn float %i.l, f0x3C7704B2
  %i.p = fsub reassoc nsz arcp contract afn float %i.o, %i.n
  %i.q = fmul reassoc nsz arcp contract afn float %i.m, f0x3FA6AB48
  %i.r = fadd reassoc nsz arcp contract afn float %i.p, %i.q ; 2 uses
  %6 = fmul reassoc nsz arcp contract afn float %i.r, -3.106100e-02
  %i.s = load <2 x float>, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.t = fmul reassoc nsz arcp contract afn <2 x float> %i.s, splat (float f0x3F7D4DA9)
  %i.u = load <2 x float>, ptr %gep.1.i, align 4, !tbaa !12 ; 3 uses
  %i.v = fmul reassoc nsz arcp contract afn <2 x float> %i.u, splat (float f0x3D23F6FB)
  %i.w = fsub reassoc nsz arcp contract afn <2 x float> %i.t, %i.v
  %i.x = load <2 x float>, ptr %gep.2.i, align 4, !tbaa !12 ; 3 uses
  %i.y = fmul reassoc nsz arcp contract afn <2 x float> %i.x, splat (float f0x3D3470F4)
  %i.z = fadd reassoc nsz arcp contract afn <2 x float> %i.w, %i.y ; 3 uses
  %i.aa = fmul reassoc nsz arcp contract afn <2 x float> %i.s, splat (float f0x3BB11DFF)
  %i.ab = fmul reassoc nsz arcp contract afn <2 x float> %i.u, splat (float f0x3F80DA42)
  %i.ac = fsub reassoc nsz arcp contract afn <2 x float> %i.ab, %i.aa
  %i.ad = fmul reassoc nsz arcp contract afn <2 x float> %i.x, splat (float f0xBAE61976)
  %i.ae = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.ad ; 3 uses
  %i.af = insertelement <2 x float> poison, float %i.l, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.k, i64 1 ; 2 uses
  %i.ah = fmul reassoc nsz arcp contract afn <2 x float> %i.ag, <float f0x3D23F6FB, float f0x3BB11DFF>
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = fmul reassoc nsz arcp contract afn <2 x float> %i.ag, <float f0x3F80DA42, float f0x3F7D4DA9>
  %i.ak = fsub reassoc nsz arcp contract afn <2 x float> %i.aj, %i.ai
  %i.al = insertelement <2 x float> poison, float %i.m, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul reassoc nsz arcp contract afn <2 x float> %i.am, <float f0xBAE61976, float f0x3D3470F4>
  %i.ao = fadd reassoc nsz arcp contract afn <2 x float> %i.ak, %i.an ; 4 uses
  %i.ap = fmul reassoc nsz arcp contract afn <2 x float> %i.s, splat (float 4.039210e-04)
  %i.aq = fmul reassoc nsz arcp contract afn <2 x float> %i.u, splat (float f0x3C7704B2)
  %i.ar = fsub reassoc nsz arcp contract afn <2 x float> %i.aq, %i.ap
  %i.as = fmul reassoc nsz arcp contract afn <2 x float> %i.x, splat (float f0x3FA6AB48)
  %i.at = fadd reassoc nsz arcp contract afn <2 x float> %i.ar, %i.as ; 4 uses
  %7 = extractelement <2 x float> %i.at, i64 0
  %8 = fmul reassoc nsz arcp contract afn float %7, -3.106100e-02
  %9 = extractelement <2 x float> %i.at, i64 1
  %10 = fmul reassoc nsz arcp contract afn float %9, -3.106100e-02
  %i.au = fmul reassoc nsz arcp contract afn <2 x float> %i.z, <float -3.944270e-01, float 6.485600e-02>
  %i.av = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, <float 1.175800e+00, float -7.625000e-02>
  %i.aw = fadd reassoc nsz arcp contract afn <2 x float> %i.au, %i.av
  %i.ax = fmul reassoc nsz arcp contract afn <2 x float> %i.at, <float 1.064230e-01, float 5.590670e-01>
  %i.ay = fmul reassoc nsz arcp contract afn <2 x float> %i.z, <float 6.485600e-02, float -3.944270e-01>
  %i.az = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, <float -7.625000e-02, float 1.175800e+00>
  %i.ba = fadd reassoc nsz arcp contract afn <2 x float> %i.ay, %i.az
  %i.bb = fmul reassoc nsz arcp contract afn <2 x float> %i.at, <float 5.590670e-01, float 1.064230e-01>
  %i.bc = fmul reassoc nsz arcp contract afn <2 x float> %i.ao, <float 1.175800e+00, float 6.485600e-02>
  %i.bd = fmul reassoc nsz arcp contract afn <2 x float> %i.ao, <float -7.625000e-02, float -3.944270e-01>
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = fadd reassoc nsz arcp contract afn <2 x float> %i.bc, %i.be
  %i.bg = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, <float 1.064230e-01, float 5.590670e-01>
  %i.bj = fadd reassoc nsz arcp contract afn <2 x float> %i.ba, %i.bb
  %i.bk = fadd reassoc nsz arcp contract afn <2 x float> %i.aw, %i.ax
  %i.bl = fadd reassoc nsz arcp contract afn <2 x float> %i.bf, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 640
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 672
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 680
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12 ; 2 uses
  %11 = fmul reassoc nsz arcp contract afn float %i.bp, f0x39837366
  %i.bq = tail call <10 x float> @llvm.masked.load.v10f32.p0(ptr nonnull align 4 %i.bm, <10 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true, i1 true, i1 true, i1 false, i1 true, i1 true>, <10 x float> poison), !tbaa !12 ; 5 uses
  %i.br = shufflevector <10 x float> %i.bq, <10 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.br, <float f0x3F8163AD, float f0x3D26BE12>
  %i.bt = shufflevector <10 x float> %i.bq, <10 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, <float f0x3BB1DE8E, float f0x3F7E5B63>
  %i.bv = fadd reassoc nsz arcp contract afn <2 x float> %i.bu, %i.bs
  %i.bw = shufflevector <10 x float> %i.bq, <10 x float> poison, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.bx = fmul reassoc nsz arcp contract afn <2 x float> %i.bw, <float f0x39837366, float f0xBC3C486C>
  %i.by = fadd reassoc nsz arcp contract afn <2 x float> %i.bv, %i.bx
  %i.bz = load <2 x float>, ptr %i.bn, align 4, !tbaa !12
  %i.ca = shufflevector <2 x float> %i.ae, <2 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.cb = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cd = fmul reassoc nsz arcp contract afn <4 x float> %i.cc, <float f0x3F5C2539, float f0x3F5C2539, float f0x3F5C2539, float f0x3F8163AD>
  %i.ce = shufflevector <2 x float> %i.z, <2 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cg = fmul reassoc nsz arcp contract afn <4 x float> %i.cf, <float 2.570850e-01, float 2.570850e-01, float 2.570850e-01, float f0x3BB1DE8E>
  %i.ch = fadd reassoc nsz arcp contract afn <4 x float> %i.cg, %i.cd ; 4 uses
  %12 = extractelement <4 x float> %i.ch, i64 0
  %13 = fadd reassoc nsz arcp contract afn float %12, %8
  %14 = extractelement <4 x float> %i.ch, i64 1
  %15 = fadd reassoc nsz arcp contract afn float %14, %10
  %16 = extractelement <4 x float> %i.ch, i64 2
  %17 = fadd reassoc nsz arcp contract afn float %16, %6
  %18 = extractelement <4 x float> %i.ch, i64 3
  %19 = fadd reassoc nsz arcp contract afn float %18, %11
  %i.ci = shufflevector <10 x float> %i.bq, <10 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 poison>
  %i.cj = insertelement <4 x float> %i.ci, float 1.000000e+00, i64 3 ; 2 uses
  %i.ck = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, <float f0x3D26BE12, float f0x3F8163AD, float f0x3D26BE12, float -0.000000e+00>
  %i.cl = shufflevector <10 x float> %i.bq, <10 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 poison>
  %i.cm = insertelement <4 x float> %i.cl, float 1.000000e+00, i64 3 ; 2 uses
  %i.cn = fmul reassoc nsz arcp contract afn <4 x float> %i.cm, <float f0x3F7E5B63, float f0x3BB1DE8E, float f0x3F7E5B63, float 1.000000e+00>
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %i.cn, %i.ck
  %i.cp = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cq = insertelement <4 x float> %i.cp, float 1.000000e+00, i64 3
  %i.cr = insertelement <4 x float> %i.cq, float %i.bp, i64 2 ; 2 uses
  %i.cs = fmul reassoc nsz arcp contract afn <4 x float> %i.cr, <float f0xBC3C486C, float f0x39837366, float f0xBC3C486C, float -0.000000e+00>
  %i.ct = fadd reassoc nsz arcp contract afn <4 x float> %i.co, %i.cs
  %i.cu = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, <float f0xBD0BDB31, float f0xBD0BDB31, float f0xBD0BDB31, float -0.000000e+00>
  %i.cv = fmul reassoc nsz arcp contract afn <4 x float> %i.cm, <float f0x3A978241, float f0x3A978241, float f0x3A978241, float 1.000000e+00>
  %i.cw = fadd reassoc nsz arcp contract afn <4 x float> %i.cv, %i.cu
  %i.cx = fmul reassoc nsz arcp contract afn <4 x float> %i.cr, <float f0x3F44995A, float f0x3F44995A, float f0x3F44995A, float -0.000000e+00>
  %i.cy = fadd reassoc nsz arcp contract afn <4 x float> %i.cw, %i.cx
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %3, i64 64) ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.da = load ptr, ptr %i.cz, align 16, !tbaa !56 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.da, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 16) ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 16, i64 -72) ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 16, i64 -100) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 16, i64 -120) ]
  %i.dh = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.di = getelementptr i8, ptr %i.dh, i64 644
  %.val = load i32, ptr %i.di, align 4, !tbaa !237
  %i.dj = and i32 %.val, 2
  %.not = icmp eq i32 %i.dj, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !64
  %i.dm = load i32, ptr %i.dl, align 16, !tbaa !238
  %i.dn = icmp ne i32 %i.dm, 0
  %i.do = icmp ne ptr %i.e, null
  %or.cond = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !84
  %.not585 = icmp eq i32 %i.dq, 0
  br i1 %.not585, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.ds = load i64, ptr %i.dr, align 16, !tbaa !85
  %i.dt = uitofp reassoc nsz arcp contract afn i64 %i.ds to double
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !123
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1432
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !129
  %i.dx = fmul reassoc nsz arcp contract afn double %i.dw, %i.dt
  %i.dy = fptoui double %i.dx to i64
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.dz = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  %i.ea = phi i64 [ %i.dy, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.eb = shl i64 %i.ea, 1                        ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 156 ; 3 uses
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !130
  %i.ee = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ed, float f0x3F21B3E7) ; 2 uses
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, f0x4006541D
  %i.eg = fadd reassoc nsz arcp contract afn float %i.ee, f0x3F8FE801
  %i.eh = fdiv reassoc nsz arcp contract afn float %i.ef, %i.eg ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.ej = load float, ptr %i.ei, align 16, !tbaa !131
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ej) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !239
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !240
  %i.ep = sext i32 %i.eo to i64                   ; 3 uses
  %i.eq = shl nsw i64 %i.em, 2
  %i.er = mul i64 %i.eq, %i.ep                    ; 2 uses
  %.not608 = icmp eq i64 %i.er, 0
  br i1 %.not608, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 116 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.c, i64 124 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 308
  %20 = insertelement <4 x float> poison, float %19, i64 0
  %i.fp = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eh
  %i.fr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eh
  %i.fs = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eh
  br label %bb.f

._crit_edge:                                      ; preds = %bb.ad, %.thread
  tail call void @llvm.x86.sse.sfence()
  br label %bb.ae

bb.f:                                             ; preds = %.lr.ph, %bb.ad
  %.0299607 = phi i64 [ 0, %.lr.ph ], [ %i.amg, %bb.ad ] ; 4 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0299607
  %.sroa.0658.0.copyload = load <4 x float>, ptr %i.ft, align 16, !tbaa !12, !alias.scope !241
  %i.fu = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0658.0.copyload, <4 x float> zeroinitializer) ; 5 uses
  %.sroa.0658.0.vec.extract = extractelement <4 x float> %i.fu, i64 0
  %21 = fmul reassoc nsz arcp contract afn float %.sroa.0658.0.vec.extract, %13
  %.sroa.0658.4.vec.extract = extractelement <4 x float> %i.fu, i64 1
  %22 = fmul reassoc nsz arcp contract afn float %.sroa.0658.4.vec.extract, %15
  %23 = fadd reassoc nsz arcp contract afn float %22, %21
  %.sroa.0658.8.vec.extract = extractelement <4 x float> %i.fu, i64 2
  %24 = fmul reassoc nsz arcp contract afn float %.sroa.0658.8.vec.extract, %17
  %25 = fadd reassoc nsz arcp contract afn float %23, %24 ; 3 uses
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.fw = fmul reassoc nsz arcp contract afn <2 x float> %i.fv, %i.bj
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fy = fmul reassoc nsz arcp contract afn <2 x float> %i.fv, %i.bk
  %i.fz = fadd reassoc nsz arcp contract afn <2 x float> %i.fy, %i.fx
  %i.ga = shufflevector <4 x float> %i.fu, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gb = fmul reassoc nsz arcp contract afn <2 x float> %i.ga, %i.bl
  %i.gc = fadd reassoc nsz arcp contract afn <2 x float> %i.fz, %i.gb ; 2 uses
  %i.gd = extractelement <2 x float> %i.gc, i64 0 ; 3 uses
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, %25
  %i.gf = extractelement <2 x float> %i.gc, i64 1 ; 2 uses
  %i.gg = fadd reassoc nsz arcp contract afn float %i.ge, %i.gf ; 4 uses
  %i.gh = fcmp reassoc nsz arcp contract afn oeq float %i.gg, 0.000000e+00 ; 3 uses
  %i.gi = fdiv reassoc nsz arcp contract afn float %25, %i.gg
  %i.gj = fdiv reassoc nsz arcp contract afn float %i.gd, %i.gg
  %i.gk = fdiv reassoc nsz arcp contract afn float %i.gf, %i.gg
  %.sroa.0.0.i = select nsz i1 %i.gh, float 0.000000e+00, float %i.gi ; 2 uses
  %.sroa.6.0.i = select nsz i1 %i.gh, float 0.000000e+00, float %i.gj ; 2 uses
  %.sroa.8.0.i = select nsz i1 %i.gh, float 0.000000e+00, float %i.gk ; 2 uses
  %i.gl = fmul reassoc nsz arcp contract afn float %25, f0x3F309D77
  %i.gm = fmul reassoc nsz arcp contract afn float %i.gd, f0x3EB2573F
  %i.gn = fadd reassoc nsz arcp contract afn float %i.gm, %i.gl ; 2 uses
  %i.go = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i, f0x3F8B3A63
  %i.gp = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i, f0xBF2AAAAB
  %i.gq = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i, f0x3CA8E841
  %i.gr = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i, f0xBDB3A62D
  %i.gs = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i, f0x3FD55555
  %i.gt = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i, f0xBD53224F
  %i.gu = fadd reassoc nsz arcp contract afn float %i.go, f0xBE604727
  %i.gv = fadd reassoc nsz arcp contract afn float %i.gu, %i.gp
  %i.gw = fadd reassoc nsz arcp contract afn float %i.gv, %i.gq ; 2 uses
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gr, -5.437140e-01
  %i.gy = fadd reassoc nsz arcp contract afn float %i.gx, %i.gs
  %i.gz = fadd reassoc nsz arcp contract afn float %i.gy, %i.gt ; 2 uses
  %i.ha = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.gz, float noundef %i.gw) #25 ; 5 uses
  %i.hb = fcmp reassoc nsz arcp contract afn une float %i.ha, 0.000000e+00 ; 2 uses
  %i.hc = fdiv reassoc nsz arcp contract afn float %i.gw, %i.ha
  %i.hd = select reassoc nsz arcp contract afn i1 %i.hb, float %i.hc, float 1.000000e+00 ; 2 uses
  %i.he = fdiv reassoc nsz arcp contract afn float %i.gz, %i.ha
  %i.hf = select reassoc nsz arcp contract afn i1 %i.hb, float %i.he, float 0.000000e+00 ; 2 uses
  %i.hg = fcmp reassoc nsz arcp contract afn ogt float %i.gn, 0.000000e+00
  %i.hh = select reassoc nsz arcp contract afn i1 %i.hg, float %i.gn, float 0.000000e+00 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.hi = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hh, float f0x3ED1FB53)
  %i.hj = load float, ptr %i.es, align 8, !tbaa !132
  %i.hk = load float, ptr %i.et, align 16, !tbaa !133
  %i.hl = load float, ptr %i.eu, align 16, !tbaa !134
  %i.hm = load float, ptr %i.ev, align 16, !tbaa !135 ; 2 uses
  %i.hn = fsub reassoc nsz arcp contract afn float %i.hi, %i.hm ; 3 uses
  %i.ho = fdiv reassoc nsz arcp contract afn float %i.hn, %i.hm ; 2 uses
  %i.hp = fneg reassoc nsz arcp contract afn float %i.hk
  %i.hq = fmul reassoc nsz arcp contract afn float %i.ho, %i.hj
  %i.hr = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.hq)
  %i.hs = fmul reassoc nsz arcp contract afn float %i.ho, %i.hp
  %i.ht = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.hs)
  %i.hu = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.hv = insertelement <2 x float> %i.hu, float %i.hr, i64 1
  %i.hw = fadd reassoc nsz arcp contract afn <2 x float> %i.hv, splat (float 1.000000e+00)
  %i.hx = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.hw ; 6 uses
  %i.hy = extractelement <2 x float> %i.hx, i64 1 ; 6 uses
  %i.hz = extractelement <2 x float> %i.hx, i64 0 ; 5 uses
  %i.ia = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.hx ; 4 uses
  %i.ib = fmul reassoc nsz arcp contract afn float %i.hl, -2.500000e-01
  %i.ic = fmul reassoc nsz arcp contract afn float %i.hn, %i.hn
  %i.id = fmul reassoc nsz arcp contract afn float %i.ic, %i.ib
  %i.ie = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.id)
  %shift.a = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fmul reassoc nsz arcp contract afn <2 x float> %i.ia, %shift.a ; 2 uses
  %i.if = fmul reassoc nsz arcp contract afn float %i.ie, 8.000000e+00
  %foldExtExtBinop758.a = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop.a, %foldExtExtBinop.a
  %i.ig = extractelement <2 x float> %foldExtExtBinop758.a, i64 0
  %i.ih = fmul reassoc nsz arcp contract afn float %i.ig, %i.if ; 6 uses
  store float %i.hy, ptr %i.a, align 16, !tbaa !12
  store float %i.ih, ptr %i.ew, align 4, !tbaa !12
  %i.ii = insertelement <2 x float> %i.hx, float 0.000000e+00, i64 1
  store <2 x float> %i.ii, ptr %i.ex, align 8, !tbaa !12
  %i.ij = fmul reassoc nsz arcp contract afn float %i.hd, %cos
  %i.ik = fmul reassoc nsz arcp contract afn float %i.hf, %sin
  %i.il = fsub reassoc nsz arcp contract afn float %i.ij, %i.ik ; 4 uses
  %i.im = fmul reassoc nsz arcp contract afn float %i.hd, %sin
  %i.in = fmul reassoc nsz arcp contract afn float %i.hf, %cos
  %i.io = fadd reassoc nsz arcp contract afn float %i.im, %i.in ; 4 uses
  %i.ip = load float, ptr %i.ey, align 16, !tbaa !136
  %i.iq = load float, ptr %i.de, align 16, !tbaa !12
  %i.ir = fmul reassoc nsz arcp contract afn float %i.hy, %i.iq
  %i.is = load float, ptr %i.ez, align 8, !tbaa !12
  %i.it = fmul reassoc nsz arcp contract afn float %i.ih, %i.is
  %i.iu = load float, ptr %i.fa, align 16, !tbaa !12
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, %i.hz
  %i.iw = load float, ptr %i.fb, align 16, !tbaa !137 ; 2 uses
  %i.ix = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.iw)
  %i.iy = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ha, float %i.ix)
  %i.iz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.iy
  %i.ja = fmul reassoc nsz arcp contract afn float %i.iz, %i.iw
  %i.jb = fadd reassoc nsz arcp contract afn float %i.ip, 1.000000e+00
  %i.jc = fadd reassoc nsz arcp contract afn float %i.jb, %i.ir
  %i.jd = fadd reassoc nsz arcp contract afn float %i.jc, %i.iv
  %i.je = fadd reassoc nsz arcp contract afn float %i.jd, %i.it
  %i.jf = fadd reassoc nsz arcp contract afn float %i.je, %i.ja ; 2 uses
  %i.jg = fcmp reassoc nsz arcp contract afn ogt float %i.jf, 0.000000e+00
  %i.jh = select reassoc nsz arcp contract afn i1 %i.jg, float %i.jf, float 0.000000e+00
  %i.ji = fmul reassoc nsz arcp contract afn float %i.jh, %i.ha ; 4 uses
  %i.jj = fmul reassoc nsz arcp contract afn float %i.ji, %i.il
  %i.jk = fadd reassoc nsz arcp contract afn float %i.jj, f0x3E604727 ; 2 uses
  %i.jl = fmul reassoc nsz arcp contract afn float %i.ji, %i.io
  %i.jm = fadd reassoc nsz arcp contract afn float %i.jl, 5.437140e-01 ; 2 uses
  %i.jn = fcmp reassoc nsz arcp contract afn olt float %i.jk, 0.000000e+00
  %i.jo = fdiv reassoc nsz arcp contract afn float f0xBE604727, %i.il
  %i.jp = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.jo, float %i.ji)
  %.0.i = select nsz i1 %i.jn, float %i.jp, float %i.ji ; 2 uses
  %i.jq = fcmp reassoc nsz arcp contract afn olt float %i.jm, 0.000000e+00
  %i.jr = fdiv reassoc nsz arcp contract afn float -5.437140e-01, %i.io
  %i.js = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.jr, float %.0.i)
  %.1.i = select nsz i1 %i.jq, float %i.js, float %.0.i ; 2 uses
  %i.jt = fadd reassoc nsz arcp contract afn float %i.jm, %i.jk
  %i.ju = fcmp reassoc nsz arcp contract afn ogt float %i.jt, 1.000000e+00
  br i1 %i.ju, label %bb.g, label %gamut_check_Yrg.exit

bb.g:                                             ; preds = %bb.f
  %i.jv = fadd reassoc nsz arcp contract afn float %i.io, %i.il
  %i.jw = fdiv reassoc nsz arcp contract afn float f0x3E72F57C, %i.jv
  %i.jx = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.jw, float %.1.i)
  br label %gamut_check_Yrg.exit

gamut_check_Yrg.exit:                             ; preds = %bb.f, %bb.g
  %.2.i = phi nsz float [ %i.jx, %bb.g ], [ %.1.i, %bb.f ] ; 2 uses
  %i.jy = fmul reassoc nsz arcp contract afn float %.2.i, %i.il
  %i.jz = fmul reassoc nsz arcp contract afn float %.2.i, %i.io
  %i.ka = load float, ptr %i.ec, align 8, !tbaa !130
  %i.kb = fadd reassoc nsz arcp contract afn float %i.jy, f0x3E604727 ; 3 uses
  %i.kc = fadd reassoc nsz arcp contract afn float %i.jz, 5.437140e-01 ; 3 uses
  %i.kd = fadd reassoc nsz arcp contract afn float %i.kc, %i.kb ; 2 uses
  %i.ke = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.kd ; 3 uses
  %i.kf = fmul reassoc nsz arcp contract afn float %i.kb, f0x3F733333
  %i.kg = fmul reassoc nsz arcp contract afn float %i.kc, 3.800000e-01
  %i.kh = fadd reassoc nsz arcp contract afn float %i.kg, %i.kf
  %i.ki = fmul reassoc nsz arcp contract afn float %i.ke, 0.000000e+00
  %i.kj = fadd reassoc nsz arcp contract afn float %i.kh, %i.ki ; 2 uses
  %i.kk = fmul reassoc nsz arcp contract afn float %i.kb, 5.000000e-02
  %i.kl = fmul reassoc nsz arcp contract afn float %i.kc, 6.200000e-01
  %i.km = fadd reassoc nsz arcp contract afn float %i.kl, %i.kk
  %i.kn = fmul reassoc nsz arcp contract afn float %i.ke, 3.000000e-02
  %i.ko = fadd reassoc nsz arcp contract afn float %i.km, %i.kn ; 2 uses
  %i.kp = fmul reassoc nsz arcp contract afn float %i.kd, 0.000000e+00
  %i.kq = fmul reassoc nsz arcp contract afn float %i.ke, 9.700000e-01
  %i.kr = fadd reassoc nsz arcp contract afn float %i.kq, %i.kp
  %i.ks = fmul reassoc nsz arcp contract afn float %i.kj, f0x3F309D77
  %i.kt = fmul reassoc nsz arcp contract afn float %i.ko, f0x3EB2573F
  %i.ku = fadd reassoc nsz arcp contract afn float %i.ks, %i.kt ; 2 uses
  %i.kv = fcmp reassoc nsz arcp contract afn oeq float %i.ku, 0.000000e+00
  %i.kw = fdiv reassoc nsz arcp contract afn float %i.hh, %i.ku
  %i.kx = select reassoc nsz arcp contract afn i1 %i.kv, float 0.000000e+00, float %i.kw ; 3 uses
  %i.ky = fmul reassoc nsz arcp contract afn float %i.kx, %i.kj ; 3 uses
  %i.kz = fmul reassoc nsz arcp contract afn float %i.kx, %i.ko ; 3 uses
  %i.la = fmul reassoc nsz arcp contract afn float %i.kx, %i.kr ; 4 uses
  %i.lb = fmul reassoc nsz arcp contract afn float %i.ky, f0x3F8B3A63
  %i.lc = fmul reassoc nsz arcp contract afn float %i.kz, f0xBF2AAAAB
  %i.ld = fadd reassoc nsz arcp contract afn float %i.lc, %i.lb
  %i.le = fmul reassoc nsz arcp contract afn float %i.la, f0x3CA8E841
  %i.lf = fadd reassoc nsz arcp contract afn float %i.ld, %i.le
  %i.lg = fmul reassoc nsz arcp contract afn float %i.ky, f0xBDB3A62D
  %i.lh = fmul reassoc nsz arcp contract afn float %i.kz, f0x3FD55555
  %i.li = fadd reassoc nsz arcp contract afn float %i.lh, %i.lg
  %i.lj = fmul reassoc nsz arcp contract afn float %i.la, f0xBD53224F
  %i.lk = fadd reassoc nsz arcp contract afn float %i.li, %i.lj
  %i.ll = fadd reassoc nsz arcp contract afn float %i.kz, %i.ky ; 2 uses
  %i.lm = fmul reassoc nsz arcp contract afn float %i.ll, 0.000000e+00
  %i.ln = fmul reassoc nsz arcp contract afn float %i.la, f0x3F83F572
  %i.lo = fadd reassoc nsz arcp contract afn float %i.lm, %i.ln
  %i.lp = fadd reassoc nsz arcp contract afn float %i.ll, %i.la
  %i.lq = fmul reassoc nsz arcp contract afn float %i.lp, 0.000000e+00
  %i.lr = load <4 x float>, ptr %i.c, align 16, !tbaa !12
  %i.ls = insertelement <4 x float> poison, float %i.lf, i64 0
  %i.lt = insertelement <4 x float> %i.ls, float %i.lk, i64 1
  %i.lu = insertelement <4 x float> %i.lt, float %i.lo, i64 2
  %i.lv = insertelement <4 x float> %i.lu, float %i.lq, i64 3
  %i.lw = fadd reassoc nsz arcp contract afn <4 x float> %i.lv, %i.lr
  %i.lx = load <4 x float>, ptr %i.dc, align 16, !tbaa !12
  %i.ly = shufflevector <2 x float> %i.hx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.lz = fmul reassoc nsz arcp contract afn <4 x float> %i.lx, %i.ly
  %i.ma = shufflevector <2 x float> %i.ia, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mb = fadd reassoc nsz arcp contract afn <4 x float> %i.lz, %i.ma
  %i.mc = shufflevector <2 x float> %i.ia, <2 x float> poison, <4 x i32> zeroinitializer
  %i.md = fmul reassoc nsz arcp contract afn <4 x float> %i.mb, %i.mc
  %i.me = load <4 x float>, ptr %i.db, align 16, !tbaa !12
  %i.mf = shufflevector <2 x float> %i.hx, <2 x float> poison, <4 x i32> zeroinitializer
  %i.mg = fmul reassoc nsz arcp contract afn <4 x float> %i.me, %i.mf
  %i.mh = fadd reassoc nsz arcp contract afn <4 x float> %i.md, %i.mg
  %i.mi = fmul reassoc nsz arcp contract afn <4 x float> %i.mh, %i.lw ; 3 uses
  %i.mj = extractelement <4 x float> %i.mi, i64 2
  %i.mk = fcmp reassoc nsz arcp contract afn olt float %i.mj, 0.000000e+00
  %i.ml = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.mi)
  %i.mm = insertelement <4 x float> poison, float %i.ka, i64 0
  %i.mn = shufflevector <4 x float> %i.mm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mo = fdiv reassoc nsz arcp contract afn <4 x float> %i.ml, %i.mn
  %i.mp = bitcast <4 x float> %i.mo to <4 x i32>  ; 2 uses
  %i.mq = and <4 x i32> %i.mp, splat (i32 8388607)
  %i.mr = or disjoint <4 x i32> %i.mq, splat (i32 1065353216)
  %i.ms = bitcast <4 x i32> %i.mr to <4 x float>  ; 5 uses
  %i.mt = lshr <4 x i32> %i.mp, splat (i32 23)
  %i.mu = and <4 x i32> %i.mt, splat (i32 255)
  %i.mv = add nsw <4 x i32> %i.mu, splat (i32 -127)
  %i.mw = sitofp <4 x i32> %i.mv to <4 x float>
  %i.mx = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ms, splat (float f0x3D74552F)
  %i.my = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.mx, splat (float f0xBEEE7397)
  %i.mz = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.my, %i.ms
  %i.na = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.mz, splat (float f0x3FBD96DD)
  %i.nb = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.na, %i.ms
  %i.nc = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.nb, splat (float f0xC02153F6)
  %i.nd = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.nc, %i.ms
  %i.ne = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.nd, splat (float f0x4038D96C)
  %i.nf = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ms, splat (float -1.000000e+00)
  %i.ng = fmul reassoc nsz arcp contract afn <4 x float> %i.ne, %i.nf
  %i.nh = fadd reassoc nsz arcp contract afn <4 x float> %i.ng, %i.mw
  %i.ni = load <4 x float>, ptr %i.dd, align 16, !tbaa !12
  %i.nj = fmul reassoc nsz arcp contract afn <4 x float> %i.nh, %i.ni
  %i.nk = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.nj, <4 x float> splat (float 1.290000e+02))
  %i.nl = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nk, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.nm = fadd reassoc nsz arcp contract afn <4 x float> %i.nl, splat (float -5.000000e-01)
  %i.nn = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.nm)
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.afd = fadd reassoc nsz arcp contract afn float %i.aew, 1.000000e+00
  %i.afe = fadd reassoc nsz arcp contract afn float %i.afd, %i.aey
  %i.aff = fadd reassoc nsz arcp contract afn float %i.afe, %i.afa
  %i.afg = fadd reassoc nsz arcp contract afn float %i.aff, %i.afc ; 2 uses
  %i.afh = fcmp reassoc nsz arcp contract afn ogt float %i.afg, 0.000000e+00
  %i.afi = select reassoc nsz arcp contract afn i1 %i.afh, float %i.afg, float 0.000000e+00
  %i.afj = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.aeg, float noundef %i.aej) #25
  %i.afk = fmul reassoc nsz arcp contract afn float %i.afj, 5.000000e-01
  %i.afl = fdiv reassoc nsz arcp contract afn float %i.afk, %i.aeg ; 5 uses
  %i.afm = fcmp reassoc nsz arcp contract afn ogt float %spec.select583, %i.afl
  br i1 %i.afm, label %bb.s, label %soft_clip.exit342

bb.s:                                             ; preds = %bb.r
  %i.afn = fsub reassoc nsz arcp contract afn float %i.afl, %spec.select583
  %i.afo = fdiv reassoc nsz arcp contract afn float %i.afn, %i.afl
  %i.afp = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.afo)
  %i.afq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.afp
  %i.afr = fmul reassoc nsz arcp contract afn float %i.afq, %i.afl
  %i.afs = fadd reassoc nsz arcp contract afn float %i.afr, %i.afl
  br label %soft_clip.exit342

soft_clip.exit342:                                ; preds = %bb.r, %bb.s
  %i.aft = phi reassoc nsz arcp contract afn float [ %i.afs, %bb.s ], [ %spec.select583, %bb.r ] ; 3 uses
  %i.afu = fadd reassoc nsz arcp contract afn float %i.aft, -1.000000e+00
  %i.afv = fmul reassoc nsz arcp contract afn float %i.afu, %i.aeg ; 2 uses
  %i.afw = fmul reassoc nsz arcp contract afn float %i.aeg, %i.aeg
  %i.afx = fmul reassoc nsz arcp contract afn float %i.aft, %i.aft
  %i.afy = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.afx
  %i.afz = fmul reassoc nsz arcp contract afn float %i.afw, %i.afy
  %i.aga = fmul reassoc nsz arcp contract afn float %i.aej, %i.aej
  %i.agb = fadd reassoc nsz arcp contract afn float %i.afz, %i.aga
  %i.agc = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.agb)
  %i.agd = fmul reassoc nsz arcp contract afn float %i.agc, %i.afi ; 2 uses
  %i.age = fmul reassoc nsz arcp contract afn float %i.afv, %i.aee
  %i.agf = fmul reassoc nsz arcp contract afn float %i.agd, %i.aec
  %i.agg = fadd reassoc nsz arcp contract afn float %i.agf, %i.age ; 2 uses
  %i.agh = fcmp reassoc nsz arcp contract afn ogt float %i.agg, 0.000000e+00
  %spec.select325 = select reassoc nsz arcp contract afn i1 %i.agh, float %i.agg, float 0.000000e+00 ; 2 uses
  %i.agi = fmul reassoc nsz arcp contract afn float %i.agd, %i.aee
  %i.agj = fmul reassoc nsz arcp contract afn float %i.afv, %i.aec
  %i.agk = fsub reassoc nsz arcp contract afn float %i.agi, %i.agj ; 3 uses
  %i.agl = fcmp reassoc nsz arcp contract afn ogt float %i.agk, 0.000000e+00 ; 2 uses
  %i.agm = select reassoc nsz arcp contract afn i1 %i.agl, float %i.agk, float 0.000000e+00 ; 3 uses
  %i.agn = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %spec.select325, float f0x3FAB13D1)
  %i.ago = fadd reassoc nsz arcp contract afn float %i.agn, 1.000000e+00
  %i.agp = fdiv reassoc nsz arcp contract afn float %i.agm, %i.ago ; 2 uses
  %i.agq = fmul reassoc nsz arcp contract afn float %i.adu, f0x42A2F983
  %i.agr = fadd reassoc nsz arcp contract afn float %i.agq, 2.560000e+02 ; 2 uses
  %i.ags = fpext reassoc nsz arcp contract afn float %i.agr to double ; 2 uses
  %i.agt = tail call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.ags)
  %i.agu = fptrunc reassoc nsz arcp contract afn double %i.agt to float ; 2 uses
  %i.agv = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.ags)
  %i.agw = fptrunc reassoc nsz arcp contract afn double %i.agv to float
  %i.agx = fptosi float %i.agu to i32
  %i.agy = and i32 %i.agx, 511                    ; 2 uses
  %i.agz = fptosi float %i.agw to i32
  %i.aha = and i32 %i.agz, 511                    ; 2 uses
  %i.ahb = zext nneg i32 %i.agy to i64
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ahb
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !12 ; 3 uses
  %.not.i343 = icmp eq i32 %i.agy, %i.aha
  br i1 %.not.i343, label %lookup_gamut.exit344, label %bb.t

bb.t:                                             ; preds = %soft_clip.exit342
  %i.ahe = fsub reassoc nsz arcp contract afn float %i.agr, %i.agu
  %i.ahf = zext nneg i32 %i.aha to i64
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ahf
  %i.ahh = load float, ptr %i.ahg, align 4, !tbaa !12
  %i.ahi = fsub reassoc nsz arcp contract afn float %i.ahh, %i.ahd
  %i.ahj = fmul reassoc nsz arcp contract afn float %i.ahi, %i.ahe
  %i.ahk = fadd reassoc nsz arcp contract afn float %i.ahj, %i.ahd
  br label %lookup_gamut.exit344

lookup_gamut.exit344:                             ; preds = %soft_clip.exit342, %bb.t
  %i.ahl = phi float [ %i.ahk, %bb.t ], [ %i.ahd, %soft_clip.exit342 ]
  %i.ahm = fmul reassoc nsz arcp contract afn float %i.agp, %i.eh
  %i.ahn = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ahm, float f0x3F2703AC)
  %i.aho = fmul reassoc nsz arcp contract afn float %i.ahn, f0x417EED8B
  %i.ahp = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ahl, float f0x3F19CB20)
  %i.ahq = fmul reassoc nsz arcp contract afn float %i.aho, %i.ahp
  %i.ahr = fmul reassoc nsz arcp contract afn float %i.ahq, %i.fs ; 2 uses
  %i.ahs = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ahr, float f0x3FAB13D1)
  %i.aht = fadd reassoc nsz arcp contract afn float %i.ahs, 1.000000e+00
  %i.ahu = fmul reassoc nsz arcp contract afn float %i.aht, %i.agp ; 2 uses
  %i.ahv = fcmp reassoc nsz arcp contract afn ogt float %i.ahu, 0.000000e+00
  %i.ahw = fdiv reassoc nsz arcp contract afn float %i.ahr, %i.ahu
  %spec.select584 = select reassoc nsz arcp contract afn i1 %i.ahv, float %i.ahw, float 0.000000e+00 ; 2 uses
  %i.ahx = fdiv reassoc nsz arcp contract afn float %spec.select325, %i.agk
  %i.ahy = select reassoc nsz arcp contract afn i1 %i.agl, float %i.ahx, float 0.000000e+00 ; 3 uses
  %i.ahz = fmul reassoc nsz arcp contract afn float %spec.select584, 8.000000e-01 ; 3 uses
  %i.aia = fcmp reassoc nsz arcp contract afn ogt float %i.ahy, %i.ahz
  br i1 %i.aia, label %bb.u, label %soft_clip.exit345

bb.u:                                             ; preds = %lookup_gamut.exit344
  %i.aib = fmul reassoc nsz arcp contract afn float %spec.select584, f0x3E4CCCCC ; 2 uses
  %i.aic = fsub reassoc nsz arcp contract afn float %i.ahz, %i.ahy
  %i.aid = fdiv reassoc nsz arcp contract afn float %i.aic, %i.aib
  %i.aie = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.aid)
  %i.aif = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aie
  %i.aig = fmul reassoc nsz arcp contract afn float %i.aif, %i.aib
  %i.aih = fadd reassoc nsz arcp contract afn float %i.aig, %i.ahz
  br label %soft_clip.exit345

soft_clip.exit345:                                ; preds = %lookup_gamut.exit344, %bb.u
  %i.aii = phi reassoc nsz arcp contract afn float [ %i.aih, %bb.u ], [ %i.ahy, %lookup_gamut.exit344 ]
  %i.aij = fmul reassoc nsz arcp contract afn float %i.aii, %i.agm ; 2 uses
  %i.aik = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aij, float f0x3FAB13D1)
  %i.ail = fadd reassoc nsz arcp contract afn float %i.aik, 1.000000e+00
  %i.aim = fmul reassoc nsz arcp contract afn float %i.agm, %i.eh
  %i.ain = fdiv reassoc nsz arcp contract afn float %i.aim, %i.ail ; 3 uses
  %i.aio = fcmp reassoc nsz arcp contract afn ult float %i.ain, 0.000000e+00
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %i.ain, 2.098850e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %.inv.i, float %i.ain, float 2.098850e+00
  %i.aip = select reassoc nsz arcp contract afn i1 %i.aio, float 0.000000e+00, float %spec.select.i ; 4 uses
  %i.aiq = fcmp reassoc nsz arcp contract afn une float %i.aip, 0.000000e+00
  br i1 %i.aiq, label %bb.v, label %dt_UCS_JCH_to_xyY.exit

bb.v:                                             ; preds = %soft_clip.exit345
  %i.air = fmul reassoc nsz arcp contract afn float %i.aij, %i.eh
  %i.ais = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aip, float f0x3F2703AC)
  %i.ait = fmul reassoc nnan nsz arcp contract afn float %i.ais, f0x417EED8B
  %i.aiu = fdiv reassoc nsz arcp contract afn float %i.air, %i.ait
  %i.aiv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aiu, float f0x3F5510A2)
  br label %dt_UCS_JCH_to_xyY.exit

dt_UCS_JCH_to_xyY.exit:                           ; preds = %soft_clip.exit345, %bb.v
  %i.aiw = phi reassoc nsz arcp contract afn float [ %i.aiv, %bb.v ], [ 0.000000e+00, %soft_clip.exit345 ] ; 2 uses
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.adu) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.aix = fmul reassoc nsz arcp contract afn float %i.aiw, %cos.i ; 2 uses
  %i.aiy = fmul reassoc nsz arcp contract afn float %i.aiw, %sin.i ; 2 uses
  %i.aiz = fmul reassoc nsz arcp contract afn float %i.aix, f0xC0A13362
  %i.aja = fmul reassoc nsz arcp contract afn float %i.aiy, f0x40204F91
  %i.ajb = fsub reassoc nsz arcp contract afn float %i.aiz, %i.aja ; 2 uses
  %i.ajc = fmul reassoc nsz arcp contract afn float %i.aix, f0x40985229
  %i.ajd = fmul reassoc nsz arcp contract afn float %i.aiy, f0x4037EFD4
  %i.aje = fadd reassoc nsz arcp contract afn float %i.ajc, %i.ajd ; 2 uses
  %i.ajf = fmul reassoc nsz arcp contract afn float %i.ajb, f0xBFBEFF8B
  %i.ajg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ajb)
  %i.ajh = fadd reassoc nsz arcp contract afn float %i.ajg, f0xBFB2C28D
  %i.aji = fdiv reassoc nsz arcp contract afn float %i.ajf, %i.ajh ; 3 uses
  %i.ajj = fmul reassoc nsz arcp contract afn float %i.aje, f0xBFC32F7A
  %i.ajk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aje)
  %i.ajl = fadd reassoc nsz arcp contract afn float %i.ajk, f0xBFB9C753
  %i.ajm = fdiv reassoc nsz arcp contract afn float %i.ajj, %i.ajl ; 3 uses
  %i.ajn = fmul reassoc nsz arcp contract afn float %i.aji, f0xBE1A9505
  %i.ajo = fmul reassoc nsz arcp contract afn float %i.ajm, f0xBE1EE8D5
  %i.ajp = fadd reassoc nsz arcp contract afn float %i.ajn, f0xBC0A2B16
  %i.ajq = fadd reassoc nsz arcp contract afn float %i.ajp, %i.ajo
  %i.ajr = fmul reassoc nsz arcp contract afn float %i.aji, f0x3F70B489
  %i.ajs = fadd reassoc nsz arcp contract afn float %i.ajm, %i.ajr
  %i.ajt = fadd reassoc nsz arcp contract afn float %i.ajs, f0xBCD1FB74 ; 5 uses
  %i.aju = fcmp reassoc nsz arcp contract afn ult float %i.ajt, 0.000000e+00
  %i.ajv = fcmp reassoc nsz arcp contract afn olt float %i.ajt, f0x00800000
  %i.ajw = select reassoc nsz arcp contract afn i1 %i.ajv, float f0x00800000, float %i.ajt
  %i.ajx = fcmp reassoc nsz arcp contract afn ogt float %i.ajt, f0x80800000
  %i.ajy = select reassoc nsz arcp contract afn i1 %i.ajx, float f0x80800000, float %i.ajt
  %i.ajz = select reassoc nsz arcp contract afn i1 %i.aju, float %i.ajy, float %i.ajw ; 2 uses
  %i.aka = fdiv reassoc nsz arcp contract afn float %i.ajq, %i.ajz ; 4 uses
  %i.akb = fcmp reassoc nsz arcp contract afn oeq float %i.aka, 0.000000e+00
  br i1 %i.akb, label %.thread.i, label %bb.w

.thread.i:                                        ; preds = %dt_UCS_JCH_to_xyY.exit
  %.sroa.0404.4.vec.insert427 = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %.sroa.0404.12.vec.insert, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %dt_xyY_to_XYZ.exit

bb.w:                                             ; preds = %dt_UCS_JCH_to_xyY.exit
  %i.akc = fmul reassoc nsz arcp contract afn float %i.aip, f0x3F8FE801
  %i.akd = fsub reassoc nsz arcp contract afn float f0x4006541D, %i.aip
  %i.ake = fdiv reassoc nsz arcp contract afn float %i.akc, %i.akd
  %i.akf = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.ake, float f0x3FCAA4B8) ; 3 uses
  %i.akg = fmul reassoc nsz arcp contract afn float %i.ajm, f0x3E10B0E5
  %i.akh = fmul reassoc nsz arcp contract afn float %i.aji, f0x3E2B2F00
  %i.aki = fadd reassoc nsz arcp contract afn float %i.akh, f0xBC0352A9
  %i.akj = fadd reassoc nsz arcp contract afn float %i.aki, %i.akg
  %i.akk = fdiv reassoc nsz arcp contract afn float %i.akj, %i.ajz ; 2 uses
  %i.akl = fmul reassoc nsz arcp contract afn float %i.akk, %i.akf
  %i.akm = fdiv reassoc nsz arcp contract afn float %i.akl, %i.aka
  %.sroa.0404.0.vec.insert410 = insertelement <4 x float> %.sroa.0404.12.vec.insert, float %i.akm, i64 0
  %.sroa.0404.4.vec.insert425 = insertelement <4 x float> %.sroa.0404.0.vec.insert410, float %i.akf, i64 1
  %i.akn = fadd reassoc nsz arcp contract afn float %i.aka, %i.akk
  %i.ako = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.akn
  %i.akp = fmul reassoc nsz arcp contract afn float %i.ako, %i.akf
  %i.akq = fdiv reassoc nsz arcp contract afn float %i.akp, %i.aka
  br label %dt_xyY_to_XYZ.exit

dt_xyY_to_XYZ.exit:                               ; preds = %.thread.i, %bb.w
  %.sroa.0404.1 = phi nsz <4 x float> [ %.sroa.0404.4.vec.insert427, %.thread.i ], [ %.sroa.0404.4.vec.insert425, %bb.w ]
  %i.akr = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %.thread.i ], [ %i.akq, %bb.w ]
  %.sroa.0404.8.vec.insert440 = insertelement <4 x float> %.sroa.0404.1, float %i.akr, i64 2
  br label %bb.x

bb.x:                                             ; preds = %dt_xyY_to_XYZ.exit, %bb.q
  %.sroa.0404.0 = phi nsz <4 x float> [ %.sroa.0404.12.vec.insert450, %bb.q ], [ %.sroa.0404.8.vec.insert440, %dt_xyY_to_XYZ.exit ] ; 4 uses
  %i.aks = shufflevector <4 x float> %.sroa.0404.0, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  %i.akt = fmul reassoc nsz arcp contract afn <4 x float> %i.aks, %i.ct
  %i.aku = shufflevector <4 x float> %.sroa.0404.0, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.akv = fmul reassoc nsz arcp contract afn <4 x float> %i.aku, %i.cy ; 2 uses
  %i.akw = shufflevector <4 x float> %.sroa.0404.0, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %26 = shufflevector <4 x float> %20, <4 x float> %.sroa.0404.0, <4 x i32> <i32 poison, i32 poison, i32 0, i32 4>
  %i.akx = shufflevector <4 x float> %i.fp, <4 x float> %26, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.aky = fmul reassoc nsz arcp contract afn <4 x float> %i.akw, %i.akx
  %i.akz = fadd reassoc nsz arcp contract afn <4 x float> %i.akw, %i.akx
  %i.ala = shufflevector <4 x float> %i.aky, <4 x float> %i.akz, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.alb = fadd reassoc nsz arcp contract afn <4 x float> %i.ala, %i.akt ; 2 uses
  %i.alc = fadd reassoc nsz arcp contract afn <4 x float> %i.alb, %i.akv
  %i.ald = fmul reassoc nsz arcp contract afn <4 x float> %i.alb, %i.akv
  %i.ale = shufflevector <4 x float> %i.alc, <4 x float> %i.ald, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  br i1 %i.dz, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.alf = lshr exact i64 %.0299607, 2            ; 2 uses
  %i.alg = udiv i64 %i.alf, %i.ep                 ; 2 uses
  %i.alh = urem i64 %i.alf, %i.ep                 ; 2 uses
  %i.ali = urem i64 %i.alg, %i.ea
  %i.alj = urem i64 %i.alg, %i.eb
  %i.alk = icmp samesign ult i64 %i.ali, %i.alj
  %i.all = urem i64 %i.alh, %i.ea
  %i.alm = urem i64 %i.alh, %i.eb
  %i.aln = icmp samesign ult i64 %i.all, %i.alm   ; 6 uses
  br i1 %i.alk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx618.v = select i1 %i.aln, i64 216, i64 200
  %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx612.v = select i1 %i.aln, i64 212, i64 196
  %.755 = select i1 %i.aln, ptr %i.fm, ptr %i.fn
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %.sroa.8.0..sroa_idx620..sroa.8.0..sroa_idx622.v = select i1 %i.aln, i64 200, i64 216
  %.sroa.7.0..sroa_idx614..sroa.7.0..sroa_idx616.v = select i1 %i.aln, i64 196, i64 212
  %.756 = select i1 %i.aln, ptr %i.fn, ptr %i.fm
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx618.v.pn = phi i64 [ %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx618.v, %bb.z ], [ %.sroa.8.0..sroa_idx620..sroa.8.0..sroa_idx622.v, %bb.aa ]
  %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx612.v.pn = phi i64 [ %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx612.v, %bb.z ], [ %.sroa.7.0..sroa_idx614..sroa.7.0..sroa_idx616.v, %bb.aa ]
  %.sroa.0.0.in = phi ptr [ %.755, %bb.z ], [ %.756, %bb.aa ]
  %.sroa.7.0.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx612.v.pn
  %.sroa.8.0.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx618.v.pn
  %.sroa.0.0 = load float, ptr %.sroa.0.0.in, align 4, !tbaa !12 ; 2 uses
  %.sroa.7.0 = load float, ptr %.sroa.7.0.in, align 4, !tbaa !12 ; 2 uses
  %.sroa.8.0 = load float, ptr %.sroa.8.0.in, align 4, !tbaa !12 ; 2 uses
  %i.alo = load i32, ptr %i.fo, align 4, !tbaa !142
  %i.alp = zext i32 %i.alo to i64
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.alp
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !12 ; 3 uses
  %i.als = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ale, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0630.0.vec.extract = extractelement <4 x float> %i.als, i64 0
  %i.alt = fsub reassoc nsz arcp contract afn float %.sroa.0630.0.vec.extract, %.sroa.0.0
  %i.alu = fmul reassoc nsz arcp contract afn float %i.alt, %i.alr
  %i.alv = fadd reassoc nsz arcp contract afn float %i.alu, %.sroa.0.0
  %.sroa.0630.4.vec.extract = extractelement <4 x float> %i.als, i64 1
  %i.alw = fsub reassoc nsz arcp contract afn float %.sroa.0630.4.vec.extract, %.sroa.7.0
  %i.alx = fmul reassoc nsz arcp contract afn float %i.alw, %i.alr
  %i.aly = fadd reassoc nsz arcp contract afn float %i.alx, %.sroa.7.0
  %.sroa.0630.8.vec.extract = extractelement <4 x float> %i.als, i64 2
  %i.alz = fsub reassoc nsz arcp contract afn float %.sroa.0630.8.vec.extract, %.sroa.8.0
  %i.ama = fmul reassoc nsz arcp contract afn float %i.alz, %i.alr
  %i.amb = fadd reassoc nsz arcp contract afn float %i.ama, %.sroa.8.0
  %i.amc = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.alv, i64 0
  %i.amd = insertelement <4 x float> %i.amc, float %i.aly, i64 1
  %.sroa.0630.12.vec.insert644 = insertelement <4 x float> %i.amd, float %i.amb, i64 2
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %i.ame = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ale, <4 x float> zeroinitializer)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.0630.0 = phi nsz <4 x float> [ %.sroa.0630.12.vec.insert644, %bb.ab ], [ %i.ame, %bb.ac ]
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0299607
  store <4 x float> %.sroa.0630.0, ptr %i.amf, align 16, !tbaa !143, !alias.scope !244, !nontemporal !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.amg = add nuw i64 %.0299607, 4               ; 2 uses
  %i.amh = icmp ult i64 %i.amg, %i.er
  br i1 %i.amh, label %bb.f, label %._crit_edge

bb.ae:                                            ; preds = %bb.a, %._crit_edge
  ret void
}

declare ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nounwind uwtable
define void @commit_params(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !41  ; 58 uses
  %i.c = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.11) #19
  %i.d = fcmp reassoc nsz arcp contract afn ogt float %i.c, 1.000000e+00
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.11) #19
  %i.f = fcmp reassoc nsz arcp contract afn olt float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.11) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.a ], [ %i.g, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store float %i.h, ptr %i.i, align 16, !tbaa !12
  %i.j = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.12) #19
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 1.000000e+00
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.12) #19
  %i.m = fcmp reassoc nsz arcp contract afn olt float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.12) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.d ], [ %i.n, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  store float %i.o, ptr %i.p, align 4, !tbaa !12
  %i.q = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.13) #19
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.q, 1.000000e+00
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.13) #19
  %i.t = fcmp reassoc nsz arcp contract afn olt float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.13) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.v = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.g ], [ %i.u, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store float %i.v, ptr %i.w, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  store float 1.000000e+00, ptr %i.x, align 4, !tbaa !12
  %i.y = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.14) #19
  %i.z = fcmp reassoc nsz arcp contract afn ogt float %i.y, 1.000000e+00
  br i1 %i.z, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.14) #19
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.14) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ad = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.j ], [ %i.ac, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store float %i.ad, ptr %i.ae, align 16, !tbaa !12
  %i.af = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.15) #19
  %i.ag = fcmp reassoc nsz arcp contract afn ogt float %i.af, 1.000000e+00
  br i1 %i.ag, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.15) #19
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.15) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ak = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.m ], [ %i.aj, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store float %i.ak, ptr %i.al, align 4, !tbaa !12
  %i.am = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.16) #19
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.am, 1.000000e+00
  br i1 %i.an, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.16) #19
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_1
begin_hunk_2_@commit_params:bb.a
  %i.jl = fmul reassoc nsz arcp contract afn float %i.jg, f0x3EB2573F
  %i.jm = fadd reassoc nsz arcp contract afn float %i.jk, %i.jl ; 2 uses
  %i.jn = fcmp reassoc nsz arcp contract afn oeq float %i.jm, 0.000000e+00
  %i.jo = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jm
  %i.jp = select reassoc nsz arcp contract afn i1 %i.jn, float 0.000000e+00, float %i.jo ; 3 uses
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jp, %i.jb ; 3 uses
  %i.jr = fmul reassoc nsz arcp contract afn float %i.jp, %i.jg ; 3 uses
  %i.js = fmul reassoc nsz arcp contract afn float %i.jp, %i.jj ; 4 uses
  %i.jt = fmul reassoc nsz arcp contract afn float %i.jq, f0x3F8B3A63
  %i.ju = fmul reassoc nsz arcp contract afn float %i.jr, f0xBF2AAAAB
  %i.jv = fadd reassoc nsz arcp contract afn float %i.ju, %i.jt
  %i.jw = fmul reassoc nsz arcp contract afn float %i.js, f0x3CA8E841
  %i.jx = fadd reassoc nsz arcp contract afn float %i.jv, %i.jw ; 2 uses
  store float %i.jx, ptr %i.iq, align 16, !tbaa !12
  %i.jy = fmul reassoc nsz arcp contract afn float %i.jq, f0xBDB3A62D
  %i.jz = fmul reassoc nsz arcp contract afn float %i.jr, f0x3FD55555
  %i.ka = fadd reassoc nsz arcp contract afn float %i.jz, %i.jy
  %i.kb = fmul reassoc nsz arcp contract afn float %i.js, f0xBD53224F
  %i.kc = fadd reassoc nsz arcp contract afn float %i.ka, %i.kb ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store float %i.kc, ptr %i.kd, align 4, !tbaa !12
  %i.ke = fadd reassoc nsz arcp contract afn float %i.jr, %i.jq ; 2 uses
  %i.kf = fmul reassoc nsz arcp contract afn float %i.ke, 0.000000e+00
  %i.kg = fmul reassoc nsz arcp contract afn float %i.js, f0x3F83F572
  %i.kh = fadd reassoc nsz arcp contract afn float %i.kf, %i.kg ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store float %i.kh, ptr %i.ki, align 8, !tbaa !12
  %i.kj = fadd reassoc nsz arcp contract afn float %i.ke, %i.js
  %i.kk = fmul reassoc nsz arcp contract afn float %i.kj, 0.000000e+00 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store float %i.kk, ptr %i.kl, align 4, !tbaa !12
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.kn = load float, ptr %i.km, align 4, !tbaa !162
  %i.ko = fadd reassoc nsz arcp contract afn float %i.jx, 4.655460e-01
  %i.kp = fadd reassoc nsz arcp contract afn float %i.ko, %i.kn
  store float %i.kp, ptr %i.iq, align 16, !tbaa !12
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.kr = load float, ptr %i.km, align 4, !tbaa !162
  %i.ks = fadd reassoc nsz arcp contract afn float %i.kc, f0xBEA74DD4
  %i.kt = fadd reassoc nsz arcp contract afn float %i.ks, %i.kr
  store float %i.kt, ptr %i.kq, align 4, !tbaa !12
  %i.ku = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.kv = load float, ptr %i.km, align 4, !tbaa !162
  %i.kw = fadd reassoc nsz arcp contract afn float %i.kh, f0x3ED79122
  %i.kx = fadd reassoc nsz arcp contract afn float %i.kw, %i.kv
  store float %i.kx, ptr %i.ku, align 8, !tbaa !12
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.kz = load float, ptr %i.km, align 4, !tbaa !162
  %i.la = fadd reassoc nsz arcp contract afn float %i.kk, 1.000000e+00
  %i.lb = fadd reassoc nsz arcp contract afn float %i.la, %i.kz
  store float %i.lb, ptr %i.ky, align 4, !tbaa !12
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !17
  %i.le = fmul reassoc nsz arcp contract afn float %i.ld, 2.000000e+00
  %i.lf = fadd reassoc nsz arcp contract afn float %i.le, 2.000000e+00 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store float %i.lf, ptr %i.lg, align 16, !tbaa !133
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.li = load float, ptr %i.lh, align 4, !tbaa !163 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !164
  %i.ll = fmul reassoc nsz arcp contract afn float %i.lk, f0x3C8EFA36
  %i.lm = fadd reassoc nsz arcp contract afn float %i.ll, f0xBF060A93
  %sincos.i200 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.lm) ; 2 uses
  %sin.i201 = extractvalue { float, float } %sincos.i200, 0
  %cos.i202 = extractvalue { float, float } %sincos.i200, 1
  %i.ln = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.lo = fmul reassoc nsz arcp contract afn float %cos.i202, %i.li
  %i.lp = fadd reassoc nsz arcp contract afn float %i.lo, f0x3E604727 ; 3 uses
  %i.lq = fmul reassoc nsz arcp contract afn float %sin.i201, %i.li
  %i.lr = fadd reassoc nsz arcp contract afn float %i.lq, 5.437140e-01 ; 3 uses
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lr, %i.lp ; 2 uses
  %i.lt = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ls ; 3 uses
  %i.lu = fmul reassoc nsz arcp contract afn float %i.lp, f0x3F733333
  %i.lv = fmul reassoc nsz arcp contract afn float %i.lr, 3.800000e-01
  %i.lw = fadd reassoc nsz arcp contract afn float %i.lv, %i.lu
  %i.lx = fmul reassoc nsz arcp contract afn float %i.lt, 0.000000e+00
  %i.ly = fadd reassoc nsz arcp contract afn float %i.lw, %i.lx ; 2 uses
  %i.lz = fmul reassoc nsz arcp contract afn float %i.lp, 5.000000e-02
  %i.ma = fmul reassoc nsz arcp contract afn float %i.lr, 6.200000e-01
  %i.mb = fadd reassoc nsz arcp contract afn float %i.ma, %i.lz
  %i.mc = fmul reassoc nsz arcp contract afn float %i.lt, 3.000000e-02
  %i.md = fadd reassoc nsz arcp contract afn float %i.mb, %i.mc ; 2 uses
  %i.me = fmul reassoc nsz arcp contract afn float %i.ls, 0.000000e+00
  %i.mf = fmul reassoc nsz arcp contract afn float %i.lt, 9.700000e-01
  %i.mg = fadd reassoc nsz arcp contract afn float %i.mf, %i.me
  %i.mh = fmul reassoc nsz arcp contract afn float %i.ly, f0x3F309D77
  %i.mi = fmul reassoc nsz arcp contract afn float %i.md, f0x3EB2573F
  %i.mj = fadd reassoc nsz arcp contract afn float %i.mh, %i.mi ; 2 uses
  %i.mk = fcmp reassoc nsz arcp contract afn oeq float %i.mj, 0.000000e+00
  %i.ml = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.mj
  %i.mm = select reassoc nsz arcp contract afn i1 %i.mk, float 0.000000e+00, float %i.ml ; 3 uses
  %i.mn = fmul reassoc nsz arcp contract afn float %i.mm, %i.ly ; 3 uses
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mm, %i.md ; 3 uses
  %i.mp = fmul reassoc nsz arcp contract afn float %i.mm, %i.mg ; 4 uses
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mn, f0x3F8B3A63
  %i.mr = fmul reassoc nsz arcp contract afn float %i.mo, f0xBF2AAAAB
  %i.ms = fadd reassoc nsz arcp contract afn float %i.mr, %i.mq
  %i.mt = fmul reassoc nsz arcp contract afn float %i.mp, f0x3CA8E841
  %i.mu = fadd reassoc nsz arcp contract afn float %i.ms, %i.mt
  %i.mv = fmul reassoc nsz arcp contract afn float %i.mn, f0xBDB3A62D
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mo, f0x3FD55555
  %i.mx = fadd reassoc nsz arcp contract afn float %i.mw, %i.mv
  %i.my = fmul reassoc nsz arcp contract afn float %i.mp, f0xBD53224F
  %i.mz = fadd reassoc nsz arcp contract afn float %i.mx, %i.my
  %i.na = fadd reassoc nsz arcp contract afn float %i.mo, %i.mn ; 2 uses
  %i.nb = fmul reassoc nsz arcp contract afn float %i.na, 0.000000e+00
  %i.nc = fmul reassoc nsz arcp contract afn float %i.mp, f0x3F83F572
  %i.nd = fadd reassoc nsz arcp contract afn float %i.nb, %i.nc
  %i.ne = fadd reassoc nsz arcp contract afn float %i.na, %i.mp
  %i.nf = fmul reassoc nsz arcp contract afn float %i.ne, 0.000000e+00
  %i.ng = insertelement <4 x float> poison, float %i.mu, i64 0
  %i.nh = insertelement <4 x float> %i.ng, float %i.mz, i64 1
  %i.ni = insertelement <4 x float> %i.nh, float %i.nd, i64 2
  %i.nj = insertelement <4 x float> %i.ni, float %i.nf, i64 3
  %i.nk = fadd reassoc nsz arcp contract afn <4 x float> %i.nj, <float 4.655460e-01, float f0xBEA74DD4, float f0x3ED79122, float 1.000000e+00>
  %i.nl = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.nk
  store <4 x float> %i.nl, ptr %i.ln, align 16, !tbaa !12
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !165
  %i.no = fadd reassoc nsz arcp contract afn float %i.nn, 1.000000e+00
  %i.np = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store float %i.np, ptr %i.nq, align 16, !tbaa !138
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !166
  %i.nt = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ns)
  %i.nu = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  store float %i.nt, ptr %i.nu, align 4, !tbaa !130
  %i.nv = load float, ptr %i.ij, align 4, !tbaa !132 ; 2 uses
  %i.nw = fmul reassoc nsz arcp contract afn float %i.nv, %i.nv ; 2 uses
  %i.nx = fmul reassoc nsz arcp contract afn float %i.lf, %i.lf ; 2 uses
  %i.ny = fmul reassoc nsz arcp contract afn float %i.nx, %i.nw
  %i.nz = fadd reassoc nsz arcp contract afn float %i.nx, %i.nw
  %i.oa = fdiv reassoc nsz arcp contract afn float %i.ny, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  store float %i.oa, ptr %i.ob, align 4, !tbaa !134
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.od = load float, ptr %i.oc, align 4, !tbaa !18
  %i.oe = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.od, float f0x3ED1FB53)
  %i.of = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store float %i.oe, ptr %i.of, align 8, !tbaa !135
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !20 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.oj = load i32, ptr %i.oi, align 16, !tbaa !141
  %.not = icmp eq i32 %i.oh, %i.oj
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ok = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i32 0, ptr %i.ok, align 16, !tbaa !167
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store i32 %i.oh, ptr %i.oi, align 16, !tbaa !141
  %i.ol = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !53
  %i.on = tail call ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef %0, ptr noundef %i.om) #19 ; 8 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %bb.ap, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.op = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !168
  %.not192 = icmp eq ptr %i.on, %i.oq
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  br i1 %.not192, label %bb.y, label %.thread

.thread:                                          ; preds = %bb.x
  store i32 0, ptr %.phi.trans.insert, align 16, !tbaa !167
  store ptr %i.on, ptr %i.op, align 8, !tbaa !168
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %.pre = load i32, ptr %.phi.trans.insert, align 16, !tbaa !167
  %i.os = icmp eq i32 %.pre, 0
  br i1 %i.os, label %bb.z, label %bb.ap

bb.z:                                             ; preds = %.thread, %bb.y
  %i.ot = getelementptr inbounds nuw i8, ptr %i.on, i64 576
  %gep.2.i = getelementptr inbounds nuw i8, ptr %i.on, i64 608
  %invariant.gep.2.i = getelementptr inbounds nuw i8, ptr %i.on, i64 584
  %i.ou = load float, ptr %invariant.gep.2.i, align 4, !tbaa !12 ; 2 uses
  %gep.1.2.i = getelementptr inbounds nuw i8, ptr %i.on, i64 600
  %i.ov = load float, ptr %gep.1.2.i, align 4, !tbaa !12 ; 2 uses
  %gep.2.2.i = getelementptr inbounds nuw i8, ptr %i.on, i64 616
  %i.ow = load float, ptr %gep.2.2.i, align 4, !tbaa !12
  %i.ox = tail call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 4 %i.ot, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 true, i1 true>, <6 x float> poison), !tbaa !12 ; 2 uses
  %i.oy = load <2 x float>, ptr %gep.2.i, align 4, !tbaa !12
  %i.oz = shufflevector <2 x float> %i.oy, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1>
  %i.pa = shufflevector <6 x float> %i.ox, <6 x float> poison, <6 x i32> <i32 1, i32 5, i32 1, i32 4, i32 0, i32 0>
  %i.pb = fmul reassoc nsz arcp contract afn <6 x float> %i.pa, <float 4.039210e-04, float f0x3D23F6FB, float f0x3BB11DFF, float f0x3D23F6FB, float f0x3BB11DFF, float 4.039210e-04>
  %i.pc = shufflevector <6 x float> %i.ox, <6 x float> poison, <6 x i32> <i32 5, i32 1, i32 5, i32 0, i32 4, i32 4>
  %i.pd = fmul reassoc nsz arcp contract afn <6 x float> %i.pc, <float f0x3C7704B2, float f0x3F7D4DA9, float f0x3F80DA42, float f0x3F7D4DA9, float f0x3F80DA42, float f0x3C7704B2>
  %i.pe = fsub reassoc nsz arcp contract afn <6 x float> %i.pd, %i.pb
  %i.pf = shufflevector <6 x float> %i.pe, <6 x float> poison, <8 x i32> <i32 3, i32 4, i32 5, i32 1, i32 2, i32 0, i32 3, i32 2>
  %i.pg = fmul reassoc nsz arcp contract afn <8 x float> %i.oz, <float f0x3D3470F4, float f0xBAE61976, float f0x3FA6AB48, float f0x3D3470F4, float f0xBAE61976, float f0x3FA6AB48, float f0x3D3470F4, float f0xBAE61976>
  %i.ph = fadd reassoc nsz arcp contract afn <8 x float> %i.pf, %i.pg ; 8 uses
  %4 = insertelement <4 x float> poison, float %i.ou, i64 0
  %5 = insertelement <4 x float> %4, float %i.ov, i64 1
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %7 = fmul reassoc nsz arcp contract afn <4 x float> %6, <float f0x3BB11DFF, float 4.039210e-04, float f0x3D23F6FB, float f0x3BB11DFF>
  %8 = insertelement <4 x float> poison, float %i.ov, i64 0
  %9 = insertelement <4 x float> %8, float %i.ou, i64 1
  %10 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %11 = fmul reassoc nsz arcp contract afn <4 x float> %10, <float f0x3F80DA42, float f0x3C7704B2, float f0x3F7D4DA9, float f0x3F80DA42>
  %12 = fsub reassoc nsz arcp contract afn <4 x float> %11, %7
  %13 = insertelement <4 x float> poison, float %i.ow, i64 0
  %14 = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> zeroinitializer
  %15 = fmul reassoc nsz arcp contract afn <4 x float> %14, <float f0xBAE61976, float f0x3FA6AB48, float f0x3D3470F4, float f0xBAE61976>
  %16 = fadd reassoc nsz arcp contract afn <4 x float> %12, %15 ; 6 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !56 ; 9 uses
  %i.pk = load i32, ptr %i.og, align 4, !tbaa !20
  switch i32 %i.pk, label %bb.ao [
    i32 0, label %bb.aa
    i32 1, label %bb.af
  ]

bb.aa:                                            ; preds = %bb.z
  %i.pl = tail call ptr @dt_alloc_aligned(i64 noundef 2048) #19 ; 39 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pl, i64 64) ]
  %.not.i = icmp eq ptr %i.pl, null
  br i1 %.not.i, label %.preheader253.preheader, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(2048) %i.pl, i8 0, i64 2048, i1 false)
  br label %.preheader253.preheader

.preheader253.preheader:                          ; preds = %bb.aa, %bb.ab
  %i.pm = extractelement <8 x float> %i.ph, i64 0
  %i.pn = extractelement <8 x float> %i.ph, i64 1
  %i.po = extractelement <8 x float> %i.ph, i64 2
  %i.pp = extractelement <8 x float> %i.ph, i64 3
  %i.pq = extractelement <8 x float> %i.ph, i64 4
  %i.pr = extractelement <8 x float> %i.ph, i64 5
  %i.ps = extractelement <4 x float> %16, i64 0
  %i.pt = extractelement <4 x float> %16, i64 1
  %i.pu = extractelement <4 x float> %16, i64 2
  br label %.preheader253

.preheader253:                                    ; preds = %.preheader253.preheader, %bb.ac
  %.0189268 = phi i64 [ %i.to, %bb.ac ], [ 0, %.preheader253.preheader ] ; 2 uses
  %i.pv = uitofp reassoc nsz arcp contract afn nneg i64 %.0189268 to float
  %i.pw = fmul reassoc nnan nsz arcp contract afn float %i.pv, f0x3C340B41 ; 3 uses
  %i.px = fmul reassoc nsz arcp contract afn float %i.pw, %i.pm
  %i.py = fmul reassoc nsz arcp contract afn float %i.pw, %i.pn
  %i.pz = fmul reassoc nsz arcp contract afn float %i.pw, %i.po
  br label %.preheader252

iter.check:                                       ; preds = %bb.ac
  %i.qa = load ptr, ptr %i.pi, align 8, !tbaa !56 ; 14 uses
  %i.qb = getelementptr nuw i8, ptr %i.qa, i64 8
  %i.qc = getelementptr i8, ptr %i.qa, i64 2040
  %i.qd = getelementptr i8, ptr %i.pl, i64 2048
  %bound0307 = icmp ult ptr %i.qb, %i.qd
  %bound1308 = icmp ult ptr %i.pl, %i.qc
  %found.conflict309 = and i1 %bound0307, %bound1308
  br i1 %found.conflict309, label %vec.epilog.scalar.ph.preheader.new, label %vector.body311

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.vector.body, %iter.check
  %.0269.ph = phi i64 [ 2, %iter.check ], [ 506, %vec.epilog.vector.body ]
  br label %vec.epilog.scalar.ph

vector.body311:                                   ; preds = %iter.check, %vector.body311
  %index312 = phi i64 [ %index.next333, %vector.body311 ], [ 0, %iter.check ] ; 3 uses
  %i.qe = or disjoint i64 %index312, 2            ; 2 uses
  %i.qf = getelementptr [4 x i8], ptr %i.pl, i64 %i.qe ; 16 uses
  %i.qg = getelementptr i8, ptr %i.qf, i64 -8
  %i.qh = getelementptr i8, ptr %i.qf, i64 24
  %i.qi = getelementptr i8, ptr %i.qf, i64 56
  %i.qj = getelementptr i8, ptr %i.qf, i64 88
  %wide.load313 = load <8 x float>, ptr %i.qg, align 64, !tbaa !12, !alias.scope !256
  %wide.load314 = load <8 x float>, ptr %i.qh, align 32, !tbaa !12, !alias.scope !256
  %wide.load315 = load <8 x float>, ptr %i.qi, align 64, !tbaa !12, !alias.scope !256
  %wide.load316 = load <8 x float>, ptr %i.qj, align 32, !tbaa !12, !alias.scope !256
  %i.qk = getelementptr i8, ptr %i.qf, i64 -4
  %i.ql = getelementptr i8, ptr %i.qf, i64 28
  %i.qm = getelementptr i8, ptr %i.qf, i64 60
  %i.qn = getelementptr i8, ptr %i.qf, i64 92
  %wide.load317 = load <8 x float>, ptr %i.qk, align 4, !tbaa !12, !alias.scope !256
  %wide.load318 = load <8 x float>, ptr %i.ql, align 4, !tbaa !12, !alias.scope !256
  %wide.load319 = load <8 x float>, ptr %i.qm, align 4, !tbaa !12, !alias.scope !256
  %wide.load320 = load <8 x float>, ptr %i.qn, align 4, !tbaa !12, !alias.scope !256
  %i.qo = fadd reassoc nsz arcp contract afn <8 x float> %wide.load317, %wide.load313
  %i.qp = fadd reassoc nsz arcp contract afn <8 x float> %wide.load318, %wide.load314
  %i.qq = fadd reassoc nsz arcp contract afn <8 x float> %wide.load319, %wide.load315
  %i.qr = fadd reassoc nsz arcp contract afn <8 x float> %wide.load320, %wide.load316
  %i.qs = getelementptr i8, ptr %i.qf, i64 32
  %i.qt = getelementptr i8, ptr %i.qf, i64 64
  %i.qu = getelementptr i8, ptr %i.qf, i64 96
  %wide.load321 = load <8 x float>, ptr %i.qf, align 8, !tbaa !12, !alias.scope !256
  %wide.load322 = load <8 x float>, ptr %i.qs, align 8, !tbaa !12, !alias.scope !256
  %wide.load323 = load <8 x float>, ptr %i.qt, align 8, !tbaa !12, !alias.scope !256
  %wide.load324 = load <8 x float>, ptr %i.qu, align 8, !tbaa !12, !alias.scope !256
  %i.qv = fadd reassoc nsz arcp contract afn <8 x float> %i.qo, %wide.load321
  %i.qw = fadd reassoc nsz arcp contract afn <8 x float> %i.qp, %wide.load322
  %i.qx = fadd reassoc nsz arcp contract afn <8 x float> %i.qq, %wide.load323
  %i.qy = fadd reassoc nsz arcp contract afn <8 x float> %i.qr, %wide.load324
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index312 ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 12
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 44
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 76
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 108
  %wide.load325 = load <8 x float>, ptr %i.ra, align 4, !tbaa !12, !alias.scope !256
  %wide.load326 = load <8 x float>, ptr %i.rb, align 4, !tbaa !12, !alias.scope !256
  %wide.load327 = load <8 x float>, ptr %i.rc, align 4, !tbaa !12, !alias.scope !256
  %wide.load328 = load <8 x float>, ptr %i.rd, align 4, !tbaa !12, !alias.scope !256
  %i.re = fadd reassoc nsz arcp contract afn <8 x float> %i.qv, %wide.load325
  %i.rf = fadd reassoc nsz arcp contract afn <8 x float> %i.qw, %wide.load326
  %i.rg = fadd reassoc nsz arcp contract afn <8 x float> %i.qx, %wide.load327
  %i.rh = fadd reassoc nsz arcp contract afn <8 x float> %i.qy, %wide.load328
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qf, i64 40
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qf, i64 72
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qf, i64 104
  %wide.load329 = load <8 x float>, ptr %i.ri, align 16, !tbaa !12, !alias.scope !256
  %wide.load330 = load <8 x float>, ptr %i.rj, align 16, !tbaa !12, !alias.scope !256
  %wide.load331 = load <8 x float>, ptr %i.rk, align 16, !tbaa !12, !alias.scope !256
  %wide.load332 = load <8 x float>, ptr %i.rl, align 16, !tbaa !12, !alias.scope !256
  %i.rm = fadd reassoc nsz arcp contract afn <8 x float> %i.re, %wide.load329
  %i.rn = fadd reassoc nsz arcp contract afn <8 x float> %i.rf, %wide.load330
  %i.ro = fadd reassoc nsz arcp contract afn <8 x float> %i.rg, %wide.load331
  %i.rp = fadd reassoc nsz arcp contract afn <8 x float> %i.rh, %wide.load332
  %i.rq = fmul reassoc nsz arcp contract afn <8 x float> %i.rm, splat (float 2.000000e-01)
  %i.rr = fmul reassoc nsz arcp contract afn <8 x float> %i.rn, splat (float 2.000000e-01)
  %i.rs = fmul reassoc nsz arcp contract afn <8 x float> %i.ro, splat (float 2.000000e-01)
  %i.rt = fmul reassoc nsz arcp contract afn <8 x float> %i.rp, splat (float 2.000000e-01)
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.qe ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 32
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 64
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 96
  store <8 x float> %i.rq, ptr %i.ru, align 4, !tbaa !12, !alias.scope !257, !noalias !256
  store <8 x float> %i.rr, ptr %i.rv, align 4, !tbaa !12, !alias.scope !257, !noalias !256
  store <8 x float> %i.rs, ptr %i.rw, align 4, !tbaa !12, !alias.scope !257, !noalias !256
  store <8 x float> %i.rt, ptr %i.rx, align 4, !tbaa !12, !alias.scope !257, !noalias !256
  %index.next333 = add nuw i64 %index312, 32      ; 2 uses
  %i.ry = icmp eq i64 %index.next333, 480
  br i1 %i.ry, label %vec.epilog.vector.body, label %vector.body311, !llvm.loop !249

vec.epilog.vector.body:                           ; preds = %vector.body311
  %i.rz = getelementptr i8, ptr %i.pl, i64 1928
  %i.sa = getelementptr i8, ptr %i.pl, i64 1920
  %wide.load336 = load <8 x float>, ptr %i.sa, align 64, !tbaa !12, !alias.scope !256
  %i.sb = getelementptr i8, ptr %i.pl, i64 1924
  %wide.load337 = load <8 x float>, ptr %i.sb, align 4, !tbaa !12, !alias.scope !256
  %i.sc = fadd reassoc nsz arcp contract afn <8 x float> %wide.load337, %wide.load336
  %wide.load338 = load <8 x float>, ptr %i.rz, align 8, !tbaa !12, !alias.scope !256
  %i.sd = fadd reassoc nsz arcp contract afn <8 x float> %i.sc, %wide.load338
  %i.se = getelementptr inbounds nuw i8, ptr %i.pl, i64 1932
  %wide.load339 = load <8 x float>, ptr %i.se, align 4, !tbaa !12, !alias.scope !256
  %i.sf = fadd reassoc nsz arcp contract afn <8 x float> %i.sd, %wide.load339
  %i.sg = getelementptr i8, ptr %i.pl, i64 1936
  %wide.load340 = load <8 x float>, ptr %i.sg, align 16, !tbaa !12, !alias.scope !256
  %i.sh = fadd reassoc nsz arcp contract afn <8 x float> %i.sf, %wide.load340
  %i.si = fmul reassoc nsz arcp contract afn <8 x float> %i.sh, splat (float 2.000000e-01)
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qa, i64 1928
  store <8 x float> %i.si, ptr %i.sj, align 4, !tbaa !12, !alias.scope !257, !noalias !256
  %i.sk = getelementptr i8, ptr %i.pl, i64 1960
  %i.sl = getelementptr i8, ptr %i.pl, i64 1952
  %wide.load336.1 = load <8 x float>, ptr %i.sl, align 32, !tbaa !12, !alias.scope !256
  %i.sm = getelementptr i8, ptr %i.pl, i64 1956
  %wide.load337.1 = load <8 x float>, ptr %i.sm, align 4, !tbaa !12, !alias.scope !256
  %i.sn = fadd reassoc nsz arcp contract afn <8 x float> %wide.load337.1, %wide.load336.1
  %wide.load338.1 = load <8 x float>, ptr %i.sk, align 8, !tbaa !12, !alias.scope !256
  %i.so = fadd reassoc nsz arcp contract afn <8 x float> %i.sn, %wide.load338.1
  %i.sp = getelementptr inbounds nuw i8, ptr %i.pl, i64 1964
  %wide.load339.1 = load <8 x float>, ptr %i.sp, align 4, !tbaa !12, !alias.scope !256
  %i.sq = fadd reassoc nsz arcp contract afn <8 x float> %i.so, %wide.load339.1
  %i.sr = getelementptr i8, ptr %i.pl, i64 1968
  %wide.load340.1 = load <8 x float>, ptr %i.sr, align 16, !tbaa !12, !alias.scope !256
  %i.ss = fadd reassoc nsz arcp contract afn <8 x float> %i.sq, %wide.load340.1
  %i.st = fmul reassoc nsz arcp contract afn <8 x float> %i.ss, splat (float 2.000000e-01)
  %i.su = getelementptr inbounds nuw i8, ptr %i.qa, i64 1960
  store <8 x float> %i.st, ptr %i.su, align 4, !tbaa !12, !alias.scope !257, !noalias !256
  %i.sv = getelementptr i8, ptr %i.pl, i64 1992
  %i.sw = getelementptr i8, ptr %i.pl, i64 1984
  %wide.load336.2 = load <8 x float>, ptr %i.sw, align 64, !tbaa !12, !alias.scope !256
  %i.sx = getelementptr i8, ptr %i.pl, i64 1988
  %wide.load337.2 = load <8 x float>, ptr %i.sx, align 4, !tbaa !12, !alias.scope !256
  %i.sy = fadd reassoc nsz arcp contract afn <8 x float> %wide.load337.2, %wide.load336.2
  %wide.load338.2 = load <8 x float>, ptr %i.sv, align 8, !tbaa !12, !alias.scope !256
  %i.sz = fadd reassoc nsz arcp contract afn <8 x float> %i.sy, %wide.load338.2
  %i.ta = getelementptr inbounds nuw i8, ptr %i.pl, i64 1996
  %wide.load339.2 = load <8 x float>, ptr %i.ta, align 4, !tbaa !12, !alias.scope !256
  %i.tb = fadd reassoc nsz arcp contract afn <8 x float> %i.sz, %wide.load339.2
  %i.tc = getelementptr i8, ptr %i.pl, i64 2000
  %wide.load340.2 = load <8 x float>, ptr %i.tc, align 16, !tbaa !12, !alias.scope !256
  %i.td = fadd reassoc nsz arcp contract afn <8 x float> %i.tb, %wide.load340.2
  %i.te = fmul reassoc nsz arcp contract afn <8 x float> %i.td, splat (float 2.000000e-01)
  %i.tf = getelementptr inbounds nuw i8, ptr %i.qa, i64 1992
  store <8 x float> %i.te, ptr %i.tf, align 4, !tbaa !12, !alias.scope !257, !noalias !256
  br label %vec.epilog.scalar.ph.preheader.new

.preheader252:                                    ; preds = %.preheader253, %bb.ad
  %.0188267 = phi i64 [ 0, %.preheader253 ], [ %i.tp, %bb.ad ] ; 2 uses
  %i.tg = uitofp reassoc nsz arcp contract afn nneg i64 %.0188267 to float
  %i.th = fmul reassoc nnan nsz arcp contract afn float %i.tg, f0x3C340B41 ; 3 uses
  %i.ti = fmul reassoc nsz arcp contract afn float %i.th, %i.pp
  %i.tj = fadd reassoc nsz arcp contract afn float %i.ti, %i.px
  %i.tk = fmul reassoc nsz arcp contract afn float %i.th, %i.pq
  %i.tl = fadd reassoc nsz arcp contract afn float %i.tk, %i.py
  %i.tm = fmul reassoc nsz arcp contract afn float %i.th, %i.pr
  %i.tn = fadd reassoc nsz arcp contract afn float %i.tm, %i.pz
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ad
  %i.to = add nuw nsw i64 %.0189268, 1            ; 2 uses
  %exitcond271.not = icmp eq i64 %i.to, 92
  br i1 %exitcond271.not, label %iter.check, label %.preheader253

bb.ad:                                            ; preds = %bb.ae
  %i.tp = add nuw nsw i64 %.0188267, 1            ; 2 uses
  %exitcond270.not = icmp eq i64 %i.tp, 92
  br i1 %exitcond270.not, label %bb.ac, label %.preheader252

bb.ae:                                            ; preds = %.preheader252, %bb.ae
  %.0187266 = phi i64 [ 0, %.preheader252 ], [ %i.wu, %bb.ae ] ; 2 uses
  %i.tq = uitofp reassoc nsz arcp contract afn nneg i64 %.0187266 to float
  %i.tr = fmul reassoc nnan nsz arcp contract afn float %i.tq, f0x3C340B41 ; 3 uses
  %i.ts = fmul reassoc nsz arcp contract afn float %i.tr, %i.pu
  %i.tt = fadd reassoc nsz arcp contract afn float %i.tj, %i.ts ; 2 uses
  %i.tu = fmul reassoc nsz arcp contract afn float %i.tr, %i.ps
  %i.tv = fadd reassoc nsz arcp contract afn float %i.tl, %i.tu
  %i.tw = fmul reassoc nsz arcp contract afn float %i.tr, %i.pt
  %i.tx = fadd reassoc nsz arcp contract afn float %i.tn, %i.tw ; 3 uses
  %i.ty = fmul reassoc nsz arcp contract afn float %i.tt, 1.150000e+00
  %i.tz = fmul reassoc nsz arcp contract afn float %i.tx, f0x3E199998
  %i.ua = fsub reassoc nsz arcp contract afn float %i.ty, %i.tz ; 2 uses
  %i.ub = fmul reassoc nsz arcp contract afn float %i.tv, 6.600000e-01
  %i.uc = fmul reassoc nsz arcp contract afn float %i.tt, f0x3EAE147A
  %i.ud = fadd reassoc nsz arcp contract afn float %i.ub, %i.uc ; 2 uses
  %i.ue = insertelement <2 x float> poison, float %i.ua, i64 0
  %i.uf = shufflevector <2 x float> %i.ue, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ug = fmul reassoc nsz arcp contract afn <2 x float> %i.uf, <float -2.015100e-05, float f0x382DF9B4>
  %i.uh = insertelement <2 x float> poison, float %i.ud, i64 0
  %i.ui = shufflevector <2 x float> %i.uh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uj = fmul reassoc nsz arcp contract afn <2 x float> %i.ui, <float f0x38EB0462, float f0x387344EC>
  %i.uk = insertelement <2 x float> poison, float %i.tx, i64 0
  %i.ul = shufflevector <2 x float> %i.uk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.um = fmul reassoc nsz arcp contract afn <2 x float> %i.ul, <float 5.310080e-06, float 1.464800e-06>
  %i.un = fadd reassoc nsz arcp contract afn <2 x float> %i.ug, %i.um
  %i.uo = fadd reassoc nsz arcp contract afn <2 x float> %i.un, %i.uj
  %.reass265 = fmul reassoc nsz arcp contract afn float %i.ua, -1.660080e-06
  %.reass263 = fmul reassoc nsz arcp contract afn float %i.ud, 2.648000e-05
  %.reass264 = fmul reassoc nsz arcp contract afn float %i.tx, f0x388C30BE
  %i.up = fadd reassoc nsz arcp contract afn float %.reass265, %.reass264
  %i.uq = fadd reassoc nsz arcp contract afn float %i.up, %.reass263
  %i.ur = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.uo, <2 x float> zeroinitializer)
  %i.us = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.ur, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.ut = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.us, splat (float f0x4196D000)
  %i.uu = fadd reassoc nsz arcp contract afn <2 x float> %i.ut, splat (float f0x3F560000)
  %i.uv = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.us, splat (float 1.868750e+01)
  %i.uw = fadd reassoc nsz arcp contract afn <2 x float> %i.uv, splat (float 1.000000e+00)
  %i.ux = fdiv reassoc nsz arcp contract afn <2 x float> %i.uu, %i.uw
  %i.uy = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.ux, <2 x float> splat (float f0x430608CD)) ; 2 uses
  %i.uz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.uq, float 0.000000e+00)
  %i.va = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.uz, float f0x3E232000) ; 2 uses
  %i.vb = fmul reassoc nnan nsz arcp contract afn float %i.va, f0x4196D000
  %i.vc = fadd reassoc nsz arcp contract afn float %i.vb, f0x3F560000
  %i.vd = fmul reassoc nnan nsz arcp contract afn float %i.va, 1.868750e+01
  %i.ve = fadd reassoc nsz arcp contract afn float %i.vd, 1.000000e+00
  %i.vf = fdiv reassoc nsz arcp contract afn float %i.vc, %i.ve
  %i.vg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.vf, float f0x430608CD) ; 3 uses
  %i.vh = extractelement <2 x float> %i.uy, i64 0 ; 3 uses
  %i.vi = extractelement <2 x float> %i.uy, i64 1 ; 3 uses
  %i.vj = fadd reassoc nsz arcp contract afn float %i.vh, %i.vi
  %i.vk = fmul reassoc nsz arcp contract afn float %i.vj, 5.000000e-01
  %i.vl = fmul reassoc nsz arcp contract afn float %i.vg, 0.000000e+00
  %i.vm = fadd reassoc nsz arcp contract afn float %i.vk, %i.vl ; 2 uses
  %i.vn = fmul reassoc nsz arcp contract afn float %i.vi, 3.524000e+00
  %i.vo = fmul reassoc nsz arcp contract afn float %i.vh, f0x40822279
  %i.vp = fsub reassoc nsz arcp contract afn float %i.vn, %i.vo
  %i.vq = fmul reassoc nsz arcp contract afn float %i.vg, 5.427080e-01
  %i.vr = fadd reassoc nsz arcp contract afn float %i.vp, %i.vq ; 2 uses
  %i.vs = fmul reassoc nsz arcp contract afn float %i.vi, 1.990760e-01
  %i.vt = fmul reassoc nsz arcp contract afn float %i.vh, f0x3F8C63E9
  %i.vu = fadd reassoc nsz arcp contract afn float %i.vt, %i.vs
  %i.vv = fmul reassoc nsz arcp contract afn float %i.vg, f0xBFA5DF3B
  %i.vw = fadd reassoc nsz arcp contract afn float %i.vu, %i.vv ; 2 uses
  %i.vx = fmul reassoc nsz arcp contract afn float %i.vm, 4.400000e-01
  %i.vy = fmul reassoc nsz arcp contract afn float %i.vm, 5.600000e-01
  %i.vz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.vy
  %i.wa = fdiv reassoc nsz arcp contract afn float %i.vx, %i.vz
  %i.wb = fadd reassoc nsz arcp contract afn float %i.wa, -1.629550e-11
  %i.wc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wb, float 0.000000e+00) ; 2 uses
  %i.wd = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.vw, float noundef %i.vr) #25
  %i.we = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.vw, float %i.vr)
  %i.wf = fcmp reassoc nsz arcp contract afn ogt float %i.wc, 0.000000e+00
  %i.wg = fdiv reassoc nsz arcp contract afn float %i.wd, %i.wc
  %i.wh = select reassoc nsz arcp contract afn i1 %i.wf, float %i.wg, float 0.000000e+00
  %i.wi = fmul reassoc nsz arcp contract afn float %i.we, f0x42A2A806
  %i.wj = fadd reassoc nsz arcp contract afn float %i.wi, 2.555000e+02
  %i.wk = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.wj)
  %i.wl = fptosi float %i.wk to i32               ; 2 uses
  %i.wm = lshr i32 %i.wl, 22
  %i.wn = and i32 %i.wm, 512
  %i.wo = add nsw i32 %i.wn, %i.wl                ; 2 uses
  %.inv = icmp slt i32 %i.wo, 512
  %.neg = select i1 %.inv, i32 0, i32 -512
  %i.wp = add i32 %.neg, %i.wo
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr inbounds [4 x i8], ptr %i.pl, i64 %i.wq ; 2 uses
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !12
  %i.wt = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ws, float %i.wh)
  store float %i.wt, ptr %i.wr, align 4, !tbaa !12
  %i.wu = add nuw nsw i64 %.0187266, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.wu, 92
  br i1 %exitcond.not, label %bb.ad, label %bb.ae

.loopexit:                                        ; preds = %vec.epilog.scalar.ph
  %i.wv = getelementptr inbounds nuw i8, ptr %i.pl, i64 2040 ; 3 uses
  %i.ww = load float, ptr %i.wv, align 8, !tbaa !12
  %i.wx = getelementptr inbounds nuw i8, ptr %i.pl, i64 2044 ; 4 uses
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !12
  %i.wz = fadd reassoc nsz arcp contract afn float %i.wy, %i.ww
  %i.xa = load float, ptr %i.pl, align 64, !tbaa !12
  %i.xb = fadd reassoc nsz arcp contract afn float %i.wz, %i.xa
  %i.xc = getelementptr inbounds nuw i8, ptr %i.pl, i64 4 ; 3 uses
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !12
  %i.xe = fadd reassoc nsz arcp contract afn float %i.xb, %i.xd
  %i.xf = getelementptr inbounds nuw i8, ptr %i.pl, i64 8 ; 2 uses
  %i.xg = load float, ptr %i.xf, align 8, !tbaa !12
  %i.xh = fadd reassoc nsz arcp contract afn float %i.xe, %i.xg
  %i.xi = fmul reassoc nsz arcp contract afn float %i.xh, 2.000000e-01
  store float %i.xi, ptr %i.qa, align 4, !tbaa !12
  %i.xj = load float, ptr %i.wx, align 4, !tbaa !12
  %i.xk = load float, ptr %i.pl, align 64, !tbaa !12
  %i.xl = fadd reassoc nsz arcp contract afn float %i.xk, %i.xj
  %i.xm = load float, ptr %i.xc, align 4, !tbaa !12
  %i.xn = fadd reassoc nsz arcp contract afn float %i.xl, %i.xm
  %i.xo = load float, ptr %i.xf, align 8, !tbaa !12
  %i.xp = fadd reassoc nsz arcp contract afn float %i.xn, %i.xo
  %i.xq = getelementptr inbounds nuw i8, ptr %i.pl, i64 12
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !12
  %i.xs = fadd reassoc nsz arcp contract afn float %i.xp, %i.xr
  %i.xt = fmul reassoc nsz arcp contract afn float %i.xs, 2.000000e-01
  %i.xu = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  store float %i.xt, ptr %i.xu, align 4, !tbaa !12
  %i.xv = getelementptr inbounds nuw i8, ptr %i.pl, i64 2036 ; 2 uses
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !12
  %i.xx = load float, ptr %i.wv, align 8, !tbaa !12
  %i.xy = fadd reassoc nsz arcp contract afn float %i.xx, %i.xw
  %i.xz = load float, ptr %i.wx, align 4, !tbaa !12
  %i.ya = fadd reassoc nsz arcp contract afn float %i.xy, %i.xz
  %i.yb = load float, ptr %i.pl, align 64, !tbaa !12
  %i.yc = fadd reassoc nsz arcp contract afn float %i.ya, %i.yb
  %i.yd = load float, ptr %i.xc, align 4, !tbaa !12
  %i.ye = fadd reassoc nsz arcp contract afn float %i.yc, %i.yd
  %i.yf = fmul reassoc nsz arcp contract afn float %i.ye, 2.000000e-01
  %i.yg = getelementptr inbounds nuw i8, ptr %i.qa, i64 2044
  store float %i.yf, ptr %i.yg, align 4, !tbaa !12
  %i.yh = getelementptr inbounds nuw i8, ptr %i.pl, i64 2032
  %i.yi = load float, ptr %i.yh, align 16, !tbaa !12
  %i.yj = load float, ptr %i.xv, align 4, !tbaa !12
  %i.yk = fadd reassoc nsz arcp contract afn float %i.yj, %i.yi
  %i.yl = load float, ptr %i.wv, align 8, !tbaa !12
  %i.ym = fadd reassoc nsz arcp contract afn float %i.yk, %i.yl
  %i.yn = load float, ptr %i.wx, align 4, !tbaa !12
  %i.yo = fadd reassoc nsz arcp contract afn float %i.ym, %i.yn
  %i.yp = load float, ptr %i.pl, align 64, !tbaa !12
  %i.yq = fadd reassoc nsz arcp contract afn float %i.yo, %i.yp
  %i.yr = fmul reassoc nsz arcp contract afn float %i.yq, 2.000000e-01
  %i.ys = getelementptr inbounds nuw i8, ptr %i.qa, i64 2040
  store float %i.yr, ptr %i.ys, align 4, !tbaa !12
  br label %.sink.split

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.0269 = phi i64 [ %.0269.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.zt, %vec.epilog.scalar.ph ] ; 6 uses
  %i.yt = getelementptr [4 x i8], ptr %i.pl, i64 %.0269 ; 2 uses
  %i.yu = getelementptr i8, ptr %i.yt, i64 -8
  %i.yv = or disjoint i64 %.0269, 1               ; 2 uses
  %i.yw = load <4 x float>, ptr %i.yu, align 4, !tbaa !12
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !12
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.yy, <4 x float> %i.yw)
  %i.yz = fmul reassoc nsz arcp contract afn float %op.rdx, 2.000000e-01
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %.0269
  store float %i.yz, ptr %i.za, align 4, !tbaa !12
  %i.zb = getelementptr [4 x i8], ptr %i.pl, i64 %i.yv ; 2 uses
  %i.zc = getelementptr i8, ptr %i.zb, i64 -8
  %i.zd = add nuw nsw i64 %.0269, 2               ; 2 uses
  %i.ze = load <4 x float>, ptr %i.zc, align 4, !tbaa !12
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !12
  %op.rdx.1 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.zg, <4 x float> %i.ze)
  %i.zh = fmul reassoc nsz arcp contract afn float %op.rdx.1, 2.000000e-01
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.yv
  store float %i.zh, ptr %i.zi, align 4, !tbaa !12
  %i.zj = getelementptr [4 x i8], ptr %i.pl, i64 %i.zd ; 2 uses
  %i.zk = getelementptr i8, ptr %i.zj, i64 -8
  %i.zl = add nuw nsw i64 %.0269, 3               ; 2 uses
  %i.zm = load <4 x float>, ptr %i.zk, align 4, !tbaa !12
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !12
  %op.rdx.2 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.zo, <4 x float> %i.zm)
  %i.zp = fmul reassoc nsz arcp contract afn float %op.rdx.2, 2.000000e-01
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.zd
  store float %i.zp, ptr %i.zq, align 4, !tbaa !12
  %i.zr = getelementptr [4 x i8], ptr %i.pl, i64 %i.zl ; 2 uses
  %i.zs = getelementptr i8, ptr %i.zr, i64 -8
  %i.zt = add nuw nsw i64 %.0269, 4               ; 2 uses
  %i.zu = load <4 x float>, ptr %i.zs, align 4, !tbaa !12
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !12
  %op.rdx.3 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.zw, <4 x float> %i.zu)
  %i.zx = fmul reassoc nsz arcp contract afn float %op.rdx.3, 2.000000e-01
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.zl
  store float %i.zx, ptr %i.zy, align 4, !tbaa !12
  %exitcond272.not.3 = icmp eq i64 %i.zt, 510
  br i1 %exitcond272.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !250

bb.af:                                            ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %i.pj, i8 0, i64 2048, i1 false), !tbaa !12
  %i.zz = tail call ptr @dt_alloc_aligned(i64 noundef 2048) #19 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zz, i64 64) ]
  %.not.i.i = icmp eq ptr %i.zz, null
  br i1 %.not.i.i, label %dt_calloc_align_float.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(2048) %i.zz, i8 0, i64 2048, i1 false)
  br label %dt_calloc_align_float.exit.i

dt_calloc_align_float.exit.i:                     ; preds = %bb.ag, %bb.af
  %17 = extractelement <4 x float> %16, i64 2
  %18 = fmul reassoc nsz arcp contract afn float %17, 0.000000e+00 ; 2 uses
  %i.aaa = fmul reassoc nsz arcp contract afn <8 x float> %i.ph, zeroinitializer ; 3 uses
  %i.aab = shufflevector <8 x float> %i.ph, <8 x float> poison, <8 x i32> <i32 3, i32 4, i32 5, i32 0, i32 1, i32 2, i32 3, i32 1>
  %i.aac = fmul reassoc nsz arcp contract afn <8 x float> %i.aab, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.aad = fadd reassoc nsz arcp contract afn <8 x float> %i.aaa, %i.aac ; 5 uses
  %19 = extractelement <8 x float> %i.aad, i64 3
  %20 = fadd reassoc nsz arcp contract afn float %19, %18
  %.sroa.0116.0.vec.insert.i = insertelement <4 x float> <float poison, float poison, float poison, float undef>, float %20, i64 0
  %21 = extractelement <8 x float> %i.aad, i64 4
  %22 = extractelement <8 x float> %i.aad, i64 5
  %23 = extractelement <8 x float> %i.aad, i64 0
  %24 = fadd reassoc nsz arcp contract afn float %23, %18
  %.sroa.0114.0.vec.insert.i = insertelement <4 x float> <float poison, float poison, float poison, float undef>, float %24, i64 0
  %25 = fmul reassoc nsz arcp contract afn <4 x float> %16, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 3 uses
  %26 = extractelement <4 x float> %25, i64 0
  %27 = fadd reassoc nsz arcp contract afn float %21, %26
  %.sroa.0116.4.vec.insert.i = insertelement <4 x float> %.sroa.0116.0.vec.insert.i, float %27, i64 1
  %28 = extractelement <4 x float> %25, i64 1
  %29 = fadd reassoc nsz arcp contract afn float %22, %28
  %.sroa.0116.8.vec.insert.i = insertelement <4 x float> %.sroa.0116.4.vec.insert.i, float %29, i64 2
  %30 = shufflevector <8 x float> %i.aad, <8 x float> poison, <4 x i32> <i32 1, i32 2, i32 6, i32 7>
  %31 = fadd reassoc nsz arcp contract afn <4 x float> %30, %25 ; 2 uses
  %32 = shufflevector <4 x float> %.sroa.0114.0.vec.insert.i, <4 x float> %31, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %33 = shufflevector <4 x float> %31, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %shift = shufflevector <8 x float> %i.aaa, <8 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <8 x float> %shift, %i.aaa
  %i.aae = extractelement <8 x float> %foldExtExtBinop, i64 2
  %i.aaf = extractelement <4 x float> %16, i64 1
  %i.aag = fadd reassoc nsz arcp contract afn float %i.aae, %i.aaf
  %.sroa.0112.8.vec.insert.i = insertelement <4 x float> %33, float %i.aag, i64 2
  %i.aah = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0116.8.vec.insert.i, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <4 x float> %i.aah, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract4.i.i = extractelement <4 x float> %i.aah, i64 1 ; 2 uses
  %i.aai = fadd reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract4.i.i
  %.sroa.0.8.vec.extract.i.i = extractelement <4 x float> %i.aah, i64 2
  %i.aaj = fadd reassoc nsz arcp contract afn float %i.aai, %.sroa.0.8.vec.extract.i.i ; 3 uses
  %i.aak = fcmp reassoc nsz arcp contract afn ogt float %i.aaj, 0.000000e+00 ; 2 uses
  %i.aal = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i, %i.aaj
  %i.aam = select reassoc nsz arcp contract afn i1 %i.aak, float %i.aal, float 3.127100e-01 ; 6 uses
  %i.aan = fdiv reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract4.i.i, %i.aaj
  %i.aao = select reassoc nsz arcp contract afn i1 %i.aak, float %i.aan, float 3.290200e-01 ; 5 uses
  %i.aap = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %32, <4 x float> zeroinitializer) ; 3 uses
  %i.aaq = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0112.8.vec.insert.i, <4 x float> zeroinitializer) ; 3 uses
  %i.aar = fadd reassoc nsz arcp contract afn float %i.aao, -3.290200e-01
  %i.aas = fadd reassoc nsz arcp contract afn float %i.aam, -3.127100e-01 ; 2 uses
  %i.aat = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.aar, float %i.aas) ; 3 uses
  %i.aau = shufflevector <4 x float> %i.aap, <4 x float> %i.aaq, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.aav = shufflevector <4 x float> %i.aap, <4 x float> %i.aaq, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.aaw = fadd reassoc nsz arcp contract afn <2 x float> %i.aau, %i.aav
  %i.aax = shufflevector <4 x float> %i.aap, <4 x float> %i.aaq, <2 x i32> <i32 2, i32 6>
  %i.aay = fadd reassoc nsz arcp contract afn <2 x float> %i.aaw, %i.aax ; 3 uses
  %i.aaz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.aay, zeroinitializer ; 2 uses
  %i.aba = fdiv reassoc nsz arcp contract afn <2 x float> %i.aau, %i.aay
  %i.abb = select <2 x i1> %i.aaz, <2 x float> %i.aba, <2 x float> splat (float 3.127100e-01) ; 3 uses
  %i.abc = fdiv reassoc nsz arcp contract afn <2 x float> %i.aav, %i.aay
  %i.abd = select <2 x i1> %i.aaz, <2 x float> %i.abc, <2 x float> splat (float 3.290200e-01) ; 3 uses
  %i.abe = fadd reassoc nsz arcp contract afn <2 x float> %i.abd, splat (float -3.290200e-01)
  %i.abf = fadd reassoc nsz arcp contract afn <2 x float> %i.abb, splat (float -3.127100e-01) ; 3 uses
  %i.abg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.atan2.v2f32(<2 x float> %i.abe, <2 x float> %i.abf) ; 4 uses
  %i.abh = extractelement <2 x float> %i.abg, i64 1
  %i.abi = fsub reassoc nsz arcp contract afn float %i.aat, %i.abh ; 2 uses
  %i.abj = fcmp reassoc nsz arcp contract afn olt float %i.abi, f0xC0490FDB
  %i.abk = select reassoc nsz arcp contract afn i1 %i.abj, float f0x40C90FDB, float 0.000000e+00
  %i.abl = fadd reassoc nsz arcp contract afn float %i.abk, %i.abi ; 2 uses
  %i.abm = fcmp reassoc nsz arcp contract afn ogt float %i.abl, f0x40490FDB
  %i.abn = select reassoc nsz arcp contract afn i1 %i.abm, float f0x40C90FDB, float 0.000000e+00
  %i.abo = fsub reassoc nsz arcp contract afn float %i.abl, %i.abn
  %i.abp = shufflevector <2 x float> %i.abg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.abq = insertelement <2 x float> %i.abp, float %i.aat, i64 0
  %i.abr = fsub reassoc nsz arcp contract afn <2 x float> %i.abg, %i.abq ; 2 uses
  %i.abs = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.abr, splat (float f0xC0490FDB)
  %i.abt = select <2 x i1> %i.abs, <2 x float> splat (float f0x40C90FDB), <2 x float> zeroinitializer
  %i.abu = fadd reassoc nsz arcp contract afn <2 x float> %i.abt, %i.abr ; 2 uses
  %i.abv = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.abu, splat (float f0x40490FDB)
  %i.abw = select <2 x i1> %i.abv, <2 x float> splat (float f0x40C90FDB), <2 x float> zeroinitializer
  %i.abx = fsub reassoc nsz arcp contract afn <2 x float> %i.abu, %i.abw ; 2 uses
  %i.aby = extractelement <2 x float> %i.abd, i64 0 ; 4 uses
  %i.abz = fsub reassoc nsz arcp contract afn float 3.290200e-01, %i.aby
  %i.aca = extractelement <2 x float> %i.abd, i64 1 ; 4 uses
  %i.acb = fsub reassoc nsz arcp contract afn float %i.aca, %i.aby ; 2 uses
  %i.acc = extractelement <2 x float> %i.abb, i64 0 ; 5 uses
  %i.acd = extractelement <2 x float> %i.abb, i64 1 ; 5 uses
  %i.ace = fsub reassoc nsz arcp contract afn float %i.acc, %i.acd
  %i.acf = fsub reassoc nsz arcp contract afn float %i.acd, %i.acc
  %i.acg = fsub reassoc nsz arcp contract afn float 3.290200e-01, %i.aao
  %i.ach = fsub reassoc nsz arcp contract afn float %i.aby, %i.aao ; 2 uses
  %i.aci = fsub reassoc nsz arcp contract afn float %i.aam, %i.acc
  %i.acj = fsub reassoc nsz arcp contract afn float %i.acc, %i.aam
  %i.ack = fsub reassoc nsz arcp contract afn float 3.290200e-01, %i.aca
  %i.acl = fsub reassoc nsz arcp contract afn float %i.aao, %i.aca ; 2 uses
  %i.acm = fsub reassoc nsz arcp contract afn float %i.acd, %i.aam
  %i.acn = fsub reassoc nsz arcp contract afn float %i.aam, %i.acd
  %i.aco = extractelement <2 x float> %i.abf, i64 0
  %i.acp = extractelement <2 x float> %i.abf, i64 1
  %i.acq = extractelement <2 x float> %i.abx, i64 0
  %i.acr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.abo
  %shift344 = shufflevector <2 x float> %i.abx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.acs = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %shift344
  %i.act = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.acq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.an, %dt_calloc_align_float.exit.i
  %.079150.i = phi i32 [ 0, %dt_calloc_align_float.exit.i ], [ %i.ahk, %bb.an ] ; 2 uses
  %i.acu = uitofp nsz nneg i32 %.079150.i to float
  %i.acv = fmul reassoc nnan nsz arcp contract afn float %i.acu, f0x3980ADFD
  %i.acw = fadd reassoc nsz arcp contract afn float %i.acv, f0xC0490FDB ; 3 uses
  %i.acx = tail call reassoc nsz arcp contract afn float @llvm.tan.f32(float %i.acw) ; 6 uses
  %i.acy = insertelement <2 x float> poison, float %i.acw, i64 0
  %i.acz = shufflevector <2 x float> %i.acy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ada = fsub reassoc nsz arcp contract afn <2 x float> %i.acz, %i.abg ; 2 uses
  %i.adb = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ada, splat (float f0xC0490FDB)
  %i.adc = select <2 x i1> %i.adb, <2 x float> splat (float f0x40C90FDB), <2 x float> zeroinitializer
  %i.add = fadd reassoc nsz arcp contract afn <2 x float> %i.adc, %i.ada ; 2 uses
  %i.ade = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.add, splat (float f0x40490FDB)
  %i.adf = select <2 x i1> %i.ade, <2 x float> splat (float f0x40C90FDB), <2 x float> zeroinitializer
  %i.adg = fsub reassoc nsz arcp contract afn <2 x float> %i.add, %i.adf ; 2 uses
  %i.adh = extractelement <2 x float> %i.adg, i64 1
  %i.adi = fmul reassoc nsz arcp contract afn float %i.adh, %i.acr ; 4 uses
  %i.adj = fmul reassoc nsz arcp contract afn <2 x float> %i.adg, %i.acs
  %i.adk = extractelement <2 x float> %i.adj, i64 0 ; 4 uses
  %i.adl = fcmp reassoc nsz arcp contract afn ogt float %i.adi, 1.000000e+00
  %i.adm = fcmp reassoc nsz arcp contract afn olt float %i.adi, 0.000000e+00
  %i.adn = select reassoc nsz arcp contract afn i1 %i.adm, float 0.000000e+00, float %i.adi
  %i.ado = select reassoc nsz arcp contract afn i1 %i.adl, float 1.000000e+00, float %i.adn
  %i.adp = fcmp reassoc nsz arcp contract afn oeq float %i.adi, %i.ado
  br i1 %i.adp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.adq = fmul reassoc nsz arcp contract afn float %i.acx, %i.acp
  %i.adr = fadd reassoc nsz arcp contract afn float %i.ack, %i.adq
  %i.ads = fmul reassoc nsz arcp contract afn float %i.acx, %i.acm
  %i.adt = fadd reassoc nsz arcp contract afn float %i.ads, %i.acl
  %i.adu = fdiv reassoc nsz arcp contract afn float %i.adr, %i.adt ; 2 uses
  %i.adv = fmul reassoc nsz arcp contract afn float %i.adu, %i.acn
  %i.adw = fadd reassoc nsz arcp contract afn float %i.adv, %i.acd
  %i.adx = fmul reassoc nsz arcp contract afn float %i.adu, %i.acl
  %i.ady = fadd reassoc nsz arcp contract afn float %i.adx, %i.aca
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.adz = fsub reassoc nsz arcp contract afn float %i.acw, %i.aat ; 2 uses
  %i.aea = fcmp reassoc nsz arcp contract afn olt float %i.adz, f0xC0490FDB
  %i.aeb = select reassoc nsz arcp contract afn i1 %i.aea, float f0x40C90FDB, float 0.000000e+00
  %i.aec = fadd reassoc nsz arcp contract afn float %i.aeb, %i.adz ; 2 uses
  %i.aed = fcmp reassoc nsz arcp contract afn ogt float %i.aec, f0x40490FDB
  %i.aee = select reassoc nsz arcp contract afn i1 %i.aed, float f0x40C90FDB, float 0.000000e+00
  %i.aef = fsub reassoc nsz arcp contract afn float %i.aec, %i.aee
  %i.aeg = fmul reassoc nsz arcp contract afn float %i.aef, %i.act ; 4 uses
  %i.aeh = fcmp reassoc nsz arcp contract afn ogt float %i.aeg, 1.000000e+00
  %i.aei = fcmp reassoc nsz arcp contract afn olt float %i.aeg, 0.000000e+00
  %i.aej = select reassoc nsz arcp contract afn i1 %i.aei, float 0.000000e+00, float %i.aeg
  %i.aek = select reassoc nsz arcp contract afn i1 %i.aeh, float 1.000000e+00, float %i.aej
  %i.ael = fcmp reassoc nsz arcp contract afn oeq float %i.aeg, %i.aek
  br i1 %i.ael, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.aem = fmul reassoc nsz arcp contract afn float %i.acx, %i.aas
  %i.aen = fadd reassoc nsz arcp contract afn float %i.acg, %i.aem
  %i.aeo = fmul reassoc nsz arcp contract afn float %i.acx, %i.aci
  %i.aep = fadd reassoc nsz arcp contract afn float %i.aeo, %i.ach
  %i.aeq = fdiv reassoc nsz arcp contract afn float %i.aen, %i.aep ; 2 uses
  %i.aer = fmul reassoc nsz arcp contract afn float %i.aeq, %i.acj
  %i.aes = fadd reassoc nsz arcp contract afn float %i.aer, %i.aam
  %i.aet = fmul reassoc nsz arcp contract afn float %i.aeq, %i.ach
  %i.aeu = fadd reassoc nsz arcp contract afn float %i.aet, %i.aao
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.aev = fcmp reassoc nsz arcp contract afn ogt float %i.adk, 1.000000e+00
  %i.aew = fcmp reassoc nsz arcp contract afn olt float %i.adk, 0.000000e+00
  %i.aex = select reassoc nsz arcp contract afn i1 %i.aew, float 0.000000e+00, float %i.adk
  %i.aey = select reassoc nsz arcp contract afn i1 %i.aev, float 1.000000e+00, float %i.aex
  %i.aez = fcmp reassoc nsz arcp contract afn oeq float %i.adk, %i.aey
  br i1 %i.aez, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.afa = fmul reassoc nsz arcp contract afn float %i.acx, %i.aco
  %i.afb = fadd reassoc nsz arcp contract afn float %i.abz, %i.afa
  %i.afc = fmul reassoc nsz arcp contract afn float %i.acx, %i.ace
  %i.afd = fadd reassoc nsz arcp contract afn float %i.afc, %i.acb
  %i.afe = fdiv reassoc nsz arcp contract afn float %i.afb, %i.afd ; 2 uses
  %i.aff = fmul reassoc nsz arcp contract afn float %i.afe, %i.acf
  %i.afg = fadd reassoc nsz arcp contract afn float %i.aff, %i.acc
  %i.afh = fmul reassoc nsz arcp contract afn float %i.afe, %i.acb
  %i.afi = fadd reassoc nsz arcp contract afn float %i.afh, %i.aby
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.ai
  %.078.i = phi nsz float [ %i.adw, %bb.ai ], [ %i.aes, %bb.ak ], [ %i.afg, %bb.am ], [ 0.000000e+00, %bb.al ] ; 3 uses
  %.077.i = phi nsz float [ %i.ady, %bb.ai ], [ %i.aeu, %bb.ak ], [ %i.afi, %bb.am ], [ 0.000000e+00, %bb.al ] ; 3 uses
  %i.afj = fmul reassoc nsz arcp contract afn float %.078.i, f0xBF48B05C
  %i.afk = fmul reassoc nsz arcp contract afn float %.077.i, 2.775130e-01
  %i.afl = fadd reassoc nsz arcp contract afn float %i.afj, f0x3E1D8756
  %i.afm = fadd reassoc nsz arcp contract afn float %i.afl, %i.afk
  %i.afn = fmul reassoc nsz arcp contract afn float %.078.i, f0x3F3ECA3F
  %i.afo = fmul reassoc nsz arcp contract afn float %.077.i, f0xBE524E0D
  %i.afp = fadd reassoc nsz arcp contract afn float %i.afn, f0xBE29732A
  %i.afq = fadd reassoc nsz arcp contract afn float %i.afp, %i.afo
  %i.afr = fmul reassoc nsz arcp contract afn float %.078.i, f0x3EA32D9A
  %i.afs = fmul reassoc nsz arcp contract afn float %.077.i, f0x400AB749
  %i.aft = fadd reassoc nsz arcp contract afn float %i.afr, f0x3E9527F8
  %i.afu = fadd reassoc nsz arcp contract afn float %i.aft, %i.afs ; 5 uses
  %i.afv = fcmp reassoc nsz arcp contract afn ult float %i.afu, 0.000000e+00
  %i.afw = fcmp reassoc nsz arcp contract afn olt float %i.afu, f0x00800000
  %i.afx = select reassoc nsz arcp contract afn i1 %i.afw, float f0x00800000, float %i.afu
  %i.afy = fcmp reassoc nsz arcp contract afn ogt float %i.afu, f0x80800000
  %i.afz = select reassoc nsz arcp contract afn i1 %i.afy, float f0x80800000, float %i.afu
  %i.aga = select reassoc nsz arcp contract afn i1 %i.afv, float %i.afz, float %i.afx ; 2 uses
  %i.agb = fdiv reassoc nsz arcp contract afn float %i.afm, %i.aga ; 2 uses
  %i.agc = fdiv reassoc nsz arcp contract afn float %i.afq, %i.aga ; 2 uses
  %i.agd = fmul reassoc nsz arcp contract afn float %i.agb, f0x3FB2C28D
  %i.age = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.agb)
  %i.agf = fadd reassoc nsz arcp contract afn float %i.age, f0x3FBEFF8B
  %i.agg = fdiv reassoc nsz arcp contract afn float %i.agd, %i.agf ; 2 uses
  %i.agh = fmul reassoc nsz arcp contract afn float %i.agc, f0x3FB9C753
  %i.agi = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.agc)
  %i.agj = fadd reassoc nsz arcp contract afn float %i.agi, f0x3FC32F7A
  %i.agk = fdiv reassoc nsz arcp contract afn float %i.agh, %i.agj ; 2 uses
  %i.agl = fmul reassoc nsz arcp contract afn float %i.agg, f0xBF8FFF79
  %i.agm = fmul reassoc nsz arcp contract afn float %i.agk, f0x3F7B00FB
  %i.agn = fsub reassoc nsz arcp contract afn float %i.agl, %i.agm ; 3 uses
  %i.ago = fmul reassoc nsz arcp contract afn float %i.agg, f0x3FEE7E6D
  %i.agp = fmul reassoc nsz arcp contract afn float %i.agk, f0x3FFC65AF
  %i.agq = fadd reassoc nsz arcp contract afn float %i.agp, %i.ago ; 3 uses
  %i.agr = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.agq, float %i.agn)
  %i.ags = fmul reassoc nsz arcp contract afn float %i.agr, f0x42A2A806
  %i.agt = fadd reassoc nsz arcp contract afn float %i.ags, 2.555000e+02
  %i.agu = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.agt)
  %i.agv = fptosi float %i.agu to i32             ; 2 uses
  %i.agw = lshr i32 %i.agv, 22
  %i.agx = and i32 %i.agw, 512
  %i.agy = add nsw i32 %i.agx, %i.agv             ; 2 uses
  %.inv.i = icmp slt i32 %i.agy, 512
  %.neg.i = select i1 %.inv.i, i32 0, i32 -512
  %i.agz = add i32 %.neg.i, %i.agy
  %i.aha = fmul reassoc nsz arcp contract afn float %i.agn, %i.agn
  %i.ahb = fmul reassoc nsz arcp contract afn float %i.agq, %i.agq
  %i.ahc = sext i32 %i.agz to i64                 ; 2 uses
  %i.ahd = getelementptr inbounds [4 x i8], ptr %i.pj, i64 %i.ahc ; 2 uses
  %i.ahe = load float, ptr %i.ahd, align 4, !tbaa !12
  %i.ahf = fadd reassoc nsz arcp contract afn float %i.ahe, %i.ahb
  %i.ahg = fadd reassoc nsz arcp contract afn float %i.ahf, %i.aha
end_hunk_2
