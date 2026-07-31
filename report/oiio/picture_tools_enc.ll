inline.NumInlined: 16
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 32
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@WebPAlphaReplace = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define hidden void @WebPReplaceTransparentPixels(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !7
  %.not12 = icmp eq i32 %i.a, 0
  br i1 %.not12, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = and i32 %1, 16777215
  tail call void @WebPInitAlphaProcessing() #5
  %i.g = icmp sgt i32 %i.c, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.014 = phi ptr [ %i.e, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %.01013 = phi i32 [ %i.c, %.lr.ph ], [ %i.j, %bb.d ] ; 2 uses
  %i.j = add nsw i32 %.01013, -1
  %i.k = load ptr, ptr @WebPAlphaReplace, align 8, !tbaa !15
  %i.l = load i32, ptr %i.h, align 8, !tbaa !16
  tail call void %i.k(ptr noundef %.014, i32 noundef %i.l, i32 noundef %i.f) #5
  %i.m = load i32, ptr %i.i, align 8, !tbaa !17
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %.014, i64 %i.n
  %i.p = icmp samesign ugt i32 %.01013, 1
  br i1 %i.p, label %bb.d, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare void @WebPInitAlphaProcessing() local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @WebPCleanupTransparentArea(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 20 uses
  %i.d = sdiv i32 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13   ; 8 uses
  %i.g = sdiv i32 %i.f, 8
  %i.h = load i32, ptr %0, align 8, !tbaa !7
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.bh, label %.preheader261

.preheader261:                                    ; preds = %bb.b
  %i.i = icmp sgt i32 %i.f, 7
  br i1 %i.i, label %.preheader260.lr.ph, label %.critedge

.preheader260.lr.ph:                              ; preds = %.preheader261
  %i.j = icmp sgt i32 %i.c, 7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  br i1 %i.j, label %.preheader260.lr.ph.split, label %.critedge

.preheader260.lr.ph.split:                        ; preds = %.preheader260.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  br label %.preheader260

.preheader260:                                    ; preds = %.preheader260.lr.ph.split, %._crit_edge
  %.0119267 = phi i32 [ 0, %.preheader260.lr.ph.split ], [ %i.eu, %._crit_edge ] ; 2 uses
  %.0122266 = phi i32 [ 0, %.preheader260.lr.ph.split ], [ %.3, %._crit_edge ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader260, %IsTransparentARGBArea.exit.thread
  %.0265 = phi i32 [ 0, %.preheader260 ], [ %i.et, %IsTransparentARGBArea.exit.thread ] ; 2 uses
  %.1123264 = phi i32 [ %.0122266, %.preheader260 ], [ %.3, %IsTransparentARGBArea.exit.thread ] ; 65 uses
  %.0125263 = phi i32 [ 1, %.preheader260 ], [ %.2127, %IsTransparentARGBArea.exit.thread ]
  %i.n = load i32, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %i.o = mul nsw i32 %i.n, %.0119267
  %i.p = add nsw i32 %i.o, %.0265
  %i.q = shl nsw i32 %i.p, 3
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.r ; 10 uses
  %i.t = sext i32 %i.n to i64                     ; 7 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3    ; 2 uses
  %.not.i = icmp ult i32 %i.u, 16777216
  br i1 %.not.i, label %bb.d, label %IsTransparentARGBArea.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %.not.1.i = icmp ult i32 %i.w, 16777216
  br i1 %.not.1.i, label %bb.e, label %IsTransparentARGBArea.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %.not.2.i = icmp ult i32 %i.y, 16777216
  br i1 %.not.2.i, label %bb.f, label %IsTransparentARGBArea.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %.not.3.i = icmp ult i32 %i.aa, 16777216
  br i1 %.not.3.i, label %bb.g, label %IsTransparentARGBArea.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %.not.4.i = icmp ult i32 %i.ac, 16777216
  br i1 %.not.4.i, label %bb.h, label %IsTransparentARGBArea.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %.not.5.i = icmp ult i32 %i.ae, 16777216
  br i1 %.not.5.i, label %bb.i, label %IsTransparentARGBArea.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %.not.6.i = icmp ult i32 %i.ag, 16777216
  br i1 %.not.6.i, label %bb.j, label %IsTransparentARGBArea.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %.not.7.i = icmp ult i32 %i.ai, 16777216
  br i1 %.not.7.i, label %.preheader.1.i, label %IsTransparentARGBArea.exit.thread

.preheader.1.i:                                   ; preds = %bb.j
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t ; 10 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %.not.120.i = icmp ult i32 %i.ak, 16777216
  br i1 %.not.120.i, label %bb.k, label %IsTransparentARGBArea.exit.thread

bb.k:                                             ; preds = %.preheader.1.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %.not.1.1.i = icmp ult i32 %i.am, 16777216
  br i1 %.not.1.1.i, label %bb.l, label %IsTransparentARGBArea.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %.not.2.1.i = icmp ult i32 %i.ao, 16777216
  br i1 %.not.2.1.i, label %bb.m, label %IsTransparentARGBArea.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %.not.3.1.i = icmp ult i32 %i.aq, 16777216
  br i1 %.not.3.1.i, label %bb.n, label %IsTransparentARGBArea.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %.not.4.1.i = icmp ult i32 %i.as, 16777216
  br i1 %.not.4.1.i, label %bb.o, label %IsTransparentARGBArea.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %.not.5.1.i = icmp ult i32 %i.au, 16777216
  br i1 %.not.5.1.i, label %bb.p, label %IsTransparentARGBArea.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %.not.6.1.i = icmp ult i32 %i.aw, 16777216
  br i1 %.not.6.1.i, label %bb.q, label %IsTransparentARGBArea.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %.not.7.1.i = icmp ult i32 %i.ay, 16777216
  br i1 %.not.7.1.i, label %.preheader.2.i, label %IsTransparentARGBArea.exit.thread

.preheader.2.i:                                   ; preds = %bb.q
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.t ; 10 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %.not.221.i = icmp ult i32 %i.ba, 16777216
  br i1 %.not.221.i, label %bb.r, label %IsTransparentARGBArea.exit.thread

bb.r:                                             ; preds = %.preheader.2.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %.not.1.2.i = icmp ult i32 %i.bc, 16777216
  br i1 %.not.1.2.i, label %bb.s, label %IsTransparentARGBArea.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %.not.2.2.i = icmp ult i32 %i.be, 16777216
  br i1 %.not.2.2.i, label %bb.t, label %IsTransparentARGBArea.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %.not.3.2.i = icmp ult i32 %i.bg, 16777216
  br i1 %.not.3.2.i, label %bb.u, label %IsTransparentARGBArea.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %.not.4.2.i = icmp ult i32 %i.bi, 16777216
  br i1 %.not.4.2.i, label %bb.v, label %IsTransparentARGBArea.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %.not.5.2.i = icmp ult i32 %i.bk, 16777216
  br i1 %.not.5.2.i, label %bb.w, label %IsTransparentARGBArea.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %.not.6.2.i = icmp ult i32 %i.bm, 16777216
  br i1 %.not.6.2.i, label %bb.x, label %IsTransparentARGBArea.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %.not.7.2.i = icmp ult i32 %i.bo, 16777216
  br i1 %.not.7.2.i, label %.preheader.3.i, label %IsTransparentARGBArea.exit.thread

.preheader.3.i:                                   ; preds = %bb.x
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.t ; 10 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %.not.322.i = icmp ult i32 %i.bq, 16777216
  br i1 %.not.322.i, label %bb.y, label %IsTransparentARGBArea.exit.thread

bb.y:                                             ; preds = %.preheader.3.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %.not.1.3.i = icmp ult i32 %i.bs, 16777216
  br i1 %.not.1.3.i, label %bb.z, label %IsTransparentARGBArea.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %.not.2.3.i = icmp ult i32 %i.bu, 16777216
  br i1 %.not.2.3.i, label %bb.aa, label %IsTransparentARGBArea.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
end_hunk_0
begin_hunk_1_@WebPCleanupTransparentArea:bb.a
  %i.buv = getelementptr inbounds nuw i8, ptr %.04361.us.i195, i64 3
  %i.buw = load i8, ptr %i.buv, align 1, !tbaa !28
  %.not.us.i201.3 = icmp eq i8 %i.buw, 0
  br i1 %.not.us.i201.3, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bux = add nsw i32 %.251.us.i202.2, 1
  %i.buy = getelementptr inbounds nuw i8, ptr %.04162.us.i194, i64 3
  %i.buz = load i8, ptr %i.buy, align 1, !tbaa !28
  %i.bva = zext i8 %i.buz to i32
  %i.bvb = add nsw i32 %.2.us.i203.2, %i.bva
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  %.251.us.i202.3 = phi i32 [ %i.bux, %bb.jy ], [ %.251.us.i202.2, %bb.jx ] ; 2 uses
  %.2.us.i203.3 = phi i32 [ %i.bvb, %bb.jy ], [ %.2.us.i203.2, %bb.jx ] ; 2 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %.04361.us.i195, i64 4
  %i.bvd = load i8, ptr %i.bvc, align 1, !tbaa !28
  %.not.us.i201.4 = icmp eq i8 %i.bvd, 0
  br i1 %.not.us.i201.4, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.bve = add nsw i32 %.251.us.i202.3, 1
  %i.bvf = getelementptr inbounds nuw i8, ptr %.04162.us.i194, i64 4
  %i.bvg = load i8, ptr %i.bvf, align 1, !tbaa !28
  %i.bvh = zext i8 %i.bvg to i32
  %i.bvi = add nsw i32 %.2.us.i203.3, %i.bvh
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jz
  %.251.us.i202.4 = phi i32 [ %i.bve, %bb.ka ], [ %.251.us.i202.3, %bb.jz ] ; 2 uses
  %.2.us.i203.4 = phi i32 [ %i.bvi, %bb.ka ], [ %.2.us.i203.3, %bb.jz ] ; 2 uses
  %i.bvj = getelementptr inbounds nuw i8, ptr %.04361.us.i195, i64 5
  %i.bvk = load i8, ptr %i.bvj, align 1, !tbaa !28
  %.not.us.i201.5 = icmp eq i8 %i.bvk, 0
  br i1 %.not.us.i201.5, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.bvl = add nsw i32 %.251.us.i202.4, 1
  %i.bvm = getelementptr inbounds nuw i8, ptr %.04162.us.i194, i64 5
  %i.bvn = load i8, ptr %i.bvm, align 1, !tbaa !28
  %i.bvo = zext i8 %i.bvn to i32
  %i.bvp = add nsw i32 %.2.us.i203.4, %i.bvo
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %.251.us.i202.5 = phi i32 [ %i.bvl, %bb.kc ], [ %.251.us.i202.4, %bb.kb ] ; 2 uses
  %.2.us.i203.5 = phi i32 [ %i.bvp, %bb.kc ], [ %.2.us.i203.4, %bb.kb ] ; 2 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %.04361.us.i195, i64 6
  %i.bvr = load i8, ptr %i.bvq, align 1, !tbaa !28
  %.not.us.i201.6 = icmp eq i8 %i.bvr, 0
  br i1 %.not.us.i201.6, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.bvs = add nsw i32 %.251.us.i202.5, 1
  %i.bvt = getelementptr inbounds nuw i8, ptr %.04162.us.i194, i64 6
  %i.bvu = load i8, ptr %i.bvt, align 1, !tbaa !28
  %i.bvv = zext i8 %i.bvu to i32
  %i.bvw = add nsw i32 %.2.us.i203.5, %i.bvv
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %.251.us.i202.6 = phi i32 [ %i.bvs, %bb.ke ], [ %.251.us.i202.5, %bb.kd ] ; 2 uses
  %.2.us.i203.6 = phi i32 [ %i.bvw, %bb.ke ], [ %.2.us.i203.5, %bb.kd ] ; 2 uses
  %i.bvx = getelementptr inbounds nuw i8, ptr %.04361.us.i195, i64 7
  %i.bvy = load i8, ptr %i.bvx, align 1, !tbaa !28
  %.not.us.i201.7 = icmp eq i8 %i.bvy, 0
  br i1 %.not.us.i201.7, label %._crit_edge.us.i206, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.bvz = add nsw i32 %.251.us.i202.6, 1
  %i.bwa = getelementptr inbounds nuw i8, ptr %.04162.us.i194, i64 7
  %i.bwb = load i8, ptr %i.bwa, align 1, !tbaa !28
  %i.bwc = zext i8 %i.bwb to i32
  %i.bwd = add nsw i32 %.2.us.i203.6, %i.bwc
  br label %._crit_edge.us.i206

._crit_edge.us.i206:                              ; preds = %bb.kg, %bb.kf
  %.251.us.i202.7 = phi i32 [ %i.bvz, %bb.kg ], [ %.251.us.i202.6, %bb.kf ] ; 4 uses
  %.2.us.i203.7 = phi i32 [ %i.bwd, %bb.kg ], [ %.2.us.i203.6, %bb.kf ] ; 2 uses
  %i.bwe = getelementptr inbounds i8, ptr %.04361.us.i195, i64 %i.btw
  %i.bwf = getelementptr inbounds i8, ptr %.04162.us.i194, i64 %i.btx
  %i.bwg = add nuw nsw i32 %.04560.us.i196, 1     ; 2 uses
  %exitcond74.not.i207 = icmp eq i32 %i.bwg, %i.btv
  br i1 %exitcond74.not.i207, label %._crit_edge64.i208, label %.preheader54.us.i192, !llvm.loop !29

._crit_edge64.i208:                               ; preds = %._crit_edge.us.i206
  %i.bwh = icmp sgt i32 %.251.us.i202.7, 0
  %i.bwi = icmp slt i32 %.251.us.i202.7, %i.bty
  %or.cond.i209 = select i1 %i.bwh, i1 %i.bwi, i1 false
  br i1 %or.cond.i209, label %bb.kh, label %SmoothenBlock.exit219

bb.kh:                                            ; preds = %._crit_edge64.i208
  %i.bwj = sdiv i32 %.2.us.i203.7, %.251.us.i202.7
  %i.bwk = trunc i32 %i.bwj to i8                 ; 8 uses
  br label %.preheader.i210

.preheader.i210:                                  ; preds = %._crit_edge.i217, %bb.kh
  %.14271.i211 = phi ptr [ %i.bxq, %._crit_edge.i217 ], [ %i.bub, %bb.kh ] ; 9 uses
  %.14470.i212 = phi ptr [ %i.bxp, %._crit_edge.i217 ], [ %i.bua, %bb.kh ] ; 9 uses
  %.14669.i213 = phi i32 [ %i.bxr, %._crit_edge.i217 ], [ 0, %bb.kh ]
  %i.bwl = load i8, ptr %.14470.i212, align 1, !tbaa !28
  %i.bwm = icmp eq i8 %i.bwl, 0
  br i1 %i.bwm, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %.preheader.i210
  store i8 %i.bwk, ptr %.14271.i211, align 1, !tbaa !28
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %.preheader.i210
  %i.bwn = getelementptr inbounds nuw i8, ptr %.14470.i212, i64 1
  %i.bwo = load i8, ptr %i.bwn, align 1, !tbaa !28
  %i.bwp = icmp eq i8 %i.bwo, 0
  br i1 %i.bwp, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.bwq = getelementptr inbounds nuw i8, ptr %.14271.i211, i64 1
  store i8 %i.bwk, ptr %i.bwq, align 1, !tbaa !28
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.kj
  %i.bwr = getelementptr inbounds nuw i8, ptr %.14470.i212, i64 2
  %i.bws = load i8, ptr %i.bwr, align 1, !tbaa !28
  %i.bwt = icmp eq i8 %i.bws, 0
  br i1 %i.bwt, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  %i.bwu = getelementptr inbounds nuw i8, ptr %.14271.i211, i64 2
  store i8 %i.bwk, ptr %i.bwu, align 1, !tbaa !28
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.kl
  %i.bwv = getelementptr inbounds nuw i8, ptr %.14470.i212, i64 3
  %i.bww = load i8, ptr %i.bwv, align 1, !tbaa !28
  %i.bwx = icmp eq i8 %i.bww, 0
  br i1 %i.bwx, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  %i.bwy = getelementptr inbounds nuw i8, ptr %.14271.i211, i64 3
  store i8 %i.bwk, ptr %i.bwy, align 1, !tbaa !28
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %bb.kn
  %i.bwz = getelementptr inbounds nuw i8, ptr %.14470.i212, i64 4
  %i.bxa = load i8, ptr %i.bwz, align 1, !tbaa !28
  %i.bxb = icmp eq i8 %i.bxa, 0
  br i1 %i.bxb, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.bxc = getelementptr inbounds nuw i8, ptr %.14271.i211, i64 4
  store i8 %i.bwk, ptr %i.bxc, align 1, !tbaa !28
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp
  %i.bxd = getelementptr inbounds nuw i8, ptr %.14470.i212, i64 5
  %i.bxe = load i8, ptr %i.bxd, align 1, !tbaa !28
  %i.bxf = icmp eq i8 %i.bxe, 0
  br i1 %i.bxf, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.bxg = getelementptr inbounds nuw i8, ptr %.14271.i211, i64 5
  store i8 %i.bwk, ptr %i.bxg, align 1, !tbaa !28
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr
  %i.bxh = getelementptr inbounds nuw i8, ptr %.14470.i212, i64 6
  %i.bxi = load i8, ptr %i.bxh, align 1, !tbaa !28
  %i.bxj = icmp eq i8 %i.bxi, 0
  br i1 %i.bxj, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.bxk = getelementptr inbounds nuw i8, ptr %.14271.i211, i64 6
  store i8 %i.bwk, ptr %i.bxk, align 1, !tbaa !28
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kt
  %i.bxl = getelementptr inbounds nuw i8, ptr %.14470.i212, i64 7
  %i.bxm = load i8, ptr %i.bxl, align 1, !tbaa !28
  %i.bxn = icmp eq i8 %i.bxm, 0
  br i1 %i.bxn, label %bb.kw, label %._crit_edge.i217

bb.kw:                                            ; preds = %bb.kv
  %i.bxo = getelementptr inbounds nuw i8, ptr %.14271.i211, i64 7
  store i8 %i.bwk, ptr %i.bxo, align 1, !tbaa !28
  br label %._crit_edge.i217

._crit_edge.i217:                                 ; preds = %bb.kw, %bb.kv
  %i.bxp = getelementptr inbounds i8, ptr %.14470.i212, i64 %i.btw
  %i.bxq = getelementptr inbounds i8, ptr %.14271.i211, i64 %i.btx
  %i.bxr = add nuw nsw i32 %.14669.i213, 1        ; 2 uses
  %exitcond80.not.i218 = icmp eq i32 %i.bxr, %i.btv
  br i1 %exitcond80.not.i218, label %SmoothenBlock.exit219, label %.preheader.i210, !llvm.loop !60

SmoothenBlock.exit219:                            ; preds = %._crit_edge.i217, %._crit_edge64.i208
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 8 ; 2 uses
  %.not140 = icmp samesign ugt i64 %indvars.iv.next305, %i.btz
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 8
  br i1 %.not140, label %._crit_edge293.loopexit, label %.preheader54.lr.ph.i, !llvm.loop !61

._crit_edge293.loopexit:                          ; preds = %SmoothenBlock.exit219
  %1 = add nuw i32 %i.c, 2147483640
  %i.bxs = and i32 %1, 2147483640
  %narrow = add nuw i32 %i.bxs, 8
  br label %._crit_edge293

._crit_edge293:                                   ; preds = %._crit_edge293.loopexit, %bb.jr
  %.2.lcssa = phi i32 [ 0, %bb.jr ], [ %narrow, %._crit_edge293.loopexit ] ; 3 uses
  %i.bxt = icmp slt i32 %.2.lcssa, %i.c
  br i1 %i.bxt, label %.preheader54.lr.ph.i221, label %.critedge

.preheader54.lr.ph.i221:                          ; preds = %._crit_edge293
  %i.bxu = zext i32 %.2.lcssa to i64              ; 4 uses
  %i.bxv = getelementptr i8, ptr %.0115.lcssa, i64 %i.bxu ; 3 uses
  %i.bxw = getelementptr i8, ptr %.0118.lcssa, i64 %i.bxu ; 3 uses
  %i.bxx = sub i32 %i.c, %.2.lcssa                ; 6 uses
  %i.bxy = sext i32 %i.fa to i64                  ; 3 uses
  %i.bxz = sext i32 %i.ew to i64                  ; 3 uses
  %wide.trip.count.i223 = zext i32 %i.bxx to i64  ; 12 uses
  %xtraiter1401 = and i64 %wide.trip.count.i223, 1
  %i.bya = icmp eq i32 %i.bxx, 1
  %unroll_iter1406 = and i64 %wide.trip.count.i223, 4294967294
  %lcmp.mod1402.not = icmp eq i64 %xtraiter1401, 0
  %lcmp.mod1405 = trunc i32 %i.bxx to i1
  br label %.preheader54.us.i224

.preheader54.us.i224:                             ; preds = %._crit_edge.us.i238, %.preheader54.lr.ph.i221
  %.063.us.i225 = phi i32 [ %.2.us.i235.lcssa, %._crit_edge.us.i238 ], [ 0, %.preheader54.lr.ph.i221 ] ; 2 uses
  %.04162.us.i226 = phi ptr [ %i.byx, %._crit_edge.us.i238 ], [ %i.bxw, %.preheader54.lr.ph.i221 ] ; 4 uses
  %.04361.us.i227 = phi ptr [ %i.byw, %._crit_edge.us.i238 ], [ %i.bxv, %.preheader54.lr.ph.i221 ] ; 4 uses
  %.04560.us.i228 = phi i32 [ %i.byy, %._crit_edge.us.i238 ], [ 0, %.preheader54.lr.ph.i221 ]
  %.04959.us.i229 = phi i32 [ %.251.us.i234.lcssa, %._crit_edge.us.i238 ], [ 0, %.preheader54.lr.ph.i221 ] ; 2 uses
  br i1 %i.bya, label %.epil.preheader1400, label %.preheader54.us.i224.new

.preheader54.us.i224.new:                         ; preds = %.preheader54.us.i224, %bb.la
  %indvars.iv.i230 = phi i64 [ %indvars.iv.next.i236.1, %bb.la ], [ 0, %.preheader54.us.i224 ] ; 4 uses
  %.157.us.i231 = phi i32 [ %.2.us.i235.1, %bb.la ], [ %.063.us.i225, %.preheader54.us.i224 ] ; 2 uses
  %.15055.us.i232 = phi i32 [ %.251.us.i234.1, %bb.la ], [ %.04959.us.i229, %.preheader54.us.i224 ] ; 2 uses
  %niter1407 = phi i64 [ %niter1407.next.1, %bb.la ], [ 0, %.preheader54.us.i224 ]
  %i.byb = getelementptr inbounds nuw i8, ptr %.04361.us.i227, i64 %indvars.iv.i230
  %i.byc = load i8, ptr %i.byb, align 1, !tbaa !28
  %.not.us.i233 = icmp eq i8 %i.byc, 0
  br i1 %.not.us.i233, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %.preheader54.us.i224.new
  %i.byd = add nsw i32 %.15055.us.i232, 1
  %i.bye = getelementptr inbounds nuw i8, ptr %.04162.us.i226, i64 %indvars.iv.i230
  %i.byf = load i8, ptr %i.bye, align 1, !tbaa !28
  %i.byg = zext i8 %i.byf to i32
  %i.byh = add nsw i32 %.157.us.i231, %i.byg
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %.preheader54.us.i224.new
  %.251.us.i234 = phi i32 [ %i.byd, %bb.kx ], [ %.15055.us.i232, %.preheader54.us.i224.new ] ; 2 uses
  %.2.us.i235 = phi i32 [ %i.byh, %bb.kx ], [ %.157.us.i231, %.preheader54.us.i224.new ] ; 2 uses
  %indvars.iv.next.i236 = or disjoint i64 %indvars.iv.i230, 1 ; 2 uses
  %i.byi = getelementptr inbounds nuw i8, ptr %.04361.us.i227, i64 %indvars.iv.next.i236
  %i.byj = load i8, ptr %i.byi, align 1, !tbaa !28
  %.not.us.i233.1 = icmp eq i8 %i.byj, 0
  br i1 %.not.us.i233.1, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.byk = add nsw i32 %.251.us.i234, 1
  %i.byl = getelementptr inbounds nuw i8, ptr %.04162.us.i226, i64 %indvars.iv.next.i236
  %i.bym = load i8, ptr %i.byl, align 1, !tbaa !28
  %i.byn = zext i8 %i.bym to i32
  %i.byo = add nsw i32 %.2.us.i235, %i.byn
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky
  %.251.us.i234.1 = phi i32 [ %i.byk, %bb.kz ], [ %.251.us.i234, %bb.ky ] ; 3 uses
  %.2.us.i235.1 = phi i32 [ %i.byo, %bb.kz ], [ %.2.us.i235, %bb.ky ] ; 3 uses
  %indvars.iv.next.i236.1 = add nuw nsw i64 %indvars.iv.i230, 2 ; 2 uses
  %niter1407.next.1 = add i64 %niter1407, 2       ; 2 uses
  %niter1407.ncmp.1 = icmp eq i64 %niter1407.next.1, %unroll_iter1406
  br i1 %niter1407.ncmp.1, label %._crit_edge.us.i238.unr-lcssa, label %.preheader54.us.i224.new, !llvm.loop !31

._crit_edge.us.i238.unr-lcssa:                    ; preds = %bb.la
  br i1 %lcmp.mod1402.not, label %._crit_edge.us.i238, label %.epil.preheader1400

.epil.preheader1400:                              ; preds = %._crit_edge.us.i238.unr-lcssa, %.preheader54.us.i224
  %indvars.iv.i230.epil.init = phi i64 [ 0, %.preheader54.us.i224 ], [ %indvars.iv.next.i236.1, %._crit_edge.us.i238.unr-lcssa ] ; 2 uses
  %.157.us.i231.epil.init = phi i32 [ %.063.us.i225, %.preheader54.us.i224 ], [ %.2.us.i235.1, %._crit_edge.us.i238.unr-lcssa ] ; 2 uses
  %.15055.us.i232.epil.init = phi i32 [ %.04959.us.i229, %.preheader54.us.i224 ], [ %.251.us.i234.1, %._crit_edge.us.i238.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1405)
  %i.byp = getelementptr inbounds nuw i8, ptr %.04361.us.i227, i64 %indvars.iv.i230.epil.init
  %i.byq = load i8, ptr %i.byp, align 1, !tbaa !28
  %.not.us.i233.epil = icmp eq i8 %i.byq, 0
  br i1 %.not.us.i233.epil, label %._crit_edge.us.i238, label %bb.lb

bb.lb:                                            ; preds = %.epil.preheader1400
  %i.byr = add nsw i32 %.15055.us.i232.epil.init, 1
  %i.bys = getelementptr inbounds nuw i8, ptr %.04162.us.i226, i64 %indvars.iv.i230.epil.init
  %i.byt = load i8, ptr %i.bys, align 1, !tbaa !28
  %i.byu = zext i8 %i.byt to i32
  %i.byv = add nsw i32 %.157.us.i231.epil.init, %i.byu
  br label %._crit_edge.us.i238

._crit_edge.us.i238:                              ; preds = %.epil.preheader1400, %bb.lb, %._crit_edge.us.i238.unr-lcssa
  %.251.us.i234.lcssa = phi i32 [ %.251.us.i234.1, %._crit_edge.us.i238.unr-lcssa ], [ %i.byr, %bb.lb ], [ %.15055.us.i232.epil.init, %.epil.preheader1400 ] ; 4 uses
  %.2.us.i235.lcssa = phi i32 [ %.2.us.i235.1, %._crit_edge.us.i238.unr-lcssa ], [ %i.byv, %bb.lb ], [ %.157.us.i231.epil.init, %.epil.preheader1400 ] ; 2 uses
  %i.byw = getelementptr inbounds i8, ptr %.04361.us.i227, i64 %i.bxy
  %i.byx = getelementptr inbounds i8, ptr %.04162.us.i226, i64 %i.bxz
  %i.byy = add nuw nsw i32 %.04560.us.i228, 1     ; 2 uses
  %exitcond74.not.i239 = icmp eq i32 %i.byy, %i.btv
  br i1 %exitcond74.not.i239, label %._crit_edge64.i240, label %.preheader54.us.i224, !llvm.loop !29

._crit_edge64.i240:                               ; preds = %._crit_edge.us.i238
  %i.byz = icmp sgt i32 %.251.us.i234.lcssa, 0
  %i.bza = mul nuw nsw i32 %i.bxx, %i.btv
  %i.bzb = icmp slt i32 %.251.us.i234.lcssa, %i.bza
  %or.cond.i241 = select i1 %i.byz, i1 %i.bzb, i1 false
  br i1 %or.cond.i241, label %bb.lc, label %.critedge

bb.lc:                                            ; preds = %._crit_edge64.i240
  %i.bzc = sdiv i32 %.2.us.i235.lcssa, %.251.us.i234.lcssa
  %i.bzd = trunc i32 %i.bzc to i8                 ; 43 uses
  %i.bze = xor i32 %.1120.lcssa, -1
  %i.bzf = add i32 %i.f, %i.bze
  %i.bzg = zext i32 %i.bzf to i64                 ; 2 uses
  %i.bzh = mul nsw i64 %i.bxz, %i.bzg
  %i.bzi = getelementptr i8, ptr %.0118.lcssa, i64 %i.bzh
  %i.bzj = getelementptr i8, ptr %i.bzi, i64 %i.bxu
  %scevgep = getelementptr i8, ptr %i.bzj, i64 %wide.trip.count.i223
  %i.bzk = mul nsw i64 %i.bxy, %i.bzg
  %i.bzl = getelementptr i8, ptr %.0115.lcssa, i64 %i.bzk
  %i.bzm = getelementptr i8, ptr %i.bzl, i64 %i.bxu
  %scevgep1191 = getelementptr i8, ptr %i.bzm, i64 %wide.trip.count.i223
  %min.iters.check1193 = icmp ult i32 %i.bxx, 8
  %bound0 = icmp ult ptr %i.bxw, %scevgep1191
  %bound1 = icmp ult ptr %i.bxv, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bzn = or i32 %i.fa, %i.ew
  %i.bzo = icmp slt i32 %i.bzn, 0
  %i.bzp = or i1 %found.conflict, %i.bzo
  %min.iters.check1195 = icmp ult i32 %i.bxx, 32
  %n.mod.vf1197 = and i64 %wide.trip.count.i223, 24
  %n.vec1198 = and i64 %wide.trip.count.i223, 4294967264 ; 4 uses
  %cmp.n1269 = icmp eq i64 %n.vec1198, %wide.trip.count.i223
  %min.epilog.iters.check1274 = icmp eq i64 %n.mod.vf1197, 0
  %n.vec1277 = and i64 %wide.trip.count.i223, 4294967288 ; 3 uses
  %cmp.n1299 = icmp eq i64 %n.vec1277, %wide.trip.count.i223
  %xtraiter1408 = and i64 %wide.trip.count.i223, 1
  %lcmp.mod1409.not = icmp eq i64 %xtraiter1408, 0
  %i.bzq = add nsw i64 %wide.trip.count.i223, -1
  br label %iter.check1271

iter.check1271:                                   ; preds = %._crit_edge.i250, %bb.lc
  %.14271.i244 = phi ptr [ %i.cfb, %._crit_edge.i250 ], [ %i.bxw, %bb.lc ] ; 44 uses
  %.14470.i245 = phi ptr [ %i.cfa, %._crit_edge.i250 ], [ %i.bxv, %bb.lc ] ; 6 uses
  %.14669.i246 = phi i32 [ %i.cfc, %._crit_edge.i250 ], [ 0, %bb.lc ]
  %brmerge = select i1 %min.iters.check1193, i1 true, i1 %i.bzp
  br i1 %brmerge, label %vec.epilog.scalar.ph1272.preheader, label %vector.main.loop.iter.check1194

vector.main.loop.iter.check1194:                  ; preds = %iter.check1271
  br i1 %min.iters.check1195, label %vec.epilog.ph1275, label %vector.body1199

vector.body1199:                                  ; preds = %vector.main.loop.iter.check1194, %pred.store.continue1266
  %index1200 = phi i64 [ %index.next1267, %pred.store.continue1266 ], [ 0, %vector.main.loop.iter.check1194 ] ; 34 uses
  %i.bzr = getelementptr inbounds nuw i8, ptr %.14470.i245, i64 %index1200 ; 2 uses
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bzr, i64 16
  %wide.load1201 = load <16 x i8>, ptr %i.bzr, align 1, !tbaa !28, !alias.scope !62
  %wide.load1202 = load <16 x i8>, ptr %i.bzs, align 1, !tbaa !28, !alias.scope !62
  %i.bzt = icmp eq <16 x i8> %wide.load1201, zeroinitializer ; 16 uses
  %i.bzu = icmp eq <16 x i8> %wide.load1202, zeroinitializer ; 16 uses
  %i.bzv = extractelement <16 x i1> %i.bzt, i64 0
  br i1 %i.bzv, label %pred.store.if1203, label %pred.store.continue1204

pred.store.if1203:                                ; preds = %vector.body1199
  %i.bzw = getelementptr inbounds nuw i8, ptr %.14271.i244, i64 %index1200
  store i8 %i.bzd, ptr %i.bzw, align 1, !tbaa !28, !alias.scope !65, !noalias !62
  br label %pred.store.continue1204

pred.store.continue1204:                          ; preds = %pred.store.if1203, %vector.body1199
  %i.bzx = extractelement <16 x i1> %i.bzt, i64 1
  br i1 %i.bzx, label %pred.store.if1205, label %pred.store.continue1206

pred.store.if1205:                                ; preds = %pred.store.continue1204
  %i.bzy = getelementptr inbounds nuw i8, ptr %.14271.i244, i64 %index1200
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.bzy, i64 1
  store i8 %i.bzd, ptr %i.bzz, align 1, !tbaa !28, !alias.scope !65, !noalias !62
  br label %pred.store.continue1206

pred.store.continue1206:                          ; preds = %pred.store.if1205, %pred.store.continue1204
  %i.caa = extractelement <16 x i1> %i.bzt, i64 2
  br i1 %i.caa, label %pred.store.if1207, label %pred.store.continue1208

pred.store.if1207:                                ; preds = %pred.store.continue1206
  %i.cab = getelementptr inbounds nuw i8, ptr %.14271.i244, i64 %index1200
  %i.cac = getelementptr inbounds nuw i8, ptr %i.cab, i64 2
  store i8 %i.bzd, ptr %i.cac, align 1, !tbaa !28, !alias.scope !65, !noalias !62
  br label %pred.store.continue1208

pred.store.continue1208:                          ; preds = %pred.store.if1207, %pred.store.continue1206
  %i.cad = extractelement <16 x i1> %i.bzt, i64 3
  br i1 %i.cad, label %pred.store.if1209, label %pred.store.continue1210

pred.store.if1209:                                ; preds = %pred.store.continue1208
  %i.cae = getelementptr inbounds nuw i8, ptr %.14271.i244, i64 %index1200
  %i.caf = getelementptr inbounds nuw i8, ptr %i.cae, i64 3
  store i8 %i.bzd, ptr %i.caf, align 1, !tbaa !28, !alias.scope !65, !noalias !62
  br label %pred.store.continue1210

pred.store.continue1210:                          ; preds = %pred.store.if1209, %pred.store.continue1208
  %i.cag = extractelement <16 x i1> %i.bzt, i64 4
  br i1 %i.cag, label %pred.store.if1211, label %pred.store.continue1212

pred.store.if1211:                                ; preds = %pred.store.continue1210
  %i.cah = getelementptr inbounds nuw i8, ptr %.14271.i244, i64 %index1200
  %i.cai = getelementptr inbounds nuw i8, ptr %i.cah, i64 4
  store i8 %i.bzd, ptr %i.cai, align 1, !tbaa !28, !alias.scope !65, !noalias !62
  br label %pred.store.continue1212

pred.store.continue1212:                          ; preds = %pred.store.if1211, %pred.store.continue1210
  %i.caj = extractelement <16 x i1> %i.bzt, i64 5
  br i1 %i.caj, label %pred.store.if1213, label %pred.store.continue1214

pred.store.if1213:                                ; preds = %pred.store.continue1212
  %i.cak = getelementptr inbounds nuw i8, ptr %.14271.i244, i64 %index1200
  %i.cal = getelementptr inbounds nuw i8, ptr %i.cak, i64 5
  store i8 %i.bzd, ptr %i.cal, align 1, !tbaa !28, !alias.scope !65, !noalias !62
  br label %pred.store.continue1214

pred.store.continue1214:                          ; preds = %pred.store.if1213, %pred.store.continue1212
end_hunk_1
