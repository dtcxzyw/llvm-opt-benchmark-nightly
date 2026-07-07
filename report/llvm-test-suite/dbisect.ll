inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"bisect: Couldn't allocate memory for wu\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @sturm(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.022 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.m, %bb.d ] ; 2 uses
  %.01721 = phi i32 [ 0, %.lr.ph.preheader ], [ %.118, %bb.d ]
  %i.b = fcmp une double %.022, 0.000000e+00
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.d = load double, ptr %i.c, align 8, !tbaa !8
  %i.e = fsub double %i.d, %4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.g = load double, ptr %i.f, align 8, !tbaa !8
  %i.h = fdiv double %i.g, %.022
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.j = load double, ptr %i.i, align 8, !tbaa !8
  %i.k = tail call double @llvm.fabs.f64(double %i.j)
  %i.l = fmul double %i.k, f0x4330000000000000
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi double [ %i.l, %bb.c ], [ %i.h, %bb.b ]
  %i.m = fsub double %i.e, %.sink                 ; 2 uses
  %i.n = fcmp olt double %i.m, 0.000000e+00
  %i.o = zext i1 %i.n to i32
  %.118 = add nuw nsw i32 %.01721, %i.o           ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.017.lcssa = phi i32 [ 0, %bb.a ], [ %.118, %bb.d ]
  ret i32 %.017.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind uwtable
define dso_local void @dbisect(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr nofree noundef captures(none) initializes((0, 8)) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, ptr nofree noundef captures(none) %9) local_unnamed_addr #2 {
bb.a:
  store double 0.000000e+00, ptr %1, align 8, !tbaa !8
  store double 0.000000e+00, ptr %2, align 8, !tbaa !8
  %i.a = add nsw i32 %3, -1
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %0, i64 %i.b
  %i.d = load double, ptr %i.c, align 8, !tbaa !8 ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b
  %i.f = load double, ptr %i.e, align 8, !tbaa !8
  %i.g = tail call double @llvm.fabs.f64(double %i.f) ; 2 uses
  %10 = tail call double @llvm.fmuladd.f64(double %i.g, double -1.010000e+00, double %i.d) ; 2 uses
  %11 = tail call double @llvm.fmuladd.f64(double %i.g, double 1.010000e+00, double %i.d) ; 2 uses
  %i.h = icmp sgt i32 %3, 1
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = add nsw i32 %3, -2
  %i.j = zext nneg i32 %i.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.j, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.0119135 = phi double [ %11, %.lr.ph.preheader ], [ %.1120, %.lr.ph ] ; 2 uses
  %.0121134 = phi double [ %10, %.lr.ph.preheader ], [ %.1122, %.lr.ph ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.l = load <2 x double>, ptr %i.k, align 8, !tbaa !8
  %i.m = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.l) ; 2 uses
  %shift = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.m, %shift
  %i.n = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.o = fmul double %i.n, 1.010000e+00           ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.q = load double, ptr %i.p, align 8, !tbaa !8 ; 2 uses
  %i.r = fadd double %i.q, %i.o                   ; 2 uses
  %i.s = fcmp ogt double %i.r, %.0119135
  %.1120 = select i1 %i.s, double %i.r, double %.0119135 ; 2 uses
  %i.t = fsub double %i.q, %i.o                   ; 2 uses
  %i.u = fcmp olt double %i.t, %.0121134
  %.1122 = select i1 %i.u, double %i.t, double %.0121134 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0121.lcssa = phi double [ %10, %bb.a ], [ %.1122, %.lr.ph ] ; 6 uses
  %.0119.lcssa = phi double [ %11, %bb.a ], [ %.1120, %.lr.ph ] ; 5 uses
  %i.v = fadd double %.0121.lcssa, %.0119.lcssa
  %i.w = fcmp ogt double %i.v, 0.000000e+00
  %i.x = fneg double %.0121.lcssa
  %i.y = select i1 %i.w, double %.0119.lcssa, double %i.x
  %i.z = fmul double %i.y, f0x3CB0000000000000    ; 2 uses
  %i.aa = fcmp ugt double %6, 0.000000e+00
  %.0 = select i1 %i.aa, double %6, double %i.z   ; 3 uses
  %i.ab = fmul double %i.z, 7.000000e+00
  %i.ac = tail call double @llvm.fmuladd.f64(double %.0, double 5.000000e-01, double %i.ab)
  store double %i.ac, ptr %7, align 8, !tbaa !8
  %i.ad = add nsw i32 %3, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = tail call noalias ptr @calloc(i64 noundef %i.ae, i64 noundef 8) #7 ; 7 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.b, label %.preheader133

.preheader133:                                    ; preds = %._crit_edge
  %.not138 = icmp slt i32 %5, %4
  br i1 %.not138, label %._crit_edge141.thread, label %.lr.ph140.preheader

._crit_edge141.thread:                            ; preds = %.preheader133
  store i32 0, ptr %8, align 4, !tbaa !4
  br label %._crit_edge155

.lr.ph140.preheader:                              ; preds = %.preheader133
  %i.ah = sext i32 %5 to i64                      ; 4 uses
  %i.ai = sext i32 %4 to i64                      ; 2 uses
  %i.aj = sub nsw i64 %i.ah, %i.ai
  %i.ak = add nsw i64 %i.aj, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check, label %.lr.ph140.preheader183, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph140.preheader
  %n.vec = and i64 %i.ak, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0121.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert178 = insertelement <2 x double> poison, double %.0119.lcssa, i64 0
  %broadcast.splat179 = shufflevector <2 x double> %broadcast.splatinsert178, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = sub nsw i64 %i.ah, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = sub i64 %i.ah, %index                   ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %9, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -24
  store <2 x double> %broadcast.splat179, ptr %i.ao, align 8, !tbaa !8
  store <2 x double> %broadcast.splat179, ptr %i.ap, align 8, !tbaa !8
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.am ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -24
  store <2 x double> %broadcast.splat, ptr %i.ar, align 8, !tbaa !8
  store <2 x double> %broadcast.splat, ptr %i.as, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.preheader.lr.ph, label %.lr.ph140.preheader183

.lr.ph140.preheader183:                           ; preds = %.lr.ph140.preheader, %middle.block
  %indvars.iv157.ph = phi i64 [ %i.ah, %.lr.ph140.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph140

bb.b:                                             ; preds = %._crit_edge
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.av = tail call i64 @fwrite(ptr nonnull @.str, i64 39, i64 1, ptr %i.au) #8 ; 0 uses
  tail call void @exit(i32 noundef 1) #9
  unreachable

.lr.ph140:                                        ; preds = %.lr.ph140.preheader183, %.lr.ph140
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %.lr.ph140 ], [ %indvars.iv157.ph, %.lr.ph140.preheader183 ] ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %9, i64 %indvars.iv157
  store double %.0119.lcssa, ptr %i.aw, align 8, !tbaa !8
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.af, i64 %indvars.iv157
  store double %.0121.lcssa, ptr %i.ax, align 8, !tbaa !8
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, -1
  %.not.not = icmp sgt i64 %indvars.iv157, %i.ai
  br i1 %.not.not, label %.lr.ph140, label %.preheader.lr.ph, !llvm.loop !19

.preheader.lr.ph:                                 ; preds = %.lr.ph140, %middle.block
  store i32 0, ptr %8, align 4, !tbaa !4
  %i.ay = icmp sgt i32 %3, 0
  %wide.trip.count.i = zext nneg i32 %3 to i64
  %i.az = sext i32 %4 to i64                      ; 3 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.az
  %i.bb = sext i32 %5 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge168
  %.promoted = phi i32 [ 0, %.preheader.lr.ph ], [ %.promoted167, %._crit_edge168 ] ; 2 uses
  %indvars.iv160 = phi i64 [ %i.bb, %.preheader.lr.ph ], [ %indvars.iv.next161, %._crit_edge168 ] ; 5 uses
  %.0110154 = phi double [ %.0119.lcssa, %.preheader.lr.ph ], [ %.2.lcssa, %._crit_edge168 ] ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next163 = add nsw i64 %indvars.iv162, -1
  %.not132.not = icmp sgt i64 %indvars.iv162, %i.az
  br i1 %.not132.not, label %bb.d, label %bb.e, !llvm.loop !20

bb.d:                                             ; preds = %.preheader, %bb.c
  %indvars.iv162 = phi i64 [ %indvars.iv160, %.preheader ], [ %indvars.iv.next163, %bb.c ] ; 3 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.af, i64 %indvars.iv162
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !8 ; 2 uses
  %i.be = fcmp olt double %.0121.lcssa, %i.bd
  br i1 %i.be, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0111 = phi double [ %.0121.lcssa, %bb.c ], [ %i.bd, %bb.d ] ; 4 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %9, i64 %indvars.iv160 ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !8 ; 2 uses
  %i.bh = fcmp ogt double %.0110154, %i.bg
  %.1 = select i1 %i.bh, double %i.bg, double %.0110154 ; 5 uses
  %i.bi = fsub double %.1, %.0111
  %i.bj = tail call double @llvm.fabs.f64(double %.0111)
  %i.bk = tail call double @llvm.fabs.f64(double %.1)
  %i.bl = fadd double %i.bj, %i.bk
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double f0x3CC0000000000000, double %.0)
  %i.bn = fcmp ogt double %i.bi, %i.bm
  %i.bo = fadd double %.0111, %.1                 ; 2 uses
  br i1 %i.bn, label %.lr.ph148, label %._crit_edge168

.lr.ph148:                                        ; preds = %bb.e, %bb.m
  %i.bp = phi i32 [ %i.bq, %bb.m ], [ %.promoted, %bb.e ]
  %.0114146.in = phi double [ %i.cn, %bb.m ], [ %i.bo, %bb.e ]
  %.2145 = phi double [ %.3, %bb.m ], [ %.1, %bb.e ] ; 3 uses
  %.1112144 = phi double [ %.2113, %bb.m ], [ %.0111, %bb.e ]
  %.0114146 = fmul double %.0114146.in, 5.000000e-01 ; 9 uses
  %i.bq = add nsw i32 %i.bp, 1                    ; 3 uses
  br i1 %i.ay, label %.lr.ph.i, label %sturm.exit

.lr.ph.i:                                         ; preds = %.lr.ph148, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %.lr.ph148 ] ; 4 uses
  %.022.i = phi double [ %i.cc, %bb.h ], [ 1.000000e+00, %.lr.ph148 ] ; 2 uses
  %.01721.i = phi i32 [ %.118.i, %bb.h ], [ 0, %.lr.ph148 ]
  %i.br = fcmp une double %.022.i, 0.000000e+00
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !8
  %i.bu = fsub double %i.bt, %.0114146
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !8
  %i.bx = fdiv double %i.bw, %.022.i
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.bz = load double, ptr %i.by, align 8, !tbaa !8
  %i.ca = tail call double @llvm.fabs.f64(double %i.bz)
  %i.cb = fmul double %i.ca, f0x4330000000000000
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi double [ %i.cb, %bb.g ], [ %i.bx, %bb.f ]
  %i.cc = fsub double %i.bu, %.sink.i             ; 2 uses
  %i.cd = fcmp olt double %i.cc, 0.000000e+00
  %i.ce = zext i1 %i.cd to i32
  %.118.i = add nuw nsw i32 %.01721.i, %i.ce      ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sturm.exit, label %.lr.ph.i, !llvm.loop !10

sturm.exit:                                       ; preds = %bb.h, %.lr.ph148
  %.017.lcssa.i = phi i32 [ 0, %.lr.ph148 ], [ %.118.i, %bb.h ] ; 2 uses
  %i.cf = sext i32 %.017.lcssa.i to i64           ; 3 uses
  %i.cg = icmp sgt i64 %indvars.iv160, %i.cf
  br i1 %i.cg, label %bb.i, label %bb.m

bb.i:                                             ; preds = %sturm.exit
  %i.ch = icmp slt i32 %.017.lcssa.i, %4
  br i1 %i.ch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %.0114146, ptr %i.ba, align 8, !tbaa !8
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ci = getelementptr [8 x i8], ptr %i.af, i64 %i.cf
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  store double %.0114146, ptr %i.cj, align 8, !tbaa !8
  %i.ck = getelementptr inbounds [8 x i8], ptr %9, i64 %i.cf ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !8
  %i.cm = fcmp ogt double %i.cl, %.0114146
  br i1 %i.cm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %.0114146, ptr %i.ck, align 8, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %sturm.exit, %bb.j, %bb.l, %bb.k
  %.2113 = phi double [ %.0114146, %bb.j ], [ %.0114146, %bb.l ], [ %.0114146, %bb.k ], [ %.1112144, %sturm.exit ] ; 4 uses
  %.3 = phi double [ %.2145, %bb.j ], [ %.2145, %bb.l ], [ %.2145, %bb.k ], [ %.0114146, %sturm.exit ] ; 5 uses
  %i.cn = fadd double %.2113, %.3                 ; 2 uses
  %i.co = fsub double %.3, %.2113
  %i.cp = tail call double @llvm.fabs.f64(double %.2113)
  %i.cq = tail call double @llvm.fabs.f64(double %.3)
  %i.cr = fadd double %i.cp, %i.cq
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double f0x3CC0000000000000, double %.0)
  %i.ct = fcmp ogt double %i.co, %i.cs
  br i1 %i.ct, label %.lr.ph148, label %._crit_edge149, !llvm.loop !21

._crit_edge149:                                   ; preds = %bb.m
  store i32 %i.bq, ptr %8, align 4, !tbaa !4
  br label %._crit_edge168

._crit_edge168:                                   ; preds = %bb.e, %._crit_edge149
  %.pre-phi = phi double [ %i.cn, %._crit_edge149 ], [ %i.bo, %bb.e ]
  %.promoted167 = phi i32 [ %i.bq, %._crit_edge149 ], [ %.promoted, %bb.e ]
  %.2.lcssa = phi double [ %.3, %._crit_edge149 ], [ %.1, %bb.e ]
  %i.cu = fmul double %.pre-phi, 5.000000e-01
  store double %i.cu, ptr %i.bf, align 8, !tbaa !8
  %indvars.iv.next161 = add nsw i64 %indvars.iv160, -1
  %.not131.not = icmp sgt i64 %indvars.iv160, %i.az
  br i1 %.not131.not, label %.preheader, label %._crit_edge155, !llvm.loop !22

._crit_edge155:                                   ; preds = %._crit_edge168, %._crit_edge141.thread
  tail call void @free(ptr noundef %i.af) #10
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { cold }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = distinct !{!19, !11, !15, !14}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
end_hunk_0
