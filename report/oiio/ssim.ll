inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
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
  %8 = add nsw i64 %i.ab, 3                       ; 3 uses
  %min.iters.check = icmp ult i64 %8, 4
  %i.ac = trunc i64 %i.z to i32
  %i.ad = add i32 %i.aa, %i.ac
  %i.ae = icmp slt i32 %i.ad, %i.aa
  %i.af = icmp ugt i64 %i.z, 4294967295
  %i.ag = or i1 %i.ae, %i.af
  %n.vec = and i64 %8, -4                         ; 3 uses
  %i.ah = add nsw i64 %i.t, %n.vec
  %invariant.op = sub i32 3, %4
  %cmp.n = icmp eq i64 %8, %n.vec
  %invariant.op167 = sub i32 3, %4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv112 = phi i64 [ %i.w, %.preheader.preheader ], [ %indvars.iv.next113, %._crit_edge ] ; 3 uses
  %.090 = phi ptr [ %i.o, %.preheader.preheader ], [ %i.cp, %._crit_edge ] ; 3 uses
  %.05189 = phi ptr [ %i.r, %.preheader.preheader ], [ %i.cq, %._crit_edge ] ; 3 uses
  %.sroa.18.087 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.15.086 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa125, %._crit_edge ] ; 3 uses
  %.sroa.12.085 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa126, %._crit_edge ] ; 3 uses
  %.sroa.9.084 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa127, %._crit_edge ] ; 3 uses
  %.sroa.6.083 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa128, %._crit_edge ] ; 3 uses
  %.sroa.0.082 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa129, %._crit_edge ] ; 3 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv112 to i32
  %.reass.reass.reass.reass = add i32 %i.ai, %invariant.op168
  %i.aj = sext i32 %.reass.reass.reass.reass to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr @kWeight, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3  ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  br i1 %i.ag, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.am = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.18.087, i64 0
  %i.an = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.15.086, i64 0
  %i.ao = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.12.085, i64 0
  %i.ap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.9.084, i64 0
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.6.083, i64 0
  %i.ar = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.0.082, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.am, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.phi130 = phi <4 x i32> [ %i.an, %vector.ph ], [ %i.bj, %vector.body ]
  %vec.phi131 = phi <4 x i32> [ %i.ao, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi132 = phi <4 x i32> [ %i.ap, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi133 = phi <4 x i32> [ %i.aq, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi134 = phi <4 x i32> [ %i.ar, %vector.ph ], [ %i.bb, %vector.body ]
  %i.as = add i64 %i.t, %index                    ; 3 uses
  %i.at = trunc nuw nsw i64 %i.as to i32
  %.reass166 = add i32 %i.at, %invariant.op
  %i.au = sext i32 %.reass166 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr @kWeight, i64 %i.au
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !3
  %i.aw = mul <4 x i32> %broadcast.splat, %wide.load ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.090, i64 %i.as
  %wide.load135 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !17
  %i.ay = zext <4 x i8> %wide.load135 to <4 x i32> ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.05189, i64 %i.as
  %wide.load136 = load <4 x i8>, ptr %i.az, align 1, !tbaa !17
  %i.ba = zext <4 x i8> %wide.load136 to <4 x i32> ; 3 uses
  %i.bb = add <4 x i32> %i.aw, %vec.phi134        ; 2 uses
  %i.bc = mul <4 x i32> %i.aw, %i.ay              ; 3 uses
  %i.bd = add <4 x i32> %i.bc, %vec.phi133        ; 2 uses
  %i.be = mul <4 x i32> %i.aw, %i.ba              ; 2 uses
  %i.bf = add <4 x i32> %i.be, %vec.phi132        ; 2 uses
  %i.bg = mul <4 x i32> %i.bc, %i.ay
  %i.bh = add <4 x i32> %i.bg, %vec.phi131        ; 2 uses
  %i.bi = mul <4 x i32> %i.bc, %i.ba
  %i.bj = add <4 x i32> %i.bi, %vec.phi130        ; 2 uses
  %i.bk = mul <4 x i32> %i.be, %i.ba
  %i.bl = add <4 x i32> %i.bk, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %i.bn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bl) ; 2 uses
  %i.bo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bj) ; 2 uses
  %i.bp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bh) ; 2 uses
  %i.bq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bf) ; 2 uses
  %i.br = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bd) ; 2 uses
  %i.bs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bb) ; 2 uses
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %vector.scevcheck ], [ %i.t, %.preheader ], [ %i.ah, %middle.block ]
  %.sroa.18.174.ph = phi i32 [ %.sroa.18.087, %vector.scevcheck ], [ %.sroa.18.087, %.preheader ], [ %i.bn, %middle.block ]
  %.sroa.15.173.ph = phi i32 [ %.sroa.15.086, %vector.scevcheck ], [ %.sroa.15.086, %.preheader ], [ %i.bo, %middle.block ]
  %.sroa.12.172.ph = phi i32 [ %.sroa.12.085, %vector.scevcheck ], [ %.sroa.12.085, %.preheader ], [ %i.bp, %middle.block ]
  %.sroa.9.171.ph = phi i32 [ %.sroa.9.084, %vector.scevcheck ], [ %.sroa.9.084, %.preheader ], [ %i.bq, %middle.block ]
  %.sroa.6.170.ph = phi i32 [ %.sroa.6.083, %vector.scevcheck ], [ %.sroa.6.083, %.preheader ], [ %i.br, %middle.block ]
  %.sroa.0.169.ph = phi i32 [ %.sroa.0.082, %vector.scevcheck ], [ %.sroa.0.082, %.preheader ], [ %i.bs, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.sroa.18.174 = phi i32 [ %i.co, %scalar.ph ], [ %.sroa.18.174.ph, %scalar.ph.preheader ]
  %.sroa.15.173 = phi i32 [ %i.cm, %scalar.ph ], [ %.sroa.15.173.ph, %scalar.ph.preheader ]
  %.sroa.12.172 = phi i32 [ %i.ck, %scalar.ph ], [ %.sroa.12.172.ph, %scalar.ph.preheader ]
  %.sroa.9.171 = phi i32 [ %i.ci, %scalar.ph ], [ %.sroa.9.171.ph, %scalar.ph.preheader ]
  %.sroa.6.170 = phi i32 [ %i.cg, %scalar.ph ], [ %.sroa.6.170.ph, %scalar.ph.preheader ]
  %.sroa.0.169 = phi i32 [ %i.ce, %scalar.ph ], [ %.sroa.0.169.ph, %scalar.ph.preheader ]
  %i.bt = trunc nuw nsw i64 %indvars.iv to i32
  %.reass.reass = add i32 %i.bt, %invariant.op167
  %i.bu = sext i32 %.reass.reass to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr @kWeight, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = mul i32 %i.al, %i.bw                    ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.090, i64 %indvars.iv
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !17
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %.05189, i64 %indvars.iv
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !17
  %i.cd = zext i8 %i.cc to i32                    ; 3 uses
  %i.ce = add i32 %i.bx, %.sroa.0.169             ; 2 uses
  %i.cf = mul i32 %i.bx, %i.ca                    ; 3 uses
  %i.cg = add i32 %i.cf, %.sroa.6.170             ; 2 uses
  %i.ch = mul i32 %i.bx, %i.cd                    ; 2 uses
  %i.ci = add i32 %i.ch, %.sroa.9.171             ; 2 uses
  %i.cj = mul i32 %i.cf, %i.ca
  %i.ck = add i32 %i.cj, %.sroa.12.172            ; 2 uses
  %i.cl = mul i32 %i.cf, %i.cd
  %i.cm = add i32 %i.cl, %.sroa.15.173            ; 2 uses
  %i.cn = mul i32 %i.ch, %i.cd
  %i.co = add i32 %i.cn, %.sroa.18.174            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa129 = phi i32 [ %i.bs, %middle.block ], [ %i.ce, %scalar.ph ] ; 2 uses
  %.lcssa128 = phi i32 [ %i.br, %middle.block ], [ %i.cg, %scalar.ph ] ; 2 uses
  %.lcssa127 = phi i32 [ %i.bq, %middle.block ], [ %i.ci, %scalar.ph ] ; 2 uses
  %.lcssa126 = phi i32 [ %i.bp, %middle.block ], [ %i.ck, %scalar.ph ] ; 2 uses
  %.lcssa125 = phi i32 [ %i.bo, %middle.block ], [ %i.cm, %scalar.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.bn, %middle.block ], [ %i.co, %scalar.ph ] ; 2 uses
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %i.cp = getelementptr inbounds i8, ptr %.090, i64 %i.k
  %i.cq = getelementptr inbounds i8, ptr %.05189, i64 %i.l
  %.not.not = icmp slt i64 %indvars.iv112, %i.x
  br i1 %.not.not, label %.preheader, label %._crit_edge91.loopexit105, !llvm.loop !23

._crit_edge91.loopexit105:                        ; preds = %._crit_edge
  %i.cr = zext i32 %.lcssa128 to i64
  %i.cs = zext i32 %.lcssa127 to i64
  %i.ct = zext i32 %.lcssa125 to i64
  %i.cu = zext i32 %.lcssa126 to i64
  %i.cv = zext i32 %.lcssa to i64
  br label %._crit_edge91

._crit_edge91:                                    ; preds = %.preheader.lr.ph, %._crit_edge91.loopexit105, %bb.a
  %.sroa.0.0.lcssa = phi i32 [ 0, %bb.a ], [ %.lcssa129, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.sroa.6.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.cr, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.cs, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.sroa.12.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.cu, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ]
  %.sroa.15.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ct, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ]
  %.sroa.18.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.cv, %._crit_edge91.loopexit105 ], [ 0, %.preheader.lr.ph ]
  %i.cw = mul i32 %.sroa.0.0.lcssa, %.sroa.0.0.lcssa ; 3 uses
  %i.cx = shl i32 %i.cw, 6
  %i.cy = mul nuw i64 %.sroa.6.0.lcssa, %.sroa.6.0.lcssa
  %i.cz = mul nuw i64 %.sroa.9.0.lcssa, %.sroa.9.0.lcssa
  %i.da = add i64 %i.cz, %i.cy                    ; 3 uses
  %i.db = zext i32 %i.cx to i64
  %.not.i.i = icmp ult i64 %i.da, %i.db
  br i1 %.not.i.i, label %VP8SSIMFromStatsClipped.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge91
  %i.dc = mul i32 %i.cw, 60
  %i.dd = mul i32 %i.cw, 20
  %i.de = mul nuw nsw i64 %.sroa.9.0.lcssa, %.sroa.6.0.lcssa ; 2 uses
  %i.df = zext i32 %.sroa.0.0.lcssa to i64        ; 2 uses
  %i.dg = mul nuw nsw i64 %.sroa.15.0.lcssa, %i.df
  %i.dh = sub nsw i64 %i.dg, %i.de
  %i.di = tail call i64 @llvm.smax.i64(i64 %i.dh, i64 0)
  %i.dj = shl nuw i64 %i.di, 1
  %i.dk = zext i32 %i.dc to i64                   ; 2 uses
  %i.dl = add i64 %i.dj, %i.dk
  %i.dm = lshr i64 %i.dl, 8
  %reass.add.i.i = add nuw nsw i64 %.sroa.18.0.lcssa, %.sroa.12.0.lcssa
  %reass.mul.i.i = mul i64 %reass.add.i.i, %i.df
  %i.dn = sub i64 %i.dk, %i.da
  %i.do = add i64 %i.dn, %reass.mul.i.i
  %i.dp = lshr i64 %i.do, 8
  %i.dq = shl nuw nsw i64 %i.de, 1
  %i.dr = zext i32 %i.dd to i64                   ; 2 uses
  %i.ds = add nuw nsw i64 %i.dq, %i.dr
  %i.dt = mul i64 %i.dm, %i.ds
  %i.du = add i64 %i.da, %i.dr
  %i.dv = mul i64 %i.dp, %i.du
  %i.dw = uitofp i64 %i.dt to double
  %i.dx = uitofp i64 %i.dv to double
  %i.dy = fdiv double %i.dw, %i.dx
  br label %VP8SSIMFromStatsClipped.exit

VP8SSIMFromStatsClipped.exit:                     ; preds = %._crit_edge91, %bb.b
  %.0.i.i = phi double [ %i.dy, %bb.b ], [ 1.000000e+00, %._crit_edge91 ]
  ret double %.0.i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal double @SSIMGet_C(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = sext i32 %3 to i64
  br label %.preheader
end_hunk_0
