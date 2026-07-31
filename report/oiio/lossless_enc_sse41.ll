inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@VP8LExtraCost = external local_unnamed_addr global ptr, align 8
@VP8LSubtractGreenFromBlueAndRed = external local_unnamed_addr global ptr, align 8
@VP8LCollectColorBlueTransforms = external local_unnamed_addr global ptr, align 8
@VP8LCollectColorRedTransforms = external local_unnamed_addr global ptr, align 8
@VP8LSubtractGreenFromBlueAndRed_SSE = external local_unnamed_addr global ptr, align 8
@VP8LCollectColorBlueTransforms_SSE = external local_unnamed_addr global ptr, align 8
@VP8LCollectColorRedTransforms_SSE = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8LEncDspInitSSE41() local_unnamed_addr #0 {
bb.a:
  store ptr @ExtraCost_SSE41, ptr @VP8LExtraCost, align 8, !tbaa !7
  store ptr @SubtractGreenFromBlueAndRed_SSE41, ptr @VP8LSubtractGreenFromBlueAndRed, align 8, !tbaa !7
  store ptr @CollectColorBlueTransforms_SSE41, ptr @VP8LCollectColorBlueTransforms, align 8, !tbaa !7
  store ptr @CollectColorRedTransforms_SSE41, ptr @VP8LCollectColorRedTransforms, align 8, !tbaa !7
  store ptr @SubtractGreenFromBlueAndRed_SSE41, ptr @VP8LSubtractGreenFromBlueAndRed_SSE, align 8, !tbaa !7
  store ptr @CollectColorBlueTransforms_SSE41, ptr @VP8LCollectColorBlueTransforms_SSE, align 8, !tbaa !7
  store ptr @CollectColorRedTransforms_SSE41, ptr @VP8LCollectColorRedTransforms_SSE, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @ExtraCost_SSE41(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <4 x i32>, ptr %i.a, align 4, !tbaa !3
  %i.c = shl <4 x i32> %i.b, <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %.not24 = icmp slt i32 %1, 16
  br i1 %.not24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv27 = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next28, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 16, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.022.in25 = phi <4 x i32> [ %i.c, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.e = trunc i64 %indvars.iv27 to i32
  %i.f = add i32 %i.e, -2
  %i.g = ashr exact i32 %i.f, 1                   ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv27 ; 2 uses
  %i.i = load <4 x i32>, ptr %i.h, align 1, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load <4 x i32>, ptr %i.j, align 1, !tbaa !9
  %i.l = add nsw i32 %i.g, 3
  %i.m = add nsw i32 %i.g, 2
  %i.n = add nsw i32 %i.g, 1
  %i.o = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %i.p = insertelement <4 x i32> %i.o, i32 %i.n, i64 1
  %i.q = insertelement <4 x i32> %i.p, i32 %i.m, i64 2
  %i.r = insertelement <4 x i32> %i.q, i32 %i.l, i64 3
  %i.s = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.i, <4 x i32> %i.k)
  %i.t = mul <4 x i32> %i.s, %i.r
  %i.u = add <4 x i32> %i.t, %.022.in25           ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.d
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 8
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.022.in.lcssa = phi <4 x i32> [ %i.c, %bb.a ], [ %i.u, %.lr.ph ] ; 2 uses
  %i.v = shufflevector <4 x i32> %.022.in.lcssa, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.w = add <4 x i32> %.022.in.lcssa, %i.v
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.y = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.x)
  ret i32 %i.y
}

; Function Attrs: nounwind uwtable
define internal void @SubtractGreenFromBlueAndRed_SSE41(ptr noundef %0, i32 noundef %1) #2 {
bb.a:
  %.not20 = icmp slt i32 %1, 4
  br i1 %.not20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv22 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next23, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv22 ; 2 uses
  %i.c = load <16 x i8>, ptr %i.b, align 1, !tbaa !9 ; 2 uses
  %i.d = shufflevector <16 x i8> %i.c, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 16, i32 1, i32 16, i32 5, i32 16, i32 5, i32 16, i32 9, i32 16, i32 9, i32 16, i32 13, i32 16, i32 13, i32 16>
  %i.e = sub <16 x i8> %i.c, %i.d
  store <16 x i8> %i.e, ptr %i.b, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.f = and i32 %1, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.f, %._crit_edge.loopexit ] ; 3 uses
  %.not19 = icmp eq i32 %.0.lcssa, %1
  br i1 %.not19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.g = zext nneg i32 %.0.lcssa to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %i.i = sub nsw i32 %1, %.0.lcssa
  tail call void @VP8LSubtractGreenFromBlueAndRed_C(ptr noundef %i.h, i32 noundef %i.i) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CollectColorBlueTransforms_SSE41(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 3
  %i.b = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph68, label %.loopexit

.lr.ph68:                                         ; preds = %bb.a
  %.tr = trunc i32 %5 to i16
  %i.c = shl i16 %.tr, 8
  %i.d = ashr exact i16 %i.c, 5
  %narrow = add nsw i16 %i.d, 256
  %i.e = sext i16 %narrow to i32
  %i.f = shl nsw i32 %i.e, 16
  %.tr62 = trunc i32 %4 to i16
  %i.g = shl i16 %.tr62, 8
  %i.h = ashr exact i16 %i.g, 5
  %i.i = zext i16 %i.h to i32
  %i.j = or disjoint i32 %i.f, %i.i
  %i.k = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.l = bitcast <4 x i32> %i.k to <8 x i16>
  %i.m = shufflevector <8 x i16> %i.l, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %.not6364 = icmp samesign ult i32 %2, 8
  br i1 %.not6364, label %.lr.ph68.split.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.n = zext nneg i32 %2 to i64
  %i.o = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph68.split.us.preheader:                      ; preds = %.lr.ph68
  %i.p = sext i32 %1 to i64
  %wide.trip.count81 = zext nneg i32 %3 to i64
  br label %.lr.ph68.split.us

.lr.ph68.split.us:                                ; preds = %.lr.ph68.split.us.preheader, %.lr.ph68.split.us
  %indvars.iv78 = phi i64 [ 0, %.lr.ph68.split.us.preheader ], [ %indvars.iv.next79, %.lr.ph68.split.us ] ; 2 uses
  %i.q = mul nsw i64 %indvars.iv78, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = load <2 x i64>, ptr %i.r, align 1, !tbaa !9 ; 2 uses
  %i.t = bitcast <2 x i64> %i.s to <16 x i8>
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 1, i32 16, i32 2, i32 16, i32 5, i32 16, i32 6, i32 16, i32 9, i32 16, i32 10, i32 16, i32 13, i32 16, i32 14>
  %i.v = bitcast <16 x i8> %i.u to <8 x i16>
  %i.w = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.v, <8 x i16> %i.m)
  %i.x = bitcast <2 x i64> %i.s to <8 x i16>
  %i.y = sub <8 x i16> %i.x, %i.w                 ; 2 uses
  %i.z = bitcast <8 x i16> %i.y to <4 x i32>
  %i.aa = lshr <4 x i32> %i.z, splat (i32 16)
  %i.ab = bitcast <4 x i32> %i.aa to <8 x i16>
  %i.ac = add <8 x i16> %i.y, %i.ab
  %i.ad = bitcast <8 x i16> %i.ac to <16 x i8>    ; 4 uses
  %i.ae = extractelement <16 x i8> %i.ad, i64 0
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !3
  %i.aj = extractelement <16 x i8> %i.ad, i64 4
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !3
  %i.ao = extractelement <16 x i8> %i.ad, i64 8
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !3
  %i.at = extractelement <16 x i8> %i.ad, i64 12
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !3
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %.loopexit, label %.lr.ph68.split.us, !llvm.loop !13

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv75 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next76, %._crit_edge ] ; 2 uses
  %i.ay = mul nsw i64 %indvars.iv75, %i.o
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ay ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.az, align 1, !tbaa !9 ; 2 uses
  %i.bb = bitcast <2 x i64> %i.ba to <16 x i8>
  %i.bc = shufflevector <16 x i8> %i.bb, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 1, i32 16, i32 2, i32 16, i32 5, i32 16, i32 6, i32 16, i32 9, i32 16, i32 10, i32 16, i32 13, i32 16, i32 14>
  %i.bd = bitcast <16 x i8> %i.bc to <8 x i16>
  %i.be = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bd, <8 x i16> %i.m)
  %i.bf = bitcast <2 x i64> %i.ba to <8 x i16>
  %i.bg = sub <8 x i16> %i.bf, %i.be              ; 2 uses
  %i.bh = bitcast <8 x i16> %i.bg to <4 x i32>
  %i.bi = lshr <4 x i32> %i.bh, splat (i32 16)
  %i.bj = bitcast <4 x i32> %i.bi to <8 x i16>
  %i.bk = add <8 x i16> %i.bg, %i.bj
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv70 = phi i64 [ 4, %.lr.ph ], [ %indvars.iv.next71, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %.057.in66 = phi <8 x i16> [ %i.bk, %.lr.ph ], [ %i.cr, %bb.b ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv70
  %i.bm = load <2 x i64>, ptr %i.bl, align 1, !tbaa !9 ; 2 uses
  %i.bn = bitcast <8 x i16> %.057.in66 to <16 x i8> ; 4 uses
  %i.bo = extractelement <16 x i8> %i.bn, i64 0
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !3
  %i.bt = bitcast <2 x i64> %i.bm to <16 x i8>
  %i.bu = shufflevector <16 x i8> %i.bt, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 1, i32 16, i32 2, i32 16, i32 5, i32 16, i32 6, i32 16, i32 9, i32 16, i32 10, i32 16, i32 13, i32 16, i32 14>
  %i.bv = extractelement <16 x i8> %i.bn, i64 4
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !3
  %i.ca = bitcast <16 x i8> %i.bu to <8 x i16>
  %i.cb = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ca, <8 x i16> %i.m)
  %i.cc = extractelement <16 x i8> %i.bn, i64 8
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !3
  %i.ch = bitcast <2 x i64> %i.bm to <8 x i16>
  %i.ci = sub <8 x i16> %i.ch, %i.cb              ; 2 uses
  %i.cj = extractelement <16 x i8> %i.bn, i64 12
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !3
  %i.co = bitcast <8 x i16> %i.ci to <4 x i32>
  %i.cp = lshr <4 x i32> %i.co, splat (i32 16)
  %i.cq = bitcast <4 x i32> %i.cp to <8 x i16>
  %i.cr = add <8 x i16> %i.ci, %i.cq              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not63 = icmp samesign ugt i64 %indvars.iv.next, %i.n
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 4
  br i1 %.not63, label %._crit_edge, label %bb.b, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.b
  %i.cs = bitcast <8 x i16> %i.cr to <16 x i8>    ; 4 uses
  %i.ct = extractelement <16 x i8> %i.cs, i64 0
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !3
  %i.cy = extractelement <16 x i8> %i.cs, i64 4
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !3
  %i.dd = extractelement <16 x i8> %i.cs, i64 8
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !3
  %i.di = extractelement <16 x i8> %i.cs, i64 12
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dj ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !3
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !13

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph68.split.us, %bb.a
  %i.dn = and i32 %2, 3                           ; 3 uses
  %.not = icmp eq i32 %i.dn, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.do = sext i32 %2 to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.do
  %i.dq = zext nneg i32 %i.dn to i64
  %i.dr = sub nsw i64 0, %i.dq
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.dr
  tail call void @VP8LCollectColorBlueTransforms_C(ptr noundef nonnull %i.ds, i32 noundef %1, i32 noundef %i.dn, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #6
end_hunk_0
