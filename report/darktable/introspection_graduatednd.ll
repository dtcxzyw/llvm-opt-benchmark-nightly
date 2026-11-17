Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_graduatednd?download=true
inline.NumInlined: 49
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@init_presets:bb.a
  store <2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr %i.aj, align 16, !tbaa !62
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.b, i32 noundef %i.ai, ptr noundef nonnull %11, i32 noundef 24, i32 noundef 1, i32 noundef 3) #19
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !139
  %i.al = call i32 (...) %i.ak() #19
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 5.000000e+01>, ptr %12, align 16, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16
  store <2 x float> <float 6.634150e-01, float 5.000000e-01>, ptr %i.am, align 16, !tbaa !62
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.b, i32 noundef %i.al, ptr noundef nonnull %12, i32 noundef 24, i32 noundef 1, i32 noundef 3) #19
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !139
  %i.ao = call i32 (...) %i.an() #19
  store <4 x float> <float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 5.000000e+01>, ptr %13, align 16, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 16
  store <2 x float> <float 8.292700e-02, float 2.500000e-01>, ptr %i.ap, align 16, !tbaa !62
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b, i32 noundef %i.ao, ptr noundef nonnull %13, i32 noundef 24, i32 noundef 1, i32 noundef 3) #19
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !138
  call void @dt_database_release_transaction(ptr noundef %i.aq) #19
  ret void
}

declare void @dt_database_start_transaction(ptr noundef) local_unnamed_addr #2

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @dt_database_release_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #19
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #19
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #19
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #19
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #19
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #19
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #19
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 80
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !73  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.f = load float, ptr %i.e, align 16, !tbaa !62 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.h = load float, ptr %i.g, align 4, !tbaa !62 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.j = load float, ptr %i.i, align 8, !tbaa !62 ; 5 uses
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.f, float %i.h)
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.k, float %i.j) ; 6 uses
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.f, float %i.h)
  %i.n = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.m, float %i.j) ; 3 uses
  %i.o = fsub reassoc nsz arcp contract afn float %i.l, %i.n ; 5 uses
  %i.p = fcmp reassoc nsz arcp contract afn une float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.b, label %rgb2hsl.exit

bb.b:                                             ; preds = %bb.a
  %i.q = fadd reassoc nsz arcp contract afn float %i.n, %i.l ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, 5.000000e-01
  %i.s = fcmp reassoc nsz arcp contract afn olt float %i.r, 5.000000e-01
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = fpext reassoc nsz arcp contract afn float %i.l to double
  %i.u = fpext reassoc nsz arcp contract afn float %i.n to double
  %i.v = fadd reassoc nsz arcp contract afn double %i.t, %i.u
  %i.w = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.v
  %i.x = fptrunc reassoc nsz arcp contract afn double %i.w to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi float [ %i.x, %bb.c ], [ %i.q, %bb.b ]
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float f0x37800000)
  %i.z = fdiv reassoc nsz arcp contract afn float %i.o, %i.y ; 2 uses
  %i.aa = fcmp reassoc nsz arcp contract afn oeq float %i.l, %i.f
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = fsub reassoc nsz arcp contract afn float %i.h, %i.j
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.ab, %i.o
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ad = fcmp reassoc nsz arcp contract afn oeq float %i.l, %i.h
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = fsub reassoc nsz arcp contract afn float %i.j, %i.f
  %i.af = fdiv reassoc nsz arcp contract afn float %i.ae, %i.o
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, 2.000000e+00
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ah = fcmp reassoc nsz arcp contract afn oeq float %i.l, %i.j
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = fsub reassoc nsz arcp contract afn float %i.f, %i.h
  %i.aj = fdiv reassoc nsz arcp contract afn float %i.ai, %i.o
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, 4.000000e+00
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %.043.i = phi nsz float [ %i.ac, %bb.e ], [ %i.ag, %bb.g ], [ %i.ak, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.al = fpext reassoc nsz arcp contract afn float %.043.i to double
  %i.am = fmul reassoc nsz arcp contract afn double %i.al, f0x3FC5555555555555 ; 3 uses
  %i.an = fptrunc reassoc nsz arcp contract afn double %i.am to float ; 3 uses
  %i.ao = fcmp reassoc nsz arcp contract afn olt double %i.am, f0xB690000000000000
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = fadd reassoc nsz arcp contract afn float %i.an, 1.000000e+00
  br label %rgb2hsl.exit

bb.l:                                             ; preds = %bb.j
  %i.aq = fcmp reassoc nsz arcp contract afn ogt double %i.am, f0x3FF0000010000000
  %i.ar = fadd reassoc nsz arcp contract afn float %i.an, -1.000000e+00
  %spec.select.i = select nsz i1 %i.aq, float %i.ar, float %i.an
  br label %rgb2hsl.exit

rgb2hsl.exit:                                     ; preds = %bb.a, %bb.k, %bb.l
  %.1.i = phi nsz float [ %i.ap, %bb.k ], [ 0.000000e+00, %bb.a ], [ %spec.select.i, %bb.l ] ; 2 uses
  %.0.i = phi nsz float [ %i.z, %bb.k ], [ 0.000000e+00, %bb.a ], [ %i.z, %bb.l ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !76
  %i.au = fsub reassoc nsz arcp contract afn float %i.at, %.1.i
  %i.av = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.au)
  %i.aw = fcmp reassoc nsz arcp contract afn olt float %i.av, f0x38D1B717
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %rgb2hsl.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !77
  %i.az = fsub reassoc nsz arcp contract afn float %i.ay, %.0.i
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.az)
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.ba, f0x38D1B717
  br i1 %i.bb, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m, %rgb2hsl.exit
  store float %.1.i, ptr %i.as, align 4, !tbaa !76
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  store float %.0.i, ptr %i.bc, align 4, !tbaa !77
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bf = atomicrmw add ptr %i.be, i32 1 seq_cst, align 4 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !80
  %i.bi = load float, ptr %i.as, align 4, !tbaa !76
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bh, float noundef %i.bi) #19
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !81
  %i.bl = load float, ptr %i.bc, align 4, !tbaa !77
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bk, float noundef %i.bl) #19
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !81
  %i.bn = load float, ptr %i.as, align 4, !tbaa !76
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, 6.000000e+00 ; 8 uses
  %i.bp = fcmp reassoc nsz arcp contract afn olt float %i.bo, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.bp, float 2.000000e+00, float -4.000000e+00
  %i.bq = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.bo ; 5 uses
  %i.br = fcmp reassoc nsz arcp contract afn olt float %i.bq, 1.000000e+00
  br i1 %i.br, label %hue2rgb.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = fcmp reassoc nsz arcp contract afn olt float %i.bq, 3.000000e+00
  br i1 %i.bs, label %hue2rgb.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = fcmp reassoc nsz arcp contract afn olt float %i.bq, 4.000000e+00
  %i.bu = fsub fast float 4.000000e+00, %i.bq
  %i.bv = select reassoc nsz arcp contract afn i1 %i.bt, float %i.bu, float 0.000000e+00
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.p, %bb.o, %bb.n
  %.0.i.i.i = phi nsz float [ 1.000000e+00, %bb.o ], [ %i.bv, %bb.p ], [ %i.bq, %bb.n ]
  %i.bw = fcmp reassoc nsz arcp contract afn olt float %i.bo, 1.000000e+00
  br i1 %i.bw, label %hue2rgb.exit36.i.i, label %bb.q

bb.q:                                             ; preds = %hue2rgb.exit.i.i
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %i.bo, 3.000000e+00
  br i1 %i.bx, label %hue2rgb.exit36.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = fsub fast float 4.000000e+00, %i.bo
  %i.bz = select reassoc nsz arcp contract afn i1 %i.bp, float %i.by, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.r, %bb.q, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ 1.000000e+00, %bb.q ], [ %i.bz, %bb.r ], [ %i.bo, %hue2rgb.exit.i.i ]
  %i.ca = fcmp reassoc nsz arcp contract afn ogt float %i.bo, 2.000000e+00
  %.v34.i.i = select i1 %i.ca, float -2.000000e+00, float 4.000000e+00
  %i.cb = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.bo ; 5 uses
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %i.cb, 1.000000e+00
  br i1 %i.cc, label %_update_saturation_slider_end_color.exit, label %bb.s

bb.s:                                             ; preds = %hue2rgb.exit36.i.i
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.cb, 3.000000e+00
  br i1 %i.cd, label %_update_saturation_slider_end_color.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = fcmp reassoc nsz arcp contract afn olt float %i.cb, 4.000000e+00
  %i.cf = fsub fast float 4.000000e+00, %i.cb
  %i.cg = select reassoc nsz arcp contract afn i1 %i.ce, float %i.cf, float 0.000000e+00
  br label %_update_saturation_slider_end_color.exit

_update_saturation_slider_end_color.exit:         ; preds = %hue2rgb.exit36.i.i, %bb.s, %bb.t
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.s ], [ %i.cg, %bb.t ], [ %i.cb, %hue2rgb.exit36.i.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.bm, float noundef 1.000000e+00, float noundef %.0.i.i.i, float noundef %.0.i35.i.i, float noundef %.0.i37.i.i) #19
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 104
  %i.cj = atomicrmw add ptr %i.ci, i32 -1 seq_cst, align 4 ; 0 uses
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !82
  tail call void @dt_dev_add_history_item(ptr noundef %i.ck, ptr noundef nonnull %0, i32 noundef 1) #19
  br label %bb.u

bb.u:                                             ; preds = %bb.m, %_update_saturation_slider_end_color.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #2

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_color_picker_reset(ptr noundef %0, i32 noundef 1) #19
  ret void
}

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @gui_post_expose(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !73  ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !83
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !85
  %i.p = tail call fastcc i32 @_set_points_from_grad(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, float noundef %i.m, float noundef %i.o)
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.c, align 8, !tbaa !83
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.s = load <2 x float>, ptr %i.q, align 4, !tbaa !62
  %i.t = load <2 x float>, ptr %i.r, align 4, !tbaa !62
  %i.u = insertelement <2 x float> poison, float %2, i64 0
  %i.v = insertelement <2 x float> %i.u, float %3, i64 1 ; 2 uses
  %i.w = fmul reassoc nsz arcp contract afn <2 x float> %i.s, %i.v ; 5 uses
  %i.x = fmul reassoc nsz arcp contract afn <2 x float> %i.t, %i.v ; 5 uses
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !82
  %i.z = tail call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.y) #19
  %.not143 = icmp eq i32 %i.z, 0
  %i.aa = select reassoc nsz arcp contract afn i1 %.not143, double 1.000000e+00, double 5.000000e-01
  %i.ab = fpext reassoc nsz arcp contract afn float %6 to double
  %i.ac = fdiv reassoc nsz arcp contract afn double %i.aa, %i.ab ; 5 uses
  tail call void @cairo_set_line_cap(ptr noundef %1, i32 noundef 1) #19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 6 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !86
  %i.af = icmp eq i32 %i.ae, 3
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !87
  %i.ai = icmp eq i32 %i.ah, 3
  %spec.select = select i1 %i.ai, double 5.000000e+00, double 3.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi double [ 5.000000e+00, %bb.d ], [ %spec.select, %bb.e ]
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1432
  %i.al = load double, ptr %i.ak, align 8, !tbaa !93
  %i.am = fmul reassoc nsz arcp contract afn double %i.ac, %.sink
  %i.an = fmul reassoc nsz arcp contract afn double %i.am, %i.al
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.an) #19
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1408
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !140
  %i.ar = fmul reassoc nsz arcp contract afn double %i.aq, 5.000000e-01
  %i.as = fsub reassoc nsz arcp contract afn double 5.000000e-01, %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 1384
  %i.au = load double, ptr %i.at, align 8, !tbaa !141
  %i.av = fmul reassoc nsz arcp contract afn double %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 1400
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !142
  %i.ay = fmul reassoc nsz arcp contract afn double %i.ax, %i.as
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 1392
  %i.ba = load double, ptr %i.az, align 8, !tbaa !143
  %i.bb = fmul reassoc nsz arcp contract afn double %i.ba, %i.as
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.av, double noundef %i.ay, double noundef %i.bb, double noundef 8.000000e-01) #19
  %i.bc = extractelement <2 x float> %i.w, i64 0
  %i.bd = fpext reassoc nsz arcp contract afn float %i.bc to double ; 3 uses
  %i.be = extractelement <2 x float> %i.w, i64 1  ; 3 uses
  %i.bf = fpext reassoc nsz arcp contract afn float %i.be to double ; 3 uses
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.bd, double noundef %i.bf) #19
  %i.bg = extractelement <2 x float> %i.x, i64 0
  %i.bh = fpext reassoc nsz arcp contract afn float %i.bg to double ; 3 uses
  %i.bi = extractelement <2 x float> %i.x, i64 1
  %i.bj = fpext reassoc nsz arcp contract afn float %i.bi to double ; 3 uses
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.bh, double noundef %i.bj) #19
  tail call void @cairo_stroke(ptr noundef %1) #19
  %i.bk = load i32, ptr %i.ad, align 8, !tbaa !86
  %i.bl = icmp eq i32 %i.bk, 3
  br i1 %i.bl, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !87
  %i.bo = icmp eq i32 %i.bn, 3
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1432
  %i.br = load double, ptr %i.bq, align 8, !tbaa !93
  %i.bs = fmul reassoc nsz arcp contract afn double %i.ac, 2.000000e+00
  %i.bt = fmul reassoc nsz arcp contract afn double %i.bs, %i.br
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1432
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !93
  %i.bx = fmul reassoc nsz arcp contract afn double %i.bw, %i.ac
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink149 = phi double [ %i.bx, %bb.i ], [ %i.bt, %bb.h ]
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %.sink149) #19
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1408
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !140
  %i.cb = fmul reassoc nsz arcp contract afn double %i.ca, 5.000000e-01
  %i.cc = fadd reassoc nsz arcp contract afn double %i.cb, 5.000000e-01 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1384
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !141
  %i.cf = fmul reassoc nsz arcp contract afn double %i.cc, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 1400
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !142
  %i.ci = fmul reassoc nsz arcp contract afn double %i.ch, %i.cc
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 1392
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !143
  %i.cl = fmul reassoc nsz arcp contract afn double %i.ck, %i.cc
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.cf, double noundef %i.ci, double noundef %i.cl, double noundef 8.000000e-01) #19
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.bd, double noundef %i.bf) #19
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.bh, double noundef %i.bj) #19
  tail call void @cairo_stroke(ptr noundef %1) #19
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !82
  %i.cn = tail call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.cm) #19
  %.not144 = icmp eq i32 %i.cn, 0
  br i1 %.not144, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.co = fsub reassoc nsz arcp contract afn <2 x float> %i.x, %i.w ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.co
  %foldExtExtBinop235 = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.co
  %shift = shufflevector <2 x float> %foldExtExtBinop235, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop237 = fadd reassoc nsz arcp contract afn <2 x float> %shift, %foldExtExtBinop
  %i.cp = extractelement <2 x float> %foldExtExtBinop237, i64 0
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cp)
  %i.cr = fmul reassoc nsz arcp contract afn float %2, f0x3C23D70A
  %i.cs = fdiv reassoc nsz arcp contract afn float %i.cr, %6
  %i.ct = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.cu
  %i.cw = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fdiv reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cx ; 5 uses
  %i.cz = extractelement <2 x float> %i.cy, i64 0
  %foldExtExtBinop239 = fadd reassoc nsz arcp contract afn <2 x float> %i.cy, %i.w ; 2 uses
  %i.da = extractelement <2 x float> %foldExtExtBinop239, i64 0
end_hunk_0
begin_hunk_1_@process:bb.a
  store <4 x float> %i.hl, ptr %i.hm, align 16, !tbaa !136, !alias.scope !181, !nontemporal !179
  %i.hn = fadd reassoc nsz arcp contract afn float %.0181207, %i.bj ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ho = icmp slt i64 %indvars.iv.next, %invariant.op
  br i1 %i.ho, label %.lr.ph, label %._crit_edge

._crit_edge216:                                   ; preds = %.lr.ph215, %._crit_edge
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next251, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge241, label %bb.d

.lr.ph215:                                        ; preds = %._crit_edge, %.lr.ph215
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %.lr.ph215 ], [ %i.bl, %._crit_edge ] ; 2 uses
  %.1212 = phi float [ %i.ie, %.lr.ph215 ], [ %.0181.lcssa, %._crit_edge ] ; 2 uses
  %i.hp = fsub reassoc nsz arcp contract afn float 5.000000e-01, %.1212 ; 3 uses
  %i.hq = fcmp reassoc nsz arcp contract afn ult float %i.hp, 0.000000e+00
  %i.hr = fcmp reassoc nsz arcp contract afn ole float %i.hp, 1.000000e+00
  %i.hs = select reassoc nsz arcp contract afn i1 %i.hr, float %i.hp, float 1.000000e+00
  %i.ht = select reassoc nsz arcp contract afn i1 %i.hq, float 0.000000e+00, float %i.hs
  %i.hu = fmul reassoc nsz arcp contract afn float %i.ht, %i.bi
  %i.hv = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.hu)
  %i.hw = shl nsw i64 %indvars.iv247, 2           ; 2 uses
  %invariant.gep209 = getelementptr [4 x i8], ptr %i.ff, i64 %i.hw
  %i.hx = load <4 x float>, ptr %invariant.gep209, align 4, !tbaa !62
  %i.hy = insertelement <4 x float> poison, float %i.hv, i64 0
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ia = fmul reassoc nsz arcp contract afn <4 x float> %i.bc, %i.hz
  %i.ib = fadd reassoc nsz arcp contract afn <4 x float> %i.ia, %i.bb
  %i.ic = fmul reassoc nsz arcp contract afn <4 x float> %i.ib, %i.hx
  %i.id = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.hw
  store <4 x float> %i.ic, ptr %i.id, align 16, !tbaa !136, !alias.scope !182, !nontemporal !179
  %i.ie = fadd reassoc nsz arcp contract afn float %.1212, %i.ax
  %indvars.iv.next248 = add nsw i64 %indvars.iv247, 1 ; 2 uses
  %i.if = icmp slt i64 %indvars.iv.next248, %i.bf
  br i1 %i.if, label %.lr.ph215, label %._crit_edge216

._crit_edge241:                                   ; preds = %._crit_edge216, %._crit_edge238, %.preheader203, %.preheader201
  tail call void @llvm.x86.sse.sfence()
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !183
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 628
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !191
  %i.ik = and i32 %i.ij, 1
  %.not196 = icmp eq i32 %i.ik, 0
  br i1 %.not196, label %dt_iop_alpha_copy.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge241
  %i.il = load i32, ptr %i.al, align 4, !tbaa !175
  %i.im = sext i32 %i.il to i64
  %i.in = load i32, ptr %i.an, align 4, !tbaa !176
  %i.io = sext i32 %i.in to i64
  %i.ip = shl nsw i64 %i.im, 2
  %i.iq = mul i64 %i.ip, %i.io                    ; 3 uses
  %.not.i = icmp eq i64 %i.iq, 0
  br i1 %.not.i, label %dt_iop_alpha_copy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ir = tail call i64 @llvm.umax.i64(i64 %i.iq, i64 7)
  %i.is = add i64 %i.ir, -4                       ; 3 uses
  %i.it = lshr i64 %i.is, 2
  %i.iu = add nuw nsw i64 %i.it, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.is, 96
  br i1 %min.iters.check, label %.lr.ph.i.preheader424, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.iv = getelementptr i8, ptr %3, i64 12
  %i.iw = shl i64 %i.is, 2
  %i.ix = and i64 %i.iw, -16
  %i.iy = add i64 %i.ix, 16                       ; 2 uses
  %i.iz = getelementptr i8, ptr %3, i64 %i.iy
  %i.ja = getelementptr i8, ptr %2, i64 12
  %i.jb = getelementptr i8, ptr %2, i64 %i.iy
  %bound0 = icmp ult ptr %i.iv, %i.jb
  %bound1 = icmp ult ptr %i.ja, %i.iz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader424, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.jc = and i64 %i.iu, 7                        ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 0
  %i.je = select i1 %i.jd, i64 8, i64 %i.jc
  %n.vec = sub nsw i64 %i.iu, %i.je               ; 2 uses
  %i.jf = shl i64 %n.vec, 2
  %i.jg = or disjoint i64 %i.jf, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 3, i64 7, i64 11, i64 15, i64 19, i64 23, i64 27, i64 31>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  %wide.vec = load <32 x float>, ptr %i.ji, align 4, !tbaa !62, !alias.scope !192
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %3, <8 x i64> %vec.ind
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !62, !alias.scope !193, !noalias !192
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %.lr.ph.i.preheader424, label %vector.body, !llvm.loop !163

.lr.ph.i.preheader424:                            ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.preheader
  %.09.i.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.i.preheader ], [ %i.jg, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader424, %.lr.ph.i
  %.09.i = phi i64 [ %i.jn, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader424 ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.09.i
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !62
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.09.i
  store float %i.jl, ptr %i.jm, align 4, !tbaa !62
  %i.jn = add nuw i64 %.09.i, 4                   ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %i.iq
  br i1 %i.jo, label %.lr.ph.i, label %dt_iop_alpha_copy.exit, !llvm.loop !164

dt_iop_alpha_copy.exit:                           ; preds = %.lr.ph.i, %._crit_edge241, %bb.e, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !137
  store i32 -999, ptr %i.a, align 4, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -999, ptr %i.c, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  tail call void @free(ptr noundef %i.b) #19
  store ptr null, ptr %i.a, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !73  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132
  %i.g = icmp eq ptr %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !85
  %i.p = tail call fastcc i32 @_set_points_from_grad(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, float noundef %i.m, float noundef %i.o) ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load float, ptr %i.v, align 4, !tbaa !76
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, 6.000000e+00 ; 8 uses
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.x, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.y, float 2.000000e+00, float -4.000000e+00
  %i.z = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.x ; 5 uses
  %i.aa = fcmp reassoc nsz arcp contract afn olt float %i.z, 1.000000e+00
  br i1 %i.aa, label %hue2rgb.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %i.z, 3.000000e+00
  br i1 %i.ab, label %hue2rgb.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = fcmp reassoc nsz arcp contract afn olt float %i.z, 4.000000e+00
  %i.ad = fsub fast float 4.000000e+00, %i.z
  %i.ae = select reassoc nsz arcp contract afn i1 %i.ac, float %i.ad, float 0.000000e+00
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i.i = phi nsz float [ 1.000000e+00, %bb.e ], [ %i.ae, %bb.f ], [ %i.z, %bb.d ]
  %i.af = fcmp reassoc nsz arcp contract afn olt float %i.x, 1.000000e+00
  br i1 %i.af, label %hue2rgb.exit36.i.i, label %bb.g

bb.g:                                             ; preds = %hue2rgb.exit.i.i
  %i.ag = fcmp reassoc nsz arcp contract afn olt float %i.x, 3.000000e+00
  br i1 %i.ag, label %hue2rgb.exit36.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = fsub fast float 4.000000e+00, %i.x
  %i.ai = select reassoc nsz arcp contract afn i1 %i.y, float %i.ah, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.h, %bb.g, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ 1.000000e+00, %bb.g ], [ %i.ai, %bb.h ], [ %i.x, %hue2rgb.exit.i.i ]
  %i.aj = fcmp reassoc nsz arcp contract afn ogt float %i.x, 2.000000e+00
  %.v34.i.i = select i1 %i.aj, float -2.000000e+00, float 4.000000e+00
  %i.ak = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.x ; 5 uses
  %i.al = fcmp reassoc nsz arcp contract afn olt float %i.ak, 1.000000e+00
  br i1 %i.al, label %_update_saturation_slider_end_color.exit, label %bb.i

bb.i:                                             ; preds = %hue2rgb.exit36.i.i
  %i.am = fcmp reassoc nsz arcp contract afn olt float %i.ak, 3.000000e+00
  br i1 %i.am, label %_update_saturation_slider_end_color.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = fcmp reassoc nsz arcp contract afn olt float %i.ak, 4.000000e+00
  %i.ao = fsub fast float 4.000000e+00, %i.ak
  %i.ap = select reassoc nsz arcp contract afn i1 %i.an, float %i.ao, float 0.000000e+00
  br label %_update_saturation_slider_end_color.exit

_update_saturation_slider_end_color.exit:         ; preds = %hue2rgb.exit36.i.i, %bb.i, %bb.j
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.i ], [ %i.ap, %bb.j ], [ %i.ak, %hue2rgb.exit36.i.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.u, float noundef 1.000000e+00, float noundef %.0.i.i.i, float noundef %.0.i35.i.i, float noundef %.0.i37.i.i) #19
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !81
  tail call void @gtk_widget_queue_draw(ptr noundef %i.aq) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %_update_saturation_slider_end_color.exit, %bb.b
  ret void
}

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !135 ; 9 uses
  %i.c = load <4 x float>, ptr %1, align 4, !tbaa !62 ; 2 uses
  store <4 x float> %i.c, ptr %i.b, align 16, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load float, ptr %i.e, align 4, !tbaa !77 ; 8 uses
  %i.g = fcmp reassoc nsz arcp contract afn oeq float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store float 5.000000e-01, ptr %i.h, align 8, !tbaa !62
  store <2 x float> splat (float 5.000000e-01), ptr %i.d, align 16, !tbaa !62
  br label %hsl2rgb.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load float, ptr %i.i, align 4, !tbaa !76
  %i.k = fmul reassoc nsz arcp contract afn float %i.f, 5.000000e-01 ; 2 uses
  %i.l = fadd reassoc nsz arcp contract afn float %i.k, 5.000000e-01 ; 3 uses
  %i.m = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.k ; 9 uses
  %i.n = fmul reassoc nsz arcp contract afn float %i.j, 6.000000e+00 ; 8 uses
  %i.o = fcmp reassoc nsz arcp contract afn olt float %i.n, 4.000000e+00 ; 2 uses
  %.v.i = select i1 %i.o, float 2.000000e+00, float -4.000000e+00
  %i.p = fadd reassoc nsz arcp contract afn float %.v.i, %i.n ; 5 uses
  %i.q = fcmp reassoc nsz arcp contract afn olt float %i.p, 1.000000e+00
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = fmul reassoc nsz arcp contract afn float %i.p, %i.f
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, %i.m
  br label %hue2rgb.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = fcmp reassoc nsz arcp contract afn olt float %i.p, 3.000000e+00
  br i1 %i.t, label %hue2rgb.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = fcmp reassoc nsz arcp contract afn olt float %i.p, 4.000000e+00
  %i.v = fsub fast float 4.000000e+00, %i.p
  %i.w = fmul reassoc nsz arcp contract afn float %i.v, %i.f
  %i.x = fadd reassoc nsz arcp contract afn float %i.w, %i.m
  %i.y = select reassoc nsz arcp contract afn i1 %i.u, float %i.x, float %i.m
  br label %hue2rgb.exit.i

hue2rgb.exit.i:                                   ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i = phi nsz float [ %i.s, %bb.d ], [ %i.y, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  store float %.0.i.i, ptr %i.d, align 16, !tbaa !62
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.n, 1.000000e+00
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %hue2rgb.exit.i
  %i.aa = fmul reassoc nsz arcp contract afn float %i.n, %i.f
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, %i.m
  br label %hue2rgb.exit36.i

bb.h:                                             ; preds = %hue2rgb.exit.i
  %i.ac = fcmp reassoc nsz arcp contract afn olt float %i.n, 3.000000e+00
  br i1 %i.ac, label %hue2rgb.exit36.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = fsub fast float 4.000000e+00, %i.n
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.f
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, %i.m
  %i.ag = select reassoc nsz arcp contract afn i1 %i.o, float %i.af, float %i.m
  br label %hue2rgb.exit36.i

hue2rgb.exit36.i:                                 ; preds = %bb.i, %bb.h, %bb.g
  %.0.i35.i = phi nsz float [ %i.ab, %bb.g ], [ %i.ag, %bb.i ], [ %i.l, %bb.h ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %.0.i35.i, ptr %i.ah, align 4, !tbaa !62
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %i.n, 2.000000e+00
  %.v34.i = select i1 %i.ai, float -2.000000e+00, float 4.000000e+00
  %i.aj = fadd reassoc nsz arcp contract afn float %.v34.i, %i.n ; 5 uses
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %i.aj, 1.000000e+00
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %hue2rgb.exit36.i
  %i.al = fmul reassoc nsz arcp contract afn float %i.aj, %i.f
  %i.am = fadd reassoc nsz arcp contract afn float %i.al, %i.m
  br label %hue2rgb.exit38.i

bb.k:                                             ; preds = %hue2rgb.exit36.i
  %i.an = fcmp reassoc nsz arcp contract afn olt float %i.aj, 3.000000e+00
  br i1 %i.an, label %hue2rgb.exit38.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = fcmp reassoc nsz arcp contract afn olt float %i.aj, 4.000000e+00
  %i.ap = fsub fast float 4.000000e+00, %i.aj
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, %i.f
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, %i.m
  %i.as = select reassoc nsz arcp contract afn i1 %i.ao, float %i.ar, float %i.m
  br label %hue2rgb.exit38.i

hue2rgb.exit38.i:                                 ; preds = %bb.l, %bb.k, %bb.j
  %.0.i37.i = phi nsz float [ %i.am, %bb.j ], [ %i.as, %bb.l ], [ %i.l, %bb.k ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store float %.0.i37.i, ptr %i.at, align 8, !tbaa !62
  br label %hsl2rgb.exit

hsl2rgb.exit:                                     ; preds = %bb.b, %hue2rgb.exit38.i
  %i.au = phi float [ 5.000000e-01, %bb.b ], [ %.0.i37.i, %hue2rgb.exit38.i ]
  %i.av = phi float [ 5.000000e-01, %bb.b ], [ %.0.i35.i, %hue2rgb.exit38.i ] ; 2 uses
  %i.aw = phi float [ 5.000000e-01, %bb.b ], [ %.0.i.i, %hue2rgb.exit38.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store float 0.000000e+00, ptr %i.ax, align 4, !tbaa !62
  %i.ay = extractelement <4 x float> %i.c, i64 0
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.ay, 0.000000e+00
  %i.ba = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aw, i64 0
  %i.bb = insertelement <4 x float> %i.ba, float %i.av, i64 1
  %i.bc = insertelement <4 x float> %i.bb, float %i.au, i64 2 ; 2 uses
  br i1 %i.az, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %hsl2rgb.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bf = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.bc ; 3 uses
  %i.bg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.av
  %i.bh = extractelement <4 x float> %i.bf, i64 0
  store float %i.bh, ptr %i.d, align 16, !tbaa !62
  store float %i.bg, ptr %i.bd, align 4, !tbaa !62
  %i.bi = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bj = insertelement <2 x float> %i.bi, float 1.000000e+00, i64 1
  store <2 x float> %i.bj, ptr %i.be, align 8, !tbaa !62
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %hsl2rgb.exit
  %i.bk = phi <4 x float> [ %i.bf, %.preheader.preheader ], [ %i.bc, %hsl2rgb.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bm = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.bk
  store <4 x float> %i.bm, ptr %i.bl, align 16, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !135
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !135
  tail call void @free(ptr noundef %i.b) #19
  store ptr null, ptr %i.a, align 16, !tbaa !135
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !73  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74
  tail call void @dt_iop_color_picker_reset(ptr noundef %0, i32 noundef 1) #19
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load float, ptr %i.h, align 4, !tbaa !76
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, 6.000000e+00 ; 8 uses
  %i.k = fcmp reassoc nsz arcp contract afn olt float %i.j, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.k, float 2.000000e+00, float -4.000000e+00
  %i.l = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.j ; 5 uses
  %i.m = fcmp reassoc nsz arcp contract afn olt float %i.l, 1.000000e+00
  br i1 %i.m, label %hue2rgb.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.l, 3.000000e+00
  br i1 %i.n, label %hue2rgb.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = fcmp reassoc nsz arcp contract afn olt float %i.l, 4.000000e+00
  %i.p = fsub fast float 4.000000e+00, %i.l
  %i.q = select reassoc nsz arcp contract afn i1 %i.o, float %i.p, float 0.000000e+00
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.c, %bb.b, %bb.a
  %.0.i.i.i = phi nsz float [ 1.000000e+00, %bb.b ], [ %i.q, %bb.c ], [ %i.l, %bb.a ]
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.j, 1.000000e+00
  br i1 %i.r, label %hue2rgb.exit36.i.i, label %bb.d

bb.d:                                             ; preds = %hue2rgb.exit.i.i
  %i.s = fcmp reassoc nsz arcp contract afn olt float %i.j, 3.000000e+00
  br i1 %i.s, label %hue2rgb.exit36.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = fsub fast float 4.000000e+00, %i.j
  %i.u = select reassoc nsz arcp contract afn i1 %i.k, float %i.t, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.e, %bb.d, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ 1.000000e+00, %bb.d ], [ %i.u, %bb.e ], [ %i.j, %hue2rgb.exit.i.i ]
  %i.v = fcmp reassoc nsz arcp contract afn ogt float %i.j, 2.000000e+00
  %.v34.i.i = select i1 %i.v, float -2.000000e+00, float 4.000000e+00
  %i.w = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.j ; 5 uses
  %i.x = fcmp reassoc nsz arcp contract afn olt float %i.w, 1.000000e+00
  br i1 %i.x, label %_update_saturation_slider_end_color.exit, label %bb.f

bb.f:                                             ; preds = %hue2rgb.exit36.i.i
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.w, 3.000000e+00
  br i1 %i.y, label %_update_saturation_slider_end_color.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.w, 4.000000e+00
  %i.aa = fsub fast float 4.000000e+00, %i.w
  %i.ab = select reassoc nsz arcp contract afn i1 %i.z, float %i.aa, float 0.000000e+00
  br label %_update_saturation_slider_end_color.exit

_update_saturation_slider_end_color.exit:         ; preds = %hue2rgb.exit36.i.i, %bb.f, %bb.g
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.f ], [ %i.ab, %bb.g ], [ %i.w, %hue2rgb.exit36.i.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.g, float noundef 1.000000e+00, float noundef %.0.i.i.i, float noundef %.0.i35.i.i, float noundef %.0.i37.i.i) #19
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 80) #19 ; 12 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.a, ptr %i.b, align 16, !tbaa !73
  %i.c = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.22) #19 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !133
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #19
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.c, ptr noundef %i.d) #19
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.f = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #19
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.e, ptr noundef %i.f) #19
  %i.g = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.25) #19 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !134
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.g, ptr noundef nonnull @.str.26) #19
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #19
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.i, ptr noundef %i.j) #19
  %i.k = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.28) #19 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !132
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.k, ptr noundef nonnull @.str.29) #19
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !132
  tail call void @dt_bauhaus_slider_set_factor(ptr noundef %i.m, float noundef -1.000000e+00) #19
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !132
  %i.o = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #19
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.n, ptr noundef %i.o) #19
  %i.p = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.31) #19
  %i.q = tail call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 1, ptr noundef %i.p) #19 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 11 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !80
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.q, i32 noundef 0) #19
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80
  tail call void @dt_bauhaus_slider_set_factor(ptr noundef %i.s, float noundef 3.600000e+02) #19
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !80
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.t, ptr noundef nonnull @.str.29) #19
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !80
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.u, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #19
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !80
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.v, float noundef 1.660000e-01, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #19
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !80
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.w, float noundef 3.220000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #19
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !80
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.x, float noundef 4.980000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #19
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !80
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.y, float noundef f0x3F29FBE7, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #19
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !80
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.z, float noundef f0x3F547AE1, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #19
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !80
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.aa, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #19
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.ac = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #19
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.ab, ptr noundef %i.ac) #19
  %i.ad = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.33) #19 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !81
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.ad, ptr noundef nonnull @.str.26) #19
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !81
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.af, float noundef 0.000000e+00, float noundef 2.000000e-01, float noundef 2.000000e-01, float noundef 2.000000e-01) #19
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !81
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ag, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #19
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !81
  %i.ai = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #19
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.ah, ptr noundef %i.ai) #19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.aj, align 8, !tbaa !86
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 0, ptr %i.ak, align 4, !tbaa !87
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %i.al, align 8, !tbaa !83
  ret void
}

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_bauhaus_slider_set_factor(ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_bauhaus_slider_set_feedback(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dt_bauhaus_slider_set_stop(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @mouse_actions(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !199
  %i.d = tail call ptr %i.c() #19
  %i.e = tail call ptr @dt_mouse_action_create_format(ptr noundef null, i32 noundef 7, i32 noundef 0, ptr noundef %i.a, ptr noundef %i.d) #19
  %i.f = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #19
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !199
  %i.h = tail call ptr %i.g() #19
  %i.i = tail call ptr @dt_mouse_action_create_format(ptr noundef %i.e, i32 noundef 7, i32 noundef 0, ptr noundef %i.f, ptr noundef %i.h) #19
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #19
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !199
  %i.l = tail call ptr %i.k() #19
  %i.m = tail call ptr @dt_mouse_action_create_format(ptr noundef %i.i, i32 noundef 3, i32 noundef 4, ptr noundef %i.j, ptr noundef %i.l) #19
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #19
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !199
  %i.p = tail call ptr %i.o() #19
  %i.q = tail call ptr @dt_mouse_action_create_format(ptr noundef %i.m, i32 noundef 3, i32 noundef 1, ptr noundef %i.n, ptr noundef %i.p) #19
  ret ptr %i.q
}

declare ptr @dt_mouse_action_create_format(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !202
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !136
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !136
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !136
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !136
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !136
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !136
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !136
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !136
  store ptr @introspection_init.f6, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 600), align 8, !tbaa !136
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.22) #26
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.25) #26
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.28) #26
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.39) #26
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
end_hunk_1
