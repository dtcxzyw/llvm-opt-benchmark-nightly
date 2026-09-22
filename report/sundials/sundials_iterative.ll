Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_iterative?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @SUNModifiedGS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.d = tail call double @N_VDotProd(ptr noundef %i.c, ptr noundef %i.c) #7 ; 2 uses
  %i.e = fcmp ugt double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call double @sqrt(double noundef %i.d) #7
  %i.g = fmul double %i.f, 1.000000e+03
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi double [ %i.g, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.i = add nsw i32 %2, -1                       ; 2 uses
  %i.j = sub nsw i32 %2, %3
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0) ; 3 uses
  %i.l = icmp sge i32 %i.k, %2                    ; 2 uses
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = zext nneg i32 %i.i to i64
  %i.n = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.r = tail call double @N_VDotProd(ptr noundef %i.p, ptr noundef %i.q) #7 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.m
  store double %i.r, ptr %i.u, align 8, !tbaa !14
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.w = fneg double %i.r
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !10
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.v, double noundef %i.w, ptr noundef %i.x, ptr noundef %i.v) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.z = tail call double @N_VDotProd(ptr noundef %i.y, ptr noundef %i.y) #7 ; 2 uses
  %i.aa = fcmp ugt double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ab = tail call double @sqrt(double noundef %i.z) #7
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.ac = phi double [ %i.ab, %bb.e ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  store double %i.ac, ptr %4, align 8, !tbaa !14
  %i.ad = fadd double %i.h, %i.ac
  %i.ae = fcmp une double %i.ad, %i.h
  %brmerge = or i1 %i.ae, %i.l
  br i1 %brmerge, label %._crit_edge92.thread, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.f
  %i.af = zext nneg i32 %i.i to i64
  %i.ag = zext nneg i32 %i.k to i64
  %wide.trip.count97 = zext nneg i32 %2 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph91, %bb.i
  %indvars.iv94 = phi i64 [ %i.ag, %.lr.ph91 ], [ %indvars.iv.next95, %bb.i ] ; 3 uses
  %.090 = phi double [ 0.000000e+00, %.lr.ph91 ], [ %.1, %bb.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv94 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.ak = tail call double @N_VDotProd(ptr noundef %i.ai, ptr noundef %i.aj) #7 ; 5 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv94
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.af ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.ap = fmul double %i.ao, 1.000000e+03         ; 2 uses
  %i.aq = fadd double %i.ak, %i.ap
  %i.ar = fcmp oeq double %i.aq, %i.ap
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = fadd double %i.ak, %i.ao
  store double %i.as, ptr %i.an, align 8, !tbaa !14
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %i.au = fneg double %i.ak
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !10
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.at, double noundef %i.au, ptr noundef %i.av, ptr noundef %i.at) #7
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %.090)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1 = phi double [ %.090, %bb.g ], [ %i.aw, %bb.h ] ; 3 uses
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %._crit_edge92, label %bb.g

._crit_edge92:                                    ; preds = %bb.i
  %i.ax = fcmp une double %.1, 0.000000e+00
  br i1 %i.ax, label %bb.j, label %._crit_edge92.thread

bb.j:                                             ; preds = %._crit_edge92
  %i.ay = load double, ptr %4, align 8, !tbaa !14 ; 2 uses
  %i.az = fneg double %.1
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double %i.az) ; 2 uses
  %i.bb = fcmp ule double %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = tail call double @sqrt(double noundef %i.ba) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bd = phi double [ 0.000000e+00, %bb.j ], [ %i.bc, %bb.k ]
  store double %i.bd, ptr %4, align 8, !tbaa !14
  br label %._crit_edge92.thread

._crit_edge92.thread:                             ; preds = %bb.f, %._crit_edge92, %bb.l
  ret i32 0
}

declare double @N_VDotProd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind uwtable
define noundef i32 @SUNClassicalGS(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %i.b = sub nsw i32 %2, %3
  %i.c = tail call i32 @llvm.smax.i32(i32 %i.b, i32 0) ; 2 uses
  %i.d = tail call i32 @llvm.smin.i32(i32 %2, i32 %3) ; 5 uses
  %i.e = add nsw i32 %i.d, 1                      ; 2 uses
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.i = zext nneg i32 %i.c to i64                ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.k = tail call i32 @N_VDotProdMulti(i32 noundef %i.e, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %5) #7 ; 0 uses
  %i.l = sext i32 %i.d to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %5, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !14 ; 2 uses
  %i.o = fcmp ugt double %i.n, 0.000000e+00
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = tail call double @sqrt(double noundef %i.n) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi double [ %i.p, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.r = icmp sgt i32 %i.d, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.s = sext i32 %i.a to i64
  %i.t = zext nneg i32 %i.d to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next.a, %bb.d ] ; 4 uses
  %indvars.iv.next.a = add nsw i64 %indvars.iv, -1 ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next.a
  %i.v = load double, ptr %i.u, align 8, !tbaa !14 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.a
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.y = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.s
  store double %i.v, ptr %i.y, align 8, !tbaa !14
  %i.z = fneg double %i.v
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  store double %i.z, ptr %i.aa, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.a
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !10
  %7 = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %7, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c
  store double 1.000000e+00, ptr %5, align 8, !tbaa !14
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  store ptr %i.ae, ptr %6, align 8, !tbaa !10
  %i.af = tail call i32 @N_VLinearCombination(i32 noundef %i.e, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %i.ae) #7 ; 0 uses
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  %i.ah = tail call double @N_VDotProd(ptr noundef %i.ag, ptr noundef %i.ag) #7
  %i.ai = fcmp ugt double %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  %i.ak = tail call double @N_VDotProd(ptr noundef %i.aj, ptr noundef %i.aj) #7
  %i.al = tail call double @sqrt(double noundef %i.ak) #7
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.am = phi double [ %i.al, %bb.e ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  store double %i.am, ptr %4, align 8, !tbaa !14
  %i.an = fmul double %i.am, 1.000000e+03
  %i.ao = fcmp olt double %i.an, %i.q
  br i1 %i.ao, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = tail call i32 @N_VDotProdMulti(i32 noundef %i.d, ptr noundef %i.ap, ptr noundef nonnull %i.j, ptr noundef nonnull %i.aq) #7 ; 0 uses
  store double 1.000000e+00, ptr %5, align 8, !tbaa !14
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  store ptr %i.as, ptr %6, align 8, !tbaa !10
  %i.at = icmp slt i32 %i.c, %2
  br i1 %i.at, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %bb.g
  %i.au = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph108, %bb.h
  %indvars.iv111 = phi i64 [ %i.i, %.lr.ph108 ], [ %indvars.iv.next112, %bb.h ] ; 3 uses
  %i.av = sub nuw nsw i64 %indvars.iv111, %i.i    ; 2 uses
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.aw ; 3 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv111
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.au ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !14
  %i.bd = fadd double %i.ay, %i.bc
  store double %i.bd, ptr %i.bb, align 8, !tbaa !14
  %i.be = load double, ptr %i.ax, align 8, !tbaa !14
  %i.bf = fneg double %i.be
  store double %i.bf, ptr %i.ax, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.aw
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !10
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge109.loopexit, label %bb.h

._crit_edge109.loopexit:                          ; preds = %bb.h
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !10
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %._crit_edge109.loopexit, %bb.g
  %i.bj = phi ptr [ %.pre, %._crit_edge109.loopexit ], [ %i.as, %bb.g ]
  %i.bk = add nsw i32 %2, 1
  %i.bl = tail call i32 @N_VLinearCombination(i32 noundef %i.bk, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %i.bj) #7 ; 0 uses
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  %i.bn = tail call double @N_VDotProd(ptr noundef %i.bm, ptr noundef %i.bm) #7
  %i.bo = fcmp ugt double %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge109
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  %i.bq = tail call double @N_VDotProd(ptr noundef %i.bp, ptr noundef %i.bp) #7
  %i.br = tail call double @sqrt(double noundef %i.bq) #7
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge109, %bb.i
  %i.bs = phi double [ %i.br, %bb.i ], [ 0.000000e+00, %._crit_edge109 ]
  store double %i.bs, ptr %4, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  ret i32 0
}

declare i32 @N_VDotProdMulti(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @SUNQRfact(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %cond = icmp eq i32 %3, 0
  br i1 %cond, label %.preheader156, label %bb.g

.preheader156:                                    ; preds = %bb.a
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader156
  %wide.trip.count174 = zext nneg i32 %0 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.f
  %indvars.iv171 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next172, %bb.f ] ; 9 uses
  %indvars.iv167 = phi i32 [ -1, %.preheader.preheader ], [ %indvars.iv.next168, %bb.f ] ; 2 uses
  %.0162 = phi i32 [ 0, %.preheader.preheader ], [ %spec.select, %bb.f ]
  %i.b = icmp samesign ugt i64 %indvars.iv171, 1
  br i1 %i.b, label %.lr.ph159, label %._crit_edge160

.lr.ph159:                                        ; preds = %.preheader
  %wide.trip.count169 = zext i32 %indvars.iv167 to i64
  %.pre177 = load ptr, ptr %1, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert178 = getelementptr inbounds nuw [8 x i8], ptr %.pre177, i64 %indvars.iv171
  %.pre179 = load double, ptr %.phi.trans.insert178, align 8, !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph159, %bb.b
  %i.c = phi double [ %.pre179, %.lr.ph159 ], [ %i.u, %bb.b ]
  %i.d = phi ptr [ %.pre177, %.lr.ph159 ], [ %i.g, %bb.b ]
  %indvars.iv164 = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next165, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv171
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next165
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv171 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %.idx183 = shl nuw nsw i64 %indvars.iv164, 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.idx183
  %i.k = fneg double %i.i
  %i.l = load <2 x double>, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.m = insertelement <2 x double> poison, double %i.i, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.k, i64 1
  %i.o = fmul <2 x double> %i.l, %i.n
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.q = insertelement <2 x double> poison, double %i.c, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.r, <2 x double> %i.p) ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  store double %i.t, ptr %i.e, align 8, !tbaa !14
  %i.u = extractelement <2 x double> %i.s, i64 1  ; 2 uses
  store double %i.u, ptr %i.h, align 8, !tbaa !14
  %exitcond170.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count169
  br i1 %exitcond170.not, label %._crit_edge160, label %bb.b

._crit_edge160:                                   ; preds = %bb.b, %.preheader
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv171
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv171 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !14 ; 4 uses
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next172
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv171
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !14 ; 5 uses
  %i.ad = fcmp oeq double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge160
  %i.ae = tail call double @llvm.fabs.f64(double %i.ac)
  %i.af = tail call double @llvm.fabs.f64(double %i.y)
  %i.ag = fcmp ult double %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = fdiv double %i.y, %i.ac                 ; 3 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double 1.000000e+00)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ai)
  %i.aj = fdiv double -1.000000e+00, %sqrt        ; 2 uses
  %i.ak = fneg double %i.aj
  %i.al = fmul double %i.ah, %i.ak
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.am = fdiv double %i.ac, %i.y                 ; 3 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double 1.000000e+00)
  %sqrt153 = tail call double @llvm.sqrt.f64(double %i.an)
  %i.ao = fdiv double 1.000000e+00, %sqrt153      ; 2 uses
  %i.ap = fneg double %i.ao
  %i.aq = fmul double %i.am, %i.ap
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge160, %bb.d, %bb.e
  %.0146 = phi double [ %i.ao, %bb.e ], [ %i.al, %bb.d ], [ 1.000000e+00, %._crit_edge160 ] ; 2 uses
  %.0144 = phi double [ %i.aq, %bb.e ], [ %i.aj, %bb.d ], [ 0.000000e+00, %._crit_edge160 ] ; 2 uses
  %.idx184 = shl nuw nsw i64 %indvars.iv171, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.idx184 ; 2 uses
  store double %.0146, ptr %i.ar, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store double %.0144, ptr %i.as, align 8, !tbaa !14
  %i.at = fneg double %i.ac
  %i.au = fmul double %.0144, %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %.0146, double %i.y, double %i.au) ; 2 uses
  store double %i.av, ptr %i.x, align 8, !tbaa !14
  %i.aw = fcmp oeq double %i.av, 0.000000e+00
  %i.ax = trunc nuw nsw i64 %indvars.iv.next172 to i32
  %spec.select = select i1 %i.aw, i32 %i.ax, i32 %.0162 ; 2 uses
end_hunk_0
