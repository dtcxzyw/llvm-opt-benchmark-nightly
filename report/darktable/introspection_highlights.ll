Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@dt_interpolation_new
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
  %i.o = sitofp <4 x i32> %i.n to <4 x float>
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
  %i.k = alloca [4 x float], align 16             ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 15 uses
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
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.bj ; 11 uses
  br i1 %i.ab, label %bb.r, label %bb.be

bb.r:                                             ; preds = %bb.q
  br i1 %i.ac, label %bb.s, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.r
  tail call fastcc void @process_clip(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, float noundef %i.bn)
  %.val291 = load ptr, ptr %i.l, align 8, !tbaa !56 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val291, i64 272
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %.val291, i64 276
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bp, float %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %.val291, i64 280
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !12
  %i.bv = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bs, float %i.bu)
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bv, float 1.000000e+00) ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  store float %i.bw, ptr %i.bx, align 4, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 276
  store float %i.bw, ptr %i.by, align 4, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  store float %i.bw, ptr %i.bz, align 4, !tbaa !12
  br label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.ca = load ptr, ptr %i.p, align 16, !tbaa !53
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !95
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, f0x3F7CAC08 ; 6 uses
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !56  ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 240
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !96
  %.not.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i, label %.thread198.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 256
  %i.ci = load float, ptr %i.ch, align 16, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 260
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 264
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !12
  %i.cn = fmul reassoc nsz arcp contract afn float %i.ci, %i.cd
  %i.co = fmul reassoc nsz arcp contract afn float %i.ck, %i.cd
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cm, %i.cd
  br label %.thread198.i

.thread198.i:                                     ; preds = %bb.t, %bb.s
  %.sroa.5.0.i = phi float [ %i.co, %bb.t ], [ %i.cd, %bb.s ] ; 4 uses
  %.sroa.0278.0.i = phi float [ %i.cn, %bb.t ], [ %i.cd, %bb.s ] ; 4 uses
  %i.cq = phi float [ %i.cp, %bb.t ], [ %i.cd, %bb.s ] ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !79 ; 2 uses
  %i.ct = sext i32 %i.cs to i64                   ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !78 ; 2 uses
  %i.cw = sext i32 %i.cv to i64                   ; 5 uses
  %i.cx = udiv i64 %i.ct, 3                       ; 8 uses
  %i.cy = udiv i64 %i.cw, 3                       ; 2 uses
  %i.cz = tail call i64 @dt_round_size(i64 noundef %i.cx, i64 noundef 4) #33
  %i.da = tail call i64 @dt_round_size(i64 noundef %i.cy, i64 noundef 4) #33
  %i.db = mul i64 %i.da, %i.cz                    ; 10 uses
  %i.dc = load ptr, ptr %i.p, align 16, !tbaa !53 ; 4 uses
  %i.dd = tail call i64 @dt_dev_pixelpipe_piece_hash(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #33
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.df = mul i64 %i.dd, 33
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !97
  %i.dh = zext i8 %i.dg to i64
  %i.di = xor i64 %i.df, %i.dh
  %i.dj = mul i64 %i.di, 33
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 17
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !97
  %i.dm = zext i8 %i.dl to i64
  %i.dn = xor i64 %i.dj, %i.dm
  %i.do = mul i64 %i.dn, 33
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 18
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !97
  %i.dr = zext i8 %i.dq to i64
  %i.ds = xor i64 %i.do, %i.dr
  %i.dt = mul i64 %i.ds, 33
  %i.du = getelementptr inbounds nuw i8, ptr %i.dc, i64 19
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !97
  %i.dw = zext i8 %i.dv to i64
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = load ptr, ptr %1, align 16, !tbaa !98
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 664
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !99 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2480
  %i.ec = mul i64 %i.dx, 33
  %i.ed = load i8, ptr %i.eb, align 1, !tbaa !97
  %i.ee = zext i8 %i.ed to i64
  %i.ef = xor i64 %i.ec, %i.ee
  %i.eg = mul i64 %i.ef, 33
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 2481
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !97
  %i.ej = zext i8 %i.ei to i64
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = mul i64 %i.ek, 33
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 2482
  %i.en = load i8, ptr %i.em, align 1, !tbaa !97
  %i.eo = zext i8 %i.en to i64
  %i.ep = xor i64 %i.el, %i.eo
  %i.eq = mul i64 %i.ep, 33
  %i.er = getelementptr inbounds nuw i8, ptr %i.ea, i64 2483
  %i.es = load i8, ptr %i.er, align 1, !tbaa !97
  %i.et = zext i8 %i.es to i64
  %i.eu = xor i64 %i.eq, %i.et                    ; 2 uses
  %i.ev = load i64, ptr @img_opphash, align 8, !tbaa !100
  %i.ew = icmp eq i64 %i.eu, %i.ev
  br i1 %i.ew, label %.preheader204.preheader.i, label %bb.v

.preheader204.preheader.i:                        ; preds = %.thread198.i
  %.sroa.0262.0.copyload264.i = load float, ptr @img_oppchroma, align 16, !tbaa !12
  %.sroa.8.0.copyload265.i = load float, ptr getelementptr inbounds nuw (i8, ptr @img_oppchroma, i64 4), align 4, !tbaa !12
  %.sroa.11.0.copyload267.i = load float, ptr getelementptr inbounds nuw (i8, ptr @img_oppchroma, i64 8), align 8, !tbaa !12
  %i.ex = load i32, ptr @img_oppclipped, align 4, !tbaa !15
  %.not197.i = icmp eq i32 %i.ex, 0
  br i1 %.not197.i, label %bb.u, label %.thread199.i

bb.u:                                             ; preds = %.preheader204.preheader.i
  %i.ey = shl nsw i64 %i.ct, 2
  %i.ez = mul i64 %i.ey, %i.cw
  tail call void @dt_iop_image_copy(ptr noundef %i.ar, ptr noundef %2, i64 noundef %i.ez) #33
  br label %_process_linear_opposed.exit

bb.v:                                             ; preds = %.thread198.i
  %.not190.i = icmp eq i32 %.0269, 0
  br i1 %.not190.i, label %.thread199.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fa = mul i64 %i.db, 6                        ; 2 uses
  %i.fb = tail call ptr @dt_alloc_aligned(i64 noundef %i.fa) #33 ; 12 uses
  %.not.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i, label %.thread199.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.fb, i8 0, i64 %i.fa, i1 false)
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fb, i64 64) ]
  %i.fc = add nsw i64 %i.cw, -1                   ; 2 uses
  %.not237.i = icmp eq i64 %i.fc, 0
  br i1 %.not237.i, label %._crit_edge220.thread.i, label %.preheader211.lr.ph.i

.preheader211.lr.ph.i:                            ; preds = %bb.x
  %i.fd = add nsw i64 %i.ct, -1                   ; 2 uses
  %.not238.i = icmp eq i64 %i.fd, 0
  br i1 %.not238.i, label %._crit_edge220.thread.i, label %.preheader211.us.preheader.i

.preheader211.us.preheader.i:                     ; preds = %.preheader211.lr.ph.i
  %i.fe = shl i64 %i.db, 1                        ; 2 uses
  br label %.preheader211.us.i

.preheader211.us.i:                               ; preds = %._crit_edge.us.i, %.preheader211.us.preheader.i
  %.0172219.us.i = phi i64 [ %i.fy, %._crit_edge.us.i ], [ 0, %.preheader211.us.preheader.i ] ; 3 uses
  %.0173218.us.i = phi i32 [ %.3.us.2.i, %._crit_edge.us.i ], [ 0, %.preheader211.us.preheader.i ]
  %i.ff = mul i64 %.0172219.us.i, %i.ct
  %i.fg = udiv i64 %.0172219.us.i, 3
  %i.fh = mul i64 %i.fg, %i.cx
  %invariant.gep.us.i = getelementptr i8, ptr %i.fb, i64 %i.fh
  br label %bb.y

bb.y:                                             ; preds = %bb.ah, %.preheader211.us.i
  %.0171217.us.i = phi i64 [ 0, %.preheader211.us.i ], [ %i.fx, %bb.ah ] ; 3 uses
  %.1216.us.i = phi i32 [ %.0173218.us.i, %.preheader211.us.i ], [ %.3.us.2.i, %bb.ah ] ; 2 uses
  %i.fi = add i64 %.0171217.us.i, %i.ff
  %i.fj = udiv i64 %.0171217.us.i, 3
  %.idx196.us.i = shl i64 %i.fi, 4
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 %.idx196.us.i ; 3 uses
  %invariant.gep212.us.i = getelementptr i8, ptr %invariant.gep.us.i, i64 %i.fj ; 4 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !12 ; 3 uses
  %i.fm = fcmp reassoc nsz arcp contract afn ult float %i.fl, %.sroa.0278.0.i
  br i1 %i.fm, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fn = load i8, ptr %invariant.gep212.us.i, align 1, !tbaa !97
  %i.fo = icmp eq i8 %i.fn, 0
  br i1 %i.fo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %invariant.gep212.us.i, align 1, !tbaa !97
  %.pre.i = load float, ptr %i.fk, align 4, !tbaa !12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.fp = phi float [ %.pre.i, %bb.aa ], [ %i.fl, %bb.z ], [ %i.fl, %bb.y ] ; 3 uses
  %.3.us.i = phi i32 [ 1, %bb.aa ], [ %.1216.us.i, %bb.z ], [ %.1216.us.i, %bb.y ] ; 2 uses
  %i.fq = fcmp reassoc nsz arcp contract afn ult float %i.fp, %.sroa.5.0.i
  br i1 %i.fq, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %gep213.us.1.i = getelementptr i8, ptr %invariant.gep212.us.i, i64 %i.db ; 2 uses
  %i.fr = load i8, ptr %gep213.us.1.i, align 1, !tbaa !97
  %i.fs = icmp eq i8 %i.fr, 0
  br i1 %i.fs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i8 1, ptr %gep213.us.1.i, align 1, !tbaa !97
  %.pre288.i = load float, ptr %i.fk, align 4, !tbaa !12
  br label %bb.ae

end_hunk_0
begin_hunk_1_@process:bb.a
bb.dl:                                            ; preds = %bb.dk
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %.1131184.i321.peel, i64 %i.ok
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !12 ; 3 uses
  %i.wy = fadd reassoc nsz arcp contract afn float %i.wd, f0xB727C5AC
  %i.wz = fcmp reassoc nsz arcp contract afn ult float %i.wx, %i.wy
  br i1 %i.wz, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.xa = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.vu, float %i.wd)
  br label %bb.dq

bb.dn:                                            ; preds = %bb.dl
  %i.xb = and i32 %i.vj, 1
  %.not142.i331.peel = icmp eq i32 %i.xb, 0
  br i1 %.not142.i331.peel, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.xc = fmul reassoc nsz arcp contract afn float %i.wx, %.1133.i327.peel
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  %i.xd = fdiv reassoc nsz arcp contract afn float %i.wx, %.1133.i327.peel
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dm
  %.0.i328.peel = phi nsz float [ %i.xa, %bb.dm ], [ %i.xc, %bb.do ], [ %i.xd, %bb.dp ]
  %i.xe = load float, ptr %.1129185.i320.peel, align 4, !tbaa !12
  %i.xf = fadd reassoc nsz arcp contract afn float %i.xe, %.0.i328.peel
  store float %i.xf, ptr %.1129185.i320.peel, align 4, !tbaa !12
  br label %.sink.split.i.peel

.sink.split.i.peel:                               ; preds = %bb.dq, %bb.dk, %.lr.ph.i316.split.split.peel, %.lr.ph.i316
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.oo ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv421 ; 2 uses
  %i.xh = icmp eq i64 %indvars.iv421, %i.oq
  %i.xi = load float, ptr %gep, align 4, !tbaa !12
  store float %i.xi, ptr %i.xg, align 4, !tbaa !12
  br i1 %.not141.i350.peel, label %interpolate_color.exit354.loopexit, label %.peel.next

.peel.next:                                       ; preds = %.sink.split.i.peel, %.sink.split.i
  %.0120188.i337 = phi i32 [ %i.zc, %.sink.split.i ], [ %i.or, %.sink.split.i.peel ] ; 6 uses
  %.pn500 = phi ptr [ %.1129185.i340, %.sink.split.i ], [ %i.xg, %.sink.split.i.peel ]
  %gep.pn = phi ptr [ %.1131184.i341, %.sink.split.i ], [ %gep, %.sink.split.i.peel ]
  %.0132183.i342 = phi float [ %.2134.ph.i, %.sink.split.i ], [ 1.000000e+00, %.sink.split.i.peel ] ; 4 uses
  %.1131184.i341 = getelementptr inbounds [4 x i8], ptr %gep.pn, i64 %i.om ; 4 uses
  %.1129185.i340 = getelementptr inbounds [4 x i8], ptr %.pn500, i64 %i.om ; 3 uses
  %i.xj = shl i32 %.0120188.i337, 1               ; 2 uses
  %i.xk = and i32 %i.xj, 14
  %.tr.i.i343 = or disjoint i32 %i.xk, %i.tn
  %i.xl = shl nuw nsw i32 %.tr.i.i343, 1
  %i.xm = lshr i32 %i.o, %i.xl
  %i.xn = and i32 %i.xm, 3
  %i.xo = zext nneg i32 %i.xn to i64
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.xo
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !12 ; 3 uses
  %i.xr = add i32 %i.xj, 2
  %i.xs = and i32 %i.xr, 14
  %.tr.i146.i344 = or disjoint i32 %i.xs, %i.tn
  %i.xt = shl nuw nsw i32 %.tr.i146.i344, 1
  %i.xu = lshr i32 %i.o, %i.xt
  %i.xv = and i32 %i.xu, 3
  %i.xw = zext nneg i32 %i.xv to i64
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.xw
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !12 ; 3 uses
  %i.xz = icmp eq i32 %.0120188.i337, 0
  %or.cond9.i345 = or i1 %i.xh, %i.xz
  %or.cond508 = select i1 %i.to, i1 true, i1 %or.cond9.i345
  %i.ya = load float, ptr %.1131184.i341, align 4, !tbaa !12 ; 7 uses
  br i1 %or.cond508, label %.sink.split.i, label %bb.dr

bb.dr:                                            ; preds = %.peel.next
  %i.yb = fcmp reassoc nsz arcp contract afn olt float %i.ya, %i.xq
  %i.yc = fcmp reassoc nsz arcp contract afn ogt float %i.ya, f0x3727C5AC
  %or.cond144.i346 = and i1 %i.yb, %i.yc
  br i1 %or.cond144.i346, label %bb.ds, label %bb.dw

bb.ds:                                            ; preds = %bb.dr
  %i.yd = getelementptr inbounds [4 x i8], ptr %.1131184.i341, i64 %i.om
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !12 ; 4 uses
  %i.yf = fcmp reassoc nsz arcp contract afn olt float %i.ye, %i.xy
  %i.yg = fcmp reassoc nsz arcp contract afn ogt float %i.ye, f0x3727C5AC
  %or.cond145.i352 = and i1 %i.yf, %i.yg
  br i1 %or.cond145.i352, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.yh = and i32 %.0120188.i337, 1
  %.not.i353 = icmp eq i32 %i.yh, 0
  %i.yi = fmul reassoc nsz arcp contract afn float %.0132183.i342, 3.000000e+00 ; 2 uses
  br i1 %.not.i353, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.yj = fdiv reassoc nsz arcp contract afn float %i.ya, %i.ye
  %i.yk = fadd reassoc nsz arcp contract afn float %i.yj, %i.yi
  %i.yl = fmul reassoc nsz arcp contract afn float %i.yk, 2.500000e-01
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  %i.ym = fdiv reassoc nsz arcp contract afn float %i.ye, %i.ya
  %i.yn = fadd reassoc nsz arcp contract afn float %i.ym, %i.yi
  %i.yo = fmul reassoc nsz arcp contract afn float %i.yn, 2.500000e-01
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.ds, %bb.dr
  %.1133.i347 = phi nsz float [ %i.yl, %bb.du ], [ %i.yo, %bb.dv ], [ %.0132183.i342, %bb.dr ], [ %.0132183.i342, %bb.ds ] ; 4 uses
  %i.yp = fadd reassoc nsz arcp contract afn float %i.xq, f0xB727C5AC
  %i.yq = fcmp reassoc nsz arcp contract afn ult float %i.ya, %i.yp
  br i1 %i.yq, label %.sink.split.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.yr = getelementptr inbounds [4 x i8], ptr %.1131184.i341, i64 %i.om
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !12 ; 3 uses
  %i.yt = fadd reassoc nsz arcp contract afn float %i.xy, f0xB727C5AC
  %i.yu = fcmp reassoc nsz arcp contract afn ult float %i.ys, %i.yt
  br i1 %i.yu, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.yv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xq, float %i.xy)
  br label %bb.ec

bb.dz:                                            ; preds = %bb.dx
  %i.yw = and i32 %.0120188.i337, 1
  %.not142.i351 = icmp eq i32 %i.yw, 0
  br i1 %.not142.i351, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.yx = fmul reassoc nsz arcp contract afn float %i.ys, %.1133.i347
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.yy = fdiv reassoc nsz arcp contract afn float %i.ys, %.1133.i347
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dy
  %.0.i348 = phi nsz float [ %i.yv, %bb.dy ], [ %i.yx, %bb.ea ], [ %i.yy, %bb.eb ]
  %i.yz = load float, ptr %.1129185.i340, align 4, !tbaa !12
  %i.za = fadd reassoc nsz arcp contract afn float %i.yz, %.0.i348
  %i.zb = fmul reassoc nsz arcp contract afn float %i.za, 2.500000e-01
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.peel.next, %bb.dw, %bb.ec
  %.0.sink.i = phi float [ %i.ya, %bb.dw ], [ %i.zb, %bb.ec ], [ %i.ya, %.peel.next ]
  %.2134.ph.i = phi float [ %.1133.i347, %bb.dw ], [ %.1133.i347, %bb.ec ], [ %.0132183.i342, %.peel.next ]
  store float %.0.sink.i, ptr %.1129185.i340, align 4, !tbaa !12
  %i.zc = add nsw i32 %.0120188.i337, -1
  %.not141.i350 = icmp eq i32 %.0120188.i337, 0
  br i1 %.not141.i350, label %interpolate_color.exit354.loopexit, label %.peel.next, !llvm.loop !399

interpolate_color.exit354.loopexit:               ; preds = %.sink.split.i, %.sink.split.i.peel
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 2 uses
  %exitcond425.not = icmp eq i64 %indvars.iv.next422, %i.ok
  br i1 %exitcond425.not, label %.loopexit381, label %.lr.ph.i316

.loopexit381:                                     ; preds = %interpolate_color.exit354.loopexit, %.lr.ph403, %.lr.ph394, %.preheader382, %.lr.ph399, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  br label %bb.fq

bb.ed:                                            ; preds = %bb.be
  %i.zd = icmp eq i32 %i.o, 9
  br i1 %i.zd, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  tail call fastcc void @process_lch_xtrans(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, float noundef %i.bn)
  br label %bb.fq

bb.ef:                                            ; preds = %bb.ed
  %.val292 = load i32, ptr %i.n, align 4, !tbaa !80
  tail call fastcc void @process_lch_bayer(i32 %.val292, ptr noundef %2, ptr noundef %3, ptr noundef %5, float noundef %i.bn)
  br label %bb.fq

bb.eg:                                            ; preds = %bb.be
  br i1 %or.cond3, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.ze = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !94 ; 2 uses
  %.not278 = icmp eq i32 %i.zf, 4
  %spec.select = select i1 %.not278, i32 0, i32 %i.zf
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.zg = phi i32 [ 0, %bb.eg ], [ %spec.select, %bb.eh ]
  %i.zh = tail call fastcc ptr @_process_opposed(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef 1, i32 noundef 1, float noundef %i.bn) ; 3 uses
  %.not279 = icmp eq ptr %i.zh, null
  br i1 %.not279, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call fastcc void @_process_segmentation(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.q, i32 noundef %i.zg, ptr noundef %i.zh)
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  tail call void @free(ptr noundef %i.zh) #33
  br label %bb.fq

bb.el:                                            ; preds = %bb.be
  tail call fastcc void @process_clip(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, float noundef %i.bn)
  br label %bb.fq

bb.em:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #33
  %i.zi = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %i.zj = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  %i.zk = load float, ptr %i.zj, align 8, !tbaa !12 ; 2 uses
  %7 = load <2 x float>, ptr %i.zi, align 16, !tbaa !12
  %8 = fmul reassoc nsz arcp contract afn float %i.zk, %i.bn ; 10 uses
  %9 = insertelement <4 x float> poison, float %i.bn, i64 0
  %10 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %11 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.zk, i64 2
  %12 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x float> %12, <4 x float> %11, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %14 = fmul reassoc nsz arcp contract afn <4 x float> %10, %13 ; 10 uses
  store <4 x float> %14, ptr %i.k, align 16, !tbaa !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.zl = load ptr, ptr %i.p, align 16, !tbaa !53, !noalias !423 ; 4 uses
  %i.zm = load i32, ptr %i.n, align 4, !tbaa !80, !noalias !423 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.process_laplacian_bayer.wb, i64 16, i1 false), !noalias !423
  %i.zn = load ptr, ptr %i.l, align 8, !tbaa !56, !noalias !423 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 256
  %i.zp = load float, ptr %i.zo, align 16, !tbaa !12, !noalias !423 ; 3 uses
  %i.zq = fcmp reassoc nsz arcp contract afn une float %i.zp, 0.000000e+00
  br i1 %i.zq, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  store float %i.zp, ptr %i.a, align 16, !tbaa !12, !noalias !423
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zn, i64 260
  %i.zs = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.zt = load <2 x float>, ptr %i.zr, align 4, !tbaa !12, !noalias !423 ; 2 uses
  store <2 x float> %i.zt, ptr %i.zs, align 4, !tbaa !12, !noalias !423
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.zu = phi float [ %i.zp, %bb.en ], [ 1.000000e+00, %bb.em ] ; 2 uses
  %i.zv = phi <2 x float> [ %i.zt, %bb.en ], [ splat (float 1.000000e+00), %bb.em ] ; 3 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.zx = load <2 x i32>, ptr %i.zw, align 4, !tbaa !15, !noalias !423 ; 3 uses
  %i.zy = extractelement <2 x i32> %i.zx, i64 0   ; 8 uses
  %i.zz = extractelement <2 x i32> %i.zx, i64 1   ; 4 uses
  %i.aaa = sext i32 %i.zz to i64                  ; 8 uses
  %i.aab = sext i32 %i.zy to i64                  ; 17 uses
  %i.aac = lshr i64 %i.aaa, 2                     ; 5 uses
  %i.aad = lshr i64 %i.aab, 2                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33, !noalias !423
  %i.aae = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5, i32 noundef 1048580, ptr noundef nonnull %i.b, i32 noundef 1048580, ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef null) #33, !noalias !423
  %.not.i355 = icmp eq i32 %i.aae, 0
  br i1 %.not.i355, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.aaf = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !424, !noalias !423
  %i.aah = sext i32 %i.aag to i64
  call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.aah, ptr noundef nonnull %4, ptr noundef %5) #33
  br label %process_laplacian_bayer.exit

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33, !noalias !423
  store i32 0, ptr %6, align 4, !tbaa !74, !noalias !423
  %i.aai = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.aai, align 4, !tbaa !75, !noalias !423
  %i.aaj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aak = ashr <2 x i32> %i.zx, splat (i32 2)
  store <2 x i32> %i.aak, ptr %i.aaj, align 4, !tbaa !15, !noalias !423
  %i.aal = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float 0.000000e+00, ptr %i.aal, align 4, !tbaa !38, !noalias !423
  %i.aam = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %6, i32 noundef 1048580, ptr noundef nonnull %i.d, i32 noundef 1048580, ptr noundef nonnull %i.e, i32 noundef 1048580, ptr noundef nonnull %i.f, i32 noundef 1048580, ptr noundef nonnull %i.g, i32 noundef 1048580, ptr noundef nonnull %i.h, i32 noundef 1048580, ptr noundef nonnull %i.i, i32 noundef 0, ptr noundef null) #33, !noalias !423
  %.not84.i = icmp eq i32 %i.aam, 0
  br i1 %.not84.i, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.aan = load ptr, ptr %i.b, align 8, !tbaa !139, !noalias !423
  call void @free(ptr noundef %i.aan) #33, !noalias !423
  %i.aao = load ptr, ptr %i.c, align 8, !tbaa !139, !noalias !423
  call void @free(ptr noundef %i.aao) #33, !noalias !423
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !424, !noalias !423
  %i.aar = sext i32 %i.aaq to i64
  call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.aar, ptr noundef nonnull %4, ptr noundef %5) #33
  br label %bb.fo

bb.es:                                            ; preds = %bb.eq
  %i.aas = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aat = load float, ptr %i.aas, align 8, !tbaa !76, !noalias !423
  %i.aau = fmul reassoc nsz arcp contract afn float %i.aat, 4.000000e+00
  %i.aav = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !38, !noalias !423
  %i.aax = fdiv reassoc nsz arcp contract afn float %i.aau, %i.aaw
  %i.aay = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aax, float 1.000000e+00) ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.zl, i64 28
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !77, !noalias !423
  %i.abb = shl nuw i32 1, %i.aba
  %i.abc = sitofp reassoc nsz arcp contract afn i32 %i.abb to float
  %i.abd = fdiv reassoc nsz arcp contract afn float %i.abc, %i.aay
  %i.abe = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.abd)
  %i.abf = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.abe)
  %i.abg = fptosi float %i.abf to i32
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.abg, i32 1)
  %i.abh = call i32 @llvm.umin.i32(i32 %spec.select.i, i32 12) ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.zl, i64 20
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !140, !noalias !423
  %i.abk = fdiv reassoc nsz arcp contract afn float %i.abj, %i.aay ; 2 uses
  %i.abl = load ptr, ptr %i.b, align 8, !tbaa !139, !noalias !423 ; 2 uses
  %i.abm = load ptr, ptr %i.c, align 8, !tbaa !139, !noalias !423 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %.not243.i.i = icmp ne i32 %i.zz, 0             ; 2 uses
  br i1 %.not243.i.i, label %.preheader.lr.ph.i.i, label %_interpolate_and_mask.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.es
  %.not244.i.i = icmp eq i32 %i.zy, 0
  %i.abn = add nsw i64 %i.aaa, -1
  %i.abo = add nsw i64 %i.aab, -1                 ; 4 uses
  br i1 %.not244.i.i, label %_interpolate_and_mask.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.abp = shl nsw i64 %i.aab, 4
  %min.iters.check = icmp ult i32 %i.zy, 8
  %mul.result = shl nsw i64 %i.abo, 4
  %mul.overflow = icmp ugt i64 %i.abo, 1152921504606846975
  %n.vec = and i64 %i.aab, 2305843009213693944    ; 3 uses
  %broadcast.splatinsert522 = insertelement <8 x i32> poison, i32 %i.zm, i64 0
  %broadcast.splat523 = shufflevector <8 x i32> %broadcast.splatinsert522, <8 x i32> poison, <8 x i32> zeroinitializer ; 9 uses
  %broadcast.splatinsert524 = insertelement <8 x i64> poison, i64 %i.abo, i64 0
  %broadcast.splat525 = shufflevector <8 x i64> %broadcast.splatinsert524, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splat527 = shufflevector <4 x float> %14, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %broadcast.splat529 = shufflevector <4 x float> %14, <4 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %broadcast.splatinsert530 = insertelement <8 x float> poison, float %8, i64 0
  %broadcast.splat531 = shufflevector <8 x float> %broadcast.splatinsert530, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %broadcast.splatinsert532 = insertelement <8 x float> poison, float %i.zu, i64 0
  %broadcast.splat533 = shufflevector <8 x float> %broadcast.splatinsert532, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat535 = shufflevector <2 x float> %i.zv, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat537 = shufflevector <2 x float> %i.zv, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.abq = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat533
  %i.abr = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat535
  %i.abs = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat537
  %cmp.n = icmp eq i64 %n.vec, %i.aab
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %16 = extractelement <4 x float> %14, i64 0
  %17 = extractelement <4 x float> %14, i64 1
  %18 = extractelement <4 x float> %14, i64 0     ; 3 uses
  %19 = extractelement <4 x float> %14, i64 0
  %20 = extractelement <4 x float> %14, i64 0
  %21 = extractelement <4 x float> %14, i64 0
  %i.abt = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.zu, i64 0
  %i.abu = shufflevector <2 x float> %i.zv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.abv = shufflevector <4 x float> %i.abt, <4 x float> %i.abu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.abw = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.abv
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %.0241.i.i = phi i64 [ %i.acf, %._crit_edge.i.i ], [ 0, %.preheader.preheader.i.i ] ; 7 uses
  %i.abx = mul i64 %i.abp, %.0241.i.i
  %i.aby = shl i64 %.0241.i.i, 1
  %i.abz = and i64 %i.aby, 14                     ; 6 uses
  %i.aca = mul i64 %.0241.i.i, %i.aab             ; 3 uses
  %i.acb = icmp eq i64 %.0241.i.i, 0              ; 2 uses
  %i.acc = icmp eq i64 %.0241.i.i, %i.abn         ; 2 uses
  %i.acd = add i64 %.0241.i.i, -1                 ; 2 uses
  %i.ace = mul i64 %i.acd, %i.aab
  %i.acf = add nuw i64 %.0241.i.i, 1              ; 4 uses
  %i.acg = mul i64 %i.acf, %i.aab
  %i.ach = getelementptr [4 x i8], ptr %2, i64 %i.ace ; 6 uses
  %i.aci = getelementptr [4 x i8], ptr %2, i64 %i.acg ; 6 uses
  %i.acj = getelementptr [4 x i8], ptr %2, i64 %i.aca ; 4 uses
  %i.ack = shl i64 %i.acd, 1
  %i.acl = and i64 %i.ack, 14                     ; 3 uses
  %i.acm = shl i64 %i.acf, 1
  %i.acn = and i64 %i.acm, 14                     ; 3 uses
  %i.aco = getelementptr i8, ptr %i.abm, i64 %i.abx ; 4 uses
  %i.acp = getelementptr i8, ptr %i.aco, i64 %mul.result
  %i.acq = icmp ult ptr %i.acp, %i.aco
  %i.acr = or i1 %i.acq, %mul.overflow
  %or.cond611 = select i1 %min.iters.check, i1 true, i1 %i.acr
  br i1 %or.cond611, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.abz, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert514 = insertelement <8 x i1> poison, i1 %i.acb, i64 0
  %broadcast.splat515 = shufflevector <8 x i1> %broadcast.splatinsert514, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert516 = insertelement <8 x i1> poison, i1 %i.acc, i64 0
  %broadcast.splat517 = shufflevector <8 x i1> %broadcast.splatinsert516, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert518 = insertelement <8 x i64> poison, i64 %i.acl, i64 0
  %broadcast.splat519 = shufflevector <8 x i64> %broadcast.splatinsert518, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert520 = insertelement <8 x i64> poison, i64 %i.acn, i64 0
  %broadcast.splat521 = shufflevector <8 x i64> %broadcast.splatinsert520, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %i.acs = shl i64 %index, 4
  %i.act = getelementptr i8, ptr %i.aco, i64 %i.acs
  %i.acu = and <8 x i64> %vec.ind, splat (i64 1)  ; 3 uses
  %i.acv = or disjoint <8 x i64> %i.acu, %broadcast.splat
  %i.acw = trunc nuw nsw <8 x i64> %i.acv to <8 x i32>
  %i.acx = shl nuw nsw <8 x i32> %i.acw, splat (i32 1)
  %i.acy = lshr <8 x i32> %broadcast.splat523, %i.acx
  %i.acz = and <8 x i32> %i.acy, splat (i32 3)    ; 4 uses
  %i.ada = add i64 %index, %i.aca                 ; 2 uses
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ada
  %wide.load = load <8 x float>, ptr %i.adb, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 7 uses
  %i.adc = icmp eq <8 x i64> %vec.ind, zeroinitializer
  %i.add = or <8 x i1> %broadcast.splat515, %i.adc
  %i.ade = select <8 x i1> %i.add, <8 x i1> splat (i1 true), <8 x i1> %broadcast.splat517
  %i.adf = icmp eq <8 x i64> %vec.ind, %broadcast.splat525
  %i.adg = select <8 x i1> %i.ade, <8 x i1> splat (i1 true), <8 x i1> %i.adf ; 11 uses
  %i.adh = xor <8 x i1> %i.adg, splat (i1 true)   ; 9 uses
  %i.adi = add <8 x i64> %vec.ind, splat (i64 -1) ; 2 uses
  %i.adj = extractelement <8 x i64> %i.adi, i64 0 ; 3 uses
  %i.adk = add <8 x i64> %vec.ind, splat (i64 1)  ; 2 uses
  %i.adl = extractelement <8 x i64> %i.adk, i64 0 ; 3 uses
  %i.adm = getelementptr [4 x i8], ptr %i.ach, i64 %index
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.adm, <8 x i1> %i.adh, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.adn = getelementptr [4 x i8], ptr %i.aci, i64 %index
  %wide.masked.load538 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.adn, <8 x i1> %i.adh, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.ado = getelementptr [4 x i8], ptr %i.acj, i64 %i.adj
  %wide.masked.load539 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ado, <8 x i1> %i.adh, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 5 uses
  %i.adp = getelementptr [4 x i8], ptr %i.acj, i64 %i.adl
  %wide.masked.load540 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.adp, <8 x i1> %i.adh, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 5 uses
  %i.adq = getelementptr [4 x i8], ptr %i.ach, i64 %i.adl
  %wide.masked.load541 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.adq, <8 x i1> %i.adh, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.adr = getelementptr [4 x i8], ptr %i.ach, i64 %i.adj
  %wide.masked.load542 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.adr, <8 x i1> %i.adh, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.ads = getelementptr [4 x i8], ptr %i.aci, i64 %i.adl
  %wide.masked.load543 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ads, <8 x i1> %i.adh, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.adt = getelementptr [4 x i8], ptr %i.aci, i64 %i.adj
  %wide.masked.load544 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.adt, <8 x i1> %i.adh, <8 x float> poison), !tbaa !12, !alias.scope !428, !noalias !429 ; 3 uses
  %i.adu = icmp eq <8 x i32> %i.acz, splat (i32 1) ; 2 uses
  %i.adv = select <8 x i1> %i.adg, <8 x i1> splat (i1 true), <8 x i1> %i.adu ; 2 uses
  %i.adw = xor <8 x i1> %i.adv, splat (i1 true)
  %i.adx = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load538, %wide.masked.load ; 2 uses
  %i.ady = fadd reassoc nsz arcp contract afn <8 x float> %i.adx, %wide.masked.load539
  %i.adz = fadd reassoc nsz arcp contract afn <8 x float> %i.ady, %wide.masked.load540
  %i.aea = fmul reassoc nsz arcp contract afn <8 x float> %i.adz, splat (float 2.500000e-01)
  %i.aeb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat527
  %i.aec = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load538, %broadcast.splat527
  %i.aed = select <8 x i1> %i.aeb, <8 x i1> splat (i1 true), <8 x i1> %i.aec
  %i.aee = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load540, %broadcast.splat527
  %i.aef = select <8 x i1> %i.aed, <8 x i1> splat (i1 true), <8 x i1> %i.aee
  %i.aeg = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load539, %broadcast.splat527
  %i.aeh = select <8 x i1> %i.aef, <8 x i1> splat (i1 true), <8 x i1> %i.aeg
  %i.aei = icmp eq <8 x i32> %i.acz, zeroinitializer ; 2 uses
  %i.aej = select <8 x i1> %i.adw, <8 x i1> %i.aei, <8 x i1> zeroinitializer ; 5 uses
  %i.aek = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat529
  %i.ael = or disjoint <8 x i64> %i.acu, %broadcast.splat519
  %i.aem = trunc nuw nsw <8 x i64> %i.ael to <8 x i32>
  %i.aen = shl nuw nsw <8 x i32> %i.aem, splat (i32 1) ; 2 uses
  %i.aeo = select <8 x i1> %i.adh, <8 x i1> %i.adu, <8 x i1> zeroinitializer ; 3 uses
  %i.aep = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat527
  %i.aeq = select <8 x i1> %i.adv, <8 x i1> splat (i1 true), <8 x i1> %i.aei
  %i.aer = xor <8 x i1> %i.aeq, splat (i1 true)
  %i.aes = or <8 x i1> %i.aeo, %i.aer             ; 4 uses
  %i.aet = shl nuw <8 x i32> splat (i32 3), %i.aen
  %i.aeu = and <8 x i32> %i.aet, %broadcast.splat523
  %i.aev = icmp eq <8 x i32> %i.aeu, zeroinitializer ; 2 uses
  %i.aew = select <8 x i1> %i.aes, <8 x i1> %i.aev, <8 x i1> zeroinitializer ; 2 uses
  %i.aex = or disjoint <8 x i64> %i.acu, %broadcast.splat521
  %i.aey = trunc nuw nsw <8 x i64> %i.aex to <8 x i32>
  %i.aez = shl nuw nsw <8 x i32> %i.aey, splat (i32 1) ; 2 uses
  %i.afa = shl nuw <8 x i32> splat (i32 3), %i.aez
  %i.afb = and <8 x i32> %i.afa, %broadcast.splat523
  %i.afc = icmp eq <8 x i32> %i.afb, zeroinitializer ; 2 uses
  %i.afd = xor <8 x i1> %i.afc, splat (i1 true)
  %i.afe = select <8 x i1> %i.aew, <8 x i1> %i.afd, <8 x i1> zeroinitializer
  %i.aff = xor <8 x i1> %i.aev, splat (i1 true)
  %i.afg = select <8 x i1> %i.aes, <8 x i1> %i.aff, <8 x i1> zeroinitializer
  %i.afh = or <8 x i1> %i.afe, %i.afg
  %i.afi = and <8 x i64> %i.adi, splat (i64 1)
  %i.afj = or disjoint <8 x i64> %i.afi, %broadcast.splat
  %i.afk = trunc nuw nsw <8 x i64> %i.afj to <8 x i32>
  %i.afl = shl nuw nsw <8 x i32> %i.afk, splat (i32 1) ; 2 uses
  %i.afm = shl nuw <8 x i32> splat (i32 3), %i.afl
  %i.afn = and <8 x i32> %i.afm, %broadcast.splat523
  %i.afo = icmp eq <8 x i32> %i.afn, zeroinitializer
  %i.afp = select <8 x i1> %i.afh, <8 x i1> %i.afo, <8 x i1> zeroinitializer
  %i.afq = and <8 x i64> %i.adk, splat (i64 1)
  %i.afr = or disjoint <8 x i64> %i.afq, %broadcast.splat
  %i.afs = trunc nuw nsw <8 x i64> %i.afr to <8 x i32>
  %i.aft = shl nuw nsw <8 x i32> %i.afs, splat (i32 1) ; 2 uses
  %i.afu = shl nuw <8 x i32> splat (i32 3), %i.aft
  %i.afv = and <8 x i32> %i.afu, %broadcast.splat523
  %i.afw = icmp eq <8 x i32> %i.afv, zeroinitializer
  %i.afx = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load542, %wide.masked.load541
  %i.afy = fadd reassoc nsz arcp contract afn <8 x float> %i.afx, %wide.masked.load543
  %i.afz = fadd reassoc nsz arcp contract afn <8 x float> %i.afy, %wide.masked.load544
  %i.aga = fmul reassoc nsz arcp contract afn <8 x float> %i.afz, splat (float 2.500000e-01) ; 2 uses
  %i.agb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load542, %broadcast.splat529
  %i.agc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load541, %broadcast.splat529
  %i.agd = select <8 x i1> %i.agb, <8 x i1> splat (i1 true), <8 x i1> %i.agc
  %i.age = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load544, %broadcast.splat529
  %i.agf = select <8 x i1> %i.agd, <8 x i1> splat (i1 true), <8 x i1> %i.age
  %i.agg = select <8 x i1> %i.afp, <8 x i1> %i.afw, <8 x i1> zeroinitializer ; 3 uses
  %i.agh = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load540, %wide.masked.load539
  %i.agi = fmul reassoc nsz arcp contract afn <8 x float> %i.agh, splat (float 5.000000e-01) ; 2 uses
  %i.agj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load539, %broadcast.splat529
  %i.agk = select <8 x i1> %i.aew, <8 x i1> %i.afc, <8 x i1> zeroinitializer ; 3 uses
  %i.agl = fmul reassoc nsz arcp contract afn <8 x float> %i.adx, splat (float 5.000000e-01) ; 2 uses
  %i.agm = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat529
  %predphi546 = select <8 x i1> %i.agg, <8 x float> %wide.masked.load540, <8 x float> %wide.masked.load543
  %predphi547 = select <8 x i1> %i.agk, <8 x float> %wide.masked.load538, <8 x float> %predphi546
  %predphi548 = select <8 x i1> %i.agg, <8 x i1> %i.agj, <8 x i1> %i.agf
  %predphi549 = select <8 x i1> %i.agk, <8 x i1> %i.agm, <8 x i1> %predphi548
  %predphi550 = select nsz <8 x i1> %i.agg, <8 x float> %i.agi, <8 x float> %i.aga
  %predphi551 = select nsz <8 x i1> %i.agk, <8 x float> %i.agl, <8 x float> %predphi550
  %i.agn = fcmp reassoc nsz arcp contract afn ogt <8 x float> %predphi547, %broadcast.splat529
  %i.ago = select <8 x i1> %predphi549, <8 x i1> splat (i1 true), <8 x i1> %i.agn
  %i.agp = icmp eq <8 x i32> %i.acz, splat (i32 2) ; 2 uses
  %i.agq = xor <8 x i1> %i.agp, splat (i1 true)
  %i.agr = select <8 x i1> %i.aes, <8 x i1> %i.agq, <8 x i1> %i.aej ; 2 uses
  %i.ags = xor <8 x i1> %i.aeo, splat (i1 true)
  %i.agt = lshr <8 x i32> %broadcast.splat523, %i.aen
  %i.agu = and <8 x i32> %i.agt, splat (i32 3)
  %i.agv = icmp eq <8 x i32> %i.agu, splat (i32 2) ; 2 uses
  %i.agw = select <8 x i1> %i.agr, <8 x i1> %i.agv, <8 x i1> zeroinitializer ; 2 uses
  %i.agx = lshr <8 x i32> %broadcast.splat523, %i.aez
  %i.agy = and <8 x i32> %i.agx, splat (i32 3)
  %i.agz = icmp eq <8 x i32> %i.agy, splat (i32 2) ; 2 uses
  %i.aha = xor <8 x i1> %i.agz, splat (i1 true)
  %i.ahb = select <8 x i1> %i.agw, <8 x i1> %i.aha, <8 x i1> zeroinitializer
  %i.ahc = xor <8 x i1> %i.agv, splat (i1 true)
  %i.ahd = select <8 x i1> %i.agr, <8 x i1> %i.ahc, <8 x i1> zeroinitializer
  %i.ahe = or <8 x i1> %i.ahb, %i.ahd             ; 2 uses
  %i.ahf = lshr <8 x i32> %broadcast.splat523, %i.afl
  %i.ahg = and <8 x i32> %i.ahf, splat (i32 3)
  %i.ahh = icmp eq <8 x i32> %i.ahg, splat (i32 2) ; 2 uses
  %i.ahi = select <8 x i1> %i.ahe, <8 x i1> %i.ahh, <8 x i1> zeroinitializer ; 2 uses
  %i.ahj = lshr <8 x i32> %broadcast.splat523, %i.aft
  %i.ahk = and <8 x i32> %i.ahj, splat (i32 3)
  %i.ahl = icmp eq <8 x i32> %i.ahk, splat (i32 2) ; 2 uses
  %i.ahm = xor <8 x i1> %i.ahh, splat (i1 true)
  %i.ahn = select <8 x i1> %i.ahe, <8 x i1> %i.ahm, <8 x i1> zeroinitializer
  %i.aho = xor <8 x i1> %i.ahl, splat (i1 true)
  %i.ahp = select <8 x i1> %i.ahi, <8 x i1> %i.aho, <8 x i1> zeroinitializer
  %i.ahq = or <8 x i1> %i.ahn, %i.ahp
  %i.ahr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load542, %broadcast.splat531
  %i.ahs = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load541, %broadcast.splat531
  %i.aht = select <8 x i1> %i.ahr, <8 x i1> splat (i1 true), <8 x i1> %i.ahs
  %i.ahu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load544, %broadcast.splat531
  %i.ahv = select <8 x i1> %i.aht, <8 x i1> splat (i1 true), <8 x i1> %i.ahu
  %i.ahw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load543, %broadcast.splat531
  %i.ahx = select <8 x i1> %i.ahv, <8 x i1> splat (i1 true), <8 x i1> %i.ahw
  %i.ahy = select <8 x i1> %i.ahi, <8 x i1> %i.ahl, <8 x i1> zeroinitializer ; 2 uses
  %i.ahz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load539, %broadcast.splat531
  %i.aia = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load540, %broadcast.splat531
  %i.aib = select <8 x i1> %i.ahz, <8 x i1> splat (i1 true), <8 x i1> %i.aia
  %i.aic = select <8 x i1> %i.agw, <8 x i1> %i.agz, <8 x i1> zeroinitializer ; 2 uses
  %i.aid = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, %broadcast.splat531
  %i.aie = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load538, %broadcast.splat531
  %i.aif = select <8 x i1> %i.aid, <8 x i1> splat (i1 true), <8 x i1> %i.aie
  %i.aig = select <8 x i1> %i.aes, <8 x i1> %i.agp, <8 x i1> zeroinitializer ; 5 uses
  %i.aih = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat531
  %i.aii = zext nneg <8 x i32> %i.acz to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.k, <8 x i64> %i.aii
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.adg, <8 x float> poison), !tbaa !12, !noalias !430
  %i.aij = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %wide.masked.gather ; 4 uses
  %i.aik = zext <8 x i1> %i.aij to <8 x i32>      ; 3 uses
  %not. = xor <8 x i1> %i.aig, splat (i1 true)
  %i.ail = select <8 x i1> %not., <8 x i1> %i.aej, <8 x i1> zeroinitializer
  %i.aim = select <8 x i1> %i.adg, <8 x i1> splat (i1 true), <8 x i1> %i.ail
  %predphi557 = select nsz <8 x i1> %i.aim, <8 x float> %wide.load, <8 x float> %predphi551 ; 3 uses
  %i.ain = select <8 x i1> %i.aig, <8 x i1> splat (i1 true), <8 x i1> %i.aej
  %not.595 = xor <8 x i1> %i.ain, splat (i1 true)
  %i.aio = select <8 x i1> %not.595, <8 x i1> %i.aeo, <8 x i1> zeroinitializer
  %i.aip = select <8 x i1> %i.adg, <8 x i1> splat (i1 true), <8 x i1> %i.aio
  %predphi559 = select nsz <8 x i1> %i.aip, <8 x float> %wide.load, <8 x float> %i.aea ; 3 uses
  %predphi560 = select nsz <8 x i1> %i.ahq, <8 x float> %i.aga, <8 x float> %wide.load
  %predphi561 = select nsz <8 x i1> %i.ahy, <8 x float> %i.agi, <8 x float> %predphi560
  %predphi562 = select nsz <8 x i1> %i.aic, <8 x float> %i.agl, <8 x float> %predphi561 ; 3 uses
  %i.aiq = xor <8 x i1> %i.aej, splat (i1 true)
  %i.air = select <8 x i1> %i.aig, <8 x i1> splat (i1 true), <8 x i1> %i.aiq
  %predphi563.v = select <8 x i1> %i.air, <8 x i1> %i.ago, <8 x i1> %i.aek ; 2 uses
  %predphi563 = zext <8 x i1> %predphi563.v to <8 x i32>
  %predphi564 = select <8 x i1> %i.adg, <8 x i32> %i.aik, <8 x i32> %predphi563
  %i.ais = select <8 x i1> %i.aig, <8 x i1> splat (i1 true), <8 x i1> %i.aej
  %i.ait = select <8 x i1> %i.ais, <8 x i1> splat (i1 true), <8 x i1> %i.ags
  %predphi565.v = select <8 x i1> %i.ait, <8 x i1> %i.aeh, <8 x i1> %i.aep ; 2 uses
  %predphi565 = zext <8 x i1> %predphi565.v to <8 x i32>
  %predphi566 = select <8 x i1> %i.adg, <8 x i32> %i.aik, <8 x i32> %predphi565
  %predphi567.v = select <8 x i1> %i.ahy, <8 x i1> %i.aib, <8 x i1> %i.ahx
  %predphi568.v = select <8 x i1> %i.aic, <8 x i1> %i.aif, <8 x i1> %predphi567.v
  %predphi569.v = select <8 x i1> %i.aig, <8 x i1> %i.aih, <8 x i1> %predphi568.v ; 2 uses
  %predphi569 = zext <8 x i1> %predphi569.v to <8 x i32>
  %predphi570 = select <8 x i1> %i.adg, <8 x i32> %i.aik, <8 x i32> %predphi569
  %i.aiu = fmul reassoc nsz arcp contract afn <8 x float> %predphi557, %predphi557
  %i.aiv = fmul reassoc nsz arcp contract afn <8 x float> %predphi559, %predphi559
  %i.aiw = fadd reassoc nsz arcp contract afn <8 x float> %i.aiv, %i.aiu
  %i.aix = fmul reassoc nsz arcp contract afn <8 x float> %predphi562, %predphi562
  %i.aiy = fadd reassoc nsz arcp contract afn <8 x float> %i.aiw, %i.aix
  %i.aiz = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.aiy)
  %i.aja = uitofp nneg <8 x i32> %predphi570 to <8 x float>
  %i.ajb = select <8 x i1> %i.adg, <8 x i1> %i.aij, <8 x i1> %predphi563.v
  %i.ajc = select <8 x i1> %i.adg, <8 x i1> %i.aij, <8 x i1> %predphi565.v
  %i.ajd = select <8 x i1> %i.ajb, <8 x i1> splat (i1 true), <8 x i1> %i.ajc
  %i.aje = select <8 x i1> %i.adg, <8 x i1> %i.aij, <8 x i1> %predphi569.v
  %i.ajf = select <8 x i1> %i.ajd, <8 x i1> splat (i1 true), <8 x i1> %i.aje
  %i.ajg = select <8 x i1> %i.ajf, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ajh = shufflevector <8 x i32> %predphi564, <8 x i32> %predphi566, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aji = uitofp nneg <16 x i32> %i.ajh to <16 x float>
  %i.ajj = shufflevector <8 x float> %i.aja, <8 x float> %i.ajg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.aji, <16 x float> %i.ajj, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.act, align 4, !tbaa !12, !alias.scope !427, !noalias !431
  %i.ajk = fmul reassoc nsz arcp contract afn <8 x float> %predphi557, %i.abq
  %i.ajl = shl i64 %i.ada, 4
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.ajl
  %i.ajn = fmul reassoc nsz arcp contract afn <8 x float> %predphi559, %i.abr
  %i.ajo = fmul reassoc nsz arcp contract afn <8 x float> %predphi562, %i.abs
  %i.ajp = shufflevector <8 x float> %i.ajk, <8 x float> %i.ajn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajq = shufflevector <8 x float> %i.ajo, <8 x float> %i.aiz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajr = shufflevector <16 x float> %i.ajp, <16 x float> %i.ajq, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %interleaved.vec571 = call reassoc nsz arcp contract afn <32 x float> @llvm.maxnum.v32f32(<32 x float> %i.ajr, <32 x float> zeroinitializer)
  store <32 x float> %interleaved.vec571, ptr %i.ajm, align 4, !tbaa !12, !alias.scope !426, !noalias !432
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i64> %vec.ind, splat (i64 8)
  %i.ajs = icmp eq i64 %index.next, %n.vec
  br i1 %i.ajs, label %middle.block, label %vector.body, !llvm.loop !407

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %.0190240.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %bb.fk, %middle.block
  %exitcond245.not.i.i = icmp eq i64 %i.acf, %i.aaa
  br i1 %exitcond245.not.i.i, label %_interpolate_and_mask.exit.i, label %.preheader.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.fk
  %.0190240.i.i = phi i64 [ %.pre-phi.i.i, %bb.fk ], [ %.0190240.i.i.ph, %scalar.ph.preheader ] ; 10 uses
  %i.ajt = shl i64 %.0190240.i.i, 4
  %scevgep.i.i = getelementptr i8, ptr %i.aco, i64 %i.ajt ; 4 uses
  %i.aju = and i64 %.0190240.i.i, 1               ; 5 uses
  %i.ajv = or disjoint i64 %i.aju, %i.abz
  %.tr.i.i.i = trunc nuw nsw i64 %i.ajv to i32
  %i.ajw = shl nuw nsw i32 %.tr.i.i.i, 1
  %i.ajx = lshr i32 %i.zm, %i.ajw
  %i.ajy = and i32 %i.ajx, 3                      ; 4 uses
  %i.ajz = add i64 %.0190240.i.i, %i.aca          ; 2 uses
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ajz
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 10 uses
  %i.akc = icmp eq i64 %.0190240.i.i, 0
  %or.cond.i.i = or i1 %i.acb, %i.akc
  %or.cond201.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.acc
  %i.akd = icmp eq i64 %.0190240.i.i, %i.abo
  %or.cond203.i.i = select i1 %or.cond201.i.i, i1 true, i1 %i.akd
  br i1 %or.cond203.i.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %scalar.ph
  %i.ake = zext nneg i32 %i.ajy to i64
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ake
  %i.akg = load float, ptr %i.akf, align 4, !tbaa !12, !noalias !430
  %i.akh = fcmp reassoc nsz arcp contract afn ogt float %i.akb, %i.akg
  %i.aki = zext i1 %i.akh to i32                  ; 3 uses
  %.pre254.i.i = add nuw i64 %.0190240.i.i, 1
  br label %bb.fk

bb.eu:                                            ; preds = %scalar.ph
  %i.akj = add i64 %.0190240.i.i, -1              ; 5 uses
  %i.akk = add nuw i64 %.0190240.i.i, 1           ; 9 uses
  %i.akl = getelementptr [4 x i8], ptr %i.ach, i64 %.0190240.i.i
  %i.akm = load float, ptr %i.akl, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.akn = getelementptr [4 x i8], ptr %i.aci, i64 %.0190240.i.i
  %i.ako = load float, ptr %i.akn, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.akp = getelementptr [4 x i8], ptr %i.acj, i64 %i.akj
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.akr = getelementptr [4 x i8], ptr %i.acj, i64 %i.akk
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 6 uses
  %i.akt = getelementptr [4 x i8], ptr %i.ach, i64 %i.akk
  %i.aku = load float, ptr %i.akt, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.akv = getelementptr [4 x i8], ptr %i.ach, i64 %i.akj
  %i.akw = load float, ptr %i.akv, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.akx = getelementptr [4 x i8], ptr %i.aci, i64 %i.akk
  %i.aky = load float, ptr %i.akx, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.akz = getelementptr [4 x i8], ptr %i.aci, i64 %i.akj
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !12, !alias.scope !428, !noalias !429 ; 4 uses
  %i.alb = icmp eq i32 %i.ajy, 1
  br i1 %i.alb, label %.thread.i.i, label %bb.ev

.thread.i.i:                                      ; preds = %bb.eu
  %i.alc = fcmp reassoc nsz arcp contract afn ogt float %i.akb, %17
  %i.ald = zext i1 %i.alc to i32
  br label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.ale = fadd reassoc nsz arcp contract afn float %i.ako, %i.akm
  %i.alf = fadd reassoc nsz arcp contract afn float %i.ale, %i.akq
  %i.alg = fadd reassoc nsz arcp contract afn float %i.alf, %i.aks
  %i.alh = fmul reassoc nsz arcp contract afn float %i.alg, 2.500000e-01 ; 2 uses
  %i.ali = insertelement <4 x float> poison, float %i.akm, i64 0
  %i.alj = insertelement <4 x float> %i.ali, float %i.ako, i64 1
  %i.alk = insertelement <4 x float> %i.alj, float %i.aks, i64 2
  %i.all = insertelement <4 x float> %i.alk, float %i.akq, i64 3
  %i.alm = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.all, %15
  %i.aln = freeze <4 x i1> %i.alm
  %i.alo = bitcast <4 x i1> %i.aln to i4
  %i.alp = icmp ne i4 %i.alo, 0
  %i.alq = zext i1 %i.alp to i32                  ; 2 uses
  %i.alr = icmp eq i32 %i.ajy, 0
  br i1 %i.alr, label %.thread224.i.i, label %bb.ew

.thread224.i.i:                                   ; preds = %bb.ev
  %i.als = fcmp reassoc nsz arcp contract afn ogt float %i.akb, %16
  %i.alt = zext i1 %i.als to i32
  %.pre255.i.i = or disjoint i64 %i.aju, %i.acl
  %.pre257.i.i = trunc nuw nsw i64 %.pre255.i.i to i32
  %.pre258.i.i = shl nuw nsw i32 %.pre257.i.i, 1
  br label %bb.fe

bb.ew:                                            ; preds = %bb.ev, %.thread.i.i
  %.0180223.i.i = phi i32 [ %i.ald, %.thread.i.i ], [ %i.alq, %bb.ev ] ; 2 uses
  %.0186221.i.i = phi float [ %i.akb, %.thread.i.i ], [ %i.alh, %bb.ev ] ; 2 uses
  %i.alu = or disjoint i64 %i.aju, %i.acl
  %.tr.i210.i.i = trunc nuw nsw i64 %i.alu to i32
  %i.alv = shl nuw nsw i32 %.tr.i210.i.i, 1       ; 2 uses
  %i.alw = shl nuw i32 3, %i.alv
  %i.alx = and i32 %i.alw, %i.zm
  %i.aly = icmp eq i32 %i.alx, 0
  br i1 %i.aly, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.alz = or disjoint i64 %i.aju, %i.acn
  %.tr.i211.i.i = trunc nuw nsw i64 %i.alz to i32
  %i.ama = shl nuw nsw i32 %.tr.i211.i.i, 1
  %i.amb = shl nuw i32 3, %i.ama
  %i.amc = and i32 %i.amb, %i.zm
  %i.amd = icmp eq i32 %i.amc, 0
  br i1 %i.amd, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.ame = fadd reassoc nsz arcp contract afn float %i.ako, %i.akm
  %i.amf = fmul reassoc nsz arcp contract afn float %i.ame, 5.000000e-01
  %i.amg = fcmp reassoc nsz arcp contract afn ogt float %i.akm, %20
  br label %bb.fc

bb.ez:                                            ; preds = %bb.ex, %bb.ew
  %i.amh = and i64 %i.akj, 1
  %i.ami = or disjoint i64 %i.amh, %i.abz
  %.tr.i212.i.i = trunc nuw nsw i64 %i.ami to i32
  %i.amj = shl nuw nsw i32 %.tr.i212.i.i, 1
  %i.amk = shl nuw i32 3, %i.amj
  %i.aml = and i32 %i.amk, %i.zm
  %i.amm = icmp eq i32 %i.aml, 0
  br i1 %i.amm, label %bb.fa, label %._crit_edge249.i.i

bb.fa:                                            ; preds = %bb.ez
  %i.amn = and i64 %i.akk, 1
  %i.amo = or disjoint i64 %i.amn, %i.abz
  %.tr.i213.i.i = trunc nuw nsw i64 %i.amo to i32
  %i.amp = shl nuw nsw i32 %.tr.i213.i.i, 1
  %i.amq = shl nuw i32 3, %i.amp
  %i.amr = and i32 %i.amq, %i.zm
  %i.ams = icmp eq i32 %i.amr, 0
  br i1 %i.ams, label %bb.fb, label %._crit_edge249.i.i

bb.fb:                                            ; preds = %bb.fa
  %i.amt = fadd reassoc nsz arcp contract afn float %i.aks, %i.akq
  %i.amu = fmul reassoc nsz arcp contract afn float %i.amt, 5.000000e-01
  %i.amv = fcmp reassoc nsz arcp contract afn ogt float %i.akq, %19
  br label %bb.fc

._crit_edge249.i.i:                               ; preds = %bb.ez, %bb.fa
  %i.amw = fadd reassoc nsz arcp contract afn float %i.akw, %i.aku
  %i.amx = fadd reassoc nsz arcp contract afn float %i.amw, %i.aky
  %i.amy = fadd reassoc nsz arcp contract afn float %i.amx, %i.ala
  %i.amz = fmul reassoc nsz arcp contract afn float %i.amy, 2.500000e-01
  %i.ana = fcmp reassoc nsz arcp contract afn ogt float %i.akw, %18
  %i.anb = fcmp reassoc nsz arcp contract afn ogt float %i.aku, %18
  %or.cond206.i.i = select i1 %i.ana, i1 true, i1 %i.anb
  %i.anc = fcmp reassoc nsz arcp contract afn ogt float %i.ala, %18
  %or.cond207.i.i = select i1 %or.cond206.i.i, i1 true, i1 %i.anc
  br label %bb.fc

bb.fc:                                            ; preds = %._crit_edge249.i.i, %bb.fb, %bb.ey
  %.sink509 = phi float [ %i.aky, %._crit_edge249.i.i ], [ %i.aks, %bb.fb ], [ %i.ako, %bb.ey ]
  %or.cond207.i.i.sink = phi i1 [ %or.cond207.i.i, %._crit_edge249.i.i ], [ %i.amv, %bb.fb ], [ %i.amg, %bb.ey ]
  %.0188.i.i = phi nsz float [ %i.amz, %._crit_edge249.i.i ], [ %i.amu, %bb.fb ], [ %i.amf, %bb.ey ] ; 2 uses
  %i.and = fcmp reassoc nsz arcp contract afn ogt float %.sink509, %21
  %narrow233.i.i = select i1 %or.cond207.i.i.sink, i1 true, i1 %i.and
  %.0182.i.i = zext i1 %narrow233.i.i to i32      ; 2 uses
  %i.ane = icmp eq i32 %i.ajy, 2
  br i1 %i.ane, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.anf = fcmp reassoc nsz arcp contract afn ogt float %i.akb, %8
  %i.ang = zext i1 %i.anf to i32
  br label %bb.fk

bb.fe:                                            ; preds = %bb.fc, %.thread224.i.i
  %.pre-phi259.i.i = phi i32 [ %.pre258.i.i, %.thread224.i.i ], [ %i.alv, %bb.fc ]
  %.0182232.i.i = phi i32 [ %i.alt, %.thread224.i.i ], [ %.0182.i.i, %bb.fc ] ; 3 uses
  %.0188231.i.i = phi float [ %i.akb, %.thread224.i.i ], [ %.0188.i.i, %bb.fc ] ; 3 uses
  %.0186220230.i.i = phi float [ %i.alh, %.thread224.i.i ], [ %.0186221.i.i, %bb.fc ] ; 3 uses
  %.0180222229.i.i = phi i32 [ %i.alq, %.thread224.i.i ], [ %.0180223.i.i, %bb.fc ] ; 3 uses
  %i.anh = lshr i32 %i.zm, %.pre-phi259.i.i
  %i.ani = and i32 %i.anh, 3
  %i.anj = icmp eq i32 %i.ani, 2
  br i1 %i.anj, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.ank = or disjoint i64 %i.aju, %i.acn
  %.tr.i215.i.i = trunc nuw nsw i64 %i.ank to i32
  %i.anl = shl nuw nsw i32 %.tr.i215.i.i, 1
  %i.anm = lshr i32 %i.zm, %i.anl
  %i.ann = and i32 %i.anm, 3
  %i.ano = icmp eq i32 %i.ann, 2
  br i1 %i.ano, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.anp = fadd reassoc nsz arcp contract afn float %i.ako, %i.akm
  %i.anq = fmul reassoc nsz arcp contract afn float %i.anp, 5.000000e-01
  %i.anr = fcmp reassoc nsz arcp contract afn ogt float %i.akm, %8
  %i.ans = fcmp reassoc nsz arcp contract afn ogt float %i.ako, %8
  %narrow238.i.i = select i1 %i.anr, i1 true, i1 %i.ans
  %i.ant = zext i1 %narrow238.i.i to i32
  br label %bb.fk

bb.fh:                                            ; preds = %bb.ff, %bb.fe
  %i.anu = and i64 %i.akj, 1
  %i.anv = or disjoint i64 %i.anu, %i.abz
  %.tr.i216.i.i = trunc nuw nsw i64 %i.anv to i32
  %i.anw = shl nuw nsw i32 %.tr.i216.i.i, 1
  %i.anx = lshr i32 %i.zm, %i.anw
  %i.any = and i32 %i.anx, 3
  %i.anz = icmp eq i32 %i.any, 2
  br i1 %i.anz, label %bb.fi, label %._crit_edge251.i.i

bb.fi:                                            ; preds = %bb.fh
  %i.aoa = and i64 %i.akk, 1
  %i.aob = or disjoint i64 %i.aoa, %i.abz
  %.tr.i217.i.i = trunc nuw nsw i64 %i.aob to i32
  %i.aoc = shl nuw nsw i32 %.tr.i217.i.i, 1
  %i.aod = lshr i32 %i.zm, %i.aoc
  %i.aoe = and i32 %i.aod, 3
  %i.aof = icmp eq i32 %i.aoe, 2
  br i1 %i.aof, label %bb.fj, label %._crit_edge251.i.i

bb.fj:                                            ; preds = %bb.fi
  %i.aog = fadd reassoc nsz arcp contract afn float %i.aks, %i.akq
  %i.aoh = fmul reassoc nsz arcp contract afn float %i.aog, 5.000000e-01
  %i.aoi = fcmp reassoc nsz arcp contract afn ogt float %i.akq, %8
  %i.aoj = fcmp reassoc nsz arcp contract afn ogt float %i.aks, %8
  %narrow237.i.i = select i1 %i.aoi, i1 true, i1 %i.aoj
  %i.aok = zext i1 %narrow237.i.i to i32
  br label %bb.fk

._crit_edge251.i.i:                               ; preds = %bb.fh, %bb.fi
  %i.aol = fadd reassoc nsz arcp contract afn float %i.akw, %i.aku
  %i.aom = fadd reassoc nsz arcp contract afn float %i.aol, %i.aky
  %i.aon = fadd reassoc nsz arcp contract afn float %i.aom, %i.ala
  %i.aoo = fmul reassoc nsz arcp contract afn float %i.aon, 2.500000e-01
  %22 = fcmp reassoc nsz arcp contract afn ogt float %i.akw, %8
  %23 = fcmp reassoc nsz arcp contract afn ogt float %i.aku, %8
  %or.cond208.i.i = select i1 %22, i1 true, i1 %23
  %24 = fcmp reassoc nsz arcp contract afn ogt float %i.ala, %8
  %or.cond209.i.i = select i1 %or.cond208.i.i, i1 true, i1 %24
  %25 = fcmp reassoc nsz arcp contract afn ogt float %i.aky, %8
  %narrow236.i.i = select i1 %or.cond209.i.i, i1 true, i1 %25
  %i.aop = zext i1 %narrow236.i.i to i32
  br label %bb.fk

bb.fk:                                            ; preds = %._crit_edge251.i.i, %bb.fj, %bb.fg, %bb.fd, %bb.et
  %.pre-phi.i.i = phi i64 [ %i.akk, %bb.fd ], [ %i.akk, %bb.fj ], [ %i.akk, %._crit_edge251.i.i ], [ %i.akk, %bb.fg ], [ %.pre254.i.i, %bb.et ] ; 2 uses
  %.1189.i.i = phi nsz float [ %.0188.i.i, %bb.fd ], [ %.0188231.i.i, %bb.fj ], [ %.0188231.i.i, %._crit_edge251.i.i ], [ %.0188231.i.i, %bb.fg ], [ %i.akb, %bb.et ] ; 3 uses
  %.1187.i.i = phi nsz float [ %.0186221.i.i, %bb.fd ], [ %.0186220230.i.i, %bb.fj ], [ %.0186220230.i.i, %._crit_edge251.i.i ], [ %.0186220230.i.i, %bb.fg ], [ %i.akb, %bb.et ] ; 3 uses
  %.1185.i.i = phi nsz float [ %i.akb, %bb.fd ], [ %i.aoh, %bb.fj ], [ %i.aoo, %._crit_edge251.i.i ], [ %i.anq, %bb.fg ], [ %i.akb, %bb.et ] ; 3 uses
  %.1183.i.i = phi i32 [ %.0182.i.i, %bb.fd ], [ %.0182232.i.i, %bb.fj ], [ %.0182232.i.i, %._crit_edge251.i.i ], [ %.0182232.i.i, %bb.fg ], [ %i.aki, %bb.et ] ; 2 uses
  %.1181.i.i = phi i32 [ %.0180223.i.i, %bb.fd ], [ %.0180222229.i.i, %bb.fj ], [ %.0180222229.i.i, %._crit_edge251.i.i ], [ %.0180222229.i.i, %bb.fg ], [ %i.aki, %bb.et ] ; 2 uses
  %.1.i.i = phi i32 [ %i.ang, %bb.fd ], [ %i.aok, %bb.fj ], [ %i.aop, %._crit_edge251.i.i ], [ %i.ant, %bb.fg ], [ %i.aki, %bb.et ] ; 2 uses
  %i.aoq = fmul reassoc nsz arcp contract afn float %.1189.i.i, %.1189.i.i
  %i.aor = fmul reassoc nsz arcp contract afn float %.1187.i.i, %.1187.i.i
  %i.aos = fadd reassoc nsz arcp contract afn float %i.aor, %i.aoq
  %i.aot = fmul reassoc nsz arcp contract afn float %.1185.i.i, %.1185.i.i
  %i.aou = fadd reassoc nsz arcp contract afn float %i.aos, %i.aot
  %i.aov = uitofp nneg i32 %.1183.i.i to float
  %i.aow = uitofp nneg i32 %.1181.i.i to float
  %i.aox = uitofp nneg i32 %.1.i.i to float
  %i.aoy = icmp ne i32 %.1183.i.i, 0
  %i.aoz = icmp ne i32 %.1181.i.i, 0
  %or.cond3.i.i = select i1 %i.aoy, i1 true, i1 %i.aoz
  %.not.i.i359 = icmp ne i32 %.1.i.i, 0
  %i.apa = select i1 %or.cond3.i.i, i1 true, i1 %.not.i.i359
  %i.apb = select i1 %i.apa, float 1.000000e+00, float 0.000000e+00
  store float %i.aov, ptr %scevgep.i.i, align 4, !tbaa !12, !alias.scope !427, !noalias !431
  %.sroa.4.0.scevgep.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %scevgep.i.i, i64 4
  store float %i.aow, ptr %.sroa.4.0.scevgep.sroa_idx.i.i, align 4, !tbaa !12, !alias.scope !427, !noalias !431
  %.sroa.5.0.scevgep.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %scevgep.i.i, i64 8
  store float %i.aox, ptr %.sroa.5.0.scevgep.sroa_idx.i.i, align 4, !tbaa !12, !alias.scope !427, !noalias !431
  %.sroa.6.0.scevgep.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %scevgep.i.i, i64 12
  store float %i.apb, ptr %.sroa.6.0.scevgep.sroa_idx.i.i, align 4, !tbaa !12, !alias.scope !427, !noalias !431
  %.idx.i = shl i64 %i.ajz, 4
  %i.apc = getelementptr inbounds nuw i8, ptr %i.abl, i64 %.idx.i
  %i.apd = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aou)
  %i.ape = insertelement <4 x float> poison, float %.1189.i.i, i64 0
  %i.apf = insertelement <4 x float> %i.ape, float %.1187.i.i, i64 1
  %i.apg = insertelement <4 x float> %i.apf, float %.1185.i.i, i64 2
  %i.aph = insertelement <4 x float> %i.apg, float %i.apd, i64 3
  %i.api = fmul reassoc nsz arcp contract afn <4 x float> %i.aph, %i.abw
  %i.apj = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.api, <4 x float> zeroinitializer)
  store <4 x float> %i.apj, ptr %i.apc, align 4, !tbaa !12, !alias.scope !426, !noalias !432
  %exitcond.not.i.i = icmp eq i64 %.pre-phi.i.i, %i.aab
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !408

_interpolate_and_mask.exit.i:                     ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i, %bb.es
  call void @dt_box_mean(ptr noundef %i.abm, i64 noundef %i.aaa, i64 noundef %i.aab, i32 noundef 4, i64 noundef 2, i32 noundef 1) #33, !noalias !423
  %i.apk = load ptr, ptr %i.c, align 8, !tbaa !139, !noalias !423
  %i.apl = load ptr, ptr %i.i, align 8, !tbaa !139, !noalias !423
  call fastcc void @interpolate_bilinear(ptr noundef %i.apk, i64 noundef %i.aab, i64 noundef %i.aaa, ptr noundef %i.apl, i64 noundef %i.aad, i64 noundef %i.aac)
  %i.apm = load ptr, ptr %i.b, align 8, !tbaa !139, !noalias !423
  %i.apn = load ptr, ptr %i.h, align 8, !tbaa !139, !noalias !423
  call fastcc void @interpolate_bilinear(ptr noundef %i.apm, i64 noundef %i.aab, i64 noundef %i.aaa, ptr noundef %i.apn, i64 noundef %i.aad, i64 noundef %i.aac)
  %i.apo = getelementptr inbounds nuw i8, ptr %i.zl, i64 24 ; 2 uses
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !433, !noalias !423 ; 2 uses
  %i.apq = icmp sgt i32 %i.app, 0
  br i1 %i.apq, label %.lr.ph.i358, label %._crit_edge.i356

.lr.ph.i358:                                      ; preds = %_interpolate_and_mask.exit.i
  %i.apr = getelementptr inbounds nuw i8, ptr %i.zl, i64 44 ; 2 uses
  br label %bb.fl

._crit_edge.i356:                                 ; preds = %bb.fl, %_interpolate_and_mask.exit.i
  %i.aps = load ptr, ptr %i.h, align 8, !tbaa !139, !noalias !423
  %i.apt = load ptr, ptr %i.b, align 8, !tbaa !139, !noalias !423
  call fastcc void @interpolate_bilinear(ptr noundef %i.aps, i64 noundef %i.aad, i64 noundef %i.aac, ptr noundef %i.apt, i64 noundef %i.aab, i64 noundef %i.aaa)
  %i.apu = load ptr, ptr %i.b, align 8, !tbaa !139, !noalias !423 ; 4 uses
  %i.apv = load ptr, ptr %i.c, align 8, !tbaa !139, !noalias !423 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.apw = icmp ne i32 %i.zy, 0
  %or.cond.i86.i = and i1 %.not243.i.i, %i.apw
  br i1 %or.cond.i86.i, label %.preheader.i87.i.preheader, label %_remosaic_and_replace.exit.i

.preheader.i87.i.preheader:                       ; preds = %._crit_edge.i356
  %min.iters.check573 = icmp ult i32 %i.zy, 9
  %i.apx = and i64 %i.aab, 7
  %i.apy = and i32 %i.zy, 7
  %i.apz = icmp eq i32 %i.apy, 0
  %i.aqa = select i1 %i.apz, i64 8, i64 %i.apx
  %n.vec575 = sub nsw i64 %i.aab, %i.aqa          ; 2 uses
  %broadcast.splatinsert580 = insertelement <8 x i32> poison, i32 %i.zm, i64 0
  %broadcast.splat581 = shufflevector <8 x i32> %broadcast.splatinsert580, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.preheader.i87.i

.preheader.i87.i:                                 ; preds = %.preheader.i87.i.preheader, %._crit_edge.i90.i
  %.02933.i.i = phi i64 [ %i.ard, %._crit_edge.i90.i ], [ 0, %.preheader.i87.i.preheader ] ; 3 uses
  %i.aqb = shl i64 %.02933.i.i, 1
  %i.aqc = and i64 %i.aqb, 14                     ; 2 uses
  %i.aqd = mul i64 %.02933.i.i, %i.aab            ; 2 uses
  br i1 %min.iters.check573, label %scalar.ph572.preheader, label %vector.ph574

scalar.ph572.preheader:                           ; preds = %vector.body582, %.preheader.i87.i
  %.032.i.i.ph = phi i64 [ 0, %.preheader.i87.i ], [ %n.vec575, %vector.body582 ]
  br label %scalar.ph572

vector.ph574:                                     ; preds = %.preheader.i87.i
  %broadcast.splatinsert576 = insertelement <8 x i64> poison, i64 %i.aqc, i64 0
  %broadcast.splat577 = shufflevector <8 x i64> %broadcast.splatinsert576, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert578 = insertelement <8 x i64> poison, i64 %i.aqd, i64 0
  %broadcast.splat579 = shufflevector <8 x i64> %broadcast.splatinsert578, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body582

vector.body582:                                   ; preds = %vector.body582, %vector.ph574
  %index583 = phi i64 [ 0, %vector.ph574 ], [ %index.next591, %vector.body582 ]
  %vec.ind584 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph574 ], [ %vec.ind.next592, %vector.body582 ] ; 3 uses
  %i.aqe = and <8 x i64> %vec.ind584, splat (i64 1)
  %i.aqf = or disjoint <8 x i64> %i.aqe, %broadcast.splat577
  %i.aqg = trunc nuw nsw <8 x i64> %i.aqf to <8 x i32>
  %i.aqh = shl nuw nsw <8 x i32> %i.aqg, splat (i32 1)
  %i.aqi = lshr <8 x i32> %broadcast.splat581, %i.aqh
  %i.aqj = and <8 x i32> %i.aqi, splat (i32 3)
  %i.aqk = zext nneg <8 x i32> %i.aqj to <8 x i64> ; 2 uses
  %i.aql = add <8 x i64> %vec.ind584, %broadcast.splat579 ; 2 uses
  %i.aqm = extractelement <8 x i64> %i.aql, i64 0 ; 2 uses
  %i.aqn = shl <8 x i64> %i.aql, splat (i64 2)    ; 2 uses
  %i.aqo = extractelement <8 x i64> %i.aqn, i64 0
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %i.aqo
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 12
  %wide.vec = load <32 x float>, ptr %i.aqq, align 4, !tbaa !12, !alias.scope !436, !noalias !438
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %i.aqr = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec, zeroinitializer
  %i.aqs = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec, splat (float 1.000000e+00)
  %i.aqt = select reassoc nsz arcp contract afn <8 x i1> %i.aqs, <8 x float> %strided.vec, <8 x float> splat (float 1.000000e+00)
  %i.aqu = select reassoc nsz arcp contract afn <8 x i1> %i.aqr, <8 x float> zeroinitializer, <8 x float> %i.aqt
  %wide.gep585 = getelementptr inbounds nuw [4 x i8], ptr %i.apu, <8 x i64> %i.aqn
  %wide.gep586 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep585, <8 x i64> %i.aqk
  %wide.masked.gather587 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep586, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !435, !noalias !439
  %wide.gep588 = getelementptr inbounds nuw [4 x i8], ptr %i.a, <8 x i64> %i.aqk
  %wide.masked.gather589 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep588, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !440
  %i.aqv = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather589, %wide.masked.gather587
  %i.aqw = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aqv, <8 x float> zeroinitializer)
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aqm
  %wide.load590 = load <8 x float>, ptr %i.aqx, align 4, !tbaa !12, !alias.scope !441, !noalias !442 ; 2 uses
  %i.aqy = fsub reassoc nsz arcp contract afn <8 x float> %i.aqw, %wide.load590
  %i.aqz = fmul reassoc nsz arcp contract afn <8 x float> %i.aqy, %i.aqu
  %i.ara = fadd reassoc nsz arcp contract afn <8 x float> %i.aqz, %wide.load590
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aqm
  store <8 x float> %i.ara, ptr %i.arb, align 4, !tbaa !12, !alias.scope !443, !noalias !444
  %index.next591 = add nuw i64 %index583, 8       ; 2 uses
  %vec.ind.next592 = add nuw <8 x i64> %vec.ind584, splat (i64 8)
  %i.arc = icmp eq i64 %index.next591, %n.vec575
  br i1 %i.arc, label %scalar.ph572.preheader, label %vector.body582, !llvm.loop !414

._crit_edge.i90.i:                                ; preds = %scalar.ph572
  %i.ard = add nuw i64 %.02933.i.i, 1             ; 2 uses
  %exitcond35.not.i.i = icmp eq i64 %i.ard, %i.aaa
  br i1 %exitcond35.not.i.i, label %_remosaic_and_replace.exit.i, label %.preheader.i87.i

scalar.ph572:                                     ; preds = %scalar.ph572.preheader, %scalar.ph572
  %.032.i.i = phi i64 [ %i.ase, %scalar.ph572 ], [ %.032.i.i.ph, %scalar.ph572.preheader ] ; 3 uses
  %i.are = and i64 %.032.i.i, 1
  %i.arf = or disjoint i64 %i.are, %i.aqc
  %.tr.i.i88.i = trunc nuw nsw i64 %i.arf to i32
  %i.arg = shl nuw nsw i32 %.tr.i.i88.i, 1
  %i.arh = lshr i32 %i.zm, %i.arg
  %i.ari = and i32 %i.arh, 3
  %i.arj = zext nneg i32 %i.ari to i64            ; 2 uses
  %i.ark = add i64 %.032.i.i, %i.aqd              ; 3 uses
  %i.arl = shl i64 %i.ark, 2                      ; 2 uses
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %i.arl
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 12
  %i.aro = load float, ptr %i.arn, align 4, !tbaa !12, !alias.scope !436, !noalias !438 ; 3 uses
  %i.arp = fcmp reassoc nsz arcp contract afn ult float %i.aro, 0.000000e+00
  %.inv.i.i = fcmp reassoc nsz arcp contract afn ole float %i.aro, 1.000000e+00
  %spec.select.i.i = select reassoc nsz arcp contract afn i1 %.inv.i.i, float %i.aro, float 1.000000e+00
  %i.arq = select reassoc nsz arcp contract afn i1 %i.arp, float 0.000000e+00, float %spec.select.i.i
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr %i.apu, i64 %i.arl
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.arj
  %i.art = load float, ptr %i.ars, align 4, !tbaa !12, !alias.scope !435, !noalias !439
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.arj
  %i.arv = load float, ptr %i.aru, align 4, !tbaa !12, !noalias !440
  %i.arw = fmul reassoc nsz arcp contract afn float %i.arv, %i.art
  %i.arx = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.arw, float 0.000000e+00)
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ark
  %i.arz = load float, ptr %i.ary, align 4, !tbaa !12, !alias.scope !441, !noalias !442 ; 2 uses
  %i.asa = fsub reassoc nsz arcp contract afn float %i.arx, %i.arz
  %i.asb = fmul reassoc nsz arcp contract afn float %i.asa, %i.arq
  %i.asc = fadd reassoc nsz arcp contract afn float %i.asb, %i.arz
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ark
  store float %i.asc, ptr %i.asd, align 4, !tbaa !12, !alias.scope !443, !noalias !444
  %i.ase = add nuw i64 %.032.i.i, 1               ; 2 uses
  %exitcond.not.i89.i = icmp eq i64 %i.ase, %i.aab
  br i1 %exitcond.not.i89.i, label %._crit_edge.i90.i, label %scalar.ph572, !llvm.loop !415

_remosaic_and_replace.exit.i:                     ; preds = %._crit_edge.i90.i, %._crit_edge.i356
  %i.asf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !141, !noalias !423
  %.not85.i = icmp eq ptr %i.asf, null
  br i1 %.not85.i, label %bb.fn, label %bb.fm

bb.fl:                                            ; preds = %bb.fl, %.lr.ph.i358
  %i.asg = phi i32 [ %i.app, %.lr.ph.i358 ], [ %i.asz, %bb.fl ]
  %.091.i = phi i32 [ 0, %.lr.ph.i358 ], [ %i.asy, %bb.fl ] ; 2 uses
  %i.ash = add nsw i32 %i.asg, -1
  %i.asi = icmp eq i32 %.091.i, %i.ash
  %i.asj = zext i1 %i.asi to i32                  ; 2 uses
  %i.ask = load ptr, ptr %i.h, align 8, !tbaa !139, !noalias !423
  %i.asl = load ptr, ptr %i.f, align 8, !tbaa !139, !noalias !423
  %i.asm = load ptr, ptr %i.i, align 8, !tbaa !139, !noalias !423
end_hunk_1
