inline.NumInlined: 157
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 84
begin_hunk_0_@get_f:bb.a
  br i1 %.not29, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.27) #18
  %.not30 = icmp eq i32 %i.g, 0
  br i1 %.not30, label %bb.y, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.59) #18
  %.not31 = icmp eq i32 %i.h, 0
  br i1 %.not31, label %bb.y, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.94) #18
  %.not32 = icmp eq i32 %i.i, 0
  br i1 %.not32, label %bb.y, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.95) #18
  %.not33 = icmp eq i32 %i.j, 0
  br i1 %.not33, label %bb.y, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.96) #18
  %.not34 = icmp eq i32 %i.k, 0
  br i1 %.not34, label %bb.y, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.97) #18
  %.not35 = icmp eq i32 %i.l, 0
  br i1 %.not35, label %bb.y, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.57) #18
  %.not36 = icmp eq i32 %i.m, 0
  br i1 %.not36, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.n = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.98) #18
  %.not37 = icmp eq i32 %i.n, 0
  br i1 %.not37, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.99) #18
  %.not38 = icmp eq i32 %i.o, 0
  br i1 %.not38, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.p = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.100) #18
  %.not39 = icmp eq i32 %i.p, 0
  br i1 %.not39, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.101) #18
  %.not40 = icmp eq i32 %i.q, 0
  br i1 %.not40, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.r = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.102) #18
  %.not41 = icmp eq i32 %i.r, 0
  br i1 %.not41, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.s = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.103) #18
  %.not42 = icmp eq i32 %i.s, 0
  br i1 %.not42, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.t = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.56) #18
  %.not43 = icmp eq i32 %i.t, 0
  br i1 %.not43, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.u = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.63) #18
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.v = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.64) #18
  %.not45 = icmp eq i32 %i.v, 0
  br i1 %.not45, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.w = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.28) #18
  %.not46 = icmp eq i32 %i.w, 0
  br i1 %.not46, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.x = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.55) #18
  %.not47 = icmp eq i32 %i.x, 0
  %. = select i1 %.not47, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2024), ptr null
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1936), %bb.w ], [ %., %bb.x ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1848), %bb.v ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1760), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1672), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1584), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1496), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1408), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1320), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1232), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1144), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1056), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 968), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #8

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @dt_iop_alloc_image_buffers(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @nlmeans_denoise(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nounwind
declare void @llvm.x86.sse.sfence() #18

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @backtransform(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #19 {
bb.a:
  %i.a = load float, ptr %4, align 4, !tbaa !16
  %i.b = load float, ptr %3, align 4, !tbaa !16
  %i.c = fdiv reassoc nsz arcp contract afn float %i.a, %i.b ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %i.c, %i.c
  %i.e = fadd reassoc nsz arcp contract afn float %i.d, 1.250000e-01 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !16
  %i.j = fdiv reassoc nsz arcp contract afn float %i.g, %i.i ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, %i.j
  %i.l = fadd reassoc nsz arcp contract afn float %i.k, 1.250000e-01 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !16
  %i.q = fdiv reassoc nsz arcp contract afn float %i.n, %i.p ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.q
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, 1.250000e-01 ; 2 uses
  %i.t = sext i32 %1 to i64
  %i.u = sext i32 %2 to i64
  %i.v = shl nsw i64 %i.t, 2
  %i.w = mul i64 %i.v, %i.u                       ; 4 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.y = add i64 %i.w, -4                         ; 2 uses
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  br i1 %min.iters.check, label %.preheader.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.ab = shl i64 %i.w, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.ab
  %scevgep48 = getelementptr i8, ptr %3, i64 16
  %bound0 = icmp ult ptr %0, %scevgep48
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader70, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ac = shl i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <8 x ptr> poison, ptr %i.x, i64 0
  %broadcast.splat = shufflevector <8 x ptr> %broadcast.splatinsert, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <8 x ptr> poison, ptr %3, i64 0
  %broadcast.splat50 = shufflevector <8 x ptr> %broadcast.splatinsert49, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <8 x float> poison, float %i.e, i64 0
  %broadcast.splat52 = shufflevector <8 x float> %broadcast.splatinsert51, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <8 x ptr> poison, ptr %i.h, i64 0
  %broadcast.splat54 = shufflevector <8 x ptr> %broadcast.splatinsert53, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert55 = insertelement <8 x float> poison, float %i.l, i64 0
  %broadcast.splat56 = shufflevector <8 x float> %broadcast.splatinsert55, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert57 = insertelement <8 x ptr> poison, ptr %i.o, i64 0
  %broadcast.splat58 = shufflevector <8 x ptr> %broadcast.splatinsert57, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert59 = insertelement <8 x float> poison, float %i.s, i64 0
  %broadcast.splat60 = shufflevector <8 x float> %broadcast.splatinsert59, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %wide.vec = load <32 x float>, ptr %i.ad, align 4, !tbaa !16, !alias.scope !394, !noalias !397 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec61 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 5 uses
  %strided.vec62 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 5 uses
  %strided.vec63 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 5 uses
  %i.ae = fcmp reassoc nsz arcp contract afn uge <8 x float> %strided.vec, splat (float 5.000000e-01) ; 2 uses
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %strided.vec ; 3 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat50, <8 x i1> %i.ae, <8 x float> poison), !tbaa !16, !alias.scope !397
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %i.af, splat (float 2.500000e-01)
  %i.ah = fdiv reassoc nsz arcp contract afn <8 x float> splat (float f0x3E9CC471), %strided.vec
  %5 = fmul reassoc nsz arcp contract afn <8 x float> %i.af, %strided.vec
  %6 = fdiv reassoc nsz arcp contract afn <8 x float> splat (float f0x3F43F58D), %5
  %i.ai = fdiv reassoc nsz arcp contract afn <8 x float> splat (float -1.375000e+00), %i.af
  %7 = fadd reassoc nsz arcp contract afn <8 x float> %i.ag, %i.ah
  %i.aj = fadd reassoc nsz arcp contract afn <8 x float> %7, %i.ai
  %i.ak = fadd reassoc nsz arcp contract afn <8 x float> %i.aj, %6
  %i.al = fsub reassoc nsz arcp contract afn <8 x float> %i.ak, %broadcast.splat52
  %i.am = fmul reassoc nsz arcp contract afn <8 x float> %i.al, %wide.masked.gather
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.ae, <8 x float> %i.am, <8 x float> zeroinitializer
  %i.an = fcmp reassoc nsz arcp contract afn uge <8 x float> %strided.vec61, splat (float 5.000000e-01) ; 2 uses
  %i.ao = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec61, %strided.vec61 ; 3 uses
  %wide.masked.gather64 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat54, <8 x i1> %i.an, <8 x float> poison), !tbaa !16, !alias.scope !397
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %i.ao, splat (float 2.500000e-01)
  %i.aq = fdiv reassoc nsz arcp contract afn <8 x float> splat (float f0x3E9CC471), %strided.vec61
  %8 = fmul reassoc nsz arcp contract afn <8 x float> %i.ao, %strided.vec61
  %9 = fdiv reassoc nsz arcp contract afn <8 x float> splat (float f0x3F43F58D), %8
  %i.ar = fdiv reassoc nsz arcp contract afn <8 x float> splat (float -1.375000e+00), %i.ao
  %10 = fadd reassoc nsz arcp contract afn <8 x float> %i.ap, %i.aq
  %i.as = fadd reassoc nsz arcp contract afn <8 x float> %10, %i.ar
  %i.at = fadd reassoc nsz arcp contract afn <8 x float> %i.as, %9
  %i.au = fsub reassoc nsz arcp contract afn <8 x float> %i.at, %broadcast.splat56
  %i.av = fmul reassoc nsz arcp contract afn <8 x float> %i.au, %wide.masked.gather64
  %predphi65 = select reassoc nsz arcp contract afn <8 x i1> %i.an, <8 x float> %i.av, <8 x float> zeroinitializer
  %i.aw = fcmp reassoc nsz arcp contract afn uge <8 x float> %strided.vec62, splat (float 5.000000e-01) ; 2 uses
  %i.ax = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec62, %strided.vec62 ; 3 uses
  %wide.masked.gather66 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat58, <8 x i1> %i.aw, <8 x float> poison), !tbaa !16, !alias.scope !397
  %i.ay = fmul reassoc nsz arcp contract afn <8 x float> %i.ax, splat (float 2.500000e-01)
  %i.az = fdiv reassoc nsz arcp contract afn <8 x float> splat (float f0x3E9CC471), %strided.vec62
  %11 = fmul reassoc nsz arcp contract afn <8 x float> %i.ax, %strided.vec62
  %12 = fdiv reassoc nsz arcp contract afn <8 x float> splat (float f0x3F43F58D), %11
  %i.ba = fdiv reassoc nsz arcp contract afn <8 x float> splat (float -1.375000e+00), %i.ax
  %13 = fadd reassoc nsz arcp contract afn <8 x float> %i.ay, %i.az
  %i.bb = fadd reassoc nsz arcp contract afn <8 x float> %13, %i.ba
  %i.bc = fadd reassoc nsz arcp contract afn <8 x float> %i.bb, %12
  %i.bd = fsub reassoc nsz arcp contract afn <8 x float> %i.bc, %broadcast.splat60
  %i.be = fmul reassoc nsz arcp contract afn <8 x float> %i.bd, %wide.masked.gather66
  %predphi67 = select reassoc nsz arcp contract afn <8 x i1> %i.aw, <8 x float> %i.be, <8 x float> zeroinitializer
  %i.bf = fcmp reassoc nsz arcp contract afn uge <8 x float> %strided.vec63, splat (float 5.000000e-01) ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec63, %strided.vec63 ; 3 uses
  %wide.masked.gather68 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat, <8 x i1> %i.bf, <8 x float> poison), !tbaa !16, !alias.scope !397
  %i.bh = fmul reassoc nsz arcp contract afn <8 x float> %i.bg, splat (float 2.500000e-01)
  %i.bi = fdiv reassoc nsz arcp contract afn <8 x float> splat (float f0x3E9CC471), %strided.vec63
  %14 = fmul reassoc nsz arcp contract afn <8 x float> %i.bg, %strided.vec63
  %15 = fdiv reassoc nsz arcp contract afn <8 x float> splat (float f0x3F43F58D), %14
  %i.bj = fdiv reassoc nsz arcp contract afn <8 x float> splat (float -1.375000e+00), %i.bg
  %16 = fadd reassoc nsz arcp contract afn <8 x float> %i.bh, %i.bi
  %i.bk = fadd reassoc nsz arcp contract afn <8 x float> %16, %i.bj
  %i.bl = fadd reassoc nsz arcp contract afn <8 x float> %i.bk, %15
  %i.bm = fmul reassoc nsz arcp contract afn <8 x float> %i.bl, %wide.masked.gather68
  %predphi69 = select reassoc nsz arcp contract afn <8 x i1> %i.bf, <8 x float> %i.bm, <8 x float> zeroinitializer
  %i.bn = shufflevector <8 x float> %predphi, <8 x float> %predphi65, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bo = shufflevector <8 x float> %predphi67, <8 x float> %predphi69, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bn, <16 x float> %i.bo, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ad, align 4, !tbaa !16, !alias.scope !394, !noalias !397
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.preheader.preheader70

.preheader.preheader70:                           ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %.042.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.preheader ], [ %i.ac, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader70, %bb.i
  %.042 = phi i64 [ %i.cz, %bb.i ], [ %.042.ph, %.preheader.preheader70 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.042 ; 5 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !16 ; 5 uses
  %i.bs = fcmp reassoc nsz arcp contract afn olt float %i.br, 5.000000e-01
  br i1 %i.bs, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %bb.i, %middle.block, %bb.a
  ret void

bb.b:                                             ; preds = %.preheader
  %i.bt = fmul reassoc nsz arcp contract afn float %i.br, %i.br ; 3 uses
  %i.bu = load float, ptr %3, align 4, !tbaa !16
  %17 = fmul reassoc nsz arcp contract afn float %i.bt, 2.500000e-01
  %18 = fdiv reassoc nsz arcp contract afn float f0x3E9CC471, %i.br
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bt, %i.br
  %19 = insertelement <2 x float> poison, float %i.bt, i64 0
  %20 = insertelement <2 x float> %19, float %i.bv, i64 1
  %21 = fdiv reassoc nsz arcp contract afn <2 x float> <float -1.375000e+00, float f0x3F43F58D>, %20 ; 2 uses
  %.neg40 = fadd reassoc nsz arcp contract afn float %17, %18
  %22 = extractelement <2 x float> %21, i64 0
  %23 = fadd reassoc nsz arcp contract afn float %.neg40, %22
  %24 = extractelement <2 x float> %21, i64 1
  %25 = fadd reassoc nsz arcp contract afn float %23, %24
  %i.bw = fsub reassoc nsz arcp contract afn float %25, %i.e
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bu
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.by = phi reassoc nsz arcp contract afn float [ %i.bx, %bb.b ], [ 0.000000e+00, %.preheader ]
  store float %i.by, ptr %i.bq, align 4, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !16 ; 5 uses
  %i.cb = fcmp reassoc nsz arcp contract afn olt float %i.ca, 5.000000e-01
  br i1 %i.cb, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cc = fmul reassoc nsz arcp contract afn float %i.ca, %i.ca ; 3 uses
  %i.cd = load float, ptr %i.h, align 4, !tbaa !16
  %26 = fmul reassoc nsz arcp contract afn float %i.cc, 2.500000e-01
  %27 = fdiv reassoc nsz arcp contract afn float f0x3E9CC471, %i.ca
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cc, %i.ca
  %28 = insertelement <2 x float> poison, float %i.cc, i64 0
  %29 = insertelement <2 x float> %28, float %i.ce, i64 1
  %30 = fdiv reassoc nsz arcp contract afn <2 x float> <float -1.375000e+00, float f0x3F43F58D>, %29 ; 2 uses
  %.neg40.1 = fadd reassoc nsz arcp contract afn float %26, %27
  %31 = extractelement <2 x float> %30, i64 0
  %32 = fadd reassoc nsz arcp contract afn float %.neg40.1, %31
  %33 = extractelement <2 x float> %30, i64 1
  %34 = fadd reassoc nsz arcp contract afn float %32, %33
  %i.cf = fsub reassoc nsz arcp contract afn float %34, %i.l
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.cd
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ch = phi reassoc nsz arcp contract afn float [ %i.cg, %bb.d ], [ 0.000000e+00, %bb.c ]
  store float %i.ch, ptr %i.bz, align 4, !tbaa !16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !16 ; 5 uses
  %i.ck = fcmp reassoc nsz arcp contract afn olt float %i.cj, 5.000000e-01
  br i1 %i.ck, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cl = fmul reassoc nsz arcp contract afn float %i.cj, %i.cj ; 3 uses
  %i.cm = load float, ptr %i.o, align 4, !tbaa !16
  %35 = fmul reassoc nsz arcp contract afn float %i.cl, 2.500000e-01
  %36 = fdiv reassoc nsz arcp contract afn float f0x3E9CC471, %i.cj
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cl, %i.cj
  %37 = insertelement <2 x float> poison, float %i.cl, i64 0
  %38 = insertelement <2 x float> %37, float %i.cn, i64 1
  %39 = fdiv reassoc nsz arcp contract afn <2 x float> <float -1.375000e+00, float f0x3F43F58D>, %38 ; 2 uses
  %.neg40.2 = fadd reassoc nsz arcp contract afn float %35, %36
  %40 = extractelement <2 x float> %39, i64 0
  %41 = fadd reassoc nsz arcp contract afn float %.neg40.2, %40
  %42 = extractelement <2 x float> %39, i64 1
  %43 = fadd reassoc nsz arcp contract afn float %41, %42
  %i.co = fsub reassoc nsz arcp contract afn float %43, %i.s
  %i.cp = fmul reassoc nsz arcp contract afn float %i.co, %i.cm
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cq = phi reassoc nsz arcp contract afn float [ %i.cp, %bb.f ], [ 0.000000e+00, %bb.e ]
  store float %i.cq, ptr %i.ci, align 4, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bq, i64 12 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !16 ; 5 uses
  %i.ct = fcmp reassoc nsz arcp contract afn olt float %i.cs, 5.000000e-01
  br i1 %i.ct, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cu = fmul reassoc nsz arcp contract afn float %i.cs, %i.cs ; 3 uses
  %i.cv = load float, ptr %i.x, align 4, !tbaa !16
  %44 = fmul reassoc nsz arcp contract afn float %i.cu, 2.500000e-01
  %45 = fdiv reassoc nsz arcp contract afn float f0x3E9CC471, %i.cs
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cu, %i.cs
  %46 = insertelement <2 x float> poison, float %i.cu, i64 0
  %47 = insertelement <2 x float> %46, float %i.cw, i64 1
  %48 = fdiv reassoc nsz arcp contract afn <2 x float> <float -1.375000e+00, float f0x3F43F58D>, %47 ; 2 uses
  %.neg40.3 = fadd reassoc nsz arcp contract afn float %44, %45
  %49 = extractelement <2 x float> %48, i64 0
  %50 = fadd reassoc nsz arcp contract afn float %.neg40.3, %49
  %51 = extractelement <2 x float> %48, i64 1
  %52 = fadd reassoc nsz arcp contract afn float %50, %51
  %i.cx = fmul reassoc nsz arcp contract afn float %52, %i.cv
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cy = phi reassoc nsz arcp contract afn float [ %i.cx, %bb.h ], [ 0.000000e+00, %bb.g ]
  store float %i.cy, ptr %i.cr, align 4, !tbaa !16
  %i.cz = add nuw i64 %.042, 4                    ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.w
  br i1 %i.da, label %.preheader, label %._crit_edge, !llvm.loop !400
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @backtransform_v2(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, ptr nofree noundef nonnull readonly captures(none) %4, float noundef %5, float noundef %6, ptr nofree noundef nonnull readonly captures(none) %7) unnamed_addr #19 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = sext i32 %2 to i64
  %i.c = load float, ptr %4, align 4, !tbaa !16   ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %i.c, 5.000000e-01
  %i.e = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.d
  %i.f = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.e ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = load <2 x float>, ptr %i.g, align 4, !tbaa !16 ; 2 uses
  %i.i = fmul reassoc nsz arcp contract afn <2 x float> %i.h, splat (float 5.000000e-01)
  %i.j = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.i
  %i.k = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.j ; 5 uses
  %i.l = shl nsw i64 %i.a, 2
  %i.m = mul i64 %i.l, %i.b                       ; 4 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.n = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.h
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %3) ; 2 uses
  %i.p = insertelement <2 x float> poison, float %i.o, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul reassoc nsz arcp contract afn <2 x float> %i.n, %i.q
  %i.s = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.c
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.o
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %i.t, 2.500000e-01 ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn <2 x float> %i.r, splat (float 2.500000e-01) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.y = add i64 %i.m, -4                         ; 2 uses
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  br i1 %min.iters.check, label %.lr.ph.preheader87, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ab = shl i64 %i.m, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.ab
  %scevgep67 = getelementptr i8, ptr %7, i64 16
  %bound0 = icmp ult ptr %0, %scevgep67
  %bound1 = icmp ult ptr %7, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader87, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ac = shl i64 %n.vec, 2
  %i.ad = load float, ptr %7, align 4, !tbaa !16, !alias.scope !401
  %broadcast.splatinsert79 = insertelement <8 x float> poison, float %i.ad, i64 0
  %i.ae = load float, ptr %i.v, align 4, !tbaa !16, !alias.scope !401
  %broadcast.splatinsert81 = insertelement <8 x float> poison, float %i.ae, i64 0
  %i.af = load float, ptr %i.w, align 4, !tbaa !16, !alias.scope !401
  %broadcast.splatinsert83 = insertelement <8 x float> poison, float %i.af, i64 0
  %i.ag = load float, ptr %i.x, align 4, !tbaa !16, !alias.scope !401
  %broadcast.splatinsert85 = insertelement <8 x float> poison, float %i.ag, i64 0
  %broadcast.splatinsert = insertelement <8 x float> poison, float %factor.op.fmul, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat69 = shufflevector <2 x float> %i.u, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat71 = shufflevector <2 x float> %i.u, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert72 = insertelement <8 x float> poison, float %6, i64 0
  %broadcast.splat73 = shufflevector <8 x float> %broadcast.splatinsert72, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert74 = insertelement <8 x float> poison, float %5, i64 0 ; 2 uses
  %i.ah = insertelement <4 x float> poison, float %i.f, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = extractelement <2 x float> %i.k, i64 0  ; 4 uses
  %i.ak = extractelement <2 x float> %i.k, i64 1  ; 4 uses
  %i.al = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> zeroinitializer
  %i.am = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.an = shufflevector <8 x float> %broadcast.splatinsert74, <8 x float> poison, <16 x i32> zeroinitializer
  %i.ao = shufflevector <8 x float> %broadcast.splatinsert79, <8 x float> %broadcast.splatinsert81, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.ap = shufflevector <8 x float> %broadcast.splatinsert74, <8 x float> poison, <16 x i32> zeroinitializer
  %i.aq = shufflevector <8 x float> %broadcast.splatinsert83, <8 x float> %broadcast.splatinsert85, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %wide.vec = load <32 x float>, ptr %i.ar, align 4, !tbaa !16, !alias.scope !404, !noalias !401 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec76 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 2 uses
  %strided.vec77 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %strided.vec78 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 2 uses
  %i.as = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec, zeroinitializer
  %i.at = select reassoc nsz arcp contract afn <8 x i1> %i.as, <8 x float> %strided.vec, <8 x float> zeroinitializer ; 3 uses
  %i.au = fmul reassoc nsz arcp contract afn <8 x float> %i.at, %i.at
  %i.av = fadd reassoc nsz arcp contract afn <8 x float> %i.au, %broadcast.splat73 ; 2 uses
  %i.aw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.av, zeroinitializer
  %i.ax = select reassoc nsz arcp contract afn <8 x i1> %i.aw, <8 x float> %i.av, <8 x float> zeroinitializer
  %i.ay = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ax)
  %i.az = fadd reassoc nsz arcp contract afn <8 x float> %i.ay, %i.at
  %i.ba = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.az ; 5 uses
  %i.bb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec76, zeroinitializer
  %i.bc = select reassoc nsz arcp contract afn <8 x i1> %i.bb, <8 x float> %strided.vec76, <8 x float> zeroinitializer ; 3 uses
  %i.bd = fmul reassoc nsz arcp contract afn <8 x float> %i.bc, %i.bc
  %i.be = fadd reassoc nsz arcp contract afn <8 x float> %i.bd, %broadcast.splat73 ; 2 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.be, zeroinitializer
  %i.bg = select reassoc nsz arcp contract afn <8 x i1> %i.bf, <8 x float> %i.be, <8 x float> zeroinitializer
  %i.bh = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bg)
  %i.bi = fadd reassoc nsz arcp contract afn <8 x float> %i.bh, %i.bc
  %i.bj = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat69, %i.bi ; 5 uses
  %i.bk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec77, zeroinitializer
  %i.bl = select reassoc nsz arcp contract afn <8 x i1> %i.bk, <8 x float> %strided.vec77, <8 x float> zeroinitializer ; 3 uses
  %i.bm = fmul reassoc nsz arcp contract afn <8 x float> %i.bl, %i.bl
  %i.bn = fadd reassoc nsz arcp contract afn <8 x float> %i.bm, %broadcast.splat73 ; 2 uses
  %i.bo = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bn, zeroinitializer
  %i.bp = select reassoc nsz arcp contract afn <8 x i1> %i.bo, <8 x float> %i.bn, <8 x float> zeroinitializer
  %i.bq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bp)
  %i.br = fadd reassoc nsz arcp contract afn <8 x float> %i.bq, %i.bl
  %i.bs = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat71, %i.br ; 5 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec78, zeroinitializer
  %i.bu = select reassoc nsz arcp contract afn <8 x i1> %i.bt, <8 x float> %strided.vec78, <8 x float> zeroinitializer ; 3 uses
  %i.bv = fmul reassoc nsz arcp contract afn <8 x float> %i.bu, %i.bu
  %i.bw = fadd reassoc nsz arcp contract afn <8 x float> %i.bv, %broadcast.splat73 ; 2 uses
  %i.bx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bw, zeroinitializer
  %i.by = select reassoc nsz arcp contract afn <8 x i1> %i.bx, <8 x float> %i.bw, <8 x float> zeroinitializer
  %i.bz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.by)
  %i.ca = fadd reassoc nsz arcp contract afn <8 x float> %i.bz, %i.bu
  %i.cb = extractelement <8 x float> %i.ba, i64 0
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cb, float %i.f)
  %i.cd = extractelement <8 x float> %i.ba, i64 1
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cd, float %i.f)
  %i.cf = extractelement <8 x float> %i.ba, i64 2
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cf, float %i.f)
  %i.ch = shufflevector <8 x float> %i.ba, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ci = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.ch, <4 x float> %i.ai)
  %i.cj = extractelement <8 x float> %i.ba, i64 7
  %i.ck = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cj, float %i.f)
  %i.cl = insertelement <8 x float> poison, float %i.cc, i64 0
  %i.cm = insertelement <8 x float> %i.cl, float %i.ce, i64 1
  %i.cn = insertelement <8 x float> %i.cm, float %i.cg, i64 2
  %i.co = shufflevector <4 x float> %i.ci, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cp = shufflevector <8 x float> %i.cn, <8 x float> %i.co, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.cq = insertelement <8 x float> %i.cp, float %i.ck, i64 7
  %i.cr = extractelement <8 x float> %i.bj, i64 0
  %i.cs = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cr, float %i.aj)
  %i.ct = extractelement <8 x float> %i.bj, i64 1
  %i.cu = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ct, float %i.aj)
  %i.cv = extractelement <8 x float> %i.bj, i64 2
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cv, float %i.aj)
  %i.cx = shufflevector <8 x float> %i.bj, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cy = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.cx, <4 x float> %i.al)
  %i.cz = extractelement <8 x float> %i.bj, i64 7
  %i.da = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cz, float %i.aj)
  %i.db = insertelement <8 x float> poison, float %i.cs, i64 0
  %i.dc = insertelement <8 x float> %i.db, float %i.cu, i64 1
  %i.dd = insertelement <8 x float> %i.dc, float %i.cw, i64 2
  %i.de = shufflevector <4 x float> %i.cy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.df = shufflevector <8 x float> %i.dd, <8 x float> %i.de, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.dg = insertelement <8 x float> %i.df, float %i.da, i64 7
  %i.dh = extractelement <8 x float> %i.bs, i64 0
  %i.di = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dh, float %i.ak)
  %i.dj = extractelement <8 x float> %i.bs, i64 1
  %i.dk = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dj, float %i.ak)
  %i.dl = extractelement <8 x float> %i.bs, i64 2
  %i.dm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dl, float %i.ak)
  %i.dn = shufflevector <8 x float> %i.bs, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.do = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.dn, <4 x float> %i.am)
  %i.dp = extractelement <8 x float> %i.bs, i64 7
  %i.dq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dp, float %i.ak)
  %i.dr = insertelement <8 x float> poison, float %i.di, i64 0
  %i.ds = insertelement <8 x float> %i.dr, float %i.dk, i64 1
  %i.dt = insertelement <8 x float> %i.ds, float %i.dm, i64 2
  %i.du = shufflevector <4 x float> %i.do, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <8 x float> %i.dt, <8 x float> %i.du, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.dw = insertelement <8 x float> %i.dv, float %i.dq, i64 7
  %i.dx = shufflevector <8 x float> %i.cq, <8 x float> %i.dg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dy = fsub reassoc nsz arcp contract afn <16 x float> %i.dx, %i.an
  %i.dz = fmul reassoc nsz arcp contract afn <16 x float> %i.dy, %i.ao
  %i.ea = shufflevector <8 x float> %i.dw, <8 x float> %i.ca, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eb = fsub reassoc nsz arcp contract afn <16 x float> %i.ea, %i.ap
  %i.ec = fmul reassoc nsz arcp contract afn <16 x float> %i.eb, %i.aq
  %interleaved.vec = shufflevector <16 x float> %i.dz, <16 x float> %i.ec, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ar, align 4, !tbaa !16, !alias.scope !404, !noalias !401
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !406

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader87

.lr.ph.preheader87:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.04450.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %i.ee = insertelement <4 x float> poison, float %6, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph
end_hunk_0
begin_hunk_1_@dt_iop_denoiseprofile_get_params:bb.a
  %i.n = fmul reassoc nsz arcp contract afn <4 x double> %i.l, %i.m
  %i.o = insertelement <4 x double> poison, double %i.e, i64 0
  %i.p = shufflevector <4 x double> %i.o, <4 x double> poison, <4 x i32> zeroinitializer
  %i.q = fdiv reassoc nsz arcp contract afn <4 x double> %i.n, %i.p
  %i.r = fptrunc <4 x double> %i.q to <4 x float>
  %i.s = tail call reassoc nsz arcp contract afn <4 x float> @llvm.exp.v4f32(<4 x float> %i.r) ; 2 uses
  %i.t = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.s
  %i.u = load <4 x float>, ptr %i.g, align 4, !tbaa !16
  %i.v = fmul reassoc nsz arcp contract afn <4 x float> %i.t, %i.u
  %i.w = fpext <4 x float> %i.v to <4 x double>
  %i.x = fpext <4 x float> %i.s to <4 x double>
  %i.y = insertelement <4 x double> poison, double %3, i64 0
  %i.z = shufflevector <4 x double> %i.y, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aa = fmul reassoc nsz arcp contract afn <4 x double> %i.z, %i.x
  %i.ab = fadd reassoc nsz arcp contract afn <4 x double> %i.aa, %i.w
  %i.ac = fptrunc <4 x double> %i.ab to <4 x float>
  store <4 x float> %i.ac, ptr %i.g, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.af = load <2 x float>, ptr %i.ad, align 4, !tbaa !16
  %i.ag = fpext <2 x float> %i.af to <2 x double>
  %i.ah = insertelement <2 x double> poison, double %2, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fsub reassoc nsz arcp contract afn <2 x double> %i.ai, %i.ag ; 2 uses
  %i.ak = fneg reassoc nsz arcp contract afn <2 x double> %i.aj
  %i.al = fmul reassoc nsz arcp contract afn <2 x double> %i.aj, %i.ak
  %i.am = insertelement <2 x double> poison, double %i.e, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fdiv reassoc nsz arcp contract afn <2 x double> %i.al, %i.an
  %i.ap = fptrunc <2 x double> %i.ao to <2 x float>
  %i.aq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.ap) ; 2 uses
  %i.ar = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aq
  %i.as = load <2 x float>, ptr %i.ae, align 4, !tbaa !16
  %i.at = fmul reassoc nsz arcp contract afn <2 x float> %i.ar, %i.as
  %i.au = fpext <2 x float> %i.at to <2 x double>
  %i.av = fpext <2 x float> %i.aq to <2 x double>
  %i.aw = insertelement <2 x double> poison, double %3, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fmul reassoc nsz arcp contract afn <2 x double> %i.ax, %i.av
  %i.az = fadd reassoc nsz arcp contract afn <2 x double> %i.ay, %i.au
  %i.ba = fptrunc <2 x double> %i.az to <2 x float>
  store <2 x float> %i.ba, ptr %i.ae, align 4, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !16
  %i.bd = fpext reassoc nsz arcp contract afn float %i.bc to double
  %i.be = fsub reassoc nsz arcp contract afn double %2, %i.bd ; 2 uses
  %i.bf = fneg reassoc nsz arcp contract afn double %i.be
  %i.bg = fmul reassoc nsz arcp contract afn double %i.be, %i.bf
  %i.bh = fdiv reassoc nsz arcp contract afn double %i.bg, %i.e
  %i.bi = fptrunc reassoc nsz arcp contract afn double %i.bh to float
  %i.bj = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.bi) ; 2 uses
  %i.bk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !16
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bk, %i.bm
  %i.bo = fpext reassoc nsz arcp contract afn float %i.bn to double
  %i.bp = fpext reassoc nsz arcp contract afn float %i.bj to double
  %i.bq = fmul reassoc nsz arcp contract afn double %3, %i.bp
  %i.br = fadd reassoc nsz arcp contract afn double %i.bq, %i.bo
  %i.bs = fptrunc reassoc nsz arcp contract afn double %i.br to float
  store float %i.bs, ptr %i.bl, align 4, !tbaa !16
  ret void
}

declare void @cairo_save(ptr noundef) local_unnamed_addr #5

declare void @cairo_set_operator(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #5

declare void @cairo_restore(ptr noundef) local_unnamed_addr #5

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #5

declare void @pango_font_description_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @pango_font_description_set_absolute_size(ptr noundef, double noundef) local_unnamed_addr #5

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #5

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @cairo_rotate(ptr noundef, double noundef) local_unnamed_addr #5

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #5

declare void @g_object_unref(ptr noundef) local_unnamed_addr #5

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #5

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #5

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #8

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @interpolate_set(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare float @interpolate_val(i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @dt_gui_ignore_scroll(ptr noundef) local_unnamed_addr #5

declare i32 @gtk_widget_event(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @dt_gui_get_scroll_unit_delta(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #5

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #5

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #5

declare void @gtk_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @g_free(ptr noundef) local_unnamed_addr #5

declare i32 @dt_bauhaus_combobox_get(ptr noundef) local_unnamed_addr #5

declare ptr @g_list_nth_data(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.powi.f32.i32(float, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.pow.v2f32(<2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.pow.v4f32(<4 x float>, <4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.sqrt.v32f32(<32 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.maxnum.v32f32(<32 x float>, <32 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nounwind }
attributes #19 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 32}
!12 = !{!"dt_iop_denoiseprofile_params_v1_t", !13, i64 0, !13, i64 4, !9, i64 8, !9, i64 20, !8, i64 32}
!13 = !{!"float", !9, i64 0}
!14 = !{!15, !8, i64 32}
!15 = !{!"dt_iop_denoiseprofile_params_v4_t", !13, i64 0, !13, i64 4, !9, i64 8, !9, i64 20, !8, i64 32, !9, i64 36, !9, i64 116}
!16 = !{!13, !13, i64 0}
!17 = !{!18, !24, i64 664}
!18 = !{!"dt_iop_module_t", !8, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !19, i64 144, !19, i64 152, !19, i64 160, !19, i64 168, !19, i64 176, !19, i64 184, !19, i64 192, !19, i64 200, !19, i64 208, !19, i64 216, !19, i64 224, !19, i64 232, !19, i64 240, !19, i64 248, !19, i64 256, !19, i64 264, !19, i64 272, !19, i64 280, !19, i64 288, !19, i64 296, !19, i64 304, !19, i64 312, !19, i64 320, !19, i64 328, !19, i64 336, !19, i64 344, !19, i64 352, !19, i64 360, !19, i64 368, !19, i64 376, !19, i64 384, !19, i64 392, !19, i64 400, !19, i64 408, !19, i64 416, !19, i64 424, !19, i64 432, !19, i64 440, !20, i64 448, !9, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !9, i64 512, !9, i64 528, !9, i64 544, !9, i64 560, !9, i64 576, !9, i64 592, !21, i64 608, !22, i64 616, !9, i64 640, !8, i64 656, !8, i64 660, !24, i64 664, !8, i64 672, !8, i64 676, !19, i64 680, !19, i64 688, !8, i64 696, !19, i64 704, !25, i64 712, !19, i64 752, !19, i64 760, !26, i64 768, !26, i64 776, !19, i64 784, !27, i64 792, !32, i64 824, !32, i64 832, !32, i64 840, !32, i64 848, !32, i64 856, !32, i64 864, !32, i64 872, !8, i64 880, !32, i64 888, !32, i64 896, !32, i64 904, !33, i64 912, !33, i64 920, !32, i64 928, !32, i64 936, !8, i64 944, !34, i64 952, !8, i64 960, !9, i64 964, !8, i64 1092, !32, i64 1096, !19, i64 1104, !8, i64 1112}
!19 = !{!"any pointer", !9, i64 0}
!20 = !{!"p1 _ZTS8_GModule", !19, i64 0}
!21 = !{!"p1 int", !19, i64 0}
!22 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !23, i64 8, !8, i64 16, !8, i64 20}
!23 = !{!"long", !9, i64 0}
!24 = !{!"p1 _ZTS12dt_develop_t", !19, i64 0}
!25 = !{!"dt_pthread_mutex_t", !9, i64 0}
!26 = !{!"p1 _ZTS25dt_develop_blend_params_t", !19, i64 0}
!27 = !{!"", !28, i64 0, !30, i64 16}
!28 = !{!"", !29, i64 0, !29, i64 8}
!29 = !{!"p1 _ZTS11_GHashTable", !19, i64 0}
!30 = !{!"", !31, i64 0, !8, i64 8}
!31 = !{!"p1 _ZTS15dt_iop_module_t", !19, i64 0}
!32 = !{!"p1 _ZTS10_GtkWidget", !19, i64 0}
!33 = !{!"p1 _ZTS7_GSList", !19, i64 0}
!34 = !{!"p1 _ZTS18dt_iop_module_so_t", !19, i64 0}
!35 = !{!36}
!36 = distinct !{!36, !37, !"dt_iop_denoiseprofile_get_auto_profile: argument 0"}
!37 = distinct !{!37, !"dt_iop_denoiseprofile_get_auto_profile"}
!38 = !{i64 0, i64 8, !39, i64 8, i64 8, !39, i64 16, i64 8, !39, i64 24, i64 4, !41, i64 32, i64 16, !42, i64 48, i64 16, !42}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 omnipotent char", !19, i64 0}
!41 = !{!8, !8, i64 0}
!42 = !{!9, !9, i64 0}
!43 = !{!44, !13, i64 132}
!44 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !19, i64 16, !45, i64 24, !45, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !45, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !31, i64 88, !46, i64 96, !47, i64 112, !8, i64 2000, !8, i64 2004, !25, i64 2008, !8, i64 2048, !55, i64 2056, !8, i64 2064, !31, i64 2072, !8, i64 2080, !55, i64 2088, !55, i64 2096, !8, i64 2104, !55, i64 2112, !55, i64 2120, !21, i64 2128, !21, i64 2136, !8, i64 2144, !8, i64 2148, !55, i64 2152, !57, i64 2160, !58, i64 2168, !55, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !13, i64 2196, !13, i64 2200, !31, i64 2208, !8, i64 2216, !59, i64 2224, !64, i64 2384, !65, i64 2496, !66, i64 2520, !67, i64 2560, !68, i64 2592, !69, i64 2608, !70, i64 2624, !32, i64 2664, !32, i64 2672, !71, i64 2680, !71, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !55, i64 2904, !8, i64 2912, !24, i64 2920}
!45 = !{!"double", !9, i64 0}
!46 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !19, i64 0}
!47 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !8, i64 40, !9, i64 44, !9, i64 108, !9, i64 172, !9, i64 300, !9, i64 364, !9, i64 428, !9, i64 492, !23, i64 560, !8, i64 568, !9, i64 572, !9, i64 800, !9, i64 864, !9, i64 928, !9, i64 992, !8, i64 1120, !9, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !13, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !23, i64 1448, !23, i64 1456, !23, i64 1464, !23, i64 1472, !8, i64 1480, !48, i64 1488, !9, i64 1616, !40, i64 1656, !8, i64 1664, !8, i64 1668, !52, i64 1672, !53, i64 1680, !54, i64 1704, !50, i64 1736, !9, i64 1738, !8, i64 1748, !8, i64 1752, !13, i64 1756, !13, i64 1760, !9, i64 1776, !9, i64 1792, !9, i64 1840, !55, i64 1856, !56, i64 1864, !8, i64 1872, !8, i64 1876}
!48 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !49, i64 48, !51, i64 64, !9, i64 96, !8, i64 112}
!49 = !{!"", !50, i64 0, !50, i64 2}
!50 = !{!"short", !9, i64 0}
!51 = !{!"", !8, i64 0, !9, i64 16}
!52 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!53 = !{!"dt_image_geoloc_t", !45, i64 0, !45, i64 8, !45, i64 16}
!54 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16}
!55 = !{!"p1 _ZTS6_GList", !19, i64 0}
!56 = !{!"p1 _ZTS16dt_cache_entry_t", !19, i64 0}
!57 = !{!"p1 _ZTS15dt_masks_form_t", !19, i64 0}
!58 = !{!"p1 _ZTS19dt_masks_form_gui_t", !19, i64 0}
!59 = !{!"", !60, i64 0, !31, i64 40, !61, i64 48, !63, i64 120}
!60 = !{!"dt_dev_proxy_exposure_t", !31, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32}
!61 = !{!"", !62, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64}
!62 = !{!"p1 _ZTS15dt_lib_module_t", !19, i64 0}
!63 = !{!"", !62, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32}
!64 = !{!"dt_dev_chroma_t", !31, i64 0, !31, i64 8, !9, i64 16, !9, i64 32, !9, i64 64, !8, i64 96}
!65 = !{!"", !31, i64 0, !31, i64 8, !19, i64 16}
!66 = !{!"", !32, i64 0, !32, i64 8, !8, i64 16, !8, i64 20, !13, i64 24, !13, i64 28, !8, i64 32}
!67 = !{!"", !32, i64 0, !32, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !13, i64 28}
!68 = !{!"", !32, i64 0, !32, i64 8}
!69 = !{!"", !32, i64 0, !8, i64 8}
!70 = !{!"", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32}
!71 = !{!"dt_dev_viewport_t", !32, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !46, i64 80, !32, i64 88, !24, i64 96}
!72 = !{!73, !19, i64 0}
!73 = !{!"_GList", !19, i64 0, !55, i64 8, !55, i64 16}
!74 = !{!75, !8, i64 24}
!75 = !{!"dt_noiseprofile_t", !40, i64 0, !40, i64 8, !40, i64 16, !8, i64 24, !9, i64 32, !9, i64 48}
!76 = !{!73, !55, i64 8}
!77 = !{!15, !13, i64 0}
!78 = !{!79, !13, i64 0}
!79 = !{!"dt_iop_denoiseprofile_params_v5_t", !13, i64 0, !13, i64 4, !13, i64 8, !9, i64 12, !9, i64 24, !8, i64 36, !9, i64 40, !9, i64 120}
!80 = !{!15, !13, i64 4}
!81 = !{!79, !13, i64 8}
!82 = !{!79, !8, i64 36}
!83 = !{!79, !13, i64 4}
!84 = !{!85, !13, i64 8}
!85 = !{!"dt_iop_denoiseprofile_params_v6_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !9, i64 16, !9, i64 28, !8, i64 40, !9, i64 44, !9, i64 124}
!86 = !{!85, !8, i64 40}
!87 = !{!85, !13, i64 12}
!88 = !{!89, !8, i64 44}
!89 = !{!"dt_iop_denoiseprofile_params_v7_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !9, i64 20, !9, i64 32, !8, i64 44, !9, i64 48, !9, i64 128, !8, i64 208, !8, i64 212}
!90 = !{!89, !13, i64 16}
!91 = !{!89, !8, i64 212}
!92 = !{!89, !8, i64 208}
!93 = !{!89, !13, i64 8}
!94 = !{!95, !13, i64 8}
!95 = !{!"dt_iop_denoiseprofile_params_v8_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !9, i64 32, !9, i64 44, !8, i64 56, !9, i64 60, !9, i64 140, !8, i64 220, !8, i64 224, !8, i64 228}
!96 = !{!95, !8, i64 56}
!97 = !{!95, !8, i64 228}
!98 = !{!95, !13, i64 28}
!99 = !{!100, !8, i64 56}
!100 = !{!"dt_iop_denoiseprofile_params_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !9, i64 32, !9, i64 44, !8, i64 56, !9, i64 60, !9, i64 228, !8, i64 396, !8, i64 400, !8, i64 404, !8, i64 408, !8, i64 412}
!101 = !{!100, !8, i64 404}
!102 = !{!18, !19, i64 688}
!103 = !{i64 0, i64 4, !16, i64 4, i64 4, !16, i64 8, i64 4, !16, i64 12, i64 4, !16, i64 16, i64 4, !16, i64 20, i64 4, !16, i64 24, i64 4, !16, i64 28, i64 4, !16, i64 32, i64 12, !42, i64 44, i64 12, !42, i64 56, i64 4, !41, i64 60, i64 168, !42, i64 228, i64 168, !42, i64 396, i64 4, !41, i64 400, i64 4, !41, i64 404, i64 4, !41, i64 408, i64 4, !41, i64 412, i64 4, !41}
!104 = !{!100, !8, i64 408}
!105 = !{!100, !13, i64 8}
!106 = !{!75, !40, i64 0}
!107 = !{!47, !13, i64 36}
!108 = !{!19, !19, i64 0}
!109 = !{!110, !8, i64 412}
!110 = !{!"dt_iop_denoiseprofile_params_v12_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !9, i64 32, !9, i64 44, !8, i64 56, !9, i64 60, !9, i64 228, !8, i64 396, !8, i64 400, !8, i64 404, !8, i64 408, !8, i64 412}
!111 = !{!100, !13, i64 16}
!112 = !{!100, !8, i64 412}
!113 = !{!114, !19, i64 16}
!114 = !{!"dt_dev_pixelpipe_iop_t", !31, i64 0, !46, i64 8, !19, i64 16, !19, i64 24, !8, i64 32, !8, i64 36, !115, i64 40, !21, i64 56, !22, i64 64, !9, i64 88, !13, i64 104, !8, i64 108, !8, i64 112, !23, i64 120, !8, i64 128, !8, i64 132, !117, i64 136, !117, i64 156, !117, i64 176, !117, i64 196, !8, i64 216, !8, i64 220, !48, i64 224, !48, i64 352, !9, i64 480, !8, i64 516, !29, i64 520, !118, i64 528, !118, i64 576}
!115 = !{!"dt_dev_histogram_collection_params_t", !116, i64 0, !8, i64 8}
!116 = !{!"p1 _ZTS18dt_histogram_roi_t", !19, i64 0}
!117 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !13, i64 16}
!118 = !{!"dt_dev_distorted_mask_cache_t", !119, i64 0, !117, i64 8, !23, i64 32, !23, i64 40}
!119 = !{!"p1 float", !19, i64 0}
!120 = !{!121, !8, i64 24}
!121 = !{!"dt_develop_tiling_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !8, i64 16, !8, i64 20, !8, i64 24}
!122 = !{!121, !8, i64 16}
!123 = !{!100, !13, i64 0}
!124 = !{!117, !13, i64 16}
!125 = !{!114, !13, i64 104}
!126 = !{!100, !13, i64 4}
!127 = !{!100, !13, i64 20}
!128 = !{!121, !13, i64 8}
!129 = !{!121, !13, i64 0}
!130 = !{!121, !13, i64 4}
!131 = !{!121, !8, i64 20}
!132 = !{!114, !31, i64 0}
!133 = !{!114, !8, i64 132}
!134 = !{!135, !13, i64 0}
!135 = !{!"dt_iop_denoiseprofile_data_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !9, i64 32, !9, i64 44, !8, i64 56, !9, i64 64, !8, i64 112, !9, i64 116, !8, i64 284, !8, i64 288, !8, i64 292, !8, i64 296}
!136 = !{!135, !13, i64 4}
!137 = !{!135, !13, i64 20}
!138 = !{!114, !46, i64 8}
!139 = !{!140, !8, i64 644}
!140 = !{!"dt_dev_pixelpipe_t", !141, i64 0, !8, i64 120, !23, i64 128, !119, i64 136, !8, i64 144, !8, i64 148, !13, i64 152, !8, i64 156, !8, i64 160, !48, i64 176, !145, i64 304, !145, i64 312, !145, i64 320, !145, i64 328, !55, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !40, i64 360, !23, i64 368, !8, i64 376, !8, i64 380, !13, i64 384, !9, i64 388, !23, i64 416, !25, i64 424, !25, i64 464, !25, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !146, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !9, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !47, i64 656, !8, i64 2544, !40, i64 2552, !8, i64 2560, !55, i64 2568, !55, i64 2576, !55, i64 2584, !8, i64 2592, !119, i64 2600, !23, i64 2608, !9, i64 2616, !9, i64 2632}
!141 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !23, i64 8, !23, i64 16, !142, i64 24, !143, i64 32, !144, i64 40, !143, i64 48, !21, i64 56, !21, i64 64, !23, i64 72, !8, i64 80, !23, i64 88, !23, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!142 = !{!"any p2 pointer", !19, i64 0}
!143 = !{!"p1 long", !19, i64 0}
!144 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !19, i64 0}
!145 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !19, i64 0}
!146 = !{!"dt_dev_detail_mask_t", !117, i64 0, !23, i64 24, !119, i64 32}
!147 = !{!148, !24, i64 64}
!148 = !{!"darktable_t", !149, i64 0, !8, i64 4, !8, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !150, i64 48, !151, i64 56, !24, i64 64, !152, i64 72, !153, i64 80, !154, i64 88, !155, i64 96, !156, i64 104, !157, i64 112, !158, i64 120, !159, i64 128, !160, i64 136, !161, i64 144, !162, i64 152, !163, i64 160, !164, i64 168, !165, i64 176, !166, i64 184, !167, i64 192, !168, i64 200, !169, i64 208, !170, i64 216, !171, i64 224, !9, i64 232, !25, i64 2792, !25, i64 2832, !25, i64 2872, !25, i64 2912, !25, i64 2952, !25, i64 2992, !40, i64 3032, !40, i64 3040, !40, i64 3048, !40, i64 3056, !40, i64 3064, !40, i64 3072, !40, i64 3080, !40, i64 3088, !40, i64 3096, !40, i64 3104, !40, i64 3112, !40, i64 3120, !40, i64 3128, !172, i64 3136, !55, i64 3288, !45, i64 3296, !55, i64 3304, !8, i64 3312, !9, i64 3316, !8, i64 3512, !8, i64 3516, !179, i64 3520, !180, i64 3528, !181, i64 3536, !182, i64 3576, !183, i64 3600, !184, i64 3632, !8, i64 3672}
!149 = !{!"dt_codepath_t", !8, i64 0}
!150 = !{!"p1 _ZTS11_JsonParser", !19, i64 0}
!151 = !{!"p1 _ZTS9dt_conf_t", !19, i64 0}
!152 = !{!"p1 _ZTS8dt_lib_t", !19, i64 0}
!153 = !{!"p1 _ZTS17dt_view_manager_t", !19, i64 0}
!154 = !{!"p1 _ZTS12dt_control_t", !19, i64 0}
!155 = !{!"p1 _ZTS19dt_control_signal_t", !19, i64 0}
!156 = !{!"p1 _ZTS12dt_gui_gtk_t", !19, i64 0}
!157 = !{!"p1 _ZTS17dt_mipmap_cache_t", !19, i64 0}
!158 = !{!"p1 _ZTS16dt_image_cache_t", !19, i64 0}
!159 = !{!"p1 _ZTS12dt_bauhaus_t", !19, i64 0}
!160 = !{!"p1 _ZTS13dt_database_t", !19, i64 0}
end_hunk_1
