Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 97
begin_hunk_0_@dt_segmentation_init_struct:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 0, i64 %i.f, i1 false)
  br label %dt_calloc_aligned.exit

dt_calloc_aligned.exit:                           ; preds = %bb.a, %bb.b
  store ptr %i.g, ptr %0, align 8, !tbaa !23
  %i.h = tail call ptr @dt_alloc_aligned(i64 noundef %i.f) #33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !35
  %i.j = shl nuw nsw i32 %i.b, 2
  %i.k = zext nneg i32 %i.j to i64                ; 7 uses
  %i.l = tail call ptr @dt_alloc_aligned(i64 noundef %i.k) #33 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.l, i64 64) ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !28
  %i.n = tail call ptr @dt_alloc_aligned(i64 noundef %i.k) #33 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 64) ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !27
  %i.p = tail call ptr @dt_alloc_aligned(i64 noundef %i.k) #33 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.p, i64 64) ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !26
  %i.r = tail call ptr @dt_alloc_aligned(i64 noundef %i.k) #33 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.r, i64 64) ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !25
  %i.t = tail call ptr @dt_alloc_aligned(i64 noundef %i.k) #33 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.t, i64 64) ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !24
  %i.v = tail call ptr @dt_alloc_aligned(i64 noundef %i.k) #33 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.v, i64 64) ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !30
  %i.x = tail call ptr @dt_alloc_aligned(i64 noundef %i.k) #33 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.x, i64 64) ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !29
  %i.z = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %dt_calloc_aligned.exit
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !28  ; 3 uses
  %.not45 = icmp eq ptr %i.aa, null
  br i1 %.not45, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !27  ; 3 uses
  %.not46 = icmp eq ptr %i.ab, null
  br i1 %.not46, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !26  ; 3 uses
  %.not47 = icmp eq ptr %i.ac, null
  br i1 %.not47, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !25  ; 3 uses
  %.not48 = icmp eq ptr %i.ad, null
  br i1 %.not48, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !24  ; 3 uses
  %.not49 = icmp eq ptr %i.ae, null
  %.not50 = icmp eq ptr %i.x, null
  %or.cond = select i1 %.not49, i1 true, i1 %.not50
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %dt_calloc_aligned.exit
  tail call void @free(ptr noundef %i.z) #33
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.af) #33
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.ag) #33
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.ah) #33
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.ai) #33
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.aj) #33
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.ak) #33
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.al) #33
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.am) #33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  br label %_clear_segment_slot.exit

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 2, ptr %i.an, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %3, ptr %i.ao, align 4, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 %i.b, ptr %i.ap, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %1, ptr %i.aq, align 4, !tbaa !19
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
end_hunk_0
begin_hunk_1_@process_visualize:bb.a
  br i1 %i.hw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.1
  %i.hx = load i32, ptr %i.aj, align 4, !tbaa !78
  %i.hy = icmp slt i32 %.reass11.fr, %i.hx
  %i.hz = icmp slt i32 %.reass.1, %i.as
  %or.cond89.1 = select i1 %i.hy, i1 %i.hz, i1 false
  br i1 %or.cond89.1, label %fcol.exit.1, label %bb.h

fcol.exit.1:                                      ; preds = %bb.g
  %i.ia = and i32 %.reass.1, 1
  %.tr.i.i.1 = or disjoint i32 %i.ia, %i.fb
  %i.ib = shl nuw nsw i32 %.tr.i.i.1, 1
  %i.ic = lshr i32 %.fr18, %i.ib
  %i.id = and i32 %i.ic, 3
  %i.ie = getelementptr [4 x i8], ptr %i.fc, i64 %i.hv
  %i.if = load float, ptr %i.ie, align 4, !tbaa !12 ; 2 uses
  %i.ig = zext nneg i32 %i.id to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ig
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !12
  %i.ij = fcmp reassoc nsz arcp contract afn olt float %i.if, %i.ii
  %i.ik = fmul reassoc nsz arcp contract afn float %i.if, 2.000000e-01
  %i.il = select reassoc nsz arcp contract afn i1 %i.ij, float %i.ik, float 1.000000e+00
  br label %bb.h

bb.h:                                             ; preds = %fcol.exit.1, %bb.g, %.lr.ph.split.1
  %.sink48.1 = phi float [ %i.il, %fcol.exit.1 ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %.lr.ph.split.1 ]
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next
  store float %.sink48.1, ptr %i.im, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.av
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split, !llvm.loop !449

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge.us, %.preheader, %.preheader3, %.preheader2.lr.ph, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

declare i32 @dt_mipmap_cache_get_matching_size(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_conf_get_string_const(ptr noundef) local_unnamed_addr #3

declare i32 @dt_mipmap_cache_get_min_mip_from_pref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @process_clip(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, float noundef %6) unnamed_addr #15 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = alloca [4 x float], align 16             ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.e = load i32, ptr %i.d, align 4, !tbaa !80
  %.fr89 = freeze i32 %i.e                        ; 6 uses
  %.not = icmp eq i32 %.fr89, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !79
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !78
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.h, 2
  %i.m = mul i64 %i.l, %i.k                       ; 7 uses
  %.not90 = icmp eq i64 %i.m, 0
  br i1 %.not90, label %.loopexit, label %vector.memcheck149

vector.memcheck149:                               ; preds = %bb.b
  %i.n = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.n, -128
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck149
  %min.iters.check150 = icmp ult i64 %i.m, 32
  br i1 %min.iters.check150, label %vec.epilog.ph, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.m, 28
  %n.vec152 = and i64 %i.m, -32                   ; 4 uses
  %broadcast.splatinsert153 = insertelement <8 x float> poison, float %6, i64 0
  %broadcast.splat154 = shufflevector <8 x float> %broadcast.splatinsert153, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.ph151, %vector.body155
  %index156 = phi i64 [ 0, %vector.ph151 ], [ %index.next160, %vector.body155 ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index156 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %wide.load = load <8 x float>, ptr %i.p, align 4, !tbaa !12
  %wide.load157 = load <8 x float>, ptr %i.q, align 4, !tbaa !12
  %wide.load158 = load <8 x float>, ptr %i.r, align 4, !tbaa !12
  %wide.load159 = load <8 x float>, ptr %i.s, align 4, !tbaa !12
  %i.t = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %broadcast.splat154, <8 x float> %wide.load)
  %i.u = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %broadcast.splat154, <8 x float> %wide.load157)
  %i.v = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %broadcast.splat154, <8 x float> %wide.load158)
  %i.w = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %broadcast.splat154, <8 x float> %wide.load159)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index156 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store <8 x float> %i.t, ptr %i.x, align 4, !tbaa !12
  store <8 x float> %i.u, ptr %i.y, align 4, !tbaa !12
  store <8 x float> %i.v, ptr %i.z, align 4, !tbaa !12
  store <8 x float> %i.w, ptr %i.aa, align 4, !tbaa !12
  %index.next160 = add nuw i64 %index156, 32      ; 2 uses
  %i.ab = icmp eq i64 %index.next160, %n.vec152
  br i1 %i.ab, label %middle.block161, label %vector.body155, !llvm.loop !456

middle.block161:                                  ; preds = %vector.body155
  %cmp.n162 = icmp eq i64 %i.m, %n.vec152
  br i1 %cmp.n162, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block161
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !142

.lr.ph.preheader:                                 ; preds = %vector.memcheck149, %vec.epilog.iter.check
  %.06687.ph = phi i64 [ %n.vec152, %vec.epilog.iter.check ], [ 0, %vector.memcheck149 ]
  br label %.lr.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec152, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert164 = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat165 = shufflevector <4 x float> %broadcast.splatinsert164, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index166 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next168, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index166
  %wide.load167 = load <4 x float>, ptr %i.ac, align 4, !tbaa !12
  %i.ad = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %broadcast.splat165, <4 x float> %wide.load167)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index166
  store <4 x float> %i.ad, ptr %i.ae, align 4, !tbaa !12
  %index.next168 = add nuw i64 %index166, 4       ; 2 uses
  %i.af = icmp eq i64 %index.next168, %i.m
  br i1 %i.af, label %.loopexit, label %vec.epilog.vector.body, !llvm.loop !457

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.06687 = phi i64 [ %.06687.ph, %.lr.ph.preheader ], [ %i.az, %.lr.ph ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.06687
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !12
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %6, float %i.ah)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.06687
  store float %i.ai, ptr %i.aj, align 4, !tbaa !12
  %i.ak = or disjoint i64 %.06687, 1              ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !12
  %i.an = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %6, float %i.am)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ak
  store float %i.an, ptr %i.ao, align 4, !tbaa !12
  %i.ap = or disjoint i64 %.06687, 2              ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !12
  %i.as = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %6, float %i.ar)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ap
  store float %i.as, ptr %i.at, align 4, !tbaa !12
  %i.au = or disjoint i64 %.06687, 3              ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %6, float %i.aw)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.au
  store float %i.ax, ptr %i.ay, align 4, !tbaa !12
  %i.az = add nuw i64 %.06687, 4                  ; 2 uses
  %exitcond113.not.3 = icmp eq i64 %i.az, %i.m
  br i1 %exitcond113.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !458

bb.c:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !99 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.be = insertelement <4 x float> poison, float %6, i64 0
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.bf, ptr %i.c, align 16, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  %i.bj = load i32, ptr %i.bi, align 16, !tbaa !465
  %.not71 = icmp eq i32 %i.bj, 0
  br i1 %.not71, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 2480
  %i.bl = load i32, ptr %i.bk, align 16, !tbaa !144
  %.not72 = icmp eq i32 %i.bl, 0
  br i1 %.not72, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 2448
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 2416
  %i.bo = fpext reassoc nsz arcp contract afn float %6 to double ; 2 uses
  %i.bp = load <2 x double>, ptr %i.bm, align 16, !tbaa !145
  %i.bq = load <2 x double>, ptr %i.bn, align 16, !tbaa !145
  %i.br = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fmul reassoc nsz arcp contract afn <2 x double> %i.bp, %i.bs
  %i.bu = fdiv reassoc nsz arcp contract afn <2 x double> %i.bt, %i.bq
  %i.bv = fptrunc reassoc nsz arcp contract afn <2 x double> %i.bu to <2 x float>
  store <2 x float> %i.bv, ptr %i.c, align 16, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 2464
  %i.bx = load double, ptr %i.bw, align 16, !tbaa !145
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 2432
  %i.bz = load double, ptr %i.by, align 16, !tbaa !145
  %i.ca = fmul reassoc nsz arcp contract afn double %i.bx, %i.bo
  %i.cb = fdiv reassoc nsz arcp contract afn double %i.ca, %i.bz
  %i.cc = fptrunc reassoc nsz arcp contract afn double %i.cb to float
  store float %i.cc, ptr %i.bd, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !78 ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.preheader.lr.ph, label %._crit_edge80.split

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !79 ; 4 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  %i.cj = sext i32 %i.ch to i64                   ; 4 uses
  %i.ck = getelementptr i8, ptr %4, i64 12        ; 6 uses
  br i1 %i.ci, label %.preheader.lr.ph.split, label %._crit_edge80.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.cl = icmp eq i32 %.fr89, 9
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !75
  %i.cq = load i32, ptr %i.cn, align 4, !tbaa !75
  %invariant.op81 = sub i32 %i.cp, %i.cq          ; 2 uses
  %i.cr = load i32, ptr %5, align 4, !tbaa !74    ; 2 uses
  %i.cs = load i32, ptr %4, align 4, !tbaa !74    ; 2 uses
  %invariant.op = sub i32 %i.cr, %i.cs            ; 8 uses
  %i.ct = load i32, ptr %i.cm, align 4, !tbaa !79 ; 6 uses
  %i.cu = zext i32 %i.ct to i64                   ; 3 uses
  %i.cv = shl nuw nsw i64 %i.cj, 2                ; 2 uses
  %i.cw = zext nneg i32 %i.ch to i64              ; 10 uses
  %i.cx = shl nuw nsw i64 %i.cw, 2                ; 2 uses
  %wide.trip.count111 = zext nneg i32 %i.ce to i64 ; 3 uses
  br i1 %i.cl, label %.preheader.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.cy = add nsw i64 %i.cw, -1                   ; 2 uses
  %i.cz = zext i32 %invariant.op to i64           ; 2 uses
  %i.da = shl nuw nsw i64 %i.cz, 2
  %scevgep130 = getelementptr i8, ptr %4, i64 16
  %i.db = add nuw nsw i64 %wide.trip.count111, 4611686018427387903
  %i.dc = mul i64 %i.db, %i.cj
  %i.dd = add i64 %i.dc, %i.cw
  %i.de = shl i64 %i.dd, 2
  %scevgep131 = getelementptr i8, ptr %3, i64 %i.de ; 2 uses
  %i.df = sub i32 %i.cr, %i.cs
  %min.iters.check = icmp ult i32 %i.ch, 8
  %i.dg = trunc nsw i64 %i.cy to i32
  %i.dh = xor i32 %invariant.op, -1
  %i.di = icmp ult i32 %i.dh, %i.dg
  %i.dj = icmp ugt i64 %i.cy, 4294967295
  %i.dk = or i1 %i.di, %i.dj
  %invariant.gep = getelementptr i8, ptr %2, i64 %i.da
  %invariant.op174 = add i64 %i.cw, %i.cz
  %bound0 = icmp ult ptr %3, %scevgep130
  %bound1 = icmp ult ptr %i.ck, %scevgep131
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.cw, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %invariant.op, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert135 = insertelement <8 x ptr> poison, ptr %i.ck, i64 0
  %broadcast.splat136 = shufflevector <8 x ptr> %broadcast.splatinsert135, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert139 = insertelement <8 x i32> poison, i32 %i.ct, i64 0
  %broadcast.splat140 = shufflevector <8 x i32> %broadcast.splatinsert139, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert143 = insertelement <8 x i32> poison, i32 %.fr89, i64 0
  %broadcast.splat144 = shufflevector <8 x i32> %broadcast.splatinsert143, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.cw
  %xtraiter = and i64 %i.cw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dl = and i32 %invariant.op, 1
  %i.dm = add nsw i64 %i.cw, -1
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph.split, %._crit_edge.us
  %indvar99 = phi i64 [ %indvar.next100, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split ] ; 4 uses
  %i.dn = mul nuw nsw i64 %indvar99, %i.cj
  %i.do = trunc nuw nsw i64 %indvar99 to i32
  %.reass82.us = add i32 %invariant.op81, %i.do
  %.reass82.us.fr = freeze i32 %.reass82.us       ; 4 uses
  %i.dp = zext nneg i32 %.reass82.us.fr to i64
  %i.dq = mul nuw nsw i64 %i.cu, %i.dp
  %i.dr = icmp sgt i32 %.reass82.us.fr, -1
  %i.ds = add nuw nsw i32 %.reass82.us.fr, 600
  %i.dt = urem i32 %i.ds, 6
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [6 x i8], ptr %i.ba, i64 %i.du
  %i.dw = getelementptr [4 x i8], ptr %2, i64 %i.dq
  br i1 %i.dr, label %.lr.ph.split.us83.preheader, label %.lr.ph.split.us.us.preheader

.lr.ph.split.us83.preheader:                      ; preds = %.preheader.us
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dn
  br label %.lr.ph.split.us83

.lr.ph.split.us.us.preheader:                     ; preds = %.preheader.us
  %i.dy = mul i64 %i.cv, %indvar99
  %scevgep101 = getelementptr i8, ptr %3, i64 %i.dy
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep101, i8 0, i64 %i.cx, i1 false), !tbaa !12
  br label %._crit_edge.us

.lr.ph.split.us83:                                ; preds = %.lr.ph.split.us83.preheader, %bb.h
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %bb.h ], [ 0, %.lr.ph.split.us83.preheader ] ; 3 uses
  %i.dz = trunc nuw nsw i64 %indvars.iv105 to i32
  %.reass.us77.us = add i32 %invariant.op, %i.dz  ; 4 uses
  %i.ea = zext nneg i32 %.reass.us77.us to i64
  %i.eb = icmp sgt i32 %.reass.us77.us, -1
  br i1 %i.eb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.us83
  %i.ec = load i32, ptr %i.ck, align 4, !tbaa !78
  %i.ed = icmp slt i32 %.reass82.us.fr, %i.ec
  %i.ee = icmp slt i32 %.reass.us77.us, %i.ct
  %or.cond73.us.us = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond73.us.us, label %fcol.exit.us.us, label %bb.h

fcol.exit.us.us:                                  ; preds = %bb.g
  %i.ef = add nuw nsw i32 %.reass.us77.us, 600
  %i.eg = urem i32 %i.ef, 6
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !97
  %i.ek = getelementptr [4 x i8], ptr %i.dw, i64 %i.ea
  %i.el = load float, ptr %i.ek, align 4, !tbaa !12
  %i.em = zext i8 %i.ej to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.em
  %i.eo = load float, ptr %i.en, align 4, !tbaa !12
  %i.ep = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.el, float %i.eo)
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us83, %bb.g, %fcol.exit.us.us
  %.sink = phi float [ %i.ep, %fcol.exit.us.us ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %.lr.ph.split.us83 ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv105
  store float %.sink, ptr %i.eq, align 4, !tbaa !12
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %i.cw
  br i1 %exitcond109.not, label %._crit_edge.us, label %.lr.ph.split.us83

._crit_edge.us:                                   ; preds = %bb.h, %.lr.ph.split.us.us.preheader
  %indvar.next100 = add nuw nsw i64 %indvar99, 1  ; 2 uses
  %exitcond112.not = icmp eq i64 %indvar.next100, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge80.split, label %.preheader.us

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ %indvar.next, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.er = mul nuw nsw i64 %indvar, %i.cj          ; 4 uses
  %i.es = trunc nuw nsw i64 %indvar to i32
  %.reass82 = add i32 %invariant.op81, %i.es
  %.reass82.fr = freeze i32 %.reass82             ; 7 uses
  %i.et = zext i32 %.reass82.fr to i64            ; 2 uses
  %i.eu = mul nuw nsw i64 %i.cu, %i.et
  %i.ev = icmp sgt i32 %.reass82.fr, -1
  %i.ew = shl nuw i32 %.reass82.fr, 1
  %i.ex = and i32 %i.ew, 14                       ; 4 uses
  %i.ey = getelementptr [4 x i8], ptr %2, i64 %i.eu ; 4 uses
  br i1 %i.ev, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.preheader:                           ; preds = %.preheader
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.dk
  br i1 %brmerge, label %.lr.ph.split.preheader172, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %i.ez = mul nuw nsw i64 %i.et, %i.cu            ; 2 uses
  %i.fa = shl i64 %i.ez, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.fa
  %.reass175 = add i64 %i.ez, %invariant.op174
  %i.fb = shl i64 %.reass175, 2
  %i.fc = getelementptr i8, ptr %2, i64 %i.fb
  %bound0132 = icmp ult ptr %3, %i.fc
  %bound1133 = icmp ult ptr %gep, %scevgep131
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx = or i1 %found.conflict, %found.conflict134
  br i1 %conflict.rdx, label %.lr.ph.split.preheader172, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.er
  %broadcast.splatinsert137 = insertelement <8 x i32> poison, i32 %.reass82.fr, i64 0
  %broadcast.splat138 = shufflevector <8 x i32> %broadcast.splatinsert137, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <8 x i32> poison, i32 %i.ex, i64 0
  %broadcast.splat142 = shufflevector <8 x i32> %broadcast.splatinsert141, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.fe = add <8 x i32> %broadcast.splat, %vec.ind ; 4 uses
  %i.ff = extractelement <8 x i32> %i.fe, i64 0
  %i.fg = zext i32 %i.ff to i64
  %i.fh = icmp sgt <8 x i32> %i.fe, splat (i32 -1) ; 2 uses
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %broadcast.splat136, <8 x i1> %i.fh, <8 x i32> poison), !tbaa !78, !alias.scope !466
  %i.fi = icmp slt <8 x i32> %broadcast.splat138, %wide.masked.gather
  %i.fj = icmp slt <8 x i32> %i.fe, %broadcast.splat140
  %i.fk = select <8 x i1> %i.fh, <8 x i1> %i.fi, <8 x i1> zeroinitializer
end_hunk_1
begin_hunk_2_@process_lch_xtrans:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.process_lch_xtrans.RGBmax, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, i8 0, i64 12, i1 false)
  %i.qd = add nuw i32 %.014423, 600               ; 2 uses
  %i.qe = getelementptr [4 x i8], ptr %.014721, i64 %i.ag ; 3 uses
  %i.qf = getelementptr i8, ptr %i.qe, i64 -4
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !12 ; 3 uses
  %i.qh = add nuw i32 %.014423, 599
  %i.qi = srem i32 %i.qh, 6
  %i.qj = sext i32 %i.qi to i64                   ; 3 uses
  %i.qk = getelementptr inbounds i8, ptr %i.cj, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !97
  %i.qm = zext i8 %i.ql to i64                    ; 3 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.qm ; 2 uses
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !12
  %i.qp = fadd reassoc nsz arcp contract afn float %i.qo, %i.qg
  store float %i.qp, ptr %i.qn, align 4, !tbaa !12
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qm ; 2 uses
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !15
  %i.qs = add nsw i32 %i.qr, 1
  store i32 %i.qs, ptr %i.qq, align 4, !tbaa !15
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.qm ; 2 uses
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !12 ; 2 uses
  %i.qv = fcmp reassoc nsz arcp contract afn ogt float %i.qu, %i.qg
  %.167 = select reassoc nsz arcp contract afn i1 %i.qv, float %i.qu, float %i.qg
  store float %.167, ptr %i.qt, align 4, !tbaa !12
  %i.qw = load float, ptr %i.qe, align 4, !tbaa !12 ; 3 uses
  %i.qx = srem i32 %i.qd, 6
  %i.qy = sext i32 %i.qx to i64                   ; 3 uses
  %i.qz = getelementptr inbounds i8, ptr %i.cj, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !97
  %i.rb = zext i8 %i.ra to i64                    ; 3 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.rb ; 2 uses
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !12
  %i.re = fadd reassoc nsz arcp contract afn float %i.rd, %i.qw
  store float %i.re, ptr %i.rc, align 4, !tbaa !12
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rb ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !15
  %i.rh = add nsw i32 %i.rg, 1
  store i32 %i.rh, ptr %i.rf, align 4, !tbaa !15
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.rb ; 2 uses
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !12 ; 2 uses
  %i.rk = fcmp reassoc nsz arcp contract afn ogt float %i.rj, %i.qw
  %.167.1 = select reassoc nsz arcp contract afn i1 %i.rk, float %i.rj, float %i.qw
  store float %.167.1, ptr %i.ri, align 4, !tbaa !12
  %i.rl = getelementptr i8, ptr %i.qe, i64 4
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !12 ; 3 uses
  %i.rn = add nuw i32 %.014423, 601
  %i.ro = srem i32 %i.rn, 6
  %i.rp = sext i32 %i.ro to i64                   ; 3 uses
  %i.rq = getelementptr inbounds i8, ptr %i.cj, i64 %i.rp
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !97
  %i.rs = zext i8 %i.rr to i64                    ; 3 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.rs ; 2 uses
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !12
  %i.rv = fadd reassoc nsz arcp contract afn float %i.ru, %i.rm
  store float %i.rv, ptr %i.rt, align 4, !tbaa !12
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rs ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !15
  %i.ry = add nsw i32 %i.rx, 1
  store i32 %i.ry, ptr %i.rw, align 4, !tbaa !15
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.rs ; 2 uses
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !12 ; 2 uses
  %i.sb = fcmp reassoc nsz arcp contract afn ogt float %i.sa, %i.rm
  %.167.2 = select reassoc nsz arcp contract afn i1 %i.sb, float %i.sa, float %i.rm
  store float %.167.2, ptr %i.rz, align 4, !tbaa !12
  %i.sc = getelementptr i8, ptr %.014721, i64 -4
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !12 ; 3 uses
  %i.se = getelementptr inbounds i8, ptr %i.cm, i64 %i.qj
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !97
  %i.sg = zext i8 %i.sf to i64                    ; 3 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.sg ; 2 uses
  %i.si = load float, ptr %i.sh, align 4, !tbaa !12
  %i.sj = fadd reassoc nsz arcp contract afn float %i.si, %i.sd
  store float %i.sj, ptr %i.sh, align 4, !tbaa !12
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.sg ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !15
  %i.sm = add nsw i32 %i.sl, 1
  store i32 %i.sm, ptr %i.sk, align 4, !tbaa !15
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.sg ; 2 uses
  %i.so = load float, ptr %i.sn, align 4, !tbaa !12 ; 2 uses
  %i.sp = fcmp reassoc nsz arcp contract afn ogt float %i.so, %i.sd
  %.167.175 = select reassoc nsz arcp contract afn i1 %i.sp, float %i.so, float %i.sd
  store float %.167.175, ptr %i.sn, align 4, !tbaa !12
  %i.sq = getelementptr inbounds i8, ptr %i.cm, i64 %i.qy
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !97
  %i.ss = zext i8 %i.sr to i64                    ; 3 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ss ; 2 uses
  %i.su = load float, ptr %i.st, align 4, !tbaa !12
  %i.sv = fadd reassoc nsz arcp contract afn float %i.su, %i.ii
  store float %i.sv, ptr %i.st, align 4, !tbaa !12
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ss ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !15
  %i.sy = add nsw i32 %i.sx, 1
  store i32 %i.sy, ptr %i.sw, align 4, !tbaa !15
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ss ; 2 uses
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !12 ; 2 uses
  %i.tb = fcmp reassoc nsz arcp contract afn ogt float %i.ta, %i.ii
  %.167.1.1 = select reassoc nsz arcp contract afn i1 %i.tb, float %i.ta, float %i.ii
  store float %.167.1.1, ptr %i.sz, align 4, !tbaa !12
  %i.tc = getelementptr i8, ptr %.014721, i64 4
  %i.td = load float, ptr %i.tc, align 4, !tbaa !12 ; 3 uses
  %i.te = getelementptr inbounds i8, ptr %i.cm, i64 %i.rp
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !97
  %i.tg = zext i8 %i.tf to i64                    ; 3 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.tg ; 2 uses
  %i.ti = load float, ptr %i.th, align 4, !tbaa !12
  %i.tj = fadd reassoc nsz arcp contract afn float %i.ti, %i.td
  store float %i.tj, ptr %i.th, align 4, !tbaa !12
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.tg ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !15
  %i.tm = add nsw i32 %i.tl, 1
  store i32 %i.tm, ptr %i.tk, align 4, !tbaa !15
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.tg ; 2 uses
  %i.to = load float, ptr %i.tn, align 4, !tbaa !12 ; 2 uses
  %i.tp = fcmp reassoc nsz arcp contract afn ogt float %i.to, %i.td
  %.167.2.1 = select reassoc nsz arcp contract afn i1 %i.tp, float %i.to, float %i.td
  store float %.167.2.1, ptr %i.tn, align 4, !tbaa !12
  %i.tq = getelementptr [4 x i8], ptr %.014721, i64 %i.n ; 3 uses
  %i.tr = getelementptr i8, ptr %i.tq, i64 -4
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !12 ; 3 uses
  %i.tt = getelementptr inbounds i8, ptr %i.cr, i64 %i.qj
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !97
  %i.tv = zext i8 %i.tu to i64                    ; 3 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.tv ; 2 uses
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !12
  %i.ty = fadd reassoc nsz arcp contract afn float %i.tx, %i.ts
  store float %i.ty, ptr %i.tw, align 4, !tbaa !12
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.tv ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !15
  %i.ub = add nsw i32 %i.ua, 1
  store i32 %i.ub, ptr %i.tz, align 4, !tbaa !15
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.tv ; 2 uses
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !12 ; 2 uses
  %i.ue = fcmp reassoc nsz arcp contract afn ogt float %i.ud, %i.ts
  %.167.276 = select reassoc nsz arcp contract afn i1 %i.ue, float %i.ud, float %i.ts
  store float %.167.276, ptr %i.uc, align 4, !tbaa !12
  %i.uf = load float, ptr %i.tq, align 4, !tbaa !12 ; 3 uses
  %i.ug = getelementptr inbounds i8, ptr %i.cr, i64 %i.qy
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !97
  %i.ui = zext i8 %i.uh to i64                    ; 3 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ui ; 2 uses
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !12
  %i.ul = fadd reassoc nsz arcp contract afn float %i.uk, %i.uf
  store float %i.ul, ptr %i.uj, align 4, !tbaa !12
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ui ; 2 uses
  %i.un = load i32, ptr %i.um, align 4, !tbaa !15
  %i.uo = add nsw i32 %i.un, 1
  store i32 %i.uo, ptr %i.um, align 4, !tbaa !15
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ui ; 2 uses
  %i.uq = load float, ptr %i.up, align 4, !tbaa !12 ; 2 uses
  %i.ur = fcmp reassoc nsz arcp contract afn ogt float %i.uq, %i.uf
  %.167.1.2 = select reassoc nsz arcp contract afn i1 %i.ur, float %i.uq, float %i.uf
  store float %.167.1.2, ptr %i.up, align 4, !tbaa !12
  %i.us = getelementptr i8, ptr %i.tq, i64 4
  %i.ut = load float, ptr %i.us, align 4, !tbaa !12 ; 3 uses
  %i.uu = getelementptr inbounds i8, ptr %i.cr, i64 %i.rp
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !97
  %i.uw = zext i8 %i.uv to i64                    ; 3 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.uw ; 2 uses
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !12
  %i.uz = fadd reassoc nsz arcp contract afn float %i.uy, %i.ut
  store float %i.uz, ptr %i.ux, align 4, !tbaa !12
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.uw ; 2 uses
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !15
  %i.vc = add nsw i32 %i.vb, 1
  store i32 %i.vc, ptr %i.va, align 4, !tbaa !15
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.uw ; 2 uses
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !12 ; 2 uses
  %i.vf = fcmp reassoc nsz arcp contract afn ogt float %i.ve, %i.ut
  %.167.2.2 = select reassoc nsz arcp contract afn i1 %i.vf, float %i.ve, float %i.ut
  store float %.167.2.2, ptr %i.vd, align 4, !tbaa !12
  %i.vg = load float, ptr %i.b, align 16, !tbaa !12 ; 3 uses
  %i.vh = load float, ptr %i.s, align 4, !tbaa !12 ; 4 uses
  %i.vi = load float, ptr %i.t, align 8, !tbaa !12 ; 3 uses
  %i.vj = fadd reassoc nsz arcp contract afn float %i.vh, %i.vg ; 2 uses
  %i.vk = fadd reassoc nsz arcp contract afn float %i.vj, %i.vi
  %i.vl = fmul reassoc nsz arcp contract afn float %i.vk, f0x3EAAAAAB ; 2 uses
  %i.vm = fsub reassoc nsz arcp contract afn float %i.vg, %i.vh
  %i.vn = fpext reassoc nsz arcp contract afn float %i.vm to x86_fp80
  %i.vo = fmul reassoc nsz arcp contract afn x86_fp80 %i.vn, f0x3FFFDDB3D742C265539E
  %i.vp = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.vo to float ; 4 uses
  %i.vq = fmul reassoc nsz arcp contract afn float %i.vi, 2.000000e+00
  %i.vr = fsub reassoc nsz arcp contract afn float %i.vq, %i.vj ; 4 uses
  %i.vs = fcmp reassoc nsz arcp contract afn une float %i.vg, %i.vh
  %i.vt = fcmp reassoc nsz arcp contract afn une float %i.vh, %i.vi
  %or.cond168 = select i1 %i.vs, i1 %i.vt, i1 false
  br i1 %or.cond168, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread
  %i.vu = load float, ptr %i.u, align 8, !tbaa !12
  %i.vv = load i32, ptr %i.v, align 8, !tbaa !15
  %i.vw = sitofp reassoc nsz arcp contract afn i32 %i.vv to float
  %i.vx = fdiv reassoc nsz arcp contract afn float %i.vu, %i.vw ; 2 uses
  %i.vy = fcmp reassoc nsz arcp contract afn olt float %i.vx, %5
  %i.vz = select reassoc nsz arcp contract afn i1 %i.vy, float %i.vx, float %5
  %i.wa = fmul reassoc nsz arcp contract afn float %i.vz, 2.000000e+00
  %i.wb = load <2 x float>, ptr %i.a, align 16, !tbaa !12
  %i.wc = load <2 x i32>, ptr %i.c, align 8, !tbaa !15
  %i.wd = sitofp reassoc nsz arcp contract afn <2 x i32> %i.wc to <2 x float>
  %i.we = fdiv reassoc nsz arcp contract afn <2 x float> %i.wb, %i.wd ; 2 uses
  %i.wf = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.we, %i.bf
  %i.wg = select <2 x i1> %i.wf, <2 x float> %i.we, <2 x float> %i.bf ; 2 uses
  %i.wh = extractelement <2 x float> %i.wg, i64 0 ; 2 uses
  %i.wi = extractelement <2 x float> %i.wg, i64 1 ; 2 uses
  %i.wj = fadd reassoc nsz arcp contract afn float %i.wi, %i.wh
  %i.wk = fsub reassoc nsz arcp contract afn float %i.wa, %i.wj ; 2 uses
  %i.wl = fsub reassoc nsz arcp contract afn float %i.wh, %i.wi
  %i.wm = fpext reassoc nsz arcp contract afn float %i.wl to x86_fp80
  %i.wn = fmul reassoc nsz arcp contract afn x86_fp80 %i.wm, f0x3FFFDDB3D742C265539E
  %i.wo = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.wn to float ; 2 uses
  %i.wp = fmul reassoc nsz arcp contract afn float %i.wo, %i.wo
  %i.wq = fmul reassoc nsz arcp contract afn float %i.wk, %i.wk
  %i.wr = fadd reassoc nsz arcp contract afn float %i.wp, %i.wq
  %i.ws = fmul reassoc nsz arcp contract afn float %i.vp, %i.vp
  %i.wt = fmul reassoc nsz arcp contract afn float %i.vr, %i.vr
  %i.wu = fadd reassoc nsz arcp contract afn float %i.ws, %i.wt
  %i.wv = fdiv reassoc nsz arcp contract afn float %i.wr, %i.wu
  %i.ww = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.wv) ; 2 uses
  %i.wx = fmul reassoc nsz arcp contract afn float %i.ww, %i.vp
  %i.wy = fmul reassoc nsz arcp contract afn float %i.ww, %i.vr
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread
  %.0135 = phi nsz float [ %i.wx, %bb.g ], [ %i.vp, %.thread ]
  %.0 = phi nsz float [ %i.wy, %bb.g ], [ %i.vr, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.wz = fmul reassoc nsz arcp contract afn float %.0, f0x3E2AAAAB
  %i.xa = fsub reassoc nsz arcp contract afn float %i.vl, %i.wz
  %i.xb = fpext reassoc nsz arcp contract afn float %i.xa to x86_fp80 ; 2 uses
  %i.xc = fpext reassoc nsz arcp contract afn float %.0135 to x86_fp80
  %i.xd = fmul reassoc nsz arcp contract afn x86_fp80 %i.xc, f0x3FFD93CD3A2C8198E269 ; 2 uses
  %i.xe = fadd reassoc nsz arcp contract afn x86_fp80 %i.xd, %i.xb
  %i.xf = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.xe to float
  store float %i.xf, ptr %i.d, align 16, !tbaa !12
  %i.xg = fsub reassoc nsz arcp contract afn x86_fp80 %i.xb, %i.xd
  %i.xh = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.xg to float
  store float %i.xh, ptr %i.w, align 4, !tbaa !12
  %i.xi = fmul reassoc nsz arcp contract afn float %.0, f0x3EAAAAAB
  %i.xj = fadd reassoc nsz arcp contract afn float %i.xi, %i.vl
  store float %i.xj, ptr %i.x, align 8, !tbaa !12
  %i.xk = urem i32 %i.qd, 6
  %i.xl = zext nneg i32 %i.xk to i64
  %i.xm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.xl
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !97
  %i.xo = zext i8 %i.xn to i64
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.xo
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !12
  store float %i.xq, ptr %.014820, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.i

.critedge:                                        ; preds = %.loopexit, %.loopexit.1, %.loopexit.2, %.loopexit.162, %.loopexit.1.1, %.loopexit.2.1, %.loopexit.272, %.loopexit.1.2, %bb.f, %.loopexit.2.2
  store float %i.ii, ptr %.014820, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge, %bb.d
  %i.xr = getelementptr inbounds nuw i8, ptr %.014820, i64 4
  %i.xs = getelementptr inbounds nuw i8, ptr %.014721, i64 4
  %i.xt = add nuw nsw i32 %.014423, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.xt, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @process_lch_bayer(i32 %.516.val, ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, float noundef %3) unnamed_addr #17 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !78   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader6.lr.ph, label %._crit_edge32.split

.preheader6.lr.ph:                                ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !79   ; 7 uses
  %i.i = icmp sgt i32 %i.h, 0
  %i.j = sext i32 %i.h to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br i1 %i.i, label %.preheader6.preheader, label %._crit_edge32.split

.preheader6.preheader:                            ; preds = %.preheader6.lr.ph
  %i.m = add nsw i32 %i.e, -1
  %i.n = add nsw i32 %i.h, -1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = zext nneg i32 %i.m to i64
  %wide.trip.count48 = zext nneg i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 8 uses
  %wide.trip.count43 = zext nneg i32 %i.h to i64
  %min.iters.check = icmp ult i32 %i.h, 4
  %i.q = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.q, -128
  %or.cond67 = or i1 %min.iters.check, %diff.check
  %min.iters.check56 = icmp ult i32 %i.h, 32
  %i.r = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  %n.vec60 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert61 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat62 = shufflevector <4 x float> %broadcast.splatinsert61, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n66 = icmp eq i64 %n.vec60, %wide.trip.count
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %._crit_edge
  %indvars.iv45 = phi i64 [ 0, %.preheader6.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 5 uses
  %i.s = mul nuw nsw i64 %indvars.iv45, %i.j      ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s ; 12 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 12 uses
  %i.v = icmp eq i64 %indvars.iv45, %i.p
  %indvars.iv45.tr = trunc nuw i64 %indvars.iv45 to i32
  %i.w = shl nuw i32 %indvars.iv45.tr, 1
  %i.x = and i32 %i.w, 14                         ; 2 uses
  %.fr = freeze i1 %i.v
  br i1 %.fr, label %iter.check, label %.lr.ph.split.preheader

iter.check:                                       ; preds = %.preheader6
  br i1 %or.cond67, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load = load <8 x float>, ptr %i.z, align 4, !tbaa !12 ; 2 uses
  %wide.load57 = load <8 x float>, ptr %i.aa, align 4, !tbaa !12 ; 2 uses
  %wide.load58 = load <8 x float>, ptr %i.ab, align 4, !tbaa !12 ; 2 uses
  %wide.load59 = load <8 x float>, ptr %i.ac, align 4, !tbaa !12 ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat, %wide.load
  %i.ae = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat, %wide.load57
  %i.af = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat, %wide.load58
  %i.ag = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat, %wide.load59
  %i.ah = select reassoc nsz arcp contract afn <8 x i1> %i.ad, <8 x float> %broadcast.splat, <8 x float> %wide.load
  %i.ai = select reassoc nsz arcp contract afn <8 x i1> %i.ae, <8 x float> %broadcast.splat, <8 x float> %wide.load57
  %i.aj = select reassoc nsz arcp contract afn <8 x i1> %i.af, <8 x float> %broadcast.splat, <8 x float> %wide.load58
  %i.ak = select reassoc nsz arcp contract afn <8 x i1> %i.ag, <8 x float> %broadcast.splat, <8 x float> %wide.load59
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  store <8 x float> %i.ah, ptr %i.y, align 4, !tbaa !12
  store <8 x float> %i.ai, ptr %i.al, align 4, !tbaa !12
  store <8 x float> %i.aj, ptr %i.am, align 4, !tbaa !12
  store <8 x float> %i.ak, ptr %i.an, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !497

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !142

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index63 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index63
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index63
  %wide.load64 = load <4 x float>, ptr %i.aq, align 4, !tbaa !12 ; 2 uses
  %i.ar = fcmp reassoc nsz arcp contract afn olt <4 x float> %broadcast.splat62, %wide.load64
  %i.as = select reassoc nsz arcp contract afn <4 x i1> %i.ar, <4 x float> %broadcast.splat62, <4 x float> %wide.load64
  store <4 x float> %i.as, ptr %i.ap, align 4, !tbaa !12
  %index.next65 = add nuw i64 %index63, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next65, %n.vec60
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !498

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n66, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv40.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ] ; 4 uses
  %i.au = sub nsw i64 %wide.trip.count, %indvars.iv40.ph
  %xtraiter = and i64 %i.au, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv40.prol = phi i64 [ %indvars.iv.next41.prol, %.lr.ph.split.us.prol ], [ %indvars.iv40.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv40.prol
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv40.prol
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !12 ; 2 uses
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %3, %i.ax
end_hunk_2
begin_hunk_3_@process_lch_bayer:bb.a
  %i.dr = select i1 %i.dc, i1 true, i1 %i.dq
  %i.ds = or disjoint i32 %i.cq, %i.bd
  %i.dt = shl nuw nsw i32 %i.ds, 1
  %i.du = lshr i32 %.516.val, %i.dt
  %i.dv = and i32 %i.du, 3
  switch i32 %i.dv, label %default.unreachable [
    i32 0, label %bb.l
    i32 1, label %bb.k
    i32 2, label %bb.j
    i32 3, label %bb.m
  ]

bb.j:                                             ; preds = %.preheader.1
  br label %bb.m

bb.k:                                             ; preds = %.preheader.1
  %i.dw = fcmp reassoc nsz arcp contract afn olt float %.2115.1, %i.dp
  %i.dx = select reassoc nsz arcp contract afn i1 %i.dw, float %.2115.1, float %i.dp
  %i.dy = fcmp reassoc nsz arcp contract afn ogt float %.2112.1, %i.dp
  %i.dz = select reassoc nsz arcp contract afn i1 %i.dy, float %.2112.1, float %i.dp
  br label %bb.m

bb.l:                                             ; preds = %.preheader.1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %.preheader.1
  %.2118.135 = phi nsz float [ %.2118.1, %.preheader.1 ], [ %i.dp, %bb.l ], [ %.2118.1, %bb.k ], [ %.2118.1, %bb.j ] ; 3 uses
  %.2115.136 = phi nsz float [ %.2115.1, %.preheader.1 ], [ %.2115.1, %bb.l ], [ %i.dx, %bb.k ], [ %.2115.1, %bb.j ] ; 5 uses
  %.2112.137 = phi nsz float [ %.2112.1, %.preheader.1 ], [ %.2112.1, %bb.l ], [ %i.dz, %bb.k ], [ %.2112.1, %bb.j ] ; 5 uses
  %.2.138 = phi nsz float [ %.2.1, %.preheader.1 ], [ %.2.1, %bb.l ], [ %.2.1, %bb.k ], [ %i.dp, %bb.j ] ; 3 uses
  %i.ea = getelementptr i8, ptr %i.do, i64 4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !12 ; 7 uses
  %i.ec = fcmp reassoc nsz arcp contract afn ogt float %i.eb, %3
  %i.ed = select i1 %i.dr, i1 true, i1 %i.ec
  %i.ee = or disjoint i32 %i.df, %i.bd
  %i.ef = shl nuw nsw i32 %i.ee, 1
  %i.eg = lshr i32 %.516.val, %i.ef
  %i.eh = and i32 %i.eg, 3
  switch i32 %i.eh, label %default.unreachable [
    i32 0, label %bb.p
    i32 1, label %bb.o
    i32 2, label %bb.n
    i32 3, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ei = fcmp reassoc nsz arcp contract afn olt float %.2115.136, %i.eb
  %i.ej = select reassoc nsz arcp contract afn i1 %i.ei, float %.2115.136, float %i.eb
  %i.ek = fcmp reassoc nsz arcp contract afn ogt float %.2112.137, %i.eb
  %i.el = select reassoc nsz arcp contract afn i1 %i.ek, float %.2112.137, float %i.eb
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.2118.1.1 = phi nsz float [ %.2118.135, %bb.m ], [ %i.eb, %bb.p ], [ %.2118.135, %bb.o ], [ %.2118.135, %bb.n ] ; 5 uses
  %.2115.1.1 = phi nsz float [ %.2115.136, %bb.m ], [ %.2115.136, %bb.p ], [ %i.ej, %bb.o ], [ %.2115.136, %bb.n ] ; 2 uses
  %.2112.1.1 = phi nsz float [ %.2112.137, %bb.m ], [ %.2112.137, %bb.p ], [ %i.el, %bb.o ], [ %.2112.137, %bb.n ] ; 4 uses
  %.2.1.1 = phi nsz float [ %.2.138, %bb.m ], [ %.2.138, %bb.p ], [ %.2.138, %bb.o ], [ %i.eb, %bb.n ] ; 5 uses
  br i1 %i.ed, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.em = fadd reassoc nsz arcp contract afn float %.2112.1.1, %.2118.1.1 ; 2 uses
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, %.2.1.1
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, f0x3EAAAAAB ; 2 uses
  %i.ep = fsub reassoc nsz arcp contract afn float %.2118.1.1, %.2112.1.1
  %i.eq = fpext reassoc nsz arcp contract afn float %i.ep to x86_fp80
  %i.er = fmul reassoc nsz arcp contract afn x86_fp80 %i.eq, f0x3FFFDDB3D742C265539E
  %i.es = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.er to float ; 4 uses
  %i.et = fmul reassoc nsz arcp contract afn float %.2.1.1, 2.000000e+00
  %i.eu = fsub reassoc nsz arcp contract afn float %i.et, %i.em ; 4 uses
  %i.ev = fcmp reassoc nsz arcp contract afn une float %.2118.1.1, %.2112.1.1
  %i.ew = fcmp reassoc nsz arcp contract afn une float %.2112.1.1, %.2.1.1
  %or.cond = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ex = fcmp reassoc nsz arcp contract afn olt float %.2.1.1, %3
  %i.ey = select reassoc nsz arcp contract afn i1 %i.ex, float %.2.1.1, float %3
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ey, 2.000000e+00
  %i.fa = fcmp reassoc nsz arcp contract afn olt float %.2115.1.1, %3
  %i.fb = select reassoc nsz arcp contract afn i1 %i.fa, float %.2115.1.1, float %3 ; 2 uses
  %i.fc = fcmp reassoc nsz arcp contract afn olt float %.2118.1.1, %3
  %i.fd = select reassoc nsz arcp contract afn i1 %i.fc, float %.2118.1.1, float %3 ; 2 uses
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fd, %i.fb
  %i.ff = fsub reassoc nsz arcp contract afn float %i.ez, %i.fe ; 2 uses
  %i.fg = fsub reassoc nsz arcp contract afn float %i.fd, %i.fb
  %i.fh = fpext reassoc nsz arcp contract afn float %i.fg to x86_fp80
  %i.fi = fmul reassoc nsz arcp contract afn x86_fp80 %i.fh, f0x3FFFDDB3D742C265539E
  %i.fj = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.fi to float ; 2 uses
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fj, %i.fj
  %i.fl = fmul reassoc nsz arcp contract afn float %i.ff, %i.ff
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fk, %i.fl
  %i.fn = fmul reassoc nsz arcp contract afn float %i.es, %i.es
  %i.fo = fmul reassoc nsz arcp contract afn float %i.eu, %i.eu
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fn, %i.fo
  %i.fq = fdiv reassoc nsz arcp contract afn float %i.fm, %i.fp
  %i.fr = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fq) ; 2 uses
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fr, %i.es
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fr, %i.eu
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0106 = phi nsz float [ %i.fs, %bb.s ], [ %i.es, %bb.r ]
  %.0 = phi nsz float [ %i.ft, %bb.s ], [ %i.eu, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.fu = fmul reassoc nsz arcp contract afn float %.0, f0x3E2AAAAB
  %i.fv = fsub reassoc nsz arcp contract afn float %i.eo, %i.fu
  %i.fw = fpext reassoc nsz arcp contract afn float %i.fv to x86_fp80 ; 2 uses
  %i.fx = fpext reassoc nsz arcp contract afn float %.0106 to x86_fp80
  %i.fy = fmul reassoc nsz arcp contract afn x86_fp80 %i.fx, f0x3FFD93CD3A2C8198E269 ; 2 uses
  %i.fz = fadd reassoc nsz arcp contract afn x86_fp80 %i.fy, %i.fw
  %i.ga = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.fz to float
  store float %i.ga, ptr %i.c, align 16, !tbaa !12
  %i.gb = fsub reassoc nsz arcp contract afn x86_fp80 %i.fw, %i.fy
  %i.gc = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.gb to float
  store float %i.gc, ptr %i.k, align 4, !tbaa !12
  %i.gd = fmul reassoc nsz arcp contract afn float %.0, f0x3EAAAAAB
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, %i.eo
  store float %i.ge, ptr %i.l, align 8, !tbaa !12
  %i.gf = zext nneg i32 %i.cu to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !12
  store float %i.gh, ptr %i.ck, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  store float %i.cn, ptr %i.ck, align 4, !tbaa !12
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.b
  %indvars.iv.next.pre-phi = phi i64 [ %i.dd, %bb.t ], [ %i.dd, %bb.u ], [ %.pre, %bb.b ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_process_opposed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef range(i32 0, 2) %6, i32 noundef range(i32 0, 2) %7, float noundef %8) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 28 uses
  %i.b = alloca [4 x float], align 16             ; 11 uses
  %i.c = alloca [4 x float], align 16             ; 12 uses
  %i.d = alloca [3 x i8], align 1                 ; 28 uses
  %i.e = alloca [4 x float], align 16             ; 8 uses
  %i.f = alloca [4 x float], align 16             ; 8 uses
  %i.g = alloca [4 x float], align 16             ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.j = load i32, ptr %i.i, align 4, !tbaa !80   ; 19 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.n = load i32, ptr %i.m, align 16, !tbaa !96
  %.not = icmp eq i32 %i.n, 0
  %i.o = insertelement <2 x float> poison, float %8, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br i1 %.not, label %.thread335, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.r = load <2 x float>, ptr %i.q, align 16, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.t = load float, ptr %i.s, align 8, !tbaa !12
  %i.u = fmul reassoc nsz arcp contract afn <2 x float> %i.r, %i.p
  %i.v = fmul reassoc nsz arcp contract afn float %i.t, %8
  br label %.thread335

.thread335:                                       ; preds = %bb.a, %bb.b
  %i.w = phi float [ %i.v, %bb.b ], [ %8, %bb.a ] ; 2 uses
  %i.x = phi <2 x float> [ %i.u, %bb.b ], [ %i.p, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store <2 x float> %i.x, ptr %i.a, align 16, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.w, ptr %i.y, align 8, !tbaa !12
  %.ptr309 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %.ptr309, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !99  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2480
  %i.ac = load i32, ptr %i.ab, align 16, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %.not312 = icmp eq i32 %i.ac, 0
  br i1 %.not312, label %.thread337, label %bb.c

.thread337:                                       ; preds = %.thread335
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.c:                                             ; preds = %.thread335
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 2416
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 2448
  %i.ag = load <2 x double>, ptr %i.ae, align 16, !tbaa !145
  %i.ah = load <2 x double>, ptr %i.af, align 16, !tbaa !145
  %i.ai = fdiv reassoc nsz arcp contract afn <2 x double> %i.ag, %i.ah
  %i.aj = fptrunc reassoc nsz arcp contract afn <2 x double> %i.ai to <2 x float>
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 2432
  %i.am = load double, ptr %i.al, align 16, !tbaa !145
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 2464
  %i.ao = load double, ptr %i.an, align 16, !tbaa !145
  %i.ap = fdiv reassoc nsz arcp contract afn double %i.am, %i.ao
  %i.aq = fptrunc reassoc nsz arcp contract afn double %i.ap to float
  br label %bb.d

bb.d:                                             ; preds = %.thread337, %bb.c
  %i.ar = phi ptr [ %i.ad, %.thread337 ], [ %i.ak, %bb.c ]
  %i.as = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.thread337 ], [ %i.aq, %bb.c ]
  %i.at = phi <2 x float> [ splat (float 1.000000e+00), %.thread337 ], [ %i.aj, %bb.c ]
  store <2 x float> %i.at, ptr %i.b, align 16, !tbaa !12
  store float %i.as, ptr %i.ar, align 4, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 1.000000e+00, ptr %i.au, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.ax = load <2 x i32>, ptr %i.av, align 4, !tbaa !15 ; 3 uses
  %i.ay = sdiv <2 x i32> %i.ax, splat (i32 3)     ; 2 uses
  %i.az = extractelement <2 x i32> %i.ay, i64 0   ; 4 uses
  %i.ba = sext i32 %i.az to i64                   ; 15 uses
  %i.bb = extractelement <2 x i32> %i.ay, i64 1
  %i.bc = sext i32 %i.bb to i64                   ; 4 uses
  %i.bd = tail call i64 @dt_round_size(i64 noundef %i.ba, i64 noundef 4) #33 ; 2 uses
  %i.be = tail call i64 @dt_round_size(i64 noundef %i.bc, i64 noundef 4) #33 ; 2 uses
  %i.bf = mul i64 %i.be, %i.bd                    ; 12 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load ptr, ptr %i.bg, align 16, !tbaa !53 ; 4 uses
  %i.bi = tail call i64 @dt_dev_pixelpipe_piece_hash(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bk = mul i64 %i.bi, 33
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !97
  %i.bm = zext i8 %i.bl to i64
  %i.bn = xor i64 %i.bk, %i.bm
  %i.bo = mul i64 %i.bn, 33
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 17
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !97
  %i.br = zext i8 %i.bq to i64
  %i.bs = xor i64 %i.bo, %i.br
  %i.bt = mul i64 %i.bs, 33
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 18
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !97
  %i.bw = zext i8 %i.bv to i64
  %i.bx = xor i64 %i.bt, %i.bw
  %i.by = mul i64 %i.bx, 33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 19
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !97
  %i.cb = zext i8 %i.ca to i64
  %i.cc = xor i64 %i.by, %i.cb
  %i.cd = load ptr, ptr %1, align 16, !tbaa !98
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 664
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !99 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2480
  %i.ch = mul i64 %i.cc, 33
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !97
  %i.cj = zext i8 %i.ci to i64
  %i.ck = xor i64 %i.ch, %i.cj
  %i.cl = mul i64 %i.ck, 33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 2481
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !97
  %i.co = zext i8 %i.cn to i64
  %i.cp = xor i64 %i.cl, %i.co
  %i.cq = mul i64 %i.cp, 33
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 2482
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !97
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %i.cq, %i.ct
  %i.cv = mul i64 %i.cu, 33
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cf, i64 2483
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !97
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.da = load i64, ptr @img_opphash, align 8, !tbaa !100
  %i.db = icmp eq i64 %i.cz, %i.da
  br i1 %i.db, label %.preheader349.preheader, label %bb.f

.preheader349.preheader:                          ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.c, ptr noundef nonnull align 16 dereferenceable(12) @img_oppchroma, i64 12, i1 false), !tbaa !12
  %i.dc = load i32, ptr @img_oppclipped, align 4, !tbaa !15
  %i.dd = or i32 %i.dc, %6
  %or.cond.not = icmp eq i32 %i.dd, 0
  br i1 %or.cond.not, label %bb.e, label %bb.ab

bb.e:                                             ; preds = %.preheader349.preheader
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 1, ptr noundef nonnull %4, ptr noundef %5) #33
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %.not313 = icmp eq i32 %7, 0
  br i1 %.not313, label %.thread338, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.de = mul i64 %i.bf, 6                        ; 2 uses
  %i.df = tail call ptr @dt_alloc_aligned(i64 noundef %i.de) #33 ; 23 uses
  %.not.i = icmp eq ptr %i.df, null
  br i1 %.not.i, label %.thread338, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.df, i8 0, i64 %i.de, i1 false)
  call void @llvm.assume(i1 true) [ "align"(ptr %i.df, i64 64) ]
  %i.dg = add nsw i64 %i.bc, -1                   ; 3 uses
  %.not411 = icmp eq i64 %i.dg, 0
  br i1 %.not411, label %._crit_edge371.thread, label %.preheader357.lr.ph

.preheader357.lr.ph:                              ; preds = %bb.h
  %i.dh = add nsw i64 %i.ba, -1                   ; 3 uses
  %.not412 = icmp eq i64 %i.dh, 0
  br i1 %.not412, label %._crit_edge371.thread, label %.preheader357.lr.ph.split.us

.preheader357.lr.ph.split.us:                     ; preds = %.preheader357.lr.ph
  %i.di = icmp eq i32 %i.j, 9
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.dl = shl i64 %i.bf, 1                        ; 2 uses
  br i1 %i.di, label %.preheader357.us.us, label %.preheader357.us

.preheader357.us.us:                              ; preds = %.preheader357.lr.ph.split.us, %._crit_edge.split.us.us.us
  %indvars.iv454 = phi i64 [ %indvars.iv.next455, %._crit_edge.split.us.us.us ], [ 0, %.preheader357.lr.ph.split.us ] ; 3 uses
  %.0281369.us.us = phi i32 [ %i.ka, %._crit_edge.split.us.us.us ], [ 0, %.preheader357.lr.ph.split.us ]
  %i.dm = mul nuw nsw i64 %indvars.iv454, 3       ; 5 uses
  %i.dn = mul nsw i64 %indvars.iv454, %i.ba
  %invariant.gep.us.us = getelementptr i8, ptr %i.df, i64 %i.dn
  %i.do = trunc i64 %i.dm to i32
  %i.dp = trunc i64 %i.dm to i32
  %i.dq = add i32 %i.dp, 600
  %i.dr = urem i32 %i.dq, 6
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.ds ; 3 uses
  %i.du = trunc i64 %i.dm to i32
  %i.dv = add i32 %i.du, 1
  %i.dw = trunc i64 %i.dm to i32
  %i.dx = add i32 %i.dw, 2
  %i.dy = trunc i64 %i.dm to i32
  %i.dz = insertelement <2 x i32> poison, i32 %i.dy, i64 0
  %i.ea = shufflevector <2 x i32> %i.dz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.eb = add <2 x i32> %i.ea, <i32 601, i32 602>
  %i.ec = urem <2 x i32> %i.eb, splat (i32 6)     ; 2 uses
  %i.ed = extractelement <2 x i32> %i.ec, i64 0
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.ee ; 3 uses
  %i.eg = extractelement <2 x i32> %i.ec, i64 1
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.eh ; 3 uses
  br label %.split362.us.us.us.us

.split362.us.us.us.us:                            ; preds = %.split362.us.us.us.us, %.preheader357.us.us
  %indvars.iv449 = phi i64 [ %indvars.iv.next450, %.split362.us.us.us.us ], [ 0, %.preheader357.us.us ] ; 3 uses
  %.1282367.us.us.us = phi i32 [ %i.ka, %.split362.us.us.us.us ], [ %.0281369.us.us, %.preheader357.us.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, i8 0, i64 3, i1 false)
  %i.ej = load i32, ptr %i.av, align 4, !tbaa !79 ; 3 uses
  %i.ek = mul nuw nsw i64 %indvars.iv449, 3       ; 3 uses
  %i.el = mul i32 %i.ej, %i.do
  %i.em = trunc nuw nsw i64 %i.ek to i32          ; 3 uses
  %invariant.op.us.us.us.us = add i32 %i.el, %i.em ; 3 uses
  %i.en = sext i32 %invariant.op.us.us.us.us to i64
  %i.eo = trunc i64 %i.ek to i32
  %i.ep = add i32 %i.eo, 600
  %i.eq = urem i32 %i.ep, 6
  %i.er = zext nneg i32 %i.eq to i64              ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !97
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.en
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !12
  %i.ew = zext i8 %i.et to i64                    ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !12
  %i.ez = fcmp reassoc nsz arcp contract afn oge float %i.ev, %i.ey
  %i.fa = zext i1 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ew ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !97
  %i.fd = add i8 %i.fc, %i.fa
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !97
  %.reass.us.us.us.us.us.1 = add i32 %invariant.op.us.us.us.us, 1
  %i.fe = sext i32 %.reass.us.us.us.us.us.1 to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fe
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !12
  %.reass.us.us.us.us.us.2 = add i32 %invariant.op.us.us.us.us, 2
  %i.fh = sext i32 %.reass.us.us.us.us.us.2 to i64
  %i.fi = trunc i64 %i.ek to i32
  %i.fj = insertelement <2 x i32> poison, i32 %i.fi, i64 0
  %i.fk = shufflevector <2 x i32> %i.fj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fl = add <2 x i32> %i.fk, <i32 601, i32 602>
  %i.fm = urem <2 x i32> %i.fl, splat (i32 6)     ; 2 uses
  %i.fn = extractelement <2 x i32> %i.fm, i64 0
  %i.fo = zext nneg i32 %i.fn to i64              ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !97
  %i.fr = zext i8 %i.fq to i64                    ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fr
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !12
  %i.fu = fcmp reassoc nsz arcp contract afn oge float %i.fg, %i.ft
  %i.fv = zext i1 %i.fu to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fr ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !97
  %i.fy = add i8 %i.fx, %i.fv
end_hunk_3
begin_hunk_4_@_process_opposed:bb.a
  %i.vn = tail call fastcc signext i8 @_mask_dilated(ptr noundef %i.vk, i64 noundef %i.ba)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.split
  %i.vo = load i8, ptr %i.vg, align 1, !tbaa !97
  store i8 %i.vo, ptr %i.vh, align 1, !tbaa !97
  %i.vp = load i8, ptr %i.vi, align 1, !tbaa !97
  store i8 %i.vp, ptr %i.vj, align 1, !tbaa !97
  %i.vq = load i8, ptr %i.vk, align 1, !tbaa !97
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.vr = phi i8 [ %i.vn, %bb.l ], [ %i.vq, %bb.m ]
  %i.vs = getelementptr i8, ptr %i.qt, i64 %i.ve
  store i8 %i.vr, ptr %i.vs, align 1, !tbaa !97
  %i.vt = add nuw i64 %.0273385, 1                ; 2 uses
  %exitcond463.not = icmp eq i64 %i.vt, %i.ba
  br i1 %exitcond463.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !505

.preheader352:                                    ; preds = %.preheader352.lr.ph, %._crit_edge392
  %.0272396 = phi i64 [ %i.xj, %._crit_edge392 ], [ 0, %.preheader352.lr.ph ] ; 4 uses
  %i.vu = mul i64 %.0272396, %i.vb
  %i.vv = trunc i64 %.0272396 to i32              ; 4 uses
  %i.vw = shl i32 %i.vv, 1
  %i.vx = and i32 %i.vw, 14
  %i.vy = add nsw i32 %i.vv, 600
  %i.vz = srem i32 %i.vy, 6
  %i.wa = sext i32 %i.vz to i64
  %i.wb = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.wa
  %i.wc = getelementptr [4 x i8], ptr %2, i64 %i.vu ; 2 uses
  %i.wd = udiv i64 %.0272396, 3
  %i.we = mul i64 %i.wd, %i.ba
  %invariant.gep393 = getelementptr i8, ptr %i.df, i64 %i.we ; 2 uses
  br i1 %i.vc, label %fcol.exit328.us, label %fcol.exit328

fcol.exit328.us:                                  ; preds = %.preheader352, %bb.r
  %.0271391.us = phi i64 [ %i.xh, %bb.r ], [ 0, %.preheader352 ] ; 4 uses
  %i.wf = trunc i64 %.0271391.us to i32           ; 2 uses
  %i.wg = add nsw i32 %i.wf, 600
  %i.wh = srem i32 %i.wg, 6
  %i.wi = sext i32 %i.wh to i64
  %i.wj = getelementptr inbounds i8, ptr %i.wb, i64 %i.wi
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !97
  %i.wl = zext i8 %i.wk to i64                    ; 5 uses
  %i.wm = getelementptr [4 x i8], ptr %i.wc, i64 %.0271391.us
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !12 ; 3 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.wl
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !12
  %i.wq = fcmp reassoc nsz arcp contract afn olt float %i.wn, %i.wp
  br i1 %i.wq, label %bb.o, label %bb.r

bb.o:                                             ; preds = %fcol.exit328.us
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.wl
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !12
  %i.wt = fcmp reassoc nsz arcp contract afn ogt float %i.wn, %i.ws
  br i1 %i.wt, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.wu = add nuw nsw i64 %i.wl, 3
  %i.wv = mul i64 %i.wu, %i.bf
  %i.ww = udiv i64 %.0271391.us, 3
  %gep394.us = getelementptr i8, ptr %invariant.gep393, i64 %i.wv
  %i.wx = getelementptr i8, ptr %gep394.us, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !97
  %.not318.us = icmp eq i8 %i.wy, 0
  br i1 %.not318.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.wz = call reassoc nsz arcp contract afn fastcc float @_calc_refavg(ptr noundef nonnull %2, ptr noundef nonnull %i.h, i32 noundef 9, i32 noundef %i.vv, i32 noundef %i.wf, ptr noundef nonnull %4, ptr noundef %i.b, i32 noundef 1)
  %i.xa = fsub reassoc nsz arcp contract afn float %i.wn, %i.wz
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.wl ; 2 uses
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !12
  %i.xd = fadd reassoc nsz arcp contract afn float %i.xa, %i.xc
  store float %i.xd, ptr %i.xb, align 4, !tbaa !12
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.wl ; 2 uses
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !12
  %i.xg = fadd reassoc nsz arcp contract afn float %i.xf, 1.000000e+00
  store float %i.xg, ptr %i.xe, align 4, !tbaa !12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %fcol.exit328.us
  %i.xh = add nuw i64 %.0271391.us, 1             ; 2 uses
  %exitcond480.not = icmp eq i64 %i.xh, %i.vb
  br i1 %exitcond480.not, label %._crit_edge392, label %fcol.exit328.us

.preheader351:                                    ; preds = %._crit_edge392
  %.pre = load float, ptr %i.f, align 16, !tbaa !12 ; 4 uses
  %i.xi = fcmp reassoc nsz arcp contract afn ogt float %.pre, 1.000000e+02
  br i1 %i.xi, label %bb.w, label %.preheader351.thread

._crit_edge392:                                   ; preds = %bb.v, %bb.r
  %i.xj = add nuw i64 %.0272396, 1                ; 2 uses
  %exitcond481.not = icmp eq i64 %i.xj, %i.uz
  br i1 %exitcond481.not, label %.preheader351, label %.preheader352

fcol.exit328:                                     ; preds = %.preheader352, %bb.v
  %.0271391 = phi i64 [ %i.ym, %bb.v ], [ 0, %.preheader352 ] ; 4 uses
  %i.xk = trunc i64 %.0271391 to i32              ; 2 uses
  %i.xl = and i32 %i.xk, 1
  %.tr.i.i326 = or disjoint i32 %i.xl, %i.vx
  %i.xm = shl nuw nsw i32 %.tr.i.i326, 1
  %i.xn = lshr i32 %i.j, %i.xm
  %i.xo = and i32 %i.xn, 3                        ; 2 uses
  %i.xp = getelementptr [4 x i8], ptr %i.wc, i64 %.0271391
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !12 ; 3 uses
  %i.xr = zext nneg i32 %i.xo to i64              ; 4 uses
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.xr
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !12
  %i.xu = fcmp reassoc nsz arcp contract afn olt float %i.xq, %i.xt
  br i1 %i.xu, label %bb.s, label %bb.v

bb.s:                                             ; preds = %fcol.exit328
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.xr
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !12
  %i.xx = fcmp reassoc nsz arcp contract afn ogt float %i.xq, %i.xw
  br i1 %i.xx, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.xy = add nuw nsw i32 %i.xo, 3
  %i.xz = zext nneg i32 %i.xy to i64
  %i.ya = mul i64 %i.bf, %i.xz
  %i.yb = udiv i64 %.0271391, 3
  %gep394 = getelementptr i8, ptr %invariant.gep393, i64 %i.ya
  %i.yc = getelementptr i8, ptr %gep394, i64 %i.yb
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !97
  %.not318 = icmp eq i8 %i.yd, 0
  br i1 %.not318, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ye = call reassoc nsz arcp contract afn fastcc float @_calc_refavg(ptr noundef nonnull %2, ptr noundef nonnull %i.h, i32 noundef %i.j, i32 noundef %i.vv, i32 noundef %i.xk, ptr noundef nonnull %4, ptr noundef %i.b, i32 noundef 1)
  %i.yf = fsub reassoc nsz arcp contract afn float %i.xq, %i.ye
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.xr ; 2 uses
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !12
  %i.yi = fadd reassoc nsz arcp contract afn float %i.yf, %i.yh
  store float %i.yi, ptr %i.yg, align 4, !tbaa !12
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.xr ; 2 uses
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !12
  %i.yl = fadd reassoc nsz arcp contract afn float %i.yk, 1.000000e+00
  store float %i.yl, ptr %i.yj, align 4, !tbaa !12
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %fcol.exit328
  %i.ym = add nuw i64 %.0271391, 1                ; 2 uses
  %exitcond479.not = icmp eq i64 %i.ym, %i.vb
  br i1 %exitcond479.not, label %._crit_edge392, label %fcol.exit328

bb.w:                                             ; preds = %.preheader351
  %i.yn = load float, ptr %i.e, align 16, !tbaa !12
  %i.yo = fdiv reassoc nsz arcp contract afn float %i.yn, %.pre
  br label %.preheader351.thread

.preheader351.thread:                             ; preds = %._crit_edge390.split, %.preheader352.lr.ph, %.preheader351, %bb.w
  %i.yp = phi float [ %.pre, %bb.w ], [ %.pre, %.preheader351 ], [ 0.000000e+00, %.preheader352.lr.ph ], [ 0.000000e+00, %._crit_edge390.split ]
  %i.yq = phi reassoc nsz arcp contract afn float [ %i.yo, %bb.w ], [ 0.000000e+00, %.preheader351 ], [ 0.000000e+00, %.preheader352.lr.ph ], [ 0.000000e+00, %._crit_edge390.split ]
  store float %i.yq, ptr %i.c, align 16, !tbaa !12
  %i.yr = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ys = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.yt = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.yu = load <2 x float>, ptr %i.yr, align 4, !tbaa !12 ; 4 uses
  %i.yv = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.yu, splat (float 1.000000e+02)
  %i.yw = load <2 x float>, ptr %i.ys, align 4
  %i.yx = fdiv reassoc nsz arcp contract afn <2 x float> %i.yw, %i.yu
  %i.yy = select <2 x i1> %i.yv, <2 x float> %i.yx, <2 x float> zeroinitializer
  store <2 x float> %i.yy, ptr %i.yt, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  %i.yz = fptosi float %i.yp to i32
  %i.za = extractelement <2 x float> %i.yu, i64 0
  %i.zb = fptosi float %i.za to i32
  %i.zc = extractelement <2 x float> %i.yu, i64 1
  %i.zd = fptosi float %i.zc to i32
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge371.thread, %.preheader351.thread, %._crit_edge371
  %.0281.lcssa525 = phi i32 [ %.0281.lcssa, %.preheader351.thread ], [ 0, %._crit_edge371 ], [ 0, %._crit_edge371.thread ]
  %i.ze = phi i32 [ %i.zd, %.preheader351.thread ], [ 0, %._crit_edge371 ], [ 0, %._crit_edge371.thread ]
  %i.zf = phi i32 [ %i.zb, %.preheader351.thread ], [ 0, %._crit_edge371 ], [ 0, %._crit_edge371.thread ]
  %i.zg = phi i32 [ %i.yz, %.preheader351.thread ], [ 0, %._crit_edge371 ], [ 0, %._crit_edge371.thread ]
  %i.zh = load ptr, ptr %i.k, align 8, !tbaa !56  ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 644
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !92
  %i.zk = icmp eq i32 %i.zj, 2                    ; 2 uses
  br i1 %i.zk, label %.preheader350.preheader, label %bb.y

.preheader350.preheader:                          ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @img_oppchroma, ptr noundef nonnull align 16 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa !12
  store i64 %i.cz, ptr @img_opphash, align 8, !tbaa !100
  store i32 %.0281.lcssa525, ptr @img_oppclipped, align 4, !tbaa !15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.preheader350.preheader
  %i.zl = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !138
  %i.zm = and i32 %i.zl, 33554432
  %.not316 = icmp eq i32 %i.zm, 0
  br i1 %.not316, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.zn = load float, ptr %i.c, align 16, !tbaa !12
  %i.zo = fpext reassoc nsz arcp contract afn float %i.zn to double
  %i.zp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.zq = load <2 x float>, ptr %i.zp, align 4, !tbaa !12
  %i.zr = fpext reassoc nsz arcp contract afn <2 x float> %i.zq to <2 x double> ; 2 uses
  %i.zs = select i1 %i.zk, ptr @.str.115, ptr @.str.116
  %i.zt = load i32, ptr @img_oppclipped, align 4, !tbaa !15
  %.not317 = icmp eq i32 %i.zt, 0
  %i.zu = select i1 %.not317, ptr @.str.117, ptr @.str.116
  %i.zv = extractelement <2 x double> %i.zr, i64 0
  %i.zw = extractelement <2 x double> %i.zr, i64 1
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.113, ptr noundef nonnull %i.zh, ptr noundef %0, i32 noundef -1, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.118, double noundef %i.zo, i32 noundef %i.zg, double noundef %i.zv, i32 noundef %i.zf, double noundef %i.zw, i32 noundef %i.ze, ptr noundef nonnull %i.zs, ptr noundef nonnull %i.zu) #33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %.thread338

.thread338:                                       ; preds = %bb.g, %bb.f, %bb.aa
  %i.zx = phi ptr [ null, %bb.f ], [ %i.df, %bb.aa ], [ null, %bb.g ]
  tail call void @free(ptr noundef %i.zx) #33
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader349.preheader, %.thread338
  %.not321 = icmp eq i32 %6, 0
  br i1 %.not321, label %.thread344, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.zy = load i32, ptr %i.av, align 4, !tbaa !79
  %i.zz = load i32, ptr %i.aw, align 4, !tbaa !78
  %i.aaa = mul nsw i32 %i.zz, %i.zy
  %i.aab = sext i32 %i.aaa to i64
  %i.aac = shl nsw i64 %i.aab, 2
  %i.aad = tail call ptr @dt_alloc_aligned(i64 noundef %i.aac) #33 ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aad, i64 64) ]
  %.not322 = icmp eq ptr %i.aad, null
  br i1 %.not322, label %.thread344, label %.preheader348

.preheader348:                                    ; preds = %bb.ac
  %i.aae = load i32, ptr %i.aw, align 4, !tbaa !78 ; 2 uses
  %i.aaf = sext i32 %i.aae to i64
  %.not418 = icmp eq i32 %i.aae, 0
  br i1 %.not418, label %.thread344, label %.preheader347.lr.ph

.preheader347.lr.ph:                              ; preds = %.preheader348
  %i.aag = load i32, ptr %i.av, align 4, !tbaa !79 ; 2 uses
  %i.aah = sext i32 %i.aag to i64                 ; 3 uses
  %.not419 = icmp eq i32 %i.aag, 0
  %i.aai = icmp eq i32 %i.j, 9
  br i1 %.not419, label %.thread344, label %.preheader347

.preheader347:                                    ; preds = %.preheader347.lr.ph, %._crit_edge401
  %.0268403 = phi i64 [ %i.abl, %._crit_edge401 ], [ 0, %.preheader347.lr.ph ] ; 3 uses
  %i.aaj = mul i64 %.0268403, %i.aah              ; 2 uses
  %i.aak = trunc i64 %.0268403 to i32             ; 4 uses
  %i.aal = shl i32 %i.aak, 1
  %i.aam = and i32 %i.aal, 14
  %i.aan = add nsw i32 %i.aak, 600
  %i.aao = srem i32 %i.aan, 6
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.aap
  br i1 %i.aai, label %fcol.exit331.us, label %fcol.exit331

fcol.exit331.us:                                  ; preds = %.preheader347, %bb.ae
  %.0267400.us = phi i64 [ %i.abk, %bb.ae ], [ 0, %.preheader347 ] ; 3 uses
  %i.aar = add i64 %i.aaj, %.0267400.us           ; 2 uses
  %i.aas = trunc i64 %.0267400.us to i32          ; 2 uses
  %i.aat = add nsw i32 %i.aas, 600
  %i.aau = srem i32 %i.aat, 6
  %i.aav = sext i32 %i.aau to i64
  %i.aaw = getelementptr inbounds i8, ptr %i.aaq, i64 %i.aav
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !97
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aar
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !12 ; 4 uses
  %i.aba = zext i8 %i.aax to i64                  ; 2 uses
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aba
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !12
  %i.abd = fcmp reassoc nsz arcp contract afn ult float %i.aaz, %i.abc
  br i1 %i.abd, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %fcol.exit331.us
  %i.abe = call reassoc nsz arcp contract afn fastcc float @_calc_refavg(ptr noundef nonnull %2, ptr noundef nonnull %i.h, i32 noundef 9, i32 noundef %i.aak, i32 noundef %i.aas, ptr noundef nonnull %4, ptr noundef %i.b, i32 noundef 1)
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aba
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !12
  %i.abh = fadd reassoc nsz arcp contract afn float %i.abg, %i.abe ; 2 uses
  %i.abi = fcmp reassoc nsz arcp contract afn ogt float %i.aaz, %i.abh
  %..us = select reassoc nsz arcp contract afn i1 %i.abi, float %i.aaz, float %i.abh
  br label %bb.ae

bb.ae:                                            ; preds = %fcol.exit331.us, %bb.ad
  %..us.sink = phi float [ %..us, %bb.ad ], [ %i.aaz, %fcol.exit331.us ]
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %i.aar
  store float %..us.sink, ptr %i.abj, align 4, !tbaa !12
  %i.abk = add nuw i64 %.0267400.us, 1            ; 2 uses
  %exitcond484.not = icmp eq i64 %i.abk, %i.aah
  br i1 %exitcond484.not, label %._crit_edge401, label %fcol.exit331.us

._crit_edge401:                                   ; preds = %bb.ag, %bb.ae
  %i.abl = add nuw i64 %.0268403, 1               ; 2 uses
  %exitcond485.not = icmp eq i64 %i.abl, %i.aaf
  br i1 %exitcond485.not, label %.thread344, label %.preheader347

fcol.exit331:                                     ; preds = %.preheader347, %bb.ag
  %.0267400 = phi i64 [ %i.ace, %bb.ag ], [ 0, %.preheader347 ] ; 3 uses
  %i.abm = add i64 %i.aaj, %.0267400              ; 2 uses
  %i.abn = trunc i64 %.0267400 to i32             ; 2 uses
  %i.abo = and i32 %i.abn, 1
  %.tr.i.i329 = or disjoint i32 %i.abo, %i.aam
  %i.abp = shl nuw nsw i32 %.tr.i.i329, 1
  %i.abq = lshr i32 %i.j, %i.abp
  %i.abr = and i32 %i.abq, 3
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.abm
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !12 ; 4 uses
  %i.abu = zext nneg i32 %i.abr to i64            ; 2 uses
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.abu
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !12
  %i.abx = fcmp reassoc nsz arcp contract afn ult float %i.abt, %i.abw
  br i1 %i.abx, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %fcol.exit331
  %i.aby = call reassoc nsz arcp contract afn fastcc float @_calc_refavg(ptr noundef nonnull %2, ptr noundef nonnull %i.h, i32 noundef %i.j, i32 noundef %i.aak, i32 noundef %i.abn, ptr noundef nonnull %4, ptr noundef %i.b, i32 noundef 1)
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.abu
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !12
  %i.acb = fadd reassoc nsz arcp contract afn float %i.aca, %i.aby ; 2 uses
  %i.acc = fcmp reassoc nsz arcp contract afn ogt float %i.abt, %i.acb
  %. = select reassoc nsz arcp contract afn i1 %i.acc, float %i.abt, float %i.acb
  br label %bb.ag

bb.ag:                                            ; preds = %fcol.exit331, %bb.af
  %..sink = phi float [ %., %bb.af ], [ %i.abt, %fcol.exit331 ]
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %i.abm
  store float %..sink, ptr %i.acd, align 4, !tbaa !12
  %i.ace = add nuw i64 %.0267400, 1               ; 2 uses
  %exitcond483.not = icmp eq i64 %i.ace, %i.aah
  br i1 %exitcond483.not, label %._crit_edge401, label %fcol.exit331

.thread344:                                       ; preds = %._crit_edge401, %.preheader348, %.preheader347.lr.ph, %bb.ab, %bb.ac
  %.not322346 = phi i1 [ true, %bb.ac ], [ true, %bb.ab ], [ false, %.preheader347.lr.ph ], [ false, %.preheader348 ], [ false, %._crit_edge401 ]
  %i.acf = phi ptr [ null, %bb.ac ], [ null, %bb.ab ], [ %i.aad, %.preheader347.lr.ph ], [ %i.aad, %.preheader348 ], [ %i.aad, %._crit_edge401 ] ; 6 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !78 ; 2 uses
  %i.aci = sext i32 %i.ach to i64                 ; 3 uses
  %.not420 = icmp eq i32 %i.ach, 0
  br i1 %.not420, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.thread344
  %i.acj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !79 ; 7 uses
  %i.acl = sext i32 %i.ack to i64                 ; 12 uses
  %.not421 = icmp eq i32 %i.ack, 0
  %i.acm = icmp eq i32 %i.j, 9
  br i1 %.not421, label %.loopexit, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.acn = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !75
  %i.acp = sext i32 %i.aco to i64                 ; 3 uses
  %i.acq = load i32, ptr %5, align 4, !tbaa !74
  %i.acr = sext i32 %i.acq to i64                 ; 10 uses
  %i.acs = load i32, ptr %i.av, align 4, !tbaa !79 ; 2 uses
  %i.act = sext i32 %i.acs to i64                 ; 11 uses
  %i.acu = load i32, ptr %i.aw, align 4, !tbaa !78
  %i.acv = sext i32 %i.acu to i64
  %i.acw = shl nuw nsw i64 %i.acl, 2
  %i.acx = shl nsw i64 %i.acl, 2
  %i.acy = add nsw i64 %i.acp, %i.aci
  %i.acz = shl nsw i64 %i.acy, 2
  %i.ada = add nsw i64 %i.acz, -4
  %i.adb = mul i64 %i.ada, %i.act
  %i.adc = shl nsw i64 %i.acr, 2
  %i.add = getelementptr i8, ptr %i.acf, i64 %i.adb
  %i.ade = getelementptr i8, ptr %i.add, i64 %i.acx
  %scevgep = getelementptr i8, ptr %i.ade, i64 %i.adc
  %i.adf = mul nsw i64 %i.acp, %i.act
  %i.adg = add i64 %i.adf, %i.acr
  %i.adh = shl i64 %i.adg, 2
  %scevgep577 = getelementptr i8, ptr %i.acf, i64 %i.adh
  %i.adi = mul nsw i64 %i.aci, %i.acl
  %i.adj = shl i64 %i.adi, 2
  %scevgep578 = getelementptr i8, ptr %3, i64 %i.adj
  %min.iters.check579 = icmp ult i32 %i.ack, 8
  %bound0 = icmp ult ptr %3, %scevgep
  %bound1 = icmp ult ptr %scevgep577, %scevgep578
  %found.conflict = and i1 %bound0, %bound1
  %i.adk = or i32 %i.acs, %i.ack
  %i.adl = icmp slt i32 %i.adk, 0
  %i.adm = or i1 %found.conflict, %i.adl
  %min.iters.check583 = icmp ult i32 %i.ack, 32
  %n.vec585 = and i64 %i.acl, -32                 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.acr, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert586 = insertelement <8 x i64> poison, i64 %i.act, i64 0
  %broadcast.splat587 = shufflevector <8 x i64> %broadcast.splatinsert586, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op640 = add <8 x i64> splat (i64 8), %broadcast.splat
  %invariant.op642 = add <8 x i64> splat (i64 16), %broadcast.splat
  %invariant.op644 = add <8 x i64> splat (i64 24), %broadcast.splat
  %cmp.n598 = icmp eq i64 %n.vec585, %i.acl
  %i.adn = and i32 %i.ack, 24
  %min.epilog.iters.check602 = icmp eq i32 %i.adn, 0
  %n.vec605 = and i64 %i.acl, -8                  ; 3 uses
  %broadcast.splatinsert606 = insertelement <8 x i64> poison, i64 %i.acr, i64 0
  %broadcast.splat607 = shufflevector <8 x i64> %broadcast.splatinsert606, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert608 = insertelement <8 x i64> poison, i64 %i.act, i64 0
  %broadcast.splat609 = shufflevector <8 x i64> %broadcast.splatinsert608, <8 x i64> poison, <8 x i32> zeroinitializer
end_hunk_4
begin_hunk_5_@_process_opposed:bb.a

.lr.ph.split406.split.us:                         ; preds = %.lr.ph.split406.split.us.preheader, %bb.an
  %.0265404.us408 = phi i64 [ %i.agf, %bb.an ], [ 0, %.lr.ph.split406.split.us.preheader ] ; 3 uses
  %i.afg = add i64 %.0265404.us408, %i.acr        ; 3 uses
  %i.afh = icmp ult i64 %i.afg, %i.act
  br i1 %i.afh, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %.lr.ph.split406.split.us
  %i.afi = trunc i64 %i.afg to i32                ; 3 uses
  br i1 %i.acm, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.afj = and i32 %i.afi, 1
  %.tr.i.i332.us = or disjoint i32 %i.adv, %i.afj
  %i.afk = shl nuw nsw i32 %.tr.i.i332.us, 1
  %i.afl = lshr i32 %i.j, %i.afk
  %i.afm = and i32 %i.afl, 3
  br label %fcol.exit334.us

bb.al:                                            ; preds = %bb.aj
  %i.afn = add nsw i32 %i.afi, 600
  %i.afo = srem i32 %i.afn, 6
  %i.afp = sext i32 %i.afo to i64
  %i.afq = getelementptr inbounds i8, ptr %i.adz, i64 %i.afp
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !97
  %i.afs = zext i8 %i.afr to i32
  br label %fcol.exit334.us

fcol.exit334.us:                                  ; preds = %bb.al, %bb.ak
  %.0.i333.us = phi i32 [ %i.afs, %bb.al ], [ %i.afm, %bb.ak ]
  %i.aft = getelementptr [4 x i8], ptr %i.aff, i64 %i.afg
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !12 ; 4 uses
  %i.afv = zext nneg i32 %.0.i333.us to i64       ; 2 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.afv
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !12
  %i.afy = fcmp reassoc nsz arcp contract afn ult float %i.afu, %i.afx
  br i1 %i.afy, label %bb.an, label %bb.am

bb.am:                                            ; preds = %fcol.exit334.us
  %i.afz = call reassoc nsz arcp contract afn fastcc float @_calc_refavg(ptr noundef nonnull %2, ptr noundef nonnull %i.h, i32 noundef %i.j, i32 noundef %i.adt, i32 noundef %i.afi, ptr noundef nonnull %4, ptr noundef %i.b, i32 noundef 1)
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.afv
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !12
  %i.agc = fadd reassoc nsz arcp contract afn float %i.agb, %i.afz ; 2 uses
  %i.agd = fcmp reassoc nsz arcp contract afn ogt float %i.afu, %i.agc
  %.325.us = select reassoc nsz arcp contract afn i1 %i.agd, float %i.afu, float %i.agc
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %fcol.exit334.us, %.lr.ph.split406.split.us
  %.1.us409 = phi nsz float [ %i.afu, %fcol.exit334.us ], [ 0.000000e+00, %.lr.ph.split406.split.us ], [ %.325.us, %bb.am ]
  %i.age = getelementptr [4 x i8], ptr %i.aea, i64 %.0265404.us408
  store float %.1.us409, ptr %i.age, align 4, !tbaa !12
  %i.agf = add nuw i64 %.0265404.us408, 1         ; 2 uses
  %exitcond487.not = icmp eq i64 %i.agf, %i.acl
  br i1 %exitcond487.not, label %._crit_edge405, label %.lr.ph.split406.split.us

._crit_edge405:                                   ; preds = %.lr.ph.split406.split.prol.loopexit, %bb.as, %bb.an, %middle.block597, %vec.epilog.middle.block619, %.lr.ph.split406.us.preheader
  %i.agg = add nuw i64 %.0266410, 1               ; 2 uses
  %exitcond488.not = icmp eq i64 %i.agg, %i.aci
  br i1 %exitcond488.not, label %.loopexit, label %.preheader

.lr.ph.split406.split:                            ; preds = %.lr.ph.split406.split.prol.loopexit, %bb.as
  %.0265404 = phi i64 [ %i.ahe, %bb.as ], [ %.0265404.unr, %.lr.ph.split406.split.prol.loopexit ] ; 6 uses
  %i.agh = add i64 %.0265404, %i.acr              ; 2 uses
  %i.agi = icmp ult i64 %i.agh, %i.act
  br i1 %i.agi, label %bb.ao, label %.lr.ph.split406.split.1

bb.ao:                                            ; preds = %.lr.ph.split406.split
  %i.agj = getelementptr [4 x i8], ptr %i.aeb, i64 %i.agh
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !12
  br label %.lr.ph.split406.split.1

.lr.ph.split406.split.1:                          ; preds = %bb.ao, %.lr.ph.split406.split
  %.1 = phi nsz float [ %i.agk, %bb.ao ], [ 0.000000e+00, %.lr.ph.split406.split ]
  %i.agl = getelementptr [4 x i8], ptr %i.aea, i64 %.0265404
  store float %.1, ptr %i.agl, align 4, !tbaa !12
  %i.agm = add nuw i64 %.0265404, 1               ; 2 uses
  %i.agn = add i64 %i.agm, %i.acr                 ; 2 uses
  %i.ago = icmp ult i64 %i.agn, %i.act
  br i1 %i.ago, label %bb.ap, label %.lr.ph.split406.split.2

bb.ap:                                            ; preds = %.lr.ph.split406.split.1
  %i.agp = getelementptr [4 x i8], ptr %i.aeb, i64 %i.agn
  %i.agq = load float, ptr %i.agp, align 4, !tbaa !12
  br label %.lr.ph.split406.split.2

.lr.ph.split406.split.2:                          ; preds = %bb.ap, %.lr.ph.split406.split.1
  %.1.1 = phi nsz float [ %i.agq, %bb.ap ], [ 0.000000e+00, %.lr.ph.split406.split.1 ]
  %i.agr = getelementptr [4 x i8], ptr %i.aea, i64 %i.agm
  store float %.1.1, ptr %i.agr, align 4, !tbaa !12
  %i.ags = add nuw i64 %.0265404, 2               ; 2 uses
  %i.agt = add i64 %i.ags, %i.acr                 ; 2 uses
  %i.agu = icmp ult i64 %i.agt, %i.act
  br i1 %i.agu, label %bb.aq, label %.lr.ph.split406.split.3

bb.aq:                                            ; preds = %.lr.ph.split406.split.2
  %i.agv = getelementptr [4 x i8], ptr %i.aeb, i64 %i.agt
  %i.agw = load float, ptr %i.agv, align 4, !tbaa !12
  br label %.lr.ph.split406.split.3

.lr.ph.split406.split.3:                          ; preds = %bb.aq, %.lr.ph.split406.split.2
  %.1.2 = phi nsz float [ %i.agw, %bb.aq ], [ 0.000000e+00, %.lr.ph.split406.split.2 ]
  %i.agx = getelementptr [4 x i8], ptr %i.aea, i64 %i.ags
  store float %.1.2, ptr %i.agx, align 4, !tbaa !12
  %i.agy = add nuw i64 %.0265404, 3               ; 2 uses
  %i.agz = add i64 %i.agy, %i.acr                 ; 2 uses
  %i.aha = icmp ult i64 %i.agz, %i.act
  br i1 %i.aha, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.split406.split.3
  %i.ahb = getelementptr [4 x i8], ptr %i.aeb, i64 %i.agz
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !12
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.split406.split.3
  %.1.3 = phi nsz float [ %i.ahc, %bb.ar ], [ 0.000000e+00, %.lr.ph.split406.split.3 ]
  %i.ahd = getelementptr [4 x i8], ptr %i.aea, i64 %i.agy
  store float %.1.3, ptr %i.ahd, align 4, !tbaa !12
  %i.ahe = add nuw i64 %.0265404, 4               ; 2 uses
  %exitcond486.not.3 = icmp eq i64 %i.ahe, %i.acl
  br i1 %exitcond486.not.3, label %._crit_edge405, label %.lr.ph.split406.split, !llvm.loop !512

.loopexit:                                        ; preds = %._crit_edge405, %.thread344, %.preheader.lr.ph, %bb.e
  %.0276 = phi ptr [ null, %bb.e ], [ %i.acf, %.preheader.lr.ph ], [ %i.acf, %.thread344 ], [ %i.acf, %._crit_edge405 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.0276
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_process_segmentation(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 5, 4) %6, ptr nofree noundef nonnull captures(none) %7) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 9 uses
  %i.b = alloca [4 x float], align 16             ; 7 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = alloca [8 x ptr], align 16               ; 12 uses
  %i.e = alloca [3 x ptr], align 16               ; 7 uses
  %8 = alloca [4 x %struct.dt_iop_segmentation_t], align 16 ; 70 uses
  %i.f = alloca [4 x float], align 16             ; 22 uses
  %i.g = alloca [4 x float], align 16             ; 21 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.j = load i32, ptr %i.i, align 4, !tbaa !80   ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 7 uses
  %i.m = getelementptr i8, ptr %i.l, i64 644
  %.val = load i32, ptr %i.m, align 4, !tbaa !92
  %i.n = and i32 %.val, 2
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load float, ptr %i.o, align 4, !tbaa !95
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, f0x3F7CAC08 ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.q, 1.000000e-01
  %spec.select = select reassoc nsz arcp contract afn i1 %i.r, float 1.000000e-01, float %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.t = load float, ptr %i.s, align 16, !tbaa !12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 260
  %i.v = load float, ptr %i.u, align 4, !tbaa !12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.x = load float, ptr %i.w, align 8, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.y = fmul reassoc nsz arcp contract afn float %i.t, %spec.select ; 2 uses
  store float %i.y, ptr %i.a, align 16, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aa = fmul reassoc nsz arcp contract afn float %i.v, %spec.select ; 2 uses
  store float %i.aa, ptr %i.z, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = fmul reassoc nsz arcp contract afn float %i.x, %spec.select ; 2 uses
  store float %i.ac, ptr %i.ab, align 8, !tbaa !12
  %.ptr447 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %.ptr447, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.ad = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.y) #35 ; 2 uses
  store float %i.ad, ptr %i.b, align 16, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.af = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.aa) #35 ; 2 uses
  store float %i.af, ptr %i.ae, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ac) #35 ; 2 uses
  store float %i.ah, ptr %i.ag, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 0.000000e+00, ptr %i.ai, align 4, !tbaa !12
  %i.aj = load ptr, ptr %0, align 16, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 664
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !99 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2480
  %i.an = load i32, ptr %i.am, align 16, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %.thread549, label %bb.b

.thread549:                                       ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 2416
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 2448
  %i.ar = load <2 x double>, ptr %i.ap, align 16, !tbaa !145
  %i.as = load <2 x double>, ptr %i.aq, align 16, !tbaa !145
  %i.at = fdiv reassoc nsz arcp contract afn <2 x double> %i.ar, %i.as
  %i.au = fptrunc reassoc nsz arcp contract afn <2 x double> %i.at to <2 x float>
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 2432
  %i.ax = load double, ptr %i.aw, align 16, !tbaa !145
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 2464
  %i.az = load double, ptr %i.ay, align 16, !tbaa !145
  %i.ba = fdiv reassoc nsz arcp contract afn double %i.ax, %i.az
  %i.bb = fptrunc reassoc nsz arcp contract afn double %i.ba to float
  br label %bb.c

bb.c:                                             ; preds = %.thread549, %bb.b
  %i.bc = phi ptr [ %i.ao, %.thread549 ], [ %i.av, %bb.b ]
  %i.bd = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.thread549 ], [ %i.bb, %bb.b ] ; 2 uses
  %i.be = phi <2 x float> [ splat (float 1.000000e+00), %.thread549 ], [ %i.au, %bb.b ] ; 3 uses
  store <2 x float> %i.be, ptr %i.c, align 16, !tbaa !12
  store float %i.bd, ptr %i.bc, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float 1.000000e+00, ptr %i.bf, align 4, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !146 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !544 ; 5 uses
  %i.bk = sext i32 %i.bh to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr @__const._process_segmentation.recovery_closing, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !15 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.bo = load i32, ptr %i.bn, align 16, !tbaa !545
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 148
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !546
  %i.br = mul nsw i32 %i.bq, %i.bo
  %i.bs = sitofp reassoc nsz arcp contract afn i32 %i.br to float
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !547 ; 2 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.bu
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, 2.500000e-04
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bs
  %i.by = fptosi float %i.bx to i32               ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !79
  %i.cb = sdiv i32 %i.ca, 3
  %i.cc = sext i32 %i.cb to i64
  %i.cd = tail call i64 @dt_round_size(i64 noundef %i.cc, i64 noundef 2) #33 ; 4 uses
  %i.ce = add i64 %i.cd, 16                       ; 10 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 7 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !78
  %i.ch = sdiv i32 %i.cg, 3
  %i.ci = sext i32 %i.ch to i64
  %i.cj = tail call i64 @dt_round_size(i64 noundef %i.ci, i64 noundef 2) #33 ; 3 uses
  %i.ck = add i64 %i.cj, 16                       ; 7 uses
  %i.cl = mul i64 %i.ck, %i.ce
  %i.cm = tail call i64 @dt_round_size(i64 noundef %i.cl, i64 noundef 64) #33 ; 11 uses
  %i.cn = shl i64 %i.cm, 5
  %i.co = tail call ptr @dt_alloc_aligned(i64 noundef %i.cn) #33 ; 20 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.co, i64 64) ]
  %.not450 = icmp eq ptr %i.co, null
  br i1 %.not450, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !138
  %i.cq = and i32 %i.cp, 33554432
  %.not451 = icmp eq i32 %i.cq, 0
  br i1 %.not451, label %bb.ex, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.119) #33
  br label %bb.ex

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.co, ptr %i.d, align 16, !tbaa !139
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cm ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !139
  %.idx = shl i64 %i.cm, 3                        ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ct, ptr %i.cu, align 16, !tbaa !139
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.idx840 = shl i64 %i.cm, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx840
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store ptr %i.cw, ptr %i.cx, align 16, !tbaa !139
  %.idx841 = mul i64 %i.cm, 20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx841
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !139
  %.idx842 = mul i64 %i.cm, 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx842
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store ptr %i.da, ptr %i.db, align 16, !tbaa !139
  %.idx839 = mul i64 %i.cm, 12
  %i.dc = insertelement <4 x i64> poison, i64 %i.cm, i64 0
  %i.dd = shufflevector <4 x i64> %i.dc, <4 x i64> poison, <4 x i32> zeroinitializer
  %.idx843 = mul i64 %i.cm, 28                    ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx839 ; 38 uses
  store ptr %i.de, ptr %i.cv, align 8, !tbaa !139
  %i.df = getelementptr i8, ptr %i.co, i64 %.idx843 ; 17 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.cx, i64 24, i1 false), !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.dh = trunc i64 %i.ce to i32                  ; 19 uses
  %i.di = trunc i64 %i.ck to i32                  ; 10 uses
  %i.dj = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %8, i32 noundef %i.dh, i32 noundef %i.di, i32 noundef 9, i32 noundef %i.by)
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 5 uses
  %i.dl = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %i.dk, i32 noundef %i.dh, i32 noundef %i.di, i32 noundef 9, i32 noundef %i.by)
  %i.dm = or i32 %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 5 uses
  %i.do = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %i.dn, i32 noundef %i.dh, i32 noundef %i.di, i32 noundef 9, i32 noundef %i.by)
  %i.dp = or i32 %i.do, %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 288 ; 10 uses
  %i.dr = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %i.dq, i32 noundef %i.dh, i32 noundef %i.di, i32 noundef 9, i32 noundef %i.by)
  %i.ds = or i32 %i.dr, %i.dp
  %.not452 = icmp eq i32 %i.ds, 0
  br i1 %.not452, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !138
  %i.du = and i32 %i.dt, 33554432
  %.not457 = icmp eq i32 %i.du, 0
  br i1 %.not457, label %bb.ew, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.120) #33
  br label %bb.ew

bb.i:                                             ; preds = %bb.f
  %.not453 = icmp eq i32 %i.j, 9                  ; 7 uses
  %i.dv = and i32 %i.j, 3
  %i.dw = icmp ne i32 %i.dv, 1
  %i.dx = or i1 %.not453, %i.dw
  %i.dy = select i1 %i.dx, i32 2, i32 1
  %i.dz = load i32, ptr %i.cf, align 4, !tbaa !78 ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, 2
  br i1 %i.ea, label %.preheader591.lr.ph, label %._crit_edge615

.preheader591.lr.ph:                              ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.pre = load i32, ptr %i.bz, align 4, !tbaa !79 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ef = load ptr, ptr %i.e, align 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ej = load ptr, ptr %i.ei, align 16
  %i.ek = extractelement <2 x float> %i.be, i64 0
  %i.el = extractelement <2 x float> %i.be, i64 1
  br label %.preheader591

.preheader591:                                    ; preds = %.preheader591.lr.ph, %._crit_edge
  %i.em = phi i32 [ %i.dz, %.preheader591.lr.ph ], [ %i.hb, %._crit_edge ] ; 2 uses
  %i.en = phi i32 [ %.pre, %.preheader591.lr.ph ], [ %i.hc, %._crit_edge ] ; 3 uses
  %i.eo = phi i32 [ %.pre, %.preheader591.lr.ph ], [ %i.hd, %._crit_edge ] ; 4 uses
  %indvars.iv681 = phi i64 [ 0, %.preheader591.lr.ph ], [ %indvars.iv.next682, %._crit_edge ] ; 5 uses
  %.0418614 = phi i32 [ 1, %.preheader591.lr.ph ], [ %i.he, %._crit_edge ] ; 3 uses
  %.0419613 = phi i32 [ 0, %.preheader591.lr.ph ], [ %.1420.lcssa, %._crit_edge ] ; 3 uses
  %.0421612 = phi i32 [ 0, %.preheader591.lr.ph ], [ %.1422.lcssa, %._crit_edge ] ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 2
  br i1 %i.ep, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader591
  %i.eq = urem i32 %.0418614, 3
  %i.er = icmp eq i32 %i.eq, 1
  %i.es = udiv i32 %.0418614, 3
  %i.et = add nuw nsw i32 %i.es, 8
  %i.eu = mul nsw i32 %i.et, %i.dh
  %i.ev = add i32 %i.eu, 8
  %i.ew = load ptr, ptr %i.dq, align 16
  br i1 %i.er, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ex = load ptr, ptr %8, align 16
  %i.ey = load ptr, ptr %i.dk, align 16
  %i.ez = load ptr, ptr %i.dn, align 16
  %i.fa = trunc i64 %indvars.iv681 to i32         ; 2 uses
  %i.fb = shl nuw i32 %i.fa, 1
  %i.fc = and i32 %i.fb, 14                       ; 3 uses
  %i.fd = add i32 %i.fa, 600
  %i.fe = srem i32 %i.fd, 6
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.ff ; 3 uses
  %indvars.iv.next684 = add nuw nsw i64 %indvars.iv681, 1 ; 2 uses
  %i.fh = trunc i64 %indvars.iv.next684 to i32    ; 2 uses
  %i.fi = shl nuw i32 %i.fh, 1
  %i.fj = and i32 %i.fi, 14                       ; 3 uses
  %i.fk = add i32 %i.fh, 600
  %i.fl = srem i32 %i.fk, 6
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.fm ; 3 uses
  %indvars.iv.next684.1 = add nuw nsw i64 %indvars.iv681, 2 ; 2 uses
  %i.fo = trunc i64 %indvars.iv.next684.1 to i32  ; 2 uses
  %i.fp = shl nuw i32 %i.fo, 1
  %i.fq = and i32 %i.fp, 14                       ; 3 uses
  %i.fr = add i32 %i.fo, 600
  %i.fs = srem i32 %i.fr, 6
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.ft ; 3 uses
  br label %.lr.ph.split
end_hunk_5
begin_hunk_6_@wavelets_process:bb.a
  %.neg292.1.i = extractelement <4 x float> %foldExtExtBinop281, i64 1
  %i.rb = extractelement <4 x float> %i.lg, i64 2
  %foldExtExtBinop283 = fsub reassoc nsz arcp contract afn <4 x float> %i.mv, %i.lg
  %.neg292.2.i = extractelement <4 x float> %foldExtExtBinop283, i64 2
  %i.rc = insertelement <4 x float> poison, float %i.qw, i64 0
  %i.rd = shufflevector <4 x float> %i.rc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.re = fdiv reassoc nsz arcp contract afn <4 x float> %i.qo, %i.rd
  %i.rf = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.re, <4 x float> zeroinitializer) ; 4 uses
  %i.rg = extractelement <4 x float> %i.rf, i64 0
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, %i.rg
  %i.rh = fadd reassoc nsz arcp contract afn float %.neg292.i, %reass.mul.i
  %i.ri = fmul reassoc nsz arcp contract afn float %i.rh, %i.qq
  %i.rj = fmul reassoc nsz arcp contract afn float %i.ri, %i.jt
  %i.rk = extractelement <4 x float> %i.lg, i64 3
  %foldExtExtBinop285 = fsub reassoc nsz arcp contract afn <4 x float> %i.mv, %i.lg
  %.neg292.3.i = extractelement <4 x float> %foldExtExtBinop285, i64 3
  %i.rl = fadd reassoc nsz arcp contract afn float %i.rj, %i.qz ; 2 uses
  store float %i.rl, ptr %i.a, align 16, !tbaa !12, !noalias !626
  %i.rm = load float, ptr %i.qx, align 4, !tbaa !12, !noalias !626
  %reass.add.1.i = fsub reassoc nsz arcp contract afn float %i.rm, %i.oe
  %i.rn = extractelement <4 x float> %i.rf, i64 1
  %reass.mul.1.i = fmul reassoc nsz arcp contract afn float %reass.add.1.i, %i.rn
  %i.ro = fadd reassoc nsz arcp contract afn float %.neg292.1.i, %reass.mul.1.i
  %i.rp = fmul reassoc nsz arcp contract afn float %i.ro, %i.qs
  %i.rq = fmul reassoc nsz arcp contract afn float %i.rp, %i.ju
  %i.rr = fadd reassoc nsz arcp contract afn float %i.rq, %i.ra ; 2 uses
  store float %i.rr, ptr %i.r, align 4, !tbaa !12, !noalias !626
  %i.rs = load float, ptr %i.qx, align 4, !tbaa !12, !noalias !626
  %reass.add.2.i = fsub reassoc nsz arcp contract afn float %i.rs, %i.oe
  %i.rt = extractelement <4 x float> %i.rf, i64 2
  %reass.mul.2.i = fmul reassoc nsz arcp contract afn float %reass.add.2.i, %i.rt
  %i.ru = fadd reassoc nsz arcp contract afn float %.neg292.2.i, %reass.mul.2.i
  %i.rv = fmul reassoc nsz arcp contract afn float %i.ru, %i.qu
  %i.rw = fmul reassoc nsz arcp contract afn float %i.rv, %i.jv
  %i.rx = fadd reassoc nsz arcp contract afn float %i.rw, %i.rb ; 2 uses
  store float %i.rx, ptr %i.s, align 8, !tbaa !12, !noalias !626
  %i.ry = load float, ptr %i.qx, align 4, !tbaa !12, !noalias !626
  %reass.add.3.i = fsub reassoc nsz arcp contract afn float %i.ry, %i.oe
  %i.rz = extractelement <4 x float> %i.rf, i64 3
  %reass.mul.3.i = fmul reassoc nsz arcp contract afn float %reass.add.3.i, %i.rz
  %i.sa = fadd reassoc nsz arcp contract afn float %.neg292.3.i, %reass.mul.3.i
  %i.sb = fmul reassoc nsz arcp contract afn float %i.sa, %i.lc
  %i.sc = fmul reassoc nsz arcp contract afn float %i.sb, %i.jw
  %i.sd = fadd reassoc nsz arcp contract afn float %i.sc, %i.rk ; 2 uses
  store float %i.sd, ptr %i.t, align 4, !tbaa !12, !noalias !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33, !noalias !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33, !noalias !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33, !noalias !626
  %i.se = insertelement <4 x float> poison, float %i.rl, i64 0
  %i.sf = insertelement <4 x float> %i.se, float %i.rr, i64 1
  %i.sg = insertelement <4 x float> %i.sf, float %i.rx, i64 2
  %i.sh = insertelement <4 x float> %i.sg, float %i.sd, i64 3
  br label %bb.p

bb.p:                                             ; preds = %.preheader294.i, %bb.o
  %i.si = phi <4 x float> [ %i.sh, %.preheader294.i ], [ %i.lg, %bb.o ]
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kz ; 7 uses
  br i1 %.not147.not, label %.preheader297.i, label %.preheader296.i

.preheader297.i:                                  ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.sj, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa !12, !noalias !628
  br label %.loopexit.i

.preheader296.i:                                  ; preds = %bb.p
  %i.sk = load <4 x float>, ptr %i.sj, align 16, !tbaa !12, !alias.scope !625
  %i.sl = fadd reassoc nsz arcp contract afn <4 x float> %i.sk, %i.si
  store <4 x float> %i.sl, ptr %i.sj, align 16, !tbaa !12, !alias.scope !625
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader296.i, %.preheader297.i
  br i1 %.not80, label %.preheader295.preheader.i, label %.thread290.i

.preheader295.preheader.i:                        ; preds = %.loopexit.i
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.kz
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.le
  %i.so = load <2 x float>, ptr %i.sj, align 16, !tbaa !12, !alias.scope !625
  %i.sp = load <2 x float>, ptr %i.sm, align 16, !tbaa !12, !alias.scope !623
  %i.sq = fadd reassoc nsz arcp contract afn <2 x float> %i.sp, %i.so
  %i.sr = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.sq, <2 x float> zeroinitializer) ; 5 uses
  %i.ss = extractelement <2 x float> %i.sr, i64 1
  store float %i.ss, ptr %i.sn, align 4, !tbaa !12, !alias.scope !625
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lf ; 2 uses
  %i.su = load float, ptr %i.st, align 8, !tbaa !12, !alias.scope !625
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.lf
  %i.sw = load float, ptr %i.sv, align 8, !tbaa !12, !alias.scope !623
  %i.sx = fadd reassoc nsz arcp contract afn float %i.sw, %i.su
  %i.sy = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sx, float 0.000000e+00) ; 3 uses
  store float %i.sy, ptr %i.st, align 8, !tbaa !12, !alias.scope !625
  %or.cond3.i = and i1 %i.ac, %i.lh
  br i1 %or.cond3.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader295.preheader.i
  %i.sz = fmul reassoc nsz arcp contract afn <2 x float> %i.sr, %i.ag ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.tc = fmul reassoc nsz arcp contract afn float %i.sy, %10 ; 3 uses
  %i.td = add nuw nsw i64 %indvars.iv.i, 1        ; 2 uses
  %i.te = mul i64 %i.td, 7109453100751455733      ; 2 uses
  %i.tf = lshr i64 %i.te, 28
  %i.tg = xor i64 %i.tf, %i.te
  %i.th = mul i64 %i.tg, -3808689974395783757
  %i.ti = lshr i64 %i.th, 32
  %i.tj = trunc nuw i64 %i.ti to i32              ; 2 uses
  %i.tk = mul nsw i64 %i.td, %i.kw                ; 2 uses
  %i.tl = lshr i64 %i.tk, 33
  %i.tm = xor i64 %i.tl, %i.tk
  %i.tn = mul i64 %i.tm, 7109453100751455733      ; 2 uses
  %i.to = lshr i64 %i.tn, 28
  %i.tp = xor i64 %i.to, %i.tn
  %i.tq = mul i64 %i.tp, -3808689974395783757
  %i.tr = lshr i64 %i.tq, 32
  %i.ts = trunc nuw i64 %i.tr to i32              ; 3 uses
  %i.tt = shl i32 %i.ts, 9
  %i.tu = xor i32 %i.tj, 635086878                ; 2 uses
  %i.tv = xor i32 %i.ts, -1171427716              ; 3 uses
  %i.tw = xor i32 %i.tu, %i.ts                    ; 3 uses
  %i.tx = xor i32 %i.tv, %i.tj                    ; 2 uses
  %i.ty = xor i32 %i.tt, %i.tu
  %i.tz = call noundef i32 @llvm.fshl.i32(i32 %i.tv, i32 %i.tv, i32 11)
  %i.ua = shl i32 %i.tw, 9
  %i.ub = xor i32 %i.ty, %i.tx                    ; 2 uses
  %i.uc = xor i32 %i.tz, %i.tw                    ; 3 uses
  %i.ud = xor i32 %i.ub, %i.tw                    ; 3 uses
  %i.ue = xor i32 %i.uc, %i.tx                    ; 2 uses
  %i.uf = xor i32 %i.ub, %i.ua
  %i.ug = call noundef i32 @llvm.fshl.i32(i32 %i.uc, i32 %i.uc, i32 11)
  %i.uh = shl i32 %i.ud, 9
  %i.ui = xor i32 %i.uf, %i.ue                    ; 2 uses
  %i.uj = xor i32 %i.ud, %i.ug                    ; 3 uses
  %i.uk = xor i32 %i.ui, %i.ud                    ; 3 uses
  %i.ul = xor i32 %i.uj, %i.ue                    ; 2 uses
  %i.um = xor i32 %i.ui, %i.uh
  %i.un = call noundef i32 @llvm.fshl.i32(i32 %i.uj, i32 %i.uj, i32 11)
  %i.uo = shl i32 %i.uk, 9
  %i.up = xor i32 %i.um, %i.ul                    ; 2 uses
  %i.uq = xor i32 %i.uk, %i.un                    ; 3 uses
  %i.ur = xor i32 %i.up, %i.uk                    ; 3 uses
  %i.us = xor i32 %i.up, %i.uo
  %i.ut = shl i32 %i.ur, 9
  %i.uu = xor i32 %i.uq, %i.ul                    ; 3 uses
  %i.uv = call noundef i32 @llvm.fshl.i32(i32 %i.uq, i32 %i.uq, i32 11) ; 2 uses
  %i.uw = xor i32 %i.us, %i.uu                    ; 2 uses
  %i.ux = xor i32 %i.ur, %i.uv                    ; 3 uses
  %i.uy = xor i32 %i.uw, %i.ur                    ; 3 uses
  %i.uz = xor i32 %i.ux, %i.uu                    ; 3 uses
  %i.va = xor i32 %i.uw, %i.ut
  %i.vb = call noundef i32 @llvm.fshl.i32(i32 %i.ux, i32 %i.ux, i32 11) ; 2 uses
  %i.vc = add i32 %i.vb, %i.uz
  %i.vd = shl i32 %i.uy, 9
  %i.ve = xor i32 %i.va, %i.uz                    ; 2 uses
  %i.vf = xor i32 %i.uy, %i.vb                    ; 3 uses
  %i.vg = xor i32 %i.ve, %i.uy                    ; 3 uses
  %i.vh = xor i32 %i.vf, %i.uz                    ; 3 uses
  %i.vi = xor i32 %i.ve, %i.vd
  %i.vj = call noundef i32 @llvm.fshl.i32(i32 %i.vf, i32 %i.vf, i32 11) ; 2 uses
  %i.vk = lshr i32 %i.vc, 8
  %i.vl = uitofp reassoc nsz arcp contract afn nneg i32 %i.vk to float
  %i.vm = shl i32 %i.vg, 9
  %i.vn = xor i32 %i.vi, %i.vh                    ; 2 uses
  %i.vo = xor i32 %i.vg, %i.vj                    ; 3 uses
  %i.vp = xor i32 %i.vn, %i.vg                    ; 2 uses
  %i.vq = xor i32 %i.vo, %i.vh                    ; 3 uses
  %i.vr = xor i32 %i.vn, %i.vm
  %i.vs = call noundef i32 @llvm.fshl.i32(i32 %i.vo, i32 %i.vo, i32 11) ; 2 uses
  %i.vt = add i32 %i.vs, %i.vq
  %i.vu = xor i32 %i.vr, %i.vq
  %i.vv = xor i32 %i.vp, %i.vs                    ; 3 uses
  %i.vw = xor i32 %i.vu, %i.vp
  %i.vx = xor i32 %i.vv, %i.vq                    ; 2 uses
  %i.vy = call noundef i32 @llvm.fshl.i32(i32 %i.vv, i32 %i.vv, i32 11) ; 2 uses
  %i.vz = lshr i32 %i.vt, 8
  %i.wa = uitofp reassoc nsz arcp contract afn nneg i32 %i.vz to float
  %i.wb = xor i32 %i.vw, %i.vy                    ; 3 uses
  %i.wc = xor i32 %i.wb, %i.vx
  %i.wd = call noundef i32 @llvm.fshl.i32(i32 %i.wb, i32 %i.wb, i32 11)
  %i.we = add i32 %i.wd, %i.wc
  %i.wf = lshr i32 %i.we, 8
  %i.wg = uitofp reassoc nsz arcp contract afn nneg i32 %i.wf to float
  %i.wh = fmul reassoc nnan nsz arcp contract afn float %i.vl, f0x34C90FDB
  %sincos.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.wh)
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1
  %i.wi = fmul reassoc nnan nsz arcp contract afn float %i.wa, f0x34C90FDB
  %sincos60.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.wi)
  %sin61.i.i.i = extractvalue { float, float } %sincos60.i.i.i, 0
  %i.wj = fmul reassoc nnan nsz arcp contract afn float %i.wg, f0x34C90FDB
  %sincos63.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.wj)
  %cos65.i.i.i = extractvalue { float, float } %sincos63.i.i.i, 1
  %i.wk = add i32 %i.vy, %i.vx
  %i.wl = lshr i32 %i.wk, 8
  %i.wm = uitofp reassoc nsz arcp contract afn nneg i32 %i.wl to float
  %i.wn = fmul reassoc nnan nsz arcp contract afn float %i.wm, f0x33800000
  %i.wo = call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.wn, float f0x00800000)
  %i.wp = call fast float @llvm.log.f32(float %i.wo)
  %i.wq = fmul reassoc nnan nsz arcp contract afn float %i.wp, -2.000000e+00
  %i.wr = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.wq)
  %i.ws = add i32 %i.vj, %i.vh
  %i.wt = add i32 %i.uv, %i.uu
  %i.wu = insertelement <2 x i32> poison, i32 %i.wt, i64 0
  %i.wv = insertelement <2 x i32> %i.wu, i32 %i.ws, i64 1
  %i.ww = lshr <2 x i32> %i.wv, splat (i32 8)
  %i.wx = uitofp reassoc nsz arcp contract afn nneg <2 x i32> %i.ww to <2 x float>
  %i.wy = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.wx, splat (float f0x33800000)
  %i.wz = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.wy, <2 x float> splat (float f0x00800000))
  %i.xa = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.wz)
  %i.xb = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.xa, splat (float -2.000000e+00)
  %i.xc = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.xb)
  %i.xd = extractelement <2 x float> %i.sr, i64 0
  %i.xe = fadd reassoc nnan nsz arcp contract afn float %i.xd, 3.750000e-01
  %i.xf = load float, ptr %i.ta, align 4, !tbaa !12, !alias.scope !625 ; 2 uses
  %i.xg = fadd reassoc nsz arcp contract afn float %i.xf, 3.750000e-01
  %i.xh = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xg, float 0.000000e+00)
  %i.xi = fmul reassoc nsz arcp contract afn float %cos65.i.i.i, %i.wr
  %i.xj = fmul reassoc nsz arcp contract afn float %i.xi, %i.tc
  %i.xk = load float, ptr %i.tb, align 8, !tbaa !12, !alias.scope !625 ; 3 uses
  %i.xl = fadd reassoc nsz arcp contract afn float %i.xk, 3.750000e-01
  %i.xm = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xl, float 0.000000e+00)
  %i.xn = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.xm)
  %i.xo = fmul reassoc nnan nsz arcp contract afn float %i.xn, 2.000000e+00
  %i.xp = fadd reassoc nsz arcp contract afn float %i.xo, %i.xj ; 2 uses
  %i.xq = fmul reassoc nsz arcp contract afn float %i.xp, %i.xp
  %i.xr = fmul reassoc nsz arcp contract afn float %i.tc, %i.tc
  %i.xs = fsub reassoc nsz arcp contract afn float %i.xq, %i.xr
  %i.xt = fmul reassoc nsz arcp contract afn float %i.xs, 2.500000e-01
  %i.xu = insertelement <2 x float> poison, float %cos.i.i.i, i64 0
  %i.xv = insertelement <2 x float> %i.xu, float %sin61.i.i.i, i64 1
  %i.xw = fmul reassoc nsz arcp contract afn <2 x float> %i.xv, %i.xc
  %i.xx = fmul reassoc nsz arcp contract afn <2 x float> %i.xw, %i.sz
  %i.xy = insertelement <2 x float> poison, float %i.xe, i64 0
  %i.xz = insertelement <2 x float> %i.xy, float %i.xh, i64 1
  %i.ya = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.xz)
  %i.yb = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ya, splat (float 2.000000e+00)
  %i.yc = fadd reassoc nsz arcp contract afn <2 x float> %i.yb, %i.xx ; 2 uses
  %i.yd = fmul reassoc nsz arcp contract afn <2 x float> %i.yc, %i.yc
  %i.ye = fmul reassoc nsz arcp contract afn <2 x float> %i.sz, %i.sz
  %i.yf = fsub reassoc nsz arcp contract afn <2 x float> %i.yd, %i.ye
  %i.yg = fmul reassoc nsz arcp contract afn <2 x float> %i.yf, splat (float 2.500000e-01)
  %i.yh = insertelement <2 x float> %i.sr, float %i.xf, i64 1 ; 2 uses
  %i.yi = fsub reassoc nsz arcp contract afn <2 x float> splat (float -3.750000e-01), %i.yh
  %i.yj = fadd reassoc nsz arcp contract afn <2 x float> %i.yi, %i.yg
  %i.yk = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.yj)
  %i.yl = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.ym = shufflevector <2 x float> %i.yl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yn = fmul reassoc nsz arcp contract afn <2 x float> %i.yk, %i.ym
  %i.yo = fadd reassoc nsz arcp contract afn <2 x float> %i.yn, %i.yh
  %i.yp = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.yo, <2 x float> zeroinitializer)
  %i.yq = fsub reassoc nsz arcp contract afn float -3.750000e-01, %i.xk
  %i.yr = fadd reassoc nsz arcp contract afn float %i.yq, %i.xt
  %i.ys = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.yr)
  %i.yt = fmul reassoc nsz arcp contract afn float %i.ys, %i.lc
  %i.yu = fadd reassoc nsz arcp contract afn float %i.yt, %i.xk
  %i.yv = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.yu, float 0.000000e+00)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.preheader295.preheader.i
  %i.yw = phi float [ %i.sy, %.preheader295.preheader.i ], [ %i.yv, %bb.q ] ; 3 uses
  %i.yx = phi <2 x float> [ %i.sr, %.preheader295.preheader.i ], [ %i.yp, %bb.q ] ; 5 uses
  %foldExtExtBinop287 = fmul reassoc nsz arcp contract afn <2 x float> %i.yx, %i.yx
  %i.yy = extractelement <2 x float> %foldExtExtBinop287, i64 0
  %foldExtExtBinop289 = fmul reassoc nsz arcp contract afn <2 x float> %i.yx, %i.yx
  %i.yz = extractelement <2 x float> %foldExtExtBinop289, i64 1
  %i.za = fmul reassoc nsz arcp contract afn float %i.yw, %i.yw
  %i.zb = fadd reassoc nsz arcp contract afn float %i.yz, %i.za
  %i.zc = fadd reassoc nsz arcp contract afn float %i.zb, %i.yy
  %i.zd = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.zc)
  %i.ze = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.zd, float f0x358637BD) ; 2 uses
  %i.zf = shufflevector <2 x float> %i.yx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zg = insertelement <4 x float> %i.zf, float %i.yw, i64 2
  %i.zh = insertelement <4 x float> %i.zg, float %i.ze, i64 3
  %i.zi = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ze, i64 0
  %i.zj = shufflevector <4 x float> %i.zi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.zk = fdiv reassoc nsz arcp contract afn <4 x float> %i.zh, %i.zj
  store <4 x float> %i.zk, ptr %i.sj, align 16, !tbaa !12, !alias.scope !625
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
  %i.zl = add nsw i32 %i.ah, -1
  %i.zm = and i32 %i.zl, %i.l                     ; 3 uses
  %i.zn = icmp eq i32 %i.zm, 0
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i78, %.lr.ph214.i
  %.0179212.i = phi i64 [ 0, %.lr.ph214.i ], [ %i.aam, %._crit_edge.i78 ] ; 2 uses
  %i.zo = trunc i64 %.0179212.i to i32            ; 5 uses
  br i1 %.not.i.i69, label %bb.u, label %dwt_interleave_rows.exit.i72

bb.u:                                             ; preds = %bb.t
  %i.zp = sdiv i32 %.reass.i70, %i.ah             ; 4 uses
  br i1 %i.zn, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.zq = mul nsw i32 %i.zm, %i.zp                ; 2 uses
  %i.zr = icmp sgt i32 %i.zq, %i.zo
  br i1 %i.zr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.zs = sdiv i32 %i.zo, %i.zp
  %i.zt = srem i32 %i.zo, %i.zp
  %i.zu = shl nsw i32 %i.zt, %.054119
  %i.zv = add nsw i32 %i.zu, %i.zs
  br label %dwt_interleave_rows.exit.i72

bb.x:                                             ; preds = %bb.v
  %i.zw = sub nsw i32 %i.zo, %i.zq                ; 2 uses
  %i.zx = add nsw i32 %i.zp, -1                   ; 2 uses
  %i.zy = sdiv i32 %i.zw, %i.zx
  %i.zz = add nsw i32 %i.zy, %i.zm
  %i.aaa = srem i32 %i.zw, %i.zx
  %i.aab = shl nsw i32 %i.aaa, %.054119
  %i.aac = add nsw i32 %i.zz, %i.aab
  br label %dwt_interleave_rows.exit.i72

dwt_interleave_rows.exit.i72:                     ; preds = %bb.x, %bb.w, %bb.t
  %.1.i.i73 = phi i32 [ %i.zo, %bb.t ], [ %i.zv, %bb.w ], [ %i.aac, %bb.x ] ; 3 uses
  %i.aad = sext i32 %.1.i.i73 to i64
  %i.aae = sub i32 %.1.i.i73, %i.ah
  %i.aaf = call i32 @llvm.smax.i32(i32 %i.aae, i32 0)
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = mul i64 %3, %i.aag                     ; 3 uses
  %i.aai = mul i64 %3, %i.aad                     ; 3 uses
  %i.aaj = add i32 %.1.i.i73, %i.ah
  %..i74 = call i32 @llvm.smin.i32(i32 %i.aaj, i32 %invariant.op.i)
  %i.aak = sext i32 %..i74 to i64
  %i.aal = mul i64 %3, %i.aak                     ; 3 uses
  br i1 %.not.i40.i, label %._crit_edge.i78, label %.lr.ph.i75

._crit_edge.i78:                                  ; preds = %.loopexit.i76, %dwt_interleave_rows.exit.i72
  %i.aam = add nuw nsw i64 %.0179212.i, 1         ; 2 uses
  %exitcond220.not.i = icmp eq i64 %i.aam, %4
  br i1 %exitcond220.not.i, label %guide_laplacians.exit, label %bb.t

.lr.ph.i75:                                       ; preds = %dwt_interleave_rows.exit.i72, %.loopexit.i76
  %.0178211.i = phi i64 [ %i.aer, %.loopexit.i76 ], [ 0, %dwt_interleave_rows.exit.i72 ] ; 5 uses
  %i.aan = add i64 %.0178211.i, %i.aai
  %i.aao = shl i64 %i.aan, 2                      ; 6 uses
  %i.aap = or disjoint i64 %i.aao, 2              ; 3 uses
  %i.aaq = or disjoint i64 %i.aao, 3              ; 2 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aaq
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !12, !alias.scope !631
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.aao
  %i.aau = load <2 x float>, ptr %i.aat, align 16, !tbaa !12, !alias.scope !629 ; 3 uses
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.aap
  %i.aaw = load float, ptr %i.aav, align 8, !tbaa !12, !alias.scope !629 ; 3 uses
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.aaq
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !12, !alias.scope !629 ; 3 uses
  %i.aaz = fcmp reassoc nsz arcp contract afn ogt float %i.aas, 0.000000e+00 ; 2 uses
  br i1 %i.aaz, label %.preheader.i, label %bb.y

.preheader.i:                                     ; preds = %.lr.ph.i75
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aap
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !12, !alias.scope !631
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aao
  %i.abd = trunc i64 %.0178211.i to i32           ; 2 uses
  %i.abe = sub i32 %i.abd, %i.ah
  %i.abf = call i32 @llvm.smax.i32(i32 %i.abe, i32 0)
  %i.abg = zext nneg i32 %i.abf to i64            ; 3 uses
  %i.abh = add i32 %i.ah, %i.abd
  %.194.i = call i32 @llvm.smin.i32(i32 %i.abh, i32 %i.q)
  %i.abi = sext i32 %.194.i to i64                ; 3 uses
  %i.abj = add i64 %i.aah, %i.abg
  %.idx.i79 = shl i64 %i.abj, 4
  %i.abk = getelementptr inbounds nuw i8, ptr %6, i64 %.idx.i79 ; 2 uses
  %i.abl = add i64 %.0178211.i, %i.aah
  %.idx187.i = shl i64 %i.abl, 4
  %i.abm = getelementptr inbounds nuw i8, ptr %6, i64 %.idx187.i ; 2 uses
  %i.abn = add i64 %i.aah, %i.abi
  %.idx188.i = shl i64 %i.abn, 4
  %i.abo = getelementptr inbounds nuw i8, ptr %6, i64 %.idx188.i ; 2 uses
  %i.abp = add i64 %i.aai, %i.abg
  %.idx189.i = shl i64 %i.abp, 4
  %i.abq = getelementptr inbounds nuw i8, ptr %6, i64 %.idx189.i ; 2 uses
  %i.abr = add i64 %i.aai, %i.abi
  %.idx190.i = shl i64 %i.abr, 4
  %i.abs = getelementptr i8, ptr %6, i64 %.idx190.i ; 2 uses
  %i.abt = add i64 %i.aal, %i.abg
  %.idx191.i = shl i64 %i.abt, 4
  %i.abu = getelementptr i8, ptr %6, i64 %.idx191.i ; 2 uses
  %i.abv = add i64 %.0178211.i, %i.aal
  %.idx192.i = shl i64 %i.abv, 4
  %i.abw = getelementptr i8, ptr %6, i64 %.idx192.i ; 2 uses
  %i.abx = add i64 %i.aal, %i.abi
  %.idx193.i = shl i64 %i.abx, 4
  %i.aby = getelementptr i8, ptr %6, i64 %.idx193.i ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
end_hunk_6
