inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@vectors_distance_float_avx2:bb.a
  %i.z = load <8 x float>, ptr %i.y, align 1, !tbaa !32
  %i.aa = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.s, <8 x float> %i.u, <8 x float> %i.p) ; 3 uses
  %i.ab = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.x, <8 x float> %i.z, <8 x float> %i.q) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !38

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.ac = and i64 %i.c, 16
  %lcmp.mod.not.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge.loopexit

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.03658.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ]
  %.03757.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod82 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.ae = load <8 x float>, ptr %i.ad, align 1, !tbaa !32
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ag = load <8 x float>, ptr %i.af, align 1, !tbaa !32
  %i.ah = or disjoint i64 %indvars.iv.epil.init, 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !32
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah
  %i.al = load <8 x float>, ptr %i.ak, align 1, !tbaa !32
  %i.am = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.ae, <8 x float> %i.ag, <8 x float> %.03658.epil.init)
  %i.an = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.aj, <8 x float> %i.al, <8 x float> %.03757.epil.init)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa79 = phi <8 x float> [ %i.aa, %._crit_edge.loopexit.unr-lcssa ], [ %i.am, %.lr.ph.epil.preheader ]
  %.lcssa78 = phi <8 x float> [ %i.ab, %._crit_edge.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil.preheader ]
  %i.ao = and i32 %2, -16
  %i.ap = fadd <8 x float> %.lcssa78, %.lcssa79
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.038.lcssa = phi i32 [ 0, %bb.a ], [ %i.ao, %._crit_edge.loopexit ] ; 2 uses
  %i.aq = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.ap, %._crit_edge.loopexit ] ; 2 uses
  %i.ar = shufflevector <8 x float> %i.aq, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.as = shufflevector <8 x float> %i.aq, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.at = fadd <4 x float> %i.ar, %i.as           ; 2 uses
  %i.au = tail call <4 x float> @llvm.x86.sse3.hadd.ps(<4 x float> %i.at, <4 x float> %i.at) ; 2 uses
  %i.av = tail call <4 x float> @llvm.x86.sse3.hadd.ps(<4 x float> %i.au, <4 x float> %i.au)
  %i.aw = extractelement <4 x float> %i.av, i64 0 ; 3 uses
  %i.ax = icmp ult i32 %.038.lcssa, %2
  br i1 %i.ax, label %.lr.ph64.preheader, label %._crit_edge65

.lr.ph64.preheader:                               ; preds = %._crit_edge
  %i.ay = zext i32 %.038.lcssa to i64             ; 3 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %xtraiter83 = and i64 %wide.trip.count, 3       ; 2 uses
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %.lr.ph64.prol.loopexit, label %.lr.ph64.prol

.lr.ph64.prol:                                    ; preds = %.lr.ph64.preheader, %.lr.ph64.prol
  %indvars.iv71.prol = phi i64 [ %indvars.iv.next72.prol, %.lr.ph64.prol ], [ %i.ay, %.lr.ph64.preheader ] ; 3 uses
  %.062.prol = phi float [ %i.bd, %.lr.ph64.prol ], [ %i.aw, %.lr.ph64.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph64.prol ], [ 0, %.lr.ph64.preheader ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv71.prol
  %i.ba = load float, ptr %i.az, align 4, !tbaa !27
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv71.prol
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !27
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bc, float %.062.prol) ; 3 uses
  %indvars.iv.next72.prol = add nuw nsw i64 %indvars.iv71.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter83
  br i1 %prol.iter.cmp.not, label %.lr.ph64.prol.loopexit, label %.lr.ph64.prol, !llvm.loop !39

.lr.ph64.prol.loopexit:                           ; preds = %.lr.ph64.prol, %.lr.ph64.preheader
  %.lcssa.unr = phi float [ poison, %.lr.ph64.preheader ], [ %i.bd, %.lr.ph64.prol ]
  %indvars.iv71.unr = phi i64 [ %i.ay, %.lr.ph64.preheader ], [ %indvars.iv.next72.prol, %.lr.ph64.prol ]
  %.062.unr = phi float [ %i.aw, %.lr.ph64.preheader ], [ %i.bd, %.lr.ph64.prol ]
  %i.be = sub nsw i64 %i.ay, %wide.trip.count
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.prol.loopexit, %.lr.ph64
  %indvars.iv71 = phi i64 [ %indvars.iv.next72.3, %.lr.ph64 ], [ %indvars.iv71.unr, %.lr.ph64.prol.loopexit ] ; 6 uses
  %.062 = phi float [ %i.bz, %.lr.ph64 ], [ %.062.unr, %.lr.ph64.prol.loopexit ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv71
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !27
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv71
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !27
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bj, float %.062)
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next72
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !27
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next72
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !27
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bo, float %i.bk)
  %indvars.iv.next72.1 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next72.1
  %i.br = load float, ptr %i.bq, align 4, !tbaa !27
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next72.1
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !27
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bt, float %i.bp)
  %indvars.iv.next72.2 = add nuw nsw i64 %indvars.iv71, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next72.2
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !27
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next72.2
  %i.by = load float, ptr %i.bx, align 4, !tbaa !27
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.by, float %i.bu) ; 2 uses
  %indvars.iv.next72.3 = add nuw nsw i64 %indvars.iv71, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next72.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge65, label %.lr.ph64, !llvm.loop !40

._crit_edge65:                                    ; preds = %.lr.ph64.prol.loopexit, %.lr.ph64, %._crit_edge
  %.0.lcssa = phi float [ %i.aw, %._crit_edge ], [ %.lcssa.unr, %.lr.ph64.prol.loopexit ], [ %i.bz, %.lr.ph64 ]
  %i.ca = fsub float 1.000000e+00, %.0.lcssa
  ret float %i.ca
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @vectors_distance_float(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ugt i32 %2, 15                      ; 2 uses
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 3 uses
  %i.b = and i32 %.pre, 2129920
  %or.cond65.not = icmp eq i32 %i.b, 2129920
  %or.cond84 = select i1 %i.a, i1 %or.cond65.not, i1 false
  br i1 %or.cond84, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call float @vectors_distance_float_avx512(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %.pre, 1024
  %.not64 = icmp eq i32 %i.d, 0
  br i1 %.not64, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = and i32 %.pre, 16384
  %i.f = icmp ne i32 %i.e, 0
  %or.cond = and i1 %i.a, %i.f
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call float @vectors_distance_float_avx2(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.h = icmp ugt i32 %2, 7
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.i = zext i32 %2 to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.j = and i32 %2, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.f
  %.0.lcssa = phi i32 [ 0, %bb.f ], [ %i.j, %.preheader.loopexit ] ; 2 uses
  %i.k = phi <2 x float> [ zeroinitializer, %bb.f ], [ %i.ak, %.preheader.loopexit ] ; 2 uses
  %i.l = icmp ult i32 %.0.lcssa, %2
  %i.m = extractelement <2 x float> %i.k, i64 1   ; 3 uses
  br i1 %i.l, label %.lr.ph73.preheader, label %._crit_edge

.lr.ph73.preheader:                               ; preds = %.preheader
  %i.n = zext i32 %.0.lcssa to i64                ; 3 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader, %.lr.ph73.prol
  %indvars.iv79.prol = phi i64 [ %indvars.iv.next80.prol, %.lr.ph73.prol ], [ %i.n, %.lr.ph73.preheader ] ; 3 uses
  %.15871.prol = phi float [ %i.s, %.lr.ph73.prol ], [ %i.m, %.lr.ph73.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.prol ], [ 0, %.lr.ph73.preheader ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv79.prol
  %i.p = load float, ptr %i.o, align 4, !tbaa !27
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv79.prol
  %i.r = load float, ptr %i.q, align 4, !tbaa !27
  %i.s = tail call float @llvm.fmuladd.f32(float %i.p, float %i.r, float %.15871.prol) ; 3 uses
  %indvars.iv.next80.prol = add nuw nsw i64 %indvars.iv79.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !41

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader
  %.lcssa.unr = phi float [ poison, %.lr.ph73.preheader ], [ %i.s, %.lr.ph73.prol ]
  %indvars.iv79.unr = phi i64 [ %i.n, %.lr.ph73.preheader ], [ %indvars.iv.next80.prol, %.lr.ph73.prol ]
  %.15871.unr = phi float [ %i.m, %.lr.ph73.preheader ], [ %i.s, %.lr.ph73.prol ]
  %i.t = sub nsw i64 %i.n, %wide.trip.count
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge, label %.lr.ph73

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.v = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ak, %.lr.ph ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.y = load <8 x float>, ptr %i.w, align 4, !tbaa !27 ; 4 uses
  %i.z = load <8 x float>, ptr %i.x, align 4, !tbaa !27 ; 4 uses
  %3 = fmul <8 x float> %i.y, %i.z
  %i.aa = shufflevector <8 x float> %3, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.ab = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.ac = shufflevector <8 x float> %i.z, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ac, <2 x float> %i.aa)
  %i.ae = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.af = shufflevector <8 x float> %i.z, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.af, <2 x float> %i.ad)
  %i.ah = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.ai = shufflevector <8 x float> %i.z, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ai, <2 x float> %i.ag)
  %i.ak = fadd <2 x float> %i.v, %i.aj            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.al = or disjoint i64 %indvars.iv.next, 7
  %i.am = icmp samesign ult i64 %i.al, %i.i
  br i1 %i.am, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !42

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %indvars.iv79 = phi i64 [ %indvars.iv.next80.3, %.lr.ph73 ], [ %indvars.iv79.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %.15871 = phi float [ %i.bg, %.lr.ph73 ], [ %.15871.unr, %.lr.ph73.prol.loopexit ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv79
  %i.ao = load float, ptr %i.an, align 4, !tbaa !27
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv79
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !27
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.aq, float %.15871)
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next80
  %i.at = load float, ptr %i.as, align 4, !tbaa !27
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next80
  %i.av = load float, ptr %i.au, align 4, !tbaa !27
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.at, float %i.av, float %i.ar)
  %indvars.iv.next80.1 = add nuw nsw i64 %indvars.iv79, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next80.1
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !27
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next80.1
  %i.ba = load float, ptr %i.az, align 4, !tbaa !27
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ba, float %i.aw)
  %indvars.iv.next80.2 = add nuw nsw i64 %indvars.iv79, 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next80.2
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !27
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next80.2
  %i.bf = load float, ptr %i.be, align 4, !tbaa !27
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bf, float %i.bb) ; 2 uses
  %indvars.iv.next80.3 = add nuw nsw i64 %indvars.iv79, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next80.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph73, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %.preheader
  %.158.lcssa = phi float [ %i.m, %.preheader ], [ %.lcssa.unr, %.lr.ph73.prol.loopexit ], [ %i.bg, %.lr.ph73 ]
  %i.bh = extractelement <2 x float> %i.k, i64 0
  %i.bi = fadd float %i.bh, %.158.lcssa
  %i.bj = fsub float 1.000000e+00, %i.bi
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.b
  %.059 = phi float [ %i.c, %bb.b ], [ %i.g, %bb.e ], [ %i.bj, %._crit_edge ]
  ret float %.059
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local float @vectors_distance_q8_avx512(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = fcmp oeq float %3, 0.000000e+00
  %i.b = fcmp oeq float %4, 0.000000e+00
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fdiv float %3, 1.270000e+02
  %i.d = fdiv float %4, 1.270000e+02
  %i.e = fmul float %i.c, %i.d
  %i.f = icmp ugt i32 %2, 63
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = zext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.h = phi <16 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ab, %.lr.ph ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.j = load <8 x i64>, ptr %i.i, align 1, !tbaa !32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = load <8 x i64>, ptr %i.k, align 1, !tbaa !32 ; 2 uses
  %i.m = bitcast <8 x i64> %i.j to <64 x i8>
  %i.n = shufflevector <64 x i8> %i.m, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.o = sext <32 x i8> %i.n to <32 x i16>
  %i.p = bitcast <8 x i64> %i.l to <64 x i8>
  %i.q = shufflevector <64 x i8> %i.p, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.r = sext <32 x i8> %i.q to <32 x i16>
  %i.s = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.o, <32 x i16> %i.r)
  %i.t = add <16 x i32> %i.s, %i.h
  %i.u = bitcast <8 x i64> %i.j to <64 x i8>
  %i.v = shufflevector <64 x i8> %i.u, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.w = sext <32 x i8> %i.v to <32 x i16>
  %i.x = bitcast <8 x i64> %i.l to <64 x i8>
  %i.y = shufflevector <64 x i8> %i.x, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.z = sext <32 x i8> %i.y to <32 x i16>
  %i.aa = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.w, <32 x i16> %i.z)
  %i.ab = add <16 x i32> %i.t, %i.aa              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64 ; 2 uses
  %i.ac = or disjoint i64 %indvars.iv.next, 63
  %i.ad = icmp samesign ult i64 %i.ac, %i.g
  br i1 %i.ad, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !44

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ae = and i32 %2, -64
  %i.af = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ab)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.046.lcssa = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ 0, %bb.b ], [ %i.af, %._crit_edge.loopexit ] ; 4 uses
  %i.ag = icmp ult i32 %.046.lcssa, %2
  br i1 %i.ag, label %iter.check, label %._crit_edge81

iter.check:                                       ; preds = %._crit_edge
  %i.ah = zext i32 %.046.lcssa to i64             ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 4 uses
  %i.ai = sub nsw i64 %wide.trip.count, %i.ah     ; 4 uses
  %min.iters.check = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check, label %.lr.ph80.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check97 = icmp ult i64 %i.ai, 64
  br i1 %min.iters.check97, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 63        ; 3 uses
  %n.vec = sub nuw nsw i64 %i.ai, %n.mod.vf       ; 3 uses
  %i.aj = add nsw i64 %n.vec, %i.ah
  %i.ak = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i32> [ %i.ak, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi98 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi99 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi100 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.al = add i64 %index, %i.ah                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %wide.load = load <16 x i8>, ptr %i.am, align 1, !tbaa !32
  %wide.load101 = load <16 x i8>, ptr %i.an, align 1, !tbaa !32
  %wide.load102 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !32
  %wide.load103 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !32
  %i.aq = sext <16 x i8> %wide.load to <16 x i32>
  %i.ar = sext <16 x i8> %wide.load101 to <16 x i32>
  %i.as = sext <16 x i8> %wide.load102 to <16 x i32>
  %i.at = sext <16 x i8> %wide.load103 to <16 x i32>
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.al ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %wide.load104 = load <16 x i8>, ptr %i.au, align 1, !tbaa !32
  %wide.load105 = load <16 x i8>, ptr %i.av, align 1, !tbaa !32
  %wide.load106 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !32
  %wide.load107 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !32
  %i.ay = sext <16 x i8> %wide.load104 to <16 x i32>
  %i.az = sext <16 x i8> %wide.load105 to <16 x i32>
  %i.ba = sext <16 x i8> %wide.load106 to <16 x i32>
  %i.bb = sext <16 x i8> %wide.load107 to <16 x i32>
  %i.bc = mul nsw <16 x i32> %i.ay, %i.aq
  %i.bd = mul nsw <16 x i32> %i.az, %i.ar
  %i.be = mul nsw <16 x i32> %i.ba, %i.as
  %i.bf = mul nsw <16 x i32> %i.bb, %i.at
  %i.bg = add <16 x i32> %i.bc, %vec.phi          ; 2 uses
  %i.bh = add <16 x i32> %i.bd, %vec.phi98        ; 2 uses
  %i.bi = add <16 x i32> %i.be, %vec.phi99        ; 2 uses
  %i.bj = add <16 x i32> %i.bf, %vec.phi100       ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i32> %i.bh, %i.bg
  %bin.rdx108 = add <16 x i32> %i.bi, %bin.rdx
  %bin.rdx109 = add <16 x i32> %i.bj, %bin.rdx108
  %i.bl = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx109) ; 3 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge81, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 8
  br i1 %min.epilog.iters.check, label %.lr.ph80.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bl, %vec.epilog.iter.check ], [ %.lcssa, %vector.main.loop.iter.check ]
  %n.mod.vf110 = and i64 %wide.trip.count, 7      ; 2 uses
  %n.vec111 = sub nsw i64 %i.ai, %n.mod.vf110     ; 2 uses
  %i.bm = add nsw i64 %n.vec111, %i.ah
  %i.bn = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi113 = phi <8 x i32> [ %i.bn, %vec.epilog.ph ], [ %i.bu, %vec.epilog.vector.body ]
  %i.bo = add i64 %index112, %i.ah                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo
  %wide.load114 = load <8 x i8>, ptr %i.bp, align 1, !tbaa !32
end_hunk_0
begin_hunk_1_@hnsw_reconnect_nodes:bb.a
  %xtraiter634 = and i64 %i.i, 1
  %i.l = icmp eq i32 %2, 1
  %unroll_iter = and i64 %i.i, 2147483646
  %lcmp.mod635.not = icmp eq i64 %xtraiter634, 0
  %lcmp.mod638 = trunc i32 %2 to i1
  br label %.preheader380.us

.preheader380.us:                                 ; preds = %.preheader380.us.preheader, %._crit_edge402.us
  %indvars.iv470 = phi i64 [ 0, %.preheader380.us.preheader ], [ %indvars.iv.next471, %._crit_edge402.us ] ; 6 uses
  %i.m = mul nuw nsw i64 %indvars.iv470, %i.c
  %invariant.gep579 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.m ; 3 uses
  br i1 %i.l, label %.epil.preheader, label %.preheader380.us.new

.preheader380.us.new:                             ; preds = %.preheader380.us, %bb.f
  %indvars.iv465 = phi i64 [ %indvars.iv.next466.1, %bb.f ], [ 0, %.preheader380.us ] ; 4 uses
  %.0286400.us = phi float [ %.1287.us.1, %bb.f ], [ 0.000000e+00, %.preheader380.us ] ; 2 uses
  %.0288399.us = phi i32 [ %.1289.us.1, %bb.f ], [ 0, %.preheader380.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.f ], [ 0, %.preheader380.us ]
  %.not345.us = icmp eq i64 %indvars.iv470, %indvars.iv465
  br i1 %.not345.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader380.us.new
  %gep580 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep579, i64 %indvars.iv465
  %i.n = load float, ptr %gep580, align 4, !tbaa !27
  %i.o = fadd float %.0286400.us, %i.n
  %i.p = add nsw i32 %.0288399.us, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader380.us.new
  %.1289.us = phi i32 [ %i.p, %bb.c ], [ %.0288399.us, %.preheader380.us.new ] ; 2 uses
  %.1287.us = phi float [ %i.o, %bb.c ], [ %.0286400.us, %.preheader380.us.new ] ; 2 uses
  %indvars.iv.next466 = or disjoint i64 %indvars.iv465, 1 ; 2 uses
  %.not345.us.1 = icmp eq i64 %indvars.iv470, %indvars.iv.next466
  br i1 %.not345.us.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %gep580.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep579, i64 %indvars.iv.next466
  %i.q = load float, ptr %gep580.1, align 4, !tbaa !27
  %i.r = fadd float %.1287.us, %i.q
  %i.s = add nsw i32 %.1289.us, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1289.us.1 = phi i32 [ %i.s, %bb.e ], [ %.1289.us, %bb.d ] ; 3 uses
  %.1287.us.1 = phi float [ %i.r, %bb.e ], [ %.1287.us, %bb.d ] ; 3 uses
  %indvars.iv.next466.1 = add nuw nsw i64 %indvars.iv465, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge402.us.unr-lcssa, label %.preheader380.us.new, !llvm.loop !165

._crit_edge402.us.unr-lcssa:                      ; preds = %bb.f
  br i1 %lcmp.mod635.not, label %._crit_edge402.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge402.us.unr-lcssa, %.preheader380.us
  %indvars.iv465.epil.init = phi i64 [ 0, %.preheader380.us ], [ %indvars.iv.next466.1, %._crit_edge402.us.unr-lcssa ] ; 2 uses
  %.0286400.us.epil.init = phi float [ 0.000000e+00, %.preheader380.us ], [ %.1287.us.1, %._crit_edge402.us.unr-lcssa ] ; 2 uses
  %.0288399.us.epil.init = phi i32 [ 0, %.preheader380.us ], [ %.1289.us.1, %._crit_edge402.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod638)
  %.not345.us.epil = icmp eq i64 %indvars.iv470, %indvars.iv465.epil.init
  br i1 %.not345.us.epil, label %._crit_edge402.us, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %gep580.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep579, i64 %indvars.iv465.epil.init
  %i.t = load float, ptr %gep580.epil, align 4, !tbaa !27
  %i.u = fadd float %.0286400.us.epil.init, %i.t
  %i.v = add nsw i32 %.0288399.us.epil.init, 1
  br label %._crit_edge402.us

._crit_edge402.us:                                ; preds = %.epil.preheader, %bb.g, %._crit_edge402.us.unr-lcssa
  %.1289.us.lcssa = phi i32 [ %.1289.us.1, %._crit_edge402.us.unr-lcssa ], [ %i.v, %bb.g ], [ %.0288399.us.epil.init, %.epil.preheader ] ; 2 uses
  %.1287.us.lcssa = phi float [ %.1287.us.1, %._crit_edge402.us.unr-lcssa ], [ %i.u, %bb.g ], [ %.0286400.us.epil.init, %.epil.preheader ]
  %.not344.us = icmp eq i32 %.1289.us.lcssa, 0
  %i.w = sitofp i32 %.1289.us.lcssa to float
  %i.x = fdiv float %.1287.us.lcssa, %i.w
  %i.y = select i1 %.not344.us, float 0.000000e+00, float %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv470
  store float %i.y, ptr %i.z, align 4, !tbaa !27
  %indvars.iv.next471 = add nuw nsw i64 %indvars.iv470, 1 ; 2 uses
  %exitcond474.not = icmp eq i64 %indvars.iv.next471, %wide.trip.count473
  br i1 %exitcond474.not, label %._crit_edge405, label %.preheader380.us, !llvm.loop !166

bb.h:                                             ; preds = %.lr.ph397, %.loopexit382
  %indvars.iv460 = phi i64 [ 0, %.lr.ph397 ], [ %indvars.iv.next461, %.loopexit382 ] ; 6 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph397 ], [ %indvars.iv.next, %.loopexit382 ] ; 2 uses
  %indvars462 = trunc i64 %indvars.iv460 to i32
  %i.aa = mul nuw nsw i32 %2, %indvars462
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv460
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !27
  %indvars.iv.next461 = add nuw nsw i64 %indvars.iv460, 1 ; 3 uses
  %i.ae = icmp samesign ult i64 %indvars.iv.next461, %i.i
  br i1 %i.ae, label %.lr.ph, label %.loopexit382

.lr.ph:                                           ; preds = %bb.h
  %i.af = mul nuw nsw i64 %indvars.iv460, %i.c
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv460
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.af
  %invariant.gep577 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv460
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %hnsw_distance.exit
  %indvars.iv457 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next458, %hnsw_distance.exit ] ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26 ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv457
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 4 uses
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !70
  switch i32 %i.ak, label %bb.z [
    i32 0, label %bb.j
    i32 1, label %bb.p
    i32 2, label %bb.y
  ]

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15 ; 8 uses
  %i.ap = load i32, ptr %i.h, align 8, !tbaa !73  ; 8 uses
  %i.aq = icmp ugt i32 %i.ap, 15                  ; 2 uses
  %.pre.i360 = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 3 uses
  %i.ar = and i32 %.pre.i360, 2129920
  %or.cond65.not.i = icmp eq i32 %i.ar, 2129920
  %or.cond84.i = select i1 %i.aq, i1 %or.cond65.not.i, i1 false
  br i1 %or.cond84.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = tail call float @vectors_distance_float_avx512(ptr noundef readonly %i.am, ptr noundef readonly %i.ao, i32 noundef %i.ap)
  br label %hnsw_distance.exit

bb.l:                                             ; preds = %bb.j
  %i.at = and i32 %.pre.i360, 1024
  %.not64.i = icmp eq i32 %i.at, 0
  br i1 %.not64.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = and i32 %.pre.i360, 16384
  %i.av = icmp ne i32 %i.au, 0
  %or.cond.i361 = and i1 %i.aq, %i.av
  br i1 %or.cond.i361, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = tail call float @vectors_distance_float_avx2(ptr noundef readonly %i.am, ptr noundef readonly %i.ao, i32 noundef %i.ap)
  br label %hnsw_distance.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ax = icmp ugt i32 %i.ap, 7
  br i1 %i.ax, label %.lr.ph.preheader.i367, label %.preheader.i362

.lr.ph.preheader.i367:                            ; preds = %bb.o
  %i.ay = zext i32 %i.ap to i64
  br label %.lr.ph.i368

.preheader.loopexit.i371:                         ; preds = %.lr.ph.i368
  %i.az = and i32 %i.ap, -8
  br label %.preheader.i362

.preheader.i362:                                  ; preds = %.preheader.loopexit.i371, %bb.o
  %.0.lcssa.i363 = phi i32 [ 0, %bb.o ], [ %i.az, %.preheader.loopexit.i371 ] ; 2 uses
  %i.ba = phi <2 x float> [ zeroinitializer, %bb.o ], [ %i.ca, %.preheader.loopexit.i371 ] ; 2 uses
  %i.bb = icmp ult i32 %.0.lcssa.i363, %i.ap
  %i.bc = extractelement <2 x float> %i.ba, i64 1 ; 3 uses
  br i1 %i.bb, label %.lr.ph73.preheader.i, label %._crit_edge.i364

.lr.ph73.preheader.i:                             ; preds = %.preheader.i362
  %i.bd = zext i32 %.0.lcssa.i363 to i64          ; 3 uses
  %wide.trip.count.i365 = zext i32 %i.ap to i64   ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i365, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.i.prol.loopexit, label %.lr.ph73.i.prol

.lr.ph73.i.prol:                                  ; preds = %.lr.ph73.preheader.i, %.lr.ph73.i.prol
  %indvars.iv79.i.prol = phi i64 [ %indvars.iv.next80.i.prol, %.lr.ph73.i.prol ], [ %i.bd, %.lr.ph73.preheader.i ] ; 3 uses
  %.15871.i.prol = phi float [ %i.bi, %.lr.ph73.i.prol ], [ %i.bc, %.lr.ph73.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.i.prol ], [ 0, %.lr.ph73.preheader.i ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv79.i.prol
  %i.bf = load float, ptr %i.be, align 4, !tbaa !27
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv79.i.prol
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !27
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bh, float %.15871.i.prol) ; 3 uses
  %indvars.iv.next80.i.prol = add nuw nsw i64 %indvars.iv79.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.i.prol.loopexit, label %.lr.ph73.i.prol, !llvm.loop !167

.lr.ph73.i.prol.loopexit:                         ; preds = %.lr.ph73.i.prol, %.lr.ph73.preheader.i
  %.lcssa633.unr = phi float [ poison, %.lr.ph73.preheader.i ], [ %i.bi, %.lr.ph73.i.prol ]
  %indvars.iv79.i.unr = phi i64 [ %i.bd, %.lr.ph73.preheader.i ], [ %indvars.iv.next80.i.prol, %.lr.ph73.i.prol ]
  %.15871.i.unr = phi float [ %i.bc, %.lr.ph73.preheader.i ], [ %i.bi, %.lr.ph73.i.prol ]
  %i.bj = sub nsw i64 %i.bd, %wide.trip.count.i365
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %._crit_edge.i364, label %.lr.ph73.i

.lr.ph.i368:                                      ; preds = %.lr.ph.i368, %.lr.ph.preheader.i367
  %indvars.iv.i369 = phi i64 [ 0, %.lr.ph.preheader.i367 ], [ %indvars.iv.next.i370, %.lr.ph.i368 ] ; 3 uses
  %i.bl = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i367 ], [ %i.ca, %.lr.ph.i368 ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i369
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i369
  %i.bo = load <8 x float>, ptr %i.bm, align 4, !tbaa !27 ; 4 uses
  %i.bp = load <8 x float>, ptr %i.bn, align 4, !tbaa !27 ; 4 uses
  %4 = fmul <8 x float> %i.bo, %i.bp
  %i.bq = shufflevector <8 x float> %4, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.br = shufflevector <8 x float> %i.bo, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.bs = shufflevector <8 x float> %i.bp, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bs, <2 x float> %i.bq)
  %i.bu = shufflevector <8 x float> %i.bo, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.bv = shufflevector <8 x float> %i.bp, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bv, <2 x float> %i.bt)
  %i.bx = shufflevector <8 x float> %i.bo, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.by = shufflevector <8 x float> %i.bp, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.by, <2 x float> %i.bw)
  %i.ca = fadd <2 x float> %i.bl, %i.bz           ; 2 uses
  %indvars.iv.next.i370 = add nuw nsw i64 %indvars.iv.i369, 8 ; 2 uses
  %i.cb = or disjoint i64 %indvars.iv.next.i370, 7
  %i.cc = icmp samesign ult i64 %i.cb, %i.ay
  br i1 %i.cc, label %.lr.ph.i368, label %.preheader.loopexit.i371, !llvm.loop !42

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i.3, %.lr.ph73.i ], [ %indvars.iv79.i.unr, %.lr.ph73.i.prol.loopexit ] ; 6 uses
  %.15871.i = phi float [ %i.cw, %.lr.ph73.i ], [ %.15871.i.unr, %.lr.ph73.i.prol.loopexit ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv79.i
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !27
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv79.i
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !27
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.cg, float %.15871.i)
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !27
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !27
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.cl, float %i.ch)
  %indvars.iv.next80.i.1 = add nuw nsw i64 %indvars.iv79.i, 2 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i.1
  %i.co = load float, ptr %i.cn, align 4, !tbaa !27
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i.1
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !27
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.co, float %i.cq, float %i.cm)
  %indvars.iv.next80.i.2 = add nuw nsw i64 %indvars.iv79.i, 3 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i.2
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !27
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i.2
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !27
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.cv, float %i.cr) ; 2 uses
  %indvars.iv.next80.i.3 = add nuw nsw i64 %indvars.iv79.i, 4 ; 2 uses
  %exitcond.not.i366.3 = icmp eq i64 %indvars.iv.next80.i.3, %wide.trip.count.i365
  br i1 %exitcond.not.i366.3, label %._crit_edge.i364, label %.lr.ph73.i, !llvm.loop !43

._crit_edge.i364:                                 ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i, %.preheader.i362
  %.158.lcssa.i = phi float [ %i.bc, %.preheader.i362 ], [ %.lcssa633.unr, %.lr.ph73.i.prol.loopexit ], [ %i.cw, %.lr.ph73.i ]
  %i.cx = extractelement <2 x float> %i.ba, i64 0
  %i.cy = fadd float %i.cx, %.158.lcssa.i
  %i.cz = fsub float 1.000000e+00, %i.cy
  br label %hnsw_distance.exit

bb.p:                                             ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !15 ; 12 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !15 ; 12 uses
  %i.de = load i32, ptr %i.h, align 8, !tbaa !73  ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.dg = load float, ptr %i.df, align 8, !tbaa !27 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.di = load float, ptr %i.dh, align 8, !tbaa !27 ; 4 uses
  %i.dj = icmp ugt i32 %i.de, 63
  br i1 %i.dj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 2 uses
  %i.dl = and i32 %i.dk, 2129920
  %or.cond83.not.i = icmp eq i32 %i.dl, 2129920
  br i1 %or.cond83.not.i, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.dm = tail call float @vectors_distance_q8_avx512(ptr noundef readonly %i.db, ptr noundef readonly %i.dd, i32 noundef %i.de, float noundef %i.dg, float noundef %i.di)
  br label %hnsw_distance.exit

bb.s:                                             ; preds = %bb.p
  %i.dn = icmp samesign ugt i32 %i.de, 31
  br i1 %i.dn, label %..thread_crit_edge.i, label %bb.u

..thread_crit_edge.i:                             ; preds = %bb.s
  %.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.q
  %i.do = phi i32 [ %.pre.i, %..thread_crit_edge.i ], [ %i.dk, %bb.q ]
  %i.dp = and i32 %i.do, 17408
  %or.cond84.not.i = icmp eq i32 %i.dp, 17408
  br i1 %or.cond84.not.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread.i
  %i.dq = tail call float @vectors_distance_q8_avx2(ptr noundef readonly %i.db, ptr noundef readonly %i.dd, i32 noundef %i.de, float noundef %i.dg, float noundef %i.di)
  br label %hnsw_distance.exit

bb.u:                                             ; preds = %.thread.i, %bb.s
  %i.dr = fcmp oeq float %i.dg, 0.000000e+00
  %i.ds = fcmp oeq float %i.di, 0.000000e+00
  %or.cond.i = or i1 %i.dr, %i.ds
  br i1 %or.cond.i, label %hnsw_distance.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dt = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.di, i64 1
  %i.dv = fdiv <2 x float> %i.du, splat (float 1.270000e+02) ; 2 uses
  %shift = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.dv, %shift
  %i.dw = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dx = icmp ugt i32 %i.de, 7
  br i1 %i.dx, label %.lr.ph.preheader.i, label %.preheader.i356

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.dy = zext i32 %i.de to i64
  br label %.lr.ph.i357

.preheader.loopexit.i:                            ; preds = %.lr.ph.i357
  %i.dz = and i32 %i.de, -8
  br label %.preheader.i356

.preheader.i356:                                  ; preds = %.preheader.loopexit.i, %bb.v
  %.072.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.gd, %.preheader.loopexit.i ] ; 3 uses
  %.071.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.hm, %.preheader.loopexit.i ]
  %.070.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.dz, %.preheader.loopexit.i ] ; 2 uses
  %i.ea = icmp ult i32 %.070.lcssa.i, %i.de
  br i1 %i.ea, label %.lr.ph92.preheader.i, label %._crit_edge.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i356
  %i.eb = zext i32 %.070.lcssa.i to i64           ; 4 uses
  %wide.trip.count.i = zext i32 %i.de to i64      ; 3 uses
  %i.ec = sub nsw i64 %wide.trip.count.i, %i.eb   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ec, 8
  br i1 %min.iters.check, label %.lr.ph92.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader.i
  %n.mod.vf = and i64 %wide.trip.count.i, 7       ; 2 uses
  %n.vec = sub nuw nsw i64 %i.ec, %n.mod.vf       ; 2 uses
  %i.ed = add nsw i64 %n.vec, %i.eb
  %i.ee = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.072.lcssa.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ee, %vector.ph ], [ %i.eq, %vector.body ]
  %vec.phi612 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.er, %vector.body ]
  %i.ef = add i64 %index, %i.eb                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %wide.load = load <4 x i8>, ptr %i.eg, align 1, !tbaa !32
  %wide.load613 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !32
  %i.ei = sext <4 x i8> %wide.load to <4 x i32>
  %i.ej = sext <4 x i8> %wide.load613 to <4 x i32>
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ef ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %wide.load614 = load <4 x i8>, ptr %i.ek, align 1, !tbaa !32
  %wide.load615 = load <4 x i8>, ptr %i.el, align 1, !tbaa !32
  %i.em = sext <4 x i8> %wide.load614 to <4 x i32>
  %i.en = sext <4 x i8> %wide.load615 to <4 x i32>
  %i.eo = mul nsw <4 x i32> %i.em, %i.ei
  %i.ep = mul nsw <4 x i32> %i.en, %i.ej
  %i.eq = add <4 x i32> %i.eo, %vec.phi           ; 2 uses
  %i.er = add <4 x i32> %i.ep, %vec.phi612        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.er, %i.eq
  %i.et = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %.lr.ph92.preheader.i, %middle.block
  %indvars.iv98.i.ph = phi i64 [ %i.eb, %.lr.ph92.preheader.i ], [ %i.ed, %middle.block ]
  %.17390.i.ph = phi i32 [ %.072.lcssa.i, %.lr.ph92.preheader.i ], [ %i.et, %middle.block ]
  br label %.lr.ph92.i

.lr.ph.i357:                                      ; preds = %.lr.ph.i357, %.lr.ph.preheader.i
  %indvars.iv.i358 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i359, %.lr.ph.i357 ] ; 10 uses
  %.07186.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.hm, %.lr.ph.i357 ]
  %.07285.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.gd, %.lr.ph.i357 ]
  %i.eu = or disjoint i64 %indvars.iv.i358, 7     ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.db, i64 %indvars.iv.i358
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !32
  %i.ex = sext i8 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i358
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !32
  %i.fa = sext i8 %i.ez to i32
  %i.fb = mul nsw i32 %i.fa, %i.ex
  %i.fc = or disjoint i64 %indvars.iv.i358, 1     ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !32
  %i.ff = sext i8 %i.fe to i32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fc
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !32
  %i.fi = sext i8 %i.fh to i32
  %i.fj = mul nsw i32 %i.fi, %i.ff
  %i.fk = or disjoint i64 %indvars.iv.i358, 2     ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !32
  %i.fn = sext i8 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fk
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !32
  %i.fq = sext i8 %i.fp to i32
  %i.fr = mul nsw i32 %i.fq, %i.fn
  %i.fs = or disjoint i64 %indvars.iv.i358, 3     ; 2 uses
end_hunk_1
begin_hunk_2_@hnsw_reconnect_nodes:bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_unlink_node(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.d = atomicrmw add ptr %i.c, i64 1 seq_cst, align 8 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %.079136 = phi i32 [ 0, %bb.b ], [ %i.n, %._crit_edge ] ; 2 uses
  %i.h = zext i32 %.079136 to i64                 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !132
  %.not146 = icmp eq i32 %i.k, 0
  br i1 %.not146, label %._crit_edge, label %.lr.ph135

bb.c:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %.not88 = icmp eq ptr %i.m, null
  br i1 %.not88, label %hnsw_cursor_element_deleted.exit, label %.lr.ph.i

._crit_edge:                                      ; preds = %hnsw_update_worst_neighbor_on_remove.exit, %.preheader
  %i.n = add i32 %.079136, 1                      ; 2 uses
  %i.o = load i32, ptr %1, align 8, !tbaa !9
  %.not = icmp ugt i32 %i.n, %i.o
  br i1 %.not, label %bb.c, label %.preheader, !llvm.loop !179

.lr.ph135:                                        ; preds = %.preheader, %hnsw_update_worst_neighbor_on_remove.exit
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %hnsw_update_worst_neighbor_on_remove.exit ], [ 0, %.preheader ] ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !135
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv159
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 312
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.h ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !132  ; 3 uses
  %.not147 = icmp eq i32 %i.v, 0
  br i1 %.not147, label %hnsw_update_worst_neighbor_on_remove.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph135
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !135  ; 3 uses
  %wide.trip.count = zext i32 %i.v to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = icmp eq ptr %i.y, %1
  br i1 %i.z, label %bb.e, label %bb.ab

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.ab = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.ac = add nuw i64 %indvars.iv, 1
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ad
  %i.af = xor i32 %i.ab, -1
  %i.ag = add i32 %i.v, %i.af
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.ae, i64 %i.ai, i1 false)
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !132
  %i.ak = add i32 %i.aj, -1                       ; 3 uses
  store i32 %i.ak, ptr %i.u, align 8, !tbaa !132
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store float 0.000000e+00, ptr %i.am, align 8, !tbaa !133
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i32 0, ptr %i.an, align 4, !tbaa !134
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !134 ; 3 uses
  %i.aq = icmp eq i32 %i.ap, %i.ab
  br i1 %i.aq, label %.lr.ph.i98, label %bb.z

.lr.ph.i98:                                       ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  br label %bb.h

bb.h:                                             ; preds = %hnsw_distance.exit.i, %.lr.ph.i98
  %i.at = phi i32 [ %i.ak, %.lr.ph.i98 ], [ %i.is, %hnsw_distance.exit.i ] ; 9 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i98 ], [ %indvars.iv.next.i, %hnsw_distance.exit.i ] ; 3 uses
  %.027.i = phi float [ 0.000000e+00, %.lr.ph.i98 ], [ %.1.i, %hnsw_distance.exit.i ] ; 2 uses
  %.01925.i = phi i32 [ 0, %.lr.ph.i98 ], [ %.120.i, %hnsw_distance.exit.i ]
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !135
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !26 ; 4 uses
  %i.ax = load i32, ptr %i.f, align 8, !tbaa !70
  switch i32 %i.ax, label %bb.y [
    i32 0, label %bb.i
    i32 1, label %bb.o
    i32 2, label %bb.x
  ]

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !15 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !15 ; 8 uses
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !73  ; 8 uses
  %i.bc = icmp ugt i32 %i.bb, 15                  ; 2 uses
  %.pre.i103 = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 3 uses
  %i.bd = and i32 %.pre.i103, 2129920
  %or.cond65.not.i = icmp eq i32 %i.bd, 2129920
  %or.cond84.i = select i1 %i.bc, i1 %or.cond65.not.i, i1 false
  br i1 %or.cond84.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = tail call float @vectors_distance_float_avx512(ptr noundef readonly %i.ay, ptr noundef readonly %i.ba, i32 noundef %i.bb)
  br label %hnsw_distance.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bf = and i32 %.pre.i103, 1024
  %.not64.i = icmp eq i32 %i.bf, 0
  br i1 %.not64.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = and i32 %.pre.i103, 16384
  %i.bh = icmp ne i32 %i.bg, 0
  %or.cond.i104 = and i1 %i.bc, %i.bh
  br i1 %or.cond.i104, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bi = tail call float @vectors_distance_float_avx2(ptr noundef readonly %i.ay, ptr noundef readonly %i.ba, i32 noundef %i.bb)
  br label %hnsw_distance.exit.i

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bj = icmp ugt i32 %i.bb, 7
  br i1 %i.bj, label %.lr.ph.preheader.i110, label %.preheader.i105

.lr.ph.preheader.i110:                            ; preds = %bb.n
  %i.bk = zext i32 %i.bb to i64
  br label %.lr.ph.i111

.preheader.loopexit.i114:                         ; preds = %.lr.ph.i111
  %i.bl = and i32 %i.bb, -8
  br label %.preheader.i105

.preheader.i105:                                  ; preds = %.preheader.loopexit.i114, %bb.n
  %.0.lcssa.i106 = phi i32 [ 0, %bb.n ], [ %i.bl, %.preheader.loopexit.i114 ] ; 2 uses
  %i.bm = phi <2 x float> [ zeroinitializer, %bb.n ], [ %i.cm, %.preheader.loopexit.i114 ] ; 2 uses
  %i.bn = icmp ult i32 %.0.lcssa.i106, %i.bb
  %i.bo = extractelement <2 x float> %i.bm, i64 1 ; 3 uses
  br i1 %i.bn, label %.lr.ph73.preheader.i, label %._crit_edge.i107

.lr.ph73.preheader.i:                             ; preds = %.preheader.i105
  %i.bp = zext i32 %.0.lcssa.i106 to i64          ; 3 uses
  %wide.trip.count.i108 = zext i32 %i.bb to i64   ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i108, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.i.prol.loopexit, label %.lr.ph73.i.prol

.lr.ph73.i.prol:                                  ; preds = %.lr.ph73.preheader.i, %.lr.ph73.i.prol
  %indvars.iv79.i.prol = phi i64 [ %indvars.iv.next80.i.prol, %.lr.ph73.i.prol ], [ %i.bp, %.lr.ph73.preheader.i ] ; 3 uses
  %.15871.i.prol = phi float [ %i.bu, %.lr.ph73.i.prol ], [ %i.bo, %.lr.ph73.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.i.prol ], [ 0, %.lr.ph73.preheader.i ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv79.i.prol
  %i.br = load float, ptr %i.bq, align 4, !tbaa !27
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv79.i.prol
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !27
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bt, float %.15871.i.prol) ; 3 uses
  %indvars.iv.next80.i.prol = add nuw nsw i64 %indvars.iv79.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.i.prol.loopexit, label %.lr.ph73.i.prol, !llvm.loop !180

.lr.ph73.i.prol.loopexit:                         ; preds = %.lr.ph73.i.prol, %.lr.ph73.preheader.i
  %.lcssa224.unr = phi float [ poison, %.lr.ph73.preheader.i ], [ %i.bu, %.lr.ph73.i.prol ]
  %indvars.iv79.i.unr = phi i64 [ %i.bp, %.lr.ph73.preheader.i ], [ %indvars.iv.next80.i.prol, %.lr.ph73.i.prol ]
  %.15871.i.unr = phi float [ %i.bo, %.lr.ph73.preheader.i ], [ %i.bu, %.lr.ph73.i.prol ]
  %i.bv = sub nsw i64 %i.bp, %wide.trip.count.i108
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge.i107, label %.lr.ph73.i

.lr.ph.i111:                                      ; preds = %.lr.ph.i111, %.lr.ph.preheader.i110
  %indvars.iv.i112 = phi i64 [ 0, %.lr.ph.preheader.i110 ], [ %indvars.iv.next.i113, %.lr.ph.i111 ] ; 3 uses
  %i.bx = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i110 ], [ %i.cm, %.lr.ph.i111 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i112
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i112
  %i.ca = load <8 x float>, ptr %i.by, align 4, !tbaa !27 ; 4 uses
  %i.cb = load <8 x float>, ptr %i.bz, align 4, !tbaa !27 ; 4 uses
  %2 = fmul <8 x float> %i.ca, %i.cb
  %i.cc = shufflevector <8 x float> %2, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.cd = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.ce = shufflevector <8 x float> %i.cb, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.ce, <2 x float> %i.cc)
  %i.cg = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.ch = shufflevector <8 x float> %i.cb, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ch, <2 x float> %i.cf)
  %i.cj = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.ck = shufflevector <8 x float> %i.cb, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.ck, <2 x float> %i.ci)
  %i.cm = fadd <2 x float> %i.bx, %i.cl           ; 2 uses
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 8 ; 2 uses
  %i.cn = or disjoint i64 %indvars.iv.next.i113, 7
  %i.co = icmp samesign ult i64 %i.cn, %i.bk
  br i1 %i.co, label %.lr.ph.i111, label %.preheader.loopexit.i114, !llvm.loop !42

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i.3, %.lr.ph73.i ], [ %indvars.iv79.i.unr, %.lr.ph73.i.prol.loopexit ] ; 6 uses
  %.15871.i = phi float [ %i.di, %.lr.ph73.i ], [ %.15871.i.unr, %.lr.ph73.i.prol.loopexit ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv79.i
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !27
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv79.i
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !27
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cs, float %.15871.i)
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next80.i
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !27
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next80.i
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !27
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cx, float %i.ct)
  %indvars.iv.next80.i.1 = add nuw nsw i64 %indvars.iv79.i, 2 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next80.i.1
  %i.da = load float, ptr %i.cz, align 4, !tbaa !27
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next80.i.1
  %i.dc = load float, ptr %i.db, align 4, !tbaa !27
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.da, float %i.dc, float %i.cy)
  %indvars.iv.next80.i.2 = add nuw nsw i64 %indvars.iv79.i, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next80.i.2
  %i.df = load float, ptr %i.de, align 4, !tbaa !27
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next80.i.2
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !27
  %i.di = tail call float @llvm.fmuladd.f32(float %i.df, float %i.dh, float %i.dd) ; 2 uses
  %indvars.iv.next80.i.3 = add nuw nsw i64 %indvars.iv79.i, 4 ; 2 uses
  %exitcond.not.i109.3 = icmp eq i64 %indvars.iv.next80.i.3, %wide.trip.count.i108
  br i1 %exitcond.not.i109.3, label %._crit_edge.i107, label %.lr.ph73.i, !llvm.loop !43

._crit_edge.i107:                                 ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i, %.preheader.i105
  %.158.lcssa.i = phi float [ %i.bo, %.preheader.i105 ], [ %.lcssa224.unr, %.lr.ph73.i.prol.loopexit ], [ %i.di, %.lr.ph73.i ]
  %i.dj = extractelement <2 x float> %i.bm, i64 0
  %i.dk = fadd float %i.dj, %.158.lcssa.i
  %i.dl = fsub float 1.000000e+00, %i.dk
  br label %hnsw_distance.exit.i

bb.o:                                             ; preds = %bb.h
  %i.dm = load ptr, ptr %i.ar, align 8, !tbaa !15 ; 12 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !15 ; 12 uses
  %i.dp = load i32, ptr %i.g, align 8, !tbaa !73  ; 9 uses
  %i.dq = load float, ptr %i.as, align 8, !tbaa !27 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !27 ; 4 uses
  %i.dt = icmp ugt i32 %i.dp, 63
  br i1 %i.dt, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 2 uses
  %i.dv = and i32 %i.du, 2129920
  %or.cond83.not.i = icmp eq i32 %i.dv, 2129920
  br i1 %or.cond83.not.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p
  %i.dw = tail call float @vectors_distance_q8_avx512(ptr noundef readonly %i.dm, ptr noundef readonly %i.do, i32 noundef %i.dp, float noundef %i.dq, float noundef %i.ds)
  br label %hnsw_distance.exit.i

bb.r:                                             ; preds = %bb.o
  %i.dx = icmp samesign ugt i32 %i.dp, 31
  br i1 %i.dx, label %..thread_crit_edge.i, label %bb.t

..thread_crit_edge.i:                             ; preds = %bb.r
  %.pre.i102 = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.p
  %i.dy = phi i32 [ %.pre.i102, %..thread_crit_edge.i ], [ %i.du, %bb.p ]
  %i.dz = and i32 %i.dy, 17408
  %or.cond84.not.i = icmp eq i32 %i.dz, 17408
  br i1 %or.cond84.not.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread.i
  %i.ea = tail call float @vectors_distance_q8_avx2(ptr noundef readonly %i.dm, ptr noundef readonly %i.do, i32 noundef %i.dp, float noundef %i.dq, float noundef %i.ds)
  br label %hnsw_distance.exit.i

bb.t:                                             ; preds = %.thread.i, %bb.r
  %i.eb = fcmp oeq float %i.dq, 0.000000e+00
  %i.ec = fcmp oeq float %i.ds, 0.000000e+00
  %or.cond.i = or i1 %i.eb, %i.ec
  br i1 %or.cond.i, label %hnsw_distance.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ee = insertelement <2 x float> %i.ed, float %i.ds, i64 1
  %i.ef = fdiv <2 x float> %i.ee, splat (float 1.270000e+02) ; 2 uses
  %shift = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ef, %shift
  %i.eg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.eh = icmp ugt i32 %i.dp, 7
  br i1 %i.eh, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.u
  %i.ei = zext i32 %i.dp to i64
  br label %.lr.ph.i99

.preheader.loopexit.i:                            ; preds = %.lr.ph.i99
  %i.ej = and i32 %i.dp, -8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.u
  %.072.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.gn, %.preheader.loopexit.i ] ; 3 uses
  %.071.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.hw, %.preheader.loopexit.i ]
  %.070.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.ej, %.preheader.loopexit.i ] ; 2 uses
  %i.ek = icmp ult i32 %.070.lcssa.i, %i.dp
  br i1 %i.ek, label %.lr.ph92.preheader.i, label %._crit_edge.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i
  %i.el = zext i32 %.070.lcssa.i to i64           ; 4 uses
  %wide.trip.count.i = zext i32 %i.dp to i64      ; 3 uses
  %i.em = sub nsw i64 %wide.trip.count.i, %i.el   ; 2 uses
  %min.iters.check = icmp ult i64 %i.em, 8
  br i1 %min.iters.check, label %.lr.ph92.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader.i
  %n.mod.vf = and i64 %wide.trip.count.i, 7       ; 2 uses
  %n.vec = sub nuw nsw i64 %i.em, %n.mod.vf       ; 2 uses
  %i.en = add nsw i64 %n.vec, %i.el
  %i.eo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.072.lcssa.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.eo, %vector.ph ], [ %i.fa, %vector.body ]
  %vec.phi210 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fb, %vector.body ]
  %i.ep = add i64 %index, %i.el                   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %wide.load = load <4 x i8>, ptr %i.eq, align 1, !tbaa !32
  %wide.load211 = load <4 x i8>, ptr %i.er, align 1, !tbaa !32
  %i.es = sext <4 x i8> %wide.load to <4 x i32>
  %i.et = sext <4 x i8> %wide.load211 to <4 x i32>
  %i.eu = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ep ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %wide.load212 = load <4 x i8>, ptr %i.eu, align 1, !tbaa !32
  %wide.load213 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !32
  %i.ew = sext <4 x i8> %wide.load212 to <4 x i32>
  %i.ex = sext <4 x i8> %wide.load213 to <4 x i32>
  %i.ey = mul nsw <4 x i32> %i.ew, %i.es
  %i.ez = mul nsw <4 x i32> %i.ex, %i.et
  %i.fa = add <4 x i32> %i.ey, %vec.phi           ; 2 uses
  %i.fb = add <4 x i32> %i.ez, %vec.phi210        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fb, %i.fa
  %i.fd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %.lr.ph92.preheader.i, %middle.block
  %indvars.iv98.i.ph = phi i64 [ %i.el, %.lr.ph92.preheader.i ], [ %i.en, %middle.block ]
  %.17390.i.ph = phi i32 [ %.072.lcssa.i, %.lr.ph92.preheader.i ], [ %i.fd, %middle.block ]
  br label %.lr.ph92.i

.lr.ph.i99:                                       ; preds = %.lr.ph.i99, %.lr.ph.preheader.i
  %indvars.iv.i100 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i101, %.lr.ph.i99 ] ; 10 uses
  %.07186.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.hw, %.lr.ph.i99 ]
  %.07285.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.gn, %.lr.ph.i99 ]
  %i.fe = or disjoint i64 %indvars.iv.i100, 7     ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv.i100
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !32
  %i.fh = sext i8 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.i100
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !32
  %i.fk = sext i8 %i.fj to i32
  %i.fl = mul nsw i32 %i.fk, %i.fh
  %i.fm = or disjoint i64 %indvars.iv.i100, 1     ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !32
  %i.fp = sext i8 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fm
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !32
  %i.fs = sext i8 %i.fr to i32
  %i.ft = mul nsw i32 %i.fs, %i.fp
  %i.fu = or disjoint i64 %indvars.iv.i100, 2     ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !32
  %i.fx = sext i8 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fu
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !32
  %i.ga = sext i8 %i.fz to i32
  %i.gb = mul nsw i32 %i.ga, %i.fx
  %i.gc = or disjoint i64 %indvars.iv.i100, 3     ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !32
end_hunk_2
