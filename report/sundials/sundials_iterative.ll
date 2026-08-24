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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
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
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.r = tail call double @N_VDotProd(ptr noundef %i.p, ptr noundef %i.q) #7 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.m
  store double %i.r, ptr %i.u, align 8, !tbaa !13
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.w = fneg double %i.r
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !8
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.v, double noundef %i.w, ptr noundef %i.x, ptr noundef %i.v) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.z = tail call double @N_VDotProd(ptr noundef %i.y, ptr noundef %i.y) #7 ; 2 uses
  %i.aa = fcmp ugt double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ab = tail call double @sqrt(double noundef %i.z) #7
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.ac = phi double [ %i.ab, %bb.e ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  store double %i.ac, ptr %4, align 8, !tbaa !13
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
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.ak = tail call double @N_VDotProd(ptr noundef %i.ai, ptr noundef %i.aj) #7 ; 5 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv94
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.af ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !13 ; 2 uses
  %i.ap = fmul double %i.ao, 1.000000e+03         ; 2 uses
  %i.aq = fadd double %i.ak, %i.ap
  %i.ar = fcmp oeq double %i.aq, %i.ap
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = fadd double %i.ak, %i.ao
  store double %i.as, ptr %i.an, align 8, !tbaa !13
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.au = fneg double %i.ak
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !8
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
  %i.ay = load double, ptr %4, align 8, !tbaa !13 ; 2 uses
  %i.az = fneg double %.1
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double %i.az) ; 2 uses
  %i.bb = fcmp ule double %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = tail call double @sqrt(double noundef %i.ba) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bd = phi double [ 0.000000e+00, %bb.j ], [ %i.bc, %bb.k ]
  store double %i.bd, ptr %4, align 8, !tbaa !13
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = zext nneg i32 %i.c to i64                ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.k = tail call i32 @N_VDotProdMulti(i32 noundef %i.e, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %5) #7 ; 0 uses
  %i.l = sext i32 %i.d to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %5, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !13 ; 2 uses
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
  %7 = zext nneg i32 %i.a to i64
  %i.s = zext nneg i32 %i.d to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next
  %i.u = load double, ptr %i.t, align 8, !tbaa !13 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %7
  store double %i.u, ptr %i.x, align 8, !tbaa !13
  %i.y = fneg double %i.u
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  store double %i.y, ptr %i.z, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !8
  %i.ad = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ad, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c
  store double 1.000000e+00, ptr %5, align 8, !tbaa !13
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !8   ; 2 uses
  store ptr %i.ae, ptr %6, align 8, !tbaa !8
  %i.af = tail call i32 @N_VLinearCombination(i32 noundef %i.e, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %i.ae) #7 ; 0 uses
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !8   ; 2 uses
  %i.ah = tail call double @N_VDotProd(ptr noundef %i.ag, ptr noundef %i.ag) #7
  %i.ai = fcmp ugt double %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !8   ; 2 uses
  %i.ak = tail call double @N_VDotProd(ptr noundef %i.aj, ptr noundef %i.aj) #7
  %i.al = tail call double @sqrt(double noundef %i.ak) #7
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.am = phi double [ %i.al, %bb.e ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  store double %i.am, ptr %4, align 8, !tbaa !13
  %i.an = fmul double %i.am, 1.000000e+03
  %i.ao = fcmp olt double %i.an, %i.q
  br i1 %i.ao, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = tail call i32 @N_VDotProdMulti(i32 noundef %i.d, ptr noundef %i.ap, ptr noundef nonnull %i.j, ptr noundef nonnull %i.aq) #7 ; 0 uses
  store double 1.000000e+00, ptr %5, align 8, !tbaa !13
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !8   ; 2 uses
  store ptr %i.as, ptr %6, align 8, !tbaa !8
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
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv111
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.au ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !13
  %i.bd = fadd double %i.ay, %i.bc
  store double %i.bd, ptr %i.bb, align 8, !tbaa !13
  %i.be = load double, ptr %i.ax, align 8, !tbaa !13
  %i.bf = fneg double %i.be
  store double %i.bf, ptr %i.ax, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.aw
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !8
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge109.loopexit, label %bb.h

._crit_edge109.loopexit:                          ; preds = %bb.h
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !8
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %._crit_edge109.loopexit, %bb.g
  %i.bj = phi ptr [ %.pre, %._crit_edge109.loopexit ], [ %i.as, %bb.g ]
  %i.bk = add nsw i32 %2, 1
  %i.bl = tail call i32 @N_VLinearCombination(i32 noundef %i.bk, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %i.bj) #7 ; 0 uses
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !8   ; 2 uses
  %i.bn = tail call double @N_VDotProd(ptr noundef %i.bm, ptr noundef %i.bm) #7
  %i.bo = fcmp ugt double %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge109
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !8   ; 2 uses
  %i.bq = tail call double @N_VDotProd(ptr noundef %i.bp, ptr noundef %i.bp) #7
  %i.br = tail call double @sqrt(double noundef %i.bq) #7
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge109, %bb.i
  %i.bs = phi double [ %i.br, %bb.i ], [ 0.000000e+00, %._crit_edge109 ]
  store double %i.bs, ptr %4, align 8, !tbaa !13
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
  br i1 %cond, label %.preheader155, label %bb.g

.preheader155:                                    ; preds = %bb.a
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader155
  %wide.trip.count173 = zext nneg i32 %0 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.f
  %indvars.iv170 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next171, %bb.f ] ; 9 uses
  %indvars.iv166 = phi i32 [ -1, %.preheader.preheader ], [ %indvars.iv.next167, %bb.f ] ; 2 uses
  %.0161 = phi i32 [ 0, %.preheader.preheader ], [ %.1, %bb.f ]
  %i.b = icmp samesign ugt i64 %indvars.iv170, 1
  br i1 %i.b, label %.lr.ph158, label %._crit_edge159

.lr.ph158:                                        ; preds = %.preheader
  %wide.trip.count168 = zext i32 %indvars.iv166 to i64
  %.pre176 = load ptr, ptr %1, align 8, !tbaa !11 ; 2 uses
  %.phi.trans.insert177 = getelementptr inbounds nuw [8 x i8], ptr %.pre176, i64 %indvars.iv170
  %.pre178 = load double, ptr %.phi.trans.insert177, align 8, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph158, %bb.b
  %i.c = phi double [ %.pre178, %.lr.ph158 ], [ %i.u, %bb.b ]
  %i.d = phi ptr [ %.pre176, %.lr.ph158 ], [ %i.g, %bb.b ]
  %indvars.iv163 = phi i64 [ 0, %.lr.ph158 ], [ %indvars.iv.next164, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv170
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next164
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv170 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !13 ; 2 uses
  %.idx182.a = shl nuw nsw i64 %indvars.iv163, 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.idx182.a
  %i.k = fneg double %i.i
  %i.l = load <2 x double>, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.m = insertelement <2 x double> poison, double %i.i, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.k, i64 1
  %i.o = fmul <2 x double> %i.l, %i.n
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.q = insertelement <2 x double> poison, double %i.c, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.r, <2 x double> %i.p) ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  store double %i.t, ptr %i.e, align 8, !tbaa !13
  %i.u = extractelement <2 x double> %i.s, i64 1  ; 2 uses
  store double %i.u, ptr %i.h, align 8, !tbaa !13
  %exitcond169.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count168
  br i1 %exitcond169.not, label %._crit_edge159, label %bb.b

._crit_edge159:                                   ; preds = %bb.b, %.preheader
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv170
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv170 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !13 ; 4 uses
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next171
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv170
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !13 ; 5 uses
  %i.ad = fcmp oeq double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge159
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
  %sqrt152 = tail call double @llvm.sqrt.f64(double %i.an)
  %i.ao = fdiv double 1.000000e+00, %sqrt152      ; 2 uses
  %i.ap = fneg double %i.ao
  %i.aq = fmul double %i.am, %i.ap
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge159, %bb.d, %bb.e
  %.0146 = phi double [ %i.ao, %bb.e ], [ %i.al, %bb.d ], [ 1.000000e+00, %._crit_edge159 ] ; 2 uses
  %.0144 = phi double [ %i.aq, %bb.e ], [ %i.aj, %bb.d ], [ 0.000000e+00, %._crit_edge159 ] ; 2 uses
  %.idx183 = shl nuw nsw i64 %indvars.iv170, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.idx183 ; 2 uses
  store double %.0146, ptr %i.ar, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store double %.0144, ptr %i.as, align 8, !tbaa !13
  %i.at = fneg double %i.ac
  %i.au = fmul double %.0144, %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %.0146, double %i.y, double %i.au) ; 2 uses
  store double %i.av, ptr %i.x, align 8, !tbaa !13
  %i.aw = fcmp oeq double %i.av, 0.000000e+00
  %i.ax = trunc nuw nsw i64 %indvars.iv.next171 to i32
  %.1 = select i1 %i.aw, i32 %i.ax, i32 %.0161    ; 2 uses
  %indvars.iv.next167 = add nsw i32 %indvars.iv166, 1
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count173
  br i1 %exitcond174.not, label %.loopexit, label %.preheader

bb.g:                                             ; preds = %bb.a
  %i.ay = add i32 %0, -1                          ; 3 uses
  %i.az = icmp sgt i32 %0, 1
  br i1 %i.az, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %wide.trip.count = zext nneg i32 %i.ay to i64   ; 4 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !11    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %wide.trip.count
  %.pre175 = load double, ptr %.phi.trans.insert, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %i.ba = phi double [ %.pre175, %.lr.ph ], [ %i.bs, %bb.h ]
  %i.bb = phi ptr [ %.pre, %.lr.ph ], [ %i.be, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %wide.trip.count
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !11 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %wide.trip.count ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !13 ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.bi = fneg double %i.bg
  %i.bj = load <2 x double>, ptr %i.bh, align 8, !tbaa !13 ; 2 uses
  %i.bk = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bi, i64 1
  %i.bm = fmul <2 x double> %i.bj, %i.bl
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bp, <2 x double> %i.bn) ; 2 uses
  %i.br = extractelement <2 x double> %i.bq, i64 0
  store double %i.br, ptr %i.bc, align 8, !tbaa !13
  %i.bs = extractelement <2 x double> %i.bq, i64 1 ; 2 uses
  store double %i.bs, ptr %i.bf, align 8, !tbaa !13
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %4 = sext i32 %i.ay to i64                      ; 3 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %4
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !11
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %4 ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !13 ; 4 uses
  %i.bx = sext i32 %0 to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !11
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %4
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !13 ; 5 uses
  %i.cc = fcmp oeq double %i.cb, 0.000000e+00
  br i1 %i.cc, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.cd = tail call double @llvm.fabs.f64(double %i.cb)
  %i.ce = tail call double @llvm.fabs.f64(double %i.bw)
  %i.cf = fcmp ult double %i.cd, %i.ce
  br i1 %i.cf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = fdiv double %i.bw, %i.cb                ; 3 uses
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cg, double 1.000000e+00)
  %sqrt153 = tail call double @llvm.sqrt.f64(double %i.ch)
  %i.ci = fdiv double -1.000000e+00, %sqrt153     ; 2 uses
  %i.cj = fneg double %i.ci
  %i.ck = fmul double %i.cg, %i.cj
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cl = fdiv double %i.cb, %i.bw                ; 3 uses
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cl, double 1.000000e+00)
  %sqrt154 = tail call double @llvm.sqrt.f64(double %i.cm)
  %i.cn = fdiv double 1.000000e+00, %sqrt154      ; 2 uses
  %i.co = fneg double %i.cn
  %i.cp = fmul double %i.cl, %i.co
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j, %bb.k
  %.1147 = phi double [ %i.cn, %bb.k ], [ %i.ck, %bb.j ], [ 1.000000e+00, %._crit_edge ] ; 2 uses
  %.1145 = phi double [ %i.cp, %bb.k ], [ %i.ci, %bb.j ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.cq = shl nsw i32 %i.ay, 1
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cr ; 2 uses
  store double %.1147, ptr %i.cs, align 8, !tbaa !13
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  store double %.1145, ptr %i.ct, align 8, !tbaa !13
  %i.cu = fneg double %i.cb
  %i.cv = fmul double %.1145, %i.cu
  %i.cw = tail call double @llvm.fmuladd.f64(double %.1147, double %i.bw, double %i.cv) ; 2 uses
  store double %i.cw, ptr %i.bv, align 8, !tbaa !13
  %i.cx = fcmp oeq double %i.cw, 0.000000e+00
  br i1 %i.cx, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.preheader155, %bb.l, %bb.m
  %.2 = phi i32 [ 0, %bb.l ], [ %0, %bb.m ], [ 0, %.preheader155 ], [ %.1, %bb.f ]
  ret i32 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, -2147483648) i32 @SUNQRsol(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  %.pre = load double, ptr %3, align 8, !tbaa !13
  br label %.lr.ph

.lr.ph56.preheader:                               ; preds = %.lr.ph
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %indvars.iv.next7080 = add nsw i64 %i.b, -1     ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next7080
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next7080
  %i.f = load double, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph56.preheader
  %i.h = add nsw i32 %0, -1
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = add nsw i64 %i.i, -1
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.k = phi double [ %.pre, %.lr.ph.preheader ], [ %i.y, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.o = load double, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %i.p = fneg double %i.o
  %i.q = load <2 x double>, ptr %i.l, align 8, !tbaa !13 ; 2 uses
  %i.r = insertelement <2 x double> poison, double %i.o, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.p, i64 1
  %i.t = fmul <2 x double> %i.q, %i.s
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.v = insertelement <2 x double> poison, double %i.k, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.w, <2 x double> %i.u) ; 2 uses
  store <2 x double> %i.x, ptr %i.m, align 8, !tbaa !13
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %i.y = extractelement <2 x double> %i.x, i64 1
  br i1 %exitcond.not, label %.lr.ph56.preheader, label %.lr.ph

.loopexit.unr-lcssa:                              ; preds = %.lr.ph52
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph52.epil.preheader

.lr.ph52.epil.preheader:                          ; preds = %.loopexit.unr-lcssa, %.lr.ph52.preheader
  %indvars.iv60.epil.init = phi i64 [ 0, %.lr.ph52.preheader ], [ %indvars.iv.next61.1, %.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i64 %indvars.iv6782 to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.z = load double, ptr %i.ao, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv60.epil.init
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next7083
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv60.epil.init ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13
  %i.ag = fneg double %i.z
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ad, double %i.af)
  store double %i.ah, ptr %i.ae, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.unr-lcssa, %.lr.ph52.epil.preheader
  %indvars.iv.next68 = add nsw i64 %indvars.iv6782, -1
  %indvars.iv.next70 = add nsw i64 %indvars.iv.next7083, -1 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next70
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next70
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %i.am = fcmp oeq double %i.al, 0.000000e+00
  %indvar.next = add i64 %indvar, 1
  br i1 %i.am, label %.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph84, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph84 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %i.an = phi double [ %i.f, %.lr.ph84 ], [ %i.al, %.loopexit ]
  %indvars.iv.next7083 = phi i64 [ %indvars.iv.next7080, %.lr.ph84 ], [ %indvars.iv.next70, %.loopexit ] ; 7 uses
  %indvars.iv6782 = phi i64 [ %i.i, %.lr.ph84 ], [ %indvars.iv.next68, %.loopexit ] ; 4 uses
  %indvars.iv6981 = phi i64 [ %i.b, %.lr.ph84 ], [ %indvars.iv.next7083, %.loopexit ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next7083 ; 5 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13
  %i.aq = fdiv double %i.ap, %i.an
  store double %i.aq, ptr %i.ao, align 8, !tbaa !13
  %i.ar = icmp samesign ugt i64 %indvars.iv6981, 1
  br i1 %i.ar, label %.lr.ph52.preheader, label %._crit_edge

.lr.ph52.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %indvars.iv6782, 1
  %i.as = icmp eq i64 %indvar, %i.j
  br i1 %i.as, label %.lr.ph52.epil.preheader, label %.lr.ph52.preheader.new

.lr.ph52.preheader.new:                           ; preds = %.lr.ph52.preheader
  %unroll_iter = and i64 %indvars.iv6782, -2
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52, %.lr.ph52.preheader.new
  %indvars.iv60 = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %indvars.iv.next61.1, %.lr.ph52 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %niter.next.1, %.lr.ph52 ]
  %i.at = load double, ptr %i.ao, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv60
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next7083
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv60 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !13
  %i.ba = fneg double %i.at
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ax, double %i.az)
  store double %i.bb, ptr %i.ay, align 8, !tbaa !13
  %indvars.iv.next61 = or disjoint i64 %indvars.iv60, 1 ; 2 uses
  %i.bc = load double, ptr %i.ao, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next61
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !11
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next7083
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next61 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !13
  %i.bj = fneg double %i.bc
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bg, double %i.bi)
  store double %i.bk, ptr %i.bh, align 8, !tbaa !13
  %indvars.iv.next61.1 = add nuw nsw i64 %indvars.iv60, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.unr-lcssa, label %.lr.ph52

.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge: ; preds = %.loopexit
  %i.bl = trunc nuw nsw i64 %indvars.iv.next7083 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph56.preheader, %.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %0, %.lr.ph56.preheader ], [ %i.bl, %.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef i32 @SUNQRAdd_MGS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !15
end_hunk_0
