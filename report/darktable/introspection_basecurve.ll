Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basecurve?download=true
inline.NumInlined: 119
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 44
begin_hunk_0_@get_p:bb.a
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
  %4 = mul i64 %3, %2
  %i.j = shl i64 %4, 4                            ; 2 uses
  %scevgep335 = getelementptr i8, ptr %0, i64 %i.j
  %i.k = getelementptr i8, ptr %i.c, i64 %i.j
  %scevgep336 = getelementptr i8, ptr %i.k, i64 -32
  %scevgep337 = getelementptr i8, ptr %i.c, i64 32
  %i.l = add nsw i64 %2, -4                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.l, 8
  %mul.result = shl i64 %i.h, 4                   ; 16 uses
  %mul.overflow = icmp ugt i64 %i.h, 1152921504606846975
  %bound0 = icmp ult ptr %scevgep337, %scevgep335
  %bound1 = icmp ult ptr %0, %scevgep336
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.l, -4                       ; 3 uses
  %i.m = or disjoint i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br label %.preheader226

.preheader226:                                    ; preds = %.preheader226.lr.ph, %._crit_edge237
  %indvars.iv270 = phi i64 [ 0, %.preheader226.lr.ph ], [ %indvars.iv.next271, %._crit_edge237 ] ; 3 uses
  %i.n = mul i64 %i.i, %indvars.iv270             ; 16 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.n   ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %scevgep317 = getelementptr i8, ptr %i.o, i64 4 ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 %i.n
  %scevgep318 = getelementptr i8, ptr %i.p, i64 8 ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 %i.n
  %scevgep319 = getelementptr i8, ptr %i.q, i64 12 ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.n
  %scevgep320 = getelementptr i8, ptr %i.r, i64 16 ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.n
  %scevgep321 = getelementptr i8, ptr %i.s, i64 20 ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.n
  %scevgep322 = getelementptr i8, ptr %i.t, i64 24 ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %i.n
  %scevgep323 = getelementptr i8, ptr %i.u, i64 28 ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 %i.n
  %scevgep324 = getelementptr i8, ptr %i.v, i64 48 ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 %i.n
  %scevgep325 = getelementptr i8, ptr %i.w, i64 52 ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 %i.n
  %scevgep326 = getelementptr i8, ptr %i.x, i64 56 ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 %i.n
  %scevgep327 = getelementptr i8, ptr %i.y, i64 60 ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 %i.n
  %scevgep328 = getelementptr i8, ptr %i.z, i64 64 ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 %i.n
  %scevgep329 = getelementptr i8, ptr %i.aa, i64 68 ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 %i.n
  %scevgep330 = getelementptr i8, ptr %i.ab, i64 72 ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 %i.n
  %scevgep331 = getelementptr i8, ptr %i.ac, i64 76 ; 2 uses
  %i.ad = mul nsw i64 %indvars.iv270, %2          ; 12 uses
  %.idx208 = shl i64 %i.ad, 4                     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx208 ; 9 uses
  %i.af = shl i64 %i.ad, 4
  %i.ag = getelementptr i8, ptr %0, i64 %i.af     ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 32     ; 3 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !13
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, 6.250000e-02
  %i.ak = load float, ptr %i.ae, align 16, !tbaa !13
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, %i.aj ; 2 uses
  store float %i.al, ptr %i.ae, align 16, !tbaa !13
  %i.am = getelementptr i8, ptr %i.ag, i64 36     ; 3 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !13
  %i.ao = fmul reassoc nsz arcp contract afn float %i.an, 6.250000e-02
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 6 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !13
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, %i.ao ; 2 uses
  store float %i.ar, ptr %i.ap, align 4, !tbaa !13
  %i.as = getelementptr i8, ptr %i.ag, i64 40     ; 3 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !13
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, 6.250000e-02
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 6 uses
  %i.aw = load float, ptr %i.av, align 8, !tbaa !13
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, %i.au ; 2 uses
  store float %i.ax, ptr %i.av, align 8, !tbaa !13
  %i.ay = getelementptr i8, ptr %i.ag, i64 44     ; 3 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !13
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, 6.250000e-02
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 6 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !13
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.ba ; 2 uses
  store float %i.bd, ptr %i.bb, align 4, !tbaa !13
  %i.be = shl i64 %i.ad, 4
  %.idx207.1 = add i64 %i.be, 16                  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.idx207.1 ; 7 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !13
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, 2.500000e-01
  %i.bi = fadd reassoc nsz arcp contract afn float %i.al, %i.bh ; 2 uses
  store float %i.bi, ptr %i.ae, align 16, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 4 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !13
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, 2.500000e-01
  %i.bm = fadd reassoc nsz arcp contract afn float %i.ar, %i.bl ; 2 uses
  store float %i.bm, ptr %i.ap, align 4, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !13
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, 2.500000e-01
  %i.bq = fadd reassoc nsz arcp contract afn float %i.ax, %i.bp ; 2 uses
  store float %i.bq, ptr %i.av, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 12 ; 4 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !13
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, 2.500000e-01
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bd, %i.bt ; 2 uses
  store float %i.bu, ptr %i.bb, align 4, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %.idx208 ; 5 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !13
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, 3.750000e-01
  %i.by = fadd reassoc nsz arcp contract afn float %i.bi, %i.bx ; 2 uses
  store float %i.by, ptr %i.ae, align 16, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !13
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, 3.750000e-01
  %i.cc = fadd reassoc nsz arcp contract afn float %i.bm, %i.cb ; 2 uses
  store float %i.cc, ptr %i.ap, align 4, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !13
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ce, 3.750000e-01
  %i.cg = fadd reassoc nsz arcp contract afn float %i.bq, %i.cf ; 2 uses
  store float %i.cg, ptr %i.av, align 8, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 12 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !13
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ci, 3.750000e-01
  %i.ck = fadd reassoc nsz arcp contract afn float %i.bu, %i.cj ; 2 uses
  store float %i.ck, ptr %i.bb, align 4, !tbaa !13
  %i.cl = load float, ptr %i.bf, align 4, !tbaa !13
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, 2.500000e-01
  %i.cn = fadd reassoc nsz arcp contract afn float %i.by, %i.cm ; 2 uses
  store float %i.cn, ptr %i.ae, align 16, !tbaa !13
  %i.co = load float, ptr %i.bj, align 4, !tbaa !13
  %i.cp = fmul reassoc nsz arcp contract afn float %i.co, 2.500000e-01
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cc, %i.cp ; 2 uses
  store float %i.cq, ptr %i.ap, align 4, !tbaa !13
  %i.cr = load float, ptr %i.bn, align 4, !tbaa !13
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, 2.500000e-01
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cg, %i.cs ; 2 uses
  store float %i.ct, ptr %i.av, align 8, !tbaa !13
  %i.cu = load float, ptr %i.br, align 4, !tbaa !13
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, 2.500000e-01
  %i.cw = fadd reassoc nsz arcp contract afn float %i.ck, %i.cv ; 2 uses
  store float %i.cw, ptr %i.bb, align 4, !tbaa !13
  %i.cx = load float, ptr %i.ah, align 4, !tbaa !13
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cx, 6.250000e-02
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cn, %i.cy
  store float %i.cz, ptr %i.ae, align 16, !tbaa !13
  %i.da = load float, ptr %i.am, align 4, !tbaa !13
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, 6.250000e-02
  %i.dc = fadd reassoc nsz arcp contract afn float %i.cq, %i.db
  store float %i.dc, ptr %i.ap, align 4, !tbaa !13
  %i.dd = load float, ptr %i.as, align 4, !tbaa !13
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, 6.250000e-02
  %i.df = fadd reassoc nsz arcp contract afn float %i.ct, %i.de
  store float %i.df, ptr %i.av, align 8, !tbaa !13
  %i.dg = load float, ptr %i.ay, align 4, !tbaa !13
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, 6.250000e-02
  %i.di = fadd reassoc nsz arcp contract afn float %i.cw, %i.dh
  store float %i.di, ptr %i.bb, align 4, !tbaa !13
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx207.1 ; 9 uses
  %i.dk = load float, ptr %i.bf, align 4, !tbaa !13
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, 6.250000e-02
  %i.dm = load float, ptr %i.dj, align 16, !tbaa !13
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dm, %i.dl ; 2 uses
  store float %i.dn, ptr %i.dj, align 16, !tbaa !13
  %i.do = load float, ptr %i.bj, align 4, !tbaa !13
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, 6.250000e-02
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 6 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !13
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, %i.dp ; 2 uses
  store float %i.ds, ptr %i.dq, align 4, !tbaa !13
  %i.dt = load float, ptr %i.bn, align 4, !tbaa !13
  %i.du = fmul reassoc nsz arcp contract afn float %i.dt, 6.250000e-02
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 6 uses
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !13
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, %i.du ; 2 uses
  store float %i.dx, ptr %i.dv, align 8, !tbaa !13
  %i.dy = load float, ptr %i.br, align 4, !tbaa !13
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dy, 6.250000e-02
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 12 ; 6 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !13
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, %i.dz ; 2 uses
  store float %i.ec, ptr %i.ea, align 4, !tbaa !13
  %i.ed = load float, ptr %i.bv, align 4, !tbaa !13
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, 2.500000e-01
  %i.ef = fadd reassoc nsz arcp contract afn float %i.dn, %i.ee ; 2 uses
  store float %i.ef, ptr %i.dj, align 16, !tbaa !13
  %i.eg = load float, ptr %i.bz, align 4, !tbaa !13
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, 2.500000e-01
  %i.ei = fadd reassoc nsz arcp contract afn float %i.ds, %i.eh ; 2 uses
  store float %i.ei, ptr %i.dq, align 4, !tbaa !13
  %i.ej = load float, ptr %i.cd, align 4, !tbaa !13
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, 2.500000e-01
  %i.el = fadd reassoc nsz arcp contract afn float %i.dx, %i.ek ; 2 uses
  store float %i.el, ptr %i.dv, align 8, !tbaa !13
  %i.em = load float, ptr %i.ch, align 4, !tbaa !13
  %i.en = fmul reassoc nsz arcp contract afn float %i.em, 2.500000e-01
  %i.eo = fadd reassoc nsz arcp contract afn float %i.ec, %i.en ; 2 uses
  store float %i.eo, ptr %i.ea, align 4, !tbaa !13
  %i.ep = load float, ptr %i.bf, align 4, !tbaa !13
  %i.eq = fmul reassoc nsz arcp contract afn float %i.ep, 3.750000e-01
  %i.er = fadd reassoc nsz arcp contract afn float %i.ef, %i.eq ; 2 uses
  store float %i.er, ptr %i.dj, align 16, !tbaa !13
  %i.es = load float, ptr %i.bj, align 4, !tbaa !13
  %i.et = fmul reassoc nsz arcp contract afn float %i.es, 3.750000e-01
  %i.eu = fadd reassoc nsz arcp contract afn float %i.ei, %i.et ; 2 uses
  store float %i.eu, ptr %i.dq, align 4, !tbaa !13
  %i.ev = load float, ptr %i.bn, align 4, !tbaa !13
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ev, 3.750000e-01
  %i.ex = fadd reassoc nsz arcp contract afn float %i.el, %i.ew ; 2 uses
  store float %i.ex, ptr %i.dv, align 8, !tbaa !13
  %i.ey = load float, ptr %i.br, align 4, !tbaa !13
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ey, 3.750000e-01
  %i.fa = fadd reassoc nsz arcp contract afn float %i.eo, %i.ez ; 2 uses
  store float %i.fa, ptr %i.ea, align 4, !tbaa !13
  %i.fb = load float, ptr %i.ah, align 4, !tbaa !13
  %i.fc = fmul reassoc nsz arcp contract afn float %i.fb, 2.500000e-01
  %i.fd = fadd reassoc nsz arcp contract afn float %i.er, %i.fc ; 2 uses
  store float %i.fd, ptr %i.dj, align 16, !tbaa !13
  %i.fe = load float, ptr %i.am, align 4, !tbaa !13
  %i.ff = fmul reassoc nsz arcp contract afn float %i.fe, 2.500000e-01
  %i.fg = fadd reassoc nsz arcp contract afn float %i.eu, %i.ff ; 2 uses
  store float %i.fg, ptr %i.dq, align 4, !tbaa !13
  %i.fh = load float, ptr %i.as, align 4, !tbaa !13
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, 2.500000e-01
  %i.fj = fadd reassoc nsz arcp contract afn float %i.ex, %i.fi ; 2 uses
  store float %i.fj, ptr %i.dv, align 8, !tbaa !13
  %i.fk = load float, ptr %i.ay, align 4, !tbaa !13
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, 2.500000e-01
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fa, %i.fl ; 2 uses
  store float %i.fm, ptr %i.ea, align 4, !tbaa !13
  %i.fn = shl i64 %i.ad, 4
  %i.fo = getelementptr i8, ptr %0, i64 %i.fn     ; 4 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 48
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !13
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fq, 6.250000e-02
  %i.fs = fadd reassoc nsz arcp contract afn float %i.fd, %i.fr
  store float %i.fs, ptr %i.dj, align 16, !tbaa !13
  %i.ft = getelementptr i8, ptr %i.fo, i64 52
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !13
  %i.fv = fmul reassoc nsz arcp contract afn float %i.fu, 6.250000e-02
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fg, %i.fv
  store float %i.fw, ptr %i.dq, align 4, !tbaa !13
  %i.fx = getelementptr i8, ptr %i.fo, i64 56
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !13
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fy, 6.250000e-02
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fj, %i.fz
  store float %i.ga, ptr %i.dv, align 8, !tbaa !13
  %i.gb = getelementptr i8, ptr %i.fo, i64 60
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !13
  %i.gd = fmul reassoc nsz arcp contract afn float %i.gc, 6.250000e-02
  %i.ge = fadd reassoc nsz arcp contract afn float %i.fm, %i.gd
  store float %i.ge, ptr %i.ea, align 4, !tbaa !13
  br i1 %i.e, label %.preheader223.preheader, label %._crit_edge

.preheader223.preheader:                          ; preds = %.preheader226
  br i1 %min.iters.check, label %.preheader223.preheader385, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader223.preheader
  %i.gf = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.gg = icmp ult ptr %i.gf, %scevgep
  %i.gh = getelementptr i8, ptr %scevgep317, i64 %mul.result
  %i.gi = icmp ult ptr %i.gh, %scevgep317
  %i.gj = getelementptr i8, ptr %scevgep318, i64 %mul.result
  %i.gk = icmp ult ptr %i.gj, %scevgep318
  %i.gl = getelementptr i8, ptr %scevgep319, i64 %mul.result
  %i.gm = icmp ult ptr %i.gl, %scevgep319
  %i.gn = getelementptr i8, ptr %scevgep320, i64 %mul.result
  %i.go = icmp ult ptr %i.gn, %scevgep320
  %i.gp = getelementptr i8, ptr %scevgep321, i64 %mul.result
  %i.gq = icmp ult ptr %i.gp, %scevgep321
  %i.gr = getelementptr i8, ptr %scevgep322, i64 %mul.result
  %i.gs = icmp ult ptr %i.gr, %scevgep322
  %i.gt = getelementptr i8, ptr %scevgep323, i64 %mul.result
  %i.gu = icmp ult ptr %i.gt, %scevgep323
  %i.gv = getelementptr i8, ptr %scevgep324, i64 %mul.result
  %i.gw = icmp ult ptr %i.gv, %scevgep324
  %i.gx = getelementptr i8, ptr %scevgep325, i64 %mul.result
  %i.gy = icmp ult ptr %i.gx, %scevgep325
  %i.gz = getelementptr i8, ptr %scevgep326, i64 %mul.result
  %i.ha = icmp ult ptr %i.gz, %scevgep326
  %i.hb = getelementptr i8, ptr %scevgep327, i64 %mul.result
  %i.hc = icmp ult ptr %i.hb, %scevgep327
  %i.hd = getelementptr i8, ptr %scevgep328, i64 %mul.result
  %i.he = icmp ult ptr %i.hd, %scevgep328
  %i.hf = getelementptr i8, ptr %scevgep329, i64 %mul.result
  %i.hg = icmp ult ptr %i.hf, %scevgep329
  %i.hh = getelementptr i8, ptr %scevgep330, i64 %mul.result
  %i.hi = icmp ult ptr %i.hh, %scevgep330
  %i.hj = getelementptr i8, ptr %scevgep331, i64 %mul.result
  %i.hk = icmp ult ptr %i.hj, %scevgep331
  %op.rdx = or i1 %i.gi, %i.gg
  %op.rdx370 = or i1 %op.rdx, %i.gk
  %op.rdx371 = or i1 %op.rdx370, %i.gm
  %op.rdx372 = or i1 %op.rdx371, %i.go
  %op.rdx373 = or i1 %op.rdx372, %i.gq
  %op.rdx374 = or i1 %op.rdx373, %i.gs
  %op.rdx375 = or i1 %op.rdx374, %i.gu
  %op.rdx376 = or i1 %op.rdx375, %i.gw
  %op.rdx377 = or i1 %op.rdx376, %i.gy
  %op.rdx378 = or i1 %op.rdx377, %i.ha
  %op.rdx379 = or i1 %op.rdx378, %i.hc
  %op.rdx380 = or i1 %op.rdx379, %i.he
  %op.rdx381 = or i1 %op.rdx380, %i.hg
  %op.rdx382 = or i1 %op.rdx381, %i.hi
  %op.rdx383 = or i1 %op.rdx382, %i.hk
  %op.rdx384 = or i1 %op.rdx383, %mul.overflow
  %brmerge = or i1 %op.rdx384, %found.conflict
  br i1 %brmerge, label %.preheader223.preheader385, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.hl = or disjoint i64 %index, 2
  %i.hm = add nsw i64 %i.hl, %i.ad
  %i.hn = shl i64 %i.hm, 4                        ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hn ; 6 uses
  %i.hp = getelementptr i8, ptr %0, i64 %i.hn     ; 5 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 -32
  %wide.vec = load <16 x float>, ptr %i.hq, align 4, !tbaa !13, !alias.scope !387 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec338 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec339 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec340 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.hr = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec, splat (float 6.250000e-02)
  %wide.vec341 = load <16 x float>, ptr %i.ho, align 16, !tbaa !13, !alias.scope !388, !noalias !387 ; 4 uses
  %strided.vec342 = shufflevector <16 x float> %wide.vec341, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec343 = shufflevector <16 x float> %wide.vec341, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec344 = shufflevector <16 x float> %wide.vec341, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec345 = shufflevector <16 x float> %wide.vec341, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.hs = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec342, %i.hr ; 2 uses
  %i.ht = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec338, splat (float 6.250000e-02)
  %i.hu = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec343, %i.ht ; 2 uses
  %i.hv = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec339, splat (float 6.250000e-02)
  %i.hw = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec344, %i.hv ; 2 uses
  %i.hx = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec340, splat (float 6.250000e-02)
  %i.hy = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec345, %i.hx ; 2 uses
  %i.hz = shufflevector <4 x float> %i.hs, <4 x float> %i.hu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ia = shufflevector <4 x float> %i.hw, <4 x float> %i.hy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.hz, <8 x float> %i.ia, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ho, align 16, !tbaa !13, !alias.scope !388, !noalias !387
  %i.ib = getelementptr i8, ptr %i.hp, i64 -16
  %wide.vec346 = load <16 x float>, ptr %i.ib, align 4, !tbaa !13, !alias.scope !387 ; 4 uses
  %strided.vec347 = shufflevector <16 x float> %wide.vec346, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec348 = shufflevector <16 x float> %wide.vec346, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec349 = shufflevector <16 x float> %wide.vec346, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec350 = shufflevector <16 x float> %wide.vec346, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ic = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec347, splat (float 2.500000e-01)
  %i.id = fadd reassoc nsz arcp contract afn <4 x float> %i.hs, %i.ic ; 2 uses
  %i.ie = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec348, splat (float 2.500000e-01)
  %i.if = fadd reassoc nsz arcp contract afn <4 x float> %i.hu, %i.ie ; 2 uses
  %i.ig = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec349, splat (float 2.500000e-01)
  %i.ih = fadd reassoc nsz arcp contract afn <4 x float> %i.hw, %i.ig ; 2 uses
  %i.ii = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec350, splat (float 2.500000e-01)
  %i.ij = fadd reassoc nsz arcp contract afn <4 x float> %i.hy, %i.ii ; 2 uses
  %i.ik = shufflevector <4 x float> %i.id, <4 x float> %i.if, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.il = shufflevector <4 x float> %i.ih, <4 x float> %i.ij, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec351 = shufflevector <8 x float> %i.ik, <8 x float> %i.il, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec351, ptr %i.ho, align 16, !tbaa !13, !alias.scope !388, !noalias !387
  %wide.vec352 = load <16 x float>, ptr %i.hp, align 4, !tbaa !13, !alias.scope !387 ; 4 uses
  %strided.vec353 = shufflevector <16 x float> %wide.vec352, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec354 = shufflevector <16 x float> %wide.vec352, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec355 = shufflevector <16 x float> %wide.vec352, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec356 = shufflevector <16 x float> %wide.vec352, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.im = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec353, splat (float 3.750000e-01)
  %i.in = fadd reassoc nsz arcp contract afn <4 x float> %i.id, %i.im ; 2 uses
  %i.io = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec354, splat (float 3.750000e-01)
  %i.ip = fadd reassoc nsz arcp contract afn <4 x float> %i.if, %i.io ; 2 uses
  %i.iq = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec355, splat (float 3.750000e-01)
  %i.ir = fadd reassoc nsz arcp contract afn <4 x float> %i.ih, %i.iq ; 2 uses
  %i.is = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec356, splat (float 3.750000e-01)
  %i.it = fadd reassoc nsz arcp contract afn <4 x float> %i.ij, %i.is ; 2 uses
  %i.iu = shufflevector <4 x float> %i.in, <4 x float> %i.ip, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iv = shufflevector <4 x float> %i.ir, <4 x float> %i.it, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec357 = shufflevector <8 x float> %i.iu, <8 x float> %i.iv, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec357, ptr %i.ho, align 16, !tbaa !13, !alias.scope !388, !noalias !387
  %i.iw = getelementptr i8, ptr %i.hp, i64 16
  %wide.vec358 = load <16 x float>, ptr %i.iw, align 4, !tbaa !13, !alias.scope !387 ; 4 uses
  %strided.vec359 = shufflevector <16 x float> %wide.vec358, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec360 = shufflevector <16 x float> %wide.vec358, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec361 = shufflevector <16 x float> %wide.vec358, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec362 = shufflevector <16 x float> %wide.vec358, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ix = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec359, splat (float 2.500000e-01)
  %i.iy = fadd reassoc nsz arcp contract afn <4 x float> %i.in, %i.ix ; 2 uses
  %i.iz = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec360, splat (float 2.500000e-01)
  %i.ja = fadd reassoc nsz arcp contract afn <4 x float> %i.ip, %i.iz ; 2 uses
  %i.jb = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec361, splat (float 2.500000e-01)
  %i.jc = fadd reassoc nsz arcp contract afn <4 x float> %i.ir, %i.jb ; 2 uses
  %i.jd = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec362, splat (float 2.500000e-01)
  %i.je = fadd reassoc nsz arcp contract afn <4 x float> %i.it, %i.jd ; 2 uses
  %i.jf = shufflevector <4 x float> %i.iy, <4 x float> %i.ja, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jg = shufflevector <4 x float> %i.jc, <4 x float> %i.je, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec363 = shufflevector <8 x float> %i.jf, <8 x float> %i.jg, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec363, ptr %i.ho, align 16, !tbaa !13, !alias.scope !388, !noalias !387
  %i.jh = getelementptr i8, ptr %i.hp, i64 32
  %wide.vec364 = load <16 x float>, ptr %i.jh, align 4, !tbaa !13, !alias.scope !387 ; 4 uses
  %strided.vec365 = shufflevector <16 x float> %wide.vec364, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec366 = shufflevector <16 x float> %wide.vec364, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec367 = shufflevector <16 x float> %wide.vec364, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec368 = shufflevector <16 x float> %wide.vec364, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ji = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec365, splat (float 6.250000e-02)
  %i.jj = fadd reassoc nsz arcp contract afn <4 x float> %i.iy, %i.ji
  %i.jk = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec366, splat (float 6.250000e-02)
  %i.jl = fadd reassoc nsz arcp contract afn <4 x float> %i.ja, %i.jk
  %i.jm = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec367, splat (float 6.250000e-02)
  %i.jn = fadd reassoc nsz arcp contract afn <4 x float> %i.jc, %i.jm
  %i.jo = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec368, splat (float 6.250000e-02)
  %i.jp = fadd reassoc nsz arcp contract afn <4 x float> %i.je, %i.jo
  %i.jq = shufflevector <4 x float> %i.jj, <4 x float> %i.jl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jr = shufflevector <4 x float> %i.jn, <4 x float> %i.jp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec369 = shufflevector <8 x float> %i.jq, <8 x float> %i.jr, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec369, ptr %i.ho, align 16, !tbaa !13, !alias.scope !388, !noalias !387
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.js = icmp eq i64 %index.next, %n.vec
  br i1 %i.js, label %middle.block, label %vector.body, !llvm.loop !385

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.preheader223.preheader385

.preheader223.preheader385:                       ; preds = %vector.scevcheck, %.preheader223.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.m, %middle.block ], [ 2, %vector.scevcheck ], [ 2, %.preheader223.preheader ]
  br label %.preheader223

._crit_edge239:                                   ; preds = %._crit_edge237, %bb.a
  tail call void @dt_iop_image_fill(ptr noundef %1, float noundef 0.000000e+00, i64 noundef %2, i64 noundef %3, i64 noundef 4) #26
  %.not253 = icmp eq i64 %2, 0
  br i1 %.not253, label %._crit_edge252, label %.preheader218.lr.ph

.preheader218.lr.ph:                              ; preds = %._crit_edge239
  %i.jt = add nsw i64 %3, -2                      ; 3 uses
  %i.ju = icmp ugt i64 %i.jt, 2
  %sext254 = shl i64 %i.jt, 32
  %i.jv = ashr exact i64 %sext254, 32             ; 2 uses
  %i.jw = icmp ugt i64 %3, %i.jv
  %reass.add = shl nsw i64 %3, 1                  ; 5 uses
  %i.jx = shl i64 %2, 5
  %i.jy = getelementptr i8, ptr %i.c, i64 %i.jx
  %i.jz = mul nsw i64 %2, 3
  br label %.preheader218

.preheader223:                                    ; preds = %.preheader223.preheader385, %.preheader223
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader223 ], [ %indvars.iv.ph, %.preheader223.preheader385 ] ; 2 uses
  %i.ka = add nsw i64 %indvars.iv, %i.ad          ; 5 uses
  %.idx206 = shl i64 %i.ka, 4                     ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx206 ; 9 uses
  %i.kc = shl i64 %i.ka, 4
  %i.kd = getelementptr i8, ptr %0, i64 %i.kc     ; 4 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 -32
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !13
  %i.kg = fmul reassoc nsz arcp contract afn float %i.kf, 6.250000e-02
  %i.kh = load float, ptr %i.kb, align 16, !tbaa !13
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kh, %i.kg ; 2 uses
  store float %i.ki, ptr %i.kb, align 16, !tbaa !13
  %i.kj = getelementptr i8, ptr %i.kd, i64 -28
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !13
  %i.kl = fmul reassoc nsz arcp contract afn float %i.kk, 6.250000e-02
  %i.km = getelementptr inbounds nuw i8, ptr %i.kb, i64 4 ; 6 uses
  %i.kn = load float, ptr %i.km, align 4, !tbaa !13
  %i.ko = fadd reassoc nsz arcp contract afn float %i.kn, %i.kl ; 2 uses
  store float %i.ko, ptr %i.km, align 4, !tbaa !13
  %i.kp = getelementptr i8, ptr %i.kd, i64 -24
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !13
  %i.kr = fmul reassoc nsz arcp contract afn float %i.kq, 6.250000e-02
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 6 uses
  %i.kt = load float, ptr %i.ks, align 8, !tbaa !13
  %i.ku = fadd reassoc nsz arcp contract afn float %i.kt, %i.kr ; 2 uses
  store float %i.ku, ptr %i.ks, align 8, !tbaa !13
  %i.kv = getelementptr i8, ptr %i.kd, i64 -20
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !13
  %i.kx = fmul reassoc nsz arcp contract afn float %i.kw, 6.250000e-02
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kb, i64 12 ; 6 uses
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !13
  %i.la = fadd reassoc nsz arcp contract afn float %i.kz, %i.kx ; 2 uses
  store float %i.la, ptr %i.ky, align 4, !tbaa !13
  %i.lb = shl i64 %i.ka, 4
  %i.lc = getelementptr i8, ptr %0, i64 %i.lb     ; 4 uses
  %i.ld = getelementptr i8, ptr %i.lc, i64 -16
  %i.le = load float, ptr %i.ld, align 4, !tbaa !13
  %i.lf = fmul reassoc nsz arcp contract afn float %i.le, 2.500000e-01
  %i.lg = fadd reassoc nsz arcp contract afn float %i.ki, %i.lf ; 2 uses
  store float %i.lg, ptr %i.kb, align 16, !tbaa !13
  %i.lh = getelementptr i8, ptr %i.lc, i64 -12
  %i.li = load float, ptr %i.lh, align 4, !tbaa !13
  %i.lj = fmul reassoc nsz arcp contract afn float %i.li, 2.500000e-01
  %i.lk = fadd reassoc nsz arcp contract afn float %i.ko, %i.lj ; 2 uses
  store float %i.lk, ptr %i.km, align 4, !tbaa !13
  %i.ll = getelementptr i8, ptr %i.lc, i64 -8
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !13
  %i.ln = fmul reassoc nsz arcp contract afn float %i.lm, 2.500000e-01
  %i.lo = fadd reassoc nsz arcp contract afn float %i.ku, %i.ln ; 2 uses
  store float %i.lo, ptr %i.ks, align 8, !tbaa !13
  %i.lp = getelementptr i8, ptr %i.lc, i64 -4
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !13
  %i.lr = fmul reassoc nsz arcp contract afn float %i.lq, 2.500000e-01
  %i.ls = fadd reassoc nsz arcp contract afn float %i.la, %i.lr ; 2 uses
  store float %i.ls, ptr %i.ky, align 4, !tbaa !13
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 %.idx206 ; 4 uses
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !13
  %i.lv = fmul reassoc nsz arcp contract afn float %i.lu, 3.750000e-01
  %i.lw = fadd reassoc nsz arcp contract afn float %i.lg, %i.lv ; 2 uses
  store float %i.lw, ptr %i.kb, align 16, !tbaa !13
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !13
  %i.lz = fmul reassoc nsz arcp contract afn float %i.ly, 3.750000e-01
  %i.ma = fadd reassoc nsz arcp contract afn float %i.lk, %i.lz ; 2 uses
  store float %i.ma, ptr %i.km, align 4, !tbaa !13
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !13
  %i.md = fmul reassoc nsz arcp contract afn float %i.mc, 3.750000e-01
end_hunk_0
