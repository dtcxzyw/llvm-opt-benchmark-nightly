inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@get_f:bb.a
bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.156) #31
  %.not30 = icmp eq i32 %i.c, 0
  br i1 %.not30, label %bb.ac, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.157) #31
  %.not31 = icmp eq i32 %i.d, 0
  br i1 %.not31, label %bb.ac, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.163) #31
  %.not32 = icmp eq i32 %i.e, 0
  br i1 %.not32, label %bb.ac, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.164) #31
  %.not33 = icmp eq i32 %i.f, 0
  br i1 %.not33, label %bb.ac, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.170) #31
  %.not34 = icmp eq i32 %i.g, 0
  br i1 %.not34, label %bb.ac, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.303) #31
  %.not35 = icmp eq i32 %i.h, 0
  br i1 %.not35, label %bb.ac, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.177) #31
  %.not36 = icmp eq i32 %i.i, 0
  br i1 %.not36, label %bb.ac, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.141) #31
  %.not37 = icmp eq i32 %i.j, 0
  br i1 %.not37, label %bb.ac, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.183) #31
  %.not38 = icmp eq i32 %i.k, 0
  br i1 %.not38, label %bb.ac, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.304) #31
  %.not39 = icmp eq i32 %i.l, 0
  br i1 %.not39, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.153) #31
  %.not40 = icmp eq i32 %i.m, 0
  br i1 %.not40, label %bb.ac, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.n = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.160) #31
  %.not41 = icmp eq i32 %i.n, 0
  br i1 %.not41, label %bb.ac, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.167) #31
  %.not42 = icmp eq i32 %i.o, 0
  br i1 %.not42, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.p = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.173) #31
  %.not43 = icmp eq i32 %i.p, 0
  br i1 %.not43, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.180) #31
  %.not44 = icmp eq i32 %i.q, 0
  br i1 %.not44, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.r = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.186) #31
  %.not45 = icmp eq i32 %i.r, 0
  br i1 %.not45, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.s = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.84) #31
  %.not46 = icmp eq i32 %i.s, 0
  br i1 %.not46, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.t = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.117) #31
  %.not47 = icmp eq i32 %i.t, 0
  br i1 %.not47, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.u = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.118) #31
  %.not48 = icmp eq i32 %i.u, 0
  br i1 %.not48, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.v = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.100) #31
  %.not49 = icmp eq i32 %i.v, 0
  br i1 %.not49, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.w = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.97) #31
  %.not50 = icmp eq i32 %i.w, 0
  br i1 %.not50, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.x = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.98) #31
  %.not51 = icmp eq i32 %i.x, 0
  br i1 %.not51, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.y = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.99) #31
  %.not52 = icmp eq i32 %i.y, 0
  br i1 %.not52, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.z = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.125) #31
  %.not53 = icmp eq i32 %i.z, 0
  br i1 %.not53, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aa = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.126) #31
  %.not54 = icmp eq i32 %i.aa, 0
  br i1 %.not54, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ab = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.174) #31
  %.not55 = icmp eq i32 %i.ab, 0
  %. = select i1 %.not55, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2376), ptr null
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2288), %bb.aa ], [ %., %bb.ab ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2200), %bb.z ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2112), %bb.y ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2024), %bb.x ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1936), %bb.w ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1848), %bb.v ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1760), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1672), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1584), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1496), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1408), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1320), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1232), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1144), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1056), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 968), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #15

; Function Attrs: nounwind uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 192) #31 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %dt_calloc_aligned.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %i.a, i8 0, i64 192, i1 false)
  br label %dt_calloc_aligned.exit

dt_calloc_aligned.exit:                           ; preds = %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "align"(ptr %i.a, i64 64) ]
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nounwind uwtable
define void @cleanup_pipe(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  tail call void @dt_dev_reset_chroma(ptr noundef %i.b) #31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !34
  tail call void @free(ptr noundef %i.d) #31
  store ptr null, ptr %i.c, align 16, !tbaa !34
  ret void
}

declare void @dt_dev_reset_chroma(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  store i32 0, ptr %i.c, align 64, !tbaa !298
  tail call void @dt_iop_color_picker_reset(ptr noundef %0, i32 noundef 1) #31
  tail call void @gui_changed(ptr noundef %0, ptr noundef null, ptr noundef null)
  ret void
}

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !245  ; 40 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !52  ; 39 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !336
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %bb.b, label %.thread178

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %2, align 4, !tbaa !18
  %i.k = icmp eq i32 %i.j, 10
  br i1 %i.k, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79   ; 11 uses
  store <4 x float> splat (float 1.000000e+00), ptr %i.a, align 16, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = tail call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.n) #31
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %_get_white_balance_coeff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !79   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2480
  %i.r = load i32, ptr %i.q, align 16, !tbaa !235
  %.not.i.i = icmp eq i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 2400
  %..i.i = select i1 %.not.i.i, i64 2416, i64 2448
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i.i
  %i.u = tail call i32 @dt_dev_equal_chroma(ptr noundef nonnull %i.s, ptr noundef nonnull %i.t) #31
  %.not26.i = icmp eq i32 %i.u, 0
  br i1 %.not26.i, label %bb.f, label %_get_white_balance_coeff.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 2416
  %i.w = load double, ptr %i.v, align 16, !tbaa !134 ; 2 uses
  %i.x = fcmp reassoc nsz arcp contract afn ogt double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 2424
  %i.z = load double, ptr %i.y, align 8, !tbaa !134
  %i.aa = fcmp reassoc nsz arcp contract afn ogt double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 2432
  %i.ac = load double, ptr %i.ab, align 16, !tbaa !134
  %i.ad = fcmp reassoc nsz arcp contract afn ogt double %i.ac, 0.000000e+00
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ae = phi i1 [ false, %bb.g ], [ false, %bb.f ], [ %i.ad, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 2400
  %i.ag = load float, ptr %i.af, align 16, !tbaa !14 ; 2 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.ag, 1.000000e+00
  br i1 %i.ah, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 2404
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !14
  %i.ak = fcmp reassoc nsz arcp contract afn ogt float %i.aj, 1.000000e+00
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 2408
  %i.am = load float, ptr %i.al, align 8, !tbaa !14
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.am, 1.000000e+00
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ao = phi i1 [ true, %bb.j ], [ true, %bb.i ], [ %i.an, %bb.k ]
  %or.cond.i = select i1 %i.ae, i1 %i.ao, i1 false
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_get_white_balance_coeff.exit

.preheader.preheader.i:                           ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 2424
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !134
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 2404
  %i.as = load float, ptr %i.ar, align 4, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 2432
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 2408
  %i.av = load <2 x double>, ptr %i.at, align 16, !tbaa !134
  %i.aw = insertelement <4 x double> poison, double %i.w, i64 0
  %i.ax = insertelement <4 x double> %i.aw, double %i.aq, i64 1
  %i.ay = shufflevector <2 x double> %i.av, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.az = shufflevector <4 x double> %i.ax, <4 x double> %i.ay, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ba = fptrunc <4 x double> %i.az to <4 x float>
  %i.bb = load <2 x float>, ptr %i.au, align 8, !tbaa !14
  %i.bc = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.as, i64 1
  %i.be = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bf = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bg = fdiv reassoc nsz arcp contract afn <4 x float> %i.ba, %i.bf
  store <4 x float> %i.bg, ptr %i.a, align 16, !tbaa !14
  br label %_get_white_balance_coeff.exit

_get_white_balance_coeff.exit:                    ; preds = %bb.d, %bb.e, %bb.l, %.preheader.preheader.i
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 140 ; 2 uses
  %i.bl = call fastcc i32 @find_temperature_from_raw_coeffs(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bk) ; 0 uses
  %i.bm = load float, ptr %i.bj, align 4, !tbaa !324
  %i.bn = load float, ptr %i.bk, align 4, !tbaa !325
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  call fastcc void @_check_if_close_to_daylight(float noundef %i.bm, float noundef %i.bn, ptr noundef nonnull %i.bo, ptr noundef null, ptr noundef nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %_get_white_balance_coeff.exit, %bb.b
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !249
  switch i32 %i.br, label %.thread178 [
    i32 2, label %.thread
    i32 6, label %bb.n
    i32 10, label %bb.o
  ]

.thread:                                          ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 928
  %i.bt = load float, ptr %i.bs, align 32, !tbaa !337
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store float %i.bt, ptr %i.bu, align 4, !tbaa !326
  br label %.thread178

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 932
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !338
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store float %i.bw, ptr %i.bx, align 4, !tbaa !326
  br label %.thread178

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !79 ; 11 uses
  store <4 x float> splat (float 1.000000e+00), ptr %i.b, align 16, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 112
  %i.cb = call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.ca) #31
  %.not.i169 = icmp eq i32 %i.cb, 0
  br i1 %.not.i169, label %_get_white_balance_coeff.exit176, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !79 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2480
  %i.ce = load i32, ptr %i.cd, align 16, !tbaa !235
  %.not.i.i170 = icmp eq i32 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 2400
  %..i.i171 = select i1 %.not.i.i170, i64 2416, i64 2448
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %..i.i171
  %i.ch = call i32 @dt_dev_equal_chroma(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cg) #31
  %.not26.i172 = icmp eq i32 %i.ch, 0
  br i1 %.not26.i172, label %bb.q, label %_get_white_balance_coeff.exit176

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 2416
  %i.cj = load double, ptr %i.ci, align 16, !tbaa !134 ; 2 uses
  %i.ck = fcmp reassoc nsz arcp contract afn ogt double %i.cj, 0.000000e+00
  br i1 %i.ck, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 2424
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !134
  %i.cn = fcmp reassoc nsz arcp contract afn ogt double %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 2432
  %i.cp = load double, ptr %i.co, align 16, !tbaa !134
  %i.cq = fcmp reassoc nsz arcp contract afn ogt double %i.cp, 0.000000e+00
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.cr = phi i1 [ false, %bb.r ], [ false, %bb.q ], [ %i.cq, %bb.s ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bz, i64 2400
  %i.ct = load float, ptr %i.cs, align 16, !tbaa !14 ; 2 uses
  %i.cu = fcmp reassoc nsz arcp contract afn ogt float %i.ct, 1.000000e+00
  br i1 %i.cu, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 2404
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !14
  %i.cx = fcmp reassoc nsz arcp contract afn ogt float %i.cw, 1.000000e+00
  br i1 %i.cx, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bz, i64 2408
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !14
  %i.da = fcmp reassoc nsz arcp contract afn ogt float %i.cz, 1.000000e+00
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.db = phi i1 [ true, %bb.u ], [ true, %bb.t ], [ %i.da, %bb.v ]
  %or.cond.i174 = select i1 %i.cr, i1 %i.db, i1 false
  br i1 %or.cond.i174, label %.preheader.preheader.i175, label %_get_white_balance_coeff.exit176

.preheader.preheader.i175:                        ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bz, i64 2424
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !134
  %i.de = getelementptr inbounds nuw i8, ptr %i.bz, i64 2404
  %i.df = load float, ptr %i.de, align 4, !tbaa !14
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 2432
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bz, i64 2408
  %i.di = load <2 x double>, ptr %i.dg, align 16, !tbaa !134
  %i.dj = insertelement <4 x double> poison, double %i.cj, i64 0
  %i.dk = insertelement <4 x double> %i.dj, double %i.dd, i64 1
  %i.dl = shufflevector <2 x double> %i.di, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dm = shufflevector <4 x double> %i.dk, <4 x double> %i.dl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dn = fptrunc <4 x double> %i.dm to <4 x float>
  %i.do = load <2 x float>, ptr %i.dh, align 8, !tbaa !14
  %i.dp = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.dq = insertelement <4 x float> %i.dp, float %i.df, i64 1
  %i.dr = shufflevector <2 x float> %i.do, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ds = shufflevector <4 x float> %i.dq, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dt = fdiv reassoc nsz arcp contract afn <4 x float> %i.dn, %i.ds
  store <4 x float> %i.dt, ptr %i.b, align 16, !tbaa !14
  br label %_get_white_balance_coeff.exit176

_get_white_balance_coeff.exit176:                 ; preds = %bb.o, %bb.p, %bb.w, %.preheader.preheader.i175
  %i.du = load ptr, ptr %i.by, align 8, !tbaa !79
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 112
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 140 ; 2 uses
  %i.dy = call fastcc i32 @find_temperature_from_raw_coeffs(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.b, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx)
  %i.dz = load float, ptr %i.dw, align 4, !tbaa !324
  %i.ea = load float, ptr %i.dx, align 4, !tbaa !325
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  call fastcc void @_check_if_close_to_daylight(float noundef %i.dz, float noundef %i.ea, ptr noundef nonnull %i.eb, ptr noundef null, ptr noundef nonnull %i.ec)
  %.not155 = icmp eq i32 %i.dy, 0
  br i1 %.not155, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_get_white_balance_coeff.exit176
  %i.ed = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.102, i32 noundef 5) #31
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ed) #31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_get_white_balance_coeff.exit176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %.thread178

.thread178:                                       ; preds = %bb.m, %bb.n, %.thread, %bb.y, %bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 16, !tbaa !339
  %i.eg = icmp eq ptr %1, %i.ef                   ; 2 uses
  br i1 %i.eg, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.thread178
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !249
  switch i32 %i.ei, label %bb.ab [
    i32 2, label %.thread179
    i32 6, label %bb.aa
  ]

.thread179:                                       ; preds = %bb.z
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %4 = load float, ptr %3, align 4, !tbaa !326
  %5 = getelementptr inbounds nuw i8, ptr %i.f, i64 928
  store float %4, ptr %5, align 32, !tbaa !337
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !326
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 932
  store float %i.ek, ptr %i.el, align 4, !tbaa !338
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %.thread179, %bb.aa, %.thread178
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !336
  %i.en = icmp eq ptr %1, %i.em
  br i1 %i.en, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ep = load ptr, ptr %i.eo, align 16, !tbaa !340
  %i.eq = icmp eq ptr %1, %i.ep
  br i1 %i.eq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !341
  %i.et = icmp eq ptr %1, %i.es
  %brmerge = or i1 %i.eg, %i.et
  br i1 %brmerge, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !249 ; 4 uses
  switch i32 %i.ev, label %bb.af [
    i32 7, label %bb.ag
    i32 10, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !326
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !327
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !328
  call fastcc void @illuminant_to_xy(i32 noundef %i.ev, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.ew, ptr noundef nonnull %i.ex, float noundef %i.ez, i32 noundef %i.fb, i32 noundef %i.fd)
  %.pr = load i32, ptr %i.eu, align 4, !tbaa !249
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.ae, %bb.af
  %i.fe = phi i32 [ %i.ev, %bb.ae ], [ %i.ev, %bb.ae ], [ %.pr, %bb.af ]
  switch i32 %i.fe, label %bb.ah [
    i32 2, label %bb.ai
    i32 6, label %bb.ai
    i32 10, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !324
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !325
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  call fastcc void @_check_if_close_to_daylight(float noundef %i.fg, float noundef %i.fi, ptr noundef nonnull %i.fj, ptr noundef null, ptr noundef null)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ad, %bb.ag, %bb.ag, %bb.ag, %bb.ah
  %i.fk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !307
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 104
  %i.fm = atomicrmw add ptr %i.fl, i32 1 seq_cst, align 4 ; 0 uses
  %.not161 = icmp eq ptr %1, null                 ; 3 uses
  br i1 %.not161, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 848
  %i.fo = load ptr, ptr %i.fn, align 16, !tbaa !342
  %i.fp = icmp eq ptr %1, %i.fo
  br i1 %i.fp, label %.thread182, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 856
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !343
  %i.fs = icmp eq ptr %1, %i.fr
  br i1 %i.fs, label %.thread182, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ft = getelementptr inbounds nuw i8, ptr %i.f, i64 864
  %i.fu = load ptr, ptr %i.ft, align 32, !tbaa !344
  %i.fv = icmp eq ptr %1, %i.fu
  br i1 %i.fv, label %.thread182, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fw = getelementptr inbounds nuw i8, ptr %i.f, i64 832
  %i.fx = load ptr, ptr %i.fw, align 64, !tbaa !345
  %i.fy = icmp eq ptr %1, %i.fx
  br i1 %i.fy, label %.thread182, label %.thread180

.thread182:                                       ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am
  %.val183 = load ptr, ptr %i.e, align 16, !tbaa !52
  call fastcc void @_paint_hue(ptr %.val183)
  br label %.thread180

bb.an:                                            ; preds = %bb.ai
  %.val = load ptr, ptr %i.e, align 16, !tbaa !52
  call fastcc void @_paint_hue(ptr %.val)
  br label %dt_xyY_to_Lch.exit

.thread180:                                       ; preds = %bb.am, %.thread182
  %i.fz = load ptr, ptr %i.g, align 8, !tbaa !336
  %i.ga = icmp eq ptr %1, %i.fz
  br i1 %i.ga, label %dt_xyY_to_Lch.exit, label %bb.ao

bb.ao:                                            ; preds = %.thread180
  %i.gb = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.gc = load ptr, ptr %i.gb, align 16, !tbaa !340
  %i.gd = icmp eq ptr %1, %i.gc
  br i1 %i.gd, label %dt_xyY_to_Lch.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ge = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !341
  %i.gg = icmp eq ptr %1, %i.gf
  br i1 %i.gg, label %dt_xyY_to_Lch.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gh = load ptr, ptr %i.ee, align 16, !tbaa !339
  %i.gi = icmp eq ptr %1, %i.gh
  br i1 %i.gi, label %dt_xyY_to_Lch.exit, label %bb.at

dt_xyY_to_Lch.exit:                               ; preds = %bb.an, %bb.aq, %bb.ap, %bb.ao, %.thread180
  %.val167 = load ptr, ptr %i.c, align 8, !tbaa !245
  %.val168 = load ptr, ptr %i.e, align 16, !tbaa !52
  call fastcc void @_update_illuminants(ptr %.val167, ptr %.val168)
  call fastcc void @_update_approx_cct(ptr noundef nonnull %0)
  call fastcc void @_update_illuminant_color(ptr noundef nonnull %0)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !324 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !325 ; 2 uses
  %i.gn = call reassoc nsz arcp contract afn float @cbrtf(float noundef 1.000000e+00) #33
  %i.go = fmul reassoc nsz arcp contract afn float %i.gm, 9.000000e+00
  %i.gp = fmul reassoc nsz arcp contract afn float %i.gm, 1.200000e+01
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gk, 2.000000e+00
  %i.gr = fsub reassoc nsz arcp contract afn float %i.gp, %i.gq
  %i.gs = fadd reassoc nsz arcp contract afn float %i.gr, 3.000000e+00 ; 2 uses
  %i.gt = fdiv reassoc nsz arcp contract afn float %i.go, %i.gs
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gk, 4.000000e+00
  %i.gv = fdiv reassoc nsz arcp contract afn float %i.gu, %i.gs
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gn, 1.508000e+03
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gw, -2.080000e+02 ; 2 uses
  %i.gy = fadd reassoc nsz arcp contract afn float %i.gv, f0xBE562DD1
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gx, %i.gy ; 2 uses
  %i.ha = fadd reassoc nsz arcp contract afn float %i.gt, f0xBEF9E502
  %i.hb = fmul reassoc nsz arcp contract afn float %i.gx, %i.ha ; 2 uses
  %i.hc = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.hb, float noundef %i.gz) #33 ; 2 uses
  %i.hd = fcmp reassoc nsz arcp contract afn ogt float %i.hc, 0.000000e+00
  br i1 %i.hd, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %dt_xyY_to_Lch.exit
  %i.he = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.hb, float %i.gz) ; 3 uses
  %i.hf = fcmp reassoc nsz arcp contract afn olt float %i.he, 0.000000e+00
  %i.hg = fadd reassoc nsz arcp contract afn float %i.he, f0x40C90FDB
  %i.hh = select reassoc nsz arcp contract afn i1 %i.hf, float %i.hg, float %i.he
  %i.hi = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.hj = load ptr, ptr %i.hi, align 64, !tbaa !346
  %i.hk = fmul reassoc nsz arcp contract afn float %i.hh, f0x42652EE0
  call void @dt_bauhaus_slider_set(ptr noundef %i.hj, float noundef %i.hk) #31
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %dt_xyY_to_Lch.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !347
  call void @dt_bauhaus_slider_set(ptr noundef %i.hm, float noundef %i.hc) #31
  %i.hn = load ptr, ptr %i.ee, align 16, !tbaa !339
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !326
  call void @dt_bauhaus_slider_set(ptr noundef %i.hn, float noundef %i.hp) #31
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq
  %i.hq = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 5 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !348
  %i.hs = icmp eq ptr %1, %i.hr
  br i1 %i.hs, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %.val165 = load ptr, ptr %i.c, align 8, !tbaa !245
  %.val166 = load ptr, ptr %i.e, align 16, !tbaa !52
  call fastcc void @_update_illuminants(ptr %.val165, ptr %.val166)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ht = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.hu = load ptr, ptr %i.ht, align 32, !tbaa !349 ; 3 uses
  br i1 %.not161, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hv = load ptr, ptr %i.hq, align 8, !tbaa !348
  %i.hw = icmp eq ptr %1, %i.hv
  %i.hx = icmp eq ptr %1, %i.hu
  %or.cond = select i1 %i.hw, i1 true, i1 %i.hx
  br i1 %or.cond, label %.thread184, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !350
  %i.ia = icmp eq ptr %1, %i.hz
  br i1 %i.ia, label %.thread184, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ib = getelementptr inbounds nuw i8, ptr %i.f, i64 112
end_hunk_0
