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
  %.not.not = icmp eq i32 %1, 0                   ; 2 uses
  %i.c = select i1 %.not.not, i64 3, i64 0        ; 4 uses
  %i.d = sext i32 %4 to i64                       ; 4 uses
  %.not100106 = icmp slt i32 %2, 4                ; 2 uses
  br i1 %.not.not, label %.lr.ph114.split, label %.lr.ph114.split.us

.lr.ph114.split.us:                               ; preds = %.lr.ph114
  br i1 %.not100106, label %.lr.ph114.split.us.split.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph114.split.us
  %i.e = zext nneg i32 %2 to i64
  %i.f = add nsw i32 %2, -4                       ; 2 uses
  %i.g = and i32 %i.f, -4
  %i.h = and i32 %i.f, -4
  %i.i = add nuw nsw i32 %i.h, 4
  %i.j = add nuw nsw i32 %i.g, 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = icmp slt i32 %i.i, %2
  br label %.preheader.us

.lr.ph114.split.us.split.us:                      ; preds = %.lr.ph114.split.us
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %.preheader.us.us.preheader, label %._crit_edge115

.preheader.us.us.preheader:                       ; preds = %.lr.ph114.split.us.split.us
  %exitcond150.not = icmp eq i32 %2, 1
  %exitcond150.not.1 = icmp eq i32 %2, 2
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.us.us
  %i.n = phi i32 [ %i.cd, %._crit_edge.us.us ], [ %i.a, %.preheader.us.us.preheader ] ; 2 uses
  %.0112.us.us = phi ptr [ %i.cc, %._crit_edge.us.us ], [ %0, %.preheader.us.us.preheader ] ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 %i.c ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 1 ; 2 uses
  %i.q = load i8, ptr %i.o, align 1, !tbaa !9     ; 2 uses
  %.not101.us.us = icmp eq i8 %i.q, -1
  br i1 %.not101.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.us.us
  %i.r = zext i8 %i.q to i32
  %i.s = mul nuw nsw i32 %i.r, 32897              ; 3 uses
  %i.t = load i8, ptr %i.p, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i32
  %i.v = mul nuw nsw i32 %i.s, %i.u
  %i.w = lshr i32 %i.v, 23
  %i.x = trunc nuw i32 %i.w to i8
  store i8 %i.x, ptr %i.p, align 1, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 2 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9
  %i.aa = zext i8 %i.z to i32
  %i.ab = mul nuw nsw i32 %i.s, %i.aa
  %i.ac = lshr i32 %i.ab, 23
  %i.ad = trunc nuw i32 %i.ac to i8
  store i8 %i.ad, ptr %i.y, align 1, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 3 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.ag = zext i8 %i.af to i32
  %i.ah = mul nuw nsw i32 %i.s, %i.ag
  %i.ai = lshr i32 %i.ah, 23
  %i.aj = trunc nuw i32 %i.ai to i8
  store i8 %i.aj, ptr %i.ae, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.us.us
  br i1 %exitcond150.not, label %._crit_edge.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9   ; 2 uses
  %.not101.us.us.1 = icmp eq i8 %i.al, -1
  br i1 %.not101.us.us.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = zext i8 %i.al to i32
  %i.an = mul nuw nsw i32 %i.am, 32897            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 5 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.aq = zext i8 %i.ap to i32
  %i.ar = mul nuw nsw i32 %i.an, %i.aq
  %i.as = lshr i32 %i.ar, 23
  %i.at = trunc nuw i32 %i.as to i8
  store i8 %i.at, ptr %i.ao, align 1, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 6 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  %i.aw = zext i8 %i.av to i32
  %i.ax = mul nuw nsw i32 %i.an, %i.aw
  %i.ay = lshr i32 %i.ax, 23
  %i.az = trunc nuw i32 %i.ay to i8
  store i8 %i.az, ptr %i.au, align 1, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 7 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9
  %i.bc = zext i8 %i.bb to i32
  %i.bd = mul nuw nsw i32 %i.an, %i.bc
  %i.be = lshr i32 %i.bd, 23
  %i.bf = trunc nuw i32 %i.be to i8
  store i8 %i.bf, ptr %i.ba, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %exitcond150.not.1, label %._crit_edge.us.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !9   ; 2 uses
  %.not101.us.us.2 = icmp eq i8 %i.bh, -1
  br i1 %.not101.us.us.2, label %._crit_edge.us.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = zext i8 %i.bh to i32
  %i.bj = mul nuw nsw i32 %i.bi, 32897            ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 9 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.bm = zext i8 %i.bl to i32
  %i.bn = mul nuw nsw i32 %i.bj, %i.bm
  %i.bo = lshr i32 %i.bn, 23
  %i.bp = trunc nuw i32 %i.bo to i8
  store i8 %i.bp, ptr %i.bk, align 1, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 10 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9
  %i.bs = zext i8 %i.br to i32
  %i.bt = mul nuw nsw i32 %i.bj, %i.bs
  %i.bu = lshr i32 %i.bt, 23
  %i.bv = trunc nuw i32 %i.bu to i8
  store i8 %i.bv, ptr %i.bq, align 1, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 11 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !9
  %i.by = zext i8 %i.bx to i32
  %i.bz = mul nuw nsw i32 %i.bj, %i.by
  %i.ca = lshr i32 %i.bz, 23
  %i.cb = trunc nuw i32 %i.ca to i8
  store i8 %i.cb, ptr %i.bw, align 1, !tbaa !9
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %bb.g, %bb.h, %bb.f, %bb.c
  %i.cc = getelementptr inbounds i8, ptr %.0112.us.us, i64 %i.d
  %i.cd = add nsw i32 %i.n, -1
  %i.ce = icmp sgt i32 %i.n, 0
  br i1 %i.ce, label %.preheader.us.us, label %._crit_edge115, !llvm.loop !13

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %i.cf = phi i32 [ %i.ea, %._crit_edge.us ], [ %i.a, %.preheader.us.preheader ] ; 2 uses
  %.0112.us = phi ptr [ %i.dz, %._crit_edge.us ], [ %0, %.preheader.us.preheader ] ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader.us, %bb.i
  %indvars.iv138 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next139, %bb.i ] ; 2 uses
  %indvars.iv136 = phi i64 [ 4, %.preheader.us ], [ %indvars.iv.next137, %bb.i ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.0112.us, i64 %indvars.iv138 ; 2 uses
  %i.ch = load <16 x i8>, ptr %i.cg, align 1, !tbaa !9 ; 2 uses
  %i.ci = shufflevector <16 x i8> %i.ch, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cj = shufflevector <16 x i8> %i.ch, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ck = bitcast <16 x i8> %i.ci to <8 x i16>
  %i.cl = bitcast <16 x i8> %i.ci to <8 x i16>
  %i.cm = or <8 x i16> %i.cl, <i16 0, i16 255, i16 poison, i16 poison, i16 0, i16 255, i16 poison, i16 poison>
  %i.cn = bitcast <16 x i8> %i.cj to <8 x i16>
  %i.co = bitcast <16 x i8> %i.cj to <8 x i16>
  %i.cp = or <8 x i16> %i.co, <i16 0, i16 255, i16 poison, i16 poison, i16 0, i16 255, i16 poison, i16 poison>
  %i.cq = shufflevector <8 x i16> %i.cm, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 5, i32 4, i32 4, i32 4>
  %i.cr = shufflevector <8 x i16> %i.cp, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 5, i32 4, i32 4, i32 4>
  %i.cs = mul nuw <8 x i16> %i.cq, %i.ck
  %i.ct = mul nuw <8 x i16> %i.cr, %i.cn
  %i.cu = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.cs, <8 x i16> splat (i16 -32639))
  %i.cv = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.ct, <8 x i16> splat (i16 -32639))
  %i.cw = lshr <8 x i16> %i.cu, splat (i16 7)
  %i.cx = lshr <8 x i16> %i.cv, splat (i16 7)
  %i.cy = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cw, <8 x i16> %i.cx)
  store <16 x i8> %i.cy, ptr %i.cg, align 1, !tbaa !9
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 4 ; 2 uses
  %.not100.us = icmp samesign ugt i64 %indvars.iv.next137, %i.e
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 4
  br i1 %.not100.us, label %..loopexit_crit_edge.us, label %bb.i, !llvm.loop !14

bb.j:                                             ; preds = %.lr.ph111.us, %bb.l
  %indvars.iv143 = phi i64 [ %i.k, %.lr.ph111.us ], [ %indvars.iv.next144, %bb.l ] ; 2 uses
  %i.cz = shl i64 %indvars.iv143, 2
  %i.da = and i64 %i.cz, 4294967292               ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !9   ; 2 uses
  %.not101.us = icmp eq i8 %i.dc, -1
  br i1 %.not101.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = zext i8 %i.dc to i32
  %i.de = mul nuw nsw i32 %i.dd, 32897            ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.da ; 4 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !9
  %i.dh = zext i8 %i.dg to i32
  %i.di = mul nuw nsw i32 %i.de, %i.dh
  %i.dj = lshr i32 %i.di, 23
  %i.dk = trunc nuw i32 %i.dj to i8
  store i8 %i.dk, ptr %i.df, align 1, !tbaa !9
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !9
  %i.dn = zext i8 %i.dm to i32
  %i.do = mul nuw nsw i32 %i.de, %i.dn
  %i.dp = lshr i32 %i.do, 23
  %i.dq = trunc nuw i32 %i.dp to i8
  store i8 %i.dq, ptr %i.dl, align 1, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 2 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.dt = zext i8 %i.ds to i32
  %i.du = mul nuw nsw i32 %i.de, %i.dt
  %i.dv = lshr i32 %i.du, 23
  %i.dw = trunc nuw i32 %i.dv to i8
  store i8 %i.dw, ptr %i.dr, align 1, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.dx = trunc nuw i64 %indvars.iv.next144 to i32
  %i.dy = icmp sgt i32 %2, %i.dx
  br i1 %i.dy, label %bb.j, label %._crit_edge.us, !llvm.loop !15

._crit_edge.us:                                   ; preds = %bb.l, %..loopexit_crit_edge.us
  %i.dz = getelementptr inbounds i8, ptr %.0112.us, i64 %i.d
  %i.ea = add nsw i32 %i.cf, -1
  %i.eb = icmp sgt i32 %i.cf, 0
  br i1 %i.eb, label %.preheader.us, label %._crit_edge115, !llvm.loop !13

..loopexit_crit_edge.us:                          ; preds = %bb.i
  br i1 %i.l, label %.lr.ph111.us, label %._crit_edge.us

.lr.ph111.us:                                     ; preds = %..loopexit_crit_edge.us
  %i.ec = getelementptr inbounds nuw i8, ptr %.0112.us, i64 %i.c
  %i.ed = getelementptr inbounds nuw i8, ptr %.0112.us, i64 1
  br label %bb.j

.lr.ph114.split:                                  ; preds = %.lr.ph114
  br i1 %.not100106, label %.lr.ph114.split.split.us, label %.preheader102.preheader

.preheader102.preheader:                          ; preds = %.lr.ph114.split
  %i.ee = zext nneg i32 %2 to i64
  %i.ef = add nsw i32 %2, -4                      ; 2 uses
  %i.eg = and i32 %i.ef, -4
  %i.eh = and i32 %i.ef, -4
  %i.ei = add nuw nsw i32 %i.eh, 4
  %i.ej = add nuw nsw i32 %i.eg, 4
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = icmp slt i32 %i.ei, %2
  br label %.preheader102

.lr.ph114.split.split.us:                         ; preds = %.lr.ph114.split
  %i.em = icmp sgt i32 %2, 0
  br i1 %i.em, label %.preheader102.us.preheader, label %._crit_edge115

.preheader102.us.preheader:                       ; preds = %.lr.ph114.split.split.us
  %exitcond.not = icmp eq i32 %2, 1
  %exitcond.not.1 = icmp eq i32 %2, 2
  br label %.preheader102.us

.preheader102.us:                                 ; preds = %.preheader102.us.preheader, %._crit_edge.us120
  %i.en = phi i32 [ %i.hc, %._crit_edge.us120 ], [ %i.a, %.preheader102.us.preheader ] ; 2 uses
  %.0112.us116 = phi ptr [ %i.hb, %._crit_edge.us120 ], [ %0, %.preheader102.us.preheader ] ; 12 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0112.us116, i64 %i.c ; 3 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !9   ; 2 uses
  %.not101.us118 = icmp eq i8 %i.ep, -1
  br i1 %.not101.us118, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader102.us
  %i.eq = zext i8 %i.ep to i32
  %i.er = mul nuw nsw i32 %i.eq, 32897            ; 3 uses
  %i.es = load i8, ptr %.0112.us116, align 1, !tbaa !9
  %i.et = zext i8 %i.es to i32
  %i.eu = mul nuw nsw i32 %i.er, %i.et
  %i.ev = lshr i32 %i.eu, 23
  %i.ew = trunc nuw i32 %i.ev to i8
  store i8 %i.ew, ptr %.0112.us116, align 1, !tbaa !9
  %i.ex = getelementptr inbounds nuw i8, ptr %.0112.us116, i64 1 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !9
  %i.ez = zext i8 %i.ey to i32
  %i.fa = mul nuw nsw i32 %i.er, %i.ez
  %i.fb = lshr i32 %i.fa, 23
  %i.fc = trunc nuw i32 %i.fb to i8
  store i8 %i.fc, ptr %i.ex, align 1, !tbaa !9
  %i.fd = getelementptr inbounds nuw i8, ptr %.0112.us116, i64 2 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !9
  %i.ff = zext i8 %i.fe to i32
  %i.fg = mul nuw nsw i32 %i.er, %i.ff
  %i.fh = lshr i32 %i.fg, 23
  %i.fi = trunc nuw i32 %i.fh to i8
  store i8 %i.fi, ptr %i.fd, align 1, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader102.us
  br i1 %exitcond.not, label %._crit_edge.us120, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !9   ; 2 uses
  %.not101.us118.1 = icmp eq i8 %i.fk, -1
  br i1 %.not101.us118.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fl = zext i8 %i.fk to i32
  %i.fm = mul nuw nsw i32 %i.fl, 32897            ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0112.us116, i64 4 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !9
  %i.fp = zext i8 %i.fo to i32
  %i.fq = mul nuw nsw i32 %i.fm, %i.fp
  %i.fr = lshr i32 %i.fq, 23
  %i.fs = trunc nuw i32 %i.fr to i8
  store i8 %i.fs, ptr %i.fn, align 1, !tbaa !9
  %i.ft = getelementptr inbounds nuw i8, ptr %.0112.us116, i64 5 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !9
  %i.fv = zext i8 %i.fu to i32
  %i.fw = mul nuw nsw i32 %i.fm, %i.fv
  %i.fx = lshr i32 %i.fw, 23
  %i.fy = trunc nuw i32 %i.fx to i8
  store i8 %i.fy, ptr %i.ft, align 1, !tbaa !9
  %i.fz = getelementptr inbounds nuw i8, ptr %.0112.us116, i64 6 ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !9
  %i.gb = zext i8 %i.ga to i32
  %i.gc = mul nuw nsw i32 %i.fm, %i.gb
  %i.gd = lshr i32 %i.gc, 23
  %i.ge = trunc nuw i32 %i.gd to i8
  store i8 %i.ge, ptr %i.fz, align 1, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %exitcond.not.1, label %._crit_edge.us120, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !9   ; 2 uses
  %.not101.us118.2 = icmp eq i8 %i.gg, -1
  br i1 %.not101.us118.2, label %._crit_edge.us120, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gh = zext i8 %i.gg to i32
  %i.gi = mul nuw nsw i32 %i.gh, 32897            ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0112.us116, i64 8 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !9
  %i.gl = zext i8 %i.gk to i32
  %i.gm = mul nuw nsw i32 %i.gi, %i.gl
  %i.gn = lshr i32 %i.gm, 23
  %i.go = trunc nuw i32 %i.gn to i8
  store i8 %i.go, ptr %i.gj, align 1, !tbaa !9
  %i.gp = getelementptr inbounds nuw i8, ptr %.0112.us116, i64 9 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !9
  %i.gr = zext i8 %i.gq to i32
  %i.gs = mul nuw nsw i32 %i.gi, %i.gr
  %i.gt = lshr i32 %i.gs, 23
  %i.gu = trunc nuw i32 %i.gt to i8
  store i8 %i.gu, ptr %i.gp, align 1, !tbaa !9
  %i.gv = getelementptr inbounds nuw i8, ptr %.0112.us116, i64 10 ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !9
  %i.gx = zext i8 %i.gw to i32
  %i.gy = mul nuw nsw i32 %i.gi, %i.gx
  %i.gz = lshr i32 %i.gy, 23
  %i.ha = trunc nuw i32 %i.gz to i8
  store i8 %i.ha, ptr %i.gv, align 1, !tbaa !9
  br label %._crit_edge.us120

._crit_edge.us120:                                ; preds = %bb.r, %bb.s, %bb.q, %bb.n
  %i.hb = getelementptr inbounds i8, ptr %.0112.us116, i64 %i.d
  %i.hc = add nsw i32 %i.en, -1
  %i.hd = icmp sgt i32 %i.en, 0
  br i1 %i.hd, label %.preheader102.us, label %._crit_edge115, !llvm.loop !13

.preheader102:                                    ; preds = %.preheader102.preheader, %._crit_edge
  %i.he = phi i32 [ %i.ja, %._crit_edge ], [ %i.a, %.preheader102.preheader ] ; 2 uses
  %.0112 = phi ptr [ %i.iz, %._crit_edge ], [ %0, %.preheader102.preheader ] ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %.preheader102, %bb.t
  %indvars.iv125 = phi i64 [ 0, %.preheader102 ], [ %indvars.iv.next126, %bb.t ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %.preheader102 ], [ %indvars.iv.next, %bb.t ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.0112, i64 %indvars.iv125 ; 2 uses
  %i.hg = load <16 x i8>, ptr %i.hf, align 1, !tbaa !9 ; 2 uses
  %i.hh = shufflevector <16 x i8> %i.hg, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.hi = shufflevector <16 x i8> %i.hg, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.hj = bitcast <16 x i8> %i.hh to <8 x i16>
  %i.hk = bitcast <16 x i8> %i.hh to <8 x i16>
  %i.hl = or <8 x i16> %i.hk, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.hm = bitcast <16 x i8> %i.hi to <8 x i16>
  %i.hn = bitcast <16 x i8> %i.hi to <8 x i16>
  %i.ho = or <8 x i16> %i.hn, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.hp = shufflevector <8 x i16> %i.hl, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.hq = shufflevector <8 x i16> %i.ho, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.hr = mul nuw <8 x i16> %i.hp, %i.hj
  %i.hs = mul nuw <8 x i16> %i.hq, %i.hm
  %i.ht = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.hr, <8 x i16> splat (i16 -32639))
  %i.hu = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.hs, <8 x i16> splat (i16 -32639))
  %i.hv = lshr <8 x i16> %i.ht, splat (i16 7)
  %i.hw = lshr <8 x i16> %i.hu, splat (i16 7)
  %i.hx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hv, <8 x i16> %i.hw)
  store <16 x i8> %i.hx, ptr %i.hf, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not99 = icmp samesign ugt i64 %indvars.iv.next, %i.ee
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 4
  br i1 %.not99, label %..loopexit103_crit_edge, label %bb.t, !llvm.loop !16

..loopexit103_crit_edge:                          ; preds = %bb.t
  br i1 %i.el, label %.lr.ph111, label %._crit_edge

.lr.ph111:                                        ; preds = %..loopexit103_crit_edge
  %i.hy = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.c
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph111, %bb.w
  %indvars.iv130 = phi i64 [ %i.ek, %.lr.ph111 ], [ %indvars.iv.next131, %bb.w ] ; 2 uses
  %i.hz = shl i64 %indvars.iv130, 2
  %i.ia = and i64 %i.hz, 4294967292               ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !9   ; 2 uses
  %.not101 = icmp eq i8 %i.ic, -1
  br i1 %.not101, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.id = zext i8 %i.ic to i32
  %i.ie = mul nuw nsw i32 %i.id, 32897            ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.ia ; 4 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !9
  %i.ih = zext i8 %i.ig to i32
  %i.ii = mul nuw nsw i32 %i.ie, %i.ih
  %i.ij = lshr i32 %i.ii, 23
  %i.ik = trunc nuw i32 %i.ij to i8
  store i8 %i.ik, ptr %i.if, align 1, !tbaa !9
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 1 ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !9
  %i.in = zext i8 %i.im to i32
  %i.io = mul nuw nsw i32 %i.ie, %i.in
  %i.ip = lshr i32 %i.io, 23
  %i.iq = trunc nuw i32 %i.ip to i8
  store i8 %i.iq, ptr %i.il, align 1, !tbaa !9
  %i.ir = getelementptr inbounds nuw i8, ptr %i.if, i64 2 ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !9
  %i.it = zext i8 %i.is to i32
  %i.iu = mul nuw nsw i32 %i.ie, %i.it
  %i.iv = lshr i32 %i.iu, 23
  %i.iw = trunc nuw i32 %i.iv to i8
  store i8 %i.iw, ptr %i.ir, align 1, !tbaa !9
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ix = trunc nuw i64 %indvars.iv.next131 to i32
  %i.iy = icmp sgt i32 %2, %i.ix
  br i1 %i.iy, label %bb.u, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.w, %..loopexit103_crit_edge
  %i.iz = getelementptr inbounds i8, ptr %.0112, i64 %i.d
  %i.ja = add nsw i32 %i.he, -1
  %i.jb = icmp sgt i32 %i.he, 0
  br i1 %i.jb, label %.preheader102, label %._crit_edge115, !llvm.loop !13

._crit_edge115:                                   ; preds = %._crit_edge.us, %._crit_edge.us.us, %._crit_edge, %._crit_edge.us120, %.lr.ph114.split.us.split.us, %.lr.ph114.split.split.us, %bb.a
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
  %i.at = shl nuw nsw i64 %indvars.iv121.prol, 2
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
  %i.bb = shl nuw nsw i64 %indvars.iv121, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bb
  store i8 %i.az, ptr %i.bc, align 1, !tbaa !9
  %i.bd = and i32 %.198, %i.ba
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !9   ; 2 uses
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i64 %indvars.iv.next122, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !9
  %i.bj = and i32 %i.bd, %i.bg
  %indvars.iv.next122.1 = add nuw nsw i64 %indvars.iv121, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122.1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !9   ; 2 uses
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i64 %indvars.iv.next122.1, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bn
  store i8 %i.bl, ptr %i.bo, align 1, !tbaa !9
  %i.bp = and i32 %i.bj, %i.bm
  %indvars.iv.next122.2 = add nuw nsw i64 %indvars.iv121, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122.2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9   ; 2 uses
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw nsw i64 %indvars.iv.next122.2, 2
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
