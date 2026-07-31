loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
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
  %i.a = add nsw i32 %3, -1                       ; 4 uses
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %bb.a
  %.not = icmp ne i32 %1, 0                       ; 3 uses
  %i.c = select i1 %.not, i64 0, i64 3            ; 4 uses
  %i.d = zext i1 %.not to i64                     ; 4 uses
  %i.e = sext i32 %4 to i64                       ; 4 uses
  %.not100106 = icmp slt i32 %2, 4                ; 2 uses
  br i1 %.not, label %.lr.ph114.split.us, label %.lr.ph114.split

.lr.ph114.split.us:                               ; preds = %.lr.ph114
  br i1 %.not100106, label %.lr.ph114.split.us.split.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph114.split.us
  %i.f = zext nneg i32 %2 to i64
  %i.g = add nsw i32 %2, -4                       ; 2 uses
  %i.h = and i32 %i.g, -4
  %5 = and i32 %i.g, -4
  %6 = add nuw nsw i32 %5, 4
  %i.i = add nuw nsw i32 %i.h, 4
  %i.j = zext nneg i32 %i.i to i64
  %i.k = icmp slt i32 %6, %2
  br label %.preheader.us

.lr.ph114.split.us.split.us:                      ; preds = %.lr.ph114.split.us
  %i.l = icmp sgt i32 %2, 0
  br i1 %i.l, label %.preheader.us.us.preheader, label %._crit_edge115

.preheader.us.us.preheader:                       ; preds = %.lr.ph114.split.us.split.us
  %exitcond150.not = icmp eq i32 %2, 1
  %exitcond150.not.1 = icmp eq i32 %2, 2
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.us.us
  %i.m = phi i32 [ %i.cc, %._crit_edge.us.us ], [ %i.a, %.preheader.us.us.preheader ] ; 2 uses
  %.0112.us.us = phi ptr [ %i.cb, %._crit_edge.us.us ], [ %0, %.preheader.us.us.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 %i.c ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 %i.d ; 10 uses
  %i.p = load i8, ptr %i.n, align 1, !tbaa !9     ; 2 uses
  %.not101.us.us = icmp eq i8 %i.p, -1
  br i1 %.not101.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.us.us
  %i.q = zext i8 %i.p to i32
  %i.r = mul nuw nsw i32 %i.q, 32897              ; 3 uses
  %i.s = load i8, ptr %i.o, align 1, !tbaa !9
  %i.t = zext i8 %i.s to i32
  %i.u = mul nuw nsw i32 %i.r, %i.t
  %i.v = lshr i32 %i.u, 23
  %i.w = trunc nuw i32 %i.v to i8
  store i8 %i.w, ptr %i.o, align 1, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9
  %i.z = zext i8 %i.y to i32
  %i.aa = mul nuw nsw i32 %i.r, %i.z
  %i.ab = lshr i32 %i.aa, 23
  %i.ac = trunc nuw i32 %i.ab to i8
  store i8 %i.ac, ptr %i.x, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.af = zext i8 %i.ae to i32
  %i.ag = mul nuw nsw i32 %i.r, %i.af
  %i.ah = lshr i32 %i.ag, 23
  %i.ai = trunc nuw i32 %i.ah to i8
  store i8 %i.ai, ptr %i.ad, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.us.us
  br i1 %exitcond150.not, label %._crit_edge.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9   ; 2 uses
  %.not101.us.us.1 = icmp eq i8 %i.ak, -1
  br i1 %.not101.us.us.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = zext i8 %i.ak to i32
  %i.am = mul nuw nsw i32 %i.al, 32897            ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nuw nsw i32 %i.am, %i.ap
  %i.ar = lshr i32 %i.aq, 23
  %i.as = trunc nuw i32 %i.ar to i8
  store i8 %i.as, ptr %i.an, align 1, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 5 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9
  %i.av = zext i8 %i.au to i32
  %i.aw = mul nuw nsw i32 %i.am, %i.av
  %i.ax = lshr i32 %i.aw, 23
  %i.ay = trunc nuw i32 %i.ax to i8
  store i8 %i.ay, ptr %i.at, align 1, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 6 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9
  %i.bb = zext i8 %i.ba to i32
  %i.bc = mul nuw nsw i32 %i.am, %i.bb
  %i.bd = lshr i32 %i.bc, 23
  %i.be = trunc nuw i32 %i.bd to i8
  store i8 %i.be, ptr %i.az, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %exitcond150.not.1, label %._crit_edge.us.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9   ; 2 uses
  %.not101.us.us.2 = icmp eq i8 %i.bg, -1
  br i1 %.not101.us.us.2, label %._crit_edge.us.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = zext i8 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, 32897            ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !9
  %i.bl = zext i8 %i.bk to i32
  %i.bm = mul nuw nsw i32 %i.bi, %i.bl
  %i.bn = lshr i32 %i.bm, 23
  %i.bo = trunc nuw i32 %i.bn to i8
  store i8 %i.bo, ptr %i.bj, align 1, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 9 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i32
  %i.bs = mul nuw nsw i32 %i.bi, %i.br
  %i.bt = lshr i32 %i.bs, 23
  %i.bu = trunc nuw i32 %i.bt to i8
  store i8 %i.bu, ptr %i.bp, align 1, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 10 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.bx = zext i8 %i.bw to i32
  %i.by = mul nuw nsw i32 %i.bi, %i.bx
  %i.bz = lshr i32 %i.by, 23
  %i.ca = trunc nuw i32 %i.bz to i8
  store i8 %i.ca, ptr %i.bv, align 1, !tbaa !9
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %bb.g, %bb.h, %bb.f, %bb.c
  %i.cb = getelementptr inbounds i8, ptr %.0112.us.us, i64 %i.e
  %i.cc = add nsw i32 %i.m, -1
  %i.cd = icmp sgt i32 %i.m, 0
  br i1 %i.cd, label %.preheader.us.us, label %._crit_edge115, !llvm.loop !13

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %i.ce = phi i32 [ %i.dz, %._crit_edge.us ], [ %i.a, %.preheader.us.preheader ] ; 2 uses
  %.0112.us = phi ptr [ %i.dy, %._crit_edge.us ], [ %0, %.preheader.us.preheader ] ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader.us, %bb.i
  %indvars.iv138 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next139, %bb.i ] ; 2 uses
  %indvars.iv136 = phi i64 [ 4, %.preheader.us ], [ %indvars.iv.next137, %bb.i ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0112.us, i64 %indvars.iv138 ; 2 uses
  %i.cg = load <16 x i8>, ptr %i.cf, align 1, !tbaa !9 ; 2 uses
  %i.ch = shufflevector <16 x i8> %i.cg, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ci = shufflevector <16 x i8> %i.cg, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cj = bitcast <16 x i8> %i.ch to <8 x i16>
  %i.ck = bitcast <16 x i8> %i.ch to <8 x i16>
  %i.cl = or <8 x i16> %i.ck, <i16 0, i16 255, i16 poison, i16 poison, i16 0, i16 255, i16 poison, i16 poison>
  %i.cm = bitcast <16 x i8> %i.ci to <8 x i16>
  %i.cn = bitcast <16 x i8> %i.ci to <8 x i16>
  %i.co = or <8 x i16> %i.cn, <i16 0, i16 255, i16 poison, i16 poison, i16 0, i16 255, i16 poison, i16 poison>
  %i.cp = shufflevector <8 x i16> %i.cl, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 5, i32 4, i32 4, i32 4>
  %i.cq = shufflevector <8 x i16> %i.co, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 5, i32 4, i32 4, i32 4>
  %i.cr = mul nuw <8 x i16> %i.cp, %i.cj
  %i.cs = mul nuw <8 x i16> %i.cq, %i.cm
  %i.ct = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.cr, <8 x i16> splat (i16 -32639))
  %i.cu = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.cs, <8 x i16> splat (i16 -32639))
  %i.cv = lshr <8 x i16> %i.ct, splat (i16 7)
  %i.cw = lshr <8 x i16> %i.cu, splat (i16 7)
  %i.cx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cv, <8 x i16> %i.cw)
  store <16 x i8> %i.cx, ptr %i.cf, align 1, !tbaa !9
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 4 ; 2 uses
  %.not100.us = icmp samesign ugt i64 %indvars.iv.next137, %i.f
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 4
  br i1 %.not100.us, label %..loopexit_crit_edge.us, label %bb.i, !llvm.loop !14

bb.j:                                             ; preds = %.lr.ph111.us, %bb.l
  %indvars.iv143 = phi i64 [ %i.j, %.lr.ph111.us ], [ %indvars.iv.next144, %bb.l ] ; 2 uses
  %i.cy = shl i64 %indvars.iv143, 2
  %i.cz = and i64 %i.cy, 4294967292               ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !9   ; 2 uses
  %.not101.us = icmp eq i8 %i.db, -1
  br i1 %.not101.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dc = zext i8 %i.db to i32
  %i.dd = mul nuw nsw i32 %i.dc, 32897            ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.cz ; 4 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !9
  %i.dg = zext i8 %i.df to i32
  %i.dh = mul nuw nsw i32 %i.dd, %i.dg
  %i.di = lshr i32 %i.dh, 23
  %i.dj = trunc nuw i32 %i.di to i8
  store i8 %i.dj, ptr %i.de, align 1, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !9
  %i.dm = zext i8 %i.dl to i32
  %i.dn = mul nuw nsw i32 %i.dd, %i.dm
  %i.do = lshr i32 %i.dn, 23
  %i.dp = trunc nuw i32 %i.do to i8
  store i8 %i.dp, ptr %i.dk, align 1, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 2 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !9
  %i.ds = zext i8 %i.dr to i32
  %i.dt = mul nuw nsw i32 %i.dd, %i.ds
  %i.du = lshr i32 %i.dt, 23
  %i.dv = trunc nuw i32 %i.du to i8
  store i8 %i.dv, ptr %i.dq, align 1, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.dw = trunc nuw i64 %indvars.iv.next144 to i32
  %i.dx = icmp sgt i32 %2, %i.dw
  br i1 %i.dx, label %bb.j, label %._crit_edge.us, !llvm.loop !15

._crit_edge.us:                                   ; preds = %bb.l, %..loopexit_crit_edge.us
  %i.dy = getelementptr inbounds i8, ptr %.0112.us, i64 %i.e
  %i.dz = add nsw i32 %i.ce, -1
  %i.ea = icmp sgt i32 %i.ce, 0
  br i1 %i.ea, label %.preheader.us, label %._crit_edge115, !llvm.loop !13

..loopexit_crit_edge.us:                          ; preds = %bb.i
  br i1 %i.k, label %.lr.ph111.us, label %._crit_edge.us

.lr.ph111.us:                                     ; preds = %..loopexit_crit_edge.us
  %i.eb = getelementptr inbounds nuw i8, ptr %.0112.us, i64 %i.c
  %i.ec = getelementptr inbounds nuw i8, ptr %.0112.us, i64 %i.d
  br label %bb.j

.lr.ph114.split:                                  ; preds = %.lr.ph114
  br i1 %.not100106, label %.lr.ph114.split.split.us, label %.preheader102.preheader

.preheader102.preheader:                          ; preds = %.lr.ph114.split
  %i.ed = zext nneg i32 %2 to i64
  %i.ee = add nsw i32 %2, -4                      ; 2 uses
  %i.ef = and i32 %i.ee, -4
  %7 = and i32 %i.ee, -4
  %8 = add nuw nsw i32 %7, 4
  %i.eg = add nuw nsw i32 %i.ef, 4
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = icmp slt i32 %8, %2
  br label %.preheader102

.lr.ph114.split.split.us:                         ; preds = %.lr.ph114.split
  %i.ej = icmp sgt i32 %2, 0
  br i1 %i.ej, label %.preheader102.us.preheader, label %._crit_edge115

.preheader102.us.preheader:                       ; preds = %.lr.ph114.split.split.us
  %exitcond.not = icmp eq i32 %2, 1
  %exitcond.not.1 = icmp eq i32 %2, 2
  br label %.preheader102.us

.preheader102.us:                                 ; preds = %.preheader102.us.preheader, %._crit_edge.us120
  %i.ek = phi i32 [ %i.ha, %._crit_edge.us120 ], [ %i.a, %.preheader102.us.preheader ] ; 2 uses
  %.0112.us116 = phi ptr [ %i.gz, %._crit_edge.us120 ], [ %0, %.preheader102.us.preheader ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0112.us116, i64 %i.c ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0112.us116, i64 %i.d ; 10 uses
  %i.en = load i8, ptr %i.el, align 1, !tbaa !9   ; 2 uses
  %.not101.us118 = icmp eq i8 %i.en, -1
  br i1 %.not101.us118, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader102.us
  %i.eo = zext i8 %i.en to i32
  %i.ep = mul nuw nsw i32 %i.eo, 32897            ; 3 uses
  %i.eq = load i8, ptr %i.em, align 1, !tbaa !9
  %i.er = zext i8 %i.eq to i32
  %i.es = mul nuw nsw i32 %i.ep, %i.er
  %i.et = lshr i32 %i.es, 23
  %i.eu = trunc nuw i32 %i.et to i8
  store i8 %i.eu, ptr %i.em, align 1, !tbaa !9
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 1 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !9
  %i.ex = zext i8 %i.ew to i32
  %i.ey = mul nuw nsw i32 %i.ep, %i.ex
  %i.ez = lshr i32 %i.ey, 23
  %i.fa = trunc nuw i32 %i.ez to i8
  store i8 %i.fa, ptr %i.ev, align 1, !tbaa !9
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 2 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !9
  %i.fd = zext i8 %i.fc to i32
  %i.fe = mul nuw nsw i32 %i.ep, %i.fd
  %i.ff = lshr i32 %i.fe, 23
  %i.fg = trunc nuw i32 %i.ff to i8
  store i8 %i.fg, ptr %i.fb, align 1, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader102.us
  br i1 %exitcond.not, label %._crit_edge.us120, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fh = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !9   ; 2 uses
  %.not101.us118.1 = icmp eq i8 %i.fi, -1
  br i1 %.not101.us118.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fj = zext i8 %i.fi to i32
  %i.fk = mul nuw nsw i32 %i.fj, 32897            ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9
  %i.fn = zext i8 %i.fm to i32
  %i.fo = mul nuw nsw i32 %i.fk, %i.fn
  %i.fp = lshr i32 %i.fo, 23
  %i.fq = trunc nuw i32 %i.fp to i8
  store i8 %i.fq, ptr %i.fl, align 1, !tbaa !9
  %i.fr = getelementptr inbounds nuw i8, ptr %i.em, i64 5 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !9
  %i.ft = zext i8 %i.fs to i32
  %i.fu = mul nuw nsw i32 %i.fk, %i.ft
  %i.fv = lshr i32 %i.fu, 23
  %i.fw = trunc nuw i32 %i.fv to i8
  store i8 %i.fw, ptr %i.fr, align 1, !tbaa !9
  %i.fx = getelementptr inbounds nuw i8, ptr %i.em, i64 6 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !9
  %i.fz = zext i8 %i.fy to i32
  %i.ga = mul nuw nsw i32 %i.fk, %i.fz
  %i.gb = lshr i32 %i.ga, 23
  %i.gc = trunc nuw i32 %i.gb to i8
  store i8 %i.gc, ptr %i.fx, align 1, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %exitcond.not.1, label %._crit_edge.us120, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gd = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !9   ; 2 uses
  %.not101.us118.2 = icmp eq i8 %i.ge, -1
  br i1 %.not101.us118.2, label %._crit_edge.us120, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gf = zext i8 %i.ge to i32
  %i.gg = mul nuw nsw i32 %i.gf, 32897            ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !9
  %i.gj = zext i8 %i.gi to i32
  %i.gk = mul nuw nsw i32 %i.gg, %i.gj
  %i.gl = lshr i32 %i.gk, 23
  %i.gm = trunc nuw i32 %i.gl to i8
  store i8 %i.gm, ptr %i.gh, align 1, !tbaa !9
  %i.gn = getelementptr inbounds nuw i8, ptr %i.em, i64 9 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !9
  %i.gp = zext i8 %i.go to i32
  %i.gq = mul nuw nsw i32 %i.gg, %i.gp
  %i.gr = lshr i32 %i.gq, 23
  %i.gs = trunc nuw i32 %i.gr to i8
  store i8 %i.gs, ptr %i.gn, align 1, !tbaa !9
  %i.gt = getelementptr inbounds nuw i8, ptr %i.em, i64 10 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !9
  %i.gv = zext i8 %i.gu to i32
  %i.gw = mul nuw nsw i32 %i.gg, %i.gv
  %i.gx = lshr i32 %i.gw, 23
  %i.gy = trunc nuw i32 %i.gx to i8
  store i8 %i.gy, ptr %i.gt, align 1, !tbaa !9
  br label %._crit_edge.us120

._crit_edge.us120:                                ; preds = %bb.r, %bb.s, %bb.q, %bb.n
  %i.gz = getelementptr inbounds i8, ptr %.0112.us116, i64 %i.e
  %i.ha = add nsw i32 %i.ek, -1
  %i.hb = icmp sgt i32 %i.ek, 0
  br i1 %i.hb, label %.preheader102.us, label %._crit_edge115, !llvm.loop !13

.preheader102:                                    ; preds = %.preheader102.preheader, %._crit_edge
  %i.hc = phi i32 [ %i.iz, %._crit_edge ], [ %i.a, %.preheader102.preheader ] ; 2 uses
  %.0112 = phi ptr [ %i.iy, %._crit_edge ], [ %0, %.preheader102.preheader ] ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %.preheader102, %bb.t
  %indvars.iv125 = phi i64 [ 0, %.preheader102 ], [ %indvars.iv.next126, %bb.t ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %.preheader102 ], [ %indvars.iv.next, %bb.t ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.0112, i64 %indvars.iv125 ; 2 uses
  %i.he = load <16 x i8>, ptr %i.hd, align 1, !tbaa !9 ; 2 uses
  %i.hf = shufflevector <16 x i8> %i.he, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.hg = shufflevector <16 x i8> %i.he, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.hh = bitcast <16 x i8> %i.hf to <8 x i16>
  %i.hi = bitcast <16 x i8> %i.hf to <8 x i16>
  %i.hj = or <8 x i16> %i.hi, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.hk = bitcast <16 x i8> %i.hg to <8 x i16>
  %i.hl = bitcast <16 x i8> %i.hg to <8 x i16>
  %i.hm = or <8 x i16> %i.hl, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.hn = shufflevector <8 x i16> %i.hj, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.ho = shufflevector <8 x i16> %i.hm, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.hp = mul nuw <8 x i16> %i.hn, %i.hh
  %i.hq = mul nuw <8 x i16> %i.ho, %i.hk
  %i.hr = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.hp, <8 x i16> splat (i16 -32639))
  %i.hs = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.hq, <8 x i16> splat (i16 -32639))
  %i.ht = lshr <8 x i16> %i.hr, splat (i16 7)
  %i.hu = lshr <8 x i16> %i.hs, splat (i16 7)
  %i.hv = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ht, <8 x i16> %i.hu)
  store <16 x i8> %i.hv, ptr %i.hd, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not99 = icmp samesign ugt i64 %indvars.iv.next, %i.ed
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 4
  br i1 %.not99, label %..loopexit103_crit_edge, label %bb.t, !llvm.loop !16

..loopexit103_crit_edge:                          ; preds = %bb.t
  br i1 %i.ei, label %.lr.ph111, label %._crit_edge

.lr.ph111:                                        ; preds = %..loopexit103_crit_edge
  %i.hw = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.c
  %i.hx = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.d
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph111, %bb.w
  %indvars.iv130 = phi i64 [ %i.eh, %.lr.ph111 ], [ %indvars.iv.next131, %bb.w ] ; 2 uses
  %i.hy = shl i64 %indvars.iv130, 2
  %i.hz = and i64 %i.hy, 4294967292               ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !9   ; 2 uses
  %.not101 = icmp eq i8 %i.ib, -1
  br i1 %.not101, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ic = zext i8 %i.ib to i32
  %i.id = mul nuw nsw i32 %i.ic, 32897            ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hz ; 4 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !9
  %i.ig = zext i8 %i.if to i32
  %i.ih = mul nuw nsw i32 %i.id, %i.ig
  %i.ii = lshr i32 %i.ih, 23
  %i.ij = trunc nuw i32 %i.ii to i8
  store i8 %i.ij, ptr %i.ie, align 1, !tbaa !9
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 1 ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !9
  %i.im = zext i8 %i.il to i32
  %i.in = mul nuw nsw i32 %i.id, %i.im
  %i.io = lshr i32 %i.in, 23
  %i.ip = trunc nuw i32 %i.io to i8
  store i8 %i.ip, ptr %i.ik, align 1, !tbaa !9
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 2 ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !9
  %i.is = zext i8 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.id, %i.is
  %i.iu = lshr i32 %i.it, 23
  %i.iv = trunc nuw i32 %i.iu to i8
  store i8 %i.iv, ptr %i.iq, align 1, !tbaa !9
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.iw = trunc nuw i64 %indvars.iv.next131 to i32
end_hunk_0
begin_hunk_1_@ExtractAlpha_SSE2:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bx
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.by
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 20
  %i.cm = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bz
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.ca
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  %i.cq = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.cr = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cs = load i8, ptr %i.cf, align 1, !tbaa !9
  %i.ct = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.cu = insertelement <4 x i8> poison, i8 %i.cq, i64 0
  %i.cv = insertelement <4 x i8> %i.cu, i8 %i.cr, i64 1
  %i.cw = insertelement <4 x i8> %i.cv, i8 %i.cs, i64 2
  %i.cx = insertelement <4 x i8> %i.cw, i8 %i.ct, i64 3 ; 2 uses
  %i.cy = load i8, ptr %i.cj, align 1, !tbaa !9
  %i.cz = load i8, ptr %i.cl, align 1, !tbaa !9
  %i.da = load i8, ptr %i.cn, align 1, !tbaa !9
  %i.db = load i8, ptr %i.cp, align 1, !tbaa !9
  %i.dc = insertelement <4 x i8> poison, i8 %i.cy, i64 0
  %i.dd = insertelement <4 x i8> %i.dc, i8 %i.cz, i64 1
  %i.de = insertelement <4 x i8> %i.dd, i8 %i.da, i64 2
  %i.df = insertelement <4 x i8> %i.de, i8 %i.db, i64 3 ; 2 uses
  %i.dg = zext <4 x i8> %i.cx to <4 x i32>
  %i.dh = zext <4 x i8> %i.df to <4 x i32>
  %i.di = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %i.bs ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store <4 x i8> %i.cx, ptr %i.di, align 1, !tbaa !9
  store <4 x i8> %i.df, ptr %i.dj, align 1, !tbaa !9
  %i.dk = and <4 x i32> %vec.phi, %i.dg           ; 2 uses
  %i.dl = and <4 x i32> %vec.phi108, %i.dh        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <4 x i32> %i.dl, %i.dk
  %i.dn = tail call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph57.us.preheader109

.lr.ph57.us.preheader109:                         ; preds = %.lr.ph57.us.preheader, %middle.block
  %indvars.iv95.ph = phi i64 [ %indvars.iv93.lcssa, %.lr.ph57.us.preheader ], [ %i.bq, %middle.block ]
  %.156.us.ph = phi i32 [ %.04361.us, %.lr.ph57.us.preheader ], [ %i.dn, %middle.block ]
  br label %.lr.ph57.us

.preheader50.lr.ph.split:                         ; preds = %.preheader50.lr.ph
  %i.do = icmp sgt i32 %2, 0
  br i1 %i.do, label %.preheader50.us68.preheader, label %._crit_edge64

.preheader50.us68.preheader:                      ; preds = %.preheader50.lr.ph.split
  %exitcond.not = icmp eq i32 %2, 1
  %exitcond.not.1 = icmp eq i32 %2, 2
  %exitcond.not.2 = icmp eq i32 %2, 3
  %exitcond.not.3 = icmp eq i32 %2, 4
  %exitcond.not.4 = icmp eq i32 %2, 5
  %exitcond.not.5 = icmp eq i32 %2, 6
  %exitcond.not.6 = icmp eq i32 %2, 7
  br label %.preheader50.us68

.preheader50.us68:                                ; preds = %.preheader50.us68.preheader, %._crit_edge.us77
  %.063.us69 = phi ptr [ %i.fb, %._crit_edge.us77 ], [ %0, %.preheader50.us68.preheader ] ; 9 uses
  %.04262.us70 = phi ptr [ %i.fc, %._crit_edge.us77 ], [ %4, %.preheader50.us68.preheader ] ; 9 uses
  %.04361.us71 = phi i32 [ %.lcssa114, %._crit_edge.us77 ], [ 255, %.preheader50.us68.preheader ]
  %.04660.us72 = phi i32 [ %i.fd, %._crit_edge.us77 ], [ 0, %.preheader50.us68.preheader ]
  %i.dp = load i8, ptr %.063.us69, align 1, !tbaa !9 ; 2 uses
  %i.dq = zext i8 %i.dp to i32
  store i8 %i.dp, ptr %.04262.us70, align 1, !tbaa !9
  %i.dr = and i32 %.04361.us71, %i.dq             ; 2 uses
  br i1 %exitcond.not, label %._crit_edge.us77, label %bb.b

bb.b:                                             ; preds = %.preheader50.us68
  %i.ds = getelementptr inbounds nuw i8, ptr %.063.us69, i64 4
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !9   ; 2 uses
  %i.du = zext i8 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 1
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !9
  %i.dw = and i32 %i.dr, %i.du                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us77, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dx = getelementptr inbounds nuw i8, ptr %.063.us69, i64 8
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !9   ; 2 uses
  %i.dz = zext i8 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 2
  store i8 %i.dy, ptr %i.ea, align 1, !tbaa !9
  %i.eb = and i32 %i.dw, %i.dz                    ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge.us77, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ec = getelementptr inbounds nuw i8, ptr %.063.us69, i64 12
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !9   ; 2 uses
  %i.ee = zext i8 %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 3
  store i8 %i.ed, ptr %i.ef, align 1, !tbaa !9
  %i.eg = and i32 %i.eb, %i.ee                    ; 2 uses
  br i1 %exitcond.not.3, label %._crit_edge.us77, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eh = getelementptr inbounds nuw i8, ptr %.063.us69, i64 16
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !9   ; 2 uses
  %i.ej = zext i8 %i.ei to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 4
  store i8 %i.ei, ptr %i.ek, align 1, !tbaa !9
  %i.el = and i32 %i.eg, %i.ej                    ; 2 uses
  br i1 %exitcond.not.4, label %._crit_edge.us77, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = getelementptr inbounds nuw i8, ptr %.063.us69, i64 20
  %i.en = load i8, ptr %i.em, align 1, !tbaa !9   ; 2 uses
  %i.eo = zext i8 %i.en to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 5
  store i8 %i.en, ptr %i.ep, align 1, !tbaa !9
  %i.eq = and i32 %i.el, %i.eo                    ; 2 uses
  br i1 %exitcond.not.5, label %._crit_edge.us77, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.er = getelementptr inbounds nuw i8, ptr %.063.us69, i64 24
  %i.es = load i8, ptr %i.er, align 1, !tbaa !9   ; 2 uses
  %i.et = zext i8 %i.es to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 6
  store i8 %i.es, ptr %i.eu, align 1, !tbaa !9
  %i.ev = and i32 %i.eq, %i.et                    ; 2 uses
  br i1 %exitcond.not.6, label %._crit_edge.us77, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ew = getelementptr inbounds nuw i8, ptr %.063.us69, i64 28
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !9   ; 2 uses
  %i.ey = zext i8 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 7
  store i8 %i.ex, ptr %i.ez, align 1, !tbaa !9
  %i.fa = and i32 %i.ev, %i.ey
  br label %._crit_edge.us77

._crit_edge.us77:                                 ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.preheader50.us68
  %.lcssa114 = phi i32 [ %i.dr, %.preheader50.us68 ], [ %i.dw, %bb.b ], [ %i.eb, %bb.c ], [ %i.eg, %bb.d ], [ %i.el, %bb.e ], [ %i.eq, %bb.f ], [ %i.ev, %bb.g ], [ %i.fa, %bb.h ] ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %.063.us69, i64 %i.e
  %i.fc = getelementptr inbounds i8, ptr %.04262.us70, i64 %i.f
  %i.fd = add nuw nsw i32 %.04660.us72, 1         ; 2 uses
  %exitcond89.not = icmp eq i32 %i.fd, %3
  br i1 %exitcond89.not, label %._crit_edge64, label %.preheader50.us68, !llvm.loop !32

._crit_edge64.loopexit:                           ; preds = %._crit_edge.us
  %i.fe = bitcast <2 x i64> %.lcssa to <16 x i8>
  %i.ff = icmp eq <16 x i8> %i.fe, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.fg = bitcast <16 x i1> %i.ff to i16
  %i.fh = zext i16 %i.fg to i32
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge.us77, %.preheader50.lr.ph.split, %._crit_edge64.loopexit, %bb.a
  %.047.lcssa = phi i32 [ 65535, %bb.a ], [ 65535, %.preheader50.lr.ph.split ], [ %i.fh, %._crit_edge64.loopexit ], [ 65535, %._crit_edge.us77 ]
  %.043.lcssa = phi i32 [ 255, %bb.a ], [ 255, %.preheader50.lr.ph.split ], [ %.1.lcssa.us, %._crit_edge64.loopexit ], [ %.lcssa114, %._crit_edge.us77 ]
  %i.fi = and i32 %.043.lcssa, %.047.lcssa
  %i.fj = icmp eq i32 %i.fi, 255
  %i.fk = zext i1 %i.fj to i32
  ret i32 %i.fk
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ExtractGreen_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %.not59 = icmp slt i32 %2, 16
  br i1 %.not59, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv68 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next69, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 16, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.05460 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.u, %.lr.ph ] ; 5 uses
  %i.b = load <4 x i32>, ptr %.05460, align 1, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %.05460, i64 16
  %i.d = load <4 x i32>, ptr %i.c, align 1, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %.05460, i64 32
  %i.f = load <4 x i32>, ptr %i.e, align 1, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %.05460, i64 48
  %i.h = load <4 x i32>, ptr %i.g, align 1, !tbaa !9
  %i.i = lshr <4 x i32> %i.b, splat (i32 8)
  %i.j = lshr <4 x i32> %i.d, splat (i32 8)
  %i.k = lshr <4 x i32> %i.f, splat (i32 8)
  %i.l = lshr <4 x i32> %i.h, splat (i32 8)
  %i.m = and <4 x i32> %i.i, splat (i32 255)
  %i.n = and <4 x i32> %i.j, splat (i32 255)
  %i.o = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.m, <4 x i32> %i.n)
  %i.p = and <4 x i32> %i.k, splat (i32 255)
  %i.q = and <4 x i32> %i.l, splat (i32 255)
  %i.r = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.p, <4 x i32> %i.q)
  %i.s = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.o, <8 x i16> %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv68
  store <16 x i8> %i.s, ptr %i.t, align 1, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %.05460, i64 64 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 16
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !34

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.v = and i32 %2, 2147483632
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.054.lcssa = phi ptr [ %0, %bb.a ], [ %i.u, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.v, %._crit_edge.loopexit ] ; 3 uses
  %i.w = or disjoint i32 %.0.lcssa, 8             ; 2 uses
  %.not58 = icmp sgt i32 %i.w, %2
  br i1 %.not58, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.x = load <4 x i32>, ptr %.054.lcssa, align 1, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 16
  %i.z = load <4 x i32>, ptr %i.y, align 1, !tbaa !9
  %i.aa = lshr <4 x i32> %i.x, splat (i32 8)
  %i.ab = lshr <4 x i32> %i.z, splat (i32 8)
  %i.ac = and <4 x i32> %i.aa, splat (i32 255)
  %i.ad = and <4 x i32> %i.ab, splat (i32 255)
  %i.ae = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ac, <4 x i32> %i.ad)
  %i.af = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ae, <8 x i16> poison)
  %i.ag = bitcast <16 x i8> %i.af to <2 x i64>
  %i.ah = zext nneg i32 %.0.lcssa to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = extractelement <2 x i64> %i.ag, i64 0
  store i64 %i.aj, ptr %i.ai, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1 = phi i32 [ %i.w, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ak = icmp slt i32 %.1, %2
  br i1 %i.ak, label %.lr.ph65.preheader, label %._crit_edge66

.lr.ph65.preheader:                               ; preds = %bb.c
  %i.al = zext i32 %.1 to i64                     ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %i.am = sub nsw i64 %wide.trip.count, %i.al     ; 3 uses
  %min.iters.check = icmp ult i64 %i.am, 8
  br i1 %min.iters.check, label %.lr.ph65.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.am, -8                      ; 3 uses
  %i.an = add nsw i64 %n.vec, %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = add nuw i64 %index, %i.al               ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !3
  %wide.load78 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !3
  %i.ar = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.as = lshr <4 x i32> %wide.load78, splat (i32 8)
  %i.at = trunc <4 x i32> %i.ar to <4 x i8>
  %i.au = trunc <4 x i32> %i.as to <4 x i8>
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store <4 x i8> %i.at, ptr %i.av, align 1, !tbaa !9
  store <4 x i8> %i.au, ptr %i.aw, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge66, label %.lr.ph65.preheader79

.lr.ph65.preheader79:                             ; preds = %.lr.ph65.preheader, %middle.block
  %indvars.iv73.ph = phi i64 [ %i.al, %.lr.ph65.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader79, %.lr.ph65
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.lr.ph65 ], [ %indvars.iv73.ph, %.lr.ph65.preheader79 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv73
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = lshr i32 %i.az, 8
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv73
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !9
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge66, label %.lr.ph65, !llvm.loop !36

._crit_edge66:                                    ; preds = %.lr.ph65, %middle.block, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @HasAlpha8b_SSE2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #3 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.not37 = icmp slt i32 %1, 16
  br i1 %.not37, label %.preheader, label %.lr.ph40

bb.b:                                             ; preds = %.lr.ph40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next39, 16 ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next, %i.a
  br i1 %.not, label %.preheader, label %.lr.ph40, !llvm.loop !37

.preheader:                                       ; preds = %bb.b, %bb.a
  %indvars.iv.lcssa = phi i64 [ 0, %bb.a ], [ %indvars.iv.next39, %bb.b ] ; 2 uses
  %i.b = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  %i.c = icmp sgt i32 %1, %i.b
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph40:                                         ; preds = %bb.a, %bb.b
  %indvars.iv.next39 = phi i64 [ %indvars.iv.next, %bb.b ], [ 16, %bb.a ] ; 3 uses
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %bb.b ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv38
  %i.e = load <16 x i8>, ptr %i.d, align 1, !tbaa !9
  %i.f = icmp ne <16 x i8> %i.e, splat (i8 -1)
  %i.g = bitcast <16 x i1> %i.f to i16
  %.not20 = icmp eq i16 %i.g, 0
  br i1 %.not20, label %bb.b, label %.loopexit, !llvm.loop !37

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !38

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv30 = phi i64 [ %indvars.iv.lcssa, %.lr.ph.preheader ], [ %indvars.iv.next31, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv30
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9
  %.not19 = icmp eq i8 %i.i, -1
  br i1 %.not19, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph40, %.lr.ph, %bb.c, %.preheader
  %.2 = phi i32 [ 0, %.preheader ], [ 0, %bb.c ], [ 1, %.lr.ph ], [ 1, %.lr.ph40 ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @HasAlpha32b_SSE2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #3 {
bb.a:
  %i.a = shl nsw i32 %1, 2
  %i.b = add nsw i32 %i.a, -3                     ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %.not99 = icmp slt i32 %1, 17
  br i1 %.not99, label %.preheader69.preheader, label %.lr.ph102

bb.b:                                             ; preds = %.lr.ph102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next101, 64 ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next, %i.c
  br i1 %.not, label %.preheader69.preheader, label %.lr.ph102, !llvm.loop !39

.preheader69.preheader:                           ; preds = %bb.b, %bb.a
  %indvars.iv.lcssa = phi i64 [ 0, %bb.a ], [ %indvars.iv.next101, %bb.b ] ; 3 uses
  %indvars.iv.next85103 = or disjoint i64 %indvars.iv.lcssa, 32 ; 2 uses
  %.not64104 = icmp sgt i64 %indvars.iv.next85103, %i.c
  br i1 %.not64104, label %.preheader, label %.lr.ph107

.lr.ph102:                                        ; preds = %bb.a, %bb.b
  %indvars.iv.next101 = phi i64 [ %indvars.iv.next, %bb.b ], [ 64, %bb.a ] ; 3 uses
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %bb.b ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv100 ; 4 uses
  %i.e = load <4 x i32>, ptr %i.d, align 1, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load <4 x i32>, ptr %i.f, align 1, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = load <4 x i32>, ptr %i.h, align 1, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = load <4 x i32>, ptr %i.j, align 1, !tbaa !9
  %i.l = and <4 x i32> %i.e, splat (i32 255)
  %i.m = and <4 x i32> %i.g, splat (i32 255)
  %i.n = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.l, <4 x i32> %i.m)
  %i.o = and <4 x i32> %i.i, splat (i32 255)
  %i.p = and <4 x i32> %i.k, splat (i32 255)
  %i.q = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.o, <4 x i32> %i.p)
  %i.r = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.n, <8 x i16> %i.q)
  %i.s = icmp ne <16 x i8> %i.r, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %.not68 = icmp eq i16 %i.t, 0
  br i1 %.not68, label %bb.b, label %.loopexit, !llvm.loop !39

.preheader69:                                     ; preds = %.lr.ph107
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv.next85106, 32 ; 2 uses
  %.not64 = icmp sgt i64 %indvars.iv.next85, %i.c
  br i1 %.not64, label %.preheader, label %.lr.ph107, !llvm.loop !40

.preheader:                                       ; preds = %.preheader69, %.preheader69.preheader
  %indvars.iv84.lcssa = phi i64 [ %indvars.iv.lcssa, %.preheader69.preheader ], [ %indvars.iv.next85106, %.preheader69 ] ; 2 uses
  %i.u = trunc nuw nsw i64 %indvars.iv84.lcssa to i32
  %.not6574 = icmp slt i32 %i.b, %i.u
  br i1 %.not6574, label %.loopexit, label %.lr.ph

.lr.ph107:                                        ; preds = %.preheader69.preheader, %.preheader69
  %indvars.iv.next85106 = phi i64 [ %indvars.iv.next85, %.preheader69 ], [ %indvars.iv.next85103, %.preheader69.preheader ] ; 3 uses
  %indvars.iv84105 = phi i64 [ %indvars.iv.next85106, %.preheader69 ], [ %indvars.iv.lcssa, %.preheader69.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv84105 ; 2 uses
  %i.w = load <4 x i32>, ptr %i.v, align 1, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load <4 x i32>, ptr %i.x, align 1, !tbaa !9
  %i.z = and <4 x i32> %i.w, splat (i32 255)
  %i.aa = and <4 x i32> %i.y, splat (i32 255)
  %i.ab = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.z, <4 x i32> %i.aa) ; 2 uses
  %i.ac = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ab, <8 x i16> %i.ab)
  %i.ad = icmp ne <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %.not67 = icmp eq i16 %i.ae, 0
  br i1 %.not67, label %.preheader69, label %.loopexit, !llvm.loop !40

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 4 ; 2 uses
  %.not65 = icmp sgt i64 %indvars.iv.next89, %i.c
  br i1 %.not65, label %.loopexit, label %.lr.ph, !llvm.loop !41

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %bb.c ], [ %indvars.iv84.lcssa, %.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv88
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %.not66 = icmp eq i8 %i.ag, -1
  br i1 %.not66, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph102, %.lr.ph107, %.lr.ph, %bb.c, %.preheader
  %.4 = phi i32 [ 0, %.preheader ], [ 1, %.lr.ph107 ], [ 0, %bb.c ], [ 1, %.lr.ph ], [ 1, %.lr.ph102 ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @AlphaReplace_SSE2(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #2 {
bb.a:
  %i.a = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.b = shufflevector <4 x i32> %i.a, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.not38 = icmp slt i32 %1, 8
  br i1 %.not38, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.d = and i32 %1, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %.preheader.loopexit ] ; 3 uses
  %i.e = icmp slt i32 %.0.lcssa, %1
  br i1 %i.e, label %.lr.ph41.preheader, label %._crit_edge

.lr.ph41.preheader:                               ; preds = %.preheader
  %i.f = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.g = xor i32 %.0.lcssa, -1
  %i.h = add i32 %1, %i.g                         ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 7
  br i1 %min.iters.check, label %.lr.ph41.preheader65, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph41.preheader
  %n.vec = and i64 %i.j, 8589934584               ; 3 uses
  %i.k = add nuw nsw i64 %n.vec, %i.f
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue64, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue64 ] ; 2 uses
  %i.l = add nuw i64 %index, %i.f                 ; 8 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <4 x i32>, ptr %i.m, align 4, !tbaa !3
  %wide.load50 = load <4 x i32>, ptr %i.n, align 4, !tbaa !3
  %i.o = icmp ult <4 x i32> %wide.load, splat (i32 16777216) ; 4 uses
  %i.p = icmp ult <4 x i32> %wide.load50, splat (i32 16777216) ; 4 uses
  %i.q = extractelement <4 x i1> %i.o, i64 0
  br i1 %i.q, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i32 %2, ptr %i.m, align 4, !tbaa !3
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.r = extractelement <4 x i1> %i.o, i64 1
  br i1 %i.r, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %2, ptr %i.t, align 4, !tbaa !3
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue
  %i.u = extractelement <4 x i1> %i.o, i64 2
  br i1 %i.u, label %pred.store.if53, label %pred.store.continue54

pred.store.if53:                                  ; preds = %pred.store.continue52
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %2, ptr %i.w, align 4, !tbaa !3
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.x = extractelement <4 x i1> %i.o, i64 3
  br i1 %i.x, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue54
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 %2, ptr %i.z, align 4, !tbaa !3
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.aa = extractelement <4 x i1> %i.p, i64 0
  br i1 %i.aa, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %2, ptr %i.ac, align 4, !tbaa !3
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %i.ad = extractelement <4 x i1> %i.p, i64 1
  br i1 %i.ad, label %pred.store.if59, label %pred.store.continue60

pred.store.if59:                                  ; preds = %pred.store.continue58
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  store i32 %2, ptr %i.af, align 4, !tbaa !3
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %i.ag = extractelement <4 x i1> %i.p, i64 2
  br i1 %i.ag, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue60
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 %2, ptr %i.ai, align 4, !tbaa !3
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %i.aj = extractelement <4 x i1> %i.p, i64 3
  br i1 %i.aj, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  store i32 %2, ptr %i.al, align 4, !tbaa !3
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %pred.store.continue64
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph41.preheader65

.lr.ph41.preheader65:                             ; preds = %.lr.ph41.preheader, %middle.block
  %indvars.iv47.ph = phi i64 [ %i.f, %.lr.ph41.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph41

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv42 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next43, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv42 ; 3 uses
  %i.ao = load <4 x i32>, ptr %i.an, align 1, !tbaa !9 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.aq = load <2 x i64>, ptr %i.ap, align 1, !tbaa !9 ; 2 uses
  %i.ar = bitcast <2 x i64> %i.aq to <4 x i32>
  %i.as = icmp ult <4 x i32> %i.ao, splat (i32 16777216)
  %i.at = icmp ugt <4 x i32> %i.ar, splat (i32 16777215) ; 2 uses
  %i.au = select <4 x i1> %i.at, <4 x i32> zeroinitializer, <4 x i32> %i.b
  %i.av = bitcast <4 x i32> %i.au to <2 x i64>
  %i.aw = sext <4 x i1> %i.at to <4 x i32>
  %i.ax = bitcast <4 x i32> %i.aw to <2 x i64>
  %i.ay = and <2 x i64> %i.aq, %i.ax
  %i.az = select <4 x i1> %i.as, <4 x i32> %i.b, <4 x i32> %i.ao
  store <4 x i32> %i.az, ptr %i.an, align 1, !tbaa !9
  %i.ba = or <2 x i64> %i.ay, %i.av
  store <2 x i64> %i.ba, ptr %i.ap, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.c
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 8
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !43

.lr.ph41:                                         ; preds = %.lr.ph41.preheader65, %bb.c
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %bb.c ], [ %indvars.iv47.ph, %.lr.ph41.preheader65 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv47 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = icmp ult i32 %i.bc, 16777216
  br i1 %i.bd, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph41
  store i32 %2, ptr %i.bb, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph41, %bb.b
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.be = trunc nuw i64 %indvars.iv.next48 to i32
  %i.bf = icmp sgt i32 %1, %i.be
  br i1 %i.bf, label %.lr.ph41, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.c, %middle.block, %.preheader
  ret void
}

declare void @WebPMultARGBRow_C(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #5

declare void @WebPMultRow_C(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.x86.sse2.maskmov.dqu(<16 x i8>, <16 x i8>, ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11, !24, !25}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11, !25, !24}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11, !24, !25}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11, !25, !24}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11, !25, !24}
!36 = distinct !{!36, !11, !24, !25}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11, !25, !24}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11, !24, !25}
end_hunk_1
