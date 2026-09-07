Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/thumbnail?download=true
inline.NumInlined: 149
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@dt_thumbnail_image_refresh_position:bb.a

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !171
  %i.ah = sitofp reassoc nsz arcp contract afn i32 %i.ag to double
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1448
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !177 ; 2 uses
  %i.al = fmul reassoc nsz arcp contract afn double %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !185
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.an to float
  %i.ap = fmul reassoc nsz arcp contract afn float %i.k, %i.ao
  %i.aq = fpext reassoc nsz arcp contract afn float %i.ap to double
  %i.ar = fsub reassoc nsz arcp contract afn double %i.al, %i.aq
  %i.as = fdiv reassoc nsz arcp contract afn double %i.ar, %i.ak ; 2 uses
  %i.at = fcmp reassoc nsz arcp contract afn olt double %i.ae, %i.as
  %.25 = select reassoc nsz arcp contract afn i1 %i.at, double %i.as, double %i.ae
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = phi reassoc nsz arcp contract afn double [ 0.000000e+00, %bb.e ], [ %.25, %bb.f ]
  store double %i.au, ptr %i.ad, align 8, !tbaa !250
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19
  call void @gtk_widget_queue_draw(ptr noundef %i.aw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nounwind uwtable
define float @dt_thumbnail_get_zoom100(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !181 ; 2 uses
  %i.e = fcmp reassoc nsz arcp contract afn olt float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !171
  %i.f = load i32, ptr %0, align 8, !tbaa !86
  %i.g = call i32 @dt_image_get_final_size(i32 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !182  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call fastcc void @_thumb_retrieve_margins(ptr noundef nonnull %0)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !182
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load <2 x i32>, ptr %i.k, align 8, !tbaa !171
  %i.m = load <4 x i16>, ptr %i.j, align 2, !tbaa !183 ; 2 uses
  %i.n = shufflevector <4 x i16> %i.m, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.o = sext <2 x i16> %i.n to <2 x i32>
  %i.p = shufflevector <4 x i16> %i.m, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.q = sext <2 x i16> %i.p to <2 x i32>
  %i.r = add nsw <2 x i32> %i.o, %i.q
  %i.s = sub <2 x i32> %i.l, %i.r
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %i.u = load i32, ptr %i.a, align 4, !tbaa !171
  %i.v = load i32, ptr %i.b, align 4, !tbaa !171
  %i.w = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %i.v, i64 1
  %i.y = sitofp <2 x i32> %i.x to <2 x float>
  %i.z = fdiv reassoc nsz arcp contract afn <2 x float> %i.y, %i.t ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = extractelement <2 x float> %i.z, i64 1
  %i.ac = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aa, float %i.ab) ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %i.ac, 1.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.ad, float 1.000000e+00, float %i.ac ; 2 uses
  store float %spec.select, ptr %i.c, align 8, !tbaa !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.ae = phi float [ %spec.select, %bb.d ], [ %i.d, %bb.a ] ; 2 uses
  %i.af = fcmp reassoc nsz arcp contract afn olt float %i.ae, 1.000000e+00
  %spec.select18 = select reassoc nsz arcp contract afn i1 %i.af, float 1.000000e+00, float %i.ae
  ret float %spec.select18
}

declare i32 @dt_image_get_final_size(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #9

; Function Attrs: nounwind uwtable
define float @dt_thumbnail_get_zoom_ratio(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !181 ; 2 uses
  %i.e = fcmp reassoc nsz arcp contract afn olt float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !171
  %i.f = load i32, ptr %0, align 8, !tbaa !86
  %i.g = call i32 @dt_image_get_final_size(i32 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !182  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %dt_thumbnail_get_zoom100.exit

bb.c:                                             ; preds = %bb.b
  call fastcc void @_thumb_retrieve_margins(ptr noundef nonnull %0)
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !182
  br label %dt_thumbnail_get_zoom100.exit

dt_thumbnail_get_zoom100.exit:                    ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %.pre.i, %bb.c ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load <2 x i32>, ptr %i.k, align 8, !tbaa !171
  %i.m = load <4 x i16>, ptr %i.j, align 2, !tbaa !183 ; 2 uses
  %i.n = shufflevector <4 x i16> %i.m, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.o = sext <2 x i16> %i.n to <2 x i32>
  %i.p = shufflevector <4 x i16> %i.m, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.q = sext <2 x i16> %i.p to <2 x i32>
  %i.r = add nsw <2 x i32> %i.o, %i.q
  %i.s = sub <2 x i32> %i.l, %i.r
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %i.u = load i32, ptr %i.a, align 4, !tbaa !171
  %i.v = load i32, ptr %i.b, align 4, !tbaa !171
  %i.w = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %i.v, i64 1
  %i.y = sitofp <2 x i32> %i.x to <2 x float>
  %i.z = fdiv reassoc nsz arcp contract afn <2 x float> %i.y, %i.t ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = extractelement <2 x float> %i.z, i64 1
  %i.ac = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aa, float %i.ab) ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %i.ac, 1.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.ad, float 1.000000e+00, float %i.ac ; 2 uses
  store float %spec.select.i, ptr %i.c, align 8, !tbaa !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.d

bb.d:                                             ; preds = %dt_thumbnail_get_zoom100.exit, %bb.a
  %i.ae = phi float [ %spec.select.i, %dt_thumbnail_get_zoom100.exit ], [ %i.d, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.ag = load float, ptr %i.af, align 4, !tbaa !180
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, -1.000000e+00
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ae, -1.000000e+00
  %i.aj = fdiv reassoc nsz arcp contract afn float %i.ah, %i.ai
  ret float %i.aj
}

declare i32 @dt_view_get_current() local_unnamed_addr #1

declare void @dt_control_set_mouse_over_id(i32 noundef) local_unnamed_addr #1

declare void @dt_gui_gtk_set_source_rgb(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @cairo_paint(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @cairo_format_stride_for_width(i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cairo_image_surface_create_for_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #9

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #1

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

declare void @cairo_pattern_set_filter(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cairo_get_source(ptr noundef) local_unnamed_addr #1

declare void @cairo_save(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @dt_focuspeaking(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef readonly captures(none) %3) unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 24 uses
  %i.b = sext i32 %2 to i64                       ; 8 uses
  %i.c = mul nsw i64 %i.b, %i.a                   ; 6 uses
  %i.d = shl i64 %i.c, 2                          ; 2 uses
  %i.e = tail call ptr @dt_alloc_aligned(i64 noundef %i.d) #22 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.e, i64 64) ]
  %i.f = shl i32 %1, 2
  %i.g = mul i32 %i.f, %2
  %i.h = sext i32 %i.g to i64
  %i.i = tail call ptr @dt_alloc_aligned(i64 noundef %i.h) #22 ; 16 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.i, i64 64) ]
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.c, 9
  br i1 %min.iters.check, label %.lr.ph.preheader421, label %vector.ph

.lr.ph.preheader421:                              ; preds = %vector.body, %.lr.ph.preheader
  %.0165192.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.j = and i64 %i.c, 7                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 8, i64 %i.j
  %n.vec = sub i64 %i.c, %i.l                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = shl nuw i64 %index, 2
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %i.m
  %wide.vec = load <32 x i8>, ptr %i.n, align 1, !tbaa !189 ; 3 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec295 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec296 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.o = uitofp <8 x i8> %strided.vec to <8 x float>
  %i.p = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.o, splat (float f0x3B808081)
  %i.q = tail call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %i.p, <8 x float> splat (float 4.400000e+00))
  %i.r = uitofp <8 x i8> %strided.vec295 to <8 x float>
  %i.s = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.r, splat (float f0x3B808081)
  %i.t = tail call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %i.s, <8 x float> splat (float 4.400000e+00))
  %i.u = fadd reassoc nsz arcp contract afn <8 x float> %i.t, %i.q
  %i.v = uitofp <8 x i8> %strided.vec296 to <8 x float>
  %i.w = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.v, splat (float f0x3B808081)
  %i.x = tail call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %i.w, <8 x float> splat (float 4.400000e+00))
  %i.y = fadd reassoc nsz arcp contract afn <8 x float> %i.u, %i.x
  %i.z = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.y)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <8 x float> %i.z, ptr %i.aa, align 32, !tbaa !190
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %.lr.ph.preheader421, label %vector.body, !llvm.loop !304

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call fastcc void @fast_surface_blur(ptr noundef %i.e, i64 noundef %i.a, i64 noundef %i.b)
  %i.ac = tail call ptr @dt_alloc_aligned(i64 noundef %i.d) #22 ; 18 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %.not236 = icmp eq i32 %2, 0
  br i1 %.not236, label %._crit_edge205.split.thread, label %.preheader191.lr.ph

._crit_edge205.split.thread:                      ; preds = %._crit_edge
  tail call void @dt_box_mean(ptr noundef %i.ac, i64 noundef %i.b, i64 noundef %i.a, i32 noundef 1, i64 noundef 2, i32 noundef 1) #22
  br label %.preheader190.lr.ph

.preheader191.lr.ph:                              ; preds = %._crit_edge
  %.not237 = icmp eq i32 %1, 0
  %i.ad = add nsw i32 %2, -2                      ; 2 uses
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = add nsw i32 %1, -2
  %i.ag = sext i32 %i.af to i64
  br i1 %.not237, label %._crit_edge205.split, label %.preheader191.preheader

.preheader191.preheader:                          ; preds = %.preheader191.lr.ph
  %i.ah = shl nsw i64 %i.a, 2                     ; 2 uses
  %exitcond246.peel.not = icmp eq i32 %1, 1
  %exitcond246.peel256.not = icmp eq i32 %1, 2
  br label %.preheader191

.lr.ph:                                           ; preds = %.lr.ph.preheader421, %.lr.ph
  %.0165192 = phi i64 [ %i.bc, %.lr.ph ], [ %.0165192.ph, %.lr.ph.preheader421 ] ; 3 uses
  %i.ai = shl nuw i64 %.0165192, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 %i.ai ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !189
  %i.al = uitofp reassoc nsz arcp contract afn i8 %i.ak to float
  %i.am = fmul reassoc nnan nsz arcp contract afn float %i.al, f0x3B808081
  %i.an = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.am, float 4.400000e+00)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !189
  %i.aq = uitofp reassoc nsz arcp contract afn i8 %i.ap to float
  %i.ar = fmul reassoc nnan nsz arcp contract afn float %i.aq, f0x3B808081
  %i.as = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ar, float 4.400000e+00)
  %i.at = fadd reassoc nsz arcp contract afn float %i.as, %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !189
  %i.aw = uitofp reassoc nsz arcp contract afn i8 %i.av to float
  %i.ax = fmul reassoc nnan nsz arcp contract afn float %i.aw, f0x3B808081
  %i.ay = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ax, float 4.400000e+00)
  %i.az = fadd reassoc nsz arcp contract afn float %i.at, %i.ay
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.az)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0165192
  store float %i.ba, ptr %i.bb, align 4, !tbaa !190
  %i.bc = add nuw i64 %.0165192, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !305

.preheader191:                                    ; preds = %.preheader191.preheader, %._crit_edge196
  %.0164204 = phi i64 [ %i.bi, %._crit_edge196 ], [ 0, %.preheader191.preheader ] ; 8 uses
  %i.bd = mul i64 %i.ah, %.0164204
  %scevgep258 = getelementptr i8, ptr %i.ac, i64 %i.bd
  %i.be = mul i64 %.0164204, %i.a                 ; 4 uses
  %i.bf = icmp ult i64 %.0164204, 2
  %i.bg = add i64 %.0164204, -1
  %i.bh = mul i64 %i.bg, %i.a
  %i.bi = add nuw i64 %.0164204, 1                ; 3 uses
  %i.bj = mul i64 %i.bi, %i.a
  %i.bk = add i64 %.0164204, -2
  %i.bl = mul i64 %i.bk, %i.a
  %i.bm = add i64 %.0164204, 2
  %i.bn = mul i64 %i.bm, %i.a
  %invariant.gep = getelementptr [4 x i8], ptr %i.e, i64 %i.be ; 4 uses
  %i.bo = getelementptr [4 x i8], ptr %i.e, i64 %i.bj ; 3 uses
  %i.bp = getelementptr [4 x i8], ptr %i.e, i64 %i.bh ; 3 uses
  %i.bq = getelementptr [4 x i8], ptr %i.e, i64 %i.bn ; 3 uses
  %i.br = getelementptr [4 x i8], ptr %i.e, i64 %i.bl ; 3 uses
  br i1 %i.bf, label %._crit_edge196.sink.split, label %.lr.ph195.split

.lr.ph195.split:                                  ; preds = %.preheader191
  %i.bs = icmp uge i64 %.0164204, %i.ae
  %.fr = freeze i1 %i.bs
  br i1 %.fr, label %._crit_edge196.sink.split, label %.lr.ph195.split.split.preheader

.lr.ph195.split.split.preheader:                  ; preds = %.lr.ph195.split
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.be
  store float 0.000000e+00, ptr %i.bt, align 4, !tbaa !190
  br i1 %exitcond246.peel.not, label %._crit_edge196, label %.lr.ph195.split.split.peel.next

.lr.ph195.split.split.peel.next:                  ; preds = %.lr.ph195.split.split.preheader
  %i.bu = getelementptr [4 x i8], ptr %i.ac, i64 %i.be
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  store float 0.000000e+00, ptr %i.bv, align 4, !tbaa !190
  br i1 %exitcond246.peel256.not, label %._crit_edge196, label %.lr.ph195.split.split.peel.next247

.lr.ph195.split.split.peel.next247:               ; preds = %.lr.ph195.split.split.peel.next
  %invariant.gep292 = getelementptr [4 x i8], ptr %i.ac, i64 %i.be
  br label %.lr.ph195.split.split

._crit_edge205.split:                             ; preds = %._crit_edge196, %.preheader191.lr.ph
  tail call void @dt_box_mean(ptr noundef %i.ac, i64 noundef %i.b, i64 noundef %i.a, i32 noundef 1, i64 noundef 2, i32 noundef 1) #22
  %i.bw = icmp ugt i32 %i.ad, 2
  br i1 %i.bw, label %.preheader190.lr.ph, label %._crit_edge212.thread287

._crit_edge212.thread287:                         ; preds = %._crit_edge205.split
  %i.bx = add nsw i32 %2, -4
  %i.by = sitofp reassoc nsz arcp contract afn i32 %i.bx to float
  %i.bz = add nsw i32 %1, -4
  %i.ca = sitofp reassoc nsz arcp contract afn i32 %i.bz to float
  %i.cb = fmul reassoc nnan nsz arcp contract afn float %i.by, %i.ca ; 2 uses
  %i.cc = fdiv reassoc nsz arcp contract afn float 0.000000e+00, %i.cb
  br label %._crit_edge222

.preheader190.lr.ph:                              ; preds = %._crit_edge205.split.thread, %._crit_edge205.split
  %.pre-phi271283 = phi i64 [ -2, %._crit_edge205.split.thread ], [ %i.ae, %._crit_edge205.split ] ; 2 uses
  %i.cd = add nsw i32 %1, -2                      ; 2 uses
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = icmp ugt i32 %i.cd, 2
  br i1 %i.cf, label %.preheader190.us.preheader, label %.preheader189.lr.ph.thread

.preheader190.us.preheader:                       ; preds = %.preheader190.lr.ph
  %i.cg = add nsw i64 %i.ce, -2                   ; 14 uses
  %min.iters.check298 = icmp ult i64 %i.cg, 8
  %min.iters.check299 = icmp ult i64 %i.cg, 32
  %i.ch = and i64 %i.cg, 24
  %n.vec301 = and i64 %i.cg, -32                  ; 4 uses
  %i.ci = or disjoint i64 %n.vec301, 2
  %cmp.n = icmp eq i64 %i.cg, %n.vec301
  %min.epilog.iters.check = icmp eq i64 %i.ch, 0
  %n.vec315 = and i64 %i.cg, -8                   ; 3 uses
  %i.cj = or disjoint i64 %n.vec315, 2
  %cmp.n320 = icmp eq i64 %i.cg, %n.vec315
  br label %iter.check

.preheader189.lr.ph.thread:                       ; preds = %.preheader190.lr.ph
  %i.ck = add nsw i32 %2, -4
  %i.cl = sitofp reassoc nsz arcp contract afn i32 %i.ck to float
  %i.cm = add nsw i32 %1, -4
  %i.cn = sitofp reassoc nsz arcp contract afn i32 %i.cm to float
  %i.co = fmul reassoc nnan nsz arcp contract afn float %i.cl, %i.cn ; 2 uses
  %i.cp = fdiv reassoc nsz arcp contract afn float 0.000000e+00, %i.co
  br label %._crit_edge222

iter.check:                                       ; preds = %.preheader190.us.preheader, %._crit_edge209.us
  %.0160211.us = phi i64 [ %i.do, %._crit_edge209.us ], [ 2, %.preheader190.us.preheader ] ; 2 uses
  %.0161210.us = phi float [ %.lcssa294, %._crit_edge209.us ], [ 0.000000e+00, %.preheader190.us.preheader ] ; 3 uses
  %i.cq = mul i64 %.0160211.us, %i.a
  %i.cr = getelementptr [4 x i8], ptr %i.ac, i64 %i.cq ; 3 uses
  br i1 %min.iters.check298, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check299, label %vec.epilog.ph, label %vector.ph300
end_hunk_0
begin_hunk_1_@dt_focuspeaking:bb.a
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !190
  %i.eb = fsub reassoc nsz arcp contract afn float %i.dy, %i.ea
  %i.ec = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.dw, float noundef %i.eb) #27
  %i.ed = getelementptr [4 x i8], ptr %i.bo, i64 %i.dr
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !190
  %i.ef = getelementptr [4 x i8], ptr %i.bp, i64 %i.dq
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !190
  %i.eh = fsub reassoc nsz arcp contract afn float %i.ee, %i.eg
  %i.ei = getelementptr [4 x i8], ptr %i.bo, i64 %i.dq
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !190
  %i.ek = getelementptr [4 x i8], ptr %i.bp, i64 %i.dr
  %i.el = load float, ptr %i.ek, align 4, !tbaa !190
  %i.em = fsub reassoc nsz arcp contract afn float %i.ej, %i.el
  %i.en = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.eh, float noundef %i.em) #27
  %i.eo = fadd reassoc nsz arcp contract afn float %i.en, %i.ec
  %i.ep = fmul reassoc nsz arcp contract afn float %i.eo, 5.000000e-01
  %gep200 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dt
  %i.eq = load float, ptr %gep200, align 4, !tbaa !190
  %gep202 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ds
  %i.er = load float, ptr %gep202, align 4, !tbaa !190
  %i.es = fsub reassoc nsz arcp contract afn float %i.eq, %i.er
  %i.et = getelementptr [4 x i8], ptr %i.bq, i64 %.0163193
  %i.eu = load float, ptr %i.et, align 4, !tbaa !190
  %i.ev = getelementptr [4 x i8], ptr %i.br, i64 %.0163193
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !190
  %i.ex = fsub reassoc nsz arcp contract afn float %i.eu, %i.ew
  %i.ey = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.es, float noundef %i.ex) #27
  %i.ez = getelementptr [4 x i8], ptr %i.bq, i64 %i.dt
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !190
  %i.fb = getelementptr [4 x i8], ptr %i.br, i64 %i.ds
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !190
  %i.fd = fsub reassoc nsz arcp contract afn float %i.fa, %i.fc
  %i.fe = getelementptr [4 x i8], ptr %i.bq, i64 %i.ds
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !190
  %i.fg = getelementptr [4 x i8], ptr %i.br, i64 %i.dt
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !190
  %i.fi = fsub reassoc nsz arcp contract afn float %i.ff, %i.fh
  %i.fj = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.fd, float noundef %i.fi) #27
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fj, %i.ey
  %.neg = fmul reassoc nsz arcp contract afn float %i.fk, -3.350000e-01
  %.neg181 = fadd reassoc nsz arcp contract afn float %i.ep, f0x3B2B851F
  %i.fl = fadd reassoc nsz arcp contract afn float %.neg181, %.neg
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %i.dr, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %.sink267 = phi float [ %i.fl, %bb.c ], [ 0.000000e+00, %bb.b ]
  %gep293 = getelementptr [4 x i8], ptr %invariant.gep292, i64 %.0163193
  store float %.sink267, ptr %gep293, align 4, !tbaa !190
  %exitcond246.not = icmp eq i64 %.pre-phi, %i.a
  br i1 %exitcond246.not, label %._crit_edge196, label %.lr.ph195.split.split, !llvm.loop !309

._crit_edge212:                                   ; preds = %._crit_edge209.us
  %i.fm = add nsw i32 %2, -4
  %i.fn = sitofp reassoc nsz arcp contract afn i32 %i.fm to float
  %i.fo = add nsw i32 %1, -4
  %i.fp = sitofp reassoc nsz arcp contract afn i32 %i.fo to float
  %i.fq = fmul reassoc nnan nsz arcp contract afn float %i.fn, %i.fp ; 3 uses
  %i.fr = fdiv reassoc nsz arcp contract afn float %.lcssa294, %i.fq ; 5 uses
  %i.fs = add nsw i32 %1, -2                      ; 2 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = icmp ugt i32 %i.fs, 2
  br i1 %i.fu, label %iter.check348.preheader, label %._crit_edge222

iter.check348.preheader:                          ; preds = %._crit_edge212
  %min.iters.check324 = icmp ult i64 %i.cg, 8
  %min.iters.check326 = icmp ult i64 %i.cg, 32
  %i.fv = and i64 %i.cg, 24
  %n.vec328 = and i64 %i.cg, -32                  ; 4 uses
  %i.fw = or disjoint i64 %n.vec328, 2
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.fr, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n344 = icmp eq i64 %i.cg, %n.vec328
  %min.epilog.iters.check351 = icmp eq i64 %i.fv, 0
  %n.vec353 = and i64 %i.cg, -8                   ; 3 uses
  %i.fx = or disjoint i64 %n.vec353, 2
  %broadcast.splatinsert354 = insertelement <8 x float> poison, float %i.fr, i64 0
  %broadcast.splat355 = shufflevector <8 x float> %broadcast.splatinsert354, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n362 = icmp eq i64 %i.cg, %n.vec353
  br label %iter.check348

iter.check348:                                    ; preds = %iter.check348.preheader, %._crit_edge219.us
  %.0157221.us = phi i64 [ %i.hi, %._crit_edge219.us ], [ 2, %iter.check348.preheader ] ; 2 uses
  %.0158220.us = phi float [ %.lcssa, %._crit_edge219.us ], [ 0.000000e+00, %iter.check348.preheader ] ; 3 uses
  %i.fy = mul i64 %.0157221.us, %i.a
  %i.fz = getelementptr [4 x i8], ptr %i.ac, i64 %i.fy ; 3 uses
  br i1 %min.iters.check324, label %vec.epilog.scalar.ph349.preheader, label %vector.main.loop.iter.check325

vector.main.loop.iter.check325:                   ; preds = %iter.check348
  br i1 %min.iters.check326, label %vec.epilog.ph352, label %vector.ph327

vector.ph327:                                     ; preds = %vector.main.loop.iter.check325
  %i.ga = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0158220.us, i64 0
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next339, %vector.body329 ] ; 2 uses
  %vec.phi331 = phi <8 x float> [ %i.ga, %vector.ph327 ], [ %i.go, %vector.body329 ]
  %vec.phi332 = phi <8 x float> [ zeroinitializer, %vector.ph327 ], [ %i.gp, %vector.body329 ]
  %vec.phi333 = phi <8 x float> [ zeroinitializer, %vector.ph327 ], [ %i.gq, %vector.body329 ]
  %vec.phi334 = phi <8 x float> [ zeroinitializer, %vector.ph327 ], [ %i.gr, %vector.body329 ]
  %i.gb = getelementptr [4 x i8], ptr %i.fz, i64 %index330 ; 4 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %i.gd = getelementptr i8, ptr %i.gb, i64 40
  %i.ge = getelementptr i8, ptr %i.gb, i64 72
  %i.gf = getelementptr i8, ptr %i.gb, i64 104
  %wide.load335 = load <8 x float>, ptr %i.gc, align 4, !tbaa !190
  %wide.load336 = load <8 x float>, ptr %i.gd, align 4, !tbaa !190
  %wide.load337 = load <8 x float>, ptr %i.ge, align 4, !tbaa !190
  %wide.load338 = load <8 x float>, ptr %i.gf, align 4, !tbaa !190
  %i.gg = fsub reassoc nsz arcp contract afn <8 x float> %wide.load335, %broadcast.splat
  %i.gh = fsub reassoc nsz arcp contract afn <8 x float> %wide.load336, %broadcast.splat
  %i.gi = fsub reassoc nsz arcp contract afn <8 x float> %wide.load337, %broadcast.splat
  %i.gj = fsub reassoc nsz arcp contract afn <8 x float> %wide.load338, %broadcast.splat
  %i.gk = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gg)
  %i.gl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gh)
  %i.gm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gi)
  %i.gn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gj)
  %i.go = fadd reassoc nsz arcp contract afn <8 x float> %i.gk, %vec.phi331 ; 2 uses
  %i.gp = fadd reassoc nsz arcp contract afn <8 x float> %i.gl, %vec.phi332 ; 2 uses
  %i.gq = fadd reassoc nsz arcp contract afn <8 x float> %i.gm, %vec.phi333 ; 2 uses
  %i.gr = fadd reassoc nsz arcp contract afn <8 x float> %i.gn, %vec.phi334 ; 2 uses
  %index.next339 = add nuw i64 %index330, 32      ; 2 uses
  %i.gs = icmp eq i64 %index.next339, %n.vec328
  br i1 %i.gs, label %middle.block340, label %vector.body329, !llvm.loop !310

middle.block340:                                  ; preds = %vector.body329
  %bin.rdx341 = fadd reassoc nsz arcp contract afn <8 x float> %i.gp, %i.go
  %bin.rdx342 = fadd reassoc nsz arcp contract afn <8 x float> %i.gq, %bin.rdx341
  %bin.rdx343 = fadd reassoc nsz arcp contract afn <8 x float> %i.gr, %bin.rdx342
  %i.gt = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx343) ; 3 uses
  br i1 %cmp.n344, label %._crit_edge219.us, label %vec.epilog.iter.check350

vec.epilog.iter.check350:                         ; preds = %middle.block340
  br i1 %min.epilog.iters.check351, label %vec.epilog.scalar.ph349.preheader, label %vec.epilog.ph352, !prof !319

vec.epilog.ph352:                                 ; preds = %vector.main.loop.iter.check325, %vec.epilog.iter.check350
  %vec.epilog.resume.val345 = phi i64 [ %n.vec328, %vec.epilog.iter.check350 ], [ 0, %vector.main.loop.iter.check325 ]
  %bc.merge.rdx347 = phi float [ %i.gt, %vec.epilog.iter.check350 ], [ %.0158220.us, %vector.main.loop.iter.check325 ]
  %i.gu = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx347, i64 0
  br label %vec.epilog.vector.body356

vec.epilog.vector.body356:                        ; preds = %vec.epilog.vector.body356, %vec.epilog.ph352
  %index357 = phi i64 [ %vec.epilog.resume.val345, %vec.epilog.ph352 ], [ %index.next360, %vec.epilog.vector.body356 ] ; 2 uses
  %vec.phi358 = phi <8 x float> [ %i.gu, %vec.epilog.ph352 ], [ %i.gz, %vec.epilog.vector.body356 ]
  %i.gv = getelementptr [4 x i8], ptr %i.fz, i64 %index357
  %i.gw = getelementptr i8, ptr %i.gv, i64 8
  %wide.load359 = load <8 x float>, ptr %i.gw, align 4, !tbaa !190
  %i.gx = fsub reassoc nsz arcp contract afn <8 x float> %wide.load359, %broadcast.splat355
  %i.gy = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gx)
  %i.gz = fadd reassoc nsz arcp contract afn <8 x float> %i.gy, %vec.phi358 ; 2 uses
  %index.next360 = add nuw i64 %index357, 8       ; 2 uses
  %i.ha = icmp eq i64 %index.next360, %n.vec353
  br i1 %i.ha, label %vec.epilog.middle.block361, label %vec.epilog.vector.body356, !llvm.loop !311

vec.epilog.middle.block361:                       ; preds = %vec.epilog.vector.body356
  %i.hb = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.gz) ; 2 uses
  br i1 %cmp.n362, label %._crit_edge219.us, label %vec.epilog.scalar.ph349.preheader

vec.epilog.scalar.ph349.preheader:                ; preds = %iter.check348, %vec.epilog.iter.check350, %vec.epilog.middle.block361
  %.0156217.us.ph = phi i64 [ 2, %iter.check348 ], [ %i.fw, %vec.epilog.iter.check350 ], [ %i.fx, %vec.epilog.middle.block361 ]
  %.1216.us.ph = phi float [ %.0158220.us, %iter.check348 ], [ %i.gt, %vec.epilog.iter.check350 ], [ %i.hb, %vec.epilog.middle.block361 ]
  br label %vec.epilog.scalar.ph349

vec.epilog.scalar.ph349:                          ; preds = %vec.epilog.scalar.ph349.preheader, %vec.epilog.scalar.ph349
  %.0156217.us = phi i64 [ %i.hh, %vec.epilog.scalar.ph349 ], [ %.0156217.us.ph, %vec.epilog.scalar.ph349.preheader ] ; 2 uses
  %.1216.us = phi float [ %i.hg, %vec.epilog.scalar.ph349 ], [ %.1216.us.ph, %vec.epilog.scalar.ph349.preheader ]
  %i.hc = getelementptr [4 x i8], ptr %i.fz, i64 %.0156217.us
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !190
  %i.he = fsub reassoc nsz arcp contract afn float %i.hd, %i.fr
  %i.hf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.he)
  %i.hg = fadd reassoc nsz arcp contract afn float %i.hf, %.1216.us ; 2 uses
  %i.hh = add nuw i64 %.0156217.us, 1             ; 2 uses
  %exitcond262.not = icmp eq i64 %i.hh, %i.ft
  br i1 %exitcond262.not, label %._crit_edge219.us, label %vec.epilog.scalar.ph349, !llvm.loop !312

._crit_edge219.us:                                ; preds = %vec.epilog.scalar.ph349, %vec.epilog.middle.block361, %middle.block340
  %.lcssa = phi float [ %i.hb, %vec.epilog.middle.block361 ], [ %i.gt, %middle.block340 ], [ %i.hg, %vec.epilog.scalar.ph349 ] ; 2 uses
  %i.hi = add nuw i64 %.0157221.us, 1             ; 2 uses
  %exitcond263.not = icmp eq i64 %i.hi, %.pre-phi271283
  br i1 %exitcond263.not, label %._crit_edge222, label %iter.check348

._crit_edge222:                                   ; preds = %._crit_edge219.us, %._crit_edge212, %.preheader189.lr.ph.thread, %._crit_edge212.thread287
  %i.hj = phi float [ %i.cp, %.preheader189.lr.ph.thread ], [ %i.fr, %._crit_edge212 ], [ %i.cc, %._crit_edge212.thread287 ], [ %i.fr, %._crit_edge219.us ] ; 3 uses
  %i.hk = phi float [ %i.co, %.preheader189.lr.ph.thread ], [ %i.fq, %._crit_edge212 ], [ %i.cb, %._crit_edge212.thread287 ], [ %i.fq, %._crit_edge219.us ]
  %.0158.lcssa = phi float [ 0.000000e+00, %.preheader189.lr.ph.thread ], [ 0.000000e+00, %._crit_edge212 ], [ 0.000000e+00, %._crit_edge212.thread287 ], [ %.lcssa, %._crit_edge219.us ]
  %i.hl = fdiv reassoc nsz arcp contract afn float %.0158.lcssa, %i.hk ; 3 uses
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hl, 1.000000e+01
  %i.hn = fadd reassoc nsz arcp contract afn float %i.hm, %i.hj ; 5 uses
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hl, 5.000000e+00
  %i.hp = fadd reassoc nsz arcp contract afn float %i.ho, %i.hj ; 5 uses
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hl, 2.500000e+00
  %i.hr = fadd reassoc nsz arcp contract afn float %i.hq, %i.hj ; 5 uses
  tail call fastcc void @fast_surface_blur(ptr noundef %i.ac, i64 noundef %i.a, i64 noundef %i.b)
  %i.hs = icmp ne i32 %2, 0
  %i.ht = icmp ne i32 %1, 0
  %or.cond235 = and i1 %i.hs, %i.ht
  br i1 %or.cond235, label %.preheader188.preheader, label %._crit_edge234.split

.preheader188.preheader:                          ; preds = %._crit_edge222
  %i.hu = add nsw i64 %i.a, -1                    ; 2 uses
  %i.hv = sext i32 %1 to i64
  %i.hw = mul nsw i64 %i.b, %i.a
  %i.hx = shl i64 %i.hw, 2
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.hx
  %i.hy = shl nsw i64 %i.a, 2
  %i.hz = sext i32 %1 to i64
  %scevgep366 = getelementptr i8, ptr %i.ac, i64 %i.hy
  %min.iters.check369 = icmp ult i32 %1, 8
  %i.ia = trunc nsw i64 %i.hu to i62
  %i.ib = icmp ugt i64 %i.hu, 4611686018427387903
  %min.iters.check371 = icmp ult i32 %1, 32
  %n.vec373 = and i64 %i.a, 9223372036854775776   ; 4 uses
  %broadcast.splatinsert374 = insertelement <8 x float> poison, float %i.hn, i64 0
  %broadcast.splat375 = shufflevector <8 x float> %broadcast.splatinsert374, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert376 = insertelement <8 x float> poison, float %i.hp, i64 0
  %broadcast.splat377 = shufflevector <8 x float> %broadcast.splatinsert376, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert378 = insertelement <8 x float> poison, float %i.hr, i64 0
  %broadcast.splat379 = shufflevector <8 x float> %broadcast.splatinsert378, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n388 = icmp eq i64 %n.vec373, %i.a
  %i.ic = and i32 %1, 24
  %min.epilog.iters.check393 = icmp eq i32 %i.ic, 0
  %n.vec395 = and i64 %i.a, 9223372036854775800   ; 3 uses
  %broadcast.splatinsert396 = insertelement <8 x float> poison, float %i.hn, i64 0
  %broadcast.splat397 = shufflevector <8 x float> %broadcast.splatinsert396, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert398 = insertelement <8 x float> poison, float %i.hp, i64 0
  %broadcast.splat399 = shufflevector <8 x float> %broadcast.splatinsert398, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert400 = insertelement <8 x float> poison, float %i.hr, i64 0
  %broadcast.splat401 = shufflevector <8 x float> %broadcast.splatinsert400, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n407 = icmp eq i64 %n.vec395, %i.a
  %i.id = and i32 %1, 1
  %lcmp.mod.not = icmp eq i32 %i.id, 0
  %4 = add nsw i64 %i.a, -1
  br label %iter.check390

iter.check390:                                    ; preds = %.preheader188.preheader, %._crit_edge232
  %.0155233 = phi i64 [ %i.lx, %._crit_edge232 ], [ 0, %.preheader188.preheader ] ; 4 uses
  %i.ie = mul i64 %.0155233, %i.hz
  %i.if = shl i64 %i.ie, 2                        ; 2 uses
  %scevgep365 = getelementptr i8, ptr %i.ac, i64 %i.if
  %scevgep367 = getelementptr i8, ptr %scevgep366, i64 %i.if
  %i.ig = mul i64 %.0155233, %i.a                 ; 5 uses
  br i1 %min.iters.check369, label %vec.epilog.scalar.ph391.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check390
  %i.ih = mul i64 %.0155233, %i.hv
  %i.ii = trunc i64 %i.ih to i62
  %i.ij = xor i62 %i.ii, -1
  %i.ik = icmp ult i62 %i.ij, %i.ia
  %i.il = or i1 %i.ik, %i.ib
  br i1 %i.il, label %vec.epilog.scalar.ph391.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.i, %scevgep367
  %bound1 = icmp ult ptr %scevgep365, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph391.preheader, label %vector.main.loop.iter.check370

vector.main.loop.iter.check370:                   ; preds = %vector.memcheck
  br i1 %min.iters.check371, label %vec.epilog.ph394, label %vector.body380

vector.body380:                                   ; preds = %vector.main.loop.iter.check370, %vector.body380
  %index381 = phi i64 [ %index.next386, %vector.body380 ], [ 0, %vector.main.loop.iter.check370 ] ; 2 uses
  %i.im = add i64 %index381, %i.ig                ; 2 uses
  %i.in = shl i64 %i.im, 2
  %i.io = and i64 %i.im, 4611686018427387903
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.io ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 64
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 96
  %wide.load382 = load <8 x float>, ptr %i.ip, align 4, !tbaa !190, !alias.scope !321 ; 3 uses
  %wide.load383 = load <8 x float>, ptr %i.iq, align 4, !tbaa !190, !alias.scope !321 ; 3 uses
  %wide.load384 = load <8 x float>, ptr %i.ir, align 4, !tbaa !190, !alias.scope !321 ; 3 uses
  %wide.load385 = load <8 x float>, ptr %i.is, align 4, !tbaa !190, !alias.scope !321 ; 3 uses
  %i.it = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load382, %broadcast.splat375 ; 3 uses
  %i.iu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load383, %broadcast.splat375 ; 3 uses
  %i.iv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load384, %broadcast.splat375 ; 3 uses
  %i.iw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load385, %broadcast.splat375 ; 3 uses
  %i.ix = xor <8 x i1> %i.it, splat (i1 true)
  %i.iy = xor <8 x i1> %i.iu, splat (i1 true)
  %i.iz = xor <8 x i1> %i.iv, splat (i1 true)
  %i.ja = xor <8 x i1> %i.iw, splat (i1 true)
  %i.jb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load382, %broadcast.splat377 ; 2 uses
  %i.jc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load383, %broadcast.splat377 ; 2 uses
  %i.jd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load384, %broadcast.splat377 ; 2 uses
  %i.je = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load385, %broadcast.splat377 ; 2 uses
  %i.jf = select <8 x i1> %i.it, <8 x i1> splat (i1 true), <8 x i1> %i.jb ; 2 uses
  %i.jg = xor <8 x i1> %i.jf, splat (i1 true)
  %i.jh = select <8 x i1> %i.iu, <8 x i1> splat (i1 true), <8 x i1> %i.jc ; 2 uses
  %i.ji = xor <8 x i1> %i.jh, splat (i1 true)
  %i.jj = select <8 x i1> %i.iv, <8 x i1> splat (i1 true), <8 x i1> %i.jd ; 2 uses
  %i.jk = xor <8 x i1> %i.jj, splat (i1 true)
  %i.jl = select <8 x i1> %i.iw, <8 x i1> splat (i1 true), <8 x i1> %i.je ; 2 uses
  %i.jm = xor <8 x i1> %i.jl, splat (i1 true)
  %i.jn = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load382, %broadcast.splat379 ; 2 uses
  %i.jo = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load383, %broadcast.splat379 ; 2 uses
  %i.jp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load384, %broadcast.splat379 ; 2 uses
  %i.jq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load385, %broadcast.splat379 ; 2 uses
  %i.jr = getelementptr i8, ptr %i.i, i64 %i.in   ; 7 uses
  %i.js = select <8 x i1> %i.jf, <8 x i1> splat (i1 true), <8 x i1> %i.jn
  %i.jt = xor <8 x i1> %i.js, splat (i1 true)
  %i.ju = select <8 x i1> %i.jh, <8 x i1> splat (i1 true), <8 x i1> %i.jo
  %i.jv = xor <8 x i1> %i.ju, splat (i1 true)
  %i.jw = select <8 x i1> %i.jj, <8 x i1> splat (i1 true), <8 x i1> %i.jp
  %i.jx = xor <8 x i1> %i.jw, splat (i1 true)
  %i.jy = select <8 x i1> %i.jl, <8 x i1> splat (i1 true), <8 x i1> %i.jq
  %i.jz = xor <8 x i1> %i.jy, splat (i1 true)
  %i.ka = getelementptr i8, ptr %i.jr, i64 32     ; 4 uses
  %i.kb = getelementptr i8, ptr %i.jr, i64 64     ; 4 uses
  %i.kc = getelementptr i8, ptr %i.jr, i64 96     ; 4 uses
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> zeroinitializer, ptr align 4 %i.jr, <8 x i1> %i.jt), !alias.scope !322, !noalias !321
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> zeroinitializer, ptr align 4 %i.ka, <8 x i1> %i.jv), !alias.scope !322, !noalias !321
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> zeroinitializer, ptr align 4 %i.kb, <8 x i1> %i.jx), !alias.scope !322, !noalias !321
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> zeroinitializer, ptr align 4 %i.kc, <8 x i1> %i.jz), !alias.scope !322, !noalias !321
  %i.kd = select <8 x i1> %i.jg, <8 x i1> %i.jn, <8 x i1> zeroinitializer
  %i.ke = select <8 x i1> %i.ji, <8 x i1> %i.jo, <8 x i1> zeroinitializer
  %i.kf = select <8 x i1> %i.jk, <8 x i1> %i.jp, <8 x i1> zeroinitializer
  %i.kg = select <8 x i1> %i.jm, <8 x i1> %i.jq, <8 x i1> zeroinitializer
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> splat (i32 -16776961), ptr align 4 %i.jr, <8 x i1> %i.kd), !tbaa !189, !alias.scope !322, !noalias !321
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> splat (i32 -16776961), ptr align 4 %i.ka, <8 x i1> %i.ke), !tbaa !189, !alias.scope !322, !noalias !321
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> splat (i32 -16776961), ptr align 4 %i.kb, <8 x i1> %i.kf), !tbaa !189, !alias.scope !322, !noalias !321
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> splat (i32 -16776961), ptr align 4 %i.kc, <8 x i1> %i.kg), !tbaa !189, !alias.scope !322, !noalias !321
  %i.kh = select <8 x i1> %i.ix, <8 x i1> %i.jb, <8 x i1> zeroinitializer
  %i.ki = select <8 x i1> %i.iy, <8 x i1> %i.jc, <8 x i1> zeroinitializer
  %i.kj = select <8 x i1> %i.iz, <8 x i1> %i.jd, <8 x i1> zeroinitializer
  %i.kk = select <8 x i1> %i.ja, <8 x i1> %i.je, <8 x i1> zeroinitializer
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> splat (i32 -16711936), ptr align 4 %i.jr, <8 x i1> %i.kh), !tbaa !189, !alias.scope !322, !noalias !321
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> splat (i32 -16711936), ptr align 4 %i.ka, <8 x i1> %i.ki), !tbaa !189, !alias.scope !322, !noalias !321
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> splat (i32 -16711936), ptr align 4 %i.kb, <8 x i1> %i.kj), !tbaa !189, !alias.scope !322, !noalias !321
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> splat (i32 -16711936), ptr align 4 %i.kc, <8 x i1> %i.kk), !tbaa !189, !alias.scope !322, !noalias !321
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> splat (i32 -256), ptr align 4 %i.jr, <8 x i1> %i.it), !tbaa !189, !alias.scope !322, !noalias !321
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> splat (i32 -256), ptr align 4 %i.ka, <8 x i1> %i.iu), !tbaa !189, !alias.scope !322, !noalias !321
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> splat (i32 -256), ptr align 4 %i.kb, <8 x i1> %i.iv), !tbaa !189, !alias.scope !322, !noalias !321
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> splat (i32 -256), ptr align 4 %i.kc, <8 x i1> %i.iw), !tbaa !189, !alias.scope !322, !noalias !321
  %index.next386 = add nuw i64 %index381, 32      ; 2 uses
  %i.kl = icmp eq i64 %index.next386, %n.vec373
  br i1 %i.kl, label %middle.block387, label %vector.body380, !llvm.loop !316

middle.block387:                                  ; preds = %vector.body380
  br i1 %cmp.n388, label %._crit_edge232, label %vec.epilog.iter.check392

vec.epilog.iter.check392:                         ; preds = %middle.block387
  br i1 %min.epilog.iters.check393, label %vec.epilog.scalar.ph391.preheader, label %vec.epilog.ph394, !prof !319

vec.epilog.ph394:                                 ; preds = %vector.main.loop.iter.check370, %vec.epilog.iter.check392
  %vec.epilog.resume.val389 = phi i64 [ %n.vec373, %vec.epilog.iter.check392 ], [ 0, %vector.main.loop.iter.check370 ]
  br label %vec.epilog.vector.body402

vec.epilog.vector.body402:                        ; preds = %vec.epilog.vector.body402, %vec.epilog.ph394
  %index403 = phi i64 [ %vec.epilog.resume.val389, %vec.epilog.ph394 ], [ %index.next405, %vec.epilog.vector.body402 ] ; 2 uses
  %i.km = add i64 %index403, %i.ig                ; 2 uses
  %i.kn = shl i64 %i.km, 2
  %i.ko = and i64 %i.km, 4611686018427387903
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ko
  %wide.load404 = load <8 x float>, ptr %i.kp, align 4, !tbaa !190, !alias.scope !321 ; 3 uses
  %i.kq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load404, %broadcast.splat397 ; 3 uses
  %i.kr = xor <8 x i1> %i.kq, splat (i1 true)
  %i.ks = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load404, %broadcast.splat399 ; 2 uses
  %i.kt = select <8 x i1> %i.kq, <8 x i1> splat (i1 true), <8 x i1> %i.ks ; 2 uses
  %i.ku = xor <8 x i1> %i.kt, splat (i1 true)
  %i.kv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load404, %broadcast.splat401 ; 2 uses
  %i.kw = getelementptr i8, ptr %i.i, i64 %i.kn   ; 4 uses
  %i.kx = select <8 x i1> %i.kt, <8 x i1> splat (i1 true), <8 x i1> %i.kv
  %i.ky = xor <8 x i1> %i.kx, splat (i1 true)
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> zeroinitializer, ptr align 4 %i.kw, <8 x i1> %i.ky), !alias.scope !322, !noalias !321
  %i.kz = select <8 x i1> %i.ku, <8 x i1> %i.kv, <8 x i1> zeroinitializer
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> splat (i32 -16776961), ptr align 4 %i.kw, <8 x i1> %i.kz), !tbaa !189, !alias.scope !322, !noalias !321
  %i.la = select <8 x i1> %i.kr, <8 x i1> %i.ks, <8 x i1> zeroinitializer
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> splat (i32 -16711936), ptr align 4 %i.kw, <8 x i1> %i.la), !tbaa !189, !alias.scope !322, !noalias !321
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> splat (i32 -256), ptr align 4 %i.kw, <8 x i1> %i.kq), !tbaa !189, !alias.scope !322, !noalias !321
  %index.next405 = add nuw i64 %index403, 8       ; 2 uses
  %i.lb = icmp eq i64 %index.next405, %n.vec395
  br i1 %i.lb, label %vec.epilog.middle.block406, label %vec.epilog.vector.body402, !llvm.loop !317

vec.epilog.middle.block406:                       ; preds = %vec.epilog.vector.body402
  br i1 %cmp.n407, label %._crit_edge232, label %vec.epilog.scalar.ph391.preheader

vec.epilog.scalar.ph391.preheader:                ; preds = %vector.memcheck, %vector.scevcheck, %iter.check390, %vec.epilog.iter.check392, %vec.epilog.middle.block406
  %.0154230.ph = phi i64 [ 0, %iter.check390 ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec373, %vec.epilog.iter.check392 ], [ %n.vec395, %vec.epilog.middle.block406 ] ; 4 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph391.prol.loopexit, label %vec.epilog.scalar.ph391.prol

vec.epilog.scalar.ph391.prol:                     ; preds = %vec.epilog.scalar.ph391.preheader
  %i.lc = add i64 %.0154230.ph, %i.ig             ; 2 uses
  %i.ld = shl i64 %i.lc, 2                        ; 3 uses
  %i.le = and i64 %i.lc, 4611686018427387903
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.le
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !190 ; 3 uses
  %i.lh = fcmp reassoc nsz arcp contract afn ogt float %i.lg, %i.hn
  br i1 %i.lh, label %.preheader.prol, label %bb.e

bb.e:                                             ; preds = %vec.epilog.scalar.ph391.prol
  %i.li = fcmp reassoc nsz arcp contract afn ogt float %i.lg, %i.hp
  br i1 %i.li, label %.preheader182.prol, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.lj = fcmp reassoc nsz arcp contract afn ogt float %i.lg, %i.hr
  %i.lk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ld ; 2 uses
  br i1 %i.lj, label %.preheader184.prol, label %.preheader186.prol

.preheader186.prol:                               ; preds = %bb.f
  store i32 0, ptr %i.lk, align 4
  br label %.loopexit.prol

.preheader184.prol:                               ; preds = %bb.f
  store i32 -16776961, ptr %i.lk, align 4, !tbaa !189
  br label %.loopexit.prol

.preheader182.prol:                               ; preds = %bb.e
  %i.ll = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ld
  store i32 -16711936, ptr %i.ll, align 4, !tbaa !189
  br label %.loopexit.prol

.preheader.prol:                                  ; preds = %vec.epilog.scalar.ph391.prol
  %i.lm = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ld
  store i32 -256, ptr %i.lm, align 4, !tbaa !189
  br label %.loopexit.prol

.loopexit.prol:                                   ; preds = %.preheader.prol, %.preheader182.prol, %.preheader184.prol, %.preheader186.prol
  %i.ln = or disjoint i64 %.0154230.ph, 1
  br label %vec.epilog.scalar.ph391.prol.loopexit

vec.epilog.scalar.ph391.prol.loopexit:            ; preds = %.loopexit.prol, %vec.epilog.scalar.ph391.preheader
  %.0154230.unr = phi i64 [ %.0154230.ph, %vec.epilog.scalar.ph391.preheader ], [ %i.ln, %.loopexit.prol ]
  %i.lo = icmp eq i64 %.0154230.ph, %4
  br i1 %i.lo, label %._crit_edge232, label %vec.epilog.scalar.ph391.preheader.new

vec.epilog.scalar.ph391.preheader.new:            ; preds = %vec.epilog.scalar.ph391.prol.loopexit
  %invariant.op = add i64 1, %i.ig
  br label %vec.epilog.scalar.ph391

._crit_edge234.split:                             ; preds = %._crit_edge232, %._crit_edge222
  tail call void @cairo_save(ptr noundef %0) #22
  %i.lp = sitofp reassoc nsz arcp contract afn i32 %1 to double
  %i.lq = sitofp reassoc nsz arcp contract afn i32 %2 to double
  tail call void @cairo_rectangle(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.lp, double noundef %i.lq) #22
  %i.lr = tail call i32 @cairo_format_stride_for_width(i32 noundef 0, i32 noundef %1) #22
  %i.ls = tail call ptr @cairo_image_surface_create_for_data(ptr noundef %i.i, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %i.lr) #22 ; 2 uses
  tail call void @cairo_set_operator(ptr noundef %0, i32 noundef 2) #22
  tail call void @cairo_set_source_surface(ptr noundef %0, ptr noundef %i.ls, double noundef 0.000000e+00, double noundef 0.000000e+00) #22
  %i.lt = tail call ptr @cairo_get_source(ptr noundef %0) #22
  %i.lu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 5568
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !178
  tail call void @cairo_pattern_set_filter(ptr noundef %i.lt, i32 noundef %i.lw) #22
  tail call void @cairo_fill(ptr noundef %0) #22
  tail call void @cairo_restore(ptr noundef %0) #22
  tail call void @cairo_surface_destroy(ptr noundef %i.ls) #22
  tail call void @free(ptr noundef %i.e) #22
  tail call void @free(ptr noundef %i.ac) #22
  tail call void @free(ptr noundef %i.i) #22
  ret void

._crit_edge232:                                   ; preds = %vec.epilog.scalar.ph391.prol.loopexit, %.loopexit.1, %vec.epilog.middle.block406, %middle.block387
  %i.lx = add nuw i64 %.0155233, 1                ; 2 uses
  %exitcond265.not = icmp eq i64 %i.lx, %i.b
  br i1 %exitcond265.not, label %._crit_edge234.split, label %iter.check390

vec.epilog.scalar.ph391:                          ; preds = %.loopexit.1, %vec.epilog.scalar.ph391.preheader.new
  %.0154230 = phi i64 [ %.0154230.unr, %vec.epilog.scalar.ph391.preheader.new ], [ %i.mt, %.loopexit.1 ] ; 3 uses
  %i.ly = add i64 %.0154230, %i.ig                ; 2 uses
  %i.lz = shl i64 %i.ly, 2                        ; 3 uses
  %i.ma = and i64 %i.ly, 4611686018427387903
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ma
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !190 ; 3 uses
  %i.md = fcmp reassoc nsz arcp contract afn ogt float %i.mc, %i.hn
  br i1 %i.md, label %.preheader, label %bb.g

.preheader:                                       ; preds = %vec.epilog.scalar.ph391
  %i.me = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.lz
  store i32 -256, ptr %i.me, align 4, !tbaa !189
  br label %.loopexit

bb.g:                                             ; preds = %vec.epilog.scalar.ph391
  %i.mf = fcmp reassoc nsz arcp contract afn ogt float %i.mc, %i.hp
  br i1 %i.mf, label %.preheader182, label %bb.h

.preheader182:                                    ; preds = %bb.g
  %i.mg = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.lz
  store i32 -16711936, ptr %i.mg, align 4, !tbaa !189
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.mh = fcmp reassoc nsz arcp contract afn ogt float %i.mc, %i.hr
  %i.mi = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.lz ; 2 uses
  br i1 %i.mh, label %.preheader184, label %.preheader186

.preheader186:                                    ; preds = %bb.h
  store i32 0, ptr %i.mi, align 4
  br label %.loopexit

.preheader184:                                    ; preds = %bb.h
  store i32 -16776961, ptr %i.mi, align 4, !tbaa !189
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader186, %.preheader184, %.preheader182, %.preheader
  %.reass = add i64 %.0154230, %invariant.op      ; 2 uses
  %i.mj = shl i64 %.reass, 2                      ; 3 uses
  %i.mk = and i64 %.reass, 4611686018427387903
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.mk
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !190 ; 3 uses
  %i.mn = fcmp reassoc nsz arcp contract afn ogt float %i.mm, %i.hn
  br i1 %i.mn, label %.preheader.1, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.mo = fcmp reassoc nsz arcp contract afn ogt float %i.mm, %i.hp
  br i1 %i.mo, label %.preheader182.1, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.mp = fcmp reassoc nsz arcp contract afn ogt float %i.mm, %i.hr
  %i.mq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.mj ; 2 uses
  br i1 %i.mp, label %.preheader184.1, label %.preheader186.1

.preheader186.1:                                  ; preds = %bb.j
  store i32 0, ptr %i.mq, align 4
  br label %.loopexit.1

.preheader184.1:                                  ; preds = %bb.j
  store i32 -16776961, ptr %i.mq, align 4, !tbaa !189
  br label %.loopexit.1

.preheader182.1:                                  ; preds = %bb.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.mj
  store i32 -16711936, ptr %i.mr, align 4, !tbaa !189
  br label %.loopexit.1

.preheader.1:                                     ; preds = %.loopexit
  %i.ms = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.mj
  store i32 -256, ptr %i.ms, align 4, !tbaa !189
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader.1, %.preheader182.1, %.preheader184.1, %.preheader186.1
  %i.mt = add nuw i64 %.0154230, 2                ; 2 uses
  %exitcond264.not.1 = icmp eq i64 %i.mt, %i.a
  br i1 %exitcond264.not.1, label %._crit_edge232, label %vec.epilog.scalar.ph391, !llvm.loop !318
}

declare ptr @cairo_image_surface_get_data(ptr noundef) local_unnamed_addr #1

declare void @cairo_restore(ptr noundef) local_unnamed_addr #1

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #1

declare i32 @dt_view_image_get_surface_cached(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dt_view_image_get_surface(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @cairo_image_surface_get_width(ptr noundef) local_unnamed_addr #1

declare i32 @cairo_image_surface_get_height(ptr noundef) local_unnamed_addr #1

declare i32 @g_timeout_add(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @_thumb_expose_again(ptr nofree noundef captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 4 uses
  %.not18 = icmp eq ptr %i.b, null
  br i1 %.not18, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @gtk_widget_get_type() #27 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !323  ; 2 uses
  %.not19 = icmp eq ptr %i.d, null
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !325
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.b, i64 noundef %i.c) #25
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.i, align 8, !tbaa !187
  tail call void @gtk_widget_queue_draw(ptr noundef nonnull %i.b) #22
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @dt_image_full_path(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dt_imageio_large_thumbnail(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fast_surface_blur(ptr noalias nofree noundef captures(none) %0, i64 noundef range(i64 -2147483648, 2147483648) %1, i64 noundef range(i64 -2147483648, 2147483648) %2) unnamed_addr #10 {
bb.a:
  %i.a = uitofp reassoc nsz arcp contract afn i64 %2 to float ; 3 uses
  %i.b = fmul reassoc nnan nsz arcp contract afn float %i.a, 2.500000e-01
  %i.c = fptoui float %i.b to i64                 ; 12 uses
  %i.d = uitofp reassoc nsz arcp contract afn i64 %1 to float ; 5 uses
  %i.e = fmul reassoc nnan nsz arcp contract afn float %i.d, 2.500000e-01
  %i.f = fptoui float %i.e to i64                 ; 19 uses
  %i.g = mul i64 %i.c, %i.f                       ; 21 uses
end_hunk_1
