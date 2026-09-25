Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/hxprops?download=true
inline.NumInlined: 101
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z6radiusP8_IO_FILEiPKiPA3_f:bb.a
  br label %._crit_edge.thread

._crit_edge.thread.loopexit.unr-lcssa:            ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv26.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next27.3, %._crit_edge.thread.loopexit.unr-lcssa ]
  %.01721.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.ak, %._crit_edge.thread.loopexit.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %indvars.iv26.epil = phi i64 [ %indvars.iv.next27.epil, %.lr.ph.split.us.epil ], [ %indvars.iv26.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %.01721.us.epil = phi float [ %i.bc, %.lr.ph.split.us.epil ], [ %.01721.us.epil.init, %.lr.ph.split.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv26.epil
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !14
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ax
  %i.az = load <2 x float>, ptr %i.ay, align 4, !tbaa !10 ; 2 uses
  %i.ba = fmul <2 x float> %i.az, %i.az           ; 2 uses
  %shift.epil = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.epil = fadd <2 x float> %i.ba, %shift.epil
  %i.bb = extractelement <2 x float> %foldExtExtBinop.epil, i64 0
  %i.bc = fadd float %.01721.us.epil, %i.bb       ; 2 uses
  %indvars.iv.next27.epil = add nuw nsw i64 %indvars.iv26.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread, label %.lr.ph.split.us.epil, !llvm.loop !54

._crit_edge.thread:                               ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %._crit_edge.thread35, %._crit_edge
  %.017.lcssa34 = phi float [ 0.000000e+00, %._crit_edge ], [ %.017.lcssa38, %._crit_edge.thread35 ], [ %i.ak, %._crit_edge.thread.loopexit.unr-lcssa ], [ %i.bc, %.lr.ph.split.us.epil ]
  %i.bd = sitofp i32 %1 to float
  %i.be = fdiv float %.017.lcssa34, %i.bd
  %i.bf = tail call noundef float @sqrtf(float noundef %i.be) #20
  ret float %i.bf
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define noundef float @_Z5twistiPKiPA3_f(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !14
  %wide.trip.count = zext nneg i32 %0 to i64
  %.phi.trans.insert = sext i32 %i.b to i64
  %.phi.trans.insert28 = getelementptr inbounds [12 x i8], ptr %2, i64 %.phi.trans.insert ; 2 uses
  %.val.pre = load float, ptr %.phi.trans.insert28, align 4, !tbaa !10 ; 2 uses
  %.phi.trans.insert30 = getelementptr i8, ptr %.phi.trans.insert28, i64 4
  %.val21.pre = load float, ptr %.phi.trans.insert30, align 4, !tbaa !10 ; 2 uses
  %i.c = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %i.d = icmp eq i32 %0, 2
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.val21 = phi float [ %.val21.pre, %.lr.ph.preheader.new ], [ %.val23.1, %.lr.ph ]
  %.val = phi float [ %.val.pre, %.lr.ph.preheader.new ], [ %.val22.1, %.lr.ph ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.01824 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.as, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !14
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [12 x i8], ptr %2, i64 %i.g ; 2 uses
  %.val22 = load float, ptr %i.h, align 4, !tbaa !10 ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val23 = load float, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.j = tail call noundef float @atan2f(float noundef %.val21, float noundef %.val) #20 ; 2 uses
  %i.k = tail call noundef float @cosf(float noundef %i.j) #20 ; 2 uses
  %i.l = tail call noundef float @sinf(float noundef %i.j) #20 ; 2 uses
  %i.m = fmul float %.val23, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.k, float %.val22, float %i.m)
  %i.o = fneg float %i.l
  %i.p = fmul float %.val23, %i.k
  %i.q = tail call float @llvm.fmuladd.f32(float %i.o, float %.val22, float %i.p)
  %i.r = tail call noundef float @atan2f(float noundef %i.q, float noundef %i.n) #20
  %i.s = fpext float %i.r to double
  %i.t = fmul double %i.s, f0x404CA5DC1A63C1F8    ; 2 uses
  %i.u = fptrunc double %i.t to float             ; 2 uses
  %i.v = fcmp olt double %i.t, f0xC056800010000000
  %i.w = fadd float %i.u, 3.600000e+02
  %spec.select = select i1 %i.v, float %i.w, float %i.u
  %i.x = fadd float %.01824, %spec.select
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [12 x i8], ptr %2, i64 %i.ab ; 2 uses
  %.val22.1 = load float, ptr %i.ac, align 4, !tbaa !10 ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.val23.1 = load float, ptr %i.ad, align 4, !tbaa !10 ; 4 uses
  %i.ae = tail call noundef float @atan2f(float noundef %.val23, float noundef %.val22) #20 ; 2 uses
  %i.af = tail call noundef float @cosf(float noundef %i.ae) #20 ; 2 uses
  %i.ag = tail call noundef float @sinf(float noundef %i.ae) #20 ; 2 uses
  %i.ah = fmul float %.val23.1, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.af, float %.val22.1, float %i.ah)
  %i.aj = fneg float %i.ag
  %i.ak = fmul float %.val23.1, %i.af
  %i.al = tail call float @llvm.fmuladd.f32(float %i.aj, float %.val22.1, float %i.ak)
  %i.am = tail call noundef float @atan2f(float noundef %i.al, float noundef %i.ai) #20
  %i.an = fpext float %i.am to double
  %i.ao = fmul double %i.an, f0x404CA5DC1A63C1F8  ; 2 uses
  %i.ap = fptrunc double %i.ao to float           ; 2 uses
  %i.aq = fcmp olt double %i.ao, f0xC056800010000000
  %i.ar = fadd float %i.ap, 3.600000e+02
  %spec.select.1 = select i1 %i.aq, float %i.ar, float %i.ap
  %i.as = fadd float %i.x, %spec.select.1         ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !55

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.val21.epil.init = phi float [ %.val21.pre, %.lr.ph.preheader ], [ %.val23.1, %._crit_edge.loopexit.unr-lcssa ]
  %.val.epil.init = phi float [ %.val.pre, %.lr.ph.preheader ], [ %.val22.1, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01824.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod33 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.au = load i32, ptr %i.at, align 4, !tbaa !14
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [12 x i8], ptr %2, i64 %i.av ; 2 uses
  %.val22.epil = load float, ptr %i.aw, align 4, !tbaa !10 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %.val23.epil = load float, ptr %i.ax, align 4, !tbaa !10 ; 2 uses
  %i.ay = tail call noundef float @atan2f(float noundef %.val21.epil.init, float noundef %.val.epil.init) #20 ; 2 uses
  %i.az = tail call noundef float @cosf(float noundef %i.ay) #20 ; 2 uses
  %i.ba = tail call noundef float @sinf(float noundef %i.ay) #20 ; 2 uses
  %i.bb = fmul float %.val23.epil, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.az, float %.val22.epil, float %i.bb)
  %i.bd = fneg float %i.ba
  %i.be = fmul float %.val23.epil, %i.az
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bd, float %.val22.epil, float %i.be)
  %i.bg = tail call noundef float @atan2f(float noundef %i.bf, float noundef %i.bc) #20
  %i.bh = fpext float %i.bg to double
  %i.bi = fmul double %i.bh, f0x404CA5DC1A63C1F8  ; 2 uses
  %i.bj = fptrunc double %i.bi to float           ; 2 uses
  %i.bk = fcmp olt double %i.bi, f0xC056800010000000
  %i.bl = fadd float %i.bj, 3.600000e+02
  %spec.select.epil = select i1 %i.bk, float %i.bl, float %i.bj
  %i.bm = fadd float %.01824.epil.init, %spec.select.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.018.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ], [ %i.bm, %.lr.ph.epil.preheader ]
  %i.bn = add nsw i32 %0, -1
  %i.bo = sitofp i32 %i.bn to float
  %i.bp = fdiv float %.018.lcssa, %i.bo
  ret float %i.bp
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef float @_Z6ca_phiiPKiPA3_f(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca [3 x float], align 4              ; 3 uses
  %i.e = alloca [3 x float], align 4              ; 3 uses
  %i.f = alloca [3 x float], align 4              ; 3 uses
  %i.g = alloca [3 x float], align 4              ; 3 uses
  %i.h = alloca [3 x float], align 4              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.i = icmp slt i32 %0, 5
  br i1 %i.i, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = add nsw i32 %0, -4
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02427 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ae, %.lr.ph ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.n = load i32, ptr %i.m, align 4, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14
  %i.s = sext i32 %i.l to i64
  %i.t = getelementptr inbounds [12 x i8], ptr %2, i64 %i.s
  %i.u = sext i32 %i.n to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %2, i64 %i.u
  %i.w = sext i32 %i.p to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %2, i64 %i.w
  %i.y = sext i32 %i.r to i64
  %i.z = getelementptr inbounds [12 x i8], ptr %2, i64 %i.y
  %i.aa = call noundef float @_Z9dih_anglePKfS0_S0_S0_PK5t_pbcPfS4_S4_S4_S4_PiS5_S5_(ptr noundef %i.t, ptr noundef %i.v, ptr noundef %i.x, ptr noundef %i.z, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.ab = fpext float %i.aa to double
  %i.ac = fmul double %i.ab, f0x404CA5DC1A63C1F8
  %i.ad = fptrunc double %i.ac to float
  %i.ae = fadd float %.02427, %i.ad               ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !56

._crit_edge:                                      ; preds = %.lr.ph
  %i.af = fpext float %i.ae to double
  %i.ag = uitofp nneg i32 %0 to double
  %3 = fadd double %i.ag, -4.000000e+00
  %i.ah = fdiv double %i.af, %3
  %i.ai = fptrunc double %i.ah to float
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %.025 = phi float [ %i.ai, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret float %.025
}

declare noundef float @_Z9dih_anglePKfS0_S0_S0_PK5t_pbcPfS4_S4_S4_S4_PiS5_S5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_Z3dipiPKiPA3_KfPK6t_atom(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.b = icmp ult i32 %0, 4
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.10.0 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %i.c = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bg, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds [36 x i8], ptr %3, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !59 ; 2 uses
  %i.j = getelementptr inbounds [12 x i8], ptr %2, i64 %i.f ; 2 uses
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !10
  %i.l = insertelement <2 x float> poison, float %i.i, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.m, <2 x float> %i.c)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !10
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float %i.i, float %.sroa.10.0)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds [36 x i8], ptr %3, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !59 ; 2 uses
  %i.y = getelementptr inbounds [12 x i8], ptr %2, i64 %i.u ; 2 uses
  %i.z = load <2 x float>, ptr %i.y, align 4, !tbaa !10
  %i.aa = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.ab, <2 x float> %i.n)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !10
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.x, float %i.q)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !14
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [36 x i8], ptr %3, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !59 ; 2 uses
  %i.an = getelementptr inbounds [12 x i8], ptr %2, i64 %i.aj ; 2 uses
  %i.ao = load <2 x float>, ptr %i.an, align 4, !tbaa !10
  %i.ap = insertelement <2 x float> poison, float %i.am, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.aq, <2 x float> %i.ac)
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !10
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.am, float %i.af)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !14
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds [36 x i8], ptr %3, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !59 ; 2 uses
  %i.bc = getelementptr inbounds [12 x i8], ptr %2, i64 %i.ay ; 2 uses
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !tbaa !10
  %i.be = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bf, <2 x float> %i.ar) ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !10
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bb, float %i.au) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !57

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.10.0.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bg, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.10.0.epil = phi float [ %.sroa.10.0.epil.init, %.lr.ph.epil.preheader ], [ %i.by, %.lr.ph.epil ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %i.bk = phi <2 x float> [ %.epil.init, %.lr.ph.epil.preheader ], [ %i.bv, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !14
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [36 x i8], ptr %3, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !59 ; 2 uses
  %i.br = getelementptr inbounds [12 x i8], ptr %2, i64 %i.bn ; 2 uses
  %i.bs = load <2 x float>, ptr %i.br, align 4, !tbaa !10
  %i.bt = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bu, <2 x float> %i.bk) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !10
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bq, float %.sroa.10.0.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !58

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa26 = phi <2 x float> [ %i.bg, %._crit_edge.loopexit.unr-lcssa ], [ %i.bv, %.lr.ph.epil ] ; 3 uses
  %.lcssa = phi float [ %i.bj, %._crit_edge.loopexit.unr-lcssa ], [ %i.by, %.lr.ph.epil ] ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.lcssa26, %.lcssa26
  %i.bz = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ca = extractelement <2 x float> %.lcssa26, i64 0 ; 2 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.bz)
  %i.cc = tail call float @llvm.fmuladd.f32(float %.lcssa, float %.lcssa, float %i.cb)
  %i.cd = tail call float @llvm.sqrt.f32(float %i.cc)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.10.1 = phi float [ %i.cd, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ]
  ret float %.sroa.10.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_Z4riseiPKiPA3_f(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !14
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [12 x i8], ptr %2, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !10 ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  %i.g = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.g, 7                     ; 3 uses
  %i.h = add nsw i32 %0, -2
  %i.i = icmp ult i32 %i.h, 7
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %.01519 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.cb, %.lr.ph ]
  %.01618 = phi float [ %i.f, %.lr.ph.preheader.new ], [ %i.bz, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [12 x i8], ptr %2, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !10 ; 2 uses
  %i.p = fsub float %i.o, %.01618
  %i.q = fadd float %.01519, %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %2, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !10 ; 2 uses
  %i.y = fsub float %i.x, %i.o
  %i.z = fadd float %i.q, %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [12 x i8], ptr %2, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !10 ; 2 uses
  %i.ah = fsub float %i.ag, %i.x
  %i.ai = fadd float %i.z, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !14
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [12 x i8], ptr %2, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !10 ; 2 uses
  %i.aq = fsub float %i.ap, %i.ag
  %i.ar = fadd float %i.ai, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 4, !tbaa !14
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [12 x i8], ptr %2, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !10 ; 2 uses
  %i.az = fsub float %i.ay, %i.ap
  %i.ba = fadd float %i.ar, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !14
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [12 x i8], ptr %2, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !10 ; 2 uses
  %i.bi = fsub float %i.bh, %i.ay
  %i.bj = fadd float %i.ba, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !14
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %2, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !10 ; 2 uses
  %i.br = fsub float %i.bq, %i.bh
  %i.bs = fadd float %i.bj, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !14
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [12 x i8], ptr %2, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load float, ptr %i.by, align 4, !tbaa !10 ; 3 uses
  %i.ca = fsub float %i.bz, %i.bq
  %i.cb = fadd float %i.bs, %i.ca                 ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !60

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.01519.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.cb, %._crit_edge.loopexit.unr-lcssa ]
  %.01618.epil.init = phi float [ %i.f, %.lr.ph.preheader ], [ %i.bz, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.01519.epil = phi float [ %.01519.epil.init, %.lr.ph.epil.preheader ], [ %i.cj, %.lr.ph.epil ]
  %.01618.epil = phi float [ %.01618.epil.init, %.lr.ph.epil.preheader ], [ %i.ch, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !14
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [12 x i8], ptr %2, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !10 ; 2 uses
  %i.ci = fsub float %i.ch, %.01618.epil
  %i.cj = fadd float %.01519.epil, %i.ci          ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !61

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa = phi float [ %i.cb, %._crit_edge.loopexit.unr-lcssa ], [ %i.cj, %.lr.ph.epil ]
  %i.ck = fpext float %.lcssa to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.015.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ck, %._crit_edge.loopexit ]
  %3 = sitofp i32 %0 to double
  %i.cl = fadd double %3, -1.000000e+00
  %i.cm = fdiv double %.015.lcssa, %i.cl
  %i.cn = fptrunc double %i.cm to float
  ret float %i.cn
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_Z8av_hblenP8_IO_FILES0_S0_S0_S0_S0_fiP4t_bb(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, float noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %7, 3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %7, -3
  %i.c = add nsw i32 %7, -4
  %i.d = add nsw i32 %7, -5
  %i.e = zext nneg i32 %i.c to i64
  %i.f = sext i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %.064 = phi float [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.g ] ; 3 uses
  %.04463 = phi float [ 0.000000e+00, %.lr.ph ], [ %.2, %bb.g ] ; 3 uses
  %.04662 = phi float [ 0.000000e+00, %.lr.ph ], [ %.147, %bb.g ] ; 2 uses
  %.04861 = phi i32 [ 0, %.lr.ph ], [ %.149, %bb.g ] ; 3 uses
  %.05060 = phi i32 [ 0, %.lr.ph ], [ %.252, %bb.g ] ; 3 uses
  %.05359 = phi i32 [ 0, %.lr.ph ], [ %.154, %bb.g ] ; 2 uses
  %i.g = getelementptr inbounds nuw [108 x i8], ptr %8, i64 %indvars.iv ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i8, ptr %i.h, align 4, !tbaa !19, !range !20, !noundef !21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !22
  %i.m = fpext float %i.l to double
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.2, double noundef %i.m) #20 ; 0 uses
  %i.o = add nsw i32 %.05359, 1                   ; 2 uses
  %i.p = load float, ptr %i.k, align 4, !tbaa !22
  %i.q = fadd float %.04662, %i.p                 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv, %i.e
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !23
  %i.u = fpext float %i.t to double
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.2, double noundef %i.u) #20 ; 0 uses
  %i.w = add nsw i32 %.05060, 1
  %i.x = load float, ptr %i.s, align 4, !tbaa !23
  %i.y = fadd float %.04463, %i.x
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.151 = phi i32 [ %i.w, %bb.d ], [ %.05060, %bb.c ] ; 2 uses
  %.145 = phi float [ %i.y, %bb.d ], [ %.04463, %bb.c ] ; 2 uses
  %i.z = icmp slt i64 %indvars.iv, %i.f
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !24
  %i.ac = fpext float %i.ab to double
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.2, double noundef %i.ac) #20 ; 0 uses
  %i.ae = add nsw i32 %.04861, 1
  %i.af = load float, ptr %i.aa, align 4, !tbaa !24
  %i.ag = fadd float %.064, %i.af
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.e
  %.154 = phi i32 [ %i.o, %bb.f ], [ %i.o, %bb.e ], [ %.05359, %bb.b ] ; 2 uses
  %.252 = phi i32 [ %.151, %bb.f ], [ %.151, %bb.e ], [ %.05060, %bb.b ] ; 2 uses
  %.149 = phi i32 [ %i.ae, %bb.f ], [ %.04861, %bb.e ], [ %.04861, %bb.b ] ; 2 uses
  %.147 = phi float [ %i.q, %bb.f ], [ %i.q, %bb.e ], [ %.04662, %bb.b ] ; 2 uses
  %.2 = phi float [ %.145, %bb.f ], [ %.145, %bb.e ], [ %.04463, %bb.b ] ; 2 uses
  %.1 = phi float [ %i.ag, %bb.f ], [ %.064, %bb.e ], [ %.064, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !62

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.ah = sitofp i32 %.154 to float
  %i.ai = fdiv float %.147, %i.ah
  %i.aj = fpext float %i.ai to double
  %i.ak = sitofp i32 %.252 to float
  %i.al = sitofp i32 %.149 to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.050.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ak, %._crit_edge.loopexit ]
  %.048.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.al, %._crit_edge.loopexit ]
  %.044.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.2, %._crit_edge.loopexit ]
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1, %._crit_edge.loopexit ]
  %i.am = phi double [ +qnan, %bb.a ], [ %i.aj, %._crit_edge.loopexit ]
  %i.an = fpext float %6 to double                ; 3 uses
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, double noundef %i.an, double noundef %i.am) #20 ; 0 uses
  %i.ap = fdiv float %.044.lcssa, %.050.lcssa
  %i.aq = fpext float %i.ap to double
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.3, double noundef %i.an, double noundef %i.aq) #20 ; 0 uses
  %i.as = fdiv float %.0.lcssa, %.048.lcssa
  %i.at = fpext float %i.as to double
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.3, double noundef %i.an, double noundef %i.at) #20 ; 0 uses
  %fputc = tail call i32 @fputc(i32 10, ptr %1)   ; 0 uses
  %fputc56 = tail call i32 @fputc(i32 10, ptr %3) ; 0 uses
  %fputc57 = tail call i32 @fputc(i32 10, ptr %5) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_Z9av_phipsiP8_IO_FILES0_S0_S0_fiP4t_bb(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, float noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #5 {
bb.a:
  %i.a = fpext float %4 to double                 ; 4 uses
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2, double noundef %i.a) #20 ; 0 uses
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.2, double noundef %i.a) #20 ; 0 uses
  %i.d = icmp sgt i32 %5, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.03338 = phi i32 [ 0, %.lr.ph.preheader ], [ %.134, %bb.c ] ; 2 uses
  %i.e = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.t, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [108 x i8], ptr %6, i64 %indvars.iv ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i8, ptr %i.g, align 4, !tbaa !19, !range !20, !noundef !21
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.l = fadd <2 x float> %i.e, %i.k
  %i.m = extractelement <2 x float> %i.k, i64 0
  %i.n = fpext float %i.m to double
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, double noundef %i.n) #20 ; 0 uses
  %i.p = load float, ptr %i.j, align 4, !tbaa !25
  %i.q = fpext float %i.p to double
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, double noundef %i.q) #20 ; 0 uses
  %i.s = add nsw i32 %.03338, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.134 = phi i32 [ %i.s, %bb.b ], [ %.03338, %.lr.ph ] ; 2 uses
  %i.t = phi <2 x float> [ %i.l, %bb.b ], [ %i.e, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !63

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.u = sitofp i32 %.134 to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.033.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.u, %._crit_edge.loopexit ]
  %i.v = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.t, %._crit_edge.loopexit ]
  %i.w = insertelement <2 x float> poison, float %.033.lcssa, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fdiv <2 x float> %i.v, %i.x
  %i.z = fpext <2 x float> %i.y to <2 x double>   ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, double noundef %i.a, double noundef %i.aa) #20 ; 0 uses
  %i.ac = extractelement <2 x double> %i.z, i64 1
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, double noundef %i.a, double noundef %i.ac) #20 ; 0 uses
  %fputc = tail call i32 @fputc(i32 10, ptr %2)   ; 0 uses
  %fputc36 = tail call i32 @fputc(i32 10, ptr %3) ; 0 uses
  ret void
}

; Function Attrs: cold mustprogress uwtable
define noundef ptr @_Z7mkbbindPKcPiS1_iS1_PS1_PPPcP6t_atomP9t_resinfo(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !28
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.10, i64 53, i64 1, ptr %i.c) #21 ; 0 uses
  call void @_Z8rd_indexPKciPiPS1_PPc(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef %5, ptr noundef nonnull %i.a)
  %i.d = load i32, ptr %i.b, align 4, !tbaa !14
  store i32 %i.d, ptr %4, align 4, !tbaa !14
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.g = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.11, ptr noundef %i.f) #22 ; 0 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !79     ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [36 x i8], ptr %7, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 4, !tbaa !80   ; 7 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !14   ; 4 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %iter.check, label %._crit_edge

end_hunk_0
