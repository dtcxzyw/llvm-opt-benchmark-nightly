Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_pcm_interleave_s32:bb.a
  %i.ad = add nuw i64 %.014.i4, 1                 ; 2 uses
  %exitcond7.not = icmp eq i64 %i.ad, %2
  br i1 %exitcond7.not, label %ma_pcm_interleave_s32__reference.exit, label %.preheader, !llvm.loop !1565

ma_pcm_interleave_s32__reference.exit:            ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ma_pcm_deinterleave_s32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #26 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %ma_pcm_deinterleave_s32__reference.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not5 = icmp eq i32 %3, 0
  %i.a = zext i32 %3 to i64                       ; 3 uses
  br i1 %.not5, label %ma_pcm_deinterleave_s32__reference.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter = and i64 %i.a, 3                     ; 3 uses
  %i.b = icmp ult i32 %3, 4
  %unroll_iter = and i64 %i.a, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.014.i4 = phi i64 [ %i.ad, %._crit_edge ], [ 0, %.preheader.preheader ] ; 7 uses
  %i.c = mul i64 %.014.i4, %i.a
  %i.d = getelementptr [4 x i8], ptr %1, i64 %i.c ; 5 uses
  br i1 %i.b, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !118
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !131
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.014.i4
  store i32 %i.f, ptr %i.i, align 4, !tbaa !118
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.k = load i32, ptr %i.j, align 4, !tbaa !118
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.014.i4
  store i32 %i.k, ptr %i.n, align 4, !tbaa !118
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.p = load i32, ptr %i.o, align 4, !tbaa !118
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !131
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.014.i4
  store i32 %i.p, ptr %i.s, align 4, !tbaa !118
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.t = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.u = load i32, ptr %i.t, align 4, !tbaa !118
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !131
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.014.i4
  store i32 %i.u, ptr %i.x, align 4, !tbaa !118
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !1566

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.y = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.epil
  %i.z = load i32, ptr %i.y, align 4, !tbaa !118
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !131
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.014.i4
  store i32 %i.z, ptr %i.ac, align 4, !tbaa !118
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !1567

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %i.ad = add nuw i64 %.014.i4, 1                 ; 2 uses
  %exitcond7.not = icmp eq i64 %i.ad, %2
  br i1 %exitcond7.not, label %ma_pcm_deinterleave_s32__reference.exit, label %.preheader, !llvm.loop !1568

ma_pcm_deinterleave_s32__reference.exit:          ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ma_pcm_f32_to_u8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #23 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %ma_pcm_f32_to_u8__reference.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %g_maLCG.promoted = load i32, ptr @g_maLCG.0, align 4 ; 2 uses
  switch i32 %3, label %ma_dither_f32.exit.preheader [
    i32 1, label %ma_dither_f32.exit.us
    i32 2, label %ma_dither_f32.exit.us11
  ]

ma_dither_f32.exit.preheader:                     ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %ma_dither_f32.exit.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %ma_dither_f32.exit.preheader
  %i.a = getelementptr i8, ptr %0, i64 %2
  %i.b = shl i64 %2, 2
  %i.c = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %i.c
  %bound1 = icmp ult ptr %1, %i.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %ma_dither_f32.exit.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x float>, ptr %i.d, align 4, !tbaa !349, !alias.scope !1575 ; 2 uses
  %i.e = fcmp olt <4 x float> %wide.load, splat (float -1.000000e+00)
  %i.f = fadd <4 x float> %wide.load, zeroinitializer ; 2 uses
  %i.g = fcmp ogt <4 x float> %i.f, splat (float 1.000000e+00)
  %i.h = select <4 x i1> %i.g, <4 x float> splat (float 1.000000e+00), <4 x float> %i.f
  %i.i = fadd <4 x float> %i.h, splat (float 1.000000e+00)
  %i.j = fmul <4 x float> %i.i, splat (float 1.275000e+02)
  %i.k = fptoui <4 x float> %i.j to <4 x i8>
  %predphi = select <4 x i1> %i.e, <4 x i8> zeroinitializer, <4 x i8> %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <4 x i8> %predphi, ptr %i.l, align 1, !tbaa !119, !alias.scope !1576, !noalias !1575
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1572

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %ma_pcm_f32_to_u8__reference.exit, label %ma_dither_f32.exit.preheader28

ma_dither_f32.exit.preheader28:                   ; preds = %vector.memcheck, %ma_dither_f32.exit.preheader, %middle.block
  %.020.i8.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %ma_dither_f32.exit.preheader ], [ %n.vec, %middle.block ]
  br label %ma_dither_f32.exit

ma_dither_f32.exit.us:                            ; preds = %.lr.ph, %bb.c
  %.020.i8.us = phi i64 [ %i.af, %bb.c ], [ 0, %.lr.ph ] ; 3 uses
  %i.n = phi i32 [ %i.r, %bb.c ], [ %g_maLCG.promoted, %.lr.ph ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.020.i8.us
  %i.p = load float, ptr %i.o, align 4, !tbaa !349
  %i.q = mul i32 %i.n, 48271
  %i.r = urem i32 %i.q, 2147483647                ; 3 uses
  %i.s = uitofp nneg i32 %i.r to double
  %i.t = fdiv double %i.s, f0x41DFFFFFFFC00000
  %i.u = fptrunc double %i.t to float
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float f0x3C808102, float -7.812500e-03)
  %i.w = fadd float %i.p, %i.v                    ; 3 uses
  %i.x = fcmp olt float %i.w, -1.000000e+00
  br i1 %i.x, label %bb.c, label %bb.b

bb.b:                                             ; preds = %ma_dither_f32.exit.us
  %i.y = fcmp ogt float %i.w, 1.000000e+00
  %i.z = select i1 %i.y, float 1.000000e+00, float %i.w
  %i.aa = fadd float %i.z, 1.000000e+00
  %i.ab = fmul float %i.aa, 1.275000e+02
  %i.ac = fptoui float %i.ab to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %ma_dither_f32.exit.us
  %i.ad = phi i8 [ %i.ac, %bb.b ], [ 0, %ma_dither_f32.exit.us ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i8.us
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !119
  %i.af = add nuw i64 %.020.i8.us, 1              ; 2 uses
  %exitcond15.not = icmp eq i64 %i.af, %2
  br i1 %exitcond15.not, label %ma_pcm_f32_to_u8__reference.exit.sink.split, label %ma_dither_f32.exit.us, !llvm.loop !1573

ma_dither_f32.exit.us11:                          ; preds = %.lr.ph, %bb.e
  %.020.i8.us10 = phi i64 [ %i.bc, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %i.ag = phi i32 [ %i.an, %bb.e ], [ %g_maLCG.promoted, %.lr.ph ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.020.i8.us10
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !349
  %i.aj = mul i32 %i.ag, 48271
  %i.ak = urem i32 %i.aj, 2147483647              ; 2 uses
  %i.al = uitofp nneg i32 %i.ak to double
  %i.am = mul i32 %i.ak, 48271
  %i.an = urem i32 %i.am, 2147483647              ; 3 uses
  %i.ao = uitofp nneg i32 %i.an to double
  %i.ap = insertelement <2 x double> poison, double %i.al, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ao, i64 1
  %i.ar = fdiv <2 x double> %i.aq, splat (double f0x41DFFFFFFFC00000)
  %i.as = fptrunc <2 x double> %i.ar to <2 x float> ; 2 uses
  %4 = extractelement <2 x float> %i.as, i64 0
  %5 = tail call float @llvm.fmuladd.f32(float %4, float 7.812500e-03, float -7.812500e-03)
  %6 = extractelement <2 x float> %i.as, i64 1
  %7 = fmul nnan float %6, f0x3C010204
  %8 = fadd float %5, %7
  %i.at = fadd float %i.ai, %8                    ; 3 uses
  %i.au = fcmp olt float %i.at, -1.000000e+00
  br i1 %i.au, label %bb.e, label %bb.d

bb.d:                                             ; preds = %ma_dither_f32.exit.us11
  %i.av = fcmp ogt float %i.at, 1.000000e+00
  %i.aw = select i1 %i.av, float 1.000000e+00, float %i.at
  %i.ax = fadd float %i.aw, 1.000000e+00
  %i.ay = fmul float %i.ax, 1.275000e+02
  %i.az = fptoui float %i.ay to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %ma_dither_f32.exit.us11
  %i.ba = phi i8 [ %i.az, %bb.d ], [ 0, %ma_dither_f32.exit.us11 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i8.us10
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !119
  %i.bc = add nuw i64 %.020.i8.us10, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %2
  br i1 %exitcond.not, label %ma_pcm_f32_to_u8__reference.exit.sink.split, label %ma_dither_f32.exit.us11, !llvm.loop !1573

ma_dither_f32.exit:                               ; preds = %ma_dither_f32.exit.preheader28, %bb.g
  %.020.i8 = phi i64 [ %i.bo, %bb.g ], [ %.020.i8.ph, %ma_dither_f32.exit.preheader28 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.020.i8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !349 ; 2 uses
  %i.bf = fcmp olt float %i.be, -1.000000e+00
  br i1 %i.bf, label %bb.g, label %bb.f

bb.f:                                             ; preds = %ma_dither_f32.exit
  %i.bg = fadd float %i.be, 0.000000e+00          ; 2 uses
  %i.bh = fcmp ogt float %i.bg, 1.000000e+00
  %i.bi = select i1 %i.bh, float 1.000000e+00, float %i.bg
  %i.bj = fadd float %i.bi, 1.000000e+00
  %i.bk = fmul float %i.bj, 1.275000e+02
  %i.bl = fptoui float %i.bk to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %ma_dither_f32.exit
  %i.bm = phi i8 [ %i.bl, %bb.f ], [ 0, %ma_dither_f32.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i8
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !119
  %i.bo = add nuw i64 %.020.i8, 1                 ; 2 uses
  %exitcond16.not = icmp eq i64 %i.bo, %2
  br i1 %exitcond16.not, label %ma_pcm_f32_to_u8__reference.exit, label %ma_dither_f32.exit, !llvm.loop !1574

ma_pcm_f32_to_u8__reference.exit.sink.split:      ; preds = %bb.e, %bb.c
  %.lcssa.sink = phi i32 [ %i.r, %bb.c ], [ %i.an, %bb.e ]
  store i32 %.lcssa.sink, ptr @g_maLCG.0, align 4, !tbaa !156
  br label %ma_pcm_f32_to_u8__reference.exit

ma_pcm_f32_to_u8__reference.exit:                 ; preds = %bb.g, %middle.block, %ma_pcm_f32_to_u8__reference.exit.sink.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ma_pcm_f32_to_s16(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #27 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = or i64 %i.b, %i.a
  %i.d = and i64 %i.c, 15
  %or.cond.i = icmp eq i64 %i.d, 0
  %g_maLCG.promoted64 = load i32, ptr @g_maLCG.0, align 4 ; 4 uses
  br i1 %or.cond.i, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %2, 2                           ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.preheader57, label %.lr.ph

.preheader57:                                     ; preds = %bb.j, %bb.b
  %g_maLCG.promoted61 = phi i32 [ %g_maLCG.promoted64, %bb.b ], [ %i.bm, %bb.j ]
  %.081.i10.lcssa = phi i64 [ 0, %bb.b ], [ %i.dj, %bb.j ] ; 2 uses
  %i.f = icmp ult i64 %.081.i10.lcssa, %2
  br i1 %i.f, label %.lr.ph63, label %ma_pcm_f32_to_s16__sse2.exit

.lr.ph:                                           ; preds = %bb.b, %bb.j
  %.080.i1160 = phi i64 [ %i.dk, %bb.j ], [ 0, %bb.b ]
  %.081.i1059 = phi i64 [ %i.dj, %bb.j ], [ 0, %bb.b ] ; 6 uses
  %i.g = phi i32 [ %i.bm, %bb.j ], [ %g_maLCG.promoted64, %bb.b ] ; 3 uses
  switch i32 %3, label %ma_dither_f32.exit [
    i32 1, label %ma_dither_f32.exit19.thread
    i32 2, label %ma_dither_f32.exit19.thread27
  ]

ma_dither_f32.exit19.thread:                      ; preds = %.lr.ph
  %i.h = mul i32 %i.g, 48271
  %i.i = urem i32 %i.h, 2147483647                ; 2 uses
  %i.j = uitofp nneg i32 %i.i to double
  %i.k = mul i32 %i.i, 48271
  %i.l = urem i32 %i.k, 2147483647                ; 2 uses
  %i.m = uitofp nneg i32 %i.l to double
  %i.n = mul i32 %i.l, 48271
  %i.o = urem i32 %i.n, 2147483647                ; 2 uses
  %i.p = uitofp nneg i32 %i.o to double
  %i.q = mul i32 %i.o, 48271
  %i.r = urem i32 %i.q, 2147483647                ; 3 uses
  %i.s = uitofp nneg i32 %i.r to double
  %i.t = insertelement <4 x double> poison, double %i.p, i64 0
  %i.u = insertelement <4 x double> %i.t, double %i.j, i64 1
  %i.v = insertelement <4 x double> %i.u, double %i.m, i64 2
  %i.w = insertelement <4 x double> %i.v, double %i.s, i64 3
  %i.x = fdiv <4 x double> %i.w, splat (double f0x41DFFFFFFFC00000)
  %i.y = fptrunc <4 x double> %i.x to <4 x float>
  store i32 %i.r, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> splat (float f0x38800080), <4 x float> splat (float f0xB8000000))
  br label %ma_dither_f32.exit

ma_dither_f32.exit19.thread27:                    ; preds = %.lr.ph
  %i.aa = mul i32 %i.g, 48271
  %i.ab = urem i32 %i.aa, 2147483647              ; 2 uses
  %i.ac = mul i32 %i.ab, 48271
  %i.ad = uitofp nneg i32 %i.ab to double
  %i.ae = urem i32 %i.ac, 2147483647              ; 2 uses
  %i.af = uitofp nneg i32 %i.ae to double
  %i.ag = mul i32 %i.ae, 48271
  %i.ah = urem i32 %i.ag, 2147483647              ; 2 uses
  %i.ai = uitofp nneg i32 %i.ah to double
  %i.aj = mul i32 %i.ah, 48271
  %i.ak = urem i32 %i.aj, 2147483647              ; 2 uses
  %i.al = uitofp nneg i32 %i.ak to double
  %i.am = mul i32 %i.ak, 48271
  %i.an = urem i32 %i.am, 2147483647              ; 2 uses
  %i.ao = uitofp nneg i32 %i.an to double
  %i.ap = mul i32 %i.an, 48271
  %i.aq = urem i32 %i.ap, 2147483647              ; 2 uses
  %i.ar = uitofp nneg i32 %i.aq to double
  %i.as = mul i32 %i.aq, 48271
  %i.at = urem i32 %i.as, 2147483647              ; 2 uses
  %i.au = uitofp nneg i32 %i.at to double
  %i.av = insertelement <4 x double> poison, double %i.ao, i64 0
  %i.aw = insertelement <4 x double> %i.av, double %i.ad, i64 1
  %i.ax = insertelement <4 x double> %i.aw, double %i.ai, i64 2
  %i.ay = insertelement <4 x double> %i.ax, double %i.au, i64 3
  %i.az = fdiv <4 x double> %i.ay, splat (double f0x41DFFFFFFFC00000)
  %i.ba = fptrunc <4 x double> %i.az to <4 x float>
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> splat (float f0x38000000), <4 x float> splat (float f0xB8000000))
  %i.bc = mul i32 %i.at, 48271
  %i.bd = urem i32 %i.bc, 2147483647              ; 3 uses
  %i.be = uitofp nneg i32 %i.bd to double
  %i.bf = insertelement <4 x double> poison, double %i.ar, i64 0
  %i.bg = insertelement <4 x double> %i.bf, double %i.af, i64 1
  %i.bh = insertelement <4 x double> %i.bg, double %i.al, i64 2
  %i.bi = insertelement <4 x double> %i.bh, double %i.be, i64 3
  %i.bj = fdiv nnan <4 x double> %i.bi, splat (double f0x41DFFFFFFFC00000)
  %i.bk = fptrunc nnan <4 x double> %i.bj to <4 x float>
  %4 = fmul nnan <4 x float> %i.bk, splat (float f0x38000100)
  store i32 %i.bd, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.bl = fadd <4 x float> %i.bb, %4
  br label %ma_dither_f32.exit

ma_dither_f32.exit:                               ; preds = %.lr.ph, %ma_dither_f32.exit19.thread, %ma_dither_f32.exit19.thread27
  %i.bm = phi i32 [ %i.r, %ma_dither_f32.exit19.thread ], [ %i.bd, %ma_dither_f32.exit19.thread27 ], [ %i.g, %.lr.ph ] ; 2 uses
  %i.bn = phi <4 x float> [ %i.z, %ma_dither_f32.exit19.thread ], [ %i.bl, %ma_dither_f32.exit19.thread27 ], [ zeroinitializer, %.lr.ph ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.081.i1059
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !349
  %i.bq = or disjoint i64 %.081.i1059, 1          ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !349
  %i.bt = or disjoint i64 %.081.i1059, 2          ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !349
  %i.bw = or disjoint i64 %.081.i1059, 3          ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !349
  %i.bz = extractelement <4 x float> %i.bn, i64 1
  %i.ca = fadd float %i.bz, %i.bp                 ; 3 uses
  %i.cb = extractelement <4 x float> %i.bn, i64 2
  %i.cc = fadd float %i.cb, %i.bs                 ; 3 uses
  %i.cd = extractelement <4 x float> %i.bn, i64 0
  %i.ce = fadd float %i.cd, %i.bv                 ; 3 uses
  %i.cf = extractelement <4 x float> %i.bn, i64 3
  %i.cg = fadd float %i.cf, %i.by                 ; 3 uses
  %i.ch = fcmp olt float %i.ca, -1.000000e+00
  br i1 %i.ch, label %bb.d, label %bb.c

bb.c:                                             ; preds = %ma_dither_f32.exit
  %i.ci = fcmp ogt float %i.ca, 1.000000e+00
  %i.cj = select i1 %i.ci, float 1.000000e+00, float %i.ca
  %i.ck = fmul float %i.cj, 3.276700e+04
  %i.cl = fptosi float %i.ck to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %ma_dither_f32.exit
  %i.cm = phi i16 [ %i.cl, %bb.c ], [ -32767, %ma_dither_f32.exit ]
  %i.cn = fcmp olt float %i.cc, -1.000000e+00
  br i1 %i.cn, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.co = fcmp ogt float %i.cc, 1.000000e+00
  %i.cp = select i1 %i.co, float 1.000000e+00, float %i.cc
  %i.cq = fmul float %i.cp, 3.276700e+04
  %i.cr = fptosi float %i.cq to i16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cs = phi i16 [ %i.cr, %bb.e ], [ -32767, %bb.d ]
  %i.ct = fcmp olt float %i.ce, -1.000000e+00
  br i1 %i.ct, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cu = fcmp ogt float %i.ce, 1.000000e+00
  %i.cv = select i1 %i.cu, float 1.000000e+00, float %i.ce
  %i.cw = fmul float %i.cv, 3.276700e+04
  %i.cx = fptosi float %i.cw to i16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cy = phi i16 [ %i.cx, %bb.g ], [ -32767, %bb.f ]
  %i.cz = fcmp olt float %i.cg, -1.000000e+00
  br i1 %i.cz, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.da = fcmp ogt float %i.cg, 1.000000e+00
  %i.db = select i1 %i.da, float 1.000000e+00, float %i.cg
  %i.dc = fmul float %i.db, 3.276700e+04
  %i.dd = fptosi float %i.dc to i16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.de = phi i16 [ %i.dd, %bb.i ], [ -32767, %bb.h ]
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.081.i1059
  store i16 %i.cm, ptr %i.df, align 2, !tbaa !122
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bq
  store i16 %i.cs, ptr %i.dg, align 2, !tbaa !122
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bt
  store i16 %i.cy, ptr %i.dh, align 2, !tbaa !122
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bw
  store i16 %i.de, ptr %i.di, align 2, !tbaa !122
  %i.dj = add nuw i64 %.081.i1059, 4              ; 2 uses
  %i.dk = add nuw nsw i64 %.080.i1160, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dk, %i.e
  br i1 %exitcond.not, label %.preheader57, label %.lr.ph, !llvm.loop !1577

.lr.ph63:                                         ; preds = %.preheader57, %bb.n
  %.1.i1262 = phi i64 [ %i.ep, %bb.n ], [ %.081.i10.lcssa, %.preheader57 ] ; 3 uses
  %i.dl = phi i32 [ %i.eg, %bb.n ], [ %g_maLCG.promoted61, %.preheader57 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1.i1262
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !349
  switch i32 %3, label %ma_dither_f32.exit21 [
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %.lr.ph63
  %i.do = mul i32 %i.dl, 48271
  %i.dp = urem i32 %i.do, 2147483647              ; 3 uses
  store i32 %i.dp, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.dq = uitofp nneg i32 %i.dp to double
  %i.dr = fdiv double %i.dq, f0x41DFFFFFFFC00000
  %i.ds = fptrunc double %i.dr to float
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ds, float f0x38800080, float f0xB8000000)
  br label %ma_dither_f32.exit21

bb.l:                                             ; preds = %.lr.ph63
  %i.du = mul i32 %i.dl, 48271
  %i.dv = urem i32 %i.du, 2147483647              ; 2 uses
  %i.dw = uitofp nneg i32 %i.dv to double
  %i.dx = mul i32 %i.dv, 48271
  %i.dy = urem i32 %i.dx, 2147483647              ; 3 uses
  store i32 %i.dy, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.dz = uitofp nneg i32 %i.dy to double
  %i.ea = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.eb = insertelement <2 x double> %i.ea, double %i.dz, i64 1
  %i.ec = fdiv <2 x double> %i.eb, splat (double f0x41DFFFFFFFC00000)
  %i.ed = fptrunc <2 x double> %i.ec to <2 x float>
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> <float f0x38000000, float f0x38000100>, <2 x float> <float f0xB8000000, float -0.000000e+00>)
  %i.ef = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ee)
  br label %ma_dither_f32.exit21

ma_dither_f32.exit21:                             ; preds = %.lr.ph63, %bb.k, %bb.l
  %i.eg = phi i32 [ %i.dp, %bb.k ], [ %i.dy, %bb.l ], [ %i.dl, %.lr.ph63 ]
  %.0.i20 = phi float [ %i.dt, %bb.k ], [ %i.ef, %bb.l ], [ 0.000000e+00, %.lr.ph63 ]
  %i.eh = fadd float %i.dn, %.0.i20               ; 3 uses
  %i.ei = fcmp olt float %i.eh, -1.000000e+00
  br i1 %i.ei, label %bb.n, label %bb.m

bb.m:                                             ; preds = %ma_dither_f32.exit21
  %i.ej = fcmp ogt float %i.eh, 1.000000e+00
  %i.ek = select i1 %i.ej, float 1.000000e+00, float %i.eh
  %i.el = fmul float %i.ek, 3.276700e+04
  %i.em = fptosi float %i.el to i16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %ma_dither_f32.exit21
  %i.en = phi i16 [ %i.em, %bb.m ], [ -32767, %ma_dither_f32.exit21 ]
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.1.i1262
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !122
  %i.ep = add nuw i64 %.1.i1262, 1                ; 2 uses
  %exitcond75.not = icmp eq i64 %i.ep, %2
  br i1 %exitcond75.not, label %ma_pcm_f32_to_s16__sse2.exit, label %.lr.ph63, !llvm.loop !1578

bb.o:                                             ; preds = %bb.a
  %i.eq = lshr i64 %2, 3                          ; 2 uses
  %.not72 = icmp eq i64 %i.eq, 0
  br i1 %.not72, label %.preheader, label %.lr.ph67

.preheader:                                       ; preds = %bb.r, %bb.o
  %g_maLCG.promoted69 = phi i32 [ %g_maLCG.promoted64, %bb.o ], [ %i.if, %bb.r ]
  %.081.i.lcssa = phi i64 [ 0, %bb.o ], [ %i.is, %bb.r ] ; 2 uses
  %i.er = icmp ult i64 %.081.i.lcssa, %2
  br i1 %i.er, label %.lr.ph71, label %ma_pcm_f32_to_s16__sse2.exit

.lr.ph67:                                         ; preds = %bb.o, %bb.r
  %.080.i66 = phi i64 [ %i.it, %bb.r ], [ 0, %bb.o ]
  %.081.i65 = phi i64 [ %i.is, %bb.r ], [ 0, %bb.o ] ; 3 uses
  %i.es = phi i32 [ %i.if, %bb.r ], [ %g_maLCG.promoted64, %bb.o ] ; 3 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.r
    i32 1, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph67
  %i.et = mul i32 %i.es, 48271
  %i.eu = urem i32 %i.et, 2147483647              ; 2 uses
  %i.ev = uitofp nneg i32 %i.eu to double
  %i.ew = mul i32 %i.eu, 48271
  %i.ex = urem i32 %i.ew, 2147483647              ; 2 uses
  %i.ey = uitofp nneg i32 %i.ex to double
  %i.ez = mul i32 %i.ex, 48271
  %i.fa = urem i32 %i.ez, 2147483647              ; 2 uses
  %i.fb = uitofp nneg i32 %i.fa to double
  %i.fc = mul i32 %i.fa, 48271
  %i.fd = urem i32 %i.fc, 2147483647              ; 2 uses
  %i.fe = uitofp nneg i32 %i.fd to double
  %i.ff = insertelement <4 x double> poison, double %i.fe, i64 0
  %i.fg = insertelement <4 x double> %i.ff, double %i.fb, i64 1
  %i.fh = insertelement <4 x double> %i.fg, double %i.ey, i64 2
  %i.fi = insertelement <4 x double> %i.fh, double %i.ev, i64 3
  %i.fj = fdiv <4 x double> %i.fi, splat (double f0x41DFFFFFFFC00000)
  %i.fk = fptrunc <4 x double> %i.fj to <4 x float>
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> splat (float f0x38800080), <4 x float> splat (float f0xB8000000))
  %i.fm = mul i32 %i.fd, 48271
  %i.fn = urem i32 %i.fm, 2147483647              ; 2 uses
  %i.fo = uitofp nneg i32 %i.fn to double
  %i.fp = mul i32 %i.fn, 48271
  %i.fq = urem i32 %i.fp, 2147483647              ; 2 uses
  %i.fr = uitofp nneg i32 %i.fq to double
  %i.fs = mul i32 %i.fq, 48271
  %i.ft = urem i32 %i.fs, 2147483647              ; 2 uses
  %i.fu = uitofp nneg i32 %i.ft to double
  %i.fv = mul i32 %i.ft, 48271
  %i.fw = urem i32 %i.fv, 2147483647              ; 3 uses
  store i32 %i.fw, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.fx = uitofp nneg i32 %i.fw to double
  %i.fy = insertelement <4 x double> poison, double %i.fx, i64 0
  %i.fz = insertelement <4 x double> %i.fy, double %i.fu, i64 1
  %i.ga = insertelement <4 x double> %i.fz, double %i.fr, i64 2
  %i.gb = insertelement <4 x double> %i.ga, double %i.fo, i64 3
  %i.gc = fdiv <4 x double> %i.gb, splat (double f0x41DFFFFFFFC00000)
  %i.gd = fptrunc <4 x double> %i.gc to <4 x float>
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> splat (float f0x38800080), <4 x float> splat (float f0xB8000000))
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph67
  %i.gf = mul i32 %i.es, 48271
  %i.gg = urem i32 %i.gf, 2147483647              ; 2 uses
  %i.gh = uitofp nneg i32 %i.gg to double
  %i.gi = mul i32 %i.gg, 48271
  %i.gj = urem i32 %i.gi, 2147483647              ; 2 uses
  %i.gk = uitofp nneg i32 %i.gj to double
  %i.gl = mul i32 %i.gj, 48271
  %i.gm = urem i32 %i.gl, 2147483647              ; 2 uses
  %i.gn = uitofp nneg i32 %i.gm to double
  %i.go = mul i32 %i.gm, 48271
  %i.gp = urem i32 %i.go, 2147483647              ; 2 uses
  %i.gq = uitofp nneg i32 %i.gp to double
  %i.gr = mul i32 %i.gp, 48271
  %i.gs = urem i32 %i.gr, 2147483647              ; 2 uses
  %i.gt = uitofp nneg i32 %i.gs to double
  %i.gu = mul i32 %i.gs, 48271
  %i.gv = urem i32 %i.gu, 2147483647              ; 2 uses
  %i.gw = uitofp nneg i32 %i.gv to double
  %i.gx = mul i32 %i.gv, 48271
  %i.gy = urem i32 %i.gx, 2147483647              ; 2 uses
  %i.gz = uitofp nneg i32 %i.gy to double
  %5 = insertelement <4 x double> poison, double %i.gz, i64 0
  %6 = insertelement <4 x double> %5, double %i.gt, i64 1
  %7 = insertelement <4 x double> %6, double %i.gn, i64 2
  %8 = insertelement <4 x double> %7, double %i.gh, i64 3
  %9 = fdiv <4 x double> %8, splat (double f0x41DFFFFFFFC00000)
  %10 = fptrunc <4 x double> %9 to <4 x float>
  %i.ha = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> splat (float f0x38000000), <4 x float> splat (float f0xB8000000))
  %i.hb = mul i32 %i.gy, 48271
  %i.hc = urem i32 %i.hb, 2147483647              ; 2 uses
  %i.hd = uitofp nneg i32 %i.hc to double
  %11 = insertelement <4 x double> poison, double %i.hd, i64 0
  %12 = insertelement <4 x double> %11, double %i.gw, i64 1
  %13 = insertelement <4 x double> %12, double %i.gq, i64 2
  %14 = insertelement <4 x double> %13, double %i.gk, i64 3
  %15 = fdiv nnan <4 x double> %14, splat (double f0x41DFFFFFFFC00000)
  %16 = fptrunc nnan <4 x double> %15 to <4 x float>
  %17 = fmul nnan <4 x float> %16, splat (float f0x38000100)
  %i.he = fadd <4 x float> %i.ha, %17
  %i.hf = mul i32 %i.hc, 48271
  %i.hg = urem i32 %i.hf, 2147483647              ; 2 uses
  %i.hh = uitofp nneg i32 %i.hg to double
  %i.hi = mul i32 %i.hg, 48271
  %i.hj = urem i32 %i.hi, 2147483647              ; 2 uses
  %i.hk = uitofp nneg i32 %i.hj to double
  %i.hl = mul i32 %i.hj, 48271
  %i.hm = urem i32 %i.hl, 2147483647              ; 2 uses
  %i.hn = uitofp nneg i32 %i.hm to double
  %i.ho = mul i32 %i.hm, 48271
  %i.hp = urem i32 %i.ho, 2147483647              ; 2 uses
  %i.hq = uitofp nneg i32 %i.hp to double
  %i.hr = mul i32 %i.hp, 48271
  %i.hs = urem i32 %i.hr, 2147483647              ; 2 uses
  %i.ht = uitofp nneg i32 %i.hs to double
  %i.hu = mul i32 %i.hs, 48271
  %i.hv = urem i32 %i.hu, 2147483647              ; 2 uses
  %i.hw = uitofp nneg i32 %i.hv to double
  %i.hx = mul i32 %i.hv, 48271
  %i.hy = urem i32 %i.hx, 2147483647              ; 2 uses
  %i.hz = uitofp nneg i32 %i.hy to double
  %18 = insertelement <4 x double> poison, double %i.hz, i64 0
  %19 = insertelement <4 x double> %18, double %i.ht, i64 1
  %20 = insertelement <4 x double> %19, double %i.hn, i64 2
  %21 = insertelement <4 x double> %20, double %i.hh, i64 3
  %22 = fdiv <4 x double> %21, splat (double f0x41DFFFFFFFC00000)
  %23 = fptrunc <4 x double> %22 to <4 x float>
  %i.ia = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %23, <4 x float> splat (float f0x38000000), <4 x float> splat (float f0xB8000000))
  %i.ib = mul i32 %i.hy, 48271
  %i.ic = urem i32 %i.ib, 2147483647              ; 3 uses
  store i32 %i.ic, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.id = uitofp nneg i32 %i.ic to double
  %24 = insertelement <4 x double> poison, double %i.id, i64 0
  %25 = insertelement <4 x double> %24, double %i.hw, i64 1
  %26 = insertelement <4 x double> %25, double %i.hq, i64 2
  %27 = insertelement <4 x double> %26, double %i.hk, i64 3
  %28 = fdiv nnan <4 x double> %27, splat (double f0x41DFFFFFFFC00000)
  %29 = fptrunc nnan <4 x double> %28 to <4 x float>
  %30 = fmul nnan <4 x float> %29, splat (float f0x38000100)
  %i.ie = fadd <4 x float> %i.ia, %30
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph67, %bb.q, %bb.p
  %i.if = phi i32 [ %i.ic, %bb.q ], [ %i.fw, %bb.p ], [ %i.es, %.lr.ph67 ] ; 2 uses
  %.077.i = phi <4 x float> [ %i.he, %bb.q ], [ %i.fl, %bb.p ], [ zeroinitializer, %.lr.ph67 ]
  %.0.i = phi <4 x float> [ %i.ie, %bb.q ], [ %i.ge, %bb.p ], [ zeroinitializer, %.lr.ph67 ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.081.i65 ; 2 uses
  %i.ih = load <4 x float>, ptr %i.ig, align 16, !tbaa !119
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ij = load <4 x float>, ptr %i.ii, align 16, !tbaa !119
  %i.ik = fadd <4 x float> %.077.i, %i.ih
  %i.il = fadd <4 x float> %.0.i, %i.ij
  %i.im = fmul <4 x float> %i.ik, splat (float 3.276700e+04)
  %i.in = fmul <4 x float> %i.il, splat (float 3.276700e+04)
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.081.i65
  %i.ip = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.im)
  %i.iq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.in)
  %i.ir = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ip, <4 x i32> %i.iq)
  store <8 x i16> %i.ir, ptr %i.io, align 16, !tbaa !119, !nontemporal !1581
  %i.is = add nuw i64 %.081.i65, 8                ; 2 uses
  %i.it = add nuw nsw i64 %.080.i66, 1            ; 2 uses
  %exitcond76.not = icmp eq i64 %i.it, %i.eq
  br i1 %exitcond76.not, label %.preheader, label %.lr.ph67, !llvm.loop !1579

.lr.ph71:                                         ; preds = %.preheader, %bb.v
  %.1.i70 = phi i64 [ %i.jy, %bb.v ], [ %.081.i.lcssa, %.preheader ] ; 3 uses
  %i.iu = phi i32 [ %i.jp, %bb.v ], [ %g_maLCG.promoted69, %.preheader ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1.i70
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !349
  switch i32 %3, label %ma_dither_f32.exit23 [
    i32 1, label %bb.s
    i32 2, label %bb.t
  ]

bb.s:                                             ; preds = %.lr.ph71
  %i.ix = mul i32 %i.iu, 48271
  %i.iy = urem i32 %i.ix, 2147483647              ; 3 uses
  store i32 %i.iy, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.iz = uitofp nneg i32 %i.iy to double
  %i.ja = fdiv double %i.iz, f0x41DFFFFFFFC00000
  %i.jb = fptrunc double %i.ja to float
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.jb, float f0x38800080, float f0xB8000000)
  br label %ma_dither_f32.exit23

bb.t:                                             ; preds = %.lr.ph71
  %i.jd = mul i32 %i.iu, 48271
  %i.je = urem i32 %i.jd, 2147483647              ; 2 uses
  %i.jf = uitofp nneg i32 %i.je to double
  %i.jg = mul i32 %i.je, 48271
  %i.jh = urem i32 %i.jg, 2147483647              ; 3 uses
  store i32 %i.jh, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.ji = uitofp nneg i32 %i.jh to double
  %i.jj = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.jk = insertelement <2 x double> %i.jj, double %i.ji, i64 1
  %i.jl = fdiv <2 x double> %i.jk, splat (double f0x41DFFFFFFFC00000)
  %i.jm = fptrunc <2 x double> %i.jl to <2 x float>
  %i.jn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jm, <2 x float> <float f0x38000000, float f0x38000100>, <2 x float> <float f0xB8000000, float -0.000000e+00>)
  %i.jo = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jn)
  br label %ma_dither_f32.exit23

ma_dither_f32.exit23:                             ; preds = %.lr.ph71, %bb.s, %bb.t
  %i.jp = phi i32 [ %i.iy, %bb.s ], [ %i.jh, %bb.t ], [ %i.iu, %.lr.ph71 ]
  %.0.i22 = phi float [ %i.jc, %bb.s ], [ %i.jo, %bb.t ], [ 0.000000e+00, %.lr.ph71 ]
  %i.jq = fadd float %i.iw, %.0.i22               ; 3 uses
  %i.jr = fcmp olt float %i.jq, -1.000000e+00
  br i1 %i.jr, label %bb.v, label %bb.u

bb.u:                                             ; preds = %ma_dither_f32.exit23
  %i.js = fcmp ogt float %i.jq, 1.000000e+00
  %i.jt = select i1 %i.js, float 1.000000e+00, float %i.jq
  %i.ju = fmul float %i.jt, 3.276700e+04
  %i.jv = fptosi float %i.ju to i16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %ma_dither_f32.exit23
  %i.jw = phi i16 [ %i.jv, %bb.u ], [ -32767, %ma_dither_f32.exit23 ]
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.1.i70
  store i16 %i.jw, ptr %i.jx, align 2, !tbaa !122
  %i.jy = add nuw i64 %.1.i70, 1                  ; 2 uses
  %exitcond77.not = icmp eq i64 %i.jy, %2
  br i1 %exitcond77.not, label %ma_pcm_f32_to_s16__sse2.exit, label %.lr.ph71, !llvm.loop !1580

ma_pcm_f32_to_s16__sse2.exit:                     ; preds = %bb.n, %bb.v, %.preheader57, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_pcm_f32_to_s24(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %ma_pcm_f32_to_s24__reference.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0.i7 = phi i64 [ %i.r, %bb.c ], [ 0, %bb.a ]  ; 3 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i7
  %i.b = load float, ptr %i.a, align 4, !tbaa !349 ; 3 uses
  %i.c = fcmp olt float %i.b, -1.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = fcmp ogt float %i.b, 1.000000e+00
  %i.e = select i1 %i.d, float 1.000000e+00, float %i.b
  %i.f = fmul float %i.e, f0x4AFFFFFE
  %i.g = fptosi float %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.h = phi i32 [ %i.g, %bb.b ], [ -8388607, %.lr.ph ] ; 3 uses
  %i.i = trunc i32 %i.h to i8
  %i.j = mul i64 %.0.i7, 3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 3 uses
  store i8 %i.i, ptr %i.k, align 1, !tbaa !119
  %i.l = lshr i32 %i.h, 8
  %i.m = trunc i32 %i.l to i8
  %i.n = getelementptr i8, ptr %i.k, i64 1
  store i8 %i.m, ptr %i.n, align 1, !tbaa !119
  %i.o = lshr i32 %i.h, 16
  %i.p = trunc i32 %i.o to i8
  %i.q = getelementptr i8, ptr %i.k, i64 2
  store i8 %i.p, ptr %i.q, align 1, !tbaa !119
  %i.r = add nuw i64 %.0.i7, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %2
  br i1 %exitcond.not, label %ma_pcm_f32_to_s24__reference.exit, label %.lr.ph, !llvm.loop !21

ma_pcm_f32_to_s24__reference.exit:                ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_pcm_f32_to_s32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %ma_pcm_f32_to_s32__reference.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader10, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.a = add i64 %2, -1                           ; 2 uses
  %i.b = and i64 %i.a, 4294967295
  %i.c = icmp eq i64 %i.b, 4294967295
  %i.d = icmp ugt i64 %i.a, 4294967295
  %i.e = or i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %2, 8589934588                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x float>, ptr %i.f, align 4, !tbaa !349 ; 2 uses
  %i.g = fcmp olt <4 x float> %wide.load, splat (float -1.000000e+00)
  %i.h = fpext <4 x float> %wide.load to <4 x double> ; 2 uses
  %i.i = fcmp ogt <4 x double> %i.h, splat (double 1.000000e+00)
  %i.j = select <4 x i1> %i.i, <4 x double> splat (double 1.000000e+00), <4 x double> %i.h
  %i.k = fmul <4 x double> %i.j, splat (double f0x41DFFFFFFFC00000)
  %i.l = fptosi <4 x double> %i.k to <4 x i32>
  %predphi = select <4 x i1> %i.g, <4 x i32> splat (i32 -2147483647), <4 x i32> %i.l
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  store <4 x i32> %predphi, ptr %i.m, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !1582

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %ma_pcm_f32_to_s32__reference.exit, label %.lr.ph.preheader10

.lr.ph.preheader10:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader10, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.lr.ph.preheader10 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.p = load float, ptr %i.o, align 4, !tbaa !349 ; 2 uses
  %i.q = fcmp olt float %i.p, -1.000000e+00
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = fpext float %i.p to double               ; 2 uses
  %i.s = fcmp ogt double %i.r, 1.000000e+00
  %i.t = select i1 %i.s, double 1.000000e+00, double %i.r
  %i.u = fmul double %i.t, f0x41DFFFFFFFC00000
  %i.v = fptosi double %i.u to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.w = phi i32 [ %i.v, %bb.b ], [ -2147483647, %.lr.ph ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 4, !tbaa !118
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.y = and i64 %indvars.iv.next, 4294967295
  %i.z = icmp ugt i64 %2, %i.y
  br i1 %i.z, label %.lr.ph, label %ma_pcm_f32_to_s32__reference.exit, !llvm.loop !1583

ma_pcm_f32_to_s32__reference.exit:                ; preds = %bb.c, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_pcm_f32_to_f32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = shl i64 %2, 2                            ; 2 uses
  %.not.i2 = icmp eq i64 %i.a, 0
  br i1 %.not.i2, label %ma_copy_memory_64.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i5 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.011.i4 = phi i64 [ %i.b, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.012.i3 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.011.i4, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i5, ptr noundef nonnull align 1 dereferenceable(1) %.012.i3, i64 %spec.store.select.i, i1 false)
  %i.b = sub nuw i64 %.011.i4, %spec.store.select.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i5, i64 %spec.store.select.i
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i3, i64 %spec.store.select.i
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %ma_copy_memory_64.exit, label %.lr.ph, !llvm.loop !12

ma_copy_memory_64.exit:                           ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ma_pcm_interleave_f32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #18 {
bb.a:
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %ma_pcm_interleave_f32__optimized.exit, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.a
  %.not19.i.i = icmp eq i32 %3, 0
  %i.a = zext i32 %3 to i64                       ; 3 uses
  br i1 %.not19.i.i, label %ma_pcm_interleave_f32__optimized.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.lr.ph.i.i
  %xtraiter = and i64 %i.a, 3                     ; 3 uses
  %i.b = icmp ult i32 %3, 4
  %unroll_iter = and i64 %i.a, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i
  %.01417.i.i = phi i64 [ %i.ad, %._crit_edge.i.i ], [ 0, %.preheader.i.i.preheader ] ; 7 uses
  %i.c = mul i64 %.01417.i.i, %i.a
  %i.d = getelementptr [4 x i8], ptr %0, i64 %i.c ; 5 uses
  br i1 %i.b, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i, %.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.preheader.i.i.new ], [ 0, %.preheader.i.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.i.i.new ], [ 0, %.preheader.i.i ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !373
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01417.i.i
end_hunk_0
