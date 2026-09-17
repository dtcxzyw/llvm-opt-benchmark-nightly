Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/rescaler_sse2?download=true
inline.NumInlined: 18
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@WebPRescalerImportRowExpand = external local_unnamed_addr global ptr, align 8
@WebPRescalerImportRowShrink = external local_unnamed_addr global ptr, align 8
@WebPRescalerExportRowExpand = external local_unnamed_addr global ptr, align 8
@WebPRescalerExportRowShrink = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPRescalerDspInitSSE2() local_unnamed_addr #0 {
bb.a:
  store ptr @RescalerImportRowExpand_SSE2, ptr @WebPRescalerImportRowExpand, align 8, !tbaa !26
  store ptr @RescalerImportRowShrink_SSE2, ptr @WebPRescalerImportRowShrink, align 8, !tbaa !26
  store ptr @RescalerExportRowExpand_SSE2, ptr @WebPRescalerExportRowExpand, align 8, !tbaa !26
  store ptr @RescalerExportRowShrink_SSE2, ptr @WebPRescalerExportRowShrink, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RescalerImportRowExpand_SSE2(ptr noalias noundef %0, ptr noalias noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = mul nsw i32 %i.f, %i.d                   ; 3 uses
  %i.h = sext i32 %i.g to i64
  %.idx = shl nsw i64 %i.h, 2
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %.idx ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15   ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !27   ; 2 uses
  %i.n = icmp slt i32 %i.m, 8
  %i.o = icmp sgt i32 %i.k, 32767
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @WebPRescalerImportRowExpand_C(ptr noundef nonnull %0, ptr noundef %1) #6
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.p = icmp eq i32 %i.f, 4
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.val = load i64, ptr %1, align 1, !tbaa !16
  %i.q = insertelement <2 x i64> poison, i64 %.val, i64 0
  %i.r = bitcast <2 x i64> %i.q to <16 x i8>
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.t = bitcast <16 x i8> %i.s to <8 x i16>
  %i.u = bitcast <16 x i8> %i.s to <8 x i16>
  %i.v = shufflevector <8 x i16> %i.t, <8 x i16> %i.u, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15> ; 2 uses
  %i.w = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.y = bitcast <4 x i32> %i.x to <8 x i16>
  %i.z = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.v, <8 x i16> %i.y)
  store <4 x i32> %i.z, ptr %i.b, align 1, !tbaa !16
  %.not79110 = icmp sgt i32 %i.g, 4
  br i1 %.not79110, label %.lr.ph113, label %.thread

.lr.ph113:                                        ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre115 = load i32, ptr %i.ac, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph113, %bb.g
  %i.ad = phi ptr [ %i.aa, %.lr.ph113 ], [ %i.ax, %bb.g ] ; 2 uses
  %.058112 = phi i32 [ %i.k, %.lr.ph113 ], [ %.260, %bb.g ]
  %.064111 = phi ptr [ %i.ab, %.lr.ph113 ], [ %.266, %bb.g ] ; 3 uses
  %i.ae = phi <8 x i16> [ %i.v, %.lr.ph113 ], [ %i.ap, %bb.g ]
  %i.af = sub nsw i32 %.058112, %.pre115          ; 3 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.064.val = load i64, ptr %.064111, align 1, !tbaa !16
  %i.ah = insertelement <2 x i64> poison, i64 %.064.val, i64 0
  %i.ai = bitcast <2 x i64> %i.ah to <16 x i8>
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ak = bitcast <16 x i8> %i.aj to <8 x i16>
  %i.al = bitcast <16 x i8> %i.aj to <8 x i16>
  %i.am = shufflevector <8 x i16> %i.ak, <8 x i16> %i.al, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.an = getelementptr inbounds nuw i8, ptr %.064111, i64 4
  %i.ao = add nsw i32 %i.af, %i.k
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ap = phi <8 x i16> [ %i.am, %bb.f ], [ %i.ae, %bb.e ] ; 2 uses
  %.266 = phi ptr [ %i.an, %bb.f ], [ %.064111, %bb.e ]
  %.260 = phi i32 [ %i.ao, %bb.f ], [ %i.af, %bb.e ] ; 3 uses
  %i.aq = sub nsw i32 %i.k, %.260
  %i.ar = shl i32 %i.aq, 16
  %i.as = or i32 %i.ar, %.260
  %i.at = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %i.au = shufflevector <4 x i32> %i.at, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.av = bitcast <4 x i32> %i.au to <8 x i16>
  %i.aw = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ap, <8 x i16> %i.av)
  store <4 x i32> %i.aw, ptr %i.ad, align 1, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.not79 = icmp ult ptr %i.ax, %i.i
  br i1 %.not79, label %bb.e, label %.thread

bb.h:                                             ; preds = %bb.c
  %i.ay = zext nneg i32 %i.m to i64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8
  %.val80 = load i64, ptr %1, align 1, !tbaa !16
  %i.bb = insertelement <2 x i64> poison, i64 %.val80, i64 0
  %i.bc = bitcast <2 x i64> %i.bb to <16 x i8>
  %i.bd = shufflevector <16 x i8> %i.bc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.be = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %i.bf = bitcast <16 x i8> %i.bd to <8 x i16>
  %i.bg = bitcast <4 x i32> %i.be to <8 x i16>
  %i.bh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bf, <8 x i16> %i.bg)
  %i.bi = extractelement <4 x i32> %i.bh, i64 0
  store i32 %i.bi, ptr %i.b, align 1
  %.not105 = icmp sgt i32 %i.g, 1
  br i1 %.not105, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bk = bitcast <16 x i8> %i.bd to <2 x i64>
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i32, ptr %i.bm, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.p
  %i.bn = phi ptr [ %i.bj, %.lr.ph ], [ %i.cq, %bb.p ] ; 2 uses
  %.0109 = phi i32 [ 7, %.lr.ph ], [ %.3, %bb.p ] ; 2 uses
  %.361108 = phi i32 [ %i.k, %.lr.ph ], [ %.5, %bb.p ]
  %.367107 = phi ptr [ %i.bl, %.lr.ph ], [ %.6, %bb.p ] ; 6 uses
  %.2106 = phi <2 x i64> [ %i.bk, %.lr.ph ], [ %.4, %bb.p ] ; 3 uses
  %i.bo = sub nsw i32 %.361108, %.pre             ; 3 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.bq = add nsw i32 %.0109, -1                  ; 2 uses
  %.not77 = icmp eq i32 %i.bq, 0
  br i1 %.not77, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = bitcast <2 x i64> %.2106 to <16 x i8>
  %i.bs = shufflevector <16 x i8> %i.br, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %i.bt = bitcast <16 x i8> %i.bs to <2 x i64>
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %.not78 = icmp ugt ptr %.367107, %i.ba
  br i1 %.not78, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.367.val = load i64, ptr %.367107, align 1, !tbaa !16
  %i.bu = insertelement <2 x i64> poison, i64 %.367.val, i64 0
  %i.bv = bitcast <2 x i64> %i.bu to <16 x i8>
  %i.bw = shufflevector <16 x i8> %i.bv, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bx = bitcast <16 x i8> %i.bw to <2 x i64>
  %i.by = getelementptr inbounds nuw i8, ptr %.367107, i64 7
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bz = bitcast <2 x i64> %.2106 to <16 x i8>
  %i.ca = shufflevector <16 x i8> %i.bz, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %i.cb = bitcast <16 x i8> %i.ca to <8 x i16>
  %i.cc = getelementptr inbounds nuw i8, ptr %.367107, i64 1 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !16
  %i.ce = zext i8 %i.cd to i16
  %i.cf = insertelement <8 x i16> %i.cb, i16 %i.ce, i64 1
  %i.cg = bitcast <8 x i16> %i.cf to <2 x i64>
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %.393 = phi <2 x i64> [ %i.cg, %bb.n ], [ %i.bx, %bb.m ], [ %i.bt, %bb.k ]
  %.468 = phi ptr [ %i.cc, %bb.n ], [ %i.by, %bb.m ], [ %.367107, %bb.k ]
  %.1 = phi i32 [ 1, %bb.n ], [ 7, %bb.m ], [ %i.bq, %bb.k ]
  %i.ch = add nsw i32 %i.bo, %i.k
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o
  %.4 = phi <2 x i64> [ %.393, %bb.o ], [ %.2106, %bb.i ] ; 2 uses
  %.6 = phi ptr [ %.468, %bb.o ], [ %.367107, %bb.i ]
  %.5 = phi i32 [ %i.ch, %bb.o ], [ %i.bo, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %.1, %bb.o ], [ %.0109, %bb.i ]
  %i.ci = sub nsw i32 %i.k, %.5
  %i.cj = shl i32 %i.ci, 16
  %i.ck = or i32 %i.cj, %.5
  %i.cl = insertelement <4 x i32> poison, i32 %i.ck, i64 0
  %i.cm = bitcast <2 x i64> %.4 to <8 x i16>
  %i.cn = bitcast <4 x i32> %i.cl to <8 x i16>
  %i.co = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cm, <8 x i16> %i.cn)
  %i.cp = extractelement <4 x i32> %i.co, i64 0
  store i32 %i.cp, ptr %i.bn, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %.not = icmp ult ptr %i.cq, %i.i
  br i1 %.not, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.p, %bb.g, %bb.h, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RescalerImportRowShrink_SSE2(ptr noalias noundef %0, ptr noalias noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = trunc i32 %i.b to i16
  %i.d = insertelement <8 x i16> poison, i16 %i.c, i64 0
  %i.e = shufflevector <8 x i16> %i.d, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30
  %i.h = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %i.i = shufflevector <4 x i32> %i.h, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !13   ; 2 uses
  %i.n = shl nsw i32 %i.m, 2
  %i.o = sext i32 %i.n to i64
  %.idx = shl nsw i64 %i.o, 2
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %.idx
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !14
  %.not = icmp eq i32 %i.r, 4
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !15   ; 2 uses
  %i.u = shl i32 %i.b, 7
  %i.v = icmp sgt i32 %i.t, %i.u
  br i1 %i.v, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.w = icmp sgt i32 %i.m, 0
  br i1 %i.w, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %.preheader
  %i.x = bitcast <4 x i32> %i.i to <2 x i64>
  %i.y = and <2 x i64> %i.x, splat (i64 4294967295) ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @WebPRescalerImportRowShrink_C(ptr noundef nonnull %0, ptr noundef %1) #6
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph73, %._crit_edge
  %.072 = phi ptr [ %1, %.lr.ph73 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.05871 = phi i32 [ 0, %.lr.ph73 ], [ %.159.lcssa, %._crit_edge ]
  %i.z = phi <8 x i16> [ zeroinitializer, %.lr.ph73 ], [ %i.bj, %._crit_edge ] ; 2 uses
  %.06270 = phi ptr [ %i.k, %.lr.ph73 ], [ %i.bk, %._crit_edge ] ; 2 uses
  %i.aa = add nsw i32 %i.t, %.05871               ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.165 = phi ptr [ %i.ae, %.lr.ph ], [ %.072, %bb.d ] ; 2 uses
  %.15964 = phi i32 [ %i.aj, %.lr.ph ], [ %i.aa, %bb.d ]
  %i.ac = phi <8 x i16> [ %i.ai, %.lr.ph ], [ %i.z, %bb.d ]
  %.1.val = load i32, ptr %.165, align 1
  %i.ad = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.1.val, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %.165, i64 4 ; 2 uses
  %i.af = bitcast <4 x i32> %i.ad to <16 x i8>
  %i.ag = shufflevector <16 x i8> %i.af, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ah = bitcast <16 x i8> %i.ag to <8 x i16>    ; 2 uses
  %i.ai = add <8 x i16> %i.ac, %i.ah              ; 2 uses
  %i.aj = sub nsw i32 %.15964, %i.b               ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.063.lcssa = phi <8 x i16> [ zeroinitializer, %bb.d ], [ %i.ah, %.lr.ph ] ; 2 uses
  %.lcssa = phi <8 x i16> [ %i.z, %bb.d ], [ %i.ai, %.lr.ph ] ; 2 uses
  %.159.lcssa = phi i32 [ %i.aa, %bb.d ], [ %i.aj, %.lr.ph ] ; 2 uses
  %.1.lcssa = phi ptr [ %.072, %bb.d ], [ %i.ae, %.lr.ph ]
  %i.al = trunc i32 %.159.lcssa to i16
  %i.am = sub i16 0, %i.al
  %i.an = insertelement <8 x i16> poison, i16 %i.am, i64 0
  %i.ao = shufflevector <8 x i16> %i.an, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ap = mul <8 x i16> %i.ao, %.063.lcssa
  %i.aq = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %.063.lcssa, <8 x i16> %i.ao)
  %i.ar = shufflevector <8 x i16> %i.ap, <8 x i16> %i.aq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 3 uses
  %i.as = bitcast <8 x i16> %i.ar to <2 x i64>
  %i.at = mul <8 x i16> %.lcssa, %i.e
  %i.au = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %.lcssa, <8 x i16> %i.e)
  %i.av = shufflevector <8 x i16> %i.at, <8 x i16> %i.au, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aw = bitcast <8 x i16> %i.av to <4 x i32>
  %i.ax = bitcast <8 x i16> %i.ar to <4 x i32>
  %i.ay = sub <4 x i32> %i.aw, %i.ax
  %i.az = lshr <2 x i64> %i.as, splat (i64 32)
  %i.ba = bitcast <8 x i16> %i.ar to <2 x i64>
  %i.bb = and <2 x i64> %i.ba, splat (i64 4294967295)
  %i.bc = mul nuw <2 x i64> %i.bb, %i.y
  %i.bd = mul nuw <2 x i64> %i.az, %i.y
  %i.be = add nuw <2 x i64> %i.bc, splat (i64 2147483648)
  %i.bf = add nuw <2 x i64> %i.bd, splat (i64 2147483648)
  %i.bg = bitcast <2 x i64> %i.be to <4 x i32>
  %i.bh = bitcast <2 x i64> %i.bf to <4 x i32>
  %i.bi = shufflevector <4 x i32> %i.bg, <4 x i32> %i.bh, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bi, <4 x i32> zeroinitializer)
  store <4 x i32> %i.ay, ptr %.06270, align 1, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %.06270, i64 16 ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.p
  br i1 %i.bl, label %bb.d, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @RescalerExportRowExpand_SSE2(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  %i.i = mul i32 %i.h, %i.f                       ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.m, i64 0
  %i.o = insertelement <4 x i32> %i.n, i32 %i.m, i64 2
  %i.p = bitcast <4 x i32> %i.o to <2 x i64>      ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !22   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.preheader113, label %bb.b

.preheader113:                                    ; preds = %bb.a
  %.not72120 = icmp slt i32 %i.i, 8
  br i1 %.not72120, label %.preheader, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %.preheader113
  %i.t = zext nneg i32 %i.i to i64
  br label %.lr.ph122

.preheader.loopexit:                              ; preds = %.lr.ph122
  %i.u = add nuw i32 %i.i, 2147483640
  %i.v = and i32 %i.u, 2147483640
  %narrow147 = add nuw i32 %i.v, 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader113
  %.0.lcssa = phi i32 [ 0, %.preheader113 ], [ %narrow147, %.preheader.loopexit ] ; 4 uses
  %i.w = icmp slt i32 %.0.lcssa, %i.i
  br i1 %i.w, label %.lr.ph125.preheader, label %.loopexit

.lr.ph125.preheader:                              ; preds = %.preheader
  %i.x = zext i32 %.0.lcssa to i64                ; 8 uses
  %i.y = xor i32 %.0.lcssa, -1
  %i.z = add i32 %i.i, %i.y                       ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check182 = icmp ult i32 %i.z, 15
  br i1 %min.iters.check182, label %.lr.ph125.preheader194, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph125.preheader
  %scevgep169 = getelementptr i8, ptr %i.b, i64 %i.x ; 2 uses
  %i.ac = xor i32 %.0.lcssa, -1
  %i.ad = add i32 %i.i, %i.ac
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr i8, ptr %i.b, i64 %i.x
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.ae
  %scevgep170 = getelementptr i8, ptr %i.ag, i64 1 ; 2 uses
  %i.ah = shl nuw nsw i64 %i.x, 2
  %scevgep171 = getelementptr i8, ptr %i.k, i64 %i.ah
  %i.ai = add nuw nsw i64 %i.x, %i.ae
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = getelementptr i8, ptr %i.k, i64 %i.aj
  %scevgep172 = getelementptr i8, ptr %i.ak, i64 4
  %scevgep173 = getelementptr i8, ptr %0, i64 20
  %bound0174 = icmp ult ptr %scevgep169, %scevgep172
  %bound1175 = icmp ult ptr %scevgep171, %scevgep170
  %found.conflict176 = and i1 %bound0174, %bound1175
  %bound0177 = icmp ult ptr %scevgep169, %scevgep173
  %bound1178 = icmp ult ptr %i.l, %scevgep170
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %found.conflict176, %found.conflict179
  br i1 %conflict.rdx180, label %.lr.ph125.preheader194, label %vector.ph183

vector.ph183:                                     ; preds = %vector.memcheck168
  %n.vec184 = and i64 %i.ab, 8589934588           ; 3 uses
  %i.al = add nuw nsw i64 %n.vec184, %i.x
  %i.am = load i32, ptr %i.l, align 8, !tbaa !21, !alias.scope !46
  %broadcast.splatinsert185 = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat186 = shufflevector <4 x i32> %broadcast.splatinsert185, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.an = zext <4 x i32> %broadcast.splat186 to <4 x i64>
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph183
  %index188 = phi i64 [ 0, %vector.ph183 ], [ %index.next190, %vector.body187 ] ; 2 uses
  %i.ao = add nuw i64 %index188, %i.x             ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ao
  %wide.load189 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !23, !alias.scope !47
  %i.aq = zext <4 x i32> %wide.load189 to <4 x i64>
  %i.ar = mul nuw <4 x i64> %i.an, %i.aq
  %i.as = add nuw <4 x i64> %i.ar, splat (i64 2147483648)
  %i.at = lshr <4 x i64> %i.as, splat (i64 32)    ; 2 uses
  %i.au = trunc nuw <4 x i64> %i.at to <4 x i32>
  %i.av = icmp sgt <4 x i32> %i.au, splat (i32 255)
  %i.aw = trunc <4 x i64> %i.at to <4 x i8>
  %i.ax = select <4 x i1> %i.av, <4 x i8> splat (i8 -1), <4 x i8> %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ao
  store <4 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !16, !alias.scope !48, !noalias !49
  %index.next190 = add nuw i64 %index188, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next190, %n.vec184
  br i1 %i.az, label %middle.block191, label %vector.body187, !llvm.loop !35

middle.block191:                                  ; preds = %vector.body187
  %cmp.n192 = icmp eq i64 %i.ab, %n.vec184
  br i1 %cmp.n192, label %.loopexit, label %.lr.ph125.preheader194

.lr.ph125.preheader194:                           ; preds = %vector.memcheck168, %.lr.ph125.preheader, %middle.block191
  %indvars.iv143.ph = phi i64 [ %i.x, %vector.memcheck168 ], [ %i.x, %.lr.ph125.preheader ], [ %i.al, %middle.block191 ]
  br label %.lr.ph125

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %.lr.ph122
  %indvars.iv138 = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next139, %.lr.ph122 ] ; 3 uses
  %indvars.iv136 = phi i64 [ 8, %.lr.ph122.preheader ], [ %indvars.iv.next137, %.lr.ph122 ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv138 ; 2 uses
  %.val76 = load <2 x i64>, ptr %i.ba, align 1, !tbaa !16 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  %.val77 = load <2 x i64>, ptr %i.bb, align 1, !tbaa !16 ; 2 uses
  %i.bc = lshr <2 x i64> %.val76, splat (i64 32)
  %i.bd = lshr <2 x i64> %.val77, splat (i64 32)
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv138
  %i.bf = and <2 x i64> %.val76, splat (i64 4294967295)
  %i.bg = mul nuw <2 x i64> %i.bf, %i.p
  %i.bh = and <2 x i64> %.val77, splat (i64 4294967295)
  %i.bi = mul nuw <2 x i64> %i.bh, %i.p
  %i.bj = mul nuw <2 x i64> %i.bc, %i.p
  %i.bk = mul nuw <2 x i64> %i.bd, %i.p
  %i.bl = add nuw <2 x i64> %i.bg, splat (i64 2147483648)
  %i.bm = add nuw <2 x i64> %i.bi, splat (i64 2147483648)
  %i.bn = add nuw <2 x i64> %i.bj, splat (i64 2147483648)
  %i.bo = add nuw <2 x i64> %i.bk, splat (i64 2147483648)
  %i.bp = lshr <2 x i64> %i.bl, splat (i64 32)
  %i.bq = lshr <2 x i64> %i.bm, splat (i64 32)
  %i.br = and <2 x i64> %i.bn, splat (i64 -4294967296)
end_hunk_0
begin_hunk_1_@RescalerExportRowExpand_SSE2:bb.a
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.do, 79
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph119
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.dm ; 3 uses
  %i.dr = xor i32 %.2.lcssa, -1
  %i.ds = add i32 %i.i, %i.dr
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr i8, ptr %i.b, i64 %i.dm
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.dt
  %scevgep150 = getelementptr i8, ptr %i.dv, i64 1 ; 3 uses
  %i.dw = shl nuw nsw i64 %i.dm, 2                ; 2 uses
  %scevgep151 = getelementptr i8, ptr %i.k, i64 %i.dw
  %i.dx = add nuw nsw i64 %i.dm, %i.dt
  %i.dy = shl nuw nsw i64 %i.dx, 2
  %i.dz = add nuw nsw i64 %i.dy, 4                ; 2 uses
  %scevgep152 = getelementptr i8, ptr %i.k, i64 %i.dz
  %scevgep153 = getelementptr i8, ptr %i.d, i64 %i.dw
  %scevgep154 = getelementptr i8, ptr %i.d, i64 %i.dz
  %scevgep155 = getelementptr i8, ptr %0, i64 20
  %bound0 = icmp ult ptr %scevgep, %scevgep152
  %bound1 = icmp ult ptr %scevgep151, %scevgep150
  %found.conflict = and i1 %bound0, %bound1
  %bound0156 = icmp ult ptr %scevgep, %scevgep154
  %bound1157 = icmp ult ptr %scevgep153, %scevgep150
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx = or i1 %found.conflict, %found.conflict158
  %bound0159 = icmp ult ptr %scevgep, %scevgep155
  %bound1160 = icmp ult ptr %i.l, %scevgep150
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx162 = or i1 %conflict.rdx, %found.conflict161
  br i1 %conflict.rdx162, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dq, 8589934588              ; 3 uses
  %i.ea = add nuw nsw i64 %n.vec, %i.dm
  %i.eb = load i32, ptr %i.l, align 8, !tbaa !21, !alias.scope !51
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.eb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ec = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert163 = insertelement <4 x i64> poison, i64 %i.dl, i64 0
  %broadcast.splat164 = shufflevector <4 x i64> %broadcast.splatinsert163, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert165 = insertelement <4 x i64> poison, i64 %i.cy, i64 0
  %broadcast.splat166 = shufflevector <4 x i64> %broadcast.splatinsert165, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ed = add nuw i64 %index, %i.dm               ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ed
  %wide.load = load <4 x i32>, ptr %i.ee, align 4, !tbaa !23, !alias.scope !52
  %i.ef = zext <4 x i32> %wide.load to <4 x i64>
  %i.eg = mul nuw <4 x i64> %broadcast.splat164, %i.ef
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ed
  %wide.load167 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !23, !alias.scope !53
  %i.ei = zext <4 x i32> %wide.load167 to <4 x i64>
  %i.ej = mul nuw <4 x i64> %broadcast.splat166, %i.ei
  %i.ek = add nuw <4 x i64> %i.eg, splat (i64 2147483648)
  %i.el = add <4 x i64> %i.ek, %i.ej
  %i.em = lshr <4 x i64> %i.el, splat (i64 32)
  %i.en = mul nuw <4 x i64> %i.em, %i.ec
  %i.eo = add nuw <4 x i64> %i.en, splat (i64 2147483648)
  %i.ep = lshr <4 x i64> %i.eo, splat (i64 32)    ; 2 uses
  %i.eq = trunc nuw <4 x i64> %i.ep to <4 x i32>
  %i.er = icmp sgt <4 x i32> %i.eq, splat (i32 255)
  %i.es = trunc <4 x i64> %i.ep to <4 x i8>
  %i.et = select <4 x i1> %i.er, <4 x i8> splat (i8 -1), <4 x i8> %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ed
  store <4 x i8> %i.et, ptr %i.eu, align 1, !tbaa !16, !alias.scope !54, !noalias !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dq, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph119, %middle.block
  %indvars.iv133.ph = phi i64 [ %i.dm, %vector.memcheck ], [ %i.dm, %.lr.ph119 ], [ %i.ea, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next129, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv128 ; 2 uses
  %.val74 = load <2 x i64>, ptr %i.ew, align 1, !tbaa !16 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  %.val75 = load <2 x i64>, ptr %i.ex, align 1, !tbaa !16 ; 2 uses
  %i.ey = lshr <2 x i64> %.val74, splat (i64 32)
  %i.ez = lshr <2 x i64> %.val75, splat (i64 32)
  %i.fa = and <2 x i64> %.val74, splat (i64 4294967295)
  %i.fb = mul nuw <2 x i64> %i.fa, %i.dc
  %i.fc = and <2 x i64> %.val75, splat (i64 4294967295)
  %i.fd = mul nuw <2 x i64> %i.fc, %i.dc
  %i.fe = mul nuw <2 x i64> %i.ey, %i.dc
  %i.ff = mul nuw <2 x i64> %i.ez, %i.dc
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv128 ; 2 uses
  %.val = load <2 x i64>, ptr %i.fg, align 1, !tbaa !16 ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 16
  %.val73 = load <2 x i64>, ptr %i.fh, align 1, !tbaa !16 ; 2 uses
  %i.fi = lshr <2 x i64> %.val, splat (i64 32)
  %i.fj = lshr <2 x i64> %.val73, splat (i64 32)
  %i.fk = and <2 x i64> %.val, splat (i64 4294967295)
  %i.fl = mul nuw <2 x i64> %i.fk, %i.df
  %i.fm = and <2 x i64> %.val73, splat (i64 4294967295)
  %i.fn = mul nuw <2 x i64> %i.fm, %i.df
  %i.fo = mul nuw <2 x i64> %i.fi, %i.df
  %i.fp = mul nuw <2 x i64> %i.fj, %i.df
  %i.fq = add <2 x i64> %i.fb, splat (i64 2147483648)
  %i.fr = add <2 x i64> %i.fq, %i.fl
  %i.fs = add <2 x i64> %i.fd, splat (i64 2147483648)
  %i.ft = add <2 x i64> %i.fs, %i.fn
  %i.fu = add <2 x i64> %i.fe, splat (i64 2147483648)
  %i.fv = add <2 x i64> %i.fu, %i.fo
  %i.fw = add <2 x i64> %i.ff, splat (i64 2147483648)
  %i.fx = add <2 x i64> %i.fw, %i.fp
  %i.fy = lshr <2 x i64> %i.fr, splat (i64 32)
  %i.fz = lshr <2 x i64> %i.ft, splat (i64 32)
  %i.ga = lshr <2 x i64> %i.fv, splat (i64 32)
  %i.gb = lshr <2 x i64> %i.fx, splat (i64 32)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv128
  %i.gd = mul nuw <2 x i64> %i.fy, %i.p
  %i.ge = mul nuw <2 x i64> %i.fz, %i.p
  %i.gf = mul nuw <2 x i64> %i.ga, %i.p
  %i.gg = mul nuw <2 x i64> %i.gb, %i.p
  %i.gh = add nuw <2 x i64> %i.gd, splat (i64 2147483648)
  %i.gi = add nuw <2 x i64> %i.ge, splat (i64 2147483648)
  %i.gj = add nuw <2 x i64> %i.gf, splat (i64 2147483648)
  %i.gk = add nuw <2 x i64> %i.gg, splat (i64 2147483648)
  %i.gl = lshr <2 x i64> %i.gh, splat (i64 32)
  %i.gm = lshr <2 x i64> %i.gi, splat (i64 32)
  %i.gn = and <2 x i64> %i.gj, splat (i64 -4294967296)
  %i.go = and <2 x i64> %i.gk, splat (i64 -4294967296)
  %i.gp = or disjoint <2 x i64> %i.gl, %i.gn
  %i.gq = or disjoint <2 x i64> %i.gm, %i.go
  %i.gr = bitcast <2 x i64> %i.gp to <4 x i32>
  %i.gs = bitcast <2 x i64> %i.gq to <4 x i32>
  %i.gt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gr, <4 x i32> %i.gs)
  %i.gu = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gt, <8 x i16> poison)
  %i.gv = bitcast <16 x i8> %i.gu to <2 x i64>
  %i.gw = extractelement <2 x i64> %i.gv, i64 0
  store i64 %i.gw, ptr %i.gc, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.dg
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 8
  br i1 %.not, label %.preheader114.loopexit, label %.lr.ph, !llvm.loop !44

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %scalar.ph ], [ %indvars.iv133.ph, %scalar.ph.preheader ] ; 4 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv133
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !23
  %i.gz = zext i32 %i.gy to i64
  %i.ha = mul nuw i64 %i.dl, %i.gz
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv133
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !23
  %i.hd = zext i32 %i.hc to i64
  %i.he = mul nuw i64 %i.cy, %i.hd
  %i.hf = add nuw i64 %i.ha, 2147483648
  %i.hg = add i64 %i.hf, %i.he
  %i.hh = lshr i64 %i.hg, 32
  %i.hi = load i32, ptr %i.l, align 8, !tbaa !21
  %i.hj = zext i32 %i.hi to i64
  %i.hk = mul nuw i64 %i.hh, %i.hj
  %i.hl = add nuw i64 %i.hk, 2147483648
  %i.hm = lshr i64 %i.hl, 32                      ; 2 uses
  %i.hn = trunc nuw i64 %i.hm to i32
  %i.ho = icmp sgt i32 %i.hn, 255
  %i.hp = trunc i64 %i.hm to i8
  %i.hq = select i1 %i.ho, i8 -1, i8 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv133
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !16
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %i.hs = trunc nuw i64 %indvars.iv.next134 to i32
  %i.ht = icmp sgt i32 %i.i, %i.hs
  br i1 %i.ht, label %scalar.ph, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %scalar.ph, %.lr.ph125, %middle.block, %middle.block191, %.preheader114, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @RescalerExportRowShrink_SSE2(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  %i.i = mul i32 %i.h, %i.f                       ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !22
  %i.p = mul i32 %i.o, %i.m                       ; 2 uses
  %i.q = sub i32 0, %i.p                          ; 3 uses
  %.not = icmp eq i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !70   ; 3 uses
  %i.t = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.s, i64 0
  %i.u = insertelement <4 x i32> %i.t, i32 %i.s, i64 2
  %i.v = bitcast <4 x i32> %i.u to <2 x i64>      ; 8 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.q, i64 0
  %i.x = insertelement <4 x i32> %i.w, i32 %i.q, i64 2
  %i.y = bitcast <4 x i32> %i.x to <2 x i64>      ; 4 uses
  %.not86125 = icmp slt i32 %i.i, 8
  br i1 %.not86125, label %.preheader123, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.z = zext nneg i32 %i.i to i64
  br label %.lr.ph

.preheader123.loopexit:                           ; preds = %.lr.ph
  %i.aa = add nuw i32 %i.i, 2147483640
  %i.ab = and i32 %i.aa, 2147483640
  %narrow = add nuw i32 %i.ab, 8
  br label %.preheader123

.preheader123:                                    ; preds = %.preheader123.loopexit, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %narrow, %.preheader123.loopexit ] ; 4 uses
  %i.ac = icmp slt i32 %.0.lcssa, %i.i
  br i1 %i.ac, label %.lr.ph128.a, label %.loopexit

.lr.ph128.a:                                      ; preds = %.preheader123
  %1 = zext i32 %i.q to i64                       ; 2 uses
  %i.ad = zext i32 %.0.lcssa to i64               ; 8 uses
  %i.ae = xor i32 %.0.lcssa, -1
  %i.af = add i32 %i.i, %i.ae                     ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.af, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph128.a
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ad ; 3 uses
  %i.ai = xor i32 %.0.lcssa, -1
  %i.aj = add i32 %i.i, %i.ai
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr i8, ptr %i.b, i64 %i.ad
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak
  %scevgep158 = getelementptr i8, ptr %i.am, i64 1 ; 3 uses
  %i.an = shl nuw nsw i64 %i.ad, 2                ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.d, i64 %i.an ; 3 uses
  %i.ao = add nuw nsw i64 %i.ad, %i.ak
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 4                ; 2 uses
  %scevgep160 = getelementptr i8, ptr %i.d, i64 %i.aq ; 3 uses
  %scevgep161 = getelementptr i8, ptr %i.k, i64 %i.an ; 2 uses
  %scevgep162 = getelementptr i8, ptr %i.k, i64 %i.aq ; 2 uses
  %scevgep163 = getelementptr i8, ptr %0, i64 24  ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep160
  %bound1 = icmp ult ptr %scevgep159, %scevgep158
  %found.conflict = and i1 %bound0, %bound1
  %bound0164 = icmp ult ptr %scevgep, %scevgep162
  %bound1165 = icmp ult ptr %scevgep161, %scevgep158
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx = or i1 %found.conflict, %found.conflict166
  %bound0167 = icmp ult ptr %scevgep, %scevgep163
  %bound1168 = icmp ult ptr %i.r, %scevgep158
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx170 = or i1 %conflict.rdx, %found.conflict169
  %bound0171 = icmp ult ptr %scevgep159, %scevgep162
  %bound1172 = icmp ult ptr %scevgep161, %scevgep160
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx174 = or i1 %conflict.rdx170, %found.conflict173
  %bound0175 = icmp ult ptr %scevgep159, %scevgep163
  %bound1176 = icmp ult ptr %i.r, %scevgep160
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx174, %found.conflict177
  br i1 %conflict.rdx178, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 8589934588              ; 3 uses
  %i.ar = add nuw nsw i64 %n.vec, %i.ad
  %i.as = load i32, ptr %i.r, align 4, !tbaa !70, !alias.scope !71
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.at = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert179 = insertelement <4 x i64> poison, i64 %1, i64 0
  %broadcast.splat180 = shufflevector <4 x i64> %broadcast.splatinsert179, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add nuw i64 %index, %i.ad               ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.au
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !23, !alias.scope !72
  %2 = zext <4 x i32> %wide.load to <4 x i64>
  %3 = mul nuw <4 x i64> %broadcast.splat180, %2
  %4 = lshr <4 x i64> %3, splat (i64 32)
  %5 = trunc nuw <4 x i64> %4 to <4 x i32>        ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.au ; 2 uses
  %wide.load181 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !23, !alias.scope !73, !noalias !74
  %i.ax = sub <4 x i32> %wide.load181, %5
  %i.ay = zext <4 x i32> %i.ax to <4 x i64>
  %i.az = mul nuw <4 x i64> %i.ay, %i.at
  %i.ba = add nuw <4 x i64> %i.az, splat (i64 2147483648)
  %i.bb = lshr <4 x i64> %i.ba, splat (i64 32)    ; 2 uses
  %i.bc = trunc nuw <4 x i64> %i.bb to <4 x i32>
  %i.bd = icmp sgt <4 x i32> %i.bc, splat (i32 255)
  %i.be = trunc <4 x i64> %i.bb to <4 x i8>
  %i.bf = select <4 x i1> %i.bd, <4 x i8> splat (i8 -1), <4 x i8> %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.au
  store <4 x i8> %i.bf, ptr %i.bg, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  store <4 x i32> %5, ptr %i.aw, align 4, !tbaa !23, !alias.scope !73, !noalias !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph128.a, %middle.block
  %indvars.iv142.ph = phi i64 [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph128.a ], [ %i.ar, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv137 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next138, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv137 ; 3 uses
  %.val90 = load <2 x i64>, ptr %i.bi, align 1, !tbaa !16 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16     ; 2 uses
  %.val91 = load <2 x i64>, ptr %i.bj, align 1, !tbaa !16 ; 2 uses
  %i.bk = lshr <2 x i64> %.val90, splat (i64 32)
  %i.bl = lshr <2 x i64> %.val91, splat (i64 32)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv137 ; 2 uses
  %.val88 = load <2 x i64>, ptr %i.bm, align 1, !tbaa !16 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  %.val89 = load <2 x i64>, ptr %i.bn, align 1, !tbaa !16 ; 2 uses
  %i.bo = lshr <2 x i64> %.val88, splat (i64 32)
  %i.bp = lshr <2 x i64> %.val89, splat (i64 32)
  %i.bq = and <2 x i64> %.val88, splat (i64 4294967295)
  %i.br = mul nuw <2 x i64> %i.bq, %i.y
  %i.bs = and <2 x i64> %.val89, splat (i64 4294967295)
  %i.bt = mul nuw <2 x i64> %i.bs, %i.y
  %i.bu = mul nuw <2 x i64> %i.bo, %i.y           ; 2 uses
  %i.bv = mul nuw <2 x i64> %i.bp, %i.y           ; 2 uses
  %i.bw = lshr <2 x i64> %i.br, splat (i64 32)    ; 2 uses
  %i.bx = lshr <2 x i64> %i.bt, splat (i64 32)    ; 2 uses
  %i.by = lshr <2 x i64> %i.bu, splat (i64 32)
  %i.bz = lshr <2 x i64> %i.bv, splat (i64 32)
  %i.ca = sub <2 x i64> %.val90, %i.bw
  %i.cb = sub <2 x i64> %.val91, %i.bx
  %i.cc = sub nsw <2 x i64> %i.bk, %i.by
  %i.cd = sub nsw <2 x i64> %i.bl, %i.bz
  %i.ce = and <2 x i64> %i.bu, splat (i64 -4294967296)
  %i.cf = and <2 x i64> %i.bv, splat (i64 -4294967296)
  %i.cg = or disjoint <2 x i64> %i.bw, %i.ce
  %i.ch = or disjoint <2 x i64> %i.bx, %i.cf
  store <2 x i64> %i.cg, ptr %i.bi, align 1, !tbaa !16
  store <2 x i64> %i.ch, ptr %i.bj, align 1, !tbaa !16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv137
  %i.cj = and <2 x i64> %i.ca, splat (i64 4294967295)
  %i.ck = mul nuw <2 x i64> %i.cj, %i.v
  %i.cl = and <2 x i64> %i.cb, splat (i64 4294967295)
  %i.cm = mul nuw <2 x i64> %i.cl, %i.v
  %i.cn = and <2 x i64> %i.cc, splat (i64 4294967295)
  %i.co = mul nuw <2 x i64> %i.cn, %i.v
  %i.cp = and <2 x i64> %i.cd, splat (i64 4294967295)
  %i.cq = mul nuw <2 x i64> %i.cp, %i.v
  %i.cr = add nuw <2 x i64> %i.ck, splat (i64 2147483648)
  %i.cs = add nuw <2 x i64> %i.cm, splat (i64 2147483648)
  %i.ct = add nuw <2 x i64> %i.co, splat (i64 2147483648)
  %i.cu = add nuw <2 x i64> %i.cq, splat (i64 2147483648)
  %i.cv = lshr <2 x i64> %i.cr, splat (i64 32)
  %i.cw = lshr <2 x i64> %i.cs, splat (i64 32)
  %i.cx = and <2 x i64> %i.ct, splat (i64 -4294967296)
  %i.cy = and <2 x i64> %i.cu, splat (i64 -4294967296)
  %i.cz = or disjoint <2 x i64> %i.cv, %i.cx
  %i.da = or disjoint <2 x i64> %i.cw, %i.cy
  %i.db = bitcast <2 x i64> %i.cz to <4 x i32>
  %i.dc = bitcast <2 x i64> %i.da to <4 x i32>
  %i.dd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.db, <4 x i32> %i.dc)
  %i.de = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dd, <8 x i16> poison)
  %i.df = bitcast <16 x i8> %i.de to <2 x i64>
  %i.dg = extractelement <2 x i64> %i.df, i64 0
  store i64 %i.dg, ptr %i.ci, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not86 = icmp samesign ugt i64 %indvars.iv.next, %i.z
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 8
  br i1 %.not86, label %.preheader123.loopexit, label %.lr.ph, !llvm.loop !62

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %scalar.ph ], [ %indvars.iv142.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv142
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !23
  %6 = zext i32 %i.di to i64
  %7 = mul nuw i64 %6, %1
  %8 = lshr i64 %7, 32
  %9 = trunc nuw i64 %8 to i32                    ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !23
  %i.dl = sub i32 %i.dk, %9
  %i.dm = zext i32 %i.dl to i64
  %i.dn = load i32, ptr %i.r, align 4, !tbaa !70
  %i.do = zext i32 %i.dn to i64
  %i.dp = mul nuw i64 %i.dm, %i.do
  %i.dq = add nuw i64 %i.dp, 2147483648
  %i.dr = lshr i64 %i.dq, 32                      ; 2 uses
  %i.ds = trunc nuw i64 %i.dr to i32
  %i.dt = icmp sgt i32 %i.ds, 255
  %i.du = trunc i64 %i.dr to i8
  %i.dv = select i1 %i.dt, i8 -1, i8 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv142
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !16
  store i32 %9, ptr %i.dj, align 4, !tbaa !23
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.dx = trunc nuw i64 %indvars.iv.next143 to i32
  %i.dy = icmp sgt i32 %i.i, %i.dx
  br i1 %i.dy, label %scalar.ph, label %.loopexit, !llvm.loop !63

bb.c:                                             ; preds = %bb.a
  %.not85129 = icmp slt i32 %i.i, 8
  br i1 %.not85129, label %.preheader, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %bb.c
  %i.dz = zext nneg i32 %i.i to i64
  br label %.lr.ph131

.preheader.loopexit:                              ; preds = %.lr.ph131
  %i.ea = add nuw i32 %i.i, 2147483640
  %i.eb = and i32 %i.ea, 2147483640
  %narrow155 = add nuw i32 %i.eb, 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.c
  %.2.lcssa = phi i32 [ 0, %bb.c ], [ %narrow155, %.preheader.loopexit ] ; 4 uses
  %i.ec = icmp slt i32 %.2.lcssa, %i.i
  br i1 %i.ec, label %.lr.ph134, label %.loopexit

.lr.ph134:                                        ; preds = %.preheader
  %i.ed = zext i32 %i.s to i64                    ; 2 uses
  %i.ee = zext i32 %.2.lcssa to i64               ; 8 uses
  %i.ef = xor i32 %.2.lcssa, -1
  %i.eg = add i32 %i.i, %i.ef                     ; 2 uses
  %i.eh = zext i32 %i.eg to i64
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %min.iters.check191 = icmp ult i32 %i.eg, 11
  br i1 %min.iters.check191, label %scalar.ph190.preheader, label %vector.memcheck182

vector.memcheck182:                               ; preds = %.lr.ph134
  %scevgep183 = getelementptr i8, ptr %i.b, i64 %i.ee
  %i.ej = xor i32 %.2.lcssa, -1
  %i.ek = add i32 %i.i, %i.ej
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = getelementptr i8, ptr %i.b, i64 %i.ee
  %i.en = getelementptr i8, ptr %i.em, i64 %i.el
  %scevgep184 = getelementptr i8, ptr %i.en, i64 1
  %i.eo = shl nuw nsw i64 %i.ee, 2
  %scevgep185 = getelementptr i8, ptr %i.d, i64 %i.eo
  %i.ep = add nuw nsw i64 %i.ee, %i.el
  %i.eq = shl nuw nsw i64 %i.ep, 2
  %i.er = getelementptr i8, ptr %i.d, i64 %i.eq
  %scevgep186 = getelementptr i8, ptr %i.er, i64 4
  %bound0187 = icmp ult ptr %scevgep183, %scevgep186
  %bound1188 = icmp ult ptr %scevgep185, %scevgep184
  %found.conflict189 = and i1 %bound0187, %bound1188
  br i1 %found.conflict189, label %scalar.ph190.preheader, label %vector.ph192

vector.ph192:                                     ; preds = %vector.memcheck182
  %n.vec193 = and i64 %i.ei, 8589934588           ; 3 uses
  %i.es = add nuw nsw i64 %n.vec193, %i.ee
  %broadcast.splatinsert194 = insertelement <4 x i64> poison, i64 %i.ed, i64 0
  %broadcast.splat195 = shufflevector <4 x i64> %broadcast.splatinsert194, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph192
  %index197 = phi i64 [ 0, %vector.ph192 ], [ %index.next199, %vector.body196 ] ; 2 uses
  %i.et = add nuw i64 %index197, %i.ee            ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.et ; 2 uses
  %wide.load198 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !23, !alias.scope !77
  %i.ev = zext <4 x i32> %wide.load198 to <4 x i64>
  %i.ew = mul nuw <4 x i64> %broadcast.splat195, %i.ev
  %i.ex = add nuw <4 x i64> %i.ew, splat (i64 2147483648)
  %i.ey = lshr <4 x i64> %i.ex, splat (i64 32)    ; 2 uses
  %i.ez = trunc nuw <4 x i64> %i.ey to <4 x i32>
  %i.fa = icmp sgt <4 x i32> %i.ez, splat (i32 255)
  %i.fb = trunc <4 x i64> %i.ey to <4 x i8>
  %i.fc = select <4 x i1> %i.fa, <4 x i8> splat (i8 -1), <4 x i8> %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.et
  store <4 x i8> %i.fc, ptr %i.fd, align 1, !tbaa !16, !alias.scope !78, !noalias !77
  store <4 x i32> zeroinitializer, ptr %i.eu, align 4, !tbaa !23, !alias.scope !77
  %index.next199 = add nuw i64 %index197, 4       ; 2 uses
  %i.fe = icmp eq i64 %index.next199, %n.vec193
  br i1 %i.fe, label %middle.block200, label %vector.body196, !llvm.loop !67

middle.block200:                                  ; preds = %vector.body196
  %cmp.n201 = icmp eq i64 %i.ei, %n.vec193
  br i1 %cmp.n201, label %.loopexit, label %scalar.ph190.preheader

scalar.ph190.preheader:                           ; preds = %vector.memcheck182, %.lr.ph134, %middle.block200
  %indvars.iv152.ph = phi i64 [ %i.ee, %vector.memcheck182 ], [ %i.ee, %.lr.ph134 ], [ %i.es, %middle.block200 ]
  br label %scalar.ph190

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv147 = phi i64 [ 0, %.lr.ph131.preheader ], [ %indvars.iv.next148, %.lr.ph131 ] ; 3 uses
  %indvars.iv145 = phi i64 [ 8, %.lr.ph131.preheader ], [ %indvars.iv.next146, %.lr.ph131 ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv147 ; 3 uses
  %.val = load <2 x i64>, ptr %i.ff, align 1, !tbaa !16 ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 16
  %.val87 = load <2 x i64>, ptr %i.fg, align 1, !tbaa !16 ; 2 uses
  %i.fh = lshr <2 x i64> %.val, splat (i64 32)
  %i.fi = lshr <2 x i64> %.val87, splat (i64 32)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv147
  %i.fk = and <2 x i64> %.val, splat (i64 4294967295)
  %i.fl = mul nuw <2 x i64> %i.fk, %i.v
  %i.fm = and <2 x i64> %.val87, splat (i64 4294967295)
  %i.fn = mul nuw <2 x i64> %i.fm, %i.v
  %i.fo = mul nuw <2 x i64> %i.fh, %i.v
  %i.fp = mul nuw <2 x i64> %i.fi, %i.v
  %i.fq = add nuw <2 x i64> %i.fl, splat (i64 2147483648)
  %i.fr = add nuw <2 x i64> %i.fn, splat (i64 2147483648)
  %i.fs = add nuw <2 x i64> %i.fo, splat (i64 2147483648)
  %i.ft = add nuw <2 x i64> %i.fp, splat (i64 2147483648)
  %i.fu = lshr <2 x i64> %i.fq, splat (i64 32)
  %i.fv = lshr <2 x i64> %i.fr, splat (i64 32)
  %i.fw = and <2 x i64> %i.fs, splat (i64 -4294967296)
  %i.fx = and <2 x i64> %i.ft, splat (i64 -4294967296)
  %i.fy = or disjoint <2 x i64> %i.fu, %i.fw
  %i.fz = or disjoint <2 x i64> %i.fv, %i.fx
  %i.ga = bitcast <2 x i64> %i.fy to <4 x i32>
  %i.gb = bitcast <2 x i64> %i.fz to <4 x i32>
  %i.gc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ga, <4 x i32> %i.gb)
  %i.gd = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gc, <8 x i16> poison)
  %i.ge = bitcast <16 x i8> %i.gd to <2 x i64>
  %i.gf = extractelement <2 x i64> %i.ge, i64 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ff, i8 0, i64 32, i1 false)
  store i64 %i.gf, ptr %i.fj, align 1, !tbaa !16
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 8 ; 2 uses
  %.not85 = icmp samesign ugt i64 %indvars.iv.next146, %i.dz
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 8
  br i1 %.not85, label %.preheader.loopexit, label %.lr.ph131, !llvm.loop !68

scalar.ph190:                                     ; preds = %scalar.ph190.preheader, %scalar.ph190
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %scalar.ph190 ], [ %indvars.iv152.ph, %scalar.ph190.preheader ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv152 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !23
  %i.gi = zext i32 %i.gh to i64
  %i.gj = mul nuw i64 %i.gi, %i.ed
  %i.gk = add nuw i64 %i.gj, 2147483648
  %i.gl = lshr i64 %i.gk, 32                      ; 2 uses
  %i.gm = trunc nuw i64 %i.gl to i32
  %i.gn = icmp sgt i32 %i.gm, 255
  %i.go = trunc i64 %i.gl to i8
  %i.gp = select i1 %i.gn, i8 -1, i8 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv152
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !16
  store i32 0, ptr %i.gg, align 4, !tbaa !23
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %i.gr = trunc nuw i64 %indvars.iv.next153 to i32
  %i.gs = icmp sgt i32 %i.i, %i.gr
  br i1 %i.gs, label %scalar.ph190, label %.loopexit, !llvm.loop !69

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph190, %middle.block, %middle.block200, %.preheader123, %.preheader
  ret void
}

declare void @WebPRescalerImportRowExpand_C(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #4

declare void @WebPRescalerImportRowShrink_C(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 int", !8, i64 0}
!11 = !{!"WebPRescaler", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !9, i64 72, !5, i64 80, !10, i64 88, !10, i64 96}
!12 = !{!11, !10, i64 96}
!13 = !{!11, !5, i64 52}
!14 = !{!11, !5, i64 8}
!15 = !{!11, !5, i64 36}
!16 = !{!4, !4, i64 0}
!17 = !{!11, !5, i64 40}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!11, !9, i64 72}
!20 = !{!11, !10, i64 88}
!21 = !{!11, !5, i64 16}
!22 = !{!11, !5, i64 24}
!23 = !{!5, !5, i64 0}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!8, !8, i64 0}
!27 = !{!11, !5, i64 44}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = !{!11, !5, i64 12}
!31 = distinct !{!31, !"LVerDomain"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !31}
!35 = distinct !{!35, !18, !24, !25}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18, !24}
!38 = distinct !{!38, !"LVerDomain"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = distinct !{!42, !38}
!43 = distinct !{!43, !18, !24, !25}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18, !24}
!46 = !{!32}
!47 = !{!33}
!48 = !{!34}
!49 = !{!33, !32}
!50 = !{!11, !5, i64 32}
!51 = !{!39}
!52 = !{!40}
!53 = !{!41}
!54 = !{!42}
!55 = !{!40, !41, !39}
!56 = distinct !{!56, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !56}
!60 = distinct !{!60, !56}
!61 = distinct !{!61, !18, !24, !25}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18, !24}
!64 = distinct !{!64, !"LVerDomain"}
!65 = distinct !{!65, !64}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !18, !24, !25}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !18, !24}
!70 = !{!11, !5, i64 20}
!71 = !{!57}
!72 = !{!58}
!73 = !{!59}
!74 = !{!58, !57}
!75 = !{!60}
!76 = !{!59, !58, !57}
!77 = !{!65}
!78 = !{!66}
end_hunk_1
