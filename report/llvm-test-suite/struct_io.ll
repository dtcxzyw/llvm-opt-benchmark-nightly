begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"%d: (%d, %d, %d; %d) %e\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%d: (%d, %d, %d; %d) %le\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_PrintBoxArrayData(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge242

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = icmp slt i32 %3, 1
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge.split
  %indvars.iv257.a = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next258, %._crit_edge.split ] ; 4 uses
  %.0155236 = phi ptr [ %4, %.lr.ph ], [ %i.cl, %._crit_edge.split ] ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv257.a ; 5 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv257.a ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = load i32, ptr %i.k, align 4, !tbaa !4
  %i.o = sub nsw i32 %i.m, %i.n
  %i.p = call i32 @llvm.smax.i32(i32 %i.o, i32 -1)
  %spec.select = add nsw i32 %i.p, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = sub nsw i32 %i.r, %i.t                   ; 2 uses
  %i.v = add nuw nsw i32 %i.u, 1
  %i.w = mul nsw i32 %i.v, %spec.select
  %.inv = icmp slt i32 %i.u, 0
  %i.x = select i1 %.inv, i32 0, i32 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = sub nsw i32 %i.z, %i.ab                 ; 2 uses
  %i.ad = add nuw nsw i32 %i.ac, 1
  %i.ae = mul nsw i32 %i.x, %i.ad
  %.inv180 = icmp slt i32 %i.ac, 0
  %i.af = select i1 %.inv180, i32 0, i32 %i.ae    ; 2 uses
  %i.ag = call i32 @hypre_BoxGetSize(ptr noundef %i.i, ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !4
  %i.ai = load i32, ptr %i.k, align 4, !tbaa !4   ; 2 uses
  %i.aj = sub i32 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = load i32, ptr %i.s, align 4, !tbaa !4   ; 2 uses
  %i.an = sub i32 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.q, align 4, !tbaa !4
  %i.aq = sub nsw i32 %i.ap, %i.am                ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, -1                  ; 2 uses
  br i1 %i.ar, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.at = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.au = sub nsw i32 %i.as, %i.at
  %i.av = add nuw nsw i32 %i.aq, 1
  %i.aw = mul nsw i32 %i.au, %i.av
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ax = phi i32 [ %i.aw, %bb.c ], [ 0, %bb.b ]
  %i.ay = load i32, ptr %i.l, align 4, !tbaa !4
  %i.az = sub i32 %i.ay, %i.ai                    ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1                  ; 2 uses
  %i.bb = add nsw i32 %i.an, %i.ax
  %i.bc = add i32 %i.az, 1                        ; 2 uses
  %i.bd = mul nsw i32 %i.bc, %i.bb
  %i.be = select i1 %i.ba, i32 %i.bd, i32 0
  %i.bf = add i32 %i.aj, %i.be
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.bh = load i32, ptr %i.e, align 4, !tbaa !4   ; 3 uses
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !4   ; 3 uses
  %.0151 = call i32 @llvm.smax.i32(i32 %i.bh, i32 %i.bg)
  %.1152 = call i32 @llvm.smax.i32(i32 %i.bi, i32 %.0151)
  %i.bj = icmp sgt i32 %.1152, 0
  br i1 %i.bj, label %.preheader186.lr.ph, label %._crit_edge.split

.preheader186.lr.ph:                              ; preds = %bb.d
  %i.bk = select i1 %i.ba, i32 %i.bc, i32 0       ; 2 uses
  %i.bl = add nuw nsw i32 %i.aq, 1
  %i.bm = mul nsw i32 %i.bk, %i.bl
  %i.bn = select i1 %i.ar, i32 %i.bm, i32 0
  %i.bo = icmp slt i32 %i.bi, 1
  %i.bp = icmp slt i32 %i.bg, 1
  %i.bq = icmp slt i32 %i.bh, 1
  %or.cond.not271 = or i1 %i.bo, %i.bq
  %brmerge = or i1 %or.cond.not271, %i.bp
  %brmerge268 = or i1 %brmerge, %i.g
  br i1 %brmerge268, label %._crit_edge.split, label %.preheader185.us.us.us.us.us.us.preheader

.preheader185.us.us.us.us.us.us.preheader:        ; preds = %.preheader186.lr.ph
  %i.br = sext i32 %i.af to i64
  %i.bs = trunc nuw nsw i64 %indvars.iv257.a to i32
  br label %.preheader185.us.us.us.us.us.us

.preheader185.us.us.us.us.us.us:                  ; preds = %.preheader185.us.us.us.us.us.us.preheader, %._crit_edge.split.us.split.us.us.us.us.us.us.us
  %.0156205.us.us.us.us.us.us = phi i32 [ %i.bf, %.preheader185.us.us.us.us.us.us.preheader ], [ %i.ci, %._crit_edge.split.us.split.us.us.us.us.us.us.us ] ; 2 uses
  %.1168202.us.us.us.us.us.us = phi i32 [ 0, %.preheader185.us.us.us.us.us.us.preheader ], [ %i.ch, %._crit_edge.split.us.split.us.us.us.us.us.us.us ] ; 2 uses
  br label %.preheader184.us.us.us.us.us.us.us.us

.preheader184.us.us.us.us.us.us.us.us:            ; preds = %._crit_edge190.split.us.us.us.us.us.us.us.us.us, %.preheader185.us.us.us.us.us.us
  %.1157193.us.us.us.us.us.us.us.us = phi i32 [ %i.cg, %._crit_edge190.split.us.us.us.us.us.us.us.us.us ], [ %.0156205.us.us.us.us.us.us, %.preheader185.us.us.us.us.us.us ] ; 2 uses
  %.1166191.us.us.us.us.us.us.us.us = phi i32 [ %i.cf, %._crit_edge190.split.us.us.us.us.us.us.us.us.us ], [ 0, %.preheader185.us.us.us.us.us.us ] ; 2 uses
  %i.bt = sext i32 %.1157193.us.us.us.us.us.us.us.us to i64
  br label %.preheader.us.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us.us:            ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us, %.preheader184.us.us.us.us.us.us.us.us
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %._crit_edge.us.us.us.us.us.us.us.us.us ], [ %i.bt, %.preheader184.us.us.us.us.us.us.us.us ] ; 2 uses
  %.1164188.us.us.us.us.us.us.us.us.us = phi i32 [ %i.ce, %._crit_edge.us.us.us.us.us.us.us.us.us ], [ 0, %.preheader184.us.us.us.us.us.us.us.us ] ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.0155236, i64 %indvars.iv251
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.us.us.us.us.us.us.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.bu = load i32, ptr %i.i, align 4, !tbaa !4
  %i.bv = add nsw i32 %i.bu, %.1164188.us.us.us.us.us.us.us.us.us
  %i.bw = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.bx = add nsw i32 %i.bw, %.1166191.us.us.us.us.us.us.us.us
  %i.by = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.bz = add nsw i32 %i.by, %.1168202.us.us.us.us.us.us
  %i.ca = mul nsw i64 %indvars.iv, %i.br
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ca
  %i.cb = load double, ptr %gep, align 8, !tbaa !13
  %i.cc = trunc nuw nsw i64 %indvars.iv to i32
  %i.cd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.bs, i32 noundef %i.bv, i32 noundef %i.bx, i32 noundef %i.bz, i32 noundef %i.cc, double noundef %i.cb) #5 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us.us.us.us.us.us, label %bb.e, !llvm.loop !15

._crit_edge.us.us.us.us.us.us.us.us.us:           ; preds = %bb.e
  %indvars.iv.next252 = add nsw i64 %indvars.iv251, 1
  %i.ce = add nuw nsw i32 %.1164188.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond254.not = icmp eq i32 %i.ce, %i.bg
  br i1 %exitcond254.not, label %._crit_edge190.split.us.us.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us.us.us, !llvm.loop !17

._crit_edge190.split.us.us.us.us.us.us.us.us.us:  ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us
  %i.cf = add nuw nsw i32 %.1166191.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %i.cg = add i32 %.1157193.us.us.us.us.us.us.us.us, %i.bk
  %exitcond255.not = icmp eq i32 %i.cf, %i.bh
  br i1 %exitcond255.not, label %._crit_edge.split.us.split.us.us.us.us.us.us.us, label %.preheader184.us.us.us.us.us.us.us.us, !llvm.loop !18

._crit_edge.split.us.split.us.us.us.us.us.us.us:  ; preds = %._crit_edge190.split.us.us.us.us.us.us.us.us.us
  %i.ch = add nuw nsw i32 %.1168202.us.us.us.us.us.us, 1 ; 2 uses
  %i.ci = add i32 %.0156205.us.us.us.us.us.us, %i.bn
  %exitcond256.not = icmp eq i32 %i.ch, %i.bi
  br i1 %exitcond256.not, label %._crit_edge.split, label %.preheader185.us.us.us.us.us.us, !llvm.loop !19

._crit_edge.split:                                ; preds = %._crit_edge.split.us.split.us.us.us.us.us.us.us, %.preheader186.lr.ph, %bb.d
  %i.cj = mul nsw i32 %i.af, %3
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %.0155236, i64 %i.ck
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257.a, 1 ; 2 uses
  %i.cm = load i32, ptr %i.b, align 8, !tbaa !8
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next258, %i.cn
  br i1 %i.co, label %bb.b, label %._crit_edge242, !llvm.loop !20

._crit_edge242:                                   ; preds = %._crit_edge.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_ReadBoxArrayData(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge220

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = icmp slt i32 %3, 1
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge.split204
  %indvars.iv235.a = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next236, %._crit_edge.split204 ] ; 3 uses
  %.0147214 = phi ptr [ %4, %.lr.ph ], [ %i.cd, %._crit_edge.split204 ] ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv235.a ; 4 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv235.a ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = load i32, ptr %i.l, align 4, !tbaa !4
  %i.p = sub nsw i32 %i.n, %i.o
  %i.q = call i32 @llvm.smax.i32(i32 %i.p, i32 -1)
  %spec.select = add nsw i32 %i.q, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = sub nsw i32 %i.s, %i.u                   ; 2 uses
  %i.w = add nuw nsw i32 %i.v, 1
  %i.x = mul nsw i32 %i.w, %spec.select
  %.inv = icmp slt i32 %i.v, 0
  %i.y = select i1 %.inv, i32 0, i32 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = sub nsw i32 %i.aa, %i.ac                ; 2 uses
  %i.ae = add nuw nsw i32 %i.ad, 1
  %i.af = mul nsw i32 %i.y, %i.ae
  %.inv172 = icmp slt i32 %i.ad, 0
  %i.ag = select i1 %.inv172, i32 0, i32 %i.af    ; 2 uses
  %i.ah = call i32 @hypre_BoxGetSize(ptr noundef %i.j, ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.ai = load i32, ptr %i.j, align 4, !tbaa !4
  %i.aj = load i32, ptr %i.l, align 4, !tbaa !4   ; 2 uses
  %i.ak = sub i32 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = load i32, ptr %i.t, align 4, !tbaa !4   ; 2 uses
  %i.ao = sub i32 %i.am, %i.an
  %i.ap = load i32, ptr %i.r, align 4, !tbaa !4
  %i.aq = sub nsw i32 %i.ap, %i.an                ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, -1                  ; 2 uses
  br i1 %i.ar, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.av = sub nsw i32 %i.at, %i.au
  %i.aw = add nuw nsw i32 %i.aq, 1
  %i.ax = mul nsw i32 %i.av, %i.aw
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ay = phi i32 [ %i.ax, %bb.c ], [ 0, %bb.b ]
  %i.az = load i32, ptr %i.m, align 4, !tbaa !4
  %i.ba = sub i32 %i.az, %i.aj                    ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, -1                  ; 2 uses
  %i.bc = add nsw i32 %i.ao, %i.ay
  %i.bd = add i32 %i.ba, 1                        ; 2 uses
  %i.be = mul nsw i32 %i.bd, %i.bc
  %i.bf = select i1 %i.bb, i32 %i.be, i32 0
  %i.bg = add i32 %i.ak, %i.bf
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !4   ; 3 uses
  %i.bj = load i32, ptr %i.g, align 4, !tbaa !4   ; 3 uses
  %.0143 = call i32 @llvm.smax.i32(i32 %i.bi, i32 %i.bh)
  %.1144 = call i32 @llvm.smax.i32(i32 %i.bj, i32 %.0143)
  %i.bk = icmp sgt i32 %.1144, 0
  br i1 %i.bk, label %.preheader178.lr.ph, label %._crit_edge.split204

.preheader178.lr.ph:                              ; preds = %bb.d
  %i.bl = select i1 %i.bb, i32 %i.bd, i32 0       ; 2 uses
  %i.bm = add nuw nsw i32 %i.aq, 1
  %i.bn = mul nsw i32 %i.bl, %i.bm
  %i.bo = select i1 %i.ar, i32 %i.bn, i32 0
  %i.bp = icmp slt i32 %i.bj, 1
  %i.bq = icmp slt i32 %i.bi, 1
  %brmerge.not248.not253 = or i1 %i.bp, %i.bq
  %i.br = icmp slt i32 %i.bh, 1
  %or.cond.not250 = or i1 %brmerge.not248.not253, %i.br
  %brmerge245 = or i1 %or.cond.not250, %i.h
  br i1 %brmerge245, label %._crit_edge.split204, label %.preheader177.us.us.us.us.preheader

.preheader177.us.us.us.us.preheader:              ; preds = %.preheader178.lr.ph
  %i.bs = sext i32 %i.ag to i64
  br label %.preheader177.us.us.us.us

.preheader177.us.us.us.us:                        ; preds = %.preheader177.us.us.us.us.preheader, %._crit_edge.split.us.split.us.us.us.us.us
  %.0148194.us.us.us.us = phi i32 [ %i.bg, %.preheader177.us.us.us.us.preheader ], [ %i.ca, %._crit_edge.split.us.split.us.us.us.us.us ] ; 2 uses
  %.1160193.us.us.us.us = phi i32 [ 0, %.preheader177.us.us.us.us.preheader ], [ %i.bz, %._crit_edge.split.us.split.us.us.us.us.us ]
  br label %.preheader176.us.us.us.us.us.us

.preheader176.us.us.us.us.us.us:                  ; preds = %._crit_edge182.split.us.us.us.us.us.us.us, %.preheader177.us.us.us.us
  %.1149184.us.us.us.us.us.us = phi i32 [ %i.by, %._crit_edge182.split.us.us.us.us.us.us.us ], [ %.0148194.us.us.us.us, %.preheader177.us.us.us.us ] ; 2 uses
  %.1158183.us.us.us.us.us.us = phi i32 [ %i.bx, %._crit_edge182.split.us.us.us.us.us.us.us ], [ 0, %.preheader177.us.us.us.us ]
  %i.bt = sext i32 %.1149184.us.us.us.us.us.us to i64
  br label %.preheader.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us.us.us.us, %.preheader176.us.us.us.us.us.us
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %._crit_edge.us.us.us.us.us.us.us ], [ %i.bt, %.preheader176.us.us.us.us.us.us ] ; 2 uses
  %.1156180.us.us.us.us.us.us.us = phi i32 [ %i.bw, %._crit_edge.us.us.us.us.us.us.us ], [ 0, %.preheader176.us.us.us.us.us.us ]
  %invariant.gep = getelementptr [8 x i8], ptr %.0147214, i64 %indvars.iv229
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.us.us.us.us.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader.us.us.us.us.us.us.us ] ; 2 uses
  %i.bu = mul nsw i64 %indvars.iv, %i.bs
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bu
  %i.bv = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef %gep) #5 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us.us.us.us, label %bb.e, !llvm.loop !21

._crit_edge.us.us.us.us.us.us.us:                 ; preds = %bb.e
  %indvars.iv.next230 = add nsw i64 %indvars.iv229, 1
  %i.bw = add nuw nsw i32 %.1156180.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond232.not = icmp eq i32 %i.bw, %i.bh
  br i1 %exitcond232.not, label %._crit_edge182.split.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us, !llvm.loop !22

._crit_edge182.split.us.us.us.us.us.us.us:        ; preds = %._crit_edge.us.us.us.us.us.us.us
  %i.bx = add nuw nsw i32 %.1158183.us.us.us.us.us.us, 1 ; 2 uses
  %i.by = add i32 %.1149184.us.us.us.us.us.us, %i.bl
  %exitcond233.not = icmp eq i32 %i.bx, %i.bi
  br i1 %exitcond233.not, label %._crit_edge.split.us.split.us.us.us.us.us, label %.preheader176.us.us.us.us.us.us, !llvm.loop !23

._crit_edge.split.us.split.us.us.us.us.us:        ; preds = %._crit_edge182.split.us.us.us.us.us.us.us
  %i.bz = add nuw nsw i32 %.1160193.us.us.us.us, 1 ; 2 uses
  %i.ca = add i32 %.0148194.us.us.us.us, %i.bo
  %exitcond234.not = icmp eq i32 %i.bz, %i.bj
  br i1 %exitcond234.not, label %._crit_edge.split204, label %.preheader177.us.us.us.us, !llvm.loop !24

._crit_edge.split204:                             ; preds = %._crit_edge.split.us.split.us.us.us.us.us, %.preheader178.lr.ph, %bb.d
  %i.cb = mul nsw i32 %i.ag, %3
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %.0147214, i64 %i.cc
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235.a, 1 ; 2 uses
  %i.ce = load i32, ptr %i.c, align 8, !tbaa !8
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp slt i64 %indvars.iv.next236, %i.cf
  br i1 %i.cg, label %bb.b, label %._crit_edge220, !llvm.loop !25

._crit_edge220:                                   ; preds = %._crit_edge.split204, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"hypre_BoxArray_struct", !10, i64 0, !5, i64 8, !5, i64 12}
!10 = !{!"p1 _ZTS16hypre_Box_struct", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
end_hunk_0
