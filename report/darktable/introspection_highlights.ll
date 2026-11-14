Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 97
begin_hunk_0_@dt_segmentation_init_struct:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2, ptr %i.ar, align 8, !tbaa !20
  store i32 0, ptr %i.ae, align 4, !tbaa !15
  store i32 0, ptr %i.ad, align 4, !tbaa !15
  store i32 0, ptr %i.ac, align 4, !tbaa !15
  store i32 0, ptr %i.ab, align 4, !tbaa !15
  store i32 0, ptr %i.aa, align 4, !tbaa !15
  store float 0.000000e+00, ptr %i.x, align 64, !tbaa !12
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !30  ; 2 uses
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !12
  %i.at = load i32, ptr %i.ap, align 8, !tbaa !22
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %_clear_segment_slot.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 0, ptr %i.av, align 4, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 0, ptr %i.aw, align 4, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %i.ax, align 4, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 0, ptr %i.ay, align 4, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 0, ptr %i.az, align 4, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store float 0.000000e+00, ptr %i.ba, align 4, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store float 0.000000e+00, ptr %i.bb, align 4, !tbaa !12
  br label %_clear_segment_slot.exit

_clear_segment_slot.exit:                         ; preds = %bb.j, %bb.i, %bb.h
  %.0 = phi i32 [ 1, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !38
  %i.e = fcmp reassoc nsz arcp contract afn une float %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @dt_interpolation_new(i32 noundef 3) #33
  tail call void @dt_interpolation_resample_roi_mask(ptr noundef %i.f, ptr noundef %3, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #3

declare void @dt_interpolation_resample_roi_mask(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @modify_roi_out(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !39
  %i.a = load <2 x i32>, ptr %3, align 4, !tbaa !15
  %i.b = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.a, <2 x i32> zeroinitializer)
  store <2 x i32> %i.b, ptr %2, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !39
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !53
  %i.c = load i32, ptr %i.b, align 4, !tbaa !55
  %i.d = and i32 %i.c, -2
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.j = load i32, ptr %i.i, align 8, !tbaa !73
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !38
  %i.n = load <4 x i32>, ptr %3, align 4, !tbaa !15
  %i.o = sitofp reassoc nsz arcp contract afn <4 x i32> %i.n to <4 x float>
  %i.p = insertelement <4 x float> poison, float %i.m, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = fdiv reassoc nsz arcp contract afn <4 x float> %i.o, %i.q
  %i.s = fptosi <4 x float> %i.r to <4 x i32>
  store <4 x i32> %i.s, ptr %3, align 4, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %3, align 4, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load <2 x i32>, ptr %i.u, align 16, !tbaa !15
  store <2 x i32> %i.w, ptr %i.v, align 4, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) initializes((0, 28)) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !53  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.g = icmp eq i32 %i.f, 9
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.h, align 4, !tbaa !391
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %4, align 4, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !392
  store i32 0, ptr %i.i, align 4, !tbaa !393
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !394
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @dt_iop_piece_is_raster_mask_used(ptr noundef nonnull %1, i32 noundef 0) #33
  %.not48 = icmp eq i32 %i.n, 0
  br i1 %.not48, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load <2 x float>, ptr %4, align 4, !tbaa !12
  %i.p = fadd reassoc nsz arcp contract afn <2 x float> %i.o, splat (float 5.000000e-01)
  store <2 x float> %i.p, ptr %4, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.q = load i32, ptr %i.b, align 4, !tbaa !55
  %.fr = freeze i32 %i.q
  switch i32 %.fr, label %bb.i [
    i32 3, label %switch.early.test
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 1, label %bb.h
  ]

switch.early.test:                                ; preds = %bb.d
  switch i32 %i.f, label %bb.e [
    i32 9, label %bb.i
    i32 0, label %bb.i
  ]

bb.e:                                             ; preds = %switch.early.test
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.s = load float, ptr %i.r, align 8, !tbaa !76
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, 4.000000e+00
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !38
  %i.w = fdiv reassoc nsz arcp contract afn float %i.t, %i.v
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.w, float 1.000000e+00)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !77
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.aa to float
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.ab, %i.x
  %i.ad = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ac)
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ad)
  %i.af = fptosi float %i.ae to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.af, i32 1)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 12)
  %i.ah = shl nuw nsw i32 1, %i.ag
  %i.ai = load <2 x float>, ptr %4, align 4, !tbaa !12
  %i.aj = fadd reassoc nsz arcp contract afn <2 x float> %i.ai, <float 9.500000e+00, float 1.325000e+01>
  store <2 x float> %i.aj, ptr %4, align 4, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !78
  %i.am = sitofp reassoc nsz arcp contract afn i32 %i.al to float
  %i.an = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.am
  store float %i.an, ptr %i.j, align 4, !tbaa !395
  %i.ao = uitofp nneg i32 %i.ah to float
  %i.ap = fmul reassoc nnan nsz arcp contract afn float %i.ao, 3.750000e-01
  %i.aq = fptoui float %i.ap to i32
  store i32 %i.aq, ptr %i.i, align 4, !tbaa !393
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !79
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !78
  %i.av = mul nsw i32 %i.au, %i.as
  %i.aw = sdiv i32 %i.av, 4000
  %i.ax = mul nsw i32 %i.aw, 100
  store i32 %i.ax, ptr %i.k, align 4, !tbaa !392
  %i.ay = load float, ptr %4, align 4, !tbaa !396
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, 1.000000e+00
  store float %i.az, ptr %4, align 4, !tbaa !396
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.ba = load <2 x float>, ptr %4, align 4, !tbaa !12
  %i.bb = fadd reassoc nsz arcp contract afn <2 x float> %i.ba, splat (float 5.000000e-01)
  store <2 x float> %i.bb, ptr %4, align 4, !tbaa !12
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.bc = select i1 %i.g, i32 2, i32 1
  store i32 %i.bc, ptr %i.i, align 4, !tbaa !393
  br label %bb.i

bb.i:                                             ; preds = %switch.early.test, %switch.early.test, %bb.d, %bb.h, %bb.g, %bb.f, %bb.e
  ret void
}

declare i32 @dt_iop_piece_is_raster_mask_used(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #14

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 8 uses
  %i.i = alloca ptr, align 8                      ; 7 uses
  %6 = alloca %struct.dt_iop_roi_t, align 4       ; 8 uses
  %i.j = alloca [4 x float], align 16             ; 19 uses
  %i.k = alloca [4 x float], align 16             ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 516 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !80   ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !53  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !91  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 628 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !416
  %i.v = icmp eq i32 %i.u, 128
  br i1 %i.v, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not284 = icmp eq i32 %i.o, 0
  br i1 %.not284, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @dt_iop_clip_and_zoom_roi(ptr noundef %3, ptr noundef %2, ptr noundef %5, ptr noundef %4) #33
  br label %.loopexit380

bb.d:                                             ; preds = %bb.b
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 1, ptr noundef %4, ptr noundef %5) #33
  br label %.loopexit380

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr i8, ptr %i.m, i64 644      ; 2 uses
  %.val = load i32, ptr %i.w, align 4, !tbaa !92  ; 2 uses
  %i.x = and i32 %.val, 2
  %i.y = and i32 %.val, 256
  %.not = icmp ne i32 %i.y, 0
  %.pre = load i32, ptr %i.q, align 4, !tbaa !55  ; 2 uses
  %i.z = icmp eq i32 %.pre, 4
  %or.cond = select i1 %.not, i1 %i.z, i1 false
  %i.aa = select i1 %or.cond, i32 5, i32 %.pre    ; 4 uses
  %i.ab = icmp eq i32 %i.o, 0                     ; 2 uses
  %i.ac = icmp ne i32 %i.aa, 0                    ; 2 uses
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false     ; 2 uses
  br i1 %i.ad, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.ae = tail call i32 @dt_iop_piece_is_raster_mask_used(ptr noundef nonnull %1, i32 noundef 0) #33
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !79
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !78
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ah, 4
  %i.am = mul i64 %i.al, %i.ak
  %i.an = tail call ptr @dt_alloc_aligned(i64 noundef %i.am) #33 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.an, i64 64) ]
  %i.ao = tail call i32 @dt_iop_piece_is_raster_mask_used(ptr noundef nonnull %1, i32 noundef 0) #33
  %i.ap = icmp eq ptr %i.an, null
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @dt_iop_clip_and_zoom_roi(ptr noundef %3, ptr noundef %2, ptr noundef %5, ptr noundef nonnull %4) #33
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.m, ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull @.str.8) #33
  tail call void @dt_iop_piece_clear_raster(ptr noundef nonnull %1, ptr noundef null) #33
  br label %.loopexit380

bb.h:                                             ; preds = %.thread, %bb.f
  %i.aq = phi i32 [ %i.ae, %.thread ], [ %i.ao, %bb.f ] ; 2 uses
  %i.ar = phi ptr [ null, %.thread ], [ %i.an, %bb.f ] ; 9 uses
  %i.as = icmp ne ptr %i.s, null
  %i.at = icmp ne i32 %i.x, 0
  %or.cond3 = and i1 %i.as, %i.at                 ; 2 uses
  br i1 %or.cond3, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.av = load i32, ptr %i.au, align 8, !tbaa !94 ; 2 uses
  %.not276 = icmp eq i32 %i.av, 0
  br i1 %.not276, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 128, ptr %i.t, align 4, !tbaa !416
  %i.aw = icmp eq i32 %i.av, 4
  br i1 %i.aw, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %.val288 = load i32, ptr %i.q, align 4, !tbaa !55 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.q, i64 16
  %.val289 = load float, ptr %i.ax, align 4, !tbaa !95 ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @process_visualize(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.ar, ptr noundef %4, ptr noundef %4, i32 %.val288, float %.val289)
  tail call void @dt_iop_clip_and_zoom_roi(ptr noundef %3, ptr noundef %i.ar, ptr noundef %5, ptr noundef %4) #33
  tail call void @free(ptr noundef %i.ar) #33
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call fastcc void @process_visualize(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 %.val288, float %.val289)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @dt_iop_piece_clear_raster(ptr noundef nonnull %1, ptr noundef null) #33
  br label %.loopexit380

bb.o:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.val290 = load i32, ptr %i.w, align 4, !tbaa !92
  %i.ay = and i32 %.val290, 8
  %.not277 = icmp eq i32 %i.ay, 0
  br i1 %.not277, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 544
  %i.ba = load i32, ptr %i.az, align 16, !tbaa !417
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 548
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !418
  %i.bd = tail call i32 @dt_mipmap_cache_get_matching_size(i32 noundef %i.ba, i32 noundef %i.bc) #33
  %i.be = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.9) #33
  %i.bf = tail call i32 @dt_mipmap_cache_get_min_mip_from_pref(ptr noundef %i.be) #33
  %i.bg = icmp uge i32 %i.bd, %i.bf
  %i.bh = zext i1 %i.bg to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0269 = phi i32 [ %i.bh, %bb.p ], [ 1, %bb.o ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !95
  %i.bk = zext i32 %i.aa to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @highlights_clip_magics, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.bj ; 13 uses
  br i1 %i.ab, label %bb.r, label %bb.be

bb.r:                                             ; preds = %bb.q
  br i1 %i.ac, label %bb.s, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.r
  tail call fastcc void @process_clip(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, float noundef %i.bn)
  %.val291 = load ptr, ptr %i.l, align 8, !tbaa !56 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val291, i64 272
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %.val291, i64 276
end_hunk_0
begin_hunk_1_@_process_segmentation:bb.a
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv171.i
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !15 ; 2 uses
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %indvars.iv171.i
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !15 ; 2 uses
  %i.aaa = sub nsw i32 %i.zx, %i.zz
  %i.aab = icmp sgt i32 %i.aaa, 2
  br i1 %i.aab, label %bb.z, label %._crit_edge143.thread.i

bb.z:                                             ; preds = %bb.y
  %i.aac = load ptr, ptr %i.zm, align 16, !tbaa !26
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %indvars.iv171.i
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !15 ; 2 uses
  %i.aaf = load ptr, ptr %i.zn, align 8, !tbaa !27
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %indvars.iv171.i
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !15 ; 2 uses
  %i.aai = sub nsw i32 %i.aae, %i.aah
  %i.aaj = icmp sgt i32 %i.aai, 2
  br i1 %i.aaj, label %bb.aa, label %._crit_edge143.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.aak = load i32, ptr %i.zo, align 4, !tbaa !21 ; 4 uses
  %i.aal = add nsw i32 %i.aak, 2                  ; 2 uses
  %i.aam = add nsw i32 %i.zz, -2                  ; 2 uses
  %..i462 = tail call i32 @llvm.smax.i32(i32 %i.aal, i32 %i.aam) ; 2 uses
  %i.aan = load i32, ptr %i.zp, align 8, !tbaa !20
  %i.aao = sub nsw i32 %i.aan, %i.aak             ; 2 uses
  %i.aap = add nsw i32 %i.aao, -2
  %i.aaq = add nsw i32 %i.zx, 3
  %.128.i = tail call i32 @llvm.smin.i32(i32 %i.aap, i32 %i.aaq) ; 2 uses
  %i.aar = icmp slt i32 %..i462, %.128.i
  br i1 %i.aar, label %.lr.ph142.i, label %._crit_edge143.thread.i

.lr.ph142.i:                                      ; preds = %bb.aa
  %i.aas = add nsw i32 %i.aah, -2                 ; 2 uses
  %.129.i = tail call i32 @llvm.smax.i32(i32 %i.aal, i32 %i.aas) ; 2 uses
  %i.aat = add nsw i32 %i.aae, 3
  %i.aau = load i32, ptr %i.zq, align 4, !tbaa !19 ; 5 uses
  %reass.sub = sub i32 %i.aau, %i.aak
  %i.aav = add i32 %reass.sub, -2
  %.130.i = tail call i32 @llvm.smin.i32(i32 %i.aav, i32 %i.aat) ; 2 uses
  %i.aaw = icmp slt i32 %.129.i, %.130.i
  %i.aax = mul nsw i32 %i.aau, %i.aao
  %i.aay = shl nsw i32 %i.aau, 1
  %i.aaz = insertelement <2 x i32> poison, i32 %i.aau, i64 0
  %i.aba = shufflevector <2 x i32> %i.aaz, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.abb = shl nsw <8 x i32> %i.aba, <i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0> ; 2 uses
  %i.abc = xor <8 x i32> %i.abb, <i32 -1, i32 poison, i32 poison, i32 poison, i32 -1, i32 poison, i32 poison, i32 poison>
  %i.abd = sub <8 x i32> <i32 poison, i32 0, i32 1, i32 -2, i32 poison, i32 0, i32 1, i32 2>, %i.abb
  %i.abe = shufflevector <8 x i32> %i.abc, <8 x i32> %i.abd, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 4, i32 13, i32 14, i32 15>
  %i.abf = sext <8 x i32> %i.abe to <8 x i64>
  %i.abg = sext i32 %i.aau to i64                 ; 6 uses
  %i.abh = sext i32 %i.aay to i64
  %i.abi = sub nsw i64 0, %i.abg                  ; 2 uses
  br i1 %i.aaw, label %.lr.ph.us.preheader.i, label %._crit_edge143.thread.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph142.i
  %i.abj = sext i32 %i.aak to i64
  %i.abk = add nsw i64 %i.abj, 2                  ; 2 uses
  %i.abl = sext i32 %i.aas to i64
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.abk, i64 %i.abl) ; 2 uses
  %i.abm = trunc i64 %smax.i to i32
  %i.abn = sub i32 %i.abm, %.129.i
  %i.abo = add i32 %i.abn, %.130.i
  %i.abp = sext i32 %i.aam to i64
  %smax158.i = tail call i64 @llvm.smax.i64(i64 %i.abk, i64 %i.abp) ; 2 uses
  %i.abq = trunc i64 %smax158.i to i32
  %i.abr = sub i32 %i.abq, %..i462
  %i.abs = add i32 %i.abr, %.128.i
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv159.i = phi i64 [ %smax158.i, %.lr.ph.us.preheader.i ], [ %indvars.iv.next160.i, %._crit_edge.us.i ] ; 2 uses
  %.0108139.us.i = phi float [ 0.000000e+00, %.lr.ph.us.preheader.i ], [ %.3.us.i, %._crit_edge.us.i ]
  %.0110138.us.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %.3113.us.i, %._crit_edge.us.i ]
  %i.abt = mul nsw i64 %indvars.iv159.i, %i.abg
  br label %bb.ab

bb.ab:                                            ; preds = %_get_segment_id.exit.us.thread.i, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ %smax.i, %.lr.ph.us.i ], [ %indvars.iv.next.i, %_get_segment_id.exit.us.thread.i ] ; 2 uses
  %.1109135.us.i = phi float [ %.0108139.us.i, %.lr.ph.us.i ], [ %.3.us.i, %_get_segment_id.exit.us.thread.i ] ; 5 uses
  %.1111134.us.i = phi i64 [ %.0110138.us.i, %.lr.ph.us.i ], [ %.3113.us.i, %_get_segment_id.exit.us.thread.i ] ; 4 uses
  %i.abu = add nsw i64 %indvars.iv.i, %i.abt      ; 4 uses
  %i.abv = trunc nsw i64 %i.abu to i32
  %.not.i.us.i = icmp ugt i32 %i.aax, %i.abv
  br i1 %.not.i.us.i, label %_get_segment_id.exit.us.i, label %_get_segment_id.exit.us.thread.i

_get_segment_id.exit.us.i:                        ; preds = %bb.ab
  %i.abw = load ptr, ptr %i.yx, align 16, !tbaa !23
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.abw, i64 %i.abu
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !15 ; 2 uses
  %i.abz = and i32 %i.aby, 262143                 ; 3 uses
  %i.aca = icmp ult i32 %i.abz, %i.zb
  %i.acb = icmp samesign ugt i32 %i.abz, 1
  %or.cond.i.us.i = select i1 %i.aca, i1 %i.acb, i1 false
  %i.acc = zext nneg i32 %i.abz to i64
  %i.acd = icmp eq i64 %indvars.iv171.i, %i.acc
  %i.ace = and i1 %or.cond.i.us.i, %i.acd
  br i1 %i.ace, label %bb.ac, label %_get_segment_id.exit.us.thread.i

bb.ac:                                            ; preds = %_get_segment_id.exit.us.i
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %i.abu ; 9 uses
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !12 ; 3 uses
  %i.ach = fcmp reassoc nsz arcp contract afn olt float %i.acg, %i.yz
  br i1 %i.ach, label %bb.ad, label %_get_segment_id.exit.us.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.aci = getelementptr inbounds [4 x i8], ptr %i.acf, <8 x i64> %i.abf
  %i.acj = getelementptr inbounds i8, ptr %i.acf, i64 -8
  %i.ack = getelementptr i8, ptr %i.acf, i64 -4
  %i.acl = getelementptr i8, ptr %i.acf, i64 4
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !12 ; 2 uses
  %i.aco = getelementptr [4 x i8], ptr %i.acf, i64 %i.abg ; 5 uses
  %i.acp = getelementptr i8, ptr %i.aco, i64 -8
  %i.acq = getelementptr i8, ptr %i.aco, i64 -4
  %i.acr = load float, ptr %i.aco, align 4, !tbaa !12 ; 3 uses
  %i.acs = getelementptr i8, ptr %i.aco, i64 4
  %i.act = getelementptr i8, ptr %i.aco, i64 8
  %i.acu = getelementptr [4 x i8], ptr %i.acf, i64 %i.abh ; 3 uses
  %i.acv = getelementptr i8, ptr %i.acu, i64 -4
  %i.acw = getelementptr i8, ptr %i.acu, i64 4
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !12 ; 2 uses
  %i.acy = getelementptr [4 x i8], ptr %i.acf, i64 %i.abi ; 3 uses
  %i.acz = getelementptr i8, ptr %i.acy, i64 -4
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !12
  %i.adb = load float, ptr %i.acy, align 4, !tbaa !12
  %i.adc = getelementptr i8, ptr %i.acy, i64 4
  %i.add = load float, ptr %i.adc, align 4, !tbaa !12
  %i.ade = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.aci, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.adf = load <4 x float>, ptr %i.acj, align 4, !tbaa !12 ; 2 uses
  %i.adg = load float, ptr %i.acl, align 4, !tbaa !12 ; 2 uses
  %i.adh = load float, ptr %i.ack, align 4, !tbaa !12 ; 2 uses
  %i.adi = load <2 x float>, ptr %i.acp, align 4, !tbaa !12 ; 2 uses
  %i.adj = load float, ptr %i.acq, align 4, !tbaa !12 ; 2 uses
  %i.adk = fadd reassoc nsz arcp contract afn float %i.adh, %i.acg
  %i.adl = fadd reassoc nsz arcp contract afn float %i.adk, %i.adg
  %i.adm = fadd reassoc nsz arcp contract afn float %i.adl, %i.adj
  %i.adn = fadd reassoc nsz arcp contract afn float %i.adm, %i.acr
  %i.ado = extractelement <4 x float> %i.adf, i64 0
  %i.adp = shufflevector <2 x float> %i.adi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.adq = shufflevector <4 x float> %i.adf, <4 x float> %i.adp, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 poison, i32 4, i32 5, i32 poison>
  %i.adr = insertelement <16 x float> %i.adq, float %i.acn, i64 12
  %i.ads = insertelement <16 x float> %i.adr, float %i.acr, i64 15
  %i.adt = shufflevector <8 x float> %i.ade, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.adu = shufflevector <16 x float> %i.adt, <16 x float> %i.ads, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.adv = load <2 x float>, ptr %i.acs, align 4, !tbaa !12 ; 3 uses
  %i.adw = load float, ptr %i.act, align 4, !tbaa !12
  %i.adx = load <2 x float>, ptr %i.acv, align 4, !tbaa !12 ; 2 uses
  %i.ady = load float, ptr %i.acu, align 4, !tbaa !12
  %i.adz = extractelement <2 x float> %i.adv, i64 0
  %i.aea = fadd reassoc nsz arcp contract afn float %i.adn, %i.adz
  %i.aeb = fadd reassoc nsz arcp contract afn float %i.aea, %i.ada
  %i.aec = fadd reassoc nsz arcp contract afn float %i.aeb, %i.adb
  %i.aed = fadd reassoc nsz arcp contract afn float %i.aec, %i.add
  %i.aee = fmul reassoc nsz arcp contract afn float %i.aed, f0x3DE38E39
  %i.aef = extractelement <2 x float> %i.adx, i64 0
  %op.rdx1143 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float %i.aef, <8 x float> %i.ade)
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <2 x float> %i.adv, %i.adi
  %op.rdx1144 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %op.rdx1145 = fadd reassoc nsz arcp contract afn float %i.ado, %i.adh
  %op.rdx1146 = fadd reassoc nsz arcp contract afn float %i.adg, %i.acn
  %op.rdx1147 = fadd reassoc nsz arcp contract afn float %i.adw, %i.ady
  %op.rdx1148 = fadd reassoc nsz arcp contract afn float %i.acx, %i.adj
  %op.rdx1149 = fadd reassoc nsz arcp contract afn float %i.acr, %i.acg
  %op.rdx1150 = fadd reassoc nsz arcp contract afn float %op.rdx1143, %op.rdx1144
  %op.rdx1151 = fadd reassoc nsz arcp contract afn float %op.rdx1145, %op.rdx1146
  %op.rdx1152 = fadd reassoc nsz arcp contract afn float %op.rdx1147, %op.rdx1148
  %op.rdx1153 = fadd reassoc nsz arcp contract afn float %op.rdx1150, %op.rdx1151
  %op.rdx1154 = fadd reassoc nsz arcp contract afn float %op.rdx1152, %op.rdx1149
  %op.rdx1155 = fadd reassoc nsz arcp contract afn float %op.rdx1153, %op.rdx1154
  %i.aeg = fmul reassoc nsz arcp contract afn float %op.rdx1155, f0x3D430C31 ; 3 uses
  %i.aeh = insertelement <16 x float> poison, float %i.aeg, i64 0
  %i.aei = shufflevector <16 x float> %i.aeh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aej = fsub reassoc nsz arcp contract afn <16 x float> %i.adu, %i.aei ; 2 uses
  %i.aek = fmul reassoc nsz arcp contract afn <16 x float> %i.aej, %i.aej ; 2 uses
  %i.ael = shufflevector <2 x float> %i.adv, <2 x float> %i.adx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aem = insertelement <4 x float> poison, float %i.aeg, i64 0
  %i.aen = shufflevector <4 x float> %i.aem, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aeo = fsub reassoc nsz arcp contract afn <4 x float> %i.ael, %i.aen ; 2 uses
  %i.aep = fmul reassoc nsz arcp contract afn <4 x float> %i.aeo, %i.aeo
  %i.aeq = fsub reassoc nsz arcp contract afn float %i.acx, %i.aeg ; 2 uses
  %i.aer = fmul reassoc nsz arcp contract afn float %i.aeq, %i.aeq
  %i.aes = shufflevector <16 x float> %i.aek, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = fadd reassoc nsz arcp contract afn <4 x float> %i.aes, %i.aep
  %i.aet = shufflevector <4 x float> %rdx.op, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aeu = shufflevector <16 x float> %i.aet, <16 x float> %i.aek, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %op.rdx1142 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v16f32(float %i.aer, <16 x float> %i.aeu)
  %i.aev = fmul reassoc nsz arcp contract afn float %op.rdx1142, f0x3D430C31
  %i.aew = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aev)
  %i.aex = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aew)
  %i.aey = fmul reassoc nsz arcp contract afn float %i.aex, 1.000000e+01
  %i.aez = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aey
  %i.afa = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aez, float 0.000000e+00)
  %i.afb = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.yz, float %i.aee)
  %i.afc = fmul reassoc nsz arcp contract afn float %i.afb, %i.zt ; 2 uses
  %square.i.us.i = fmul reassoc nsz arcp contract afn float %i.afc, %i.afc
  %i.afd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %square.i.us.i, float 1.000000e+00)
  %i.afe = and i32 %i.aby, 262144
  %.not127.us.i = icmp eq i32 %i.afe, 0
  %i.aff = select reassoc nsz arcp contract afn i1 %.not127.us.i, float 7.500000e-01, float 1.000000e+00
  %i.afg = fmul reassoc nnan nsz arcp contract afn float %i.afd, %i.aff
  %i.afh = fmul reassoc nsz arcp contract afn float %i.afg, %i.afa ; 2 uses
  %i.afi = fcmp reassoc nsz arcp contract afn ogt float %i.afh, %.1109135.us.i ; 2 uses
  %spec.select.us.i = select i1 %i.afi, i64 %i.abu, i64 %.1111134.us.i
  %spec.select131.us.i = select nsz i1 %i.afi, float %i.afh, float %.1109135.us.i
  br label %_get_segment_id.exit.us.thread.i

_get_segment_id.exit.us.thread.i:                 ; preds = %bb.ad, %bb.ac, %_get_segment_id.exit.us.i, %bb.ab
  %.3113.us.i = phi i64 [ %spec.select.us.i, %bb.ad ], [ %.1111134.us.i, %bb.ac ], [ %.1111134.us.i, %_get_segment_id.exit.us.i ], [ %.1111134.us.i, %bb.ab ] ; 5 uses
  %.3.us.i = phi nsz float [ %spec.select131.us.i, %bb.ad ], [ %.1109135.us.i, %bb.ac ], [ %.1109135.us.i, %_get_segment_id.exit.us.i ], [ %.1109135.us.i, %bb.ab ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i463 = icmp eq i32 %i.abo, %lftr.wideiv.i
  br i1 %exitcond.not.i463, label %._crit_edge.us.i, label %bb.ab

._crit_edge.us.i:                                 ; preds = %_get_segment_id.exit.us.thread.i
  %indvars.iv.next160.i = add nsw i64 %indvars.iv159.i, 1 ; 2 uses
  %lftr.wideiv161.i = trunc i64 %indvars.iv.next160.i to i32
  %exitcond162.not.i = icmp eq i32 %i.abs, %lftr.wideiv161.i
  br i1 %exitcond162.not.i, label %._crit_edge143.i, label %.lr.ph.us.i

._crit_edge143.i:                                 ; preds = %._crit_edge.us.i
  %.not.i464 = icmp ne i64 %.3113.us.i, 0
  %i.afj = fcmp reassoc nsz arcp contract afn ogt float %.3.us.i, %i.zr
  %or.cond.i = select i1 %.not.i464, i1 %i.afj, i1 false
  br i1 %or.cond.i, label %.preheader133.i, label %._crit_edge143.thread.i

.preheader133.i:                                  ; preds = %._crit_edge143.i
  %i.afk = getelementptr [4 x i8], ptr %i.yu, i64 %.3113.us.i ; 9 uses
  %.idx.i = mul nsw i64 %i.abg, -8
  %i.afl = getelementptr i8, ptr %i.afk, i64 %.idx.i ; 5 uses
  %i.afm = getelementptr i8, ptr %i.afl, i64 -8
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !12 ; 2 uses
  %i.afo = fcmp reassoc nsz arcp contract afn olt float %i.afn, %i.yz ; 2 uses
  %spec.select.i = select i1 %i.afo, float %i.afn, float 0.000000e+00 ; 2 uses
  %spec.select209.i = select i1 %i.afo, float 1.000000e+00, float 0.000000e+00 ; 2 uses
  %i.afp = getelementptr i8, ptr %i.afl, i64 -4
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !12 ; 2 uses
  %i.afr = fcmp reassoc nsz arcp contract afn olt float %i.afq, %i.yz ; 2 uses
  %i.afs = fmul reassoc nsz arcp contract afn float %i.afq, 4.000000e+00
  %i.aft = fadd reassoc nsz arcp contract afn float %i.afs, %spec.select.i
  %i.afu = fadd reassoc nsz arcp contract afn float %spec.select209.i, 4.000000e+00
  %i.afv = select i1 %i.afr, float %i.aft, float %spec.select.i ; 2 uses
  %i.afw = select i1 %i.afr, float %i.afu, float %spec.select209.i ; 2 uses
  %i.afx = load float, ptr %i.afl, align 4, !tbaa !12 ; 2 uses
  %i.afy = fcmp reassoc nsz arcp contract afn olt float %i.afx, %i.yz ; 2 uses
  %i.afz = fmul reassoc nsz arcp contract afn float %i.afx, 6.000000e+00
  %i.aga = fadd reassoc nsz arcp contract afn float %i.afv, %i.afz
  %i.agb = fadd reassoc nsz arcp contract afn float %i.afw, 6.000000e+00
  %i.agc = select i1 %i.afy, float %i.aga, float %i.afv ; 2 uses
  %i.agd = select i1 %i.afy, float %i.agb, float %i.afw ; 2 uses
  %i.age = getelementptr i8, ptr %i.afl, i64 4
  %i.agf = load float, ptr %i.age, align 4, !tbaa !12 ; 2 uses
  %i.agg = fcmp reassoc nsz arcp contract afn olt float %i.agf, %i.yz ; 2 uses
  %i.agh = fmul reassoc nsz arcp contract afn float %i.agf, 4.000000e+00
  %i.agi = fadd reassoc nsz arcp contract afn float %i.agc, %i.agh
  %i.agj = fadd reassoc nsz arcp contract afn float %i.agd, 4.000000e+00
  %i.agk = select i1 %i.agg, float %i.agi, float %i.agc ; 2 uses
  %i.agl = select i1 %i.agg, float %i.agj, float %i.agd ; 2 uses
  %i.agm = getelementptr i8, ptr %i.afl, i64 8
  %i.agn = load float, ptr %i.agm, align 4, !tbaa !12 ; 2 uses
  %i.ago = fcmp reassoc nsz arcp contract afn olt float %i.agn, %i.yz ; 2 uses
  %i.agp = fadd reassoc nsz arcp contract afn float %i.agk, %i.agn
  %i.agq = fadd reassoc nsz arcp contract afn float %i.agl, 1.000000e+00
  %i.agr = select i1 %i.ago, float %i.agp, float %i.agk ; 2 uses
  %i.ags = select i1 %i.ago, float %i.agq, float %i.agl ; 2 uses
  %i.agt = getelementptr [4 x i8], ptr %i.afk, i64 %i.abi ; 5 uses
  %i.agu = getelementptr i8, ptr %i.agt, i64 -8
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !12 ; 2 uses
  %i.agw = fcmp reassoc nsz arcp contract afn olt float %i.agv, %i.yz ; 2 uses
  %i.agx = fmul reassoc nsz arcp contract afn float %i.agv, 4.000000e+00
  %i.agy = fadd reassoc nsz arcp contract afn float %i.agr, %i.agx
  %i.agz = fadd reassoc nsz arcp contract afn float %i.ags, 4.000000e+00
  %i.aha = select i1 %i.agw, float %i.agy, float %i.agr ; 2 uses
  %i.ahb = select i1 %i.agw, float %i.agz, float %i.ags ; 2 uses
  %i.ahc = getelementptr i8, ptr %i.agt, i64 -4
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !12 ; 2 uses
  %i.ahe = fcmp reassoc nsz arcp contract afn olt float %i.ahd, %i.yz ; 2 uses
  %i.ahf = fmul reassoc nsz arcp contract afn float %i.ahd, 1.600000e+01
  %i.ahg = fadd reassoc nsz arcp contract afn float %i.aha, %i.ahf
  %i.ahh = fadd reassoc nsz arcp contract afn float %i.ahb, 1.600000e+01
  %i.ahi = select i1 %i.ahe, float %i.ahg, float %i.aha ; 2 uses
  %i.ahj = select i1 %i.ahe, float %i.ahh, float %i.ahb ; 2 uses
  %i.ahk = load float, ptr %i.agt, align 4, !tbaa !12 ; 2 uses
  %i.ahl = fcmp reassoc nsz arcp contract afn olt float %i.ahk, %i.yz ; 2 uses
  %i.ahm = fmul reassoc nsz arcp contract afn float %i.ahk, 2.400000e+01
  %i.ahn = fadd reassoc nsz arcp contract afn float %i.ahi, %i.ahm
  %i.aho = fadd reassoc nsz arcp contract afn float %i.ahj, 2.400000e+01
  %i.ahp = select i1 %i.ahl, float %i.ahn, float %i.ahi ; 2 uses
  %i.ahq = select i1 %i.ahl, float %i.aho, float %i.ahj ; 2 uses
  %i.ahr = getelementptr i8, ptr %i.agt, i64 4
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !12 ; 2 uses
  %i.aht = fcmp reassoc nsz arcp contract afn olt float %i.ahs, %i.yz ; 2 uses
  %i.ahu = fmul reassoc nsz arcp contract afn float %i.ahs, 1.600000e+01
  %i.ahv = fadd reassoc nsz arcp contract afn float %i.ahp, %i.ahu
  %i.ahw = fadd reassoc nsz arcp contract afn float %i.ahq, 1.600000e+01
  %i.ahx = select i1 %i.aht, float %i.ahv, float %i.ahp ; 2 uses
  %i.ahy = select i1 %i.aht, float %i.ahw, float %i.ahq ; 2 uses
  %i.ahz = getelementptr i8, ptr %i.agt, i64 8
  %i.aia = load float, ptr %i.ahz, align 4, !tbaa !12 ; 2 uses
  %i.aib = fcmp reassoc nsz arcp contract afn olt float %i.aia, %i.yz ; 2 uses
  %i.aic = fmul reassoc nsz arcp contract afn float %i.aia, 4.000000e+00
  %i.aid = fadd reassoc nsz arcp contract afn float %i.ahx, %i.aic
  %i.aie = fadd reassoc nsz arcp contract afn float %i.ahy, 4.000000e+00
  %i.aif = select i1 %i.aib, float %i.aid, float %i.ahx ; 2 uses
  %i.aig = select i1 %i.aib, float %i.aie, float %i.ahy ; 2 uses
  %i.aih = getelementptr i8, ptr %i.afk, i64 -8
  %i.aii = load float, ptr %i.aih, align 4, !tbaa !12 ; 2 uses
  %i.aij = fcmp reassoc nsz arcp contract afn olt float %i.aii, %i.yz ; 2 uses
  %i.aik = fmul reassoc nsz arcp contract afn float %i.aii, 6.000000e+00
  %i.ail = fadd reassoc nsz arcp contract afn float %i.aif, %i.aik
  %i.aim = fadd reassoc nsz arcp contract afn float %i.aig, 6.000000e+00
  %i.ain = select i1 %i.aij, float %i.ail, float %i.aif ; 2 uses
  %i.aio = select i1 %i.aij, float %i.aim, float %i.aig ; 2 uses
  %i.aip = getelementptr i8, ptr %i.afk, i64 -4
  %i.aiq = load float, ptr %i.aip, align 4, !tbaa !12 ; 2 uses
  %i.air = fcmp reassoc nsz arcp contract afn olt float %i.aiq, %i.yz ; 2 uses
  %i.ais = fmul reassoc nsz arcp contract afn float %i.aiq, 2.400000e+01
  %i.ait = fadd reassoc nsz arcp contract afn float %i.ain, %i.ais
  %i.aiu = fadd reassoc nsz arcp contract afn float %i.aio, 2.400000e+01
  %i.aiv = select i1 %i.air, float %i.ait, float %i.ain ; 2 uses
  %i.aiw = select i1 %i.air, float %i.aiu, float %i.aio ; 2 uses
  %i.aix = load float, ptr %i.afk, align 4, !tbaa !12 ; 2 uses
  %i.aiy = fcmp reassoc nsz arcp contract afn olt float %i.aix, %i.yz ; 2 uses
  %i.aiz = fmul reassoc nsz arcp contract afn float %i.aix, 3.600000e+01
  %i.aja = fadd reassoc nsz arcp contract afn float %i.aiv, %i.aiz
  %i.ajb = fadd reassoc nsz arcp contract afn float %i.aiw, 3.600000e+01
  %i.ajc = select i1 %i.aiy, float %i.aja, float %i.aiv ; 2 uses
  %i.ajd = select i1 %i.aiy, float %i.ajb, float %i.aiw ; 2 uses
  %i.aje = getelementptr i8, ptr %i.afk, i64 4
  %i.ajf = load float, ptr %i.aje, align 4, !tbaa !12 ; 2 uses
  %i.ajg = fcmp reassoc nsz arcp contract afn olt float %i.ajf, %i.yz ; 2 uses
  %i.ajh = fmul reassoc nsz arcp contract afn float %i.ajf, 2.400000e+01
  %i.aji = fadd reassoc nsz arcp contract afn float %i.ajc, %i.ajh
  %i.ajj = fadd reassoc nsz arcp contract afn float %i.ajd, 2.400000e+01
  %i.ajk = select i1 %i.ajg, float %i.aji, float %i.ajc ; 2 uses
  %i.ajl = select i1 %i.ajg, float %i.ajj, float %i.ajd ; 2 uses
  %i.ajm = getelementptr i8, ptr %i.afk, i64 8
  %i.ajn = load float, ptr %i.ajm, align 4, !tbaa !12 ; 2 uses
  %i.ajo = fcmp reassoc nsz arcp contract afn olt float %i.ajn, %i.yz ; 2 uses
  %i.ajp = fmul reassoc nsz arcp contract afn float %i.ajn, 6.000000e+00
  %i.ajq = fadd reassoc nsz arcp contract afn float %i.ajk, %i.ajp
  %i.ajr = fadd reassoc nsz arcp contract afn float %i.ajl, 6.000000e+00
  %i.ajs = select i1 %i.ajo, float %i.ajq, float %i.ajk ; 2 uses
  %i.ajt = select i1 %i.ajo, float %i.ajr, float %i.ajl ; 2 uses
  %i.aju = getelementptr [4 x i8], ptr %i.afk, i64 %i.abg ; 5 uses
  %i.ajv = getelementptr i8, ptr %i.aju, i64 -8
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !12 ; 2 uses
  %i.ajx = fcmp reassoc nsz arcp contract afn olt float %i.ajw, %i.yz ; 2 uses
  %i.ajy = fmul reassoc nsz arcp contract afn float %i.ajw, 4.000000e+00
  %i.ajz = fadd reassoc nsz arcp contract afn float %i.ajs, %i.ajy
  %i.aka = fadd reassoc nsz arcp contract afn float %i.ajt, 4.000000e+00
  %i.akb = select i1 %i.ajx, float %i.ajz, float %i.ajs ; 2 uses
  %i.akc = select i1 %i.ajx, float %i.aka, float %i.ajt ; 2 uses
  %i.akd = getelementptr i8, ptr %i.aju, i64 -4
  %i.ake = load float, ptr %i.akd, align 4, !tbaa !12 ; 2 uses
  %i.akf = fcmp reassoc nsz arcp contract afn olt float %i.ake, %i.yz ; 2 uses
  %i.akg = fmul reassoc nsz arcp contract afn float %i.ake, 1.600000e+01
  %i.akh = fadd reassoc nsz arcp contract afn float %i.akb, %i.akg
  %i.aki = fadd reassoc nsz arcp contract afn float %i.akc, 1.600000e+01
  %i.akj = select i1 %i.akf, float %i.akh, float %i.akb ; 2 uses
  %i.akk = select i1 %i.akf, float %i.aki, float %i.akc ; 2 uses
  %i.akl = load float, ptr %i.aju, align 4, !tbaa !12 ; 2 uses
  %i.akm = fcmp reassoc nsz arcp contract afn olt float %i.akl, %i.yz ; 2 uses
  %i.akn = fmul reassoc nsz arcp contract afn float %i.akl, 2.400000e+01
  %i.ako = fadd reassoc nsz arcp contract afn float %i.akj, %i.akn
  %i.akp = fadd reassoc nsz arcp contract afn float %i.akk, 2.400000e+01
  %i.akq = select i1 %i.akm, float %i.ako, float %i.akj ; 2 uses
  %i.akr = select i1 %i.akm, float %i.akp, float %i.akk ; 2 uses
  %i.aks = getelementptr i8, ptr %i.aju, i64 4
  %i.akt = load float, ptr %i.aks, align 4, !tbaa !12 ; 2 uses
  %i.aku = fcmp reassoc nsz arcp contract afn olt float %i.akt, %i.yz ; 2 uses
  %i.akv = fmul reassoc nsz arcp contract afn float %i.akt, 1.600000e+01
  %i.akw = fadd reassoc nsz arcp contract afn float %i.akq, %i.akv
  %i.akx = fadd reassoc nsz arcp contract afn float %i.akr, 1.600000e+01
  %i.aky = select i1 %i.aku, float %i.akw, float %i.akq ; 2 uses
  %i.akz = select i1 %i.aku, float %i.akx, float %i.akr ; 2 uses
  %i.ala = getelementptr i8, ptr %i.aju, i64 8
  %i.alb = load float, ptr %i.ala, align 4, !tbaa !12 ; 2 uses
  %i.alc = fcmp reassoc nsz arcp contract afn olt float %i.alb, %i.yz ; 2 uses
  %i.ald = fmul reassoc nsz arcp contract afn float %i.alb, 4.000000e+00
  %i.ale = fadd reassoc nsz arcp contract afn float %i.aky, %i.ald
  %i.alf = fadd reassoc nsz arcp contract afn float %i.akz, 4.000000e+00
  %i.alg = select i1 %i.alc, float %i.ale, float %i.aky ; 2 uses
  %i.alh = select i1 %i.alc, float %i.alf, float %i.akz ; 2 uses
  %.idx203.i = shl nsw i64 %i.abg, 3
  %i.ali = getelementptr i8, ptr %i.afk, i64 %.idx203.i ; 5 uses
  %i.alj = getelementptr i8, ptr %i.ali, i64 -8
  %i.alk = load float, ptr %i.alj, align 4, !tbaa !12 ; 2 uses
  %i.all = fcmp reassoc nsz arcp contract afn olt float %i.alk, %i.yz ; 2 uses
  %i.alm = fadd reassoc nsz arcp contract afn float %i.alg, %i.alk
  %i.aln = fadd reassoc nsz arcp contract afn float %i.alh, 1.000000e+00
  %i.alo = select i1 %i.all, float %i.alm, float %i.alg ; 2 uses
  %i.alp = select i1 %i.all, float %i.aln, float %i.alh ; 2 uses
  %i.alq = getelementptr i8, ptr %i.ali, i64 -4
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !12 ; 2 uses
  %i.als = fcmp reassoc nsz arcp contract afn olt float %i.alr, %i.yz ; 2 uses
  %i.alt = fmul reassoc nsz arcp contract afn float %i.alr, 4.000000e+00
  %i.alu = fadd reassoc nsz arcp contract afn float %i.alo, %i.alt
  %i.alv = fadd reassoc nsz arcp contract afn float %i.alp, 4.000000e+00
  %i.alw = select i1 %i.als, float %i.alu, float %i.alo ; 2 uses
end_hunk_1
begin_hunk_2_@_process_segmentation:bb.a
  %i.ayg = sext i32 %i.ayf to i64
  %i.ayh = add nsw i32 %i.axx, -1
  %i.ayi = mul nsw i32 %i.ayh, %i.dh
  %i.ayj = sext i32 %i.ayi to i64
  %xtraiter1189 = and i64 %i.axw, 3               ; 3 uses
  %i.ayk = icmp ult i32 %i.axu, 4
  %unroll_iter1194 = and i64 %i.axw, 2147483644
  %lcmp.mod1191.not = icmp eq i64 %xtraiter1189, 0
  %lcmp.mod1193 = icmp ne i64 %xtraiter1189, 0
  br label %bb.ba

bb.ay:                                            ; preds = %.epilog-lcssa1182, %.lr.ph.i500
  %.07482.i502 = phi i64 [ %i.axw, %.lr.ph.i500 ], [ %i.ayv, %.epilog-lcssa1182 ] ; 2 uses
  %i.ayl = mul i64 %.07482.i502, %i.gb            ; 2 uses
  %i.aym = getelementptr [4 x i8], ptr %i.anp, i64 %i.ayl ; 6 uses
  %i.ayn = getelementptr [4 x i8], ptr %i.aym, i64 %i.axw ; 5 uses
  %gep.i503 = getelementptr [4 x i8], ptr %invariant.gep.i501, i64 %i.ayl ; 6 uses
  %i.ayo = getelementptr [4 x i8], ptr %gep.i503, i64 %i.aya ; 5 uses
  br i1 %i.ayb, label %.epil.preheader1178, label %.new1176

.unr-lcssa1177:                                   ; preds = %.new1176
  br i1 %lcmp.mod1181.not, label %.epilog-lcssa1182, label %.epil.preheader1178

.epil.preheader1178:                              ; preds = %.unr-lcssa1177, %bb.ay
  %.07381.i504.epil.init = phi i64 [ 0, %bb.ay ], [ %i.azu, %.unr-lcssa1177 ]
  tail call void @llvm.assume(i1 %lcmp.mod1183)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader1178
  %.07381.i504.epil = phi i64 [ %.07381.i504.epil.init, %.epil.preheader1178 ], [ %i.ayu, %bb.az ] ; 3 uses
  %epil.iter1180 = phi i64 [ 0, %.epil.preheader1178 ], [ %epil.iter1180.next, %bb.az ]
  %i.ayp = load float, ptr %i.ayn, align 4, !tbaa !12
  %i.ayq = getelementptr [4 x i8], ptr %i.aym, i64 %.07381.i504.epil
  store float %i.ayp, ptr %i.ayq, align 4, !tbaa !12
  %i.ayr = load float, ptr %i.ayo, align 4, !tbaa !12
  %i.ays = xor i64 %.07381.i504.epil, -1
  %i.ayt = getelementptr [4 x i8], ptr %gep.i503, i64 %i.ays
  store float %i.ayr, ptr %i.ayt, align 4, !tbaa !12
  %i.ayu = add nuw nsw i64 %.07381.i504.epil, 1
  %epil.iter1180.next = add i64 %epil.iter1180, 1 ; 2 uses
  %epil.iter1180.cmp.not = icmp eq i64 %epil.iter1180.next, %xtraiter1179
  br i1 %epil.iter1180.cmp.not, label %.epilog-lcssa1182, label %bb.az, !llvm.loop !521

.epilog-lcssa1182:                                ; preds = %bb.az, %.unr-lcssa1177
  %i.ayv = add nuw i64 %.07482.i502, 1            ; 2 uses
  %i.ayw = icmp ult i64 %i.ayv, %i.axy
  br i1 %i.ayw, label %bb.ay, label %.preheader.i492

.new1176:                                         ; preds = %bb.ay, %.new1176
  %.07381.i504 = phi i64 [ %i.azu, %.new1176 ], [ 0, %bb.ay ] ; 9 uses
  %niter1185 = phi i64 [ %niter1185.next.3, %.new1176 ], [ 0, %bb.ay ]
  %i.ayx = load float, ptr %i.ayn, align 4, !tbaa !12
  %i.ayy = getelementptr [4 x i8], ptr %i.aym, i64 %.07381.i504
  store float %i.ayx, ptr %i.ayy, align 4, !tbaa !12
  %i.ayz = load float, ptr %i.ayo, align 4, !tbaa !12
  %i.aza = xor i64 %.07381.i504, -1
  %i.azb = getelementptr [4 x i8], ptr %gep.i503, i64 %i.aza
  store float %i.ayz, ptr %i.azb, align 4, !tbaa !12
  %i.azc = load float, ptr %i.ayn, align 4, !tbaa !12
  %i.azd = getelementptr [4 x i8], ptr %i.aym, i64 %.07381.i504
  %i.aze = getelementptr i8, ptr %i.azd, i64 4
  store float %i.azc, ptr %i.aze, align 4, !tbaa !12
  %i.azf = load float, ptr %i.ayo, align 4, !tbaa !12
  %i.azg = xor i64 %.07381.i504, -2
  %i.azh = getelementptr [4 x i8], ptr %gep.i503, i64 %i.azg
  store float %i.azf, ptr %i.azh, align 4, !tbaa !12
  %i.azi = load float, ptr %i.ayn, align 4, !tbaa !12
  %i.azj = getelementptr [4 x i8], ptr %i.aym, i64 %.07381.i504
  %i.azk = getelementptr i8, ptr %i.azj, i64 8
  store float %i.azi, ptr %i.azk, align 4, !tbaa !12
  %i.azl = load float, ptr %i.ayo, align 4, !tbaa !12
  %i.azm = xor i64 %.07381.i504, -3
  %i.azn = getelementptr [4 x i8], ptr %gep.i503, i64 %i.azm
  store float %i.azl, ptr %i.azn, align 4, !tbaa !12
  %i.azo = load float, ptr %i.ayn, align 4, !tbaa !12
  %i.azp = getelementptr [4 x i8], ptr %i.aym, i64 %.07381.i504
  %i.azq = getelementptr i8, ptr %i.azp, i64 12
  store float %i.azo, ptr %i.azq, align 4, !tbaa !12
  %i.azr = load float, ptr %i.ayo, align 4, !tbaa !12
  %i.azs = xor i64 %.07381.i504, -4
  %i.azt = getelementptr [4 x i8], ptr %gep.i503, i64 %i.azs
  store float %i.azr, ptr %i.azt, align 4, !tbaa !12
  %i.azu = add nuw nsw i64 %.07381.i504, 4        ; 2 uses
  %niter1185.next.3 = add i64 %niter1185, 4       ; 2 uses
  %niter1185.ncmp.3 = icmp eq i64 %niter1185.next.3, %unroll_iter1184
  br i1 %niter1185.ncmp.3, label %.unr-lcssa1177, label %.new1176

bb.ba:                                            ; preds = %.epilog-lcssa1192, %.lr.ph85.i494
  %.07284.i495 = phi i64 [ 0, %.lr.ph85.i494 ], [ %i.baj, %.epilog-lcssa1192 ] ; 3 uses
  %i.azv = tail call i64 @llvm.umax.i64(i64 %.07284.i495, i64 %i.axw)
  %..i496 = tail call i64 @llvm.umin.i64(i64 %i.azv, i64 %i.ayg)
  %i.azw = getelementptr [4 x i8], ptr %i.anp, i64 %..i496 ; 2 uses
  %i.azx = getelementptr [4 x i8], ptr %i.azw, i64 %i.ayd
  %i.azy = load float, ptr %i.azx, align 4, !tbaa !12 ; 5 uses
  %i.azz = getelementptr [4 x i8], ptr %i.azw, i64 %i.ayj
  %i.baa = load float, ptr %i.azz, align 4, !tbaa !12 ; 5 uses
  %i.bab = getelementptr [4 x i8], ptr %i.anp, i64 %.07284.i495 ; 10 uses
  br i1 %i.ayk, label %.epil.preheader1188, label %.new1186

.unr-lcssa1187:                                   ; preds = %.new1186
  br i1 %lcmp.mod1191.not, label %.epilog-lcssa1192, label %.epil.preheader1188

.epil.preheader1188:                              ; preds = %.unr-lcssa1187, %bb.ba
  %.083.i497.epil.init = phi i64 [ 0, %bb.ba ], [ %i.bbl, %.unr-lcssa1187 ]
  tail call void @llvm.assume(i1 %lcmp.mod1193)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.epil.preheader1188
  %.083.i497.epil = phi i64 [ %.083.i497.epil.init, %.epil.preheader1188 ], [ %i.bai, %bb.bb ] ; 3 uses
  %epil.iter1190 = phi i64 [ 0, %.epil.preheader1188 ], [ %epil.iter1190.next, %bb.bb ]
  %i.bac = mul nsw i64 %.083.i497.epil, %i.gb
  %i.bad = getelementptr [4 x i8], ptr %i.bab, i64 %i.bac
  store float %i.azy, ptr %i.bad, align 4, !tbaa !12
  %i.bae = xor i64 %.083.i497.epil, -1
  %i.baf = add nsw i64 %i.gh, %i.bae
  %i.bag = mul nsw i64 %i.baf, %i.gb
  %i.bah = getelementptr [4 x i8], ptr %i.bab, i64 %i.bag
  store float %i.baa, ptr %i.bah, align 4, !tbaa !12
  %i.bai = add nuw nsw i64 %.083.i497.epil, 1
  %epil.iter1190.next = add i64 %epil.iter1190, 1 ; 2 uses
  %epil.iter1190.cmp.not = icmp eq i64 %epil.iter1190.next, %xtraiter1189
  br i1 %epil.iter1190.cmp.not, label %.epilog-lcssa1192, label %bb.bb, !llvm.loop !522

.epilog-lcssa1192:                                ; preds = %bb.bb, %.unr-lcssa1187
  %i.baj = add nuw i64 %.07284.i495, 1            ; 2 uses
  %exitcond87.not.i499 = icmp eq i64 %i.baj, %i.gb
  br i1 %exitcond87.not.i499, label %_masks_extend_border.exit506, label %bb.ba

.new1186:                                         ; preds = %bb.ba, %.new1186
  %.083.i497 = phi i64 [ %i.bbl, %.new1186 ], [ 0, %bb.ba ] ; 9 uses
  %niter1195 = phi i64 [ %niter1195.next.3, %.new1186 ], [ 0, %bb.ba ]
  %i.bak = mul nsw i64 %.083.i497, %i.gb
  %i.bal = getelementptr [4 x i8], ptr %i.bab, i64 %i.bak
  store float %i.azy, ptr %i.bal, align 4, !tbaa !12
  %i.bam = xor i64 %.083.i497, -1
  %i.ban = add nsw i64 %i.gh, %i.bam
  %i.bao = mul nsw i64 %i.ban, %i.gb
  %i.bap = getelementptr [4 x i8], ptr %i.bab, i64 %i.bao
  store float %i.baa, ptr %i.bap, align 4, !tbaa !12
  %i.baq = or disjoint i64 %.083.i497, 1
  %i.bar = mul nsw i64 %i.baq, %i.gb
  %i.bas = getelementptr [4 x i8], ptr %i.bab, i64 %i.bar
  store float %i.azy, ptr %i.bas, align 4, !tbaa !12
  %i.bat = xor i64 %.083.i497, -2
  %i.bau = add nsw i64 %i.gh, %i.bat
  %i.bav = mul nsw i64 %i.bau, %i.gb
  %i.baw = getelementptr [4 x i8], ptr %i.bab, i64 %i.bav
  store float %i.baa, ptr %i.baw, align 4, !tbaa !12
  %i.bax = or disjoint i64 %.083.i497, 2
  %i.bay = mul nsw i64 %i.bax, %i.gb
  %i.baz = getelementptr [4 x i8], ptr %i.bab, i64 %i.bay
  store float %i.azy, ptr %i.baz, align 4, !tbaa !12
  %i.bba = xor i64 %.083.i497, -3
  %i.bbb = add nsw i64 %i.gh, %i.bba
  %i.bbc = mul nsw i64 %i.bbb, %i.gb
  %i.bbd = getelementptr [4 x i8], ptr %i.bab, i64 %i.bbc
  store float %i.baa, ptr %i.bbd, align 4, !tbaa !12
  %i.bbe = or disjoint i64 %.083.i497, 3
  %i.bbf = mul nsw i64 %i.bbe, %i.gb
  %i.bbg = getelementptr [4 x i8], ptr %i.bab, i64 %i.bbf
  store float %i.azy, ptr %i.bbg, align 4, !tbaa !12
  %i.bbh = xor i64 %.083.i497, -4
  %i.bbi = add nsw i64 %i.gh, %i.bbh
  %i.bbj = mul nsw i64 %i.bbi, %i.gb
  %i.bbk = getelementptr [4 x i8], ptr %i.bab, i64 %i.bbj
  store float %i.baa, ptr %i.bbk, align 4, !tbaa !12
  %i.bbl = add nuw nsw i64 %.083.i497, 4          ; 2 uses
  %niter1195.next.3 = add i64 %niter1195, 4       ; 2 uses
  %niter1195.ncmp.3 = icmp eq i64 %niter1195.next.3, %unroll_iter1194
  br i1 %niter1195.ncmp.3, label %.unr-lcssa1187, label %.new1186

_masks_extend_border.exit506:                     ; preds = %.epilog-lcssa1192, %_initial_gradients.exit, %.preheader.i492
  %i.bbm = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.bbn = load i32, ptr %i.bbm, align 8, !tbaa !34 ; 3 uses
  %i.bbo = icmp ugt i32 %i.bbn, 2
  br i1 %i.bbo, label %.lr.ph638, label %._crit_edge639.thread

.lr.ph638:                                        ; preds = %_masks_extend_border.exit506
  %i.bbp = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !27
  %i.bbr = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.bbs = load ptr, ptr %i.bbr, align 16, !tbaa !26
  %i.bbt = getelementptr inbounds nuw i8, ptr %8, i64 372
  %i.bbu = load i32, ptr %i.bbt, align 4, !tbaa !19 ; 5 uses
  %i.bbv = sub i32 %i.bbu, %i.axu                 ; 2 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %8, i64 328
  %i.bbx = load ptr, ptr %i.bbw, align 8, !tbaa !25
  %i.bby = getelementptr inbounds nuw i8, ptr %8, i64 336
  %i.bbz = load ptr, ptr %i.bby, align 16, !tbaa !24
  %i.bca = getelementptr inbounds nuw i8, ptr %8, i64 376
  %i.bcb = load i32, ptr %i.bca, align 8, !tbaa !20
  %i.bcc = sub i32 %i.bcb, %i.axu                 ; 2 uses
  %i.bcd = sext i32 %i.bbu to i64                 ; 14 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %8, i64 344
  %i.bcf = load ptr, ptr %i.bce, align 8          ; 2 uses
  %i.bcg = load ptr, ptr %i.dq, align 16          ; 19 uses
  %i.bch = sext i32 %i.axu to i64
  %i.bci = icmp slt i32 %i.bh, 5
  %i.bcj = getelementptr inbounds [4 x i8], ptr @__const._segment_attenuation.attenuate, i64 %i.bk
  %i.bck = sitofp reassoc nsz arcp contract afn i32 %i.bm to float
  %i.bcl = fmul reassoc nnan nsz arcp contract afn float %i.bck, 1.000000e-01
  %i.bcm = shl nsw i64 %i.bcd, 1                  ; 2 uses
  %wide.trip.count732 = zext i32 %i.bbn to i64
  %scevgep = getelementptr i8, ptr %i.bcg, i64 4
  %i.bcn = shl nsw i64 %i.bcd, 2
  %scevgep979 = getelementptr i8, ptr %i.anp, i64 4
  %scevgep1032 = getelementptr i8, ptr %i.co, i64 %.idx843
  %i.bco = shl nsw i64 %i.bcd, 2
  %i.bcp = shl nsw i64 %i.bcd, 2
  %scevgep1101 = getelementptr i8, ptr %i.co, i64 %.idx843
  %stride.check1110 = icmp slt i32 %i.bbu, 0
  %stride.check1045 = icmp slt i32 %i.bbu, 0
  %stride.check = icmp slt i32 %i.bbu, 0
  br label %bb.bc

._crit_edge639:                                   ; preds = %_segment_gradients.exit
  tail call void @dt_gaussian_fast_blur(ptr noundef %i.anp, ptr noundef %i.ann, i32 noundef %i.dh, i32 noundef %i.di, float noundef 1.200000e+00, float noundef 0.000000e+00, float noundef 2.000000e+01, i32 noundef 1) #33
  %i.bcq = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bcr = load float, ptr %i.bcq, align 4, !tbaa !140 ; 5 uses
  %i.bcs = fcmp reassoc nsz arcp contract afn ule float %i.bcr, 0.000000e+00
  br i1 %i.bcs, label %.loopexit580, label %.lr.ph641

._crit_edge639.thread:                            ; preds = %_masks_extend_border.exit506
  tail call void @dt_gaussian_fast_blur(ptr noundef %i.anp, ptr noundef %i.ann, i32 noundef %i.dh, i32 noundef %i.di, float noundef 1.200000e+00, float noundef 0.000000e+00, float noundef 2.000000e+01, i32 noundef 1) #33
  br label %.loopexit580

.lr.ph641:                                        ; preds = %._crit_edge639
  %i.bct = getelementptr inbounds nuw i8, ptr %8, i64 344
  %i.bcu = load ptr, ptr %i.bct, align 8, !tbaa !30
  %i.bcv = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.bcw = load ptr, ptr %i.bcv, align 8
  %i.bcx = load i32, ptr %i.axt, align 4          ; 4 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.bcz = load ptr, ptr %i.bcy, align 16
  %i.bda = getelementptr inbounds nuw i8, ptr %8, i64 372
  %i.bdb = load i32, ptr %i.bda, align 4          ; 2 uses
  %i.bdc = sub i32 %i.bdb, %i.bcx
  %i.bdd = getelementptr inbounds nuw i8, ptr %8, i64 328
  %i.bde = load ptr, ptr %i.bdd, align 8
  %i.bdf = getelementptr inbounds nuw i8, ptr %8, i64 336
  %i.bdg = load ptr, ptr %i.bdf, align 16
  %i.bdh = getelementptr inbounds nuw i8, ptr %8, i64 376
  %i.bdi = load i32, ptr %i.bdh, align 8
  %i.bdj = sub i32 %i.bdi, %i.bcx
  %i.bdk = sext i32 %i.bdb to i64
  %i.bdl = fmul reassoc nnan nsz arcp contract afn float %i.bcr, %i.bcr
  %i.bdm = load ptr, ptr %i.dq, align 16
  %wide.trip.count737 = zext i32 %i.bbn to i64
  br label %bb.dz

bb.bc:                                            ; preds = %.lr.ph638, %_segment_gradients.exit
  %indvars.iv729 = phi i64 [ 2, %.lr.ph638 ], [ %indvars.iv.next730, %_segment_gradients.exit ] ; 23 uses
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %i.bbq, i64 %indvars.iv729
  %i.bdo = load i32, ptr %i.bdn, align 4, !tbaa !15 ; 2 uses
  %i.bdp = add i32 %i.bdo, -2
  %..i507 = tail call i32 @llvm.smax.i32(i32 %i.bdp, i32 %i.axu) ; 4 uses
  %i.bdq = getelementptr inbounds nuw [4 x i8], ptr %i.bbs, i64 %indvars.iv729
  %i.bdr = load i32, ptr %i.bdq, align 4, !tbaa !15 ; 2 uses
  %i.bds = add i32 %i.bdr, 3
  %i.bdt = tail call i32 @llvm.smin.i32(i32 %i.bds, i32 %i.bbv) ; 4 uses
  %i.bdu = getelementptr inbounds nuw [4 x i8], ptr %i.bbx, i64 %indvars.iv729
  %i.bdv = load i32, ptr %i.bdu, align 4, !tbaa !15 ; 3 uses
  %i.bdw = add nsw i32 %i.bdv, -2
  %i.bdx = tail call i32 @llvm.smax.i32(i32 %i.bdw, i32 %i.axu) ; 2 uses
  %i.bdy = getelementptr inbounds nuw [4 x i8], ptr %i.bbz, i64 %indvars.iv729
  %i.bdz = load i32, ptr %i.bdy, align 4, !tbaa !15 ; 2 uses
  %i.bea = add nsw i32 %i.bdz, 3
  %i.beb = tail call i32 @llvm.smin.i32(i32 %i.bea, i32 %i.bcc) ; 2 uses
  %i.bec = icmp slt i32 %i.bdx, %i.beb
  %i.bed = icmp slt i32 %..i507, %i.bdt
  %or.cond654 = select i1 %i.bec, i1 %i.bed, i1 false
  br i1 %or.cond654, label %.preheader.lr.ph.split.us.i, label %_segment_maxdistance.exit.thread

.preheader.lr.ph.split.us.i:                      ; preds = %bb.bc
  %smax.i509 = sext i32 %..i507 to i64            ; 2 uses
  %i.bee = sext i32 %i.bdv to i64
  %i.bef = add nsw i64 %i.bee, -2
  %smax62.i = tail call i64 @llvm.smax.i64(i64 %i.bef, i64 %i.bch) ; 2 uses
  %i.beg = trunc nsw i64 %smax62.i to i32
  %i.beh = sub i32 %i.beg, %i.bdx
  %i.bei = add i32 %i.beh, %i.beb
  %i.bej = sub i32 %i.bdt, %..i507
  %xtraiter1196 = and i32 %i.bej, 3               ; 2 uses
  %lcmp.mod1197.not = icmp eq i32 %xtraiter1196, 0
  %i.bek = sub i32 %..i507, %i.bdt
  %i.bel = icmp ugt i32 %i.bek, -4
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i514, %.preheader.lr.ph.split.us.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %._crit_edge.us.i514 ], [ %smax62.i, %.preheader.lr.ph.split.us.i ] ; 2 uses
  %.04657.us.i = phi float [ %.pre178.i.lcssa, %._crit_edge.us.i514 ], [ 0.000000e+00, %.preheader.lr.ph.split.us.i ] ; 2 uses
  %i.bem = mul nsw i64 %indvars.iv63.i, %i.bcd    ; 5 uses
  br i1 %lcmp.mod1197.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.us.i, %bb.be
  %indvars.iv.i510.prol = phi i64 [ %indvars.iv.next.i511.prol, %bb.be ], [ %smax.i509, %.preheader.us.i ] ; 2 uses
  %.155.us.i.prol = phi float [ %.pre178.i.prol, %bb.be ], [ %.04657.us.i, %.preheader.us.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %bb.be ], [ 0, %.preheader.us.i ]
  %i.ben = add nsw i64 %indvars.iv.i510.prol, %i.bem ; 2 uses
  %i.beo = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %i.ben
  %i.bep = load i32, ptr %i.beo, align 4, !tbaa !15
  %i.beq = zext i32 %i.bep to i64
  %i.ber = icmp eq i64 %indvars.iv729, %i.beq
  br i1 %i.ber, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.prol.preheader
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ben
  %i.bet = load float, ptr %i.bes, align 4, !tbaa !12
  %i.beu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.155.us.i.prol, float %i.bet)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.prol.preheader
  %.pre178.i.prol = phi nsz float [ %i.beu, %bb.bd ], [ %.155.us.i.prol, %.prol.preheader ] ; 3 uses
  %indvars.iv.next.i511.prol = add nsw i64 %indvars.iv.i510.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1196
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !523

.prol.loopexit:                                   ; preds = %bb.be, %.preheader.us.i
  %.pre178.i.lcssa.unr = phi float [ poison, %.preheader.us.i ], [ %.pre178.i.prol, %bb.be ]
  %indvars.iv.i510.unr = phi i64 [ %smax.i509, %.preheader.us.i ], [ %indvars.iv.next.i511.prol, %bb.be ]
  %.155.us.i.unr = phi float [ %.04657.us.i, %.preheader.us.i ], [ %.pre178.i.prol, %bb.be ]
  br i1 %i.bel, label %._crit_edge.us.i514, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.prol.loopexit
  %invariant.op1210 = add i64 1, %i.bem
  %invariant.op1212 = add i64 2, %i.bem
  %invariant.op1214 = add i64 3, %i.bem
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bn, %.preheader.us.i.new
  %indvars.iv.i510 = phi i64 [ %indvars.iv.i510.unr, %.preheader.us.i.new ], [ %indvars.iv.next.i511.3, %bb.bn ] ; 5 uses
  %.155.us.i = phi float [ %.155.us.i.unr, %.preheader.us.i.new ], [ %.pre178.i.3, %bb.bn ] ; 2 uses
  %i.bev = add nsw i64 %indvars.iv.i510, %i.bem   ; 2 uses
  %i.bew = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %i.bev
  %i.bex = load i32, ptr %i.bew, align 4, !tbaa !15
  %i.bey = zext i32 %i.bex to i64
  %i.bez = icmp eq i64 %indvars.iv729, %i.bey
  br i1 %i.bez, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.bfa = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.bev
  %i.bfb = load float, ptr %i.bfa, align 4, !tbaa !12
  %i.bfc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.155.us.i, float %i.bfb)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pre178.i = phi nsz float [ %i.bfc, %bb.bg ], [ %.155.us.i, %bb.bf ] ; 2 uses
  %.reass1211 = add i64 %indvars.iv.i510, %invariant.op1210 ; 2 uses
  %i.bfd = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %.reass1211
  %i.bfe = load i32, ptr %i.bfd, align 4, !tbaa !15
  %i.bff = zext i32 %i.bfe to i64
  %i.bfg = icmp eq i64 %indvars.iv729, %i.bff
  br i1 %i.bfg, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.bfh = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.reass1211
  %i.bfi = load float, ptr %i.bfh, align 4, !tbaa !12
  %i.bfj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.pre178.i, float %i.bfi)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pre178.i.1 = phi nsz float [ %i.bfj, %bb.bi ], [ %.pre178.i, %bb.bh ] ; 2 uses
  %.reass1213 = add i64 %indvars.iv.i510, %invariant.op1212 ; 2 uses
  %i.bfk = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %.reass1213
  %i.bfl = load i32, ptr %i.bfk, align 4, !tbaa !15
  %i.bfm = zext i32 %i.bfl to i64
  %i.bfn = icmp eq i64 %indvars.iv729, %i.bfm
  br i1 %i.bfn, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.bfo = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.reass1213
  %i.bfp = load float, ptr %i.bfo, align 4, !tbaa !12
  %i.bfq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.pre178.i.1, float %i.bfp)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pre178.i.2 = phi nsz float [ %i.bfq, %bb.bk ], [ %.pre178.i.1, %bb.bj ] ; 2 uses
  %.reass1215 = add i64 %indvars.iv.i510, %invariant.op1214 ; 2 uses
  %i.bfr = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %.reass1215
  %i.bfs = load i32, ptr %i.bfr, align 4, !tbaa !15
  %i.bft = zext i32 %i.bfs to i64
  %i.bfu = icmp eq i64 %indvars.iv729, %i.bft
  br i1 %i.bfu, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.bfv = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.reass1215
  %i.bfw = load float, ptr %i.bfv, align 4, !tbaa !12
  %i.bfx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.pre178.i.2, float %i.bfw)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pre178.i.3 = phi nsz float [ %i.bfx, %bb.bm ], [ %.pre178.i.2, %bb.bl ] ; 2 uses
  %indvars.iv.next.i511.3 = add nsw i64 %indvars.iv.i510, 4 ; 2 uses
  %lftr.wideiv.i512.3 = trunc i64 %indvars.iv.next.i511.3 to i32
  %exitcond.not.i513.3 = icmp eq i32 %i.bdt, %lftr.wideiv.i512.3
  br i1 %exitcond.not.i513.3, label %._crit_edge.us.i514, label %bb.bf

._crit_edge.us.i514:                              ; preds = %bb.bn, %.prol.loopexit
  %.pre178.i.lcssa = phi float [ %.pre178.i.lcssa.unr, %.prol.loopexit ], [ %.pre178.i.3, %bb.bn ] ; 7 uses
  %indvars.iv.next64.i = add nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %lftr.wideiv65.i = trunc i64 %indvars.iv.next64.i to i32
  %exitcond66.not.i = icmp eq i32 %i.bei, %lftr.wideiv65.i
  br i1 %exitcond66.not.i, label %_segment_maxdistance.exit, label %.preheader.us.i

_segment_maxdistance.exit.thread:                 ; preds = %bb.bc
  %i.bfy = getelementptr inbounds nuw [4 x i8], ptr %i.bcf, i64 %indvars.iv729
  store float 0.000000e+00, ptr %i.bfy, align 4, !tbaa !12
  br label %_segment_gradients.exit

_segment_maxdistance.exit:                        ; preds = %._crit_edge.us.i514
  %i.bfz = getelementptr inbounds nuw [4 x i8], ptr %i.bcf, i64 %indvars.iv729 ; 2 uses
  store float %.pre178.i.lcssa, ptr %i.bfz, align 4, !tbaa !12
  %i.bga = fcmp reassoc nsz arcp contract afn ogt float %.pre178.i.lcssa, 2.000000e+00
  br i1 %i.bga, label %bb.bo, label %_segment_gradients.exit

bb.bo:                                            ; preds = %_segment_maxdistance.exit
  %i.bgb = add i32 %i.bdo, -1
  %..i515 = tail call i32 @llvm.smax.i32(i32 %i.bgb, i32 %i.axu) ; 8 uses
  %i.bgc = add i32 %i.bdr, 2
  %i.bgd = tail call i32 @llvm.smin.i32(i32 %i.bgc, i32 %i.bbv) ; 10 uses
  %i.bge = add i32 %i.bdv, -1
  %i.bgf = tail call i32 @llvm.smax.i32(i32 %i.bge, i32 %i.axu) ; 7 uses
  %i.bgg = add i32 %i.bdz, 2
  %i.bgh = tail call i32 @llvm.smin.i32(i32 %i.bgg, i32 %i.bcc) ; 7 uses
  br i1 %i.bci, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.bgi = load float, ptr %i.bcj, align 4, !tbaa !12
  br label %_segment_correction.exit.i

bb.bq:                                            ; preds = %bb.bo
  %i.bgj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.pre178.i.lcssa, float 1.000000e+00)
  %i.bgk = fdiv reassoc nsz arcp contract afn float 3.000000e+00, %i.bgj
  %i.bgl = fadd reassoc nsz arcp contract afn float %i.bgk, f0x3F666666
  %i.bgm = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bgl, float 1.700000e+00)
  br label %_segment_correction.exit.i

_segment_correction.exit.i:                       ; preds = %bb.bq, %bb.bp
  %.0.i138.i = phi float [ %i.bgi, %bb.bp ], [ %i.bgm, %bb.bq ] ; 2 uses
  %i.bgn = fsub reassoc nsz arcp contract afn float %.0.i138.i, %i.bcl ; 7 uses
  %i.bgo = fcmp reassoc nsz arcp contract afn ogt float %.pre178.i.lcssa, 1.500000e+00
  br i1 %i.bgo, label %.lr.ph.i523, label %.loopexit.i

.lr.ph.i523:                                      ; preds = %_segment_correction.exit.i
  %i.bgp = icmp slt i32 %i.bgf, %i.bgh
end_hunk_2
begin_hunk_3_@_process_segmentation:bb.a

vec.epilog.scalar.ph:                             ; preds = %bb.dy, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv.i519 = phi i64 [ %indvars.iv.i519.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next.i520.3, %bb.dy ] ; 5 uses
  %i.bxs = add nsw i64 %indvars.iv.i519, %i.bwe   ; 2 uses
  %i.bxt = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %i.bxs
  %i.bxu = load i32, ptr %i.bxt, align 4, !tbaa !15
  %i.bxv = zext i32 %i.bxu to i64
  %i.bxw = icmp eq i64 %indvars.iv729, %i.bxv
  br i1 %i.bxw, label %bb.du, label %vec.epilog.scalar.ph.1

bb.du:                                            ; preds = %vec.epilog.scalar.ph
  %i.bxx = getelementptr inbounds nuw [4 x i8], ptr %i.anp, i64 %i.bxs ; 2 uses
  %i.bxy = load float, ptr %i.bxx, align 4, !tbaa !12
  %i.bxz = fmul reassoc nsz arcp contract afn float %i.bxy, %i.bgn
  store float %i.bxz, ptr %i.bxx, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.1

vec.epilog.scalar.ph.1:                           ; preds = %bb.du, %vec.epilog.scalar.ph
  %.reass1221 = add i64 %indvars.iv.i519, %invariant.op1220 ; 2 uses
  %i.bya = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %.reass1221
  %i.byb = load i32, ptr %i.bya, align 4, !tbaa !15
  %i.byc = zext i32 %i.byb to i64
  %i.byd = icmp eq i64 %indvars.iv729, %i.byc
  br i1 %i.byd, label %bb.dv, label %vec.epilog.scalar.ph.2

bb.dv:                                            ; preds = %vec.epilog.scalar.ph.1
  %i.bye = getelementptr inbounds nuw [4 x i8], ptr %i.anp, i64 %.reass1221 ; 2 uses
  %i.byf = load float, ptr %i.bye, align 4, !tbaa !12
  %i.byg = fmul reassoc nsz arcp contract afn float %i.byf, %i.bgn
  store float %i.byg, ptr %i.bye, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.2

vec.epilog.scalar.ph.2:                           ; preds = %bb.dv, %vec.epilog.scalar.ph.1
  %.reass1223 = add i64 %indvars.iv.i519, %invariant.op1222 ; 2 uses
  %i.byh = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %.reass1223
  %i.byi = load i32, ptr %i.byh, align 4, !tbaa !15
  %i.byj = zext i32 %i.byi to i64
  %i.byk = icmp eq i64 %indvars.iv729, %i.byj
  br i1 %i.byk, label %bb.dw, label %vec.epilog.scalar.ph.3

bb.dw:                                            ; preds = %vec.epilog.scalar.ph.2
  %i.byl = getelementptr inbounds nuw [4 x i8], ptr %i.anp, i64 %.reass1223 ; 2 uses
  %i.bym = load float, ptr %i.byl, align 4, !tbaa !12
  %i.byn = fmul reassoc nsz arcp contract afn float %i.bym, %i.bgn
  store float %i.byn, ptr %i.byl, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.3

vec.epilog.scalar.ph.3:                           ; preds = %bb.dw, %vec.epilog.scalar.ph.2
  %.reass1225 = add i64 %indvars.iv.i519, %invariant.op1224 ; 2 uses
  %i.byo = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %.reass1225
  %i.byp = load i32, ptr %i.byo, align 4, !tbaa !15
  %i.byq = zext i32 %i.byp to i64
  %i.byr = icmp eq i64 %indvars.iv729, %i.byq
  br i1 %i.byr, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %vec.epilog.scalar.ph.3
  %i.bys = getelementptr inbounds nuw [4 x i8], ptr %i.anp, i64 %.reass1225 ; 2 uses
  %i.byt = load float, ptr %i.bys, align 4, !tbaa !12
  %i.byu = fmul reassoc nsz arcp contract afn float %i.byt, %i.bgn
  store float %i.byu, ptr %i.bys, align 4, !tbaa !12
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %vec.epilog.scalar.ph.3
  %indvars.iv.next.i520.3 = add nsw i64 %indvars.iv.i519, 4 ; 2 uses
  %lftr.wideiv.i521.3 = trunc i64 %indvars.iv.next.i520.3 to i32
  %exitcond.not.i522.3 = icmp eq i32 %i.bgd, %lftr.wideiv.i521.3
  br i1 %exitcond.not.i522.3, label %._crit_edge164.i, label %vec.epilog.scalar.ph, !llvm.loop !543

_segment_gradients.exit:                          ; preds = %._crit_edge164.i, %.loopexit.i, %_segment_maxdistance.exit.thread, %_segment_maxdistance.exit
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 2 uses
  %exitcond733.not = icmp eq i64 %indvars.iv.next730, %wide.trip.count732
  br i1 %exitcond733.not, label %._crit_edge639, label %bb.bc

bb.dz:                                            ; preds = %.lr.ph641, %_add_poisson_noise.exit
  %indvars.iv734 = phi i64 [ 2, %.lr.ph641 ], [ %indvars.iv.next735, %_add_poisson_noise.exit ] ; 7 uses
  %i.byv = getelementptr inbounds nuw [4 x i8], ptr %i.bcu, i64 %indvars.iv734
  %i.byw = load float, ptr %i.byv, align 4, !tbaa !12
  %i.byx = fcmp reassoc nsz arcp contract afn ogt float %i.byw, 3.000000e+00
  br i1 %i.byx, label %bb.ea, label %_add_poisson_noise.exit

bb.ea:                                            ; preds = %bb.dz
  %i.byy = getelementptr inbounds nuw [4 x i8], ptr %i.bcw, i64 %indvars.iv734
  %i.byz = load i32, ptr %i.byy, align 4, !tbaa !15
  %..i525 = tail call i32 @llvm.smax.i32(i32 %i.byz, i32 %i.bcx) ; 2 uses
  %i.bza = getelementptr inbounds nuw [4 x i8], ptr %i.bcz, i64 %indvars.iv734
  %i.bzb = load i32, ptr %i.bza, align 4, !tbaa !15
  %i.bzc = add i32 %i.bzb, 1
  %i.bzd = tail call i32 @llvm.smin.i32(i32 %i.bzc, i32 %i.bdc) ; 2 uses
  %i.bze = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %indvars.iv734
  %i.bzf = load i32, ptr %i.bze, align 4, !tbaa !15
  %i.bzg = tail call i32 @llvm.smax.i32(i32 %i.bzf, i32 %i.bcx) ; 2 uses
  %i.bzh = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %indvars.iv734
  %i.bzi = load i32, ptr %i.bzh, align 4, !tbaa !15
  %i.bzj = add i32 %i.bzi, 1
  %i.bzk = tail call i32 @llvm.smin.i32(i32 %i.bzj, i32 %i.bdj) ; 2 uses
  %i.bzl = sext i32 %..i525 to i64                ; 3 uses
  %i.bzm = icmp slt i32 %i.bzg, %i.bzk
  %i.bzn = icmp slt i32 %..i525, %i.bzd
  %or.cond656 = select i1 %i.bzm, i1 %i.bzn, i1 false
  br i1 %or.cond656, label %.preheader.i529.preheader, label %_add_poisson_noise.exit

.preheader.i529.preheader:                        ; preds = %bb.ea
  %i.bzo = sext i32 %i.bzg to i64                 ; 3 uses
  %i.bzp = lshr i64 %i.bzo, 33
  %i.bzq = xor i64 %i.bzp, %i.bzo
  %i.bzr = mul i64 %i.bzq, 7109453100751455733    ; 2 uses
  %i.bzs = lshr i64 %i.bzr, 28
  %i.bzt = xor i64 %i.bzs, %i.bzr
  %i.bzu = mul i64 %i.bzt, -3808689974395783757
  %i.bzv = lshr i64 %i.bzu, 32
  %i.bzw = trunc nuw i64 %i.bzv to i32            ; 2 uses
  %i.bzx = xor i32 %i.bzw, 635086878              ; 2 uses
  %i.bzy = lshr i64 %i.bzl, 33
  %i.bzz = xor i64 %i.bzy, %i.bzl
  %i.caa = mul i64 %i.bzz, 7109453100751455733    ; 2 uses
  %i.cab = lshr i64 %i.caa, 28
  %i.cac = xor i64 %i.cab, %i.caa
  %i.cad = mul i64 %i.cac, -3808689974395783757
  %i.cae = lshr i64 %i.cad, 32
  %i.caf = trunc nuw i64 %i.cae to i32            ; 3 uses
  %i.cag = shl i32 %i.caf, 9
  %i.cah = xor i32 %i.bzx, %i.cag
  %i.cai = xor i32 %i.caf, -1171427716            ; 3 uses
  %i.caj = xor i32 %i.cai, %i.bzw                 ; 2 uses
  %i.cak = xor i32 %i.cah, %i.caj                 ; 2 uses
  %i.cal = xor i32 %i.bzx, %i.caf                 ; 3 uses
  %i.cam = shl i32 %i.cal, 9
  %i.can = xor i32 %i.cak, %i.cam
  %i.cao = tail call noundef i32 @llvm.fshl.i32(i32 %i.cai, i32 %i.cai, i32 11)
  %i.cap = xor i32 %i.cal, %i.cao                 ; 3 uses
  %i.caq = xor i32 %i.cap, %i.caj                 ; 2 uses
  %i.car = xor i32 %i.can, %i.caq                 ; 2 uses
  %i.cas = xor i32 %i.cak, %i.cal                 ; 3 uses
  %i.cat = xor i32 %i.car, %i.cas                 ; 3 uses
  %i.cau = tail call noundef i32 @llvm.fshl.i32(i32 %i.cap, i32 %i.cap, i32 11)
  %i.cav = xor i32 %i.cas, %i.cau                 ; 3 uses
  %i.caw = tail call noundef i32 @llvm.fshl.i32(i32 %i.cav, i32 %i.cav, i32 11)
  %i.cax = xor i32 %i.cat, %i.caw                 ; 3 uses
  %i.cay = tail call noundef i32 @llvm.fshl.i32(i32 %i.cax, i32 %i.cax, i32 11)
  %i.caz = shl i32 %i.cas, 9
  %i.cba = xor i32 %i.car, %i.caz
  %i.cbb = xor i32 %i.cav, %i.caq                 ; 2 uses
  %i.cbc = xor i32 %i.cba, %i.cbb                 ; 2 uses
  %i.cbd = shl i32 %i.cat, 9
  %i.cbe = xor i32 %i.cbc, %i.cbd
  %i.cbf = xor i32 %i.cax, %i.cbb
  %i.cbg = xor i32 %i.cbc, %i.cat
  br label %.preheader.i529

.preheader.i529:                                  ; preds = %.preheader.i529.preheader, %._crit_edge.i534
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i, %._crit_edge.i534 ], [ %i.bzo, %.preheader.i529.preheader ] ; 2 uses
  %.sroa.0.087.i = phi i32 [ %.sroa.0.2.i, %._crit_edge.i534 ], [ %i.cbf, %.preheader.i529.preheader ]
  %.sroa.13.086.i = phi i32 [ %.sroa.13.2.i, %._crit_edge.i534 ], [ %i.cbg, %.preheader.i529.preheader ]
  %.sroa.24.085.i = phi i32 [ %.sroa.24.2.i, %._crit_edge.i534 ], [ %i.cbe, %.preheader.i529.preheader ]
  %.sroa.35.084.i = phi i32 [ %.sroa.35.2.i, %._crit_edge.i534 ], [ %i.cay, %.preheader.i529.preheader ]
  %i.cbh = mul nsw i64 %indvars.iv91.i, %i.bdk
  br label %bb.eb

._crit_edge.i534:                                 ; preds = %bb.ec
  %indvars.iv.next92.i = add nsw i64 %indvars.iv91.i, 1 ; 2 uses
  %lftr.wideiv93.i = trunc i64 %indvars.iv.next92.i to i32
  %exitcond94.not.i = icmp eq i32 %i.bzk, %lftr.wideiv93.i
  br i1 %exitcond94.not.i, label %_add_poisson_noise.exit, label %.preheader.i529

bb.eb:                                            ; preds = %bb.ec, %.preheader.i529
  %indvars.iv.i530 = phi i64 [ %i.bzl, %.preheader.i529 ], [ %indvars.iv.next.i531, %bb.ec ] ; 3 uses
  %.sroa.0.179.i = phi i32 [ %.sroa.0.087.i, %.preheader.i529 ], [ %.sroa.0.2.i, %bb.ec ] ; 4 uses
  %.sroa.13.178.i = phi i32 [ %.sroa.13.086.i, %.preheader.i529 ], [ %.sroa.13.2.i, %bb.ec ] ; 4 uses
  %.sroa.24.177.i = phi i32 [ %.sroa.24.085.i, %.preheader.i529 ], [ %.sroa.24.2.i, %bb.ec ] ; 2 uses
  %.sroa.35.176.i = phi i32 [ %.sroa.35.084.i, %.preheader.i529 ], [ %.sroa.35.2.i, %bb.ec ] ; 3 uses
  %i.cbi = add nsw i64 %indvars.iv.i530, %i.cbh   ; 2 uses
  %i.cbj = getelementptr inbounds nuw [4 x i8], ptr %i.bdm, i64 %i.cbi
  %i.cbk = load i32, ptr %i.cbj, align 4, !tbaa !15
  %i.cbl = zext i32 %i.cbk to i64
  %i.cbm = icmp eq i64 %indvars.iv734, %i.cbl
  br i1 %i.cbm, label %poisson_noise.exit.i, label %bb.ec

poisson_noise.exit.i:                             ; preds = %bb.eb
  %i.cbn = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %i.cbi ; 2 uses
  %i.cbo = load float, ptr %i.cbn, align 4, !tbaa !12 ; 2 uses
  %i.cbp = fmul reassoc nsz arcp contract afn float %i.cbo, %i.bcr
  %i.cbq = shl i32 %.sroa.13.178.i, 9
  %i.cbr = xor i32 %.sroa.24.177.i, %.sroa.0.179.i ; 2 uses
  %i.cbs = xor i32 %.sroa.35.176.i, %.sroa.13.178.i ; 3 uses
  %i.cbt = xor i32 %i.cbr, %.sroa.13.178.i        ; 3 uses
  %i.cbu = xor i32 %i.cbs, %.sroa.0.179.i         ; 3 uses
  %i.cbv = xor i32 %i.cbr, %i.cbq
  %i.cbw = tail call noundef i32 @llvm.fshl.i32(i32 %i.cbs, i32 %i.cbs, i32 11) ; 2 uses
  %i.cbx = add i32 %i.cbw, %i.cbu
  %i.cby = shl i32 %i.cbt, 9
  %i.cbz = xor i32 %i.cbv, %i.cbu                 ; 2 uses
  %i.cca = xor i32 %i.cbw, %i.cbt                 ; 3 uses
  %i.ccb = xor i32 %i.cbz, %i.cbt
  %i.ccc = xor i32 %i.cca, %i.cbu
  %i.ccd = xor i32 %i.cbz, %i.cby
  %i.cce = tail call noundef i32 @llvm.fshl.i32(i32 %i.cca, i32 %i.cca, i32 11)
  %i.ccf = lshr i32 %i.cbx, 8
  %i.ccg = uitofp reassoc nsz arcp contract afn nneg i32 %i.ccf to float
  %i.cch = and i64 %indvars.iv.i530, 1
  %.not.i.i = icmp eq i64 %i.cch, 0
  %i.cci = fmul reassoc nnan nsz arcp contract afn float %i.ccg, f0x34C90FDB
  %sincos.i.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.cci) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  %.sink.i.i = select i1 %.not.i.i, float %sin.i.i, float %cos.i.i
  %i.ccj = add i32 %.sroa.35.176.i, %.sroa.0.179.i
  %i.cck = lshr i32 %i.ccj, 8
  %i.ccl = uitofp reassoc nsz arcp contract afn nneg i32 %i.cck to float
  %i.ccm = fmul reassoc nnan nsz arcp contract afn float %i.ccl, f0x33800000
  %i.ccn = tail call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.ccm, float f0x00800000)
  %i.cco = tail call fast float @llvm.log.f32(float %i.ccn)
  %i.ccp = fmul reassoc nnan nsz arcp contract afn float %i.cco, -2.000000e+00
  %i.ccq = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ccp)
  %i.ccr = fmul reassoc nsz arcp contract afn float %i.ccq, %i.bcr
  %i.ccs = fmul reassoc nsz arcp contract afn float %i.ccr, %.sink.i.i
  %i.cct = fadd reassoc nsz arcp contract afn float %i.cbp, 3.750000e-01
  %i.ccu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cct, float 0.000000e+00)
  %i.ccv = tail call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.ccu)
  %i.ccw = fmul reassoc nnan nsz arcp contract afn float %i.ccv, 2.000000e+00
  %i.ccx = fadd reassoc nsz arcp contract afn float %i.ccw, %i.ccs ; 2 uses
  %i.ccy = fmul reassoc nsz arcp contract afn float %i.ccx, %i.ccx
  %i.ccz = fsub reassoc nsz arcp contract afn float %i.ccy, %i.bdl
  %i.cda = fmul reassoc nsz arcp contract afn float %i.ccz, 2.500000e-01
  %i.cdb = fadd reassoc nsz arcp contract afn float %i.cbo, -3.750000e-01
  %i.cdc = fadd reassoc nsz arcp contract afn float %i.cdb, %i.cda
  store float %i.cdc, ptr %i.cbn, align 4, !tbaa !12
  br label %bb.ec

bb.ec:                                            ; preds = %poisson_noise.exit.i, %bb.eb
  %.sroa.35.2.i = phi i32 [ %i.cce, %poisson_noise.exit.i ], [ %.sroa.35.176.i, %bb.eb ] ; 2 uses
  %.sroa.24.2.i = phi i32 [ %i.ccd, %poisson_noise.exit.i ], [ %.sroa.24.177.i, %bb.eb ] ; 2 uses
  %.sroa.13.2.i = phi i32 [ %i.ccb, %poisson_noise.exit.i ], [ %.sroa.13.178.i, %bb.eb ] ; 2 uses
  %.sroa.0.2.i = phi i32 [ %i.ccc, %poisson_noise.exit.i ], [ %.sroa.0.179.i, %bb.eb ] ; 2 uses
  %indvars.iv.next.i531 = add nsw i64 %indvars.iv.i530, 1 ; 2 uses
  %lftr.wideiv.i532 = trunc i64 %indvars.iv.next.i531 to i32
  %exitcond.not.i533 = icmp eq i32 %i.bzd, %lftr.wideiv.i532
  br i1 %exitcond.not.i533, label %._crit_edge.i534, label %bb.eb

_add_poisson_noise.exit:                          ; preds = %._crit_edge.i534, %bb.ea, %bb.dz
  %indvars.iv.next735 = add nuw nsw i64 %indvars.iv734, 1 ; 2 uses
  %exitcond738.not = icmp eq i64 %indvars.iv.next735, %wide.trip.count737
  br i1 %exitcond738.not, label %.loopexit580, label %bb.dz

.loopexit580:                                     ; preds = %_add_poisson_noise.exit, %._crit_edge639, %._crit_edge639.thread
  %i.cdd = sitofp reassoc nsz arcp contract afn i32 %i.bm to float
  %i.cde = fadd reassoc nsz arcp contract afn float %i.cdd, 2.000000e+00 ; 2 uses
  %i.cdf = load i32, ptr %i.cf, align 4, !tbaa !78 ; 2 uses
  %i.cdg = add nsw i32 %i.cdf, -1
  %i.cdh = icmp sgt i32 %i.cdf, 2
  br i1 %i.cdh, label %.preheader578.lr.ph, label %.loopexit

.preheader578.lr.ph:                              ; preds = %.loopexit580
  %i.cdi = load i32, ptr %i.bz, align 4, !tbaa !79 ; 3 uses
  %i.cdj = icmp sgt i32 %i.cdi, 2
  %i.cdk = sext i32 %i.cdi to i64
  br i1 %i.cdj, label %.preheader578.preheader, label %.loopexit

.preheader578.preheader:                          ; preds = %.preheader578.lr.ph
  %i.cdl = add nsw i32 %i.cdi, -1                 ; 2 uses
  %wide.trip.count752 = zext nneg i32 %i.cdg to i64
  %wide.trip.count742 = zext i32 %i.cdl to i64
  %wide.trip.count747 = zext i32 %i.cdl to i64
  br label %.preheader578

.preheader578:                                    ; preds = %.preheader578.preheader, %._crit_edge644
  %indvars.iv749 = phi i64 [ 1, %.preheader578.preheader ], [ %indvars.iv.next750, %._crit_edge644 ] ; 5 uses
  %i.cdm = mul nuw nsw i64 %indvars.iv749, %i.cdk ; 2 uses
  %indvars.iv749.tr = trunc nuw i64 %indvars.iv749 to i32
  %i.cdn = shl nuw i32 %indvars.iv749.tr, 1
  %i.cdo = and i32 %i.cdn, 14
  %i.cdp = trunc i64 %indvars.iv749 to i32
  %i.cdq = add i32 %i.cdp, 600
  %i.cdr = urem i32 %i.cdq, 6
  %i.cds = zext nneg i32 %i.cdr to i64
  %i.cdt = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.cds
  %i.cdu = trunc nuw nsw i64 %indvars.iv749 to i32
  %i.cdv = udiv i32 %i.cdu, 3
  %i.cdw = add nuw nsw i32 %i.cdv, 8
  %i.cdx = mul nsw i32 %i.cdw, %i.dh
  %i.cdy = add i32 %i.cdx, 8                      ; 2 uses
  br i1 %.not453, label %fcol.exit537.us, label %fcol.exit537

fcol.exit537.us:                                  ; preds = %.preheader578, %bb.ee
  %indvars.iv744 = phi i64 [ %indvars.iv.next745, %bb.ee ], [ 1, %.preheader578 ] ; 4 uses
  %i.cdz = add nuw nsw i64 %i.cdm, %indvars.iv744 ; 2 uses
  %i.cea = trunc i64 %indvars.iv744 to i32
  %i.ceb = add i32 %i.cea, 600
  %i.cec = urem i32 %i.ceb, 6
  %i.ced = zext nneg i32 %i.cec to i64
  %i.cee = getelementptr inbounds nuw i8, ptr %i.cdt, i64 %i.ced
  %i.cef = load i8, ptr %i.cee, align 1, !tbaa !97
  %i.ceg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cdz
  %i.ceh = load float, ptr %i.ceg, align 4, !tbaa !12
  %i.cei = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ceh, float 0.000000e+00)
  %i.cej = zext i8 %i.cef to i64
  %i.cek = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cej
  %i.cel = load float, ptr %i.cek, align 4, !tbaa !12
  %i.cem = fcmp reassoc nsz arcp contract afn ogt float %i.cei, %i.cel
  br i1 %i.cem, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %fcol.exit537.us
  %i.cen = trunc nuw nsw i64 %indvars.iv744 to i32
  %i.ceo = udiv i32 %i.cen, 3
  %i.cep = add i32 %i.cdy, %i.ceo
  %i.ceq = sext i32 %i.cep to i64                 ; 2 uses
  %i.cer = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ceq
  %i.ces = load float, ptr %i.cer, align 4, !tbaa !12
  %i.cet = fsub reassoc nsz arcp contract afn float %i.cde, %i.ces
  %i.ceu = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cet)
  %i.cev = fadd reassoc nsz arcp contract afn float %i.ceu, 1.000000e+00
  %i.cew = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %i.ceq
  %i.cex = load float, ptr %i.cew, align 4, !tbaa !12
  %i.cey = fmul reassoc nsz arcp contract afn float %i.cex, %i.bj
  %i.cez = fdiv reassoc nsz arcp contract afn float %i.cey, %i.cev
  %i.cfa = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cez, float 0.000000e+00)
  %i.cfb = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cdz ; 2 uses
  %i.cfc = load float, ptr %i.cfb, align 4, !tbaa !12
  %i.cfd = fadd reassoc nsz arcp contract afn float %i.cfa, %i.cfc
  store float %i.cfd, ptr %i.cfb, align 4, !tbaa !12
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %fcol.exit537.us
  %indvars.iv.next745 = add nuw nsw i64 %indvars.iv744, 1 ; 2 uses
  %exitcond748.not = icmp eq i64 %indvars.iv.next745, %wide.trip.count747
  br i1 %exitcond748.not, label %._crit_edge644, label %fcol.exit537.us

._crit_edge644:                                   ; preds = %bb.eg, %bb.ee
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 1 ; 2 uses
  %exitcond753.not = icmp eq i64 %indvars.iv.next750, %wide.trip.count752
  br i1 %exitcond753.not, label %.loopexit, label %.preheader578

fcol.exit537:                                     ; preds = %.preheader578, %bb.eg
  %indvars.iv739 = phi i64 [ %indvars.iv.next740, %bb.eg ], [ 1, %.preheader578 ] ; 3 uses
  %i.cfe = add nuw nsw i64 %i.cdm, %indvars.iv739 ; 2 uses
  %i.cff = trunc nuw nsw i64 %indvars.iv739 to i32 ; 2 uses
  %i.cfg = and i32 %i.cff, 1
  %.tr.i.i535 = or disjoint i32 %i.cfg, %i.cdo
  %i.cfh = shl nuw nsw i32 %.tr.i.i535, 1
  %i.cfi = lshr i32 %i.j, %i.cfh
  %i.cfj = and i32 %i.cfi, 3
  %i.cfk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cfe
  %i.cfl = load float, ptr %i.cfk, align 4, !tbaa !12
  %i.cfm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cfl, float 0.000000e+00)
  %i.cfn = zext nneg i32 %i.cfj to i64
  %i.cfo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cfn
  %i.cfp = load float, ptr %i.cfo, align 4, !tbaa !12
  %i.cfq = fcmp reassoc nsz arcp contract afn ogt float %i.cfm, %i.cfp
  br i1 %i.cfq, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %fcol.exit537
  %i.cfr = udiv i32 %i.cff, 3
  %i.cfs = add i32 %i.cdy, %i.cfr
  %i.cft = sext i32 %i.cfs to i64                 ; 2 uses
  %i.cfu = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.cft
  %i.cfv = load float, ptr %i.cfu, align 4, !tbaa !12
  %i.cfw = fsub reassoc nsz arcp contract afn float %i.cde, %i.cfv
  %i.cfx = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cfw)
  %i.cfy = fadd reassoc nsz arcp contract afn float %i.cfx, 1.000000e+00
  %i.cfz = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %i.cft
  %i.cga = load float, ptr %i.cfz, align 4, !tbaa !12
  %i.cgb = fmul reassoc nsz arcp contract afn float %i.cga, %i.bj
  %i.cgc = fdiv reassoc nsz arcp contract afn float %i.cgb, %i.cfy
  %i.cgd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cgc, float 0.000000e+00)
  %i.cge = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cfe ; 2 uses
  %i.cgf = load float, ptr %i.cge, align 4, !tbaa !12
  %i.cgg = fadd reassoc nsz arcp contract afn float %i.cgd, %i.cgf
  store float %i.cgg, ptr %i.cge, align 4, !tbaa !12
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %fcol.exit537
  %indvars.iv.next740 = add nuw nsw i64 %indvars.iv739, 1 ; 2 uses
  %exitcond743.not = icmp eq i64 %indvars.iv.next740, %wide.trip.count742
  br i1 %exitcond743.not, label %._crit_edge644, label %fcol.exit537

.loopexit:                                        ; preds = %._crit_edge644, %.loopexit580, %.preheader578.lr.ph, %bb.as, %bb.ar
  %i.cgh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cgi = load i32, ptr %i.cgh, align 4, !tbaa !78 ; 2 uses
  %i.cgj = icmp sgt i32 %i.cgi, 0
  br i1 %i.cgj, label %.preheader.lr.ph, label %._crit_edge652.split

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.cgk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cgl = load i32, ptr %i.cgk, align 4, !tbaa !79 ; 3 uses
  %i.cgm = icmp sgt i32 %i.cgl, 0
  %i.cgn = sext i32 %i.cgl to i64                 ; 2 uses
  %i.cgo = icmp eq i32 %6, 1
  %i.cgp = getelementptr inbounds nuw i8, ptr %8, i64 372
  %i.cgq = load i32, ptr %i.cgp, align 4
  %i.cgr = getelementptr inbounds nuw i8, ptr %8, i64 376
  %i.cgs = load i32, ptr %i.cgr, align 8
  %i.cgt = getelementptr inbounds nuw i8, ptr %8, i64 364
  %i.cgu = load i32, ptr %i.cgt, align 4
  %i.cgv = sub nsw i32 %i.cgs, %i.cgu
  %i.cgw = mul nsw i32 %i.cgv, %i.cgq
  %i.cgx = load ptr, ptr %i.dq, align 16
  %i.cgy = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.cgz = load i32, ptr %i.cgy, align 8
  br i1 %i.cgm, label %.preheader.lr.ph.split, label %._crit_edge652.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.cha = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.chb = load i32, ptr %i.cha, align 4, !tbaa !75
  %i.chc = load i32, ptr %4, align 4, !tbaa !74
  %i.chd = shl nuw nsw i64 %i.cgn, 2
  %i.che = zext nneg i32 %i.cgl to i64            ; 2 uses
  %i.chf = shl nuw nsw i64 %i.che, 2
  %i.chg = sext i32 %i.chc to i64
  %i.chh = sext i32 %i.chb to i64
  %wide.trip.count768 = zext nneg i32 %i.cgi to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge648
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge648 ] ; 4 uses
  %i.chi = mul i64 %i.chd, %indvar
  %scevgep758 = getelementptr i8, ptr %2, i64 %i.chi
  %i.chj = add nsw i64 %indvar, %i.chh            ; 7 uses
  %i.chk = mul nuw nsw i64 %indvar, %i.cgn
  %i.chl = icmp sgt i64 %i.chj, -1
  %i.chm = trunc nsw i64 %i.chj to i32            ; 2 uses
end_hunk_3
begin_hunk_4_@_process_segmentation:bb.a

.lr.ph647.split.us:                               ; preds = %.preheader
  %i.chy = load i32, ptr %i.cf, align 4, !tbaa !78 ; 2 uses
  %i.chz = sext i32 %i.chy to i64
  %i.cia = icmp slt i64 %i.chj, %i.chz
  %i.cib = add nsw i32 %i.chy, -1
  %i.cic = sext i32 %i.cib to i64
  %i.cid = icmp samesign ult i64 %i.chj, %i.cic
  %.fr650 = freeze i1 %i.cia
  br i1 %.fr650, label %.lr.ph647.split.us.split, label %._crit_edge648.sink.split

.lr.ph647.split.us.split:                         ; preds = %.lr.ph647.split.us, %bb.eu
  %indvars.iv762 = phi i64 [ %indvars.iv.next763, %bb.eu ], [ 0, %.lr.ph647.split.us ] ; 3 uses
  %i.cie = add nsw i64 %indvars.iv762, %i.chg     ; 7 uses
  %i.cif = add nuw nsw i64 %i.chk, %indvars.iv762 ; 3 uses
  %i.cig = icmp sgt i64 %i.cie, -1
  br i1 %i.cig, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph647.split.us.split
  %i.cih = load i32, ptr %i.bz, align 4, !tbaa !79 ; 3 uses
  %i.cii = sext i32 %i.cih to i64
  %i.cij = icmp slt i64 %i.cie, %i.cii
  br i1 %i.cij, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.lr.ph647.split.us.split
  %i.cik = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cif
  store float 0.000000e+00, ptr %i.cik, align 4, !tbaa !12
  br label %bb.eu

bb.ej:                                            ; preds = %bb.eh
  %i.cil = trunc nuw nsw i64 %i.cie to i32        ; 2 uses
  %i.cim = udiv i32 %i.cil, 3
  %.reass649.us = add i32 %i.cim, %invariant.op   ; 3 uses
  %i.cin = sext i32 %.reass649.us to i64          ; 4 uses
  br i1 %i.ant, label %bb.ek, label %.thread552.us

.thread552.us:                                    ; preds = %bb.ej
  %i.cio = zext nneg i32 %i.cih to i64
  %i.cip = mul nuw nsw i64 %i.chj, %i.cio
  %i.ciq = getelementptr [4 x i8], ptr %7, i64 %i.cip
  %i.cir = getelementptr [4 x i8], ptr %i.ciq, i64 %i.cie
  %i.cis = load float, ptr %i.cir, align 4, !tbaa !12
  %i.cit = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cif
  store float %i.cis, ptr %i.cit, align 4, !tbaa !12
  br label %bb.eu

bb.ek:                                            ; preds = %bb.ej
  %i.ciu = getelementptr inbounds nuw [4 x i8], ptr %i.ano, i64 %i.cin
  %i.civ = load float, ptr %i.ciu, align 4, !tbaa !12
  %i.ciw = fmul reassoc nsz arcp contract afn float %i.civ, 2.000000e-01
  %i.cix = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ciw, float 2.000000e-01) ; 6 uses
  %i.ciy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cif ; 4 uses
  store float %i.cix, ptr %i.ciy, align 4, !tbaa !12
  %i.ciz = icmp ne i64 %i.cie, 0
  %or.cond11.us = and i1 %i.chq, %i.ciz
  %or.cond560.us = select i1 %or.cond11.us, i1 %i.cid, i1 false
  %i.cja = add nsw i32 %i.cih, -1
  %i.cjb = sext i32 %i.cja to i64
  %i.cjc = icmp samesign ult i64 %i.cie, %i.cjb
  %or.cond562.us = select i1 %or.cond560.us, i1 %i.cjc, i1 false
  br i1 %or.cond562.us, label %bb.el, label %bb.eu

bb.el:                                            ; preds = %bb.ek
  br i1 %.not453, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.cjd = and i32 %i.cil, 1
  %.tr.i.i538.us = or disjoint i32 %i.chs, %i.cjd
  %i.cje = shl nuw nsw i32 %.tr.i.i538.us, 1
  %i.cjf = lshr i32 %i.j, %i.cje
  %i.cjg = and i32 %i.cjf, 3
  br label %fcol.exit540.us

bb.en:                                            ; preds = %bb.el
  %i.cjh = trunc nuw nsw i64 %i.cie to i32
  %i.cji = add nuw i32 %i.cjh, 600
  %i.cjj = urem i32 %i.cji, 6
  %i.cjk = zext nneg i32 %i.cjj to i64
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.chx, i64 %i.cjk
  %i.cjm = load i8, ptr %i.cjl, align 1, !tbaa !97
  %i.cjn = zext i8 %i.cjm to i32
  br label %fcol.exit540.us

fcol.exit540.us:                                  ; preds = %bb.en, %bb.em
  %.0.i539.us = phi i32 [ %i.cjn, %bb.en ], [ %i.cjg, %bb.em ]
  %i.cjo = zext nneg i32 %.0.i539.us to i64
  %i.cjp = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %i.cjo ; 6 uses
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cjp, i64 84
  %i.cjr = load i32, ptr %i.cjq, align 4, !tbaa !19
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cjp, i64 88
  %i.cjt = load i32, ptr %i.cjs, align 8, !tbaa !20
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjp, i64 76
  %i.cjv = load i32, ptr %i.cju, align 4, !tbaa !21
  %i.cjw = sub nsw i32 %i.cjt, %i.cjv
  %i.cjx = mul nsw i32 %i.cjw, %i.cjr
  %.not.i541.us = icmp ult i32 %.reass649.us, %i.cjx
  br i1 %.not.i541.us, label %_get_segment_id.exit544.us, label %_get_segment_id.exit544.thread.us

_get_segment_id.exit544.us:                       ; preds = %fcol.exit540.us
  %i.cjy = load ptr, ptr %i.cjp, align 16, !tbaa !23
  %i.cjz = getelementptr inbounds nuw [4 x i8], ptr %i.cjy, i64 %i.cin
  %i.cka = load i32, ptr %i.cjz, align 4, !tbaa !15 ; 2 uses
  %i.ckb = and i32 %i.cka, 262143                 ; 3 uses
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.cjp, i64 72
  %i.ckd = load i32, ptr %i.ckc, align 8, !tbaa !34
  %i.cke = icmp ult i32 %i.ckb, %i.ckd
  %i.ckf = icmp samesign ugt i32 %i.ckb, 1
  %or.cond.i543.us = select i1 %i.cke, i1 %i.ckf, i1 false ; 3 uses
  %i.ckg = select i1 %or.cond.i543.us, i32 %i.ckb, i32 0
  %or.cond13.us = select i1 %i.cgo, i1 %or.cond.i543.us, i1 false
  br i1 %or.cond13.us, label %bb.et, label %_get_segment_id.exit544.thread.us

_get_segment_id.exit544.thread.us:                ; preds = %_get_segment_id.exit544.us, %fcol.exit540.us
  %i.ckh = phi i1 [ %or.cond.i543.us, %_get_segment_id.exit544.us ], [ false, %fcol.exit540.us ]
  %.0.i542557.us = phi i32 [ %i.ckg, %_get_segment_id.exit544.us ], [ 0, %fcol.exit540.us ]
  switch i32 %6, label %bb.eu [
    i32 2, label %bb.eq
    i32 3, label %bb.eo
  ]

bb.eo:                                            ; preds = %_get_segment_id.exit544.thread.us
  %.not.i545.us = icmp ult i32 %.reass649.us, %i.cgw
  br i1 %.not.i545.us, label %_get_segment_id.exit548.us, label %_get_segment_id.exit548.thread.us

_get_segment_id.exit548.us:                       ; preds = %bb.eo
  %i.cki = getelementptr inbounds nuw [4 x i8], ptr %i.cgx, i64 %i.cin
  %i.ckj = load i32, ptr %i.cki, align 4, !tbaa !15
  %i.ckk = and i32 %i.ckj, 262143                 ; 2 uses
  %i.ckl = icmp ult i32 %i.ckk, %i.cgz
  %i.ckm = icmp samesign ugt i32 %i.ckk, 1
  %or.cond.i547.us = select i1 %i.ckl, i1 %i.ckm, i1 false
  br i1 %or.cond.i547.us, label %bb.ep, label %_get_segment_id.exit548.thread.us

bb.ep:                                            ; preds = %_get_segment_id.exit548.us
  %i.ckn = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %i.cin
  %i.cko = load float, ptr %i.ckn, align 4, !tbaa !12
  %i.ckp = fmul reassoc nsz arcp contract afn float %i.cko, %i.bj
  %i.ckq = fadd reassoc nsz arcp contract afn float %i.ckp, %i.cix
  br label %_get_segment_id.exit548.thread.us

_get_segment_id.exit548.thread.us:                ; preds = %bb.ep, %_get_segment_id.exit548.us, %bb.eo
  %i.ckr = phi float [ %i.ckq, %bb.ep ], [ %i.cix, %_get_segment_id.exit548.us ], [ %i.cix, %bb.eo ]
  store float %i.ckr, ptr %i.ciy, align 4, !tbaa !12
  br label %bb.eu

bb.eq:                                            ; preds = %_get_segment_id.exit544.thread.us
  br i1 %i.ckh, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  %i.cks = getelementptr inbounds nuw i8, ptr %i.cjp, i64 56
  %i.ckt = load ptr, ptr %i.cks, align 8, !tbaa !30
  %i.cku = zext nneg i32 %.0.i542557.us to i64
  %i.ckv = getelementptr inbounds nuw [4 x i8], ptr %i.ckt, i64 %i.cku
  %i.ckw = load float, ptr %i.ckv, align 4, !tbaa !12
  %i.ckx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ckw)
  %i.cky = fcmp reassoc nsz arcp contract afn uge float %i.ckx, f0x3089705F
  br i1 %i.cky, label %bb.es, label %bb.eu

bb.es:                                            ; preds = %bb.er
  %i.ckz = fadd reassoc nsz arcp contract afn float %i.cix, 1.000000e+00
  store float %i.ckz, ptr %i.ciy, align 4, !tbaa !12
  br label %bb.eu

bb.et:                                            ; preds = %_get_segment_id.exit544.us
  %i.cla = and i32 %i.cka, 262144
  %.not456.us = icmp eq i32 %i.cla, 0
  %i.clb = select reassoc nsz arcp contract afn i1 %.not456.us, float 6.000000e-01, float 1.000000e+00
  %i.clc = fadd reassoc nsz arcp contract afn float %i.clb, %i.cix
  store float %i.clc, ptr %i.ciy, align 4, !tbaa !12
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es, %bb.er, %bb.eq, %_get_segment_id.exit548.thread.us, %_get_segment_id.exit544.thread.us, %bb.ek, %.thread552.us, %bb.ei
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 1 ; 2 uses
  %exitcond766.not = icmp eq i64 %indvars.iv.next763, %i.che
  br i1 %exitcond766.not, label %._crit_edge648, label %.lr.ph647.split.us.split

._crit_edge652.split:                             ; preds = %._crit_edge648, %.preheader.lr.ph, %.loopexit
  %i.cld = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !138
  %i.cle = and i32 %i.cld, 16
  %.not454.not = icmp eq i32 %i.cle, 0
  br i1 %.not454.not, label %bb.ew, label %bb.ev

._crit_edge648.sink.split:                        ; preds = %.lr.ph647.split.us, %.preheader
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep758, i8 0, i64 %i.chf, i1 false), !tbaa !12
  br label %._crit_edge648

._crit_edge648:                                   ; preds = %bb.eu, %._crit_edge648.sink.split
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond769.not = icmp eq i64 %indvar.next, %wide.trip.count768
  br i1 %exitcond769.not, label %._crit_edge652.split, label %.preheader

bb.ev:                                            ; preds = %._crit_edge652.split
  %i.clf = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.clg = getelementptr inbounds nuw i8, ptr %i.clf, i64 644
  %i.clh = load i32, ptr %i.clg, align 4, !tbaa !92
  %i.cli = tail call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.clh) #33
  %i.clj = load i32, ptr %i.bz, align 4, !tbaa !79
  %i.clk = load i32, ptr %i.cf, align 4, !tbaa !78
  %i.cll = mul nsw i32 %i.clk, %i.clj
  %i.clm = sitofp reassoc nsz arcp contract afn i32 %i.cll to float
  %i.cln = fmul reassoc nnan nsz arcp contract afn float %i.clm, f0x358637BD
  %i.clo = fpext reassoc nsz arcp contract afn float %i.cln to double
  %i.clp = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.clq = load i32, ptr %i.clp, align 8, !tbaa !34
  %i.clr = add nsw i32 %i.clq, -2
  %i.cls = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.clt = load i32, ptr %i.cls, align 8, !tbaa !34
  %i.clu = add nsw i32 %i.clt, -2
  %i.clv = getelementptr inbounds nuw i8, ptr %8, i64 264
  %i.clw = load i32, ptr %i.clv, align 8, !tbaa !34
  %i.clx = add nsw i32 %i.clw, -2
  %i.cly = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.clz = load i32, ptr %i.cly, align 8, !tbaa !34
  %i.cma = add nsw i32 %i.clz, -2
  %i.cmb = add nsw i32 %i.by, -2
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef %i.cli, double noundef %i.clo, i32 noundef %i.clr, i32 noundef %i.clu, i32 noundef %i.clx, i32 noundef %i.cma, i32 noundef %i.cmb) #33
  br label %bb.ew

bb.ew:                                            ; preds = %._crit_edge615, %bb.ev, %._crit_edge652.split, %bb.g, %bb.h
  %i.cmc = load ptr, ptr %8, align 16, !tbaa !23
  tail call void @free(ptr noundef %i.cmc) #33
  %i.cmd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cme = load ptr, ptr %i.cmd, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.cme) #33
  %i.cmf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cmg = load ptr, ptr %i.cmf, align 16, !tbaa !28
  tail call void @free(ptr noundef %i.cmg) #33
  %i.cmh = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cmi = load ptr, ptr %i.cmh, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.cmi) #33
  %i.cmj = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cmk = load ptr, ptr %i.cmj, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.cmk) #33
  %i.cml = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cmm = load ptr, ptr %i.cml, align 16, !tbaa !26
  tail call void @free(ptr noundef %i.cmm) #33
  %i.cmn = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cmo = load ptr, ptr %i.cmn, align 16, !tbaa !24
  tail call void @free(ptr noundef %i.cmo) #33
  %i.cmp = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.cmq = load ptr, ptr %i.cmp, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.cmq) #33
  %i.cmr = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.cms = load ptr, ptr %i.cmr, align 16, !tbaa !29
  tail call void @free(ptr noundef %i.cms) #33
  %i.cmt = load ptr, ptr %i.dk, align 16, !tbaa !23
  tail call void @free(ptr noundef %i.cmt) #33
  %i.cmu = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.cmv = load ptr, ptr %i.cmu, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.cmv) #33
  %i.cmw = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.cmx = load ptr, ptr %i.cmw, align 16, !tbaa !28
  tail call void @free(ptr noundef %i.cmx) #33
  %i.cmy = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.cmz = load ptr, ptr %i.cmy, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.cmz) #33
  %i.cna = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.cnb = load ptr, ptr %i.cna, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.cnb) #33
  %i.cnc = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.cnd = load ptr, ptr %i.cnc, align 16, !tbaa !26
  tail call void @free(ptr noundef %i.cnd) #33
  %i.cne = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.cnf = load ptr, ptr %i.cne, align 16, !tbaa !24
  tail call void @free(ptr noundef %i.cnf) #33
  %i.cng = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.cnh = load ptr, ptr %i.cng, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.cnh) #33
  %i.cni = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.cnj = load ptr, ptr %i.cni, align 16, !tbaa !29
  tail call void @free(ptr noundef %i.cnj) #33
  %i.cnk = load ptr, ptr %i.dn, align 16, !tbaa !23
  tail call void @free(ptr noundef %i.cnk) #33
  %i.cnl = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.cnm = load ptr, ptr %i.cnl, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.cnm) #33
  %i.cnn = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.cno = load ptr, ptr %i.cnn, align 16, !tbaa !28
  tail call void @free(ptr noundef %i.cno) #33
  %i.cnp = getelementptr inbounds nuw i8, ptr %8, i64 216
  %i.cnq = load ptr, ptr %i.cnp, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.cnq) #33
  %i.cnr = getelementptr inbounds nuw i8, ptr %8, i64 232
  %i.cns = load ptr, ptr %i.cnr, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.cns) #33
  %i.cnt = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.cnu = load ptr, ptr %i.cnt, align 16, !tbaa !26
  tail call void @free(ptr noundef %i.cnu) #33
  %i.cnv = getelementptr inbounds nuw i8, ptr %8, i64 240
  %i.cnw = load ptr, ptr %i.cnv, align 16, !tbaa !24
  tail call void @free(ptr noundef %i.cnw) #33
  %i.cnx = getelementptr inbounds nuw i8, ptr %8, i64 248
  %i.cny = load ptr, ptr %i.cnx, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.cny) #33
  %i.cnz = getelementptr inbounds nuw i8, ptr %8, i64 256
  %i.coa = load ptr, ptr %i.cnz, align 16, !tbaa !29
  tail call void @free(ptr noundef %i.coa) #33
  %i.cob = load ptr, ptr %i.dq, align 16, !tbaa !23
  tail call void @free(ptr noundef %i.cob) #33
  %i.coc = getelementptr inbounds nuw i8, ptr %8, i64 296
  %i.cod = load ptr, ptr %i.coc, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.cod) #33
  %i.coe = getelementptr inbounds nuw i8, ptr %8, i64 304
  %i.cof = load ptr, ptr %i.coe, align 16, !tbaa !28
  tail call void @free(ptr noundef %i.cof) #33
  %i.cog = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.coh = load ptr, ptr %i.cog, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.coh) #33
  %i.coi = getelementptr inbounds nuw i8, ptr %8, i64 328
  %i.coj = load ptr, ptr %i.coi, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.coj) #33
  %i.cok = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.col = load ptr, ptr %i.cok, align 16, !tbaa !26
  tail call void @free(ptr noundef %i.col) #33
  %i.com = getelementptr inbounds nuw i8, ptr %8, i64 336
  %i.con = load ptr, ptr %i.com, align 16, !tbaa !24
  tail call void @free(ptr noundef %i.con) #33
  %i.coo = getelementptr inbounds nuw i8, ptr %8, i64 344
  %i.cop = load ptr, ptr %i.coo, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.cop) #33
  %i.coq = getelementptr inbounds nuw i8, ptr %8, i64 352
  %i.cor = load ptr, ptr %i.coq, align 16, !tbaa !29
  tail call void @free(ptr noundef %i.cor) #33
  tail call void @free(ptr noundef %i.co) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.ex

bb.ex:                                            ; preds = %bb.d, %bb.e, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nounwind uwtable
define void @commit_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef captures(none) initializes((216, 220)) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !53  ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2152
  %i.g = load i32, ptr %i.f, align 8, !tbaa !147
  %i.h = tail call i32 @dt_image_is_rawprepare_supported(ptr noundef nonnull %i.e) #33
  %i.i = icmp eq i32 %i.g, 0                      ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i32 0, ptr %i.b, align 4, !tbaa !55
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.pr = load i32, ptr %i.b, align 4, !tbaa !55   ; 5 uses
  %i.j = icmp eq i32 %.pr, 5
  %i.k = select i1 %i.j, i1 %i.i, i1 false
  switch i32 %.pr, label %bb.c [
    i32 2, label %bb.d
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %.thread, %bb.b
  %i.l = phi i1 [ false, %.thread ], [ %i.k, %bb.b ]
  %i.m = phi i32 [ 0, %.thread ], [ %.pr, %bb.b ]
  %i.n = xor i1 %i.l, true
  %i.o = zext i1 %i.n to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %i.p = phi i32 [ %.pr, %bb.b ], [ %.pr, %bb.b ], [ %i.m, %bb.c ]
  %not. = phi i32 [ 0, %bb.b ], [ 0, %bb.b ], [ %i.o, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 2 uses
  store i32 %not., ptr %i.q, align 8, !tbaa !559
  %i.r = and i32 %i.p, -2
  %switch = icmp eq i32 %i.r, 4
  br i1 %switch, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 220
  store i32 0, ptr %i.s, align 4, !tbaa !560
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !91  ; 2 uses
  %.not30 = icmp eq ptr %i.u, null
  br i1 %.not30, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.w = getelementptr i8, ptr %i.v, i64 644
  %.val = load i32, ptr %i.w, align 4, !tbaa !92
  %i.x = and i32 %.val, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.z = load i32, ptr %i.y, align 8, !tbaa !94
  %i.aa = icmp eq i32 %i.z, 4
  %or.cond = select i1 %i.aa, i1 %i.i, i1 false
end_hunk_4
begin_hunk_5_@_calc_refavg:bb.a
  %i.dk = and i32 %i.dj, 3
  %i.dl = zext nneg i32 %i.dk to i64              ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dl ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !12
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, %i.dh
  store float %i.do, ptr %i.dm, align 4, !tbaa !12
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dl ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !12
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dq, 1.000000e+00
  store float %i.dr, ptr %i.dp, align 4, !tbaa !12
  br label %fcol.exit56.prol.loopexit

fcol.exit56.prol.loopexit:                        ; preds = %fcol.exit56.prol, %.preheader57
  %indvars.iv.unr = phi i64 [ %i.ak, %.preheader57 ], [ %i.aj, %fcol.exit56.prol ] ; 3 uses
  br i1 %i.as, label %._crit_edge.split, label %.preheader57.new

.preheader57.new:                                 ; preds = %fcol.exit56.prol.loopexit
  %i.ds = trunc i64 %indvars.iv.unr to i1
  %i.dt = xor i1 %i.ds, true
  %i.du = zext i1 %i.dt to i32
  %i.dv = trunc nsw i64 %indvars.iv.unr to i32
  %i.dw = and i32 %i.dv, 1
  %.tr.i.i54 = or disjoint i32 %i.dw, %i.de
  %i.dx = shl nuw nsw i32 %.tr.i.i54, 1
  %i.dy = lshr i32 %2, %i.dx
  %i.dz = and i32 %i.dy, 3
  %i.ea = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ea ; 2 uses
  %.tr.i.i54.1 = or disjoint i32 %i.de, %i.du
  %i.ed = shl nuw nsw i32 %.tr.i.i54.1, 1
  %i.ee = lshr i32 %2, %i.ed
  %i.ef = and i32 %i.ee, 3
  %i.eg = zext nneg i32 %i.ef to i64              ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eg ; 2 uses
  br label %fcol.exit56

.preheader:                                       ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader57.lr.ph, %fcol.exit
  %i.ej = load float, ptr %i.b, align 16, !tbaa !12 ; 2 uses
  %i.ek = fcmp reassoc nsz arcp contract afn ogt float %i.ej, 0.000000e+00
  br i1 %i.ek, label %bb.d, label %bb.e

._crit_edge.split:                                ; preds = %fcol.exit56, %fcol.exit56.prol.loopexit
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.el = icmp slt i64 %indvars.iv.next67, %i.an
  br i1 %i.el, label %.preheader57, label %.preheader

fcol.exit56:                                      ; preds = %fcol.exit56, %.preheader57.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.preheader57.new ], [ %indvars.iv.next.1, %fcol.exit56 ] ; 3 uses
  %i.em = getelementptr [4 x i8], ptr %i.db, i64 %indvars.iv
  %i.en = load float, ptr %i.em, align 4, !tbaa !12
  %i.eo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.en, float 0.000000e+00)
  %i.ep = load float, ptr %i.eb, align 4, !tbaa !12
  %i.eq = fadd reassoc nsz arcp contract afn float %i.ep, %i.eo
  store float %i.eq, ptr %i.eb, align 4, !tbaa !12
  %i.er = load float, ptr %i.ec, align 4, !tbaa !12
  %i.es = fadd reassoc nsz arcp contract afn float %i.er, 1.000000e+00
  store float %i.es, ptr %i.ec, align 4, !tbaa !12
  %i.et = getelementptr [4 x i8], ptr %i.db, i64 %indvars.iv
  %i.eu = getelementptr i8, ptr %i.et, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !12
  %i.ew = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ev, float 0.000000e+00)
  %i.ex = load float, ptr %i.eh, align 4, !tbaa !12
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ex, %i.ew
  store float %i.ey, ptr %i.eh, align 4, !tbaa !12
  %i.ez = load float, ptr %i.ei, align 4, !tbaa !12
  %i.fa = fadd reassoc nsz arcp contract afn float %i.ez, 1.000000e+00
  store float %i.fa, ptr %i.ei, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count72
  br i1 %exitcond.not.1, label %._crit_edge.split, label %fcol.exit56

bb.d:                                             ; preds = %.preheader
  %i.fb = load float, ptr %6, align 4, !tbaa !12
  %i.fc = load float, ptr %i.a, align 16, !tbaa !12
  %i.fd = fmul reassoc nsz arcp contract afn float %i.fc, %i.fb
  %i.fe = fdiv reassoc nsz arcp contract afn float %i.fd, %i.ej
  %i.ff = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.fe) #35
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.d
  %i.fg = phi reassoc nsz arcp contract afn float [ %i.ff, %bb.d ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !12 ; 2 uses
  %i.fj = fcmp reassoc nsz arcp contract afn ogt float %i.fi, 0.000000e+00
  br i1 %i.fj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !12
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !12
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, %i.fl
  %i.fp = fdiv reassoc nsz arcp contract afn float %i.fo, %i.fi
  %i.fq = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.fp) #35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.fr = phi reassoc nsz arcp contract afn float [ %i.fq, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ft = load float, ptr %i.fs, align 8, !tbaa !12 ; 2 uses
  %i.fu = fcmp reassoc nsz arcp contract afn ogt float %i.ft, 0.000000e+00
  br i1 %i.fu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !12
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fy = load float, ptr %i.fx, align 8, !tbaa !12
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fy, %i.fw
  %i.ga = fdiv reassoc nsz arcp contract afn float %i.fz, %i.ft
  %i.gb = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ga) #35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.gc = phi reassoc nsz arcp contract afn float [ %i.gb, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, %i.fr
  %i.ge = fadd reassoc nsz arcp contract afn float %i.fg, %i.gc
  %i.gf = fadd reassoc nsz arcp contract afn float %i.fg, %i.fr
  %i.gg = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.gd, i64 0
  %i.gh = insertelement <4 x float> %i.gg, float %i.ge, i64 1
  %i.gi = insertelement <4 x float> %i.gh, float %i.gf, i64 2
  %i.gj = fmul reassoc nsz arcp contract afn <4 x float> %i.gi, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00>
  store <4 x float> %i.gj, ptr %i.c, align 16, !tbaa !12
  %.not53 = icmp eq i32 %7, 0
  %i.gk = zext nneg i32 %.0.i to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !12 ; 4 uses
  %i.gn = fmul reassoc nsz arcp contract afn float %i.gm, %i.gm
  %i.go = fmul reassoc nsz arcp contract afn float %i.gn, %i.gm
  %i.gp = select reassoc nsz arcp contract afn i1 %.not53, float %i.gm, float %i.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret float %i.gp
}

declare void @dt_iop_image_fill(ptr noundef, float noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare float @dt_image_distance_transform(ptr noundef, ptr noundef, i64 noundef, i64 noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #14

declare ptr @dt_dev_pixelpipe_type_to_str(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #24

declare void @dt_box_mean(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

declare i32 @dt_iop_alloc_image_buffers(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @interpolate_bilinear(ptr noalias nofree noundef readonly captures(none) %0, i64 noundef range(i64 -2147483648, 4611686018427387904) %1, i64 noundef range(i64 -2147483648, 4611686018427387904) %2, ptr noalias nofree noundef writeonly captures(none) %3, i64 noundef range(i64 -2147483648, 4611686018427387904) %4, i64 noundef range(i64 -2147483648, 4611686018427387904) %5) unnamed_addr #16 {
bb.a:
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge94.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not95 = icmp eq i64 %4, 0
  %i.a = uitofp reassoc nsz arcp contract afn i64 %1 to float ; 2 uses
  %i.b = add nsw i64 %1, -1                       ; 3 uses
  %i.c = add nsw i64 %2, -1                       ; 2 uses
  br i1 %.not95, label %._crit_edge94.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.d = uitofp reassoc nsz arcp contract afn i64 %4 to float ; 2 uses
  %i.e = uitofp reassoc nsz arcp contract afn i64 %5 to float
  %i.f = uitofp reassoc nsz arcp contract afn i64 %2 to float
  %i.g = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.e
  %min.iters.check = icmp ult i64 %4, 8
  %n.vec = and i64 %4, -8                         ; 3 uses
  %broadcast.splatinsert5 = insertelement <8 x float> poison, float %i.a, i64 0
  %broadcast.splat6 = shufflevector <8 x float> %broadcast.splatinsert5, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert7 = insertelement <8 x float> poison, float %i.d, i64 0
  %broadcast.splat8 = shufflevector <8 x float> %broadcast.splatinsert7, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert9 = insertelement <8 x i64> poison, i64 %1, i64 0
  %broadcast.splat10 = shufflevector <8 x i64> %broadcast.splatinsert9, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert11 = insertelement <8 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat12 = shufflevector <8 x i64> %broadcast.splatinsert11, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.h = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat8
  %cmp.n = icmp eq i64 %4, %n.vec
  %i.i = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.d
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.08493 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %i.cl, %._crit_edge ] ; 3 uses
  %i.j = uitofp reassoc nsz arcp contract afn i64 %.08493 to float
  %i.k = fmul reassoc nnan nsz arcp contract afn float %i.f, %i.j
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, %i.g ; 2 uses
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.l)
  %i.n = fptoui float %i.m to i64                 ; 3 uses
  %i.o = add i64 %i.n, 1                          ; 2 uses
  %i.p = icmp ugt i64 %2, %i.n
  %i.q = select i1 %i.p, i64 %i.n, i64 %i.c
  %i.r = icmp ult i64 %i.o, %2
  %i.s = select i1 %i.r, i64 %i.o, i64 %i.c       ; 2 uses
  %i.t = mul i64 %i.q, %1                         ; 3 uses
  %i.u = mul i64 %i.s, %1                         ; 3 uses
  %i.v = uitofp reassoc nsz arcp contract afn i64 %i.s to float
  %i.w = fsub reassoc nsz arcp contract afn float %i.v, %i.l ; 2 uses
  %i.x = mul i64 %.08493, %4                      ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1 = insertelement <8 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat2 = shufflevector <8 x i64> %broadcast.splatinsert1, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3 = insertelement <8 x float> poison, float %i.w, i64 0 ; 2 uses
  %i.y = shufflevector <8 x float> %broadcast.splatinsert3, <8 x float> poison, <16 x i32> zeroinitializer
  %i.z = shufflevector <8 x float> %broadcast.splatinsert3, <8 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.aa = uitofp <8 x i64> %vec.ind to <8 x float>
  %i.ab = fmul reassoc nnan nsz arcp contract afn <8 x float> %broadcast.splat6, %i.aa
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.ab, %i.h ; 2 uses
  %i.ad = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.ac)
  %i.ae = fptoui <8 x float> %i.ad to <8 x i64>   ; 3 uses
  %i.af = add <8 x i64> %i.ae, splat (i64 1)      ; 2 uses
  %i.ag = icmp ugt <8 x i64> %broadcast.splat10, %i.ae
  %i.ah = select <8 x i1> %i.ag, <8 x i64> %i.ae, <8 x i64> %broadcast.splat12 ; 2 uses
  %i.ai = icmp ult <8 x i64> %i.af, %broadcast.splat10
  %i.aj = select <8 x i1> %i.ai, <8 x i64> %i.af, <8 x i64> %broadcast.splat12 ; 3 uses
  %i.ak = add <8 x i64> %i.ah, %broadcast.splat
  %i.al = shl <8 x i64> %i.ak, splat (i64 4)
  %wide.gep = getelementptr inbounds nuw i8, ptr %0, <8 x i64> %i.al ; 4 uses
  %i.am = add <8 x i64> %i.aj, %broadcast.splat
  %i.an = shl <8 x i64> %i.am, splat (i64 4)
  %wide.gep13 = getelementptr inbounds nuw i8, ptr %0, <8 x i64> %i.an ; 4 uses
  %i.ao = add <8 x i64> %i.aj, %broadcast.splat2
  %i.ap = shl <8 x i64> %i.ao, splat (i64 4)
  %wide.gep14 = getelementptr inbounds nuw i8, ptr %0, <8 x i64> %i.ap ; 4 uses
  %i.aq = add <8 x i64> %i.ah, %broadcast.splat2
  %i.ar = shl <8 x i64> %i.aq, splat (i64 4)
  %wide.gep15 = getelementptr inbounds nuw i8, ptr %0, <8 x i64> %i.ar ; 4 uses
  %i.as = uitofp <8 x i64> %i.aj to <8 x float>
  %i.at = fsub reassoc nsz arcp contract afn <8 x float> %i.as, %i.ac ; 7 uses
  %i.au = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.at ; 6 uses
  %i.av = add i64 %index, %i.x
  %i.aw = shl i64 %i.av, 4
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %i.aw
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep15, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.ay = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.at
  %wide.masked.gather16 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep14, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.az = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather16, %i.au
  %i.ba = fadd reassoc nsz arcp contract afn <8 x float> %i.az, %i.ay ; 2 uses
  %wide.masked.gather17 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.masked.gather18 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep13, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep19 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep15, i64 4
  %wide.masked.gather20 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep19, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bb = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather20, %i.at
  %wide.gep21 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep14, i64 4
  %wide.masked.gather22 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep21, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather22, %i.au
  %i.bd = fadd reassoc nsz arcp contract afn <8 x float> %i.bc, %i.bb ; 2 uses
  %wide.gep23 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather24 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep23, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep25 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep13, i64 4
  %wide.masked.gather26 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep25, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep27 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep15, i64 8
  %wide.masked.gather28 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep27, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.be = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather28, %i.at
  %wide.gep29 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep14, i64 8
  %wide.masked.gather30 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep29, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bf = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather30, %i.au
  %i.bg = fadd reassoc nsz arcp contract afn <8 x float> %i.bf, %i.be ; 2 uses
  %wide.gep31 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather32 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep31, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep33 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep13, i64 8
  %wide.masked.gather34 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep33, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep35 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep15, i64 12
  %wide.masked.gather36 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep35, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bh = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather36, %i.at
  %wide.gep37 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep14, i64 12
  %wide.masked.gather38 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep37, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bi = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather38, %i.au
  %i.bj = fadd reassoc nsz arcp contract afn <8 x float> %i.bi, %i.bh ; 2 uses
  %wide.gep39 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather40 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep39, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep41 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep13, i64 12
  %wide.masked.gather42 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep41, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bk = shufflevector <8 x float> %wide.masked.gather17, <8 x float> %wide.masked.gather24, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bl = shufflevector <8 x float> %i.at, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bm = fmul reassoc nsz arcp contract afn <16 x float> %i.bk, %i.bl
  %i.bn = shufflevector <8 x float> %i.ba, <8 x float> %i.bd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bo = fsub reassoc nsz arcp contract afn <16 x float> %i.bm, %i.bn
  %i.bp = shufflevector <8 x float> %wide.masked.gather18, <8 x float> %wide.masked.gather26, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bq = shufflevector <8 x float> %i.au, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.br = fmul reassoc nsz arcp contract afn <16 x float> %i.bp, %i.bq
  %i.bs = fadd reassoc nsz arcp contract afn <16 x float> %i.bo, %i.br
  %i.bt = fmul reassoc nsz arcp contract afn <16 x float> %i.bs, %i.y
  %i.bu = shufflevector <8 x float> %i.ba, <8 x float> %i.bd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bv = fadd reassoc nsz arcp contract afn <16 x float> %i.bt, %i.bu
  %i.bw = shufflevector <8 x float> %wide.masked.gather32, <8 x float> %wide.masked.gather40, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bx = shufflevector <8 x float> %i.at, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.by = fmul reassoc nsz arcp contract afn <16 x float> %i.bw, %i.bx
  %i.bz = shufflevector <8 x float> %i.bg, <8 x float> %i.bj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ca = fsub reassoc nsz arcp contract afn <16 x float> %i.by, %i.bz
  %i.cb = shufflevector <8 x float> %wide.masked.gather34, <8 x float> %wide.masked.gather42, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cc = shufflevector <8 x float> %i.au, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cd = fmul reassoc nsz arcp contract afn <16 x float> %i.cb, %i.cc
  %i.ce = fadd reassoc nsz arcp contract afn <16 x float> %i.ca, %i.cd
  %i.cf = fmul reassoc nsz arcp contract afn <16 x float> %i.ce, %i.z
  %i.cg = shufflevector <8 x float> %i.bg, <8 x float> %i.bj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ch = fadd reassoc nsz arcp contract afn <16 x float> %i.cf, %i.cg
  %interleaved.vec = shufflevector <16 x float> %i.bv, <16 x float> %i.ch, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ax, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !589

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.08392.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  %i.cj = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

._crit_edge94.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cl = add nuw i64 %.08493, 1                  ; 2 uses
  %exitcond96.not = icmp eq i64 %i.cl, %5
  br i1 %exitcond96.not, label %._crit_edge94.split, label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.08392 = phi i64 [ %i.ea, %scalar.ph ], [ %.08392.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = uitofp reassoc nsz arcp contract afn i64 %.08392 to float
  %i.cn = fmul reassoc nnan nsz arcp contract afn float %i.cm, %i.a
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.i ; 2 uses
  %i.cp = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.co)
  %i.cq = fptoui float %i.cp to i64               ; 3 uses
  %i.cr = add i64 %i.cq, 1                        ; 2 uses
  %i.cs = icmp ugt i64 %1, %i.cq
  %i.ct = select i1 %i.cs, i64 %i.cq, i64 %i.b    ; 2 uses
  %i.cu = icmp ult i64 %i.cr, %1
  %i.cv = select i1 %i.cu, i64 %i.cr, i64 %i.b    ; 3 uses
  %i.cw = add i64 %i.ct, %i.t
  %.idx = shl i64 %i.cw, 4
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.cy = add i64 %i.cv, %i.t
  %.idx87 = shl i64 %i.cy, 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx87
  %i.da = add i64 %i.cv, %i.u
  %.idx88 = shl i64 %i.da, 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %.idx88
  %i.dc = add i64 %i.ct, %i.u
  %.idx89 = shl i64 %i.dc, 4
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %.idx89
  %i.de = uitofp reassoc nsz arcp contract afn i64 %i.cv to float
  %i.df = fsub reassoc nsz arcp contract afn float %i.de, %i.co ; 2 uses
  %i.dg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.df
  %i.dh = add i64 %.08392, %i.x
  %.idx90 = shl i64 %i.dh, 4
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 %.idx90
  %i.dj = load <4 x float>, ptr %i.dd, align 4, !tbaa !12
  %i.dk = insertelement <4 x float> poison, float %i.df, i64 0
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dm = fmul reassoc nsz arcp contract afn <4 x float> %i.dj, %i.dl
  %i.dn = load <4 x float>, ptr %i.db, align 4, !tbaa !12
  %i.do = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dq = fmul reassoc nsz arcp contract afn <4 x float> %i.dn, %i.dp
  %i.dr = fadd reassoc nsz arcp contract afn <4 x float> %i.dq, %i.dm ; 2 uses
  %i.ds = load <4 x float>, ptr %i.cx, align 4, !tbaa !12
  %i.dt = fmul reassoc nsz arcp contract afn <4 x float> %i.ds, %i.dl
  %i.du = load <4 x float>, ptr %i.cz, align 4, !tbaa !12
  %i.dv = fmul reassoc nsz arcp contract afn <4 x float> %i.du, %i.dp
  %i.dw = fsub reassoc nsz arcp contract afn <4 x float> %i.dt, %i.dr
  %i.dx = fadd reassoc nsz arcp contract afn <4 x float> %i.dw, %i.dv
  %i.dy = fmul reassoc nsz arcp contract afn <4 x float> %i.dx, %i.ck
  %i.dz = fadd reassoc nsz arcp contract afn <4 x float> %i.dy, %i.dr
  store <4 x float> %i.dz, ptr %i.di, align 4, !tbaa !12
  %i.ea = add nuw i64 %.08392, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ea, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !590
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @wavelets_process(ptr noalias noundef %0, ptr noalias nofree noundef captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, i64 noundef range(i64 0, 4611686018427387904) %3, i64 noundef range(i64 0, 4611686018427387904) %4, i32 noundef range(i32 1, 13) %5, ptr noalias nofree noundef captures(none) %6, ptr noalias noundef %7, ptr noalias noundef %8, i32 noundef range(i32 0, 2) %9, float noundef %10, i32 noundef range(i32 0, 2) %11, float noundef %12) unnamed_addr #26 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 9 uses
  %i.b = alloca [9 x [4 x float]], align 16       ; 13 uses
  %i.c = alloca [4 x float], align 16             ; 4 uses
  %i.d = alloca [4 x float], align 16             ; 4 uses
  %i.e = alloca [64 x i8], align 16               ; 6 uses
  %i.f = shl nuw i64 %3, 2                        ; 5 uses
  %i.g = shl i64 %3, 4
  %i.h = add i64 %i.g, 48
  %i.i = and i64 %i.h, -64
  %i.j = tail call ptr @dt_alloc_aligned(i64 noundef %i.i) #33 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.j, i64 64) ]
  %.not.i = icmp eq i64 %4, 0                     ; 3 uses
  %i.k = add nsw i32 %5, -1
  %i.l = trunc i64 %4 to i32                      ; 9 uses
  %invariant.op.i = add i32 %i.l, -1              ; 5 uses
  %i.m = add nsw i64 %4, -1                       ; 2 uses
  %.not.i40.i = icmp eq i64 %3, 0                 ; 3 uses
  %i.n = add nsw i64 %3, -1                       ; 3 uses
  %i.o = icmp eq i32 %9, 0
  %i.p = trunc i64 %3 to i32                      ; 3 uses
  %i.q = add i32 %i.p, -1                         ; 2 uses
  %reass.add105 = fsub reassoc nsz arcp contract afn float -3.000000e+00, %12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  %i.ac = icmp ne i32 %11, 0
  %min.iters.check256 = icmp samesign ult i64 %3, 4
  %n.vec258 = and i64 %3, 4611686018427387900     ; 3 uses
  %cmp.n289 = icmp eq i64 %3, %n.vec258
  %min.iters.check = icmp samesign ult i64 %3, 8
  %n.vec = and i64 %3, 4611686018427387896        ; 3 uses
  %broadcast.splatinsert210 = insertelement <8 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat211 = shufflevector <8 x i64> %broadcast.splatinsert210, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %i.ad = insertelement <2 x float> poison, float %reass.add105, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = insertelement <2 x float> poison, float %10, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.b:                                             ; preds = %bb.aa
  call void @free(ptr noundef %i.j) #33
  ret void

bb.c:                                             ; preds = %bb.a, %bb.aa
  %.054119 = phi i32 [ 0, %bb.a ], [ %i.aeh, %bb.aa ] ; 15 uses
  %i.ah = shl nuw nsw i32 1, %.054119             ; 24 uses
  %.not147.not = icmp eq i32 %.054119, 0          ; 3 uses
  %i.ai = and i32 %.054119, 1
  %.not = icmp eq i32 %i.ai, 0                    ; 2 uses
  %. = select i1 %.not, ptr %8, ptr %7
  %.053 = select i1 %.not147.not, ptr %0, ptr %.  ; 13 uses
  %.0 = select i1 %.not, ptr %7, ptr %8           ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  br i1 %.not.i, label %decompose_2D_Bspline.exit, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %bb.c
  %.not.i.i = icmp slt i32 %i.ah, %i.l
  %.reass.i = add nuw i32 %invariant.op.i, %i.ah
  %i.aj = shl nuw nsw i32 2, %.054119             ; 4 uses
  %i.ak = zext nneg i32 %i.ah to i64              ; 3 uses
  %i.al = zext nneg i32 %i.aj to i64              ; 3 uses
  %i.am = add nsw i32 %i.ah, -1
  %i.an = and i32 %i.am, %i.l                     ; 3 uses
  %i.ao = icmp eq i32 %i.an, 0
  %scevgep = getelementptr i8, ptr %.053, i64 12
  %scevgep112 = getelementptr i8, ptr %.053, i64 -4
  %scevgep113 = getelementptr i8, ptr %.053, i64 8
  %scevgep114 = getelementptr i8, ptr %.053, i64 -8
  %scevgep115 = getelementptr i8, ptr %.053, i64 4
  %scevgep116 = getelementptr i8, ptr %.053, i64 -12
  %scevgep117 = getelementptr i8, ptr %.0, i64 12
  %scevgep118 = getelementptr i8, ptr %.0, i64 -4
  %scevgep119 = getelementptr i8, ptr %.0, i64 8
  %scevgep120 = getelementptr i8, ptr %.0, i64 -8
  %scevgep121 = getelementptr i8, ptr %.0, i64 4
  %scevgep122 = getelementptr i8, ptr %.0, i64 -12
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert206 = insertelement <8 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat207 = shufflevector <8 x i32> %broadcast.splatinsert206, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert208 = insertelement <8 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat209 = shufflevector <8 x i64> %broadcast.splatinsert208, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert212 = insertelement <8 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat213 = shufflevector <8 x i64> %broadcast.splatinsert212, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph66.i
  %.03764.i = phi i64 [ 0, %.lr.ph66.i ], [ %i.ht, %._crit_edge.i ] ; 2 uses
  %i.ap = trunc i64 %.03764.i to i32              ; 5 uses
  br i1 %.not.i.i, label %bb.e, label %dwt_interleave_rows.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aq = sdiv i32 %.reass.i, %i.ah               ; 4 uses
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = mul nsw i32 %i.an, %i.aq                ; 2 uses
  %i.as = icmp sgt i32 %i.ar, %i.ap
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.at = sdiv i32 %i.ap, %i.aq
  %i.au = srem i32 %i.ap, %i.aq
  %i.av = shl nsw i32 %i.au, %.054119
  %i.aw = add nsw i32 %i.av, %i.at
  br label %dwt_interleave_rows.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ax = sub nsw i32 %i.ap, %i.ar                ; 2 uses
  %i.ay = add nsw i32 %i.aq, -1                   ; 2 uses
  %i.az = sdiv i32 %i.ax, %i.ay
  %i.ba = add nsw i32 %i.az, %i.an
  %i.bb = srem i32 %i.ax, %i.ay
  %i.bc = shl nsw i32 %i.bb, %.054119
  %i.bd = add nsw i32 %i.ba, %i.bc
  br label %dwt_interleave_rows.exit.i

dwt_interleave_rows.exit.i:                       ; preds = %bb.h, %bb.g, %bb.d
  %.1.i.i = phi i32 [ %i.ap, %bb.d ], [ %i.aw, %bb.g ], [ %i.bd, %bb.h ] ; 3 uses
  %i.be = sext i32 %.1.i.i to i64                 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.bf = sub nsw i32 %.1.i.i, %i.aj
  %i.bg = call i32 @llvm.smax.i32(i32 %i.bf, i32 0)
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = mul i64 %i.f, %i.bh                     ; 2 uses
  %i.bj = sub nsw i32 %.1.i.i, %i.ah
  %i.bk = call i32 @llvm.smax.i32(i32 %i.bj, i32 0)
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = mul i64 %i.f, %i.bl                     ; 2 uses
  %i.bn = mul i64 %i.f, %i.be                     ; 2 uses
  %i.bo = add nsw i64 %i.be, %i.ak
  %..i.i = call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.m)
  %i.bp = mul i64 %..i.i, %i.f                    ; 2 uses
  %i.bq = add nsw i64 %i.be, %i.al
  %i.br = call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.m)
  %i.bs = mul i64 %i.br, %i.f                     ; 2 uses
  br i1 %.not.i40.i, label %._crit_edge.i, label %.lr.ph.i.i.preheader

end_hunk_5
begin_hunk_6_@wavelets_process:bb.a
  %i.mw = fmul reassoc nsz arcp contract afn <4 x float> %i.mv, %i.mv
  %i.mx = fadd reassoc nsz arcp contract afn <4 x float> %i.mu, %i.mw
  %i.my = fsub reassoc nsz arcp contract afn <4 x float> %i.mb, %i.mp ; 3 uses
  %i.mz = fmul reassoc nsz arcp contract afn <4 x float> %i.my, %i.my
  %i.na = fadd reassoc nsz arcp contract afn <4 x float> %i.mx, %i.mz
  %i.nb = fsub reassoc nsz arcp contract afn <4 x float> %i.mc, %i.mp ; 3 uses
  %i.nc = fmul reassoc nsz arcp contract afn <4 x float> %i.nb, %i.nb
  %i.nd = fadd reassoc nsz arcp contract afn <4 x float> %i.na, %i.nc
  %i.ne = fsub reassoc nsz arcp contract afn <4 x float> %i.md, %i.mp ; 3 uses
  %i.nf = fmul reassoc nsz arcp contract afn <4 x float> %i.ne, %i.ne
  %i.ng = fadd reassoc nsz arcp contract afn <4 x float> %i.nd, %i.nf
  %i.nh = fsub reassoc nsz arcp contract afn <4 x float> %i.me, %i.mp ; 3 uses
  %i.ni = fmul reassoc nsz arcp contract afn <4 x float> %i.nh, %i.nh
  %i.nj = fadd reassoc nsz arcp contract afn <4 x float> %i.ng, %i.ni
  %i.nk = fsub reassoc nsz arcp contract afn <4 x float> %i.mf, %i.mp ; 3 uses
  %i.nl = fmul reassoc nsz arcp contract afn <4 x float> %i.nk, %i.nk
  %i.nm = fadd reassoc nsz arcp contract afn <4 x float> %i.nj, %i.nl
  %i.nn = fsub reassoc nsz arcp contract afn <4 x float> %i.mg, %i.mp ; 3 uses
  %i.no = fmul reassoc nsz arcp contract afn <4 x float> %i.nn, %i.nn
  %i.np = fadd reassoc nsz arcp contract afn <4 x float> %i.nm, %i.no
  %i.nq = fmul reassoc nsz arcp contract afn <4 x float> %i.np, splat (float f0x3DE38E39) ; 4 uses
  store <4 x float> %i.nq, ptr %i.d, align 16, !tbaa !12, !noalias !626
  %i.nr = extractelement <4 x float> %i.nq, i64 0 ; 2 uses
  %i.ns = fcmp reassoc nsz arcp contract afn ogt float %i.nr, 0.000000e+00 ; 2 uses
  %spec.select.i66 = select i1 %i.ns, i64 0, i64 3
  %spec.select270.i = select nsz i1 %i.ns, float %i.nr, float 0.000000e+00 ; 2 uses
  %i.nt = extractelement <4 x float> %i.nq, i64 1 ; 2 uses
  %i.nu = fcmp reassoc nsz arcp contract afn ogt float %i.nt, %spec.select270.i ; 2 uses
  %spec.select.1.i = select i1 %i.nu, i64 1, i64 %spec.select.i66
  %spec.select270.1.i = select nsz i1 %i.nu, float %i.nt, float %spec.select270.i
  %i.nv = extractelement <4 x float> %i.nq, i64 2
  %i.nw = fcmp reassoc nsz arcp contract afn ogt float %i.nv, %spec.select270.1.i
  %spec.select.2.i = select i1 %i.nw, i64 2, i64 %spec.select.1.i ; 12 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %spec.select.2.i
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !12, !noalias !626 ; 13 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %spec.select.2.i
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !12, !noalias !626
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %spec.select.2.i
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !12, !noalias !626
  %i.od = fsub reassoc nsz arcp contract afn float %i.oa, %i.ny
  %factor.op.fmul.i = fmul reassoc nsz arcp contract afn float %i.od, f0x3DE38E39
  %i.oe = insertelement <4 x float> poison, float %factor.op.fmul.i, i64 0
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.og = fmul reassoc nsz arcp contract afn <4 x float> %i.of, %i.mq
  %i.oh = fsub reassoc nsz arcp contract afn float %i.oc, %i.ny
  %factor.op.fmul.1.i = fmul reassoc nsz arcp contract afn float %i.oh, f0x3DE38E39
  %i.oi = insertelement <4 x float> poison, float %factor.op.fmul.1.i, i64 0
  %i.oj = shufflevector <4 x float> %i.oi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ok = fmul reassoc nsz arcp contract afn <4 x float> %i.oj, %i.ms
  %i.ol = fadd reassoc nsz arcp contract afn <4 x float> %i.ok, %i.og
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %spec.select.2.i
  %i.on = load float, ptr %i.om, align 4, !tbaa !12, !noalias !626
  %i.oo = fsub reassoc nsz arcp contract afn float %i.on, %i.ny
  %factor.op.fmul.2.i = fmul reassoc nsz arcp contract afn float %i.oo, f0x3DE38E39
  %i.op = insertelement <4 x float> poison, float %factor.op.fmul.2.i, i64 0
  %i.oq = shufflevector <4 x float> %i.op, <4 x float> poison, <4 x i32> zeroinitializer
  %i.or = fmul reassoc nsz arcp contract afn <4 x float> %i.oq, %i.mv
  %i.os = fadd reassoc nsz arcp contract afn <4 x float> %i.ol, %i.or
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %spec.select.2.i
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !12, !noalias !626
  %i.ov = fsub reassoc nsz arcp contract afn float %i.ou, %i.ny
  %factor.op.fmul.3.i = fmul reassoc nsz arcp contract afn float %i.ov, f0x3DE38E39
  %i.ow = insertelement <4 x float> poison, float %factor.op.fmul.3.i, i64 0
  %i.ox = shufflevector <4 x float> %i.ow, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oy = fmul reassoc nsz arcp contract afn <4 x float> %i.ox, %i.my
  %i.oz = fadd reassoc nsz arcp contract afn <4 x float> %i.os, %i.oy
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %spec.select.2.i
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !12, !noalias !626
  %i.pc = fsub reassoc nsz arcp contract afn float %i.pb, %i.ny
  %factor.op.fmul.4.i = fmul reassoc nsz arcp contract afn float %i.pc, f0x3DE38E39
  %i.pd = insertelement <4 x float> poison, float %factor.op.fmul.4.i, i64 0
  %i.pe = shufflevector <4 x float> %i.pd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pf = fmul reassoc nsz arcp contract afn <4 x float> %i.pe, %i.nb
  %i.pg = fadd reassoc nsz arcp contract afn <4 x float> %i.oz, %i.pf
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %spec.select.2.i
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !12, !noalias !626
  %i.pj = fsub reassoc nsz arcp contract afn float %i.pi, %i.ny
  %factor.op.fmul.5.i = fmul reassoc nsz arcp contract afn float %i.pj, f0x3DE38E39
  %i.pk = insertelement <4 x float> poison, float %factor.op.fmul.5.i, i64 0
  %i.pl = shufflevector <4 x float> %i.pk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pm = fmul reassoc nsz arcp contract afn <4 x float> %i.pl, %i.ne
  %i.pn = fadd reassoc nsz arcp contract afn <4 x float> %i.pg, %i.pm
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %spec.select.2.i
  %i.pp = load float, ptr %i.po, align 4, !tbaa !12, !noalias !626
  %i.pq = fsub reassoc nsz arcp contract afn float %i.pp, %i.ny
  %factor.op.fmul.6.i = fmul reassoc nsz arcp contract afn float %i.pq, f0x3DE38E39
  %i.pr = insertelement <4 x float> poison, float %factor.op.fmul.6.i, i64 0
  %i.ps = shufflevector <4 x float> %i.pr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pt = fmul reassoc nsz arcp contract afn <4 x float> %i.ps, %i.nh
  %i.pu = fadd reassoc nsz arcp contract afn <4 x float> %i.pn, %i.pt
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %spec.select.2.i
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !12, !noalias !626
  %i.px = fsub reassoc nsz arcp contract afn float %i.pw, %i.ny
  %factor.op.fmul.7.i = fmul reassoc nsz arcp contract afn float %i.px, f0x3DE38E39
  %i.py = insertelement <4 x float> poison, float %factor.op.fmul.7.i, i64 0
  %i.pz = shufflevector <4 x float> %i.py, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qa = fmul reassoc nsz arcp contract afn <4 x float> %i.pz, %i.nk
  %i.qb = fadd reassoc nsz arcp contract afn <4 x float> %i.pu, %i.qa
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %spec.select.2.i
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !12, !noalias !626
  %i.qe = fsub reassoc nsz arcp contract afn float %i.qd, %i.ny
  %factor.op.fmul.8.i = fmul reassoc nsz arcp contract afn float %i.qe, f0x3DE38E39
  %i.qf = insertelement <4 x float> poison, float %factor.op.fmul.8.i, i64 0
  %i.qg = shufflevector <4 x float> %i.qf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qh = fmul reassoc nsz arcp contract afn <4 x float> %i.qg, %i.nn
  %i.qi = fadd reassoc nsz arcp contract afn <4 x float> %i.qb, %i.qh
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kt
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !12, !alias.scope !624
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ky
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !12, !alias.scope !624
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kz
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !12, !alias.scope !624
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %spec.select.2.i
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !12, !noalias !626
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %spec.select.2.i ; 4 uses
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !12, !noalias !626
  %reass.add.i = fsub reassoc nsz arcp contract afn float %i.qs, %i.ny
  %i.qt = extractelement <4 x float> %i.la, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.mp, %i.la
  %.neg292.i = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.qu = extractelement <4 x float> %i.la, i64 1
  %foldExtExtBinop292 = fsub reassoc nsz arcp contract afn <4 x float> %i.mp, %i.la
  %.neg292.1.i = extractelement <4 x float> %foldExtExtBinop292, i64 1
  %i.qv = extractelement <4 x float> %i.la, i64 2
  %foldExtExtBinop294 = fsub reassoc nsz arcp contract afn <4 x float> %i.mp, %i.la
  %.neg292.2.i = extractelement <4 x float> %foldExtExtBinop294, i64 2
  %i.qw = insertelement <4 x float> poison, float %i.qq, i64 0
  %i.qx = shufflevector <4 x float> %i.qw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qy = fdiv reassoc nsz arcp contract afn <4 x float> %i.qi, %i.qx
  %i.qz = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.qy, <4 x float> zeroinitializer) ; 4 uses
  %i.ra = extractelement <4 x float> %i.qz, i64 0
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, %i.ra
  %i.rb = fadd reassoc nsz arcp contract afn float %.neg292.i, %reass.mul.i
  %i.rc = fmul reassoc nsz arcp contract afn float %i.rb, %i.qk
  %i.rd = fmul reassoc nsz arcp contract afn float %i.rc, %i.jn
  %i.re = extractelement <4 x float> %i.la, i64 3
  %foldExtExtBinop296 = fsub reassoc nsz arcp contract afn <4 x float> %i.mp, %i.la
  %.neg292.3.i = extractelement <4 x float> %foldExtExtBinop296, i64 3
  %i.rf = fadd reassoc nsz arcp contract afn float %i.rd, %i.qt ; 2 uses
  store float %i.rf, ptr %i.a, align 16, !tbaa !12, !noalias !626
  %i.rg = load float, ptr %i.qr, align 4, !tbaa !12, !noalias !626
  %reass.add.1.i = fsub reassoc nsz arcp contract afn float %i.rg, %i.ny
  %i.rh = extractelement <4 x float> %i.qz, i64 1
  %reass.mul.1.i = fmul reassoc nsz arcp contract afn float %reass.add.1.i, %i.rh
  %i.ri = fadd reassoc nsz arcp contract afn float %.neg292.1.i, %reass.mul.1.i
  %i.rj = fmul reassoc nsz arcp contract afn float %i.ri, %i.qm
  %i.rk = fmul reassoc nsz arcp contract afn float %i.rj, %i.jo
  %i.rl = fadd reassoc nsz arcp contract afn float %i.rk, %i.qu ; 2 uses
  store float %i.rl, ptr %i.r, align 4, !tbaa !12, !noalias !626
  %i.rm = load float, ptr %i.qr, align 4, !tbaa !12, !noalias !626
  %reass.add.2.i = fsub reassoc nsz arcp contract afn float %i.rm, %i.ny
  %i.rn = extractelement <4 x float> %i.qz, i64 2
  %reass.mul.2.i = fmul reassoc nsz arcp contract afn float %reass.add.2.i, %i.rn
  %i.ro = fadd reassoc nsz arcp contract afn float %.neg292.2.i, %reass.mul.2.i
  %i.rp = fmul reassoc nsz arcp contract afn float %i.ro, %i.qo
  %i.rq = fmul reassoc nsz arcp contract afn float %i.rp, %i.jp
  %i.rr = fadd reassoc nsz arcp contract afn float %i.rq, %i.qv ; 2 uses
  store float %i.rr, ptr %i.s, align 8, !tbaa !12, !noalias !626
  %i.rs = load float, ptr %i.qr, align 4, !tbaa !12, !noalias !626
  %reass.add.3.i = fsub reassoc nsz arcp contract afn float %i.rs, %i.ny
  %i.rt = extractelement <4 x float> %i.qz, i64 3
  %reass.mul.3.i = fmul reassoc nsz arcp contract afn float %reass.add.3.i, %i.rt
  %i.ru = fadd reassoc nsz arcp contract afn float %.neg292.3.i, %reass.mul.3.i
  %i.rv = fmul reassoc nsz arcp contract afn float %i.ru, %i.kw
  %i.rw = fmul reassoc nsz arcp contract afn float %i.rv, %i.jq
  %i.rx = fadd reassoc nsz arcp contract afn float %i.rw, %i.re ; 2 uses
  store float %i.rx, ptr %i.t, align 4, !tbaa !12, !noalias !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33, !noalias !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33, !noalias !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33, !noalias !626
  %i.ry = insertelement <4 x float> poison, float %i.rf, i64 0
  %i.rz = insertelement <4 x float> %i.ry, float %i.rl, i64 1
  %i.sa = insertelement <4 x float> %i.rz, float %i.rr, i64 2
  %i.sb = insertelement <4 x float> %i.sa, float %i.rx, i64 3
  br label %bb.p

bb.p:                                             ; preds = %.preheader294.i, %bb.o
  %i.sc = phi <4 x float> [ %i.sb, %.preheader294.i ], [ %i.la, %bb.o ]
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kt ; 7 uses
  br i1 %.not147.not, label %.preheader297.i, label %.preheader296.i

.preheader297.i:                                  ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.sd, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa !12, !noalias !628
  br label %.loopexit.i

.preheader296.i:                                  ; preds = %bb.p
  %i.se = load <4 x float>, ptr %i.sd, align 16, !tbaa !12, !alias.scope !625
  %i.sf = fadd reassoc nsz arcp contract afn <4 x float> %i.se, %i.sc
  store <4 x float> %i.sf, ptr %i.sd, align 16, !tbaa !12, !alias.scope !625
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader296.i, %.preheader297.i
  br i1 %.not80, label %.preheader295.preheader.i, label %.thread290.i

.preheader295.preheader.i:                        ; preds = %.loopexit.i
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.kt
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ky
  %i.si = load <2 x float>, ptr %i.sd, align 16, !tbaa !12, !alias.scope !625
  %i.sj = load <2 x float>, ptr %i.sg, align 16, !tbaa !12, !alias.scope !623
  %i.sk = fadd reassoc nsz arcp contract afn <2 x float> %i.sj, %i.si
  %i.sl = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.sk, <2 x float> zeroinitializer) ; 5 uses
  %i.sm = extractelement <2 x float> %i.sl, i64 1
  store float %i.sm, ptr %i.sh, align 4, !tbaa !12, !alias.scope !625
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kz ; 2 uses
  %i.so = load float, ptr %i.sn, align 8, !tbaa !12, !alias.scope !625
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.kz
  %i.sq = load float, ptr %i.sp, align 8, !tbaa !12, !alias.scope !623
  %i.sr = fadd reassoc nsz arcp contract afn float %i.sq, %i.so
  %i.ss = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sr, float 0.000000e+00) ; 3 uses
  store float %i.ss, ptr %i.sn, align 8, !tbaa !12, !alias.scope !625
  %or.cond3.i = and i1 %i.ac, %i.lb
  br i1 %or.cond3.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader295.preheader.i
  %i.st = fmul reassoc nsz arcp contract afn <2 x float> %i.sl, %i.ag ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.sd, i64 4
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sw = fmul reassoc nsz arcp contract afn float %i.ss, %10 ; 3 uses
  %i.sx = add nuw nsw i64 %indvars.iv.i, 1        ; 2 uses
  %i.sy = mul i64 %i.sx, 7109453100751455733      ; 2 uses
  %i.sz = lshr i64 %i.sy, 28
  %i.ta = xor i64 %i.sz, %i.sy
  %i.tb = mul i64 %i.ta, -3808689974395783757
  %i.tc = lshr i64 %i.tb, 32
  %i.td = trunc nuw i64 %i.tc to i32              ; 2 uses
  %i.te = mul nsw i64 %i.sx, %i.kq                ; 2 uses
  %i.tf = lshr i64 %i.te, 33
  %i.tg = xor i64 %i.tf, %i.te
  %i.th = mul i64 %i.tg, 7109453100751455733      ; 2 uses
  %i.ti = lshr i64 %i.th, 28
  %i.tj = xor i64 %i.ti, %i.th
  %i.tk = mul i64 %i.tj, -3808689974395783757
  %i.tl = lshr i64 %i.tk, 32
  %i.tm = trunc nuw i64 %i.tl to i32              ; 3 uses
  %i.tn = shl i32 %i.tm, 9
  %i.to = xor i32 %i.td, 635086878                ; 2 uses
  %i.tp = xor i32 %i.tm, -1171427716              ; 3 uses
  %i.tq = xor i32 %i.to, %i.tm                    ; 3 uses
  %i.tr = xor i32 %i.tp, %i.td                    ; 2 uses
  %i.ts = xor i32 %i.tn, %i.to
  %i.tt = call noundef i32 @llvm.fshl.i32(i32 %i.tp, i32 %i.tp, i32 11)
  %i.tu = shl i32 %i.tq, 9
  %i.tv = xor i32 %i.ts, %i.tr                    ; 2 uses
  %i.tw = xor i32 %i.tt, %i.tq                    ; 3 uses
  %i.tx = xor i32 %i.tv, %i.tq                    ; 3 uses
  %i.ty = xor i32 %i.tw, %i.tr                    ; 2 uses
  %i.tz = xor i32 %i.tv, %i.tu
  %i.ua = call noundef i32 @llvm.fshl.i32(i32 %i.tw, i32 %i.tw, i32 11)
  %i.ub = shl i32 %i.tx, 9
  %i.uc = xor i32 %i.tz, %i.ty                    ; 2 uses
  %i.ud = xor i32 %i.tx, %i.ua                    ; 3 uses
  %i.ue = xor i32 %i.uc, %i.tx                    ; 3 uses
  %i.uf = xor i32 %i.ud, %i.ty                    ; 2 uses
  %i.ug = xor i32 %i.uc, %i.ub
  %i.uh = call noundef i32 @llvm.fshl.i32(i32 %i.ud, i32 %i.ud, i32 11)
  %i.ui = shl i32 %i.ue, 9
  %i.uj = xor i32 %i.ug, %i.uf                    ; 2 uses
  %i.uk = xor i32 %i.ue, %i.uh                    ; 3 uses
  %i.ul = xor i32 %i.uj, %i.ue                    ; 3 uses
  %i.um = xor i32 %i.uj, %i.ui
  %i.un = shl i32 %i.ul, 9
  %i.uo = xor i32 %i.uk, %i.uf                    ; 3 uses
  %i.up = call noundef i32 @llvm.fshl.i32(i32 %i.uk, i32 %i.uk, i32 11) ; 2 uses
  %i.uq = xor i32 %i.um, %i.uo                    ; 2 uses
  %i.ur = xor i32 %i.ul, %i.up                    ; 3 uses
  %i.us = xor i32 %i.uq, %i.ul                    ; 3 uses
  %i.ut = xor i32 %i.ur, %i.uo                    ; 3 uses
  %i.uu = xor i32 %i.uq, %i.un
  %i.uv = call noundef i32 @llvm.fshl.i32(i32 %i.ur, i32 %i.ur, i32 11) ; 2 uses
  %i.uw = add i32 %i.uv, %i.ut
  %i.ux = shl i32 %i.us, 9
  %i.uy = xor i32 %i.uu, %i.ut                    ; 2 uses
  %i.uz = xor i32 %i.us, %i.uv                    ; 3 uses
  %i.va = xor i32 %i.uy, %i.us                    ; 3 uses
  %i.vb = xor i32 %i.uz, %i.ut                    ; 3 uses
  %i.vc = xor i32 %i.uy, %i.ux
  %i.vd = call noundef i32 @llvm.fshl.i32(i32 %i.uz, i32 %i.uz, i32 11) ; 2 uses
  %i.ve = lshr i32 %i.uw, 8
  %i.vf = uitofp reassoc nsz arcp contract afn nneg i32 %i.ve to float
  %i.vg = shl i32 %i.va, 9
  %i.vh = xor i32 %i.vc, %i.vb                    ; 2 uses
  %i.vi = xor i32 %i.va, %i.vd                    ; 3 uses
  %i.vj = xor i32 %i.vh, %i.va                    ; 2 uses
  %i.vk = xor i32 %i.vi, %i.vb                    ; 3 uses
  %i.vl = xor i32 %i.vh, %i.vg
  %i.vm = call noundef i32 @llvm.fshl.i32(i32 %i.vi, i32 %i.vi, i32 11) ; 2 uses
  %i.vn = add i32 %i.vm, %i.vk
  %i.vo = xor i32 %i.vl, %i.vk
  %i.vp = xor i32 %i.vj, %i.vm                    ; 3 uses
  %i.vq = xor i32 %i.vo, %i.vj
  %i.vr = xor i32 %i.vp, %i.vk                    ; 2 uses
  %i.vs = call noundef i32 @llvm.fshl.i32(i32 %i.vp, i32 %i.vp, i32 11) ; 2 uses
  %i.vt = lshr i32 %i.vn, 8
  %i.vu = uitofp reassoc nsz arcp contract afn nneg i32 %i.vt to float
  %i.vv = xor i32 %i.vq, %i.vs                    ; 3 uses
  %i.vw = xor i32 %i.vv, %i.vr
  %i.vx = call noundef i32 @llvm.fshl.i32(i32 %i.vv, i32 %i.vv, i32 11)
  %i.vy = add i32 %i.vx, %i.vw
  %i.vz = lshr i32 %i.vy, 8
  %i.wa = uitofp reassoc nsz arcp contract afn nneg i32 %i.vz to float
  %i.wb = fmul reassoc nnan nsz arcp contract afn float %i.vf, f0x34C90FDB
  %sincos.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.wb)
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1
  %i.wc = fmul reassoc nnan nsz arcp contract afn float %i.vu, f0x34C90FDB
  %sincos60.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.wc)
  %sin61.i.i.i = extractvalue { float, float } %sincos60.i.i.i, 0
  %i.wd = fmul reassoc nnan nsz arcp contract afn float %i.wa, f0x34C90FDB
  %sincos63.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.wd)
  %cos65.i.i.i = extractvalue { float, float } %sincos63.i.i.i, 1
  %i.we = add i32 %i.vs, %i.vr
  %i.wf = lshr i32 %i.we, 8
  %i.wg = uitofp reassoc nsz arcp contract afn nneg i32 %i.wf to float
  %i.wh = fmul reassoc nnan nsz arcp contract afn float %i.wg, f0x33800000
  %i.wi = call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.wh, float f0x00800000)
  %i.wj = call fast float @llvm.log.f32(float %i.wi)
  %i.wk = fmul reassoc nnan nsz arcp contract afn float %i.wj, -2.000000e+00
  %i.wl = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.wk)
  %i.wm = add i32 %i.vd, %i.vb
  %i.wn = add i32 %i.up, %i.uo
  %i.wo = insertelement <2 x i32> poison, i32 %i.wn, i64 0
  %i.wp = insertelement <2 x i32> %i.wo, i32 %i.wm, i64 1
  %i.wq = lshr <2 x i32> %i.wp, splat (i32 8)
  %i.wr = uitofp reassoc nsz arcp contract afn nneg <2 x i32> %i.wq to <2 x float>
  %i.ws = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.wr, splat (float f0x33800000)
  %i.wt = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ws, <2 x float> splat (float f0x00800000))
  %i.wu = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.wt)
  %i.wv = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.wu, splat (float -2.000000e+00)
  %i.ww = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.wv)
  %13 = extractelement <2 x float> %i.sl, i64 0
  %14 = fadd reassoc nnan nsz arcp contract afn float %13, 3.750000e-01
  %15 = load float, ptr %i.su, align 4, !tbaa !12, !alias.scope !625 ; 2 uses
  %16 = fadd reassoc nsz arcp contract afn float %15, 3.750000e-01
  %17 = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %16, float 0.000000e+00)
  %i.wx = fmul reassoc nsz arcp contract afn float %cos65.i.i.i, %i.wl
  %i.wy = fmul reassoc nsz arcp contract afn float %i.wx, %i.sw
  %i.wz = load float, ptr %i.sv, align 8, !tbaa !12, !alias.scope !625 ; 3 uses
  %i.xa = fadd reassoc nsz arcp contract afn float %i.wz, 3.750000e-01
  %i.xb = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xa, float 0.000000e+00)
  %i.xc = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.xb)
  %i.xd = fmul reassoc nnan nsz arcp contract afn float %i.xc, 2.000000e+00
  %i.xe = fadd reassoc nsz arcp contract afn float %i.xd, %i.wy ; 2 uses
  %i.xf = fmul reassoc nsz arcp contract afn float %i.xe, %i.xe
  %i.xg = fmul reassoc nsz arcp contract afn float %i.sw, %i.sw
  %i.xh = fsub reassoc nsz arcp contract afn float %i.xf, %i.xg
  %i.xi = fmul reassoc nsz arcp contract afn float %i.xh, 2.500000e-01
  %i.xj = insertelement <2 x float> poison, float %cos.i.i.i, i64 0
  %i.xk = insertelement <2 x float> %i.xj, float %sin61.i.i.i, i64 1
  %i.xl = fmul reassoc nsz arcp contract afn <2 x float> %i.xk, %i.ww
  %i.xm = fmul reassoc nsz arcp contract afn <2 x float> %i.xl, %i.st
  %18 = insertelement <2 x float> poison, float %14, i64 0
  %19 = insertelement <2 x float> %18, float %17, i64 1
  %i.xn = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %19)
  %i.xo = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.xn, splat (float 2.000000e+00)
  %i.xp = fadd reassoc nsz arcp contract afn <2 x float> %i.xo, %i.xm ; 2 uses
  %i.xq = fmul reassoc nsz arcp contract afn <2 x float> %i.xp, %i.xp
  %i.xr = fmul reassoc nsz arcp contract afn <2 x float> %i.st, %i.st
  %i.xs = fsub reassoc nsz arcp contract afn <2 x float> %i.xq, %i.xr
  %i.xt = fmul reassoc nsz arcp contract afn <2 x float> %i.xs, splat (float 2.500000e-01)
  %20 = insertelement <2 x float> %i.sl, float %15, i64 1 ; 2 uses
  %i.xu = fsub reassoc nsz arcp contract afn <2 x float> splat (float -3.750000e-01), %20
  %i.xv = fadd reassoc nsz arcp contract afn <2 x float> %i.xu, %i.xt
  %i.xw = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xv)
  %i.xx = insertelement <2 x float> poison, float %i.kw, i64 0
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xz = fmul reassoc nsz arcp contract afn <2 x float> %i.xw, %i.xy
  %i.ya = fadd reassoc nsz arcp contract afn <2 x float> %i.xz, %20
  %i.yb = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ya, <2 x float> zeroinitializer)
  %i.yc = fsub reassoc nsz arcp contract afn float -3.750000e-01, %i.wz
  %i.yd = fadd reassoc nsz arcp contract afn float %i.yc, %i.xi
  %i.ye = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.yd)
  %i.yf = fmul reassoc nsz arcp contract afn float %i.ye, %i.kw
  %i.yg = fadd reassoc nsz arcp contract afn float %i.yf, %i.wz
  %i.yh = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.yg, float 0.000000e+00)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.preheader295.preheader.i
  %i.yi = phi float [ %i.ss, %.preheader295.preheader.i ], [ %i.yh, %bb.q ] ; 3 uses
  %i.yj = phi <2 x float> [ %i.sl, %.preheader295.preheader.i ], [ %i.yb, %bb.q ] ; 5 uses
  %foldExtExtBinop298 = fmul reassoc nsz arcp contract afn <2 x float> %i.yj, %i.yj
  %i.yk = extractelement <2 x float> %foldExtExtBinop298, i64 0
  %foldExtExtBinop300 = fmul reassoc nsz arcp contract afn <2 x float> %i.yj, %i.yj
  %i.yl = extractelement <2 x float> %foldExtExtBinop300, i64 1
  %i.ym = fmul reassoc nsz arcp contract afn float %i.yi, %i.yi
  %i.yn = fadd reassoc nsz arcp contract afn float %i.yl, %i.ym
  %i.yo = fadd reassoc nsz arcp contract afn float %i.yn, %i.yk
  %i.yp = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.yo)
  %i.yq = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.yp, float f0x358637BD) ; 2 uses
  %i.yr = shufflevector <2 x float> %i.yj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ys = insertelement <4 x float> %i.yr, float %i.yi, i64 2
  %i.yt = insertelement <4 x float> %i.ys, float %i.yq, i64 3
  %i.yu = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.yq, i64 0
  %i.yv = shufflevector <4 x float> %i.yu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.yw = fdiv reassoc nsz arcp contract afn <4 x float> %i.yt, %i.yv
  store <4 x float> %i.yw, ptr %i.sd, align 16, !tbaa !12, !alias.scope !625
  br label %.thread290.i

.thread290.i:                                     ; preds = %bb.r, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !626
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i, %3
  br i1 %exitcond.not.i64, label %._crit_edge.i65, label %bb.o

bb.s:                                             ; preds = %decompose_2D_Bspline.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 64), "align"(ptr %.0, i64 64), "align"(ptr %6, i64 64) ]
  br i1 %.not.i, label %guide_laplacians.exit, label %.lr.ph214.i

.lr.ph214.i:                                      ; preds = %bb.s
  %.not.i.i69 = icmp slt i32 %i.ah, %i.l
  %.reass.i70 = add i32 %invariant.op.i, %i.ah
  %i.yx = add nsw i32 %i.ah, -1
  %i.yy = and i32 %i.yx, %i.l                     ; 3 uses
  %i.yz = icmp eq i32 %i.yy, 0
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i78, %.lr.ph214.i
  %.0179212.i = phi i64 [ 0, %.lr.ph214.i ], [ %i.zy, %._crit_edge.i78 ] ; 2 uses
  %i.za = trunc i64 %.0179212.i to i32            ; 5 uses
  br i1 %.not.i.i69, label %bb.u, label %dwt_interleave_rows.exit.i72

bb.u:                                             ; preds = %bb.t
  %i.zb = sdiv i32 %.reass.i70, %i.ah             ; 4 uses
  br i1 %i.yz, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.zc = mul nsw i32 %i.yy, %i.zb                ; 2 uses
  %i.zd = icmp sgt i32 %i.zc, %i.za
  br i1 %i.zd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ze = sdiv i32 %i.za, %i.zb
  %i.zf = srem i32 %i.za, %i.zb
  %i.zg = shl nsw i32 %i.zf, %.054119
  %i.zh = add nsw i32 %i.zg, %i.ze
  br label %dwt_interleave_rows.exit.i72

bb.x:                                             ; preds = %bb.v
  %i.zi = sub nsw i32 %i.za, %i.zc                ; 2 uses
  %i.zj = add nsw i32 %i.zb, -1                   ; 2 uses
  %i.zk = sdiv i32 %i.zi, %i.zj
  %i.zl = add nsw i32 %i.zk, %i.yy
  %i.zm = srem i32 %i.zi, %i.zj
  %i.zn = shl nsw i32 %i.zm, %.054119
  %i.zo = add nsw i32 %i.zl, %i.zn
  br label %dwt_interleave_rows.exit.i72

dwt_interleave_rows.exit.i72:                     ; preds = %bb.x, %bb.w, %bb.t
  %.1.i.i73 = phi i32 [ %i.za, %bb.t ], [ %i.zh, %bb.w ], [ %i.zo, %bb.x ] ; 3 uses
  %i.zp = sext i32 %.1.i.i73 to i64
  %i.zq = sub i32 %.1.i.i73, %i.ah
  %i.zr = call i32 @llvm.smax.i32(i32 %i.zq, i32 0)
  %i.zs = zext nneg i32 %i.zr to i64
  %i.zt = mul i64 %3, %i.zs                       ; 3 uses
  %i.zu = mul i64 %3, %i.zp                       ; 3 uses
  %i.zv = add i32 %.1.i.i73, %i.ah
  %..i74 = call i32 @llvm.smin.i32(i32 %i.zv, i32 %invariant.op.i)
  %i.zw = sext i32 %..i74 to i64
  %i.zx = mul i64 %3, %i.zw                       ; 3 uses
  br i1 %.not.i40.i, label %._crit_edge.i78, label %.lr.ph.i75

._crit_edge.i78:                                  ; preds = %.loopexit.i76, %dwt_interleave_rows.exit.i72
  %i.zy = add nuw nsw i64 %.0179212.i, 1          ; 2 uses
  %exitcond220.not.i = icmp eq i64 %i.zy, %4
  br i1 %exitcond220.not.i, label %guide_laplacians.exit, label %bb.t

.lr.ph.i75:                                       ; preds = %dwt_interleave_rows.exit.i72, %.loopexit.i76
  %.0178211.i = phi i64 [ %i.aed, %.loopexit.i76 ], [ 0, %dwt_interleave_rows.exit.i72 ] ; 5 uses
  %i.zz = add i64 %.0178211.i, %i.zu
  %i.aaa = shl i64 %i.zz, 2                       ; 6 uses
  %i.aab = or disjoint i64 %i.aaa, 2              ; 3 uses
  %i.aac = or disjoint i64 %i.aaa, 3              ; 2 uses
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aac
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !12, !alias.scope !631
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.aaa
  %i.aag = load <2 x float>, ptr %i.aaf, align 16, !tbaa !12, !alias.scope !629 ; 3 uses
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.aab
  %i.aai = load float, ptr %i.aah, align 8, !tbaa !12, !alias.scope !629 ; 3 uses
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.aac
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !12, !alias.scope !629 ; 3 uses
  %i.aal = fcmp reassoc nsz arcp contract afn ogt float %i.aae, 0.000000e+00 ; 2 uses
  br i1 %i.aal, label %.preheader.i, label %bb.y

.preheader.i:                                     ; preds = %.lr.ph.i75
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aab
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !12, !alias.scope !631
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aaa
  %i.aap = trunc i64 %.0178211.i to i32           ; 2 uses
  %i.aaq = sub i32 %i.aap, %i.ah
  %i.aar = call i32 @llvm.smax.i32(i32 %i.aaq, i32 0)
  %i.aas = zext nneg i32 %i.aar to i64            ; 3 uses
  %i.aat = add i32 %i.ah, %i.aap
  %.194.i = call i32 @llvm.smin.i32(i32 %i.aat, i32 %i.q)
  %i.aau = sext i32 %.194.i to i64                ; 3 uses
  %i.aav = add i64 %i.zt, %i.aas
  %.idx.i79 = shl i64 %i.aav, 4
  %i.aaw = getelementptr inbounds nuw i8, ptr %6, i64 %.idx.i79 ; 2 uses
  %i.aax = add i64 %.0178211.i, %i.zt
  %.idx187.i = shl i64 %i.aax, 4
  %i.aay = getelementptr inbounds nuw i8, ptr %6, i64 %.idx187.i ; 2 uses
  %i.aaz = add i64 %i.zt, %i.aau
  %.idx188.i = shl i64 %i.aaz, 4
  %i.aba = getelementptr inbounds nuw i8, ptr %6, i64 %.idx188.i ; 2 uses
  %i.abb = add i64 %i.zu, %i.aas
  %.idx189.i = shl i64 %i.abb, 4
  %i.abc = getelementptr inbounds nuw i8, ptr %6, i64 %.idx189.i ; 2 uses
  %i.abd = add i64 %i.zu, %i.aau
  %.idx190.i = shl i64 %i.abd, 4
  %i.abe = getelementptr i8, ptr %6, i64 %.idx190.i ; 2 uses
  %i.abf = add i64 %i.zx, %i.aas
  %.idx191.i = shl i64 %i.abf, 4
  %i.abg = getelementptr i8, ptr %6, i64 %.idx191.i ; 2 uses
  %i.abh = add i64 %.0178211.i, %i.zx
  %.idx192.i = shl i64 %i.abh, 4
  %i.abi = getelementptr i8, ptr %6, i64 %.idx192.i ; 2 uses
  %i.abj = add i64 %i.zx, %i.aau
  %.idx193.i = shl i64 %i.abj, 4
  %i.abk = getelementptr i8, ptr %6, i64 %.idx193.i ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  %.sroa.10.16.copyload.i = load float, ptr %.sroa.10.16..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.15.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %.sroa.15.32.copyload.i = load float, ptr %.sroa.15.32..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.20.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  %.sroa.20.48.copyload.i = load float, ptr %.sroa.20.48..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.30.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %.sroa.30.80.copyload.i = load float, ptr %.sroa.30.80..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.35.96..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %.sroa.35.96.copyload.i = load float, ptr %.sroa.35.96..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.40.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  %.sroa.40.112.copyload.i = load float, ptr %.sroa.40.112..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.45.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %.sroa.45.128.copyload.i = load float, ptr %.sroa.45.128..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %i.abl = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, %i.aag
  %i.abm = load <2 x float>, ptr %i.aaw, align 16, !tbaa !12, !alias.scope !629
  %i.abn = load <2 x float>, ptr %i.aay, align 16, !tbaa !12, !alias.scope !629
  %i.abo = load <2 x float>, ptr %i.aba, align 16, !tbaa !12, !alias.scope !629
  %i.abp = load <2 x float>, ptr %i.abc, align 16, !tbaa !12, !alias.scope !629
  %i.abq = load <2 x float>, ptr %i.abe, align 16, !tbaa !12, !alias.scope !629
  %i.abr = load <2 x float>, ptr %i.abg, align 16, !tbaa !12, !alias.scope !629
  %i.abs = load <2 x float>, ptr %i.abi, align 16, !tbaa !12, !alias.scope !629
  %i.abt = load <2 x float>, ptr %i.abk, align 16, !tbaa !12, !alias.scope !629
  %i.abu = fadd reassoc nsz arcp contract afn <2 x float> %i.abp, %i.abn
  %i.abv = fadd reassoc nsz arcp contract afn <2 x float> %i.abu, %i.abq
  %i.abw = fadd reassoc nsz arcp contract afn <2 x float> %i.abv, %i.abs
  %i.abx = fmul reassoc nsz arcp contract afn <2 x float> %i.abw, splat (float 5.000000e-01)
  %i.aby = fadd reassoc nsz arcp contract afn <2 x float> %i.abo, %i.abm
  %i.abz = fadd reassoc nsz arcp contract afn <2 x float> %i.aby, %i.abr
  %i.aca = fadd reassoc nsz arcp contract afn <2 x float> %i.abz, %i.abt
  %i.acb = fmul reassoc nsz arcp contract afn <2 x float> %i.aca, splat (float 2.500000e-01)
  %i.acc = fadd reassoc nsz arcp contract afn <2 x float> %i.acb, %i.abx
  %i.acd = load <2 x float>, ptr %i.aao, align 4, !tbaa !12, !alias.scope !631
  %i.ace = fmul reassoc nsz arcp contract afn <2 x float> %i.acd, splat (float f0x3EA0DE4A)
  %i.acf = fadd reassoc nsz arcp contract afn <2 x float> %i.acc, %i.abl
  %i.acg = fmul reassoc nsz arcp contract afn <2 x float> %i.ace, %i.acf
  %i.ach = fadd reassoc nsz arcp contract afn <2 x float> %i.acg, %i.aag
  %i.aci = fmul reassoc nsz arcp contract afn float %i.aan, f0x3EA0DE4A
  %reass.add97 = fadd reassoc nsz arcp contract afn float %.sroa.20.48.copyload.i, %.sroa.10.16.copyload.i
  %reass.add98 = fadd reassoc nsz arcp contract afn float %reass.add97, %.sroa.30.80.copyload.i
  %reass.add99 = fadd reassoc nsz arcp contract afn float %reass.add98, %.sroa.40.112.copyload.i
  %reass.mul100 = fmul reassoc nsz arcp contract afn float %reass.add99, 5.000000e-01
  %reass.add101 = fadd reassoc nsz arcp contract afn float %.sroa.15.32.copyload.i, %.sroa.5.0.copyload.i
  %reass.add102 = fadd reassoc nsz arcp contract afn float %reass.add101, %.sroa.35.96.copyload.i
  %reass.add103 = fadd reassoc nsz arcp contract afn float %reass.add102, %.sroa.45.128.copyload.i
  %reass.mul104 = fmul reassoc nsz arcp contract afn float %reass.add103, 2.500000e-01
  %reass.mul110 = fmul reassoc nsz arcp contract afn float %reass.add105, %i.aai
  %i.acj = fadd reassoc nsz arcp contract afn float %reass.mul104, %reass.mul100
  %i.ack = fadd reassoc nsz arcp contract afn float %i.acj, %reass.mul110
  %i.acl = fmul reassoc nsz arcp contract afn float %i.aci, %i.ack
  %i.acm = fadd reassoc nsz arcp contract afn float %i.acl, %i.aai
  br label %bb.y

bb.y:                                             ; preds = %.preheader.i, %.lr.ph.i75
  %.sroa.11264.0.i = phi nsz float [ %i.acm, %.preheader.i ], [ %i.aai, %.lr.ph.i75 ] ; 3 uses
  %i.acn = phi <2 x float> [ %i.ach, %.preheader.i ], [ %i.aag, %.lr.ph.i75 ] ; 3 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aaa ; 9 uses
  br i1 %.not147.not, label %.preheader199.i, label %.preheader197.i

.preheader199.i:                                  ; preds = %bb.y
  store <2 x float> %i.acn, ptr %i.aco, align 16, !tbaa !12, !alias.scope !632
  %.sroa.11264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  store float %.sroa.11264.0.i, ptr %.sroa.11264.0..sroa_idx.i, align 8, !tbaa !12, !alias.scope !632
  %.sroa.15266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aco, i64 12
  store float %i.aak, ptr %.sroa.15266.0..sroa_idx.i, align 4, !tbaa !12, !alias.scope !632
  %i.acp = insertelement <2 x float> poison, float %.sroa.11264.0.i, i64 0
  %i.acq = insertelement <2 x float> %i.acp, float %i.aak, i64 1
  br label %.loopexit198.i

.preheader197.i:                                  ; preds = %bb.y
  %i.acr = load <2 x float>, ptr %i.aco, align 16, !tbaa !12, !alias.scope !632
  %i.acs = fadd reassoc nsz arcp contract afn <2 x float> %i.acr, %i.acn ; 2 uses
  store <2 x float> %i.acs, ptr %i.aco, align 16, !tbaa !12, !alias.scope !632
  %i.act = getelementptr inbounds nuw i8, ptr %i.aco, i64 8 ; 2 uses
  %i.acu = load <2 x float>, ptr %i.act, align 8, !tbaa !12, !alias.scope !632
  %i.acv = insertelement <2 x float> poison, float %.sroa.11264.0.i, i64 0
  %i.acw = insertelement <2 x float> %i.acv, float %i.aak, i64 1
  %i.acx = fadd reassoc nsz arcp contract afn <2 x float> %i.acu, %i.acw ; 2 uses
  store <2 x float> %i.acx, ptr %i.act, align 8, !tbaa !12, !alias.scope !632
  br label %.loopexit198.i

.loopexit198.i:                                   ; preds = %.preheader197.i, %.preheader199.i
  %i.acy = phi <2 x float> [ %i.acn, %.preheader199.i ], [ %i.acs, %.preheader197.i ]
  %i.acz = phi <2 x float> [ %i.acq, %.preheader199.i ], [ %i.acx, %.preheader197.i ]
  br i1 %.not80, label %.preheader196.preheader.i, label %.loopexit.i76

.preheader196.preheader.i:                        ; preds = %.loopexit198.i
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.aaa
  %i.adb = load <2 x float>, ptr %i.ada, align 16, !tbaa !12, !alias.scope !630
  %i.adc = fadd reassoc nsz arcp contract afn <2 x float> %i.adb, %i.acy
  %i.add = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.adc, <2 x float> zeroinitializer) ; 6 uses
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.aab
  %i.adf = load <2 x float>, ptr %i.ade, align 8, !tbaa !12, !alias.scope !630
  %i.adg = fadd reassoc nsz arcp contract afn <2 x float> %i.adf, %i.acz ; 2 uses
  %i.adh = extractelement <2 x float> %i.adg, i64 0
  %i.adi = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.adh, float 0.000000e+00) ; 4 uses
  %i.adj = extractelement <2 x float> %i.adg, i64 1
  %i.adk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.adj, float 0.000000e+00) ; 3 uses
  br i1 %i.aal, label %.loopexit195.loopexit.i, label %.loopexit.loopexit.i

.loopexit195.loopexit.i:                          ; preds = %.preheader196.preheader.i
  %foldExtExtBinop302 = fmul reassoc nsz arcp contract afn <2 x float> %i.add, %i.add
  %foldExtExtBinop304 = fmul reassoc nsz arcp contract afn <2 x float> %i.add, %i.add
  %shift = shufflevector <2 x float> %foldExtExtBinop304, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop306 = fadd reassoc nsz arcp contract afn <2 x float> %shift, %foldExtExtBinop302
  %i.adl = extractelement <2 x float> %foldExtExtBinop306, i64 0
  %i.adm = fmul reassoc nsz arcp contract afn float %i.adi, %i.adi
  %i.adn = fadd reassoc nsz arcp contract afn float %i.adl, %i.adm
  %i.ado = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.adn) ; 2 uses
  %i.adp = fcmp reassoc nsz arcp contract afn ogt float %i.ado, f0x38D1B717
  %i.adq = select reassoc nsz arcp contract afn i1 %i.adp, float %i.ado, float 1.000000e+00 ; 2 uses
  %i.adr = insertelement <2 x float> poison, float %i.adq, i64 0
  %i.ads = shufflevector <2 x float> %i.adr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adt = fdiv reassoc nsz arcp contract afn <2 x float> %i.add, %i.ads
  %i.adu = fdiv reassoc nsz arcp contract afn float %i.adi, %i.adq
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit195.loopexit.i, %.preheader196.preheader.i
  %i.adv = phi float [ %i.adu, %.loopexit195.loopexit.i ], [ %i.adi, %.preheader196.preheader.i ]
  %i.adw = phi <2 x float> [ %i.adt, %.loopexit195.loopexit.i ], [ %i.add, %.preheader196.preheader.i ]
  %i.adx = insertelement <2 x float> poison, float %i.adk, i64 0
  %i.ady = shufflevector <2 x float> %i.adx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adz = fmul reassoc nsz arcp contract afn <2 x float> %i.adw, %i.ady
  store <2 x float> %i.adz, ptr %i.aco, align 16, !tbaa !12, !alias.scope !632
  %i.aea = fmul reassoc nsz arcp contract afn float %i.adv, %i.adk
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  store float %i.aea, ptr %i.aeb, align 8, !tbaa !12, !alias.scope !632
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aco, i64 12
  store float %i.adk, ptr %i.aec, align 4, !tbaa !12, !alias.scope !632
  br label %.loopexit.i76

.loopexit.i76:                                    ; preds = %.loopexit.loopexit.i, %.loopexit198.i
  %i.aed = add nuw nsw i64 %.0178211.i, 1         ; 2 uses
  %exitcond.not.i77 = icmp eq i64 %i.aed, %3
  br i1 %exitcond.not.i77, label %._crit_edge.i78, label %.lr.ph.i75

guide_laplacians.exit:                            ; preds = %._crit_edge.i78, %._crit_edge.i65, %bb.s, %bb.i
  %i.aee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !141
  %.not56 = icmp eq ptr %i.aee, null
  br i1 %.not56, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %guide_laplacians.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.aef = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.125, i32 noundef %.054119) #33 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.e, ptr noundef %.053, i32 noundef %i.p, i32 noundef %i.l, i32 noundef 16, ptr noundef nonnull @.str.123) #33
  %i.aeg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.126, i32 noundef %.054119) #33 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.e, ptr noundef %.0, i32 noundef %i.p, i32 noundef %i.l, i32 noundef 16, ptr noundef nonnull @.str.123) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %guide_laplacians.exit
  %i.aeh = add nuw nsw i32 %.054119, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.aeh, %5
  br i1 %exitcond.not, label %bb.b, label %bb.c
}

declare void @dt_dump_pfm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #14

; Function Attrs: inlinehint nofree nosync nounwind memory(none) uwtable
define internal fastcc float @equivalent_sigma_at_step(i32 noundef %0) unnamed_addr #27 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %common.ret1, label %bb.b

common.ret1:                                      ; preds = %bb.a, %bb.b
  %common.ret1.op = phi float [ %i.j, %bb.b ], [ f0x3F871634, %bb.a ]
  ret float %common.ret1.op

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %0, -1
  %i.c = tail call fastcc float @equivalent_sigma_at_step(i32 noundef %i.b) ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %i.c, %i.c
  %i.e = uitofp reassoc nsz arcp contract afn i32 %0 to float
  %i.f = tail call reassoc nnan nsz arcp contract afn float @llvm.exp2.f32(float %i.e)
  %i.g = fmul reassoc nnan nsz arcp contract afn float %i.f, f0x3F871634 ; 2 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %i.g
  %i.i = fadd reassoc nsz arcp contract afn float %i.d, %i.h
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.i)
  br label %common.ret1
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #14

declare i32 @dt_bauhaus_widget_get_quad_active(ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_paint(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_toggle(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8i32.p0(<8 x i32>, ptr captures(none), <8 x i1>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x i32> @llvm.masked.load.v8i32.p0(ptr captures(none), <8 x i1>, <8 x i32>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v16i32(<16 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v8i32(<8 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v16i32(<16 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v32i32(<32 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v2i32(<2 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.maxnum.v32f32(<32 x float>, <32 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.umin.v8i64(<8 x i64>, <8 x i64>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { inlinehint nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #28 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #33 = { nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { nounwind willreturn memory(none) }
attributes #36 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
end_hunk_6
