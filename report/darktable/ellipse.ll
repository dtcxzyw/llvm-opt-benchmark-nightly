inline.NumInlined: 96
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ellipse_events_post_expose:dt_masks_get_image_size.exit
  %i.mj = load float, ptr %i.f, align 4, !tbaa !26
  %i.mk = load float, ptr %i.g, align 4, !tbaa !26
  call void @dt_masks_draw_arrow(ptr noundef %0, float noundef %i.mh, float noundef %i.mi, float noundef %i.mj, float noundef %i.mk, float noundef %1, i32 noundef 0) #12
  call void @dt_masks_stroke_arrow(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3, float noundef %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  %.pre = load ptr, ptr %i.lk, align 8, !tbaa !38
  %.pre200 = load i32, ptr %i.dd, align 8, !tbaa !35
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.ml = phi i32 [ %.pre200, %bb.ar ], [ %i.li, %bb.aq ], [ %i.li, %bb.ap ]
  %i.mm = phi ptr [ %.pre, %bb.ar ], [ %i.ll, %bb.aq ], [ %i.ll, %bb.ap ]
  call fastcc void @_ellipse_draw_shape(i32 noundef 0, i32 noundef 1, ptr noundef %0, i32 noundef %i.du, float noundef %1, float noundef %.0144, float noundef %.0143, ptr noundef %i.mm, i32 noundef %i.ml)
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.b, %.loopexit, %bb.as, %bb.r, %bb.a
  ret void
}

declare float @dt_conf_get_and_sanitize_float(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @dt_conf_get_and_sanitize_int(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare float @dt_conf_get_float(ptr noundef) local_unnamed_addr #1

declare void @dt_conf_set_float(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @dt_mouse_action_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i32 @g_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @g_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_list_nth_data(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @dt_masks_point_in_form_near(float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_masks_get_image_size(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !92  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load float, ptr %i.d, align 8, !tbaa !174 ; 2 uses
  %i.f = fcmp reassoc nsz arcp contract afn ogt float %i.e, 0.000000e+00
  %i.g = select reassoc nsz arcp contract afn i1 %i.f, float %i.e, float 1.000000e+00 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.i = load i32, ptr %i.h, align 4, !tbaa !182  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not45 = icmp eq ptr %0, null
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = uitofp nneg i32 %i.i to float
  store float %i.k, ptr %0, align 4, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not46 = icmp eq ptr %1, null
  br i1 %.not46, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.m = load i32, ptr %i.l, align 16, !tbaa !183
  %i.n = sitofp reassoc nsz arcp contract afn i32 %i.m to float
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 2760
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !184  ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 156
  %i.r = load i32, ptr %i.q, align 4, !tbaa !182  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not43 = icmp eq ptr %0, null
  br i1 %.not43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = uitofp nneg i32 %i.r to float
  %i.u = fdiv reassoc nsz arcp contract afn float %i.t, %i.g
  store float %i.u, ptr %0, align 4, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not44 = icmp eq ptr %1, null
  br i1 %.not44, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.w = load i32, ptr %i.v, align 16, !tbaa !183
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.w to float
  %i.y = fdiv reassoc nsz arcp contract afn float %i.x, %i.g
  br label %.sink.split

bb.l:                                             ; preds = %bb.g, %bb.f
  %.not41 = icmp eq ptr %0, null
  br i1 %.not41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !204
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.aa to float
  store float %i.ab, ptr %0, align 4, !tbaa !26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not42 = icmp eq ptr %1, null
  br i1 %.not42, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 380
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !205
  %i.ae = sitofp reassoc nsz arcp contract afn i32 %i.ad to float
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.o, %bb.e
  %.sink = phi float [ %i.n, %bb.e ], [ %i.ae, %bb.o ], [ %i.y, %bb.k ]
  store float %.sink, ptr %1, align 4, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.d, %bb.n, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.ag = load <2 x i32>, ptr %i.af, align 16, !tbaa !32
  %i.ah = sitofp <2 x i32> %i.ag to <2 x float>   ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  store float %i.ai, ptr %2, align 4, !tbaa !26
  %i.aj = extractelement <2 x float> %i.ah, i64 1
  store float %i.aj, ptr %3, align 4, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_points_to_transform(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7) unnamed_addr #0 {
bb.a:
  %i.a = fcmp reassoc nsz arcp contract afn ult float %2, %3 ; 3 uses
  %.sink141 = select i1 %i.a, float %3, float %2
  %.sink139 = select i1 %i.a, float %2, float %3
  %i.b = fcmp reassoc nsz arcp contract afn olt float %5, %6
  %i.c = select reassoc nsz arcp contract afn i1 %i.b, float %5, float %6 ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %i.c, %.sink141 ; 3 uses
  %i.e = fmul reassoc nsz arcp contract afn float %i.c, %.sink139 ; 5 uses
  %i.f = fsub reassoc nsz arcp contract afn float %i.d, %i.e
  %i.g = fadd reassoc nsz arcp contract afn float %i.e, %i.d ; 2 uses
  %i.h = fdiv reassoc nsz arcp contract afn float %i.f, %i.g ; 2 uses
  %i.i = fmul reassoc nsz arcp contract afn float %i.h, %i.h
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, 3.000000e+00 ; 2 uses
  %i.k = fsub reassoc nsz arcp contract afn float 4.000000e+00, %i.j
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.k)
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, 1.000000e+01
  %i.n = fdiv reassoc nsz arcp contract afn float %i.j, %i.m
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, 1.000000e+00
  %i.p = fmul reassoc nsz arcp contract afn float %i.g, f0x3EA0D97C
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, %i.o
  %i.r = fptosi float %i.q to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.r, i32 100) ; 3 uses
  %i.s = add nuw nsw i32 %spec.select, 5          ; 3 uses
  %i.t = shl nuw i32 %i.s, 1
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call ptr @dt_alloc_aligned(i64 noundef %i.v) #12 ; 12 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.b, label %vector.ph

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %7, align 4, !tbaa !32
  br label %.loopexit

vector.ph:                                        ; preds = %bb.a
  %i.x = fmul reassoc nsz arcp contract afn float %4, f0x3C8EFA36 ; 2 uses
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, f0xBFC90FDC
  %.0112 = select nsz i1 %i.a, float %i.y, float %i.x ; 2 uses
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.0112) ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  store i32 %i.s, ptr %7, align 4, !tbaa !32
  %i.z = fmul reassoc nsz arcp contract afn float %5, %0 ; 6 uses
  store float %i.z, ptr %i.w, align 64, !tbaa !26
  %i.aa = fmul reassoc nsz arcp contract afn float %6, %1 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store float %i.aa, ptr %i.ab, align 4, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = fadd reassoc nsz arcp contract afn float %.0112, f0xBFC90FDB
  %sincos120 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ad) ; 2 uses
  %sin121 = extractvalue { float, float } %sincos120, 0
  %cos122 = extractvalue { float, float } %sincos120, 1
  %i.ae = fmul reassoc nsz arcp contract afn float %cos122, %i.e ; 2 uses
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store float %i.af, ptr %i.ag, align 8, !tbaa !26
  %i.ah = fmul reassoc nsz arcp contract afn float %sin121, %i.e ; 2 uses
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, %i.aa
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store float %i.ai, ptr %i.aj, align 4, !tbaa !26
  %i.ak = fsub reassoc nsz arcp contract afn float %i.z, %i.ae
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store float %i.ak, ptr %i.al, align 32, !tbaa !26
  %i.am = fsub reassoc nsz arcp contract afn float %i.aa, %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  store float %i.am, ptr %i.an, align 4, !tbaa !26
  %i.ao = uitofp nneg i32 %spec.select to float   ; 2 uses
  %i.ap = fneg reassoc nsz arcp contract afn float %sin
  %i.aq = insertelement <2 x float> poison, float %cos, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %sin, i64 1
  %i.as = insertelement <2 x float> poison, float %i.d, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul reassoc nsz arcp contract afn <2 x float> %i.ar, %i.at ; 4 uses
  %8 = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %9 = insertelement <4 x float> %8, float %i.z, i64 2
  %10 = insertelement <4 x float> %9, float %i.aa, i64 3 ; 3 uses
  %11 = shufflevector <4 x float> %8, <4 x float> %10, <4 x i32> <i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %12 = fadd reassoc nsz arcp contract afn <4 x float> %10, %11
  %13 = fsub reassoc nsz arcp contract afn <4 x float> %10, %11
  %14 = shufflevector <4 x float> %12, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %14, ptr %i.ac, align 8, !tbaa !26
  %i.av = insertelement <2 x float> poison, float %i.e, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %cos, i64 1
  %i.az = fmul reassoc nsz arcp contract afn <2 x float> %i.aw, %i.ay ; 3 uses
  %wide.trip.count = zext nneg i32 %i.s to i64
  %i.ba = zext nneg i32 %spec.select to i64       ; 2 uses
  %n.vec = and i64 %i.ba, 2147483640              ; 3 uses
  %i.bb = or disjoint i64 %n.vec, 5
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.z, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert143 = insertelement <8 x float> poison, float %i.aa, i64 0
  %broadcast.splat144 = shufflevector <8 x float> %broadcast.splatinsert143, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat146 = shufflevector <2 x float> %i.au, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat148 = shufflevector <2 x float> %i.au, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert149 = insertelement <8 x float> poison, float %i.ao, i64 0
  %broadcast.splat150 = shufflevector <8 x float> %broadcast.splatinsert149, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat152 = shufflevector <2 x float> %i.az, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat154 = shufflevector <2 x float> %i.az, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bc = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat150
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bd = add <8 x i32> %vec.ind, splat (i32 -5)
  %i.be = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bd to <8 x float>
  %i.bf = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.be, splat (float f0x40C90FDB)
  %i.bg = fmul reassoc nsz arcp contract afn <8 x float> %i.bf, %i.bc
  %i.bh = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.bg) ; 2 uses
  %i.bi = extractvalue { <8 x float>, <8 x float> } %i.bh, 0 ; 2 uses
  %i.bj = extractvalue { <8 x float>, <8 x float> } %i.bh, 1 ; 2 uses
  %i.bk = fmul reassoc nsz arcp contract afn <8 x float> %i.bj, %broadcast.splat148
  %i.bl = fmul reassoc nsz arcp contract afn <8 x float> %i.bj, %broadcast.splat146
  %i.bm = fadd reassoc nsz arcp contract afn <8 x float> %i.bl, %broadcast.splat
  %i.bn = fmul reassoc nsz arcp contract afn <8 x float> %i.bi, %broadcast.splat154
  %i.bo = fmul reassoc nsz arcp contract afn <8 x float> %i.bi, %broadcast.splat152
  %i.bp = fadd reassoc nsz arcp contract afn <8 x float> %i.bm, %i.bo
  %i.bq = shl i64 %index, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = fadd reassoc nsz arcp contract afn <8 x float> %i.bk, %broadcast.splat144
  %i.bu = fadd reassoc nsz arcp contract afn <8 x float> %i.bt, %i.bn
  %interleaved.vec = shufflevector <8 x float> %i.bp, <8 x float> %i.bu, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bs, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !231

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ba
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block
  %i.bw = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ao
  %i.bx = insertelement <2 x float> poison, float %i.z, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.aa, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %i.bb, %scalar.ph.preheader ] ; 3 uses
  %i.bz = trunc i64 %indvars.iv to i32
  %i.ca = add i32 %i.bz, -5
  %i.cb = sitofp reassoc nsz arcp contract afn i32 %i.ca to float
  %i.cc = fmul reassoc nnan nsz arcp contract afn float %i.cb, f0x40C90FDB
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, %i.bw
  %sincos123 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.cd) ; 2 uses
  %sin124 = extractvalue { float, float } %sincos123, 0
  %cos125 = extractvalue { float, float } %sincos123, 1
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %i.cf = insertelement <2 x float> poison, float %cos125, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul reassoc nsz arcp contract afn <2 x float> %i.cg, %i.au
  %i.ci = insertelement <2 x float> poison, float %sin124, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul reassoc nsz arcp contract afn <2 x float> %i.cj, %i.az
  %i.cl = fadd reassoc nsz arcp contract afn <2 x float> %i.ch, %i.by
  %i.cm = fadd reassoc nsz arcp contract afn <2 x float> %i.cl, %i.ck
  store <2 x float> %i.cm, ptr %i.ce, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !232

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.b
  ret ptr %i.w
}

declare i32 @dt_dev_distort_transform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #1

declare i32 @dt_dev_distort_backtransform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_ellipse_points_to_transform(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = fcmp reassoc nsz arcp contract afn ult float %2, %3 ; 3 uses
  %. = select nsz i1 %i.a, float %3, float %2     ; 2 uses
  %.102 = select nsz i1 %i.a, float %2, float %3  ; 4 uses
  %i.b = fsub reassoc nsz arcp contract afn float %., %.102
  %i.c = fadd reassoc nsz arcp contract afn float %3, %2 ; 2 uses
  %i.d = fdiv reassoc nsz arcp contract afn float %i.b, %i.c ; 2 uses
  %i.e = fmul reassoc nsz arcp contract afn float %i.c, f0x40490FDB
  %i.f = fmul reassoc nsz arcp contract afn float %i.d, %i.d
  %i.g = fmul reassoc nsz arcp contract afn float %i.f, 3.000000e+00 ; 2 uses
  %i.h = fsub reassoc nsz arcp contract afn float 4.000000e+00, %i.g
  %i.i = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.h)
  %i.j = fadd reassoc nsz arcp contract afn float %i.i, 1.000000e+01
  %i.k = fdiv reassoc nsz arcp contract afn float %i.g, %i.j
  %i.l = fadd reassoc nsz arcp contract afn float %i.k, 1.000000e+00
  %i.m = fmul reassoc nsz arcp contract afn float %i.e, %i.l
  %i.n = fptosi float %i.m to i32                 ; 3 uses
  %i.o = add nsw i32 %i.n, 5                      ; 2 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call ptr @dt_alloc_aligned(i64 noundef %i.q) #12 ; 12 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.r, i64 64) ]
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = fmul reassoc nsz arcp contract afn float %4, f0x3C8EFA36 ; 2 uses
  %i.u = fadd reassoc nsz arcp contract afn float %i.t, f0xBFC90FDC
  %.103 = select nsz i1 %i.a, float %i.u, float %i.t ; 2 uses
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.103) ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  store i64 %i.p, ptr %7, align 8, !tbaa !167
  %i.v = fmul reassoc nsz arcp contract afn float %5, %0 ; 6 uses
  store float %i.v, ptr %i.r, align 64, !tbaa !26
  %i.w = fmul reassoc nsz arcp contract afn float %6, %1 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store float %i.w, ptr %i.x, align 4, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.z = insertelement <2 x float> poison, float %cos, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %sin, i64 1
  %i.ab = insertelement <2 x float> poison, float %., i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul reassoc nsz arcp contract afn <2 x float> %i.aa, %i.ac ; 4 uses
  %8 = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %9 = insertelement <4 x float> %8, float %i.v, i64 2
  %10 = insertelement <4 x float> %9, float %i.w, i64 3 ; 3 uses
  %11 = shufflevector <4 x float> %8, <4 x float> %10, <4 x i32> <i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %12 = fadd reassoc nsz arcp contract afn <4 x float> %10, %11
  %13 = fsub reassoc nsz arcp contract afn <4 x float> %10, %11
  %14 = shufflevector <4 x float> %12, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %14, ptr %i.y, align 8, !tbaa !26
  %i.ae = fadd reassoc nsz arcp contract afn float %.103, f0xBFC90FDB
  %sincos96 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ae) ; 2 uses
  %sin97 = extractvalue { float, float } %sincos96, 0
  %cos98 = extractvalue { float, float } %sincos96, 1
  %i.af = fmul reassoc nsz arcp contract afn float %cos98, %.102 ; 2 uses
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.v
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store float %i.ag, ptr %i.ah, align 8, !tbaa !26
  %i.ai = fmul reassoc nsz arcp contract afn float %sin97, %.102 ; 2 uses
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, %i.w
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  store float %i.aj, ptr %i.ak, align 4, !tbaa !26
  %i.al = fsub reassoc nsz arcp contract afn float %i.v, %i.af
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store float %i.al, ptr %i.am, align 32, !tbaa !26
  %i.an = fsub reassoc nsz arcp contract afn float %i.w, %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  store float %i.an, ptr %i.ao, align 4, !tbaa !26
  %i.ap = fneg reassoc nsz arcp contract afn float %sin
  %i.aq = insertelement <2 x float> poison, float %.102, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.at = insertelement <2 x float> %i.as, float %cos, i64 1
  %i.au = fmul reassoc nsz arcp contract afn <2 x float> %i.ar, %i.at ; 3 uses
  %i.av = icmp sgt i32 %i.n, 0
  br i1 %i.av, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.aw = uitofp nneg i32 %i.n to float           ; 2 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %i.ax = add nsw i64 %wide.trip.count, -5        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.ax, -8                      ; 3 uses
  %i.ay = or disjoint i64 %n.vec, 5
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat114 = shufflevector <2 x float> %i.ad, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat116 = shufflevector <2 x float> %i.ad, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert117 = insertelement <8 x float> poison, float %i.v, i64 0
  %broadcast.splat118 = shufflevector <8 x float> %broadcast.splatinsert117, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat120 = shufflevector <2 x float> %i.au, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat122 = shufflevector <2 x float> %i.au, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert123 = insertelement <8 x float> poison, float %i.w, i64 0
  %broadcast.splat124 = shufflevector <8 x float> %broadcast.splatinsert123, <8 x float> poison, <8 x i32> zeroinitializer
  %i.az = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ba = add <8 x i32> %vec.ind, splat (i32 -5)
  %i.bb = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ba to <8 x float>
  %i.bc = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.bb, splat (float f0x40C90FDB)
  %i.bd = fmul reassoc nsz arcp contract afn <8 x float> %i.bc, %i.az
  %i.be = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.bd) ; 2 uses
  %i.bf = extractvalue { <8 x float>, <8 x float> } %i.be, 0 ; 2 uses
  %i.bg = extractvalue { <8 x float>, <8 x float> } %i.be, 1 ; 2 uses
  %i.bh = fmul reassoc nsz arcp contract afn <8 x float> %i.bg, %broadcast.splat114
  %i.bi = fmul reassoc nsz arcp contract afn <8 x float> %i.bg, %broadcast.splat116
  %i.bj = fadd reassoc nsz arcp contract afn <8 x float> %i.bi, %broadcast.splat118
  %i.bk = fmul reassoc nsz arcp contract afn <8 x float> %i.bf, %broadcast.splat120
  %i.bl = fmul reassoc nsz arcp contract afn <8 x float> %i.bf, %broadcast.splat122
  %i.bm = fadd reassoc nsz arcp contract afn <8 x float> %i.bj, %i.bl
  %i.bn = shl i64 %index, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = fadd reassoc nsz arcp contract afn <8 x float> %i.bh, %broadcast.splat124
  %i.br = fadd reassoc nsz arcp contract afn <8 x float> %i.bq, %i.bk
  %interleaved.vec = shufflevector <8 x float> %i.bm, <8 x float> %i.br, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bp, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 5, %.lr.ph ], [ %i.ay, %middle.block ]
  %i.bt = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aw
  %i.bu = insertelement <2 x float> poison, float %i.v, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.w, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bw = trunc i64 %indvars.iv to i32
  %i.bx = add i32 %i.bw, -5
  %i.by = sitofp reassoc nsz arcp contract afn i32 %i.bx to float
  %i.bz = fmul reassoc nnan nsz arcp contract afn float %i.by, f0x40C90FDB
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, %i.bt
  %sincos99 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ca) ; 2 uses
  %sin100 = extractvalue { float, float } %sincos99, 0
  %cos101 = extractvalue { float, float } %sincos99, 1
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %i.cc = insertelement <2 x float> poison, float %cos101, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul reassoc nsz arcp contract afn <2 x float> %i.cd, %i.ad
  %i.cf = insertelement <2 x float> poison, float %sin100, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul reassoc nsz arcp contract afn <2 x float> %i.cg, %i.au
  %i.ci = fadd reassoc nsz arcp contract afn <2 x float> %i.ce, %i.bv
  %i.cj = fadd reassoc nsz arcp contract afn <2 x float> %i.ci, %i.ch
  store <2 x float> %i.cj, ptr %i.cb, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !234

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.b, %bb.a
  ret ptr %i.r
}

declare i32 @dt_dev_distort_backtransform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @dt_masks_gui_form_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_control_queue_redraw_center() local_unnamed_addr #1

declare float @dt_masks_drag_factor(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #10

declare float @dt_masks_change_rotation(i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_toast_log(ptr noundef, ...) local_unnamed_addr #1

declare float @dt_masks_change_size(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

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

declare void @dt_conf_set_int(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_ellipse_draw_shape(i32 noundef range(i32 0, 2) %0, i32 noundef range(i32 0, 2) %1, ptr noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %8, 11
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !26
  %i.d = load <2 x float>, ptr %7, align 4, !tbaa !26
  %i.e = fsub reassoc nsz arcp contract afn <2 x float> %i.c, %i.d ; 2 uses
  %i.f = extractelement <2 x float> %i.e, i64 0
  %i.g = extractelement <2 x float> %i.e, i64 1
  %i.h = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.g, float %i.f)
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.h) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 3 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !26
end_hunk_0
