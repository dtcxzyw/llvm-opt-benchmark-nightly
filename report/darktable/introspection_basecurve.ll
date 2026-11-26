Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basecurve?download=true
inline.NumInlined: 119
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 44
begin_hunk_0_@get_p:bb.a
  %.not29 = icmp eq i32 %i.d, 0
  br i1 %.not29, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.64) #28
  %.not30 = icmp eq i32 %i.e, 0
  br i1 %.not30, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.65) #28
  %.not31 = icmp eq i32 %i.f, 0
  br i1 %.not31, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.66) #28
  %.not32 = icmp eq i32 %i.g, 0
  br i1 %.not32, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.67) #28
  %.not33 = icmp eq i32 %i.i, 0
  br i1 %.not33, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.68) #28
  %.not34 = icmp eq i32 %i.k, 0
  br i1 %.not34, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 492
  br label %bb.v

bb.m:                                             ; preds = %bb.k
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.69) #28
  %.not35 = icmp eq i32 %i.m, 0
  br i1 %.not35, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 492
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.31) #28
  %.not36 = icmp eq i32 %i.o, 0
  br i1 %.not36, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 504
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.36) #28
  %.not37 = icmp eq i32 %i.q, 0
  br i1 %.not37, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 508
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.38) #28
  %.not38 = icmp eq i32 %i.s, 0
  br i1 %.not38, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 512
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.29) #28
  %.not39 = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 516
  %spec.select = select i1 %.not39, ptr %i.v, ptr null
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.f, %bb.e, %bb.d, %bb.a, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.c
  %.0 = phi ptr [ %0, %bb.f ], [ %spec.select, %bb.u ], [ %i.t, %bb.t ], [ %i.r, %bb.r ], [ %i.p, %bb.p ], [ %i.n, %bb.n ], [ %i.l, %bb.l ], [ %i.j, %bb.j ], [ %i.h, %bb.h ], [ %0, %bb.e ], [ %0, %bb.d ], [ %0, %bb.a ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.61) #26
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.62) #26
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.63) #26
  %.not15 = icmp eq i32 %i.c, 0
  br i1 %.not15, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.64) #26
  %.not16 = icmp eq i32 %i.d, 0
  br i1 %.not16, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.65) #26
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.66) #26
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.67) #26
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.68) #26
  %.not20 = icmp eq i32 %i.h, 0
  br i1 %.not20, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.69) #26
  %.not21 = icmp eq i32 %i.i, 0
  br i1 %.not21, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.31) #26
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.36) #26
  %.not23 = icmp eq i32 %i.k, 0
  br i1 %.not23, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.38) #26
  %.not24 = icmp eq i32 %i.l, 0
  br i1 %.not24, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.29) #26
  %.not25 = icmp eq i32 %i.m, 0
  %. = select i1 %.not25, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1056), ptr null
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 968), %bb.l ], [ %., %bb.m ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @g_regex_match_simple(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @g_free(ptr noundef) local_unnamed_addr #7

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #7

declare void @dt_develop_blend_init_blend_parameters(ptr noundef, i32 noundef) local_unnamed_addr #7

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #7

declare void @dt_gui_presets_add_with_blendop(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @dt_gui_presets_update_mml(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @dt_gui_presets_update_iso(ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #7

declare void @dt_gui_presets_update_filter(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gauss_blur(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i64 noundef range(i64 -2147483648, 2147483648) %3) unnamed_addr #12 {
bb.a:
  %i.a = shl nsw i64 %2, 4
  %i.b = mul i64 %i.a, %3
  %i.c = tail call ptr @dt_alloc_aligned(i64 noundef %i.b) #26 ; 24 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 64) ]
  tail call void @dt_iop_image_fill(ptr noundef %i.c, float noundef 0.000000e+00, i64 noundef %2, i64 noundef %3, i64 noundef 4) #26
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge239, label %.preheader226.lr.ph

.preheader226.lr.ph:                              ; preds = %bb.a
  %i.d = add nsw i64 %2, -2                       ; 3 uses
  %i.e = icmp ugt i64 %i.d, 2
  %sext = shl i64 %i.d, 32
  %i.f = ashr exact i64 %sext, 32                 ; 2 uses
  %i.g = icmp ugt i64 %2, %i.f
  %reass.add202 = shl nsw i64 %2, 1               ; 5 uses
  %i.h = add nsw i64 %2, -5                       ; 2 uses
  %i.i = shl i64 %2, 4
  %i.j = mul i64 %3, %2
  %i.k = shl i64 %i.j, 4                          ; 2 uses
  %scevgep335 = getelementptr i8, ptr %0, i64 %i.k
  %i.l = getelementptr i8, ptr %i.c, i64 %i.k
  %scevgep336 = getelementptr i8, ptr %i.l, i64 -32
  %scevgep337 = getelementptr i8, ptr %i.c, i64 32
  %i.m = add nsw i64 %2, -4                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  %mul.result = shl i64 %i.h, 4                   ; 16 uses
  %mul.overflow = icmp ugt i64 %i.h, 1152921504606846975
  %bound0 = icmp ult ptr %scevgep337, %scevgep335
  %bound1 = icmp ult ptr %0, %scevgep336
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.m, -4                       ; 3 uses
  %i.n = or disjoint i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br label %.preheader226

.preheader226:                                    ; preds = %.preheader226.lr.ph, %._crit_edge237
  %indvars.iv270 = phi i64 [ 0, %.preheader226.lr.ph ], [ %indvars.iv.next271, %._crit_edge237 ] ; 3 uses
  %i.o = mul i64 %i.i, %indvars.iv270             ; 16 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.o   ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %scevgep317 = getelementptr i8, ptr %i.p, i64 4 ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 %i.o
  %scevgep318 = getelementptr i8, ptr %i.q, i64 8 ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.o
  %scevgep319 = getelementptr i8, ptr %i.r, i64 12 ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.o
  %scevgep320 = getelementptr i8, ptr %i.s, i64 16 ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.o
  %scevgep321 = getelementptr i8, ptr %i.t, i64 20 ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %i.o
  %scevgep322 = getelementptr i8, ptr %i.u, i64 24 ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 %i.o
  %scevgep323 = getelementptr i8, ptr %i.v, i64 28 ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 %i.o
  %scevgep324 = getelementptr i8, ptr %i.w, i64 48 ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 %i.o
  %scevgep325 = getelementptr i8, ptr %i.x, i64 52 ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 %i.o
  %scevgep326 = getelementptr i8, ptr %i.y, i64 56 ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 %i.o
  %scevgep327 = getelementptr i8, ptr %i.z, i64 60 ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 %i.o
  %scevgep328 = getelementptr i8, ptr %i.aa, i64 64 ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 %i.o
  %scevgep329 = getelementptr i8, ptr %i.ab, i64 68 ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 %i.o
  %scevgep330 = getelementptr i8, ptr %i.ac, i64 72 ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 %i.o
  %scevgep331 = getelementptr i8, ptr %i.ad, i64 76 ; 2 uses
  %i.ae = mul nsw i64 %indvars.iv270, %2          ; 12 uses
  %.idx208 = shl i64 %i.ae, 4                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx208 ; 9 uses
  %i.ag = shl i64 %i.ae, 4
  %i.ah = getelementptr i8, ptr %0, i64 %i.ag     ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 32     ; 3 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !13
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, 6.250000e-02
  %i.al = load float, ptr %i.af, align 16, !tbaa !13
  %i.am = fadd reassoc nsz arcp contract afn float %i.al, %i.ak ; 2 uses
  store float %i.am, ptr %i.af, align 16, !tbaa !13
  %i.an = getelementptr i8, ptr %i.ah, i64 36     ; 3 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !13
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, 6.250000e-02
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 6 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !13
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, %i.ap ; 2 uses
  store float %i.as, ptr %i.aq, align 4, !tbaa !13
  %i.at = getelementptr i8, ptr %i.ah, i64 40     ; 3 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !13
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, 6.250000e-02
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 6 uses
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !13
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.av ; 2 uses
  store float %i.ay, ptr %i.aw, align 8, !tbaa !13
  %i.az = getelementptr i8, ptr %i.ah, i64 44     ; 3 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !13
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, 6.250000e-02
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 6 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !13
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %i.bb ; 2 uses
  store float %i.be, ptr %i.bc, align 4, !tbaa !13
  %i.bf = shl i64 %i.ae, 4
  %.idx207.1 = add i64 %i.bf, 16                  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx207.1 ; 7 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !13
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, 2.500000e-01
  %i.bj = fadd reassoc nsz arcp contract afn float %i.am, %i.bi ; 2 uses
  store float %i.bj, ptr %i.af, align 16, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 4 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !13
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, 2.500000e-01
  %i.bn = fadd reassoc nsz arcp contract afn float %i.as, %i.bm ; 2 uses
  store float %i.bn, ptr %i.aq, align 4, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !13
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, 2.500000e-01
  %i.br = fadd reassoc nsz arcp contract afn float %i.ay, %i.bq ; 2 uses
  store float %i.br, ptr %i.aw, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 12 ; 4 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !13
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, 2.500000e-01
  %i.bv = fadd reassoc nsz arcp contract afn float %i.be, %i.bu ; 2 uses
  store float %i.bv, ptr %i.bc, align 4, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %.idx208 ; 5 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !13
  %i.by = fmul reassoc nsz arcp contract afn float %i.bx, 3.750000e-01
  %i.bz = fadd reassoc nsz arcp contract afn float %i.bj, %i.by ; 2 uses
  store float %i.bz, ptr %i.af, align 16, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !13
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, 3.750000e-01
  %i.cd = fadd reassoc nsz arcp contract afn float %i.bn, %i.cc ; 2 uses
  store float %i.cd, ptr %i.aq, align 4, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !13
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, 3.750000e-01
  %i.ch = fadd reassoc nsz arcp contract afn float %i.br, %i.cg ; 2 uses
  store float %i.ch, ptr %i.aw, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 12 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !13
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, 3.750000e-01
  %i.cl = fadd reassoc nsz arcp contract afn float %i.bv, %i.ck ; 2 uses
  store float %i.cl, ptr %i.bc, align 4, !tbaa !13
  %i.cm = load float, ptr %i.bg, align 4, !tbaa !13
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, 2.500000e-01
  %i.co = fadd reassoc nsz arcp contract afn float %i.bz, %i.cn ; 2 uses
  store float %i.co, ptr %i.af, align 16, !tbaa !13
  %i.cp = load float, ptr %i.bk, align 4, !tbaa !13
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, 2.500000e-01
  %i.cr = fadd reassoc nsz arcp contract afn float %i.cd, %i.cq ; 2 uses
  store float %i.cr, ptr %i.aq, align 4, !tbaa !13
  %i.cs = load float, ptr %i.bo, align 4, !tbaa !13
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, 2.500000e-01
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ch, %i.ct ; 2 uses
  store float %i.cu, ptr %i.aw, align 8, !tbaa !13
  %i.cv = load float, ptr %i.bs, align 4, !tbaa !13
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, 2.500000e-01
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cl, %i.cw ; 2 uses
  store float %i.cx, ptr %i.bc, align 4, !tbaa !13
  %i.cy = load float, ptr %i.ai, align 4, !tbaa !13
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, 6.250000e-02
  %i.da = fadd reassoc nsz arcp contract afn float %i.co, %i.cz
  store float %i.da, ptr %i.af, align 16, !tbaa !13
  %i.db = load float, ptr %i.an, align 4, !tbaa !13
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, 6.250000e-02
  %i.dd = fadd reassoc nsz arcp contract afn float %i.cr, %i.dc
  store float %i.dd, ptr %i.aq, align 4, !tbaa !13
  %i.de = load float, ptr %i.at, align 4, !tbaa !13
  %i.df = fmul reassoc nsz arcp contract afn float %i.de, 6.250000e-02
  %i.dg = fadd reassoc nsz arcp contract afn float %i.cu, %i.df
  store float %i.dg, ptr %i.aw, align 8, !tbaa !13
  %i.dh = load float, ptr %i.az, align 4, !tbaa !13
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, 6.250000e-02
  %i.dj = fadd reassoc nsz arcp contract afn float %i.cx, %i.di
  store float %i.dj, ptr %i.bc, align 4, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx207.1 ; 9 uses
  %i.dl = load float, ptr %i.bg, align 4, !tbaa !13
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dl, 6.250000e-02
  %i.dn = load float, ptr %i.dk, align 16, !tbaa !13
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, %i.dm ; 2 uses
  store float %i.do, ptr %i.dk, align 16, !tbaa !13
  %i.dp = load float, ptr %i.bk, align 4, !tbaa !13
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, 6.250000e-02
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 4 ; 6 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !13
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %i.dq ; 2 uses
  store float %i.dt, ptr %i.dr, align 4, !tbaa !13
  %i.du = load float, ptr %i.bo, align 4, !tbaa !13
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, 6.250000e-02
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 6 uses
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !13
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dx, %i.dv ; 2 uses
  store float %i.dy, ptr %i.dw, align 8, !tbaa !13
  %i.dz = load float, ptr %i.bs, align 4, !tbaa !13
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, 6.250000e-02
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dk, i64 12 ; 6 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !13
  %i.ed = fadd reassoc nsz arcp contract afn float %i.ec, %i.ea ; 2 uses
  store float %i.ed, ptr %i.eb, align 4, !tbaa !13
  %i.ee = load float, ptr %i.bw, align 4, !tbaa !13
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, 2.500000e-01
  %i.eg = fadd reassoc nsz arcp contract afn float %i.do, %i.ef ; 2 uses
  store float %i.eg, ptr %i.dk, align 16, !tbaa !13
  %i.eh = load float, ptr %i.ca, align 4, !tbaa !13
  %i.ei = fmul reassoc nsz arcp contract afn float %i.eh, 2.500000e-01
  %i.ej = fadd reassoc nsz arcp contract afn float %i.dt, %i.ei ; 2 uses
  store float %i.ej, ptr %i.dr, align 4, !tbaa !13
  %i.ek = load float, ptr %i.ce, align 4, !tbaa !13
  %i.el = fmul reassoc nsz arcp contract afn float %i.ek, 2.500000e-01
  %i.em = fadd reassoc nsz arcp contract afn float %i.dy, %i.el ; 2 uses
  store float %i.em, ptr %i.dw, align 8, !tbaa !13
  %i.en = load float, ptr %i.ci, align 4, !tbaa !13
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, 2.500000e-01
  %i.ep = fadd reassoc nsz arcp contract afn float %i.ed, %i.eo ; 2 uses
  store float %i.ep, ptr %i.eb, align 4, !tbaa !13
  %i.eq = load float, ptr %i.bg, align 4, !tbaa !13
  %i.er = fmul reassoc nsz arcp contract afn float %i.eq, 3.750000e-01
  %i.es = fadd reassoc nsz arcp contract afn float %i.eg, %i.er ; 2 uses
  store float %i.es, ptr %i.dk, align 16, !tbaa !13
  %i.et = load float, ptr %i.bk, align 4, !tbaa !13
  %i.eu = fmul reassoc nsz arcp contract afn float %i.et, 3.750000e-01
  %i.ev = fadd reassoc nsz arcp contract afn float %i.ej, %i.eu ; 2 uses
  store float %i.ev, ptr %i.dr, align 4, !tbaa !13
  %i.ew = load float, ptr %i.bo, align 4, !tbaa !13
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ew, 3.750000e-01
  %i.ey = fadd reassoc nsz arcp contract afn float %i.em, %i.ex ; 2 uses
  store float %i.ey, ptr %i.dw, align 8, !tbaa !13
  %i.ez = load float, ptr %i.bs, align 4, !tbaa !13
  %i.fa = fmul reassoc nsz arcp contract afn float %i.ez, 3.750000e-01
  %i.fb = fadd reassoc nsz arcp contract afn float %i.ep, %i.fa ; 2 uses
  store float %i.fb, ptr %i.eb, align 4, !tbaa !13
  %i.fc = load float, ptr %i.ai, align 4, !tbaa !13
  %i.fd = fmul reassoc nsz arcp contract afn float %i.fc, 2.500000e-01
  %i.fe = fadd reassoc nsz arcp contract afn float %i.es, %i.fd ; 2 uses
  store float %i.fe, ptr %i.dk, align 16, !tbaa !13
  %i.ff = load float, ptr %i.an, align 4, !tbaa !13
  %i.fg = fmul reassoc nsz arcp contract afn float %i.ff, 2.500000e-01
  %i.fh = fadd reassoc nsz arcp contract afn float %i.ev, %i.fg ; 2 uses
  store float %i.fh, ptr %i.dr, align 4, !tbaa !13
  %i.fi = load float, ptr %i.at, align 4, !tbaa !13
  %i.fj = fmul reassoc nsz arcp contract afn float %i.fi, 2.500000e-01
  %i.fk = fadd reassoc nsz arcp contract afn float %i.ey, %i.fj ; 2 uses
  store float %i.fk, ptr %i.dw, align 8, !tbaa !13
  %i.fl = load float, ptr %i.az, align 4, !tbaa !13
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fl, 2.500000e-01
  %i.fn = fadd reassoc nsz arcp contract afn float %i.fb, %i.fm ; 2 uses
  store float %i.fn, ptr %i.eb, align 4, !tbaa !13
  %i.fo = shl i64 %i.ae, 4
  %i.fp = getelementptr i8, ptr %0, i64 %i.fo     ; 4 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 48
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !13
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fr, 6.250000e-02
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fe, %i.fs
  store float %i.ft, ptr %i.dk, align 16, !tbaa !13
  %i.fu = getelementptr i8, ptr %i.fp, i64 52
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !13
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fv, 6.250000e-02
  %i.fx = fadd reassoc nsz arcp contract afn float %i.fh, %i.fw
  store float %i.fx, ptr %i.dr, align 4, !tbaa !13
  %i.fy = getelementptr i8, ptr %i.fp, i64 56
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !13
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, 6.250000e-02
  %i.gb = fadd reassoc nsz arcp contract afn float %i.fk, %i.ga
  store float %i.gb, ptr %i.dw, align 8, !tbaa !13
  %i.gc = getelementptr i8, ptr %i.fp, i64 60
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !13
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gd, 6.250000e-02
  %i.gf = fadd reassoc nsz arcp contract afn float %i.fn, %i.ge
  store float %i.gf, ptr %i.eb, align 4, !tbaa !13
  br i1 %i.e, label %.preheader223.preheader, label %._crit_edge

.preheader223.preheader:                          ; preds = %.preheader226
  br i1 %min.iters.check, label %.preheader223.preheader385, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader223.preheader
  %i.gg = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.gh = icmp ult ptr %i.gg, %scevgep
  %i.gi = getelementptr i8, ptr %scevgep317, i64 %mul.result
  %i.gj = icmp ult ptr %i.gi, %scevgep317
  %i.gk = getelementptr i8, ptr %scevgep318, i64 %mul.result
  %i.gl = icmp ult ptr %i.gk, %scevgep318
  %i.gm = getelementptr i8, ptr %scevgep319, i64 %mul.result
  %i.gn = icmp ult ptr %i.gm, %scevgep319
  %i.go = getelementptr i8, ptr %scevgep320, i64 %mul.result
  %i.gp = icmp ult ptr %i.go, %scevgep320
  %i.gq = getelementptr i8, ptr %scevgep321, i64 %mul.result
  %i.gr = icmp ult ptr %i.gq, %scevgep321
  %i.gs = getelementptr i8, ptr %scevgep322, i64 %mul.result
  %i.gt = icmp ult ptr %i.gs, %scevgep322
  %i.gu = getelementptr i8, ptr %scevgep323, i64 %mul.result
  %i.gv = icmp ult ptr %i.gu, %scevgep323
  %i.gw = getelementptr i8, ptr %scevgep324, i64 %mul.result
  %i.gx = icmp ult ptr %i.gw, %scevgep324
  %i.gy = getelementptr i8, ptr %scevgep325, i64 %mul.result
  %i.gz = icmp ult ptr %i.gy, %scevgep325
  %i.ha = getelementptr i8, ptr %scevgep326, i64 %mul.result
  %i.hb = icmp ult ptr %i.ha, %scevgep326
  %i.hc = getelementptr i8, ptr %scevgep327, i64 %mul.result
  %i.hd = icmp ult ptr %i.hc, %scevgep327
  %i.he = getelementptr i8, ptr %scevgep328, i64 %mul.result
  %i.hf = icmp ult ptr %i.he, %scevgep328
  %i.hg = getelementptr i8, ptr %scevgep329, i64 %mul.result
  %i.hh = icmp ult ptr %i.hg, %scevgep329
  %i.hi = getelementptr i8, ptr %scevgep330, i64 %mul.result
  %i.hj = icmp ult ptr %i.hi, %scevgep330
  %i.hk = getelementptr i8, ptr %scevgep331, i64 %mul.result
  %i.hl = icmp ult ptr %i.hk, %scevgep331
  %op.rdx = or i1 %i.gj, %i.gh
  %op.rdx370 = or i1 %op.rdx, %i.gl
  %op.rdx371 = or i1 %op.rdx370, %i.gn
  %op.rdx372 = or i1 %op.rdx371, %i.gp
  %op.rdx373 = or i1 %op.rdx372, %i.gr
  %op.rdx374 = or i1 %op.rdx373, %i.gt
  %op.rdx375 = or i1 %op.rdx374, %i.gv
  %op.rdx376 = or i1 %op.rdx375, %i.gx
  %op.rdx377 = or i1 %op.rdx376, %i.gz
  %op.rdx378 = or i1 %op.rdx377, %i.hb
  %op.rdx379 = or i1 %op.rdx378, %i.hd
  %op.rdx380 = or i1 %op.rdx379, %i.hf
  %op.rdx381 = or i1 %op.rdx380, %i.hh
  %op.rdx382 = or i1 %op.rdx381, %i.hj
  %op.rdx383 = or i1 %op.rdx382, %i.hl
  %op.rdx384 = or i1 %op.rdx383, %mul.overflow
  %brmerge = or i1 %op.rdx384, %found.conflict
  br i1 %brmerge, label %.preheader223.preheader385, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.hm = or disjoint i64 %index, 2
  %i.hn = add nsw i64 %i.hm, %i.ae
  %i.ho = shl i64 %i.hn, 4                        ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ho ; 6 uses
  %i.hq = getelementptr i8, ptr %0, i64 %i.ho     ; 5 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 -32
  %wide.vec = load <16 x float>, ptr %i.hr, align 4, !tbaa !13, !alias.scope !387 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec338 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec339 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec340 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.hs = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec, splat (float 6.250000e-02)
  %wide.vec341 = load <16 x float>, ptr %i.hp, align 16, !tbaa !13, !alias.scope !388, !noalias !387 ; 4 uses
  %strided.vec342 = shufflevector <16 x float> %wide.vec341, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec343 = shufflevector <16 x float> %wide.vec341, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec344 = shufflevector <16 x float> %wide.vec341, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec345 = shufflevector <16 x float> %wide.vec341, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ht = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec342, %i.hs ; 2 uses
  %i.hu = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec338, splat (float 6.250000e-02)
  %i.hv = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec343, %i.hu ; 2 uses
  %i.hw = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec339, splat (float 6.250000e-02)
  %i.hx = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec344, %i.hw ; 2 uses
  %i.hy = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec340, splat (float 6.250000e-02)
  %i.hz = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec345, %i.hy ; 2 uses
  %i.ia = shufflevector <4 x float> %i.ht, <4 x float> %i.hv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ib = shufflevector <4 x float> %i.hx, <4 x float> %i.hz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ia, <8 x float> %i.ib, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.hp, align 16, !tbaa !13, !alias.scope !388, !noalias !387
  %i.ic = getelementptr i8, ptr %i.hq, i64 -16
  %wide.vec346 = load <16 x float>, ptr %i.ic, align 4, !tbaa !13, !alias.scope !387 ; 4 uses
  %strided.vec347 = shufflevector <16 x float> %wide.vec346, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec348 = shufflevector <16 x float> %wide.vec346, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec349 = shufflevector <16 x float> %wide.vec346, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec350 = shufflevector <16 x float> %wide.vec346, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.id = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec347, splat (float 2.500000e-01)
  %i.ie = fadd reassoc nsz arcp contract afn <4 x float> %i.ht, %i.id ; 2 uses
  %i.if = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec348, splat (float 2.500000e-01)
  %i.ig = fadd reassoc nsz arcp contract afn <4 x float> %i.hv, %i.if ; 2 uses
  %i.ih = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec349, splat (float 2.500000e-01)
  %i.ii = fadd reassoc nsz arcp contract afn <4 x float> %i.hx, %i.ih ; 2 uses
  %i.ij = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec350, splat (float 2.500000e-01)
  %i.ik = fadd reassoc nsz arcp contract afn <4 x float> %i.hz, %i.ij ; 2 uses
  %i.il = shufflevector <4 x float> %i.ie, <4 x float> %i.ig, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.im = shufflevector <4 x float> %i.ii, <4 x float> %i.ik, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec351 = shufflevector <8 x float> %i.il, <8 x float> %i.im, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec351, ptr %i.hp, align 16, !tbaa !13, !alias.scope !388, !noalias !387
  %wide.vec352 = load <16 x float>, ptr %i.hq, align 4, !tbaa !13, !alias.scope !387 ; 4 uses
  %strided.vec353 = shufflevector <16 x float> %wide.vec352, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec354 = shufflevector <16 x float> %wide.vec352, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec355 = shufflevector <16 x float> %wide.vec352, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec356 = shufflevector <16 x float> %wide.vec352, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.in = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec353, splat (float 3.750000e-01)
  %i.io = fadd reassoc nsz arcp contract afn <4 x float> %i.ie, %i.in ; 2 uses
  %i.ip = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec354, splat (float 3.750000e-01)
  %i.iq = fadd reassoc nsz arcp contract afn <4 x float> %i.ig, %i.ip ; 2 uses
  %i.ir = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec355, splat (float 3.750000e-01)
  %i.is = fadd reassoc nsz arcp contract afn <4 x float> %i.ii, %i.ir ; 2 uses
  %i.it = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec356, splat (float 3.750000e-01)
  %i.iu = fadd reassoc nsz arcp contract afn <4 x float> %i.ik, %i.it ; 2 uses
  %i.iv = shufflevector <4 x float> %i.io, <4 x float> %i.iq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iw = shufflevector <4 x float> %i.is, <4 x float> %i.iu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec357 = shufflevector <8 x float> %i.iv, <8 x float> %i.iw, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec357, ptr %i.hp, align 16, !tbaa !13, !alias.scope !388, !noalias !387
  %i.ix = getelementptr i8, ptr %i.hq, i64 16
  %wide.vec358 = load <16 x float>, ptr %i.ix, align 4, !tbaa !13, !alias.scope !387 ; 4 uses
  %strided.vec359 = shufflevector <16 x float> %wide.vec358, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec360 = shufflevector <16 x float> %wide.vec358, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec361 = shufflevector <16 x float> %wide.vec358, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec362 = shufflevector <16 x float> %wide.vec358, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.iy = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec359, splat (float 2.500000e-01)
  %i.iz = fadd reassoc nsz arcp contract afn <4 x float> %i.io, %i.iy ; 2 uses
  %i.ja = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec360, splat (float 2.500000e-01)
  %i.jb = fadd reassoc nsz arcp contract afn <4 x float> %i.iq, %i.ja ; 2 uses
  %i.jc = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec361, splat (float 2.500000e-01)
  %i.jd = fadd reassoc nsz arcp contract afn <4 x float> %i.is, %i.jc ; 2 uses
  %i.je = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec362, splat (float 2.500000e-01)
  %i.jf = fadd reassoc nsz arcp contract afn <4 x float> %i.iu, %i.je ; 2 uses
  %i.jg = shufflevector <4 x float> %i.iz, <4 x float> %i.jb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jh = shufflevector <4 x float> %i.jd, <4 x float> %i.jf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec363 = shufflevector <8 x float> %i.jg, <8 x float> %i.jh, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec363, ptr %i.hp, align 16, !tbaa !13, !alias.scope !388, !noalias !387
  %i.ji = getelementptr i8, ptr %i.hq, i64 32
  %wide.vec364 = load <16 x float>, ptr %i.ji, align 4, !tbaa !13, !alias.scope !387 ; 4 uses
  %strided.vec365 = shufflevector <16 x float> %wide.vec364, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec366 = shufflevector <16 x float> %wide.vec364, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec367 = shufflevector <16 x float> %wide.vec364, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec368 = shufflevector <16 x float> %wide.vec364, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.jj = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec365, splat (float 6.250000e-02)
  %i.jk = fadd reassoc nsz arcp contract afn <4 x float> %i.iz, %i.jj
  %i.jl = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec366, splat (float 6.250000e-02)
  %i.jm = fadd reassoc nsz arcp contract afn <4 x float> %i.jb, %i.jl
  %i.jn = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec367, splat (float 6.250000e-02)
  %i.jo = fadd reassoc nsz arcp contract afn <4 x float> %i.jd, %i.jn
  %i.jp = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec368, splat (float 6.250000e-02)
  %i.jq = fadd reassoc nsz arcp contract afn <4 x float> %i.jf, %i.jp
  %i.jr = shufflevector <4 x float> %i.jk, <4 x float> %i.jm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.js = shufflevector <4 x float> %i.jo, <4 x float> %i.jq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec369 = shufflevector <8 x float> %i.jr, <8 x float> %i.js, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec369, ptr %i.hp, align 16, !tbaa !13, !alias.scope !388, !noalias !387
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jt = icmp eq i64 %index.next, %n.vec
  br i1 %i.jt, label %middle.block, label %vector.body, !llvm.loop !385

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.preheader223.preheader385

.preheader223.preheader385:                       ; preds = %vector.scevcheck, %.preheader223.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.n, %middle.block ], [ 2, %vector.scevcheck ], [ 2, %.preheader223.preheader ]
  br label %.preheader223

._crit_edge239:                                   ; preds = %._crit_edge237, %bb.a
  tail call void @dt_iop_image_fill(ptr noundef %1, float noundef 0.000000e+00, i64 noundef %2, i64 noundef %3, i64 noundef 4) #26
  %.not253 = icmp eq i64 %2, 0
  br i1 %.not253, label %._crit_edge252, label %.preheader218.lr.ph

.preheader218.lr.ph:                              ; preds = %._crit_edge239
  %i.ju = add nsw i64 %3, -2                      ; 3 uses
  %i.jv = icmp ugt i64 %i.ju, 2
  %sext254 = shl i64 %i.ju, 32
  %i.jw = ashr exact i64 %sext254, 32             ; 2 uses
  %i.jx = icmp ugt i64 %3, %i.jw
  %reass.add = shl nsw i64 %3, 1                  ; 5 uses
  %i.jy = shl i64 %2, 5
  %i.jz = getelementptr i8, ptr %i.c, i64 %i.jy
  %i.ka = mul nsw i64 %2, 3
  br label %.preheader218

.preheader223:                                    ; preds = %.preheader223.preheader385, %.preheader223
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader223 ], [ %indvars.iv.ph, %.preheader223.preheader385 ] ; 2 uses
  %i.kb = add nsw i64 %indvars.iv, %i.ae          ; 5 uses
  %.idx206 = shl i64 %i.kb, 4                     ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx206 ; 9 uses
  %i.kd = shl i64 %i.kb, 4
  %i.ke = getelementptr i8, ptr %0, i64 %i.kd     ; 4 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 -32
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !13
  %i.kh = fmul reassoc nsz arcp contract afn float %i.kg, 6.250000e-02
  %i.ki = load float, ptr %i.kc, align 16, !tbaa !13
  %i.kj = fadd reassoc nsz arcp contract afn float %i.ki, %i.kh ; 2 uses
  store float %i.kj, ptr %i.kc, align 16, !tbaa !13
  %i.kk = getelementptr i8, ptr %i.ke, i64 -28
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !13
  %i.km = fmul reassoc nsz arcp contract afn float %i.kl, 6.250000e-02
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kc, i64 4 ; 6 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !13
  %i.kp = fadd reassoc nsz arcp contract afn float %i.ko, %i.km ; 2 uses
  store float %i.kp, ptr %i.kn, align 4, !tbaa !13
  %i.kq = getelementptr i8, ptr %i.ke, i64 -24
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !13
  %i.ks = fmul reassoc nsz arcp contract afn float %i.kr, 6.250000e-02
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 6 uses
  %i.ku = load float, ptr %i.kt, align 8, !tbaa !13
  %i.kv = fadd reassoc nsz arcp contract afn float %i.ku, %i.ks ; 2 uses
  store float %i.kv, ptr %i.kt, align 8, !tbaa !13
  %i.kw = getelementptr i8, ptr %i.ke, i64 -20
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !13
  %i.ky = fmul reassoc nsz arcp contract afn float %i.kx, 6.250000e-02
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kc, i64 12 ; 6 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !13
  %i.lb = fadd reassoc nsz arcp contract afn float %i.la, %i.ky ; 2 uses
  store float %i.lb, ptr %i.kz, align 4, !tbaa !13
  %i.lc = shl i64 %i.kb, 4
  %i.ld = getelementptr i8, ptr %0, i64 %i.lc     ; 4 uses
  %i.le = getelementptr i8, ptr %i.ld, i64 -16
  %i.lf = load float, ptr %i.le, align 4, !tbaa !13
  %i.lg = fmul reassoc nsz arcp contract afn float %i.lf, 2.500000e-01
  %i.lh = fadd reassoc nsz arcp contract afn float %i.kj, %i.lg ; 2 uses
  store float %i.lh, ptr %i.kc, align 16, !tbaa !13
  %i.li = getelementptr i8, ptr %i.ld, i64 -12
  %i.lj = load float, ptr %i.li, align 4, !tbaa !13
  %i.lk = fmul reassoc nsz arcp contract afn float %i.lj, 2.500000e-01
  %i.ll = fadd reassoc nsz arcp contract afn float %i.kp, %i.lk ; 2 uses
  store float %i.ll, ptr %i.kn, align 4, !tbaa !13
  %i.lm = getelementptr i8, ptr %i.ld, i64 -8
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !13
  %i.lo = fmul reassoc nsz arcp contract afn float %i.ln, 2.500000e-01
  %i.lp = fadd reassoc nsz arcp contract afn float %i.kv, %i.lo ; 2 uses
  store float %i.lp, ptr %i.kt, align 8, !tbaa !13
  %i.lq = getelementptr i8, ptr %i.ld, i64 -4
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !13
  %i.ls = fmul reassoc nsz arcp contract afn float %i.lr, 2.500000e-01
  %i.lt = fadd reassoc nsz arcp contract afn float %i.lb, %i.ls ; 2 uses
  store float %i.lt, ptr %i.kz, align 4, !tbaa !13
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 %.idx206 ; 4 uses
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !13
  %i.lw = fmul reassoc nsz arcp contract afn float %i.lv, 3.750000e-01
  %i.lx = fadd reassoc nsz arcp contract afn float %i.lh, %i.lw ; 2 uses
  store float %i.lx, ptr %i.kc, align 16, !tbaa !13
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !13
  %i.ma = fmul reassoc nsz arcp contract afn float %i.lz, 3.750000e-01
  %i.mb = fadd reassoc nsz arcp contract afn float %i.ll, %i.ma ; 2 uses
  store float %i.mb, ptr %i.kn, align 4, !tbaa !13
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.md = load float, ptr %i.mc, align 4, !tbaa !13
  %i.me = fmul reassoc nsz arcp contract afn float %i.md, 3.750000e-01
  %i.mf = fadd reassoc nsz arcp contract afn float %i.lp, %i.me ; 2 uses
  store float %i.mf, ptr %i.kt, align 8, !tbaa !13
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lu, i64 12
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !13
  %i.mi = fmul reassoc nsz arcp contract afn float %i.mh, 3.750000e-01
  %i.mj = fadd reassoc nsz arcp contract afn float %i.lt, %i.mi ; 2 uses
  store float %i.mj, ptr %i.kz, align 4, !tbaa !13
  %i.mk = shl i64 %i.kb, 4
  %i.ml = getelementptr i8, ptr %0, i64 %i.mk     ; 4 uses
  %i.mm = getelementptr i8, ptr %i.ml, i64 16
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !13
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mn, 2.500000e-01
  %i.mp = fadd reassoc nsz arcp contract afn float %i.lx, %i.mo ; 2 uses
  store float %i.mp, ptr %i.kc, align 16, !tbaa !13
  %i.mq = getelementptr i8, ptr %i.ml, i64 20
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !13
  %i.ms = fmul reassoc nsz arcp contract afn float %i.mr, 2.500000e-01
  %i.mt = fadd reassoc nsz arcp contract afn float %i.mb, %i.ms ; 2 uses
  store float %i.mt, ptr %i.kn, align 4, !tbaa !13
  %i.mu = getelementptr i8, ptr %i.ml, i64 24
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !13
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, 2.500000e-01
  %i.mx = fadd reassoc nsz arcp contract afn float %i.mf, %i.mw ; 2 uses
  store float %i.mx, ptr %i.kt, align 8, !tbaa !13
  %i.my = getelementptr i8, ptr %i.ml, i64 28
  %i.mz = load float, ptr %i.my, align 4, !tbaa !13
  %i.na = fmul reassoc nsz arcp contract afn float %i.mz, 2.500000e-01
  %i.nb = fadd reassoc nsz arcp contract afn float %i.mj, %i.na ; 2 uses
  store float %i.nb, ptr %i.kz, align 4, !tbaa !13
  %i.nc = shl i64 %i.kb, 4
  %i.nd = getelementptr i8, ptr %0, i64 %i.nc     ; 4 uses
  %i.ne = getelementptr i8, ptr %i.nd, i64 32
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !13
  %i.ng = fmul reassoc nsz arcp contract afn float %i.nf, 6.250000e-02
  %i.nh = fadd reassoc nsz arcp contract afn float %i.mp, %i.ng
  store float %i.nh, ptr %i.kc, align 16, !tbaa !13
  %i.ni = getelementptr i8, ptr %i.nd, i64 36
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !13
  %i.nk = fmul reassoc nsz arcp contract afn float %i.nj, 6.250000e-02
  %i.nl = fadd reassoc nsz arcp contract afn float %i.mt, %i.nk
  store float %i.nl, ptr %i.kn, align 4, !tbaa !13
  %i.nm = getelementptr i8, ptr %i.nd, i64 40
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !13
  %i.no = fmul reassoc nsz arcp contract afn float %i.nn, 6.250000e-02
  %i.np = fadd reassoc nsz arcp contract afn float %i.mx, %i.no
  store float %i.np, ptr %i.kt, align 8, !tbaa !13
  %i.nq = getelementptr i8, ptr %i.nd, i64 44
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !13
  %i.ns = fmul reassoc nsz arcp contract afn float %i.nr, 6.250000e-02
  %i.nt = fadd reassoc nsz arcp contract afn float %i.nb, %i.ns
  store float %i.nt, ptr %i.kz, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.preheader223, !llvm.loop !386

._crit_edge:                                      ; preds = %.preheader223, %middle.block, %.preheader226
  br i1 %i.g, label %.preheader222, label %._crit_edge237

.preheader222:                                    ; preds = %._crit_edge, %.preheader222
  %indvars.iv267 = phi i64 [ %i.qi, %.preheader222 ], [ %i.f, %._crit_edge ] ; 11 uses
  %i.nu = add nsw i64 %indvars.iv267, %i.ae
  %.idx204 = shl i64 %i.nu, 4
  %i.nv = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx204 ; 9 uses
  %i.nw = add nsw i64 %indvars.iv267, -2
  %reass.sub = sub i64 %reass.add202, %indvars.iv267
  %i.nx = add i64 %reass.sub, 1
  %.209 = tail call i64 @llvm.umin.i64(i64 %i.nx, i64 %i.nw)
  %i.ny = add i64 %.209, %i.ae
  %.idx203 = shl i64 %i.ny, 4
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx203 ; 4 uses
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !13
  %i.ob = fmul reassoc nsz arcp contract afn float %i.oa, 6.250000e-02
  %i.oc = load float, ptr %i.nv, align 16, !tbaa !13
  %i.od = fadd reassoc nsz arcp contract afn float %i.oc, %i.ob ; 2 uses
  store float %i.od, ptr %i.nv, align 16, !tbaa !13
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.of = load float, ptr %i.oe, align 4, !tbaa !13
  %i.og = fmul reassoc nsz arcp contract afn float %i.of, 6.250000e-02
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nv, i64 4 ; 6 uses
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !13
  %i.oj = fadd reassoc nsz arcp contract afn float %i.oi, %i.og ; 2 uses
  store float %i.oj, ptr %i.oh, align 4, !tbaa !13
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !13
  %i.om = fmul reassoc nsz arcp contract afn float %i.ol, 6.250000e-02
  %i.on = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 6 uses
  %i.oo = load float, ptr %i.on, align 8, !tbaa !13
  %i.op = fadd reassoc nsz arcp contract afn float %i.oo, %i.om ; 2 uses
  store float %i.op, ptr %i.on, align 8, !tbaa !13
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nz, i64 12
  %i.or = load float, ptr %i.oq, align 4, !tbaa !13
  %i.os = fmul reassoc nsz arcp contract afn float %i.or, 6.250000e-02
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nv, i64 12 ; 6 uses
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !13
  %i.ov = fadd reassoc nsz arcp contract afn float %i.ou, %i.os ; 2 uses
  store float %i.ov, ptr %i.ot, align 4, !tbaa !13
  %i.ow = add nsw i64 %indvars.iv267, -1
  %i.ox = sub i64 %reass.add202, %indvars.iv267
  %.209.1 = tail call i64 @llvm.umin.i64(i64 %i.ox, i64 %i.ow)
  %i.oy = add i64 %.209.1, %i.ae
  %.idx203.1 = shl i64 %i.oy, 4
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx203.1 ; 4 uses
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !13
  %i.pb = fmul reassoc nsz arcp contract afn float %i.pa, 2.500000e-01
  %i.pc = fadd reassoc nsz arcp contract afn float %i.od, %i.pb ; 2 uses
  store float %i.pc, ptr %i.nv, align 16, !tbaa !13
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !13
  %i.pf = fmul reassoc nsz arcp contract afn float %i.pe, 2.500000e-01
  %i.pg = fadd reassoc nsz arcp contract afn float %i.oj, %i.pf ; 2 uses
  store float %i.pg, ptr %i.oh, align 4, !tbaa !13
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !13
  %i.pj = fmul reassoc nsz arcp contract afn float %i.pi, 2.500000e-01
  %i.pk = fadd reassoc nsz arcp contract afn float %i.op, %i.pj ; 2 uses
  store float %i.pk, ptr %i.on, align 8, !tbaa !13
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oz, i64 12
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !13
  %i.pn = fmul reassoc nsz arcp contract afn float %i.pm, 2.500000e-01
  %i.po = fadd reassoc nsz arcp contract afn float %i.ov, %i.pn ; 2 uses
  store float %i.po, ptr %i.ot, align 4, !tbaa !13
  %i.pp = xor i64 %indvars.iv267, -1
  %i.pq = add i64 %reass.add202, %i.pp
  %.209.2 = tail call i64 @llvm.umin.i64(i64 %i.pq, i64 %indvars.iv267)
  %i.pr = add i64 %.209.2, %i.ae
  %.idx203.2 = shl i64 %i.pr, 4
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 %.idx203.2 ; 4 uses
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !13
  %i.pu = fmul reassoc nsz arcp contract afn float %i.pt, 3.750000e-01
  %i.pv = fadd reassoc nsz arcp contract afn float %i.pc, %i.pu ; 2 uses
  store float %i.pv, ptr %i.nv, align 16, !tbaa !13
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  %i.px = load float, ptr %i.pw, align 4, !tbaa !13
  %i.py = fmul reassoc nsz arcp contract afn float %i.px, 3.750000e-01
  %i.pz = fadd reassoc nsz arcp contract afn float %i.pg, %i.py ; 2 uses
  store float %i.pz, ptr %i.oh, align 4, !tbaa !13
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !13
  %i.qc = fmul reassoc nsz arcp contract afn float %i.qb, 3.750000e-01
  %i.qd = fadd reassoc nsz arcp contract afn float %i.pk, %i.qc ; 2 uses
  store float %i.qd, ptr %i.on, align 8, !tbaa !13
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ps, i64 12
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !13
  %i.qg = fmul reassoc nsz arcp contract afn float %i.qf, 3.750000e-01
  %i.qh = fadd reassoc nsz arcp contract afn float %i.po, %i.qg ; 2 uses
  store float %i.qh, ptr %i.ot, align 4, !tbaa !13
  %i.qi = add nuw nsw i64 %indvars.iv267, 1       ; 3 uses
  %reass.sub312 = sub i64 %reass.add202, %indvars.iv267
  %i.qj = add i64 %reass.sub312, -2
  %.209.3 = tail call i64 @llvm.umin.i64(i64 %i.qj, i64 %i.qi)
  %i.qk = add i64 %.209.3, %i.ae
  %.idx203.3 = shl i64 %i.qk, 4
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 %.idx203.3 ; 4 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !13
  %i.qn = fmul reassoc nsz arcp contract afn float %i.qm, 2.500000e-01
  %i.qo = fadd reassoc nsz arcp contract afn float %i.pv, %i.qn ; 2 uses
  store float %i.qo, ptr %i.nv, align 16, !tbaa !13
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !13
  %i.qr = fmul reassoc nsz arcp contract afn float %i.qq, 2.500000e-01
  %i.qs = fadd reassoc nsz arcp contract afn float %i.pz, %i.qr ; 2 uses
  store float %i.qs, ptr %i.oh, align 4, !tbaa !13
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !13
  %i.qv = fmul reassoc nsz arcp contract afn float %i.qu, 2.500000e-01
  %i.qw = fadd reassoc nsz arcp contract afn float %i.qd, %i.qv ; 2 uses
  store float %i.qw, ptr %i.on, align 8, !tbaa !13
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ql, i64 12
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !13
  %i.qz = fmul reassoc nsz arcp contract afn float %i.qy, 2.500000e-01
  %i.ra = fadd reassoc nsz arcp contract afn float %i.qh, %i.qz ; 2 uses
  store float %i.ra, ptr %i.ot, align 4, !tbaa !13
  %i.rb = add nsw i64 %indvars.iv267, 2
  %reass.sub313 = sub i64 %reass.add202, %indvars.iv267
  %i.rc = add i64 %reass.sub313, -3
  %.209.4 = tail call i64 @llvm.umin.i64(i64 %i.rc, i64 %i.rb)
  %i.rd = add i64 %.209.4, %i.ae
  %.idx203.4 = shl i64 %i.rd, 4
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 %.idx203.4 ; 4 uses
  %i.rf = load float, ptr %i.re, align 4, !tbaa !13
  %i.rg = fmul reassoc nsz arcp contract afn float %i.rf, 6.250000e-02
  %i.rh = fadd reassoc nsz arcp contract afn float %i.qo, %i.rg
  store float %i.rh, ptr %i.nv, align 16, !tbaa !13
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !13
  %i.rk = fmul reassoc nsz arcp contract afn float %i.rj, 6.250000e-02
  %i.rl = fadd reassoc nsz arcp contract afn float %i.qs, %i.rk
  store float %i.rl, ptr %i.oh, align 4, !tbaa !13
  %i.rm = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !13
  %i.ro = fmul reassoc nsz arcp contract afn float %i.rn, 6.250000e-02
  %i.rp = fadd reassoc nsz arcp contract afn float %i.qw, %i.ro
  store float %i.rp, ptr %i.on, align 8, !tbaa !13
  %i.rq = getelementptr inbounds nuw i8, ptr %i.re, i64 12
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !13
  %i.rs = fmul reassoc nsz arcp contract afn float %i.rr, 6.250000e-02
  %i.rt = fadd reassoc nsz arcp contract afn float %i.ra, %i.rs
  store float %i.rt, ptr %i.ot, align 4, !tbaa !13
  %i.ru = icmp ugt i64 %2, %i.qi
  br i1 %i.ru, label %.preheader222, label %._crit_edge237

._crit_edge237:                                   ; preds = %.preheader222, %._crit_edge
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next271, %3
  br i1 %exitcond273.not, label %._crit_edge239, label %.preheader226

.preheader218:                                    ; preds = %.preheader218.lr.ph, %._crit_edge250
  %indvars.iv302 = phi i64 [ 0, %.preheader218.lr.ph ], [ %indvars.iv.next303, %._crit_edge250 ] ; 16 uses
  %.idx201 = shl i64 %indvars.iv302, 4            ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 %.idx201 ; 9 uses
  %i.rw = shl i64 %indvars.iv302, 4
  %i.rx = getelementptr i8, ptr %i.jz, i64 %i.rw  ; 6 uses
  %i.ry = load float, ptr %i.rx, align 16, !tbaa !13
  %i.rz = fmul reassoc nsz arcp contract afn float %i.ry, 6.250000e-02
  %i.sa = load float, ptr %i.rv, align 4, !tbaa !13
  %i.sb = fadd reassoc nsz arcp contract afn float %i.sa, %i.rz ; 2 uses
  store float %i.sb, ptr %i.rv, align 4, !tbaa !13
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rx, i64 4 ; 3 uses
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !13
  %i.se = fmul reassoc nsz arcp contract afn float %i.sd, 6.250000e-02
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rv, i64 4 ; 6 uses
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !13
  %i.sh = fadd reassoc nsz arcp contract afn float %i.sg, %i.se ; 2 uses
  store float %i.sh, ptr %i.sf, align 4, !tbaa !13
  %i.si = getelementptr inbounds nuw i8, ptr %i.rx, i64 8 ; 3 uses
  %i.sj = load float, ptr %i.si, align 8, !tbaa !13
  %i.sk = fmul reassoc nsz arcp contract afn float %i.sj, 6.250000e-02
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rv, i64 8 ; 6 uses
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !13
  %i.sn = fadd reassoc nsz arcp contract afn float %i.sm, %i.sk ; 2 uses
  store float %i.sn, ptr %i.sl, align 4, !tbaa !13
  %i.so = getelementptr inbounds nuw i8, ptr %i.rx, i64 12 ; 3 uses
  %i.sp = load float, ptr %i.so, align 4, !tbaa !13
  %i.sq = fmul reassoc nsz arcp contract afn float %i.sp, 6.250000e-02
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rv, i64 12 ; 6 uses
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !13
  %i.st = fadd reassoc nsz arcp contract afn float %i.ss, %i.sq ; 2 uses
  store float %i.st, ptr %i.sr, align 4, !tbaa !13
  %i.su = add nsw i64 %2, %indvars.iv302
  %.idx200.1 = shl i64 %i.su, 4                   ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx200.1 ; 7 uses
  %i.sw = load float, ptr %i.sv, align 16, !tbaa !13
  %i.sx = fmul reassoc nsz arcp contract afn float %i.sw, 2.500000e-01
  %i.sy = fadd reassoc nsz arcp contract afn float %i.sb, %i.sx ; 2 uses
  store float %i.sy, ptr %i.rv, align 4, !tbaa !13
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sv, i64 4 ; 4 uses
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !13
  %i.tb = fmul reassoc nsz arcp contract afn float %i.ta, 2.500000e-01
  %i.tc = fadd reassoc nsz arcp contract afn float %i.sh, %i.tb ; 2 uses
  store float %i.tc, ptr %i.sf, align 4, !tbaa !13
  %i.td = getelementptr inbounds nuw i8, ptr %i.sv, i64 8 ; 4 uses
  %i.te = load float, ptr %i.td, align 8, !tbaa !13
  %i.tf = fmul reassoc nsz arcp contract afn float %i.te, 2.500000e-01
  %i.tg = fadd reassoc nsz arcp contract afn float %i.sn, %i.tf ; 2 uses
  store float %i.tg, ptr %i.sl, align 4, !tbaa !13
  %i.th = getelementptr inbounds nuw i8, ptr %i.sv, i64 12 ; 4 uses
  %i.ti = load float, ptr %i.th, align 4, !tbaa !13
  %i.tj = fmul reassoc nsz arcp contract afn float %i.ti, 2.500000e-01
  %i.tk = fadd reassoc nsz arcp contract afn float %i.st, %i.tj ; 2 uses
  store float %i.tk, ptr %i.sr, align 4, !tbaa !13
  %i.tl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx201 ; 5 uses
  %i.tm = load float, ptr %i.tl, align 16, !tbaa !13
  %i.tn = fmul reassoc nsz arcp contract afn float %i.tm, 3.750000e-01
  %i.to = fadd reassoc nsz arcp contract afn float %i.sy, %i.tn ; 2 uses
  store float %i.to, ptr %i.rv, align 4, !tbaa !13
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 4 ; 2 uses
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !13
  %i.tr = fmul reassoc nsz arcp contract afn float %i.tq, 3.750000e-01
  %i.ts = fadd reassoc nsz arcp contract afn float %i.tc, %i.tr ; 2 uses
  store float %i.ts, ptr %i.sf, align 4, !tbaa !13
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tl, i64 8 ; 2 uses
  %i.tu = load float, ptr %i.tt, align 8, !tbaa !13
  %i.tv = fmul reassoc nsz arcp contract afn float %i.tu, 3.750000e-01
  %i.tw = fadd reassoc nsz arcp contract afn float %i.tg, %i.tv ; 2 uses
  store float %i.tw, ptr %i.sl, align 4, !tbaa !13
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tl, i64 12 ; 2 uses
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !13
  %i.tz = fmul reassoc nsz arcp contract afn float %i.ty, 3.750000e-01
  %i.ua = fadd reassoc nsz arcp contract afn float %i.tk, %i.tz ; 2 uses
  store float %i.ua, ptr %i.sr, align 4, !tbaa !13
  %i.ub = load float, ptr %i.sv, align 16, !tbaa !13
  %i.uc = fmul reassoc nsz arcp contract afn float %i.ub, 2.500000e-01
  %i.ud = fadd reassoc nsz arcp contract afn float %i.to, %i.uc ; 2 uses
  store float %i.ud, ptr %i.rv, align 4, !tbaa !13
  %i.ue = load float, ptr %i.sz, align 4, !tbaa !13
  %i.uf = fmul reassoc nsz arcp contract afn float %i.ue, 2.500000e-01
  %i.ug = fadd reassoc nsz arcp contract afn float %i.ts, %i.uf ; 2 uses
  store float %i.ug, ptr %i.sf, align 4, !tbaa !13
  %i.uh = load float, ptr %i.td, align 8, !tbaa !13
  %i.ui = fmul reassoc nsz arcp contract afn float %i.uh, 2.500000e-01
  %i.uj = fadd reassoc nsz arcp contract afn float %i.tw, %i.ui ; 2 uses
  store float %i.uj, ptr %i.sl, align 4, !tbaa !13
  %i.uk = load float, ptr %i.th, align 4, !tbaa !13
  %i.ul = fmul reassoc nsz arcp contract afn float %i.uk, 2.500000e-01
  %i.um = fadd reassoc nsz arcp contract afn float %i.ua, %i.ul ; 2 uses
  store float %i.um, ptr %i.sr, align 4, !tbaa !13
  %i.un = load float, ptr %i.rx, align 16, !tbaa !13
  %i.uo = fmul reassoc nsz arcp contract afn float %i.un, 6.250000e-02
  %i.up = fadd reassoc nsz arcp contract afn float %i.ud, %i.uo
  store float %i.up, ptr %i.rv, align 4, !tbaa !13
  %i.uq = load float, ptr %i.sc, align 4, !tbaa !13
  %i.ur = fmul reassoc nsz arcp contract afn float %i.uq, 6.250000e-02
  %i.us = fadd reassoc nsz arcp contract afn float %i.ug, %i.ur
  store float %i.us, ptr %i.sf, align 4, !tbaa !13
  %i.ut = load float, ptr %i.si, align 8, !tbaa !13
  %i.uu = fmul reassoc nsz arcp contract afn float %i.ut, 6.250000e-02
  %i.uv = fadd reassoc nsz arcp contract afn float %i.uj, %i.uu
  store float %i.uv, ptr %i.sl, align 4, !tbaa !13
  %i.uw = load float, ptr %i.so, align 4, !tbaa !13
  %i.ux = fmul reassoc nsz arcp contract afn float %i.uw, 6.250000e-02
  %i.uy = fadd reassoc nsz arcp contract afn float %i.um, %i.ux
  store float %i.uy, ptr %i.sr, align 4, !tbaa !13
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 %.idx200.1 ; 9 uses
  %i.va = load float, ptr %i.sv, align 16, !tbaa !13
  %i.vb = fmul reassoc nsz arcp contract afn float %i.va, 6.250000e-02
  %i.vc = load float, ptr %i.uz, align 4, !tbaa !13
  %i.vd = fadd reassoc nsz arcp contract afn float %i.vc, %i.vb ; 2 uses
  store float %i.vd, ptr %i.uz, align 4, !tbaa !13
  %i.ve = load float, ptr %i.sz, align 4, !tbaa !13
  %i.vf = fmul reassoc nsz arcp contract afn float %i.ve, 6.250000e-02
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uz, i64 4 ; 6 uses
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !13
  %i.vi = fadd reassoc nsz arcp contract afn float %i.vh, %i.vf ; 2 uses
  store float %i.vi, ptr %i.vg, align 4, !tbaa !13
  %i.vj = load float, ptr %i.td, align 8, !tbaa !13
  %i.vk = fmul reassoc nsz arcp contract afn float %i.vj, 6.250000e-02
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uz, i64 8 ; 6 uses
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !13
  %i.vn = fadd reassoc nsz arcp contract afn float %i.vm, %i.vk ; 2 uses
  store float %i.vn, ptr %i.vl, align 4, !tbaa !13
  %i.vo = load float, ptr %i.th, align 4, !tbaa !13
  %i.vp = fmul reassoc nsz arcp contract afn float %i.vo, 6.250000e-02
  %i.vq = getelementptr inbounds nuw i8, ptr %i.uz, i64 12 ; 6 uses
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !13
  %i.vs = fadd reassoc nsz arcp contract afn float %i.vr, %i.vp ; 2 uses
  store float %i.vs, ptr %i.vq, align 4, !tbaa !13
  %i.vt = load float, ptr %i.tl, align 16, !tbaa !13
  %i.vu = fmul reassoc nsz arcp contract afn float %i.vt, 2.500000e-01
  %i.vv = fadd reassoc nsz arcp contract afn float %i.vd, %i.vu ; 2 uses
  store float %i.vv, ptr %i.uz, align 4, !tbaa !13
  %i.vw = load float, ptr %i.tp, align 4, !tbaa !13
  %i.vx = fmul reassoc nsz arcp contract afn float %i.vw, 2.500000e-01
  %i.vy = fadd reassoc nsz arcp contract afn float %i.vi, %i.vx ; 2 uses
  store float %i.vy, ptr %i.vg, align 4, !tbaa !13
  %i.vz = load float, ptr %i.tt, align 8, !tbaa !13
  %i.wa = fmul reassoc nsz arcp contract afn float %i.vz, 2.500000e-01
  %i.wb = fadd reassoc nsz arcp contract afn float %i.vn, %i.wa ; 2 uses
  store float %i.wb, ptr %i.vl, align 4, !tbaa !13
  %i.wc = load float, ptr %i.tx, align 4, !tbaa !13
  %i.wd = fmul reassoc nsz arcp contract afn float %i.wc, 2.500000e-01
  %i.we = fadd reassoc nsz arcp contract afn float %i.vs, %i.wd ; 2 uses
  store float %i.we, ptr %i.vq, align 4, !tbaa !13
  %i.wf = load float, ptr %i.sv, align 16, !tbaa !13
  %i.wg = fmul reassoc nsz arcp contract afn float %i.wf, 3.750000e-01
  %i.wh = fadd reassoc nsz arcp contract afn float %i.vv, %i.wg ; 2 uses
  store float %i.wh, ptr %i.uz, align 4, !tbaa !13
  %i.wi = load float, ptr %i.sz, align 4, !tbaa !13
  %i.wj = fmul reassoc nsz arcp contract afn float %i.wi, 3.750000e-01
  %i.wk = fadd reassoc nsz arcp contract afn float %i.vy, %i.wj ; 2 uses
  store float %i.wk, ptr %i.vg, align 4, !tbaa !13
  %i.wl = load float, ptr %i.td, align 8, !tbaa !13
  %i.wm = fmul reassoc nsz arcp contract afn float %i.wl, 3.750000e-01
  %i.wn = fadd reassoc nsz arcp contract afn float %i.wb, %i.wm ; 2 uses
  store float %i.wn, ptr %i.vl, align 4, !tbaa !13
  %i.wo = load float, ptr %i.th, align 4, !tbaa !13
  %i.wp = fmul reassoc nsz arcp contract afn float %i.wo, 3.750000e-01
  %i.wq = fadd reassoc nsz arcp contract afn float %i.we, %i.wp ; 2 uses
  store float %i.wq, ptr %i.vq, align 4, !tbaa !13
  %i.wr = load float, ptr %i.rx, align 16, !tbaa !13
  %i.ws = fmul reassoc nsz arcp contract afn float %i.wr, 2.500000e-01
  %i.wt = fadd reassoc nsz arcp contract afn float %i.wh, %i.ws ; 2 uses
  store float %i.wt, ptr %i.uz, align 4, !tbaa !13
  %i.wu = load float, ptr %i.sc, align 4, !tbaa !13
  %i.wv = fmul reassoc nsz arcp contract afn float %i.wu, 2.500000e-01
  %i.ww = fadd reassoc nsz arcp contract afn float %i.wk, %i.wv ; 2 uses
  store float %i.ww, ptr %i.vg, align 4, !tbaa !13
  %i.wx = load float, ptr %i.si, align 8, !tbaa !13
  %i.wy = fmul reassoc nsz arcp contract afn float %i.wx, 2.500000e-01
  %i.wz = fadd reassoc nsz arcp contract afn float %i.wn, %i.wy ; 2 uses
  store float %i.wz, ptr %i.vl, align 4, !tbaa !13
  %i.xa = load float, ptr %i.so, align 4, !tbaa !13
  %i.xb = fmul reassoc nsz arcp contract afn float %i.xa, 2.500000e-01
  %i.xc = fadd reassoc nsz arcp contract afn float %i.wq, %i.xb ; 2 uses
  store float %i.xc, ptr %i.vq, align 4, !tbaa !13
  %i.xd = add nsw i64 %i.ka, %indvars.iv302
  %.idx200.4.1 = shl i64 %i.xd, 4
  %i.xe = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx200.4.1 ; 4 uses
  %i.xf = load float, ptr %i.xe, align 16, !tbaa !13
  %i.xg = fmul reassoc nsz arcp contract afn float %i.xf, 6.250000e-02
  %i.xh = fadd reassoc nsz arcp contract afn float %i.wt, %i.xg
  store float %i.xh, ptr %i.uz, align 4, !tbaa !13
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xe, i64 4
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !13
  %i.xk = fmul reassoc nsz arcp contract afn float %i.xj, 6.250000e-02
  %i.xl = fadd reassoc nsz arcp contract afn float %i.ww, %i.xk
  store float %i.xl, ptr %i.vg, align 4, !tbaa !13
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.xn = load float, ptr %i.xm, align 8, !tbaa !13
  %i.xo = fmul reassoc nsz arcp contract afn float %i.xn, 6.250000e-02
  %i.xp = fadd reassoc nsz arcp contract afn float %i.wz, %i.xo
  store float %i.xp, ptr %i.vl, align 4, !tbaa !13
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xe, i64 12
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !13
  %i.xs = fmul reassoc nsz arcp contract afn float %i.xr, 6.250000e-02
  %i.xt = fadd reassoc nsz arcp contract afn float %i.xc, %i.xs
  store float %i.xt, ptr %i.vq, align 4, !tbaa !13
  br i1 %i.jv, label %.preheader215, label %._crit_edge246

._crit_edge252:                                   ; preds = %._crit_edge250, %._crit_edge239
  tail call void @free(ptr noundef %i.c) #26
  ret void

.preheader215:                                    ; preds = %.preheader218, %.preheader215
  %indvars.iv290 = phi i64 [ %i.aag, %.preheader215 ], [ 2, %.preheader218 ] ; 5 uses
  %i.xu = mul nsw i64 %indvars.iv290, %2
  %i.xv = add nsw i64 %i.xu, %indvars.iv302
  %.idx199 = shl i64 %i.xv, 4                     ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 %.idx199 ; 9 uses
  %i.xx = add nuw i64 %indvars.iv290, 1152921504606846974
  %i.xy = mul i64 %2, %i.xx
  %i.xz = add i64 %i.xy, %indvars.iv302
  %.idx198 = shl i64 %i.xz, 4
  %i.ya = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx198 ; 4 uses
  %i.yb = load float, ptr %i.ya, align 16, !tbaa !13
  %i.yc = fmul reassoc nsz arcp contract afn float %i.yb, 6.250000e-02
  %i.yd = load float, ptr %i.xw, align 4, !tbaa !13
  %i.ye = fadd reassoc nsz arcp contract afn float %i.yd, %i.yc ; 2 uses
  store float %i.ye, ptr %i.xw, align 4, !tbaa !13
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ya, i64 4
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !13
  %i.yh = fmul reassoc nsz arcp contract afn float %i.yg, 6.250000e-02
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xw, i64 4 ; 6 uses
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !13
  %i.yk = fadd reassoc nsz arcp contract afn float %i.yj, %i.yh ; 2 uses
  store float %i.yk, ptr %i.yi, align 4, !tbaa !13
  %i.yl = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %i.ym = load float, ptr %i.yl, align 8, !tbaa !13
  %i.yn = fmul reassoc nsz arcp contract afn float %i.ym, 6.250000e-02
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xw, i64 8 ; 6 uses
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !13
  %i.yq = fadd reassoc nsz arcp contract afn float %i.yp, %i.yn ; 2 uses
  store float %i.yq, ptr %i.yo, align 4, !tbaa !13
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ya, i64 12
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !13
  %i.yt = fmul reassoc nsz arcp contract afn float %i.ys, 6.250000e-02
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xw, i64 12 ; 6 uses
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !13
  %i.yw = fadd reassoc nsz arcp contract afn float %i.yv, %i.yt ; 2 uses
  store float %i.yw, ptr %i.yu, align 4, !tbaa !13
  %i.yx = add nuw i64 %indvars.iv290, 1152921504606846975
  %i.yy = mul i64 %2, %i.yx
  %i.yz = add i64 %i.yy, %indvars.iv302
  %.idx198.1 = shl i64 %i.yz, 4
  %i.za = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx198.1 ; 4 uses
  %i.zb = load float, ptr %i.za, align 16, !tbaa !13
  %i.zc = fmul reassoc nsz arcp contract afn float %i.zb, 2.500000e-01
  %i.zd = fadd reassoc nsz arcp contract afn float %i.ye, %i.zc ; 2 uses
  store float %i.zd, ptr %i.xw, align 4, !tbaa !13
  %i.ze = getelementptr inbounds nuw i8, ptr %i.za, i64 4
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !13
  %i.zg = fmul reassoc nsz arcp contract afn float %i.zf, 2.500000e-01
  %i.zh = fadd reassoc nsz arcp contract afn float %i.yk, %i.zg ; 2 uses
  store float %i.zh, ptr %i.yi, align 4, !tbaa !13
  %i.zi = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zj = load float, ptr %i.zi, align 8, !tbaa !13
  %i.zk = fmul reassoc nsz arcp contract afn float %i.zj, 2.500000e-01
  %i.zl = fadd reassoc nsz arcp contract afn float %i.yq, %i.zk ; 2 uses
  store float %i.zl, ptr %i.yo, align 4, !tbaa !13
  %i.zm = getelementptr inbounds nuw i8, ptr %i.za, i64 12
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !13
  %i.zo = fmul reassoc nsz arcp contract afn float %i.zn, 2.500000e-01
  %i.zp = fadd reassoc nsz arcp contract afn float %i.yw, %i.zo ; 2 uses
  store float %i.zp, ptr %i.yu, align 4, !tbaa !13
  %i.zq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx199 ; 4 uses
  %i.zr = load float, ptr %i.zq, align 16, !tbaa !13
  %i.zs = fmul reassoc nsz arcp contract afn float %i.zr, 3.750000e-01
  %i.zt = fadd reassoc nsz arcp contract afn float %i.zd, %i.zs ; 2 uses
  store float %i.zt, ptr %i.xw, align 4, !tbaa !13
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zq, i64 4
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !13
  %i.zw = fmul reassoc nsz arcp contract afn float %i.zv, 3.750000e-01
  %i.zx = fadd reassoc nsz arcp contract afn float %i.zh, %i.zw ; 2 uses
  store float %i.zx, ptr %i.yi, align 4, !tbaa !13
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  %i.zz = load float, ptr %i.zy, align 8, !tbaa !13
  %i.aaa = fmul reassoc nsz arcp contract afn float %i.zz, 3.750000e-01
  %i.aab = fadd reassoc nsz arcp contract afn float %i.zl, %i.aaa ; 2 uses
  store float %i.aab, ptr %i.yo, align 4, !tbaa !13
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zq, i64 12
  %i.aad = load float, ptr %i.aac, align 4, !tbaa !13
  %i.aae = fmul reassoc nsz arcp contract afn float %i.aad, 3.750000e-01
  %i.aaf = fadd reassoc nsz arcp contract afn float %i.zp, %i.aae ; 2 uses
  store float %i.aaf, ptr %i.yu, align 4, !tbaa !13
  %i.aag = add nuw nsw i64 %indvars.iv290, 1      ; 3 uses
  %i.aah = mul nsw i64 %2, %i.aag
  %i.aai = add nsw i64 %i.aah, %indvars.iv302
  %.idx198.3 = shl i64 %i.aai, 4
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx198.3 ; 4 uses
  %i.aak = load float, ptr %i.aaj, align 16, !tbaa !13
  %i.aal = fmul reassoc nsz arcp contract afn float %i.aak, 2.500000e-01
  %i.aam = fadd reassoc nsz arcp contract afn float %i.zt, %i.aal ; 2 uses
  store float %i.aam, ptr %i.xw, align 4, !tbaa !13
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaj, i64 4
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !13
  %i.aap = fmul reassoc nsz arcp contract afn float %i.aao, 2.500000e-01
  %i.aaq = fadd reassoc nsz arcp contract afn float %i.zx, %i.aap ; 2 uses
  store float %i.aaq, ptr %i.yi, align 4, !tbaa !13
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %i.aas = load float, ptr %i.aar, align 8, !tbaa !13
  %i.aat = fmul reassoc nsz arcp contract afn float %i.aas, 2.500000e-01
  %i.aau = fadd reassoc nsz arcp contract afn float %i.aab, %i.aat ; 2 uses
  store float %i.aau, ptr %i.yo, align 4, !tbaa !13
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aaj, i64 12
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !13
  %i.aax = fmul reassoc nsz arcp contract afn float %i.aaw, 2.500000e-01
  %i.aay = fadd reassoc nsz arcp contract afn float %i.aaf, %i.aax ; 2 uses
  store float %i.aay, ptr %i.yu, align 4, !tbaa !13
  %i.aaz = add nuw nsw i64 %indvars.iv290, 2
  %i.aba = mul nsw i64 %2, %i.aaz
  %i.abb = add nsw i64 %i.aba, %indvars.iv302
  %.idx198.4 = shl i64 %i.abb, 4
  %i.abc = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx198.4 ; 4 uses
  %i.abd = load float, ptr %i.abc, align 16, !tbaa !13
  %i.abe = fmul reassoc nsz arcp contract afn float %i.abd, 6.250000e-02
  %i.abf = fadd reassoc nsz arcp contract afn float %i.aam, %i.abe
  store float %i.abf, ptr %i.xw, align 4, !tbaa !13
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abc, i64 4
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !13
  %i.abi = fmul reassoc nsz arcp contract afn float %i.abh, 6.250000e-02
  %i.abj = fadd reassoc nsz arcp contract afn float %i.aaq, %i.abi
  store float %i.abj, ptr %i.yi, align 4, !tbaa !13
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  %i.abl = load float, ptr %i.abk, align 8, !tbaa !13
  %i.abm = fmul reassoc nsz arcp contract afn float %i.abl, 6.250000e-02
  %i.abn = fadd reassoc nsz arcp contract afn float %i.aau, %i.abm
  store float %i.abn, ptr %i.yo, align 4, !tbaa !13
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abc, i64 12
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !13
  %i.abq = fmul reassoc nsz arcp contract afn float %i.abp, 6.250000e-02
  %i.abr = fadd reassoc nsz arcp contract afn float %i.aay, %i.abq
  store float %i.abr, ptr %i.yu, align 4, !tbaa !13
  %exitcond293.not = icmp eq i64 %i.aag, %i.ju
  br i1 %exitcond293.not, label %._crit_edge246, label %.preheader215

._crit_edge246:                                   ; preds = %.preheader215, %.preheader218
  br i1 %i.jx, label %.preheader214, label %._crit_edge250

.preheader214:                                    ; preds = %._crit_edge246, %.preheader214
  %indvars.iv299 = phi i64 [ %i.aek, %.preheader214 ], [ %i.jw, %._crit_edge246 ] ; 11 uses
  %i.abs = mul nsw i64 %indvars.iv299, %2
  %i.abt = add nsw i64 %i.abs, %indvars.iv302
  %.idx197 = shl i64 %i.abt, 4
  %i.abu = getelementptr inbounds nuw i8, ptr %1, i64 %.idx197 ; 9 uses
  %i.abv = add nsw i64 %indvars.iv299, -2
  %reass.sub314 = sub i64 %reass.add, %indvars.iv299
  %i.abw = add i64 %reass.sub314, 1
  %.211 = tail call i64 @llvm.umin.i64(i64 %i.abw, i64 %i.abv)
  %i.abx = mul i64 %.211, %2
  %i.aby = add i64 %i.abx, %indvars.iv302
  %.idx = shl i64 %i.aby, 4
  %i.abz = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 4 uses
  %i.aca = load float, ptr %i.abz, align 16, !tbaa !13
  %i.acb = fmul reassoc nsz arcp contract afn float %i.aca, 6.250000e-02
  %i.acc = load float, ptr %i.abu, align 4, !tbaa !13
  %i.acd = fadd reassoc nsz arcp contract afn float %i.acc, %i.acb ; 2 uses
  store float %i.acd, ptr %i.abu, align 4, !tbaa !13
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abz, i64 4
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !13
  %i.acg = fmul reassoc nsz arcp contract afn float %i.acf, 6.250000e-02
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abu, i64 4 ; 6 uses
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !13
  %i.acj = fadd reassoc nsz arcp contract afn float %i.aci, %i.acg ; 2 uses
  store float %i.acj, ptr %i.ach, align 4, !tbaa !13
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.acl = load float, ptr %i.ack, align 8, !tbaa !13
  %i.acm = fmul reassoc nsz arcp contract afn float %i.acl, 6.250000e-02
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abu, i64 8 ; 6 uses
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !13
  %i.acp = fadd reassoc nsz arcp contract afn float %i.aco, %i.acm ; 2 uses
  store float %i.acp, ptr %i.acn, align 4, !tbaa !13
  %i.acq = getelementptr inbounds nuw i8, ptr %i.abz, i64 12
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !13
  %i.acs = fmul reassoc nsz arcp contract afn float %i.acr, 6.250000e-02
  %i.act = getelementptr inbounds nuw i8, ptr %i.abu, i64 12 ; 6 uses
  %i.acu = load float, ptr %i.act, align 4, !tbaa !13
  %i.acv = fadd reassoc nsz arcp contract afn float %i.acu, %i.acs ; 2 uses
  store float %i.acv, ptr %i.act, align 4, !tbaa !13
  %i.acw = add nsw i64 %indvars.iv299, -1
  %i.acx = sub i64 %reass.add, %indvars.iv299
  %.211.1 = tail call i64 @llvm.umin.i64(i64 %i.acx, i64 %i.acw)
  %i.acy = mul i64 %.211.1, %2
  %i.acz = add i64 %i.acy, %indvars.iv302
  %.idx.1 = shl i64 %i.acz, 4
  %i.ada = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.1 ; 4 uses
  %i.adb = load float, ptr %i.ada, align 16, !tbaa !13
  %i.adc = fmul reassoc nsz arcp contract afn float %i.adb, 2.500000e-01
  %i.add = fadd reassoc nsz arcp contract afn float %i.acd, %i.adc ; 2 uses
  store float %i.add, ptr %i.abu, align 4, !tbaa !13
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ada, i64 4
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !13
  %i.adg = fmul reassoc nsz arcp contract afn float %i.adf, 2.500000e-01
  %i.adh = fadd reassoc nsz arcp contract afn float %i.acj, %i.adg ; 2 uses
  store float %i.adh, ptr %i.ach, align 4, !tbaa !13
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  %i.adj = load float, ptr %i.adi, align 8, !tbaa !13
  %i.adk = fmul reassoc nsz arcp contract afn float %i.adj, 2.500000e-01
  %i.adl = fadd reassoc nsz arcp contract afn float %i.acp, %i.adk ; 2 uses
  store float %i.adl, ptr %i.acn, align 4, !tbaa !13
  %i.adm = getelementptr inbounds nuw i8, ptr %i.ada, i64 12
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !13
  %i.ado = fmul reassoc nsz arcp contract afn float %i.adn, 2.500000e-01
  %i.adp = fadd reassoc nsz arcp contract afn float %i.acv, %i.ado ; 2 uses
  store float %i.adp, ptr %i.act, align 4, !tbaa !13
  %i.adq = xor i64 %indvars.iv299, -1
  %i.adr = add i64 %reass.add, %i.adq
  %.211.2 = tail call i64 @llvm.umin.i64(i64 %i.adr, i64 %indvars.iv299)
  %i.ads = mul i64 %.211.2, %2
  %i.adt = add i64 %i.ads, %indvars.iv302
  %.idx.2 = shl i64 %i.adt, 4
  %i.adu = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.2 ; 4 uses
  %i.adv = load float, ptr %i.adu, align 16, !tbaa !13
  %i.adw = fmul reassoc nsz arcp contract afn float %i.adv, 3.750000e-01
  %i.adx = fadd reassoc nsz arcp contract afn float %i.add, %i.adw ; 2 uses
  store float %i.adx, ptr %i.abu, align 4, !tbaa !13
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adu, i64 4
  %i.adz = load float, ptr %i.ady, align 4, !tbaa !13
  %i.aea = fmul reassoc nsz arcp contract afn float %i.adz, 3.750000e-01
  %i.aeb = fadd reassoc nsz arcp contract afn float %i.adh, %i.aea ; 2 uses
  store float %i.aeb, ptr %i.ach, align 4, !tbaa !13
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adu, i64 8
  %i.aed = load float, ptr %i.aec, align 8, !tbaa !13
  %i.aee = fmul reassoc nsz arcp contract afn float %i.aed, 3.750000e-01
  %i.aef = fadd reassoc nsz arcp contract afn float %i.adl, %i.aee ; 2 uses
  store float %i.aef, ptr %i.acn, align 4, !tbaa !13
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adu, i64 12
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !13
  %i.aei = fmul reassoc nsz arcp contract afn float %i.aeh, 3.750000e-01
  %i.aej = fadd reassoc nsz arcp contract afn float %i.adp, %i.aei ; 2 uses
  store float %i.aej, ptr %i.act, align 4, !tbaa !13
  %i.aek = add nuw nsw i64 %indvars.iv299, 1      ; 3 uses
  %reass.sub315 = sub i64 %reass.add, %indvars.iv299
  %i.ael = add i64 %reass.sub315, -2
  %.211.3 = tail call i64 @llvm.umin.i64(i64 %i.ael, i64 %i.aek)
  %i.aem = mul i64 %.211.3, %2
  %i.aen = add i64 %i.aem, %indvars.iv302
  %.idx.3 = shl i64 %i.aen, 4
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.3 ; 4 uses
  %i.aep = load float, ptr %i.aeo, align 16, !tbaa !13
  %i.aeq = fmul reassoc nsz arcp contract afn float %i.aep, 2.500000e-01
  %i.aer = fadd reassoc nsz arcp contract afn float %i.adx, %i.aeq ; 2 uses
  store float %i.aer, ptr %i.abu, align 4, !tbaa !13
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeo, i64 4
  %i.aet = load float, ptr %i.aes, align 4, !tbaa !13
  %i.aeu = fmul reassoc nsz arcp contract afn float %i.aet, 2.500000e-01
  %i.aev = fadd reassoc nsz arcp contract afn float %i.aeb, %i.aeu ; 2 uses
  store float %i.aev, ptr %i.ach, align 4, !tbaa !13
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aex = load float, ptr %i.aew, align 8, !tbaa !13
  %i.aey = fmul reassoc nsz arcp contract afn float %i.aex, 2.500000e-01
  %i.aez = fadd reassoc nsz arcp contract afn float %i.aef, %i.aey ; 2 uses
  store float %i.aez, ptr %i.acn, align 4, !tbaa !13
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aeo, i64 12
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !13
  %i.afc = fmul reassoc nsz arcp contract afn float %i.afb, 2.500000e-01
  %i.afd = fadd reassoc nsz arcp contract afn float %i.aej, %i.afc ; 2 uses
  store float %i.afd, ptr %i.act, align 4, !tbaa !13
  %i.afe = add nsw i64 %indvars.iv299, 2
  %reass.sub316 = sub i64 %reass.add, %indvars.iv299
  %i.aff = add i64 %reass.sub316, -3
  %.211.4 = tail call i64 @llvm.umin.i64(i64 %i.aff, i64 %i.afe)
  %i.afg = mul i64 %.211.4, %2
  %i.afh = add i64 %i.afg, %indvars.iv302
  %.idx.4 = shl i64 %i.afh, 4
  %i.afi = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.4 ; 4 uses
  %i.afj = load float, ptr %i.afi, align 16, !tbaa !13
  %i.afk = fmul reassoc nsz arcp contract afn float %i.afj, 6.250000e-02
  %i.afl = fadd reassoc nsz arcp contract afn float %i.aer, %i.afk
  store float %i.afl, ptr %i.abu, align 4, !tbaa !13
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afi, i64 4
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !13
  %i.afo = fmul reassoc nsz arcp contract afn float %i.afn, 6.250000e-02
  %i.afp = fadd reassoc nsz arcp contract afn float %i.aev, %i.afo
  store float %i.afp, ptr %i.ach, align 4, !tbaa !13
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afi, i64 8
  %i.afr = load float, ptr %i.afq, align 8, !tbaa !13
  %i.afs = fmul reassoc nsz arcp contract afn float %i.afr, 6.250000e-02
  %i.aft = fadd reassoc nsz arcp contract afn float %i.aez, %i.afs
  store float %i.aft, ptr %i.acn, align 4, !tbaa !13
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afi, i64 12
  %i.afv = load float, ptr %i.afu, align 4, !tbaa !13
  %i.afw = fmul reassoc nsz arcp contract afn float %i.afv, 6.250000e-02
  %i.afx = fadd reassoc nsz arcp contract afn float %i.afd, %i.afw
  store float %i.afx, ptr %i.act, align 4, !tbaa !13
  %i.afy = icmp ugt i64 %3, %i.aek
  br i1 %i.afy, label %.preheader214, label %._crit_edge250

._crit_edge250:                                   ; preds = %.preheader214, %._crit_edge246
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next303, %2
  br i1 %exitcond305.not, label %._crit_edge252, label %.preheader218
}

declare i32 @CurveDataSample(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #9

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #7

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #7

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_paint(ptr noundef) local_unnamed_addr #7

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #7

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #7

declare void @cairo_fill(ptr noundef) local_unnamed_addr #7

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #7

declare void @pango_font_description_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @pango_font_description_set_absolute_size(ptr noundef, double noundef) local_unnamed_addr #7

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #7

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #20

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #7

declare void @g_object_unref(ptr noundef) local_unnamed_addr #7

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #7

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #7

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc float @dt_draw_curve_calc_value(ptr nofree noundef readonly captures(none) %0, float noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [20 x float], align 16            ; 7 uses
  %i.b = alloca [20 x float], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !140   ; 5 uses
  %i.e = zext i8 %i.d to i32
  %.not35 = icmp eq i8 %i.d, 0
  br i1 %.not35, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %wide.trip.count = zext i8 %i.d to i64          ; 6 uses
  %min.iters.check = icmp ult i8 %i.d, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check37 = icmp ult i8 %i.d, 16
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 240          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %wide.vec = load <16 x float>, ptr %i.h, align 4, !tbaa !13 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec38 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec39 = load <16 x float>, ptr %i.j, align 4, !tbaa !13 ; 2 uses
  %strided.vec40 = shufflevector <16 x float> %wide.vec39, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec41 = shufflevector <16 x float> %wide.vec39, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store <8 x float> %strided.vec, ptr %i.k, align 16, !tbaa !13
  store <8 x float> %strided.vec40, ptr %i.l, align 16, !tbaa !13
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store <8 x float> %strided.vec38, ptr %i.m, align 16, !tbaa !13
  store <8 x float> %strided.vec41, ptr %i.n, align 16, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !389

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !175

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %wide.trip.count, 252        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next47, %vec.epilog.vector.body ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index43
  %wide.vec44 = load <8 x float>, ptr %i.p, align 4, !tbaa !13 ; 2 uses
  %strided.vec45 = shufflevector <8 x float> %wide.vec44, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec46 = shufflevector <8 x float> %wide.vec44, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index43
  store <4 x float> %strided.vec45, ptr %i.q, align 16, !tbaa !13
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index43
  store <4 x float> %strided.vec46, ptr %i.r, align 16, !tbaa !13
  %index.next47 = add nuw i64 %index43, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next47, %n.vec42
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !390

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %n.vec42, %wide.trip.count
  br i1 %cmp.n48, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.t = load i32, ptr %0, align 8, !tbaa !139
  %i.u = call ptr @interpolate_set(i32 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.t) #26 ; 3 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.c, label %bb.b

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !393
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.w, ptr %i.x, align 4, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !394
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float %i.z, ptr %i.aa, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !391

bb.b:                                             ; preds = %._crit_edge
  %i.ab = load i8, ptr %i.c, align 4, !tbaa !140
  %i.ac = zext i8 %i.ab to i32
  %i.ad = load i32, ptr %0, align 8, !tbaa !139
  %i.ae = call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef %i.ac, ptr noundef nonnull %i.a, float noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, i32 noundef %i.ad) #26
  call void @free(ptr noundef nonnull %i.u) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.026 = phi nsz float [ %i.ae, %bb.b ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load float, ptr %i.af, align 4, !tbaa !395 ; 2 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %.026, %i.ag
  %.026. = select reassoc nsz arcp contract afn i1 %i.ah, float %.026, float %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !396 ; 2 uses
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %.026., %i.aj
  %spec.select = select reassoc nsz arcp contract afn i1 %i.ak, float %.026., float %i.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret float %spec.select
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @_add_node(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, float noundef %2, float noundef %3) unnamed_addr #21 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !143
  %i.b = fcmp reassoc nsz arcp contract afn ogt float %i.a, %2
  %.pre = load i32, ptr %1, align 4, !tbaa !16    ; 7 uses
  br i1 %i.b, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %.pre, 1
  br i1 %i.c, label %.lr.ph.preheader, label %.thread.._crit_edge38_crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.pre to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.e = load float, ptr %i.d, align 4, !tbaa !143
  %i.f = fcmp reassoc nsz arcp contract afn ogt float %i.e, %2
  br i1 %i.f, label %.thread.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread.._crit_edge38_crit_edge, label %.lr.ph

.thread.loopexit:                                 ; preds = %.lr.ph
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %.2 = phi i32 [ %i.g, %.thread.loopexit ], [ 0, %bb.a ] ; 5 uses
  %i.h = icmp sgt i32 %.pre, %.2
  br i1 %i.h, label %.lr.ph37.preheader, label %.thread.._crit_edge38_crit_edge

.thread.._crit_edge38_crit_edge:                  ; preds = %bb.b, %.preheader, %.thread
  %.248 = phi i32 [ %.2, %.thread ], [ %.pre, %.preheader ], [ %.pre, %bb.b ] ; 2 uses
  %.pre44 = sext i32 %.248 to i64
  br label %._crit_edge38

.lr.ph37.preheader:                               ; preds = %.thread
  %i.i = sext i32 %.pre to i64                    ; 4 uses
  %i.j = sext i32 %.2 to i64                      ; 4 uses
  %i.k = sub nsw i64 %i.i, %i.j                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.k, 8
  br i1 %min.iters.check, label %.lr.ph37.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph37.preheader
  %n.vec = and i64 %i.k, -8                       ; 3 uses
  %i.l = sub nsw i64 %i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = sub i64 %i.i, %index
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -64
  %interleaved.vec = load <16 x float>, ptr %i.o, align 4, !tbaa !13
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -56
  store <16 x float> %interleaved.vec, ptr %i.p, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge38, label %.lr.ph37.preheader55

.lr.ph37.preheader55:                             ; preds = %.lr.ph37.preheader, %middle.block
  %indvars.iv41.ph = phi i64 [ %i.i, %.lr.ph37.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph37

._crit_edge38:                                    ; preds = %.lr.ph37, %middle.block, %.thread.._crit_edge38_crit_edge
  %.247 = phi i32 [ %.248, %.thread.._crit_edge38_crit_edge ], [ %.2, %middle.block ], [ %.2, %.lr.ph37 ]
  %.pre-phi = phi i64 [ %.pre44, %.thread.._crit_edge38_crit_edge ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph37 ]
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %.pre-phi ; 2 uses
  store float %2, ptr %i.r, align 4, !tbaa !143
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store float %3, ptr %i.s, align 4, !tbaa !170
  %i.t = add nsw i32 %.pre, 1
  store i32 %i.t, ptr %1, align 4, !tbaa !16
  ret i32 %.247

.lr.ph37:                                         ; preds = %.lr.ph37.preheader55, %.lr.ph37
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.lr.ph37 ], [ %indvars.iv41.ph, %.lr.ph37.preheader55 ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %0, i64 %indvars.iv41 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %i.w = load <2 x float>, ptr %i.v, align 4, !tbaa !13
  store <2 x float> %i.w, ptr %i.u, align 4, !tbaa !13
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, -1 ; 2 uses
  %i.x = icmp sgt i64 %indvars.iv.next42, %i.j
  br i1 %i.x, label %.lr.ph37, label %._crit_edge38, !llvm.loop !398
}

declare void @dt_dev_add_history_item_target(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #7

declare ptr @interpolate_set(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare float @interpolate_val(i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @_move_point_internal(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, i32 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !145
  %i.e = tail call reassoc nsz arcp contract afn float @dt_accel_get_speed_multiplier(ptr noundef %1, i32 noundef %4) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !158
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.j = insertelement <2 x float> poison, float %i.e, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = insertelement <2 x float> poison, float %2, i64 0
  %i.m = insertelement <2 x float> %i.l, float %3, i64 1
  %i.n = fmul reassoc nsz arcp contract afn <2 x float> %i.k, %i.m
  %i.o = load <2 x float>, ptr %i.i, align 4, !tbaa !13
  %i.p = fadd reassoc nsz arcp contract afn <2 x float> %i.o, %i.n ; 3 uses
  %i.q = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.p, splat (float 1.000000e+00)
  %i.r = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.p, zeroinitializer
  %i.s = select <2 x i1> %i.r, <2 x float> zeroinitializer, <2 x float> %i.p
  %i.t = select <2 x i1> %i.q, <2 x float> splat (float 1.000000e+00), <2 x float> %i.s
  store <2 x float> %i.t, ptr %i.i, align 4, !tbaa !13
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !144  ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 480 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16   ; 3 uses
  %i.x = icmp slt i32 %i.w, 3
  br i1 %i.x, label %dt_iop_basecurve_sanity_check.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.c, align 16, !tbaa !145
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !158 ; 5 uses
  %i.ab = sext i32 %i.aa to i64                   ; 7 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ab ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !143 ; 2 uses
  %i.ae = icmp sgt i32 %i.aa, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = zext nneg i32 %i.aa to i64
  %i.ag = getelementptr [8 x i8], ptr %i.u, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !143
  %i.aj = fcmp reassoc nsz arcp contract afn ult float %i.ai, %i.ad
  br i1 %i.aj, label %bb.d, label %._crit_edge3.i

._crit_edge3.i:                                   ; preds = %bb.c
  %.pre.i = add nsw i32 %i.w, -1
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ak = add nsw i32 %i.w, -1                    ; 2 uses
  %i.al = icmp slt i32 %i.aa, %i.ak
  br i1 %i.al, label %bb.e, label %dt_iop_basecurve_sanity_check.exit

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr i8, ptr %i.ac, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !143
  %i.ao = fcmp reassoc nsz arcp contract afn ugt float %i.an, %i.ad
  br i1 %i.ao, label %dt_iop_basecurve_sanity_check.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge3.i
  %.pre-phi.i = phi i32 [ %.pre.i, %._crit_edge3.i ], [ %i.ak, %bb.e ] ; 2 uses
  %i.ap = icmp slt i32 %i.aa, %.pre-phi.i
  br i1 %i.ap, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %.pre-phi.i to i64 ; 2 uses
  %i.aq = sub nsw i64 %wide.trip.count.i, %i.ab   ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1 = icmp ult i64 %i.aq, 16
  br i1 %min.iters.check1, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.aq, 12
  %n.vec = and i64 %i.aq, -16                     ; 4 uses
  %i.as = add nsw i64 %n.vec, %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = add i64 %index, %i.ab                   ; 4 uses
  %i.au = getelementptr [8 x i8], ptr %i.u, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = getelementptr [8 x i8], ptr %i.u, i64 %i.at
  %i.ax = getelementptr i8, ptr %i.aw, i64 72
  %wide.vec = load <16 x float>, ptr %i.av, align 4, !tbaa !13
  %wide.vec3 = load <16 x float>, ptr %i.ax, align 4, !tbaa !13
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.at
  %i.az = getelementptr [8 x i8], ptr %i.u, i64 %i.at
  %i.ba = getelementptr i8, ptr %i.az, i64 64
  store <16 x float> %wide.vec, ptr %i.ay, align 4, !tbaa !13
  store <16 x float> %wide.vec3, ptr %i.ba, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !175

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec7 = and i64 %i.aq, -4                     ; 3 uses
  %i.bc = add nsw i64 %n.vec7, %i.ab
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 2 uses
  %i.bd = add i64 %index8, %i.ab                  ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %i.u, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %wide.vec9 = load <8 x float>, ptr %i.bf, align 4, !tbaa !13
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.bd
  store <8 x float> %wide.vec9, ptr %i.bg, align 4, !tbaa !13
  %index.next13 = add nuw i64 %index8, 4          ; 2 uses
  %i.bh = icmp eq i64 %index.next13, %n.vec7
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !400

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %i.aq, %n.vec7
  br i1 %cmp.n14, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ab, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.f
  store i32 -2, ptr %i.z, align 8, !tbaa !158
  %i.bi = load i32, ptr %i.v, align 4, !tbaa !16
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr %i.v, align 4, !tbaa !16
  br label %dt_iop_basecurve_sanity_check.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv.next.i
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.bm = load <2 x float>, ptr %i.bk, align 4, !tbaa !13
  store <2 x float> %i.bm, ptr %i.bl, align 4, !tbaa !13
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !401

dt_iop_basecurve_sanity_check.exit:               ; preds = %bb.a, %bb.d, %bb.e, %._crit_edge.i
  tail call void @gtk_widget_queue_draw(ptr noundef %1) #26
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !174
  tail call void @dt_dev_add_history_item_target(ptr noundef %i.bn, ptr noundef nonnull %0, i32 noundef 1, ptr noundef %1) #26
  ret void
}

declare void @gtk_widget_grab_focus(ptr noundef) local_unnamed_addr #7

declare float @dt_accel_get_speed_multiplier(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @dt_gui_ignore_scroll(ptr noundef) local_unnamed_addr #7

declare i32 @dt_gui_get_scroll_delta(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <10 x float> @llvm.masked.load.v10f32.p0(ptr captures(none), <10 x i1>, <10 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { nounwind willreturn memory(read) }

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
!11 = !{!7, !7, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!8, !8, i64 0}
!17 = !{!"p1 _ZTS8_GModule", !14, i64 0}
!18 = !{!"p1 int", !14, i64 0}
!19 = !{!"long", !7, i64 0}
!20 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !19, i64 8, !8, i64 16, !8, i64 20}
!21 = !{!"p1 _ZTS12dt_develop_t", !14, i64 0}
!22 = !{!"dt_pthread_mutex_t", !7, i64 0}
!23 = !{!"p1 _ZTS25dt_develop_blend_params_t", !14, i64 0}
!24 = !{!"p1 _ZTS11_GHashTable", !14, i64 0}
!25 = !{!"", !24, i64 0, !24, i64 8}
!26 = !{!"p1 _ZTS15dt_iop_module_t", !14, i64 0}
!27 = !{!"", !26, i64 0, !8, i64 8}
!28 = !{!"", !25, i64 0, !27, i64 16}
!29 = !{!"p1 _ZTS10_GtkWidget", !14, i64 0}
!30 = !{!"p1 _ZTS7_GSList", !14, i64 0}
!31 = !{!"p1 _ZTS18dt_iop_module_so_t", !14, i64 0}
!32 = !{!"dt_iop_module_t", !8, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !14, i64 376, !14, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !14, i64 440, !17, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !18, i64 608, !20, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !21, i64 664, !8, i64 672, !8, i64 676, !14, i64 680, !14, i64 688, !8, i64 696, !14, i64 704, !22, i64 712, !14, i64 752, !14, i64 760, !23, i64 768, !23, i64 776, !14, i64 784, !28, i64 792, !29, i64 824, !29, i64 832, !29, i64 840, !29, i64 848, !29, i64 856, !29, i64 864, !29, i64 872, !8, i64 880, !29, i64 888, !29, i64 896, !29, i64 904, !30, i64 912, !30, i64 920, !29, i64 928, !29, i64 936, !8, i64 944, !31, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !29, i64 1096, !14, i64 1104, !8, i64 1112}
!33 = !{!32, !14, i64 688}
!34 = !{!32, !21, i64 664}
!35 = !{i64 0, i64 480, !11, i64 480, i64 12, !11, i64 492, i64 12, !11, i64 504, i64 4, !16, i64 508, i64 4, !13, i64 512, i64 4, !13, i64 516, i64 4, !16}
!36 = !{!"dt_iop_basecurve_params_t", !7, i64 0, !7, i64 480, !7, i64 492, !8, i64 504, !12, i64 508, !12, i64 512, !8, i64 516}
!37 = !{!36, !8, i64 504}
!38 = !{!"p1 omnipotent char", !14, i64 0}
!39 = !{!"basecurve_preset_t", !38, i64 0, !38, i64 8, !38, i64 16, !8, i64 24, !12, i64 28, !36, i64 32, !8, i64 552}
!40 = !{!39, !38, i64 8}
!41 = !{!39, !38, i64 16}
!42 = !{!"dt_codepath_t", !8, i64 0}
!43 = !{!"p1 _ZTS6_GList", !14, i64 0}
!44 = !{!"p1 _ZTS11_JsonParser", !14, i64 0}
!45 = !{!"p1 _ZTS9dt_conf_t", !14, i64 0}
!46 = !{!"p1 _ZTS8dt_lib_t", !14, i64 0}
!47 = !{!"p1 _ZTS17dt_view_manager_t", !14, i64 0}
!48 = !{!"p1 _ZTS12dt_control_t", !14, i64 0}
!49 = !{!"p1 _ZTS19dt_control_signal_t", !14, i64 0}
!50 = !{!"p1 _ZTS12dt_gui_gtk_t", !14, i64 0}
!51 = !{!"p1 _ZTS17dt_mipmap_cache_t", !14, i64 0}
!52 = !{!"p1 _ZTS16dt_image_cache_t", !14, i64 0}
!53 = !{!"p1 _ZTS12dt_bauhaus_t", !14, i64 0}
!54 = !{!"p1 _ZTS13dt_database_t", !14, i64 0}
!55 = !{!"p1 _ZTS14dt_pwstorage_t", !14, i64 0}
!56 = !{!"p1 _ZTS11dt_camctl_t", !14, i64 0}
!57 = !{!"p1 _ZTS15dt_collection_t", !14, i64 0}
!58 = !{!"p1 _ZTS14dt_selection_t", !14, i64 0}
!59 = !{!"p1 _ZTS11dt_points_t", !14, i64 0}
!60 = !{!"p1 _ZTS12dt_imageio_t", !14, i64 0}
!61 = !{!"p1 _ZTS11dt_opencl_t", !14, i64 0}
!62 = !{!"p1 _ZTS9dt_dbus_t", !14, i64 0}
!63 = !{!"p1 _ZTS9dt_undo_t", !14, i64 0}
!64 = !{!"p1 _ZTS16dt_colorspaces_t", !14, i64 0}
!65 = !{!"p1 _ZTS9dt_l10n_t", !14, i64 0}
!66 = !{!"p1 _ZTS9lua_State", !14, i64 0}
!67 = !{!"_Bool", !7, i64 0}
!68 = !{!"p1 _ZTS10_GMainLoop", !14, i64 0}
!69 = !{!"p1 _ZTS13_GMainContext", !14, i64 0}
!70 = !{!"p1 _ZTS12_GThreadPool", !14, i64 0}
!71 = !{!"p1 _ZTS12_GAsyncQueue", !14, i64 0}
!72 = !{!"", !66, i64 0, !22, i64 8, !7, i64 48, !67, i64 96, !67, i64 97, !68, i64 104, !69, i64 112, !70, i64 120, !71, i64 128, !71, i64 136, !71, i64 144}
!73 = !{!"double", !7, i64 0}
!74 = !{!"p1 _ZTS10_GTimeZone", !14, i64 0}
!75 = !{!"p1 _ZTS10_GDateTime", !14, i64 0}
!76 = !{!"dt_sys_resources_t", !19, i64 0, !19, i64 8, !18, i64 16, !18, i64 24, !8, i64 32}
!77 = !{!"dt_backthumb_t", !73, i64 0, !73, i64 8, !8, i64 16, !8, i64 20}
!78 = !{!"dt_gimp_t", !8, i64 0, !38, i64 8, !38, i64 16, !8, i64 24, !8, i64 28}
!79 = !{!"dt_splash_t", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !8, i64 32}
!80 = !{!"darktable_t", !42, i64 0, !8, i64 4, !8, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !44, i64 48, !45, i64 56, !21, i64 64, !46, i64 72, !47, i64 80, !48, i64 88, !49, i64 96, !50, i64 104, !51, i64 112, !52, i64 120, !53, i64 128, !54, i64 136, !55, i64 144, !56, i64 152, !57, i64 160, !58, i64 168, !59, i64 176, !60, i64 184, !61, i64 192, !62, i64 200, !63, i64 208, !64, i64 216, !65, i64 224, !7, i64 232, !22, i64 2792, !22, i64 2832, !22, i64 2872, !22, i64 2912, !22, i64 2952, !22, i64 2992, !38, i64 3032, !38, i64 3040, !38, i64 3048, !38, i64 3056, !38, i64 3064, !38, i64 3072, !38, i64 3080, !38, i64 3088, !38, i64 3096, !38, i64 3104, !38, i64 3112, !38, i64 3120, !38, i64 3128, !72, i64 3136, !43, i64 3288, !73, i64 3296, !43, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !74, i64 3520, !75, i64 3528, !76, i64 3536, !77, i64 3576, !78, i64 3600, !79, i64 3632, !8, i64 3672}
!81 = !{!"p1 _ZTS11dt_action_t", !14, i64 0}
!82 = !{!"dt_action_t", !8, i64 0, !38, i64 8, !38, i64 16, !14, i64 24, !81, i64 32, !81, i64 40}
!83 = !{!"dt_iop_module_so_t", !82, i64 0, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !14, i64 376, !14, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !17, i64 488, !7, i64 496, !14, i64 520, !8, i64 528, !14, i64 536, !8, i64 544, !8, i64 548}
!84 = !{!83, !14, i64 48}
!85 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !14, i64 0}
!86 = !{!"p1 _ZTS18dt_histogram_roi_t", !14, i64 0}
end_hunk_0
begin_hunk_1_@llvm.log.v2f32
!187 = !{!80, !54, i64 136}
!188 = !{!83, !8, i64 548}
!189 = !{!39, !38, i64 0}
!190 = !{!39, !8, i64 24}
!191 = !{!39, !12, i64 28}
!192 = !{!39, !8, i64 552}
!193 = !{!"dt_develop_tiling_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !8, i64 16, !8, i64 20, !8, i64 24}
!194 = !{!193, !12, i64 8}
!195 = !{!193, !8, i64 16}
!196 = !{!193, !8, i64 24}
!197 = !{!193, !12, i64 0}
!198 = !{!193, !8, i64 20}
!199 = distinct !{!199, !128, !129}
!200 = distinct !{!200, !129, !128}
!201 = distinct !{!201, i1 false, !"LVerDomain"}
!202 = distinct !{!202, !201}
!203 = distinct !{!203, !201}
!204 = distinct !{!204, !128, !129}
!205 = distinct !{!205, !128}
!206 = distinct !{!206, i1 false, !"LVerDomain"}
!207 = distinct !{!207, !206}
!208 = distinct !{!208, !206}
!209 = distinct !{!209, !128, !129}
!210 = distinct !{!210, !128}
!211 = distinct !{!211, !130}
!212 = distinct !{!212, i1 false, !"LVerDomain"}
!213 = distinct !{!213, !212}
!214 = distinct !{!214, !212}
!215 = distinct !{!215, !128, !129}
!216 = distinct !{!216, !128}
!217 = distinct !{!217, i1 false, !"LVerDomain"}
!218 = distinct !{!218, !217}
!219 = distinct !{!219, !217}
!220 = distinct !{!220, !217}
!221 = distinct !{!221, !128, !129}
!222 = distinct !{!222, i1 false, !"LVerDomain"}
!223 = distinct !{!223, !222}
!224 = distinct !{!224, !222}
!225 = distinct !{!225, !222}
!226 = distinct !{!226, !222}
!227 = distinct !{!227, !128, !129}
!228 = distinct !{!228, !128}
!229 = distinct !{!229, !128}
!230 = distinct !{!230, i1 false, !"LVerDomain"}
!231 = distinct !{!231, !230}
!232 = distinct !{!232, !230}
!233 = distinct !{!233, !230}
!234 = distinct !{!234, !128, !129}
!235 = distinct !{!235, !130}
!236 = distinct !{!236, i1 false, !"LVerDomain"}
!237 = distinct !{!237, !236}
!238 = distinct !{!238, !236}
!239 = distinct !{!239, !128, !129}
!240 = distinct !{!240, !128}
!241 = distinct !{!241, i1 false, !"LVerDomain"}
!242 = distinct !{!242, !241}
!243 = distinct !{!243, !241}
!244 = distinct !{!244, !128, !129}
!245 = distinct !{!245, !128}
!246 = distinct !{!246, !128}
!247 = !{!95, !8, i64 132}
!248 = !{!98, !12, i64 262176}
!249 = !{!98, !12, i64 262180}
!250 = !{!202}
!251 = !{!203}
!252 = !{!207}
!253 = !{!208}
!254 = !{!213}
!255 = !{!214}
!256 = !{!218}
!257 = !{!219}
!258 = !{!220}
!259 = !{!218, !219}
!260 = !{!223}
!261 = !{!224}
!262 = !{!226, !223, !225}
!263 = !{!225}
!264 = !{!226}
!265 = !{!223, !225}
!266 = !{!231}
!267 = !{!232}
!268 = !{!233}
!269 = !{!231, !232}
!270 = !{!237}
!271 = !{!238}
!272 = !{!242}
!273 = !{!243}
!274 = !{!"dt_iop_order_iccprofile_info_t", !8, i64 0, !7, i64 4, !8, i64 516, !7, i64 576, !7, i64 640, !8, i64 704, !7, i64 712, !7, i64 736, !7, i64 768, !7, i64 816, !8, i64 852, !12, i64 856, !7, i64 896, !7, i64 960, !7, i64 1024, !7, i64 1048}
!275 = !{!274, !8, i64 852}
!276 = !{!274, !8, i64 704}
!277 = distinct !{!277, i1 false, !"LVerDomain"}
!278 = distinct !{!278, !277}
!279 = distinct !{!279, !277}
!280 = distinct !{!280, !128, !129}
!281 = distinct !{!281, !128}
!282 = distinct !{!282, i1 false, !"LVerDomain"}
!283 = distinct !{!283, !282}
!284 = distinct !{!284, !282}
!285 = distinct !{!285, !128, !129}
!286 = distinct !{!286, !128}
!287 = distinct !{!287, i1 false, !"LVerDomain"}
!288 = distinct !{!288, !287}
!289 = distinct !{!289, !287}
!290 = distinct !{!290, !128, !129}
!291 = distinct !{!291, !130}
!292 = distinct !{!292, !128, !129}
!293 = distinct !{!293, !128}
!294 = !{!278}
!295 = !{!279}
!296 = !{!283}
!297 = !{!284}
!298 = !{!288}
!299 = !{!289}
!300 = !{!"branch_weights", i32 4, i32 28}
!301 = !{!88, !8, i64 12}
!302 = distinct !{!302, !128, !129}
!303 = distinct !{!303, !128, !129}
!304 = distinct !{!304, !129, !128}
!305 = distinct !{!305, !129, !128}
!306 = distinct !{!306, !128, !129}
!307 = !{!36, !8, i64 516}
!308 = !{!98, !8, i64 8}
!309 = !{!98, !8, i64 12}
!310 = !{!32, !14, i64 296}
!311 = !{!"dt_iop_basecurve_global_data_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56}
!312 = !{!311, !8, i64 48}
!313 = !{!311, !8, i64 52}
!314 = !{!311, !8, i64 56}
!315 = distinct !{!315, !128, !129}
!316 = distinct !{!316, !129, !128}
!317 = !{!32, !29, i64 824}
!318 = !{!148, !29, i64 56}
!319 = !{!166, !8, i64 5560}
!320 = distinct !{!320, !128, !129}
!321 = distinct !{!321, !128, !129}
!322 = distinct !{!322, !129, !128}
!323 = distinct !{!323, !129, !128}
!324 = !{!168, !8, i64 12}
!325 = !{!166, !73, i64 1440}
!326 = !{!80, !53, i64 128}
!327 = !{!"p1 _ZTS16_DtBauhausWidget", !14, i64 0}
!328 = !{!"_GtkBorder", !89, i64 0, !89, i64 2, !89, i64 4, !89, i64 6}
!329 = !{!"dt_bauhaus_popup_t", !29, i64 0, !29, i64 8, !328, i64 16, !168, i64 24, !8, i64 40, !8, i64 44, !12, i64 48}
!330 = !{!"p1 _ZTS21_PangoFontDescription", !14, i64 0}
!331 = !{!"_GdkRGBA", !73, i64 0, !73, i64 8, !73, i64 16, !73, i64 24}
!332 = !{!"dt_bauhaus_t", !327, i64 0, !329, i64 8, !29, i64 64, !12, i64 72, !12, i64 76, !8, i64 80, !8, i64 84, !12, i64 88, !7, i64 92, !8, i64 272, !8, i64 276, !7, i64 280, !8, i64 288, !24, i64 296, !24, i64 304, !12, i64 312, !12, i64 316, !8, i64 320, !12, i64 324, !12, i64 328, !12, i64 332, !330, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !331, i64 360, !331, i64 392, !331, i64 424, !331, i64 456, !331, i64 488, !331, i64 520, !331, i64 552, !331, i64 584, !331, i64 616, !331, i64 648, !331, i64 680, !331, i64 712, !331, i64 744, !331, i64 776, !331, i64 808, !7, i64 840, !7, i64 936}
!333 = !{!332, !330, i64 336}
!334 = !{!"_PangoRectangle", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!335 = !{!334, !8, i64 8}
!336 = !{!334, !8, i64 0}
!337 = !{!334, !8, i64 12}
!338 = !{!334, !8, i64 4}
!339 = distinct !{!339, !130}
!340 = distinct !{!340, i1 false, !"LVerDomain"}
!341 = distinct !{!341, !340}
!342 = distinct !{!342, !340}
!343 = distinct !{!343, !128, !129}
!344 = distinct !{!344, i1 false, !"LVerDomain"}
!345 = distinct !{!345, !344}
!346 = distinct !{!346, !344}
!347 = distinct !{!347, !128, !129}
!348 = distinct !{!348, !130}
!349 = distinct !{!349, !128}
!350 = distinct !{!350, !128}
!351 = distinct !{!351, !128, !129}
!352 = distinct !{!352, !130}
!353 = distinct !{!353, !128}
!354 = distinct !{!354, !128, !129}
!355 = distinct !{!355, !128, !129}
!356 = distinct !{!356, !129, !128}
!357 = !{!"_GdkEventButton", !8, i64 0, !171, i64 8, !7, i64 16, !8, i64 20, !73, i64 24, !73, i64 32, !172, i64 40, !8, i64 48, !8, i64 52, !173, i64 56, !73, i64 64, !73, i64 72}
!358 = !{!357, !8, i64 52}
!359 = !{!357, !8, i64 0}
!360 = !{!357, !8, i64 48}
!361 = !{!341}
!362 = !{!342}
!363 = !{!345}
!364 = !{!346}
!365 = distinct !{!365, !128, !129}
!366 = distinct !{!366, !129, !128}
!367 = distinct !{!367, !130}
!368 = !{!148, !73, i64 64}
!369 = !{!148, !73, i64 72}
!370 = !{!"_GdkEventMotion", !8, i64 0, !171, i64 8, !7, i64 16, !8, i64 20, !73, i64 24, !73, i64 32, !172, i64 40, !8, i64 48, !89, i64 52, !173, i64 56, !73, i64 64, !73, i64 72}
!371 = !{!370, !8, i64 48}
!372 = !{!"_GdkEventCrossing", !8, i64 0, !171, i64 8, !7, i64 16, !171, i64 24, !8, i64 32, !73, i64 40, !73, i64 48, !73, i64 56, !73, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84}
!373 = !{!372, !8, i64 84}
!374 = !{!"_GdkEventScroll", !8, i64 0, !171, i64 8, !7, i64 16, !8, i64 20, !73, i64 24, !73, i64 32, !8, i64 40, !8, i64 44, !173, i64 48, !73, i64 56, !73, i64 64, !73, i64 72, !73, i64 80, !8, i64 88}
!375 = !{!374, !8, i64 40}
!376 = !{!"_GdkEventKey", !8, i64 0, !171, i64 8, !7, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !38, i64 40, !89, i64 48, !7, i64 50, !8, i64 51}
!377 = !{!376, !8, i64 28}
!378 = !{!376, !8, i64 24}
!379 = !{!"p1 _ZTS24dt_introspection_field_t", !14, i64 0}
!380 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !38, i64 8, !19, i64 16, !379, i64 24, !19, i64 32, !19, i64 40}
!381 = !{!380, !8, i64 0}
!382 = distinct !{!382, i1 false, !"LVerDomain"}
!383 = distinct !{!383, !382}
!384 = distinct !{!384, !382}
!385 = distinct !{!385, !128, !129}
!386 = distinct !{!386, !128}
!387 = !{!383}
!388 = !{!384}
!389 = distinct !{!389, !128, !129}
!390 = distinct !{!390, !128, !129}
!391 = distinct !{!391, !129, !128}
!392 = !{!"", !12, i64 0, !12, i64 4}
!393 = !{!392, !12, i64 0}
!394 = !{!392, !12, i64 4}
!395 = !{!135, !12, i64 12}
!396 = !{!135, !12, i64 16}
!397 = distinct !{!397, !128, !129}
!398 = distinct !{!398, !129, !128}
!399 = distinct !{!399, !128, !129}
!400 = distinct !{!400, !128, !129}
!401 = distinct !{!401, !129, !128}
end_hunk_1
