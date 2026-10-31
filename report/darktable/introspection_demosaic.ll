Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@dt_module_mod_version:bb.a
bb.a:
  ret i32 6
}

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #27
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #27
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #27
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #27
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #27
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #27
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #27
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 264320
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #28 ; 7 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !172
  store i32 %i.b, ptr %i.a, align 4, !tbaa !174
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %i.d, ptr %i.e, align 4, !tbaa !176
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.f, align 4, !tbaa !177
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !178
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 1, ptr %i.h, align 4, !tbaa !179
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store float 2.000000e-01, ptr %i.i, align 4, !tbaa !180
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #28 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store float 2.000000e-01, ptr %i.k, align 4, !tbaa !180
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noalias dereferenceable_or_null(44) ptr @malloc(i64 noundef 44) #28 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store <2 x float> <float 0.000000e+00, float 4.000000e-01>, ptr %i.m, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store float 0.000000e+00, ptr %i.n, align 4, !tbaa !182
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  store i32 0, ptr %i.o, align 4, !tbaa !183
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !184
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.q = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #28 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.q, ptr noundef nonnull align 4 dereferenceable(44) %1, i64 44, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !183  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0                     ; 2 uses
  %spec.select = select i1 %i.t, i32 %i.s, i32 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  store i32 %spec.select, ptr %i.u, align 4, !tbaa !186
  %i.v = zext i1 %i.t to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  store i32 %i.v, ptr %i.w, align 4, !tbaa !187
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sink52 = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.d ], [ %i.j, %bb.c ], [ %i.a, %bb.b ]
  %.sink51 = phi i32 [ 48, %bb.e ], [ 44, %bb.d ], [ 24, %bb.c ], [ 24, %bb.b ]
  %.sink = phi i32 [ 6, %bb.e ], [ 5, %bb.d ], [ 4, %bb.c ], [ 4, %bb.b ]
  store ptr %.sink52, ptr %3, align 8, !tbaa !14
  store i32 %.sink51, ptr %4, align 4, !tbaa !15
  store i32 %.sink, ptr %5, align 4, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @input_colorspace(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = tail call i32 @dt_image_is_mono_sraw(ptr noundef nonnull %i.c) #27
  %.not = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not, i32 0, i32 2
  ret i32 %i.e
}

declare i32 @dt_image_is_mono_sraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @output_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !34
  %i.e = fcmp reassoc nsz arcp contract afn une float %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @dt_interpolation_new(i32 noundef 3) #27
  tail call void @dt_interpolation_resample_roi_mask(ptr noundef %i.f, ptr noundef %3, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #3

declare void @dt_interpolation_resample_roi_mask(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @modify_roi_out(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !35
  store i32 0, ptr %2, align 4, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %3) local_unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !35
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !34
  %i.c = load <4 x i32>, ptr %2, align 4, !tbaa !15
  %i.d = sitofp reassoc nsz arcp contract afn <4 x i32> %i.c to <4 x float>
  %i.e = insertelement <4 x float> poison, float %i.b, i64 0
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <4 x i32> zeroinitializer
  %i.g = fdiv reassoc nsz arcp contract afn <4 x float> %i.d, %i.f ; 2 uses
  %i.h = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.g, <float 0.000000e+00, float 0.000000e+00, float 8.000000e+00, float 8.000000e+00>
  %i.i = select <4 x i1> %i.h, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 8.000000e+00, float 8.000000e+00>, <4 x float> %i.g
  %i.j = fptosi <4 x float> %i.i to <4 x i32>
  store <4 x i32> %i.j, ptr %3, align 4, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [6 x ptr], align 16               ; 32 uses
  %i.c = alloca [3 x [104 x float]], align 16     ; 7 uses
  %i.d = alloca [112 x float], align 16           ; 14 uses
  %i.e = alloca [3 x [3 x [8 x i16]]], align 16   ; 7 uses
  %i.f = alloca [5 x i8], align 1                 ; 12 uses
  %i.g = alloca [8 x i8], align 8                 ; 8 uses
  %i.h = alloca [3 x [3 x [8 x i16]]], align 16   ; 6 uses
  %i.i = alloca [3 x [8 x float]], align 16       ; 16 uses
  %i.j = alloca [5 x i8], align 1                 ; 88 uses
  %i.k = alloca [4 x float], align 16             ; 21 uses
  %i.l = alloca [4 x float], align 16             ; 21 uses
  %i.m = alloca [2 x i32], align 4                ; 5 uses
  %i.n = alloca [4 x float], align 16             ; 15 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 112 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !446  ; 9 uses
  tail call void @dt_dev_clear_scharr_mask(ptr noundef %i.s) #27
  %i.t = getelementptr i8, ptr %i.s, i64 644
  %.val = load i32, ptr %i.t, align 4, !tbaa !454 ; 2 uses
  %i.u = and i32 %.val, 260
  %i.v = icmp ne i32 %i.u, 0                      ; 4 uses
  %i.w = and i32 %.val, 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 42 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !56  ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !57 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 516 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !455
  %.fr1070 = freeze i32 %i.ad                     ; 73 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 1540 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !58
  %i.ag = and i32 %i.af, 16384
  %.not.i = icmp eq i32 %i.ag, 0
  %.sroa.gep = getelementptr i8, ptr %i.c, i64 1664
  %.sroa.gep5278 = getelementptr inbounds nuw i8, ptr %i.c, i64 1248
  br i1 %.not.i, label %bb.b, label %_demosaic_full.exit

bb.b:                                             ; preds = %bb.a
  %i.ah = tail call i32 @dt_image_is_mono_sraw(ptr noundef nonnull %i.q) #27
  %.not9.i = icmp eq i32 %i.ah, 0
  br i1 %.not9.i, label %bb.c, label %_demosaic_full.exit

bb.c:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !446 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 552
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !456
  %.not10.i = icmp eq i32 %i.ak, 0
  br i1 %.not10.i, label %bb.d, label %_demosaic_full.exit

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr i8, ptr %i.ai, i64 644
  %.val13.i = load i32, ptr %i.al, align 4, !tbaa !454 ; 2 uses
  %i.am = and i32 %.val13.i, 8
  %.not11.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !457
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !458
  %i.ar = tail call i32 @dt_mipmap_cache_get_matching_size(i32 noundef %i.ao, i32 noundef %i.aq) #27
  %i.as = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.187) #27
  %i.at = tail call i32 @dt_mipmap_cache_get_min_mip_from_pref(ptr noundef %i.as) #27
  %i.au = icmp uge i32 %i.ar, %i.at
  br label %_demosaic_full.exit

bb.f:                                             ; preds = %bb.d
  %i.av = and i32 %.val13.i, 4
  %.not12.i = icmp eq i32 %i.av, 0
  br i1 %.not12.i, label %_demosaic_full.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 184
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !459
  %i.ba = icmp eq i32 %i.az, 9
  %i.bb = select reassoc nsz arcp contract afn i1 %i.ba, float f0x3F2AC083, float 5.000000e-01
  %i.bc = fcmp reassoc nsz arcp contract afn ogt float %i.ax, %i.bb
  br label %_demosaic_full.exit

_demosaic_full.exit:                              ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  %.0.shrunk.i = phi i1 [ true, %bb.a ], [ %i.au, %bb.e ], [ %i.bc, %bb.g ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.f ]
  %i.bd = icmp eq i32 %.fr1070, 9                 ; 10 uses
  %i.be = load i32, ptr %i.ae, align 4, !tbaa !58
  %.fr1069 = freeze i32 %i.be
  %i.bf = and i32 %.fr1069, 16384                 ; 2 uses
  %i.bg = icmp ne i32 %i.bf, 0                    ; 4 uses
  %i.bh = icmp eq i32 %.fr1070, 0                 ; 3 uses
  %i.bi = or i1 %i.bd, %i.bh
  %spec.select.not = or i1 %i.bg, %i.bi
  %i.bj = tail call i32 @dt_image_is_mono_sraw(ptr noundef nonnull %i.q) #27 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !60 ; 2 uses
  %i.bm = and i32 %i.bl, -2049                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !457 ; 107 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !458 ; 16 uses
  %i.br = icmp slt i32 %i.bo, 16                  ; 2 uses
  %i.bs = icmp slt i32 %i.bq, 16
  %or.cond3 = select i1 %i.br, i1 true, i1 %i.bs
  %i.bt = add i32 %i.bm, -5
  %i.bu = icmp ult i32 %i.bt, -2
  %or.cond7 = select i1 %or.cond3, i1 %i.bu, i1 false
  %i.bv = select i1 %i.bd, i32 1024, i32 2
  %.0394 = select i1 %or.cond7, i32 %i.bv, i32 %i.bm ; 10 uses
  %i.bw = load ptr, ptr %i.o, align 8, !tbaa !32  ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 16, !tbaa !460
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = icmp ne i32 %i.w, 0
  %or.cond9 = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond9, label %bb.h, label %bb.p

bb.h:                                             ; preds = %_demosaic_full.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 180
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !81
  %.not404 = icmp eq i32 %i.cb, 0
  br i1 %.not404, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 628
  store i32 1, ptr %i.cc, align 4, !tbaa !461
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0392 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]     ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !82
  %.not405 = icmp eq i32 %i.ce, 0
  br i1 %.not405, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !83
  %.not406 = icmp eq i32 %i.cg, 0
  br i1 %.not406, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 628
  store i32 1, ptr %i.ch, align 4, !tbaa !461
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.0390 = phi i32 [ 1, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ] ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 184
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !84
  %.not407 = icmp eq i32 %i.cj, 0
  br i1 %.not407, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !83
  %.not408 = icmp eq i32 %i.cl, 0
  br i1 %.not408, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 628
  store i32 1, ptr %i.cm, align 4, !tbaa !461
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %_demosaic_full.exit
  %.1393 = phi i32 [ %.0392, %bb.o ], [ %.0392, %bb.n ], [ %.0392, %bb.m ], [ 0, %_demosaic_full.exit ] ; 2 uses
  %.1391 = phi i32 [ %.0390, %bb.o ], [ %.0390, %bb.n ], [ %.0390, %bb.m ], [ 0, %_demosaic_full.exit ]
  %i.cn = phi i1 [ true, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %_demosaic_full.exit ]
  %.not183.i = phi i1 [ false, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %_demosaic_full.exit ]
  %.0389 = phi i32 [ 1, %bb.o ], [ %.0390, %bb.n ], [ %.0390, %bb.m ], [ 0, %_demosaic_full.exit ]
  br i1 %.0.shrunk.i, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.cp = and i32 %i.co, 33554432
  %.not410 = icmp eq i32 %i.cp, 0
  br i1 %.not410, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.s, ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull @.str.7) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
end_hunk_0
begin_hunk_1_@process:bb.a

bb.ad:                                            ; preds = %switch.early.test
  %i.dw = load i32, ptr %i.z, align 8, !tbaa !123
  %i.dx = icmp eq i32 %i.dw, 0
  %or.cond25.not413 = select i1 %i.dx, i1 true, i1 %i.cw
  %or.cond27 = select i1 %or.cond25.not413, i1 true, i1 %i.v
  %.not414 = icmp eq i32 %i.bj, 0
  %not.or.cond27 = xor i1 %or.cond27, true
  %spec.select433 = select i1 %not.or.cond27, i1 %.not414, i1 false
  br label %bb.ae

bb.ae:                                            ; preds = %switch.early.test, %switch.early.test, %bb.ac, %bb.ad
  %i.dy = phi i1 [ false, %switch.early.test ], [ %spec.select433, %bb.ad ], [ false, %bb.ac ], [ false, %switch.early.test ] ; 3 uses
  %.val438 = load ptr, ptr %i.r, align 8, !tbaa !446 ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val438, i64 272
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !12 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.val438, i64 276
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !12 ; 2 uses
  %i.ed = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ea, float %i.ec)
  %i.ee = getelementptr inbounds nuw i8, ptr %.val438, i64 280
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !12 ; 2 uses
  %i.eg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ed, float %i.ef)
  %i.eh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.eg, float 1.000000e+00) ; 13 uses
  %i.ei = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ea, float %i.ec)
  %i.ej = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ei, float %i.ef)
  %i.ek = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ej, float 1.000000e+00)
  %i.el = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  %i.em = load float, ptr %i.el, align 4, !tbaa !124
  %i.en = fptosi float %i.em to i32               ; 2 uses
  br i1 %i.dv, label %bb.af, label %_radius_requested.exit.thread698

bb.af:                                            ; preds = %bb.ae
  %.val440 = load ptr, ptr %i.aa, align 16, !tbaa !57 ; 6 uses
  %.val442 = load ptr, ptr %i.y, align 16, !tbaa !56 ; 3 uses
  %i.eo = getelementptr i8, ptr %.val438, i64 644
  %.val441.val = load i32, ptr %i.eo, align 4, !tbaa !454
  %i.ep = getelementptr i8, ptr %.val442, i64 128 ; 2 uses
  %.val442.val = load float, ptr %i.ep, align 8, !tbaa !462
  %i.eq = fcmp reassoc nsz arcp contract afn ole float %.val442.val, 0.000000e+00 ; 2 uses
  %i.er = and i32 %.val441.val, 2                 ; 2 uses
  %i.es = icmp ne ptr %.val440, null              ; 3 uses
  %i.et = icmp ne i32 %i.er, 0                    ; 2 uses
  %or.cond.i = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond.i, label %bb.ag, label %_noise_requested.exit

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %.val440, i64 192
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !125
  %i.ew = icmp eq i32 %i.ev, 0
  %or.cond3.i = select i1 %i.ew, i1 %i.eq, i1 false
  br i1 %or.cond3.i, label %_noise_requested.exit.thread, label %_noise_requested.exit.thread691

_noise_requested.exit:                            ; preds = %bb.af
  %.not = xor i1 %i.eq, true
  %.not415 = select i1 %i.es, i1 true, i1 %.not
  br i1 %.not415, label %_noise_requested.exit.thread691, label %_noise_requested.exit.thread

_noise_requested.exit.thread:                     ; preds = %bb.ag, %_noise_requested.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !126
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bw, i64 1860
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !127
  %i.fb = icmp ugt i32 %i.fa, 4096
  %spec.select18.i.i = select nsz i1 %i.fb, float 3.300000e-01, float 4.000000e-01
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bw, i64 132
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !124 ; 3 uses
  %i.fe = fcmp reassoc nsz arcp contract afn ogt float %i.fd, 1.000000e+03
  br i1 %i.fe, label %_get_variance_threshold.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_noise_requested.exit.thread
  %i.ff = fcmp reassoc nsz arcp contract afn olt float %i.fd, 1.000000e+02
  br i1 %i.ff, label %_get_variance_threshold.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = fmul reassoc nsz arcp contract afn float %i.fd, 1.200000e-04
  %i.fh = fadd reassoc nsz arcp contract afn float %i.fg, f0xBD9374BC
  br label %_get_variance_threshold.exit.i

_get_variance_threshold.exit.i:                   ; preds = %_noise_requested.exit.thread, %bb.ah, %bb.ai
  %i.fi = phi float [ f0x3D449BA8, %_noise_requested.exit.thread ], [ %i.fh, %bb.ai ], [ f0xBD75C28E, %bb.ah ]
  %i.fj = fadd reassoc nsz arcp contract afn float %i.fi, %spec.select18.i.i
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fj, 1.000000e+02
  %i.fl = fptosi float %i.fk to i32
  %i.fm = sitofp reassoc nsz arcp contract afn i32 %i.fl to float
  %i.fn = fmul reassoc nnan nsz arcp contract afn float %i.fm, f0x3C23D70A ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 28 ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !129
  %i.fq = fsub reassoc nsz arcp contract afn float %i.fp, %i.fn
  %i.fr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fq)
  %i.fs = fcmp reassoc nsz arcp contract afn uge float %i.fr, f0x3C23D70A
  %i.ft = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.fu = and i32 %i.ft, 33554432
  %.not.i456 = icmp eq i32 %i.fu, 0
  br i1 %.not.i456, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_get_variance_threshold.exit.i
  %i.fv = fpext reassoc nsz arcp contract afn float %i.fn to double
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.188, ptr noundef nonnull %.val438, ptr noundef nonnull %0, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.189, double noundef %i.fv) #27
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_get_variance_threshold.exit.i
  %or.cond.i457 = and i1 %i.es, %i.et
  br i1 %or.cond.i457, label %bb.al, label %_capture_noise.exit

bb.al:                                            ; preds = %bb.ak
  %i.fw = getelementptr inbounds nuw i8, ptr %.val440, i64 192
  store i32 1, ptr %i.fw, align 8, !tbaa !125
  br i1 %i.fs, label %bb.am, label %_capture_noise.exit

bb.am:                                            ; preds = %bb.al
  store float %i.fn, ptr %i.fo, align 4, !tbaa !129
  %i.fx = getelementptr inbounds nuw i8, ptr %.val440, i64 200
  store float %i.fn, ptr %i.fx, align 8, !tbaa !130
  br label %_capture_noise.exit

_capture_noise.exit:                              ; preds = %bb.ak, %bb.al, %bb.am
  store float %i.fn, ptr %i.ep, align 8, !tbaa !462
  %.val445.pre = load ptr, ptr %i.aa, align 16, !tbaa !57
  %.val446.pre = load ptr, ptr %i.r, align 8, !tbaa !446 ; 2 uses
  %.val447.pre = load ptr, ptr %i.y, align 16, !tbaa !56
  %.phi.trans.insert = getelementptr i8, ptr %.val446.pre, i64 644
  %.val446.val.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !454
  %.pre1266 = and i32 %.val446.val.pre, 2
  br label %_noise_requested.exit.thread691

_noise_requested.exit.thread691:                  ; preds = %bb.ag, %_capture_noise.exit, %_noise_requested.exit
  %.pre-phi = phi i32 [ 1, %bb.ag ], [ %.pre1266, %_capture_noise.exit ], [ %i.er, %_noise_requested.exit ]
  %.val447 = phi ptr [ %.val442, %bb.ag ], [ %.val447.pre, %_capture_noise.exit ], [ %.val442, %_noise_requested.exit ]
  %.val446 = phi ptr [ %.val438, %bb.ag ], [ %.val446.pre, %_capture_noise.exit ], [ %.val438, %_noise_requested.exit ] ; 4 uses
  %.val445 = phi ptr [ %.val440, %bb.ag ], [ %.val445.pre, %_capture_noise.exit ], [ %.val440, %_noise_requested.exit ] ; 6 uses
  %i.fy = getelementptr i8, ptr %.val447, i64 124 ; 2 uses
  %.val447.val = load float, ptr %i.fy, align 4, !tbaa !463
  %i.fz = fcmp reassoc nsz arcp contract afn ole float %.val447.val, 0.000000e+00 ; 2 uses
  %i.ga = icmp ne ptr %.val445, null              ; 3 uses
  %i.gb = icmp ne i32 %.pre-phi, 0                ; 2 uses
  %or.cond.i458 = select i1 %i.ga, i1 %i.gb, i1 false
  br i1 %or.cond.i458, label %bb.an, label %_radius_requested.exit

bb.an:                                            ; preds = %_noise_requested.exit.thread691
  %i.gc = getelementptr inbounds nuw i8, ptr %.val445, i64 196
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !131
  %i.ge = fcmp reassoc nsz arcp contract afn olt float %i.gd, 0.000000e+00
  br i1 %i.ge, label %_radius_requested.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gf = getelementptr inbounds nuw i8, ptr %.val445, i64 188
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !132
  %i.gh = icmp eq i32 %i.gg, 0
  %or.cond5.i462 = select i1 %i.gh, i1 %i.fz, i1 false
  br i1 %or.cond5.i462, label %_radius_requested.exit.thread, label %_radius_requested.exit.thread698

_radius_requested.exit:                           ; preds = %_noise_requested.exit.thread691
  %.not730 = xor i1 %i.fz, true
  %.not416 = select i1 %i.ga, i1 true, i1 %.not730
  br i1 %.not416, label %_radius_requested.exit.thread698, label %_radius_requested.exit.thread

_radius_requested.exit.thread:                    ; preds = %bb.an, %bb.ao, %_radius_requested.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !126
  %i.gk = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.gl = getelementptr inbounds nuw i8, ptr %.val446, i64 240
  %i.gm = load i32, ptr %i.gl, align 16, !tbaa !464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #27
  %.not.i.i464 = icmp eq i32 %i.gm, 0             ; 2 uses
  br i1 %.not.i.i464, label %.thread176.i.i, label %bb.ap

.thread176.i.i:                                   ; preds = %_radius_requested.exit.thread
  %i.gn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.aq

bb.ap:                                            ; preds = %_radius_requested.exit.thread
  %i.go = getelementptr inbounds nuw i8, ptr %.val446, i64 256
  %i.gp = load <2 x float>, ptr %i.go, align 16, !tbaa !12 ; 2 uses
  %i.gq = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gp, splat (float 1.000000e+00)
  %i.gr = select <2 x i1> %i.gq, <2 x float> splat (float 1.000000e+00), <2 x float> %i.gp
  %i.gs = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %.val446, i64 264
  %i.gv = load float, ptr %i.gu, align 8, !tbaa !12 ; 2 uses
  %i.gw = fcmp reassoc nsz arcp contract afn olt float %i.gv, 1.000000e+00
  %spec.select162.i.i = select reassoc nsz arcp contract afn i1 %i.gw, float 1.000000e+00, float %i.gv
  %i.gx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %spec.select162.i.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread176.i.i
  %i.gy = phi ptr [ %i.gn, %.thread176.i.i ], [ %i.gt, %bb.ap ]
  %i.gz = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.thread176.i.i ], [ %i.gx, %bb.ap ]
  %i.ha = phi <2 x float> [ splat (float 1.000000e+00), %.thread176.i.i ], [ %i.gs, %bb.ap ]
  store <2 x float> %i.ha, ptr %i.n, align 16, !tbaa !12
  store float %i.gz, ptr %i.gy, align 4, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store float 1.000000e+00, ptr %i.hb, align 4, !tbaa !12
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gk, i64 1508
  %i.hd = load i32, ptr %i.bn, align 4, !tbaa !457 ; 4 uses
  %i.he = load <2 x i32>, ptr %i.bn, align 4, !tbaa !15
  %i.hf = load <2 x i32>, ptr %i.hc, align 4, !tbaa !15 ; 3 uses
  %i.hg = load <2 x i32>, ptr %4, align 4, !tbaa !15 ; 4 uses
  %i.hh = sdiv <2 x i32> %i.hf, splat (i32 5)
  %i.hi = icmp slt <2 x i32> %i.hg, %i.hh
  %i.hj = sub nsw <2 x i32> %i.hf, %i.hg
  %i.hk = sitofp reassoc nsz arcp contract afn <2 x i32> %i.hj to <2 x float>
  %i.hl = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.hk, splat (float 2.000000e-01)
  %i.hm = fptosi <2 x float> %i.hl to <2 x i32>
  %i.hn = select <2 x i1> %i.hi, <2 x i32> %i.hm, <2 x i32> zeroinitializer ; 9 uses
  %i.ho = sub nsw <2 x i32> %i.he, %i.hn
  %i.hp = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ho to <2 x float> ; 2 uses
  %i.hq = sitofp reassoc nsz arcp contract afn <2 x i32> %i.hf to <2 x float> ; 3 uses
  %i.hr = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.hq, splat (float 8.000000e-01)
  %i.hs = sitofp reassoc nsz arcp contract afn <2 x i32> %i.hg to <2 x float>
  %i.ht = sitofp reassoc nsz arcp contract afn <2 x i32> %i.hn to <2 x float>
  %i.hu = fadd reassoc nsz arcp contract afn <2 x float> %i.hs, %i.ht
  %i.hv = fsub reassoc nsz arcp contract afn <2 x float> %i.hr, %i.hu ; 2 uses
  %i.hw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hv, %i.hp
  %i.hx = select <2 x i1> %i.hw, <2 x float> %i.hp, <2 x float> %i.hv
  %i.hy = fptosi <2 x float> %i.hx to <2 x i32>   ; 4 uses
  %i.hz = extractelement <2 x i32> %i.hy, i64 0   ; 30 uses
  %i.ia = add nsw <2 x i32> %i.hn, %i.hg          ; 2 uses
  %i.ib = sitofp reassoc nsz arcp contract afn i32 %i.hz to float
  %i.ic = extractelement <2 x float> %i.hq, i64 0
  %i.id = fdiv reassoc nsz arcp contract afn float %i.ib, %i.ic
  %i.ie = fcmp reassoc nsz arcp contract afn olt float %i.id, 2.000000e-01
  br i1 %i.ie, label %_calc_auto_radius.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.if = extractelement <2 x i32> %i.hy, i64 1   ; 10 uses
  %i.ig = sitofp reassoc nsz arcp contract afn i32 %i.if to float
  %i.ih = extractelement <2 x float> %i.hq, i64 1
  %i.ii = fdiv reassoc nsz arcp contract afn float %i.ig, %i.ih
  %i.ij = fcmp reassoc nsz arcp contract afn olt float %i.ii, 2.000000e-01
  br i1 %i.ij, label %_calc_auto_radius.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ik = sext i32 %i.hz to i64                   ; 11 uses
  %i.il = sext i32 %i.if to i64
  %i.im = shl nsw i64 %i.ik, 2
  %i.in = mul i64 %i.im, %i.il
  %i.io = tail call ptr @dt_alloc_aligned(i64 noundef %i.in) #27 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.io, i64 64) ]
  %.not158.i.i = icmp eq ptr %i.io, null
  br i1 %.not158.i.i, label %_calc_auto_radius.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ip = icmp sgt i32 %i.if, 0                   ; 3 uses
  br i1 %.not.i.i464, label %.preheader182.i.i, label %bb.au

.preheader182.i.i:                                ; preds = %bb.at
  %i.iq = icmp sgt i32 %i.hz, 0
  %or.cond.i.i = and i1 %i.iq, %i.ip
  br i1 %or.cond.i.i, label %.preheader.preheader.i.i, label %.loopexit.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader182.i.i
  %wide.trip.count228.i.i = zext nneg i32 %i.if to i64 ; 2 uses
  %wide.trip.count223.i.i = zext nneg i32 %i.hz to i64 ; 10 uses
  %i.ir = add nsw i64 %wide.trip.count223.i.i, -1 ; 2 uses
  %i.is = add nuw nsw i64 %wide.trip.count228.i.i, 4611686018427387903
  %i.it = mul i64 %i.is, %i.ik
  %i.iu = add i64 %i.it, %wide.trip.count223.i.i
  %i.iv = shl i64 %i.iu, 2
  %scevgep1661 = getelementptr i8, ptr %i.io, i64 %i.iv
  %i.iw = extractelement <2 x i32> %i.hn, i64 0
  %i.ix = extractelement <2 x i32> %i.hn, i64 1
  %min.iters.check1663 = icmp ult i32 %i.hz, 5
  %i.iy = trunc nsw i64 %i.ir to i32
  %i.iz = icmp ugt i64 %i.ir, 4294967295
  %min.iters.check1668 = icmp ult i32 %i.hz, 33
  %i.ja = and i64 %wide.trip.count223.i.i, 31     ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 0
  %i.jc = select i1 %i.jb, i64 32, i64 %i.ja      ; 2 uses
  %n.vec1670 = sub nsw i64 %wide.trip.count223.i.i, %i.jc ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.jc, 5
  %i.jd = and i64 %wide.trip.count223.i.i, 3      ; 2 uses
  %i.je = icmp eq i64 %i.jd, 0
  %i.jf = select i1 %i.je, i64 4, i64 %i.jd
  %n.vec1681 = sub nsw i64 %wide.trip.count223.i.i, %i.jf ; 2 uses
  br label %iter.check

bb.au:                                            ; preds = %bb.at
  br i1 %i.bd, label %.preheader184.i.i, label %.preheader187.i.i

.preheader187.i.i:                                ; preds = %bb.au
  br i1 %i.ip, label %.preheader186.lr.ph.i.i, label %.loopexit.i.i

.preheader186.lr.ph.i.i:                          ; preds = %.preheader187.i.i
  %i.jg = icmp sgt i32 %i.hz, 0
  %i.jh = sext i32 %i.hd to i64                   ; 3 uses
  %i.ji = extractelement <2 x i32> %i.hn, i64 0
  %i.jj = sext i32 %i.ji to i64                   ; 3 uses
  %invariant.gep191.i.i = getelementptr [4 x i8], ptr %2, i64 %i.jj
  br i1 %i.jg, label %.preheader186.preheader.i.i, label %.loopexit.i.i

.preheader186.preheader.i.i:                      ; preds = %.preheader186.lr.ph.i.i
  %i.jk = extractelement <2 x i32> %i.hn, i64 1
  %i.jl = sext i32 %i.jk to i64                   ; 3 uses
  %wide.trip.count208.i.i = zext nneg i32 %i.if to i64 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.hz to i64 ; 7 uses
  %i.jm = add nsw i64 %i.jl, %wide.trip.count208.i.i
  %i.jn = shl nsw i64 %i.jm, 2
  %i.jo = add nsw i64 %i.jn, -4
  %i.jp = mul i64 %i.jo, %i.jh
  %i.jq = shl nsw i64 %i.jj, 2
  %i.jr = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.js = getelementptr i8, ptr %2, i64 %i.jp
  %i.jt = getelementptr i8, ptr %i.js, i64 %i.jq
  %scevgep = getelementptr i8, ptr %i.jt, i64 %i.jr
  %i.ju = mul nsw i64 %i.jl, %i.jh
  %i.jv = add i64 %i.ju, %i.jj
  %i.jw = shl i64 %i.jv, 2
  %scevgep1649 = getelementptr i8, ptr %2, i64 %i.jw
  %i.jx = add nuw nsw i64 %wide.trip.count208.i.i, 4611686018427387903
  %i.jy = mul i64 %i.jx, %i.ik
  %i.jz = add i64 %i.jy, %wide.trip.count.i.i
  %i.ka = shl i64 %i.jz, 2
  %scevgep1650 = getelementptr i8, ptr %i.io, i64 %i.ka
  %min.iters.check = icmp ult i32 %i.hz, 8
  %bound0 = icmp ult ptr %i.io, %scevgep
  %bound1 = icmp ult ptr %scevgep1649, %scevgep1650
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.hd, 0
  %i.kb = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert1651 = insertelement <8 x i32> poison, i32 %.fr1070, i64 0
  %broadcast.splat1652 = shufflevector <8 x i32> %broadcast.splatinsert1651, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader186.i.i

.preheader184.i.i:                                ; preds = %bb.au
  br i1 %i.ip, label %.preheader183.lr.ph.i.i, label %.preheader.i.preheader.i.i

.preheader183.lr.ph.i.i:                          ; preds = %.preheader184.i.i
  %i.kc = icmp sgt i32 %i.hz, 0
  %i.kd = sext i32 %i.hd to i64
  %i.ke = extractelement <2 x i32> %i.hn, i64 0
  %i.kf = sext i32 %i.ke to i64
  %invariant.gep197.i.i = getelementptr [4 x i8], ptr %2, i64 %i.kf
  br i1 %i.kc, label %.preheader183.preheader.i.i, label %.preheader.i.preheader.i.i

.preheader183.preheader.i.i:                      ; preds = %.preheader183.lr.ph.i.i
  %i.kg = extractelement <2 x i32> %i.hn, i64 1
  %i.kh = sext i32 %i.kg to i64
  %wide.trip.count218.i.i = zext nneg i32 %i.if to i64
  %wide.trip.count213.i.i = zext nneg i32 %i.hz to i64 ; 2 uses
  %xtraiter5155 = and i64 %wide.trip.count213.i.i, 1
  %i.ki = icmp eq i32 %i.hz, 1
  %unroll_iter = and i64 %wide.trip.count213.i.i, 2147483646
  %lcmp.mod5156.not = icmp eq i64 %xtraiter5155, 0
  %lcmp.mod5157 = trunc i32 %i.hz to i1
  br label %.preheader183.i.i

.preheader183.i.i:                                ; preds = %._crit_edge194.i.i, %.preheader183.preheader.i.i
  %indvars.iv215.i.i = phi i64 [ 0, %.preheader183.preheader.i.i ], [ %indvars.iv.next216.i.i, %._crit_edge194.i.i ] ; 4 uses
  %i.kj = mul nuw nsw i64 %indvars.iv215.i.i, %i.ik
  %i.kk = add nsw i64 %indvars.iv215.i.i, %i.kh
  %i.kl = mul nsw i64 %i.kk, %i.kd
  %gep198.i.i = getelementptr [4 x i8], ptr %invariant.gep197.i.i, i64 %i.kl ; 3 uses
  %i.km = trunc i64 %indvars.iv215.i.i to i32
  %i.kn = add i32 %i.km, 600
  %i.ko = urem i32 %i.kn, 6
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.kp ; 3 uses
  %i.kr = getelementptr [4 x i8], ptr %i.io, i64 %i.kj ; 3 uses
  br i1 %i.ki, label %.epil.preheader, label %.preheader183.i.i.new

._crit_edge194.i.i.unr-lcssa:                     ; preds = %.preheader183.i.i.new
  br i1 %lcmp.mod5156.not, label %._crit_edge194.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge194.i.i.unr-lcssa, %.preheader183.i.i
  %indvars.iv210.i.i.epil.init = phi i64 [ 0, %.preheader183.i.i ], [ %indvars.iv.next211.i.i.1, %._crit_edge194.i.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod5157)
  %gep195.i.i.epil = getelementptr [4 x i8], ptr %gep198.i.i, i64 %indvars.iv210.i.i.epil.init
  %i.ks = load float, ptr %gep195.i.i.epil, align 4, !tbaa !12
  %i.kt = trunc i64 %indvars.iv210.i.i.epil.init to i32
  %i.ku = add i32 %i.kt, 600
  %i.kv = urem i32 %i.ku, 6
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !133
  %i.kz = zext i8 %i.ky to i64
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.kz
  %i.lb = load float, ptr %i.la, align 4, !tbaa !12
  %i.lc = fmul reassoc nsz arcp contract afn float %i.lb, %i.ks
  %i.ld = getelementptr [4 x i8], ptr %i.kr, i64 %indvars.iv210.i.i.epil.init
  store float %i.lc, ptr %i.ld, align 4, !tbaa !12
  br label %._crit_edge194.i.i

._crit_edge194.i.i:                               ; preds = %._crit_edge194.i.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next216.i.i = add nuw nsw i64 %indvars.iv215.i.i, 1 ; 2 uses
  %exitcond219.not.i.i = icmp eq i64 %indvars.iv.next216.i.i, %wide.trip.count218.i.i
  br i1 %exitcond219.not.i.i, label %.loopexit.i.i, label %.preheader183.i.i

.preheader183.i.i.new:                            ; preds = %.preheader183.i.i, %.preheader183.i.i.new
  %indvars.iv210.i.i = phi i64 [ %indvars.iv.next211.i.i.1, %.preheader183.i.i.new ], [ 0, %.preheader183.i.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader183.i.i.new ], [ 0, %.preheader183.i.i ]
  %gep195.i.i = getelementptr [4 x i8], ptr %gep198.i.i, i64 %indvars.iv210.i.i
  %i.le = load float, ptr %gep195.i.i, align 4, !tbaa !12
  %i.lf = trunc i64 %indvars.iv210.i.i to i32
  %i.lg = add i32 %i.lf, 600
  %i.lh = urem i32 %i.lg, 6
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !133
  %i.ll = zext i8 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ll
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !12
  %i.lo = fmul reassoc nsz arcp contract afn float %i.ln, %i.le
  %i.lp = getelementptr [4 x i8], ptr %i.kr, i64 %indvars.iv210.i.i
  store float %i.lo, ptr %i.lp, align 4, !tbaa !12
  %indvars.iv.next211.i.i = or disjoint i64 %indvars.iv210.i.i, 1 ; 3 uses
  %gep195.i.i.1 = getelementptr [4 x i8], ptr %gep198.i.i, i64 %indvars.iv.next211.i.i
end_hunk_1
begin_hunk_2_@process:bb.a
  br label %vector.body1766

vector.body1766:                                  ; preds = %vector.body1766, %vector.ph1764
  %index1767 = phi i64 [ 0, %vector.ph1764 ], [ %index.next1777, %vector.body1766 ] ; 3 uses
  %i.sjo = shl nuw i64 %index1767, 2              ; 2 uses
  %i.sjp = getelementptr inbounds nuw [4 x i8], ptr %i.sgh, i64 %index1767
  %wide.load1768 = load <4 x float>, ptr %i.sjp, align 4, !tbaa !12, !alias.scope !612, !noalias !609 ; 3 uses
  %i.sjq = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %i.sjo ; 2 uses
  %wide.vec1769 = load <16 x float>, ptr %i.sjq, align 4, !tbaa !12, !alias.scope !607, !noalias !613 ; 3 uses
  %strided.vec1770 = shufflevector <16 x float> %wide.vec1769, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1771 = shufflevector <16 x float> %wide.vec1769, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1772 = shufflevector <16 x float> %wide.vec1769, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.sjr = getelementptr inbounds nuw [4 x i8], ptr %i.sjd, i64 %i.sjo
  %wide.vec1773 = load <16 x float>, ptr %i.sjr, align 64, !tbaa !12, !alias.scope !614, !noalias !609 ; 3 uses
  %strided.vec1774 = shufflevector <16 x float> %wide.vec1773, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec1775 = shufflevector <16 x float> %wide.vec1773, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec1776 = shufflevector <16 x float> %wide.vec1773, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %i.sjs = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec1770, %strided.vec1774
  %i.sjt = fmul reassoc nsz arcp contract afn <4 x float> %i.sjs, %wide.load1768
  %i.sju = fadd reassoc nsz arcp contract afn <4 x float> %i.sjt, %strided.vec1774
  %i.sjv = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec1771, %strided.vec1775
  %i.sjw = fmul reassoc nsz arcp contract afn <4 x float> %i.sjv, %wide.load1768
  %i.sjx = fadd reassoc nsz arcp contract afn <4 x float> %i.sjw, %strided.vec1775
  %i.sjy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec1772, %strided.vec1776
  %i.sjz = fmul reassoc nsz arcp contract afn <4 x float> %i.sjy, %wide.load1768
  %i.ska = fadd reassoc nsz arcp contract afn <4 x float> %i.sjz, %strided.vec1776
  %i.skb = shufflevector <4 x float> %i.sju, <4 x float> %i.sjx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.skc = shufflevector <4 x float> %i.ska, <4 x float> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.skb, <8 x float> %i.skc, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.sjq, align 4, !tbaa !12, !alias.scope !607, !noalias !613
  %index.next1777 = add nuw i64 %index1767, 4     ; 2 uses
  %i.skd = icmp eq i64 %index.next1777, %n.vec1765
  br i1 %i.skd, label %.lr.ph.i615.preheader, label %vector.body1766, !llvm.loop !444

._crit_edge.i617:                                 ; preds = %.lr.ph.i615
  tail call void @free(ptr noundef nonnull %i.sjd) #27, !noalias !609
  br label %.sink.split.i

.lr.ph.i615:                                      ; preds = %.lr.ph.i615.preheader, %.lr.ph.i615
  %.07280.i = phi i64 [ %i.slh, %.lr.ph.i615 ], [ %.07280.i.ph, %.lr.ph.i615.preheader ] ; 3 uses
  %i.ske = shl nuw i64 %.07280.i, 2               ; 4 uses
  %i.skf = getelementptr inbounds nuw [4 x i8], ptr %i.sgh, i64 %.07280.i ; 3 uses
  %i.skg = load float, ptr %i.skf, align 4, !tbaa !12, !noalias !609
  %i.skh = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %i.ske ; 3 uses
  %i.ski = load float, ptr %i.skh, align 4, !tbaa !12, !alias.scope !607
  %i.skj = getelementptr inbounds nuw [4 x i8], ptr %i.sjd, i64 %i.ske
  %i.skk = load float, ptr %i.skj, align 16, !tbaa !12, !noalias !609 ; 2 uses
  %i.skl = fsub reassoc nsz arcp contract afn float %i.ski, %i.skk
  %i.skm = fmul reassoc nsz arcp contract afn float %i.skl, %i.skg
  %i.skn = fadd reassoc nsz arcp contract afn float %i.skm, %i.skk
  store float %i.skn, ptr %i.skh, align 4, !tbaa !12, !alias.scope !607
  %i.sko = load float, ptr %i.skf, align 4, !tbaa !12, !noalias !609
  %i.skp = or disjoint i64 %i.ske, 1              ; 2 uses
  %i.skq = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %i.skp ; 2 uses
  %i.skr = load float, ptr %i.skq, align 4, !tbaa !12, !alias.scope !607
  %i.sks = getelementptr inbounds nuw [4 x i8], ptr %i.sjd, i64 %i.skp
  %i.skt = load float, ptr %i.sks, align 4, !tbaa !12, !noalias !609 ; 2 uses
  %i.sku = fsub reassoc nsz arcp contract afn float %i.skr, %i.skt
  %i.skv = fmul reassoc nsz arcp contract afn float %i.sku, %i.sko
  %i.skw = fadd reassoc nsz arcp contract afn float %i.skv, %i.skt
  store float %i.skw, ptr %i.skq, align 4, !tbaa !12, !alias.scope !607
  %i.skx = load float, ptr %i.skf, align 4, !tbaa !12, !noalias !609
  %i.sky = or disjoint i64 %i.ske, 2              ; 2 uses
  %i.skz = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %i.sky ; 2 uses
  %i.sla = load float, ptr %i.skz, align 4, !tbaa !12, !alias.scope !607
  %i.slb = getelementptr inbounds nuw [4 x i8], ptr %i.sjd, i64 %i.sky
  %i.slc = load float, ptr %i.slb, align 8, !tbaa !12, !noalias !609 ; 2 uses
  %i.sld = fsub reassoc nsz arcp contract afn float %i.sla, %i.slc
  %i.sle = fmul reassoc nsz arcp contract afn float %i.sld, %i.skx
  %i.slf = fadd reassoc nsz arcp contract afn float %i.sle, %i.slc
  store float %i.slf, ptr %i.skz, align 4, !tbaa !12, !alias.scope !607
  %i.slg = getelementptr inbounds nuw i8, ptr %i.skh, i64 12
  store float 0.000000e+00, ptr %i.slg, align 4, !tbaa !12, !alias.scope !607
  %i.slh = add nuw nsw i64 %.07280.i, 1           ; 2 uses
  %exitcond.not.i616 = icmp eq i64 %i.slh, %i.sgg
  br i1 %exitcond.not.i616, label %._crit_edge.i617, label %.lr.ph.i615, !llvm.loop !445

.sink.split.i:                                    ; preds = %.lr.ph82.i.prol.loopexit, %.lr.ph82.i, %middle.block1722, %vec.epilog.middle.block1741, %._crit_edge.i617, %bb.se, %bb.sc
  tail call void @free(ptr noundef %i.sgh) #27, !noalias !609
  tail call void @free(ptr noundef %i.sgj) #27, !noalias !609
  br label %dual_demosaic.exit

dual_demosaic.exit:                               ; preds = %.sink.split.i, %bb.sb, %_capture_sharpen.exit
  br i1 %.not75.i, label %bb.sf, label %bb.sg

bb.sf:                                            ; preds = %dual_demosaic.exit
  %i.sli = mul i32 %i.aov, %i.awp
  %i.slj = sext i32 %i.sli to i64
  %i.slk = getelementptr inbounds [4 x i8], ptr %i.and, i64 %i.slj
  %i.sll = mul i32 %i.aov, %i.awx
  %i.slm = sext i32 %i.sll to i64
  %i.sln = getelementptr inbounds [4 x i8], ptr %i.anv, i64 %i.slm
  %i.slo = mul nsw i32 %i.aov, %i.awy
  %i.slp = sext i32 %i.slo to i64
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.slk, ptr noundef nonnull %i.sln, i64 noundef %i.slp) #27
  br label %bb.sg

bb.sg:                                            ; preds = %dual_demosaic.exit, %bb.sf, %bb.hc
  %indvars.iv.next1250 = add nuw nsw i64 %indvars.iv1249, 1 ; 2 uses
  %exitcond1252.not = icmp eq i64 %indvars.iv.next1250, %wide.trip.count
  br i1 %exitcond1252.not, label %._crit_edge, label %bb.hc

bb.sh:                                            ; preds = %._crit_edge
  tail call void @free(ptr noundef %i.anv) #27
  br label %bb.si

bb.si:                                            ; preds = %bb.sh, %._crit_edge
  tail call void @free(ptr noundef %.0387) #27
  %i.slq = getelementptr inbounds nuw i8, ptr %i.s, i64 552
  %i.slr = load i32, ptr %i.slq, align 8, !tbaa !456
  %.not425 = icmp eq i32 %i.slr, 0
  br i1 %.not425, label %bb.sk, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.sls = tail call i32 @dt_dev_write_scharr_mask(ptr noundef %1, ptr noundef nonnull %i.and, ptr noundef %4, i32 noundef 1) #27 ; 0 uses
  br label %bb.sk

bb.sk:                                            ; preds = %bb.sj, %bb.si
  %i.slt = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.slu = load i32, ptr %i.slt, align 4, !tbaa !146 ; 2 uses
  %i.slv = icmp eq i32 %i.slu, 0
  %or.cond33.not428 = select i1 %i.slv, i1 true, i1 %i.cw
  %or.cond35 = select i1 %or.cond33.not428, i1 true, i1 %i.v
  br i1 %or.cond35, label %bb.sm, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  tail call fastcc void @color_smoothing(ptr noundef %i.and, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %i.slu)
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sl, %bb.sk
  br i1 %i.dn, label %bb.so, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  tail call void @dt_iop_clip_and_zoom_roi(ptr noundef %3, ptr noundef nonnull %i.and, ptr noundef %5, ptr noundef %4) #27
  tail call void @free(ptr noundef %i.and) #27
  br label %bb.so

bb.so:                                            ; preds = %bb.go, %bb.sm, %bb.sn, %bb.hb, %bb.t, %bb.w, %bb.v
  ret void
}

declare void @dt_dev_clear_scharr_mask(ptr noundef) local_unnamed_addr #3

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @dt_iop_clip_and_zoom_demosaic_passthrough_monochrome_f(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_iop_clip_and_zoom_demosaic_third_size_xtrans_f(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_iop_clip_and_zoom_demosaic_half_size_f(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @green_equilibration_favg(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 1                            ; 2 uses
  %.not.not.not = icmp eq i32 %i.a, 0
  %spec.select = select i1 %.not.not.not, i32 -1, i32 1 ; 3 uses
  %spec.select58 = xor i32 %i.a, 1                ; 3 uses
  %i.b = sext i32 %2 to i64                       ; 5 uses
  %i.c = sext i32 %3 to i64
  %i.d = mul nsw i64 %i.c, %i.b
  tail call void @dt_iop_image_copy(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.d) #27
  %i.e = add nsw i32 %3, -1                       ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.a
  %i.g = zext nneg i32 %spec.select58 to i64      ; 4 uses
  %i.h = xor i32 %spec.select, -1
  %i.i = add i32 %2, %i.h                         ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp ult i32 %spec.select58, %i.i
  %i.l = sext i32 %spec.select to i64
  %invariant.gep73 = getelementptr [4 x i8], ptr %1, i64 %i.l
  br i1 %i.k, label %.lr.ph.us, label %.lr.ph68.split

.lr.ph.us:                                        ; preds = %.lr.ph68, %._crit_edge.us
  %.05366.us = phi i64 [ %i.ab, %._crit_edge.us ], [ 0, %.lr.ph68 ] ; 3 uses
  %i.m = phi <2 x double> [ %i.y, %._crit_edge.us ], [ zeroinitializer, %.lr.ph68 ]
  %i.n = mul i64 %.05366.us, %i.b
  %i.o = getelementptr [4 x i8], ptr %1, i64 %i.n
  %i.p = or disjoint i64 %.05366.us, 1
  %i.q = mul i64 %i.p, %i.b
  %gep74.us = getelementptr [4 x i8], ptr %invariant.gep73, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %.05262.us = phi i64 [ %i.g, %.lr.ph.us ], [ %i.z, %bb.b ] ; 3 uses
  %i.r = phi <2 x double> [ %i.m, %.lr.ph.us ], [ %i.y, %bb.b ]
  %i.s = getelementptr [4 x i8], ptr %i.o, i64 %.05262.us
  %i.t = load float, ptr %i.s, align 4, !tbaa !12
  %gep.us = getelementptr [4 x i8], ptr %gep74.us, i64 %.05262.us
  %i.u = load float, ptr %gep.us, align 4, !tbaa !12
  %i.v = insertelement <2 x float> poison, float %i.u, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.t, i64 1
  %i.x = fpext reassoc nsz arcp contract afn <2 x float> %i.w to <2 x double>
  %i.y = fadd reassoc nsz arcp contract afn <2 x double> %i.r, %i.x ; 7 uses
  %i.z = add i64 %.05262.us, 2                    ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %bb.b, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.b
  %i.ab = add i64 %.05366.us, 2                   ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.f
  br i1 %i.ac, label %.lr.ph.us, label %._crit_edge69

._crit_edge69:                                    ; preds = %._crit_edge.us
  %i.ad = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.y, zeroinitializer ; 2 uses
  %i.ae = extractelement <2 x i1> %i.ad, i64 0
  %i.af = extractelement <2 x i1> %i.ad, i64 1
  %or.cond = select i1 %i.af, i1 %i.ae, i1 false
  %i.ag = icmp sgt i32 %3, 1
  %or.cond93 = and i1 %or.cond, %i.ag
  br i1 %or.cond93, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %._crit_edge69
  %i.ah = xor i32 %spec.select, -1
  %i.ai = add i32 %2, %i.ah                       ; 2 uses
  %i.aj = icmp slt i32 %spec.select58, %i.ai
  br i1 %i.aj, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ak = and i32 %4, 1
  %i.al = xor i32 %i.ak, 1
  %i.am = zext nneg i32 %i.al to i64              ; 3 uses
  %i.an = zext nneg i32 %i.ai to i64              ; 3 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.f, i64 2)
  %i.ao = add nuw i64 %smax, 4611686018427387903
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = mul i64 %i.ap, %i.b
  %i.ar = shl i64 %i.aq, 3
  %i.as = xor i64 %i.g, -1
  %i.at = add nsw i64 %i.as, %i.an
  %i.au = shl nsw i64 %i.at, 2
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.ar, %i.av
  %i.ax = shl nuw nsw i64 %i.g, 2                 ; 3 uses
  %i.ay = or disjoint i64 %i.aw, %i.ax
  %i.az = add i64 %i.ay, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.az
  %scevgep99 = getelementptr i8, ptr %1, i64 %i.ax
  %scevgep100 = getelementptr i8, ptr %0, i64 %i.az
  %scevgep101 = getelementptr i8, ptr %0, i64 %i.ax
  %i.ba = xor i64 %i.g, -1
  %i.bb = add nsw i64 %i.ba, %i.an                ; 2 uses
  %i.bc = lshr i64 %i.bb, 1
  %i.bd = add nuw i64 %i.bc, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 8
  %bound0 = icmp ult ptr %scevgep101, %scevgep
  %bound1 = icmp ult ptr %scevgep99, %scevgep100
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %2, 0
  %i.be = or i1 %found.conflict, %stride.check
  %i.bf = and i64 %i.bd, 3                        ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = select i1 %i.bg, i64 4, i64 %i.bf
  %n.vec = sub i64 %i.bd, %i.bh                   ; 2 uses
  %i.bi = shl i64 %n.vec, 1
  %i.bj = or disjoint i64 %i.bi, %i.am
  %broadcast.splat103 = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat105 = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert106 = insertelement <4 x i64> poison, i64 %i.am, i64 0
  %broadcast.splat107 = shufflevector <4 x i64> %broadcast.splatinsert106, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat107, <i64 0, i64 2, i64 4, i64 6>
  %i.bk = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat105
  %i.bl = extractelement <2 x double> %i.y, i64 0
  %i.bm = extractelement <2 x double> %i.y, i64 1
  %i.bn = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bm
  br label %.preheader

.lr.ph68.split:                                   ; preds = %.lr.ph68, %.lr.ph68.split
  %.05366 = phi i64 [ %i.bo, %.lr.ph68.split ], [ 0, %.lr.ph68 ]
  %i.bo = add i64 %.05366, 2                      ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.f
  br i1 %i.bp, label %.lr.ph68.split, label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv84 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next85, %._crit_edge ] ; 2 uses
  %i.bq = mul nsw i64 %indvars.iv84, %i.b         ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.be
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %.preheader, %vector.body
  %indvars.iv.ph = phi i64 [ %i.bj, %vector.body ], [ %i.am, %.preheader ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.bq, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.br = add nuw nsw <4 x i64> %broadcast.splat, %vec.ind ; 2 uses
  %i.bs = extractelement <4 x i64> %i.br, i64 0
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bs
  %wide.vec = load <8 x float>, ptr %i.bt, align 4, !tbaa !12, !alias.scope !620
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bu = fpext reassoc nsz arcp contract afn <4 x float> %strided.vec to <4 x double>
  %i.bv = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat103, %i.bu
  %i.bw = fmul reassoc nsz arcp contract afn <4 x double> %i.bv, %i.bk
  %i.bx = fptrunc reassoc nsz arcp contract afn <4 x double> %i.bw to <4 x float>
  %i.by = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bx, <4 x float> zeroinitializer)
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %0, <4 x i64> %i.br
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.by, <4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !12, !alias.scope !621, !noalias !620
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 8)
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %scalar.ph.preheader, label %vector.body, !llvm.loop !618

._crit_edge:                                      ; preds = %scalar.ph
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %i.ca = icmp slt i64 %indvars.iv.next85, %i.f
  br i1 %i.ca, label %.preheader, label %.loopexit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cb = add nsw i64 %i.bq, %indvars.iv          ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !12
  %i.ce = fpext reassoc nsz arcp contract afn float %i.cd to double
  %i.cf = fmul reassoc nsz arcp contract afn double %i.bl, %i.ce
  %i.cg = fmul reassoc nsz arcp contract afn double %i.cf, %i.bn
  %i.ch = fptrunc reassoc nsz arcp contract afn double %i.cg to float
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ch, float 0.000000e+00)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cb
  store float %i.ci, ptr %i.cj, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ck = icmp samesign ult i64 %indvars.iv.next, %i.an
  br i1 %i.ck, label %scalar.ph, label %._crit_edge, !llvm.loop !619

.loopexit:                                        ; preds = %.lr.ph68.split, %._crit_edge, %bb.a, %.preheader.lr.ph, %._crit_edge69
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @green_equilibration_lavg(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 768
  %.not = icmp eq i32 %i.a, 256
  %spec.select = select i1 %.not, i32 2, i32 3    ; 2 uses
  %i.b = shl nuw nsw i32 %spec.select, 2          ; 2 uses
  %i.c = lshr i32 %4, %i.b
  %i.d = and i32 %i.c, 3
  %.not117 = icmp eq i32 %i.d, 1
  %.0111 = select i1 %.not117, i64 2, i64 3       ; 3 uses
  %i.e = trunc nuw nsw i64 %.0111 to i32
  %i.f = shl nuw nsw i32 %i.e, 1
  %i.g = and i32 %i.f, 2
  %i.h = or disjoint i32 %i.g, %i.b
  %i.i = lshr i32 %4, %i.h
  %i.j = and i32 %i.i, 3
  %.not118 = icmp ne i32 %i.j, 1
  %i.k = sext i1 %.not118 to i32
  %.1 = add nsw i32 %spec.select, %i.k            ; 2 uses
  %i.l = sext i32 %2 to i64                       ; 6 uses
  %i.m = sext i32 %3 to i64
  %i.n = mul nsw i64 %i.m, %i.l
  tail call void @dt_iop_image_copy(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.n) #27
  %i.o = add nsw i32 %3, -2                       ; 2 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ult i32 %.1, %i.o
  br i1 %i.q, label %.preheader.lr.ph, label %._crit_edge125

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.r = zext nneg i32 %.1 to i64                 ; 2 uses
  %i.s = add nsw i32 %2, -2
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = icmp ult i64 %.0111, %i.t
  br i1 %i.u, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us
  %.0110124.us = phi i64 [ %i.ae, %._crit_edge.us ], [ %i.r, %.preheader.lr.ph ] ; 5 uses
  %i.v = add i64 %.0110124.us, -1
  %i.w = mul i64 %i.v, %i.l
  %i.x = getelementptr [4 x i8], ptr %1, i64 %i.w
  %i.y = add nuw i64 %.0110124.us, 1
  %i.z = mul i64 %i.y, %i.l
  %i.aa = getelementptr [4 x i8], ptr %1, i64 %i.z
  %i.ab = add i64 %.0110124.us, -2
  %i.ac = mul i64 %i.ab, %i.l
  %i.ad = getelementptr [4 x i8], ptr %1, i64 %i.ac
  %i.ae = add i64 %.0110124.us, 2                 ; 3 uses
  %i.af = mul i64 %i.ae, %i.l
  %i.ag = getelementptr [4 x i8], ptr %1, i64 %i.af
  %i.ah = mul i64 %.0110124.us, %i.l
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.f
  %.0123.us = phi i64 [ %.0111, %.preheader.us ], [ %i.cz, %bb.f ] ; 6 uses
  %i.ai = getelementptr [4 x i8], ptr %i.x, i64 %.0123.us ; 2 uses
  %i.aj = getelementptr [4 x i8], ptr %i.aa, i64 %.0123.us ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 -4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12 ; 4 uses
  %i.am = getelementptr i8, ptr %i.ai, i64 4
end_hunk_2
begin_hunk_3_@dtgtk_cairo_paint_showmask
declare void @dtgtk_cairo_paint_showmask(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @_dual_thrs_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !57  ; 5 uses
  %i.f = tail call i32 @dt_bauhaus_widget_get_quad_active(ptr noundef %0) #27
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 180
  store i32 %i.f, ptr %i.g, align 4, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !160
  tail call void @dt_bauhaus_widget_set_quad_active(ptr noundef %i.i, i32 noundef 0) #27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  store i32 0, ptr %i.j, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !161
  tail call void @dt_bauhaus_widget_set_quad_active(ptr noundef %i.l, i32 noundef 0) #27
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  store i32 0, ptr %i.m, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32
  tail call void @dt_dev_reprocess_center(ptr noundef %i.o) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @dt_bauhaus_toggle_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gui_new_collapsible_section(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dtgtk_cairo_paint_reset(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @_cs_radius_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 196
  store float -1.000000e+00, ptr %i.f, align 4, !tbaa !131
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  tail call void @dt_dev_reprocess_center(ptr noundef %i.h) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_cs_thrs_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !57  ; 5 uses
  %i.f = tail call i32 @dt_bauhaus_widget_get_quad_active(ptr noundef %0) #27
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  store i32 %i.f, ptr %i.g, align 8, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !168
  tail call void @dt_bauhaus_widget_set_quad_active(ptr noundef %i.i, i32 noundef 0) #27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 180
  store i32 0, ptr %i.j, align 4, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !161
  tail call void @dt_bauhaus_widget_set_quad_active(ptr noundef %i.l, i32 noundef 0) #27
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  store i32 0, ptr %i.m, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32
  tail call void @dt_dev_reprocess_center(ptr noundef %i.o) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_cs_boost_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !57  ; 5 uses
  %i.f = tail call i32 @dt_bauhaus_widget_get_quad_active(ptr noundef %0) #27
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  store i32 %i.f, ptr %i.g, align 8, !tbaa !84
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !168
  tail call void @dt_bauhaus_widget_set_quad_active(ptr noundef %i.i, i32 noundef 0) #27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 180
  store i32 0, ptr %i.j, align 4, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !160
  tail call void @dt_bauhaus_widget_set_quad_active(ptr noundef %i.l, i32 noundef 0) #27
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  store i32 0, ptr %i.m, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32
  tail call void @dt_dev_reprocess_center(ptr noundef %i.o) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @gtk_stack_new() local_unnamed_addr #3

declare void @gtk_stack_set_homogeneous(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_stack_add_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_control_signal_connect(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_ui_pipe_done(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !57  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = cmpxchg ptr %i.d, i32 0, i32 1 seq_cst seq_cst, align 4
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 196 ; 3 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !131 ; 2 uses
  %i.i = fcmp reassoc nsz arcp contract afn ogt float %i.h, 0.000000e+00
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %i.k = load float, ptr %i.j, align 8, !tbaa !130
  %i.l = fcmp reassoc nsz arcp contract afn ogt float %i.k, 0.000000e+00 ; 2 uses
  br i1 %i.i, label %bb.d, label %.thread22

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !159
  tail call void @dt_bauhaus_slider_set_val(ptr noundef %i.n, float noundef %i.h) #27
  br i1 %i.l, label %.thread, label %bb.e

.thread22:                                        ; preds = %bb.c
  br i1 %i.l, label %.thread, label %.thread23

.thread23:                                        ; preds = %.thread22
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = atomicrmw add ptr %i.p, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.h

.thread:                                          ; preds = %.thread22, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !160
  %i.t = load float, ptr %i.j, align 8, !tbaa !130
  tail call void @dt_bauhaus_slider_set_val(ptr noundef %i.s, float noundef %i.t) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = atomicrmw add ptr %i.v, i32 -1 seq_cst, align 4 ; 0 uses
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.y = and i32 %i.x, 33554432
  %.not19 = icmp eq i32 %i.y, 0
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load <2 x float>, ptr %i.g, align 4, !tbaa !12
  %i.aa = fpext reassoc nsz arcp contract afn <2 x float> %i.z to <2 x double> ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0
  %i.ac = extractelement <2 x double> %i.aa, i64 1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.219, double noundef %i.ab, double noundef %i.ac) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store <2 x float> zeroinitializer, ptr %i.g, align 4, !tbaa !12
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !713
  tail call void @dt_dev_add_history_item(ptr noundef %i.ad, ptr noundef nonnull %1, i32 noundef 1) #27
  br label %bb.h

bb.h:                                             ; preds = %.thread23, %bb.g, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_preset_applied_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !151
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load float, ptr %i.e, align 4, !tbaa !137 ; 2 uses
  %i.g = fcmp reassoc nsz arcp contract afn ugt float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.i = load float, ptr %i.h, align 4, !tbaa !129
  %i.j = fcmp reassoc nsz arcp contract afn ugt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.l = and i32 %i.k, 33554432
  %.not7 = icmp eq i32 %i.l, 0
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fpext reassoc nsz arcp contract afn float %i.f to double
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.o = load float, ptr %i.n, align 4, !tbaa !129
  %i.p = fpext reassoc nsz arcp contract afn float %i.o to double
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.220, double noundef %i.m, double noundef %i.p) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  tail call void @dt_dev_reprocess_center(ptr noundef %i.r) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !716
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !133
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !133
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !133
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !133
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !133
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !133
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !133
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !133
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !133
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 848), align 16, !tbaa !133
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 936), align 8, !tbaa !133
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1024), align 16, !tbaa !133
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1112), align 8, !tbaa !133
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1200), align 16, !tbaa !133
  store ptr @introspection_init.f0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 72), align 8, !tbaa !133
  store ptr @introspection_init.f2, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 248), align 8, !tbaa !133
  store ptr @introspection_init.f3, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 336), align 16, !tbaa !133
  store ptr @introspection_init.f4, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 424), align 8, !tbaa !133
  store ptr @introspection_init.f12, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1128), align 8, !tbaa !133
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.98) #30
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.93) #30
  %.not26 = icmp eq i32 %i.b, 0
  br i1 %.not26, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.w

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.36) #30
  %.not27 = icmp eq i32 %i.d, 0
  br i1 %.not27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.w

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.85) #30
  %.not28 = icmp eq i32 %i.f, 0
  br i1 %.not28, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.95) #30
  %.not29 = icmp eq i32 %i.h, 0
  br i1 %.not29, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.90) #30
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.106) #30
  %.not31 = icmp eq i32 %i.l, 0
  br i1 %.not31, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.w

bb.n:                                             ; preds = %bb.l
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.110) #30
  %.not32 = icmp eq i32 %i.n, 0
  br i1 %.not32, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.113) #30
  %.not33 = icmp eq i32 %i.p, 0
  br i1 %.not33, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.104) #30
  %.not34 = icmp eq i32 %i.r, 0
  br i1 %.not34, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.116) #30
  %.not35 = icmp eq i32 %i.t, 0
end_hunk_3
