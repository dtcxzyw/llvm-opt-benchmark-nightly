inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
@VP8SSIMDspInit.VP8SSIMDspInit_body_last_cpuinfo_used = internal global ptr @VP8SSIMDspInit.VP8SSIMDspInit_body_last_cpuinfo_used, align 8
@VP8SSIMDspInit.VP8SSIMDspInit_body_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@VP8GetCPUInfo = external local_unnamed_addr global ptr, align 8
@VP8SSIMGet = hidden local_unnamed_addr global ptr null, align 8
@VP8SSIMGetClipped = hidden local_unnamed_addr global ptr null, align 8
@VP8AccumulateSSE = hidden local_unnamed_addr global ptr null, align 8
@kWeight = internal unnamed_addr constant [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 3, i32 2, i32 1], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden double @VP8SSIMFromStats(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
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
define hidden double @VP8SSIMFromStatsClipped(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
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
define internal double @SSIMGetClipped_C(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %5, i32 3) ; 2 uses
  %i.b = add nsw i32 %i.a, -3                     ; 3 uses
  %i.c = add nsw i32 %5, 3
  %i.d = add nsw i32 %7, -1
  %i.e = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.d) ; 2 uses
  %i.f = tail call i32 @llvm.smax.i32(i32 %4, i32 3) ; 3 uses
  %i.g = add i32 %4, 3
  %i.h = add i32 %6, -1
  %i.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 2 uses
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
  %i.s = zext nneg i32 %i.f to i64                ; 3 uses
  %i.t = add nsw i64 %i.s, -3                     ; 4 uses
  %i.u = add nuw i32 %i.i, 1
  %i.v = zext nneg i32 %i.a to i64
  %i.w = add nsw i64 %i.v, -3
  %i.x = zext nneg i32 %i.e to i64
  %wide.trip.count = zext i32 %i.u to i64         ; 3 uses
  %i.y = add nuw nsw i64 %wide.trip.count, 2
  %i.z = sub nsw i64 %i.y, %i.s                   ; 2 uses
  %i.aa = sub i32 %i.f, %4                        ; 2 uses
  %invariant.op168 = sub i32 3, %5
  %i.ab = sub nsw i64 %wide.trip.count, %i.s
  %i.ac = add nsw i64 %i.ab, 3                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ac, 4
  %i.ad = trunc i64 %i.z to i32
  %i.ae = add i32 %i.aa, %i.ad
  %i.af = icmp slt i32 %i.ae, %i.aa
  %i.ag = icmp ugt i64 %i.z, 4294967295
  %i.ah = or i1 %i.af, %i.ag
  %n.vec = and i64 %i.ac, -4                      ; 3 uses
  %i.ai = add nsw i64 %i.t, %n.vec
  %invariant.op = sub i32 3, %4
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  %invariant.op167 = sub i32 3, %4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv112 = phi i64 [ %i.w, %.preheader.preheader ], [ %indvars.iv.next113, %._crit_edge ] ; 3 uses
  %.090 = phi ptr [ %i.o, %.preheader.preheader ], [ %i.cq, %._crit_edge ] ; 3 uses
  %.05189 = phi ptr [ %i.r, %.preheader.preheader ], [ %i.cr, %._crit_edge ] ; 3 uses
  %.sroa.18.087 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.15.086 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa125, %._crit_edge ] ; 3 uses
  %.sroa.12.085 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa126, %._crit_edge ] ; 3 uses
  %.sroa.9.084 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa127.a, %._crit_edge ] ; 3 uses
  %.sroa.6.083 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa128.a, %._crit_edge ] ; 3 uses
  %.sroa.0.082 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa129.a, %._crit_edge ] ; 3 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv112 to i32
  %.reass.reass.reass.reass = add i32 %i.aj, %invariant.op168
  %i.ak = sext i32 %.reass.reass.reass.reass to i64
  %i.al = getelementptr inbounds [4 x i8], ptr @kWeight, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  br i1 %i.ah, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.an = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.18.087, i64 0
  %i.ao = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.15.086, i64 0
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.12.085, i64 0
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.9.084, i64 0
  %i.ar = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.6.083, i64 0
  %i.as = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.0.082, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.an, %vector.ph ], [ %i.bm, %vector.body ]
  %vec.phi130 = phi <4 x i32> [ %i.ao, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi131 = phi <4 x i32> [ %i.ap, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi132 = phi <4 x i32> [ %i.aq, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi133 = phi <4 x i32> [ %i.ar, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi134 = phi <4 x i32> [ %i.as, %vector.ph ], [ %i.bc, %vector.body ]
  %i.at = add i64 %i.t, %index                    ; 3 uses
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.reass166 = add i32 %i.au, %invariant.op
  %i.av = sext i32 %.reass166 to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr @kWeight, i64 %i.av
  %wide.load = load <4 x i32>, ptr %i.aw, align 4, !tbaa !3
  %i.ax = mul <4 x i32> %broadcast.splat, %wide.load ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %.090, i64 %i.at
  %wide.load135 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !17
  %i.az = zext <4 x i8> %wide.load135 to <4 x i32> ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.05189, i64 %i.at
  %wide.load136 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !17
  %i.bb = zext <4 x i8> %wide.load136 to <4 x i32> ; 3 uses
  %i.bc = add <4 x i32> %i.ax, %vec.phi134        ; 2 uses
  %i.bd = mul <4 x i32> %i.ax, %i.az              ; 3 uses
  %i.be = add <4 x i32> %i.bd, %vec.phi133        ; 2 uses
  %i.bf = mul <4 x i32> %i.ax, %i.bb              ; 2 uses
  %i.bg = add <4 x i32> %i.bf, %vec.phi132        ; 2 uses
  %i.bh = mul <4 x i32> %i.bd, %i.az
  %i.bi = add <4 x i32> %i.bh, %vec.phi131        ; 2 uses
  %i.bj = mul <4 x i32> %i.bd, %i.bb
  %i.bk = add <4 x i32> %i.bj, %vec.phi130        ; 2 uses
  %i.bl = mul <4 x i32> %i.bf, %i.bb
  %i.bm = add <4 x i32> %i.bl, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %i.bo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bm) ; 2 uses
  %i.bp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bk) ; 2 uses
  %i.bq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bi) ; 2 uses
  %i.br = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bg) ; 2 uses
  %i.bs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.be) ; 2 uses
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bc) ; 2 uses
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %vector.scevcheck ], [ %i.t, %.preheader ], [ %i.ai, %middle.block ]
  %.sroa.18.174.ph = phi i32 [ %.sroa.18.087, %vector.scevcheck ], [ %.sroa.18.087, %.preheader ], [ %i.bo, %middle.block ]
  %.sroa.15.173.ph = phi i32 [ %.sroa.15.086, %vector.scevcheck ], [ %.sroa.15.086, %.preheader ], [ %i.bp, %middle.block ]
  %.sroa.12.172.ph = phi i32 [ %.sroa.12.085, %vector.scevcheck ], [ %.sroa.12.085, %.preheader ], [ %i.bq, %middle.block ]
  %.sroa.9.171.ph = phi i32 [ %.sroa.9.084, %vector.scevcheck ], [ %.sroa.9.084, %.preheader ], [ %i.br, %middle.block ]
  %.sroa.6.170.ph = phi i32 [ %.sroa.6.083, %vector.scevcheck ], [ %.sroa.6.083, %.preheader ], [ %i.bs, %middle.block ]
  %.sroa.0.169.ph = phi i32 [ %.sroa.0.082, %vector.scevcheck ], [ %.sroa.0.082, %.preheader ], [ %i.bt, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.sroa.18.174 = phi i32 [ %i.cp, %scalar.ph ], [ %.sroa.18.174.ph, %scalar.ph.preheader ]
  %.sroa.15.173 = phi i32 [ %i.cn, %scalar.ph ], [ %.sroa.15.173.ph, %scalar.ph.preheader ]
  %.sroa.12.172 = phi i32 [ %i.cl, %scalar.ph ], [ %.sroa.12.172.ph, %scalar.ph.preheader ]
  %.sroa.9.171 = phi i32 [ %i.cj, %scalar.ph ], [ %.sroa.9.171.ph, %scalar.ph.preheader ]
  %.sroa.6.170 = phi i32 [ %i.ch, %scalar.ph ], [ %.sroa.6.170.ph, %scalar.ph.preheader ]
  %.sroa.0.169 = phi i32 [ %i.cf, %scalar.ph ], [ %.sroa.0.169.ph, %scalar.ph.preheader ]
  %i.bu = trunc nuw nsw i64 %indvars.iv to i32
  %.reass.reass = add i32 %i.bu, %invariant.op167
  %i.bv = sext i32 %.reass.reass to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr @kWeight, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = mul i32 %i.am, %i.bx                    ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %.090, i64 %indvars.iv
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !17
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.05189, i64 %indvars.iv
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !17
  %i.ce = zext i8 %i.cd to i32                    ; 3 uses
  %i.cf = add i32 %i.by, %.sroa.0.169             ; 2 uses
  %i.cg = mul i32 %i.by, %i.cb                    ; 3 uses
  %i.ch = add i32 %i.cg, %.sroa.6.170             ; 2 uses
  %i.ci = mul i32 %i.by, %i.ce                    ; 2 uses
  %i.cj = add i32 %i.ci, %.sroa.9.171             ; 2 uses
  %i.ck = mul i32 %i.cg, %i.cb
  %i.cl = add i32 %i.ck, %.sroa.12.172            ; 2 uses
  %i.cm = mul i32 %i.cg, %i.ce
  %i.cn = add i32 %i.cm, %.sroa.15.173            ; 2 uses
  %i.co = mul i32 %i.ci, %i.ce
  %i.cp = add i32 %i.co, %.sroa.18.174            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa129.a = phi i32 [ %i.bt, %middle.block ], [ %i.cf, %scalar.ph ] ; 2 uses
  %.lcssa128.a = phi i32 [ %i.bs, %middle.block ], [ %i.ch, %scalar.ph ] ; 2 uses
  %.lcssa127.a = phi i32 [ %i.br, %middle.block ], [ %i.cj, %scalar.ph ] ; 2 uses
  %.lcssa126 = phi i32 [ %i.bq, %middle.block ], [ %i.cl, %scalar.ph ] ; 2 uses
  %.lcssa125 = phi i32 [ %i.bp, %middle.block ], [ %i.cn, %scalar.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.bo, %middle.block ], [ %i.cp, %scalar.ph ] ; 2 uses
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %i.cq = getelementptr inbounds i8, ptr %.090, i64 %i.k
  %i.cr = getelementptr inbounds i8, ptr %.05189, i64 %i.l
  %.not.not = icmp slt i64 %indvars.iv112, %i.x
  br i1 %.not.not, label %.preheader, label %._crit_edge91.loopexit105, !llvm.loop !23

._crit_edge91.loopexit105:                        ; preds = %._crit_edge
  %i.cs = zext i32 %.lcssa128.a to i64
  %i.ct = zext i32 %.lcssa127.a to i64
  %i.cu = zext i32 %.lcssa125 to i64
  %i.cv = zext i32 %.lcssa126 to i64
  %i.cw = zext i32 %.lcssa to i64
  br label %._crit_edge91

._crit_edge91:                                    ; preds = %.preheader.lr.ph, %._crit_edge91.loopexit105, %bb.a
  %.sroa.0.0.lcssa = phi i32 [ 0, %bb.a ], [ %.lcssa129.a, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.sroa.6.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.cs, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ct, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.sroa.12.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.cv, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ]
  %.sroa.15.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.cu, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ]
  %.sroa.18.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.cw, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ]
  %i.cx = mul i32 %.sroa.0.0.lcssa, %.sroa.0.0.lcssa ; 3 uses
  %i.cy = shl i32 %i.cx, 6
  %i.cz = mul nuw i64 %.sroa.6.0.lcssa, %.sroa.6.0.lcssa
  %i.da = mul nuw i64 %.sroa.9.0.lcssa, %.sroa.9.0.lcssa
  %i.db = add i64 %i.da, %i.cz                    ; 3 uses
  %i.dc = zext i32 %i.cy to i64
  %.not.i.i = icmp ult i64 %i.db, %i.dc
  br i1 %.not.i.i, label %VP8SSIMFromStatsClipped.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge91
  %i.dd = mul i32 %i.cx, 60
  %i.de = mul i32 %i.cx, 20
  %i.df = mul nuw nsw i64 %.sroa.9.0.lcssa, %.sroa.6.0.lcssa ; 2 uses
  %i.dg = zext i32 %.sroa.0.0.lcssa to i64        ; 2 uses
  %i.dh = mul nuw nsw i64 %.sroa.15.0.lcssa, %i.dg
  %i.di = sub nsw i64 %i.dh, %i.df
  %i.dj = tail call i64 @llvm.smax.i64(i64 %i.di, i64 0)
  %i.dk = shl nuw i64 %i.dj, 1
  %i.dl = zext i32 %i.dd to i64                   ; 2 uses
  %i.dm = add i64 %i.dk, %i.dl
  %i.dn = lshr i64 %i.dm, 8
  %reass.add.i.i = add nuw nsw i64 %.sroa.18.0.lcssa, %.sroa.12.0.lcssa
  %reass.mul.i.i = mul i64 %reass.add.i.i, %i.dg
  %i.do = sub i64 %i.dl, %i.db
  %i.dp = add i64 %i.do, %reass.mul.i.i
  %i.dq = lshr i64 %i.dp, 8
  %i.dr = shl nuw nsw i64 %i.df, 1
  %i.ds = zext i32 %i.de to i64                   ; 2 uses
  %i.dt = add nuw nsw i64 %i.dr, %i.ds
  %i.du = mul i64 %i.dn, %i.dt
  %i.dv = add i64 %i.db, %i.ds
  %i.dw = mul i64 %i.dq, %i.dv
  %i.dx = uitofp i64 %i.du to double
  %i.dy = uitofp i64 %i.dw to double
  %i.dz = fdiv double %i.dx, %i.dy
  br label %VP8SSIMFromStatsClipped.exit

VP8SSIMFromStatsClipped.exit:                     ; preds = %._crit_edge91, %bb.b
  %.0.i.i = phi double [ %i.dz, %bb.b ], [ 1.000000e+00, %._crit_edge91 ]
  ret double %.0.i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal double @SSIMGet_C(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
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
  %i.dk = add i32 %i.dj, %i.cu                    ; 2 uses
  %i.dl = mul i32 %i.df, %i.dc
  %i.dm = add i32 %i.dl, %i.cw                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.051, i64 %i.a
  %i.do = getelementptr inbounds i8, ptr %.02650, i64 %i.b
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !24

bb.b:                                             ; preds = %.preheader
  %i.dp = zext i32 %i.de to i64                   ; 3 uses
  %i.dq = mul nuw i64 %i.dp, %i.dp
  %i.dr = zext i32 %i.dg to i64                   ; 3 uses
  %i.ds = mul nuw i64 %i.dr, %i.dr
end_hunk_0
