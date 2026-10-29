Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorharmonizer?download=true
inline.NumInlined: 128
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 43
begin_hunk_0_@get_p:bb.a
bb.l:                                             ; preds = %bb.j
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.64) #28
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(17) @.str.17) #28
  %.not30 = icmp eq i32 %i.n, 0
  br i1 %.not30, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.65) #28
  %.not31 = icmp eq i32 %i.p, 0
  br i1 %.not31, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.66) #28
  %.not32 = icmp eq i32 %i.r, 0
  br i1 %.not32, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.32) #28
  %.not33 = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %spec.select = select i1 %.not33, ptr %i.u, ptr null
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.a, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.t ], [ %i.s, %bb.s ], [ %i.q, %bb.q ], [ %i.o, %bb.o ], [ %i.m, %bb.m ], [ %i.k, %bb.k ], [ %i.i, %bb.i ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.8) #25
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.62) #25
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.26) #25
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.30) #25
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.28) #25
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.63) #25
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.64) #25
  %.not17 = icmp eq i32 %i.g, 0
  br i1 %.not17, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.17) #25
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.65) #25
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.66) #25
  %.not20 = icmp eq i32 %i.j, 0
  br i1 %.not20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.32) #25
  %.not21 = icmp eq i32 %i.k, 0
  %. = select i1 %.not21, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), ptr null
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ %., %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #8

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

declare ptr @dt_gaussian_init(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gaussian_blur(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gaussian_free(ptr noundef) local_unnamed_addr #3

declare void @g_mutex_lock(ptr noundef) local_unnamed_addr #3

declare void @g_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare ptr @g_object_ref(ptr noundef) local_unnamed_addr #3

declare i32 @gdk_threads_add_idle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_auto_detect_button_enable_idle(ptr noundef %0) #1 {
bb.a:
  tail call void @gtk_widget_set_sensitive(ptr noundef %0, i32 noundef 1) #25
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #25
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %0, ptr noundef %i.a) #25
  tail call void @g_object_unref(ptr noundef %0) #25
  ret i32 0
}

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_hue_to_srgb(float noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #22 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = alloca [4 x float], align 16             ; 5 uses
  %i.e = fmul reassoc nsz arcp contract afn float %0, f0x40C90FDB
  %i.f = fadd reassoc nsz arcp contract afn float %i.e, f0xC0490FDB ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store float 6.500000e-01, ptr %i.c, align 16, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.029.i = phi i32 [ 0, %bb.a ], [ %i.x, %bb.b ]
  %.02428.i = phi float [ 2.000000e+00, %bb.a ], [ %.024..i, %bb.b ] ; 2 uses
  %.02527.i = phi float [ 0.000000e+00, %bb.a ], [ %..025.i, %bb.b ] ; 2 uses
  %i.j = fadd reassoc nsz arcp contract afn float %.02527.i, %.02428.i
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, 5.000000e-01 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store float 6.500000e-01, ptr %i.a, align 16, !tbaa !31
  store float %i.k, ptr %i.g, align 4, !tbaa !31
  store float %i.f, ptr %i.h, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call fastcc void @dt_UCS_JCH_to_sRGB(ptr noundef %i.a, float noundef f0x3F7CF0E2, ptr noundef %i.b)
  %i.l = load <3 x float>, ptr %i.b, align 16
  %.fr = freeze <3 x float> %i.l                  ; 3 uses
  %i.m = shufflevector <3 x float> %.fr, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.n = extractelement <3 x float> %.fr, i64 1
  %i.o = fcmp reassoc nsz arcp contract afn oge float %i.n, 0.000000e+00
  %i.p = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.m, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.q = fcmp reassoc nsz arcp contract afn oge <4 x float> %i.m, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.r = shufflevector <4 x i1> %i.p, <4 x i1> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.s = extractelement <3 x float> %.fr, i64 2
  %i.t = fcmp reassoc nsz arcp contract afn oge float %i.s, 0.000000e+00
  %i.u = freeze <4 x i1> %i.r
  %i.v = bitcast <4 x i1> %i.u to i4
  %i.w = icmp eq i4 %i.v, -1
  %op.rdx = and i1 %i.w, %i.o
  %op.rdx7 = and i1 %op.rdx, %i.t                 ; 2 uses
  %..025.i = select nsz i1 %op.rdx7, float %i.k, float %.02527.i ; 2 uses
  %.024..i = select nsz i1 %op.rdx7, float %.02428.i, float %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.x = add nuw nsw i32 %.029.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.x, 16
  br i1 %exitcond.not.i, label %_find_max_chroma.exit, label %bb.b

_find_max_chroma.exit:                            ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.z = fmul reassoc nsz arcp contract afn float %..025.i, 8.500000e-01
  store float %i.z, ptr %i.y, align 4, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.f, ptr %i.aa, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float 0.000000e+00, ptr %i.ab, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call fastcc void @dt_UCS_JCH_to_sRGB(ptr noundef %i.c, float noundef f0x3F7CF0E2, ptr noundef %i.d)
  %i.ac = load float, ptr %i.d, align 16, !tbaa !31 ; 3 uses
  %i.ad = fcmp reassoc nsz arcp contract afn ogt float %i.ac, 1.000000e+00
  %i.ae = fcmp reassoc nsz arcp contract afn olt float %i.ac, 0.000000e+00
  %i.af = select reassoc nsz arcp contract afn i1 %i.ae, float 0.000000e+00, float %i.ac
  %i.ag = select reassoc nsz arcp contract afn i1 %i.ad, float 1.000000e+00, float %i.af
  store float %i.ag, ptr %1, align 4, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ai = load <2 x float>, ptr %i.ah, align 4, !tbaa !31 ; 3 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ai, splat (float 1.000000e+00)
  %i.ak = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ai, zeroinitializer
  %i.al = select <2 x i1> %i.ak, <2 x float> zeroinitializer, <2 x float> %i.ai
  %i.am = select <2 x i1> %i.aj, <2 x float> splat (float 1.000000e+00), <2 x float> %i.al ; 2 uses
  %i.an = extractelement <2 x float> %i.am, i64 0
  store float %i.an, ptr %2, align 4, !tbaa !31
  %i.ao = extractelement <2 x float> %i.am, i64 1
  store float %i.ao, ptr %3, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @dt_UCS_JCH_to_sRGB(ptr nofree noundef nonnull readonly captures(none) %0, float noundef nofpclass(nan inf zero sub nnorm) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #23 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !31
  %i.b = fmul reassoc nsz arcp contract afn float %i.a, %1 ; 3 uses
  %i.c = fcmp reassoc nsz arcp contract afn ult float %i.b, 0.000000e+00
  %.inv.i.i = fcmp reassoc nsz arcp contract afn ole float %i.b, 2.098850e+00
  %spec.select.i.i = select reassoc nsz arcp contract afn i1 %.inv.i.i, float %i.b, float 2.098850e+00
  %i.d = select reassoc nsz arcp contract afn i1 %i.c, float 0.000000e+00, float %spec.select.i.i ; 4 uses
  %i.e = fcmp reassoc nsz arcp contract afn une float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %dt_UCS_JCH_to_xyY.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !31
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %1
  %i.i = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.d, float f0x3F2703AC)
  %i.j = fmul reassoc nnan nsz arcp contract afn float %i.i, f0x417EED8B
  %i.k = fdiv reassoc nsz arcp contract afn float %i.h, %i.j
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.k, float f0x3F5510A2)
  br label %dt_UCS_JCH_to_xyY.exit.i

dt_UCS_JCH_to_xyY.exit.i:                         ; preds = %bb.b, %bb.a
  %i.m = phi reassoc nsz arcp contract afn float [ %i.l, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !31
  %sincos.i.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.o) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  %i.p = fmul reassoc nsz arcp contract afn float %cos.i.i, %i.m ; 2 uses
  %i.q = fmul reassoc nsz arcp contract afn float %sin.i.i, %i.m ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn float %i.p, f0xC0A13362
  %i.s = fmul reassoc nsz arcp contract afn float %i.q, f0x40204F91
  %i.t = fsub reassoc nsz arcp contract afn float %i.r, %i.s ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.p, f0x40985229
  %i.v = fmul reassoc nsz arcp contract afn float %i.q, f0x4037EFD4
  %i.w = fadd reassoc nsz arcp contract afn float %i.u, %i.v ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.t, f0xBFBEFF8B
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.t)
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, f0xBFB2C28D
  %i.aa = fdiv reassoc nsz arcp contract afn float %i.x, %i.z ; 3 uses
  %i.ab = fmul reassoc nsz arcp contract afn float %i.w, f0xBFC32F7A
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.w)
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, f0xBFB9C753
  %i.ae = fdiv reassoc nsz arcp contract afn float %i.ab, %i.ad ; 3 uses
  %i.af = fmul reassoc nsz arcp contract afn float %i.aa, f0xBE1A9505
  %i.ag = fmul reassoc nsz arcp contract afn float %i.ae, f0xBE1EE8D5
  %i.ah = fadd reassoc nsz arcp contract afn float %i.af, f0xBC0A2B16
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, %i.ag
  %i.aj = fmul reassoc nsz arcp contract afn float %i.aa, f0x3F70B489
  %i.ak = fadd reassoc nsz arcp contract afn float %i.ae, f0xBCD1FB74
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, %i.aj ; 5 uses
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.al, 0.000000e+00
  %i.an = fcmp reassoc nsz arcp contract afn olt float %i.al, f0x00800000
  %i.ao = select reassoc nsz arcp contract afn i1 %i.an, float f0x00800000, float %i.al
  %i.ap = fcmp reassoc nsz arcp contract afn ogt float %i.al, f0x80800000
  %i.aq = select reassoc nsz arcp contract afn i1 %i.ap, float f0x80800000, float %i.al
  %i.ar = select reassoc nsz arcp contract afn i1 %i.am, float %i.aq, float %i.ao ; 2 uses
  %i.as = fdiv reassoc nsz arcp contract afn float %i.ai, %i.ar ; 4 uses
  %i.at = fcmp reassoc nsz arcp contract afn oeq float %i.as, 0.000000e+00
  br i1 %i.at, label %dt_UCS_JCH_to_XYZ.exit, label %bb.c

bb.c:                                             ; preds = %dt_UCS_JCH_to_xyY.exit.i
  %i.au = fmul reassoc nsz arcp contract afn float %i.d, f0x3F8FE801
  %i.av = fsub reassoc nsz arcp contract afn float f0x4006541D, %i.d
  %i.aw = fdiv reassoc nsz arcp contract afn float %i.au, %i.av
  %i.ax = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.aw, float f0x3FCAA4B8) ; 3 uses
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ae, f0x3E10B0E5
  %i.az = fmul reassoc nsz arcp contract afn float %i.aa, f0x3E2B2F00
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, f0xBC0352A9
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %i.ay
  %i.bc = fdiv reassoc nsz arcp contract afn float %i.bb, %i.ar ; 2 uses
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, %i.ax
  %i.be = fdiv reassoc nsz arcp contract afn float %i.bd, %i.as
  %i.bf = fadd reassoc nsz arcp contract afn float %i.bc, %i.as
  %i.bg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bf
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, %i.ax
  %i.bi = fdiv reassoc nsz arcp contract afn float %i.bh, %i.as
  br label %dt_UCS_JCH_to_XYZ.exit

dt_UCS_JCH_to_XYZ.exit:                           ; preds = %dt_UCS_JCH_to_xyY.exit.i, %bb.c
  %.sink8.i = phi float [ %i.be, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i ] ; 4 uses
  %.sink.i = phi float [ %i.ax, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i ] ; 4 uses
  %i.bj = phi reassoc nsz arcp contract afn float [ %i.bi, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i ] ; 4 uses
  %i.bk = fmul reassoc nsz arcp contract afn float %.sink8.i, f0x404F639A
  %i.bl = fmul reassoc nsz arcp contract afn float %.sink.i, f0xBFC4C0F4
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.bk
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bj, f0xBEFF3F82
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bm, %i.bn ; 3 uses
  %i.bp = fmul reassoc nsz arcp contract afn float %.sink8.i, f0xBF7821D1
  %i.bq = fmul reassoc nsz arcp contract afn float %.sink.i, f0x3FF0211F
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, %i.bp
  %i.bs = fmul reassoc nsz arcp contract afn float %i.bj, 4.155600e-02
  %i.bt = fadd reassoc nsz arcp contract afn float %i.br, %i.bs ; 3 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %.sink8.i, 5.564340e-02
  %i.bv = fmul reassoc nsz arcp contract afn float %.sink.i, f0xBE50EC2A
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, %i.bu
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bj, f0x3F875328
  %i.by = fadd reassoc nsz arcp contract afn float %i.bw, %i.bx ; 3 uses
  %i.bz = fadd reassoc nsz arcp contract afn float %.sink.i, %.sink8.i
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, %i.bj
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, 0.000000e+00 ; 2 uses
  %i.cc = fcmp reassoc nsz arcp contract afn ugt float %i.bo, 3.130800e-03
  br i1 %i.cc, label %bb.e, label %bb.d

bb.d:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit
  %i.cd = fmul reassoc nnan nsz arcp contract afn float %i.bo, 1.292000e+01
  br label %bb.f

bb.e:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bo, float f0x3ED55555)
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ce, 1.055000e+00
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, -5.500000e-02
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ch = phi reassoc nsz arcp contract afn float [ %i.cd, %bb.d ], [ %i.cg, %bb.e ]
  store float %i.ch, ptr %2, align 4, !tbaa !31
  %i.ci = fcmp reassoc nsz arcp contract afn ugt float %i.bt, 3.130800e-03
  br i1 %i.ci, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cj = fmul reassoc nnan nsz arcp contract afn float %i.bt, 1.292000e+01
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ck = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bt, float f0x3ED55555)
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ck, 1.055000e+00
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cl, -5.500000e-02
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cn = phi reassoc nsz arcp contract afn float [ %i.cj, %bb.g ], [ %i.cm, %bb.h ]
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.cn, ptr %i.co, align 4, !tbaa !31
  %i.cp = fcmp reassoc nsz arcp contract afn ugt float %i.by, 3.130800e-03
  br i1 %i.cp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = fmul reassoc nnan nsz arcp contract afn float %i.by, 1.292000e+01
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cr = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.by, float f0x3ED55555)
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, 1.055000e+00
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cs, -5.500000e-02
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cu = phi reassoc nsz arcp contract afn float [ %i.cq, %bb.j ], [ %i.ct, %bb.k ]
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.cu, ptr %i.cv, align 4, !tbaa !31
  %i.cw = fcmp reassoc nsz arcp contract afn ugt float %i.cb, 3.130800e-03
  br i1 %i.cw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cb, float f0x3ED55555)
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cx, 1.055000e+00
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, -5.500000e-02
  br label %bb.n

end_hunk_0
