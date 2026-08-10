loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c_b29 = internal global double 1.000000e+00, align 8
@c_b30 = internal global double 0.000000e+00, align 8
@c_b33 = internal global double -1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dlatm5_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr nofree noundef readonly captures(none) %19, ptr nofree noundef captures(none) %20, ptr nofree noundef captures(none) %21) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !8      ; 12 uses
  %narrow = xor i32 %i.a, -1
  %i.b = sext i32 %narrow to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %3, i64 %i.b ; 26 uses
  %i.d = load i32, ptr %6, align 4, !tbaa !8      ; 16 uses
  %narrow597 = xor i32 %i.d, -1
  %i.e = sext i32 %narrow597 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %5, i64 %i.e ; 33 uses
  %i.g = load i32, ptr %10, align 4, !tbaa !8     ; 5 uses
  %narrow598 = xor i32 %i.g, -1                   ; 2 uses
  %i.h = sext i32 %narrow598 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %9, i64 %i.h ; 21 uses
  %i.j = load i32, ptr %12, align 4, !tbaa !8     ; 5 uses
  %narrow599 = xor i32 %i.j, -1
  %i.k = sext i32 %narrow599 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %11, i64 %i.k ; 14 uses
  %i.m = load i32, ptr %16, align 4, !tbaa !8     ; 5 uses
  %narrow595 = xor i32 %i.m, -1
  %i.n = sext i32 %narrow595 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %15, i64 %i.n ; 4 uses
  %i.p = load i32, ptr %18, align 4, !tbaa !8     ; 5 uses
  %narrow596 = xor i32 %i.p, -1
  %i.q = sext i32 %narrow596 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %17, i64 %i.q ; 4 uses
  %i.s = load i32, ptr %0, align 4, !tbaa !8      ; 2 uses
  switch i32 %i.s, label %bb.at [
    i32 1, label %bb.b
    i32 2, label %bb.w
    i32 3, label %bb.w
    i32 4, label %bb.as
  ]

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %1, align 4, !tbaa !8      ; 5 uses
  %.not592684 = icmp slt i32 %i.t, 1              ; 2 uses
  br i1 %.not592684, label %._crit_edge686.split, label %.preheader612.preheader

.preheader612.preheader:                          ; preds = %bb.b
  %i.u = sext i32 %i.a to i64                     ; 4 uses
  %i.v = sext i32 %i.g to i64                     ; 4 uses
  %i.w = add nuw i32 %i.t, 1                      ; 2 uses
  %wide.trip.count799 = zext i32 %i.w to i64
  %indvars.iv796903 = add nsw i64 %i.u, 1
  %indvars.iv796904 = add nsw i64 %i.v, 1
  %i.x = zext nneg i32 %i.t to i64                ; 2 uses
  %xtraiter1063 = and i64 %i.x, 1
  %i.y = icmp eq i32 %i.w, 2
  %unroll_iter1066 = and i64 %i.x, 2147483646
  %lcmp.mod1064.not = icmp eq i64 %xtraiter1063, 0
  %lcmp.mod1065 = trunc i32 %i.t to i1
  br label %.preheader612

.preheader612:                                    ; preds = %.preheader612.preheader, %._crit_edge683
  %indvars.iv796 = phi i64 [ 1, %.preheader612.preheader ], [ %indvars.iv.next797, %._crit_edge683 ] ; 13 uses
  %invariant.gep947 = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv796 ; 3 uses
  %invariant.gep949 = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv796 ; 3 uses
  %invariant.gep951 = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv796 ; 3 uses
  %invariant.gep953 = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv796 ; 3 uses
  %i.z = mul i64 %indvars.iv796, %indvars.iv796903
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.z ; 3 uses
  %i.ab = mul i64 %indvars.iv796, %indvars.iv796904
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ab ; 3 uses
  br i1 %i.y, label %.epil.preheader1062, label %.preheader612.new

.preheader612.new:                                ; preds = %.preheader612, %bb.l
  %indvars.iv791 = phi i64 [ %indvars.iv.next792.1, %bb.l ], [ 1, %.preheader612 ] ; 7 uses
  %niter1067 = phi i64 [ %niter1067.next.1, %bb.l ], [ 0, %.preheader612 ]
  %i.ad = icmp eq i64 %indvars.iv796, %indvars.iv791
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader612.new
  store double 1.000000e+00, ptr %i.aa, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.ac, align 8, !tbaa !9
  br label %bb.g

bb.d:                                             ; preds = %.preheader612.new
  %i.ae = add nsw i64 %indvars.iv791, -1
  %i.af = icmp eq i64 %indvars.iv796, %i.ae
  %i.ag = mul nsw i64 %indvars.iv791, %i.u        ; 2 uses
  %i.ah = mul nsw i64 %indvars.iv791, %i.v        ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %gep952 = getelementptr [8 x i8], ptr %invariant.gep951, i64 %i.ag
  store double -1.000000e+00, ptr %gep952, align 8, !tbaa !9
  %gep954 = getelementptr [8 x i8], ptr %invariant.gep953, i64 %i.ah
  store double 0.000000e+00, ptr %gep954, align 8, !tbaa !9
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %gep948 = getelementptr [8 x i8], ptr %invariant.gep947, i64 %i.ag
  store double 0.000000e+00, ptr %gep948, align 8, !tbaa !9
  %gep950 = getelementptr [8 x i8], ptr %invariant.gep949, i64 %i.ah
  store double 0.000000e+00, ptr %gep950, align 8, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %indvars.iv.next792 = add nuw nsw i64 %indvars.iv791, 1 ; 3 uses
  %i.ai = icmp eq i64 %indvars.iv796, %indvars.iv.next792
  br i1 %i.ai, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp eq i64 %indvars.iv796, %indvars.iv791
  %i.ak = mul nsw i64 %indvars.iv.next792, %i.u   ; 2 uses
  %i.al = mul nsw i64 %indvars.iv.next792, %i.v   ; 2 uses
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %gep948.1 = getelementptr [8 x i8], ptr %invariant.gep947, i64 %i.ak
  store double 0.000000e+00, ptr %gep948.1, align 8, !tbaa !9
  %gep950.1 = getelementptr [8 x i8], ptr %invariant.gep949, i64 %i.al
  store double 0.000000e+00, ptr %gep950.1, align 8, !tbaa !9
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %gep952.1 = getelementptr [8 x i8], ptr %invariant.gep951, i64 %i.ak
  store double -1.000000e+00, ptr %gep952.1, align 8, !tbaa !9
  %gep954.1 = getelementptr [8 x i8], ptr %invariant.gep953, i64 %i.al
  store double 0.000000e+00, ptr %gep954.1, align 8, !tbaa !9
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  store double 1.000000e+00, ptr %i.aa, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.ac, align 8, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %indvars.iv.next792.1 = add nuw nsw i64 %indvars.iv791, 2 ; 2 uses
  %niter1067.next.1 = add i64 %niter1067, 2       ; 2 uses
  %niter1067.ncmp.1 = icmp eq i64 %niter1067.next.1, %unroll_iter1066
  br i1 %niter1067.ncmp.1, label %._crit_edge683.unr-lcssa, label %.preheader612.new, !llvm.loop !11

._crit_edge683.unr-lcssa:                         ; preds = %bb.l
  br i1 %lcmp.mod1064.not, label %._crit_edge683, label %.epil.preheader1062

.epil.preheader1062:                              ; preds = %._crit_edge683.unr-lcssa, %.preheader612
  %indvars.iv791.epil.init = phi i64 [ 1, %.preheader612 ], [ %indvars.iv.next792.1, %._crit_edge683.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod1065)
  %i.am = icmp eq i64 %indvars.iv796, %indvars.iv791.epil.init
  br i1 %i.am, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.epil.preheader1062
  %i.an = add nsw i64 %indvars.iv791.epil.init, -1
  %i.ao = icmp eq i64 %indvars.iv796, %i.an
  %i.ap = mul nsw i64 %indvars.iv791.epil.init, %i.u ; 2 uses
  %i.aq = mul nsw i64 %indvars.iv791.epil.init, %i.v ; 2 uses
  br i1 %i.ao, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %gep948.epil = getelementptr [8 x i8], ptr %invariant.gep947, i64 %i.ap
  store double 0.000000e+00, ptr %gep948.epil, align 8, !tbaa !9
  %gep950.epil = getelementptr [8 x i8], ptr %invariant.gep949, i64 %i.aq
  store double 0.000000e+00, ptr %gep950.epil, align 8, !tbaa !9
  br label %._crit_edge683

bb.o:                                             ; preds = %bb.m
  %gep952.epil = getelementptr [8 x i8], ptr %invariant.gep951, i64 %i.ap
  store double -1.000000e+00, ptr %gep952.epil, align 8, !tbaa !9
  %gep954.epil = getelementptr [8 x i8], ptr %invariant.gep953, i64 %i.aq
  store double 0.000000e+00, ptr %gep954.epil, align 8, !tbaa !9
  br label %._crit_edge683

bb.p:                                             ; preds = %.epil.preheader1062
  store double 1.000000e+00, ptr %i.aa, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.ac, align 8, !tbaa !9
  br label %._crit_edge683

._crit_edge683:                                   ; preds = %bb.n, %bb.o, %bb.p, %._crit_edge683.unr-lcssa
  %indvars.iv.next797 = add nuw nsw i64 %indvars.iv796, 1 ; 2 uses
  %exitcond800.not = icmp eq i64 %indvars.iv.next797, %wide.trip.count799
  br i1 %exitcond800.not, label %._crit_edge686.split, label %.preheader612, !llvm.loop !13

._crit_edge686.split:                             ; preds = %._crit_edge683, %bb.b
  %i.ar = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %.not593691 = icmp slt i32 %i.ar, 1
  br i1 %.not593691, label %.preheader609, label %.preheader611.preheader

.preheader611.preheader:                          ; preds = %._crit_edge686.split
  %i.as = sext i32 %i.d to i64                    ; 2 uses
  %i.at = sext i32 %i.j to i64                    ; 2 uses
  %i.au = add nuw i32 %i.ar, 1
  %wide.trip.count809 = zext i32 %i.au to i64     ; 2 uses
  %indvars.iv806905 = add nsw i64 %i.as, 1
  %indvars.iv806906 = add nsw i64 %i.at, 1
  br label %.preheader611

.preheader611:                                    ; preds = %.preheader611.preheader, %._crit_edge690
  %indvars.iv806 = phi i64 [ 1, %.preheader611.preheader ], [ %indvars.iv.next807, %._crit_edge690 ] ; 9 uses
  %invariant.gep955 = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv806
  %invariant.gep957 = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv806
  %invariant.gep959 = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv806
  %invariant.gep961 = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv806
  %i.av = mul i64 %indvars.iv806, %indvars.iv806905
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.av
  %i.ax = mul i64 %indvars.iv806, %indvars.iv806906
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ax
  br label %bb.q

.preheader609:                                    ; preds = %._crit_edge690, %._crit_edge686.split
  br i1 %.not592684, label %.loopexit, label %.lr.ph700.preheader

.lr.ph700.preheader:                              ; preds = %.preheader609
  %i.az = sext i32 %i.m to i64                    ; 3 uses
  %i.ba = sext i32 %i.p to i64                    ; 3 uses
  %i.bb = add nuw i32 %i.t, 1
  %wide.trip.count819 = zext i32 %i.bb to i64
  br label %.lr.ph700

bb.q:                                             ; preds = %.preheader611, %bb.v
  %indvars.iv801 = phi i64 [ 1, %.preheader611 ], [ %indvars.iv.next802, %bb.v ] ; 5 uses
  %i.bc = icmp eq i64 %indvars.iv806, %indvars.iv801
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bd = load double, ptr %19, align 8, !tbaa !9
  %i.be = fsub double 1.000000e+00, %i.bd
  store double %i.be, ptr %i.aw, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.ay, align 8, !tbaa !9
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bf = add nsw i64 %indvars.iv801, -1
  %i.bg = icmp eq i64 %indvars.iv806, %i.bf
  %i.bh = mul nsw i64 %indvars.iv801, %i.as       ; 2 uses
  %i.bi = mul nsw i64 %indvars.iv801, %i.at       ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %gep960 = getelementptr [8 x i8], ptr %invariant.gep959, i64 %i.bh
  store double 1.000000e+00, ptr %gep960, align 8, !tbaa !9
  %gep962 = getelementptr [8 x i8], ptr %invariant.gep961, i64 %i.bi
  store double 0.000000e+00, ptr %gep962, align 8, !tbaa !9
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %gep956 = getelementptr [8 x i8], ptr %invariant.gep955, i64 %i.bh
  store double 0.000000e+00, ptr %gep956, align 8, !tbaa !9
  %gep958 = getelementptr [8 x i8], ptr %invariant.gep957, i64 %i.bi
  store double 0.000000e+00, ptr %gep958, align 8, !tbaa !9
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.t
  %indvars.iv.next802 = add nuw nsw i64 %indvars.iv801, 1 ; 2 uses
  %exitcond805.not = icmp eq i64 %indvars.iv.next802, %wide.trip.count809
  br i1 %exitcond805.not, label %._crit_edge690, label %bb.q, !llvm.loop !14

._crit_edge690:                                   ; preds = %bb.v
  %indvars.iv.next807 = add nuw nsw i64 %indvars.iv806, 1 ; 2 uses
  %exitcond810.not = icmp eq i64 %indvars.iv.next807, %wide.trip.count809
  br i1 %exitcond810.not, label %.preheader609, label %.preheader611, !llvm.loop !15

.lr.ph700:                                        ; preds = %.lr.ph700.preheader, %._crit_edge697
  %indvars.iv816 = phi i64 [ 1, %.lr.ph700.preheader ], [ %indvars.iv.next817, %._crit_edge697 ] ; 4 uses
  %i.bj = load i32, ptr %2, align 4, !tbaa !8     ; 4 uses
  %.not600693 = icmp slt i32 %i.bj, 1
  br i1 %.not600693, label %._crit_edge697, label %.lr.ph696.preheader

.lr.ph696.preheader:                              ; preds = %.lr.ph700
  %i.bk = trunc nuw nsw i64 %indvars.iv816 to i32 ; 3 uses
  %invariant.gep963 = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv816 ; 3 uses
  %invariant.gep965 = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv816 ; 3 uses
  %i.bl = zext nneg i32 %i.bj to i64              ; 2 uses
  %xtraiter1068 = and i64 %i.bl, 1
  %i.bm = icmp eq i32 %i.bj, 1
  br i1 %i.bm, label %.lr.ph696.epil.preheader, label %.lr.ph696.preheader.new

.lr.ph696.preheader.new:                          ; preds = %.lr.ph696.preheader
  %unroll_iter1071 = and i64 %i.bl, 2147483646
  br label %.lr.ph696

.lr.ph696:                                        ; preds = %.lr.ph696, %.lr.ph696.preheader.new
  %indvars.iv811 = phi i64 [ 1, %.lr.ph696.preheader.new ], [ %indvars.iv.next812.1, %.lr.ph696 ] ; 5 uses
  %niter1072 = phi i64 [ 0, %.lr.ph696.preheader.new ], [ %niter1072.next.1, %.lr.ph696 ]
  %i.bn = trunc nuw nsw i64 %indvars.iv811 to i32
  %i.bo = udiv i32 %i.bk, %i.bn
  %i.bp = uitofp nneg i32 %i.bo to double
  %i.bq = tail call double @sin(double noundef %i.bp) #6
  %i.br = fsub double 5.000000e-01, %i.bq
  %i.bs = fmul double %i.br, 2.000000e+01         ; 2 uses
  %i.bt = mul nsw i64 %indvars.iv811, %i.az
  %gep964 = getelementptr [8 x i8], ptr %invariant.gep963, i64 %i.bt
  store double %i.bs, ptr %gep964, align 8, !tbaa !9
  %i.bu = mul nsw i64 %indvars.iv811, %i.ba
  %gep966 = getelementptr [8 x i8], ptr %invariant.gep965, i64 %i.bu
  store double %i.bs, ptr %gep966, align 8, !tbaa !9
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1 ; 3 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv.next812 to i32
  %i.bw = udiv i32 %i.bk, %i.bv
  %i.bx = uitofp nneg i32 %i.bw to double
  %i.by = tail call double @sin(double noundef %i.bx) #6
  %i.bz = fsub double 5.000000e-01, %i.by
  %i.ca = fmul double %i.bz, 2.000000e+01         ; 2 uses
  %i.cb = mul nsw i64 %indvars.iv.next812, %i.az
  %gep964.1 = getelementptr [8 x i8], ptr %invariant.gep963, i64 %i.cb
  store double %i.ca, ptr %gep964.1, align 8, !tbaa !9
  %i.cc = mul nsw i64 %indvars.iv.next812, %i.ba
  %gep966.1 = getelementptr [8 x i8], ptr %invariant.gep965, i64 %i.cc
  store double %i.ca, ptr %gep966.1, align 8, !tbaa !9
  %indvars.iv.next812.1 = add nuw nsw i64 %indvars.iv811, 2 ; 2 uses
  %niter1072.next.1 = add nuw i64 %niter1072, 2   ; 2 uses
  %niter1072.ncmp.1 = icmp eq i64 %niter1072.next.1, %unroll_iter1071
  br i1 %niter1072.ncmp.1, label %._crit_edge697.loopexit.unr-lcssa, label %.lr.ph696, !llvm.loop !16

._crit_edge697.loopexit.unr-lcssa:                ; preds = %.lr.ph696
  %lcmp.mod1069.not = icmp eq i64 %xtraiter1068, 0
  br i1 %lcmp.mod1069.not, label %._crit_edge697, label %.lr.ph696.epil.preheader

.lr.ph696.epil.preheader:                         ; preds = %._crit_edge697.loopexit.unr-lcssa, %.lr.ph696.preheader
  %indvars.iv811.epil.init = phi i64 [ 1, %.lr.ph696.preheader ], [ %indvars.iv.next812.1, %._crit_edge697.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1070 = trunc i32 %i.bj to i1
  tail call void @llvm.assume(i1 %lcmp.mod1070)
  %i.cd = trunc nuw nsw i64 %indvars.iv811.epil.init to i32
  %i.ce = udiv i32 %i.bk, %i.cd
  %i.cf = uitofp nneg i32 %i.ce to double
  %i.cg = tail call double @sin(double noundef %i.cf) #6
  %i.ch = fsub double 5.000000e-01, %i.cg
  %i.ci = fmul double %i.ch, 2.000000e+01         ; 2 uses
  %i.cj = mul nsw i64 %indvars.iv811.epil.init, %i.az
  %gep964.epil = getelementptr [8 x i8], ptr %invariant.gep963, i64 %i.cj
  store double %i.ci, ptr %gep964.epil, align 8, !tbaa !9
  %i.ck = mul nsw i64 %indvars.iv811.epil.init, %i.ba
  %gep966.epil = getelementptr [8 x i8], ptr %invariant.gep965, i64 %i.ck
  store double %i.ci, ptr %gep966.epil, align 8, !tbaa !9
  br label %._crit_edge697

._crit_edge697:                                   ; preds = %.lr.ph696.epil.preheader, %._crit_edge697.loopexit.unr-lcssa, %.lr.ph700
  %indvars.iv.next817 = add nuw nsw i64 %indvars.iv816, 1 ; 2 uses
  %exitcond820.not = icmp eq i64 %indvars.iv.next817, %wide.trip.count819
  br i1 %exitcond820.not, label %.loopexit, label %.lr.ph700, !llvm.loop !17

bb.w:                                             ; preds = %bb.a, %bb.a
  %i.cl = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %.not583646 = icmp slt i32 %i.cl, 1
  br i1 %.not583646, label %._crit_edge650, label %.lr.ph649.preheader

.lr.ph649.preheader:                              ; preds = %bb.w
  %i.cm = sext i32 %i.a to i64                    ; 6 uses
  %i.cn = sext i32 %i.g to i64                    ; 3 uses
  %i.co = add nuw i32 %i.cl, 1
  %wide.trip.count763 = zext i32 %i.co to i64
  br label %.lr.ph649

.lr.ph649:                                        ; preds = %.lr.ph649.preheader, %._crit_edge645
  %indvars.iv760 = phi i64 [ 1, %.lr.ph649.preheader ], [ %indvars.iv.next761, %._crit_edge645 ] ; 13 uses
  %i.cp = load i32, ptr %1, align 4, !tbaa !8     ; 4 uses
  %.not590641 = icmp slt i32 %i.cp, 1
  br i1 %.not590641, label %._crit_edge645, label %.lr.ph644

.lr.ph644:                                        ; preds = %.lr.ph649
  %i.cq = trunc nuw nsw i64 %indvars.iv760 to i32
  %i.cr = uitofp nneg i32 %i.cq to double         ; 3 uses
  %invariant.gep927 = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv760 ; 3 uses
  %invariant.gep931 = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv760 ; 3 uses
  %i.cs = zext nneg i32 %i.cp to i64              ; 2 uses
  %xtraiter1037 = and i64 %i.cs, 1
  %i.ct = icmp eq i32 %i.cp, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph644.new

.lr.ph644.new:                                    ; preds = %.lr.ph644
  %unroll_iter1040 = and i64 %i.cs, 2147483646
  %invariant.gep929.sink = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv760
  %invariant.gep929.sink.1 = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv760
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph644.new
  %indvars.iv755 = phi i64 [ 1, %.lr.ph644.new ], [ %indvars.iv.next756.1, %bb.ad ] ; 7 uses
  %niter1041 = phi i64 [ 0, %.lr.ph644.new ], [ %niter1041.next.1, %bb.ad ]
  %.not591 = icmp samesign ugt i64 %indvars.iv760, %indvars.iv755
  br i1 %.not591, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = tail call double @sin(double noundef %i.cr) #6
  %i.cv = fsub double 5.000000e-01, %i.cu
  %i.cw = fmul double %i.cv, 2.000000e+00
  %i.cx = mul nsw i64 %indvars.iv755, %i.cm
  %gep928 = getelementptr [8 x i8], ptr %invariant.gep927, i64 %i.cx
  store double %i.cw, ptr %gep928, align 8, !tbaa !9
  %i.cy = mul nuw nsw i64 %indvars.iv755, %indvars.iv760
  %i.cz = trunc nsw i64 %i.cy to i32
  %i.da = uitofp nneg i32 %i.cz to double
  %i.db = tail call double @sin(double noundef %i.da) #6
  %i.dc = fsub double 5.000000e-01, %i.db
  %i.dd = fmul double %i.dc, 2.000000e+00
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.de = mul nsw i64 %indvars.iv755, %i.cm
  %gep932 = getelementptr [8 x i8], ptr %invariant.gep931, i64 %i.de
  store double 0.000000e+00, ptr %gep932, align 8, !tbaa !9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.sink = phi double [ %i.dd, %bb.y ], [ 0.000000e+00, %bb.z ]
  %i.df = mul nsw i64 %indvars.iv755, %i.cn
  %gep930 = getelementptr [8 x i8], ptr %invariant.gep929.sink, i64 %i.df
  store double %.sink, ptr %gep930, align 8, !tbaa !9
  %indvars.iv.next756 = add nuw nsw i64 %indvars.iv755, 1 ; 5 uses
  %.not591.1 = icmp samesign ugt i64 %indvars.iv760, %indvars.iv.next756
  br i1 %.not591.1, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dg = tail call double @sin(double noundef %i.cr) #6
  %i.dh = fsub double 5.000000e-01, %i.dg
  %i.di = fmul double %i.dh, 2.000000e+00
  %i.dj = mul nsw i64 %indvars.iv.next756, %i.cm
  %gep928.1 = getelementptr [8 x i8], ptr %invariant.gep927, i64 %i.dj
  store double %i.di, ptr %gep928.1, align 8, !tbaa !9
  %i.dk = mul nuw nsw i64 %indvars.iv.next756, %indvars.iv760
  %i.dl = trunc nsw i64 %i.dk to i32
  %i.dm = uitofp nneg i32 %i.dl to double
  %i.dn = tail call double @sin(double noundef %i.dm) #6
  %i.do = fsub double 5.000000e-01, %i.dn
  %i.dp = fmul double %i.do, 2.000000e+00
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dq = mul nsw i64 %indvars.iv.next756, %i.cm
  %gep932.1 = getelementptr [8 x i8], ptr %invariant.gep931, i64 %i.dq
  store double 0.000000e+00, ptr %gep932.1, align 8, !tbaa !9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink.1 = phi double [ %i.dp, %bb.ab ], [ 0.000000e+00, %bb.ac ]
  %i.dr = mul nsw i64 %indvars.iv.next756, %i.cn
  %gep930.1 = getelementptr [8 x i8], ptr %invariant.gep929.sink.1, i64 %i.dr
  store double %.sink.1, ptr %gep930.1, align 8, !tbaa !9
  %indvars.iv.next756.1 = add nuw nsw i64 %indvars.iv755, 2 ; 2 uses
  %niter1041.next.1 = add i64 %niter1041, 2       ; 2 uses
  %niter1041.ncmp.1 = icmp eq i64 %niter1041.next.1, %unroll_iter1040
  br i1 %niter1041.ncmp.1, label %._crit_edge645.loopexit.unr-lcssa, label %bb.x, !llvm.loop !18

._crit_edge645.loopexit.unr-lcssa:                ; preds = %bb.ad
  %lcmp.mod1038.not = icmp eq i64 %xtraiter1037, 0
  br i1 %lcmp.mod1038.not, label %._crit_edge645, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge645.loopexit.unr-lcssa, %.lr.ph644
  %indvars.iv755.epil.init = phi i64 [ 1, %.lr.ph644 ], [ %indvars.iv.next756.1, %._crit_edge645.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod1039 = trunc i32 %i.cp to i1
  tail call void @llvm.assume(i1 %lcmp.mod1039)
  %.not591.epil = icmp samesign ugt i64 %indvars.iv760, %indvars.iv755.epil.init
  br i1 %.not591.epil, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.epil.preheader
  %i.ds = tail call double @sin(double noundef %i.cr) #6
  %i.dt = fsub double 5.000000e-01, %i.ds
  %i.du = fmul double %i.dt, 2.000000e+00
  %i.dv = mul nsw i64 %indvars.iv755.epil.init, %i.cm
  %gep928.epil = getelementptr [8 x i8], ptr %invariant.gep927, i64 %i.dv
  store double %i.du, ptr %gep928.epil, align 8, !tbaa !9
  %i.dw = mul nuw nsw i64 %indvars.iv755.epil.init, %indvars.iv760
  %i.dx = trunc nsw i64 %i.dw to i32
  %i.dy = uitofp nneg i32 %i.dx to double
  %i.dz = tail call double @sin(double noundef %i.dy) #6
  %i.ea = fsub double 5.000000e-01, %i.dz
  %i.eb = fmul double %i.ea, 2.000000e+00
  br label %._crit_edge645.loopexit.epilog-lcssa

bb.af:                                            ; preds = %.epil.preheader
  %i.ec = mul nsw i64 %indvars.iv755.epil.init, %i.cm
  %gep932.epil = getelementptr [8 x i8], ptr %invariant.gep931, i64 %i.ec
  store double 0.000000e+00, ptr %gep932.epil, align 8, !tbaa !9
  br label %._crit_edge645.loopexit.epilog-lcssa

._crit_edge645.loopexit.epilog-lcssa:             ; preds = %bb.af, %bb.ae
  %.sink.epil = phi double [ %i.eb, %bb.ae ], [ 0.000000e+00, %bb.af ]
  %invariant.gep929.sink.epil = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv760
  %i.ed = mul nsw i64 %indvars.iv755.epil.init, %i.cn
  %gep930.epil = getelementptr [8 x i8], ptr %invariant.gep929.sink.epil, i64 %i.ed
  store double %.sink.epil, ptr %gep930.epil, align 8, !tbaa !9
  br label %._crit_edge645

._crit_edge645:                                   ; preds = %._crit_edge645.loopexit.epilog-lcssa, %._crit_edge645.loopexit.unr-lcssa, %.lr.ph649
  %indvars.iv.next761 = add nuw nsw i64 %indvars.iv760, 1 ; 2 uses
  %exitcond764.not = icmp eq i64 %indvars.iv.next761, %wide.trip.count763
  br i1 %exitcond764.not, label %._crit_edge650, label %.lr.ph649, !llvm.loop !19

._crit_edge650:                                   ; preds = %._crit_edge645, %bb.w
  %i.ee = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %.not584656 = icmp slt i32 %i.ee, 1
  br i1 %.not584656, label %._crit_edge660, label %.lr.ph659.preheader

.lr.ph659.preheader:                              ; preds = %._crit_edge650
  %i.ef = sext i32 %i.d to i64                    ; 6 uses
  %i.eg = sext i32 %i.j to i64                    ; 3 uses
  %i.eh = add nuw i32 %i.ee, 1
  %wide.trip.count773 = zext i32 %i.eh to i64
  br label %.lr.ph659

.lr.ph659:                                        ; preds = %.lr.ph659.preheader, %._crit_edge655
  %indvars.iv770 = phi i64 [ 1, %.lr.ph659.preheader ], [ %indvars.iv.next771, %._crit_edge655 ] ; 12 uses
  %i.ei = load i32, ptr %2, align 4, !tbaa !8     ; 4 uses
  %.not588651 = icmp slt i32 %i.ei, 1
  br i1 %.not588651, label %._crit_edge655, label %.lr.ph654.preheader

.lr.ph654.preheader:                              ; preds = %.lr.ph659
  %invariant.gep935 = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv770 ; 3 uses
  %invariant.gep939 = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv770 ; 3 uses
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %xtraiter1042 = and i64 %i.ej, 1
  %i.ek = icmp eq i32 %i.ei, 1
  br i1 %i.ek, label %.lr.ph654.epil.preheader, label %.lr.ph654.preheader.new

.lr.ph654.preheader.new:                          ; preds = %.lr.ph654.preheader
  %unroll_iter1045 = and i64 %i.ej, 2147483646
  %invariant.gep937.sink = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv770
  %invariant.gep937.sink.1 = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv770
  br label %.lr.ph654

.lr.ph654:                                        ; preds = %bb.ak, %.lr.ph654.preheader.new
  %indvars.iv765 = phi i64 [ 1, %.lr.ph654.preheader.new ], [ %indvars.iv.next766.1, %bb.ak ] ; 8 uses
  %niter1046 = phi i64 [ 0, %.lr.ph654.preheader.new ], [ %niter1046.next.1, %bb.ak ]
  %.not589 = icmp samesign ugt i64 %indvars.iv770, %indvars.iv765
  br i1 %.not589, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph654
  %i.el = add nuw nsw i64 %indvars.iv765, %indvars.iv770
  %i.em = trunc nsw i64 %i.el to i32
  %i.en = uitofp nneg i32 %i.em to double
  %i.eo = tail call double @sin(double noundef %i.en) #6
  %i.ep = fsub double 5.000000e-01, %i.eo
  %i.eq = fmul double %i.ep, 2.000000e+00
  %i.er = mul nsw i64 %indvars.iv765, %i.ef
  %gep936 = getelementptr [8 x i8], ptr %invariant.gep935, i64 %i.er
  store double %i.eq, ptr %gep936, align 8, !tbaa !9
  %i.es = trunc nuw nsw i64 %indvars.iv765 to i32
  %i.et = uitofp nneg i32 %i.es to double
  %i.eu = tail call double @sin(double noundef %i.et) #6
  %i.ev = fsub double 5.000000e-01, %i.eu
  %i.ew = fmul double %i.ev, 2.000000e+00
  br label %.lr.ph654.1

bb.ah:                                            ; preds = %.lr.ph654
  %i.ex = mul nsw i64 %indvars.iv765, %i.ef
  %gep940 = getelementptr [8 x i8], ptr %invariant.gep939, i64 %i.ex
  store double 0.000000e+00, ptr %gep940, align 8, !tbaa !9
  br label %.lr.ph654.1

.lr.ph654.1:                                      ; preds = %bb.ag, %bb.ah
  %.sink972 = phi double [ %i.ew, %bb.ag ], [ 0.000000e+00, %bb.ah ]
  %i.ey = mul nsw i64 %indvars.iv765, %i.eg
  %gep938 = getelementptr [8 x i8], ptr %invariant.gep937.sink, i64 %i.ey
  store double %.sink972, ptr %gep938, align 8, !tbaa !9
  %indvars.iv.next766 = add nuw nsw i64 %indvars.iv765, 1 ; 6 uses
  %.not589.1 = icmp samesign ugt i64 %indvars.iv770, %indvars.iv.next766
  br i1 %.not589.1, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph654.1
  %i.ez = add nuw nsw i64 %indvars.iv.next766, %indvars.iv770
  %i.fa = trunc nsw i64 %i.ez to i32
  %i.fb = uitofp nneg i32 %i.fa to double
  %i.fc = tail call double @sin(double noundef %i.fb) #6
  %i.fd = fsub double 5.000000e-01, %i.fc
  %i.fe = fmul double %i.fd, 2.000000e+00
  %i.ff = mul nsw i64 %indvars.iv.next766, %i.ef
  %gep936.1 = getelementptr [8 x i8], ptr %invariant.gep935, i64 %i.ff
  store double %i.fe, ptr %gep936.1, align 8, !tbaa !9
  %i.fg = trunc nuw nsw i64 %indvars.iv.next766 to i32
  %i.fh = uitofp nneg i32 %i.fg to double
  %i.fi = tail call double @sin(double noundef %i.fh) #6
  %i.fj = fsub double 5.000000e-01, %i.fi
  %i.fk = fmul double %i.fj, 2.000000e+00
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph654.1
  %i.fl = mul nsw i64 %indvars.iv.next766, %i.ef
  %gep940.1 = getelementptr [8 x i8], ptr %invariant.gep939, i64 %i.fl
  store double 0.000000e+00, ptr %gep940.1, align 8, !tbaa !9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sink972.1 = phi double [ %i.fk, %bb.ai ], [ 0.000000e+00, %bb.aj ]
  %i.fm = mul nsw i64 %indvars.iv.next766, %i.eg
  %gep938.1 = getelementptr [8 x i8], ptr %invariant.gep937.sink.1, i64 %i.fm
  store double %.sink972.1, ptr %gep938.1, align 8, !tbaa !9
  %indvars.iv.next766.1 = add nuw nsw i64 %indvars.iv765, 2 ; 2 uses
  %niter1046.next.1 = add i64 %niter1046, 2       ; 2 uses
  %niter1046.ncmp.1 = icmp eq i64 %niter1046.next.1, %unroll_iter1045
  br i1 %niter1046.ncmp.1, label %._crit_edge655.loopexit.unr-lcssa, label %.lr.ph654, !llvm.loop !20

._crit_edge655.loopexit.unr-lcssa:                ; preds = %bb.ak
  %lcmp.mod1043.not = icmp eq i64 %xtraiter1042, 0
  br i1 %lcmp.mod1043.not, label %._crit_edge655, label %.lr.ph654.epil.preheader

.lr.ph654.epil.preheader:                         ; preds = %._crit_edge655.loopexit.unr-lcssa, %.lr.ph654.preheader
  %indvars.iv765.epil.init = phi i64 [ 1, %.lr.ph654.preheader ], [ %indvars.iv.next766.1, %._crit_edge655.loopexit.unr-lcssa ] ; 6 uses
  %lcmp.mod1044 = trunc i32 %i.ei to i1
  tail call void @llvm.assume(i1 %lcmp.mod1044)
  %.not589.epil = icmp samesign ugt i64 %indvars.iv770, %indvars.iv765.epil.init
  br i1 %.not589.epil, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph654.epil.preheader
  %i.fn = add nuw nsw i64 %indvars.iv765.epil.init, %indvars.iv770
  %i.fo = trunc nsw i64 %i.fn to i32
  %i.fp = uitofp nneg i32 %i.fo to double
  %i.fq = tail call double @sin(double noundef %i.fp) #6
  %i.fr = fsub double 5.000000e-01, %i.fq
  %i.fs = fmul double %i.fr, 2.000000e+00
  %i.ft = mul nsw i64 %indvars.iv765.epil.init, %i.ef
  %gep936.epil = getelementptr [8 x i8], ptr %invariant.gep935, i64 %i.ft
  store double %i.fs, ptr %gep936.epil, align 8, !tbaa !9
  %i.fu = trunc nuw nsw i64 %indvars.iv765.epil.init to i32
  %i.fv = uitofp nneg i32 %i.fu to double
  %i.fw = tail call double @sin(double noundef %i.fv) #6
  %i.fx = fsub double 5.000000e-01, %i.fw
  %i.fy = fmul double %i.fx, 2.000000e+00
  br label %._crit_edge655.loopexit.epilog-lcssa

bb.am:                                            ; preds = %.lr.ph654.epil.preheader
  %i.fz = mul nsw i64 %indvars.iv765.epil.init, %i.ef
  %gep940.epil = getelementptr [8 x i8], ptr %invariant.gep939, i64 %i.fz
  store double 0.000000e+00, ptr %gep940.epil, align 8, !tbaa !9
  br label %._crit_edge655.loopexit.epilog-lcssa

._crit_edge655.loopexit.epilog-lcssa:             ; preds = %bb.am, %bb.al
  %.sink972.epil = phi double [ %i.fy, %bb.al ], [ 0.000000e+00, %bb.am ]
  %invariant.gep937.sink.epil = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv770
  %i.ga = mul nsw i64 %indvars.iv765.epil.init, %i.eg
  %gep938.epil = getelementptr [8 x i8], ptr %invariant.gep937.sink.epil, i64 %i.ga
  store double %.sink972.epil, ptr %gep938.epil, align 8, !tbaa !9
  br label %._crit_edge655

._crit_edge655:                                   ; preds = %._crit_edge655.loopexit.epilog-lcssa, %._crit_edge655.loopexit.unr-lcssa, %.lr.ph659
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, 1 ; 2 uses
  %exitcond774.not = icmp eq i64 %indvars.iv.next771, %wide.trip.count773
  br i1 %exitcond774.not, label %._crit_edge660, label %.lr.ph659, !llvm.loop !21

._crit_edge660:                                   ; preds = %._crit_edge655, %._crit_edge650
  %i.gb = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %.not585666 = icmp slt i32 %i.gb, 1
  br i1 %.not585666, label %._crit_edge670, label %.lr.ph669.preheader

.lr.ph669.preheader:                              ; preds = %._crit_edge660
  %i.gc = sext i32 %i.m to i64                    ; 3 uses
  %i.gd = sext i32 %i.p to i64                    ; 3 uses
  %i.ge = add nuw i32 %i.gb, 1
  %wide.trip.count783 = zext i32 %i.ge to i64
  br label %.lr.ph669

.lr.ph669:                                        ; preds = %.lr.ph669.preheader, %._crit_edge665
  %indvars.iv780 = phi i64 [ 1, %.lr.ph669.preheader ], [ %indvars.iv.next781, %._crit_edge665 ] ; 9 uses
  %i.gf = load i32, ptr %2, align 4, !tbaa !8     ; 4 uses
  %.not587661 = icmp slt i32 %i.gf, 1
  br i1 %.not587661, label %._crit_edge665, label %.lr.ph664.preheader

.lr.ph664.preheader:                              ; preds = %.lr.ph669
  %invariant.gep943 = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv780 ; 3 uses
  %invariant.gep945 = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv780 ; 3 uses
  %i.gg = zext nneg i32 %i.gf to i64              ; 2 uses
  %xtraiter1047 = and i64 %i.gg, 1
  %i.gh = icmp eq i32 %i.gf, 1
  br i1 %i.gh, label %.lr.ph664.epil.preheader, label %.lr.ph664.preheader.new

.lr.ph664.preheader.new:                          ; preds = %.lr.ph664.preheader
  %unroll_iter1050 = and i64 %i.gg, 2147483646
  br label %.lr.ph664

.lr.ph664:                                        ; preds = %.lr.ph664, %.lr.ph664.preheader.new
  %indvars.iv775 = phi i64 [ 1, %.lr.ph664.preheader.new ], [ %indvars.iv.next776.1, %.lr.ph664 ] ; 6 uses
  %niter1051 = phi i64 [ 0, %.lr.ph664.preheader.new ], [ %niter1051.next.1, %.lr.ph664 ]
  %i.gi = mul nuw nsw i64 %indvars.iv775, %indvars.iv780
  %i.gj = trunc nuw nsw i64 %i.gi to i32
  %i.gk = uitofp nneg i32 %i.gj to double
  %i.gl = tail call double @sin(double noundef %i.gk) #6
  %i.gm = fsub double 5.000000e-01, %i.gl
  %i.gn = fmul double %i.gm, 2.000000e+01
  %i.go = mul nsw i64 %indvars.iv775, %i.gc
  %gep944 = getelementptr [8 x i8], ptr %invariant.gep943, i64 %i.go
  store double %i.gn, ptr %gep944, align 8, !tbaa !9
  %i.gp = add nuw nsw i64 %indvars.iv775, %indvars.iv780
  %i.gq = trunc nsw i64 %i.gp to i32
  %i.gr = uitofp nneg i32 %i.gq to double
  %i.gs = tail call double @sin(double noundef %i.gr) #6
  %i.gt = fsub double 5.000000e-01, %i.gs
  %i.gu = fmul double %i.gt, 2.000000e+01
  %i.gv = mul nsw i64 %indvars.iv775, %i.gd
  %gep946 = getelementptr [8 x i8], ptr %invariant.gep945, i64 %i.gv
  store double %i.gu, ptr %gep946, align 8, !tbaa !9
  %indvars.iv.next776 = add nuw nsw i64 %indvars.iv775, 1 ; 4 uses
  %i.gw = mul nuw nsw i64 %indvars.iv.next776, %indvars.iv780
  %i.gx = trunc nuw nsw i64 %i.gw to i32
  %i.gy = uitofp nneg i32 %i.gx to double
  %i.gz = tail call double @sin(double noundef %i.gy) #6
  %i.ha = fsub double 5.000000e-01, %i.gz
  %i.hb = fmul double %i.ha, 2.000000e+01
  %i.hc = mul nsw i64 %indvars.iv.next776, %i.gc
  %gep944.1 = getelementptr [8 x i8], ptr %invariant.gep943, i64 %i.hc
  store double %i.hb, ptr %gep944.1, align 8, !tbaa !9
  %i.hd = add nuw nsw i64 %indvars.iv.next776, %indvars.iv780
  %i.he = trunc nsw i64 %i.hd to i32
  %i.hf = uitofp nneg i32 %i.he to double
  %i.hg = tail call double @sin(double noundef %i.hf) #6
  %i.hh = fsub double 5.000000e-01, %i.hg
  %i.hi = fmul double %i.hh, 2.000000e+01
  %i.hj = mul nsw i64 %indvars.iv.next776, %i.gd
  %gep946.1 = getelementptr [8 x i8], ptr %invariant.gep945, i64 %i.hj
  store double %i.hi, ptr %gep946.1, align 8, !tbaa !9
  %indvars.iv.next776.1 = add nuw nsw i64 %indvars.iv775, 2 ; 2 uses
  %niter1051.next.1 = add nuw i64 %niter1051, 2   ; 2 uses
  %niter1051.ncmp.1 = icmp eq i64 %niter1051.next.1, %unroll_iter1050
  br i1 %niter1051.ncmp.1, label %._crit_edge665.loopexit.unr-lcssa, label %.lr.ph664, !llvm.loop !22

._crit_edge665.loopexit.unr-lcssa:                ; preds = %.lr.ph664
  %lcmp.mod1048.not = icmp eq i64 %xtraiter1047, 0
  br i1 %lcmp.mod1048.not, label %._crit_edge665, label %.lr.ph664.epil.preheader

.lr.ph664.epil.preheader:                         ; preds = %._crit_edge665.loopexit.unr-lcssa, %.lr.ph664.preheader
  %indvars.iv775.epil.init = phi i64 [ 1, %.lr.ph664.preheader ], [ %indvars.iv.next776.1, %._crit_edge665.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1049 = trunc i32 %i.gf to i1
  tail call void @llvm.assume(i1 %lcmp.mod1049)
  %i.hk = mul nuw nsw i64 %indvars.iv775.epil.init, %indvars.iv780
  %i.hl = trunc nuw nsw i64 %i.hk to i32
  %i.hm = uitofp nneg i32 %i.hl to double
  %i.hn = tail call double @sin(double noundef %i.hm) #6
  %i.ho = fsub double 5.000000e-01, %i.hn
  %i.hp = fmul double %i.ho, 2.000000e+01
  %i.hq = mul nsw i64 %indvars.iv775.epil.init, %i.gc
  %gep944.epil = getelementptr [8 x i8], ptr %invariant.gep943, i64 %i.hq
  store double %i.hp, ptr %gep944.epil, align 8, !tbaa !9
  %i.hr = add nuw nsw i64 %indvars.iv775.epil.init, %indvars.iv780
  %i.hs = trunc nsw i64 %i.hr to i32
  %i.ht = uitofp nneg i32 %i.hs to double
  %i.hu = tail call double @sin(double noundef %i.ht) #6
  %i.hv = fsub double 5.000000e-01, %i.hu
  %i.hw = fmul double %i.hv, 2.000000e+01
  %i.hx = mul nsw i64 %indvars.iv775.epil.init, %i.gd
  %gep946.epil = getelementptr [8 x i8], ptr %invariant.gep945, i64 %i.hx
  store double %i.hw, ptr %gep946.epil, align 8, !tbaa !9
  br label %._crit_edge665

._crit_edge665:                                   ; preds = %.lr.ph664.epil.preheader, %._crit_edge665.loopexit.unr-lcssa, %.lr.ph669
  %indvars.iv.next781 = add nuw nsw i64 %indvars.iv780, 1 ; 2 uses
  %exitcond784.not = icmp eq i64 %indvars.iv.next781, %wide.trip.count783
  br i1 %exitcond784.not, label %._crit_edge670, label %.lr.ph669, !llvm.loop !23

._crit_edge670:                                   ; preds = %._crit_edge665, %._crit_edge660
  %i.hy = load i32, ptr %0, align 4, !tbaa !8
  %i.hz = icmp eq i32 %i.hy, 3
  br i1 %i.hz, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %._crit_edge670
  %i.ia = load i32, ptr %20, align 4, !tbaa !8    ; 2 uses
  %i.ib = icmp slt i32 %i.ia, 2
  br i1 %i.ib, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 2, ptr %20, align 4, !tbaa !8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ic = phi i32 [ 2, %bb.ao ], [ %i.ia, %bb.an ]
  %i.id = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.ie = icmp sgt i32 %i.id, 1
  br i1 %i.ie, label %.lr.ph674.preheader, label %._crit_edge675

.lr.ph674.preheader:                              ; preds = %bb.ap
  %i.if = zext nneg i32 %i.ic to i64              ; 4 uses
  %i.ig = zext nneg i32 %i.id to i64
  %i.ih = sext i32 %i.a to i64                    ; 6 uses
  %i.ii = add nsw i64 %i.ig, -2                   ; 2 uses
  %i.ij = udiv i64 %i.ii, %i.if                   ; 2 uses
  %i.ik = add nuw i64 %i.ij, 1                    ; 2 uses
  %i.il = icmp ult i64 %i.ii, %i.if
  br i1 %i.il, label %.lr.ph674.epil.preheader, label %.lr.ph674.preheader.new

.lr.ph674.preheader.new:                          ; preds = %.lr.ph674.preheader
  %unroll_iter1055 = and i64 %i.ik, -2
  br label %.lr.ph674

.lr.ph674:                                        ; preds = %.lr.ph674, %.lr.ph674.preheader.new
  %indvars.iv785 = phi i64 [ 1, %.lr.ph674.preheader.new ], [ %indvars.iv.next786.1, %.lr.ph674 ] ; 6 uses
  %niter1056 = phi i64 [ 0, %.lr.ph674.preheader.new ], [ %niter1056.next.1, %.lr.ph674 ]
  %indvars787 = trunc nuw nsw i64 %indvars.iv785 to i32
  %i.im = mul nsw i64 %indvars.iv785, %i.ih
  %i.in = mul nsw i32 %i.a, %indvars787
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv785
  %i.iq = getelementptr [8 x i8], ptr %i.ip, i64 %i.io
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !9
  %i.is = add nuw nsw i64 %indvars.iv785, 1       ; 3 uses
  %i.it = mul nsw i64 %i.is, %i.ih                ; 2 uses
  %i.iu = getelementptr [8 x i8], ptr %i.c, i64 %i.it
  %i.iv = getelementptr [8 x i8], ptr %i.iu, i64 %i.is
  store double %i.ir, ptr %i.iv, align 8, !tbaa !9
  %i.iw = getelementptr [8 x i8], ptr %i.c, i64 %i.it
  %i.ix = getelementptr [8 x i8], ptr %i.iw, i64 %indvars.iv785
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !9
  %i.iz = tail call double @sin(double noundef %i.iy) #6
  %i.ja = fneg double %i.iz
  %i.jb = getelementptr [8 x i8], ptr %i.c, i64 %i.is
  %i.jc = getelementptr [8 x i8], ptr %i.jb, i64 %i.im
  store double %i.ja, ptr %i.jc, align 8, !tbaa !9
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, %i.if ; 6 uses
  %indvars787.1 = trunc nuw nsw i64 %indvars.iv.next786 to i32
  %i.jd = mul nsw i64 %indvars.iv.next786, %i.ih
  %i.je = mul nsw i32 %i.a, %indvars787.1
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.next786
  %i.jh = getelementptr [8 x i8], ptr %i.jg, i64 %i.jf
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !9
  %i.jj = add nuw nsw i64 %indvars.iv.next786, 1  ; 3 uses
  %i.jk = mul nsw i64 %i.jj, %i.ih                ; 2 uses
  %i.jl = getelementptr [8 x i8], ptr %i.c, i64 %i.jk
  %i.jm = getelementptr [8 x i8], ptr %i.jl, i64 %i.jj
  store double %i.ji, ptr %i.jm, align 8, !tbaa !9
  %i.jn = getelementptr [8 x i8], ptr %i.c, i64 %i.jk
  %i.jo = getelementptr [8 x i8], ptr %i.jn, i64 %indvars.iv.next786
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !9
  %i.jq = tail call double @sin(double noundef %i.jp) #6
  %i.jr = fneg double %i.jq
  %i.js = getelementptr [8 x i8], ptr %i.c, i64 %i.jj
  %i.jt = getelementptr [8 x i8], ptr %i.js, i64 %i.jd
  store double %i.jr, ptr %i.jt, align 8, !tbaa !9
  %indvars.iv.next786.1 = add nuw nsw i64 %indvars.iv.next786, %i.if ; 2 uses
  %niter1056.next.1 = add i64 %niter1056, 2       ; 2 uses
  %niter1056.ncmp.1.not = icmp eq i64 %niter1056.next.1, %unroll_iter1055
  br i1 %niter1056.ncmp.1.not, label %._crit_edge675.loopexit.unr-lcssa, label %.lr.ph674, !llvm.loop !24

._crit_edge675.loopexit.unr-lcssa:                ; preds = %.lr.ph674
  %i.ju = and i64 %i.ij, 1
  %lcmp.mod1053.not.not = icmp eq i64 %i.ju, 0
  br i1 %lcmp.mod1053.not.not, label %.lr.ph674.epil.preheader, label %._crit_edge675

.lr.ph674.epil.preheader:                         ; preds = %._crit_edge675.loopexit.unr-lcssa, %.lr.ph674.preheader
  %indvars.iv785.epil.init = phi i64 [ 1, %.lr.ph674.preheader ], [ %indvars.iv.next786.1, %._crit_edge675.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod1054 = trunc i64 %i.ik to i1
  tail call void @llvm.assume(i1 %lcmp.mod1054)
  %indvars787.epil = trunc nuw nsw i64 %indvars.iv785.epil.init to i32
  %i.jv = mul nsw i64 %indvars.iv785.epil.init, %i.ih
  %i.jw = mul nsw i32 %i.a, %indvars787.epil
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv785.epil.init
  %i.jz = getelementptr [8 x i8], ptr %i.jy, i64 %i.jx
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !9
  %i.kb = add nuw nsw i64 %indvars.iv785.epil.init, 1 ; 3 uses
  %i.kc = mul nsw i64 %i.kb, %i.ih                ; 2 uses
  %i.kd = getelementptr [8 x i8], ptr %i.c, i64 %i.kc
  %i.ke = getelementptr [8 x i8], ptr %i.kd, i64 %i.kb
  store double %i.ka, ptr %i.ke, align 8, !tbaa !9
  %i.kf = getelementptr [8 x i8], ptr %i.c, i64 %i.kc
  %i.kg = getelementptr [8 x i8], ptr %i.kf, i64 %indvars.iv785.epil.init
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !9
  %i.ki = tail call double @sin(double noundef %i.kh) #6
  %i.kj = fneg double %i.ki
  %i.kk = getelementptr [8 x i8], ptr %i.c, i64 %i.kb
  %i.kl = getelementptr [8 x i8], ptr %i.kk, i64 %i.jv
  store double %i.kj, ptr %i.kl, align 8, !tbaa !9
  br label %._crit_edge675

._crit_edge675:                                   ; preds = %.lr.ph674.epil.preheader, %._crit_edge675.loopexit.unr-lcssa, %bb.ap
  %i.km = load i32, ptr %21, align 4, !tbaa !8    ; 2 uses
  %i.kn = icmp slt i32 %i.km, 2
  br i1 %i.kn, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge675
  store i32 2, ptr %21, align 4, !tbaa !8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge675
  %i.ko = phi i32 [ 2, %bb.aq ], [ %i.km, %._crit_edge675 ]
  %i.kp = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.kq = icmp sgt i32 %i.kp, 1
  br i1 %i.kq, label %.lr.ph679.preheader, label %.loopexit

.lr.ph679.preheader:                              ; preds = %bb.ar
  %i.kr = zext nneg i32 %i.ko to i64              ; 4 uses
  %i.ks = zext nneg i32 %i.kp to i64
  %i.kt = sext i32 %i.d to i64                    ; 6 uses
  %i.ku = add nsw i64 %i.ks, -2                   ; 2 uses
  %i.kv = udiv i64 %i.ku, %i.kr                   ; 2 uses
  %i.kw = add nuw i64 %i.kv, 1                    ; 2 uses
  %i.kx = icmp ult i64 %i.ku, %i.kr
  br i1 %i.kx, label %.lr.ph679.epil.preheader, label %.lr.ph679.preheader.new

.lr.ph679.preheader.new:                          ; preds = %.lr.ph679.preheader
  %unroll_iter1060 = and i64 %i.kw, -2
  br label %.lr.ph679

.lr.ph679:                                        ; preds = %.lr.ph679, %.lr.ph679.preheader.new
  %indvars.iv788 = phi i64 [ 1, %.lr.ph679.preheader.new ], [ %indvars.iv.next789.1, %.lr.ph679 ] ; 6 uses
  %niter1061 = phi i64 [ 0, %.lr.ph679.preheader.new ], [ %niter1061.next.1, %.lr.ph679 ]
  %indvars790 = trunc nuw nsw i64 %indvars.iv788 to i32
  %i.ky = mul nsw i64 %indvars.iv788, %i.kt
  %i.kz = mul nsw i32 %i.d, %indvars790
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv788
  %i.lc = getelementptr [8 x i8], ptr %i.lb, i64 %i.la
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !9
  %i.le = add nuw nsw i64 %indvars.iv788, 1       ; 3 uses
  %i.lf = mul nsw i64 %i.le, %i.kt                ; 2 uses
  %i.lg = getelementptr [8 x i8], ptr %i.f, i64 %i.lf
  %i.lh = getelementptr [8 x i8], ptr %i.lg, i64 %i.le
  store double %i.ld, ptr %i.lh, align 8, !tbaa !9
  %i.li = getelementptr [8 x i8], ptr %i.f, i64 %i.lf
  %i.lj = getelementptr [8 x i8], ptr %i.li, i64 %indvars.iv788
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !9
  %i.ll = tail call double @sin(double noundef %i.lk) #6
  %i.lm = fneg double %i.ll
  %i.ln = getelementptr [8 x i8], ptr %i.f, i64 %i.le
  %i.lo = getelementptr [8 x i8], ptr %i.ln, i64 %i.ky
  store double %i.lm, ptr %i.lo, align 8, !tbaa !9
  %indvars.iv.next789 = add nuw nsw i64 %indvars.iv788, %i.kr ; 6 uses
  %indvars790.1 = trunc nuw nsw i64 %indvars.iv.next789 to i32
  %i.lp = mul nsw i64 %indvars.iv.next789, %i.kt
  %i.lq = mul nsw i32 %i.d, %indvars790.1
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.next789
  %i.lt = getelementptr [8 x i8], ptr %i.ls, i64 %i.lr
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !9
  %i.lv = add nuw nsw i64 %indvars.iv.next789, 1  ; 3 uses
  %i.lw = mul nsw i64 %i.lv, %i.kt                ; 2 uses
  %i.lx = getelementptr [8 x i8], ptr %i.f, i64 %i.lw
  %i.ly = getelementptr [8 x i8], ptr %i.lx, i64 %i.lv
  store double %i.lu, ptr %i.ly, align 8, !tbaa !9
  %i.lz = getelementptr [8 x i8], ptr %i.f, i64 %i.lw
  %i.ma = getelementptr [8 x i8], ptr %i.lz, i64 %indvars.iv.next789
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !9
  %i.mc = tail call double @sin(double noundef %i.mb) #6
  %i.md = fneg double %i.mc
  %i.me = getelementptr [8 x i8], ptr %i.f, i64 %i.lv
  %i.mf = getelementptr [8 x i8], ptr %i.me, i64 %i.lp
  store double %i.md, ptr %i.mf, align 8, !tbaa !9
  %indvars.iv.next789.1 = add nuw nsw i64 %indvars.iv.next789, %i.kr ; 2 uses
  %niter1061.next.1 = add i64 %niter1061, 2       ; 2 uses
  %niter1061.ncmp.1.not = icmp eq i64 %niter1061.next.1, %unroll_iter1060
  br i1 %niter1061.ncmp.1.not, label %.loopexit.loopexit1024.unr-lcssa, label %.lr.ph679, !llvm.loop !25

bb.as:                                            ; preds = %bb.a
  %i.mg = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %.not577617 = icmp slt i32 %i.mg, 1
  br i1 %.not577617, label %._crit_edge621, label %.lr.ph620.split.preheader

.lr.ph620.split.preheader:                        ; preds = %bb.as
  %i.mh = sext i32 %i.a to i64                    ; 3 uses
  %i.mi = sext i32 %i.g to i64                    ; 3 uses
  %i.mj = add nuw i32 %i.mg, 1
  %wide.trip.count733 = zext i32 %i.mj to i64
  br label %.lr.ph620.split

.lr.ph620.split:                                  ; preds = %.lr.ph620.split.preheader, %._crit_edge
  %indvars.iv730 = phi i64 [ 1, %.lr.ph620.split.preheader ], [ %indvars.iv.next731, %._crit_edge ] ; 9 uses
  %i.mk = load i32, ptr %1, align 4, !tbaa !8     ; 4 uses
  %.not582615 = icmp slt i32 %i.mk, 1
  br i1 %.not582615, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph620.split
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv730 ; 3 uses
  %invariant.gep917 = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv730 ; 3 uses
  %i.ml = zext nneg i32 %i.mk to i64              ; 2 uses
  %xtraiter = and i64 %i.ml, 1
  %i.mm = icmp eq i32 %i.mk, 1
  br i1 %i.mm, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ml, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.mn = mul nuw nsw i64 %indvars.iv, %indvars.iv730
  %i.mo = trunc nuw nsw i64 %i.mn to i32
  %i.mp = uitofp nneg i32 %i.mo to double
  %i.mq = tail call double @sin(double noundef %i.mp) #6
  %i.mr = fsub double 5.000000e-01, %i.mq
  %i.ms = fmul double %i.mr, 2.000000e+01
  %i.mt = mul nsw i64 %indvars.iv, %i.mh
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.mt
  store double %i.ms, ptr %gep, align 8, !tbaa !9
  %i.mu = add nuw nsw i64 %indvars.iv, %indvars.iv730
  %i.mv = trunc nsw i64 %i.mu to i32
  %i.mw = uitofp nneg i32 %i.mv to double
  %i.mx = tail call double @sin(double noundef %i.mw) #6
  %i.my = fsub double 5.000000e-01, %i.mx
  %i.mz = fmul double %i.my, 2.000000e+00
  %i.na = mul nsw i64 %indvars.iv, %i.mi
  %gep918 = getelementptr [8 x i8], ptr %invariant.gep917, i64 %i.na
  store double %i.mz, ptr %gep918, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.nb = mul nuw nsw i64 %indvars.iv.next, %indvars.iv730
  %i.nc = trunc nuw nsw i64 %i.nb to i32
  %i.nd = uitofp nneg i32 %i.nc to double
  %i.ne = tail call double @sin(double noundef %i.nd) #6
  %i.nf = fsub double 5.000000e-01, %i.ne
  %i.ng = fmul double %i.nf, 2.000000e+01
  %i.nh = mul nsw i64 %indvars.iv.next, %i.mh
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nh
  store double %i.ng, ptr %gep.1, align 8, !tbaa !9
  %i.ni = add nuw nsw i64 %indvars.iv.next, %indvars.iv730
  %i.nj = trunc nsw i64 %i.ni to i32
  %i.nk = uitofp nneg i32 %i.nj to double
  %i.nl = tail call double @sin(double noundef %i.nk) #6
  %i.nm = fsub double 5.000000e-01, %i.nl
  %i.nn = fmul double %i.nm, 2.000000e+00
  %i.no = mul nsw i64 %indvars.iv.next, %i.mi
  %gep918.1 = getelementptr [8 x i8], ptr %invariant.gep917, i64 %i.no
  store double %i.nn, ptr %gep918.1, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !26

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1026 = trunc i32 %i.mk to i1
  tail call void @llvm.assume(i1 %lcmp.mod1026)
  %i.np = mul nuw nsw i64 %indvars.iv.epil.init, %indvars.iv730
  %i.nq = trunc nuw nsw i64 %i.np to i32
  %i.nr = uitofp nneg i32 %i.nq to double
  %i.ns = tail call double @sin(double noundef %i.nr) #6
  %i.nt = fsub double 5.000000e-01, %i.ns
  %i.nu = fmul double %i.nt, 2.000000e+01
  %i.nv = mul nsw i64 %indvars.iv.epil.init, %i.mh
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nv
  store double %i.nu, ptr %gep.epil, align 8, !tbaa !9
  %i.nw = add nuw nsw i64 %indvars.iv.epil.init, %indvars.iv730
  %i.nx = trunc nsw i64 %i.nw to i32
  %i.ny = uitofp nneg i32 %i.nx to double
  %i.nz = tail call double @sin(double noundef %i.ny) #6
  %i.oa = fsub double 5.000000e-01, %i.nz
  %i.ob = fmul double %i.oa, 2.000000e+00
  %i.oc = mul nsw i64 %indvars.iv.epil.init, %i.mi
  %gep918.epil = getelementptr [8 x i8], ptr %invariant.gep917, i64 %i.oc
  store double %i.ob, ptr %gep918.epil, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.lr.ph620.split
  %indvars.iv.next731 = add nuw nsw i64 %indvars.iv730, 1 ; 2 uses
  %exitcond734.not = icmp eq i64 %indvars.iv.next731, %wide.trip.count733
  br i1 %exitcond734.not, label %._crit_edge621, label %.lr.ph620.split, !llvm.loop !27

._crit_edge621:                                   ; preds = %._crit_edge, %bb.as
  %i.od = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %.not578627 = icmp slt i32 %i.od, 1
  br i1 %.not578627, label %._crit_edge631, label %.lr.ph630.split.preheader

.lr.ph630.split.preheader:                        ; preds = %._crit_edge621
  %i.oe = sext i32 %i.d to i64                    ; 3 uses
  %i.of = sext i32 %i.j to i64                    ; 3 uses
  %i.og = add nuw i32 %i.od, 1
  %wide.trip.count743 = zext i32 %i.og to i64
  br label %.lr.ph630.split

.lr.ph630.split:                                  ; preds = %.lr.ph630.split.preheader, %._crit_edge626
  %indvars.iv740 = phi i64 [ 1, %.lr.ph630.split.preheader ], [ %indvars.iv.next741, %._crit_edge626 ] ; 9 uses
  %i.oh = load i32, ptr %2, align 4, !tbaa !8     ; 4 uses
  %.not581622 = icmp slt i32 %i.oh, 1
  br i1 %.not581622, label %._crit_edge626, label %.lr.ph625.preheader

.lr.ph625.preheader:                              ; preds = %.lr.ph630.split
  %invariant.gep919 = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv740 ; 3 uses
  %invariant.gep921 = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv740 ; 3 uses
  %i.oi = zext nneg i32 %i.oh to i64              ; 2 uses
  %xtraiter1027 = and i64 %i.oi, 1
  %i.oj = icmp eq i32 %i.oh, 1
  br i1 %i.oj, label %.lr.ph625.epil.preheader, label %.lr.ph625.preheader.new

.lr.ph625.preheader.new:                          ; preds = %.lr.ph625.preheader
  %unroll_iter1030 = and i64 %i.oi, 2147483646
  br label %.lr.ph625

.lr.ph625:                                        ; preds = %.lr.ph625, %.lr.ph625.preheader.new
  %indvars.iv735 = phi i64 [ 1, %.lr.ph625.preheader.new ], [ %indvars.iv.next736.1, %.lr.ph625 ] ; 6 uses
  %niter1031 = phi i64 [ 0, %.lr.ph625.preheader.new ], [ %niter1031.next.1, %.lr.ph625 ]
  %i.ok = add nuw nsw i64 %indvars.iv735, %indvars.iv740
  %i.ol = trunc nsw i64 %i.ok to i32
  %i.om = uitofp nneg i32 %i.ol to double
  %i.on = tail call double @sin(double noundef %i.om) #6
  %i.oo = fsub double 5.000000e-01, %i.on
  %i.op = fmul double %i.oo, 2.000000e+01
  %i.oq = mul nsw i64 %indvars.iv735, %i.oe
  %gep920 = getelementptr [8 x i8], ptr %invariant.gep919, i64 %i.oq
  store double %i.op, ptr %gep920, align 8, !tbaa !9
  %i.or = mul nuw nsw i64 %indvars.iv735, %indvars.iv740
  %i.os = trunc nuw nsw i64 %i.or to i32
  %i.ot = uitofp nneg i32 %i.os to double
  %i.ou = tail call double @sin(double noundef %i.ot) #6
  %i.ov = fsub double 5.000000e-01, %i.ou
  %i.ow = fmul double %i.ov, 2.000000e+00
  %i.ox = mul nsw i64 %indvars.iv735, %i.of
  %gep922 = getelementptr [8 x i8], ptr %invariant.gep921, i64 %i.ox
  store double %i.ow, ptr %gep922, align 8, !tbaa !9
  %indvars.iv.next736 = add nuw nsw i64 %indvars.iv735, 1 ; 4 uses
  %i.oy = add nuw nsw i64 %indvars.iv.next736, %indvars.iv740
  %i.oz = trunc nsw i64 %i.oy to i32
  %i.pa = uitofp nneg i32 %i.oz to double
  %i.pb = tail call double @sin(double noundef %i.pa) #6
  %i.pc = fsub double 5.000000e-01, %i.pb
  %i.pd = fmul double %i.pc, 2.000000e+01
  %i.pe = mul nsw i64 %indvars.iv.next736, %i.oe
  %gep920.1 = getelementptr [8 x i8], ptr %invariant.gep919, i64 %i.pe
  store double %i.pd, ptr %gep920.1, align 8, !tbaa !9
  %i.pf = mul nuw nsw i64 %indvars.iv.next736, %indvars.iv740
  %i.pg = trunc nuw nsw i64 %i.pf to i32
  %i.ph = uitofp nneg i32 %i.pg to double
  %i.pi = tail call double @sin(double noundef %i.ph) #6
  %i.pj = fsub double 5.000000e-01, %i.pi
  %i.pk = fmul double %i.pj, 2.000000e+00
  %i.pl = mul nsw i64 %indvars.iv.next736, %i.of
  %gep922.1 = getelementptr [8 x i8], ptr %invariant.gep921, i64 %i.pl
  store double %i.pk, ptr %gep922.1, align 8, !tbaa !9
  %indvars.iv.next736.1 = add nuw nsw i64 %indvars.iv735, 2 ; 2 uses
  %niter1031.next.1 = add nuw i64 %niter1031, 2   ; 2 uses
  %niter1031.ncmp.1 = icmp eq i64 %niter1031.next.1, %unroll_iter1030
  br i1 %niter1031.ncmp.1, label %._crit_edge626.loopexit.unr-lcssa, label %.lr.ph625, !llvm.loop !29

._crit_edge626.loopexit.unr-lcssa:                ; preds = %.lr.ph625
  %lcmp.mod1028.not = icmp eq i64 %xtraiter1027, 0
  br i1 %lcmp.mod1028.not, label %._crit_edge626, label %.lr.ph625.epil.preheader

.lr.ph625.epil.preheader:                         ; preds = %._crit_edge626.loopexit.unr-lcssa, %.lr.ph625.preheader
  %indvars.iv735.epil.init = phi i64 [ 1, %.lr.ph625.preheader ], [ %indvars.iv.next736.1, %._crit_edge626.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1029 = trunc i32 %i.oh to i1
  tail call void @llvm.assume(i1 %lcmp.mod1029)
  %i.pm = add nuw nsw i64 %indvars.iv735.epil.init, %indvars.iv740
  %i.pn = trunc nsw i64 %i.pm to i32
  %i.po = uitofp nneg i32 %i.pn to double
  %i.pp = tail call double @sin(double noundef %i.po) #6
  %i.pq = fsub double 5.000000e-01, %i.pp
  %i.pr = fmul double %i.pq, 2.000000e+01
  %i.ps = mul nsw i64 %indvars.iv735.epil.init, %i.oe
  %gep920.epil = getelementptr [8 x i8], ptr %invariant.gep919, i64 %i.ps
  store double %i.pr, ptr %gep920.epil, align 8, !tbaa !9
  %i.pt = mul nuw nsw i64 %indvars.iv735.epil.init, %indvars.iv740
  %i.pu = trunc nuw nsw i64 %i.pt to i32
  %i.pv = uitofp nneg i32 %i.pu to double
  %i.pw = tail call double @sin(double noundef %i.pv) #6
  %i.px = fsub double 5.000000e-01, %i.pw
  %i.py = fmul double %i.px, 2.000000e+00
  %i.pz = mul nsw i64 %indvars.iv735.epil.init, %i.of
  %gep922.epil = getelementptr [8 x i8], ptr %invariant.gep921, i64 %i.pz
  store double %i.py, ptr %gep922.epil, align 8, !tbaa !9
  br label %._crit_edge626

._crit_edge626:                                   ; preds = %.lr.ph625.epil.preheader, %._crit_edge626.loopexit.unr-lcssa, %.lr.ph630.split
  %indvars.iv.next741 = add nuw nsw i64 %indvars.iv740, 1 ; 2 uses
  %exitcond744.not = icmp eq i64 %indvars.iv.next741, %wide.trip.count743
  br i1 %exitcond744.not, label %._crit_edge631, label %.lr.ph630.split, !llvm.loop !30

._crit_edge631:                                   ; preds = %._crit_edge626, %._crit_edge621
  %i.qa = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %.not579637 = icmp slt i32 %i.qa, 1
  br i1 %.not579637, label %.loopexit, label %.lr.ph640

.lr.ph640:                                        ; preds = %._crit_edge631
  %i.qb = load i32, ptr %2, align 4, !tbaa !8
  %i.qc = icmp slt i32 %i.qb, 1
  br i1 %i.qc, label %.loopexit, label %.lr.ph640.split.preheader

.lr.ph640.split.preheader:                        ; preds = %.lr.ph640
  %i.qd = sext i32 %i.m to i64                    ; 3 uses
  %i.qe = sext i32 %i.p to i64                    ; 3 uses
  %i.qf = add nuw i32 %i.qa, 1
  %wide.trip.count753 = zext i32 %i.qf to i64
  br label %.lr.ph640.split

.lr.ph640.split:                                  ; preds = %.lr.ph640.split.preheader, %._crit_edge636
  %indvars.iv750 = phi i64 [ 1, %.lr.ph640.split.preheader ], [ %indvars.iv.next751, %._crit_edge636 ] ; 7 uses
  %i.qg = load i32, ptr %2, align 4, !tbaa !8     ; 4 uses
  %.not580632 = icmp slt i32 %i.qg, 1
  br i1 %.not580632, label %._crit_edge636, label %.lr.ph635.preheader

.lr.ph635.preheader:                              ; preds = %.lr.ph640.split
  %i.qh = trunc nuw nsw i64 %indvars.iv750 to i32 ; 3 uses
  %invariant.gep923 = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv750 ; 3 uses
  %invariant.gep925 = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv750 ; 3 uses
  %i.qi = zext nneg i32 %i.qg to i64              ; 2 uses
  %xtraiter1032 = and i64 %i.qi, 1
  %i.qj = icmp eq i32 %i.qg, 1
  br i1 %i.qj, label %.lr.ph635.epil.preheader, label %.lr.ph635.preheader.new

.lr.ph635.preheader.new:                          ; preds = %.lr.ph635.preheader
  %unroll_iter1035 = and i64 %i.qi, 2147483646
  br label %.lr.ph635

.lr.ph635:                                        ; preds = %.lr.ph635, %.lr.ph635.preheader.new
  %indvars.iv745 = phi i64 [ 1, %.lr.ph635.preheader.new ], [ %indvars.iv.next746.1, %.lr.ph635 ] ; 6 uses
  %niter1036 = phi i64 [ 0, %.lr.ph635.preheader.new ], [ %niter1036.next.1, %.lr.ph635 ]
  %i.qk = trunc nuw nsw i64 %indvars.iv745 to i32
  %i.ql = udiv i32 %i.qk, %i.qh
  %i.qm = uitofp nneg i32 %i.ql to double
  %i.qn = tail call double @sin(double noundef %i.qm) #6
  %i.qo = fsub double 5.000000e-01, %i.qn
  %i.qp = fmul double %i.qo, 2.000000e+01
  %i.qq = mul nsw i64 %indvars.iv745, %i.qd
  %gep924 = getelementptr [8 x i8], ptr %invariant.gep923, i64 %i.qq
  store double %i.qp, ptr %gep924, align 8, !tbaa !9
  %i.qr = mul nuw nsw i64 %indvars.iv745, %indvars.iv750
  %i.qs = trunc nuw nsw i64 %i.qr to i32
  %i.qt = uitofp nneg i32 %i.qs to double
  %i.qu = tail call double @sin(double noundef %i.qt) #6
  %i.qv = fsub double 5.000000e-01, %i.qu
  %i.qw = fmul double %i.qv, 2.000000e+00
  %i.qx = mul nsw i64 %indvars.iv745, %i.qe
  %gep926 = getelementptr [8 x i8], ptr %invariant.gep925, i64 %i.qx
  store double %i.qw, ptr %gep926, align 8, !tbaa !9
  %indvars.iv.next746 = add nuw nsw i64 %indvars.iv745, 1 ; 4 uses
  %i.qy = trunc nuw nsw i64 %indvars.iv.next746 to i32
  %i.qz = udiv i32 %i.qy, %i.qh
  %i.ra = uitofp nneg i32 %i.qz to double
  %i.rb = tail call double @sin(double noundef %i.ra) #6
  %i.rc = fsub double 5.000000e-01, %i.rb
  %i.rd = fmul double %i.rc, 2.000000e+01
  %i.re = mul nsw i64 %indvars.iv.next746, %i.qd
  %gep924.1 = getelementptr [8 x i8], ptr %invariant.gep923, i64 %i.re
  store double %i.rd, ptr %gep924.1, align 8, !tbaa !9
  %i.rf = mul nuw nsw i64 %indvars.iv.next746, %indvars.iv750
  %i.rg = trunc nuw nsw i64 %i.rf to i32
  %i.rh = uitofp nneg i32 %i.rg to double
  %i.ri = tail call double @sin(double noundef %i.rh) #6
  %i.rj = fsub double 5.000000e-01, %i.ri
  %i.rk = fmul double %i.rj, 2.000000e+00
  %i.rl = mul nsw i64 %indvars.iv.next746, %i.qe
  %gep926.1 = getelementptr [8 x i8], ptr %invariant.gep925, i64 %i.rl
  store double %i.rk, ptr %gep926.1, align 8, !tbaa !9
  %indvars.iv.next746.1 = add nuw nsw i64 %indvars.iv745, 2 ; 2 uses
  %niter1036.next.1 = add nuw i64 %niter1036, 2   ; 2 uses
  %niter1036.ncmp.1 = icmp eq i64 %niter1036.next.1, %unroll_iter1035
  br i1 %niter1036.ncmp.1, label %._crit_edge636.loopexit.unr-lcssa, label %.lr.ph635, !llvm.loop !31

._crit_edge636.loopexit.unr-lcssa:                ; preds = %.lr.ph635
  %lcmp.mod1033.not = icmp eq i64 %xtraiter1032, 0
  br i1 %lcmp.mod1033.not, label %._crit_edge636, label %.lr.ph635.epil.preheader

.lr.ph635.epil.preheader:                         ; preds = %._crit_edge636.loopexit.unr-lcssa, %.lr.ph635.preheader
  %indvars.iv745.epil.init = phi i64 [ 1, %.lr.ph635.preheader ], [ %indvars.iv.next746.1, %._crit_edge636.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1034 = trunc i32 %i.qg to i1
  tail call void @llvm.assume(i1 %lcmp.mod1034)
  %i.rm = trunc nuw nsw i64 %indvars.iv745.epil.init to i32
  %i.rn = udiv i32 %i.rm, %i.qh
  %i.ro = uitofp nneg i32 %i.rn to double
  %i.rp = tail call double @sin(double noundef %i.ro) #6
  %i.rq = fsub double 5.000000e-01, %i.rp
  %i.rr = fmul double %i.rq, 2.000000e+01
  %i.rs = mul nsw i64 %indvars.iv745.epil.init, %i.qd
  %gep924.epil = getelementptr [8 x i8], ptr %invariant.gep923, i64 %i.rs
  store double %i.rr, ptr %gep924.epil, align 8, !tbaa !9
  %i.rt = mul nuw nsw i64 %indvars.iv745.epil.init, %indvars.iv750
  %i.ru = trunc nuw nsw i64 %i.rt to i32
  %i.rv = uitofp nneg i32 %i.ru to double
  %i.rw = tail call double @sin(double noundef %i.rv) #6
  %i.rx = fsub double 5.000000e-01, %i.rw
  %i.ry = fmul double %i.rx, 2.000000e+00
  %i.rz = mul nsw i64 %indvars.iv745.epil.init, %i.qe
  %gep926.epil = getelementptr [8 x i8], ptr %invariant.gep925, i64 %i.rz
  store double %i.ry, ptr %gep926.epil, align 8, !tbaa !9
  br label %._crit_edge636

._crit_edge636:                                   ; preds = %.lr.ph635.epil.preheader, %._crit_edge636.loopexit.unr-lcssa, %.lr.ph640.split
  %indvars.iv.next751 = add nuw nsw i64 %indvars.iv750, 1 ; 2 uses
  %exitcond754.not = icmp eq i64 %indvars.iv.next751, %wide.trip.count753
  br i1 %exitcond754.not, label %.loopexit, label %.lr.ph640.split, !llvm.loop !32

bb.at:                                            ; preds = %bb.a
  %i.sa = icmp sgt i32 %i.s, 4
  br i1 %i.sa, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.sb = load double, ptr %19, align 8, !tbaa !9
  %i.sc = insertelement <2 x double> poison, double %i.sb, i64 0
  %i.sd = shufflevector <2 x double> %i.sc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.se = fdiv <2 x double> <double 2.000000e+01, double -1.500000e+00>, %i.sd ; 2 uses
  %i.sf = extractelement <2 x double> %i.se, i64 1 ; 10 uses
  %i.sg = extractelement <2 x double> %i.se, i64 0 ; 7 uses
  %i.sh = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %.not706 = icmp slt i32 %i.sh, 1
  br i1 %.not706, label %._crit_edge718, label %.lr.ph709.preheader

.lr.ph709.preheader:                              ; preds = %bb.au
  %i.si = sext i32 %i.m to i64                    ; 3 uses
  %i.sj = sext i32 %i.p to i64                    ; 3 uses
  %i.sk = add nuw i32 %i.sh, 1
  %wide.trip.count829 = zext i32 %i.sk to i64
  br label %.lr.ph709

.lr.ph709:                                        ; preds = %.lr.ph709.preheader, %._crit_edge705
  %indvars.iv826 = phi i64 [ 1, %.lr.ph709.preheader ], [ %indvars.iv.next827, %._crit_edge705 ] ; 9 uses
  %i.sl = load i32, ptr %2, align 4, !tbaa !8     ; 4 uses
  %.not576701 = icmp slt i32 %i.sl, 1
  br i1 %.not576701, label %._crit_edge705, label %.lr.ph704.preheader

.lr.ph704.preheader:                              ; preds = %.lr.ph709
  %invariant.gep967 = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv826 ; 3 uses
  %invariant.gep969 = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv826 ; 3 uses
  %i.sm = zext nneg i32 %i.sl to i64              ; 2 uses
  %xtraiter1073 = and i64 %i.sm, 1
  %i.sn = icmp eq i32 %i.sl, 1
  br i1 %i.sn, label %.lr.ph704.epil.preheader, label %.lr.ph704.preheader.new

.lr.ph704.preheader.new:                          ; preds = %.lr.ph704.preheader
  %unroll_iter1076 = and i64 %i.sm, 2147483646
  br label %.lr.ph704

.lr.ph704:                                        ; preds = %.lr.ph704, %.lr.ph704.preheader.new
  %indvars.iv821 = phi i64 [ 1, %.lr.ph704.preheader.new ], [ %indvars.iv.next822.1, %.lr.ph704 ] ; 6 uses
  %niter1077 = phi i64 [ 0, %.lr.ph704.preheader.new ], [ %niter1077.next.1, %.lr.ph704 ]
  %i.so = mul nuw nsw i64 %indvars.iv821, %indvars.iv826
  %i.sp = trunc nuw nsw i64 %i.so to i32
  %i.sq = uitofp nneg i32 %i.sp to double
  %i.sr = tail call double @sin(double noundef %i.sq) #6
  %i.ss = fsub double 5.000000e-01, %i.sr
  %i.st = load double, ptr %19, align 8, !tbaa !9
  %i.su = fmul double %i.ss, %i.st
  %i.sv = fdiv double %i.su, 2.000000e+01
  %i.sw = mul nsw i64 %indvars.iv821, %i.si
  %gep968 = getelementptr [8 x i8], ptr %invariant.gep967, i64 %i.sw
  store double %i.sv, ptr %gep968, align 8, !tbaa !9
  %i.sx = add nuw nsw i64 %indvars.iv821, %indvars.iv826
  %i.sy = trunc nsw i64 %i.sx to i32
  %i.sz = uitofp nneg i32 %i.sy to double
  %i.ta = tail call double @sin(double noundef %i.sz) #6
  %i.tb = fsub double 5.000000e-01, %i.ta
  %i.tc = load double, ptr %19, align 8, !tbaa !9
  %i.td = fmul double %i.tb, %i.tc
  %i.te = fdiv double %i.td, 2.000000e+01
  %i.tf = mul nsw i64 %indvars.iv821, %i.sj
  %gep970 = getelementptr [8 x i8], ptr %invariant.gep969, i64 %i.tf
  store double %i.te, ptr %gep970, align 8, !tbaa !9
  %indvars.iv.next822 = add nuw nsw i64 %indvars.iv821, 1 ; 4 uses
  %i.tg = mul nuw nsw i64 %indvars.iv.next822, %indvars.iv826
  %i.th = trunc nuw nsw i64 %i.tg to i32
  %i.ti = uitofp nneg i32 %i.th to double
  %i.tj = tail call double @sin(double noundef %i.ti) #6
  %i.tk = fsub double 5.000000e-01, %i.tj
  %i.tl = load double, ptr %19, align 8, !tbaa !9
  %i.tm = fmul double %i.tk, %i.tl
  %i.tn = fdiv double %i.tm, 2.000000e+01
  %i.to = mul nsw i64 %indvars.iv.next822, %i.si
  %gep968.1 = getelementptr [8 x i8], ptr %invariant.gep967, i64 %i.to
  store double %i.tn, ptr %gep968.1, align 8, !tbaa !9
  %i.tp = add nuw nsw i64 %indvars.iv.next822, %indvars.iv826
  %i.tq = trunc nsw i64 %i.tp to i32
  %i.tr = uitofp nneg i32 %i.tq to double
  %i.ts = tail call double @sin(double noundef %i.tr) #6
  %i.tt = fsub double 5.000000e-01, %i.ts
  %i.tu = load double, ptr %19, align 8, !tbaa !9
  %i.tv = fmul double %i.tt, %i.tu
  %i.tw = fdiv double %i.tv, 2.000000e+01
  %i.tx = mul nsw i64 %indvars.iv.next822, %i.sj
  %gep970.1 = getelementptr [8 x i8], ptr %invariant.gep969, i64 %i.tx
  store double %i.tw, ptr %gep970.1, align 8, !tbaa !9
  %indvars.iv.next822.1 = add nuw nsw i64 %indvars.iv821, 2 ; 2 uses
  %niter1077.next.1 = add nuw i64 %niter1077, 2   ; 2 uses
  %niter1077.ncmp.1 = icmp eq i64 %niter1077.next.1, %unroll_iter1076
  br i1 %niter1077.ncmp.1, label %._crit_edge705.loopexit.unr-lcssa, label %.lr.ph704, !llvm.loop !33

._crit_edge705.loopexit.unr-lcssa:                ; preds = %.lr.ph704
  %lcmp.mod1074.not = icmp eq i64 %xtraiter1073, 0
  br i1 %lcmp.mod1074.not, label %._crit_edge705, label %.lr.ph704.epil.preheader

.lr.ph704.epil.preheader:                         ; preds = %._crit_edge705.loopexit.unr-lcssa, %.lr.ph704.preheader
  %indvars.iv821.epil.init = phi i64 [ 1, %.lr.ph704.preheader ], [ %indvars.iv.next822.1, %._crit_edge705.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1075 = trunc i32 %i.sl to i1
  tail call void @llvm.assume(i1 %lcmp.mod1075)
  %i.ty = mul nuw nsw i64 %indvars.iv821.epil.init, %indvars.iv826
  %i.tz = trunc nuw nsw i64 %i.ty to i32
  %i.ua = uitofp nneg i32 %i.tz to double
  %i.ub = tail call double @sin(double noundef %i.ua) #6
  %i.uc = fsub double 5.000000e-01, %i.ub
  %i.ud = load double, ptr %19, align 8, !tbaa !9
  %i.ue = fmul double %i.uc, %i.ud
  %i.uf = fdiv double %i.ue, 2.000000e+01
  %i.ug = mul nsw i64 %indvars.iv821.epil.init, %i.si
  %gep968.epil = getelementptr [8 x i8], ptr %invariant.gep967, i64 %i.ug
  store double %i.uf, ptr %gep968.epil, align 8, !tbaa !9
  %i.uh = add nuw nsw i64 %indvars.iv821.epil.init, %indvars.iv826
  %i.ui = trunc nsw i64 %i.uh to i32
  %i.uj = uitofp nneg i32 %i.ui to double
  %i.uk = tail call double @sin(double noundef %i.uj) #6
  %i.ul = fsub double 5.000000e-01, %i.uk
  %i.um = load double, ptr %19, align 8, !tbaa !9
  %i.un = fmul double %i.ul, %i.um
  %i.uo = fdiv double %i.un, 2.000000e+01
  %i.up = mul nsw i64 %indvars.iv821.epil.init, %i.sj
  %gep970.epil = getelementptr [8 x i8], ptr %invariant.gep969, i64 %i.up
  store double %i.uo, ptr %gep970.epil, align 8, !tbaa !9
  br label %._crit_edge705

._crit_edge705:                                   ; preds = %.lr.ph704.epil.preheader, %._crit_edge705.loopexit.unr-lcssa, %.lr.ph709
  %indvars.iv.next827 = add nuw nsw i64 %indvars.iv826, 1 ; 2 uses
  %exitcond830.not = icmp eq i64 %indvars.iv.next827, %wide.trip.count829
  br i1 %exitcond830.not, label %._crit_edge710, label %.lr.ph709, !llvm.loop !34

._crit_edge710:                                   ; preds = %._crit_edge705
  %.pre = load i32, ptr %1, align 4, !tbaa !8     ; 9 uses
  %.not566711 = icmp slt i32 %.pre, 1
  br i1 %.not566711, label %._crit_edge718, label %iter.check

iter.check:                                       ; preds = %._crit_edge710
  %i.uq = add i32 %i.g, 1                         ; 18 uses
  %i.ur = add nuw i32 %.pre, 1
  %wide.trip.count834 = zext i32 %i.ur to i64     ; 3 uses
  %i.us = zext nneg i32 %.pre to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %.pre, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %22 = add nsw i64 %wide.trip.count834, -2       ; 2 uses
  %23 = icmp slt i32 %i.uq, 0                     ; 2 uses
  %24 = select i1 %23, i32 %narrow598, i32 %i.uq
  %25 = trunc i64 %22 to i32
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 %25) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %26 = add i32 %i.uq, %mul.result
  %27 = sub i32 %i.uq, %mul.result
  %28 = icmp slt i32 %26, %i.uq
  %29 = icmp sgt i32 %27, %i.uq
  %30 = select i1 %23, i1 %29, i1 %28
  %31 = or i1 %30, %mul.overflow
  %32 = icmp ugt i64 %22, 4294967295
  %33 = icmp ne i32 %i.uq, 0
  %34 = and i1 %32, %33
  %35 = or i1 %31, %34
  br i1 %35, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check1006 = icmp ult i32 %.pre, 16
  br i1 %min.iters.check1006, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ut = and i64 %i.us, 12
  %n.vec = and i64 %i.us, 2147483632              ; 4 uses
  %i.uu = or disjoint i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.uq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add.2 = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.3 = add <4 x i32> %vec.ind, splat (i32 12)
  %i.uv = mul <4 x i32> %broadcast.splat, %vec.ind
  %i.uw = mul <4 x i32> %broadcast.splat, %step.add
  %i.ux = mul <4 x i32> %broadcast.splat, %step.add.2
  %i.uy = mul <4 x i32> %broadcast.splat, %step.add.3
  %i.uz = sext <4 x i32> %i.uv to <4 x i64>
  %i.va = sext <4 x i32> %i.uw to <4 x i64>
  %i.vb = sext <4 x i32> %i.ux to <4 x i64>
  %i.vc = sext <4 x i32> %i.uy to <4 x i64>
  %wide.gep = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %i.uz
  %wide.gep1007 = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %i.va
  %wide.gep1008 = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %i.vb
  %wide.gep1009 = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %i.vc
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !9
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep1007, <4 x i1> splat (i1 true)), !tbaa !9
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep1008, <4 x i1> splat (i1 true)), !tbaa !9
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep1009, <4 x i1> splat (i1 true)), !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.vd = icmp eq i64 %index.next, %n.vec
  br i1 %i.vd, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.us
  br i1 %cmp.n, label %.loopexit1022, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ut, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.uu, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec1010 = and i64 %i.us, 2147483644          ; 3 uses
  %i.ve = or disjoint i64 %n.vec1010, 1
  %broadcast.splatinsert1011 = insertelement <4 x i32> poison, i32 %i.uq, i64 0
  %broadcast.splat1012 = shufflevector <4 x i32> %broadcast.splatinsert1011, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vf = trunc nsw i64 %bc.resume.val to i32
  %broadcast.splatinsert1013 = insertelement <4 x i32> poison, i32 %i.vf, i64 0
  %broadcast.splat1014 = shufflevector <4 x i32> %broadcast.splatinsert1013, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat1014, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1015 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1018, %vec.epilog.vector.body ]
  %vec.ind1016 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next1019, %vec.epilog.vector.body ] ; 2 uses
  %i.vg = mul <4 x i32> %broadcast.splat1012, %vec.ind1016
  %i.vh = sext <4 x i32> %i.vg to <4 x i64>
  %wide.gep1017 = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %i.vh
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep1017, <4 x i1> splat (i1 true)), !tbaa !9
  %index.next1018 = add nuw i64 %index1015, 4     ; 2 uses
  %vec.ind.next1019 = add <4 x i32> %vec.ind1016, splat (i32 4)
  %i.vi = icmp eq i64 %index.next1018, %n.vec1010
  br i1 %i.vi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1020 = icmp eq i64 %n.vec1010, %i.us
  br i1 %cmp.n1020, label %.loopexit1022, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv831.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.scevcheck ], [ %i.uu, %vec.epilog.iter.check ], [ %i.ve, %vec.epilog.middle.block ] ; 4 uses
  %36 = sub nsw i64 %wide.trip.count834, %indvars.iv831.ph
  %37 = zext nneg i32 %.pre to i64
  %38 = sub nsw i64 %37, %indvars.iv831.ph
  %xtraiter1078 = and i64 %36, 7                  ; 2 uses
  %lcmp.mod1079.not = icmp eq i64 %xtraiter1078, 0
  br i1 %lcmp.mod1079.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv831.prol = phi i64 [ %indvars.iv.next832.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv831.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %39 = trunc nuw nsw i64 %indvars.iv831.prol to i32
  %40 = mul i32 %i.uq, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %41
  store double 1.000000e+00, ptr %42, align 8, !tbaa !9
  %indvars.iv.next832.prol = add nuw nsw i64 %indvars.iv831.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1078
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !40

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv831.unr = phi i64 [ %indvars.iv831.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next832.prol, %vec.epilog.scalar.ph.prol ]
  %43 = icmp ult i64 %38, 7
  br i1 %43, label %.loopexit1022, label %vec.epilog.scalar.ph

.loopexit1022:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.vj = add i32 %i.a, 1                         ; 5 uses
  %i.vk = fneg double %i.sg
  %i.vl = fadd double %i.sg, 1.000000e+00
  %i.vm = fneg double %i.sf                       ; 2 uses
  %i.vn = zext nneg i32 %.pre to i64              ; 3 uses
  %i.vo = add nuw i32 %.pre, 1                    ; 2 uses
  %wide.trip.count839 = zext i32 %i.vo to i64
  %i.vp = sext i32 %i.vj to i64
  %i.vq = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.vp
  store double 1.000000e+00, ptr %i.vq, align 8, !tbaa !9
  %.not = icmp eq i32 %.pre, 1
  br i1 %.not, label %._crit_edge718, label %bb.av

bb.av:                                            ; preds = %.loopexit1022
  %i.vr = shl nsw i32 %i.a, 1
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr [8 x i8], ptr %i.c, i64 %i.vs
  %i.vu = getelementptr i8, ptr %i.vt, i64 8
  store double %i.sf, ptr %i.vu, align 8, !tbaa !9
  %i.vv = shl i32 %i.vj, 1
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.vw
  store double 1.000000e+00, ptr %i.vx, align 8, !tbaa !9
  %i.vy = sext i32 %i.a to i64
  %i.vz = getelementptr [8 x i8], ptr %i.c, i64 %i.vy
  %i.wa = getelementptr i8, ptr %i.vz, i64 16
  store double %i.vm, ptr %i.wa, align 8, !tbaa !9
  %exitcond840.peel851.not = icmp eq i32 %i.vo, 3
  br i1 %exitcond840.peel851.not, label %._crit_edge718, label %.peel.next841

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv831 = phi i64 [ %indvars.iv.next832.7, %vec.epilog.scalar.ph ], [ %indvars.iv831.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %44 = trunc nuw nsw i64 %indvars.iv831 to i32
  %45 = mul i32 %i.uq, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %46
  store double 1.000000e+00, ptr %47, align 8, !tbaa !9
  %48 = trunc i64 %indvars.iv831 to i32
  %49 = add i32 %48, 1
  %50 = mul i32 %i.uq, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %51
  store double 1.000000e+00, ptr %52, align 8, !tbaa !9
  %53 = trunc i64 %indvars.iv831 to i32
  %54 = add i32 %53, 2
  %55 = mul i32 %i.uq, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %56
  store double 1.000000e+00, ptr %57, align 8, !tbaa !9
  %58 = trunc i64 %indvars.iv831 to i32
  %59 = add i32 %58, 3
  %60 = mul i32 %i.uq, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %61
  store double 1.000000e+00, ptr %62, align 8, !tbaa !9
  %63 = trunc i64 %indvars.iv831 to i32
  %64 = add i32 %63, 4
  %65 = mul i32 %i.uq, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %66
  store double 1.000000e+00, ptr %67, align 8, !tbaa !9
  %68 = trunc i64 %indvars.iv831 to i32
  %69 = add i32 %68, 5
  %70 = mul i32 %i.uq, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %71
  store double 1.000000e+00, ptr %72, align 8, !tbaa !9
  %73 = trunc i64 %indvars.iv831 to i32
  %74 = add i32 %73, 6
  %75 = mul i32 %i.uq, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %76
  store double 1.000000e+00, ptr %77, align 8, !tbaa !9
  %i.wb = trunc i64 %indvars.iv831 to i32
  %78 = add i32 %i.wb, 7
  %i.wc = mul i32 %i.uq, %78
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.wd
  store double 1.000000e+00, ptr %i.we, align 8, !tbaa !9
  %indvars.iv.next832.7 = add nuw nsw i64 %indvars.iv831, 8 ; 2 uses
  %exitcond835.not.7 = icmp eq i64 %indvars.iv.next832.7, %wide.trip.count834
  br i1 %exitcond835.not.7, label %.loopexit1022, label %vec.epilog.scalar.ph, !llvm.loop !42

.peel.next841:                                    ; preds = %bb.av, %bb.ba
  %indvars.iv836 = phi i64 [ %indvars.iv.next837, %bb.ba ], [ 3, %bb.av ] ; 12 uses
  %indvars838 = trunc i64 %indvars.iv836 to i32   ; 4 uses
  %i.wf = icmp samesign ult i64 %indvars.iv836, 5
  br i1 %i.wf, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.peel.next841
  %i.wg = mul i32 %i.vj, %indvars838
  %i.wh = sext i32 %i.wg to i64
  %i.wi = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.wh
  store double %i.vl, ptr %i.wi, align 8, !tbaa !9
  %.not575 = trunc i64 %indvars.iv836 to i1
  %i.wj = icmp samesign ult i64 %indvars.iv836, %i.vn
  %or.cond = and i1 %i.wj, %.not575               ; 2 uses
  %.991 = select i1 %or.cond, i32 1, i32 -1
  %.992 = select i1 %or.cond, double %i.sf, double %i.vm
  br label %bb.ba

bb.ax:                                            ; preds = %.peel.next841
  %i.wk = icmp samesign ult i64 %indvars.iv836, 9
  br i1 %i.wk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.wl = icmp samesign ult i64 %indvars.iv836, 7
  %i.wm = mul i32 %i.vj, %indvars838
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.wn
  %. = select i1 %i.wl, double %i.sg, double %i.vk
  store double %., ptr %i.wo, align 8, !tbaa !9
  %.not573 = trunc i64 %indvars.iv836 to i1
  %i.wp = icmp samesign ult i64 %indvars.iv836, %i.vn
  %or.cond604 = and i1 %i.wp, %.not573            ; 2 uses
  %.993 = select i1 %or.cond604, i32 1, i32 -1
  %.994 = select i1 %or.cond604, double 1.000000e+00, double -1.000000e+00
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.wq = mul i32 %i.vj, %indvars838
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.wr
  store double 1.000000e+00, ptr %i.ws, align 8, !tbaa !9
  %.not572 = trunc i64 %indvars.iv836 to i1
  %i.wt = icmp samesign ult i64 %indvars.iv836, %i.vn
  %or.cond605 = and i1 %i.wt, %.not572            ; 2 uses
  %.995 = select i1 %or.cond605, i32 1, i32 -1
  %.996.v = select i1 %or.cond605, double 2.000000e+00, double -2.000000e+00
  %.996 = fmul double %i.sf, %.996.v
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.aw
  %.sink983 = phi i32 [ %.993, %bb.ay ], [ %.991, %bb.aw ], [ %.995, %bb.az ]
  %.sink977 = phi double [ %.994, %bb.ay ], [ %.992, %bb.aw ], [ %.996, %bb.az ]
  %.sink979 = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv836
  %i.wu = add nsw i32 %.sink983, %indvars838
  %i.wv = mul nsw i32 %i.wu, %i.a
  %i.ww = sext i32 %i.wv to i64
  %i.wx = getelementptr [8 x i8], ptr %.sink979, i64 %i.ww
  store double %.sink977, ptr %i.wx, align 8, !tbaa !9
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 1 ; 2 uses
  %exitcond840.not = icmp eq i64 %indvars.iv.next837, %wide.trip.count839
  br i1 %exitcond840.not, label %._crit_edge718, label %.peel.next841, !llvm.loop !43

._crit_edge718:                                   ; preds = %bb.ba, %.loopexit1022, %bb.au, %._crit_edge710, %bb.av
  %i.wy = load i32, ptr %2, align 4, !tbaa !8     ; 6 uses
  %.not568719 = icmp slt i32 %i.wy, 1
  br i1 %.not568719, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge718
  %i.wz = add i32 %i.j, 1                         ; 7 uses
  %i.xa = fsub double 1.000000e+00, %i.sg         ; 3 uses
  %i.xb = add i32 %i.d, 1                         ; 8 uses
  %i.xc = fneg double %i.sg
  %i.xd = fsub double -1.000000e+00, %i.sf        ; 3 uses
  %i.xe = fadd double %i.sf, 1.000000e+00         ; 2 uses
  %i.xf = fneg double %i.sf                       ; 3 uses
  %i.xg = zext nneg i32 %i.wy to i64              ; 2 uses
  %i.xh = add nuw i32 %i.wy, 1                    ; 6 uses
  %wide.trip.count856 = zext i32 %i.xh to i64
  %i.xi = sext i32 %i.wz to i64
  %i.xj = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.xi
  store double 1.000000e+00, ptr %i.xj, align 8, !tbaa !9
  %i.xk = sext i32 %i.xb to i64
  %i.xl = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.xk
  store double -1.000000e+00, ptr %i.xl, align 8, !tbaa !9
  %.not907 = icmp eq i32 %i.wy, 1
  br i1 %.not907, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.xm = shl nsw i32 %i.d, 1
  %i.xn = sext i32 %i.xm to i64
  %i.xo = getelementptr [8 x i8], ptr %i.f, i64 %i.xn
  %i.xp = getelementptr i8, ptr %i.xo, i64 8
  store double %i.sf, ptr %i.xp, align 8, !tbaa !9
  %i.xq = shl i32 %i.wz, 1
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.xr
  store double 1.000000e+00, ptr %i.xs, align 8, !tbaa !9
  %i.xt = shl i32 %i.xb, 1
  %i.xu = sext i32 %i.xt to i64
  %i.xv = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.xu
  store double -1.000000e+00, ptr %i.xv, align 8, !tbaa !9
  %i.xw = sext i32 %i.d to i64
  %i.xx = getelementptr [8 x i8], ptr %i.f, i64 %i.xw
  %i.xy = getelementptr i8, ptr %i.xx, i64 16
  store double %i.xf, ptr %i.xy, align 8, !tbaa !9
  %exitcond857.peel870.not = icmp eq i32 %i.xh, 3
  br i1 %exitcond857.peel870.not, label %.loopexit, label %.peel.next860.peel

.peel.next860.peel:                               ; preds = %bb.bc
  %i.xz = mul i32 %i.wz, 3
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ya
  store double 1.000000e+00, ptr %i.yb, align 8, !tbaa !9
  %i.yc = mul i32 %i.xb, 3
  %i.yd = sext i32 %i.yc to i64
  %i.ye = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.yd
  store double %i.xa, ptr %i.ye, align 8, !tbaa !9
  %i.yf = icmp ugt i32 %i.wy, 3                   ; 2 uses
  %.998.peel = select i1 %i.yf, double %i.sf, double %i.xf
  %i.yg = select i1 %i.yf, i32 2, i32 1
  %i.yh = shl i32 %i.d, %i.yg
  %i.yi = sext i32 %i.yh to i64
  %.sink986.peel = getelementptr i8, ptr %i.f, i64 24
  %i.yj = getelementptr [8 x i8], ptr %.sink986.peel, i64 %i.yi
  store double %.998.peel, ptr %i.yj, align 8, !tbaa !9
  %exitcond857.not.peel = icmp eq i32 %i.xh, 4
  br i1 %exitcond857.not.peel, label %.loopexit, label %.peel.next860.peel1081

.peel.next860.peel1081:                           ; preds = %.peel.next860.peel
  %i.yk = shl i32 %i.wz, 2
  %i.yl = sext i32 %i.yk to i64
  %i.ym = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.yl
  store double 1.000000e+00, ptr %i.ym, align 8, !tbaa !9
  %i.yn = shl i32 %i.xb, 2
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.yo
  store double %i.xa, ptr %i.yp, align 8, !tbaa !9
  %.sink986.peel1099 = getelementptr i8, ptr %i.f, i64 32
  %i.yq = mul nsw i32 %i.d, 3
  %i.yr = sext i32 %i.yq to i64
  %i.ys = getelementptr [8 x i8], ptr %.sink986.peel1099, i64 %i.yr
  store double %i.xf, ptr %i.ys, align 8, !tbaa !9
  %exitcond857.not.peel1101 = icmp eq i32 %i.xh, 5
  br i1 %exitcond857.not.peel1101, label %.loopexit, label %.peel.next860.peel1103

.peel.next860.peel1103:                           ; preds = %.peel.next860.peel1081
  %i.yt = mul i32 %i.wz, 5
  %i.yu = sext i32 %i.yt to i64
  %i.yv = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.yu
  store double 1.000000e+00, ptr %i.yv, align 8, !tbaa !9
  %i.yw = mul i32 %i.xb, 5
  %i.yx = sext i32 %i.yw to i64
  %i.yy = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.yx
  store double %i.sg, ptr %i.yy, align 8, !tbaa !9
  %i.yz = icmp ugt i32 %i.wy, 5                   ; 2 uses
  %.1000.peel1114 = select i1 %i.yz, double %i.xe, double %i.xd
  %i.za = select i1 %i.yz, i32 6, i32 4
  %i.zb = mul nsw i32 %i.za, %i.d
  %i.zc = sext i32 %i.zb to i64
  %.sink986.peel1121 = getelementptr i8, ptr %i.f, i64 40
  %i.zd = getelementptr [8 x i8], ptr %.sink986.peel1121, i64 %i.zc
  store double %.1000.peel1114, ptr %i.zd, align 8, !tbaa !9
  %exitcond857.not.peel1123 = icmp eq i32 %i.xh, 6
  br i1 %exitcond857.not.peel1123, label %.loopexit, label %.peel.next860.peel1125

.peel.next860.peel1125:                           ; preds = %.peel.next860.peel1103
  %i.ze = mul i32 %i.wz, 6
  %i.zf = sext i32 %i.ze to i64
  %i.zg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.zf
  store double 1.000000e+00, ptr %i.zg, align 8, !tbaa !9
  %i.zh = mul i32 %i.xb, 6
  %i.zi = sext i32 %i.zh to i64
  %i.zj = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.zi
  store double %i.sg, ptr %i.zj, align 8, !tbaa !9
  %.sink986.peel1143 = getelementptr i8, ptr %i.f, i64 48
  %i.zk = mul nsw i32 %i.d, 5
  %i.zl = sext i32 %i.zk to i64
  %i.zm = getelementptr [8 x i8], ptr %.sink986.peel1143, i64 %i.zl
  store double %i.xd, ptr %i.zm, align 8, !tbaa !9
  %exitcond857.not.peel1145 = icmp eq i32 %i.xh, 7
  br i1 %exitcond857.not.peel1145, label %.loopexit, label %.peel.next860

.peel.next860:                                    ; preds = %.peel.next860.peel1125, %bb.bf
  %indvars.iv853 = phi i64 [ %indvars.iv.next854, %bb.bf ], [ 7, %.peel.next860.peel1125 ] ; 8 uses
  %indvars855 = trunc i64 %indvars.iv853 to i32   ; 4 uses
  %i.zn = mul i32 %i.wz, %indvars855
  %i.zo = sext i32 %i.zn to i64
  %i.zp = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.zo
  store double 1.000000e+00, ptr %i.zp, align 8, !tbaa !9
  %i.zq = icmp samesign ult i64 %indvars.iv853, 9
  br i1 %i.zq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.peel.next860
  %i.zr = mul i32 %i.xb, %indvars855
  %i.zs = sext i32 %i.zr to i64
  %i.zt = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.zs
  store double %i.xc, ptr %i.zt, align 8, !tbaa !9
  %.not570 = trunc i64 %indvars.iv853 to i1
  %i.zu = icmp samesign ult i64 %indvars.iv853, %i.xg
  %or.cond607 = and i1 %i.zu, %.not570            ; 2 uses
  %.999 = select i1 %or.cond607, i32 1, i32 -1
  %.1000 = select i1 %or.cond607, double %i.xe, double %i.xd
  br label %bb.bf

bb.be:                                            ; preds = %.peel.next860
  %i.zv = mul i32 %i.xb, %indvars855
  %i.zw = sext i32 %i.zv to i64
  %i.zx = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.zw
  store double %i.xa, ptr %i.zx, align 8, !tbaa !9
  %.not569 = trunc i64 %indvars.iv853 to i1
  %i.zy = icmp samesign ult i64 %indvars.iv853, %i.xg
  %or.cond608 = and i1 %i.zy, %.not569            ; 2 uses
  %.1001 = select i1 %or.cond608, i32 1, i32 -1
  %.1002.v = select i1 %or.cond608, double 2.000000e+00, double -2.000000e+00
  %.1002 = fmul double %i.sf, %.1002.v
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sink990 = phi i32 [ %.999, %bb.bd ], [ %.1001, %bb.be ]
  %.sink984 = phi double [ %.1000, %bb.bd ], [ %.1002, %bb.be ]
  %.sink986 = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv853
  %i.zz = add nsw i32 %.sink990, %indvars855
  %i.aaa = mul nsw i32 %i.zz, %i.d
  %i.aab = sext i32 %i.aaa to i64
  %i.aac = getelementptr [8 x i8], ptr %.sink986, i64 %i.aab
  store double %.sink984, ptr %i.aac, align 8, !tbaa !9
  %indvars.iv.next854 = add nuw nsw i64 %indvars.iv853, 1 ; 2 uses
  %exitcond857.not = icmp eq i64 %indvars.iv.next854, %wide.trip.count856
  br i1 %exitcond857.not, label %.loopexit, label %.peel.next860, !llvm.loop !45

.loopexit.loopexit1024.unr-lcssa:                 ; preds = %.lr.ph679
  %i.aad = and i64 %i.kv, 1
  %lcmp.mod1058.not.not = icmp eq i64 %i.aad, 0
  br i1 %lcmp.mod1058.not.not, label %.lr.ph679.epil.preheader, label %.loopexit

.lr.ph679.epil.preheader:                         ; preds = %.loopexit.loopexit1024.unr-lcssa, %.lr.ph679.preheader
  %indvars.iv788.epil.init = phi i64 [ 1, %.lr.ph679.preheader ], [ %indvars.iv.next789.1, %.loopexit.loopexit1024.unr-lcssa ] ; 5 uses
  %lcmp.mod1059 = trunc i64 %i.kw to i1
  tail call void @llvm.assume(i1 %lcmp.mod1059)
  %indvars790.epil = trunc nuw nsw i64 %indvars.iv788.epil.init to i32
  %i.aae = mul nsw i64 %indvars.iv788.epil.init, %i.kt
  %i.aaf = mul nsw i32 %i.d, %indvars790.epil
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv788.epil.init
  %i.aai = getelementptr [8 x i8], ptr %i.aah, i64 %i.aag
  %i.aaj = load double, ptr %i.aai, align 8, !tbaa !9
  %i.aak = add nuw nsw i64 %indvars.iv788.epil.init, 1 ; 3 uses
  %i.aal = mul nsw i64 %i.aak, %i.kt              ; 2 uses
  %i.aam = getelementptr [8 x i8], ptr %i.f, i64 %i.aal
  %i.aan = getelementptr [8 x i8], ptr %i.aam, i64 %i.aak
  store double %i.aaj, ptr %i.aan, align 8, !tbaa !9
  %i.aao = getelementptr [8 x i8], ptr %i.f, i64 %i.aal
  %i.aap = getelementptr [8 x i8], ptr %i.aao, i64 %indvars.iv788.epil.init
  %i.aaq = load double, ptr %i.aap, align 8, !tbaa !9
  %i.aar = tail call double @sin(double noundef %i.aaq) #6
  %i.aas = fneg double %i.aar
  %i.aat = getelementptr [8 x i8], ptr %i.f, i64 %i.aak
  %i.aau = getelementptr [8 x i8], ptr %i.aat, i64 %i.aae
  store double %i.aas, ptr %i.aau, align 8, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge636, %.lr.ph679.epil.preheader, %.loopexit.loopexit1024.unr-lcssa, %._crit_edge697, %.peel.next860.peel, %.peel.next860.peel1081, %.peel.next860.peel1103, %.peel.next860.peel1125, %bb.bf, %bb.bb, %bb.bc, %.lr.ph640, %._crit_edge631, %bb.ar, %.preheader609, %._crit_edge718, %._crit_edge670, %bb.at
  tail call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef %1, ptr noundef %2, ptr noundef %1, ptr noundef nonnull @c_b29, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull @c_b30, ptr noundef %7, ptr noundef %8) #6
  tail call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef %1, ptr noundef %2, ptr noundef %2, ptr noundef nonnull @c_b33, ptr noundef %17, ptr noundef nonnull %18, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull @c_b29, ptr noundef %7, ptr noundef %8) #6
  tail call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef %1, ptr noundef %2, ptr noundef %1, ptr noundef nonnull @c_b29, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull @c_b30, ptr noundef %13, ptr noundef %14) #6
  tail call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef %1, ptr noundef %2, ptr noundef %2, ptr noundef nonnull @c_b33, ptr noundef %17, ptr noundef nonnull %18, ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull @c_b29, ptr noundef %13, ptr noundef %14) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.unswitch.partial.disable"}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12, !28}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12, !28}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"branch_weights", i32 4, i32 12}
!39 = distinct !{!39, !12, !36, !37}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !12, !36}
!43 = distinct !{!43, !12, !44}
!44 = !{!"llvm.loop.peeled.count", i32 2}
!45 = distinct !{!45, !12, !46}
!46 = !{!"llvm.loop.peeled.count", i32 6}
end_hunk_0
