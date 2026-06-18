begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@WebPMultARGBRow = external local_unnamed_addr global ptr, align 8
@WebPMultRow = external local_unnamed_addr global ptr, align 8
@WebPApplyAlphaMultiply = external local_unnamed_addr global ptr, align 8
@WebPDispatchAlpha = external local_unnamed_addr global ptr, align 8
@WebPDispatchAlphaToGreen = external local_unnamed_addr global ptr, align 8
@WebPExtractAlpha = external local_unnamed_addr global ptr, align 8
@WebPExtractGreen = external local_unnamed_addr global ptr, align 8
@WebPHasAlpha8b = external local_unnamed_addr global ptr, align 8
@WebPHasAlpha32b = external local_unnamed_addr global ptr, align 8
@WebPAlphaReplace = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPInitAlphaProcessingSSE2() local_unnamed_addr #0 {
bb.a:
  store ptr @MultARGBRow_SSE2, ptr @WebPMultARGBRow, align 8, !tbaa !7
  store ptr @MultRow_SSE2, ptr @WebPMultRow, align 8, !tbaa !7
  store ptr @ApplyAlphaMultiply_SSE2, ptr @WebPApplyAlphaMultiply, align 8, !tbaa !7
  store ptr @DispatchAlpha_SSE2, ptr @WebPDispatchAlpha, align 8, !tbaa !7
  store ptr @DispatchAlphaToGreen_SSE2, ptr @WebPDispatchAlphaToGreen, align 8, !tbaa !7
  store ptr @ExtractAlpha_SSE2, ptr @WebPExtractAlpha, align 8, !tbaa !7
  store ptr @ExtractGreen_SSE2, ptr @WebPExtractGreen, align 8, !tbaa !7
  store ptr @HasAlpha8b_SSE2, ptr @WebPHasAlpha8b, align 8, !tbaa !7
  store ptr @HasAlpha32b_SSE2, ptr @WebPHasAlpha32b, align 8, !tbaa !7
  store ptr @AlphaReplace_SSE2, ptr @WebPAlphaReplace, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MultARGBRow_SSE2(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
bb.a:
  %.not = icmp ne i32 %2, 0
  %.not3132 = icmp slt i32 %1, 2
  %or.cond = or i1 %.not, %.not3132
  br i1 %or.cond, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv34 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next35, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv34 ; 2 uses
  %i.c = load i64, ptr %i.b, align 1, !tbaa !9
  %i.d = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.g = bitcast <16 x i8> %i.f to <8 x i16>
  %i.h = bitcast <16 x i8> %i.f to <8 x i16>
  %i.i = or <8 x i16> %i.h, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.j = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.k = mul nuw <8 x i16> %i.j, %i.g
  %i.l = add <8 x i16> %i.k, splat (i16 128)
  %i.m = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.l, <8 x i16> splat (i16 257))
  %i.n = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.m, <8 x i16> poison)
  %i.o = bitcast <16 x i8> %i.n to <2 x i64>
  %i.p = extractelement <2 x i64> %i.o, i64 0
  store i64 %i.p, ptr %i.b, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not31 = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 2
  br i1 %.not31, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.q = and i32 %1, 2147483646
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.q, %.loopexit.loopexit ] ; 2 uses
  %i.r = sub nsw i32 %1, %.1                      ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.t = zext nneg i32 %.1 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  tail call void @WebPMultARGBRow_C(ptr noundef %i.u, i32 noundef %i.r, i32 noundef %2) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MultRow_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %.not = icmp ne i32 %3, 0
  %.not3334 = icmp slt i32 %2, 8
  %or.cond = or i1 %.not, %.not3334
  br i1 %or.cond, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv36 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next37, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv36 ; 2 uses
  %i.c = load i64, ptr %i.b, align 1, !tbaa !9
  %i.d = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv36
  %i.f = load i64, ptr %i.e, align 1, !tbaa !9
  %i.g = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %i.h = bitcast <2 x i64> %i.d to <16 x i8>
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.j = bitcast <2 x i64> %i.g to <16 x i8>
  %i.k = shufflevector <16 x i8> %i.j, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.l = bitcast <16 x i8> %i.i to <8 x i16>
  %i.m = bitcast <16 x i8> %i.k to <8 x i16>
  %i.n = mul nuw <8 x i16> %i.m, %i.l
  %i.o = add <8 x i16> %i.n, splat (i16 128)
  %i.p = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.o, <8 x i16> splat (i16 257))
  %i.q = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.p, <8 x i16> poison)
  %i.r = bitcast <16 x i8> %i.q to <2 x i64>
  %i.s = extractelement <2 x i64> %i.r, i64 0
  store i64 %i.s, ptr %i.b, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not33 = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 8
  br i1 %.not33, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !12

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.t = and i32 %2, 2147483640
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.t, %.loopexit.loopexit ] ; 2 uses
  %i.u = sub nsw i32 %2, %.1                      ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.w = zext nneg i32 %.1 to i64                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  tail call void @WebPMultRow_C(ptr noundef %i.x, ptr noundef %i.y, i32 noundef %i.u, i32 noundef %3) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ApplyAlphaMultiply_SSE2(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = add nsw i32 %3, -1                       ; 3 uses
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %bb.a
  %.not = icmp ne i32 %1, 0                       ; 3 uses
  %.not100106 = icmp slt i32 %2, 4                ; 2 uses
  %i.c = select i1 %.not, i64 0, i64 3            ; 3 uses
  %i.d = zext i1 %.not to i64                     ; 3 uses
  %i.e = sext i32 %4 to i64                       ; 3 uses
  br i1 %.not, label %.preheader.us.preheader, label %.lr.ph114.split

.preheader.us.preheader:                          ; preds = %.lr.ph114
  %5 = sext i32 %2 to i64
  %i.f = and i32 %2, -4
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.preheader, %._crit_edge.us
  %i.g = phi i32 [ %i.ab, %._crit_edge.us ], [ %i.a, %.preheader.us.preheader ] ; 2 uses
  %.0112.us.us = phi ptr [ %i.aa, %._crit_edge.us ], [ %0, %.preheader.us.preheader ] ; 4 uses
  br i1 %.not100106, label %..loopexit_crit_edge.us, label %bb.b

bb.b:                                             ; preds = %.preheader.us.us, %bb.b
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.b ], [ 0, %.preheader.us.us ] ; 2 uses
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %bb.b ], [ 4, %.preheader.us.us ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.0112.us.us, i64 %indvars.iv138 ; 2 uses
  %i.i = load <16 x i8>, ptr %i.h, align 1, !tbaa !9 ; 2 uses
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.k = shufflevector <16 x i8> %i.i, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.l = bitcast <16 x i8> %i.j to <8 x i16>
  %i.m = bitcast <16 x i8> %i.j to <8 x i16>
  %i.n = or <8 x i16> %i.m, <i16 0, i16 255, i16 poison, i16 poison, i16 0, i16 255, i16 poison, i16 poison>
  %i.o = bitcast <16 x i8> %i.k to <8 x i16>
  %i.p = bitcast <16 x i8> %i.k to <8 x i16>
  %i.q = or <8 x i16> %i.p, <i16 0, i16 255, i16 poison, i16 poison, i16 0, i16 255, i16 poison, i16 poison>
  %i.r = shufflevector <8 x i16> %i.n, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 5, i32 4, i32 4, i32 4>
  %i.s = shufflevector <8 x i16> %i.q, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 5, i32 4, i32 4, i32 4>
  %i.t = mul nuw <8 x i16> %i.r, %i.l
  %i.u = mul nuw <8 x i16> %i.s, %i.o
  %i.v = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.t, <8 x i16> splat (i16 -32639))
  %i.w = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.u, <8 x i16> splat (i16 -32639))
  %i.x = lshr <8 x i16> %i.v, splat (i16 7)
  %i.y = lshr <8 x i16> %i.w, splat (i16 7)
  %i.z = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.x, <8 x i16> %i.y)
  store <16 x i8> %i.z, ptr %i.h, align 1, !tbaa !9
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 4 ; 2 uses
  %.not100.us = icmp sgt i64 %indvars.iv.next137, %5
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 4
  br i1 %.not100.us, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !13

._crit_edge.us:                                   ; preds = %bb.e, %..loopexit_crit_edge.us
  %i.aa = getelementptr inbounds i8, ptr %.0112.us.us, i64 %i.e
  %i.ab = add nsw i32 %i.g, -1
  %i.ac = icmp sgt i32 %i.g, 0
  br i1 %i.ac, label %.preheader.us.us, label %._crit_edge115, !llvm.loop !14

bb.c:                                             ; preds = %.lr.ph111.us, %bb.e
  %indvars.iv143 = phi i64 [ %7, %.lr.ph111.us ], [ %indvars.iv.next144, %bb.e ] ; 2 uses
  %i.ad = shl i64 %indvars.iv143, 2
  %i.ae = and i64 %i.ad, 4294967292               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9   ; 2 uses
  %.not101.us = icmp eq i8 %i.ag, -1
  br i1 %.not101.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.ah, 32897            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ae ; 4 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.al = zext i8 %i.ak to i32
  %i.am = mul nuw nsw i32 %i.ai, %i.al
  %i.an = lshr i32 %i.am, 23
  %i.ao = trunc nuw i32 %i.an to i8
  store i8 %i.ao, ptr %i.aj, align 1, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.ar = zext i8 %i.aq to i32
  %i.as = mul nuw nsw i32 %i.ai, %i.ar
  %i.at = lshr i32 %i.as, 23
  %i.au = trunc nuw i32 %i.at to i8
  store i8 %i.au, ptr %i.ap, align 1, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = zext i8 %i.aw to i32
  %i.ay = mul nuw nsw i32 %i.ai, %i.ax
  %i.az = lshr i32 %i.ay, 23
  %i.ba = trunc nuw i32 %i.az to i8
  store i8 %i.ba, ptr %i.av, align 1, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.bb = trunc nuw i64 %indvars.iv.next144 to i32
  %i.bc = icmp sgt i32 %2, %i.bb
  br i1 %i.bc, label %bb.c, label %._crit_edge.us, !llvm.loop !15

..loopexit_crit_edge.us:                          ; preds = %bb.b, %.preheader.us.us
  %.1.lcssa.us = phi i32 [ 0, %.preheader.us.us ], [ %i.f, %bb.b ] ; 2 uses
  %6 = icmp slt i32 %.1.lcssa.us, %2
  br i1 %6, label %.lr.ph111.us, label %._crit_edge.us

.lr.ph111.us:                                     ; preds = %..loopexit_crit_edge.us
  %i.bd = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 %i.c
  %i.be = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 %i.d
  %7 = zext i32 %.1.lcssa.us to i64
  br label %bb.c

.lr.ph114.split:                                  ; preds = %.lr.ph114
  br i1 %.not100106, label %.lr.ph114.split.split.us, label %.preheader102.preheader

.preheader102.preheader:                          ; preds = %.lr.ph114.split
  %i.bf = zext nneg i32 %2 to i64
  %i.bg = add nsw i32 %2, -4                      ; 2 uses
  %i.bh = and i32 %i.bg, -4
  %i.bi = and i32 %i.bg, -4
  %i.bj = add nuw nsw i32 %i.bi, 4
  %i.bk = add nuw nsw i32 %i.bh, 4
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = icmp slt i32 %i.bj, %2
  br label %.preheader102

.lr.ph114.split.split.us:                         ; preds = %.lr.ph114.split
  %i.bn = icmp sgt i32 %2, 0
  br i1 %i.bn, label %.preheader102.us.preheader, label %._crit_edge115

.preheader102.us.preheader:                       ; preds = %.lr.ph114.split.split.us
  %exitcond.not = icmp eq i32 %2, 1
  %exitcond.not.1 = icmp eq i32 %2, 2
  br label %.preheader102.us

.preheader102.us:                                 ; preds = %.preheader102.us.preheader, %._crit_edge.us120
  %i.bo = phi i32 [ %i.ee, %._crit_edge.us120 ], [ %i.a, %.preheader102.us.preheader ] ; 2 uses
  %.0112.us116 = phi ptr [ %i.ed, %._crit_edge.us120 ], [ %0, %.preheader102.us.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0112.us116, i64 %i.c ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0112.us116, i64 %i.d ; 10 uses
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !9   ; 2 uses
  %.not101.us118 = icmp eq i8 %i.br, -1
  br i1 %.not101.us118, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader102.us
  %i.bs = zext i8 %i.br to i32
  %i.bt = mul nuw nsw i32 %i.bs, 32897            ; 3 uses
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !9
  %i.bv = zext i8 %i.bu to i32
  %i.bw = mul nuw nsw i32 %i.bt, %i.bv
  %i.bx = lshr i32 %i.bw, 23
  %i.by = trunc nuw i32 %i.bx to i8
  store i8 %i.by, ptr %i.bq, align 1, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cb = zext i8 %i.ca to i32
  %i.cc = mul nuw nsw i32 %i.bt, %i.cb
  %i.cd = lshr i32 %i.cc, 23
  %i.ce = trunc nuw i32 %i.cd to i8
  store i8 %i.ce, ptr %i.bz, align 1, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !9
  %i.ch = zext i8 %i.cg to i32
  %i.ci = mul nuw nsw i32 %i.bt, %i.ch
  %i.cj = lshr i32 %i.ci, 23
  %i.ck = trunc nuw i32 %i.cj to i8
  store i8 %i.ck, ptr %i.cf, align 1, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader102.us
  br i1 %exitcond.not, label %._crit_edge.us120, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !9   ; 2 uses
  %.not101.us118.1 = icmp eq i8 %i.cm, -1
  br i1 %.not101.us118.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = zext i8 %i.cm to i32
  %i.co = mul nuw nsw i32 %i.cn, 32897            ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !9
  %i.cr = zext i8 %i.cq to i32
  %i.cs = mul nuw nsw i32 %i.co, %i.cr
  %i.ct = lshr i32 %i.cs, 23
  %i.cu = trunc nuw i32 %i.ct to i8
  store i8 %i.cu, ptr %i.cp, align 1, !tbaa !9
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bq, i64 5 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !9
  %i.cx = zext i8 %i.cw to i32
  %i.cy = mul nuw nsw i32 %i.co, %i.cx
  %i.cz = lshr i32 %i.cy, 23
  %i.da = trunc nuw i32 %i.cz to i8
  store i8 %i.da, ptr %i.cv, align 1, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.bq, i64 6 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !9
  %i.dd = zext i8 %i.dc to i32
  %i.de = mul nuw nsw i32 %i.co, %i.dd
  %i.df = lshr i32 %i.de, 23
  %i.dg = trunc nuw i32 %i.df to i8
  store i8 %i.dg, ptr %i.db, align 1, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %exitcond.not.1, label %._crit_edge.us120, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !9   ; 2 uses
  %.not101.us118.2 = icmp eq i8 %i.di, -1
  br i1 %.not101.us118.2, label %._crit_edge.us120, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dj = zext i8 %i.di to i32
  %i.dk = mul nuw nsw i32 %i.dj, 32897            ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !9
  %i.dn = zext i8 %i.dm to i32
  %i.do = mul nuw nsw i32 %i.dk, %i.dn
  %i.dp = lshr i32 %i.do, 23
  %i.dq = trunc nuw i32 %i.dp to i8
  store i8 %i.dq, ptr %i.dl, align 1, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bq, i64 9 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.dt = zext i8 %i.ds to i32
  %i.du = mul nuw nsw i32 %i.dk, %i.dt
  %i.dv = lshr i32 %i.du, 23
  %i.dw = trunc nuw i32 %i.dv to i8
  store i8 %i.dw, ptr %i.dr, align 1, !tbaa !9
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bq, i64 10 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !9
  %i.dz = zext i8 %i.dy to i32
  %i.ea = mul nuw nsw i32 %i.dk, %i.dz
  %i.eb = lshr i32 %i.ea, 23
  %i.ec = trunc nuw i32 %i.eb to i8
  store i8 %i.ec, ptr %i.dx, align 1, !tbaa !9
  br label %._crit_edge.us120

._crit_edge.us120:                                ; preds = %bb.k, %bb.l, %bb.j, %bb.g
  %i.ed = getelementptr inbounds i8, ptr %.0112.us116, i64 %i.e
  %i.ee = add nsw i32 %i.bo, -1
  %i.ef = icmp sgt i32 %i.bo, 0
  br i1 %i.ef, label %.preheader102.us, label %._crit_edge115, !llvm.loop !14

.preheader102:                                    ; preds = %.preheader102.preheader, %._crit_edge
  %i.eg = phi i32 [ %i.gd, %._crit_edge ], [ %i.a, %.preheader102.preheader ] ; 2 uses
  %.0112 = phi ptr [ %i.gc, %._crit_edge ], [ %0, %.preheader102.preheader ] ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader102, %bb.m
  %indvars.iv125 = phi i64 [ 0, %.preheader102 ], [ %indvars.iv.next126, %bb.m ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %.preheader102 ], [ %indvars.iv.next, %bb.m ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0112, i64 %indvars.iv125 ; 2 uses
  %i.ei = load <16 x i8>, ptr %i.eh, align 1, !tbaa !9 ; 2 uses
  %i.ej = shufflevector <16 x i8> %i.ei, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ek = shufflevector <16 x i8> %i.ei, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.el = bitcast <16 x i8> %i.ej to <8 x i16>
  %i.em = bitcast <16 x i8> %i.ej to <8 x i16>
  %i.en = or <8 x i16> %i.em, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.eo = bitcast <16 x i8> %i.ek to <8 x i16>
  %i.ep = bitcast <16 x i8> %i.ek to <8 x i16>
  %i.eq = or <8 x i16> %i.ep, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.er = shufflevector <8 x i16> %i.en, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.es = shufflevector <8 x i16> %i.eq, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.et = mul nuw <8 x i16> %i.er, %i.el
  %i.eu = mul nuw <8 x i16> %i.es, %i.eo
  %i.ev = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.et, <8 x i16> splat (i16 -32639))
  %i.ew = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.eu, <8 x i16> splat (i16 -32639))
  %i.ex = lshr <8 x i16> %i.ev, splat (i16 7)
  %i.ey = lshr <8 x i16> %i.ew, splat (i16 7)
  %i.ez = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ex, <8 x i16> %i.ey)
  store <16 x i8> %i.ez, ptr %i.eh, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not99 = icmp samesign ugt i64 %indvars.iv.next, %i.bf
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 4
  br i1 %.not99, label %..loopexit103_crit_edge, label %bb.m, !llvm.loop !16

..loopexit103_crit_edge:                          ; preds = %bb.m
  br i1 %i.bm, label %.lr.ph111, label %._crit_edge

.lr.ph111:                                        ; preds = %..loopexit103_crit_edge
  %i.fa = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.c
  %i.fb = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.d
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph111, %bb.p
  %indvars.iv130 = phi i64 [ %i.bl, %.lr.ph111 ], [ %indvars.iv.next131, %bb.p ] ; 2 uses
  %i.fc = shl i64 %indvars.iv130, 2
  %i.fd = and i64 %i.fc, 4294967292               ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !9   ; 2 uses
  %.not101 = icmp eq i8 %i.ff, -1
  br i1 %.not101, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fg = zext i8 %i.ff to i32
  %i.fh = mul nuw nsw i32 %i.fg, 32897            ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fd ; 4 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9
  %i.fk = zext i8 %i.fj to i32
  %i.fl = mul nuw nsw i32 %i.fh, %i.fk
  %i.fm = lshr i32 %i.fl, 23
  %i.fn = trunc nuw i32 %i.fm to i8
  store i8 %i.fn, ptr %i.fi, align 1, !tbaa !9
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 1 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !9
  %i.fq = zext i8 %i.fp to i32
  %i.fr = mul nuw nsw i32 %i.fh, %i.fq
  %i.fs = lshr i32 %i.fr, 23
  %i.ft = trunc nuw i32 %i.fs to i8
  store i8 %i.ft, ptr %i.fo, align 1, !tbaa !9
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fi, i64 2 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !9
  %i.fw = zext i8 %i.fv to i32
  %i.fx = mul nuw nsw i32 %i.fh, %i.fw
  %i.fy = lshr i32 %i.fx, 23
  %i.fz = trunc nuw i32 %i.fy to i8
  store i8 %i.fz, ptr %i.fu, align 1, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ga = trunc nuw i64 %indvars.iv.next131 to i32
  %i.gb = icmp sgt i32 %2, %i.ga
  br i1 %i.gb, label %bb.n, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.p, %..loopexit103_crit_edge
  %i.gc = getelementptr inbounds i8, ptr %.0112, i64 %i.e
  %i.gd = add nsw i32 %i.eg, -1
  %i.ge = icmp sgt i32 %i.eg, 0
  br i1 %i.ge, label %.preheader102, label %._crit_edge115, !llvm.loop !14

._crit_edge115:                                   ; preds = %._crit_edge, %._crit_edge.us120, %._crit_edge.us, %.lr.ph114.split.split.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @DispatchAlpha_SSE2(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge109

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not89.not91 = icmp sgt i32 %2, 16
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %5 to i64
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge101
  %.0108 = phi ptr [ %0, %.preheader.lr.ph ], [ %i.bw, %._crit_edge101 ] ; 8 uses
  %.076107 = phi ptr [ %4, %.preheader.lr.ph ], [ %i.bx, %._crit_edge101 ] ; 8 uses
  %.077106 = phi i32 [ 255, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge101 ] ; 3 uses
  %.080105 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.by, %._crit_edge101 ]
  %.081104 = phi <2 x i64> [ splat (i64 -1), %.preheader.lr.ph ], [ %.182.lcssa, %._crit_edge101 ] ; 2 uses
  %.083103 = phi <2 x i64> [ splat (i64 -1), %.preheader.lr.ph ], [ %.184, %._crit_edge101 ] ; 2 uses
  br i1 %.not89.not91, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 16, %.preheader ] ; 2 uses
  %.18293 = phi <2 x i64> [ %i.v, %.lr.ph ], [ %.081104, %.preheader ]
  %.08592 = phi ptr [ %i.w, %.lr.ph ], [ %.076107, %.preheader ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv116
  %i.e = load <2 x i64>, ptr %i.d, align 1, !tbaa !9 ; 2 uses
  %i.f = bitcast <2 x i64> %i.e to <16 x i8>      ; 2 uses
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.h = shufflevector <16 x i8> %i.f, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.i = bitcast <16 x i8> %i.g to <8 x i16>      ; 2 uses
  %i.j = shufflevector <8 x i16> %i.i, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.k = shufflevector <8 x i16> %i.i, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.l = bitcast <16 x i8> %i.h to <8 x i16>      ; 2 uses
  %i.m = shufflevector <8 x i16> %i.l, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.n = shufflevector <8 x i16> %i.l, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.o = bitcast <8 x i16> %i.j to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.o, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr %.08592)
  %i.p = getelementptr inbounds nuw i8, ptr %.08592, i64 16
  %i.q = bitcast <8 x i16> %i.k to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.q, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr nonnull %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %.08592, i64 32
  %i.s = bitcast <8 x i16> %i.m to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.s, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr nonnull %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %.08592, i64 48
  %i.u = bitcast <8 x i16> %i.n to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.u, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr nonnull %i.t)
  %i.v = and <2 x i64> %i.e, %.18293              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.08592, i64 64 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.x = trunc nuw i64 %indvars.iv.next to i32
  %.not89.not = icmp sgt i32 %2, %i.x
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 16
  br i1 %.not89.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !17

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.085.lcssa = phi ptr [ %.076107, %.preheader ], [ %i.w, %._crit_edge.loopexit ] ; 2 uses
  %.182.lcssa = phi <2 x i64> [ %.081104, %.preheader ], [ %i.v, %._crit_edge.loopexit ] ; 2 uses
  %.078.lcssa = phi i32 [ 0, %.preheader ], [ %i.y, %._crit_edge.loopexit ] ; 3 uses
  %i.z = or disjoint i32 %.078.lcssa, 8           ; 2 uses
  %.not90.not = icmp slt i32 %i.z, %2
  br i1 %.not90.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.aa = zext nneg i32 %.078.lcssa to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.0108, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 1, !tbaa !9
  %i.ad = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ac, i64 0 ; 2 uses
  %i.ae = bitcast <2 x i64> %i.ad to <16 x i8>
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ag = bitcast <16 x i8> %i.af to <8 x i16>    ; 2 uses
  %i.ah = shufflevector <8 x i16> %i.ag, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ai = shufflevector <8 x i16> %i.ag, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aj = bitcast <8 x i16> %i.ah to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.aj, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr %.085.lcssa)
  %i.ak = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 16
  %i.al = bitcast <8 x i16> %i.ai to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.al, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr nonnull %i.ak)
  %i.am = and <2 x i64> %i.ad, %.083103
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.184 = phi <2 x i64> [ %i.am, %bb.b ], [ %.083103, %._crit_edge ] ; 2 uses
  %.179 = phi i32 [ %i.z, %bb.b ], [ %.078.lcssa, %._crit_edge ] ; 2 uses
  %i.an = icmp slt i32 %.179, %2
  br i1 %i.an, label %.lr.ph100.preheader, label %._crit_edge101

.lr.ph100.preheader:                              ; preds = %bb.c
  %i.ao = zext i32 %.179 to i64                   ; 4 uses
  %i.ap = sub nsw i64 %wide.trip.count, %i.ao
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol

.lr.ph100.prol:                                   ; preds = %.lr.ph100.preheader, %.lr.ph100.prol
  %indvars.iv121.prol = phi i64 [ %indvars.iv.next122.prol, %.lr.ph100.prol ], [ %i.ao, %.lr.ph100.preheader ] ; 3 uses
  %.198.prol = phi i32 [ %i.av, %.lr.ph100.prol ], [ %.077106, %.lr.ph100.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph100.prol ], [ 0, %.lr.ph100.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv121.prol
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9   ; 2 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nsw i64 %indvars.iv121.prol, 2
  %i.au = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.at
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !9
  %i.av = and i32 %.198.prol, %i.as               ; 3 uses
  %indvars.iv.next122.prol = add nuw nsw i64 %indvars.iv121.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol, !llvm.loop !18

.lr.ph100.prol.loopexit:                          ; preds = %.lr.ph100.prol, %.lr.ph100.preheader
  %.lcssa133.unr = phi i32 [ poison, %.lr.ph100.preheader ], [ %i.av, %.lr.ph100.prol ]
  %indvars.iv121.unr = phi i64 [ %i.ao, %.lr.ph100.preheader ], [ %indvars.iv.next122.prol, %.lr.ph100.prol ]
  %.198.unr = phi i32 [ %.077106, %.lr.ph100.preheader ], [ %i.av, %.lr.ph100.prol ]
  %i.aw = sub nsw i64 %i.ao, %wide.trip.count
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100
  %indvars.iv121 = phi i64 [ %indvars.iv.next122.3, %.lr.ph100 ], [ %indvars.iv121.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %.198 = phi i32 [ %i.bv, %.lr.ph100 ], [ %.198.unr, %.lr.ph100.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv121
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9   ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nsw i64 %indvars.iv121, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bb
  store i8 %i.az, ptr %i.bc, align 1, !tbaa !9
  %i.bd = and i32 %.198, %i.ba
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !9   ; 2 uses
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nsw i64 %indvars.iv.next122, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !9
  %i.bj = and i32 %i.bd, %i.bg
  %indvars.iv.next122.1 = add nuw nsw i64 %indvars.iv121, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122.1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !9   ; 2 uses
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nsw i64 %indvars.iv.next122.1, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bn
  store i8 %i.bl, ptr %i.bo, align 1, !tbaa !9
  %i.bp = and i32 %i.bj, %i.bm
  %indvars.iv.next122.2 = add nuw nsw i64 %indvars.iv121, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122.2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9   ; 2 uses
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nsw i64 %indvars.iv.next122.2, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bt
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !9
  %i.bv = and i32 %i.bp, %i.bs                    ; 2 uses
  %indvars.iv.next122.3 = add nuw nsw i64 %indvars.iv121, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next122.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge101, label %.lr.ph100, !llvm.loop !20

._crit_edge101:                                   ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100, %bb.c
  %.1.lcssa = phi i32 [ %.077106, %bb.c ], [ %.lcssa133.unr, %.lr.ph100.prol.loopexit ], [ %i.bv, %.lr.ph100 ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.0108, i64 %i.b
  %i.bx = getelementptr inbounds i8, ptr %.076107, i64 %i.c
  %i.by = add nuw nsw i32 %.080105, 1             ; 2 uses
  %exitcond124.not = icmp eq i32 %i.by, %3
  br i1 %exitcond124.not, label %._crit_edge109.loopexit, label %.preheader, !llvm.loop !21

._crit_edge109.loopexit:                          ; preds = %._crit_edge101
  %i.bz = bitcast <2 x i64> %.184 to <16 x i8>
  %i.ca = icmp eq <16 x i8> %i.bz, splat (i8 -1)
  %i.cb = bitcast <16 x i1> %i.ca to i16
  %i.cc = and i16 %i.cb, 255
  %i.cd = zext nneg i16 %i.cc to i32
  %i.ce = and i32 %.1.lcssa, %i.cd
  %i.cf = icmp ne i32 %i.ce, 255
  %i.cg = bitcast <2 x i64> %.182.lcssa to <16 x i8>
  %i.ch = icmp ne <16 x i8> %i.cg, splat (i8 -1)
  %i.ci = bitcast <16 x i1> %i.ch to i16
  %i.cj = icmp ne i16 %i.ci, 0
  %i.ck = select i1 %i.cf, i1 true, i1 %i.cj
  %i.cl = zext i1 %i.ck to i32
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %._crit_edge109.loopexit, %bb.a
  %.not = phi i32 [ 0, %bb.a ], [ %i.cl, %._crit_edge109.loopexit ]
  ret i32 %.not
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @DispatchAlphaToGreen_SSE2(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef writeonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = and i32 %2, -16
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.preheader46.lr.ph, label %._crit_edge53
end_hunk_0
