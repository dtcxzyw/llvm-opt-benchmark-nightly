Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/alpha_processing_sse2?download=true
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
  store ptr @MultARGBRow_SSE2, ptr @WebPMultARGBRow, align 8, !tbaa !15
  store ptr @MultRow_SSE2, ptr @WebPMultRow, align 8, !tbaa !15
  store ptr @ApplyAlphaMultiply_SSE2, ptr @WebPApplyAlphaMultiply, align 8, !tbaa !15
  store ptr @DispatchAlpha_SSE2, ptr @WebPDispatchAlpha, align 8, !tbaa !15
  store ptr @DispatchAlphaToGreen_SSE2, ptr @WebPDispatchAlphaToGreen, align 8, !tbaa !15
  store ptr @ExtractAlpha_SSE2, ptr @WebPExtractAlpha, align 8, !tbaa !15
  store ptr @ExtractGreen_SSE2, ptr @WebPExtractGreen, align 8, !tbaa !15
  store ptr @HasAlpha8b_SSE2, ptr @WebPHasAlpha8b, align 8, !tbaa !15
  store ptr @HasAlpha32b_SSE2, ptr @WebPHasAlpha32b, align 8, !tbaa !15
  store ptr @AlphaReplace_SSE2, ptr @WebPAlphaReplace, align 8, !tbaa !15
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
  %i.c = load i64, ptr %i.b, align 1, !tbaa !8
  %i.d = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.g = bitcast <16 x i8> %i.f to <8 x i16>
  %i.h = bitcast <16 x i8> %i.f to <8 x i16>
  %i.i = or <8 x i16> %i.h, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.j = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.k = mul nuw <8 x i16> %i.j, %i.g
  %i.l = add <8 x i16> %i.k, splat (i16 128)
  %i.m = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.l, <8 x i16> splat (i16 257))
  %i.n = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.m, <8 x i16> poison)
  %i.o = bitcast <16 x i8> %i.n to <2 x i64>
  %i.p = extractelement <2 x i64> %i.o, i64 0
  store i64 %i.p, ptr %i.b, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not31 = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 2
  br i1 %.not31, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !16

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.q = add nuw i32 %1, 2147483646
  %i.r = and i32 %i.q, 2147483646
  %narrow = add nuw i32 %i.r, 2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %narrow, %.loopexit.loopexit ] ; 2 uses
  %i.s = sub nsw i32 %1, %.1                      ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.u = zext nneg i32 %.1 to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  tail call void @WebPMultARGBRow_C(ptr noundef %i.v, i32 noundef %i.s, i32 noundef %2) #6
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
  %i.c = load i64, ptr %i.b, align 1, !tbaa !8
  %i.d = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv36
  %i.f = load i64, ptr %i.e, align 1, !tbaa !8
  %i.g = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %i.h = bitcast <2 x i64> %i.d to <16 x i8>
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.j = bitcast <2 x i64> %i.g to <16 x i8>
  %i.k = shufflevector <16 x i8> %i.j, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.l = bitcast <16 x i8> %i.i to <8 x i16>
  %i.m = bitcast <16 x i8> %i.k to <8 x i16>
  %i.n = mul nuw <8 x i16> %i.m, %i.l
  %i.o = add <8 x i16> %i.n, splat (i16 128)
  %i.p = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.o, <8 x i16> splat (i16 257))
  %i.q = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.p, <8 x i16> poison)
  %i.r = bitcast <16 x i8> %i.q to <2 x i64>
  %i.s = extractelement <2 x i64> %i.r, i64 0
  store i64 %i.s, ptr %i.b, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not33 = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 8
  br i1 %.not33, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !17

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.t = add nuw i32 %2, 2147483640
  %i.u = and i32 %i.t, 2147483640
  %narrow = add nuw i32 %i.u, 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %narrow, %.loopexit.loopexit ] ; 2 uses
  %i.v = sub nsw i32 %2, %.1                      ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.x = zext nneg i32 %.1 to i64                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  tail call void @WebPMultRow_C(ptr noundef %i.y, ptr noundef %i.z, i32 noundef %i.v, i32 noundef %3) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ApplyAlphaMultiply_SSE2(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = add nsw i32 %3, -1                       ; 4 uses
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %bb.a
  %.not = icmp ne i32 %1, 0                       ; 2 uses
  %i.c = zext i1 %.not to i64                     ; 4 uses
  %i.d = sext i32 %4 to i64                       ; 4 uses
  %.not100106 = icmp slt i32 %2, 4                ; 2 uses
  br i1 %.not, label %.lr.ph115.split.us, label %.lr.ph115.split

.lr.ph115.split.us:                               ; preds = %.lr.ph115
  br i1 %.not100106, label %.lr.ph115.split.us.split.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph115.split.us
  %i.e = zext nneg i32 %2 to i64
  %i.f = add nsw i32 %2, -4                       ; 2 uses
  %i.g = and i32 %i.f, 2147483644
  %narrow156 = add nuw nsw i32 %i.g, 4
  %i.h = and i32 %i.f, -4
  %i.i = add nuw nsw i32 %i.h, 4
  %i.j = zext nneg i32 %i.i to i64
  %i.k = icmp slt i32 %narrow156, %2
  br label %.preheader.us

.lr.ph115.split.us.split.us:                      ; preds = %.lr.ph115.split.us
  %i.l = icmp sgt i32 %2, 0
  br i1 %i.l, label %.preheader.us.us.preheader, label %._crit_edge116

.preheader.us.us.preheader:                       ; preds = %.lr.ph115.split.us.split.us
  %exitcond151.not = icmp eq i32 %2, 1
  %exitcond151.not.1 = icmp eq i32 %2, 2
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.us.us
  %i.m = phi i32 [ %i.cb, %._crit_edge.us.us ], [ %i.a, %.preheader.us.us.preheader ] ; 2 uses
  %.0112.us.us = phi ptr [ %i.ca, %._crit_edge.us.us ], [ %0, %.preheader.us.us.preheader ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 %i.c ; 10 uses
  %i.o = load i8, ptr %.0112.us.us, align 1, !tbaa !8 ; 2 uses
  %.not101.us.us = icmp eq i8 %i.o, -1
  br i1 %.not101.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.us.us
  %i.p = zext i8 %i.o to i32
  %i.q = mul nuw nsw i32 %i.p, 32897              ; 3 uses
  %i.r = load i8, ptr %i.n, align 1, !tbaa !8
  %i.s = zext i8 %i.r to i32
  %i.t = mul nuw nsw i32 %i.q, %i.s
  %i.u = lshr i32 %i.t, 23
  %i.v = trunc nuw i32 %i.u to i8
  store i8 %i.v, ptr %i.n, align 1, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  %i.y = zext i8 %i.x to i32
  %i.z = mul nuw nsw i32 %i.q, %i.y
  %i.aa = lshr i32 %i.z, 23
  %i.ab = trunc nuw i32 %i.aa to i8
  store i8 %i.ab, ptr %i.w, align 1, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nuw nsw i32 %i.q, %i.ae
  %i.ag = lshr i32 %i.af, 23
  %i.ah = trunc nuw i32 %i.ag to i8
  store i8 %i.ah, ptr %i.ac, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.us.us
  br i1 %exitcond151.not, label %._crit_edge.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8   ; 2 uses
  %.not101.us.us.1 = icmp eq i8 %i.aj, -1
  br i1 %.not101.us.us.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = zext i8 %i.aj to i32
  %i.al = mul nuw nsw i32 %i.ak, 32897            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %i.ao = zext i8 %i.an to i32
  %i.ap = mul nuw nsw i32 %i.al, %i.ao
  %i.aq = lshr i32 %i.ap, 23
  %i.ar = trunc nuw i32 %i.aq to i8
  store i8 %i.ar, ptr %i.am, align 1, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 5 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  %i.au = zext i8 %i.at to i32
  %i.av = mul nuw nsw i32 %i.al, %i.au
  %i.aw = lshr i32 %i.av, 23
  %i.ax = trunc nuw i32 %i.aw to i8
  store i8 %i.ax, ptr %i.as, align 1, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 6 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8
  %i.ba = zext i8 %i.az to i32
  %i.bb = mul nuw nsw i32 %i.al, %i.ba
  %i.bc = lshr i32 %i.bb, 23
  %i.bd = trunc nuw i32 %i.bc to i8
  store i8 %i.bd, ptr %i.ay, align 1, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %exitcond151.not.1, label %._crit_edge.us.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 8
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8   ; 2 uses
  %.not101.us.us.2 = icmp eq i8 %i.bf, -1
  br i1 %.not101.us.us.2, label %._crit_edge.us.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = zext i8 %i.bf to i32
  %i.bh = mul nuw nsw i32 %i.bg, 32897            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = zext i8 %i.bj to i32
  %i.bl = mul nuw nsw i32 %i.bh, %i.bk
  %i.bm = lshr i32 %i.bl, 23
  %i.bn = trunc nuw i32 %i.bm to i8
  store i8 %i.bn, ptr %i.bi, align 1, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 9 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !8
  %i.bq = zext i8 %i.bp to i32
  %i.br = mul nuw nsw i32 %i.bh, %i.bq
  %i.bs = lshr i32 %i.br, 23
  %i.bt = trunc nuw i32 %i.bs to i8
  store i8 %i.bt, ptr %i.bo, align 1, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 10 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = zext i8 %i.bv to i32
  %i.bx = mul nuw nsw i32 %i.bh, %i.bw
  %i.by = lshr i32 %i.bx, 23
  %i.bz = trunc nuw i32 %i.by to i8
  store i8 %i.bz, ptr %i.bu, align 1, !tbaa !8
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %bb.g, %bb.h, %bb.f, %bb.c
  %i.ca = getelementptr inbounds i8, ptr %.0112.us.us, i64 %i.d
  %i.cb = add nsw i32 %i.m, -1
  %i.cc = icmp sgt i32 %i.m, 0
  br i1 %i.cc, label %.preheader.us.us, label %._crit_edge116, !llvm.loop !18

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %i.cd = phi i32 [ %i.dx, %._crit_edge.us ], [ %i.a, %.preheader.us.preheader ] ; 2 uses
  %.0112.us = phi ptr [ %i.dw, %._crit_edge.us ], [ %0, %.preheader.us.preheader ] ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader.us, %bb.i
  %indvars.iv139 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next140, %bb.i ] ; 2 uses
  %indvars.iv137 = phi i64 [ 4, %.preheader.us ], [ %indvars.iv.next138, %bb.i ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.0112.us, i64 %indvars.iv139 ; 2 uses
  %i.cf = load <16 x i8>, ptr %i.ce, align 1, !tbaa !8 ; 2 uses
  %i.cg = shufflevector <16 x i8> %i.cf, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ch = shufflevector <16 x i8> %i.cf, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ci = bitcast <16 x i8> %i.cg to <8 x i16>
  %i.cj = bitcast <16 x i8> %i.cg to <8 x i16>
  %i.ck = or <8 x i16> %i.cj, <i16 0, i16 255, i16 poison, i16 poison, i16 0, i16 255, i16 poison, i16 poison>
  %i.cl = bitcast <16 x i8> %i.ch to <8 x i16>
  %i.cm = bitcast <16 x i8> %i.ch to <8 x i16>
  %i.cn = or <8 x i16> %i.cm, <i16 0, i16 255, i16 poison, i16 poison, i16 0, i16 255, i16 poison, i16 poison>
  %i.co = shufflevector <8 x i16> %i.ck, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 5, i32 4, i32 4, i32 4>
  %i.cp = shufflevector <8 x i16> %i.cn, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 5, i32 4, i32 4, i32 4>
  %i.cq = mul nuw <8 x i16> %i.co, %i.ci
  %i.cr = mul nuw <8 x i16> %i.cp, %i.cl
  %i.cs = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cq, <8 x i16> splat (i16 -32639))
  %i.ct = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cr, <8 x i16> splat (i16 -32639))
  %i.cu = lshr <8 x i16> %i.cs, splat (i16 7)
  %i.cv = lshr <8 x i16> %i.ct, splat (i16 7)
  %i.cw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cu, <8 x i16> %i.cv)
  store <16 x i8> %i.cw, ptr %i.ce, align 1, !tbaa !8
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 4 ; 2 uses
  %.not100.us = icmp samesign ugt i64 %indvars.iv.next138, %i.e
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 4
  br i1 %.not100.us, label %..loopexit_crit_edge.us, label %bb.i, !llvm.loop !19

bb.j:                                             ; preds = %.lr.ph111.us, %bb.l
  %indvars.iv144 = phi i64 [ %i.j, %.lr.ph111.us ], [ %indvars.iv.next145, %bb.l ] ; 2 uses
  %i.cx = shl nuw nsw i64 %indvars.iv144, 2       ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0112.us, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !8   ; 2 uses
  %.not101.us = icmp eq i8 %i.cz, -1
  br i1 %.not101.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = zext i8 %i.cz to i32
  %i.db = mul nuw nsw i32 %i.da, 32897            ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.cx ; 4 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !8
  %i.de = zext i8 %i.dd to i32
  %i.df = mul nuw nsw i32 %i.db, %i.de
  %i.dg = lshr i32 %i.df, 23
  %i.dh = trunc nuw i32 %i.dg to i8
  store i8 %i.dh, ptr %i.dc, align 1, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !8
  %i.dk = zext i8 %i.dj to i32
  %i.dl = mul nuw nsw i32 %i.db, %i.dk
  %i.dm = lshr i32 %i.dl, 23
  %i.dn = trunc nuw i32 %i.dm to i8
  store i8 %i.dn, ptr %i.di, align 1, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 2 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !8
  %i.dq = zext i8 %i.dp to i32
  %i.dr = mul nuw nsw i32 %i.db, %i.dq
  %i.ds = lshr i32 %i.dr, 23
  %i.dt = trunc nuw i32 %i.ds to i8
  store i8 %i.dt, ptr %i.do, align 1, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.du = trunc nuw i64 %indvars.iv.next145 to i32
  %i.dv = icmp sgt i32 %2, %i.du
  br i1 %i.dv, label %bb.j, label %._crit_edge.us, !llvm.loop !20

._crit_edge.us:                                   ; preds = %bb.l, %..loopexit_crit_edge.us
  %i.dw = getelementptr inbounds i8, ptr %.0112.us, i64 %i.d
  %i.dx = add nsw i32 %i.cd, -1
  %i.dy = icmp sgt i32 %i.cd, 0
  br i1 %i.dy, label %.preheader.us, label %._crit_edge116, !llvm.loop !18

..loopexit_crit_edge.us:                          ; preds = %bb.i
  br i1 %i.k, label %.lr.ph111.us, label %._crit_edge.us

.lr.ph111.us:                                     ; preds = %..loopexit_crit_edge.us
  %i.dz = getelementptr inbounds nuw i8, ptr %.0112.us, i64 %i.c
  br label %bb.j

.lr.ph115.split:                                  ; preds = %.lr.ph115
  br i1 %.not100106, label %.lr.ph115.split.split.us, label %.preheader102.preheader

.preheader102.preheader:                          ; preds = %.lr.ph115.split
  %i.ea = zext nneg i32 %2 to i64
  %i.eb = add nsw i32 %2, -4                      ; 2 uses
  %i.ec = and i32 %i.eb, 2147483644
  %narrow = add nuw nsw i32 %i.ec, 4
  %i.ed = and i32 %i.eb, -4
  %i.ee = add nuw nsw i32 %i.ed, 4
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = icmp slt i32 %narrow, %2
  br label %.preheader102

.lr.ph115.split.split.us:                         ; preds = %.lr.ph115.split
  %i.eh = icmp sgt i32 %2, 0
  br i1 %i.eh, label %.preheader102.us.preheader, label %._crit_edge116

.preheader102.us.preheader:                       ; preds = %.lr.ph115.split.split.us
  %exitcond.not = icmp eq i32 %2, 1
  %exitcond.not.1 = icmp eq i32 %2, 2
  br label %.preheader102.us

.preheader102.us:                                 ; preds = %.preheader102.us.preheader, %._crit_edge.us121
  %i.ei = phi i32 [ %i.gy, %._crit_edge.us121 ], [ %i.a, %.preheader102.us.preheader ] ; 2 uses
  %.0112.us117 = phi ptr [ %i.gx, %._crit_edge.us121 ], [ %0, %.preheader102.us.preheader ] ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0112.us117, i64 %i.c ; 10 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0112.us117, i64 3
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !8   ; 2 uses
  %.not101.us120 = icmp eq i8 %i.el, -1
  br i1 %.not101.us120, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader102.us
  %i.em = zext i8 %i.el to i32
  %i.en = mul nuw nsw i32 %i.em, 32897            ; 3 uses
  %i.eo = load i8, ptr %i.ej, align 1, !tbaa !8
  %i.ep = zext i8 %i.eo to i32
  %i.eq = mul nuw nsw i32 %i.en, %i.ep
  %i.er = lshr i32 %i.eq, 23
  %i.es = trunc nuw i32 %i.er to i8
  store i8 %i.es, ptr %i.ej, align 1, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 1 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !8
  %i.ev = zext i8 %i.eu to i32
  %i.ew = mul nuw nsw i32 %i.en, %i.ev
  %i.ex = lshr i32 %i.ew, 23
  %i.ey = trunc nuw i32 %i.ex to i8
  store i8 %i.ey, ptr %i.et, align 1, !tbaa !8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ej, i64 2 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !8
  %i.fb = zext i8 %i.fa to i32
  %i.fc = mul nuw nsw i32 %i.en, %i.fb
  %i.fd = lshr i32 %i.fc, 23
  %i.fe = trunc nuw i32 %i.fd to i8
  store i8 %i.fe, ptr %i.ez, align 1, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader102.us
  br i1 %exitcond.not, label %._crit_edge.us121, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ff = getelementptr inbounds nuw i8, ptr %.0112.us117, i64 7
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !8   ; 2 uses
  %.not101.us120.1 = icmp eq i8 %i.fg, -1
  br i1 %.not101.us120.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fh = zext i8 %i.fg to i32
  %i.fi = mul nuw nsw i32 %i.fh, 32897            ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !8
  %i.fl = zext i8 %i.fk to i32
  %i.fm = mul nuw nsw i32 %i.fi, %i.fl
  %i.fn = lshr i32 %i.fm, 23
  %i.fo = trunc nuw i32 %i.fn to i8
  store i8 %i.fo, ptr %i.fj, align 1, !tbaa !8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ej, i64 5 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !8
  %i.fr = zext i8 %i.fq to i32
  %i.fs = mul nuw nsw i32 %i.fi, %i.fr
  %i.ft = lshr i32 %i.fs, 23
  %i.fu = trunc nuw i32 %i.ft to i8
  store i8 %i.fu, ptr %i.fp, align 1, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ej, i64 6 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !8
  %i.fx = zext i8 %i.fw to i32
  %i.fy = mul nuw nsw i32 %i.fi, %i.fx
  %i.fz = lshr i32 %i.fy, 23
  %i.ga = trunc nuw i32 %i.fz to i8
  store i8 %i.ga, ptr %i.fv, align 1, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %exitcond.not.1, label %._crit_edge.us121, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gb = getelementptr inbounds nuw i8, ptr %.0112.us117, i64 11
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !8   ; 2 uses
  %.not101.us120.2 = icmp eq i8 %i.gc, -1
  br i1 %.not101.us120.2, label %._crit_edge.us121, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gd = zext i8 %i.gc to i32
  %i.ge = mul nuw nsw i32 %i.gd, 32897            ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !8
  %i.gh = zext i8 %i.gg to i32
  %i.gi = mul nuw nsw i32 %i.ge, %i.gh
  %i.gj = lshr i32 %i.gi, 23
  %i.gk = trunc nuw i32 %i.gj to i8
  store i8 %i.gk, ptr %i.gf, align 1, !tbaa !8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ej, i64 9 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !8
  %i.gn = zext i8 %i.gm to i32
  %i.go = mul nuw nsw i32 %i.ge, %i.gn
  %i.gp = lshr i32 %i.go, 23
  %i.gq = trunc nuw i32 %i.gp to i8
  store i8 %i.gq, ptr %i.gl, align 1, !tbaa !8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ej, i64 10 ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !8
  %i.gt = zext i8 %i.gs to i32
  %i.gu = mul nuw nsw i32 %i.ge, %i.gt
  %i.gv = lshr i32 %i.gu, 23
  %i.gw = trunc nuw i32 %i.gv to i8
  store i8 %i.gw, ptr %i.gr, align 1, !tbaa !8
  br label %._crit_edge.us121

._crit_edge.us121:                                ; preds = %bb.r, %bb.s, %bb.q, %bb.n
  %i.gx = getelementptr inbounds i8, ptr %.0112.us117, i64 %i.d
  %i.gy = add nsw i32 %i.ei, -1
  %i.gz = icmp sgt i32 %i.ei, 0
  br i1 %i.gz, label %.preheader102.us, label %._crit_edge116, !llvm.loop !18

.preheader102:                                    ; preds = %.preheader102.preheader, %._crit_edge
  %i.ha = phi i32 [ %i.iw, %._crit_edge ], [ %i.a, %.preheader102.preheader ] ; 2 uses
  %.0112 = phi ptr [ %i.iv, %._crit_edge ], [ %0, %.preheader102.preheader ] ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %.preheader102, %bb.t
  %indvars.iv126 = phi i64 [ 0, %.preheader102 ], [ %indvars.iv.next127, %bb.t ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %.preheader102 ], [ %indvars.iv.next, %bb.t ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.0112, i64 %indvars.iv126 ; 2 uses
  %i.hc = load <16 x i8>, ptr %i.hb, align 1, !tbaa !8 ; 2 uses
  %i.hd = shufflevector <16 x i8> %i.hc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.he = shufflevector <16 x i8> %i.hc, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.hf = bitcast <16 x i8> %i.hd to <8 x i16>
  %i.hg = bitcast <16 x i8> %i.hd to <8 x i16>
  %i.hh = or <8 x i16> %i.hg, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.hi = bitcast <16 x i8> %i.he to <8 x i16>
  %i.hj = bitcast <16 x i8> %i.he to <8 x i16>
  %i.hk = or <8 x i16> %i.hj, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.hl = shufflevector <8 x i16> %i.hh, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.hm = shufflevector <8 x i16> %i.hk, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.hn = mul nuw <8 x i16> %i.hl, %i.hf
  %i.ho = mul nuw <8 x i16> %i.hm, %i.hi
  %i.hp = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.hn, <8 x i16> splat (i16 -32639))
  %i.hq = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ho, <8 x i16> splat (i16 -32639))
  %i.hr = lshr <8 x i16> %i.hp, splat (i16 7)
  %i.hs = lshr <8 x i16> %i.hq, splat (i16 7)
  %i.ht = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hr, <8 x i16> %i.hs)
  store <16 x i8> %i.ht, ptr %i.hb, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not99 = icmp samesign ugt i64 %indvars.iv.next, %i.ea
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 4
  br i1 %.not99, label %..loopexit103_crit_edge, label %bb.t, !llvm.loop !21

..loopexit103_crit_edge:                          ; preds = %bb.t
  br i1 %i.eg, label %.lr.ph111, label %._crit_edge

.lr.ph111:                                        ; preds = %..loopexit103_crit_edge
  %i.hu = getelementptr inbounds nuw i8, ptr %.0112, i64 3
  %i.hv = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.c
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph111, %bb.w
  %indvars.iv131 = phi i64 [ %i.ef, %.lr.ph111 ], [ %indvars.iv.next132, %bb.w ] ; 2 uses
  %i.hw = shl nuw nsw i64 %indvars.iv131, 2       ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !8   ; 2 uses
  %.not101 = icmp eq i8 %i.hy, -1
  br i1 %.not101, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hz = zext i8 %i.hy to i32
  %i.ia = mul nuw nsw i32 %i.hz, 32897            ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hw ; 4 uses
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !8
  %i.id = zext i8 %i.ic to i32
  %i.ie = mul nuw nsw i32 %i.ia, %i.id
  %i.if = lshr i32 %i.ie, 23
  %i.ig = trunc nuw i32 %i.if to i8
  store i8 %i.ig, ptr %i.ib, align 1, !tbaa !8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 1 ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !8
  %i.ij = zext i8 %i.ii to i32
  %i.ik = mul nuw nsw i32 %i.ia, %i.ij
  %i.il = lshr i32 %i.ik, 23
  %i.im = trunc nuw i32 %i.il to i8
  store i8 %i.im, ptr %i.ih, align 1, !tbaa !8
  %i.in = getelementptr inbounds nuw i8, ptr %i.ib, i64 2 ; 2 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !8
  %i.ip = zext i8 %i.io to i32
  %i.iq = mul nuw nsw i32 %i.ia, %i.ip
  %i.ir = lshr i32 %i.iq, 23
  %i.is = trunc nuw i32 %i.ir to i8
  store i8 %i.is, ptr %i.in, align 1, !tbaa !8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.it = trunc nuw i64 %indvars.iv.next132 to i32
  %i.iu = icmp sgt i32 %2, %i.it
  br i1 %i.iu, label %bb.u, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.w, %..loopexit103_crit_edge
  %i.iv = getelementptr inbounds i8, ptr %.0112, i64 %i.d
  %i.iw = add nsw i32 %i.ha, -1
  %i.ix = icmp sgt i32 %i.ha, 0
  br i1 %i.ix, label %.preheader102, label %._crit_edge116, !llvm.loop !18

._crit_edge116:                                   ; preds = %._crit_edge, %._crit_edge.us121, %._crit_edge.us, %._crit_edge.us.us, %.lr.ph115.split.us.split.us, %.lr.ph115.split.split.us, %bb.a
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
  %i.e = load <2 x i64>, ptr %i.d, align 1, !tbaa !8 ; 2 uses
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
  br i1 %.not89.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !22

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
  %i.ac = load i64, ptr %i.ab, align 1, !tbaa !8
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
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8   ; 2 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i64 %indvars.iv121.prol, 2
  %i.au = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.at
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !8
  %i.av = and i32 %.198.prol, %i.as               ; 3 uses
  %indvars.iv.next122.prol = add nuw nsw i64 %indvars.iv121.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol, !llvm.loop !23

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
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8   ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i64 %indvars.iv121, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bb
  store i8 %i.az, ptr %i.bc, align 1, !tbaa !8
  %i.bd = and i32 %.198, %i.ba
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8   ; 2 uses
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i64 %indvars.iv.next122, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !8
  %i.bj = and i32 %i.bd, %i.bg
  %indvars.iv.next122.1 = add nuw nsw i64 %indvars.iv121, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122.1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !8   ; 2 uses
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i64 %indvars.iv.next122.1, 2
end_hunk_0
