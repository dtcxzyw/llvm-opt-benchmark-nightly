Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 136
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 156
begin_hunk_0_@dt_iop_set_description
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
  %i.b = alloca [6 x ptr], align 16               ; 24 uses
  %i.c = alloca [3 x [104 x float]], align 16     ; 7 uses
  %i.d = alloca [112 x float], align 16           ; 11 uses
  %i.e = alloca [3 x [3 x [8 x i16]]], align 16   ; 7 uses
  %i.f = alloca [5 x i8], align 1                 ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 8 uses
  %i.h = alloca [3 x [3 x [8 x i16]]], align 16   ; 6 uses
  %i.i = alloca [3 x [8 x float]], align 16       ; 16 uses
  %i.j = alloca [5 x i8], align 1                 ; 24 uses
  %i.k = alloca [4 x float], align 16             ; 21 uses
  %i.l = alloca [4 x float], align 16             ; 21 uses
  %6 = alloca [2 x i32], align 4                  ; 5 uses
  %i.m = alloca [4 x float], align 16             ; 15 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !439  ; 9 uses
  tail call void @dt_dev_clear_scharr_mask(ptr noundef %i.r) #27
  %i.s = getelementptr i8, ptr %i.r, i64 644
  %.val = load i32, ptr %i.s, align 4, !tbaa !447 ; 2 uses
  %i.t = and i32 %.val, 260
  %i.u = icmp ne i32 %i.t, 0                      ; 4 uses
  %i.v = and i32 %.val, 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 42 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !56  ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !57 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 516 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !448
  %.fr1070 = freeze i32 %i.ac                     ; 61 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 1540 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !58
  %i.af = and i32 %i.ae, 16384
  %.not.i = icmp eq i32 %i.af, 0
  %.sroa.gep = getelementptr i8, ptr %i.c, i64 1664
  %.sroa.gep5223 = getelementptr inbounds nuw i8, ptr %i.c, i64 1248
  br i1 %.not.i, label %bb.b, label %_demosaic_full.exit

bb.b:                                             ; preds = %bb.a
  %i.ag = tail call i32 @dt_image_is_mono_sraw(ptr noundef nonnull %i.p) #27
  %.not9.i = icmp eq i32 %i.ag, 0
  br i1 %.not9.i, label %bb.c, label %_demosaic_full.exit

bb.c:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !439 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 552
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !449
  %.not10.i = icmp eq i32 %i.aj, 0
  br i1 %.not10.i, label %bb.d, label %_demosaic_full.exit

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr i8, ptr %i.ah, i64 644
  %.val13.i = load i32, ptr %i.ak, align 4, !tbaa !447 ; 2 uses
  %i.al = and i32 %.val13.i, 8
  %.not11.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !450
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !451
  %i.aq = tail call i32 @dt_mipmap_cache_get_matching_size(i32 noundef %i.an, i32 noundef %i.ap) #27
  %i.ar = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.187) #27
  %i.as = tail call i32 @dt_mipmap_cache_get_min_mip_from_pref(ptr noundef %i.ar) #27
  %i.at = icmp uge i32 %i.aq, %i.as
  br label %_demosaic_full.exit

bb.f:                                             ; preds = %bb.d
  %i.au = and i32 %.val13.i, 4
  %.not12.i = icmp eq i32 %i.au, 0
  br i1 %.not12.i, label %_demosaic_full.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aw = load float, ptr %i.av, align 4, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 184
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !452
  %i.az = icmp eq i32 %i.ay, 9
  %i.ba = select reassoc nsz arcp contract afn i1 %i.az, float f0x3F2AC083, float 5.000000e-01
  %i.bb = fcmp reassoc nsz arcp contract afn ogt float %i.aw, %i.ba
  br label %_demosaic_full.exit

_demosaic_full.exit:                              ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  %.0.shrunk.i = phi i1 [ true, %bb.a ], [ %i.at, %bb.e ], [ %i.bb, %bb.g ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.f ]
  %i.bc = icmp eq i32 %.fr1070, 9                 ; 10 uses
  %i.bd = load i32, ptr %i.ad, align 4, !tbaa !58
  %.fr1069 = freeze i32 %i.bd
  %i.be = and i32 %.fr1069, 16384                 ; 2 uses
  %i.bf = icmp ne i32 %i.be, 0                    ; 4 uses
  %i.bg = icmp eq i32 %.fr1070, 0                 ; 3 uses
  %i.bh = or i1 %i.bc, %i.bg
  %spec.select.not = or i1 %i.bf, %i.bh
  %i.bi = tail call i32 @dt_image_is_mono_sraw(ptr noundef nonnull %i.p) #27 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !60 ; 2 uses
  %i.bl = and i32 %i.bk, -2049                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !450 ; 100 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !451 ; 16 uses
  %i.bq = icmp slt i32 %i.bn, 16                  ; 2 uses
  %i.br = icmp slt i32 %i.bp, 16
  %or.cond3 = select i1 %i.bq, i1 true, i1 %i.br
  %i.bs = add i32 %i.bl, -5
  %i.bt = icmp ult i32 %i.bs, -2
  %or.cond7 = select i1 %or.cond3, i1 %i.bt, i1 false
  %i.bu = select i1 %i.bc, i32 1024, i32 2
  %.0394 = select i1 %or.cond7, i32 %i.bu, i32 %i.bl ; 10 uses
  %i.bv = load ptr, ptr %i.n, align 8, !tbaa !32  ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 16, !tbaa !453
  %i.bx = icmp ne i32 %i.bw, 0
  %i.by = icmp ne i32 %i.v, 0
  %or.cond9 = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond9, label %bb.h, label %bb.p

bb.h:                                             ; preds = %_demosaic_full.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aa, i64 180
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !81
  %.not404 = icmp eq i32 %i.ca, 0
  br i1 %.not404, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 628
  store i32 1, ptr %i.cb, align 4, !tbaa !454
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0392 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]     ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aa, i64 176
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !82
  %.not405 = icmp eq i32 %i.cd, 0
  br i1 %.not405, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !83
  %.not406 = icmp eq i32 %i.cf, 0
  br i1 %.not406, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 628
  store i32 1, ptr %i.cg, align 4, !tbaa !454
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.0390 = phi i32 [ 1, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ] ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aa, i64 184
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !84
  %.not407 = icmp eq i32 %i.ci, 0
  br i1 %.not407, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !83
  %.not408 = icmp eq i32 %i.ck, 0
  br i1 %.not408, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 628
  store i32 1, ptr %i.cl, align 4, !tbaa !454
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %_demosaic_full.exit
  %.1393 = phi i32 [ %.0392, %bb.o ], [ %.0392, %bb.n ], [ %.0392, %bb.m ], [ 0, %_demosaic_full.exit ] ; 2 uses
  %.1391 = phi i32 [ %.0390, %bb.o ], [ %.0390, %bb.n ], [ %.0390, %bb.m ], [ 0, %_demosaic_full.exit ]
  %i.cm = phi i1 [ true, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %_demosaic_full.exit ]
  %.not183.i = phi i1 [ false, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %_demosaic_full.exit ]
  %.0389 = phi i32 [ 1, %bb.o ], [ %.0390, %bb.n ], [ %.0390, %bb.m ], [ 0, %_demosaic_full.exit ]
  br i1 %.0.shrunk.i, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.co = and i32 %i.cn, 33554432
  %.not410 = icmp eq i32 %i.co, 0
  br i1 %.not410, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.r, ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull @.str.7) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cp = add i32 %.0394, -3
  %or.cond11 = icmp ult i32 %i.cp, 2
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !450 ; 3 uses
  br i1 %or.cond11, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @dt_iop_clip_and_zoom_demosaic_passthrough_monochrome_f(ptr noundef %3, ptr noundef %2, ptr noundef %5, ptr noundef nonnull %4, i32 noundef %i.cr, i32 noundef %i.bn) #27
  br label %bb.ry

bb.u:                                             ; preds = %bb.s
  br i1 %i.bc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @dt_iop_clip_and_zoom_demosaic_third_size_xtrans_f(ptr noundef %3, ptr noundef %2, ptr noundef %5, ptr noundef nonnull %4, i32 noundef %i.cr, i32 noundef %i.bn, ptr noundef nonnull %i.w) #27
  br label %bb.ry

bb.w:                                             ; preds = %bb.u
  tail call void @dt_iop_clip_and_zoom_demosaic_half_size_f(ptr noundef %3, ptr noundef %2, ptr noundef %5, ptr noundef nonnull %4, i32 noundef %i.cr, i32 noundef %i.bn, i32 noundef %.fr1070) #27
  br label %bb.ry

bb.x:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %i.r, i64 628
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !454 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 128                  ; 2 uses
  %i.cv = icmp ne i32 %i.ct, 0                    ; 3 uses
  %i.cw = and i32 %i.bk, 2048
  %i.cx = icmp eq i32 %i.cw, 0
  %or.cond13 = select i1 %i.cx, i1 true, i1 %i.u
  %or.cond15 = or i1 %or.cond13, %i.cm
  %i.cy = icmp ne i32 %.1391, 0                   ; 2 uses
  %or.cond17 = or i1 %i.cy, %or.cond15
  %spec.select432.not = select i1 %or.cond17, i1 true, i1 %i.cu ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !450
  %i.db = icmp eq i32 %i.da, %i.bn
  br i1 %i.db, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !451
  %i.de = icmp eq i32 %i.dd, %i.bp
  br i1 %i.de, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dg = load float, ptr %i.df, align 4, !tbaa !34
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 16
end_hunk_0
begin_hunk_1_@process:bb.a
  %indvars.iv.next221.i.i.2 = add nuw nsw i64 %indvars.iv220.i.i, 3 ; 2 uses
  %i.rq = trunc nuw nsw i64 %indvars.iv.next221.i.i.2 to i32
  %i.rr = add i32 %i.ox, %i.rq
  %i.rs = sext i32 %i.rr to i64
  %.idx.i.i.3 = shl nsw i64 %i.rs, 4
  %i.rt = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.3
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !12
  %i.rv = getelementptr [4 x i8], ptr %i.oy, i64 %indvars.iv.next221.i.i.2
  store float %i.ru, ptr %i.rv, align 4, !tbaa !12
  %indvars.iv.next221.i.i.3 = add nuw nsw i64 %indvars.iv220.i.i, 4 ; 2 uses
  %exitcond224.not.i.i.3 = icmp eq i64 %indvars.iv.next221.i.i.3, %wide.trip.count223.i.i
  br i1 %exitcond224.not.i.i.3, label %._crit_edge200.i.i, label %vec.epilog.scalar.ph, !llvm.loop !200

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i, %._crit_edge194.i.i, %._crit_edge200.i.i, %.preheader186.lr.ph.i.i, %.preheader187.i.i, %.preheader182.i.i
  switch i32 %.fr1070, label %bb.bj [
    i32 0, label %bb.av
    i32 9, label %.preheader.i.preheader.i.i
  ]

.preheader.i.preheader.i.i:                       ; preds = %.loopexit.i.i, %.preheader183.lr.ph.i.i, %.preheader184.i.i
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 510 ; 2 uses
  %i.rx = load i8, ptr %i.w, align 16, !tbaa !133 ; 4 uses
  %i.ry = icmp eq i8 %i.rx, 1                     ; 3 uses
  br i1 %i.ry, label %bb.by, label %.preheader._crit_edge.i.i.i

bb.av:                                            ; preds = %.loopexit.i.i
  %i.rz = add nsw i32 %i.ie, -4
  %i.sa = icmp sgt i32 %i.ie, 8
  br i1 %i.sa, label %.preheader.lr.ph.i.i.i, label %_calcRadiusMono.exit.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.av
  %i.sb = icmp sgt i32 %i.hy, 9
  %i.sc = shl nuw nsw i32 %i.hy, 1
  %i.sd = zext nneg i32 %i.sc to i64              ; 2 uses
  %i.se = xor i32 %i.hy, -1
  %i.sf = sext i32 %i.se to i64                   ; 2 uses
  %i.sg = sub i32 1, %i.hy
  %i.sh = sext i32 %i.sg to i64                   ; 2 uses
  br i1 %i.sb, label %.preheader.us.preheader.i.i.i, label %_calcRadiusMono.exit.i.i

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader.lr.ph.i.i.i
  %i.si = add nsw i32 %i.hy, -4
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = zext nneg i32 %i.hy to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.rz to i64
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.us.preheader.i.i.i
  %indvars.iv212.i.i.i = phi i64 [ 4, %.preheader.us.preheader.i.i.i ], [ %indvars.iv.next213.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %.0152206.us.i.i.i = phi float [ 1.000000e+00, %.preheader.us.preheader.i.i.i ], [ %.10.us.i.i.i, %._crit_edge.us.i.i.i ]
  %i.sl = mul nuw nsw i64 %indvars.iv212.i.i.i, %i.sk
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.sl
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bi, %.preheader.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 5, %.preheader.us.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bi ] ; 2 uses
  %.1153204.us.i.i.i = phi float [ %.0152206.us.i.i.i, %.preheader.us.i.i.i ], [ %.10.us.i.i.i, %bb.bi ] ; 5 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %indvars.iv.i.i.i ; 10 uses
  %i.so = load float, ptr %i.sn, align 4, !tbaa !12 ; 15 uses
  %i.sp = fcmp reassoc nsz arcp contract afn ogt float %i.so, 5.000000e-03
  br i1 %i.sp, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %bb.aw
  %i.sq = getelementptr [4 x i8], ptr %i.sn, i64 %i.ij ; 2 uses
  %i.sr = getelementptr i8, ptr %i.sq, i64 -4
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !12 ; 5 uses
  %i.st = getelementptr i8, ptr %i.sq, i64 4
  %i.su = load float, ptr %i.st, align 4, !tbaa !12 ; 9 uses
  %i.sv = fcmp reassoc nsz arcp contract afn ogt float %i.so, %i.ss
  %i.sw = select reassoc nsz arcp contract afn i1 %i.sv, float %i.so, float %i.ss ; 4 uses
  %i.sx = fcmp reassoc nsz arcp contract afn ogt float %i.ss, 5.000000e-03
  %i.sy = fcmp reassoc nsz arcp contract afn ogt float %i.sw, f0x3C23D70A
  %or.cond.us.i.i.i = and i1 %i.sx, %i.sy
  br i1 %or.cond.us.i.i.i, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.sz = fcmp reassoc nsz arcp contract afn olt float %i.so, %i.ss
  %i.ta = select reassoc nsz arcp contract afn i1 %i.sz, float %i.so, float %i.ss ; 2 uses
  %i.tb = fmul reassoc nsz arcp contract afn float %i.ta, %.1153204.us.i.i.i
  %i.tc = fcmp reassoc nsz arcp contract afn ogt float %i.sw, %i.tb
  br i1 %i.tc, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.td = fcmp reassoc nsz arcp contract afn oeq float %i.sw, %i.so
  br i1 %i.td, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.te = getelementptr inbounds i8, ptr %i.sn, i64 -8
  %i.tf = load float, ptr %i.te, align 4, !tbaa !12 ; 2 uses
  %i.tg = fcmp reassoc nsz arcp contract afn ogt float %i.tf, %i.so
  %.183.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tg, float %i.tf, float %i.so ; 3 uses
  %i.th = getelementptr [4 x i8], ptr %i.sn, i64 %i.sd ; 2 uses
  %i.ti = getelementptr i8, ptr %i.th, i64 -8
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !12 ; 3 uses
  %i.tk = fcmp reassoc nsz arcp contract afn ogt float %.183.us.i.i.i, %i.tj
  %i.tl = load float, ptr %i.th, align 4, !tbaa !12 ; 4 uses
  br i1 %i.tk, label %bb.bb, label %.thread.us.i.i.i

.thread.us.i.i.i:                                 ; preds = %bb.ba
  %i.tm = fcmp reassoc nsz arcp contract afn ogt float %i.tj, %i.tl
  %spec.select200.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tm, float %i.tj, float %i.tl
  br label %.thread196.us.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.tn = fcmp reassoc nsz arcp contract afn ogt float %.183.us.i.i.i, %i.tl
  %spec.select199.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tn, float %.183.us.i.i.i, float %i.tl
  br label %.thread196.us.i.i.i

bb.bc:                                            ; preds = %bb.az
  %i.to = getelementptr inbounds [4 x i8], ptr %i.sn, i64 %i.sf
  %i.tp = load float, ptr %i.to, align 4, !tbaa !12 ; 2 uses
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.sn, i64 %i.sh
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !12 ; 2 uses
  %i.ts = fcmp reassoc nsz arcp contract afn ogt float %i.tp, %i.tr
  %..us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ts, float %i.tp, float %i.tr ; 2 uses
  %i.tt = fcmp reassoc nsz arcp contract afn ogt float %..us.i.i.i, %i.su
  %spec.select.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tt, float %..us.i.i.i, float %i.su
  br label %.thread196.us.i.i.i

.thread196.us.i.i.i:                              ; preds = %bb.bc, %bb.bb, %.thread.us.i.i.i
  %.not.in.us.i.i.i = phi float [ %spec.select.us.i.i.i, %bb.bc ], [ %spec.select199.us.i.i.i, %bb.bb ], [ %spec.select200.us.i.i.i, %.thread.us.i.i.i ]
  %.not.us.i.i.i = fcmp ult float %.not.in.us.i.i.i, f0x3F666666
  %i.tu = fdiv reassoc nsz arcp contract afn float %i.sw, %i.ta
  %spec.select188.us.i.i.i = select nsz i1 %.not.us.i.i.i, float %i.tu, float %.1153204.us.i.i.i
  br label %bb.bd

bb.bd:                                            ; preds = %.thread196.us.i.i.i, %bb.ay, %bb.ax
  %.4.us.i.i.i = phi nsz float [ %.1153204.us.i.i.i, %bb.ax ], [ %spec.select188.us.i.i.i, %.thread196.us.i.i.i ], [ %.1153204.us.i.i.i, %bb.ay ] ; 5 uses
  %i.tv = fcmp reassoc nsz arcp contract afn ogt float %i.so, %i.su
  %i.tw = select reassoc nsz arcp contract afn i1 %i.tv, float %i.so, float %i.su ; 4 uses
  %i.tx = fcmp reassoc nsz arcp contract afn ogt float %i.su, 5.000000e-03
  %i.ty = fcmp reassoc nsz arcp contract afn ogt float %i.tw, f0x3C23D70A
  %or.cond4.us.i.i.i = select i1 %i.tx, i1 %i.ty, i1 false
  br i1 %or.cond4.us.i.i.i, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.tz = fcmp reassoc nsz arcp contract afn olt float %i.so, %i.su
  %i.ua = select reassoc nsz arcp contract afn i1 %i.tz, float %i.so, float %i.su ; 2 uses
  %i.ub = fmul reassoc nsz arcp contract afn float %.4.us.i.i.i, %i.ua
  %i.uc = fcmp reassoc nsz arcp contract afn ogt float %i.tw, %i.ub
  br i1 %i.uc, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.ud = fcmp reassoc nsz arcp contract afn oeq float %i.tw, %i.so
  br i1 %i.ud, label %bb.bg, label %.thread198.us.i.i.i

.thread198.us.i.i.i:                              ; preds = %bb.bf
  %i.ue = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !12 ; 2 uses
  %i.ug = fcmp reassoc nsz arcp contract afn ogt float %i.so, %i.uf
  %.191.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ug, float %i.so, float %i.uf ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.sd ; 2 uses
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !12 ; 2 uses
  %i.uj = fcmp reassoc nsz arcp contract afn ogt float %.191.us.i.i.i, %i.ui
  %i.uk = getelementptr i8, ptr %i.uh, i64 8
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !12 ; 2 uses
  %.191.us..i.i.i = select i1 %i.uj, float %.191.us.i.i.i, float %i.ui ; 2 uses
  %i.um = fcmp reassoc nsz arcp contract afn ogt float %.191.us..i.i.i, %i.ul
  %spec.select202.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.um, float %.191.us..i.i.i, float %i.ul
  %i.un = fcmp reassoc nsz arcp contract afn ult float %spec.select202.us.i.i.i, f0x3F666666
  br i1 %i.un, label %bb.bh, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.sn, i64 %i.sf
  %i.up = load float, ptr %i.uo, align 4, !tbaa !12 ; 2 uses
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.sn, i64 %i.sh
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !12 ; 2 uses
  %i.us = fcmp reassoc nsz arcp contract afn ogt float %i.up, %i.ur
  %.189.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.us, float %i.up, float %i.ur ; 2 uses
  %i.ut = fcmp reassoc nsz arcp contract afn ogt float %.189.us.i.i.i, %i.su
  %spec.select201.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ut, float %.189.us.i.i.i, float %i.su
  %i.uu = fcmp reassoc nsz arcp contract afn ult float %spec.select201.us.i.i.i, f0x3F666666
  br i1 %i.uu, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %.thread198.us.i.i.i
  %i.uv = fdiv reassoc nsz arcp contract afn float %i.tw, %i.ua
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %.thread198.us.i.i.i, %bb.be, %bb.bd, %bb.aw
  %.10.us.i.i.i = phi nsz float [ %.1153204.us.i.i.i, %bb.aw ], [ %.4.us.i.i.i, %bb.bd ], [ %.4.us.i.i.i, %bb.bg ], [ %.4.us.i.i.i, %.thread198.us.i.i.i ], [ %i.uv, %bb.bh ], [ %.4.us.i.i.i, %bb.be ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.uw = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.sj
  br i1 %i.uw, label %bb.aw, label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %bb.bi
  %indvars.iv.next213.i.i.i = add nuw nsw i64 %indvars.iv212.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next213.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge208.loopexit.i.i.i, label %.preheader.us.i.i.i

._crit_edge208.loopexit.i.i.i:                    ; preds = %._crit_edge.us.i.i.i
  %i.ux = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %.10.us.i.i.i)
  br label %_calcRadiusMono.exit.i.i

_calcRadiusMono.exit.i.i:                         ; preds = %._crit_edge208.loopexit.i.i.i, %.preheader.lr.ph.i.i.i, %bb.av
  %.0152.lcssa.i.i.i = phi float [ 0.000000e+00, %bb.av ], [ %i.ux, %._crit_edge208.loopexit.i.i.i ], [ 0.000000e+00, %.preheader.lr.ph.i.i.i ]
  %i.uy = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.0152.lcssa.i.i.i
  %i.uz = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.uy)
  br label %bb.fg

bb.bj:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %7 = and i32 %.fr1070, 3
  store i32 %7, ptr %6, align 4, !tbaa !15
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %9 = lshr i32 %.fr1070, 4
  %10 = and i32 %9, 3
  store i32 %10, ptr %8, align 4, !tbaa !15
  %i.va = icmp sgt i32 %i.ie, 8
  br i1 %i.va, label %.lr.ph212.i.i.i, label %_calcRadiusBayer.exit.i.i

.lr.ph212.i.i.i:                                  ; preds = %bb.bj
  %i.vb = add nsw <2 x i32> %i.hx, splat (i32 -4) ; 2 uses
  %i.vc = add nsw i32 %i.hy, -4
  %i.vd = shl nsw i32 %i.hy, 1
  %i.ve = sext i32 %i.vd to i64                   ; 2 uses
  %i.vf = xor i32 %i.hy, -1
  %i.vg = sext i32 %i.vf to i64                   ; 2 uses
  %i.vh = sub i32 1, %i.hy
  %i.vi = sext i32 %i.vh to i64                   ; 2 uses
  %i.vj = extractelement <2 x i32> %i.vb, i64 1
  %i.vk = extractelement <2 x i32> %i.vb, i64 0
  %i.vl = sext i32 %i.vk to i64
  %i.vm = zext i32 %i.vj to i64
  br label %bb.bk

._crit_edge213.loopexit.i.i.i:                    ; preds = %._crit_edge.i.i.i
  %i.vn = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %.1156.lcssa.i.i.i)
  br label %_calcRadiusBayer.exit.i.i

bb.bk:                                            ; preds = %._crit_edge.i.i.i, %.lr.ph212.i.i.i
  %indvars.iv216.i.i.i = phi i64 [ 4, %.lr.ph212.i.i.i ], [ %indvars.iv.next217.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.0155209.i.i.i = phi float [ 1.000000e+00, %.lr.ph212.i.i.i ], [ %.1156.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %11 = and i64 %indvars.iv216.i.i.i, 1
  %12 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !15
  %i.vo = and i32 %13, 1
  %i.vp = add nuw nsw i32 %i.vo, 5                ; 2 uses
  %i.vq = icmp slt i32 %i.vp, %i.vc
  br i1 %i.vq, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bk
  %i.vr = mul nsw i64 %indvars.iv216.i.i.i, %i.ij
  %i.vs = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.vr
  %i.vt = zext nneg i32 %i.vp to i64
  br label %bb.bl

._crit_edge.i.i.i:                                ; preds = %bb.bx, %bb.bk
  %.1156.lcssa.i.i.i = phi float [ %.0155209.i.i.i, %bb.bk ], [ %.10.i.i.i, %bb.bx ] ; 2 uses
  %indvars.iv.next217.i.i.i = add nuw nsw i64 %indvars.iv216.i.i.i, 1 ; 2 uses
  %exitcond.not.i164.i.i = icmp eq i64 %indvars.iv.next217.i.i.i, %i.vm
  br i1 %exitcond.not.i164.i.i, label %._crit_edge213.loopexit.i.i.i, label %bb.bk

bb.bl:                                            ; preds = %bb.bx, %.lr.ph.i.i.i
  %indvars.iv.i165.i.i = phi i64 [ %i.vt, %.lr.ph.i.i.i ], [ %indvars.iv.next.i166.i.i, %bb.bx ] ; 2 uses
  %.1156207.i.i.i = phi float [ %.0155209.i.i.i, %.lr.ph.i.i.i ], [ %.10.i.i.i, %bb.bx ] ; 5 uses
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv.i165.i.i ; 10 uses
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !12 ; 15 uses
  %i.vw = fcmp reassoc nsz arcp contract afn ogt float %i.vv, 5.000000e-03
  br i1 %i.vw, label %bb.bm, label %bb.bx

bb.bm:                                            ; preds = %bb.bl
  %i.vx = getelementptr [4 x i8], ptr %i.vu, i64 %i.ij ; 2 uses
  %i.vy = getelementptr i8, ptr %i.vx, i64 -4
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !12 ; 5 uses
  %i.wa = getelementptr i8, ptr %i.vx, i64 4
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !12 ; 9 uses
  %i.wc = fcmp reassoc nsz arcp contract afn ogt float %i.vv, %i.vz
  %i.wd = select reassoc nsz arcp contract afn i1 %i.wc, float %i.vv, float %i.vz ; 4 uses
  %i.we = fcmp reassoc nsz arcp contract afn ogt float %i.vz, 5.000000e-03
  %i.wf = fcmp reassoc nsz arcp contract afn ogt float %i.wd, f0x3C23D70A
  %or.cond.i.i.i = and i1 %i.we, %i.wf
  br i1 %or.cond.i.i.i, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  %i.wg = fcmp reassoc nsz arcp contract afn olt float %i.vv, %i.vz
  %i.wh = select reassoc nsz arcp contract afn i1 %i.wg, float %i.vv, float %i.vz ; 2 uses
  %i.wi = fmul reassoc nsz arcp contract afn float %i.wh, %.1156207.i.i.i
  %i.wj = fcmp reassoc nsz arcp contract afn ogt float %i.wd, %i.wi
  br i1 %i.wj, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  %i.wk = fcmp reassoc nsz arcp contract afn oeq float %i.wd, %i.vv
  br i1 %i.wk, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.wl = getelementptr inbounds [4 x i8], ptr %i.vu, i64 %i.vg
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !12 ; 2 uses
  %i.wn = getelementptr inbounds [4 x i8], ptr %i.vu, i64 %i.vi
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !12 ; 2 uses
  %i.wp = fcmp reassoc nsz arcp contract afn ogt float %i.wm, %i.wo
  %..i.i.i = select reassoc nsz arcp contract afn i1 %i.wp, float %i.wm, float %i.wo ; 2 uses
  %i.wq = fcmp reassoc nsz arcp contract afn ogt float %..i.i.i, %i.wb
  %spec.select.i.i.i = select reassoc nsz arcp contract afn i1 %i.wq, float %..i.i.i, float %i.wb
  br label %.thread199.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.wr = getelementptr inbounds i8, ptr %i.vu, i64 -8
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !12 ; 2 uses
  %i.wt = fcmp reassoc nsz arcp contract afn ogt float %i.ws, %i.vv
  %.186.i.i.i = select reassoc nsz arcp contract afn i1 %i.wt, float %i.ws, float %i.vv ; 3 uses
  %i.wu = getelementptr [4 x i8], ptr %i.vu, i64 %i.ve ; 2 uses
  %i.wv = getelementptr i8, ptr %i.wu, i64 -8
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !12 ; 3 uses
  %i.wx = fcmp reassoc nsz arcp contract afn ogt float %.186.i.i.i, %i.ww
  %i.wy = load float, ptr %i.wu, align 4, !tbaa !12 ; 4 uses
  br i1 %i.wx, label %bb.br, label %.thread.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.wz = fcmp reassoc nsz arcp contract afn ogt float %.186.i.i.i, %i.wy
  %spec.select202.i.i.i = select reassoc nsz arcp contract afn i1 %i.wz, float %.186.i.i.i, float %i.wy
  br label %.thread199.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bq
  %i.xa = fcmp reassoc nsz arcp contract afn ogt float %i.ww, %i.wy
  %spec.select203.i.i.i = select reassoc nsz arcp contract afn i1 %i.xa, float %i.ww, float %i.wy
  br label %.thread199.i.i.i

.thread199.i.i.i:                                 ; preds = %.thread.i.i.i, %bb.br, %bb.bp
  %.not.in.i.i.i = phi float [ %spec.select.i.i.i, %bb.bp ], [ %spec.select202.i.i.i, %bb.br ], [ %spec.select203.i.i.i, %.thread.i.i.i ]
  %.not.i.i.i = fcmp ult float %.not.in.i.i.i, f0x3F666666
  %i.xb = fdiv reassoc nsz arcp contract afn float %i.wd, %i.wh
  %spec.select191.i.i.i = select nsz i1 %.not.i.i.i, float %i.xb, float %.1156207.i.i.i
  br label %bb.bs

bb.bs:                                            ; preds = %.thread199.i.i.i, %bb.bn, %bb.bm
  %.4.i.i.i = phi nsz float [ %.1156207.i.i.i, %bb.bm ], [ %spec.select191.i.i.i, %.thread199.i.i.i ], [ %.1156207.i.i.i, %bb.bn ] ; 5 uses
  %i.xc = fcmp reassoc nsz arcp contract afn ogt float %i.vv, %i.wb
  %i.xd = select reassoc nsz arcp contract afn i1 %i.xc, float %i.vv, float %i.wb ; 4 uses
  %i.xe = fcmp reassoc nsz arcp contract afn ogt float %i.wb, 5.000000e-03
  %i.xf = fcmp reassoc nsz arcp contract afn ogt float %i.xd, f0x3C23D70A
  %or.cond4.i.i.i = select i1 %i.xe, i1 %i.xf, i1 false
  br i1 %or.cond4.i.i.i, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.xg = fcmp reassoc nsz arcp contract afn olt float %i.vv, %i.wb
  %i.xh = select reassoc nsz arcp contract afn i1 %i.xg, float %i.vv, float %i.wb ; 2 uses
  %i.xi = fmul reassoc nsz arcp contract afn float %.4.i.i.i, %i.xh
  %i.xj = fcmp reassoc nsz arcp contract afn ogt float %i.xd, %i.xi
  br i1 %i.xj, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.xk = fcmp reassoc nsz arcp contract afn oeq float %i.xd, %i.vv
  br i1 %i.xk, label %bb.bv, label %.thread201.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.vu, i64 %i.vg
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !12 ; 2 uses
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.vu, i64 %i.vi
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !12 ; 2 uses
  %i.xp = fcmp reassoc nsz arcp contract afn ogt float %i.xm, %i.xo
  %.192.i.i.i = select reassoc nsz arcp contract afn i1 %i.xp, float %i.xm, float %i.xo ; 2 uses
  %i.xq = fcmp reassoc nsz arcp contract afn ogt float %.192.i.i.i, %i.wb
  %spec.select204.i.i.i = select reassoc nsz arcp contract afn i1 %i.xq, float %.192.i.i.i, float %i.wb
  %i.xr = fcmp reassoc nsz arcp contract afn ult float %spec.select204.i.i.i, f0x3F666666
  br i1 %i.xr, label %bb.bw, label %bb.bx

.thread201.i.i.i:                                 ; preds = %bb.bu
  %i.xs = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !12 ; 2 uses
  %i.xu = fcmp reassoc nsz arcp contract afn ogt float %i.vv, %i.xt
  %.194.i.i.i = select reassoc nsz arcp contract afn i1 %i.xu, float %i.vv, float %i.xt ; 2 uses
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.vu, i64 %i.ve ; 2 uses
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !12 ; 2 uses
  %i.xx = fcmp reassoc nsz arcp contract afn ogt float %.194.i.i.i, %i.xw
  %i.xy = getelementptr i8, ptr %i.xv, i64 8
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !12 ; 2 uses
  %.194..i.i.i = select i1 %i.xx, float %.194.i.i.i, float %i.xw ; 2 uses
  %i.ya = fcmp reassoc nsz arcp contract afn ogt float %.194..i.i.i, %i.xz
  %spec.select206.i.i.i = select reassoc nsz arcp contract afn i1 %i.ya, float %.194..i.i.i, float %i.xz
  %i.yb = fcmp reassoc nsz arcp contract afn ult float %spec.select206.i.i.i, f0x3F666666
  br i1 %i.yb, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.thread201.i.i.i, %bb.bv
  %i.yc = fdiv reassoc nsz arcp contract afn float %i.xd, %i.xh
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.thread201.i.i.i, %bb.bv, %bb.bt, %bb.bs, %bb.bl
  %.10.i.i.i = phi nsz float [ %.1156207.i.i.i, %bb.bl ], [ %.4.i.i.i, %bb.bs ], [ %.4.i.i.i, %bb.bv ], [ %.4.i.i.i, %.thread201.i.i.i ], [ %i.yc, %bb.bw ], [ %.4.i.i.i, %bb.bt ] ; 2 uses
  %indvars.iv.next.i166.i.i = add nuw nsw i64 %indvars.iv.i165.i.i, 2 ; 2 uses
  %i.yd = icmp slt i64 %indvars.iv.next.i166.i.i, %i.vl
  br i1 %i.yd, label %bb.bl, label %._crit_edge.i.i.i

_calcRadiusBayer.exit.i.i:                        ; preds = %._crit_edge213.loopexit.i.i.i, %bb.bj
  %.0155.lcssa.i.i.i = phi float [ 0.000000e+00, %bb.bj ], [ %i.vn, %._crit_edge213.loopexit.i.i.i ]
  %i.ye = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.0155.lcssa.i.i.i
  %i.yf = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ye)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.fg

.preheader._crit_edge.i.i.i:                      ; preds = %.preheader.i.preheader.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 481
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !tbaa !133
  br label %bb.ca

bb.by:                                            ; preds = %.preheader.i.preheader.i.i
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 485
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !133 ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 481
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !133 ; 2 uses
  %.not317.i.i.i = icmp eq i8 %i.yh, %i.yj
  br i1 %.not317.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.yk = load i8, ptr %i.rw, align 2, !tbaa !133
  %.not318.i.i.i = icmp eq i8 %i.yk, 1
  %.not319.i.i.i = icmp eq i8 %i.yh, 1
  %or.cond345.i.i.i = or i1 %.not319.i.i.i, %.not318.i.i.i
  br i1 %or.cond345.i.i.i, label %bb.ca, label %.critedge.i.i.i

bb.ca:                                            ; preds = %bb.bz, %bb.by, %.preheader._crit_edge.i.i.i
  %i.yl = phi i8 [ %.pre.i.i.i, %.preheader._crit_edge.i.i.i ], [ %i.yj, %bb.bz ], [ %i.yh, %bb.by ] ; 3 uses
  %i.ym = icmp eq i8 %i.yl, 1                     ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 482
  %i.yo = load i8, ptr %i.yn, align 2, !tbaa !133 ; 4 uses
  br i1 %i.ym, label %bb.cb, label %._crit_edge.i167.i.i

bb.cb:                                            ; preds = %bb.ca
  %.not317.1.i.i.i = icmp eq i8 %i.rx, %i.yo
  br i1 %.not317.1.i.i.i, label %._crit_edge.i167.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.yp = getelementptr inbounds nuw i8, ptr %1, i64 511
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !133
  %.not318.1.i.i.i = icmp eq i8 %i.yq, 1
  %or.cond345.1.i.i.i = or i1 %i.ry, %.not318.1.i.i.i
  br i1 %or.cond345.1.i.i.i, label %._crit_edge.i167.i.i, label %.critedge.i.i.i

._crit_edge.i167.i.i:                             ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.yr = phi i8 [ %i.rx, %bb.cb ], [ %i.yo, %bb.cc ], [ %i.yo, %bb.ca ] ; 3 uses
  %i.ys = icmp eq i8 %i.yr, 1                     ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 483
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !133 ; 4 uses
  br i1 %i.ys, label %bb.cd, label %._crit_edge372.i.i.i

bb.cd:                                            ; preds = %._crit_edge.i167.i.i
  %.not317.2.i.i.i = icmp eq i8 %i.yl, %i.yu
  br i1 %.not317.2.i.i.i, label %._crit_edge372.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.yw = load i8, ptr %i.yv, align 16, !tbaa !133
  %.not318.2.i.i.i = icmp eq i8 %i.yw, 1
  %or.cond345.2.i.i.i = or i1 %i.ym, %.not318.2.i.i.i
  br i1 %or.cond345.2.i.i.i, label %._crit_edge372.i.i.i, label %.critedge.i.i.i

._crit_edge372.i.i.i:                             ; preds = %bb.ce, %bb.cd, %._crit_edge.i167.i.i
  %i.yx = phi i8 [ %i.yl, %bb.cd ], [ %i.yu, %bb.ce ], [ %i.yu, %._crit_edge.i167.i.i ] ; 3 uses
  %i.yy = icmp eq i8 %i.yx, 1                     ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %1, i64 484
  %i.za = load i8, ptr %i.yz, align 4, !tbaa !133 ; 4 uses
  br i1 %i.yy, label %bb.cf, label %._crit_edge375.i.i.i

bb.cf:                                            ; preds = %._crit_edge372.i.i.i
  %.not317.3.i.i.i = icmp eq i8 %i.yr, %i.za
  br i1 %.not317.3.i.i.i, label %._crit_edge375.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 513
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !133
  %.not318.3.i.i.i = icmp eq i8 %i.zc, 1
  %or.cond345.3.i.i.i = or i1 %i.ys, %.not318.3.i.i.i
  br i1 %or.cond345.3.i.i.i, label %._crit_edge375.i.i.i, label %.critedge.i.i.i

._crit_edge375.i.i.i:                             ; preds = %bb.cg, %bb.cf, %._crit_edge372.i.i.i
  %i.zd = phi i8 [ %i.yr, %bb.cf ], [ %i.za, %bb.cg ], [ %i.za, %._crit_edge372.i.i.i ] ; 2 uses
  %i.ze = icmp eq i8 %i.zd, 1                     ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %1, i64 485
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !133 ; 4 uses
  br i1 %i.ze, label %bb.ch, label %._crit_edge378.i.i.i

bb.ch:                                            ; preds = %._crit_edge375.i.i.i
  %.not317.4.i.i.i = icmp eq i8 %i.yx, %i.zg
  br i1 %.not317.4.i.i.i, label %._crit_edge378.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 514
  %i.zi = load i8, ptr %i.zh, align 2, !tbaa !133
  %.not318.4.i.i.i = icmp eq i8 %i.zi, 1
  %or.cond345.4.i.i.i = or i1 %i.yy, %.not318.4.i.i.i
  br i1 %or.cond345.4.i.i.i, label %._crit_edge378.i.i.i, label %.critedge.i.i.i

._crit_edge378.i.i.i:                             ; preds = %bb.ci, %bb.ch, %._crit_edge375.i.i.i
  %i.zj = phi i8 [ %i.yx, %bb.ch ], [ %i.zg, %bb.ci ], [ %i.zg, %._crit_edge375.i.i.i ]
  %i.zk = icmp ne i8 %i.zj, 1
  %.not317.5.i.i.i = icmp eq i8 %i.zd, %i.rx
  %or.cond.i168.i.i = or i1 %.not317.5.i.i.i, %i.zk
  br i1 %or.cond.i168.i.i, label %.critedge2.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %._crit_edge378.i.i.i
  %i.zl = getelementptr inbounds nuw i8, ptr %1, i64 515
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !133
  %.not318.5.i.i.i = icmp eq i8 %i.zm, 1
  %or.cond345.5.i.i.i = or i1 %i.ze, %.not318.5.i.i.i
  br i1 %or.cond345.5.i.i.i, label %.critedge2.i.i.i, label %.critedge.i.i.i

.critedge2.i.i.i:                                 ; preds = %bb.cj, %._crit_edge378.i.i.i
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 486
  %i.zo = load i8, ptr %i.zn, align 2, !tbaa !133 ; 4 uses
  %i.zp = icmp eq i8 %i.zo, 1                     ; 3 uses
  br i1 %i.zp, label %bb.ck, label %.preheader._crit_edge.i.1.i.i

.preheader._crit_edge.i.1.i.i:                    ; preds = %.critedge2.i.i.i
  %.phi.trans.insert.i.1.i.i = getelementptr inbounds nuw i8, ptr %1, i64 487
  %.pre.i.1.i.i = load i8, ptr %.phi.trans.insert.i.1.i.i, align 1, !tbaa !133
  br label %bb.cm

bb.ck:                                            ; preds = %.critedge2.i.i.i
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 491
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !133 ; 3 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 487
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !133 ; 2 uses
  %.not317.i.1.i.i = icmp eq i8 %i.zr, %i.zt
  br i1 %.not317.i.1.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.not319.i.1.i.i = icmp eq i8 %i.zr, 1
  %or.cond345.i.1.i.i = or i1 %i.ry, %.not319.i.1.i.i
  br i1 %or.cond345.i.1.i.i, label %bb.cm, label %.critedge.i.i.i

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %.preheader._crit_edge.i.1.i.i
  %i.zu = phi i8 [ %.pre.i.1.i.i, %.preheader._crit_edge.i.1.i.i ], [ %i.zt, %bb.cl ], [ %i.zr, %bb.ck ] ; 3 uses
  %i.zv = icmp eq i8 %i.zu, 1                     ; 3 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.zx = load i8, ptr %i.zw, align 8, !tbaa !133 ; 4 uses
  br i1 %i.zv, label %bb.cn, label %._crit_edge.i167.1.i.i

bb.cn:                                            ; preds = %bb.cm
  %.not317.1.i.1.i.i = icmp eq i8 %i.zo, %i.zx
  br i1 %.not317.1.i.1.i.i, label %._crit_edge.i167.1.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %or.cond345.1.i.1.i.i = or i1 %i.ym, %i.zp
  br i1 %or.cond345.1.i.1.i.i, label %._crit_edge.i167.1.i.i, label %.critedge.i.i.i

._crit_edge.i167.1.i.i:                           ; preds = %bb.co, %bb.cn, %bb.cm
  %i.zy = phi i8 [ %i.zo, %bb.cn ], [ %i.zx, %bb.co ], [ %i.zx, %bb.cm ] ; 3 uses
  %i.zz = icmp eq i8 %i.zy, 1                     ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 489
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !133 ; 4 uses
  br i1 %i.zz, label %bb.cp, label %._crit_edge372.i.1.i.i

bb.cp:                                            ; preds = %._crit_edge.i167.1.i.i
  %.not317.2.i.1.i.i = icmp eq i8 %i.zu, %i.aab
  br i1 %.not317.2.i.1.i.i, label %._crit_edge372.i.1.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.not318.2.i.1.i.i = icmp eq i8 %i.yo, 1
  %or.cond345.2.i.1.i.i = or i1 %.not318.2.i.1.i.i, %i.zv
  br i1 %or.cond345.2.i.1.i.i, label %._crit_edge372.i.1.i.i, label %.critedge.i.i.i

._crit_edge372.i.1.i.i:                           ; preds = %bb.cq, %bb.cp, %._crit_edge.i167.1.i.i
  %i.aac = phi i8 [ %i.zu, %bb.cp ], [ %i.aab, %bb.cq ], [ %i.aab, %._crit_edge.i167.1.i.i ] ; 2 uses
  %i.aad = icmp eq i8 %i.aac, 1                   ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 490
  %i.aaf = load i8, ptr %i.aae, align 2, !tbaa !133 ; 4 uses
  br i1 %i.aad, label %bb.cr, label %._crit_edge375.i.1.i.i

bb.cr:                                            ; preds = %._crit_edge372.i.1.i.i
  %.not317.3.i.1.i.i = icmp eq i8 %i.zy, %i.aaf
  br i1 %.not317.3.i.1.i.i, label %._crit_edge375.i.1.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.not318.3.i.1.i.i = icmp eq i8 %i.yu, 1
  %or.cond345.3.i.1.i.i = or i1 %.not318.3.i.1.i.i, %i.zz
  br i1 %or.cond345.3.i.1.i.i, label %._crit_edge375.i.1.i.i, label %.critedge.i.i.i

._crit_edge375.i.1.i.i:                           ; preds = %bb.cs, %bb.cr, %._crit_edge372.i.1.i.i
  %i.aag = phi i8 [ %i.zy, %bb.cr ], [ %i.aaf, %bb.cs ], [ %i.aaf, %._crit_edge372.i.1.i.i ] ; 2 uses
  %i.aah = icmp eq i8 %i.aag, 1
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 491
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !133 ; 3 uses
  br i1 %i.aah, label %bb.ct, label %._crit_edge378.i.1.i.i

bb.ct:                                            ; preds = %._crit_edge375.i.1.i.i
  %.not317.4.i.1.i.i = icmp eq i8 %i.aac, %i.aaj
  %.not318.4.i.1.i.i = icmp eq i8 %i.za, 1
  %or.cond345.4.i.1.i.i = or i1 %.not318.4.i.1.i.i, %i.aad
  %or.cond26.i = select i1 %.not317.4.i.1.i.i, i1 true, i1 %or.cond345.4.i.1.i.i
  br i1 %or.cond26.i, label %.critedge2.i.1.i.i, label %.critedge.i.i.i

._crit_edge378.i.1.i.i:                           ; preds = %._crit_edge375.i.1.i.i
  %i.aak = icmp ne i8 %i.aaj, 1
  %.not317.5.i.1.i.i = icmp eq i8 %i.aag, %i.zo
  %or.cond.i168.1.i.i = or i1 %.not317.5.i.1.i.i, %i.aak
  %.not318.5.i.1.i.i = icmp eq i8 %i.zg, 1
  %or.cond337.i.i = select i1 %or.cond.i168.1.i.i, i1 true, i1 %.not318.5.i.1.i.i
  br i1 %or.cond337.i.i, label %.critedge2.i.1.i.i, label %.critedge.i.i.i
end_hunk_1
