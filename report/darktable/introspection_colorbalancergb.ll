Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalancergb?download=true
inline.NumInlined: 213
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 49
begin_hunk_0_@dt_module_dt_version:bb.a
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 5
}

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #19
  ret ptr %i.a
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
  %i.d = load float, ptr %i.c, align 4, !tbaa !216
  %i.e = fmul reassoc nsz arcp contract afn float %i.d, f0x3C23D70A
  store float %i.e, ptr %i.c, align 4, !tbaa !216
  store <4 x float> <float 1.845000e-01, float 0.000000e+00, float 1.845000e-01, float 0.000000e+00>, ptr %.sroa.942.0..0.22.sroa_idx, align 4, !tbaa !12
  store i32 0, ptr %.sroa.1046.0..0.22.sroa_idx, align 4, !tbaa !217
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noalias dereferenceable_or_null(132) ptr @malloc(i64 noundef 132) #24 ; 4 uses
  %.sroa.942.0..0.13.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.sroa.1046.0..0.13.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.f, ptr noundef nonnull align 4 dereferenceable(112) %1, i64 112, i1 false)
  store <4 x float> <float 1.845000e-01, float 0.000000e+00, float 1.845000e-01, float 0.000000e+00>, ptr %.sroa.942.0..0.13.sroa_idx, align 4, !tbaa !12
  store i32 0, ptr %.sroa.1046.0..0.13.sroa_idx, align 4, !tbaa !217
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(132) ptr @malloc(i64 noundef 132) #24 ; 5 uses
  %.sroa.10.0..0.5.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  %.sroa.1046.0..0.5.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %i.g, ptr noundef nonnull align 4 dereferenceable(116) %1, i64 116, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.845000e-01>, ptr %.sroa.10.0..0.5.sroa_idx, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !218
  store i32 0, ptr %.sroa.1046.0..0.5.sroa_idx, align 4, !tbaa !217
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noalias dereferenceable_or_null(132) ptr @malloc(i64 noundef 132) #24 ; 3 uses
  %.sroa.1046.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.i, ptr noundef nonnull align 4 dereferenceable(128) %1, i64 128, i1 false)
  store i32 0, ptr %.sroa.1046.0..0..sroa_idx, align 4, !tbaa !217
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sink = phi ptr [ %i.i, %bb.e ], [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.a, %bb.b ]
  store ptr %.sink, ptr %3, align 8, !tbaa !14
  store i32 132, ptr %4, align 4, !tbaa !219
  store i32 5, ptr %5, align 4, !tbaa !219
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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !223
  %i.l = tail call i32 (...) %i.k() #19
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.i, i32 noundef %i.l, ptr noundef nonnull %1, i32 noundef 132, i32 noundef 1, i32 noundef 4) #19
  store i32 1, ptr %i.e, align 4, !tbaa !20
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  store <4 x float> <float 2.000000e-01, float -5.000000e-01, float 0.000000e+00, float 3.000000e-01>, ptr %i.m, align 4, !tbaa !12
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !223
  %i.o = call i32 (...) %i.n() #19
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.i, i32 noundef %i.o, ptr noundef nonnull %1, i32 noundef 132, i32 noundef 1, i32 noundef 4) #19
  store <4 x float> <float 2.000000e-01, float -2.500000e-01, float 0.000000e+00, float 5.000000e-01>, ptr %i.m, align 4, !tbaa !12
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !223
  %i.q = call i32 (...) %i.p() #19
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.i, i32 noundef %i.q, ptr noundef nonnull %1, i32 noundef 132, i32 noundef 1, i32 noundef 4) #19
  store <4 x float> <float 2.000000e-01, float -2.500000e-01, float 0.000000e+00, float 2.500000e-01>, ptr %i.m, align 4, !tbaa !12
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !223
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
  %i.at = fadd reassoc nsz arcp contract afn <2 x float> %i.ar, %i.as ; 3 uses
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
  %i.bq = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.br = insertelement <4 x float> %i.bq, float %i.r, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bp, i64 3
  %i.bt = fmul reassoc nsz arcp contract afn <4 x float> %i.bs, <float -3.106100e-02, float -3.106100e-02, float -3.106100e-02, float f0x39837366>
  %i.bu = tail call <10 x float> @llvm.masked.load.v10f32.p0(ptr nonnull align 4 %i.bm, <10 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true, i1 true, i1 true, i1 false, i1 true, i1 true>, <10 x float> poison), !tbaa !12 ; 5 uses
  %i.bv = shufflevector <10 x float> %i.bu, <10 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bw = fmul reassoc nsz arcp contract afn <2 x float> %i.bv, <float f0x3F8163AD, float f0x3D26BE12>
  %i.bx = shufflevector <10 x float> %i.bu, <10 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.by = fmul reassoc nsz arcp contract afn <2 x float> %i.bx, <float f0x3BB1DE8E, float f0x3F7E5B63>
  %i.bz = fadd reassoc nsz arcp contract afn <2 x float> %i.by, %i.bw
  %i.ca = shufflevector <10 x float> %i.bu, <10 x float> poison, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.cb = fmul reassoc nsz arcp contract afn <2 x float> %i.ca, <float f0x39837366, float f0xBC3C486C>
  %i.cc = fadd reassoc nsz arcp contract afn <2 x float> %i.bz, %i.cb
  %i.cd = load <2 x float>, ptr %i.bn, align 4, !tbaa !12
  %i.ce = shufflevector <2 x float> %i.ae, <2 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.cf = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cg = shufflevector <4 x float> %i.ce, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ch = fmul reassoc nsz arcp contract afn <4 x float> %i.cg, <float f0x3F5C2539, float f0x3F5C2539, float f0x3F5C2539, float f0x3F8163AD>
  %i.ci = shufflevector <2 x float> %i.z, <2 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ck = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, <float 2.570850e-01, float 2.570850e-01, float 2.570850e-01, float f0x3BB1DE8E>
  %i.cl = fadd reassoc nsz arcp contract afn <4 x float> %i.ck, %i.ch
  %i.cm = fadd reassoc nsz arcp contract afn <4 x float> %i.cl, %i.bt ; 4 uses
  %i.cn = shufflevector <10 x float> %i.bu, <10 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 poison>
  %i.co = insertelement <4 x float> %i.cn, float 1.000000e+00, i64 3 ; 2 uses
  %i.cp = fmul reassoc arcp contract afn <4 x float> %i.co, <float f0x3D26BE12, float f0x3F8163AD, float f0x3D26BE12, float -0.000000e+00>
  %i.cq = shufflevector <10 x float> %i.bu, <10 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 poison>
  %i.cr = insertelement <4 x float> %i.cq, float 1.000000e+00, i64 3 ; 2 uses
  %i.cs = fmul reassoc nsz arcp contract afn <4 x float> %i.cr, <float f0x3F7E5B63, float f0x3BB1DE8E, float f0x3F7E5B63, float 1.000000e+00>
  %i.ct = fadd reassoc nsz arcp contract afn <4 x float> %i.cs, %i.cp
  %i.cu = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cv = insertelement <4 x float> %i.cu, float 1.000000e+00, i64 3
  %i.cw = insertelement <4 x float> %i.cv, float %i.bp, i64 2 ; 2 uses
  %i.cx = fmul reassoc arcp contract afn <4 x float> %i.cw, <float f0xBC3C486C, float f0x39837366, float f0xBC3C486C, float -0.000000e+00>
  %i.cy = fadd reassoc nsz arcp contract afn <4 x float> %i.ct, %i.cx
  %i.cz = fmul reassoc arcp contract afn <4 x float> %i.co, <float f0xBD0BDB31, float f0xBD0BDB31, float f0xBD0BDB31, float -0.000000e+00>
  %i.da = fmul reassoc nsz arcp contract afn <4 x float> %i.cr, <float f0x3A978241, float f0x3A978241, float f0x3A978241, float 1.000000e+00>
  %i.db = fadd reassoc nsz arcp contract afn <4 x float> %i.da, %i.cz
  %i.dc = fmul reassoc arcp contract afn <4 x float> %i.cw, <float f0x3F44995A, float f0x3F44995A, float f0x3F44995A, float -0.000000e+00>
  %i.dd = fadd reassoc nsz arcp contract afn <4 x float> %i.db, %i.dc
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64), "align"(ptr %3, i64 64) ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.df = load ptr, ptr %i.de, align 16, !tbaa !56 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.df, i64 64), "align"(ptr %i.c, i64 16) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 16, i64 -72) ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 16, i64 -100) ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 16, i64 -120) ]
  %i.dm = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.dn = getelementptr i8, ptr %i.dm, i64 644
  %.val = load i32, ptr %i.dn, align 4, !tbaa !235
  %i.do = and i32 %.val, 2
  %.not = icmp eq i32 %i.do, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !64
  %i.dr = load i32, ptr %i.dq, align 16, !tbaa !236
  %i.ds = icmp ne i32 %i.dr, 0
  %i.dt = icmp ne ptr %i.e, null
  %or.cond = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !84
  %.not585 = icmp eq i32 %i.dv, 0
  br i1 %.not585, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.dx = load i64, ptr %i.dw, align 16, !tbaa !85
  %i.dy = uitofp reassoc nsz arcp contract afn i64 %i.dx to double
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !123
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1432
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !129
  %i.ec = fmul reassoc nsz arcp contract afn double %i.eb, %i.dy
  %i.ed = fptoui double %i.ec to i64
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.ee = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  %i.ef = phi i64 [ %i.ed, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.eg = shl i64 %i.ef, 1                        ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 156 ; 3 uses
  %i.ei = load float, ptr %i.eh, align 8, !tbaa !130
  %i.ej = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ei, float f0x3F21B3E7) ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, f0x4006541D
  %i.el = fadd reassoc nsz arcp contract afn float %i.ej, f0x3F8FE801
  %i.em = fdiv reassoc nsz arcp contract afn float %i.ek, %i.el ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.eo = load float, ptr %i.en, align 16, !tbaa !131
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.eo) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !237
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.et = load i32, ptr %i.es, align 4, !tbaa !238
  %i.eu = sext i32 %i.et to i64                   ; 3 uses
  %i.ev = shl nsw i64 %i.er, 2
  %i.ew = mul i64 %i.ev, %i.eu                    ; 2 uses
  %.not608 = icmp eq i64 %i.ew, 0
  br i1 %.not608, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.fk = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 116 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 124 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 308
  %i.fu = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.em
  %i.fw = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.em
  %i.fx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.em
  br label %bb.f

._crit_edge:                                      ; preds = %bb.ad, %.thread
  tail call void @llvm.x86.sse.sfence()
  br label %bb.ae

bb.f:                                             ; preds = %.lr.ph, %bb.ad
  %.0299607 = phi i64 [ 0, %.lr.ph ], [ %i.amt, %bb.ad ] ; 4 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0299607
  %.sroa.0658.0.copyload = load <4 x float>, ptr %i.fy, align 16, !tbaa !12, !alias.scope !239
  %i.fz = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0658.0.copyload, <4 x float> zeroinitializer) ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <4 x float> %i.fz, %i.cm
  %foldExtExtBinop759 = fmul reassoc nsz arcp contract afn <4 x float> %i.fz, %i.cm
  %shift = shufflevector <4 x float> %foldExtExtBinop759, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop761 = fadd reassoc nsz arcp contract afn <4 x float> %shift, %foldExtExtBinop
  %foldExtExtBinop763 = fmul reassoc nsz arcp contract afn <4 x float> %i.fz, %i.cm
  %shift765 = shufflevector <4 x float> %foldExtExtBinop763, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop766 = fadd reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop761, %shift765
  %i.ga = extractelement <4 x float> %foldExtExtBinop766, i64 0 ; 3 uses
  %i.gb = shufflevector <4 x float> %i.fz, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.gc = fmul reassoc nsz arcp contract afn <2 x float> %i.gb, %i.bj
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ge = fmul reassoc nsz arcp contract afn <2 x float> %i.gb, %i.bk
  %i.gf = fadd reassoc nsz arcp contract afn <2 x float> %i.ge, %i.gd
  %i.gg = shufflevector <4 x float> %i.fz, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gh = fmul reassoc nsz arcp contract afn <2 x float> %i.gg, %i.bl
  %i.gi = fadd reassoc nsz arcp contract afn <2 x float> %i.gf, %i.gh ; 2 uses
  %i.gj = extractelement <2 x float> %i.gi, i64 0 ; 3 uses
  %i.gk = fadd reassoc nsz arcp contract afn float %i.gj, %i.ga
  %i.gl = extractelement <2 x float> %i.gi, i64 1 ; 2 uses
  %i.gm = fadd reassoc nsz arcp contract afn float %i.gk, %i.gl ; 4 uses
  %i.gn = fcmp reassoc nsz arcp contract afn oeq float %i.gm, 0.000000e+00 ; 3 uses
  %i.go = fdiv reassoc nsz arcp contract afn float %i.ga, %i.gm
  %i.gp = fdiv reassoc nsz arcp contract afn float %i.gj, %i.gm
  %i.gq = fdiv reassoc nsz arcp contract afn float %i.gl, %i.gm
  %.sroa.0.0.i = select nsz i1 %i.gn, float 0.000000e+00, float %i.go ; 2 uses
  %.sroa.6.0.i = select nsz i1 %i.gn, float 0.000000e+00, float %i.gp ; 2 uses
  %.sroa.8.0.i = select nsz i1 %i.gn, float 0.000000e+00, float %i.gq ; 2 uses
  %i.gr = fmul reassoc nsz arcp contract afn float %i.ga, f0x3F309D77
  %i.gs = fmul reassoc nsz arcp contract afn float %i.gj, f0x3EB2573F
  %i.gt = fadd reassoc nsz arcp contract afn float %i.gs, %i.gr ; 2 uses
  %i.gu = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i, f0x3F8B3A63
  %i.gv = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i, f0xBF2AAAAB
  %i.gw = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i, f0x3CA8E841
  %i.gx = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i, f0xBDB3A62D
  %i.gy = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i, f0x3FD55555
  %i.gz = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i, f0xBD53224F
  %i.ha = fadd reassoc nsz arcp contract afn float %i.gu, f0xBE604727
  %i.hb = fadd reassoc nsz arcp contract afn float %i.ha, %i.gv
  %i.hc = fadd reassoc nsz arcp contract afn float %i.hb, %i.gw ; 2 uses
  %i.hd = fadd reassoc nsz arcp contract afn float %i.gx, -5.437140e-01
  %i.he = fadd reassoc nsz arcp contract afn float %i.hd, %i.gy
  %i.hf = fadd reassoc nsz arcp contract afn float %i.he, %i.gz ; 2 uses
  %i.hg = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.hf, float noundef %i.hc) #25 ; 5 uses
  %i.hh = fcmp reassoc nsz arcp contract afn une float %i.hg, 0.000000e+00 ; 2 uses
  %i.hi = fdiv reassoc nsz arcp contract afn float %i.hc, %i.hg
  %i.hj = select reassoc nsz arcp contract afn i1 %i.hh, float %i.hi, float 1.000000e+00 ; 2 uses
  %i.hk = fdiv reassoc nsz arcp contract afn float %i.hf, %i.hg
  %i.hl = select reassoc nsz arcp contract afn i1 %i.hh, float %i.hk, float 0.000000e+00 ; 2 uses
  %i.hm = fcmp reassoc nsz arcp contract afn ogt float %i.gt, 0.000000e+00
  %i.hn = select reassoc nsz arcp contract afn i1 %i.hm, float %i.gt, float 0.000000e+00 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ho = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hn, float f0x3ED1FB53)
  %i.hp = load float, ptr %i.ex, align 8, !tbaa !132
  %i.hq = load float, ptr %i.ey, align 16, !tbaa !133
  %i.hr = load float, ptr %i.ez, align 16, !tbaa !134
  %i.hs = load float, ptr %i.fa, align 16, !tbaa !135 ; 2 uses
  %i.ht = fsub reassoc nsz arcp contract afn float %i.ho, %i.hs ; 3 uses
  %i.hu = fdiv reassoc nsz arcp contract afn float %i.ht, %i.hs ; 2 uses
  %i.hv = fneg reassoc nsz arcp contract afn float %i.hq
  %i.hw = fmul reassoc nsz arcp contract afn float %i.hu, %i.hp
  %i.hx = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.hw)
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hu, %i.hv
  %i.hz = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.hy)
  %i.ia = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.ib = insertelement <2 x float> %i.ia, float %i.hx, i64 1
  %i.ic = fadd reassoc nsz arcp contract afn <2 x float> %i.ib, splat (float 1.000000e+00)
  %i.id = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ic ; 6 uses
  %i.ie = extractelement <2 x float> %i.id, i64 1 ; 6 uses
  %i.if = extractelement <2 x float> %i.id, i64 0 ; 5 uses
  %i.ig = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.id ; 4 uses
  %i.ih = fmul reassoc nsz arcp contract afn float %i.hr, -2.500000e-01
  %i.ii = fmul reassoc nsz arcp contract afn float %i.ht, %i.ht
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ii, %i.ih
  %i.ik = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ij)
  %shift768 = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop769 = fmul reassoc nsz arcp contract afn <2 x float> %i.ig, %shift768 ; 2 uses
  %i.il = fmul reassoc nsz arcp contract afn float %i.ik, 8.000000e+00
  %foldExtExtBinop771 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop769, %foldExtExtBinop769
  %i.im = extractelement <2 x float> %foldExtExtBinop771, i64 0
  %i.in = fmul reassoc nsz arcp contract afn float %i.im, %i.il ; 6 uses
  store float %i.ie, ptr %i.a, align 16, !tbaa !12
  store float %i.in, ptr %i.fb, align 4, !tbaa !12
  %i.io = insertelement <2 x float> %i.id, float 0.000000e+00, i64 1
  store <2 x float> %i.io, ptr %i.fc, align 8, !tbaa !12
  %i.ip = fmul reassoc nsz arcp contract afn float %i.hj, %cos
  %i.iq = fmul reassoc nsz arcp contract afn float %i.hl, %sin
  %i.ir = fsub reassoc nsz arcp contract afn float %i.ip, %i.iq ; 4 uses
  %i.is = fmul reassoc nsz arcp contract afn float %i.hj, %sin
  %i.it = fmul reassoc nsz arcp contract afn float %i.hl, %cos
  %i.iu = fadd reassoc nsz arcp contract afn float %i.is, %i.it ; 4 uses
  %i.iv = load float, ptr %i.fd, align 16, !tbaa !136
  %i.iw = load float, ptr %i.dj, align 16, !tbaa !12
  %i.ix = fmul reassoc nsz arcp contract afn float %i.ie, %i.iw
  %i.iy = load float, ptr %i.fe, align 8, !tbaa !12
  %i.iz = fmul reassoc nsz arcp contract afn float %i.in, %i.iy
  %i.ja = load float, ptr %i.ff, align 16, !tbaa !12
  %i.jb = fmul reassoc nsz arcp contract afn float %i.ja, %i.if
  %i.jc = load float, ptr %i.fg, align 16, !tbaa !240 ; 2 uses
  %i.jd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.jc)
  %i.je = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hg, float %i.jd)
  %i.jf = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.je
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jf, %i.jc
end_hunk_0
