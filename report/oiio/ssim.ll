inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@VP8SSIMDspInit.VP8SSIMDspInit_body_last_cpuinfo_used = internal global ptr @VP8SSIMDspInit.VP8SSIMDspInit_body_last_cpuinfo_used, align 8
@VP8SSIMDspInit.VP8SSIMDspInit_body_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@VP8GetCPUInfo = external local_unnamed_addr global ptr, align 8
@VP8SSIMGet = hidden local_unnamed_addr global ptr null, align 8
@VP8SSIMGetClipped = hidden local_unnamed_addr global ptr null, align 8
@VP8AccumulateSSE = hidden local_unnamed_addr global ptr null, align 8
@kWeight = internal unnamed_addr constant [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 3, i32 2, i32 1], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden double @VP8SSIMFromStats(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = mul nuw i64 %i.c, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = mul nuw i64 %i.g, %i.g
  %i.i = add i64 %i.h, %i.d                       ; 3 uses
  %.not.i = icmp ult i64 %i.i, 4194304
  br i1 %.not.i, label %SSIMCalculation.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = mul nuw nsw i64 %i.g, %i.c               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 8
  %i.o = sub nsw i64 %i.n, %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !11
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12
  %i.u = zext i32 %i.t to i64
  %i.v = tail call i64 @llvm.smax.i64(i64 %i.o, i64 0)
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = add nuw nsw i64 %i.w, 3932160
  %i.y = lshr i64 %i.x, 8
  %reass.add.i = add nuw nsw i64 %i.u, %i.r
  %reass.mul.i = shl nuw nsw i64 %reass.add.i, 8
  %reass.sub1 = sub i64 %reass.mul.i, %i.i
  %i.z = add i64 %reass.sub1, 3932160
  %i.aa = lshr i64 %i.z, 8
  %i.ab = shl nuw nsw i64 %i.j, 1
  %i.ac = add nuw nsw i64 %i.ab, 1310720
  %i.ad = mul i64 %i.y, %i.ac
  %i.ae = add i64 %i.i, 1310720
  %i.af = mul i64 %i.aa, %i.ae
  %i.ag = uitofp i64 %i.ad to double
  %i.ah = uitofp i64 %i.af to double
  %i.ai = fdiv double %i.ag, %i.ah
  br label %SSIMCalculation.exit

SSIMCalculation.exit:                             ; preds = %bb.a, %bb.b
  %.0.i = phi double [ %i.ai, %bb.b ], [ 1.000000e+00, %bb.a ]
  ret double %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden double @VP8SSIMFromStatsClipped(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !13     ; 3 uses
  %i.b = mul i32 %i.a, %i.a                       ; 3 uses
  %i.c = shl i32 %i.b, 6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = mul nuw i64 %i.f, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = mul nuw i64 %i.j, %i.j
  %i.l = add i64 %i.k, %i.g                       ; 3 uses
  %i.m = zext i32 %i.c to i64
  %.not.i = icmp ult i64 %i.l, %i.m
  br i1 %.not.i, label %SSIMCalculation.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = mul i32 %i.b, 60
  %i.o = mul i32 %i.b, 20
  %i.p = mul nuw nsw i64 %i.j, %i.f               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !10
  %i.s = zext i32 %i.r to i64
  %i.t = zext i32 %i.a to i64                     ; 2 uses
  %i.u = mul nuw nsw i64 %i.s, %i.t
  %i.v = sub nsw i64 %i.u, %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !11
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call i64 @llvm.smax.i64(i64 %i.v, i64 0)
  %i.ad = shl nuw i64 %i.ac, 1
  %i.ae = zext i32 %i.n to i64                    ; 2 uses
  %i.af = add i64 %i.ad, %i.ae
  %i.ag = lshr i64 %i.af, 8
  %reass.add.i = add nuw nsw i64 %i.ab, %i.y
  %reass.mul.i = mul i64 %reass.add.i, %i.t
  %i.ah = sub i64 %i.ae, %i.l
  %i.ai = add i64 %i.ah, %reass.mul.i
  %i.aj = lshr i64 %i.ai, 8
  %i.ak = shl nuw nsw i64 %i.p, 1
  %i.al = zext i32 %i.o to i64                    ; 2 uses
  %i.am = add nuw nsw i64 %i.ak, %i.al
  %i.an = mul i64 %i.ag, %i.am
  %i.ao = add i64 %i.l, %i.al
  %i.ap = mul i64 %i.aj, %i.ao
  %i.aq = uitofp i64 %i.an to double
  %i.ar = uitofp i64 %i.ap to double
  %i.as = fdiv double %i.aq, %i.ar
  br label %SSIMCalculation.exit

SSIMCalculation.exit:                             ; preds = %bb.a, %bb.b
  %.0.i = phi double [ %i.as, %bb.b ], [ 1.000000e+00, %bb.a ]
  ret double %.0.i
}

; Function Attrs: nounwind uwtable
define hidden void @VP8SSIMDspInit() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @VP8SSIMDspInit.VP8SSIMDspInit_body_lock) #6
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load volatile ptr, ptr @VP8SSIMDspInit.VP8SSIMDspInit_body_last_cpuinfo_used, align 8, !tbaa !14
  %i.c = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !14 ; 3 uses
  %.not1 = icmp eq ptr %i.b, %i.c
  br i1 %.not1, label %VP8SSIMDspInit_body.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @SSIMGetClipped_C, ptr @VP8SSIMGetClipped, align 8, !tbaa !14
  store ptr @SSIMGet_C, ptr @VP8SSIMGet, align 8, !tbaa !14
  store ptr @AccumulateSSE_C, ptr @VP8AccumulateSSE, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %VP8SSIMDspInit_body.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 %i.c(i32 noundef 0) #6, !inline_history !16
  %.not1.i = icmp eq i32 %i.d, 0
  br i1 %.not1.i, label %VP8SSIMDspInit_body.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @VP8SSIMDspInitSSE2() #6
  br label %VP8SSIMDspInit_body.exit

VP8SSIMDspInit_body.exit:                         ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.e = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !14
  store volatile ptr %i.e, ptr @VP8SSIMDspInit.VP8SSIMDspInit_body_last_cpuinfo_used, align 8, !tbaa !14
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @VP8SSIMDspInit.VP8SSIMDspInit_body_lock) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %VP8SSIMDspInit_body.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal double @SSIMGetClipped_C(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %5, i32 3) ; 2 uses
  %i.b = add nsw i32 %i.a, -3                     ; 3 uses
  %i.c = add nsw i32 %5, 3
  %i.d = add nsw i32 %7, -1
  %i.e = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.d) ; 2 uses
  %i.f = tail call i32 @llvm.smax.i32(i32 %4, i32 3) ; 4 uses
  %i.g = add i32 %4, 3
  %i.h = add i32 %6, -1
  %i.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 3 uses
  %.not81 = icmp sgt i32 %i.b, %i.e
  br i1 %.not81, label %._crit_edge91, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.j = add nsw i32 %i.f, -3
  %.not5468 = icmp sgt i32 %i.j, %i.i
  %i.k = sext i32 %1 to i64
  %i.l = sext i32 %3 to i64
  br i1 %.not5468, label %._crit_edge91, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.m = mul nsw i32 %i.b, %1
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = mul nsw i32 %i.b, %3
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %2, i64 %i.q
  %i.s = zext nneg i32 %i.f to i64
  %i.t = add nsw i64 %i.s, -3                     ; 3 uses
  %i.u = add nuw i32 %i.i, 1
  %i.v = zext nneg i32 %i.a to i64
  %i.w = add nsw i64 %i.v, -3
  %i.x = zext nneg i32 %i.e to i64
  %8 = add i32 %i.i, 3                            ; 2 uses
  %9 = sub i32 %8, %i.f                           ; 2 uses
  %i.y = sub i32 %i.f, %4
  %10 = zext i32 %9 to i64
  %11 = add nuw nsw i64 %10, 1                    ; 2 uses
  %invariant.op169 = sub i32 3, %5
  %min.iters.check = icmp ult i32 %9, 3
  %12 = sub i32 %8, %4
  %i.z = icmp slt i32 %12, %i.y
  %or.cond = or i1 %min.iters.check, %i.z
  %n.vec = and i64 %11, 8589934588                ; 3 uses
  %i.aa = add nsw i64 %i.t, %n.vec
  %invariant.op = sub i32 3, %4
  %cmp.n = icmp eq i64 %11, %n.vec
  %invariant.op168 = sub i32 3, %4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv112 = phi i64 [ %i.w, %.preheader.preheader ], [ %indvars.iv.next113, %._crit_edge ] ; 3 uses
  %.090 = phi ptr [ %i.o, %.preheader.preheader ], [ %i.ci, %._crit_edge ] ; 3 uses
  %.05189 = phi ptr [ %i.r, %.preheader.preheader ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.18.087 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.15.086 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa125, %._crit_edge ] ; 2 uses
  %.sroa.12.085 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa126, %._crit_edge ] ; 2 uses
  %.sroa.9.084 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa127, %._crit_edge ] ; 2 uses
  %.sroa.6.083 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa128, %._crit_edge ] ; 2 uses
  %.sroa.0.082 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa129, %._crit_edge ] ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv112 to i32
  %.reass.reass.reass.reass = add i32 %i.ab, %invariant.op169
  %i.ac = sext i32 %.reass.reass.reass.reass to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr @kWeight, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3  ; 2 uses
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.18.087, i64 0
  %i.ag = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.15.086, i64 0
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.12.085, i64 0
  %i.ai = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.9.084, i64 0
  %i.aj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.6.083, i64 0
  %i.ak = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.0.082, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.af, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi130 = phi <4 x i32> [ %i.ag, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi131 = phi <4 x i32> [ %i.ah, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi132 = phi <4 x i32> [ %i.ai, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi133 = phi <4 x i32> [ %i.aj, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi134 = phi <4 x i32> [ %i.ak, %vector.ph ], [ %i.au, %vector.body ]
  %i.al = add i64 %i.t, %index                    ; 3 uses
  %i.am = trunc nuw nsw i64 %i.al to i32
  %.reass167 = add i32 %i.am, %invariant.op
  %i.an = sext i32 %.reass167 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr @kWeight, i64 %i.an
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !3
  %i.ap = mul <4 x i32> %broadcast.splat, %wide.load ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %.090, i64 %i.al
  %wide.load135 = load <4 x i8>, ptr %i.aq, align 1, !tbaa !17
  %i.ar = zext <4 x i8> %wide.load135 to <4 x i32> ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.05189, i64 %i.al
  %wide.load136 = load <4 x i8>, ptr %i.as, align 1, !tbaa !17
  %i.at = zext <4 x i8> %wide.load136 to <4 x i32> ; 3 uses
  %i.au = add <4 x i32> %i.ap, %vec.phi134        ; 2 uses
  %i.av = mul <4 x i32> %i.ap, %i.ar              ; 3 uses
  %i.aw = add <4 x i32> %i.av, %vec.phi133        ; 2 uses
  %i.ax = mul <4 x i32> %i.ap, %i.at              ; 2 uses
  %i.ay = add <4 x i32> %i.ax, %vec.phi132        ; 2 uses
  %i.az = mul <4 x i32> %i.av, %i.ar
  %i.ba = add <4 x i32> %i.az, %vec.phi131        ; 2 uses
  %i.bb = mul <4 x i32> %i.av, %i.at
  %i.bc = add <4 x i32> %i.bb, %vec.phi130        ; 2 uses
  %i.bd = mul <4 x i32> %i.ax, %i.at
  %i.be = add <4 x i32> %i.bd, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %i.bg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.be) ; 2 uses
  %i.bh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bc) ; 2 uses
  %i.bi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ba) ; 2 uses
  %i.bj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ay) ; 2 uses
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aw) ; 2 uses
  %i.bl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.au) ; 2 uses
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %.preheader ], [ %i.aa, %middle.block ]
  %.sroa.18.174.ph = phi i32 [ %.sroa.18.087, %.preheader ], [ %i.bg, %middle.block ]
  %.sroa.15.173.ph = phi i32 [ %.sroa.15.086, %.preheader ], [ %i.bh, %middle.block ]
  %.sroa.12.172.ph = phi i32 [ %.sroa.12.085, %.preheader ], [ %i.bi, %middle.block ]
  %.sroa.9.171.ph = phi i32 [ %.sroa.9.084, %.preheader ], [ %i.bj, %middle.block ]
  %.sroa.6.170.ph = phi i32 [ %.sroa.6.083, %.preheader ], [ %i.bk, %middle.block ]
  %.sroa.0.169.ph = phi i32 [ %.sroa.0.082, %.preheader ], [ %i.bl, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.sroa.18.174 = phi i32 [ %i.ch, %scalar.ph ], [ %.sroa.18.174.ph, %scalar.ph.preheader ]
  %.sroa.15.173 = phi i32 [ %i.cf, %scalar.ph ], [ %.sroa.15.173.ph, %scalar.ph.preheader ]
  %.sroa.12.172 = phi i32 [ %i.cd, %scalar.ph ], [ %.sroa.12.172.ph, %scalar.ph.preheader ]
  %.sroa.9.171 = phi i32 [ %i.cb, %scalar.ph ], [ %.sroa.9.171.ph, %scalar.ph.preheader ]
  %.sroa.6.170 = phi i32 [ %i.bz, %scalar.ph ], [ %.sroa.6.170.ph, %scalar.ph.preheader ]
  %.sroa.0.169 = phi i32 [ %i.bx, %scalar.ph ], [ %.sroa.0.169.ph, %scalar.ph.preheader ]
  %i.bm = trunc nuw nsw i64 %indvars.iv to i32
  %.reass.reass = add i32 %i.bm, %invariant.op168
  %i.bn = sext i32 %.reass.reass to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr @kWeight, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = mul i32 %i.ae, %i.bp                    ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.090, i64 %indvars.iv
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !17
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %.05189, i64 %indvars.iv
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  %i.bw = zext i8 %i.bv to i32                    ; 3 uses
  %i.bx = add i32 %i.bq, %.sroa.0.169             ; 2 uses
  %i.by = mul i32 %i.bq, %i.bt                    ; 3 uses
  %i.bz = add i32 %i.by, %.sroa.6.170             ; 2 uses
  %i.ca = mul i32 %i.bq, %i.bw                    ; 2 uses
  %i.cb = add i32 %i.ca, %.sroa.9.171             ; 2 uses
  %i.cc = mul i32 %i.by, %i.bt
  %i.cd = add i32 %i.cc, %.sroa.12.172            ; 2 uses
  %i.ce = mul i32 %i.by, %i.bw
  %i.cf = add i32 %i.ce, %.sroa.15.173            ; 2 uses
  %i.cg = mul i32 %i.ca, %i.bw
  %i.ch = add i32 %i.cg, %.sroa.18.174            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.u, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa129 = phi i32 [ %i.bl, %middle.block ], [ %i.bx, %scalar.ph ] ; 2 uses
  %.lcssa128 = phi i32 [ %i.bk, %middle.block ], [ %i.bz, %scalar.ph ] ; 2 uses
  %.lcssa127 = phi i32 [ %i.bj, %middle.block ], [ %i.cb, %scalar.ph ] ; 2 uses
  %.lcssa126 = phi i32 [ %i.bi, %middle.block ], [ %i.cd, %scalar.ph ] ; 2 uses
  %.lcssa125 = phi i32 [ %i.bh, %middle.block ], [ %i.cf, %scalar.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.bg, %middle.block ], [ %i.ch, %scalar.ph ] ; 2 uses
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %i.ci = getelementptr inbounds i8, ptr %.090, i64 %i.k
  %i.cj = getelementptr inbounds i8, ptr %.05189, i64 %i.l
  %.not.not = icmp slt i64 %indvars.iv112, %i.x
  br i1 %.not.not, label %.preheader, label %._crit_edge91.loopexit105, !llvm.loop !23

._crit_edge91.loopexit105:                        ; preds = %._crit_edge
  %i.ck = zext i32 %.lcssa128 to i64
  %i.cl = zext i32 %.lcssa127 to i64
  %i.cm = zext i32 %.lcssa125 to i64
  %i.cn = zext i32 %.lcssa126 to i64
  %i.co = zext i32 %.lcssa to i64
  br label %._crit_edge91

._crit_edge91:                                    ; preds = %.preheader.lr.ph, %._crit_edge91.loopexit105, %bb.a
  %.sroa.0.0.lcssa = phi i32 [ 0, %bb.a ], [ %.lcssa129, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.sroa.6.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ck, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.cl, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.sroa.12.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.cn, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ]
  %.sroa.15.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.cm, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ]
  %.sroa.18.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.co, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ]
  %i.cp = mul i32 %.sroa.0.0.lcssa, %.sroa.0.0.lcssa ; 3 uses
  %i.cq = shl i32 %i.cp, 6
  %i.cr = mul nuw i64 %.sroa.6.0.lcssa, %.sroa.6.0.lcssa
  %i.cs = mul nuw i64 %.sroa.9.0.lcssa, %.sroa.9.0.lcssa
  %i.ct = add i64 %i.cs, %i.cr                    ; 3 uses
  %i.cu = zext i32 %i.cq to i64
  %.not.i.i = icmp ult i64 %i.ct, %i.cu
  br i1 %.not.i.i, label %VP8SSIMFromStatsClipped.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge91
  %i.cv = mul i32 %i.cp, 60
  %i.cw = mul i32 %i.cp, 20
  %i.cx = mul nuw nsw i64 %.sroa.9.0.lcssa, %.sroa.6.0.lcssa ; 2 uses
  %i.cy = zext i32 %.sroa.0.0.lcssa to i64        ; 2 uses
  %i.cz = mul nuw nsw i64 %.sroa.15.0.lcssa, %i.cy
  %i.da = sub nsw i64 %i.cz, %i.cx
  %i.db = tail call i64 @llvm.smax.i64(i64 %i.da, i64 0)
  %i.dc = shl nuw i64 %i.db, 1
  %i.dd = zext i32 %i.cv to i64                   ; 2 uses
  %i.de = add i64 %i.dc, %i.dd
  %i.df = lshr i64 %i.de, 8
  %reass.add.i.i = add nuw nsw i64 %.sroa.18.0.lcssa, %.sroa.12.0.lcssa
  %reass.mul.i.i = mul i64 %reass.add.i.i, %i.cy
  %i.dg = sub i64 %i.dd, %i.ct
  %i.dh = add i64 %i.dg, %reass.mul.i.i
  %i.di = lshr i64 %i.dh, 8
  %i.dj = shl nuw nsw i64 %i.cx, 1
  %i.dk = zext i32 %i.cw to i64                   ; 2 uses
  %i.dl = add nuw nsw i64 %i.dj, %i.dk
  %i.dm = mul i64 %i.df, %i.dl
  %i.dn = add i64 %i.ct, %i.dk
  %i.do = mul i64 %i.di, %i.dn
  %i.dp = uitofp i64 %i.dm to double
  %i.dq = uitofp i64 %i.do to double
  %i.dr = fdiv double %i.dp, %i.dq
  br label %VP8SSIMFromStatsClipped.exit

VP8SSIMFromStatsClipped.exit:                     ; preds = %._crit_edge91, %bb.b
  %.0.i.i = phi double [ %i.dr, %bb.b ], [ 1.000000e+00, %._crit_edge91 ]
  ret double %.0.i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal double @SSIMGet_C(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = sext i32 %3 to i64
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.051 = phi ptr [ %0, %bb.a ], [ %i.dn, %.preheader ] ; 8 uses
  %.02650 = phi ptr [ %2, %bb.a ], [ %i.do, %.preheader ] ; 8 uses
  %.sroa.15.048 = phi i32 [ 0, %bb.a ], [ %i.dm, %.preheader ]
  %.sroa.12.047 = phi i32 [ 0, %bb.a ], [ %i.dk, %.preheader ]
  %.sroa.9.046 = phi i32 [ 0, %bb.a ], [ %i.di, %.preheader ]
  %.sroa.6.045 = phi i32 [ 0, %bb.a ], [ %i.dg, %.preheader ]
  %.sroa.3.044 = phi i32 [ 0, %bb.a ], [ %i.de, %.preheader ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @kWeight, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3    ; 7 uses
  %i.e = load i8, ptr %.051, align 1, !tbaa !17
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = load i8, ptr %.02650, align 1, !tbaa !17
  %i.h = zext i8 %i.g to i32                      ; 3 uses
  %i.i = mul i32 %i.d, %i.f                       ; 3 uses
  %i.j = add i32 %i.i, %.sroa.3.044
  %i.k = mul i32 %i.d, %i.h                       ; 2 uses
  %i.l = add i32 %i.k, %.sroa.6.045
  %i.m = mul i32 %i.i, %i.f
  %i.n = add i32 %i.m, %.sroa.9.046
  %i.o = mul i32 %i.i, %i.h
  %i.p = add i32 %i.o, %.sroa.12.047
  %i.q = mul i32 %i.k, %i.h
  %i.r = add i32 %i.q, %.sroa.15.048
  %i.s = shl i32 %i.d, 1                          ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.051, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02650, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !17
  %i.y = zext i8 %i.x to i32                      ; 3 uses
  %i.z = mul i32 %i.s, %i.v                       ; 3 uses
  %i.aa = add i32 %i.z, %i.j
  %i.ab = mul i32 %i.s, %i.y                      ; 2 uses
  %i.ac = add i32 %i.ab, %i.l
  %i.ad = mul i32 %i.z, %i.v
  %i.ae = add i32 %i.ad, %i.n
  %i.af = mul i32 %i.z, %i.y
  %i.ag = add i32 %i.af, %i.p
  %i.ah = mul i32 %i.ab, %i.y
  %i.ai = add i32 %i.ah, %i.r
  %i.aj = mul i32 %i.d, 3                         ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.051, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02650, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  %i.ap = zext i8 %i.ao to i32                    ; 3 uses
  %i.aq = mul i32 %i.aj, %i.am                    ; 3 uses
  %i.ar = add i32 %i.aq, %i.aa
  %i.as = mul i32 %i.aj, %i.ap                    ; 2 uses
  %i.at = add i32 %i.as, %i.ac
  %i.au = mul i32 %i.aq, %i.am
  %i.av = add i32 %i.au, %i.ae
  %i.aw = mul i32 %i.aq, %i.ap
  %i.ax = add i32 %i.aw, %i.ag
  %i.ay = mul i32 %i.as, %i.ap
  %i.az = add i32 %i.ay, %i.ai
  %i.ba = shl i32 %i.d, 2                         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.051, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !17
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02650, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = zext i8 %i.bf to i32                    ; 3 uses
  %i.bh = mul i32 %i.ba, %i.bd                    ; 3 uses
  %i.bi = add i32 %i.bh, %i.ar
  %i.bj = mul i32 %i.ba, %i.bg                    ; 2 uses
  %i.bk = add i32 %i.bj, %i.at
  %i.bl = mul i32 %i.bh, %i.bd
  %i.bm = add i32 %i.bl, %i.av
  %i.bn = mul i32 %i.bh, %i.bg
  %i.bo = add i32 %i.bn, %i.ax
  %i.bp = mul i32 %i.bj, %i.bg
  %i.bq = add i32 %i.bp, %i.az
  %i.br = getelementptr inbounds nuw i8, ptr %.051, i64 4
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !17
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.02650, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  %i.bw = zext i8 %i.bv to i32                    ; 3 uses
  %i.bx = mul i32 %i.aj, %i.bt                    ; 3 uses
  %i.by = add i32 %i.bx, %i.bi
  %i.bz = mul i32 %i.aj, %i.bw                    ; 2 uses
  %i.ca = add i32 %i.bz, %i.bk
  %i.cb = mul i32 %i.bx, %i.bt
  %i.cc = add i32 %i.cb, %i.bm
  %i.cd = mul i32 %i.bx, %i.bw
  %i.ce = add i32 %i.cd, %i.bo
  %i.cf = mul i32 %i.bz, %i.bw
  %i.cg = add i32 %i.cf, %i.bq
  %i.ch = getelementptr inbounds nuw i8, ptr %.051, i64 5
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !17
  %i.cj = zext i8 %i.ci to i32                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.02650, i64 5
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !17
  %i.cm = zext i8 %i.cl to i32                    ; 3 uses
  %i.cn = mul i32 %i.s, %i.cj                     ; 3 uses
  %i.co = add i32 %i.cn, %i.by
  %i.cp = mul i32 %i.s, %i.cm                     ; 2 uses
  %i.cq = add i32 %i.cp, %i.ca
  %i.cr = mul i32 %i.cn, %i.cj
  %i.cs = add i32 %i.cr, %i.cc
  %i.ct = mul i32 %i.cn, %i.cm
  %i.cu = add i32 %i.ct, %i.ce
  %i.cv = mul i32 %i.cp, %i.cm
  %i.cw = add i32 %i.cv, %i.cg
  %i.cx = getelementptr inbounds nuw i8, ptr %.051, i64 6
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !17
  %i.cz = zext i8 %i.cy to i32                    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.02650, i64 6
  %i.db = load i8, ptr %i.da, align 1, !tbaa !17
  %i.dc = zext i8 %i.db to i32                    ; 3 uses
  %i.dd = mul i32 %i.d, %i.cz                     ; 3 uses
  %i.de = add i32 %i.dd, %i.co                    ; 2 uses
  %i.df = mul i32 %i.d, %i.dc                     ; 2 uses
  %i.dg = add i32 %i.df, %i.cq                    ; 2 uses
  %i.dh = mul i32 %i.dd, %i.cz
  %i.di = add i32 %i.dh, %i.cs                    ; 2 uses
  %i.dj = mul i32 %i.dd, %i.dc
end_hunk_0
