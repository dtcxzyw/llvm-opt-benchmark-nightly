Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/circle?download=true
inline.NumInlined: 75
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_circle_modify_property:bb.a
  %i.ap = select reassoc nsz arcp contract afn i1 %i.am, float %i.ai, float %i.ao
  %.pre = load i32, ptr %i.af, align 8, !tbaa !21
  %.pre76 = and i32 %.pre, 136
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !23
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %i.d ; 3 uses
  %i.at = fcmp reassoc nsz arcp contract afn ogt float %i.as, %i.ai
  %i.au = fcmp reassoc nsz arcp contract afn olt float %i.as, 5.000000e-04
  %i.av = select reassoc nsz arcp contract afn i1 %i.au, float 5.000000e-04, float %i.as
  %i.aw = select reassoc nsz arcp contract afn i1 %i.at, float %i.ai, float %i.av ; 2 uses
  store float %i.aw, ptr %i.aq, align 4, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %.thread75, %bb.i
  %.pre-phi = phi i32 [ %.pre76, %.thread75 ], [ %i.ah, %bb.i ]
  %i.ax = phi float [ %i.ap, %.thread75 ], [ %i.aw, %bb.i ] ; 4 uses
  %.not69 = icmp eq i32 %.pre-phi, 0
  %i.ay = select i1 %.not69, ptr @.str.3, ptr @.str.2
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.ay, float noundef %i.ax) #14
  %i.az = load float, ptr %4, align 4, !tbaa !22
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, %i.ax
  store float %i.ba, ptr %4, align 4, !tbaa !22
  %i.bb = load float, ptr %7, align 4, !tbaa !22
  %i.bc = fdiv reassoc nsz arcp contract afn float %i.ai, %i.ax
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bb, float %i.bc)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.j
  %.sink81 = phi float [ %i.bd, %bb.j ], [ %i.ae, %bb.g ]
  %.sink = phi float [ %i.ax, %bb.j ], [ %i.x, %bb.g ]
  store float %.sink81, ptr %7, align 4, !tbaa !22
  %i.be = load float, ptr %6, align 4, !tbaa !22
  %i.bf = fdiv reassoc nsz arcp contract afn float 5.000000e-04, %.sink
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.be, float %i.bf)
  store float %i.bg, ptr %6, align 4, !tbaa !22
  %i.bh = load i32, ptr %5, align 4, !tbaa !24
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %5, align 4, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.d
  ret void
}

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
  %i.ac = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ab, splat (float f0x40C90FDB)
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
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !174

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
  %i.as = fmul reassoc nnan nsz arcp contract afn float %i.ar, f0x40C90FDB
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
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !175

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
  %i.ah = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ag, splat (float f0x40C90FDB)
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
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !176

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
  %i.ba = fmul reassoc nnan nsz arcp contract afn float %i.az, f0x40C90FDB
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
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %scalar.ph, !llvm.loop !177

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
  br i1 %i.ck, label %middle.block65, label %vector.body56, !llvm.loop !178

middle.block65:                                   ; preds = %vector.body56
  %cmp.n66 = icmp eq i64 %n.vec51, %wide.trip.count.i
  br i1 %cmp.n66, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block65
  %min.epilog.iters.check = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !181

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
end_hunk_0
begin_hunk_1_@_circle_get_mask:bb.a

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
  %wide.vec = load <16 x float>, ptr %i.et, align 64, !tbaa !22, !alias.scope !195 ; 2 uses
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
  store <8 x float> %i.ff, ptr %i.fg, align 32, !tbaa !22, !alias.scope !196, !noalias !195
  %index.next176 = add nuw i64 %index174, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next176, %n.vec164
  br i1 %i.fh, label %middle.block177, label %vector.body173, !llvm.loop !191

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
  br i1 %exitcond136.not.1, label %._crit_edge125, label %.lr.ph124, !llvm.loop !192

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
  %i.hp = fmul reassoc nnan nsz arcp contract afn double %i.ho, f0x3EB0C6F7A0B5ED8D
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
  %i.i = fmul reassoc nnan nsz arcp contract afn double %i.h, f0x3EB0C6F7A0B5ED8D
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
  %i.am = load float, ptr %i.al, align 4, !tbaa !206 ; 3 uses
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
  %i.bp = fmul reassoc nnan nsz arcp contract afn double %i.bo, f0x3EB0C6F7A0B5ED8D
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
  %i.bw = and i32 %i.bv, 7
  %i.bx = icmp eq i32 %i.bw, 0
  %i.by = add nuw nsw i32 %i.bv, 8
  %i.bz = and i32 %i.by, 2147483640
  %i.ca = select i1 %i.bx, i32 %i.bv, i32 %i.bz   ; 6 uses
  %i.cb = zext nneg i32 %i.ca to i64              ; 5 uses
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = tail call ptr @dt_alloc_aligned(i64 noundef %i.cc) #14 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cd, i64 64) ]
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.ac, label %.preheader446

.preheader446:                                    ; preds = %bb.d
  %i.cf = lshr i64 %i.cb, 3                       ; 4 uses
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader446
  %i.cg = uitofp nneg i32 %i.ca to float          ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.ca, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.cf, 268435448               ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cg, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert529 = insertelement <8 x float> poison, float %i.ah, i64 0
  %broadcast.splat530 = shufflevector <8 x float> %broadcast.splatinsert529, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat532 = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat534 = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.ch = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind535 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next551, %vector.body ] ; 2 uses
  %i.ci = uitofp nneg <8 x i32> %vec.ind535 to <8 x float>
  %i.cj = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ci, splat (float f0x40C90FDB)
  %i.ck = fmul reassoc nsz arcp contract afn <8 x float> %i.cj, %i.ch
  %i.cl = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.ck) ; 2 uses
  %i.cm = extractvalue { <8 x float>, <8 x float> } %i.cl, 0
  %i.cn = extractvalue { <8 x float>, <8 x float> } %i.cl, 1
  %i.co = fmul reassoc nsz arcp contract afn <8 x float> %i.cn, %broadcast.splat530 ; 4 uses
  %i.cp = fmul reassoc nsz arcp contract afn <8 x float> %i.cm, %broadcast.splat530 ; 4 uses
  %i.cq = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %broadcast.splat532 ; 2 uses
  %i.cr = shl nuw nsw <8 x i64> %vec.ind, splat (i64 6)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.cd, <8 x i64> %i.cr ; 16 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cq, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %i.cp, %broadcast.splat534 ; 2 uses
  %wide.gep536 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cs, <8 x ptr> align 4 %wide.gep536, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep537 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cq, <8 x ptr> align 4 %wide.gep537, <8 x i1> splat (i1 true)), !tbaa !22
  %i.ct = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat534, %i.cp ; 2 uses
  %wide.gep538 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ct, <8 x ptr> align 4 %wide.gep538, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cu = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat532, %i.co ; 2 uses
  %wide.gep539 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cu, <8 x ptr> align 4 %wide.gep539, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep540 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cs, <8 x ptr> align 4 %wide.gep540, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep541 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cu, <8 x ptr> align 4 %wide.gep541, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep542 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ct, <8 x ptr> align 4 %wide.gep542, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cv = fadd reassoc nsz arcp contract afn <8 x float> %i.cp, %broadcast.splat532 ; 2 uses
  %wide.gep543 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cv, <8 x ptr> align 4 %wide.gep543, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cw = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %broadcast.splat534 ; 2 uses
  %wide.gep544 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 36
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cw, <8 x ptr> align 4 %wide.gep544, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep545 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 40
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cv, <8 x ptr> align 4 %wide.gep545, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cx = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat534, %i.co ; 2 uses
  %wide.gep546 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 44
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cx, <8 x ptr> align 4 %wide.gep546, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cy = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat532, %i.cp ; 2 uses
  %wide.gep547 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 48
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cy, <8 x ptr> align 4 %wide.gep547, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep548 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 52
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cw, <8 x ptr> align 4 %wide.gep548, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep549 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 56
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cy, <8 x ptr> align 4 %wide.gep549, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep550 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 60
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cx, <8 x ptr> align 4 %wide.gep550, <8 x i1> splat (i1 true)), !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next551 = add <8 x i32> %vec.ind535, splat (i32 8)
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.da = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cg
  %i.db = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.dc = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.dd = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader446
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !128 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dh = load i32, ptr %i.dg, align 16, !tbaa !122
  %i.di = sitofp reassoc nsz arcp contract afn i32 %i.dh to double ; 2 uses
  %i.dj = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %i.df, ptr noundef nonnull %i.q, double noundef %i.di, i32 noundef 3, ptr noundef nonnull %i.cd, i64 noundef %i.cb) #14
  %.not388 = icmp eq i32 %i.dj, 0
  br i1 %.not388, label %bb.e, label %bb.f

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dk = trunc nuw nsw i64 %indvars.iv to i32
  %i.dl = uitofp nsz nneg i32 %i.dk to float
  %i.dm = fmul reassoc nnan nsz arcp contract afn float %i.dl, f0x40C90FDB
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, %i.da
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.dn) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.do = insertelement <4 x float> poison, float %sin, i64 0
  %i.dp = insertelement <4 x float> %i.do, float %cos, i64 1
  %.idx527 = shl nuw nsw i64 %indvars.iv, 6
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx527 ; 2 uses
  %i.dr = fmul reassoc nsz arcp contract afn <4 x float> %i.dp, %i.dd ; 4 uses
  %i.ds = shufflevector <4 x float> %i.dc, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.dt = shufflevector <4 x float> %i.dr, <4 x float> %i.dc, <4 x i32> <i32 1, i32 0, i32 5, i32 4> ; 2 uses
  %i.du = fadd reassoc nsz arcp contract afn <4 x float> %i.ds, %i.dt
  %i.dv = fsub reassoc nsz arcp contract afn <4 x float> %i.ds, %i.dt
  %i.dw = shufflevector <4 x float> %i.du, <4 x float> %i.dv, <8 x i32> <i32 3, i32 2, i32 3, i32 5, i32 4, i32 2, i32 4, i32 5>
  store <8 x float> %i.dw, ptr %i.dq, align 64, !tbaa !22
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.dy = shufflevector <4 x float> %i.dc, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dr, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.ea = fadd reassoc nsz arcp contract afn <4 x float> %i.dy, %i.dz
  %i.eb = fsub reassoc nsz arcp contract afn <4 x float> %i.dy, %i.dz
  %i.ec = shufflevector <4 x float> %i.ea, <4 x float> %i.eb, <8 x i32> <i32 3, i32 2, i32 3, i32 5, i32 4, i32 2, i32 4, i32 5>
  store <8 x float> %i.ec, ptr %i.dx, align 32, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.cf
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !198

bb.e:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.cd) #14
  br label %bb.ac

bb.f:                                             ; preds = %._crit_edge
  %i.ed = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.ee = and i32 %i.ed, 4112
  %or.cond414.not = icmp eq i32 %i.ee, 4112
  br i1 %or.cond414.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.eg = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #14 ; 0 uses
  %i.eh = load i64, ptr %11, align 8, !tbaa !125
  %i.ei = add nsw i64 %i.eh, -1290608000
  %i.ej = sitofp reassoc nsz arcp contract afn i64 %i.ei to double
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !126
  %i.em = sitofp reassoc nsz arcp contract afn i64 %i.el to double
  %i.en = fmul reassoc nnan nsz arcp contract afn double %i.em, f0x3EB0C6F7A0B5ED8D
  %i.eo = fadd reassoc nsz arcp contract afn double %i.en, %i.ej ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.ep = fsub reassoc nsz arcp contract afn double %i.eo, %.0
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ef, double noundef %i.ep) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi nsz double [ %.0, %bb.f ], [ %i.eo, %bb.g ] ; 2 uses
  %.not481 = icmp eq i32 %i.ca, 0
  br i1 %.not481, label %._crit_edge455, label %.lr.ph454.preheader

.lr.ph454.preheader:                              ; preds = %bb.h
  %xtraiter = and i64 %i.cb, 1
  %i.eq = icmp eq i32 %i.ca, 1
  br i1 %i.eq, label %.lr.ph454.epil.preheader, label %.lr.ph454.preheader.new

.lr.ph454.preheader.new:                          ; preds = %.lr.ph454.preheader
  %unroll_iter = and i64 %i.cb, 2147483646
  br label %.lr.ph454

._crit_edge455.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge455, label %.lr.ph454.epil.preheader

.lr.ph454.epil.preheader:                         ; preds = %._crit_edge455.loopexit.unr-lcssa, %.lr.ph454.preheader
  %indvars.iv483.epil.init = phi i64 [ 0, %.lr.ph454.preheader ], [ %indvars.iv.next484.1, %._crit_edge455.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ splat (float f0x00800000), %.lr.ph454.preheader ], [ %i.hk, %._crit_edge455.loopexit.unr-lcssa ] ; 4 uses
  %.epil.init659 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph454.preheader ], [ %i.hl, %._crit_edge455.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod662 = trunc i32 %i.ca to i1
  tail call void @llvm.assume(i1 %lcmp.mod662)
  %.idx528.epil = shl nuw nsw i64 %indvars.iv483.epil.init, 3
  %i.er = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx528.epil ; 2 uses
  %i.es = load float, ptr %i.er, align 8, !tbaa !22 ; 2 uses
  %i.et = tail call i1 @llvm.is.fpclass.f32(float %i.es, /* (nan inf zero sub) */ i32 759)
  br i1 %i.et, label %._crit_edge455, label %bb.i

bb.i:                                             ; preds = %.lr.ph454.epil.preheader
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !22 ; 2 uses
  %i.ew = tail call i1 @llvm.is.fpclass.f32(float %i.ev, /* (nan inf zero sub) */ i32 759)
  br i1 %i.ew, label %._crit_edge455, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ex = insertelement <2 x float> poison, float %i.es, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %i.ev, i64 1 ; 4 uses
  %i.ez = fcmp reassoc nsz arcp contract afn olt <2 x float> %.epil.init659, %i.ey
  %i.fa = fcmp reassoc nsz arcp contract afn ogt <2 x float> %.epil.init, %i.ey
  %i.fb = select <2 x i1> %i.ez, <2 x float> %.epil.init659, <2 x float> %i.ey
  %i.fc = select <2 x i1> %i.fa, <2 x float> %.epil.init, <2 x float> %i.ey
  br label %._crit_edge455

._crit_edge455:                                   ; preds = %._crit_edge455.loopexit.unr-lcssa, %bb.j, %bb.i, %.lr.ph454.epil.preheader, %bb.h
  %i.fd = phi <2 x float> [ splat (float f0x00800000), %bb.h ], [ %i.hk, %._crit_edge455.loopexit.unr-lcssa ], [ %i.fc, %bb.j ], [ %.epil.init, %bb.i ], [ %.epil.init, %.lr.ph454.epil.preheader ]
  %i.fe = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.h ], [ %i.hl, %._crit_edge455.loopexit.unr-lcssa ], [ %i.fb, %bb.j ], [ %.epil.init659, %bb.i ], [ %.epil.init659, %.lr.ph454.epil.preheader ]
  %i.ff = insertelement <2 x float> poison, float %i.am, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fh = fmul reassoc nsz arcp contract afn <2 x float> %i.fe, %i.fg
  %i.fi = sitofp reassoc nsz arcp contract afn <2 x i32> %i.au to <2 x float> ; 2 uses
  %i.fj = fmul reassoc nsz arcp contract afn <2 x float> %i.fd, %i.fg
  %i.fk = fsub reassoc nsz arcp contract afn <2 x float> %i.fh, %i.fi
  %i.fl = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.fk)
  %i.fm = fptosi <2 x float> %i.fl to <2 x i32>
  %i.fn = sdiv <2 x i32> %i.fm, %i.az             ; 2 uses
  %i.fo = add nsw <2 x i32> %i.fn, splat (i32 -1) ; 2 uses
  %i.fp = icmp sgt <2 x i32> %i.fo, %i.ba
  %i.fq = icmp sgt <2 x i32> %i.fn, zeroinitializer
  %i.fr = select <2 x i1> %i.fq, <2 x i32> %i.fo, <2 x i32> zeroinitializer
  %i.fs = select <2 x i1> %i.fp, <2 x i32> %i.ba, <2 x i32> %i.fr ; 7 uses
  %i.ft = fsub reassoc nsz arcp contract afn <2 x float> %i.fj, %i.fi
  %i.fu = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ft)
  %i.fv = fptosi <2 x float> %i.fu to <2 x i32>
  %i.fw = sdiv <2 x i32> %i.fv, %i.az             ; 2 uses
  %i.fx = add nsw <2 x i32> %i.fw, splat (i32 2)  ; 2 uses
  %i.fy = icmp sgt <2 x i32> %i.fx, %i.ba
  %i.fz = icmp slt <2 x i32> %i.fw, splat (i32 -2)
  %i.ga = select <2 x i1> %i.fz, <2 x i32> zeroinitializer, <2 x i32> %i.fx
  %i.gb = select <2 x i1> %i.fy, <2 x i32> %i.ba, <2 x i32> %i.ga ; 5 uses
  %i.gc = sub <2 x i32> %i.gb, %i.fs              ; 4 uses
  %i.gd = add nuw <2 x i32> %i.gc, splat (i32 1)  ; 3 uses
  %i.ge = zext <2 x i32> %i.gd to <2 x i64>
  tail call void @free(ptr noundef nonnull %i.cd) #14
  %i.gf = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.gg = and i32 %i.gf, 4112
  %or.cond419.not = icmp eq i32 %i.gg, 4112
  br i1 %or.cond419.not, label %bb.p, label %bb.q

.lr.ph454:                                        ; preds = %bb.o, %.lr.ph454.preheader.new
  %indvars.iv483 = phi i64 [ 0, %.lr.ph454.preheader.new ], [ %indvars.iv.next484.1, %bb.o ] ; 3 uses
  %i.gh = phi <2 x float> [ splat (float f0x00800000), %.lr.ph454.preheader.new ], [ %i.hk, %bb.o ] ; 4 uses
  %i.gi = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph454.preheader.new ], [ %i.hl, %bb.o ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph454.preheader.new ], [ %niter.next.1, %bb.o ]
  %.idx528 = shl nuw nsw i64 %indvars.iv483, 3
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx528 ; 2 uses
  %i.gk = load float, ptr %i.gj, align 16, !tbaa !22 ; 2 uses
  %i.gl = tail call i1 @llvm.is.fpclass.f32(float %i.gk, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gl, label %.lr.ph454.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph454
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !22 ; 2 uses
  %i.go = tail call i1 @llvm.is.fpclass.f32(float %i.gn, /* (nan inf zero sub) */ i32 759)
  br i1 %i.go, label %.lr.ph454.1, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gp = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gq = insertelement <2 x float> %i.gp, float %i.gn, i64 1 ; 4 uses
  %i.gr = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gi, %i.gq
  %i.gs = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gh, %i.gq
  %i.gt = select <2 x i1> %i.gr, <2 x float> %i.gi, <2 x float> %i.gq
  %i.gu = select <2 x i1> %i.gs, <2 x float> %i.gh, <2 x float> %i.gq
  br label %.lr.ph454.1

.lr.ph454.1:                                      ; preds = %.lr.ph454, %bb.k, %bb.l
  %i.gv = phi <2 x float> [ %i.gu, %bb.l ], [ %i.gh, %bb.k ], [ %i.gh, %.lr.ph454 ] ; 4 uses
  %i.gw = phi <2 x float> [ %i.gt, %bb.l ], [ %i.gi, %bb.k ], [ %i.gi, %.lr.ph454 ] ; 4 uses
  %indvars.iv.next484 = shl i64 %indvars.iv483, 3
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next484 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load float, ptr %i.gy, align 8, !tbaa !22 ; 2 uses
  %i.ha = tail call i1 @llvm.is.fpclass.f32(float %i.gz, /* (nan inf zero sub) */ i32 759)
  br i1 %i.ha, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph454.1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !22 ; 2 uses
  %i.hd = tail call i1 @llvm.is.fpclass.f32(float %i.hc, /* (nan inf zero sub) */ i32 759)
  br i1 %i.hd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.he = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.hf = insertelement <2 x float> %i.he, float %i.hc, i64 1 ; 4 uses
  %i.hg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gw, %i.hf
  %i.hh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gv, %i.hf
  %i.hi = select <2 x i1> %i.hg, <2 x float> %i.gw, <2 x float> %i.hf
  %i.hj = select <2 x i1> %i.hh, <2 x float> %i.gv, <2 x float> %i.hf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph454.1
  %i.hk = phi <2 x float> [ %i.hj, %bb.n ], [ %i.gv, %bb.m ], [ %i.gv, %.lr.ph454.1 ] ; 3 uses
  %i.hl = phi <2 x float> [ %i.hi, %bb.n ], [ %i.gw, %bb.m ], [ %i.gw, %.lr.ph454.1 ] ; 3 uses
  %indvars.iv.next484.1 = add nuw nsw i64 %indvars.iv483, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge455.loopexit.unr-lcssa, label %.lr.ph454

bb.p:                                             ; preds = %._crit_edge455
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.hn = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #14 ; 0 uses
  %i.ho = load i64, ptr %10, align 8, !tbaa !125
  %i.hp = add nsw i64 %i.ho, -1290608000
  %i.hq = sitofp reassoc nsz arcp contract afn i64 %i.hp to double
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !126
  %i.ht = sitofp reassoc nsz arcp contract afn i64 %i.hs to double
  %i.hu = fmul reassoc nnan nsz arcp contract afn double %i.ht, f0x3EB0C6F7A0B5ED8D
  %i.hv = fadd reassoc nsz arcp contract afn double %i.hu, %i.hq ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.hw = fsub reassoc nsz arcp contract afn double %i.hv, %.1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.hm, double noundef %i.hw) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge455
  %.2432 = phi nsz double [ %.1, %._crit_edge455 ], [ %i.hv, %bb.p ] ; 2 uses
  %i.hx = icmp slt <2 x i32> %i.gc, splat (i32 1) ; 2 uses
  %i.hy = extractelement <2 x i1> %i.hx, i64 0
  %i.hz = extractelement <2 x i1> %i.hx, i64 1
  %or.cond = select i1 %i.hy, i1 true, i1 %i.hz
  br i1 %or.cond, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ia = extractelement <2 x i32> %i.gd, i64 0   ; 12 uses
  %i.ib = zext i32 %i.ia to i64
  %i.ic = extractelement <2 x i32> %i.gd, i64 1
  %i.id = zext i32 %i.ic to i64
  %i.ie = mul nuw nsw i64 %i.id, %i.ib            ; 2 uses
  %i.if = shl i64 %i.ie, 3
  %i.ig = tail call ptr @dt_alloc_aligned(i64 noundef %i.if) #14 ; 17 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ig, i64 64) ]
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %bb.ac, label %.preheader445

.preheader445:                                    ; preds = %bb.r
  %i.ii = extractelement <2 x i32> %i.gb, i64 1   ; 3 uses
  %i.ij = extractelement <2 x i32> %i.fs, i64 1   ; 5 uses
  %.not393463 = icmp sgt i32 %i.ij, %i.ii
  br i1 %.not393463, label %._crit_edge465.split, label %.preheader444.lr.ph

.preheader444.lr.ph:                              ; preds = %.preheader445
  %i.ik = extractelement <2 x i32> %i.fs, i64 0
  %i.il = icmp sgt <2 x i32> %i.fs, %i.gb
  %.not410459 = extractelement <2 x i1> %i.il, i64 0
  %i.im = sext i32 %i.ik to i64                   ; 6 uses
  br i1 %.not410459, label %._crit_edge465.split, label %.preheader444.preheader

.preheader444.preheader:                          ; preds = %.preheader444.lr.ph
  %i.in = sext i32 %i.ij to i64                   ; 2 uses
  %i.io = add <2 x i32> %i.gb, splat (i32 1)      ; 2 uses
  %i.ip = extractelement <2 x i32> %i.gc, i64 0   ; 2 uses
  %i.iq = extractelement <2 x i32> %i.au, i64 1
  %i.ir = extractelement <2 x i32> %i.io, i64 1
  %i.is = zext i32 %i.ia to i64
  %min.iters.check553 = icmp ult i32 %i.ip, 3
  %min.iters.check554 = icmp ult i32 %i.ip, 31
  %i.it = zext i32 %i.ia to i64                   ; 2 uses
  %i.iu = and i64 %i.it, 28
  %n.vec556 = and i64 %i.it, 4294967264           ; 4 uses
  %i.iv = add nsw i64 %n.vec556, %i.im            ; 2 uses
  %broadcast.splatinsert559 = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat560 = shufflevector <8 x i32> %broadcast.splatinsert559, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat562 = shufflevector <2 x i32> %i.au, <2 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert563 = insertelement <8 x float> poison, float %i.an, i64 0
  %broadcast.splat564 = shufflevector <8 x float> %broadcast.splatinsert563, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat566 = shufflevector <2 x i32> %i.fs, <2 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat566, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iw = zext i32 %i.ia to i64
  %cmp.n576 = icmp eq i64 %n.vec556, %i.iw
  %min.epilog.iters.check = icmp eq i64 %i.iu, 0
  %i.ix = and i32 %i.ia, -4                       ; 2 uses
  %n.vec578 = zext i32 %i.ix to i64               ; 2 uses
  %i.iy = add nsw i64 %n.vec578, %i.im
  %broadcast.splatinsert581 = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat582 = shufflevector <4 x i32> %broadcast.splatinsert581, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat584 = shufflevector <2 x i32> %i.au, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert585 = insertelement <4 x float> poison, float %i.an, i64 0
  %broadcast.splat586 = shufflevector <4 x float> %broadcast.splatinsert585, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n595 = icmp eq i32 %i.ix, %i.ia
  %i.iz = extractelement <2 x i32> %i.au, i64 0
  %i.ja = extractelement <2 x i32> %i.io, i64 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader444.preheader, %._crit_edge462
  %indvars.iv491 = phi i64 [ %i.in, %.preheader444.preheader ], [ %indvars.iv.next492, %._crit_edge462 ] ; 3 uses
  %i.jb = sub nsw i64 %indvars.iv491, %i.in
  %i.jc = mul nuw nsw i64 %i.jb, %i.is            ; 3 uses
  %i.jd = sub i64 %i.jc, %i.im                    ; 4 uses
  %i.je = trunc i64 %indvars.iv491 to i32
  %i.jf = mul i32 %i.ar, %i.je
  %i.jg = add i32 %i.jf, %i.iq
  %i.jh = sitofp reassoc nsz arcp contract afn i32 %i.jg to float
  %i.ji = fmul reassoc nsz arcp contract afn float %i.an, %i.jh ; 3 uses
  br i1 %min.iters.check553, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check554, label %vec.epilog.ph, label %vector.ph555

vector.ph555:                                     ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert557 = insertelement <8 x float> poison, float %i.ji, i64 0 ; 4 uses
  %invariant.op = add i64 8, %i.jd
  %invariant.op665 = add i64 16, %i.jd
  %invariant.op667 = add i64 24, %i.jd
  br label %vector.body567

vector.body567:                                   ; preds = %vector.ph555, %vector.body567
  %index568 = phi i64 [ 0, %vector.ph555 ], [ %index.next573, %vector.body567 ] ; 3 uses
  %vec.ind569 = phi <8 x i32> [ %induction, %vector.ph555 ], [ %vec.ind.next574, %vector.body567 ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind569, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind569, splat (i32 16)
end_hunk_1
begin_hunk_2_@_circle_get_mask_roi:bb.a
  %broadcast.splatinsert631 = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat632 = shufflevector <8 x i32> %broadcast.splatinsert631, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat634 = shufflevector <2 x i32> %i.fs, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat636 = shufflevector <2 x i64> %i.ge, <2 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert637 = insertelement <8 x float> poison, float %i.op, i64 0
  %broadcast.splat638 = shufflevector <8 x float> %broadcast.splatinsert637, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert639 = insertelement <8 x i32> poison, i32 %i.om, i64 0
  %broadcast.splat640 = shufflevector <8 x i32> %broadcast.splatinsert639, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction641 = add <8 x i32> %broadcast.splat640, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ov = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat638
  %cmp.n655 = icmp eq i64 %i.ot, %n.vec624
  %i.ow = zext i32 %i.ia to i64
  %i.ox = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.op
  br label %.lr.ph475

._crit_edge480.split:                             ; preds = %._crit_edge476, %.lr.ph479, %bb.y
  tail call void @free(ptr noundef nonnull %i.ig) #14
  %i.oy = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123 ; 2 uses
  %i.oz = and i32 %i.oy, 4112
  %or.cond423.not = icmp eq i32 %i.oz, 4112
  br i1 %or.cond423.not, label %bb.z, label %bb.aa

.lr.ph475:                                        ; preds = %.lr.ph475.preheader, %._crit_edge476
  %indvars.iv511 = phi i64 [ %i.or, %.lr.ph475.preheader ], [ %indvars.iv.next512, %._crit_edge476 ] ; 3 uses
  %i.pa = trunc nsw i64 %indvars.iv511 to i32     ; 2 uses
  %i.pb = srem i32 %i.pa, %i.ar                   ; 2 uses
  %i.pc = sdiv i32 %i.pa, %i.ar
  %i.pd = sub nsw i32 %i.pc, %i.ij
  %i.pe = sext i32 %i.pd to i64
  %i.pf = mul nsw i64 %i.pe, %i.os                ; 2 uses
  %i.pg = sub nsw i32 %i.ar, %i.pb
  %i.ph = sitofp reassoc nsz arcp contract afn i32 %i.pg to float ; 2 uses
  %i.pi = sitofp reassoc nsz arcp contract afn i32 %i.pb to float ; 2 uses
  %i.pj = mul nsw i64 %indvars.iv511, %i.bc
  %i.pk = getelementptr [4 x i8], ptr %4, i64 %i.pj ; 2 uses
  br i1 %min.iters.check622, label %scalar.ph621.preheader, label %vector.ph623

vector.ph623:                                     ; preds = %.lr.ph475
  %broadcast.splatinsert625 = insertelement <8 x i64> poison, i64 %i.pf, i64 0
  %broadcast.splat626 = shufflevector <8 x i64> %broadcast.splatinsert625, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert627 = insertelement <8 x float> poison, float %i.ph, i64 0
  %broadcast.splat628 = shufflevector <8 x float> %broadcast.splatinsert627, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert629 = insertelement <8 x float> poison, float %i.pi, i64 0
  %broadcast.splat630 = shufflevector <8 x float> %broadcast.splatinsert629, <8 x float> poison, <8 x i32> zeroinitializer
  %invariant.op669 = add <8 x i64> %broadcast.splat626, %broadcast.splat636
  %invariant.gep = getelementptr [4 x i8], ptr %i.pk, i64 %i.oq
  br label %vector.body642

vector.body642:                                   ; preds = %vector.body642, %vector.ph623
  %index643 = phi i64 [ 0, %vector.ph623 ], [ %index.next652, %vector.body642 ] ; 2 uses
  %vec.ind644 = phi <8 x i32> [ %induction641, %vector.ph623 ], [ %vec.ind.next653, %vector.body642 ] ; 2 uses
  %vec.ind644.frozen = freeze <8 x i32> %vec.ind644 ; 2 uses
  %broadcast.splat632.frozen = freeze <8 x i32> %broadcast.splat632 ; 2 uses
  %i.pl = sdiv <8 x i32> %vec.ind644.frozen, %broadcast.splat632.frozen ; 2 uses
  %i.pm = mul <8 x i32> %i.pl, %broadcast.splat632.frozen
  %.decomposed = sub <8 x i32> %vec.ind644.frozen, %i.pm ; 2 uses
  %i.pn = sub nsw <8 x i32> %i.pl, %broadcast.splat634
  %i.po = sext <8 x i32> %i.pn to <8 x i64>       ; 2 uses
  %i.pp = add nsw <8 x i64> %broadcast.splat626, %i.po
  %i.pq = shl nsw <8 x i64> %i.pp, splat (i64 3)
  %wide.gep645 = getelementptr inbounds nuw i8, ptr %i.ig, <8 x i64> %i.pq ; 2 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep645, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.pr = sub nsw <8 x i32> %broadcast.splat632, %.decomposed
  %i.ps = sitofp reassoc nsz arcp contract afn <8 x i32> %i.pr to <8 x float> ; 2 uses
  %i.pt = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.ps
  %wide.gep646 = getelementptr i8, <8 x ptr> %wide.gep645, i64 8
  %wide.masked.gather647 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep646, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.pu = sitofp reassoc nsz arcp contract afn <8 x i32> %.decomposed to <8 x float> ; 2 uses
  %i.pv = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather647, %i.pu
  %i.pw = fadd reassoc nsz arcp contract afn <8 x float> %i.pv, %i.pt
  %i.px = fmul reassoc nsz arcp contract afn <8 x float> %i.pw, %broadcast.splat628
  %.reass670 = add <8 x i64> %i.po, %invariant.op669
  %i.py = shl nsw <8 x i64> %.reass670, splat (i64 3)
  %wide.gep648 = getelementptr inbounds nuw i8, ptr %i.ig, <8 x i64> %i.py ; 2 uses
  %wide.masked.gather649 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep648, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.pz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather649, %i.ps
  %wide.gep650 = getelementptr i8, <8 x ptr> %wide.gep648, i64 8
  %wide.masked.gather651 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep650, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.qa = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather651, %i.pu
  %i.qb = fadd reassoc nsz arcp contract afn <8 x float> %i.qa, %i.pz
  %i.qc = fmul reassoc nsz arcp contract afn <8 x float> %i.qb, %broadcast.splat630
  %i.qd = fadd reassoc nsz arcp contract afn <8 x float> %i.qc, %i.px
  %i.qe = fmul reassoc nsz arcp contract afn <8 x float> %i.qd, %i.ov
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index643
  store <8 x float> %i.qe, ptr %gep, align 4, !tbaa !22
  %index.next652 = add nuw i64 %index643, 8       ; 2 uses
  %vec.ind.next653 = add <8 x i32> %vec.ind644, splat (i32 8)
  %i.qf = icmp eq i64 %index.next652, %n.vec624
  br i1 %i.qf, label %middle.block654, label %vector.body642, !llvm.loop !204

middle.block654:                                  ; preds = %vector.body642
  br i1 %cmp.n655, label %._crit_edge476, label %scalar.ph621.preheader

scalar.ph621.preheader:                           ; preds = %.lr.ph475, %middle.block654
  %indvars.iv506.ph = phi i64 [ %i.oq, %.lr.ph475 ], [ %i.ou, %middle.block654 ]
  br label %scalar.ph621

._crit_edge476:                                   ; preds = %scalar.ph621, %middle.block654
  %indvars.iv.next512 = add nsw i64 %indvars.iv511, 1 ; 2 uses
  %exitcond515.not = icmp eq i64 %indvars.iv.next512, %wide.trip.count514
  br i1 %exitcond515.not, label %._crit_edge480.split, label %.lr.ph475

scalar.ph621:                                     ; preds = %scalar.ph621.preheader, %scalar.ph621
  %indvars.iv506 = phi i64 [ %indvars.iv.next507, %scalar.ph621 ], [ %indvars.iv506.ph, %scalar.ph621.preheader ] ; 3 uses
  %i.qg = trunc nsw i64 %indvars.iv506 to i32     ; 2 uses
  %i.qh = srem i32 %i.qg, %i.ar                   ; 2 uses
  %i.qi = sdiv i32 %i.qg, %i.ar
  %i.qj = sub nsw i32 %i.qi, %i.ol
  %i.qk = sext i32 %i.qj to i64
  %i.ql = add nsw i64 %i.pf, %i.qk                ; 2 uses
  %.idx = shl nsw i64 %i.ql, 3
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx ; 2 uses
  %i.qn = load float, ptr %i.qm, align 8, !tbaa !22
  %i.qo = sub nsw i32 %i.ar, %i.qh
  %i.qp = sitofp reassoc nsz arcp contract afn i32 %i.qo to float ; 2 uses
  %i.qq = fmul reassoc nsz arcp contract afn float %i.qn, %i.qp
  %i.qr = getelementptr i8, ptr %i.qm, i64 8
  %i.qs = load float, ptr %i.qr, align 8, !tbaa !22
  %i.qt = sitofp reassoc nsz arcp contract afn i32 %i.qh to float ; 2 uses
  %i.qu = fmul reassoc nsz arcp contract afn float %i.qs, %i.qt
  %i.qv = fadd reassoc nsz arcp contract afn float %i.qu, %i.qq
  %i.qw = fmul reassoc nsz arcp contract afn float %i.qv, %i.ph
  %i.qx = add nsw i64 %i.ql, %i.ow
  %.idx407 = shl nsw i64 %i.qx, 3
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx407 ; 2 uses
  %i.qz = load float, ptr %i.qy, align 8, !tbaa !22
  %i.ra = fmul reassoc nsz arcp contract afn float %i.qz, %i.qp
  %i.rb = getelementptr i8, ptr %i.qy, i64 8
  %i.rc = load float, ptr %i.rb, align 8, !tbaa !22
  %i.rd = fmul reassoc nsz arcp contract afn float %i.rc, %i.qt
  %reass.add442 = fadd reassoc nsz arcp contract afn float %i.rd, %i.ra
  %reass.mul443 = fmul reassoc nsz arcp contract afn float %reass.add442, %i.pi
  %i.re = fadd reassoc nsz arcp contract afn float %reass.mul443, %i.qw
  %i.rf = fmul reassoc nsz arcp contract afn float %i.re, %i.ox
  %i.rg = getelementptr [4 x i8], ptr %i.pk, i64 %indvars.iv506
  store float %i.rf, ptr %i.rg, align 4, !tbaa !22
  %indvars.iv.next507 = add nsw i64 %indvars.iv506, 1 ; 2 uses
  %exitcond510.not = icmp eq i64 %indvars.iv.next507, %wide.trip.count509
  br i1 %exitcond510.not, label %._crit_edge476, label %scalar.ph621, !llvm.loop !205

bb.z:                                             ; preds = %._crit_edge480.split
  %i.rh = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.ri = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #14 ; 0 uses
  %i.rj = load i64, ptr %6, align 8, !tbaa !125
  %i.rk = add nsw i64 %i.rj, -1290608000
  %i.rl = sitofp reassoc nsz arcp contract afn i64 %i.rk to double
  %i.rm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !126
  %i.ro = sitofp reassoc nsz arcp contract afn i64 %i.rn to double
  %i.rp = fmul reassoc nnan nsz arcp contract afn double %i.ro, f0x3EB0C6F7A0B5ED8D
  %i.rq = fadd reassoc nsz arcp contract afn double %i.rp, %i.rl
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.rr = fsub reassoc nsz arcp contract afn double %i.rq, %.5
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.rh, double noundef %i.rr) #14
  %.pre516 = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge480.split, %bb.z
  %i.rs = phi i32 [ %i.oy, %._crit_edge480.split ], [ %.pre516, %bb.z ]
  %i.rt = and i32 %i.rs, 4112
  %or.cond424.not = icmp eq i32 %i.rt, 4112
  br i1 %or.cond424.not, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ru = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.rv = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #14 ; 0 uses
  %i.rw = load i64, ptr %5, align 8, !tbaa !125
  %i.rx = add nsw i64 %i.rw, -1290608000
  %i.ry = sitofp reassoc nsz arcp contract afn i64 %i.rx to double
  %i.rz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !126
  %i.sb = sitofp reassoc nsz arcp contract afn i64 %i.sa to double
  %i.sc = fmul reassoc nnan nsz arcp contract afn double %i.sb, f0x3EB0C6F7A0B5ED8D
  %i.sd = fadd reassoc nsz arcp contract afn double %i.sc, %i.ry
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.se = fsub reassoc nsz arcp contract afn double %i.sd, %i.m
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.ru, double noundef %i.se) #14
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
  %i.ag = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.af, splat (float f0x40C90FDB)
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
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !207

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
  %i.az = fmul reassoc nnan nsz arcp contract afn float %i.ay, f0x40C90FDB
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
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !208

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
  br i1 %i.dk, label %middle.block82, label %vector.body54, !llvm.loop !209

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
  br i1 %exitcond.not.i27, label %_bounding_box.exit, label %.lr.ph.i23, !llvm.loop !210

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
  %i.ah = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ag, splat (float f0x40C90FDB)
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
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !211

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
  %i.ba = fmul reassoc nnan nsz arcp contract afn float %i.az, f0x40C90FDB
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
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !212

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
  br i1 %i.dl, label %middle.block81, label %vector.body53, !llvm.loop !213

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
  br i1 %exitcond.not.i26, label %_bounding_box.exit, label %.lr.ph.i22, !llvm.loop !214

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
  br label %_points_to_transform.exit.sink.split

_points_to_transform.exit.sink.split:             ; preds = %.loopexit, %_bounding_box.exit
  %.0.ph = phi i32 [ 1, %_bounding_box.exit ], [ 0, %.loopexit ]
  tail call void @free(ptr noundef nonnull %i.y) #14
  br label %_points_to_transform.exit

_points_to_transform.exit:                        ; preds = %_points_to_transform.exit.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.ph, %_points_to_transform.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_circle_events_mouse_moved(ptr noundef %0, float noundef %1, float noundef %2, double %3, i32 %4, float noundef %5, ptr noundef %6, i32 %7, ptr noundef %8, i32 noundef %9) #0 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 7 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 3 uses
  %i.e = alloca float, align 4                    ; 3 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %i.j = alloca float, align 4                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !142
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 116
  %i.n = load i32, ptr %i.m, align 4, !tbaa !143
  %.not112 = icmp eq i32 %i.n, 0
  br i1 %.not112, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !108 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.s = load float, ptr %i.r, align 8, !tbaa !144 ; 2 uses
  %i.t = fcmp reassoc nsz arcp contract afn ogt float %i.s, 0.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.t, float %i.s, float 1.000000e+00
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 156
  %i.v = load i32, ptr %i.u, align 4, !tbaa !145  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = uitofp nneg i32 %i.v to float
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.z = load i32, ptr %i.y, align 16, !tbaa !146
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to float
  %i.ab = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.aa, i64 1
  br label %dt_masks_get_image_size.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 2760
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !147 ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 156
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !145 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.aj = load i32, ptr %i.ai, align 16, !tbaa !146
  %i.ak = uitofp nneg i32 %i.ag to float
  %i.al = sitofp reassoc nsz arcp contract afn i32 %i.aj to float
  %i.am = insertelement <2 x float> poison, float %spec.select.i, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.al, i64 1
  %i.aq = fdiv reassoc nsz arcp contract afn <2 x float> %i.ap, %i.an
  br label %dt_masks_get_image_size.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 376
  %i.as = load <2 x i32>, ptr %i.ar, align 8, !tbaa !24
  %i.at = sitofp reassoc nsz arcp contract afn <2 x i32> %i.as to <2 x float>
  br label %dt_masks_get_image_size.exit

dt_masks_get_image_size.exit:                     ; preds = %bb.d, %bb.g, %bb.h
  %i.au = phi <2 x float> [ %i.ac, %bb.d ], [ %i.at, %bb.h ], [ %i.aq, %bb.g ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.aw = load <2 x i32>, ptr %i.av, align 16, !tbaa !24
  %i.ax = sitofp reassoc nsz arcp contract afn <2 x i32> %i.aw to <2 x float> ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ay = insertelement <2 x float> poison, float %1, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %2, i64 1
  %i.ba = fmul reassoc nsz arcp contract afn <2 x float> %i.au, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.bc = load <2 x float>, ptr %i.bb, align 4, !tbaa !22
  %i.bd = fadd reassoc nsz arcp contract afn <2 x float> %i.bc, %i.ba
  store <2 x float> %i.bd, ptr %i.a, align 8, !tbaa !22
  %i.be = call i32 @dt_dev_distort_backtransform(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a, i64 noundef 1) #14 ; 0 uses
  %i.bf = load i32, ptr %i.k, align 8, !tbaa !142
  %.not124 = icmp eq i32 %i.bf, 0
  br i1 %.not124, label %bb.j, label %bb.i

bb.i:                                             ; preds = %dt_masks_get_image_size.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bh = load ptr, ptr %6, align 8, !tbaa !15
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !17 ; 2 uses
  %i.bj = load float, ptr %i.a, align 8, !tbaa !22
  %i.bk = extractelement <2 x float> %i.ax, i64 0
  %i.bl = fdiv reassoc nsz arcp contract afn float %i.bj, %i.bk
  store float %i.bl, ptr %i.bi, align 4, !tbaa !22
  %i.bm = load float, ptr %i.bg, align 4, !tbaa !22
  %i.bn = extractelement <2 x float> %i.ax, i64 1
  %i.bo = fdiv reassoc nsz arcp contract afn float %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store float %i.bo, ptr %i.bp, align 4, !tbaa !22
  br label %bb.k

bb.j:                                             ; preds = %dt_masks_get_image_size.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.br = load <2 x float>, ptr %i.a, align 8, !tbaa !22
  %i.bs = fdiv reassoc nsz arcp contract afn <2 x float> %i.br, %i.ax
  store <2 x float> %i.bs, ptr %i.bq, align 8, !tbaa !22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @dt_masks_gui_form_create(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %9, ptr noundef %0) #14
  call void @dt_control_queue_redraw_center() #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ag

bb.l:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 132
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !148 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !21
  %i.by = and i32 %i.bx, 136
  %.not123 = icmp eq i32 %i.by, 0
  %i.bz = select reassoc nsz arcp contract afn i1 %.not123, float 1.000000e+00, float 5.000000e-01 ; 2 uses
  %i.ca = load ptr, ptr %6, align 8, !tbaa !15
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !17
  %i.cc = tail call reassoc nsz arcp contract afn float @dt_masks_drag_factor(ptr noundef nonnull %8, i32 noundef %9, i32 noundef %i.bu, i32 noundef 0) #14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !20
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ce, %i.cc ; 3 uses
  %i.cg = fcmp reassoc nsz arcp contract afn ogt float %i.cf, %i.bz
  %i.ch = fcmp reassoc nsz arcp contract afn olt float %i.cf, 5.000000e-04
  %spec.select = select reassoc nsz arcp contract afn i1 %i.ch, float 5.000000e-04, float %i.cf
  %i.ci = select reassoc nsz arcp contract afn i1 %i.cg, float %i.bz, float %spec.select
  store float %i.ci, ptr %i.cd, align 4, !tbaa !20
  tail call void @dt_masks_gui_form_create(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %9, ptr noundef %0) #14
  tail call void @dt_control_queue_redraw_center() #14
  br label %bb.ag

bb.n:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !149 ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !21
  %i.co = and i32 %i.cn, 136
  %.not122 = icmp eq i32 %i.co, 0
  %i.cp = select reassoc nsz arcp contract afn i1 %.not122, float 1.000000e+00, float 5.000000e-01 ; 2 uses
  %i.cq = load ptr, ptr %6, align 8, !tbaa !15
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !17 ; 2 uses
  %i.cs = tail call reassoc nsz arcp contract afn float @dt_masks_drag_factor(ptr noundef nonnull %8, i32 noundef %9, i32 noundef %i.ck, i32 noundef 1) #14
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !20 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 12 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !23
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, %i.cu
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cx, %i.cs
  %i.cz = fsub reassoc nsz arcp contract afn float %i.cy, %i.cu ; 3 uses
  %i.da = fcmp reassoc nsz arcp contract afn ogt float %i.cz, %i.cp
  %i.db = fcmp reassoc nsz arcp contract afn olt float %i.cz, 1.000000e-03
  %spec.select125 = select reassoc nsz arcp contract afn i1 %i.db, float 1.000000e-03, float %i.cz
  %i.dc = select reassoc nsz arcp contract afn i1 %i.da, float %i.cp, float %spec.select125
  store float %i.dc, ptr %i.cv, align 4, !tbaa !23
  tail call void @dt_masks_gui_form_create(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %9, ptr noundef %0) #14
  tail call void @dt_control_queue_redraw_center() #14
  br label %bb.ag

bb.p:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 172
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !150
  %.not113 = icmp eq i32 %i.de, 0
  br i1 %.not113, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call fastcc void @dt_masks_get_image_size(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %i.d, ptr noundef %i.e)
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !215
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1432
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !221
  %i.di = fmul reassoc nsz arcp contract afn double %i.dh, 7.000000e+00
  %i.dj = fpext reassoc nsz arcp contract afn float %5 to double
  %i.dk = fdiv reassoc nsz arcp contract afn double %i.di, %i.dj
  %i.dl = fptrunc reassoc nsz arcp contract afn double %i.dk to float ; 3 uses
  %i.dm = load float, ptr %i.b, align 4, !tbaa !22
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, %1 ; 3 uses
  %i.do = load float, ptr %i.c, align 4, !tbaa !22
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  call void @_circle_get_distance(float noundef %i.dn, float noundef %i.dp, float noundef %i.dl, ptr noundef nonnull %8, i32 noundef %9, i32 poison, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j)
  %i.dq = load i32, ptr %i.h, align 4, !tbaa !24
  %.not114 = icmp eq i32 %i.dq, 0
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 68 ; 4 uses
  br i1 %.not114, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 60
  store i32 1, ptr %i.ds, align 4, !tbaa !151
  store i32 1, ptr %i.dr, align 4, !tbaa !152
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 0, ptr %i.dt, align 8, !tbaa !153
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.du = load i32, ptr %i.g, align 4, !tbaa !24
  %.not115 = icmp eq i32 %i.du, 0
  br i1 %.not115, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 60
  store i32 1, ptr %i.dv, align 4, !tbaa !151
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 1, ptr %i.dw, align 8, !tbaa !153
  store i32 0, ptr %i.dr, align 4, !tbaa !152
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.dx = load i32, ptr %i.f, align 4, !tbaa !24
  %.not116 = icmp eq i32 %i.dx, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 60 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  br i1 %.not116, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 1, ptr %i.dy, align 4, !tbaa !151
  store i32 0, ptr %i.dz, align 8, !tbaa !153
  store i32 0, ptr %i.dr, align 4, !tbaa !152
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store i32 0, ptr %i.dy, align 4, !tbaa !151
  store i32 0, ptr %i.dz, align 8, !tbaa !153
  store i32 0, ptr %i.dr, align 4, !tbaa !152
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 84
  store i32 -1, ptr %i.ea, align 4, !tbaa !154
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i32 -1, ptr %i.eb, align 8, !tbaa !155
  br label %bb.ab

bb.x:                                             ; preds = %bb.t, %bb.v, %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 84 ; 2 uses
  store i32 -1, ptr %i.ec, align 4, !tbaa !154
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 2 uses
  store i32 -1, ptr %i.ed, align 8, !tbaa !155
  %i.ee = load ptr, ptr %8, align 8, !tbaa !30
  %i.ef = call ptr @g_list_nth_data(ptr noundef %i.ee, i32 noundef %9) #14 ; 2 uses
  %i.eg = fmul reassoc nsz arcp contract afn float %i.dl, %i.dl ; 2 uses
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !35 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !22
  %i.ek = fsub reassoc nsz arcp contract afn float %i.dn, %i.ej ; 2 uses
  %i.el = fmul reassoc nsz arcp contract afn float %i.ek, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.en = load float, ptr %i.em, align 4, !tbaa !22
  %i.eo = fsub reassoc nsz arcp contract afn float %i.dp, %i.en ; 2 uses
  %i.ep = fmul reassoc nsz arcp contract afn float %i.eo, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 76
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !222
  %.not118 = icmp eq i32 %i.er, 0
  %i.es = fadd reassoc nsz arcp contract afn float %i.ep, %i.el
  %i.et = fcmp reassoc nsz arcp contract afn olt float %i.es, %i.eg
  %or.cond = select i1 %.not118, i1 %i.et, i1 false
end_hunk_2
begin_hunk_3_@_circle_events_mouse_scrolled:bb.a
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.s = tail call i32 @gtk_accelerator_get_default_mod_mask() #14
  %i.t = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !24
  %i.u = or i32 %i.t, %4
  %i.v = and i32 %i.u, %i.s
  %.not71 = icmp eq i32 %i.v, 0
  br i1 %.not71, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.a, align 8, !tbaa !21
  %i.x = and i32 %i.w, 136
  %.not66 = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not66, ptr @.str.1, ptr @.str
  %i.z = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.y) #14
  %i.aa = tail call reassoc nsz arcp contract afn float @dt_masks_change_size(i32 noundef %3, float noundef %i.z, float noundef 5.000000e-04, float noundef %i.d) #14 ; 2 uses
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !21
  %i.ac = and i32 %i.ab, 136
  %.not67 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not67, ptr @.str.1, ptr @.str
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.ad, float noundef %i.aa) #14
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %.str.19.sink = phi ptr [ @.str.19, %bb.e ], [ @.str.18, %bb.c ]
  %.sink76 = phi float [ %i.aa, %bb.e ], [ %i.o, %bb.c ]
  %i.ae = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.19.sink, i32 noundef 5) #14
  %i.af = fmul reassoc nsz arcp contract afn float %.sink76, 1.000000e+02
  %i.ag = fpext reassoc nsz arcp contract afn float %i.af to double
  tail call void (ptr, ...) @dt_toast_log(ptr noundef %i.ae, double noundef %i.ag) #14
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  tail call void @dt_dev_masks_list_change(ptr noundef %i.ah) #14
  br label %.critedge

bb.g:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !151
  %.not58 = icmp eq i32 %i.aj, 0
  br i1 %.not58, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !157
  %i.am = fcmp reassoc nsz arcp contract afn oeq float %i.al, 0.000000e+00
  br i1 %i.am, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.ao = load float, ptr %i.an, align 8, !tbaa !158
  %i.ap = fcmp reassoc nsz arcp contract afn oeq float %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %1, ptr %i.ak, align 4, !tbaa !157
  store float %2, ptr %i.an, align 8, !tbaa !158
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.aq = tail call i32 @gtk_accelerator_get_default_mod_mask() #14
  %i.ar = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !24
  %i.as = or i32 %i.ar, %4
  %i.at = and i32 %i.as, %i.aq
  %.not72 = icmp eq i32 %i.at, 4
  br i1 %.not72, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not63 = icmp eq i32 %3, 0
  %i.au = select reassoc nsz arcp contract afn i1 %.not63, float -5.000000e-02, float 5.000000e-02
  %i.av = tail call reassoc nsz arcp contract afn float @dt_masks_form_change_opacity(ptr noundef nonnull %5, i32 noundef %6, float noundef %i.au) #14 ; 0 uses
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %5, align 8, !tbaa !15
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !17 ; 2 uses
  %i.ay = tail call i32 @gtk_accelerator_get_default_mod_mask() #14
  %i.az = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !24
  %i.ba = or i32 %i.az, %4
  %i.bb = and i32 %i.ba, %i.ay
  %.not73 = icmp eq i32 %i.bb, 1
  br i1 %.not73, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 4 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !23
  %i.be = tail call reassoc nsz arcp contract afn float @dt_masks_change_size(i32 noundef %3, float noundef %i.bd, float noundef 5.000000e-04, float noundef %i.d) #14
  store float %i.be, ptr %i.bc, align 4, !tbaa !23
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  tail call void @dt_dev_add_masks_history_item(ptr noundef %i.bf, ptr noundef %0, i32 noundef 1) #14
  tail call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #14
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !21
  %i.bh = and i32 %i.bg, 136
  %.not62 = icmp eq i32 %i.bh, 0
  %i.bi = select i1 %.not62, ptr @.str.3, ptr @.str.2
  %i.bj = load float, ptr %i.bc, align 4, !tbaa !23
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.bi, float noundef %i.bj) #14
  %i.bk = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #14
  %i.bl = load float, ptr %i.bc, align 4, !tbaa !23
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, 1.000000e+02
  %i.bn = fpext reassoc nsz arcp contract afn float %i.bm to double
  tail call void (ptr, ...) @dt_toast_log(ptr noundef %i.bk, double noundef %i.bn) #14
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !156
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !20
  %i.bt = tail call reassoc nsz arcp contract afn float @dt_masks_change_size(i32 noundef %3, float noundef %i.bs, float noundef 5.000000e-04, float noundef %i.d) #14
  store float %i.bt, ptr %i.br, align 4, !tbaa !20
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  tail call void @dt_dev_add_masks_history_item(ptr noundef %i.bu, ptr noundef %0, i32 noundef 1) #14
  tail call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #14
  %i.bv = load i32, ptr %i.a, align 8, !tbaa !21
  %i.bw = and i32 %i.bv, 136
  %.not61 = icmp eq i32 %i.bw, 0
  %i.bx = select i1 %.not61, ptr @.str.1, ptr @.str
  %i.by = load float, ptr %i.br, align 4, !tbaa !20
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.bx, float noundef %i.by) #14
  %i.bz = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #14
  %i.ca = load float, ptr %i.br, align 4, !tbaa !20
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, 1.000000e+02
  %i.cc = fpext reassoc nsz arcp contract afn float %i.cb to double
  tail call void (ptr, ...) @dt_toast_log(ptr noundef %i.bz, double noundef %i.cc) #14
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.g, %bb.l, %bb.n, %bb.p, %bb.f
  %.1 = phi i32 [ 1, %bb.f ], [ 1, %bb.l ], [ 0, %bb.g ], [ 1, %bb.p ], [ 1, %bb.n ], [ 0, %bb.o ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_circle_events_button_pressed(ptr noundef %0, float noundef %1, float noundef %2, double %3, i32 noundef %4, i32 %5, i32 noundef %6, ptr noundef %7, i32 %8, ptr noundef %9, i32 noundef %10) #0 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 6 uses
  %.not = icmp eq ptr %9, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !108 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load float, ptr %i.e, align 8, !tbaa !144 ; 2 uses
  %i.g = fcmp reassoc nsz arcp contract afn ogt float %i.f, 0.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.g, float %i.f, float 1.000000e+00 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 156
  %i.i = load i32, ptr %i.h, align 4, !tbaa !145  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = uitofp nneg i32 %i.i to float
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.m = load i32, ptr %i.l, align 16, !tbaa !146
  %i.n = sitofp reassoc nsz arcp contract afn i32 %i.m to float
  br label %dt_masks_get_image_size.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 2760
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !147  ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 156
  %i.r = load i32, ptr %i.q, align 4, !tbaa !145  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = uitofp nneg i32 %i.r to float
  %i.u = fdiv reassoc nsz arcp contract afn float %i.t, %spec.select.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.w = load i32, ptr %i.v, align 16, !tbaa !146
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.w to float
  %i.y = fdiv reassoc nsz arcp contract afn float %i.x, %spec.select.i
  br label %dt_masks_get_image_size.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 376
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !159
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.aa to float
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 380
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !160
  %i.ae = sitofp reassoc nsz arcp contract afn i32 %i.ad to float
  br label %dt_masks_get_image_size.exit

dt_masks_get_image_size.exit:                     ; preds = %bb.c, %bb.f, %bb.g
  %.0196 = phi nsz float [ %i.k, %bb.c ], [ %i.ab, %bb.g ], [ %i.u, %bb.f ]
  %.sink.i = phi float [ %i.n, %bb.c ], [ %i.ae, %bb.g ], [ %i.y, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.ag = load <2 x i32>, ptr %i.af, align 16, !tbaa !24
  %i.ah = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ag to <2 x float>
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 172
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !150
  %.not155 = icmp eq i32 %i.aj, 0
  br i1 %.not155, label %bb.h, label %bb.r

bb.h:                                             ; preds = %dt_masks_get_image_size.exit
  %i.ak = load ptr, ptr %9, align 8, !tbaa !30
  %i.al = tail call ptr @g_list_nth_data(ptr noundef %i.ak, i32 noundef %10) #14 ; 3 uses
  %.not156 = icmp eq ptr %i.al, null
  br i1 %.not156, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.an = load i32, ptr %i.am, align 8, !tbaa !156
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 68
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !152
  %.not157 = icmp eq i32 %i.aq, 0
  br i1 %.not157, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 116
  store i32 1, ptr %i.ar, align 4, !tbaa !143
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !33 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.aw = load float, ptr %i.av, align 4, !tbaa !161
  %i.ax = fsub reassoc nsz arcp contract afn float %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 36
  store float %i.ax, ptr %i.ay, align 4, !tbaa !162
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !163
  %i.bd = fsub reassoc nsz arcp contract afn float %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 40
  store float %i.bd, ptr %i.be, align 8, !tbaa !164
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.bf = load ptr, ptr %i.al, align 8, !tbaa !35 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !161
  %i.bj = fsub reassoc nsz arcp contract afn float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 36
  store float %i.bj, ptr %i.bk, align 4, !tbaa !162
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bo = load float, ptr %i.bn, align 8, !tbaa !163
  %i.bp = fsub reassoc nsz arcp contract afn float %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 40
  store float %i.bp, ptr %i.bq, align 8, !tbaa !164
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 84
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !154 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 132
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !148
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !155 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 144
  store i32 %i.bw, ptr %i.by, align 8, !tbaa !149
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 60
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !151
  %.not158 = icmp eq i32 %i.ca, 0
  br i1 %.not158, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 112
  store i32 1, ptr %i.cb, align 8, !tbaa !142
  br label %.thread

bb.r:                                             ; preds = %dt_masks_get_image_size.exit
  switch i32 %4, label %bb.x [
    i32 3, label %bb.s
    i32 1, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 176
  store i32 0, ptr %i.cc, align 8, !tbaa !165
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 192
  store ptr null, ptr %i.cd, align 8, !tbaa !166
  tail call void @dt_masks_set_edit_mode(ptr noundef %0, i32 noundef 1) #14
  tail call void @dt_masks_iop_update(ptr noundef %0) #14
  tail call void @dt_control_queue_redraw_center() #14
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.ce = tail call i32 @gtk_accelerator_get_default_mod_mask() #14
  %i.cf = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !24
  %i.cg = or i32 %i.cf, %6
  %i.ch = and i32 %i.cg, %i.ce
  %.not201 = icmp eq i32 %i.ch, 5
  br i1 %.not201, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = tail call i32 @gtk_accelerator_get_default_mod_mask() #14
  %i.cj = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !24
  %i.ck = or i32 %i.cj, %6
  %i.cl = and i32 %i.ck, %i.ci
  %.not202 = icmp eq i32 %i.cl, 1
  br i1 %.not202, label %bb.v, label %._crit_edge211

._crit_edge211:                                   ; preds = %bb.u
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  br label %bb.x

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !21
  %i.co = and i32 %i.cn, 8
  %.not179 = icmp eq i32 %i.co, 0
  br i1 %.not179, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @dt_masks_set_source_pos_initial_state(ptr noundef nonnull %9, i32 noundef %6, float noundef %1, float noundef %2) #14
  br label %.thread

bb.x:                                             ; preds = %._crit_edge211, %bb.r
  %i.cp = phi ptr [ %.pre, %._crit_edge211 ], [ %i.b, %bb.r ]
  %i.cq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.cr = fmul reassoc nsz arcp contract afn float %.0196, %1 ; 2 uses
  store float %i.cr, ptr %i.a, align 8, !tbaa !22
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ct = fmul reassoc nsz arcp contract afn float %.sink.i, %2 ; 2 uses
  store float %i.ct, ptr %i.cs, align 4, !tbaa !22
  %i.cu = call i32 @dt_dev_distort_backtransform(ptr noundef %i.cp, ptr noundef nonnull %i.a, i64 noundef 1) #14 ; 0 uses
  %i.cv = load <2 x float>, ptr %i.a, align 8, !tbaa !22
  %i.cw = fdiv reassoc nsz arcp contract afn <2 x float> %i.cv, %i.ah
  store <2 x float> %i.cw, ptr %i.cq, align 4, !tbaa !22
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !21 ; 2 uses
  %i.cz = and i32 %i.cy, 8
  %.not161 = icmp eq i32 %i.cz, 0
  br i1 %.not161, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @dt_masks_set_source_pos_initial_value(ptr noundef nonnull %9, i32 noundef 1, ptr noundef nonnull %7, float noundef %1, float noundef %2) #14
  %.pre212 = load i32, ptr %i.cx, align 8, !tbaa !21
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> zeroinitializer, ptr %i.da, align 8, !tbaa !22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.db = phi i32 [ %i.cy, %bb.z ], [ %.pre212, %bb.y ]
  %i.dc = and i32 %i.db, 136
  %.not162 = icmp eq i32 %i.dc, 0
  %i.dd = select i1 %.not162, ptr @.str.1, ptr @.str
  %i.de = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.dd) #14
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store float %i.de, ptr %i.df, align 4, !tbaa !20
  %i.dg = load i32, ptr %i.cx, align 8, !tbaa !21
  %i.dh = and i32 %i.dg, 136
  %.not163 = icmp eq i32 %i.dh, 0
  %i.di = select i1 %.not163, ptr @.str.3, ptr @.str.2
  %i.dj = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.di) #14
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store float %i.dj, ptr %i.dk, align 4, !tbaa !23
  %i.dl = load ptr, ptr %7, align 8, !tbaa !15
  %i.dm = call ptr @g_list_append(ptr noundef %i.dl, ptr noundef nonnull %i.cq) #14
  store ptr %i.dm, ptr %7, align 8, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !167 ; 12 uses
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  call void @dt_masks_gui_form_save_creation(ptr noundef %i.dp, ptr noundef %i.do, ptr noundef nonnull %7, ptr noundef nonnull %9) #14
  %.not164 = icmp eq ptr %i.do, null              ; 2 uses
  br i1 %.not164, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  call void @dt_dev_add_history_item(ptr noundef %i.dq, ptr noundef nonnull %i.do, i32 noundef 1) #14
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !165
  %.not165 = icmp eq i32 %i.ds, 0
  br i1 %.not165, label %.thread199, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
end_hunk_3
begin_hunk_4_@_circle_events_button_pressed:bb.a
  store i32 1, ptr %i.fc, align 4, !tbaa !151
  %i.fd = load i32, ptr %i.eb, align 8, !tbaa !168
  %i.fe = call ptr @dt_masks_get_from_id(ptr noundef nonnull %i.ef, i32 noundef %i.fd) #14
  call void @dt_masks_select_form(ptr noundef %0, ptr noundef %i.fe) #14
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ah
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !165
  %.not176 = icmp eq i32 %i.fg, 0
  br i1 %.not176, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not164, label %.critedge183, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fh = getelementptr i8, ptr %i.do, i64 952    ; 2 uses
  %.val184 = load ptr, ptr %i.fh, align 8, !tbaa !223
  %i.fi = getelementptr inbounds nuw i8, ptr %.val184, i64 496
  %i.fj = call i32 @g_strcmp0(ptr noundef nonnull %i.fi, ptr noundef nonnull @.str.20) #14
  %.not.i189.not = icmp eq i32 %i.fj, 0
  br i1 %.not.i189.not, label %.critedge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.val = load ptr, ptr %i.fh, align 8, !tbaa !223
  %i.fk = getelementptr inbounds nuw i8, ptr %.val, i64 496
  %i.fl = call i32 @g_strcmp0(ptr noundef nonnull %i.fk, ptr noundef nonnull @.str.21) #14
  %.not.i190.not = icmp eq i32 %i.fl, 0
  br i1 %.not.i190.not, label %.critedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fm = getelementptr inbounds nuw i8, ptr %i.do, i64 784
  %i.fn = load ptr, ptr %i.fm, align 16, !tbaa !225 ; 11 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 552
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !24
  %i.fq = load i32, ptr %i.cx, align 8, !tbaa !21 ; 2 uses
  %i.fr = icmp eq i32 %i.fp, %i.fq
  br i1 %i.fr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 512
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !226
  call void @gtk_toggle_button_set_active(ptr noundef %i.ft, i32 noundef 1) #14
  %.pre213 = load i32, ptr %i.cx, align 8, !tbaa !21
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.fu = phi i32 [ %i.fq, %bb.au ], [ %.pre213, %bb.av ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 556
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !24
  %i.fx = icmp eq i32 %i.fw, %i.fu
  br i1 %i.fx, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fn, i64 520
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !226
  call void @gtk_toggle_button_set_active(ptr noundef %i.fz, i32 noundef 1) #14
  %.pre214 = load i32, ptr %i.cx, align 8, !tbaa !21
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ga = phi i32 [ %.pre214, %bb.ax ], [ %i.fu, %bb.aw ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 560
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !24
  %i.gd = icmp eq i32 %i.gc, %i.ga
  br i1 %i.gd, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fn, i64 528
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !226
  call void @gtk_toggle_button_set_active(ptr noundef %i.gf, i32 noundef 1) #14
  %.pre215 = load i32, ptr %i.cx, align 8, !tbaa !21
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gg = phi i32 [ %.pre215, %bb.az ], [ %i.ga, %bb.ay ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fn, i64 564
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !24
  %i.gj = icmp eq i32 %i.gi, %i.gg
  br i1 %i.gj, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fn, i64 536
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !226
  call void @gtk_toggle_button_set_active(ptr noundef %i.gl, i32 noundef 1) #14
  %.pre216 = load i32, ptr %i.cx, align 8, !tbaa !21
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gm = phi i32 [ %.pre216, %bb.bb ], [ %i.gg, %bb.ba ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fn, i64 568
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !24
  %i.gp = icmp eq i32 %i.go, %i.gm
  br i1 %i.gp, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fn, i64 544
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !226
  call void @gtk_toggle_button_set_active(ptr noundef %i.gr, i32 noundef 1) #14
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fn, i64 576
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !231
  call void @gtk_toggle_button_set_active(ptr noundef %i.gt, i32 noundef 0) #14
  %i.gu = load i32, ptr %i.cx, align 8, !tbaa !21
  %i.gv = call ptr @dt_masks_create(i32 noundef %i.gu) #14
  call void @dt_masks_change_form_gui(ptr noundef %i.gv) #14
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 2168
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !172 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 184
  store ptr %i.do, ptr %i.gz, align 8, !tbaa !167
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 176
  store i32 1, ptr %i.ha, align 8, !tbaa !165
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 192
  store ptr %i.do, ptr %i.hb, align 8, !tbaa !166
  br label %.critedge

.critedge183:                                     ; preds = %bb.ar
  %i.hc = load i32, ptr %i.cx, align 8, !tbaa !21
  %i.hd = call ptr @dt_masks_create(i32 noundef %i.hc) #14
  call void @dt_masks_change_form_gui(ptr noundef %i.hd) #14
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !166
  %i.hg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 2168
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !172
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 184
  store ptr %i.hf, ptr %i.hj, align 8, !tbaa !167
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %.preheader, %._crit_edge, %bb.ai, %bb.aj, %bb.aq, %bb.as, %bb.at, %.critedge183, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.q, %bb.o, %bb.m, %bb.k, %bb.s, %.critedge, %bb.w, %bb.v, %bb.i, %bb.p, %bb.a
  %.6 = phi i32 [ 0, %bb.a ], [ 1, %bb.s ], [ 1, %bb.w ], [ 1, %.critedge ], [ 1, %bb.v ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.h ], [ 1, %bb.q ], [ 1, %bb.o ], [ 1, %bb.m ], [ 1, %bb.k ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_circle_events_button_released(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #0 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 6 uses
  %i.b = alloca [2 x float], align 8              ; 6 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !108 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load float, ptr %i.f, align 8, !tbaa !144 ; 2 uses
  %i.h = fcmp reassoc nsz arcp contract afn ogt float %i.g, 0.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.h, float %i.g, float 1.000000e+00 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 156
  %i.j = load i32, ptr %i.i, align 4, !tbaa !145  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = uitofp nneg i32 %i.j to float
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.n = load i32, ptr %i.m, align 16, !tbaa !146
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.n to float
  br label %dt_masks_get_image_size.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 2760
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !147  ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 156
  %i.s = load i32, ptr %i.r, align 4, !tbaa !145  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = uitofp nneg i32 %i.s to float
  %i.v = fdiv reassoc nsz arcp contract afn float %i.u, %spec.select.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.x = load i32, ptr %i.w, align 16, !tbaa !146
  %i.y = sitofp reassoc nsz arcp contract afn i32 %i.x to float
  %i.z = fdiv reassoc nsz arcp contract afn float %i.y, %spec.select.i
  br label %dt_masks_get_image_size.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !159
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.ab to float
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 380
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !160
  %i.af = sitofp reassoc nsz arcp contract afn i32 %i.ae to float
  br label %dt_masks_get_image_size.exit

dt_masks_get_image_size.exit:                     ; preds = %bb.b, %bb.e, %bb.f
  %.080 = phi nsz float [ %i.l, %bb.b ], [ %i.ac, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %.sink.i = phi float [ %i.o, %bb.b ], [ %i.af, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.ah = load <2 x i32>, ptr %i.ag, align 16, !tbaa !24
  %i.ai = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ah to <2 x float> ; 3 uses
  %i.aj = icmp eq i32 %3, 3
  %i.ak = icmp sgt i32 %6, 0
  %or.cond = and i1 %i.aj, %i.ak
  br i1 %or.cond, label %bb.g, label %bb.o

bb.g:                                             ; preds = %dt_masks_get_image_size.exit
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !156
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 2160
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !169 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !21
  %i.as = and i32 %i.ar, 4
  %.not68 = icmp eq i32 %i.as, 0
  br i1 %.not68, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @dt_masks_change_form_gui(ptr noundef null) #14
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !15 ; 2 uses
  %.not6.i = icmp eq ptr %i.at, null
  br i1 %.not6.i, label %g_list_shorter_than.exit.thread, label %g_list_shorter_than.exit

g_list_shorter_than.exit:                         ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !232
  %.not6.1.i.not = icmp eq ptr %i.av, null
  br i1 %.not6.1.i.not, label %g_list_shorter_than.exit.thread, label %bb.k

g_list_shorter_than.exit.thread:                  ; preds = %bb.j, %g_list_shorter_than.exit
  tail call void @dt_masks_change_form_gui(ptr noundef null) #14
  br label %bb.n

bb.k:                                             ; preds = %g_list_shorter_than.exit
  tail call void @dt_masks_clear_form_gui(ptr noundef nonnull %i.c) #14
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2160
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !169
  %.06283 = load ptr, ptr %i.ay, align 8, !tbaa !25 ; 3 uses
  %.not7084 = icmp eq ptr %.06283, null
  br i1 %.not7084, label %.loopexit, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !168
  br label %.critedge

bb.l:                                             ; preds = %.critedge
  %i.bb = getelementptr inbounds nuw i8, ptr %.06285, i64 8
  %.062 = load ptr, ptr %i.bb, align 8, !tbaa !25 ; 2 uses
  %.not70 = icmp eq ptr %.062, null
  br i1 %.not70, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.l
  %.06285 = phi ptr [ %.06283, %.critedge.lr.ph ], [ %.062, %bb.l ] ; 2 uses
  %i.bc = load ptr, ptr %.06285, align 8, !tbaa !17 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !171
  %.not71 = icmp eq i32 %i.bd, %i.ba
  br i1 %.not71, label %bb.m, label %bb.l

bb.m:                                             ; preds = %.critedge
  %i.be = tail call ptr @g_list_remove(ptr noundef nonnull %.06283, ptr noundef nonnull %i.bc) #14
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2160
  %i.bh = load ptr, ptr %i.bg, align 16, !tbaa !169
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !15
  tail call void @free(ptr noundef nonnull %i.bc) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.k, %bb.m
  store i32 1, ptr %i.al, align 8, !tbaa !156
  br label %bb.n

bb.n:                                             ; preds = %g_list_shorter_than.exit.thread, %.loopexit, %bb.i
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  %i.bj = tail call ptr @dt_masks_get_from_id(ptr noundef %i.bi, i32 noundef %6) #14
  tail call void @dt_masks_form_remove(ptr noundef %0, ptr noundef %i.bj, ptr noundef %5) #14
  br label %bb.ac

bb.o:                                             ; preds = %bb.g, %dt_masks_get_image_size.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !142
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = load ptr, ptr %5, align 8, !tbaa !15
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !17 ; 2 uses
  store i32 0, ptr %i.bk, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bo = fmul reassoc nsz arcp contract afn float %.080, %1
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !162
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, %i.bo
  store float %i.br, ptr %i.a, align 4, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.bt = fmul reassoc nsz arcp contract afn float %.sink.i, %2
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !164
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, %i.bt
  store float %i.bw, ptr %i.bs, align 4, !tbaa !22
  %i.bx = call i32 @dt_dev_distort_backtransform(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i64 noundef 1) #14 ; 0 uses
  %i.by = load float, ptr %i.a, align 4, !tbaa !22
  %i.bz = extractelement <2 x float> %i.ai, i64 0
  %i.ca = fdiv reassoc nsz arcp contract afn float %i.by, %i.bz
  store float %i.ca, ptr %i.bn, align 4, !tbaa !22
  %i.cb = load float, ptr %i.bs, align 4, !tbaa !22
  %i.cc = extractelement <2 x float> %i.ai, i64 1
  %i.cd = fdiv reassoc nsz arcp contract afn float %i.cb, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store float %i.cd, ptr %i.ce, align 4, !tbaa !22
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  call void @dt_dev_add_masks_history_item(ptr noundef %i.cf, ptr noundef %0, i32 noundef 1) #14
  call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #14
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 176
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !165
  %.not67 = icmp eq i32 %i.ch, 0
  br i1 %.not67, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !21
  %i.ck = call ptr @dt_masks_create(i32 noundef %i.cj) #14
  call void @dt_masks_change_form_gui(ptr noundef %i.ck) #14
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !166
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 2168
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !172
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 184
  store ptr %i.cm, ptr %i.cq, align 8, !tbaa !167
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ac

bb.s:                                             ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 116 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !143
  %.not65 = icmp eq i32 %i.cs, 0
  br i1 %.not65, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.cr, align 4, !tbaa !143
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !157
  %i.cv = fcmp reassoc nsz arcp contract afn une float %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !158
  %i.cy = fcmp reassoc nsz arcp contract afn une float %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.cz = fmul reassoc nsz arcp contract afn float %.080, %1
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.db = load float, ptr %i.da, align 4, !tbaa !162
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, %i.cz
  store float %i.dc, ptr %i.b, align 8, !tbaa !22
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.de = fmul reassoc nsz arcp contract afn float %.sink.i, %2
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dg = load float, ptr %i.df, align 8, !tbaa !164
  %i.dh = fadd reassoc nsz arcp contract afn float %i.dg, %i.de
  store float %i.dh, ptr %i.dd, align 4, !tbaa !22
  %i.di = call i32 @dt_dev_distort_backtransform(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i64 noundef 1) #14 ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dk = load <2 x float>, ptr %i.b, align 8, !tbaa !22
  %i.dl = fdiv reassoc nsz arcp contract afn <2 x float> %i.dk, %i.ai
  store <2 x float> %i.dl, ptr %i.dj, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %i.dm = phi ptr [ %i.c, %bb.t ], [ %i.c, %bb.u ], [ %.pre, %bb.v ]
  call void @dt_dev_add_masks_history_item(ptr noundef %i.dm, ptr noundef %0, i32 noundef 1) #14
  call void @dt_masks_gui_form_create(ptr noundef %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #14
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 176
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !165
  %.not66 = icmp eq i32 %i.do, 0
  br i1 %.not66, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !21
  %i.dr = call ptr @dt_masks_create(i32 noundef %i.dq) #14
  call void @dt_masks_change_form_gui(ptr noundef %i.dr) #14
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !166
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2168
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !172
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 184
  store ptr %i.dt, ptr %i.dx, align 8, !tbaa !167
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 60
  store i32 1, ptr %i.dy, align 4, !tbaa !151
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 68
  store i32 1, ptr %i.dz, align 4, !tbaa !152
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %i.ea, align 8, !tbaa !153
  br label %bb.ac

bb.z:                                             ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 132 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !148
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !149
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i32 -1, ptr %i.eh, align 8, !tbaa !149
  store i32 -1, ptr %i.eb, align 4, !tbaa !148
  tail call void @dt_dev_add_masks_history_item(ptr noundef nonnull %i.c, ptr noundef %0, i32 noundef 1) #14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.y, %bb.r, %bb.n
  %.0 = phi i32 [ 1, %bb.n ], [ 1, %bb.r ], [ 1, %bb.y ], [ 0, %bb.ab ], [ 0, %bb.aa ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @_circle_events_post_expose(ptr noundef %0, float noundef %1, ptr noundef %2, i32 noundef %3, i32 %4) #0 {
dt_masks_get_image_size.exit:
  %i.a = alloca [2 x float], align 8              ; 5 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca float, align 4                    ; 6 uses
  %i.i = alloca float, align 4                    ; 6 uses
  %i.j = alloca float, align 4                    ; 5 uses
  %i.k = alloca float, align 4                    ; 5 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !30
  %i.m = tail call ptr @g_list_nth_data(ptr noundef %i.l, i32 noundef %3) #14 ; 10 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.r = load <2 x i32>, ptr %i.q, align 16, !tbaa !24
  %i.s = sitofp reassoc nsz arcp contract afn <2 x i32> %i.r to <2 x float>
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.u = load i32, ptr %i.t, align 4, !tbaa !150
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.r, label %bb.a

bb.a:                                             ; preds = %dt_masks_get_image_size.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !233
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 2160
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !169 ; 2 uses
  %.not93.not = icmp eq ptr %i.z, null
  br i1 %.not93.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !21
  %i.ac = and i32 %i.ab, 136
  %.not94 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not94, ptr @.str.1, ptr @.str
  %i.ae = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.ad) #14 ; 3 uses
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !21
  %i.ag = and i32 %i.af, 136
  %.not95 = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not95, ptr @.str.3, ptr @.str.2
  %i.ai = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.ah) #14
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, %i.ae ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.am = load <2 x float>, ptr %i.ak, align 4, !tbaa !22
  store <2 x float> %i.am, ptr %i.a, align 8, !tbaa !22
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  %i.ao = call i32 @dt_dev_distort_backtransform(ptr noundef %i.an, ptr noundef nonnull %i.a, i64 noundef 1) #14 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.ap = load <2 x float>, ptr %i.a, align 8, !tbaa !22
  %i.aq = fdiv reassoc nsz arcp contract afn <2 x float> %i.ap, %i.s ; 2 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0 ; 3 uses
  store float %i.ar, ptr %i.b, align 4, !tbaa !22
  %i.as = extractelement <2 x float> %i.aq, i64 1 ; 3 uses
  store float %i.as, ptr %i.c, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store ptr null, ptr %i.d, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store ptr null, ptr %i.f, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i32 0, ptr %i.g, align 4, !tbaa !24
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  %i.au = call i32 @_circle_get_points(ptr noundef %i.at, float noundef %i.ar, float noundef %i.as, float noundef %i.ae, float poison, float poison, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %.not96 = icmp ne i32 %i.au, 0
  %i.av = fcmp reassoc nsz arcp contract afn une float %i.ae, %i.aj
  %or.cond = select i1 %.not96, i1 %i.av, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81
  %i.ax = call i32 @_circle_get_points(ptr noundef %i.aw, float noundef %i.ar, float noundef %i.as, float noundef %i.aj, float poison, float poison, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @cairo_save(ptr noundef %0) #14
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !111 ; 4 uses
  %i.az = load i32, ptr %i.e, align 4, !tbaa !24  ; 2 uses
  %i.ba = icmp slt i32 %i.az, 7
  br i1 %i.ba, label %_circle_draw_lines.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bc = load <2 x float>, ptr %i.bb, align 4, !tbaa !22
  %i.bd = fpext reassoc nsz arcp contract afn <2 x float> %i.bc to <2 x double> ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0
  %i.bf = extractelement <2 x double> %i.bd, i64 1
  call void @cairo_move_to(ptr noundef %0, double noundef %i.be, double noundef %i.bf) #14
  %wide.trip.count.i = zext nneg i32 %i.az to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.bg = load <2 x float>, ptr %i.bb, align 4, !tbaa !22
  %i.bh = fpext reassoc nsz arcp contract afn <2 x float> %i.bg to <2 x double> ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0
  %i.bj = extractelement <2 x double> %i.bh, i64 1
  call void @cairo_line_to(ptr noundef %0, double noundef %i.bi, double noundef %i.bj) #14
  call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, float noundef %1) #14
  br label %_circle_draw_lines.exit

bb.h:                                             ; preds = %bb.h, %bb.f
  %indvars.iv.i = phi i64 [ 2, %bb.f ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i
  %i.bl = load <2 x float>, ptr %i.bk, align 4, !tbaa !22
  %i.bm = fpext reassoc nsz arcp contract afn <2 x float> %i.bl to <2 x double> ; 2 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 0
  %i.bo = extractelement <2 x double> %i.bm, i64 1
  call void @cairo_line_to(ptr noundef %0, double noundef %i.bn, double noundef %i.bo) #14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.g, label %bb.h

_circle_draw_lines.exit:                          ; preds = %bb.e, %bb.g
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !111 ; 4 uses
  %i.bq = load i32, ptr %i.g, align 4, !tbaa !24  ; 2 uses
  %i.br = icmp slt i32 %i.bq, 7
  br i1 %i.br, label %_circle_draw_lines.exit105, label %bb.i

bb.i:                                             ; preds = %_circle_draw_lines.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.bt = load <2 x float>, ptr %i.bs, align 4, !tbaa !22
  %i.bu = fpext reassoc nsz arcp contract afn <2 x float> %i.bt to <2 x double> ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0
  %i.bw = extractelement <2 x double> %i.bu, i64 1
  call void @cairo_move_to(ptr noundef %0, double noundef %i.bv, double noundef %i.bw) #14
  %wide.trip.count.i100 = zext nneg i32 %i.bq to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.bx = load <2 x float>, ptr %i.bs, align 4, !tbaa !22
  %i.by = fpext reassoc nsz arcp contract afn <2 x float> %i.bx to <2 x double> ; 2 uses
  %i.bz = extractelement <2 x double> %i.by, i64 0
  %i.ca = extractelement <2 x double> %i.by, i64 1
  call void @cairo_line_to(ptr noundef %0, double noundef %i.bz, double noundef %i.ca) #14
  call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, float noundef %1) #14
  br label %_circle_draw_lines.exit105

bb.k:                                             ; preds = %bb.k, %bb.i
  %indvars.iv.i101 = phi i64 [ 2, %bb.i ], [ %indvars.iv.next.i103, %bb.k ] ; 2 uses
  %.idx.i102 = shl nuw nsw i64 %indvars.iv.i101, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i102
  %i.cc = load <2 x float>, ptr %i.cb, align 4, !tbaa !22
  %i.cd = fpext reassoc nsz arcp contract afn <2 x float> %i.cc to <2 x double> ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = extractelement <2 x double> %i.cd, i64 1
  call void @cairo_line_to(ptr noundef %0, double noundef %i.ce, double noundef %i.cf) #14
  %indvars.iv.next.i103 = add nuw nsw i64 %indvars.iv.i101, 1 ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %indvars.iv.next.i103, %wide.trip.count.i100
  br i1 %exitcond.not.i104, label %bb.j, label %bb.k

_circle_draw_lines.exit105:                       ; preds = %_circle_draw_lines.exit, %bb.j
  call void @cairo_restore(ptr noundef %0) #14
  %i.cg = load i32, ptr %i.aa, align 8, !tbaa !21
  %i.ch = and i32 %i.cg, 8
  %.not97 = icmp eq i32 %i.ch, 0
  br i1 %.not97, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_circle_draw_lines.exit105
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !22
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !22
  %i.ci = load float, ptr %i.ak, align 4, !tbaa !161 ; 2 uses
  %i.cj = load float, ptr %i.al, align 8, !tbaa !163 ; 2 uses
  call void @dt_masks_calculate_source_pos_value(ptr noundef nonnull %2, i32 noundef 1, float noundef %i.ci, float noundef %i.cj, float noundef %i.ci, float noundef %i.cj, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0) #14
  %i.ck = load float, ptr %i.b, align 4, !tbaa !22
  %i.cl = load float, ptr %i.c, align 4, !tbaa !22
  call void @dt_masks_draw_clone_source_pos(ptr noundef %0, float noundef %1, float noundef %i.ck, float noundef %i.cl) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_circle_draw_lines.exit105
  %.not98 = icmp eq ptr %i.ay, null
  br i1 %.not98, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.ay) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not99 = icmp eq ptr %i.bp, null
  br i1 %.not99, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.bp) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.critedge

bb.r:                                             ; preds = %dt_masks_get_image_size.exit
  %.not90 = icmp eq ptr %i.m, null
  br i1 %.not90, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !173
  %i.co = icmp eq i32 %i.cn, %3
  br i1 %i.co, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !151
  %.not91 = icmp eq i32 %i.cq, 0
  br i1 %.not91, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !142
  %i.ct = icmp ne i32 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  %i.cv = phi i32 [ 0, %bb.s ], [ 1, %bb.t ], [ %i.cu, %bb.u ] ; 2 uses
  %i.cw = load ptr, ptr %i.m, align 8, !tbaa !35  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !234 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, 7
  br i1 %i.cz, label %_circle_draw_lines.exit111, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.db = load <2 x float>, ptr %i.da, align 4, !tbaa !22
  %i.dc = fpext reassoc nsz arcp contract afn <2 x float> %i.db to <2 x double> ; 2 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  %i.de = extractelement <2 x double> %i.dc, i64 1
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.dd, double noundef %i.de) #14
  %wide.trip.count.i106 = zext nneg i32 %i.cy to i64
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %i.df = load <2 x float>, ptr %i.da, align 4, !tbaa !22
  %i.dg = fpext reassoc nsz arcp contract afn <2 x float> %i.df to <2 x double> ; 2 uses
  %i.dh = extractelement <2 x double> %i.dg, i64 0
  %i.di = extractelement <2 x double> %i.dg, i64 1
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.dh, double noundef %i.di) #14
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.cv, float noundef %1) #14
  br label %_circle_draw_lines.exit111

bb.y:                                             ; preds = %bb.y, %bb.w
  %indvars.iv.i107 = phi i64 [ 2, %bb.w ], [ %indvars.iv.next.i109, %bb.y ] ; 2 uses
  %.idx.i108 = shl nuw nsw i64 %indvars.iv.i107, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx.i108
  %i.dk = load <2 x float>, ptr %i.dj, align 4, !tbaa !22
  %i.dl = fpext reassoc nsz arcp contract afn <2 x float> %i.dk to <2 x double> ; 2 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 0
  %i.dn = extractelement <2 x double> %i.dl, i64 1
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.dm, double noundef %i.dn) #14
  %indvars.iv.next.i109 = add nuw nsw i64 %indvars.iv.i107, 1 ; 2 uses
  %exitcond.not.i110 = icmp eq i64 %indvars.iv.next.i109, %wide.trip.count.i106
  br i1 %exitcond.not.i110, label %bb.x, label %bb.y

_circle_draw_lines.exit111:                       ; preds = %bb.v, %bb.x
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !235
  %.not92 = icmp eq i32 %i.dp, 0
  br i1 %.not92, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_circle_draw_lines.exit111
  %i.dq = load i32, ptr %i.cm, align 4, !tbaa !173
  %i.dr = icmp eq i32 %i.dq, %3
  br i1 %i.dr, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z, %_circle_draw_lines.exit111
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !153
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !36 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !37 ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 7
  br i1 %i.dy, label %_circle_draw_lines.exit117, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.ea = load <2 x float>, ptr %i.dz, align 4, !tbaa !22
  %i.eb = fpext reassoc nsz arcp contract afn <2 x float> %i.ea to <2 x double> ; 2 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 0
  %i.ed = extractelement <2 x double> %i.eb, i64 1
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.ec, double noundef %i.ed) #14
  %wide.trip.count.i112 = zext nneg i32 %i.dx to i64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ad
  %i.ee = load <2 x float>, ptr %i.dz, align 4, !tbaa !22
  %i.ef = fpext reassoc nsz arcp contract afn <2 x float> %i.ee to <2 x double> ; 2 uses
  %i.eg = extractelement <2 x double> %i.ef, i64 0
  %i.eh = extractelement <2 x double> %i.ef, i64 1
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.eg, double noundef %i.eh) #14
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef %i.dt, float noundef %1) #14
  br label %_circle_draw_lines.exit117

bb.ad:                                            ; preds = %bb.ad, %bb.ab
  %indvars.iv.i113 = phi i64 [ 2, %bb.ab ], [ %indvars.iv.next.i115, %bb.ad ] ; 2 uses
  %.idx.i114 = shl nuw nsw i64 %indvars.iv.i113, 3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx.i114
  %i.ej = load <2 x float>, ptr %i.ei, align 4, !tbaa !22
  %i.ek = fpext reassoc nsz arcp contract afn <2 x float> %i.ej to <2 x double> ; 2 uses
  %i.el = extractelement <2 x double> %i.ek, i64 0
  %i.em = extractelement <2 x double> %i.ek, i64 1
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.el, double noundef %i.em) #14
  %indvars.iv.next.i115 = add nuw nsw i64 %indvars.iv.i113, 1 ; 2 uses
  %exitcond.not.i116 = icmp eq i64 %indvars.iv.next.i115, %wide.trip.count.i112
  br i1 %exitcond.not.i116, label %bb.ac, label %bb.ad

_circle_draw_lines.exit117:                       ; preds = %bb.aa, %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !148
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_circle_draw_lines.exit117
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !154
  %i.es = icmp sgt i32 %i.er, 0
  %i.et = zext i1 %i.es to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_circle_draw_lines.exit117
  %i.eu = phi i32 [ 1, %_circle_draw_lines.exit117 ], [ %i.et, %bb.ae ]
  %i.ev = load ptr, ptr %i.m, align 8, !tbaa !35  ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !22
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !22
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %i.eu, float noundef %1, float noundef %i.ex, float noundef %i.ez) #14
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !149
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !155
  %i.ff = icmp sgt i32 %i.fe, 0
  %i.fg = zext i1 %i.ff to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fh = phi i32 [ 1, %bb.af ], [ %i.fg, %bb.ag ]
  %i.fi = load ptr, ptr %i.du, align 8, !tbaa !36 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !22
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !22
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %i.fh, float noundef %1, float noundef %i.fk, float noundef %i.fm) #14
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.z
  %i.fn = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !34 ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, 6
  br i1 %i.fp, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %bb.ai
  %i.fq = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !33 ; 4 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !22
  %i.ft = load ptr, ptr %i.m, align 8, !tbaa !35  ; 2 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !22
  %i.fv = fsub reassoc nsz arcp contract afn float %i.fs, %i.fu
  %i.fw = fcmp reassoc nsz arcp contract afn une float %i.fv, 0.000000e+00
  br i1 %i.fw, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !22
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !22
  %i.gb = fsub reassoc nsz arcp contract afn float %i.fy, %i.ga
  %i.gc = fcmp reassoc nsz arcp contract afn une float %i.gb, 0.000000e+00
  br i1 %i.gc, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  tail call void @cairo_set_line_cap(ptr noundef %0, i32 noundef 1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store float 0.000000e+00, ptr %i.k, align 4, !tbaa !22
  %i.gd = load i32, ptr %i.cx, align 8, !tbaa !234
  %i.ge = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.gf = load ptr, ptr %i.fq, align 8, !tbaa !33 ; 2 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !22
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !22
  call void @dt_masks_closest_point(i32 noundef %i.gd, i32 noundef 2, ptr noundef %i.ge, float noundef %i.gg, float noundef %i.gi, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #14
  %i.gj = load i32, ptr %i.fn, align 8, !tbaa !34
  %i.gk = load ptr, ptr %i.fq, align 8, !tbaa !33
  %i.gl = load float, ptr %i.h, align 4, !tbaa !22
  %i.gm = load float, ptr %i.i, align 4, !tbaa !22
  call void @dt_masks_closest_point(i32 noundef %i.gj, i32 noundef 2, ptr noundef %i.gk, float noundef %i.gl, float noundef %i.gm, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #14
  %i.gn = load float, ptr %i.j, align 4, !tbaa !22
  %i.go = load float, ptr %i.k, align 4, !tbaa !22
  %i.gp = load float, ptr %i.h, align 4, !tbaa !22
  %i.gq = load float, ptr %i.i, align 4, !tbaa !22
  call void @dt_masks_draw_arrow(ptr noundef %0, float noundef %i.gn, float noundef %i.go, float noundef %i.gp, float noundef %i.gq, float noundef %1, i32 noundef 0) #14
  call void @dt_masks_stroke_arrow(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3, float noundef %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  %.pre = load ptr, ptr %i.fq, align 8, !tbaa !33
  %.pre125 = load i32, ptr %i.fn, align 8, !tbaa !34 ; 2 uses
  %i.gr = icmp slt i32 %.pre125, 7
  br i1 %i.gr, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.aj, %bb.ak, %bb.al
  %i.gs = phi ptr [ %.pre, %bb.al ], [ %i.fr, %bb.ak ], [ %i.fr, %bb.aj ] ; 2 uses
  %i.gt = phi i32 [ %.pre125, %bb.al ], [ %i.fo, %bb.ak ], [ %i.fo, %bb.aj ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.gv = load <2 x float>, ptr %i.gu, align 4, !tbaa !22
  %i.gw = fpext reassoc nsz arcp contract afn <2 x float> %i.gv to <2 x double> ; 2 uses
  %i.gx = extractelement <2 x double> %i.gw, i64 0
  %i.gy = extractelement <2 x double> %i.gw, i64 1
  call void @cairo_move_to(ptr noundef %0, double noundef %i.gx, double noundef %i.gy) #14
  %wide.trip.count.i118 = zext nneg i32 %i.gt to i64
  br label %bb.an

bb.am:                                            ; preds = %bb.an
  %i.gz = load <2 x float>, ptr %i.gu, align 4, !tbaa !22
  %i.ha = fpext reassoc nsz arcp contract afn <2 x float> %i.gz to <2 x double> ; 2 uses
  %i.hb = extractelement <2 x double> %i.ha, i64 0
  %i.hc = extractelement <2 x double> %i.ha, i64 1
  call void @cairo_line_to(ptr noundef %0, double noundef %i.hb, double noundef %i.hc) #14
  call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.cv, float noundef %1) #14
  br label %.critedge

bb.an:                                            ; preds = %bb.an, %.thread
  %indvars.iv.i119 = phi i64 [ 2, %.thread ], [ %indvars.iv.next.i121, %bb.an ] ; 2 uses
  %.idx.i120 = shl nuw nsw i64 %indvars.iv.i119, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.idx.i120
  %i.he = load <2 x float>, ptr %i.hd, align 4, !tbaa !22
  %i.hf = fpext reassoc nsz arcp contract afn <2 x float> %i.he to <2 x double> ; 2 uses
  %i.hg = extractelement <2 x double> %i.hf, i64 0
  %i.hh = extractelement <2 x double> %i.hf, i64 1
  call void @cairo_line_to(ptr noundef %0, double noundef %i.hg, double noundef %i.hh) #14
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i119, 1 ; 2 uses
  %exitcond.not.i122 = icmp eq i64 %indvars.iv.next.i121, %wide.trip.count.i118
  br i1 %exitcond.not.i122, label %bb.am, label %bb.an

.critedge:                                        ; preds = %bb.am, %bb.al, %bb.q, %bb.b, %bb.ai, %bb.r, %bb.a
  ret void
}

declare float @dt_conf_get_and_sanitize_float(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @dt_mouse_action_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i32 @g_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare float @dt_conf_get_float(ptr noundef) local_unnamed_addr #1

declare void @dt_conf_set_float(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_list_nth_data(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @dt_masks_point_in_form_exact(float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @dt_masks_point_in_form_near(float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_masks_get_image_size(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !81 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !108 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load float, ptr %i.d, align 8, !tbaa !144 ; 2 uses
  %i.f = fcmp reassoc nsz arcp contract afn ogt float %i.e, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.f, float %i.e, float 1.000000e+00 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.h = load i32, ptr %i.g, align 4, !tbaa !145  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not45 = icmp eq ptr %0, null
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = uitofp nneg i32 %i.h to float
  store float %i.j, ptr %0, align 4, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not46 = icmp eq ptr %1, null
  br i1 %.not46, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.l = load i32, ptr %i.k, align 16, !tbaa !146
  %i.m = sitofp reassoc nsz arcp contract afn i32 %i.l to float
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2760
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !147  ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  %i.q = load i32, ptr %i.p, align 4, !tbaa !145  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not43 = icmp eq ptr %0, null
  br i1 %.not43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = uitofp nneg i32 %i.q to float
  %i.t = fdiv reassoc nsz arcp contract afn float %i.s, %spec.select
  store float %i.t, ptr %0, align 4, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not44 = icmp eq ptr %1, null
  br i1 %.not44, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.v = load i32, ptr %i.u, align 16, !tbaa !146
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.v to float
  %i.x = fdiv reassoc nsz arcp contract afn float %i.w, %spec.select
  br label %.sink.split

bb.l:                                             ; preds = %bb.g, %bb.f
  %.not41 = icmp eq ptr %0, null
  br i1 %.not41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.z = load i32, ptr %i.y, align 8, !tbaa !159
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to float
  store float %i.aa, ptr %0, align 4, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not42 = icmp eq ptr %1, null
  br i1 %.not42, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 380
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !160
  %i.ad = sitofp reassoc nsz arcp contract afn i32 %i.ac to float
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.o, %bb.e
  %.sink = phi float [ %i.m, %bb.e ], [ %i.ad, %bb.o ], [ %i.x, %bb.k ]
  store float %.sink, ptr %1, align 4, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.d, %bb.n, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.af = load <2 x i32>, ptr %i.ae, align 16, !tbaa !24
  %i.ag = sitofp reassoc nsz arcp contract afn <2 x i32> %i.af to <2 x float> ; 2 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0
  store float %i.ah, ptr %2, align 4, !tbaa !22
  %i.ai = extractelement <2 x float> %i.ag, i64 1
  store float %i.ai, ptr %3, align 4, !tbaa !22
  ret void
}

declare i32 @dt_dev_distort_transform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #1

declare i32 @dt_dev_distort_backtransform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #5

declare i32 @dt_dev_distort_backtransform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @dt_masks_gui_form_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_control_queue_redraw_center() local_unnamed_addr #1

declare float @dt_masks_drag_factor(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare float @dt_masks_change_size(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @dt_toast_log(ptr noundef, ...) local_unnamed_addr #1

declare void @dt_dev_masks_list_change(ptr noundef) local_unnamed_addr #1

declare float @dt_masks_form_change_opacity(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @dt_dev_add_masks_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #1

declare void @dt_masks_set_edit_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_iop_update(ptr noundef) local_unnamed_addr #1

declare void @dt_masks_set_source_pos_initial_state(ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @dt_masks_set_source_pos_initial_value(ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @dt_masks_gui_form_save_creation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_set_edit_mode_single_form(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_dev_masks_selection_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_select_form(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dt_masks_get_from_id(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @dt_masks_create(i32 noundef) local_unnamed_addr #1

declare void @dt_masks_change_form_gui(ptr noundef) local_unnamed_addr #1

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_masks_clear_form_gui(ptr noundef) local_unnamed_addr #1

declare ptr @g_list_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_masks_form_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @cairo_save(ptr noundef) local_unnamed_addr #1

declare void @cairo_restore(ptr noundef) local_unnamed_addr #1

declare void @dt_masks_calculate_source_pos_value(ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_draw_clone_source_pos(ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @dt_masks_draw_anchor(ptr noundef, i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_closest_point(i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_masks_draw_arrow(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_stroke_arrow(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @dt_masks_line_stroke(ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS6_GList", !11, i64 0}
!13 = !{!"p1 _ZTS20dt_masks_functions_t", !11, i64 0}
!14 = !{!"dt_masks_form_t", !12, i64 0, !8, i64 8, !13, i64 16, !7, i64 24, !7, i64 32, !8, i64 160, !8, i64 164}
!15 = !{!14, !12, i64 0}
!16 = !{!"_GList", !11, i64 0, !12, i64 8, !12, i64 16}
!17 = !{!16, !11, i64 0}
!18 = !{!"float", !7, i64 0}
!19 = !{!"dt_masks_point_circle_t", !7, i64 0, !18, i64 8, !18, i64 12}
!20 = !{!19, !18, i64 8}
!21 = !{!14, !8, i64 8}
!22 = !{!18, !18, i64 0}
!23 = !{!19, !18, i64 12}
!24 = !{!8, !8, i64 0}
!25 = !{!12, !12, i64 0}
!26 = !{!"p1 _ZTS17dt_masks_dynbuf_t", !11, i64 0}
end_hunk_4
