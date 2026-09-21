Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/L_canny?download=true
begin_hunk_0_@DGaussianMask:bb.a
  %i.u = fptrunc <2 x double> %i.t to <2 x float>
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 2 uses
  %i.w = insertelement <2 x double> poison, double %i.p, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = extractelement <2 x double> %i.v, i64 0
  %i.z = extractelement <2 x double> %i.v, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %i.aa = phi i32 [ %i.m, %.lr.ph ], [ %i.bl, %bb.i ]
  %i.ab = phi i32 [ %i.k, %.lr.ph ], [ %i.bk, %bb.i ]
  %i.ac = phi i32 [ %i.l, %.lr.ph ], [ %i.bj, %bb.i ]
  %.050 = phi ptr [ %i.j, %.lr.ph ], [ %.1, %bb.i ] ; 2 uses
  %.04149 = phi i16 [ %i.n, %.lr.ph ], [ %i.bi, %bb.i ] ; 3 uses
  %i.ad = add nsw i32 %i.aa, %i.ac                ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = sitofp i16 %.04149 to double
  %i.ag = fadd double %i.af, 5.000000e-01         ; 2 uses
  %i.ah = fneg double %i.ag
  %i.ai = fmul double %i.ag, %i.ah
  %i.aj = fdiv double %i.ai, %i.p
  %i.ak = tail call double @exp(double noundef %i.aj) #7, !tbaa !7
  %i.al = fmul double %i.ak, %i.z
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.am = add nsw i32 %i.ab, -1
  %i.an = icmp eq i32 %i.ad, %i.am
  %i.ao = sitofp i16 %.04149 to double            ; 2 uses
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = fadd double %i.ao, -5.000000e-01        ; 2 uses
  %i.aq = fneg double %i.ap
  %i.ar = fmul double %i.ap, %i.aq
  %i.as = fdiv double %i.ar, %i.p
  %i.at = tail call double @exp(double noundef %i.as) #7, !tbaa !7
  %i.au = fmul double %i.at, %i.y
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.av = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fadd <2 x double> %i.aw, <double 5.000000e-01, double -5.000000e-01> ; 2 uses
  %i.ay = fneg <2 x double> %i.ax
  %i.az = fmul <2 x double> %i.ax, %i.ay
  %i.ba = fdiv <2 x double> %i.az, %i.x           ; 2 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 0
  %i.bc = tail call double @exp(double noundef %i.bb) #7, !tbaa !7
  %i.bd = extractelement <2 x double> %i.ba, i64 1
  %i.be = tail call double @exp(double noundef %i.bd) #7, !tbaa !7
  %i.bf = fsub double %i.bc, %i.be
  %i.bg = fdiv double %i.bf, %i.q
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g
  %.sink56 = phi double [ %i.al, %bb.e ], [ %i.bg, %bb.h ], [ %i.au, %bb.g ]
  %i.bh = fptrunc double %.sink56 to float
  store float %i.bh, ptr %.050, align 4, !tbaa !12
  %.1 = getelementptr inbounds nuw i8, ptr %.050, i64 4
  %i.bi = add i16 %.04149, 1                      ; 2 uses
  %i.bj = sext i16 %i.bi to i32                   ; 2 uses
  %i.bk = load i32, ptr %1, align 4, !tbaa !7     ; 2 uses
  %i.bl = sdiv i32 %i.bk, 2                       ; 2 uses
  %.not47 = icmp slt i32 %i.bl, %i.bj
  br i1 %.not47, label %._crit_edge, label %bb.d, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.i, %bb.c
  store ptr %i.j, ptr %2, align 8, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.b
  %.042 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.b ]
  ret i32 %.042
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @dfilter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %6, %5
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 4) #8 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %.preheader115

.preheader115:                                    ; preds = %bb.a
  %sext = shl i32 %6, 16
  %i.d = ashr exact i32 %sext, 16                 ; 5 uses
  %i.e = icmp slt i32 %i.d, 1                     ; 2 uses
  br i1 %i.e, label %._crit_edge124, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.preheader115
  %sext110 = shl i32 %5, 16
  %i.f = ashr exact i32 %sext110, 16              ; 5 uses
  %i.g = icmp slt i32 %i.f, 1
  %i.h = sdiv i32 %3, 2                           ; 4 uses
  %i.i = trunc i32 %i.h to i16
  %i.j = sub i16 0, %i.i                          ; 2 uses
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %.not111116 = icmp slt i32 %i.h, %i.k
  %or.cond = or i1 %i.g, %.not111116
  br i1 %or.cond, label %._crit_edge124, label %.preheader114.us

.preheader114.us:                                 ; preds = %.preheader114.lr.ph, %._crit_edge121.split.us129
  %i.l = phi i32 [ %i.ap, %._crit_edge121.split.us129 ], [ 0, %.preheader114.lr.ph ] ; 2 uses
  %.0123.us = phi ptr [ %i.ak, %._crit_edge121.split.us129 ], [ %i.c, %.preheader114.lr.ph ]
  %.088122.us = phi i16 [ %i.ao, %._crit_edge121.split.us129 ], [ 0, %.preheader114.lr.ph ]
  %i.m = add nsw i32 %i.l, 1
  %i.n = mul nsw i32 %i.m, %i.f
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = mul nsw i32 %i.l, %i.f                   ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.preheader114.us
  %i.u = phi i32 [ 0, %.preheader114.us ], [ %i.am, %._crit_edge.us ] ; 2 uses
  %.1119.us127 = phi ptr [ %.0123.us, %.preheader114.us ], [ %i.ak, %._crit_edge.us ] ; 3 uses
  %.086118.us128 = phi i16 [ 0, %.preheader114.us ], [ %i.al, %._crit_edge.us ]
  %i.v = add nsw i32 %i.u, %i.r
  %.1.promoted.us = load float, ptr %.1119.us127, align 4, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.us
  %i.w = phi float [ %.1.promoted.us, %.lr.ph.us ], [ %i.ah, %bb.e ]
  %i.x = phi i32 [ %i.k, %.lr.ph.us ], [ %i.aj, %bb.e ] ; 3 uses
  %.084117.us = phi i16 [ %i.j, %.lr.ph.us ], [ %i.ai, %bb.e ]
  %i.y = add nsw i32 %i.x, %i.u                   ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not112.us = icmp slt i32 %i.y, %i.f
  br i1 %.not112.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = add nsw i32 %i.v, %i.x
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.082.in.us = phi ptr [ %i.q, %bb.c ], [ %i.ac, %bb.d ], [ %i.t, %bb.b ]
  %.082.us = load float, ptr %.082.in.us, align 4, !tbaa !12
  %i.ad = sub nsw i32 %i.h, %i.x
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !12
  %i.ah = tail call float @llvm.fmuladd.f32(float %.082.us, float %i.ag, float %i.w) ; 2 uses
  store float %i.ah, ptr %.1119.us127, align 4, !tbaa !12
  %i.ai = add i16 %.084117.us, 1                  ; 2 uses
  %i.aj = sext i16 %i.ai to i32                   ; 2 uses
  %.not111.us = icmp slt i32 %i.h, %i.aj
  br i1 %.not111.us, label %._crit_edge.us, label %bb.b, !llvm.loop !20

._crit_edge.us:                                   ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.1119.us127, i64 4 ; 2 uses
  %i.al = add i16 %.086118.us128, 1               ; 2 uses
  %i.am = sext i16 %i.al to i32                   ; 2 uses
  %i.an = icmp sgt i32 %i.f, %i.am
  br i1 %i.an, label %.lr.ph.us, label %._crit_edge121.split.us129, !llvm.loop !21

._crit_edge121.split.us129:                       ; preds = %._crit_edge.us
  %i.ao = add i16 %.088122.us, 1                  ; 2 uses
  %i.ap = sext i16 %i.ao to i32                   ; 2 uses
  %i.aq = icmp sgt i32 %i.d, %i.ap
  br i1 %i.aq, label %.preheader114.us, label %._crit_edge124, !llvm.loop !22

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %8, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  br label %bb.l

._crit_edge124:                                   ; preds = %._crit_edge121.split.us129, %.preheader114.lr.ph, %.preheader115
  %i.ar = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 4) #8 ; 3 uses
  %.not106 = icmp eq ptr %i.ar, null
  br i1 %.not106, label %bb.k, label %.preheader113

.preheader113:                                    ; preds = %._crit_edge124
  %sext107 = shl i32 %5, 16
  %i.as = ashr exact i32 %sext107, 16             ; 4 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.preheader.lr.ph, label %._crit_edge139

.preheader.lr.ph:                                 ; preds = %.preheader113
  %i.au = sdiv i32 %4, 2                          ; 4 uses
  %i.av = trunc i32 %i.au to i16
  %i.aw = sub i16 0, %i.av                        ; 2 uses
  %i.ax = sext i16 %i.aw to i32                   ; 2 uses
  %i.ay = add nsw i32 %i.d, -1
  %i.az = mul nsw i32 %i.ay, %5
  %.not108132 = icmp slt i32 %i.au, %i.ax
  %or.cond169 = or i1 %i.e, %.not108132
  br i1 %or.cond169, label %._crit_edge139, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge137.split.us144
  %i.ba = phi i32 [ %i.bw, %._crit_edge137.split.us144 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.187138.us = phi i16 [ %i.bv, %._crit_edge137.split.us144 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.bb = add nsw i32 %i.ba, %i.az
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bc
  %i.be = sext i16 %.187138.us to i64             ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.be
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.ar, i64 %i.be
  br label %.lr.ph.us141

.lr.ph.us141:                                     ; preds = %._crit_edge.us143, %.preheader.us
  %9 = phi i32 [ 0, %.preheader.us ], [ %13, %._crit_edge.us143 ] ; 2 uses
  %.189135.us142 = phi i16 [ 0, %.preheader.us ], [ %12, %._crit_edge.us143 ]
  %10 = mul nsw i32 %9, %i.as
  %11 = sext i32 %10 to i64
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %11 ; 2 uses
  %.promoted.us = load float, ptr %gep.us, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.us141
  %i.bg = phi float [ %.promoted.us, %.lr.ph.us141 ], [ %i.bs, %bb.j ]
  %i.bh = phi i32 [ %i.ax, %.lr.ph.us141 ], [ %i.bu, %bb.j ] ; 2 uses
  %.185133.us = phi i16 [ %i.aw, %.lr.ph.us141 ], [ %i.bt, %bb.j ]
  %i.bi = add nsw i32 %i.bh, %9                   ; 3 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not109.us = icmp slt i32 %i.bi, %i.d
  br i1 %.not109.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = mul nuw nsw i32 %i.bi, %i.as
  %i.bl = add nsw i32 %i.bk, %i.ba
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bm
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.183.in.us = phi ptr [ %i.bd, %bb.h ], [ %i.bn, %bb.i ], [ %i.bf, %bb.g ]
  %.183.us = load float, ptr %.183.in.us, align 4, !tbaa !12
  %i.bo = sub nsw i32 %i.au, %i.bh
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = tail call float @llvm.fmuladd.f32(float %.183.us, float %i.br, float %i.bg) ; 2 uses
  %i.bt = add i16 %.185133.us, 1                  ; 2 uses
  %i.bu = sext i16 %i.bt to i32                   ; 2 uses
  %.not108.us = icmp slt i32 %i.au, %i.bu
  br i1 %.not108.us, label %._crit_edge.us143, label %bb.g, !llvm.loop !23

._crit_edge.us143:                                ; preds = %bb.j
  store float %i.bs, ptr %gep.us, align 4, !tbaa !12
  %12 = add i16 %.189135.us142, 1                 ; 2 uses
  %13 = sext i16 %12 to i32                       ; 2 uses
  %14 = icmp sgt i32 %i.d, %13
  br i1 %14, label %.lr.ph.us141, label %._crit_edge137.split.us144, !llvm.loop !24

._crit_edge137.split.us144:                       ; preds = %._crit_edge.us143
  %i.bv = add i16 %.187138.us, 1                  ; 2 uses
  %i.bw = sext i16 %i.bv to i32                   ; 2 uses
  %i.bx = icmp sgt i32 %i.as, %i.bw
  br i1 %i.bx, label %.preheader.us, label %._crit_edge139, !llvm.loop !25

bb.k:                                             ; preds = %._crit_edge124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %8, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  br label %bb.l

._crit_edge139:                                   ; preds = %._crit_edge137.split.us144, %.preheader.lr.ph, %.preheader113
  store ptr %i.ar, ptr %7, align 8, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge139, %bb.k, %bb.f
  %.090 = phi i32 [ 0, %._crit_edge139 ], [ 1, %bb.k ], [ 1, %bb.f ]
  ret i32 %.090
}

; Function Attrs: nofree nounwind memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @dnon_max(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = mul nsw i32 %4, %3
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 4) #8 ; 2 uses
  %i.d = icmp sgt i32 %4, 3
  %i.e = icmp sgt i32 %3, 3
  %or.cond123 = and i1 %i.d, %i.e
  br i1 %or.cond123, label %.preheader.preheader, label %._crit_edge104.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i32 %4, -2
  %i.g = add nsw i32 %3, -2
  %i.h = zext nneg i32 %3 to i64                  ; 3 uses
  %wide.trip.count109 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext i32 %i.g to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv106 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next107, %._crit_edge ] ; 3 uses
  %i.i = mul nuw nsw i64 %indvars.iv106, %i.h
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 3 uses
  %i.j = mul nuw nsw i64 %indvars.iv.next107, %i.h ; 2 uses
  %i.k = add nsw i64 %indvars.iv106, -1
  %i.l = mul nuw nsw i64 %i.k, %i.h               ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.j
  %invariant.gep116 = getelementptr [4 x i8], ptr %0, i64 %i.l
  %invariant.gep118 = getelementptr [4 x i8], ptr %0, i64 %i.j
  %invariant.gep120 = getelementptr [4 x i8], ptr %0, i64 %i.l
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.j
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %i.m = add nuw nsw i64 %indvars.iv, %i.i        ; 5 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !tbaa !12 ; 2 uses
  %i.p = tail call float @llvm.fabs.f32(float %i.o)
  %i.q = fpext float %i.p to double
  %or.cond = fcmp ugt double %i.q, 1.000000e-08
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr [4 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -4
  %i.t = load float, ptr %i.s, align 4, !tbaa !12
  %i.u = getelementptr i8, ptr %i.r, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !12
  %i.w = insertelement <2 x float> poison, float %i.t, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.v, i64 1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.m
  %i.z = load float, ptr %i.y, align 4, !tbaa !12
  %i.aa = fdiv float %i.z, %i.o                   ; 5 uses
  %i.ab = fpext float %i.aa to double             ; 4 uses
  %i.ac = fcmp oge float %i.aa, 0.000000e+00
  %i.ad = fcmp olt double %i.ab, 4.000000e-01
  %or.cond100 = and i1 %i.ac, %i.ad
  br i1 %or.cond100, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %gep119 = getelementptr [4 x i8], ptr %invariant.gep118, i64 %indvars.iv
  %i.ae = fsub double 1.000000e+00, %i.ab
  %gep121 = getelementptr [4 x i8], ptr %invariant.gep120, i64 %indvars.iv
  %i.af = getelementptr i8, ptr %gep121, i64 -4
  %i.ag = load <2 x float>, ptr %gep119, align 4, !tbaa !12 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !12 ; 2 uses
  %i.ai = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = shufflevector <2 x float> %i.ag, <2 x float> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.al = fmul <2 x float> %i.aj, %i.ak
  %i.am = fpext <2 x float> %i.al to <2 x double>
  %i.an = shufflevector <2 x float> %i.ag, <2 x float> %i.ah, <2 x i32> <i32 0, i32 3>
  %i.ao = fpext <2 x float> %i.an to <2 x double>
  %i.ap = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.ao, <2 x double> %i.am)
  %i.as = fptrunc <2 x double> %i.ar to <2 x float>
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.at = fcmp ole float %i.aa, 0.000000e+00
  %i.au = fcmp ogt double %i.ab, -4.000000e-01
  %or.cond101 = and i1 %i.at, %i.au
  br i1 %or.cond101, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.av = getelementptr i8, ptr %gep, i64 -4
  %i.aw = fadd double %i.ab, 1.000000e+00
  %gep117 = getelementptr [4 x i8], ptr %invariant.gep116, i64 %indvars.iv
  %i.ax = load <2 x float>, ptr %i.av, align 4, !tbaa !12 ; 2 uses
  %i.ay = load <2 x float>, ptr %gep117, align 4, !tbaa !12 ; 2 uses
  %i.az = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 0, i32 3>
  %i.ba = fneg <2 x float> %i.az
  %i.bb = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x float> %i.bc, %i.ba
  %i.be = fpext <2 x float> %i.bd to <2 x double>
  %i.bf = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 1, i32 2>
  %i.bg = fpext <2 x float> %i.bf to <2 x double>
  %i.bh = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bg, <2 x double> %i.be)
  %i.bk = fptrunc <2 x double> %i.bj to <2 x float>
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.c
  %i.bl = phi <2 x float> [ %i.x, %bb.c ], [ %i.as, %bb.e ], [ %i.bk, %bb.g ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !12
  %i.bo = fpext float %i.bn to double             ; 2 uses
  %i.bp = extractelement <2 x float> %i.bl, i64 0
  %i.bq = fpext float %i.bp to double
  %i.br = fadd double %i.bq, 1.000000e-08
  %i.bs = fcmp olt double %i.br, %i.bo
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = extractelement <2 x float> %i.bl, i64 1
  %i.bu = fpext float %i.bt to double
  %i.bv = fadd double %i.bu, 1.000000e-08
  %i.bw = fcmp olt double %i.bv, %i.bo
  br i1 %i.bw, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.f
  %.sink = phi float [ 0.000000e+00, %bb.f ], [ 2.550000e+02, %bb.i ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.m
  store float %.sink, ptr %i.bx, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.j
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge104.split, label %.preheader, !llvm.loop !27

._crit_edge104.split:                             ; preds = %._crit_edge, %bb.a
  ret ptr %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
end_hunk_0
