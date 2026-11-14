Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/circle?download=true
inline.NumInlined: 75
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_circle_modify_property:bb.a

; Function Attrs: nounwind uwtable
define internal void @_circle_duplicate_points(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %.010 = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %.not11 = icmp eq ptr %.010, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !15
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.a = phi ptr [ %i.d, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.012 = phi ptr [ %.0, %.lr.ph ], [ %.010, %.lr.ph.preheader ] ; 2 uses
  %i.b = load ptr, ptr %.012, align 8, !tbaa !17
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.d = tail call ptr @g_list_append(ptr noundef %i.a, ptr noundef nonnull %i.c) #14 ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %.0 = load ptr, ptr %i.e, align 8, !tbaa !25    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind uwtable
define internal void @_circle_initial_source_pos(float noundef %0, float noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) #0 {
bb.a:
  %i.a = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str) #14
  %i.b = fcmp reassoc nsz arcp contract afn ogt float %i.a, 5.000000e-01
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi reassoc nsz arcp contract afn float [ %i.c, %bb.b ], [ 5.000000e-01, %bb.a ] ; 2 uses
  %i.e = fmul reassoc nsz arcp contract afn float %i.d, %0
  store float %i.e, ptr %2, align 4, !tbaa !22
  %i.f = fneg reassoc nsz arcp contract afn float %1
  %i.g = fmul reassoc nsz arcp contract afn float %i.d, %i.f
  store float %i.g, ptr %3, align 4, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_circle_get_distance(float noundef %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7, ptr noundef initializes((0, 4)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %9, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %10) #0 {
bb.a:
  store i32 0, ptr %9, align 4, !tbaa !24
  store i32 0, ptr %6, align 4, !tbaa !24
  store i32 0, ptr %7, align 4, !tbaa !24
  store i32 -1, ptr %8, align 4, !tbaa !24
  store float f0x7F7FFFFF, ptr %10, align 4, !tbaa !22
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !30
  %i.b = tail call ptr @g_list_nth_data(ptr noundef %i.a, i32 noundef %4) #14 ; 6 uses
  %.not57 = icmp eq ptr %i.b, null
  br i1 %.not57, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34
  %i.g = tail call i32 @dt_masks_point_in_form_exact(float noundef %0, float noundef %1, ptr noundef %i.d, i32 noundef 1, i32 noundef %i.f) #14
  %.not58 = icmp eq i32 %i.g, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %9, align 4, !tbaa !24
  store i32 1, ptr %6, align 4, !tbaa !24
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !22
  %i.j = fsub reassoc nsz arcp contract afn float %0, %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !22
  %i.m = fsub reassoc nsz arcp contract afn float %1, %i.l ; 2 uses
  %i.n = fmul reassoc nsz arcp contract afn float %i.j, %i.j
  %i.o = fmul reassoc nsz arcp contract afn float %i.m, %i.m
  %i.p = fadd reassoc nsz arcp contract afn float %i.o, %i.n
  store float %i.p, ptr %10, align 4, !tbaa !22
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !35   ; 4 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !22
  %i.s = fsub reassoc nsz arcp contract afn float %0, %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !22
  %i.v = fsub reassoc nsz arcp contract afn float %1, %i.u ; 2 uses
  %i.w = fmul reassoc nsz arcp contract afn float %i.s, %i.s
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, %i.v
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, %i.w ; 2 uses
  store float %i.y, ptr %10, align 4, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !22
  %i.ab = fsub reassoc nsz arcp contract afn float %0, %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !22
  %i.ae = fsub reassoc nsz arcp contract afn float %1, %i.ad ; 2 uses
  %i.af = fmul reassoc nsz arcp contract afn float %i.ab, %i.ab
  %i.ag = fmul reassoc nsz arcp contract afn float %i.ae, %i.ae
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, %i.af
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.y, float %i.ah) ; 2 uses
  store float %i.ai, ptr %10, align 4, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !22
  %i.an = fsub reassoc nsz arcp contract afn float %0, %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !22
  %i.aq = fsub reassoc nsz arcp contract afn float %1, %i.ap ; 2 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.an, %i.an
  %i.as = fmul reassoc nsz arcp contract afn float %i.aq, %i.aq
  %i.at = fadd reassoc nsz arcp contract afn float %i.as, %i.ar
  %i.au = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ai, float %i.at)
  store float %i.au, ptr %10, align 4, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !37
  %i.ax = tail call i32 @dt_masks_point_in_form_near(float noundef %0, float noundef %1, ptr noundef %i.ak, i32 noundef 1, i32 noundef %i.aw, float noundef %2, ptr noundef nonnull %8) #14
  %.not59 = icmp eq i32 %i.ax, 0
  br i1 %.not59, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = load i32, ptr %8, align 4, !tbaa !24
  %.not60 = icmp eq i32 %i.ay, -1
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  store i32 1, ptr %7, align 4, !tbaa !24
  store i32 1, ptr %6, align 4, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.b, %bb.f, %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_circle_get_points(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float %4, float %5, ptr nofree noundef captures(none) %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7) #0 {
dt_masks_get_image_size.exit:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !108
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.e = load <2 x i32>, ptr %i.d, align 16, !tbaa !24
  %i.f = sitofp reassoc nsz arcp contract afn <2 x i32> %i.e to <2 x float> ; 2 uses
  %i.g = extractelement <2 x float> %i.f, i64 0   ; 3 uses
  %i.h = extractelement <2 x float> %i.f, i64 1   ; 3 uses
  %i.i = fcmp reassoc nsz arcp contract afn olt float %i.g, %i.h
  %i.j = select reassoc nsz arcp contract afn i1 %i.i, float %i.g, float %i.h
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, %3 ; 4 uses
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, f0x40C90FDB
  %i.m = fptoui float %i.l to i64
  %i.n = tail call i64 @llvm.umax.i64(i64 %i.m, i64 10) ; 5 uses
  %i.o = add i64 %i.n, 1                          ; 4 uses
  %i.p = shl i64 %i.o, 3
  %i.q = tail call ptr @dt_alloc_aligned(i64 noundef %i.p) #14 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.q, i64 64) ]
  %.not.i14 = icmp eq ptr %i.q, null
  br i1 %.not.i14, label %_points_to_transform.exit, label %bb.a

bb.a:                                             ; preds = %dt_masks_get_image_size.exit
  %i.r = trunc i64 %i.o to i32
  store i32 %i.r, ptr %7, align 4, !tbaa !24
  %i.s = fmul reassoc nsz arcp contract afn float %1, %i.g ; 3 uses
  %i.t = fmul reassoc nsz arcp contract afn float %2, %i.h ; 3 uses
  store float %i.s, ptr %i.q, align 64, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store float %i.t, ptr %i.u, align 4, !tbaa !22
  %i.v = icmp ugt i64 %i.o, 1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.w = uitofp reassoc nsz arcp contract afn i64 %i.n to float ; 2 uses
  %n.vec = and i64 %i.n, -8                       ; 3 uses
  %i.x = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.w, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <8 x float> poison, float %i.k, i64 0
  %broadcast.splat18 = shufflevector <8 x float> %broadcast.splatinsert17, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert19 = insertelement <8 x float> poison, float %i.s, i64 0
  %broadcast.splatinsert21 = insertelement <8 x float> poison, float %i.t, i64 0
  %i.y = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.z = shufflevector <8 x float> %broadcast.splatinsert19, <8 x float> %broadcast.splatinsert21, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i
  %index = phi i64 [ 0, %.lr.ph.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %.lr.ph.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.aa = add <8 x i32> %vec.ind, splat (i32 -1)
  %i.ab = sitofp reassoc nsz arcp contract afn <8 x i32> %i.aa to <8 x float>
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.ab, splat (float f0x40C90FDB)
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %i.ac, %i.y
  %i.ae = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.ad) ; 2 uses
  %i.af = extractvalue { <8 x float>, <8 x float> } %i.ae, 0
  %i.ag = extractvalue { <8 x float>, <8 x float> } %i.ae, 1
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %i.ag, %broadcast.splat18
  %i.ai = shl i64 %index, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = fmul reassoc nsz arcp contract afn <8 x float> %i.af, %broadcast.splat18
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.al, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = fadd reassoc nsz arcp contract afn <16 x float> %i.am, %i.z
  store <16 x float> %interleaved.vec, ptr %i.ak, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block
  %i.ao = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.w
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %i.x, %scalar.ph.preheader ] ; 4 uses
  %i.ap = trunc i64 %indvars.iv.i to i32
  %i.aq = add i32 %i.ap, -1
  %i.ar = sitofp reassoc nsz arcp contract afn i32 %i.aq to float
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, f0x40C90FDB
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, %i.ao
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.at) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.au = fmul reassoc nsz arcp contract afn float %cos.i, %i.k
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.s
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i ; 2 uses
  store float %i.av, ptr %i.aw, align 8, !tbaa !22
  %i.ax = fmul reassoc nsz arcp contract afn float %sin.i, %i.k
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store float %i.ay, ptr %i.az, align 4, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.n
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !170

_points_to_transform.exit:                        ; preds = %dt_masks_get_image_size.exit
  store i32 0, ptr %7, align 4, !tbaa !24
  store ptr null, ptr %6, align 8, !tbaa !111
  br label %bb.c

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.a
  store ptr %i.q, ptr %6, align 8, !tbaa !111
  %sext = shl i64 %i.o, 32
  %i.ba = ashr exact i64 %sext, 32
  %i.bb = tail call i32 @dt_dev_distort_transform(ptr noundef %0, ptr noundef nonnull %i.q, i64 noundef %i.ba) #14
  %.not13 = icmp eq i32 %i.bb, 0
  br i1 %.not13, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.bc = load ptr, ptr %6, align 8, !tbaa !111
  tail call void @free(ptr noundef %i.bc) #14
  store ptr null, ptr %6, align 8, !tbaa !111
  store i32 0, ptr %7, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %_points_to_transform.exit, %.loopexit, %bb.b
  %.0 = phi i32 [ 0, %_points_to_transform.exit ], [ 0, %bb.b ], [ 1, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_circle_get_points_border(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) #0 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = load <2 x float>, ptr %i.c, align 4, !tbaa !22 ; 3 uses
  %.not = icmp eq i32 %6, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !20 ; 3 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !108
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.l = load <2 x float>, ptr %i.g, align 8, !tbaa !22
  %i.m = load <2 x i32>, ptr %i.k, align 16, !tbaa !24
  %i.n = sitofp reassoc nsz arcp contract afn <2 x i32> %i.m to <2 x float> ; 4 uses
  %i.o = extractelement <2 x float> %i.n, i64 0   ; 2 uses
  %i.p = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn olt float %i.o, %i.p
  %i.r = select reassoc nsz arcp contract afn i1 %i.q, float %i.o, float %i.p
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, %i.f ; 4 uses
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, f0x40C90FDB
  %i.u = fptoui float %i.t to i64
  %i.v = tail call i64 @llvm.umax.i64(i64 %i.u, i64 10) ; 5 uses
  %i.w = add i64 %i.v, 1                          ; 4 uses
  %i.x = shl i64 %i.w, 3
  %i.y = tail call ptr @dt_alloc_aligned(i64 noundef %i.x) #14 ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.y, i64 64) ]
  %.not.i47.i = icmp eq ptr %i.y, null
  br i1 %.not.i47.i, label %_points_to_transform.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = trunc i64 %i.w to i32
  store i32 %i.z, ptr %3, align 4, !tbaa !24
  %i.aa = fmul reassoc nsz arcp contract afn <2 x float> %i.d, %i.n ; 5 uses
  store <2 x float> %i.aa, ptr %i.y, align 64, !tbaa !22
  %i.ab = icmp ugt i64 %i.w, 1
  br i1 %i.ab, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.ac = uitofp reassoc nsz arcp contract afn i64 %i.v to float ; 2 uses
  %n.vec = and i64 %i.v, -8                       ; 3 uses
  %i.ad = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert42 = insertelement <8 x float> poison, float %i.s, i64 0
  %broadcast.splat43 = shufflevector <8 x float> %broadcast.splatinsert42, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat45 = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat47 = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ae = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i.i
  %index = phi i64 [ 0, %.lr.ph.i.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %.lr.ph.i.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.af = add <8 x i32> %vec.ind, splat (i32 -1)
  %i.ag = sitofp reassoc nsz arcp contract afn <8 x i32> %i.af to <8 x float>
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %i.ag, splat (float f0x40C90FDB)
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.ah, %i.ae
  %i.aj = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.ai) ; 2 uses
  %i.ak = extractvalue { <8 x float>, <8 x float> } %i.aj, 0
  %i.al = extractvalue { <8 x float>, <8 x float> } %i.aj, 1
  %i.am = fmul reassoc nsz arcp contract afn <8 x float> %i.al, %broadcast.splat43
  %i.an = fadd reassoc nsz arcp contract afn <8 x float> %i.am, %broadcast.splat45
  %i.ao = shl i64 %index, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = fmul reassoc nsz arcp contract afn <8 x float> %i.ak, %broadcast.splat43
  %i.as = fadd reassoc nsz arcp contract afn <8 x float> %i.ar, %broadcast.splat47
  %interleaved.vec = shufflevector <8 x float> %i.an, <8 x float> %i.as, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.aq, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block
  %i.au = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ac
  %i.av = extractelement <2 x float> %i.aa, i64 0
  %i.aw = extractelement <2 x float> %i.aa, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %i.ad, %scalar.ph.preheader ] ; 4 uses
  %i.ax = trunc i64 %indvars.iv.i.i to i32
  %i.ay = add i32 %i.ax, -1
  %i.az = sitofp reassoc nsz arcp contract afn i32 %i.ay to float
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, f0x40C90FDB
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, %i.au
  %sincos.i.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bb) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  %i.bc = fmul reassoc nsz arcp contract afn float %cos.i.i, %i.s
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.av
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i ; 2 uses
  store float %i.bd, ptr %i.be, align 8, !tbaa !22
  %i.bf = fmul reassoc nsz arcp contract afn float %sin.i.i, %i.s
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bf, %i.aw
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store float %i.bg, ptr %i.bh, align 4, !tbaa !22
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.v
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %scalar.ph, !llvm.loop !172

_points_to_transform.exit.i:                      ; preds = %bb.b
  store i32 0, ptr %3, align 4, !tbaa !24
  store ptr null, ptr %2, align 8, !tbaa !111
  br label %_circle_get_points_source.exit

.loopexit.i:                                      ; preds = %scalar.ph, %middle.block, %bb.c
  store ptr %i.y, ptr %2, align 8, !tbaa !111
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 16, !tbaa !108
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 480 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 16, !tbaa !122
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.bl to double
  %sext.i = shl i64 %i.w, 32
  %i.bn = ashr exact i64 %sext.i, 32
  %i.bo = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %i.bj, double noundef %i.bm, i32 noundef 4, ptr noundef nonnull %i.y, i64 noundef %i.bn) #14
  %.not44.i = icmp eq i32 %i.bo, 0
  br i1 %.not44.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.l, %i.n
  store <2 x float> %i.bp, ptr %i.a, align 8, !tbaa !22
  %i.bq = load ptr, ptr %i.bi, align 16, !tbaa !108
  %i.br = load i32, ptr %i.bk, align 16, !tbaa !122
  %i.bs = sitofp reassoc nsz arcp contract afn i32 %i.br to double
  %i.bt = call i32 @dt_dev_distort_transform_plus(ptr noundef nonnull %0, ptr noundef %i.bq, double noundef %i.bs, i32 noundef 4, ptr noundef nonnull %i.a, i64 noundef 1) #14
  %.not45.i = icmp eq i32 %i.bt, 0
  br i1 %.not45.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bu = load ptr, ptr %2, align 8, !tbaa !111   ; 7 uses
  %i.bv = load <2 x float>, ptr %i.a, align 8, !tbaa !22
  %i.bw = load <2 x float>, ptr %i.bu, align 64, !tbaa !22
  %i.bx = fsub reassoc nsz arcp contract afn <2 x float> %i.bv, %i.bw ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bu, i64 64) ]
  %i.by = load i32, ptr %3, align 4, !tbaa !24    ; 5 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.by to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.by, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i32 %i.by, 16
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph50

vector.ph50:                                      ; preds = %vector.main.loop.iter.check
  %i.ca = and i64 %wide.trip.count.i, 12
  %n.vec51 = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  %broadcast.splat53 = shufflevector <2 x float> %i.bx, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat55 = shufflevector <2 x float> %i.bx, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body56

vector.body56:                                    ; preds = %vector.ph50, %vector.body56
  %index57 = phi i64 [ 0, %vector.ph50 ], [ %index.next64, %vector.body56 ] ; 3 uses
  %i.cb = shl nuw nsw i64 %index57, 3
  %i.cc = shl i64 %index57, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cb ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.cd, align 64, !tbaa !22 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec58 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec59 = load <16 x float>, ptr %i.cf, align 64, !tbaa !22 ; 2 uses
  %strided.vec60 = shufflevector <16 x float> %wide.vec59, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec61 = shufflevector <16 x float> %wide.vec59, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.cg = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat53, %strided.vec
  %i.ch = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat53, %strided.vec60
  %i.ci = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat55, %strided.vec58
  %i.cj = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat55, %strided.vec61
  %interleaved.vec62 = shufflevector <8 x float> %i.cg, <8 x float> %i.ci, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec62, ptr %i.cd, align 64, !tbaa !22
  %interleaved.vec63 = shufflevector <8 x float> %i.ch, <8 x float> %i.cj, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec63, ptr %i.cf, align 64, !tbaa !22
  %index.next64 = add nuw i64 %index57, 16        ; 2 uses
  %i.ck = icmp eq i64 %index.next64, %n.vec51
  br i1 %i.ck, label %middle.block65, label %vector.body56, !llvm.loop !173

middle.block65:                                   ; preds = %vector.body56
  %cmp.n66 = icmp eq i64 %n.vec51, %wide.trip.count.i
  br i1 %cmp.n66, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block65
  %min.epilog.iters.check = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !176

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec51, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec67 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splat69 = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat71 = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index72 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 2 uses
  %i.cl = shl nuw nsw i64 %index72, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cl ; 2 uses
  %wide.vec73 = load <8 x float>, ptr %i.cm, align 32, !tbaa !22 ; 2 uses
  %strided.vec74 = shufflevector <8 x float> %wide.vec73, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec75 = shufflevector <8 x float> %wide.vec73, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cn = fadd reassoc nsz arcp contract afn <4 x float> %broadcast.splat69, %strided.vec74
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %broadcast.splat71, %strided.vec75
  %interleaved.vec76 = shufflevector <4 x float> %i.cn, <4 x float> %i.co, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec76, ptr %i.cm, align 32, !tbaa !22
  %index.next77 = add nuw i64 %index72, 4         ; 2 uses
  %i.cp = icmp eq i64 %index.next77, %n.vec67
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !174

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %n.vec67, %wide.trip.count.i
  br i1 %cmp.n78, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec51, %vec.epilog.iter.check ], [ %n.vec67, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block65, %vec.epilog.middle.block, %bb.e
  %i.cq = load ptr, ptr %i.bi, align 16, !tbaa !108
  %i.cr = load i32, ptr %i.bk, align 16, !tbaa !122
  %i.cs = sitofp reassoc nsz arcp contract afn i32 %i.cr to double
  %i.ct = sext i32 %i.by to i64
  %i.cu = call i32 @dt_dev_distort_transform_plus(ptr noundef nonnull %0, ptr noundef %i.cq, double noundef %i.cs, i32 noundef 1, ptr noundef nonnull %i.bu, i64 noundef %i.ct) #14
  %.not46.i = icmp eq i32 %i.cu, 0
  br i1 %.not46.i, label %.critedge.i, label %bb.f

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx.i ; 2 uses
  %i.cw = load <2 x float>, ptr %i.cv, align 8, !tbaa !22
  %i.cx = fadd reassoc nsz arcp contract afn <2 x float> %i.bx, %i.cw
  store <2 x float> %i.cx, ptr %i.cv, align 8, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !175

.critedge.i:                                      ; preds = %._crit_edge.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_circle_get_points_source.exit

bb.g:                                             ; preds = %.critedge.i, %.loopexit.i
  %i.cy = load ptr, ptr %2, align 8, !tbaa !111
  call void @free(ptr noundef %i.cy) #14
  store ptr null, ptr %2, align 8, !tbaa !111
  store i32 0, ptr %3, align 4, !tbaa !24
  br label %_circle_get_points_source.exit

bb.h:                                             ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !177
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !179
  %i.dd = extractelement <2 x float> %i.d, i64 0  ; 2 uses
  %i.de = extractelement <2 x float> %i.d, i64 1  ; 2 uses
  %i.df = tail call i32 %i.dc(ptr noundef %0, float noundef %i.dd, float noundef %i.de, float noundef %i.f, float noundef %i.f, float noundef 0.000000e+00, ptr noundef %2, ptr noundef %3) #14
  %.not36 = icmp eq i32 %i.df, 0
  br i1 %.not36, label %_circle_get_points_source.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not37 = icmp eq ptr %4, null
  br i1 %.not37, label %_circle_get_points_source.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dg = load float, ptr %i.e, align 4, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.di = load float, ptr %i.dh, align 4, !tbaa !23
  %i.dj = fadd reassoc nsz arcp contract afn float %i.di, %i.dg ; 2 uses
  %i.dk = load ptr, ptr %i.cz, align 8, !tbaa !177
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !179
  %i.dn = tail call i32 %i.dm(ptr noundef %0, float noundef %i.dd, float noundef %i.de, float noundef %i.dj, float noundef %i.dj, float noundef 0.000000e+00, ptr noundef nonnull %4, ptr noundef %5) #14
  br label %_circle_get_points_source.exit

_circle_get_points_source.exit:                   ; preds = %bb.g, %bb.f, %_points_to_transform.exit.i, %bb.h, %bb.i, %bb.j
  %.0 = phi i32 [ 0, %bb.h ], [ %i.dn, %bb.j ], [ 1, %bb.i ], [ 0, %bb.g ], [ 1, %bb.f ], [ 0, %_points_to_transform.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_circle_get_mask(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) #0 {
bb.a:
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %11 = alloca %struct.timeval, align 8           ; 5 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #14 ; 0 uses
  %i.c = load i64, ptr %12, align 8, !tbaa !125
  %i.d = add nsw i64 %i.c, -1290608000
  %i.e = sitofp reassoc nsz arcp contract afn i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !126
  %i.h = sitofp reassoc nsz arcp contract afn i64 %i.g to double
  %i.i = fmul reassoc nsz arcp contract afn double %i.h, f0x3EB0C6F7A0B5ED8D
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.a, %bb.b
  %i.k = phi reassoc nsz arcp contract afn double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.l = tail call i32 @_circle_get_area(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %dt_get_debug_wtime.exit
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.n = and i32 %i.m, 4112
  %or.cond.not = icmp eq i32 %i.n, 4112
  br i1 %or.cond.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.p = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #14 ; 0 uses
  %i.q = load i64, ptr %11, align 8, !tbaa !125
  %i.r = add nsw i64 %i.q, -1290608000
  %i.s = sitofp reassoc nsz arcp contract afn i64 %i.r to double
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !126
  %i.v = sitofp reassoc nsz arcp contract afn i64 %i.u to double
  %i.w = fmul reassoc nsz arcp contract afn double %i.v, f0x3EB0C6F7A0B5ED8D
  %i.x = fadd reassoc nsz arcp contract afn double %i.w, %i.s ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.y = fsub reassoc nsz arcp contract afn double %i.x, %i.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.o, double noundef %i.y) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi nsz double [ %i.k, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !15
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17  ; 4 uses
  %i.ab = load i32, ptr %4, align 4, !tbaa !24    ; 7 uses
  %i.ac = load i32, ptr %5, align 4, !tbaa !24    ; 4 uses
  %i.ad = sext i32 %i.ab to i64
  %i.ae = sext i32 %i.ac to i64
  %i.af = mul nsw i64 %i.ae, %i.ad                ; 3 uses
  %i.ag = shl i64 %i.af, 3
  %i.ah = tail call ptr @dt_alloc_aligned(i64 noundef %i.ag) #14 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %6, align 4, !tbaa !24
  %i.ak = sitofp reassoc nsz arcp contract afn i32 %i.aj to float ; 3 uses
  %i.al = load i32, ptr %7, align 4, !tbaa !24
  %i.am = sitofp reassoc nsz arcp contract afn i32 %i.al to float
  %i.an = icmp sgt i32 %i.ac, 0
  br i1 %i.an, label %.lr.ph120, label %._crit_edge121.split

.lr.ph120:                                        ; preds = %bb.f
  %i.ao = shl i32 %i.ab, 1
  %i.ap = icmp sgt i32 %i.ab, 0
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge121.split

.lr.ph.preheader:                                 ; preds = %.lr.ph120
  %wide.trip.count130 = zext nneg i32 %i.ac to i64
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ab, 4
  %min.iters.check142 = icmp ult i32 %i.ab, 32
  %i.aq = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert143 = insertelement <8 x float> poison, float %i.ak, i64 0
  %broadcast.splat144 = shufflevector <8 x float> %broadcast.splatinsert143, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  %n.vec148 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert151 = insertelement <4 x float> poison, float %i.ak, i64 0
  %broadcast.splat152 = shufflevector <4 x float> %broadcast.splatinsert151, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n160 = icmp eq i64 %n.vec148, %wide.trip.count
  br label %iter.check

._crit_edge121.split:                             ; preds = %._crit_edge, %.lr.ph120, %bb.f
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.as = and i32 %i.ar, 4112
  %or.cond108.not = icmp eq i32 %i.as, 4112
  br i1 %or.cond108.not, label %bb.g, label %bb.h

iter.check:                                       ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv127 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next128, %._crit_edge ] ; 2 uses
  %i.at = trunc nuw nsw i64 %indvars.iv127 to i32 ; 2 uses
  %i.au = mul i32 %i.ao, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.av ; 6 uses
  %i.ax = uitofp nsz nneg i32 %i.at to float
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.am ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check142, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ay, i64 0 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.az = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.ba = uitofp nneg <8 x i32> %step.add to <8 x float>
  %i.bb = uitofp nneg <8 x i32> %step.add.2 to <8 x float>
  %i.bc = uitofp nneg <8 x i32> %step.add.3 to <8 x float>
  %i.bd = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat144, %i.az
  %i.be = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat144, %i.ba
  %i.bf = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat144, %i.bb
  %i.bg = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat144, %i.bc
  %i.bh = shl nuw nsw i64 %index, 3
  %i.bi = shl i64 %index, 3
  %i.bj = shl i64 %index, 3
  %i.bk = shl i64 %index, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bh
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bk
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 192
  %interleaved.vec = shufflevector <8 x float> %i.bd, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec, ptr %i.bl, align 8, !tbaa !22
  %interleaved.vec145 = shufflevector <8 x float> %i.be, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec145, ptr %i.bn, align 8, !tbaa !22
  %interleaved.vec146 = shufflevector <8 x float> %i.bf, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec146, ptr %i.bp, align 8, !tbaa !22
  %interleaved.vec147 = shufflevector <8 x float> %i.bg, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec147, ptr %i.br, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !127

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert149 = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.bt = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert153 = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat154 = shufflevector <4 x i32> %broadcast.splatinsert153, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat154, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index155 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind156 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next159, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = uitofp nneg <4 x i32> %vec.ind156 to <4 x float>
  %i.bv = fadd reassoc nsz arcp contract afn <4 x float> %broadcast.splat152, %i.bu
  %i.bw = shl nuw nsw i64 %index155, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bw
  %interleaved.vec157 = shufflevector <4 x float> %i.bv, <4 x float> %broadcast.splatinsert149, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec157, ptr %i.bx, align 8, !tbaa !22
  %index.next158 = add nuw i64 %index155, 4       ; 2 uses
  %vec.ind.next159 = add <4 x i32> %vec.ind156, splat (i32 4)
  %i.by = icmp eq i64 %index.next158, %n.vec148
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !181

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n160, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec148, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge121.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ca = uitofp nsz nneg i32 %i.bz to float
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, %i.ak
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx ; 2 uses
  store float %i.cb, ptr %i.cc, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store float %i.ay, ptr %i.cd, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !182

bb.g:                                             ; preds = %._crit_edge121.split
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.cf = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #14 ; 0 uses
  %i.cg = load i64, ptr %10, align 8, !tbaa !125
  %i.ch = add nsw i64 %i.cg, -1290608000
  %i.ci = sitofp reassoc nsz arcp contract afn i64 %i.ch to double
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !126
  %i.cl = sitofp reassoc nsz arcp contract afn i64 %i.ck to double
  %i.cm = fmul reassoc nsz arcp contract afn double %i.cl, f0x3EB0C6F7A0B5ED8D
  %i.cn = fadd reassoc nsz arcp contract afn double %i.cm, %i.ci ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.co = fsub reassoc nsz arcp contract afn double %i.cn, %.0
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.ce, double noundef %i.co) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge121.split
  %.1 = phi nsz double [ %.0, %._crit_edge121.split ], [ %i.cn, %bb.g ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !128
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !134 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cu = load i32, ptr %i.ct, align 16, !tbaa !122
  %i.cv = sitofp reassoc nsz arcp contract afn i32 %i.cu to double
  %i.cw = tail call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.cq, ptr noundef %i.cs, double noundef %i.cv, i32 noundef 3, ptr noundef nonnull %i.ah, i64 noundef %i.af) #14
  %.not103 = icmp eq i32 %i.cw, 0
  br i1 %.not103, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.ah) #14
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.cy = and i32 %i.cx, 4112
  %or.cond109.not = icmp eq i32 %i.cy, 4112
  br i1 %or.cond109.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.da = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #14 ; 0 uses
  %i.db = load i64, ptr %9, align 8, !tbaa !125
  %i.dc = add nsw i64 %i.db, -1290608000
  %i.dd = sitofp reassoc nsz arcp contract afn i64 %i.dc to double
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !126
  %i.dg = sitofp reassoc nsz arcp contract afn i64 %i.df to double
  %i.dh = fmul reassoc nsz arcp contract afn double %i.dg, f0x3EB0C6F7A0B5ED8D
  %i.di = fadd reassoc nsz arcp contract afn double %i.dh, %i.dd ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.dj = fsub reassoc nsz arcp contract afn double %i.di, %.1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.cz, double noundef %i.dj) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2114 = phi nsz double [ %.1, %bb.j ], [ %i.di, %bb.k ]
  %i.dk = shl i64 %i.af, 2
  %i.dl = tail call ptr @dt_alloc_aligned(i64 noundef %i.dk) #14 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dl, i64 64) ]
  store ptr %i.dl, ptr %3, align 8, !tbaa !111
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.ah) #14
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cs, i64 144
  %i.do = load i32, ptr %i.dn, align 16, !tbaa !188 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cs, i64 148
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !189 ; 2 uses
  %i.dr = tail call i32 @llvm.smin.i32(i32 %i.do, i32 %i.dq)
  %i.ds = load float, ptr %i.aa, align 4, !tbaa !22
  %i.dt = sitofp reassoc nsz arcp contract afn i32 %i.do to float
  %i.du = fmul reassoc nsz arcp contract afn float %i.ds, %i.dt ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !22
  %i.dx = sitofp reassoc nsz arcp contract afn i32 %i.dq to float
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dw, %i.dx ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !20 ; 3 uses
  %i.eb = sitofp reassoc nsz arcp contract afn i32 %i.dr to float ; 2 uses
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !23
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, %i.ea ; 2 uses
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, %i.ef
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.ec ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 3 uses
  %i.ej = mul nsw i32 %i.ac, %i.ab                ; 3 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph124.preheader, label %._crit_edge125

.lr.ph124.preheader:                              ; preds = %bb.n
  %i.el = fmul reassoc nsz arcp contract afn float %i.ea, %i.ea
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.ec
  %i.en = fsub reassoc nsz arcp contract afn float %i.eh, %i.em ; 4 uses
  %wide.trip.count135 = zext nneg i32 %i.ej to i64 ; 7 uses
  %min.iters.check162 = icmp ult i32 %i.ej, 8
  br i1 %min.iters.check162, label %.lr.ph124.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph124.preheader
  %i.eo = shl nuw nsw i64 %wide.trip.count135, 2
  %i.ep = getelementptr i8, ptr %i.dl, i64 %i.eo
  %i.eq = shl nuw nsw i64 %wide.trip.count135, 3
  %i.er = getelementptr i8, ptr %i.ah, i64 %i.eq
  %bound0 = icmp ult ptr %i.dl, %i.er
  %bound1 = icmp ult ptr %i.ah, %i.ep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph124.preheader181, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck
  %n.vec164 = and i64 %wide.trip.count135, 2147483640 ; 3 uses
  %broadcast.splatinsert165 = insertelement <8 x float> poison, float %i.en, i64 0
  %broadcast.splat166 = shufflevector <8 x float> %broadcast.splatinsert165, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert167 = insertelement <8 x float> poison, float %i.du, i64 0
  %broadcast.splat168 = shufflevector <8 x float> %broadcast.splatinsert167, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <8 x float> poison, float %i.dy, i64 0
  %broadcast.splat170 = shufflevector <8 x float> %broadcast.splatinsert169, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x float> poison, float %i.eh, i64 0
  %broadcast.splat172 = shufflevector <8 x float> %broadcast.splatinsert171, <8 x float> poison, <8 x i32> zeroinitializer
  %i.es = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat166
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph163
  %index174 = phi i64 [ 0, %vector.ph163 ], [ %index.next176, %vector.body173 ] ; 3 uses
  %.idx180 = shl nuw nsw i64 %index174, 3
  %i.et = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx180
  %wide.vec = load <16 x float>, ptr %i.et, align 64, !tbaa !22, !alias.scope !190 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec175 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.eu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat168 ; 2 uses
  %i.ev = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec175, %broadcast.splat170 ; 2 uses
  %i.ew = fmul reassoc nsz arcp contract afn <8 x float> %i.eu, %i.eu
  %i.ex = fmul reassoc nsz arcp contract afn <8 x float> %i.ev, %i.ev
  %i.ey = fadd reassoc nsz arcp contract afn <8 x float> %i.ex, %i.ew
  %i.ez = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat172, %i.ey
  %i.fa = fmul reassoc nsz arcp contract afn <8 x float> %i.ez, %i.es ; 3 uses
  %i.fb = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.fa, zeroinitializer
  %i.fc = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.fa, splat (float 1.000000e+00)
  %i.fd = select reassoc nsz arcp contract afn <8 x i1> %i.fc, <8 x float> %i.fa, <8 x float> splat (float 1.000000e+00)
  %i.fe = select reassoc nsz arcp contract afn <8 x i1> %i.fb, <8 x float> %i.fd, <8 x float> zeroinitializer ; 2 uses
  %i.ff = fmul reassoc nsz arcp contract afn <8 x float> %i.fe, %i.fe
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index174
  store <8 x float> %i.ff, ptr %i.fg, align 32, !tbaa !22, !alias.scope !191, !noalias !190
  %index.next176 = add nuw i64 %index174, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next176, %n.vec164
  br i1 %i.fh, label %middle.block177, label %vector.body173, !llvm.loop !186

middle.block177:                                  ; preds = %vector.body173
  %cmp.n178 = icmp eq i64 %n.vec164, %wide.trip.count135
  br i1 %cmp.n178, label %._crit_edge125, label %.lr.ph124.preheader181

.lr.ph124.preheader181:                           ; preds = %vector.memcheck, %.lr.ph124.preheader, %middle.block177
  %indvars.iv132.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph124.preheader ], [ %n.vec164, %middle.block177 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count135, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol

.lr.ph124.prol:                                   ; preds = %.lr.ph124.preheader181
  %i.fi = shl nuw nsw i64 %indvars.iv132.ph, 1    ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 64, !tbaa !22
  %i.fl = fsub reassoc nsz arcp contract afn float %i.fk, %i.du ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fi
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !22
  %i.fo = fsub reassoc nsz arcp contract afn float %i.fn, %i.dy ; 2 uses
  %.neg.prol = fmul reassoc nsz arcp contract afn float %i.fl, %i.fl
  %.neg115.prol = fmul reassoc nsz arcp contract afn float %i.fo, %i.fo
  %reass.add.prol = fadd reassoc nsz arcp contract afn float %.neg115.prol, %.neg.prol
  %i.fp = fsub reassoc nsz arcp contract afn float %i.eh, %reass.add.prol
  %i.fq = fdiv reassoc nsz arcp contract afn float %i.fp, %i.en ; 3 uses
  %i.fr = fcmp reassoc nsz arcp contract afn oge float %i.fq, 0.000000e+00
  %i.fs = fcmp reassoc nsz arcp contract afn ole float %i.fq, 1.000000e+00
  %i.ft = select reassoc nsz arcp contract afn i1 %i.fs, float %i.fq, float 1.000000e+00
  %i.fu = select reassoc nsz arcp contract afn i1 %i.fr, float %i.ft, float 0.000000e+00 ; 2 uses
  %i.fv = fmul reassoc nsz arcp contract afn float %i.fu, %i.fu
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv132.ph
  store float %i.fv, ptr %i.fw, align 32, !tbaa !22
  %indvars.iv.next133.prol = or disjoint i64 %indvars.iv132.ph, 1
  br label %.lr.ph124.prol.loopexit

.lr.ph124.prol.loopexit:                          ; preds = %.lr.ph124.prol, %.lr.ph124.preheader181
  %indvars.iv132.unr = phi i64 [ %indvars.iv132.ph, %.lr.ph124.preheader181 ], [ %indvars.iv.next133.prol, %.lr.ph124.prol ]
  %i.fx = add nsw i64 %wide.trip.count135, -1
  %i.fy = icmp eq i64 %indvars.iv132.ph, %i.fx
  br i1 %i.fy, label %._crit_edge125, label %.lr.ph124.preheader181.new

.lr.ph124.preheader181.new:                       ; preds = %.lr.ph124.prol.loopexit
  %i.fz = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.en
  %i.ga = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.en
  br label %.lr.ph124

._crit_edge125:                                   ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124, %middle.block177, %bb.n
  tail call void @free(ptr noundef nonnull %i.ah) #14
  %i.gb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.gc = and i32 %i.gb, 4112
  %or.cond110.not = icmp eq i32 %i.gc, 4112
  br i1 %or.cond110.not, label %bb.o, label %bb.p

.lr.ph124:                                        ; preds = %.lr.ph124, %.lr.ph124.preheader181.new
  %indvars.iv132 = phi i64 [ %indvars.iv132.unr, %.lr.ph124.preheader181.new ], [ %indvars.iv.next133.1, %.lr.ph124 ] ; 4 uses
  %i.gd = shl nuw nsw i64 %indvars.iv132, 1       ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 8, !tbaa !22
  %i.gg = fsub reassoc nsz arcp contract afn float %i.gf, %i.du ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gd
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !22
  %i.gj = fsub reassoc nsz arcp contract afn float %i.gi, %i.dy ; 2 uses
  %.neg = fmul reassoc nsz arcp contract afn float %i.gg, %i.gg
  %.neg115 = fmul reassoc nsz arcp contract afn float %i.gj, %i.gj
  %reass.add = fadd reassoc nsz arcp contract afn float %.neg115, %.neg
  %i.gk = fsub reassoc nsz arcp contract afn float %i.eh, %reass.add
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gk, %i.fz ; 3 uses
  %i.gm = fcmp reassoc nsz arcp contract afn oge float %i.gl, 0.000000e+00
  %i.gn = fcmp reassoc nsz arcp contract afn ole float %i.gl, 1.000000e+00
  %i.go = select reassoc nsz arcp contract afn i1 %i.gn, float %i.gl, float 1.000000e+00
  %i.gp = select reassoc nsz arcp contract afn i1 %i.gm, float %i.go, float 0.000000e+00 ; 2 uses
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gp, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv132
  store float %i.gq, ptr %i.gr, align 4, !tbaa !22
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.gs = shl nuw nsw i64 %indvars.iv.next133, 1  ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gs
  %i.gu = load float, ptr %i.gt, align 8, !tbaa !22
  %i.gv = fsub reassoc nsz arcp contract afn float %i.gu, %i.du ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gs
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !22
  %i.gy = fsub reassoc nsz arcp contract afn float %i.gx, %i.dy ; 2 uses
  %.neg.1 = fmul reassoc nsz arcp contract afn float %i.gv, %i.gv
  %.neg115.1 = fmul reassoc nsz arcp contract afn float %i.gy, %i.gy
  %reass.add.1 = fadd reassoc nsz arcp contract afn float %.neg115.1, %.neg.1
  %i.gz = fsub reassoc nsz arcp contract afn float %i.eh, %reass.add.1
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, %i.ga ; 3 uses
  %i.hb = fcmp reassoc nsz arcp contract afn oge float %i.ha, 0.000000e+00
  %i.hc = fcmp reassoc nsz arcp contract afn ole float %i.ha, 1.000000e+00
  %i.hd = select reassoc nsz arcp contract afn i1 %i.hc, float %i.ha, float 1.000000e+00
  %i.he = select reassoc nsz arcp contract afn i1 %i.hb, float %i.hd, float 0.000000e+00 ; 2 uses
  %i.hf = fmul reassoc nsz arcp contract afn float %i.he, %i.he
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.next133
  store float %i.hf, ptr %i.hg, align 4, !tbaa !22
  %indvars.iv.next133.1 = add nuw nsw i64 %indvars.iv132, 2 ; 2 uses
  %exitcond136.not.1 = icmp eq i64 %indvars.iv.next133.1, %wide.trip.count135
  br i1 %exitcond136.not.1, label %._crit_edge125, label %.lr.ph124, !llvm.loop !187

bb.o:                                             ; preds = %._crit_edge125
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.hi = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #14 ; 0 uses
  %i.hj = load i64, ptr %8, align 8, !tbaa !125
  %i.hk = add nsw i64 %i.hj, -1290608000
  %i.hl = sitofp reassoc nsz arcp contract afn i64 %i.hk to double
  %i.hm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !126
  %i.ho = sitofp reassoc nsz arcp contract afn i64 %i.hn to double
  %i.hp = fmul reassoc nsz arcp contract afn double %i.ho, f0x3EB0C6F7A0B5ED8D
  %i.hq = fadd reassoc nsz arcp contract afn double %i.hp, %i.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.hr = fsub reassoc nsz arcp contract afn double %i.hq, %.2114
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.hh, double noundef %i.hr) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.e, %._crit_edge125, %bb.o, %bb.m, %bb.i, %dt_get_debug_wtime.exit
  %.2 = phi i32 [ 0, %dt_get_debug_wtime.exit ], [ 0, %bb.e ], [ 0, %bb.m ], [ 0, %bb.i ], [ 1, %bb.o ], [ 1, %._crit_edge125 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_circle_get_mask_roi(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noalias nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %11 = alloca %struct.timeval, align 8           ; 5 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %13 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #14 ; 0 uses
  %i.c = load i64, ptr %13, align 8, !tbaa !125
  %i.d = add nsw i64 %i.c, -1290608000
  %i.e = sitofp reassoc nsz arcp contract afn i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !126
  %i.h = sitofp reassoc nsz arcp contract afn i64 %i.g to double
  %i.i = fmul reassoc nsz arcp contract afn double %i.h, f0x3EB0C6F7A0B5ED8D
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.k = and i32 %.pre, 4112
  %i.l = icmp eq i32 %i.k, 4112
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.a, %bb.b
  %or.cond413.not = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  %i.m = phi reassoc nsz arcp contract afn double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !15
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.s = load <2 x i32>, ptr %i.r, align 16, !tbaa !24 ; 3 uses
  %i.t = load <2 x float>, ptr %i.o, align 4, !tbaa !22
  %i.u = sitofp reassoc nsz arcp contract afn <2 x i32> %i.s to <2 x float>
  %i.v = fmul reassoc nsz arcp contract afn <2 x float> %i.t, %i.u ; 7 uses
  %i.w = extractelement <2 x i32> %i.s, i64 0
  %i.x = extractelement <2 x i32> %i.s, i64 1
  %i.y = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20 ; 2 uses
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.y to float ; 2 uses
  %i.ac = fmul reassoc nsz arcp contract afn float %i.aa, %i.ab ; 2 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.af = load float, ptr %i.ae, align 4, !tbaa !23
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.aa
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab ; 4 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.ah ; 4 uses
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ai, %i.ad ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !201 ; 3 uses
  %i.an = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.am ; 4 uses
  %i.ao = fmul reassoc nsz arcp contract afn float %i.am, f0x40555556
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, f0x3F2AAAAB ; 3 uses
  %i.aq = fcmp reassoc nsz arcp contract afn ogt float %i.ap, 4.000000e+00
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.ap, 1.000000e+00
  %spec.select433 = select i1 %.inv, float 1.000000e+00, float %i.ap
  %spec.select = fptosi float %spec.select433 to i32
  %i.ar = select i1 %i.aq, i32 4, i32 %spec.select ; 19 uses
  %i.as = add i32 %i.ar, -1
  %i.at = load <2 x i32>, ptr %i.ak, align 4, !tbaa !24 ; 3 uses
  %i.au = load <2 x i32>, ptr %3, align 4, !tbaa !24 ; 5 uses
  %i.av = insertelement <2 x i32> poison, i32 %i.as, i64 0
  %i.aw = shufflevector <2 x i32> %i.av, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ax = add <2 x i32> %i.aw, %i.at
  %i.ay = insertelement <2 x i32> poison, i32 %i.ar, i64 0
  %i.az = shufflevector <2 x i32> %i.ay, <2 x i32> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ba = sdiv <2 x i32> %i.ax, %i.az             ; 4 uses
  %i.bb = extractelement <2 x i32> %i.at, i64 0   ; 2 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = shl nsw i64 %i.bc, 2
  %i.be = extractelement <2 x i32> %i.at, i64 1   ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.bd, %i.bf
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.bg, i1 false)
  br i1 %or.cond413.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %dt_get_debug_wtime.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.bi = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #14 ; 0 uses
  %i.bj = load i64, ptr %12, align 8, !tbaa !125
  %i.bk = add nsw i64 %i.bj, -1290608000
  %i.bl = sitofp reassoc nsz arcp contract afn i64 %i.bk to double
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !126
  %i.bo = sitofp reassoc nsz arcp contract afn i64 %i.bn to double
  %i.bp = fmul reassoc nsz arcp contract afn double %i.bo, f0x3EB0C6F7A0B5ED8D
  %i.bq = fadd reassoc nsz arcp contract afn double %i.bp, %i.bl ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.br = fsub reassoc nsz arcp contract afn double %i.bq, %i.m
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.bh, double noundef %i.br) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %dt_get_debug_wtime.exit
  %.0 = phi nsz double [ %i.m, %dt_get_debug_wtime.exit ], [ %i.bq, %bb.c ] ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %i.ai, f0x40C90FDB ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ogt float %i.bs, 3.600000e+02
  %i.bu = select reassoc nsz arcp contract afn i1 %i.bt, float 3.600000e+02, float %i.bs
  %i.bv = fptosi float %i.bu to i32               ; 3 uses
  %14 = srem i32 %i.bv, 8                         ; 2 uses
  %i.bw = icmp eq i32 %14, 0
  %i.bx = add nsw i32 %i.bv, 8
  %15 = sub i32 %i.bx, %14
  %i.by = select i1 %i.bw, i32 %i.bv, i32 %15     ; 6 uses
  %16 = sext i32 %i.by to i64                     ; 4 uses
  %i.bz = shl nsw i64 %16, 3
  %i.ca = tail call ptr @dt_alloc_aligned(i64 noundef %i.bz) #14 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.ac, label %.preheader446.a

.preheader446.a:                                  ; preds = %bb.d
  %i.cc = lshr i64 %16, 3                         ; 4 uses
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader446.a
  %i.cd = uitofp reassoc nsz arcp contract afn i64 %16 to float ; 2 uses
  %min.iters.check = icmp ult i32 %i.by, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.cc, 2305843009213693944     ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cd, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert529 = insertelement <8 x float> poison, float %i.ah, i64 0
  %broadcast.splat530 = shufflevector <8 x float> %broadcast.splatinsert529, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat532 = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat534 = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.ce = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind535 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next551, %vector.body ] ; 2 uses
  %i.cf = uitofp nneg <8 x i32> %vec.ind535 to <8 x float>
  %i.cg = fmul reassoc nsz arcp contract afn <8 x float> %i.cf, splat (float f0x40C90FDB)
  %i.ch = fmul reassoc nsz arcp contract afn <8 x float> %i.cg, %i.ce
  %i.ci = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.ch) ; 2 uses
  %i.cj = extractvalue { <8 x float>, <8 x float> } %i.ci, 0
  %i.ck = extractvalue { <8 x float>, <8 x float> } %i.ci, 1
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %i.ck, %broadcast.splat530 ; 4 uses
  %i.cm = fmul reassoc nsz arcp contract afn <8 x float> %i.cj, %broadcast.splat530 ; 4 uses
  %i.cn = fadd reassoc nsz arcp contract afn <8 x float> %i.cl, %broadcast.splat532 ; 2 uses
  %i.co = shl nuw nsw <8 x i64> %vec.ind, splat (i64 6)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.ca, <8 x i64> %i.co ; 16 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cn, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cp = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %broadcast.splat534 ; 2 uses
  %wide.gep536 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cp, <8 x ptr> align 4 %wide.gep536, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep537 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cn, <8 x ptr> align 4 %wide.gep537, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cq = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat534, %i.cm ; 2 uses
  %wide.gep538 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cq, <8 x ptr> align 4 %wide.gep538, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cr = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat532, %i.cl ; 2 uses
  %wide.gep539 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cr, <8 x ptr> align 4 %wide.gep539, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep540 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cp, <8 x ptr> align 4 %wide.gep540, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep541 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cr, <8 x ptr> align 4 %wide.gep541, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep542 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cq, <8 x ptr> align 4 %wide.gep542, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %broadcast.splat532 ; 2 uses
  %wide.gep543 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cs, <8 x ptr> align 4 %wide.gep543, <8 x i1> splat (i1 true)), !tbaa !22
  %i.ct = fadd reassoc nsz arcp contract afn <8 x float> %i.cl, %broadcast.splat534 ; 2 uses
  %wide.gep544 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 36
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ct, <8 x ptr> align 4 %wide.gep544, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep545 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 40
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cs, <8 x ptr> align 4 %wide.gep545, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cu = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat534, %i.cl ; 2 uses
  %wide.gep546 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 44
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cu, <8 x ptr> align 4 %wide.gep546, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cv = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat532, %i.cm ; 2 uses
  %wide.gep547 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 48
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cv, <8 x ptr> align 4 %wide.gep547, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep548 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 52
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ct, <8 x ptr> align 4 %wide.gep548, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep549 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 56
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cv, <8 x ptr> align 4 %wide.gep549, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep550 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 60
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cu, <8 x ptr> align 4 %wide.gep550, <8 x i1> splat (i1 true)), !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next551 = add <8 x i32> %vec.ind535, splat (i32 8)
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.cx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cd
  %i.cy = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.cz = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader446.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !128 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.de = load i32, ptr %i.dd, align 16, !tbaa !122
  %i.df = sitofp reassoc nsz arcp contract afn i32 %i.de to double ; 2 uses
  %i.dg = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %i.dc, ptr noundef nonnull %i.q, double noundef %i.df, i32 noundef 3, ptr noundef nonnull %i.ca, i64 noundef %16) #14
  %.not388 = icmp eq i32 %i.dg, 0
  br i1 %.not388, label %bb.e, label %bb.f

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dh = trunc nuw nsw i64 %indvars.iv to i32
  %i.di = uitofp nsz nneg i32 %i.dh to float
  %i.dj = fmul reassoc nsz arcp contract afn float %i.di, f0x40C90FDB
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.cx
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.dk) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.dl = insertelement <4 x float> poison, float %sin, i64 0
  %i.dm = insertelement <4 x float> %i.dl, float %cos, i64 1
  %.idx527 = shl nuw nsw i64 %indvars.iv, 6
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx527 ; 2 uses
  %i.do = fmul reassoc nsz arcp contract afn <4 x float> %i.dm, %i.da ; 4 uses
  %i.dp = shufflevector <4 x float> %i.cz, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.dq = shufflevector <4 x float> %i.do, <4 x float> %i.cz, <4 x i32> <i32 1, i32 0, i32 5, i32 4> ; 2 uses
  %i.dr = fadd reassoc nsz arcp contract afn <4 x float> %i.dp, %i.dq
  %i.ds = fsub reassoc nsz arcp contract afn <4 x float> %i.dp, %i.dq
  %i.dt = shufflevector <4 x float> %i.dr, <4 x float> %i.ds, <8 x i32> <i32 3, i32 2, i32 3, i32 5, i32 4, i32 2, i32 4, i32 5>
  store <8 x float> %i.dt, ptr %i.dn, align 64, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dv = shufflevector <4 x float> %i.cz, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.dw = shufflevector <4 x float> %i.do, <4 x float> %i.cz, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.dx = fadd reassoc nsz arcp contract afn <4 x float> %i.dv, %i.dw
  %i.dy = fsub reassoc nsz arcp contract afn <4 x float> %i.dv, %i.dw
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <8 x i32> <i32 3, i32 2, i32 3, i32 5, i32 4, i32 2, i32 4, i32 5>
  store <8 x float> %i.dz, ptr %i.du, align 32, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.cc
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !193

bb.e:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.ca) #14
  br label %bb.ac

bb.f:                                             ; preds = %._crit_edge
  %i.ea = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.eb = and i32 %i.ea, 4112
  %or.cond414.not = icmp eq i32 %i.eb, 4112
  br i1 %or.cond414.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.ed = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #14 ; 0 uses
  %i.ee = load i64, ptr %11, align 8, !tbaa !125
  %i.ef = add nsw i64 %i.ee, -1290608000
  %i.eg = sitofp reassoc nsz arcp contract afn i64 %i.ef to double
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !126
  %i.ej = sitofp reassoc nsz arcp contract afn i64 %i.ei to double
  %i.ek = fmul reassoc nsz arcp contract afn double %i.ej, f0x3EB0C6F7A0B5ED8D
  %i.el = fadd reassoc nsz arcp contract afn double %i.ek, %i.eg ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.em = fsub reassoc nsz arcp contract afn double %i.el, %.0
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ec, double noundef %i.em) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi nsz double [ %.0, %bb.f ], [ %i.el, %bb.g ] ; 2 uses
  %.not481 = icmp eq i32 %i.by, 0
  br i1 %.not481, label %._crit_edge455, label %.lr.ph454.preheader

.lr.ph454.preheader:                              ; preds = %bb.h
  %wide.trip.count = zext i32 %i.by to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.en = icmp eq i32 %i.by, 1
  br i1 %i.en, label %.lr.ph454.epil.preheader, label %.lr.ph454.preheader.new

.lr.ph454.preheader.new:                          ; preds = %.lr.ph454.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph454

._crit_edge455.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge455, label %.lr.ph454.epil.preheader

.lr.ph454.epil.preheader:                         ; preds = %._crit_edge455.loopexit.unr-lcssa, %.lr.ph454.preheader
  %indvars.iv483.epil.init = phi i64 [ 0, %.lr.ph454.preheader ], [ %indvars.iv.next484.1, %._crit_edge455.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ splat (float f0x00800000), %.lr.ph454.preheader ], [ %i.he, %._crit_edge455.loopexit.unr-lcssa ] ; 4 uses
  %.epil.init659 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph454.preheader ], [ %i.hf, %._crit_edge455.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod662 = trunc i32 %i.by to i1
  tail call void @llvm.assume(i1 %lcmp.mod662)
  %.idx528.epil = shl nuw nsw i64 %indvars.iv483.epil.init, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx528.epil ; 3 uses
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !22
  %i.eq = tail call i1 @llvm.is.fpclass.f32(float %i.ep, /* (nan inf zero sub) */ i32 759)
  br i1 %i.eq, label %._crit_edge455, label %bb.i

bb.i:                                             ; preds = %.lr.ph454.epil.preheader
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.es = load float, ptr %i.er, align 4, !tbaa !22
  %i.et = tail call i1 @llvm.is.fpclass.f32(float %i.es, /* (nan inf zero sub) */ i32 759)
  br i1 %i.et, label %._crit_edge455, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eu = load <2 x float>, ptr %i.eo, align 8, !tbaa !22 ; 4 uses
  %i.ev = fcmp reassoc nsz arcp contract afn olt <2 x float> %.epil.init659, %i.eu
  %i.ew = fcmp reassoc nsz arcp contract afn ogt <2 x float> %.epil.init, %i.eu
  %i.ex = select <2 x i1> %i.ev, <2 x float> %.epil.init659, <2 x float> %i.eu
  %i.ey = select <2 x i1> %i.ew, <2 x float> %.epil.init, <2 x float> %i.eu
  br label %._crit_edge455

._crit_edge455:                                   ; preds = %._crit_edge455.loopexit.unr-lcssa, %bb.j, %bb.i, %.lr.ph454.epil.preheader, %bb.h
  %i.ez = phi <2 x float> [ splat (float f0x00800000), %bb.h ], [ %i.he, %._crit_edge455.loopexit.unr-lcssa ], [ %i.ey, %bb.j ], [ %.epil.init, %bb.i ], [ %.epil.init, %.lr.ph454.epil.preheader ]
  %i.fa = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.h ], [ %i.hf, %._crit_edge455.loopexit.unr-lcssa ], [ %i.ex, %bb.j ], [ %.epil.init659, %bb.i ], [ %.epil.init659, %.lr.ph454.epil.preheader ]
  %i.fb = insertelement <2 x float> poison, float %i.am, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fd = fmul reassoc nsz arcp contract afn <2 x float> %i.fa, %i.fc
  %i.fe = sitofp reassoc nsz arcp contract afn <2 x i32> %i.au to <2 x float> ; 2 uses
  %i.ff = fmul reassoc nsz arcp contract afn <2 x float> %i.ez, %i.fc
  %i.fg = fsub reassoc nsz arcp contract afn <2 x float> %i.fd, %i.fe
  %i.fh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.fg)
  %i.fi = fptosi <2 x float> %i.fh to <2 x i32>
  %i.fj = sdiv <2 x i32> %i.fi, %i.az             ; 2 uses
  %i.fk = add nsw <2 x i32> %i.fj, splat (i32 -1) ; 2 uses
  %i.fl = icmp sgt <2 x i32> %i.fk, %i.ba
  %i.fm = icmp sgt <2 x i32> %i.fj, zeroinitializer
  %i.fn = select <2 x i1> %i.fm, <2 x i32> %i.fk, <2 x i32> zeroinitializer
  %i.fo = select <2 x i1> %i.fl, <2 x i32> %i.ba, <2 x i32> %i.fn ; 7 uses
  %i.fp = fsub reassoc nsz arcp contract afn <2 x float> %i.ff, %i.fe
  %i.fq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.fp)
  %i.fr = fptosi <2 x float> %i.fq to <2 x i32>
  %i.fs = sdiv <2 x i32> %i.fr, %i.az             ; 2 uses
  %i.ft = add nsw <2 x i32> %i.fs, splat (i32 2)  ; 2 uses
  %i.fu = icmp sgt <2 x i32> %i.ft, %i.ba
  %i.fv = icmp slt <2 x i32> %i.fs, splat (i32 -2)
  %i.fw = select <2 x i1> %i.fv, <2 x i32> zeroinitializer, <2 x i32> %i.ft
  %i.fx = select <2 x i1> %i.fu, <2 x i32> %i.ba, <2 x i32> %i.fw ; 5 uses
  %i.fy = sub <2 x i32> %i.fx, %i.fo              ; 4 uses
  %i.fz = add nuw <2 x i32> %i.fy, splat (i32 1)  ; 3 uses
  %i.ga = zext <2 x i32> %i.fz to <2 x i64>
  tail call void @free(ptr noundef nonnull %i.ca) #14
  %i.gb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.gc = and i32 %i.gb, 4112
  %or.cond419.not = icmp eq i32 %i.gc, 4112
  br i1 %or.cond419.not, label %bb.p, label %bb.q

.lr.ph454:                                        ; preds = %bb.o, %.lr.ph454.preheader.new
  %indvars.iv483 = phi i64 [ 0, %.lr.ph454.preheader.new ], [ %indvars.iv.next484.1, %bb.o ] ; 3 uses
  %i.gd = phi <2 x float> [ splat (float f0x00800000), %.lr.ph454.preheader.new ], [ %i.he, %bb.o ] ; 4 uses
  %i.ge = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph454.preheader.new ], [ %i.hf, %bb.o ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph454.preheader.new ], [ %niter.next.1, %bb.o ]
  %.idx528 = shl nuw nsw i64 %indvars.iv483, 3
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx528 ; 3 uses
  %i.gg = load float, ptr %i.gf, align 16, !tbaa !22
  %i.gh = tail call i1 @llvm.is.fpclass.f32(float %i.gg, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gh, label %.lr.ph454.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph454
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !22
  %i.gk = tail call i1 @llvm.is.fpclass.f32(float %i.gj, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gk, label %.lr.ph454.1, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gl = load <2 x float>, ptr %i.gf, align 16, !tbaa !22 ; 4 uses
  %i.gm = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ge, %i.gl
  %i.gn = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gd, %i.gl
  %i.go = select <2 x i1> %i.gm, <2 x float> %i.ge, <2 x float> %i.gl
  %i.gp = select <2 x i1> %i.gn, <2 x float> %i.gd, <2 x float> %i.gl
  br label %.lr.ph454.1

.lr.ph454.1:                                      ; preds = %.lr.ph454, %bb.k, %bb.l
  %i.gq = phi <2 x float> [ %i.gp, %bb.l ], [ %i.gd, %bb.k ], [ %i.gd, %.lr.ph454 ] ; 4 uses
  %i.gr = phi <2 x float> [ %i.go, %bb.l ], [ %i.ge, %bb.k ], [ %i.ge, %.lr.ph454 ] ; 4 uses
  %indvars.iv.next484 = shl i64 %indvars.iv483, 3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv.next484 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.gu = load float, ptr %i.gt, align 8, !tbaa !22
  %i.gv = tail call i1 @llvm.is.fpclass.f32(float %i.gu, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gv, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph454.1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !22
  %i.gy = tail call i1 @llvm.is.fpclass.f32(float %i.gx, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gy, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gz = load <2 x float>, ptr %i.gt, align 8, !tbaa !22 ; 4 uses
  %i.ha = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gr, %i.gz
  %i.hb = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gq, %i.gz
  %i.hc = select <2 x i1> %i.ha, <2 x float> %i.gr, <2 x float> %i.gz
  %i.hd = select <2 x i1> %i.hb, <2 x float> %i.gq, <2 x float> %i.gz
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph454.1
  %i.he = phi <2 x float> [ %i.hd, %bb.n ], [ %i.gq, %bb.m ], [ %i.gq, %.lr.ph454.1 ] ; 3 uses
  %i.hf = phi <2 x float> [ %i.hc, %bb.n ], [ %i.gr, %bb.m ], [ %i.gr, %.lr.ph454.1 ] ; 3 uses
  %indvars.iv.next484.1 = add nuw nsw i64 %indvars.iv483, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge455.loopexit.unr-lcssa, label %.lr.ph454

bb.p:                                             ; preds = %._crit_edge455
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.hh = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #14 ; 0 uses
  %i.hi = load i64, ptr %10, align 8, !tbaa !125
  %i.hj = add nsw i64 %i.hi, -1290608000
  %i.hk = sitofp reassoc nsz arcp contract afn i64 %i.hj to double
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !126
  %i.hn = sitofp reassoc nsz arcp contract afn i64 %i.hm to double
  %i.ho = fmul reassoc nsz arcp contract afn double %i.hn, f0x3EB0C6F7A0B5ED8D
  %i.hp = fadd reassoc nsz arcp contract afn double %i.ho, %i.hk ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.hq = fsub reassoc nsz arcp contract afn double %i.hp, %.1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.hg, double noundef %i.hq) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge455
  %.2432 = phi nsz double [ %.1, %._crit_edge455 ], [ %i.hp, %bb.p ] ; 2 uses
  %i.hr = icmp slt <2 x i32> %i.fy, splat (i32 1) ; 2 uses
  %i.hs = extractelement <2 x i1> %i.hr, i64 0
  %i.ht = extractelement <2 x i1> %i.hr, i64 1
  %or.cond = select i1 %i.hs, i1 true, i1 %i.ht
  br i1 %or.cond, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hu = extractelement <2 x i32> %i.fz, i64 0   ; 12 uses
  %i.hv = zext i32 %i.hu to i64
  %i.hw = extractelement <2 x i32> %i.fz, i64 1
  %i.hx = zext i32 %i.hw to i64
  %i.hy = mul nuw nsw i64 %i.hx, %i.hv            ; 2 uses
  %i.hz = shl i64 %i.hy, 3
  %i.ia = tail call ptr @dt_alloc_aligned(i64 noundef %i.hz) #14 ; 17 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ia, i64 64) ]
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.ac, label %.preheader445

.preheader445:                                    ; preds = %bb.r
  %i.ic = extractelement <2 x i32> %i.fx, i64 1   ; 3 uses
  %i.id = extractelement <2 x i32> %i.fo, i64 1   ; 5 uses
  %.not393463 = icmp sgt i32 %i.id, %i.ic
  br i1 %.not393463, label %._crit_edge465.split, label %.preheader444.lr.ph

.preheader444.lr.ph:                              ; preds = %.preheader445
  %i.ie = extractelement <2 x i32> %i.fo, i64 0
  %i.if = icmp sgt <2 x i32> %i.fo, %i.fx
  %.not410459 = extractelement <2 x i1> %i.if, i64 0
  %i.ig = sext i32 %i.ie to i64                   ; 6 uses
  br i1 %.not410459, label %._crit_edge465.split, label %.preheader444.preheader

.preheader444.preheader:                          ; preds = %.preheader444.lr.ph
  %i.ih = sext i32 %i.id to i64                   ; 2 uses
  %i.ii = add <2 x i32> %i.fx, splat (i32 1)      ; 2 uses
  %i.ij = extractelement <2 x i32> %i.fy, i64 0   ; 2 uses
  %i.ik = extractelement <2 x i32> %i.au, i64 1
  %i.il = extractelement <2 x i32> %i.ii, i64 1
  %i.im = zext i32 %i.hu to i64
  %min.iters.check553 = icmp ult i32 %i.ij, 3
  %min.iters.check554 = icmp ult i32 %i.ij, 31
  %i.in = zext i32 %i.hu to i64                   ; 2 uses
  %i.io = and i64 %i.in, 28
  %n.vec556 = and i64 %i.in, 4294967264           ; 4 uses
  %i.ip = add nsw i64 %n.vec556, %i.ig            ; 2 uses
  %broadcast.splatinsert559.a = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat560 = shufflevector <8 x i32> %broadcast.splatinsert559.a, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat562 = shufflevector <2 x i32> %i.au, <2 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert563 = insertelement <8 x float> poison, float %i.an, i64 0
  %broadcast.splat564 = shufflevector <8 x float> %broadcast.splatinsert563, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat566 = shufflevector <2 x i32> %i.fo, <2 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat566, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iq = zext i32 %i.hu to i64
  %cmp.n576 = icmp eq i64 %n.vec556, %i.iq
  %min.epilog.iters.check = icmp eq i64 %i.io, 0
  %i.ir = and i32 %i.hu, -4                       ; 2 uses
  %n.vec578 = zext i32 %i.ir to i64               ; 2 uses
  %i.is = add nsw i64 %n.vec578, %i.ig
  %broadcast.splatinsert581.a = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat582 = shufflevector <4 x i32> %broadcast.splatinsert581.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat584 = shufflevector <2 x i32> %i.au, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert585 = insertelement <4 x float> poison, float %i.an, i64 0
  %broadcast.splat586 = shufflevector <4 x float> %broadcast.splatinsert585, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n595 = icmp eq i32 %i.ir, %i.hu
  %i.it = extractelement <2 x i32> %i.au, i64 0
  %i.iu = extractelement <2 x i32> %i.ii, i64 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader444.preheader, %._crit_edge462
  %indvars.iv491 = phi i64 [ %i.ih, %.preheader444.preheader ], [ %indvars.iv.next492, %._crit_edge462 ] ; 3 uses
  %i.iv = sub nsw i64 %indvars.iv491, %i.ih
  %i.iw = mul nuw nsw i64 %i.iv, %i.im            ; 3 uses
  %i.ix = sub i64 %i.iw, %i.ig                    ; 4 uses
  %i.iy = trunc i64 %indvars.iv491 to i32
  %i.iz = mul i32 %i.ar, %i.iy
  %i.ja = add i32 %i.iz, %i.ik
  %i.jb = sitofp reassoc nsz arcp contract afn i32 %i.ja to float
  %i.jc = fmul reassoc nsz arcp contract afn float %i.an, %i.jb ; 3 uses
  br i1 %min.iters.check553, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check554, label %vec.epilog.ph, label %vector.ph555

vector.ph555:                                     ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert557 = insertelement <8 x float> poison, float %i.jc, i64 0 ; 4 uses
  %invariant.op = add i64 8, %i.ix
  %invariant.op665 = add i64 16, %i.ix
  %invariant.op667 = add i64 24, %i.ix
  br label %vector.body567

vector.body567:                                   ; preds = %vector.ph555, %vector.body567
  %index568 = phi i64 [ 0, %vector.ph555 ], [ %index.next573, %vector.body567 ] ; 3 uses
  %vec.ind569 = phi <8 x i32> [ %induction, %vector.ph555 ], [ %vec.ind.next574, %vector.body567 ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind569, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind569, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind569, splat (i32 24)
  %i.jd = add i64 %index568, %i.ig                ; 3 uses
  %i.je = add i64 %index568, %i.iw
  %.reass = add i64 %i.jd, %invariant.op
  %.reass666 = add i64 %i.jd, %invariant.op665
  %.reass668 = add i64 %i.jd, %invariant.op667
  %i.jf = mul <8 x i32> %broadcast.splat560, %vec.ind569
  %i.jg = mul <8 x i32> %broadcast.splat560, %step.add
  %i.jh = mul <8 x i32> %broadcast.splat560, %step.add.2
  %i.ji = mul <8 x i32> %broadcast.splat560, %step.add.3
  %i.jj = add <8 x i32> %i.jf, %broadcast.splat562
  %i.jk = add <8 x i32> %i.jg, %broadcast.splat562
  %i.jl = add <8 x i32> %i.jh, %broadcast.splat562
  %i.jm = add <8 x i32> %i.ji, %broadcast.splat562
  %i.jn = sitofp reassoc nsz arcp contract afn <8 x i32> %i.jj to <8 x float>
  %i.jo = sitofp reassoc nsz arcp contract afn <8 x i32> %i.jk to <8 x float>
  %i.jp = sitofp reassoc nsz arcp contract afn <8 x i32> %i.jl to <8 x float>
  %i.jq = sitofp reassoc nsz arcp contract afn <8 x i32> %i.jm to <8 x float>
  %i.jr = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.jn
  %i.js = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.jo
  %i.jt = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.jp
  %i.ju = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.jq
  %i.jv = shl i64 %i.je, 3
  %i.jw = shl i64 %.reass, 3
  %i.jx = shl i64 %.reass666, 3
  %i.jy = shl i64 %.reass668, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.jv
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.jw
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.jx
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.jy
  %interleaved.vec = shufflevector <8 x float> %i.jr, <8 x float> %broadcast.splatinsert557, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec, ptr %i.jz, align 8, !tbaa !22
  %interleaved.vec570 = shufflevector <8 x float> %i.js, <8 x float> %broadcast.splatinsert557, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec570, ptr %i.ka, align 8, !tbaa !22
  %interleaved.vec571 = shufflevector <8 x float> %i.jt, <8 x float> %broadcast.splatinsert557, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec571, ptr %i.kb, align 8, !tbaa !22
  %interleaved.vec572 = shufflevector <8 x float> %i.ju, <8 x float> %broadcast.splatinsert557, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec572, ptr %i.kc, align 8, !tbaa !22
  %index.next573 = add nuw i64 %index568, 32      ; 2 uses
  %vec.ind.next574 = add <8 x i32> %vec.ind569, splat (i32 32)
  %i.kd = icmp eq i64 %index.next573, %n.vec556
  br i1 %i.kd, label %middle.block575, label %vector.body567, !llvm.loop !194

middle.block575:                                  ; preds = %vector.body567
  br i1 %cmp.n576, label %._crit_edge462, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block575
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !127

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec556, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val577 = phi i64 [ %i.ip, %vec.epilog.iter.check ], [ %i.ig, %vector.main.loop.iter.check ]
  %broadcast.splatinsert579 = insertelement <4 x float> poison, float %i.jc, i64 0
  %i.ke = trunc i64 %bc.resume.val577 to i32
  %broadcast.splatinsert587 = insertelement <4 x i32> poison, i32 %i.ke, i64 0
  %broadcast.splat588 = shufflevector <4 x i32> %broadcast.splatinsert587, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction589 = add <4 x i32> %broadcast.splat588, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index590 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next593, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind591 = phi <4 x i32> [ %induction589, %vec.epilog.ph ], [ %vec.ind.next594, %vec.epilog.vector.body ] ; 2 uses
  %i.kf = add i64 %index590, %i.iw
  %i.kg = mul <4 x i32> %broadcast.splat582, %vec.ind591
  %i.kh = add <4 x i32> %i.kg, %broadcast.splat584
  %i.ki = sitofp reassoc nsz arcp contract afn <4 x i32> %i.kh to <4 x float>
  %i.kj = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat586, %i.ki
  %i.kk = shl i64 %i.kf, 3
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.kk
  %interleaved.vec592 = shufflevector <4 x float> %i.kj, <4 x float> %broadcast.splatinsert579, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec592, ptr %i.kl, align 8, !tbaa !22
  %index.next593 = add nuw i64 %index590, 4       ; 2 uses
  %vec.ind.next594 = add <4 x i32> %vec.ind591, splat (i32 4)
  %i.km = icmp eq i64 %index.next593, %n.vec578
  br i1 %i.km, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !195

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n595, label %._crit_edge462, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv487.ph = phi i64 [ %i.ig, %iter.check ], [ %i.ip, %vec.epilog.iter.check ], [ %i.is, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge465.split:                             ; preds = %._crit_edge462, %.preheader444.lr.ph, %.preheader445
  %i.kn = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.ko = and i32 %i.kn, 4112
  %or.cond420.not = icmp eq i32 %i.ko, 4112
  br i1 %or.cond420.not, label %bb.s, label %bb.t

._crit_edge462:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block575
  %indvars.iv.next492 = add nsw i64 %indvars.iv491, 1 ; 2 uses
  %lftr.wideiv494 = trunc i64 %indvars.iv.next492 to i32
  %exitcond495.not = icmp eq i32 %i.il, %lftr.wideiv494
  br i1 %exitcond495.not, label %._crit_edge465.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv487 = phi i64 [ %indvars.iv.next488, %vec.epilog.scalar.ph ], [ %indvars.iv487.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.kp = add i64 %i.ix, %indvars.iv487
  %i.kq = trunc i64 %indvars.iv487 to i32
  %i.kr = mul i32 %i.ar, %i.kq
  %i.ks = add i32 %i.kr, %i.it
  %i.kt = sitofp reassoc nsz arcp contract afn i32 %i.ks to float
  %i.ku = fmul reassoc nsz arcp contract afn float %i.an, %i.kt
  %.idx436 = shl i64 %i.kp, 3
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.idx436 ; 2 uses
  store float %i.ku, ptr %i.kv, align 8, !tbaa !22
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  store float %i.jc, ptr %i.kw, align 4, !tbaa !22
  %indvars.iv.next488 = add nsw i64 %indvars.iv487, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next488 to i32
  %exitcond490.not = icmp eq i32 %i.iu, %lftr.wideiv
  br i1 %exitcond490.not, label %._crit_edge462, label %vec.epilog.scalar.ph, !llvm.loop !196

bb.s:                                             ; preds = %._crit_edge465.split
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.ky = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #14 ; 0 uses
  %i.kz = load i64, ptr %9, align 8, !tbaa !125
  %i.la = add nsw i64 %i.kz, -1290608000
  %i.lb = sitofp reassoc nsz arcp contract afn i64 %i.la to double
  %i.lc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !126
  %i.le = sitofp reassoc nsz arcp contract afn i64 %i.ld to double
  %i.lf = fmul reassoc nsz arcp contract afn double %i.le, f0x3EB0C6F7A0B5ED8D
  %i.lg = fadd reassoc nsz arcp contract afn double %i.lf, %i.lb ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.lh = fsub reassoc nsz arcp contract afn double %i.lg, %.2432
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.kx, double noundef %i.lh) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge465.split
  %.3 = phi nsz double [ %.2432, %._crit_edge465.split ], [ %i.lg, %bb.s ] ; 2 uses
  %i.li = tail call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.dc, ptr noundef nonnull %i.q, double noundef %i.df, i32 noundef 3, ptr noundef nonnull %i.ia, i64 noundef %i.hy) #14
  %.not396 = icmp eq i32 %i.li, 0
  br i1 %.not396, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.ia) #14
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.lj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.lk = and i32 %i.lj, 4112
  %or.cond421.not = icmp eq i32 %i.lk, 4112
  br i1 %or.cond421.not, label %bb.w, label %.preheader.preheader

bb.w:                                             ; preds = %bb.v
  %i.ll = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.lm = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #14 ; 0 uses
  %i.ln = load i64, ptr %8, align 8, !tbaa !125
  %i.lo = add nsw i64 %i.ln, -1290608000
  %i.lp = sitofp reassoc nsz arcp contract afn i64 %i.lo to double
  %i.lq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !126
  %i.ls = sitofp reassoc nsz arcp contract afn i64 %i.lr to double
  %i.lt = fmul reassoc nsz arcp contract afn double %i.ls, f0x3EB0C6F7A0B5ED8D
  %i.lu = fadd reassoc nsz arcp contract afn double %i.lt, %i.lp ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.lv = fsub reassoc nsz arcp contract afn double %i.lu, %.3
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.ll, double noundef %i.lv) #14
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.w, %bb.v
  %.4 = phi nsz double [ %.3, %bb.v ], [ %i.lu, %bb.w ] ; 2 uses
  %i.lw = add i32 %i.ic, 1
  %i.lx = sub i32 %i.lw, %i.id
  %wide.trip.count504 = zext i32 %i.lx to i64
  %i.ly = extractelement <2 x i32> %i.fy, i64 0
  %i.lz = zext i32 %i.hu to i64
  %min.iters.check598 = icmp ult i32 %i.ly, 7
  %i.ma = and i32 %i.hu, -8                       ; 2 uses
  %n.vec600 = zext i32 %i.ma to i64               ; 2 uses
  %broadcast.splat604.a = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat606 = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert607 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat608 = shufflevector <8 x float> %broadcast.splatinsert607, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert609 = insertelement <8 x float> poison, float %i.aj, i64 0
  %broadcast.splat610 = shufflevector <8 x float> %broadcast.splatinsert609, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mb = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat610
  %cmp.n619 = icmp eq i32 %i.ma, %i.hu
  %i.mc = extractelement <2 x float> %i.v, i64 0
  %i.md = extractelement <2 x float> %i.v, i64 1
  %i.me = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aj
  %i.mf = zext i32 %i.hu to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge469
  %indvars.iv501 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next502, %._crit_edge469 ] ; 2 uses
  %i.mg = mul nuw nsw i64 %indvars.iv501, %i.lz   ; 2 uses
  br i1 %min.iters.check598, label %scalar.ph597.preheader, label %vector.ph599

vector.ph599:                                     ; preds = %.preheader
  %broadcast.splatinsert601 = insertelement <8 x i64> poison, i64 %i.mg, i64 0
  %broadcast.splat602 = shufflevector <8 x i64> %broadcast.splatinsert601, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body611

vector.body611:                                   ; preds = %vector.body611, %vector.ph599
  %index612 = phi i64 [ 0, %vector.ph599 ], [ %index.next616, %vector.body611 ]
  %vec.ind613 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph599 ], [ %vec.ind.next617, %vector.body611 ] ; 2 uses
  %i.mh = add nuw nsw <8 x i64> %broadcast.splat602, %vec.ind613
  %i.mi = shl nuw nsw <8 x i64> %i.mh, splat (i64 3)
  %wide.gep614 = getelementptr inbounds nuw i8, ptr %i.ia, <8 x i64> %i.mi ; 2 uses
  %i.mj = extractelement <8 x ptr> %wide.gep614, i64 0
  %wide.vec = load <16 x float>, ptr %i.mj, align 8, !tbaa !22 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec615 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mk = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat604.a ; 2 uses
  %i.ml = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec615, %broadcast.splat606 ; 2 uses
  %i.mm = fmul reassoc nsz arcp contract afn <8 x float> %i.mk, %i.mk
  %i.mn = fmul reassoc nsz arcp contract afn <8 x float> %i.ml, %i.ml
  %i.mo = fadd reassoc nsz arcp contract afn <8 x float> %i.mn, %i.mm
  %i.mp = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat608, %i.mo
  %i.mq = fmul reassoc nsz arcp contract afn <8 x float> %i.mp, %i.mb ; 3 uses
  %i.mr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.mq, splat (float 1.000000e+00)
  %i.ms = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.mq, zeroinitializer
  %i.mt = select reassoc nsz arcp contract afn <8 x i1> %i.ms, <8 x float> zeroinitializer, <8 x float> %i.mq
  %i.mu = select reassoc nsz arcp contract afn <8 x i1> %i.mr, <8 x float> splat (float 1.000000e+00), <8 x float> %i.mt ; 2 uses
  %i.mv = fmul reassoc nsz arcp contract afn <8 x float> %i.mu, %i.mu
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mv, <8 x ptr> align 4 %wide.gep614, <8 x i1> splat (i1 true)), !tbaa !22
  %index.next616 = add nuw i64 %index612, 8       ; 2 uses
  %vec.ind.next617 = add nuw nsw <8 x i64> %vec.ind613, splat (i64 8)
  %i.mw = icmp eq i64 %index.next616, %n.vec600
  br i1 %i.mw, label %middle.block618, label %vector.body611, !llvm.loop !197

middle.block618:                                  ; preds = %vector.body611
  br i1 %cmp.n619, label %._crit_edge469, label %scalar.ph597.preheader

scalar.ph597.preheader:                           ; preds = %.preheader, %middle.block618
  %indvars.iv496.ph = phi i64 [ 0, %.preheader ], [ %n.vec600, %middle.block618 ]
  br label %scalar.ph597

._crit_edge472.split:                             ; preds = %._crit_edge469
  %i.mx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.my = and i32 %i.mx, 4112
  %or.cond422.not = icmp eq i32 %i.my, 4112
  br i1 %or.cond422.not, label %bb.x, label %bb.y

._crit_edge469:                                   ; preds = %scalar.ph597, %middle.block618
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1 ; 2 uses
  %exitcond505.not = icmp eq i64 %indvars.iv.next502, %wide.trip.count504
  br i1 %exitcond505.not, label %._crit_edge472.split, label %.preheader

scalar.ph597:                                     ; preds = %scalar.ph597.preheader, %scalar.ph597
  %indvars.iv496 = phi i64 [ %indvars.iv.next497, %scalar.ph597 ], [ %indvars.iv496.ph, %scalar.ph597.preheader ] ; 2 uses
  %i.mz = add nuw nsw i64 %i.mg, %indvars.iv496
  %.idx437 = shl nuw nsw i64 %i.mz, 3
  %i.na = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.idx437 ; 3 uses
  %i.nb = load float, ptr %i.na, align 8, !tbaa !22
  %i.nc = fsub reassoc nsz arcp contract afn float %i.nb, %i.mc ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !22
  %i.nf = fsub reassoc nsz arcp contract afn float %i.ne, %i.md ; 2 uses
  %.neg438 = fmul reassoc nsz arcp contract afn float %i.nc, %i.nc
  %.neg439 = fmul reassoc nsz arcp contract afn float %i.nf, %i.nf
  %reass.add = fadd reassoc nsz arcp contract afn float %.neg439, %.neg438
  %i.ng = fsub reassoc nsz arcp contract afn float %i.ai, %reass.add
  %i.nh = fmul reassoc nsz arcp contract afn float %i.ng, %i.me ; 3 uses
  %i.ni = fcmp reassoc nsz arcp contract afn ogt float %i.nh, 1.000000e+00
  %i.nj = fcmp reassoc nsz arcp contract afn olt float %i.nh, 0.000000e+00
  %i.nk = select reassoc nsz arcp contract afn i1 %i.nj, float 0.000000e+00, float %i.nh
  %i.nl = select reassoc nsz arcp contract afn i1 %i.ni, float 1.000000e+00, float %i.nk ; 2 uses
  %i.nm = fmul reassoc nsz arcp contract afn float %i.nl, %i.nl
  store float %i.nm, ptr %i.na, align 8, !tbaa !22
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %exitcond500.not = icmp eq i64 %indvars.iv.next497, %i.mf
  br i1 %exitcond500.not, label %._crit_edge469, label %scalar.ph597, !llvm.loop !198

bb.x:                                             ; preds = %._crit_edge472.split
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.no = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #14 ; 0 uses
  %i.np = load i64, ptr %7, align 8, !tbaa !125
  %i.nq = add nsw i64 %i.np, -1290608000
  %i.nr = sitofp reassoc nsz arcp contract afn i64 %i.nq to double
  %i.ns = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !126
  %i.nu = sitofp reassoc nsz arcp contract afn i64 %i.nt to double
  %i.nv = fmul reassoc nsz arcp contract afn double %i.nu, f0x3EB0C6F7A0B5ED8D
  %i.nw = fadd reassoc nsz arcp contract afn double %i.nv, %i.nr ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.nx = fsub reassoc nsz arcp contract afn double %i.nw, %.4
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.nn, double noundef %i.nx) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge472.split
  %.5 = phi nsz double [ %.4, %._crit_edge472.split ], [ %i.nw, %bb.x ]
  %i.ny = extractelement <2 x i32> %i.fx, i64 0
  %i.nz = mul i32 %i.ny, %i.ar
  %i.oa = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.nz) ; 2 uses
  %i.ob = mul nsw i32 %i.ic, %i.ar
  %i.oc = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %i.ob) ; 2 uses
  %i.od = mul nsw i32 %i.id, %i.ar                ; 2 uses
  %i.oe = icmp slt i32 %i.od, %i.oc
  br i1 %i.oe, label %.lr.ph479, label %._crit_edge480.split

.lr.ph479:                                        ; preds = %bb.y
  %i.of = extractelement <2 x i32> %i.fo, i64 0   ; 2 uses
  %i.og = mul nsw i32 %i.of, %i.ar                ; 3 uses
  %i.oh = icmp slt i32 %i.og, %i.oa
  br i1 %i.oh, label %.lr.ph475.preheader, label %._crit_edge480.split

.lr.ph475.preheader:                              ; preds = %.lr.ph479
  %i.oi = mul nuw nsw i32 %i.ar, %i.ar
  %i.oj = uitofp nsz nneg i32 %i.oi to float      ; 2 uses
  %i.ok = sext i32 %i.og to i64                   ; 4 uses
  %i.ol = sext i32 %i.od to i64
  %wide.trip.count514 = sext i32 %i.oc to i64
  %wide.trip.count509 = sext i32 %i.oa to i64     ; 2 uses
  %i.om = zext i32 %i.hu to i64
  %i.on = sub nsw i64 %wide.trip.count509, %i.ok  ; 3 uses
  %min.iters.check622 = icmp ult i64 %i.on, 8
  %n.vec624 = and i64 %i.on, -8                   ; 3 uses
  %i.oo = add nsw i64 %n.vec624, %i.ok
  %broadcast.splatinsert631.a = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat632.a = shufflevector <8 x i32> %broadcast.splatinsert631.a, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat634 = shufflevector <2 x i32> %i.fo, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat636 = shufflevector <2 x i64> %i.ga, <2 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert637 = insertelement <8 x float> poison, float %i.oj, i64 0
  %broadcast.splat638 = shufflevector <8 x float> %broadcast.splatinsert637, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert639 = insertelement <8 x i32> poison, i32 %i.og, i64 0
  %broadcast.splat640 = shufflevector <8 x i32> %broadcast.splatinsert639, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction641 = add <8 x i32> %broadcast.splat640, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.op = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat638
  %cmp.n655 = icmp eq i64 %i.on, %n.vec624
  %i.oq = zext i32 %i.hu to i64
  %i.or = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.oj
  br label %.lr.ph475

._crit_edge480.split:                             ; preds = %._crit_edge476, %.lr.ph479, %bb.y
  tail call void @free(ptr noundef nonnull %i.ia) #14
  %i.os = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123 ; 2 uses
  %i.ot = and i32 %i.os, 4112
  %or.cond423.not = icmp eq i32 %i.ot, 4112
  br i1 %or.cond423.not, label %bb.z, label %bb.aa

.lr.ph475:                                        ; preds = %.lr.ph475.preheader, %._crit_edge476
  %indvars.iv511 = phi i64 [ %i.ol, %.lr.ph475.preheader ], [ %indvars.iv.next512, %._crit_edge476 ] ; 3 uses
  %i.ou = trunc nsw i64 %indvars.iv511 to i32     ; 2 uses
  %i.ov = srem i32 %i.ou, %i.ar                   ; 2 uses
  %i.ow = sdiv i32 %i.ou, %i.ar
  %i.ox = sub nsw i32 %i.ow, %i.id
  %i.oy = sext i32 %i.ox to i64
  %i.oz = mul nsw i64 %i.oy, %i.om                ; 2 uses
  %i.pa = sub nsw i32 %i.ar, %i.ov
  %i.pb = sitofp reassoc nsz arcp contract afn i32 %i.pa to float ; 2 uses
  %i.pc = sitofp reassoc nsz arcp contract afn i32 %i.ov to float ; 2 uses
  %i.pd = mul nsw i64 %indvars.iv511, %i.bc
  %i.pe = getelementptr [4 x i8], ptr %4, i64 %i.pd ; 2 uses
  br i1 %min.iters.check622, label %scalar.ph621.preheader, label %vector.ph623

vector.ph623:                                     ; preds = %.lr.ph475
  %broadcast.splatinsert625 = insertelement <8 x i64> poison, i64 %i.oz, i64 0
  %broadcast.splat626 = shufflevector <8 x i64> %broadcast.splatinsert625, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert627 = insertelement <8 x float> poison, float %i.pb, i64 0
  %broadcast.splat628 = shufflevector <8 x float> %broadcast.splatinsert627, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert629 = insertelement <8 x float> poison, float %i.pc, i64 0
  %broadcast.splat630 = shufflevector <8 x float> %broadcast.splatinsert629, <8 x float> poison, <8 x i32> zeroinitializer
  %invariant.op669 = add <8 x i64> %broadcast.splat626, %broadcast.splat636
  %invariant.gep = getelementptr [4 x i8], ptr %i.pe, i64 %i.ok
  br label %vector.body642

vector.body642:                                   ; preds = %vector.body642, %vector.ph623
  %index643 = phi i64 [ 0, %vector.ph623 ], [ %index.next652, %vector.body642 ] ; 2 uses
  %vec.ind644 = phi <8 x i32> [ %induction641, %vector.ph623 ], [ %vec.ind.next653, %vector.body642 ] ; 2 uses
  %vec.ind644.frozen = freeze <8 x i32> %vec.ind644 ; 2 uses
  %broadcast.splat632.frozen = freeze <8 x i32> %broadcast.splat632.a ; 2 uses
  %i.pf = sdiv <8 x i32> %vec.ind644.frozen, %broadcast.splat632.frozen ; 2 uses
  %i.pg = mul <8 x i32> %i.pf, %broadcast.splat632.frozen
  %.decomposed = sub <8 x i32> %vec.ind644.frozen, %i.pg ; 2 uses
  %i.ph = sub nsw <8 x i32> %i.pf, %broadcast.splat634
  %i.pi = sext <8 x i32> %i.ph to <8 x i64>       ; 2 uses
  %i.pj = add nsw <8 x i64> %broadcast.splat626, %i.pi
  %i.pk = shl nsw <8 x i64> %i.pj, splat (i64 3)
  %wide.gep645 = getelementptr inbounds nuw i8, ptr %i.ia, <8 x i64> %i.pk ; 2 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep645, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.pl = sub nsw <8 x i32> %broadcast.splat632.a, %.decomposed
  %i.pm = sitofp reassoc nsz arcp contract afn <8 x i32> %i.pl to <8 x float> ; 2 uses
  %i.pn = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.pm
  %wide.gep646 = getelementptr i8, <8 x ptr> %wide.gep645, i64 8
  %wide.masked.gather647 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep646, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.po = sitofp reassoc nsz arcp contract afn <8 x i32> %.decomposed to <8 x float> ; 2 uses
  %i.pp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather647, %i.po
  %i.pq = fadd reassoc nsz arcp contract afn <8 x float> %i.pp, %i.pn
  %i.pr = fmul reassoc nsz arcp contract afn <8 x float> %i.pq, %broadcast.splat628
  %.reass670 = add <8 x i64> %i.pi, %invariant.op669
  %i.ps = shl nsw <8 x i64> %.reass670, splat (i64 3)
  %wide.gep648 = getelementptr inbounds nuw i8, ptr %i.ia, <8 x i64> %i.ps ; 2 uses
  %wide.masked.gather649 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep648, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.pt = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather649, %i.pm
  %wide.gep650 = getelementptr i8, <8 x ptr> %wide.gep648, i64 8
  %wide.masked.gather651 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep650, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.pu = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather651, %i.po
  %i.pv = fadd reassoc nsz arcp contract afn <8 x float> %i.pu, %i.pt
  %i.pw = fmul reassoc nsz arcp contract afn <8 x float> %i.pv, %broadcast.splat630
  %i.px = fadd reassoc nsz arcp contract afn <8 x float> %i.pw, %i.pr
  %i.py = fmul reassoc nsz arcp contract afn <8 x float> %i.px, %i.op
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index643
  store <8 x float> %i.py, ptr %gep, align 4, !tbaa !22
  %index.next652 = add nuw i64 %index643, 8       ; 2 uses
  %vec.ind.next653 = add <8 x i32> %vec.ind644, splat (i32 8)
  %i.pz = icmp eq i64 %index.next652, %n.vec624
  br i1 %i.pz, label %middle.block654, label %vector.body642, !llvm.loop !199

middle.block654:                                  ; preds = %vector.body642
  br i1 %cmp.n655, label %._crit_edge476, label %scalar.ph621.preheader

scalar.ph621.preheader:                           ; preds = %.lr.ph475, %middle.block654
  %indvars.iv506.ph = phi i64 [ %i.ok, %.lr.ph475 ], [ %i.oo, %middle.block654 ]
  br label %scalar.ph621

._crit_edge476:                                   ; preds = %scalar.ph621, %middle.block654
  %indvars.iv.next512 = add nsw i64 %indvars.iv511, 1 ; 2 uses
  %exitcond515.not = icmp eq i64 %indvars.iv.next512, %wide.trip.count514
  br i1 %exitcond515.not, label %._crit_edge480.split, label %.lr.ph475

scalar.ph621:                                     ; preds = %scalar.ph621.preheader, %scalar.ph621
  %indvars.iv506 = phi i64 [ %indvars.iv.next507, %scalar.ph621 ], [ %indvars.iv506.ph, %scalar.ph621.preheader ] ; 3 uses
  %i.qa = trunc nsw i64 %indvars.iv506 to i32     ; 2 uses
  %i.qb = srem i32 %i.qa, %i.ar                   ; 2 uses
  %i.qc = sdiv i32 %i.qa, %i.ar
  %i.qd = sub nsw i32 %i.qc, %i.of
  %i.qe = sext i32 %i.qd to i64
  %i.qf = add nsw i64 %i.oz, %i.qe                ; 2 uses
  %.idx = shl nsw i64 %i.qf, 3
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.idx ; 2 uses
  %i.qh = load float, ptr %i.qg, align 8, !tbaa !22
  %i.qi = sub nsw i32 %i.ar, %i.qb
  %i.qj = sitofp reassoc nsz arcp contract afn i32 %i.qi to float ; 2 uses
  %i.qk = fmul reassoc nsz arcp contract afn float %i.qh, %i.qj
  %i.ql = getelementptr i8, ptr %i.qg, i64 8
  %i.qm = load float, ptr %i.ql, align 8, !tbaa !22
  %i.qn = sitofp reassoc nsz arcp contract afn i32 %i.qb to float ; 2 uses
  %i.qo = fmul reassoc nsz arcp contract afn float %i.qm, %i.qn
  %i.qp = fadd reassoc nsz arcp contract afn float %i.qo, %i.qk
  %i.qq = fmul reassoc nsz arcp contract afn float %i.qp, %i.pb
  %i.qr = add nsw i64 %i.qf, %i.oq
  %.idx407 = shl nsw i64 %i.qr, 3
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.idx407 ; 2 uses
  %i.qt = load float, ptr %i.qs, align 8, !tbaa !22
  %i.qu = fmul reassoc nsz arcp contract afn float %i.qt, %i.qj
  %i.qv = getelementptr i8, ptr %i.qs, i64 8
  %i.qw = load float, ptr %i.qv, align 8, !tbaa !22
  %i.qx = fmul reassoc nsz arcp contract afn float %i.qw, %i.qn
  %reass.add442 = fadd reassoc nsz arcp contract afn float %i.qx, %i.qu
  %reass.mul443 = fmul reassoc nsz arcp contract afn float %reass.add442, %i.pc
  %i.qy = fadd reassoc nsz arcp contract afn float %reass.mul443, %i.qq
  %i.qz = fmul reassoc nsz arcp contract afn float %i.qy, %i.or
  %i.ra = getelementptr [4 x i8], ptr %i.pe, i64 %indvars.iv506
  store float %i.qz, ptr %i.ra, align 4, !tbaa !22
  %indvars.iv.next507 = add nsw i64 %indvars.iv506, 1 ; 2 uses
  %exitcond510.not = icmp eq i64 %indvars.iv.next507, %wide.trip.count509
  br i1 %exitcond510.not, label %._crit_edge476, label %scalar.ph621, !llvm.loop !200

bb.z:                                             ; preds = %._crit_edge480.split
  %i.rb = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.rc = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #14 ; 0 uses
  %i.rd = load i64, ptr %6, align 8, !tbaa !125
  %i.re = add nsw i64 %i.rd, -1290608000
  %i.rf = sitofp reassoc nsz arcp contract afn i64 %i.re to double
  %i.rg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !126
  %i.ri = sitofp reassoc nsz arcp contract afn i64 %i.rh to double
  %i.rj = fmul reassoc nsz arcp contract afn double %i.ri, f0x3EB0C6F7A0B5ED8D
  %i.rk = fadd reassoc nsz arcp contract afn double %i.rj, %i.rf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.rl = fsub reassoc nsz arcp contract afn double %i.rk, %.5
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.rb, double noundef %i.rl) #14
  %.pre516 = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge480.split, %bb.z
  %i.rm = phi i32 [ %i.os, %._crit_edge480.split ], [ %.pre516, %bb.z ]
  %i.rn = and i32 %i.rm, 4112
  %or.cond424.not = icmp eq i32 %i.rn, 4112
  br i1 %or.cond424.not, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ro = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.rp = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #14 ; 0 uses
  %i.rq = load i64, ptr %5, align 8, !tbaa !125
  %i.rr = add nsw i64 %i.rq, -1290608000
  %i.rs = sitofp reassoc nsz arcp contract afn i64 %i.rr to double
  %i.rt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !126
  %i.rv = sitofp reassoc nsz arcp contract afn i64 %i.ru to double
  %i.rw = fmul reassoc nsz arcp contract afn double %i.rv, f0x3EB0C6F7A0B5ED8D
  %i.rx = fadd reassoc nsz arcp contract afn double %i.rw, %i.rs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.ry = fsub reassoc nsz arcp contract afn double %i.rx, %i.m
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.ro, double noundef %i.ry) #14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.q, %bb.aa, %bb.ab, %bb.r, %bb.u, %bb.d, %bb.e
  %.2 = phi i32 [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %bb.q ], [ 0, %bb.u ], [ 0, %bb.r ], [ 1, %bb.ab ], [ 1, %bb.aa ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_circle_get_area(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !15
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !23
  %i.j = fadd reassoc nsz arcp contract afn float %i.i, %i.g
  %i.k = load <2 x i32>, ptr %i.e, align 16, !tbaa !24
  %i.l = sitofp reassoc nsz arcp contract afn <2 x i32> %i.k to <2 x float> ; 3 uses
  %i.m = load <2 x float>, ptr %i.b, align 4, !tbaa !22
  %i.n = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.o = extractelement <2 x float> %i.l, i64 1   ; 2 uses
  %i.p = fcmp reassoc nsz arcp contract afn olt float %i.n, %i.o
  %i.q = select reassoc nsz arcp contract afn i1 %i.p, float %i.n, float %i.o
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.j ; 4 uses
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, f0x40C90FDB
  %i.t = fptoui float %i.s to i64
  %i.u = tail call i64 @llvm.umax.i64(i64 %i.t, i64 10) ; 5 uses
  %i.v = add i64 %i.u, 1                          ; 5 uses
  %i.w = shl i64 %i.v, 3
  %i.x = tail call ptr @dt_alloc_aligned(i64 noundef %i.w) #14 ; 12 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.x, i64 64) ]
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_points_to_transform.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = trunc i64 %i.v to i32
  %i.z = fmul reassoc nsz arcp contract afn <2 x float> %i.m, %i.l ; 5 uses
  store <2 x float> %i.z, ptr %i.x, align 64, !tbaa !22
  %i.aa = icmp ugt i64 %i.v, 1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.b
  %i.ab = uitofp reassoc nsz arcp contract afn i64 %i.u to float ; 2 uses
  %n.vec = and i64 %i.u, -8                       ; 3 uses
  %i.ac = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ab, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert45 = insertelement <8 x float> poison, float %i.r, i64 0
  %broadcast.splat46 = shufflevector <8 x float> %broadcast.splatinsert45, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat48 = shufflevector <2 x float> %i.z, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat50 = shufflevector <2 x float> %i.z, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ad = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i
  %index = phi i64 [ 0, %.lr.ph.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %.lr.ph.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ae = add <8 x i32> %vec.ind, splat (i32 -1)
  %i.af = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ae to <8 x float>
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %i.af, splat (float f0x40C90FDB)
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %i.ag, %i.ad
  %i.ai = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.ah) ; 2 uses
  %i.aj = extractvalue { <8 x float>, <8 x float> } %i.ai, 0
  %i.ak = extractvalue { <8 x float>, <8 x float> } %i.ai, 1
  %i.al = fmul reassoc nsz arcp contract afn <8 x float> %i.ak, %broadcast.splat46
  %i.am = fadd reassoc nsz arcp contract afn <8 x float> %i.al, %broadcast.splat48
  %i.an = shl i64 %index, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = fmul reassoc nsz arcp contract afn <8 x float> %i.aj, %broadcast.splat46
  %i.ar = fadd reassoc nsz arcp contract afn <8 x float> %i.aq, %broadcast.splat50
  %interleaved.vec = shufflevector <8 x float> %i.am, <8 x float> %i.ar, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ap, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block
  %i.at = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ab
  %i.au = extractelement <2 x float> %i.z, i64 0
  %i.av = extractelement <2 x float> %i.z, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %i.ac, %scalar.ph.preheader ] ; 4 uses
  %i.aw = trunc i64 %indvars.iv.i to i32
  %i.ax = add i32 %i.aw, -1
  %i.ay = sitofp reassoc nsz arcp contract afn i32 %i.ax to float
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, f0x40C90FDB
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, %i.at
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ba) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.bb = fmul reassoc nsz arcp contract afn float %cos.i, %i.r
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.au
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i ; 2 uses
  store float %i.bc, ptr %i.bd, align 8, !tbaa !22
  %i.be = fmul reassoc nsz arcp contract afn float %sin.i, %i.r
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %i.av
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store float %i.bf, ptr %i.bg, align 4, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.u
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !203

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !128
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bk = load i32, ptr %i.bj, align 16, !tbaa !122
  %i.bl = sitofp reassoc nsz arcp contract afn i32 %i.bk to double
  %sext = shl i64 %i.v, 32
  %i.bm = ashr exact i64 %sext, 32
  %i.bn = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %i.bi, ptr noundef nonnull %i.d, double noundef %i.bl, i32 noundef 3, ptr noundef nonnull %i.x, i64 noundef %i.bm) #14
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %_points_to_transform.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.bo = icmp sgt i32 %i.y, 1
  br i1 %i.bo, label %.lr.ph.preheader.i, label %_bounding_box.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = and i64 %i.v, 2147483647   ; 2 uses
  %i.bp = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %min.iters.check = icmp ult i64 %i.bp, 32
  br i1 %min.iters.check, label %.lr.ph.i23.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.preheader.i
  %n.vec53 = and i64 %i.bp, -32                   ; 3 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next81, %vector.body54 ] ; 6 uses
  %vec.phi = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.cw, %vector.body54 ] ; 2 uses
  %vec.phi56 = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.cx, %vector.body54 ] ; 2 uses
  %vec.phi57 = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.cy, %vector.body54 ] ; 2 uses
  %vec.phi58 = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.cz, %vector.body54 ] ; 2 uses
  %vec.phi59 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.cs, %vector.body54 ] ; 2 uses
  %vec.phi60 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.ct, %vector.body54 ] ; 2 uses
  %vec.phi61 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.cu, %vector.body54 ] ; 2 uses
  %vec.phi62 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.cv, %vector.body54 ] ; 2 uses
  %vec.phi63 = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.ck, %vector.body54 ] ; 2 uses
  %vec.phi64 = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.cl, %vector.body54 ] ; 2 uses
  %vec.phi65 = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.cm, %vector.body54 ] ; 2 uses
  %vec.phi66 = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.cn, %vector.body54 ] ; 2 uses
  %vec.phi67 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.cg, %vector.body54 ] ; 2 uses
  %vec.phi68 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.ch, %vector.body54 ] ; 2 uses
  %vec.phi69 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.ci, %vector.body54 ] ; 2 uses
  %vec.phi70 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.cj, %vector.body54 ] ; 2 uses
  %i.bq = shl i64 %index55, 3
  %i.br = shl i64 %index55, 3
  %i.bs = shl i64 %index55, 3
  %i.bt = shl i64 %index55, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bs
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 136
  %i.ca = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bt
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 200
  %wide.vec = load <16 x float>, ptr %i.bv, align 8, !tbaa !22 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec71 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec72 = load <16 x float>, ptr %i.bx, align 8, !tbaa !22 ; 2 uses
  %strided.vec73 = shufflevector <16 x float> %wide.vec72, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec74 = shufflevector <16 x float> %wide.vec72, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec75 = load <16 x float>, ptr %i.bz, align 8, !tbaa !22 ; 2 uses
  %strided.vec76 = shufflevector <16 x float> %wide.vec75, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec77 = shufflevector <16 x float> %wide.vec75, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec78 = load <16 x float>, ptr %i.cb, align 8, !tbaa !22 ; 2 uses
  %strided.vec79 = shufflevector <16 x float> %wide.vec78, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec80 = shufflevector <16 x float> %wide.vec78, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.cc = freeze <8 x float> %strided.vec         ; 3 uses
  %i.cd = freeze <8 x float> %strided.vec73       ; 3 uses
  %i.ce = freeze <8 x float> %strided.vec76       ; 3 uses
  %i.cf = freeze <8 x float> %strided.vec79       ; 3 uses
  %i.cg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.cc, <8 x float> %vec.phi67) ; 2 uses
  %i.ch = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.cd, <8 x float> %vec.phi68) ; 2 uses
  %i.ci = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ce, <8 x float> %vec.phi69) ; 2 uses
  %i.cj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.cf, <8 x float> %vec.phi70) ; 2 uses
  %i.ck = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cc, <8 x float> %vec.phi63) ; 2 uses
  %i.cl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cd, <8 x float> %vec.phi64) ; 2 uses
  %i.cm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ce, <8 x float> %vec.phi65) ; 2 uses
  %i.cn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cf, <8 x float> %vec.phi66) ; 2 uses
  %i.co = freeze <8 x float> %strided.vec71       ; 3 uses
  %i.cp = freeze <8 x float> %strided.vec74       ; 3 uses
  %i.cq = freeze <8 x float> %strided.vec77       ; 3 uses
  %i.cr = freeze <8 x float> %strided.vec80       ; 3 uses
  %i.cs = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.co, <8 x float> %vec.phi59) ; 2 uses
  %i.ct = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.cp, <8 x float> %vec.phi60) ; 2 uses
  %i.cu = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.cq, <8 x float> %vec.phi61) ; 2 uses
  %i.cv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.cr, <8 x float> %vec.phi62) ; 2 uses
  %i.cw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.co, <8 x float> %vec.phi) ; 2 uses
  %i.cx = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cp, <8 x float> %vec.phi56) ; 2 uses
  %i.cy = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cq, <8 x float> %vec.phi57) ; 2 uses
  %i.cz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cr, <8 x float> %vec.phi58) ; 2 uses
  %index.next81 = add nuw i64 %index55, 32        ; 2 uses
  %i.da = fcmp uno <8 x float> %i.co, %i.cc
  %i.db = fcmp uno <8 x float> %i.cp, %i.cd
  %i.dc = fcmp uno <8 x float> %i.cq, %i.ce
  %i.dd = fcmp uno <8 x float> %i.cr, %i.cf
  %i.de = or <8 x i1> %i.da, %i.db
  %i.df = or <8 x i1> %i.de, %i.dc
  %i.dg = or <8 x i1> %i.df, %i.dd
  %i.dh = bitcast <8 x i1> %i.dg to i8
  %i.di = icmp ne i8 %i.dh, 0                     ; 19 uses
  %i.dj = icmp eq i64 %index.next81, %n.vec53
  %i.dk = or i1 %i.di, %i.dj
  br i1 %i.dk, label %middle.block82, label %vector.body54, !llvm.loop !204

middle.block82:                                   ; preds = %vector.body54
  %i.dl = select i1 %i.di, <8 x float> %vec.phi, <8 x float> %i.cw
  %i.dm = select i1 %i.di, <8 x float> %vec.phi56, <8 x float> %i.cx
  %i.dn = select i1 %i.di, <8 x float> %vec.phi57, <8 x float> %i.cy
  %i.do = select i1 %i.di, <8 x float> %vec.phi58, <8 x float> %i.cz
  %i.dp = select i1 %i.di, <8 x float> %vec.phi59, <8 x float> %i.cs
  %i.dq = select i1 %i.di, <8 x float> %vec.phi60, <8 x float> %i.ct
  %i.dr = select i1 %i.di, <8 x float> %vec.phi61, <8 x float> %i.cu
  %i.ds = select i1 %i.di, <8 x float> %vec.phi62, <8 x float> %i.cv
  %i.dt = select i1 %i.di, <8 x float> %vec.phi63, <8 x float> %i.ck
  %i.du = select i1 %i.di, <8 x float> %vec.phi64, <8 x float> %i.cl
  %i.dv = select i1 %i.di, <8 x float> %vec.phi65, <8 x float> %i.cm
  %i.dw = select i1 %i.di, <8 x float> %vec.phi66, <8 x float> %i.cn
  %i.dx = select i1 %i.di, <8 x float> %vec.phi67, <8 x float> %i.cg
  %i.dy = select i1 %i.di, <8 x float> %vec.phi68, <8 x float> %i.ch
  %i.dz = select i1 %i.di, <8 x float> %vec.phi69, <8 x float> %i.ci
  %i.ea = select i1 %i.di, <8 x float> %vec.phi70, <8 x float> %i.cj
  %i.eb = select i1 %i.di, i64 %index55, i64 %n.vec53
  %rdx.minmax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.dl, <8 x float> %i.dm)
  %rdx.minmax83 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax, <8 x float> %i.dn)
  %rdx.minmax84 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax83, <8 x float> %i.do)
  %i.ec = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax84)
  %i.ed = or disjoint i64 %i.eb, 1
  %rdx.minmax85 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.dp, <8 x float> %i.dq)
  %rdx.minmax86 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax85, <8 x float> %i.dr)
  %rdx.minmax87 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax86, <8 x float> %i.ds)
  %i.ee = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax87)
  %rdx.minmax88 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.dt, <8 x float> %i.du)
  %rdx.minmax89 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax88, <8 x float> %i.dv)
  %rdx.minmax90 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax89, <8 x float> %i.dw)
  %i.ef = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax90)
  %rdx.minmax91 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.dx, <8 x float> %i.dy)
  %rdx.minmax92 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax91, <8 x float> %i.dz)
  %rdx.minmax93 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax92, <8 x float> %i.ea)
  %i.eg = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax93)
  %cmp.n94 = icmp ne i64 %i.bp, %n.vec53
  %.not98 = or i1 %cmp.n94, %i.di
  %i.eh = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.ec, i64 1 ; 2 uses
  %i.ej = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.ee, i64 1 ; 2 uses
  br i1 %.not98, label %.lr.ph.i23.preheader, label %_bounding_box.exit

.lr.ph.i23.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block82
  %indvars.iv.i24.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.ed, %middle.block82 ]
  %.ph = phi <2 x float> [ splat (float f0x00800000), %.lr.ph.preheader.i ], [ %i.ei, %middle.block82 ]
  %.ph99 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph.preheader.i ], [ %i.ek, %middle.block82 ]
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader, %.lr.ph.i23
  %indvars.iv.i24 = phi i64 [ %indvars.iv.next.i26, %.lr.ph.i23 ], [ %indvars.iv.i24.ph, %.lr.ph.i23.preheader ] ; 2 uses
  %i.el = phi <2 x float> [ %i.eq, %.lr.ph.i23 ], [ %.ph, %.lr.ph.i23.preheader ]
  %i.em = phi <2 x float> [ %i.ep, %.lr.ph.i23 ], [ %.ph99, %.lr.ph.i23.preheader ]
  %.idx.i25 = shl nuw nsw i64 %indvars.iv.i24, 3
  %i.en = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i25
  %i.eo = load <2 x float>, ptr %i.en, align 8, !tbaa !22 ; 2 uses
  %i.ep = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.eo, <2 x float> %i.em) ; 2 uses
  %i.eq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.eo, <2 x float> %i.el) ; 2 uses
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i24, 1 ; 2 uses
  %exitcond.not.i27 = icmp eq i64 %indvars.iv.next.i26, %wide.trip.count.i
  br i1 %exitcond.not.i27, label %_bounding_box.exit, label %.lr.ph.i23, !llvm.loop !205

_bounding_box.exit:                               ; preds = %.lr.ph.i23, %middle.block82, %bb.c
  %i.er = phi <2 x float> [ splat (float f0x00800000), %bb.c ], [ %i.ei, %middle.block82 ], [ %i.eq, %.lr.ph.i23 ]
  %i.es = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.c ], [ %i.ek, %middle.block82 ], [ %i.ep, %.lr.ph.i23 ] ; 3 uses
  %i.et = extractelement <2 x float> %i.es, i64 0
  %i.eu = fptosi float %i.et to i32
  store i32 %i.eu, ptr %5, align 4, !tbaa !24
  %i.ev = extractelement <2 x float> %i.es, i64 1
  %i.ew = fptosi float %i.ev to i32
  store i32 %i.ew, ptr %6, align 4, !tbaa !24
  %i.ex = fsub reassoc nsz arcp contract afn <2 x float> %i.er, %i.es
  %i.ey = fptosi <2 x float> %i.ex to <2 x i32>   ; 2 uses
  %i.ez = extractelement <2 x i32> %i.ey, i64 0
  store i32 %i.ez, ptr %3, align 4, !tbaa !24
  %i.fa = extractelement <2 x i32> %i.ey, i64 1
  store i32 %i.fa, ptr %4, align 4, !tbaa !24
  br label %_points_to_transform.exit.sink.split

_points_to_transform.exit.sink.split:             ; preds = %.loopexit, %_bounding_box.exit
  %.0.ph = phi i32 [ 1, %_bounding_box.exit ], [ 0, %.loopexit ]
  tail call void @free(ptr noundef nonnull %i.x) #14
  br label %_points_to_transform.exit

_points_to_transform.exit:                        ; preds = %_points_to_transform.exit.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.ph, %_points_to_transform.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_circle_get_source_area(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !15
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !23
  %i.j = fadd reassoc nsz arcp contract afn float %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load <2 x i32>, ptr %i.e, align 16, !tbaa !24
  %i.m = sitofp reassoc nsz arcp contract afn <2 x i32> %i.l to <2 x float> ; 3 uses
  %i.n = load <2 x float>, ptr %i.k, align 8, !tbaa !22
  %i.o = extractelement <2 x float> %i.m, i64 0   ; 2 uses
  %i.p = extractelement <2 x float> %i.m, i64 1   ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn olt float %i.o, %i.p
  %i.r = select reassoc nsz arcp contract afn i1 %i.q, float %i.o, float %i.p
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, %i.j ; 4 uses
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, f0x40C90FDB
  %i.u = fptoui float %i.t to i64
  %i.v = tail call i64 @llvm.umax.i64(i64 %i.u, i64 10) ; 5 uses
  %i.w = add i64 %i.v, 1                          ; 5 uses
  %i.x = shl i64 %i.w, 3
  %i.y = tail call ptr @dt_alloc_aligned(i64 noundef %i.x) #14 ; 12 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.y, i64 64) ]
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_points_to_transform.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = trunc i64 %i.w to i32
  %i.aa = fmul reassoc nsz arcp contract afn <2 x float> %i.n, %i.m ; 5 uses
  store <2 x float> %i.aa, ptr %i.y, align 64, !tbaa !22
  %i.ab = icmp ugt i64 %i.w, 1
  br i1 %i.ab, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.b
  %i.ac = uitofp reassoc nsz arcp contract afn i64 %i.v to float ; 2 uses
  %n.vec = and i64 %i.v, -8                       ; 3 uses
  %i.ad = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert44 = insertelement <8 x float> poison, float %i.s, i64 0
  %broadcast.splat45 = shufflevector <8 x float> %broadcast.splatinsert44, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat47 = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat49 = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ae = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i
  %index = phi i64 [ 0, %.lr.ph.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %.lr.ph.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.af = add <8 x i32> %vec.ind, splat (i32 -1)
  %i.ag = sitofp reassoc nsz arcp contract afn <8 x i32> %i.af to <8 x float>
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %i.ag, splat (float f0x40C90FDB)
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.ah, %i.ae
  %i.aj = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.ai) ; 2 uses
  %i.ak = extractvalue { <8 x float>, <8 x float> } %i.aj, 0
  %i.al = extractvalue { <8 x float>, <8 x float> } %i.aj, 1
  %i.am = fmul reassoc nsz arcp contract afn <8 x float> %i.al, %broadcast.splat45
  %i.an = fadd reassoc nsz arcp contract afn <8 x float> %i.am, %broadcast.splat47
  %i.ao = shl i64 %index, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = fmul reassoc nsz arcp contract afn <8 x float> %i.ak, %broadcast.splat45
  %i.as = fadd reassoc nsz arcp contract afn <8 x float> %i.ar, %broadcast.splat49
  %interleaved.vec = shufflevector <8 x float> %i.an, <8 x float> %i.as, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.aq, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block
  %i.au = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ac
  %i.av = extractelement <2 x float> %i.aa, i64 0
  %i.aw = extractelement <2 x float> %i.aa, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %i.ad, %scalar.ph.preheader ] ; 4 uses
  %i.ax = trunc i64 %indvars.iv.i to i32
  %i.ay = add i32 %i.ax, -1
  %i.az = sitofp reassoc nsz arcp contract afn i32 %i.ay to float
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, f0x40C90FDB
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, %i.au
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bb) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.bc = fmul reassoc nsz arcp contract afn float %cos.i, %i.s
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.av
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i ; 2 uses
  store float %i.bd, ptr %i.be, align 8, !tbaa !22
  %i.bf = fmul reassoc nsz arcp contract afn float %sin.i, %i.s
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bf, %i.aw
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store float %i.bg, ptr %i.bh, align 4, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.v
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !207

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.b
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bl = load i32, ptr %i.bk, align 16, !tbaa !122
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.bl to double
  %sext = shl i64 %i.w, 32
  %i.bn = ashr exact i64 %sext, 32
  %i.bo = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %i.bi, ptr noundef %i.bj, double noundef %i.bm, i32 noundef 3, ptr noundef nonnull %i.y, i64 noundef %i.bn) #14
  %.not = icmp eq i32 %i.bo, 0
  br i1 %.not, label %_points_to_transform.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.bp = icmp sgt i32 %i.z, 1
  br i1 %i.bp, label %.lr.ph.preheader.i, label %_bounding_box.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = and i64 %i.w, 2147483647   ; 2 uses
  %i.bq = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %min.iters.check = icmp ult i64 %i.bq, 32
  br i1 %min.iters.check, label %.lr.ph.i22.preheader, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.preheader.i
  %n.vec52 = and i64 %i.bq, -32                   ; 3 uses
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph51
  %index54 = phi i64 [ 0, %vector.ph51 ], [ %index.next80, %vector.body53 ] ; 6 uses
  %vec.phi = phi <8 x float> [ splat (float f0x00800000), %vector.ph51 ], [ %i.cx, %vector.body53 ] ; 2 uses
  %vec.phi55 = phi <8 x float> [ splat (float f0x00800000), %vector.ph51 ], [ %i.cy, %vector.body53 ] ; 2 uses
  %vec.phi56 = phi <8 x float> [ splat (float f0x00800000), %vector.ph51 ], [ %i.cz, %vector.body53 ] ; 2 uses
  %vec.phi57 = phi <8 x float> [ splat (float f0x00800000), %vector.ph51 ], [ %i.da, %vector.body53 ] ; 2 uses
  %vec.phi58 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph51 ], [ %i.ct, %vector.body53 ] ; 2 uses
  %vec.phi59 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph51 ], [ %i.cu, %vector.body53 ] ; 2 uses
  %vec.phi60 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph51 ], [ %i.cv, %vector.body53 ] ; 2 uses
  %vec.phi61 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph51 ], [ %i.cw, %vector.body53 ] ; 2 uses
  %vec.phi62 = phi <8 x float> [ splat (float f0x00800000), %vector.ph51 ], [ %i.cl, %vector.body53 ] ; 2 uses
  %vec.phi63 = phi <8 x float> [ splat (float f0x00800000), %vector.ph51 ], [ %i.cm, %vector.body53 ] ; 2 uses
  %vec.phi64 = phi <8 x float> [ splat (float f0x00800000), %vector.ph51 ], [ %i.cn, %vector.body53 ] ; 2 uses
  %vec.phi65 = phi <8 x float> [ splat (float f0x00800000), %vector.ph51 ], [ %i.co, %vector.body53 ] ; 2 uses
  %vec.phi66 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph51 ], [ %i.ch, %vector.body53 ] ; 2 uses
  %vec.phi67 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph51 ], [ %i.ci, %vector.body53 ] ; 2 uses
  %vec.phi68 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph51 ], [ %i.cj, %vector.body53 ] ; 2 uses
  %vec.phi69 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph51 ], [ %i.ck, %vector.body53 ] ; 2 uses
  %i.br = shl i64 %index54, 3
  %i.bs = shl i64 %index54, 3
  %i.bt = shl i64 %index54, 3
  %i.bu = shl i64 %index54, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.br
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bt
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 136
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bu
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 200
  %wide.vec = load <16 x float>, ptr %i.bw, align 8, !tbaa !22 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec70 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec71 = load <16 x float>, ptr %i.by, align 8, !tbaa !22 ; 2 uses
  %strided.vec72 = shufflevector <16 x float> %wide.vec71, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec73 = shufflevector <16 x float> %wide.vec71, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec74 = load <16 x float>, ptr %i.ca, align 8, !tbaa !22 ; 2 uses
  %strided.vec75 = shufflevector <16 x float> %wide.vec74, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec76 = shufflevector <16 x float> %wide.vec74, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec77 = load <16 x float>, ptr %i.cc, align 8, !tbaa !22 ; 2 uses
  %strided.vec78 = shufflevector <16 x float> %wide.vec77, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec79 = shufflevector <16 x float> %wide.vec77, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.cd = freeze <8 x float> %strided.vec         ; 3 uses
  %i.ce = freeze <8 x float> %strided.vec72       ; 3 uses
  %i.cf = freeze <8 x float> %strided.vec75       ; 3 uses
  %i.cg = freeze <8 x float> %strided.vec78       ; 3 uses
  %i.ch = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.cd, <8 x float> %vec.phi66) ; 2 uses
  %i.ci = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ce, <8 x float> %vec.phi67) ; 2 uses
  %i.cj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.cf, <8 x float> %vec.phi68) ; 2 uses
  %i.ck = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.cg, <8 x float> %vec.phi69) ; 2 uses
  %i.cl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cd, <8 x float> %vec.phi62) ; 2 uses
  %i.cm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ce, <8 x float> %vec.phi63) ; 2 uses
  %i.cn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cf, <8 x float> %vec.phi64) ; 2 uses
  %i.co = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cg, <8 x float> %vec.phi65) ; 2 uses
  %i.cp = freeze <8 x float> %strided.vec70       ; 3 uses
  %i.cq = freeze <8 x float> %strided.vec73       ; 3 uses
  %i.cr = freeze <8 x float> %strided.vec76       ; 3 uses
  %i.cs = freeze <8 x float> %strided.vec79       ; 3 uses
  %i.ct = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.cp, <8 x float> %vec.phi58) ; 2 uses
  %i.cu = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.cq, <8 x float> %vec.phi59) ; 2 uses
  %i.cv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.cr, <8 x float> %vec.phi60) ; 2 uses
  %i.cw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.cs, <8 x float> %vec.phi61) ; 2 uses
  %i.cx = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cp, <8 x float> %vec.phi) ; 2 uses
  %i.cy = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cq, <8 x float> %vec.phi55) ; 2 uses
  %i.cz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cr, <8 x float> %vec.phi56) ; 2 uses
  %i.da = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cs, <8 x float> %vec.phi57) ; 2 uses
  %index.next80 = add nuw i64 %index54, 32        ; 2 uses
  %i.db = fcmp uno <8 x float> %i.cp, %i.cd
  %i.dc = fcmp uno <8 x float> %i.cq, %i.ce
  %i.dd = fcmp uno <8 x float> %i.cr, %i.cf
  %i.de = fcmp uno <8 x float> %i.cs, %i.cg
  %i.df = or <8 x i1> %i.db, %i.dc
  %i.dg = or <8 x i1> %i.df, %i.dd
  %i.dh = or <8 x i1> %i.dg, %i.de
  %i.di = bitcast <8 x i1> %i.dh to i8
  %i.dj = icmp ne i8 %i.di, 0                     ; 19 uses
  %i.dk = icmp eq i64 %index.next80, %n.vec52
  %i.dl = or i1 %i.dj, %i.dk
  br i1 %i.dl, label %middle.block81, label %vector.body53, !llvm.loop !208

middle.block81:                                   ; preds = %vector.body53
  %i.dm = select i1 %i.dj, <8 x float> %vec.phi, <8 x float> %i.cx
  %i.dn = select i1 %i.dj, <8 x float> %vec.phi55, <8 x float> %i.cy
  %i.do = select i1 %i.dj, <8 x float> %vec.phi56, <8 x float> %i.cz
  %i.dp = select i1 %i.dj, <8 x float> %vec.phi57, <8 x float> %i.da
  %i.dq = select i1 %i.dj, <8 x float> %vec.phi58, <8 x float> %i.ct
  %i.dr = select i1 %i.dj, <8 x float> %vec.phi59, <8 x float> %i.cu
  %i.ds = select i1 %i.dj, <8 x float> %vec.phi60, <8 x float> %i.cv
  %i.dt = select i1 %i.dj, <8 x float> %vec.phi61, <8 x float> %i.cw
  %i.du = select i1 %i.dj, <8 x float> %vec.phi62, <8 x float> %i.cl
  %i.dv = select i1 %i.dj, <8 x float> %vec.phi63, <8 x float> %i.cm
  %i.dw = select i1 %i.dj, <8 x float> %vec.phi64, <8 x float> %i.cn
  %i.dx = select i1 %i.dj, <8 x float> %vec.phi65, <8 x float> %i.co
  %i.dy = select i1 %i.dj, <8 x float> %vec.phi66, <8 x float> %i.ch
  %i.dz = select i1 %i.dj, <8 x float> %vec.phi67, <8 x float> %i.ci
  %i.ea = select i1 %i.dj, <8 x float> %vec.phi68, <8 x float> %i.cj
  %i.eb = select i1 %i.dj, <8 x float> %vec.phi69, <8 x float> %i.ck
  %i.ec = select i1 %i.dj, i64 %index54, i64 %n.vec52
  %rdx.minmax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.dm, <8 x float> %i.dn)
  %rdx.minmax82 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax, <8 x float> %i.do)
  %rdx.minmax83 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax82, <8 x float> %i.dp)
  %i.ed = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax83)
  %i.ee = or disjoint i64 %i.ec, 1
  %rdx.minmax84 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.dq, <8 x float> %i.dr)
  %rdx.minmax85 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax84, <8 x float> %i.ds)
  %rdx.minmax86 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax85, <8 x float> %i.dt)
  %i.ef = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax86)
  %rdx.minmax87 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.du, <8 x float> %i.dv)
  %rdx.minmax88 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax87, <8 x float> %i.dw)
  %rdx.minmax89 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax88, <8 x float> %i.dx)
  %i.eg = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax89)
  %rdx.minmax90 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.dy, <8 x float> %i.dz)
  %rdx.minmax91 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax90, <8 x float> %i.ea)
  %rdx.minmax92 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax91, <8 x float> %i.eb)
  %i.eh = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax92)
  %cmp.n93 = icmp ne i64 %i.bq, %n.vec52
  %.not97 = or i1 %cmp.n93, %i.dj
  %i.ei = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.ed, i64 1 ; 2 uses
  %i.ek = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.ef, i64 1 ; 2 uses
  br i1 %.not97, label %.lr.ph.i22.preheader, label %_bounding_box.exit

.lr.ph.i22.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block81
  %indvars.iv.i23.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.ee, %middle.block81 ]
  %.ph = phi <2 x float> [ splat (float f0x00800000), %.lr.ph.preheader.i ], [ %i.ej, %middle.block81 ]
  %.ph98 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph.preheader.i ], [ %i.el, %middle.block81 ]
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.preheader, %.lr.ph.i22
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i25, %.lr.ph.i22 ], [ %indvars.iv.i23.ph, %.lr.ph.i22.preheader ] ; 2 uses
  %i.em = phi <2 x float> [ %i.er, %.lr.ph.i22 ], [ %.ph, %.lr.ph.i22.preheader ]
  %i.en = phi <2 x float> [ %i.eq, %.lr.ph.i22 ], [ %.ph98, %.lr.ph.i22.preheader ]
  %.idx.i24 = shl nuw nsw i64 %indvars.iv.i23, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i24
  %i.ep = load <2 x float>, ptr %i.eo, align 8, !tbaa !22 ; 2 uses
  %i.eq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ep, <2 x float> %i.en) ; 2 uses
  %i.er = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ep, <2 x float> %i.em) ; 2 uses
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i25, %wide.trip.count.i
  br i1 %exitcond.not.i26, label %_bounding_box.exit, label %.lr.ph.i22, !llvm.loop !209

_bounding_box.exit:                               ; preds = %.lr.ph.i22, %middle.block81, %bb.c
  %i.es = phi <2 x float> [ splat (float f0x00800000), %bb.c ], [ %i.ej, %middle.block81 ], [ %i.er, %.lr.ph.i22 ]
  %i.et = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.c ], [ %i.el, %middle.block81 ], [ %i.eq, %.lr.ph.i22 ] ; 3 uses
  %i.eu = extractelement <2 x float> %i.et, i64 0
  %i.ev = fptosi float %i.eu to i32
  store i32 %i.ev, ptr %5, align 4, !tbaa !24
  %i.ew = extractelement <2 x float> %i.et, i64 1
  %i.ex = fptosi float %i.ew to i32
  store i32 %i.ex, ptr %6, align 4, !tbaa !24
  %i.ey = fsub reassoc nsz arcp contract afn <2 x float> %i.es, %i.et
  %i.ez = fptosi <2 x float> %i.ey to <2 x i32>   ; 2 uses
  %i.fa = extractelement <2 x i32> %i.ez, i64 0
  store i32 %i.fa, ptr %3, align 4, !tbaa !24
  %i.fb = extractelement <2 x i32> %i.ez, i64 1
  store i32 %i.fb, ptr %4, align 4, !tbaa !24
end_hunk_0
