Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hnsw?download=true
inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@vectors_distance_float_avx2:bb.a
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.u = load <8 x float>, ptr %i.t, align 1, !tbaa !43
  %i.v = or disjoint i64 %indvars.iv, 24          ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = load <8 x float>, ptr %i.w, align 1, !tbaa !43
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.v
  %i.z = load <8 x float>, ptr %i.y, align 1, !tbaa !43
  %i.aa = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.s, <8 x float> %i.u, <8 x float> %i.p) ; 3 uses
  %i.ab = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.x, <8 x float> %i.z, <8 x float> %i.q) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !87

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
  %i.ae = load <8 x float>, ptr %i.ad, align 1, !tbaa !43
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ag = load <8 x float>, ptr %i.af, align 1, !tbaa !43
  %i.ah = or disjoint i64 %indvars.iv.epil.init, 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !43
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah
  %i.al = load <8 x float>, ptr %i.ak, align 1, !tbaa !43
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
  %i.ba = load float, ptr %i.az, align 4, !tbaa !39
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv71.prol
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !39
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bc, float %.062.prol) ; 3 uses
  %indvars.iv.next72.prol = add nuw nsw i64 %indvars.iv71.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter83
  br i1 %prol.iter.cmp.not, label %.lr.ph64.prol.loopexit, label %.lr.ph64.prol, !llvm.loop !88

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
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !39
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv71
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !39
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bj, float %.062)
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next72
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !39
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next72
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !39
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bo, float %i.bk)
  %indvars.iv.next72.1 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next72.1
  %i.br = load float, ptr %i.bq, align 4, !tbaa !39
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next72.1
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !39
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bt, float %i.bp)
  %indvars.iv.next72.2 = add nuw nsw i64 %indvars.iv71, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next72.2
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !39
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next72.2
  %i.by = load float, ptr %i.bx, align 4, !tbaa !39
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.by, float %i.bu) ; 2 uses
  %indvars.iv.next72.3 = add nuw nsw i64 %indvars.iv71, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next72.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge65, label %.lr.ph64, !llvm.loop !89

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
  %i.k = phi <2 x float> [ zeroinitializer, %bb.f ], [ %i.am, %.preheader.loopexit ] ; 2 uses
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
  %i.p = load float, ptr %i.o, align 4, !tbaa !39
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv79.prol
  %i.r = load float, ptr %i.q, align 4, !tbaa !39
  %i.s = tail call float @llvm.fmuladd.f32(float %i.p, float %i.r, float %.15871.prol) ; 3 uses
  %indvars.iv.next80.prol = add nuw nsw i64 %indvars.iv79.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !90

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader
  %.lcssa.unr = phi float [ poison, %.lr.ph73.preheader ], [ %i.s, %.lr.ph73.prol ]
  %indvars.iv79.unr = phi i64 [ %i.n, %.lr.ph73.preheader ], [ %indvars.iv.next80.prol, %.lr.ph73.prol ]
  %.15871.unr = phi float [ %i.m, %.lr.ph73.preheader ], [ %i.s, %.lr.ph73.prol ]
  %i.t = sub nsw i64 %i.n, %wide.trip.count
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge, label %.lr.ph73

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.v = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.am, %.lr.ph ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.y = load <8 x float>, ptr %i.w, align 4, !tbaa !39 ; 4 uses
  %i.z = load <8 x float>, ptr %i.x, align 4, !tbaa !39 ; 4 uses
  %i.aa = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.ab = shufflevector <8 x float> %i.z, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.ac = fmul <2 x float> %i.aa, %i.ab
  %i.ad = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.ae = shufflevector <8 x float> %i.z, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ae, <2 x float> %i.ac)
  %i.ag = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.ah = shufflevector <8 x float> %i.z, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ah, <2 x float> %i.af)
  %i.aj = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.ak = shufflevector <8 x float> %i.z, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.ak, <2 x float> %i.ai)
  %i.am = fadd <2 x float> %i.v, %i.al            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %3 = or disjoint i64 %indvars.iv.next, 7
  %i.an = icmp samesign ult i64 %3, %i.i
  br i1 %i.an, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !2

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %indvars.iv79 = phi i64 [ %indvars.iv.next80.3, %.lr.ph73 ], [ %indvars.iv79.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %.15871 = phi float [ %i.bh, %.lr.ph73 ], [ %.15871.unr, %.lr.ph73.prol.loopexit ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv79
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !39
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv79
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !39
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ar, float %.15871)
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next80
  %i.au = load float, ptr %i.at, align 4, !tbaa !39
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next80
  %i.aw = load float, ptr %i.av, align 4, !tbaa !39
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.au, float %i.aw, float %i.as)
  %indvars.iv.next80.1 = add nuw nsw i64 %indvars.iv79, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next80.1
  %i.az = load float, ptr %i.ay, align 4, !tbaa !39
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next80.1
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !39
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.az, float %i.bb, float %i.ax)
  %indvars.iv.next80.2 = add nuw nsw i64 %indvars.iv79, 3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next80.2
  %i.be = load float, ptr %i.bd, align 4, !tbaa !39
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next80.2
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !39
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bg, float %i.bc) ; 2 uses
  %indvars.iv.next80.3 = add nuw nsw i64 %indvars.iv79, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next80.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph73, !llvm.loop !3

._crit_edge:                                      ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %.preheader
  %.158.lcssa = phi float [ %i.m, %.preheader ], [ %.lcssa.unr, %.lr.ph73.prol.loopexit ], [ %i.bh, %.lr.ph73 ]
  %i.bi = extractelement <2 x float> %i.k, i64 0
  %i.bj = fadd float %i.bi, %.158.lcssa
  %i.bk = fsub float 1.000000e+00, %i.bj
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.b
  %.059 = phi float [ %i.c, %bb.b ], [ %i.g, %bb.e ], [ %i.bk, %._crit_edge ]
  ret float %.059
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local float @vectors_distance_q8_avx512(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = fcmp oeq float %3, 0.000000e+00
  %i.b = fcmp oeq float %4, 0.000000e+00
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

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
  %i.j = load <8 x i64>, ptr %i.i, align 1, !tbaa !43 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = load <8 x i64>, ptr %i.k, align 1, !tbaa !43 ; 2 uses
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
  %5 = or disjoint i64 %indvars.iv.next, 63
  %i.ac = icmp samesign ult i64 %5, %i.g
  br i1 %i.ac, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !91

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ad = and i32 %2, -64
  %i.ae = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ab)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.046.lcssa = phi i32 [ 0, %bb.b ], [ %i.ad, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.loopexit ] ; 4 uses
  %i.af = icmp ult i32 %.046.lcssa, %2
  br i1 %i.af, label %iter.check, label %._crit_edge81

iter.check:                                       ; preds = %._crit_edge
  %i.ag = zext i32 %.046.lcssa to i64             ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 4 uses
  %i.ah = sub nsw i64 %wide.trip.count, %i.ag     ; 4 uses
  %min.iters.check = icmp ult i64 %i.ah, 8
  br i1 %min.iters.check, label %.lr.ph80.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check97 = icmp ult i64 %i.ah, 64
  br i1 %min.iters.check97, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %wide.trip.count, 63            ; 3 uses
  %n.vec = sub nuw nsw i64 %i.ah, %i.ai           ; 3 uses
  %i.aj = add nsw i64 %n.vec, %i.ag
  %i.ak = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i32> [ %i.ak, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi98 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi99 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi100 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.al = add nuw i64 %index, %i.ag               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %wide.load = load <16 x i8>, ptr %i.am, align 1, !tbaa !43
  %wide.load101 = load <16 x i8>, ptr %i.an, align 1, !tbaa !43
  %wide.load102 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !43
  %wide.load103 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !43
  %i.aq = sext <16 x i8> %wide.load to <16 x i32>
  %i.ar = sext <16 x i8> %wide.load101 to <16 x i32>
  %i.as = sext <16 x i8> %wide.load102 to <16 x i32>
  %i.at = sext <16 x i8> %wide.load103 to <16 x i32>
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.al ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %wide.load104 = load <16 x i8>, ptr %i.au, align 1, !tbaa !43
  %wide.load105 = load <16 x i8>, ptr %i.av, align 1, !tbaa !43
  %wide.load106 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !43
  %wide.load107 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !43
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
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i32> %i.bh, %i.bg
  %bin.rdx108 = add <16 x i32> %i.bi, %bin.rdx
  %bin.rdx109 = add <16 x i32> %i.bj, %bin.rdx108
  %i.bl = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx109) ; 3 uses
  %cmp.n = icmp eq i64 %i.ai, 0
  br i1 %cmp.n, label %._crit_edge81, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.ai, 8
  br i1 %min.epilog.iters.check, label %.lr.ph80.preheader, label %vec.epilog.ph, !prof !95

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bl, %vec.epilog.iter.check ], [ %.lcssa, %vector.main.loop.iter.check ]
  %i.bm = and i64 %wide.trip.count, 7             ; 2 uses
  %n.vec110 = sub nsw i64 %i.ah, %i.bm            ; 2 uses
  %i.bn = add nsw i64 %n.vec110, %i.ag
  %i.bo = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi112 = phi <8 x i32> [ %i.bo, %vec.epilog.ph ], [ %i.bv, %vec.epilog.vector.body ]
  %i.bp = add nuw i64 %index111, %i.ag            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %wide.load113 = load <8 x i8>, ptr %i.bq, align 1, !tbaa !43
  %i.br = sext <8 x i8> %wide.load113 to <8 x i32>
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %i.bp
  %wide.load114 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !43
  %i.bt = sext <8 x i8> %wide.load114 to <8 x i32>
  %i.bu = mul nsw <8 x i32> %i.bt, %i.br
  %i.bv = add <8 x i32> %i.bu, %vec.phi112        ; 2 uses
  %index.next115 = add nuw i64 %index111, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !93

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bx = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bv) ; 2 uses
  %cmp.n116 = icmp eq i64 %i.bm, 0
  br i1 %cmp.n116, label %._crit_edge81, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv87.ph = phi i64 [ %i.ag, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  %.04378.ph = phi i32 [ %.lcssa, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ]
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %.lr.ph80
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %.lr.ph80 ], [ %indvars.iv87.ph, %.lr.ph80.preheader ] ; 3 uses
  %.04378 = phi i32 [ %i.cf, %.lr.ph80 ], [ %.04378.ph, %.lr.ph80.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv87
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !43
  %i.ca = sext i8 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv87
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !43
  %i.cd = sext i8 %i.cc to i32
  %i.ce = mul nsw i32 %i.cd, %i.ca
  %i.cf = add nsw i32 %i.ce, %.04378              ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge81, label %.lr.ph80, !llvm.loop !94

._crit_edge81:                                    ; preds = %.lr.ph80, %middle.block, %vec.epilog.middle.block, %._crit_edge
  %.043.lcssa = phi i32 [ %.lcssa, %._crit_edge ], [ %i.bx, %vec.epilog.middle.block ], [ %i.bl, %middle.block ], [ %i.cf, %.lr.ph80 ]
  %i.cg = sitofp i32 %.043.lcssa to float
  %i.ch = fmul float %i.e, %i.cg
  %i.ci = fsub float 1.000000e+00, %i.ch          ; 3 uses
  %i.cj = fcmp olt float %i.ci, 0.000000e+00
  %i.ck = fcmp ogt float %i.ci, 2.000000e+00
  %spec.store.select = select i1 %i.ck, float 2.000000e+00, float %i.ci
  %.0 = select i1 %i.cj, float 0.000000e+00, float %spec.store.select
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge81
  %.044 = phi float [ %.0, %._crit_edge81 ], [ 1.000000e+00, %bb.a ]
  ret float %.044
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local float @vectors_distance_q8_avx2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #9 {
bb.a:
  %i.a = fcmp oeq float %3, 0.000000e+00
  %i.b = fcmp oeq float %4, 0.000000e+00
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = insertelement <2 x float> poison, float %3, i64 0
  %i.d = insertelement <2 x float> %i.c, float %4, i64 1
  %i.e = fdiv <2 x float> %i.d, splat (float 1.270000e+02) ; 2 uses
  %shift = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.e, %shift
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.g = icmp ugt i32 %2, 31
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = zext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.i = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ac, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.k = load <4 x i64>, ptr %i.j, align 1, !tbaa !43 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.m = load <4 x i64>, ptr %i.l, align 1, !tbaa !43 ; 2 uses
  %i.n = bitcast <4 x i64> %i.k to <32 x i8>
  %i.o = shufflevector <32 x i8> %i.n, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.p = sext <16 x i8> %i.o to <16 x i16>
  %i.q = bitcast <4 x i64> %i.m to <32 x i8>
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.s = sext <16 x i8> %i.r to <16 x i16>
  %i.t = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.p, <16 x i16> %i.s)
  %i.u = add <8 x i32> %i.t, %i.i
  %i.v = bitcast <4 x i64> %i.k to <32 x i8>
  %i.w = shufflevector <32 x i8> %i.v, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.x = sext <16 x i8> %i.w to <16 x i16>
  %i.y = bitcast <4 x i64> %i.m to <32 x i8>
  %i.z = shufflevector <32 x i8> %i.y, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aa = sext <16 x i8> %i.z to <16 x i16>
  %i.ab = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.x, <16 x i16> %i.aa)
  %i.ac = add <8 x i32> %i.u, %i.ab               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %5 = or disjoint i64 %indvars.iv.next, 31
  %i.ad = icmp samesign ult i64 %5, %i.h
  br i1 %i.ad, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !96

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ae = and i32 %2, -32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.054.lcssa = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.loopexit ] ; 2 uses
  %i.af = phi <8 x i32> [ zeroinitializer, %bb.b ], [ %i.ac, %._crit_edge.loopexit ] ; 2 uses
  %i.ag = shufflevector <8 x i32> %i.af, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ah = shufflevector <8 x i32> %i.af, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ai = add <4 x i32> %i.ag, %i.ah              ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.ai, <4 x i32> %i.ai) ; 2 uses
  %i.ak = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.aj, <4 x i32> %i.aj)
  %i.al = extractelement <4 x i32> %i.ak, i64 0   ; 4 uses
  %i.am = icmp ult i32 %.054.lcssa, %2
  br i1 %i.am, label %iter.check, label %._crit_edge82

iter.check:                                       ; preds = %._crit_edge
  %i.an = zext i32 %.054.lcssa to i64             ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 4 uses
  %i.ao = sub nsw i64 %wide.trip.count, %i.an     ; 4 uses
  %min.iters.check = icmp ult i64 %i.ao, 8
  br i1 %min.iters.check, label %.lr.ph81.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check95 = icmp ult i64 %i.ao, 32
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %wide.trip.count, 31            ; 3 uses
  %n.vec = sub nuw nsw i64 %i.ao, %i.ap           ; 3 uses
  %i.aq = add nsw i64 %n.vec, %i.an
  %i.ar = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.al, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.ar, %vector.ph ], [ %i.bn, %vector.body ]
  %vec.phi96 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi97 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bp, %vector.body ]
  %vec.phi98 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bq, %vector.body ]
  %i.as = add nuw i64 %index, %i.an               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %wide.load = load <8 x i8>, ptr %i.at, align 1, !tbaa !43
  %wide.load99 = load <8 x i8>, ptr %i.au, align 1, !tbaa !43
  %wide.load100 = load <8 x i8>, ptr %i.av, align 1, !tbaa !43
  %wide.load101 = load <8 x i8>, ptr %i.aw, align 1, !tbaa !43
  %i.ax = sext <8 x i8> %wide.load to <8 x i32>
  %i.ay = sext <8 x i8> %wide.load99 to <8 x i32>
  %i.az = sext <8 x i8> %wide.load100 to <8 x i32>
  %i.ba = sext <8 x i8> %wide.load101 to <8 x i32>
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.as ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %wide.load102 = load <8 x i8>, ptr %i.bb, align 1, !tbaa !43
  %wide.load103 = load <8 x i8>, ptr %i.bc, align 1, !tbaa !43
  %wide.load104 = load <8 x i8>, ptr %i.bd, align 1, !tbaa !43
  %wide.load105 = load <8 x i8>, ptr %i.be, align 1, !tbaa !43
  %i.bf = sext <8 x i8> %wide.load102 to <8 x i32>
  %i.bg = sext <8 x i8> %wide.load103 to <8 x i32>
  %i.bh = sext <8 x i8> %wide.load104 to <8 x i32>
  %i.bi = sext <8 x i8> %wide.load105 to <8 x i32>
  %i.bj = mul nsw <8 x i32> %i.bf, %i.ax
  %i.bk = mul nsw <8 x i32> %i.bg, %i.ay
  %i.bl = mul nsw <8 x i32> %i.bh, %i.az
  %i.bm = mul nsw <8 x i32> %i.bi, %i.ba
  %i.bn = add <8 x i32> %i.bj, %vec.phi           ; 2 uses
  %i.bo = add <8 x i32> %i.bk, %vec.phi96         ; 2 uses
  %i.bp = add <8 x i32> %i.bl, %vec.phi97         ; 2 uses
  %i.bq = add <8 x i32> %i.bm, %vec.phi98         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.bo, %i.bn
  %bin.rdx106 = add <8 x i32> %i.bp, %bin.rdx
  %bin.rdx107 = add <8 x i32> %i.bq, %bin.rdx106
  %i.bs = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx107) ; 3 uses
  %cmp.n = icmp eq i64 %i.ap, 0
  br i1 %cmp.n, label %._crit_edge82, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.ap, 8
  br i1 %min.epilog.iters.check, label %.lr.ph81.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bs, %vec.epilog.iter.check ], [ %i.al, %vector.main.loop.iter.check ]
  %i.bt = and i64 %wide.trip.count, 7             ; 2 uses
  %n.vec108 = sub nsw i64 %i.ao, %i.bt            ; 2 uses
  %i.bu = add nsw i64 %n.vec108, %i.an
  %i.bv = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index109 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi110 = phi <8 x i32> [ %i.bv, %vec.epilog.ph ], [ %i.cc, %vec.epilog.vector.body ]
  %i.bw = add nuw i64 %index109, %i.an            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bw
  %wide.load111 = load <8 x i8>, ptr %i.bx, align 1, !tbaa !43
  %i.by = sext <8 x i8> %wide.load111 to <8 x i32>
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  %wide.load112 = load <8 x i8>, ptr %i.bz, align 1, !tbaa !43
  %i.ca = sext <8 x i8> %wide.load112 to <8 x i32>
  %i.cb = mul nsw <8 x i32> %i.ca, %i.by
  %i.cc = add <8 x i32> %i.cb, %vec.phi110        ; 2 uses
  %index.next113 = add nuw i64 %index109, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next113, %n.vec108
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !98

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ce = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.cc) ; 2 uses
  %cmp.n114 = icmp eq i64 %i.bt, 0
  br i1 %cmp.n114, label %._crit_edge82, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv87.ph = phi i64 [ %i.an, %iter.check ], [ %i.aq, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  %.05179.ph = phi i32 [ %i.al, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ]
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %.lr.ph81
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %.lr.ph81 ], [ %indvars.iv87.ph, %.lr.ph81.preheader ] ; 3 uses
  %.05179 = phi i32 [ %i.cm, %.lr.ph81 ], [ %.05179.ph, %.lr.ph81.preheader ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv87
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !43
  %i.ch = sext i8 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv87
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !43
  %i.ck = sext i8 %i.cj to i32
  %i.cl = mul nsw i32 %i.ck, %i.ch
  %i.cm = add nsw i32 %i.cl, %.05179              ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge82, label %.lr.ph81, !llvm.loop !99

._crit_edge82:                                    ; preds = %.lr.ph81, %middle.block, %vec.epilog.middle.block, %._crit_edge
  %.051.lcssa = phi i32 [ %i.al, %._crit_edge ], [ %i.ce, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cm, %.lr.ph81 ]
  %i.cn = sitofp i32 %.051.lcssa to float
  %i.co = fmul float %i.f, %i.cn
  %i.cp = fsub float 1.000000e+00, %i.co          ; 3 uses
  %i.cq = fcmp olt float %i.cp, 0.000000e+00
  %i.cr = fcmp ogt float %i.cp, 2.000000e+00
  %spec.store.select = select i1 %i.cr, float 2.000000e+00, float %i.cp
  %.0 = select i1 %i.cq, float 0.000000e+00, float %spec.store.select
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge82
  %.052 = phi float [ %.0, %._crit_edge82 ], [ 1.000000e+00, %bb.a ]
  ret float %.052
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @vectors_distance_q8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ugt i32 %2, 63
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 2 uses
  %i.c = and i32 %i.b, 2129920
  %or.cond83.not = icmp eq i32 %i.c, 2129920
  br i1 %or.cond83.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = tail call float @vectors_distance_q8_avx512(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, float noundef %4)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i32 %2, 31
  br i1 %i.e, label %..thread_crit_edge, label %bb.f

..thread_crit_edge:                               ; preds = %bb.d
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.f = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.b, %bb.b ]
  %i.g = and i32 %i.f, 17408
  %or.cond84.not = icmp eq i32 %i.g, 17408
  br i1 %or.cond84.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  %i.h = tail call float @vectors_distance_q8_avx2(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, float noundef %4)
  br label %bb.h

bb.f:                                             ; preds = %.thread, %bb.d
  %i.i = fcmp oeq float %3, 0.000000e+00
  %i.j = fcmp oeq float %4, 0.000000e+00
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = insertelement <2 x float> poison, float %3, i64 0
  %i.l = insertelement <2 x float> %i.k, float %4, i64 1
  %i.m = fdiv <2 x float> %i.l, splat (float 1.270000e+02) ; 2 uses
  %shift = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.m, %shift
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.o = icmp ugt i32 %2, 7
  br i1 %i.o, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.p = zext i32 %2 to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.q = and i32 %2, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.g
  %.071.lcssa = phi i32 [ 0, %bb.g ], [ %i.bv, %.preheader.loopexit ] ; 3 uses
  %.070.lcssa = phi i32 [ 0, %bb.g ], [ %i.de, %.preheader.loopexit ]
  %.069.lcssa = phi i32 [ 0, %bb.g ], [ %i.q, %.preheader.loopexit ] ; 2 uses
  %i.r = icmp ult i32 %.069.lcssa, %2
  br i1 %i.r, label %.lr.ph92.preheader, label %._crit_edge

.lr.ph92.preheader:                               ; preds = %.preheader
  %i.s = zext i32 %.069.lcssa to i64              ; 4 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.t = sub nsw i64 %wide.trip.count, %i.s       ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 8
  br i1 %min.iters.check, label %.lr.ph92.preheader113, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader
  %i.u = and i64 %wide.trip.count, 7              ; 2 uses
  %n.vec = sub nuw nsw i64 %i.t, %i.u             ; 2 uses
  %i.v = add nsw i64 %n.vec, %i.s
  %i.w = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.071.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.w, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi108 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.x = add nuw i64 %index, %i.s                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %wide.load = load <4 x i8>, ptr %i.y, align 1, !tbaa !43
  %wide.load109 = load <4 x i8>, ptr %i.z, align 1, !tbaa !43
  %i.aa = sext <4 x i8> %wide.load to <4 x i32>
  %i.ab = sext <4 x i8> %wide.load109 to <4 x i32>
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.x ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %wide.load110 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !43
  %wide.load111 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !43
  %i.ae = sext <4 x i8> %wide.load110 to <4 x i32>
  %i.af = sext <4 x i8> %wide.load111 to <4 x i32>
  %i.ag = mul nsw <4 x i32> %i.ae, %i.aa
  %i.ah = mul nsw <4 x i32> %i.af, %i.ab
  %i.ai = add <4 x i32> %i.ag, %vec.phi           ; 2 uses
  %i.aj = add <4 x i32> %i.ah, %vec.phi108        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aj, %i.ai
  %i.al = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.u, 0
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph92.preheader113

.lr.ph92.preheader113:                            ; preds = %.lr.ph92.preheader, %middle.block
  %indvars.iv98.ph = phi i64 [ %i.s, %.lr.ph92.preheader ], [ %i.v, %middle.block ]
  %.17290.ph = phi i32 [ %.071.lcssa, %.lr.ph92.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph92

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 10 uses
  %.07086 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.de, %.lr.ph ]
  %.07185 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bv, %.lr.ph ]
  %i.am = or disjoint i64 %indvars.iv, 7          ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !43
  %i.ap = sext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !43
  %i.as = sext i8 %i.ar to i32
  %i.at = mul nsw i32 %i.as, %i.ap
  %i.au = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !43
  %i.ax = sext i8 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !43
  %i.ba = sext i8 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !43
  %i.bf = sext i8 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !43
  %i.bi = sext i8 %i.bh to i32
  %i.bj = mul nsw i32 %i.bi, %i.bf
  %i.bk = or disjoint i64 %indvars.iv, 3          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !43
  %i.bn = sext i8 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %i.bk
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !43
  %i.bq = sext i8 %i.bp to i32
  %i.br = mul nsw i32 %i.bq, %i.bn
  %i.bs = add i32 %i.at, %.07185
  %i.bt = add i32 %i.bs, %i.bb
  %i.bu = add i32 %i.bt, %i.bj
  %i.bv = add i32 %i.bu, %i.br                    ; 2 uses
  %i.bw = or disjoint i64 %indvars.iv, 4          ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !43
  %i.bz = sext i8 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !43
  %i.cc = sext i8 %i.cb to i32
  %i.cd = mul nsw i32 %i.cc, %i.bz
  %i.ce = or disjoint i64 %indvars.iv, 5          ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !43
  %i.ch = sext i8 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !43
  %i.ck = sext i8 %i.cj to i32
  %i.cl = mul nsw i32 %i.ck, %i.ch
  %i.cm = or disjoint i64 %indvars.iv, 6          ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !43
  %i.cp = sext i8 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !43
  %i.cs = sext i8 %i.cr to i32
  %i.ct = mul nsw i32 %i.cs, %i.cp
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !43
  %i.cw = sext i8 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !43
  %i.cz = sext i8 %i.cy to i32
  %i.da = mul nsw i32 %i.cz, %i.cw
  %i.db = add i32 %i.cd, %.07086
  %i.dc = add i32 %i.db, %i.cl
  %i.dd = add i32 %i.dc, %i.ct
  %i.de = add i32 %i.dd, %i.da                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %5 = or disjoint i64 %indvars.iv.next, 7
  %i.df = icmp samesign ult i64 %5, %i.p
  br i1 %i.df, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !4

.lr.ph92:                                         ; preds = %.lr.ph92.preheader113, %.lr.ph92
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.lr.ph92 ], [ %indvars.iv98.ph, %.lr.ph92.preheader113 ] ; 3 uses
  %.17290 = phi i32 [ %i.dn, %.lr.ph92 ], [ %.17290.ph, %.lr.ph92.preheader113 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv98
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !43
  %i.di = sext i8 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv98
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !43
  %i.dl = sext i8 %i.dk to i32
  %i.dm = mul nsw i32 %i.dl, %i.di
  %i.dn = add nsw i32 %i.dm, %.17290              ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph92, !llvm.loop !101

._crit_edge:                                      ; preds = %.lr.ph92, %middle.block, %.preheader
  %.172.lcssa = phi i32 [ %.071.lcssa, %.preheader ], [ %i.al, %middle.block ], [ %i.dn, %.lr.ph92 ]
  %i.do = add nsw i32 %.172.lcssa, %.070.lcssa
  %i.dp = sitofp i32 %i.do to float
  %i.dq = fmul float %i.n, %i.dp
  %i.dr = fsub float 1.000000e+00, %i.dq          ; 3 uses
  %i.ds = fcmp olt float %i.dr, 0.000000e+00
  %i.dt = fcmp ogt float %i.dr, 2.000000e+00
  %spec.store.select = select i1 %i.dt, float 2.000000e+00, float %i.dr
  %.0 = select i1 %i.ds, float 0.000000e+00, float %spec.store.select
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %._crit_edge, %bb.e, %bb.c
  %.073 = phi float [ %i.d, %bb.c ], [ %i.h, %bb.e ], [ %.0, %._crit_edge ], [ 1.000000e+00, %bb.f ]
  ret float %.073
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @vectors_distance_bin(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ugt i32 %2, 511
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 2 uses
  %i.c = and i32 %i.b, 1073774592
  %or.cond.not = icmp eq i32 %i.c, 1073774592
  br i1 %or.cond.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc float @vectors_distance_bin_avx512_vpopcnt(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i32 %2, 255
  br i1 %i.e, label %..thread_crit_edge, label %bb.f

..thread_crit_edge:                               ; preds = %bb.d
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.f = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.b, %bb.b ]
  %i.g = and i32 %i.f, 17412
  %or.cond17.not = icmp eq i32 %i.g, 17412
  br i1 %or.cond17.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  %i.h = tail call fastcc float @vectors_distance_bin_avx2(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %bb.k

bb.f:                                             ; preds = %.thread, %bb.d
  %i.i = add i32 %2, 63
  %i.j = lshr i32 %i.i, 6                         ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %hnsw_vectors_distance_bin.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.k = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @hnsw_cpu_supports_popcnt.popcnt_supported) ; 2 uses
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.m = lshr i32 %i.l, 2
  %.lobit.i.i.i = and i32 %i.m, 1                 ; 2 uses
  %.promoted.i = load i32, ptr %i.k, align 4, !tbaa !25
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  br label %bb.g

._crit_edge.loopexit.i:                           ; preds = %hnsw_popcount.exit.i
  %i.n = uitofp i32 %i.y to float
  %i.o = fmul nnan float %i.n, 2.000000e+00
  br label %hnsw_vectors_distance_bin.exit

bb.g:                                             ; preds = %hnsw_popcount.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %hnsw_popcount.exit.i ] ; 3 uses
  %.lobit.i.i15.i = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %.lobit.i.i14.i, %hnsw_popcount.exit.i ] ; 2 uses
  %.01112.i = phi i32 [ 0, %.lr.ph.i ], [ %i.y, %hnsw_popcount.exit.i ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27
  %i.t = xor i64 %i.s, %i.q                       ; 2 uses
  %i.u = icmp eq i32 %.lobit.i.i15.i, -1
  br i1 %i.u, label %bb.h, label %hnsw_cpu_supports_popcnt.exit.i.i

bb.h:                                             ; preds = %bb.g
  store i32 %.lobit.i.i.i, ptr %i.k, align 4, !tbaa !25
  br label %hnsw_cpu_supports_popcnt.exit.i.i

hnsw_cpu_supports_popcnt.exit.i.i:                ; preds = %bb.h, %bb.g
  %.lobit.i.i14.i = phi i32 [ %.lobit.i.i.i, %bb.h ], [ %.lobit.i.i15.i, %bb.g ] ; 2 uses
  %.not.i.i = icmp eq i32 %.lobit.i.i14.i, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i, !prof !103

bb.i:                                             ; preds = %hnsw_cpu_supports_popcnt.exit.i.i
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.t)
  %i.w = trunc nuw nsw i64 %i.v to i32
  br label %hnsw_popcount.exit.i

bb.j:                                             ; preds = %hnsw_cpu_supports_popcnt.exit.i.i
  %i.x = tail call fastcc i32 @hnsw_popcount64(i64 noundef %i.t)
  br label %hnsw_popcount.exit.i

hnsw_popcount.exit.i:                             ; preds = %bb.j, %bb.i
  %.0.i.i = phi i32 [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  %i.y = add i32 %.0.i.i, %.01112.i               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.g, !llvm.loop !102

hnsw_vectors_distance_bin.exit:                   ; preds = %bb.f, %._crit_edge.loopexit.i
  %.011.lcssa.i = phi float [ 0.000000e+00, %bb.f ], [ %i.o, %._crit_edge.loopexit.i ]
  %i.z = uitofp i32 %2 to float
  %i.aa = fdiv float %.011.lcssa.i, %i.z
  br label %bb.k

bb.k:                                             ; preds = %hnsw_vectors_distance_bin.exit, %bb.e, %bb.c
  %.0 = phi float [ %i.d, %bb.c ], [ %i.h, %bb.e ], [ %i.aa, %hnsw_vectors_distance_bin.exit ]
  ret float %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc float @vectors_distance_bin_avx512_vpopcnt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 512, 0) %2) unnamed_addr #12 {
bb.a:
  %i.a = add i32 %2, 63                           ; 2 uses
  %i.b = lshr i32 %i.a, 6                         ; 3 uses
  %i.c = icmp ugt i32 %i.a, 511
  br i1 %i.c, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.02739 = phi <8 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.k, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.f = load <8 x i64>, ptr %i.e, align 1, !tbaa !43
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.h = load <8 x i64>, ptr %i.g, align 1, !tbaa !43
  %i.i = xor <8 x i64> %i.h, %i.f
  %i.j = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.i)
  %i.k = add <8 x i64> %i.j, %.02739              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %3 = or disjoint i64 %indvars.iv.next, 7
  %i.l = icmp samesign ult i64 %3, %i.d
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !104

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.n = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.k)
  %i.o = trunc i64 %i.n to i32
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.126 = phi i32 [ %i.m, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.0 = phi i32 [ %i.o, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %i.p = icmp samesign ult i32 %.126, %i.b
  br i1 %i.p, label %iter.check, label %._crit_edge46

iter.check:                                       ; preds = %bb.b
  %i.q = zext nneg i32 %.126 to i64               ; 6 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %i.r = sub nsw i64 %wide.trip.count, %i.q       ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph45.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check57 = icmp ult i64 %i.r, 32
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.r, 24
  %n.vec = and i64 %i.r, -32                      ; 4 uses
  %i.t = add nsw i64 %n.vec, %i.q
  %i.u = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.u, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi58 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi59 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi60 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %i.v = add nuw i64 %index, %i.q                 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %wide.load = load <8 x i64>, ptr %i.w, align 8, !tbaa !27
  %wide.load61 = load <8 x i64>, ptr %i.x, align 8, !tbaa !27
  %wide.load62 = load <8 x i64>, ptr %i.y, align 8, !tbaa !27
  %wide.load63 = load <8 x i64>, ptr %i.z, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %wide.load64 = load <8 x i64>, ptr %i.aa, align 8, !tbaa !27
  %wide.load65 = load <8 x i64>, ptr %i.ab, align 8, !tbaa !27
  %wide.load66 = load <8 x i64>, ptr %i.ac, align 8, !tbaa !27
  %wide.load67 = load <8 x i64>, ptr %i.ad, align 8, !tbaa !27
  %i.ae = xor <8 x i64> %wide.load64, %wide.load
  %i.af = xor <8 x i64> %wide.load65, %wide.load61
  %i.ag = xor <8 x i64> %wide.load66, %wide.load62
  %i.ah = xor <8 x i64> %wide.load67, %wide.load63
  %i.ai = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.ae)
  %i.aj = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.af)
  %i.ak = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.ag)
  %i.al = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.ah)
  %i.am = trunc nuw nsw <8 x i64> %i.ai to <8 x i32>
  %i.an = trunc nuw nsw <8 x i64> %i.aj to <8 x i32>
  %i.ao = trunc nuw nsw <8 x i64> %i.ak to <8 x i32>
  %i.ap = trunc nuw nsw <8 x i64> %i.al to <8 x i32>
  %i.aq = add <8 x i32> %vec.phi, %i.am           ; 2 uses
  %i.ar = add <8 x i32> %vec.phi58, %i.an         ; 2 uses
  %i.as = add <8 x i32> %vec.phi59, %i.ao         ; 2 uses
  %i.at = add <8 x i32> %vec.phi60, %i.ap         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.ar, %i.aq
  %bin.rdx68 = add <8 x i32> %i.as, %bin.rdx
  %bin.rdx69 = add <8 x i32> %i.at, %bin.rdx68
  %i.av = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx69) ; 3 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge46, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %.lr.ph45.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.av, %vec.epilog.iter.check ], [ %.0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.r, -8                     ; 3 uses
  %i.aw = add nsw i64 %n.vec70, %i.q
  %i.ax = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next75, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi72 = phi <8 x i32> [ %i.ax, %vec.epilog.ph ], [ %i.be, %vec.epilog.vector.body ]
  %i.ay = add nuw i64 %index71, %i.q              ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay
  %wide.load73 = load <8 x i64>, ptr %i.az, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ay
  %wide.load74 = load <8 x i64>, ptr %i.ba, align 8, !tbaa !27
  %i.bb = xor <8 x i64> %wide.load74, %wide.load73
  %i.bc = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.bb)
  %i.bd = trunc nuw nsw <8 x i64> %i.bc to <8 x i32>
  %i.be = add <8 x i32> %vec.phi72, %i.bd         ; 2 uses
  %index.next75 = add nuw i64 %index71, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next75, %n.vec70
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !106

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bg = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.be) ; 2 uses
  %cmp.n76 = icmp eq i64 %i.r, %n.vec70
  br i1 %cmp.n76, label %._crit_edge46, label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv51.ph = phi i64 [ %i.q, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  %.143.ph = phi i32 [ %.0, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  br label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %.lr.ph45
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.lr.ph45 ], [ %indvars.iv51.ph, %.lr.ph45.preheader ] ; 3 uses
  %.143 = phi i32 [ %i.bo, %.lr.ph45 ], [ %.143.ph, %.lr.ph45.preheader ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv51
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !27
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv51
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !27
  %i.bl = xor i64 %i.bk, %i.bi
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bl)
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = add i32 %.143, %i.bn                    ; 2 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge46, label %.lr.ph45, !llvm.loop !107

._crit_edge46:                                    ; preds = %.lr.ph45, %middle.block, %vec.epilog.middle.block, %bb.b
  %.1.lcssa = phi i32 [ %.0, %bb.b ], [ %i.bg, %vec.epilog.middle.block ], [ %i.av, %middle.block ], [ %i.bo, %.lr.ph45 ]
  %i.bp = uitofp i32 %.1.lcssa to float
  %i.bq = fmul nnan float %i.bp, 2.000000e+00
  %i.br = uitofp i32 %2 to float
  %i.bs = fdiv float %i.bq, %i.br
  ret float %i.bs
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc float @vectors_distance_bin_avx2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 256, 0) %2) unnamed_addr #9 {
bb.a:
  %i.a = add i32 %2, 63                           ; 2 uses
  %i.b = lshr i32 %i.a, 6                         ; 3 uses
  %i.c = icmp ugt i32 %i.a, 255
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %slprdx.acc = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %slprdx.acc70, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.f = load <4 x i64>, ptr %i.e, align 1, !tbaa !43
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.h = load <4 x i64>, ptr %i.g, align 1, !tbaa !43
  %i.i = xor <4 x i64> %i.h, %i.f
  %i.j = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.i)
  %i.k = trunc nuw nsw <4 x i64> %i.j to <4 x i32>
  %slprdx.acc70 = add <4 x i32> %slprdx.acc, %i.k ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %3 = or disjoint i64 %indvars.iv.next, 3
  %i.l = icmp samesign ult i64 %3, %i.d
  br i1 %i.l, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !108

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.m = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.n = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %slprdx.acc70)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %slprdx.sel = phi i32 [ 0, %bb.a ], [ %i.n, %.loopexit.loopexit ] ; 4 uses
  %.127 = phi i32 [ 0, %bb.a ], [ %i.m, %.loopexit.loopexit ] ; 2 uses
  %i.o = icmp samesign ult i32 %.127, %i.b
  br i1 %i.o, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.loopexit
  %i.p = zext nneg i32 %.127 to i64               ; 6 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %i.q = sub nsw i64 %wide.trip.count, %i.p       ; 7 uses
  %min.iters.check = icmp ult i64 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph38.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check48 = icmp ult i64 %i.q, 16
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %i.q, 12
  %n.vec = and i64 %i.q, -16                      ; 4 uses
  %i.s = add nsw i64 %n.vec, %i.p
  %i.t = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %slprdx.sel, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.t, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi49 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi51 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %i.u = add nuw i64 %index, %i.p                 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %wide.load = load <4 x i64>, ptr %i.v, align 8, !tbaa !27
  %wide.load52 = load <4 x i64>, ptr %i.w, align 8, !tbaa !27
  %wide.load53 = load <4 x i64>, ptr %i.x, align 8, !tbaa !27
  %wide.load54 = load <4 x i64>, ptr %i.y, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.u ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load55 = load <4 x i64>, ptr %i.z, align 8, !tbaa !27
  %wide.load56 = load <4 x i64>, ptr %i.aa, align 8, !tbaa !27
  %wide.load57 = load <4 x i64>, ptr %i.ab, align 8, !tbaa !27
  %wide.load58 = load <4 x i64>, ptr %i.ac, align 8, !tbaa !27
  %i.ad = xor <4 x i64> %wide.load55, %wide.load
  %i.ae = xor <4 x i64> %wide.load56, %wide.load52
  %i.af = xor <4 x i64> %wide.load57, %wide.load53
  %i.ag = xor <4 x i64> %wide.load58, %wide.load54
  %i.ah = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ad)
  %i.ai = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ae)
  %i.aj = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.af)
  %i.ak = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ag)
  %i.al = trunc nuw nsw <4 x i64> %i.ah to <4 x i32>
  %i.am = trunc nuw nsw <4 x i64> %i.ai to <4 x i32>
  %i.an = trunc nuw nsw <4 x i64> %i.aj to <4 x i32>
  %i.ao = trunc nuw nsw <4 x i64> %i.ak to <4 x i32>
  %i.ap = add <4 x i32> %vec.phi, %i.al           ; 2 uses
  %i.aq = add <4 x i32> %vec.phi49, %i.am         ; 2 uses
  %i.ar = add <4 x i32> %vec.phi50, %i.an         ; 2 uses
  %i.as = add <4 x i32> %vec.phi51, %i.ao         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aq, %i.ap
  %bin.rdx59 = add <4 x i32> %i.ar, %bin.rdx
  %bin.rdx60 = add <4 x i32> %i.as, %bin.rdx59
  %i.au = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx60) ; 3 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %.lr.ph38.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.au, %vec.epilog.iter.check ], [ %slprdx.sel, %vector.main.loop.iter.check ]
  %n.vec61 = and i64 %i.q, -4                     ; 3 uses
  %i.av = add nsw i64 %n.vec61, %i.p
  %i.aw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next66, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi63 = phi <4 x i32> [ %i.aw, %vec.epilog.ph ], [ %i.bd, %vec.epilog.vector.body ]
  %i.ax = add nuw i64 %index62, %i.p              ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax
  %wide.load64 = load <4 x i64>, ptr %i.ay, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax
  %wide.load65 = load <4 x i64>, ptr %i.az, align 8, !tbaa !27
  %i.ba = xor <4 x i64> %wide.load65, %wide.load64
  %i.bb = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ba)
  %i.bc = trunc nuw nsw <4 x i64> %i.bb to <4 x i32>
  %i.bd = add <4 x i32> %vec.phi63, %i.bc         ; 2 uses
  %index.next66 = add nuw i64 %index62, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !110

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bd) ; 2 uses
  %cmp.n67 = icmp eq i64 %i.q, %n.vec61
  br i1 %cmp.n67, label %._crit_edge, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv43.ph = phi i64 [ %i.p, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  %.237.ph = phi i32 [ %slprdx.sel, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %.lr.ph38
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %.lr.ph38 ], [ %indvars.iv43.ph, %.lr.ph38.preheader ] ; 3 uses
  %.237 = phi i32 [ %i.bn, %.lr.ph38 ], [ %.237.ph, %.lr.ph38.preheader ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv43
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv43
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !27
  %i.bk = xor i64 %i.bj, %i.bh
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bk)
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = add i32 %.237, %i.bm                    ; 2 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph38, !llvm.loop !111

._crit_edge:                                      ; preds = %.lr.ph38, %middle.block, %vec.epilog.middle.block, %.loopexit
  %.2.lcssa = phi i32 [ %slprdx.sel, %.loopexit ], [ %i.bf, %vec.epilog.middle.block ], [ %i.au, %middle.block ], [ %i.bn, %.lr.ph38 ]
  %i.bo = uitofp i32 %.2.lcssa to float
  %i.bp = fmul nnan float %i.bo, 2.000000e+00
  %i.bq = uitofp i32 %2 to float
  %i.br = fdiv float %i.bp, %i.bq
  ret float %i.br
}

; Function Attrs: nounwind uwtable
define dso_local float @hnsw_distance(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !51
  %i.i = tail call float @vectors_distance_float(ptr noundef %i.d, ptr noundef %i.f, i32 noundef %i.h)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load float, ptr %i.p, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load float, ptr %i.r, align 8, !tbaa !39
  %i.t = tail call float @vectors_distance_q8(ptr noundef %i.k, ptr noundef %i.m, i32 noundef %i.o, float noundef %i.q, float noundef %i.s)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !51
  %i.aa = tail call float @vectors_distance_bin(ptr noundef %i.v, ptr noundef %i.x, i32 noundef %i.z)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi float [ %i.i, %bb.b ], [ %i.t, %bb.c ], [ %i.aa, %bb.d ]
  ret float %.0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @quantize_to_q8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #14 {
bb.a:
  %.not43 = icmp eq i32 %2, 0
  br i1 %.not43, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64           ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.a = icmp eq i32 %2, 1
end_hunk_0
begin_hunk_1_@quantize_to_q8:bb.a
  %xtraiter59 = and i64 %wide.trip.count, 1
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %.lr.ph41.prol.loopexit, label %.lr.ph41.prol

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader56
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv46.ph
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !39
  %i.af = fmul float %i.t, %i.ae
  %i.ag = tail call float @llvm.round.f32(float %i.af)
  %i.ah = fptosi float %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv46.ph
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !43
  %indvars.iv.next47.prol = or disjoint i64 %indvars.iv46.ph, 1
  br label %.lr.ph41.prol.loopexit

.lr.ph41.prol.loopexit:                           ; preds = %.lr.ph41.prol, %.lr.ph41.preheader56
  %indvars.iv46.unr = phi i64 [ %indvars.iv46.ph, %.lr.ph41.preheader56 ], [ %indvars.iv.next47.prol, %.lr.ph41.prol ]
  %i.aj = add nsw i64 %wide.trip.count, -1
  %i.ak = icmp eq i64 %indvars.iv46.ph, %i.aj
  br i1 %i.ak, label %._crit_edge42, label %.lr.ph41

._crit_edge42:                                    ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41, %middle.block
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.e, label %bb.d

.lr.ph41:                                         ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41
  %indvars.iv46 = phi i64 [ %indvars.iv.next47.1, %.lr.ph41 ], [ %indvars.iv46.unr, %.lr.ph41.prol.loopexit ] ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv46
  %i.am = load float, ptr %i.al, align 4, !tbaa !39
  %i.an = fmul float %i.t, %i.am
  %i.ao = tail call float @llvm.round.f32(float %i.an)
  %i.ap = fptosi float %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv46
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !43
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next47
  %i.as = load float, ptr %i.ar, align 4, !tbaa !39
  %i.at = fmul float %i.t, %i.as
  %i.au = tail call float @llvm.round.f32(float %i.at)
  %i.av = fptosi float %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next47
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !43
  %indvars.iv.next47.1 = add nuw nsw i64 %indvars.iv46, 2 ; 2 uses
  %exitcond50.not.1 = icmp eq i64 %indvars.iv.next47.1, %wide.trip.count49
  br i1 %exitcond50.not.1, label %._crit_edge42, label %.lr.ph41, !llvm.loop !117

bb.d:                                             ; preds = %._crit_edge42
  store float %.2.lcssa, ptr %3, align 4, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge42, %bb.d, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @quantize_to_bin(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = add i32 %2, 63
  %i.b = lshr i32 %i.a, 3
  %i.c = and i32 %i.b, 536870904
  %i.d = zext nneg i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 %i.d, i1 false)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %2, 1
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod13 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.g = load float, ptr %i.f, align 4, !tbaa !39
  %i.h = fcmp ogt float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.i = and i64 %indvars.iv.epil.init, 63
  %i.j = lshr i64 %indvars.iv.epil.init, 6
  %i.k = shl nuw i64 1, %i.i
  %i.l = and i64 %i.j, 67108863
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = or i64 %i.n, %i.k
  store i64 %i.o, ptr %i.m, align 8, !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.lr.ph.epil.preheader, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.e, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = load float, ptr %i.p, align 4, !tbaa !39
  %i.r = fcmp ogt float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.c, label %.lr.ph.1

bb.c:                                             ; preds = %.lr.ph
  %i.s = and i64 %indvars.iv, 62
  %i.t = lshr i64 %indvars.iv, 6
  %i.u = shl nuw nsw i64 1, %i.s
  %i.v = and i64 %i.t, 67108863
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !27
  %i.y = or i64 %i.x, %i.u
  store i64 %i.y, ptr %i.w, align 8, !tbaa !27
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.c, %.lr.ph
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.aa = load float, ptr %i.z, align 4, !tbaa !39
  %i.ab = fcmp ogt float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.1
  %i.ac = and i64 %indvars.iv.next, 63
  %i.ad = lshr i64 %indvars.iv, 6
  %i.ae = shl nuw i64 1, %i.ac
  %i.af = and i64 %i.ad, 67108863
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !27
  %i.ai = or i64 %i.ah, %i.ae
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !6
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @hnsw_normalize_vector(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp ugt i32 %2, 3
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %2 to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.c = and i32 %2, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.038.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.z, %.preheader.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.c, %.preheader.loopexit ] ; 2 uses
  %i.d = icmp ult i32 %.0.lcssa, %2
  br i1 %i.d, label %.lr.ph48.preheader, label %._crit_edge

.lr.ph48.preheader:                               ; preds = %.preheader
  %i.e = zext i32 %.0.lcssa to i64                ; 3 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph48.prol.loopexit, label %.lr.ph48.prol

.lr.ph48.prol:                                    ; preds = %.lr.ph48.preheader, %.lr.ph48.prol
  %indvars.iv57.prol = phi i64 [ %indvars.iv.next58.prol, %.lr.ph48.prol ], [ %i.e, %.lr.ph48.preheader ] ; 2 uses
  %.13946.prol = phi float [ %i.h, %.lr.ph48.prol ], [ %.038.lcssa, %.lr.ph48.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph48.prol ], [ 0, %.lr.ph48.preheader ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv57.prol
  %i.g = load float, ptr %i.f, align 4, !tbaa !39 ; 2 uses
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %.13946.prol) ; 3 uses
  %indvars.iv.next58.prol = add nuw nsw i64 %indvars.iv57.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph48.prol.loopexit, label %.lr.ph48.prol, !llvm.loop !120

.lr.ph48.prol.loopexit:                           ; preds = %.lr.ph48.prol, %.lr.ph48.preheader
  %.lcssa.unr = phi float [ poison, %.lr.ph48.preheader ], [ %i.h, %.lr.ph48.prol ]
  %indvars.iv57.unr = phi i64 [ %i.e, %.lr.ph48.preheader ], [ %indvars.iv.next58.prol, %.lr.ph48.prol ]
  %.13946.unr = phi float [ %.038.lcssa, %.lr.ph48.preheader ], [ %i.h, %.lr.ph48.prol ]
  %i.i = sub nsw i64 %i.e, %wide.trip.count
  %i.j = icmp ugt i64 %i.i, -4
  br i1 %i.j, label %._crit_edge, label %.lr.ph48

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %.03843 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.z, %.lr.ph ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.l = load float, ptr %i.k, align 4, !tbaa !39 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !39 ; 2 uses
  %i.p = fmul float %i.o, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.p)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !39 ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.q)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load float, ptr %i.w, align 4, !tbaa !39 ; 2 uses
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.u)
  %i.z = fadd float %.03843, %i.y                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %3 = or disjoint i64 %indvars.iv.next, 3
  %i.aa = icmp samesign ult i64 %3, %i.b
  br i1 %i.aa, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !7

.lr.ph48:                                         ; preds = %.lr.ph48.prol.loopexit, %.lr.ph48
  %indvars.iv57 = phi i64 [ %indvars.iv.next58.3, %.lr.ph48 ], [ %indvars.iv57.unr, %.lr.ph48.prol.loopexit ] ; 5 uses
  %.13946 = phi float [ %i.ap, %.lr.ph48 ], [ %.13946.unr, %.lr.ph48.prol.loopexit ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv57
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !39 ; 2 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %.13946)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv57
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !39 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.ad)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv57
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !39 ; 2 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.ah)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv57
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load float, ptr %i.an, align 4, !tbaa !39 ; 2 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.al) ; 2 uses
  %indvars.iv.next58.3 = add nuw nsw i64 %indvars.iv57, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next58.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph48, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph48.prol.loopexit, %.lr.ph48, %.preheader
  %.139.lcssa = phi float [ %.038.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph48.prol.loopexit ], [ %i.ap, %.lr.ph48 ] ; 2 uses
  %i.aq = fcmp oeq float %.139.lcssa, 0.000000e+00
  br i1 %i.aq, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ar = tail call float @sqrtf(float noundef %.139.lcssa) #34, !tbaa !25 ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float %i.ar, ptr %1, align 4, !tbaa !39
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not53 = icmp eq i32 %2, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %bb.d
  %wide.trip.count63 = zext i32 %2 to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph52.preheader68, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph52.preheader
  %n.vec = and i64 %wide.trip.count63, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ar, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.as, align 4, !tbaa !39
  %i.at = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.at, ptr %i.as, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count63
  br i1 %cmp.n, label %.loopexit, label %.lr.ph52.preheader68

.lr.ph52.preheader68:                             ; preds = %.lr.ph52.preheader, %middle.block
  %indvars.iv60.ph = phi i64 [ 0, %.lr.ph52.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52.preheader68, %.lr.ph52
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %.lr.ph52 ], [ %indvars.iv60.ph, %.lr.ph52.preheader68 ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv60 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !39
  %i.ax = fdiv float %i.aw, %i.ar
  store float %i.ax, ptr %i.av, align 4, !tbaa !39
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.loopexit, label %.lr.ph52, !llvm.loop !122

.loopexit:                                        ; preds = %.lr.ph52, %middle.block, %bb.d, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 17) i32 @random_level() local_unnamed_addr #3 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.b ]     ; 3 uses
  %i.a = tail call i32 @rand() #34
  %i.b = icmp slt i32 %i.a, 536870911
  %i.c = icmp samesign ult i32 %.0, 16
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = add nuw nsw i32 %.0, 1
  br i1 %i.d, label %bb.b, label %bb.c, !llvm.loop !9

bb.c:                                             ; preds = %bb.b
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @hnsw_new(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @hmalloc, align 8, !tbaa !29
  %i.b = tail call ptr %i.a(i64 noundef 1672) #34 ; 48 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %2, 0
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %2, i32 4096)
  %.039 = select i1 %i.c, i32 16, i32 %spec.store.select
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.039, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1656
  store i32 %1, ptr %i.e, align 8, !tbaa !50
  store ptr null, ptr %i.b, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %0, ptr %i.g, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.h, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store atomic i64 0, ptr %i.i seq_cst, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1664
  store ptr null, ptr %i.j, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.k, i8 0, i64 264, i1 false)
  %i.m = tail call i32 @pthread_rwlock_init(ptr noundef nonnull %i.l, ptr noundef null) #34
  %.not43 = icmp eq i32 %i.m, 0
  br i1 %.not43, label %.preheader45, label %bb.c

.preheader45:                                     ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 2 uses
  %i.o = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.n, ptr noundef null) #34
  %.not44.not = icmp eq i32 %i.o, 0
  br i1 %.not44.not, label %bb.d, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.p(ptr noundef nonnull %i.b) #34
  br label %bb.ai

.lr.ph.preheader:                                 ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.03648.lcssa.wide.ph = phi i64 [ 31, %bb.ah ], [ 30, %bb.ag ], [ 29, %bb.af ], [ 28, %bb.ae ], [ 27, %bb.ad ], [ 26, %bb.ac ], [ 25, %bb.ab ], [ 24, %bb.aa ], [ 23, %bb.z ], [ 22, %bb.y ], [ 21, %bb.x ], [ 20, %bb.w ], [ 19, %bb.v ], [ 18, %bb.u ], [ 17, %bb.t ], [ 16, %bb.s ], [ 15, %bb.r ], [ 14, %bb.q ], [ 13, %bb.p ], [ 12, %bb.o ], [ 11, %bb.n ], [ 10, %bb.m ], [ 9, %bb.l ], [ 8, %bb.k ], [ 7, %bb.j ], [ 6, %bb.i ], [ 5, %bb.h ], [ 4, %bb.g ], [ 3, %bb.f ], [ 2, %bb.e ], [ 1, %bb.d ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader45
  %i.q = tail call i32 @pthread_rwlock_destroy(ptr noundef nonnull %i.l) #34 ; 0 uses
  %i.r = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.r(ptr noundef nonnull %i.b) #34
  br label %bb.ai

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv
  %i.t = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.s) #34 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.03648.lcssa.wide.ph
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !123

bb.d:                                             ; preds = %.preheader45
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.v = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.u, ptr noundef null) #34
  %.not44.1 = icmp eq i32 %i.v, 0
  br i1 %.not44.1, label %bb.e, label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.x = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.w, ptr noundef null) #34
  %.not44.2 = icmp eq i32 %i.x, 0
  br i1 %.not44.2, label %bb.f, label %.lr.ph.preheader

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.z = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.y, ptr noundef null) #34
  %.not44.3 = icmp eq i32 %i.z, 0
  br i1 %.not44.3, label %bb.g, label %.lr.ph.preheader

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  %i.ab = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.aa, ptr noundef null) #34
  %.not44.4 = icmp eq i32 %i.ab, 0
  br i1 %.not44.4, label %bb.h, label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 560
  %i.ad = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.ac, ptr noundef null) #34
end_hunk_1
begin_hunk_2_@hnsw_get_node_vector:bb.a
  %xtraiter111 = and i64 %wide.trip.count55, 3    ; 2 uses
  %lcmp.mod112.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod112.not, label %scalar.ph91.prol.loopexit, label %scalar.ph91.prol

scalar.ph91.prol:                                 ; preds = %scalar.ph91.preheader, %scalar.ph91.prol
  %indvars.iv52.prol = phi i64 [ %indvars.iv.next53.prol, %scalar.ph91.prol ], [ %indvars.iv52.ph, %scalar.ph91.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph91.prol ], [ 0, %scalar.ph91.preheader ]
  %i.cf = load float, ptr %i.bv, align 4, !tbaa !39
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv52.prol ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !39
  %i.ci = fmul float %i.cf, %i.ch
  store float %i.ci, ptr %i.cg, align 4, !tbaa !39
  %indvars.iv.next53.prol = add nuw nsw i64 %indvars.iv52.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter111
  br i1 %prol.iter.cmp.not, label %scalar.ph91.prol.loopexit, label %scalar.ph91.prol, !llvm.loop !137

scalar.ph91.prol.loopexit:                        ; preds = %scalar.ph91.prol, %scalar.ph91.preheader
  %indvars.iv52.unr = phi i64 [ %indvars.iv52.ph, %scalar.ph91.preheader ], [ %indvars.iv.next53.prol, %scalar.ph91.prol ]
  %i.cj = sub nsw i64 %indvars.iv52.ph, %wide.trip.count55
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %.loopexit, label %scalar.ph91

scalar.ph91:                                      ; preds = %scalar.ph91.prol.loopexit, %scalar.ph91
  %indvars.iv52 = phi i64 [ %indvars.iv.next53.3, %scalar.ph91 ], [ %indvars.iv52.unr, %scalar.ph91.prol.loopexit ] ; 5 uses
  %i.cl = load float, ptr %i.bv, align 4, !tbaa !39
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv52 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !39
  %i.co = fmul float %i.cl, %i.cn
  store float %i.co, ptr %i.cm, align 4, !tbaa !39
  %i.cp = load float, ptr %i.bv, align 4, !tbaa !39
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv52
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !39
  %i.ct = fmul float %i.cp, %i.cs
  store float %i.ct, ptr %i.cr, align 4, !tbaa !39
  %i.cu = load float, ptr %i.bv, align 4, !tbaa !39
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv52
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !39
  %i.cy = fmul float %i.cu, %i.cx
  store float %i.cy, ptr %i.cw, align 4, !tbaa !39
  %i.cz = load float, ptr %i.bv, align 4, !tbaa !39
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv52
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 12 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !39
  %i.dd = fmul float %i.cz, %i.dc
  store float %i.dd, ptr %i.db, align 4, !tbaa !39
  %indvars.iv.next53.3 = add nuw nsw i64 %indvars.iv52, 4 ; 2 uses
  %exitcond56.not.3 = icmp eq i64 %indvars.iv.next53.3, %wide.trip.count55
  br i1 %exitcond56.not.3, label %.loopexit, label %scalar.ph91, !llvm.loop !138

.loopexit:                                        ; preds = %.lr.ph, %scalar.ph91.prol.loopexit, %scalar.ph91, %middle.block, %middle.block106, %bb.c, %.preheader, %thread-pre-split
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hnsw_quants_bytes(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51
  %i.e = shl i32 %i.d, 2
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !51
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !51
  %i.j = add i32 %i.i, 63
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 536870904
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 882, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_quants_bytes) #35
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ %i.l, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hnsw_node_new(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, float noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @hmalloc, align 8, !tbaa !29
  %i.b = add i32 %5, 1
  %i.c = zext i32 %i.b to i64
  %i.d = mul nuw nsw i64 %i.c, 24
  %i.e = add nuw nsw i64 %i.d, 312
  %i.f = tail call ptr %i.a(i64 noundef %i.e) #34 ; 12 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %1, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8
  %i.j = add i64 %i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.096 = phi i64 [ %i.j, %bb.c ], [ %1, %bb.b ]
  store i32 %5, ptr %i.f, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.096, ptr %i.k, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  store ptr null, ptr %i.l, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 9 uses
  store ptr null, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.o, i8 0, i64 256, i1 false), !tbaa !27
  %i.p = icmp eq ptr %3, null
  br i1 %i.p, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @hmalloc, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !51
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call ptr %i.q(i64 noundef %i.u) #34 ; 3 uses
  store ptr %i.v, ptr %i.m, align 8, !tbaa !29
  %.not105 = icmp eq ptr %i.v, null
  br i1 %.not105, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.r, align 8, !tbaa !51
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 4 %2, i64 %i.y, i1 false)
  %.not106 = icmp eq i32 %6, 0
  br i1 %.not106, label %hnsw_normalize_vector.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !29   ; 8 uses
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !51  ; 8 uses
  %i.ab = icmp ugt i32 %i.aa, 3
  br i1 %i.ab, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.ac = zext i32 %i.aa to i64
  br label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.ad = and i32 %i.aa, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.g
  %.038.lcssa.i = phi float [ 0.000000e+00, %bb.g ], [ %i.ax, %.preheader.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.ad, %.preheader.loopexit.i ] ; 2 uses
  %i.ae = icmp ult i32 %.0.lcssa.i, %i.aa
  br i1 %i.ae, label %.lr.ph48.preheader.i, label %._crit_edge.i

.lr.ph48.preheader.i:                             ; preds = %.preheader.i
  %i.af = zext i32 %.0.lcssa.i to i64             ; 3 uses
  %wide.trip.count.i = zext i32 %i.aa to i64      ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph48.i.prol.loopexit, label %.lr.ph48.i.prol

.lr.ph48.i.prol:                                  ; preds = %.lr.ph48.preheader.i, %.lr.ph48.i.prol
  %indvars.iv57.i.prol = phi i64 [ %indvars.iv.next58.i.prol, %.lr.ph48.i.prol ], [ %i.af, %.lr.ph48.preheader.i ] ; 2 uses
  %.13946.i.prol = phi float [ %i.ai, %.lr.ph48.i.prol ], [ %.038.lcssa.i, %.lr.ph48.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph48.i.prol ], [ 0, %.lr.ph48.preheader.i ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv57.i.prol
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !39 ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %.13946.i.prol) ; 3 uses
  %indvars.iv.next58.i.prol = add nuw nsw i64 %indvars.iv57.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph48.i.prol.loopexit, label %.lr.ph48.i.prol, !llvm.loop !145

.lr.ph48.i.prol.loopexit:                         ; preds = %.lr.ph48.i.prol, %.lr.ph48.preheader.i
  %.lcssa181.unr = phi float [ poison, %.lr.ph48.preheader.i ], [ %i.ai, %.lr.ph48.i.prol ]
  %indvars.iv57.i.unr = phi i64 [ %i.af, %.lr.ph48.preheader.i ], [ %indvars.iv.next58.i.prol, %.lr.ph48.i.prol ]
  %.13946.i.unr = phi float [ %.038.lcssa.i, %.lr.ph48.preheader.i ], [ %i.ai, %.lr.ph48.i.prol ]
  %i.aj = sub nsw i64 %i.af, %wide.trip.count.i
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge.i, label %.lr.ph48.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.03843.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.ax, %.lr.ph.i ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i ; 4 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !39 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !39 ; 2 uses
  %i.ap = fmul float %i.ao, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !39 ; 2 uses
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.aq)
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.av = load float, ptr %i.au, align 4, !tbaa !39 ; 2 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.at)
  %i.ax = fadd float %.03843.i, %i.aw             ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %7 = or disjoint i64 %indvars.iv.next.i, 3
  %i.ay = icmp samesign ult i64 %7, %i.ac
  br i1 %i.ay, label %.lr.ph.i, label %.preheader.loopexit.i, !llvm.loop !7

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i.3, %.lr.ph48.i ], [ %indvars.iv57.i.unr, %.lr.ph48.i.prol.loopexit ] ; 5 uses
  %.13946.i = phi float [ %i.bn, %.lr.ph48.i ], [ %.13946.i.unr, %.lr.ph48.i.prol.loopexit ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv57.i
  %i.ba = load float, ptr %i.az, align 4, !tbaa !39 ; 2 uses
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %.13946.i)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv57.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !39 ; 2 uses
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.bb)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv57.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !39 ; 2 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %i.bf)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv57.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !39 ; 2 uses
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %i.bj) ; 2 uses
  %indvars.iv.next58.i.3 = add nuw nsw i64 %indvars.iv57.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next58.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph48.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i, %.preheader.i
  %.139.lcssa.i = phi float [ %.038.lcssa.i, %.preheader.i ], [ %.lcssa181.unr, %.lr.ph48.i.prol.loopexit ], [ %i.bn, %.lr.ph48.i ] ; 2 uses
  %i.bo = fcmp oeq float %.139.lcssa.i, 0.000000e+00
  br i1 %i.bo, label %hnsw_normalize_vector.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.bp = tail call float @sqrtf(float noundef %.139.lcssa.i) #34, !tbaa !25 ; 3 uses
  store float %i.bp, ptr %i.n, align 4, !tbaa !39
  %.not53.i = icmp eq i32 %i.aa, 0
  br i1 %.not53.i, label %hnsw_normalize_vector.exit, label %.lr.ph52.preheader.i

.lr.ph52.preheader.i:                             ; preds = %bb.h
  %wide.trip.count63.i = zext i32 %i.aa to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.aa, 4
  br i1 %min.iters.check, label %.lr.ph52.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph52.preheader.i
  %n.vec = and i64 %wide.trip.count63.i, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bp, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bq, align 4, !tbaa !39
  %i.br = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.br, ptr %i.bq, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count63.i
  br i1 %cmp.n, label %hnsw_normalize_vector.exit, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %.lr.ph52.preheader.i, %middle.block
  %indvars.iv60.i.ph = phi i64 [ 0, %.lr.ph52.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader, %.lr.ph52.i
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %.lr.ph52.i ], [ %indvars.iv60.i.ph, %.lr.ph52.i.preheader ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv60.i ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !39
  %i.bv = fdiv float %i.bu, %i.bp
  store float %i.bv, ptr %i.bt, align 4, !tbaa !39
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next61.i, %wide.trip.count63.i
  br i1 %exitcond64.not.i, label %hnsw_normalize_vector.exit, label %.lr.ph52.i, !llvm.loop !147

hnsw_normalize_vector.exit:                       ; preds = %.lr.ph52.i, %middle.block, %bb.h, %._crit_edge.i, %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !50 ; 2 uses
  %.not107 = icmp eq i32 %i.bx, 0
  br i1 %.not107, label %bb.aa, label %bb.i

bb.i:                                             ; preds = %hnsw_normalize_vector.exit
  %i.by = load ptr, ptr @hmalloc, align 8, !tbaa !29
  switch i32 %i.bx, label %bb.l [
    i32 2, label %bb.k
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bz = load i32, ptr %i.r, align 8, !tbaa !51
  br label %hnsw_quants_bytes.exit

bb.k:                                             ; preds = %bb.i
  %i.ca = load i32, ptr %i.r, align 8, !tbaa !51
  %i.cb = add i32 %i.ca, 63
  %i.cc = lshr i32 %i.cb, 3
  %i.cd = and i32 %i.cc, 536870904
  br label %hnsw_quants_bytes.exit

bb.l:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 882, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_quants_bytes) #35
  unreachable

hnsw_quants_bytes.exit:                           ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ %i.cd, %bb.k ], [ %i.bz, %bb.j ]
  %i.ce = zext i32 %.0.i to i64
  %i.cf = tail call ptr %i.by(i64 noundef %i.ce) #34 ; 13 uses
  %.not108 = icmp eq ptr %i.cf, null
  br i1 %.not108, label %.loopexit.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %hnsw_quants_bytes.exit
  %i.cg = load i32, ptr %i.bw, align 8, !tbaa !50
  switch i32 %i.cg, label %bb.s [
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ch = load ptr, ptr %i.m, align 8, !tbaa !29  ; 9 uses
  %i.ci = load i32, ptr %i.r, align 8, !tbaa !51  ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %.not43.i = icmp eq i32 %i.ci, 0
  br i1 %.not43.i, label %._crit_edge.thread.i, label %.lr.ph.preheader.i111

.lr.ph.preheader.i111:                            ; preds = %bb.n
  %wide.trip.count.i112 = zext i32 %i.ci to i64   ; 10 uses
  %xtraiter186 = and i64 %wide.trip.count.i112, 1
  %i.ck = icmp eq i32 %i.ci, 1
  br i1 %i.ck, label %.lr.ph.i113.epil.preheader, label %.lr.ph.preheader.i111.new

.lr.ph.preheader.i111.new:                        ; preds = %.lr.ph.preheader.i111
  %unroll_iter190 = and i64 %wide.trip.count.i112, 4294967294
  br label %.lr.ph.i113

._crit_edge.i117.unr-lcssa:                       ; preds = %.lr.ph.i113
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %._crit_edge.i117, label %.lr.ph.i113.epil.preheader

.lr.ph.i113.epil.preheader:                       ; preds = %._crit_edge.i117.unr-lcssa, %.lr.ph.preheader.i111
  %indvars.iv.i114.epil.init = phi i64 [ 0, %.lr.ph.preheader.i111 ], [ %indvars.iv.next.i115.1, %._crit_edge.i117.unr-lcssa ]
  %.03037.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i111 ], [ %.2.i.1, %._crit_edge.i117.unr-lcssa ] ; 2 uses
  %lcmp.mod189 = trunc i32 %i.ci to i1
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i114.epil.init
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !39 ; 3 uses
  %i.cn = fcmp ogt float %i.cm, %.03037.i.epil.init
  %.1.i.epil = select i1 %i.cn, float %i.cm, float %.03037.i.epil.init ; 2 uses
  %i.co = fneg float %i.cm                        ; 2 uses
  %i.cp = fcmp olt float %.1.i.epil, %i.co
  %.2.i.epil = select i1 %i.cp, float %i.co, float %.1.i.epil
  br label %._crit_edge.i117

._crit_edge.i117:                                 ; preds = %._crit_edge.i117.unr-lcssa, %.lr.ph.i113.epil.preheader
  %.2.i.lcssa = phi float [ %.2.i.1, %._crit_edge.i117.unr-lcssa ], [ %.2.i.epil, %.lr.ph.i113.epil.preheader ] ; 3 uses
  %i.cq = fcmp oeq float %.2.i.lcssa, 0.000000e+00
  br i1 %i.cq, label %._crit_edge.thread.i, label %.lr.ph41.preheader.i

.lr.ph.i113:                                      ; preds = %.lr.ph.i113, %.lr.ph.preheader.i111.new
  %indvars.iv.i114 = phi i64 [ 0, %.lr.ph.preheader.i111.new ], [ %indvars.iv.next.i115.1, %.lr.ph.i113 ] ; 3 uses
  %.03037.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i111.new ], [ %.2.i.1, %.lr.ph.i113 ] ; 2 uses
  %niter191 = phi i64 [ 0, %.lr.ph.preheader.i111.new ], [ %niter191.next.1, %.lr.ph.i113 ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i114
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !39 ; 3 uses
  %i.ct = fcmp ogt float %i.cs, %.03037.i
  %.1.i = select i1 %i.ct, float %i.cs, float %.03037.i ; 2 uses
  %i.cu = fneg float %i.cs                        ; 2 uses
  %i.cv = fcmp olt float %.1.i, %i.cu
  %.2.i = select i1 %i.cv, float %i.cu, float %.1.i ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i114
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !39 ; 3 uses
  %i.cz = fcmp ogt float %i.cy, %.2.i
  %.1.i.1 = select i1 %i.cz, float %i.cy, float %.2.i ; 2 uses
  %i.da = fneg float %i.cy                        ; 2 uses
  %i.db = fcmp olt float %.1.i.1, %i.da
  %.2.i.1 = select i1 %i.db, float %i.da, float %.1.i.1 ; 3 uses
  %indvars.iv.next.i115.1 = add nuw nsw i64 %indvars.iv.i114, 2 ; 2 uses
  %niter191.next.1 = add i64 %niter191, 2         ; 2 uses
  %niter191.ncmp.1 = icmp eq i64 %niter191.next.1, %unroll_iter190
  br i1 %niter191.ncmp.1, label %._crit_edge.i117.unr-lcssa, label %.lr.ph.i113, !llvm.loop !5

._crit_edge.thread.i:                             ; preds = %bb.n, %._crit_edge.i117
  %.pre-phi = phi i64 [ %wide.trip.count.i112, %._crit_edge.i117 ], [ 0, %bb.n ]
  store float 0.000000e+00, ptr %i.cj, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cf, i8 0, i64 %.pre-phi, i1 false)
  br label %.loopexit128

.lr.ph41.preheader.i:                             ; preds = %._crit_edge.i117
  %i.dc = fdiv float 1.270000e+02, %.2.i.lcssa    ; 4 uses
  %min.iters.check166 = icmp ult i32 %i.ci, 4
  br i1 %min.iters.check166, label %.lr.ph41.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph41.preheader.i
  %i.dd = getelementptr i8, ptr %i.cf, i64 %wide.trip.count.i112
  %i.de = shl nuw nsw i64 %wide.trip.count.i112, 2
  %i.df = getelementptr i8, ptr %i.ch, i64 %i.de
  %bound0 = icmp ult ptr %i.cf, %i.df
  %bound1 = icmp ult ptr %i.ch, %i.dd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph41.i.preheader, label %vector.ph167
end_hunk_2
begin_hunk_3_@search_layer_with_filter:bb.a
  br i1 %i.lq, label %bb.aq, label %pq_push.exit187

thread-pre-split245:                              ; preds = %bb.ap
  %.pr246 = load i32, ptr %i.t, align 8, !tbaa !32
  br label %bb.aq

bb.aq:                                            ; preds = %thread-pre-split245, %.thread244
  %i.lr = phi i32 [ %.pr246, %thread-pre-split245 ], [ %i.lp, %.thread244 ] ; 3 uses
  %i.ls = load i32, ptr %i.u, align 4, !tbaa !33  ; 2 uses
  %i.lt = icmp ult i32 %i.lr, %i.ls
  br i1 %i.lt, label %.preheader.i219, label %bb.as

.preheader.i219:                                  ; preds = %bb.aq
  %.not45.i220 = icmp eq i32 %i.lr, 0
  br i1 %.not45.i220, label %.critedge.i228, label %.lr.ph47.preheader.i221

.lr.ph47.preheader.i221:                          ; preds = %.preheader.i219
  %i.lu = zext i32 %i.lr to i64
  br label %.lr.ph47.i222

.lr.ph47.i222:                                    ; preds = %bb.ar, %.lr.ph47.preheader.i221
  %indvars.iv53.i223 = phi i64 [ %i.lu, %.lr.ph47.preheader.i221 ], [ %indvars.iv.next54.i224, %bb.ar ] ; 3 uses
  %i.lv = load ptr, ptr %i.n, align 8, !tbaa !31  ; 2 uses
  %indvars.iv.next54.i224 = add nsw i64 %indvars.iv53.i223, -1 ; 2 uses
  %i.lw = and i64 %indvars.iv.next54.i224, 4294967295 ; 2 uses
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.lw ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load float, ptr %i.ly, align 8, !tbaa !37
  %i.ma = fcmp olt float %i.lz, %.0.i140
  br i1 %i.ma, label %bb.ar, label %.critedge.loopexit.i225

bb.ar:                                            ; preds = %.lr.ph47.i222
  %i.mb = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %indvars.iv53.i223
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mb, ptr noundef nonnull align 8 dereferenceable(16) %i.lx, i64 16, i1 false), !tbaa.struct !40
  %.not.i230 = icmp eq i64 %i.lw, 0
  br i1 %.not.i230, label %.critedge.loopexit.i225, label %.lr.ph47.i222, !llvm.loop !0

.critedge.loopexit.i225:                          ; preds = %bb.ar, %.lr.ph47.i222
  %.038.lcssa.ph.i226 = phi i64 [ %indvars.iv53.i223, %.lr.ph47.i222 ], [ 0, %bb.ar ]
  %.pre57.i227 = load i32, ptr %i.t, align 8, !tbaa !32
  %i.mc = add i32 %.pre57.i227, 1
  br label %.critedge.i228

.critedge.i228:                                   ; preds = %.critedge.loopexit.i225, %.preheader.i219
  %i.md = phi i32 [ 1, %.preheader.i219 ], [ %i.mc, %.critedge.loopexit.i225 ]
  %.038.lcssa.i229 = phi i64 [ 0, %.preheader.i219 ], [ %.038.lcssa.ph.i226, %.critedge.loopexit.i225 ]
  %i.me = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %.038.lcssa.i229 ; 2 uses
  store ptr %i.ix, ptr %i.mf, align 8, !tbaa !42
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store float %.0.i140, ptr %i.mg, align 8, !tbaa !37
  store i32 %i.md, ptr %i.t, align 8, !tbaa !32
  br label %pq_push.exit187

bb.as:                                            ; preds = %bb.aq
  %i.mh = load ptr, ptr %i.n, align 8, !tbaa !31  ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = load float, ptr %i.mi, align 8, !tbaa !37
  %i.mk = fcmp ult float %.0.i140, %i.mj
  br i1 %i.mk, label %.preheader41.i210, label %pq_push.exit187

.preheader41.i210:                                ; preds = %bb.as
  %.not51.i211 = icmp eq i32 %i.ls, 1
  br i1 %.not51.i211, label %.critedge2.i215, label %.lr.ph.i212

.lr.ph.i212:                                      ; preds = %.preheader41.i210, %bb.at
  %indvars.iv.i213 = phi i64 [ %indvars.iv.next.i214, %bb.at ], [ 0, %.preheader41.i210 ] ; 3 uses
  %i.ml = load ptr, ptr %i.n, align 8, !tbaa !31  ; 3 uses
  %indvars.iv.next.i214 = add nuw nsw i64 %indvars.iv.i213, 1 ; 4 uses
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %indvars.iv.next.i214 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load float, ptr %i.mn, align 8, !tbaa !37
  %i.mp = fcmp ogt float %i.mo, %.0.i140
  br i1 %i.mp, label %bb.at, label %.critedge2.i215

bb.at:                                            ; preds = %.lr.ph.i212
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %indvars.iv.i213
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mq, ptr noundef nonnull align 8 dereferenceable(16) %i.mm, i64 16, i1 false), !tbaa.struct !40
  %i.mr = load i32, ptr %i.u, align 4, !tbaa !33
  %i.ms = add i32 %i.mr, -1
  %i.mt = zext i32 %i.ms to i64
  %i.mu = icmp samesign ult i64 %indvars.iv.next.i214, %i.mt
  br i1 %i.mu, label %.lr.ph.i212, label %..critedge2.loopexit_crit_edge.i217, !llvm.loop !1

..critedge2.loopexit_crit_edge.i217:              ; preds = %bb.at
  %.pre.pre.i218 = load ptr, ptr %i.n, align 8, !tbaa !31
  br label %.critedge2.i215, !llvm.loop !1

.critedge2.i215:                                  ; preds = %.lr.ph.i212, %..critedge2.loopexit_crit_edge.i217, %.preheader41.i210
  %i.mv = phi ptr [ %i.mh, %.preheader41.i210 ], [ %.pre.pre.i218, %..critedge2.loopexit_crit_edge.i217 ], [ %i.ml, %.lr.ph.i212 ]
  %.0.lcssa.i216 = phi i64 [ 0, %.preheader41.i210 ], [ %indvars.iv.next.i214, %..critedge2.loopexit_crit_edge.i217 ], [ %indvars.iv.i213, %.lr.ph.i212 ]
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %i.mv, i64 %.0.lcssa.i216 ; 2 uses
  store ptr %i.ix, ptr %i.mw, align 8, !tbaa !42
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store float %.0.i140, ptr %i.mx, align 8, !tbaa !37
  br label %pq_push.exit187

pq_push.exit187:                                  ; preds = %.critedge2.i215, %bb.as, %.critedge.i228, %pq_push.exit209.thread, %.thread244, %pq_push.exit209, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.my = load i32, ptr %i.eu, align 8, !tbaa !63
  %i.mz = zext i32 %i.my to i64
  %i.na = icmp samesign ult i64 %indvars.iv.next, %i.mz
  br i1 %i.na, label %.lr.ph.split, label %.loopexit, !llvm.loop !158

pq_free.exit233:                                  ; preds = %.loopexit, %bb.t, %pq_max_distance.exit, %pq_push.exit137
  %i.nb = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.nc = load ptr, ptr %.0.i, align 8, !tbaa !31
  tail call void %i.nb(ptr noundef %i.nc) #34, !inline_history !70
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %pq_free.exit233, %pq_free.exit113, %pq_free.exit
  %.0.i.sink = phi ptr [ %.0.i, %pq_free.exit ], [ %i.n, %pq_free.exit113 ], [ %.0.i, %pq_free.exit233 ]
  %.092.ph = phi ptr [ null, %pq_free.exit ], [ null, %pq_free.exit113 ], [ %i.n, %pq_free.exit233 ]
  %i.nd = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.nd(ptr noundef nonnull %.0.i.sink) #34
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %pq_new.exit110.thread
  %.092 = phi ptr [ null, %pq_new.exit110.thread ], [ %.092.ph, %.thread.sink.split ]
  ret ptr %.092
}

; Function Attrs: nounwind uwtable
define dso_local ptr @search_layer(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @search_layer_with_filter(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef null, ptr noundef null, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @hnsw_init_tmp_node(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((16, 24)) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr null, ptr %i.a, align 8, !tbaa !29
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @hmalloc, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = tail call ptr %i.b(i64 noundef %i.f) #34 ; 3 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !29
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.c, align 8, !tbaa !51
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 4 %3, i64 %i.k, i1 false)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !29   ; 8 uses
  %i.m = load i32, ptr %i.c, align 8, !tbaa !51   ; 8 uses
  %i.n = icmp ugt i32 %i.m, 3
  br i1 %i.n, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.o = zext i32 %i.m to i64
  br label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.p = and i32 %i.m, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.c
  %.038.lcssa.i = phi float [ 0.000000e+00, %bb.c ], [ %i.aj, %.preheader.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.p, %.preheader.loopexit.i ] ; 2 uses
  %i.q = icmp ult i32 %.0.lcssa.i, %i.m
  br i1 %i.q, label %.lr.ph48.preheader.i, label %._crit_edge.i

.lr.ph48.preheader.i:                             ; preds = %.preheader.i
  %i.r = zext i32 %.0.lcssa.i to i64              ; 3 uses
  %wide.trip.count.i = zext i32 %i.m to i64       ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph48.i.prol.loopexit, label %.lr.ph48.i.prol

.lr.ph48.i.prol:                                  ; preds = %.lr.ph48.preheader.i, %.lr.ph48.i.prol
  %indvars.iv57.i.prol = phi i64 [ %indvars.iv.next58.i.prol, %.lr.ph48.i.prol ], [ %i.r, %.lr.ph48.preheader.i ] ; 2 uses
  %.13946.i.prol = phi float [ %i.u, %.lr.ph48.i.prol ], [ %.038.lcssa.i, %.lr.ph48.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph48.i.prol ], [ 0, %.lr.ph48.preheader.i ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv57.i.prol
  %i.t = load float, ptr %i.s, align 4, !tbaa !39 ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %.13946.i.prol) ; 3 uses
  %indvars.iv.next58.i.prol = add nuw nsw i64 %indvars.iv57.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph48.i.prol.loopexit, label %.lr.ph48.i.prol, !llvm.loop !159

.lr.ph48.i.prol.loopexit:                         ; preds = %.lr.ph48.i.prol, %.lr.ph48.preheader.i
  %.lcssa.unr = phi float [ poison, %.lr.ph48.preheader.i ], [ %i.u, %.lr.ph48.i.prol ]
  %indvars.iv57.i.unr = phi i64 [ %i.r, %.lr.ph48.preheader.i ], [ %indvars.iv.next58.i.prol, %.lr.ph48.i.prol ]
  %.13946.i.unr = phi float [ %.038.lcssa.i, %.lr.ph48.preheader.i ], [ %i.u, %.lr.ph48.i.prol ]
  %i.v = sub nsw i64 %i.r, %wide.trip.count.i
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %._crit_edge.i, label %.lr.ph48.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.03843.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.aj, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !39 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !39 ; 2 uses
  %i.ab = fmul float %i.aa, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !39 ; 2 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ac)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !39 ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.af)
  %i.aj = fadd float %.03843.i, %i.ai             ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %4 = or disjoint i64 %indvars.iv.next.i, 3
  %i.ak = icmp samesign ult i64 %4, %i.o
  br i1 %i.ak, label %.lr.ph.i, label %.preheader.loopexit.i, !llvm.loop !7

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i.3, %.lr.ph48.i ], [ %indvars.iv57.i.unr, %.lr.ph48.i.prol.loopexit ] ; 5 uses
  %.13946.i = phi float [ %i.az, %.lr.ph48.i ], [ %.13946.i.unr, %.lr.ph48.i.prol.loopexit ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv57.i
  %i.am = load float, ptr %i.al, align 4, !tbaa !39 ; 2 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %.13946.i)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv57.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !39 ; 2 uses
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.an)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv57.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load float, ptr %i.at, align 4, !tbaa !39 ; 2 uses
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.ar)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv57.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !39 ; 2 uses
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.av) ; 2 uses
  %indvars.iv.next58.i.3 = add nuw nsw i64 %indvars.iv57.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next58.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph48.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i, %.preheader.i
  %.139.lcssa.i = phi float [ %.038.lcssa.i, %.preheader.i ], [ %.lcssa.unr, %.lr.ph48.i.prol.loopexit ], [ %i.az, %.lr.ph48.i ] ; 2 uses
  %i.ba = fcmp oeq float %.139.lcssa.i, 0.000000e+00
  br i1 %i.ba, label %hnsw_normalize_vector.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.bb = tail call float @sqrtf(float noundef %.139.lcssa.i) #34, !tbaa !25 ; 2 uses
  %.not53.i = icmp eq i32 %i.m, 0
  br i1 %.not53.i, label %hnsw_normalize_vector.exit, label %.lr.ph52.preheader.i

.lr.ph52.preheader.i:                             ; preds = %bb.d
  %wide.trip.count63.i = zext i32 %i.m to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph52.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph52.preheader.i
  %n.vec = and i64 %wide.trip.count63.i, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bb, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bc, align 4, !tbaa !39
  %i.bd = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.bd, ptr %i.bc, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count63.i
  br i1 %cmp.n, label %hnsw_normalize_vector.exit, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %.lr.ph52.preheader.i, %middle.block
  %indvars.iv60.i.ph = phi i64 [ 0, %.lr.ph52.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader, %.lr.ph52.i
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %.lr.ph52.i ], [ %indvars.iv60.i.ph, %.lr.ph52.i.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv60.i ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !39
  %i.bh = fdiv float %i.bg, %i.bb
  store float %i.bh, ptr %i.bf, align 4, !tbaa !39
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next61.i, %wide.trip.count63.i
  br i1 %exitcond64.not.i, label %hnsw_normalize_vector.exit, label %.lr.ph52.i, !llvm.loop !161

bb.e:                                             ; preds = %bb.a
  store ptr %3, ptr %i.a, align 8, !tbaa !29
  br label %hnsw_normalize_vector.exit

hnsw_normalize_vector.exit:                       ; preds = %.lr.ph52.i, %middle.block, %bb.d, %._crit_edge.i, %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !50 ; 2 uses
  %.not37 = icmp eq i32 %i.bj, 0
  br i1 %.not37, label %.thread, label %bb.f

bb.f:                                             ; preds = %hnsw_normalize_vector.exit
  %i.bk = load ptr, ptr @hmalloc, align 8, !tbaa !29
  switch i32 %i.bj, label %bb.i [
    i32 2, label %bb.h
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !51
  br label %hnsw_quants_bytes.exit

bb.h:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !51
  %i.bp = add i32 %i.bo, 63
  %i.bq = lshr i32 %i.bp, 3
  %i.br = and i32 %i.bq, 536870904
  br label %hnsw_quants_bytes.exit

bb.i:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 882, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_quants_bytes) #35
  unreachable

hnsw_quants_bytes.exit:                           ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.br, %bb.h ], [ %i.bm, %bb.g ]
  %i.bs = zext i32 %.0.i to i64
  %i.bt = tail call ptr %i.bk(i64 noundef %i.bs) #34 ; 13 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.j, label %bb.l

bb.j:                                             ; preds = %hnsw_quants_bytes.exit
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  %.not39 = icmp eq ptr %i.bv, %3
  br i1 %.not39, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.bw(ptr noundef %i.bv) #34
  br label %.thread

bb.l:                                             ; preds = %hnsw_quants_bytes.exit
  %i.bx = load i32, ptr %i.bi, align 8, !tbaa !50
  switch i32 %i.bx, label %quantize_to_q8.exit [
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !29  ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !51 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.not43.i = icmp eq i32 %i.ca, 0
  br i1 %.not43.i, label %._crit_edge.thread.i, label %.lr.ph.preheader.i40

.lr.ph.preheader.i40:                             ; preds = %bb.m
  %wide.trip.count.i41 = zext i32 %i.ca to i64    ; 10 uses
  %xtraiter85 = and i64 %wide.trip.count.i41, 1
  %i.cc = icmp eq i32 %i.ca, 1
  br i1 %i.cc, label %.lr.ph.i42.epil.preheader, label %.lr.ph.preheader.i40.new

.lr.ph.preheader.i40.new:                         ; preds = %.lr.ph.preheader.i40
  %unroll_iter89 = and i64 %wide.trip.count.i41, 4294967294
  br label %.lr.ph.i42

._crit_edge.i46.unr-lcssa:                        ; preds = %.lr.ph.i42
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %._crit_edge.i46, label %.lr.ph.i42.epil.preheader

.lr.ph.i42.epil.preheader:                        ; preds = %._crit_edge.i46.unr-lcssa, %.lr.ph.preheader.i40
  %indvars.iv.i43.epil.init = phi i64 [ 0, %.lr.ph.preheader.i40 ], [ %indvars.iv.next.i44.1, %._crit_edge.i46.unr-lcssa ]
  %.03037.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i40 ], [ %.2.i.1, %._crit_edge.i46.unr-lcssa ] ; 2 uses
  %lcmp.mod88 = trunc i32 %i.ca to i1
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i43.epil.init
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !39 ; 3 uses
  %i.cf = fcmp ogt float %i.ce, %.03037.i.epil.init
  %.1.i.epil = select i1 %i.cf, float %i.ce, float %.03037.i.epil.init ; 2 uses
  %i.cg = fneg float %i.ce                        ; 2 uses
  %i.ch = fcmp olt float %.1.i.epil, %i.cg
  %.2.i.epil = select i1 %i.ch, float %i.cg, float %.1.i.epil
  br label %._crit_edge.i46

._crit_edge.i46:                                  ; preds = %._crit_edge.i46.unr-lcssa, %.lr.ph.i42.epil.preheader
  %.2.i.lcssa = phi float [ %.2.i.1, %._crit_edge.i46.unr-lcssa ], [ %.2.i.epil, %.lr.ph.i42.epil.preheader ] ; 3 uses
  %i.ci = fcmp oeq float %.2.i.lcssa, 0.000000e+00
  br i1 %i.ci, label %._crit_edge.thread.i, label %.lr.ph41.preheader.i

.lr.ph.i42:                                       ; preds = %.lr.ph.i42, %.lr.ph.preheader.i40.new
  %indvars.iv.i43 = phi i64 [ 0, %.lr.ph.preheader.i40.new ], [ %indvars.iv.next.i44.1, %.lr.ph.i42 ] ; 3 uses
  %.03037.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i40.new ], [ %.2.i.1, %.lr.ph.i42 ] ; 2 uses
  %niter90 = phi i64 [ 0, %.lr.ph.preheader.i40.new ], [ %niter90.next.1, %.lr.ph.i42 ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i43
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !39 ; 3 uses
  %i.cl = fcmp ogt float %i.ck, %.03037.i
  %.1.i = select i1 %i.cl, float %i.ck, float %.03037.i ; 2 uses
  %i.cm = fneg float %i.ck                        ; 2 uses
  %i.cn = fcmp olt float %.1.i, %i.cm
  %.2.i = select i1 %i.cn, float %i.cm, float %.1.i ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i43
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !39 ; 3 uses
  %i.cr = fcmp ogt float %i.cq, %.2.i
  %.1.i.1 = select i1 %i.cr, float %i.cq, float %.2.i ; 2 uses
  %i.cs = fneg float %i.cq                        ; 2 uses
  %i.ct = fcmp olt float %.1.i.1, %i.cs
  %.2.i.1 = select i1 %i.ct, float %i.cs, float %.1.i.1 ; 3 uses
  %indvars.iv.next.i44.1 = add nuw nsw i64 %indvars.iv.i43, 2 ; 2 uses
  %niter90.next.1 = add i64 %niter90, 2           ; 2 uses
  %niter90.ncmp.1 = icmp eq i64 %niter90.next.1, %unroll_iter89
  br i1 %niter90.ncmp.1, label %._crit_edge.i46.unr-lcssa, label %.lr.ph.i42, !llvm.loop !5

._crit_edge.thread.i:                             ; preds = %bb.m, %._crit_edge.i46
  %.pre-phi = phi i64 [ %wide.trip.count.i41, %._crit_edge.i46 ], [ 0, %bb.m ]
  store float 0.000000e+00, ptr %i.cb, align 8, !tbaa !39
end_hunk_3
begin_hunk_4_@hnsw_reconnect_nodes:bb.a
  %i.k = tail call ptr %i.j(i64 noundef %i.d) #34 ; 7 uses
  %.not325 = icmp eq ptr %i.k, null
  br i1 %.not325, label %.sink.split, label %.preheader381.us.preheader

.preheader381.us.preheader:                       ; preds = %._crit_edge
  %wide.trip.count474 = zext nneg i32 %2 to i64
  %xtraiter631 = and i64 %i.i, 1
  %i.l = icmp eq i32 %2, 1
  %unroll_iter = and i64 %i.i, 2147483646
  %lcmp.mod632.not = icmp eq i64 %xtraiter631, 0
  %lcmp.mod635 = trunc i32 %2 to i1
  br label %.preheader381.us

.preheader381.us:                                 ; preds = %.preheader381.us.preheader, %._crit_edge403.us
  %indvars.iv471 = phi i64 [ 0, %.preheader381.us.preheader ], [ %indvars.iv.next472, %._crit_edge403.us ] ; 6 uses
  %i.m = mul nuw nsw i64 %indvars.iv471, %i.c
  %invariant.gep579 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.m ; 3 uses
  br i1 %i.l, label %.epil.preheader, label %.preheader381.us.new

.preheader381.us.new:                             ; preds = %.preheader381.us, %bb.f
  %indvars.iv466 = phi i64 [ %indvars.iv.next467.1, %bb.f ], [ 0, %.preheader381.us ] ; 4 uses
  %.0309400.us = phi i32 [ %.1310.us.1, %bb.f ], [ 0, %.preheader381.us ] ; 2 uses
  %.0311399.us = phi float [ %.1312.us.1, %bb.f ], [ 0.000000e+00, %.preheader381.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.f ], [ 0, %.preheader381.us ]
  %.not345.us = icmp eq i64 %indvars.iv471, %indvars.iv466
  br i1 %.not345.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader381.us.new
  %gep580 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep579, i64 %indvars.iv466
  %i.n = load float, ptr %gep580, align 4, !tbaa !39
  %i.o = fadd float %.0311399.us, %i.n
  %i.p = add nsw i32 %.0309400.us, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader381.us.new
  %.1312.us = phi float [ %i.o, %bb.c ], [ %.0311399.us, %.preheader381.us.new ] ; 2 uses
  %.1310.us = phi i32 [ %i.p, %bb.c ], [ %.0309400.us, %.preheader381.us.new ] ; 2 uses
  %indvars.iv.next467 = or disjoint i64 %indvars.iv466, 1 ; 2 uses
  %.not345.us.1 = icmp eq i64 %indvars.iv471, %indvars.iv.next467
  br i1 %.not345.us.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %gep580.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep579, i64 %indvars.iv.next467
  %i.q = load float, ptr %gep580.1, align 4, !tbaa !39
  %i.r = fadd float %.1312.us, %i.q
  %i.s = add nsw i32 %.1310.us, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1312.us.1 = phi float [ %i.r, %bb.e ], [ %.1312.us, %bb.d ] ; 3 uses
  %.1310.us.1 = phi i32 [ %i.s, %bb.e ], [ %.1310.us, %bb.d ] ; 3 uses
  %indvars.iv.next467.1 = add nuw nsw i64 %indvars.iv466, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge403.us.unr-lcssa, label %.preheader381.us.new, !llvm.loop !178

._crit_edge403.us.unr-lcssa:                      ; preds = %bb.f
  br i1 %lcmp.mod632.not, label %._crit_edge403.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge403.us.unr-lcssa, %.preheader381.us
  %indvars.iv466.epil.init = phi i64 [ 0, %.preheader381.us ], [ %indvars.iv.next467.1, %._crit_edge403.us.unr-lcssa ] ; 2 uses
  %.0309400.us.epil.init = phi i32 [ 0, %.preheader381.us ], [ %.1310.us.1, %._crit_edge403.us.unr-lcssa ] ; 2 uses
  %.0311399.us.epil.init = phi float [ 0.000000e+00, %.preheader381.us ], [ %.1312.us.1, %._crit_edge403.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod635)
  %.not345.us.epil = icmp eq i64 %indvars.iv471, %indvars.iv466.epil.init
  br i1 %.not345.us.epil, label %._crit_edge403.us, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %gep580.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep579, i64 %indvars.iv466.epil.init
  %i.t = load float, ptr %gep580.epil, align 4, !tbaa !39
  %i.u = fadd float %.0311399.us.epil.init, %i.t
  %i.v = add nsw i32 %.0309400.us.epil.init, 1
  br label %._crit_edge403.us

._crit_edge403.us:                                ; preds = %.epil.preheader, %bb.g, %._crit_edge403.us.unr-lcssa
  %.1312.us.lcssa = phi float [ %.1312.us.1, %._crit_edge403.us.unr-lcssa ], [ %i.u, %bb.g ], [ %.0311399.us.epil.init, %.epil.preheader ]
  %.1310.us.lcssa = phi i32 [ %.1310.us.1, %._crit_edge403.us.unr-lcssa ], [ %i.v, %bb.g ], [ %.0309400.us.epil.init, %.epil.preheader ] ; 2 uses
  %.not344.us = icmp eq i32 %.1310.us.lcssa, 0
  %i.w = sitofp i32 %.1310.us.lcssa to float
  %i.x = fdiv float %.1312.us.lcssa, %i.w
  %i.y = select i1 %.not344.us, float 0.000000e+00, float %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv471
  store float %i.y, ptr %i.z, align 4, !tbaa !39
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %exitcond475.not = icmp eq i64 %indvars.iv.next472, %wide.trip.count474
  br i1 %exitcond475.not, label %._crit_edge406, label %.preheader381.us, !llvm.loop !179

bb.h:                                             ; preds = %.lr.ph398, %.loopexit383
  %indvars.iv461 = phi i64 [ 0, %.lr.ph398 ], [ %indvars.iv.next462, %.loopexit383 ] ; 6 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph398 ], [ %indvars.iv.next, %.loopexit383 ] ; 2 uses
  %indvars463 = trunc i64 %indvars.iv461 to i32
  %i.aa = mul nuw nsw i32 %2, %indvars463
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv461
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !39
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 3 uses
  %i.ae = icmp samesign ult i64 %indvars.iv.next462, %i.i
  br i1 %i.ae, label %.lr.ph, label %.loopexit383

.lr.ph:                                           ; preds = %bb.h
  %i.af = mul nuw nsw i64 %indvars.iv461, %i.c
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv461
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.af
  %invariant.gep577 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv461
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %hnsw_distance.exit
  %indvars.iv458 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next459, %hnsw_distance.exit ] ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv458
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 4 uses
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !50
  switch i32 %i.ak, label %bb.x [
    i32 0, label %bb.j
    i32 1, label %bb.p
    i32 2, label %bb.w
  ]

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !29 ; 8 uses
  %i.ap = load i32, ptr %i.h, align 8, !tbaa !51  ; 8 uses
  %i.aq = icmp ugt i32 %i.ap, 15                  ; 2 uses
  %.pre.i361 = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 3 uses
  %i.ar = and i32 %.pre.i361, 2129920
  %or.cond65.not.i = icmp eq i32 %i.ar, 2129920
  %or.cond84.i = select i1 %i.aq, i1 %or.cond65.not.i, i1 false
  br i1 %or.cond84.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = tail call float @vectors_distance_float_avx512(ptr noundef readonly %i.am, ptr noundef readonly %i.ao, i32 noundef %i.ap)
  br label %hnsw_distance.exit

bb.l:                                             ; preds = %bb.j
  %i.at = and i32 %.pre.i361, 1024
  %.not64.i = icmp eq i32 %i.at, 0
  br i1 %.not64.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = and i32 %.pre.i361, 16384
  %i.av = icmp ne i32 %i.au, 0
  %or.cond.i362 = and i1 %i.aq, %i.av
  br i1 %or.cond.i362, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = tail call float @vectors_distance_float_avx2(ptr noundef readonly %i.am, ptr noundef readonly %i.ao, i32 noundef %i.ap)
  br label %hnsw_distance.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ax = icmp ugt i32 %i.ap, 7
  br i1 %i.ax, label %.lr.ph.preheader.i368, label %.preheader.i363

.lr.ph.preheader.i368:                            ; preds = %bb.o
  %i.ay = zext i32 %i.ap to i64
  br label %.lr.ph.i369

.preheader.loopexit.i372:                         ; preds = %.lr.ph.i369
  %i.az = and i32 %i.ap, -8
  br label %.preheader.i363

.preheader.i363:                                  ; preds = %.preheader.loopexit.i372, %bb.o
  %.0.lcssa.i364 = phi i32 [ 0, %bb.o ], [ %i.az, %.preheader.loopexit.i372 ] ; 2 uses
  %i.ba = phi <2 x float> [ zeroinitializer, %bb.o ], [ %i.cc, %.preheader.loopexit.i372 ] ; 2 uses
  %i.bb = icmp ult i32 %.0.lcssa.i364, %i.ap
  %i.bc = extractelement <2 x float> %i.ba, i64 1 ; 3 uses
  br i1 %i.bb, label %.lr.ph73.preheader.i, label %._crit_edge.i365

.lr.ph73.preheader.i:                             ; preds = %.preheader.i363
  %i.bd = zext i32 %.0.lcssa.i364 to i64          ; 3 uses
  %wide.trip.count.i366 = zext i32 %i.ap to i64   ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i366, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.i.prol.loopexit, label %.lr.ph73.i.prol

.lr.ph73.i.prol:                                  ; preds = %.lr.ph73.preheader.i, %.lr.ph73.i.prol
  %indvars.iv79.i.prol = phi i64 [ %indvars.iv.next80.i.prol, %.lr.ph73.i.prol ], [ %i.bd, %.lr.ph73.preheader.i ] ; 3 uses
  %.15871.i.prol = phi float [ %i.bi, %.lr.ph73.i.prol ], [ %i.bc, %.lr.ph73.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.i.prol ], [ 0, %.lr.ph73.preheader.i ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv79.i.prol
  %i.bf = load float, ptr %i.be, align 4, !tbaa !39
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv79.i.prol
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !39
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bh, float %.15871.i.prol) ; 3 uses
  %indvars.iv.next80.i.prol = add nuw nsw i64 %indvars.iv79.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.i.prol.loopexit, label %.lr.ph73.i.prol, !llvm.loop !180

.lr.ph73.i.prol.loopexit:                         ; preds = %.lr.ph73.i.prol, %.lr.ph73.preheader.i
  %.lcssa630.unr = phi float [ poison, %.lr.ph73.preheader.i ], [ %i.bi, %.lr.ph73.i.prol ]
  %indvars.iv79.i.unr = phi i64 [ %i.bd, %.lr.ph73.preheader.i ], [ %indvars.iv.next80.i.prol, %.lr.ph73.i.prol ]
  %.15871.i.unr = phi float [ %i.bc, %.lr.ph73.preheader.i ], [ %i.bi, %.lr.ph73.i.prol ]
  %i.bj = sub nsw i64 %i.bd, %wide.trip.count.i366
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %._crit_edge.i365, label %.lr.ph73.i

.lr.ph.i369:                                      ; preds = %.lr.ph.i369, %.lr.ph.preheader.i368
  %indvars.iv.i370 = phi i64 [ 0, %.lr.ph.preheader.i368 ], [ %indvars.iv.next.i371, %.lr.ph.i369 ] ; 3 uses
  %i.bl = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i368 ], [ %i.cc, %.lr.ph.i369 ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i370
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i370
  %i.bo = load <8 x float>, ptr %i.bm, align 4, !tbaa !39 ; 4 uses
  %i.bp = load <8 x float>, ptr %i.bn, align 4, !tbaa !39 ; 4 uses
  %i.bq = shufflevector <8 x float> %i.bo, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.br = shufflevector <8 x float> %i.bp, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.bs = fmul <2 x float> %i.bq, %i.br
  %i.bt = shufflevector <8 x float> %i.bo, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.bu = shufflevector <8 x float> %i.bp, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bu, <2 x float> %i.bs)
  %i.bw = shufflevector <8 x float> %i.bo, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.bx = shufflevector <8 x float> %i.bp, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.bx, <2 x float> %i.bv)
  %i.bz = shufflevector <8 x float> %i.bo, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.ca = shufflevector <8 x float> %i.bp, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ca, <2 x float> %i.by)
  %i.cc = fadd <2 x float> %i.bl, %i.cb           ; 2 uses
  %indvars.iv.next.i371 = add nuw nsw i64 %indvars.iv.i370, 8 ; 2 uses
  %4 = or disjoint i64 %indvars.iv.next.i371, 7
  %i.cd = icmp samesign ult i64 %4, %i.ay
  br i1 %i.cd, label %.lr.ph.i369, label %.preheader.loopexit.i372, !llvm.loop !2

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i.3, %.lr.ph73.i ], [ %indvars.iv79.i.unr, %.lr.ph73.i.prol.loopexit ] ; 6 uses
  %.15871.i = phi float [ %i.cx, %.lr.ph73.i ], [ %.15871.i.unr, %.lr.ph73.i.prol.loopexit ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv79.i
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !39
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv79.i
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !39
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.ch, float %.15871.i)
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !39
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !39
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.cm, float %i.ci)
  %indvars.iv.next80.i.1 = add nuw nsw i64 %indvars.iv79.i, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i.1
  %i.cp = load float, ptr %i.co, align 4, !tbaa !39
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i.1
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !39
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cr, float %i.cn)
  %indvars.iv.next80.i.2 = add nuw nsw i64 %indvars.iv79.i, 3 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i.2
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !39
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i.2
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !39
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.cw, float %i.cs) ; 2 uses
  %indvars.iv.next80.i.3 = add nuw nsw i64 %indvars.iv79.i, 4 ; 2 uses
  %exitcond.not.i367.3 = icmp eq i64 %indvars.iv.next80.i.3, %wide.trip.count.i366
  br i1 %exitcond.not.i367.3, label %._crit_edge.i365, label %.lr.ph73.i, !llvm.loop !3

._crit_edge.i365:                                 ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i, %.preheader.i363
  %.158.lcssa.i = phi float [ %i.bc, %.preheader.i363 ], [ %.lcssa630.unr, %.lr.ph73.i.prol.loopexit ], [ %i.cx, %.lr.ph73.i ]
  %i.cy = extractelement <2 x float> %i.ba, i64 0
  %i.cz = fadd float %i.cy, %.158.lcssa.i
  %i.da = fsub float 1.000000e+00, %i.cz
  br label %hnsw_distance.exit

bb.p:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !29 ; 12 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !29 ; 12 uses
  %i.df = load i32, ptr %i.h, align 8, !tbaa !51  ; 9 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !39 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.dj = load float, ptr %i.di, align 8, !tbaa !39 ; 4 uses
  %i.dk = icmp ugt i32 %i.df, 63
  br i1 %i.dk, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 2 uses
  %i.dm = and i32 %i.dl, 2129920
  %or.cond83.not.i = icmp eq i32 %i.dm, 2129920
  br i1 %or.cond83.not.i, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.dn = tail call float @vectors_distance_q8_avx512(ptr noundef readonly %i.dc, ptr noundef readonly %i.de, i32 noundef %i.df, float noundef %i.dh, float noundef %i.dj)
  br label %hnsw_distance.exit

bb.s:                                             ; preds = %bb.p
  %i.do = icmp samesign ugt i32 %i.df, 31
  br i1 %i.do, label %..thread_crit_edge.i, label %bb.u

..thread_crit_edge.i:                             ; preds = %bb.s
  %.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.q
  %i.dp = phi i32 [ %.pre.i, %..thread_crit_edge.i ], [ %i.dl, %bb.q ]
  %i.dq = and i32 %i.dp, 17408
  %or.cond84.not.i = icmp eq i32 %i.dq, 17408
  br i1 %or.cond84.not.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread.i
  %i.dr = tail call float @vectors_distance_q8_avx2(ptr noundef readonly %i.dc, ptr noundef readonly %i.de, i32 noundef %i.df, float noundef %i.dh, float noundef %i.dj)
  br label %hnsw_distance.exit

bb.u:                                             ; preds = %.thread.i, %bb.s
  %i.ds = fcmp oeq float %i.dh, 0.000000e+00
  %i.dt = fcmp oeq float %i.dj, 0.000000e+00
  %or.cond.i = or i1 %i.ds, %i.dt
  br i1 %or.cond.i, label %hnsw_distance.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.dj, i64 1
  %i.dw = fdiv <2 x float> %i.dv, splat (float 1.270000e+02) ; 2 uses
  %shift = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.dw, %shift
  %i.dx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dy = icmp ugt i32 %i.df, 7
  br i1 %i.dy, label %.lr.ph.preheader.i, label %.preheader.i356

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.dz = zext i32 %i.df to i64
  br label %.lr.ph.i358

.preheader.loopexit.i:                            ; preds = %.lr.ph.i358
  %i.ea = and i32 %i.df, -8
  br label %.preheader.i356

.preheader.i356:                                  ; preds = %.preheader.loopexit.i, %bb.v
  %.071.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.gf, %.preheader.loopexit.i ] ; 3 uses
  %.070.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.ho, %.preheader.loopexit.i ]
  %.069.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.ea, %.preheader.loopexit.i ] ; 2 uses
  %i.eb = icmp ult i32 %.069.lcssa.i, %i.df
  br i1 %i.eb, label %.lr.ph92.preheader.i, label %._crit_edge.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i356
  %i.ec = zext i32 %.069.lcssa.i to i64           ; 4 uses
  %wide.trip.count.i = zext i32 %i.df to i64      ; 3 uses
  %i.ed = sub nsw i64 %wide.trip.count.i, %i.ec   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ed, 8
  br i1 %min.iters.check, label %.lr.ph92.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader.i
  %i.ee = and i64 %wide.trip.count.i, 7           ; 2 uses
  %n.vec = sub nuw nsw i64 %i.ed, %i.ee           ; 2 uses
  %i.ef = add nsw i64 %n.vec, %i.ec
  %i.eg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.071.lcssa.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.eg, %vector.ph ], [ %i.es, %vector.body ]
  %vec.phi612 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.et, %vector.body ]
  %i.eh = add nuw i64 %index, %i.ec               ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %wide.load = load <4 x i8>, ptr %i.ei, align 1, !tbaa !43
  %wide.load613 = load <4 x i8>, ptr %i.ej, align 1, !tbaa !43
  %i.ek = sext <4 x i8> %wide.load to <4 x i32>
  %i.el = sext <4 x i8> %wide.load613 to <4 x i32>
  %i.em = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.eh ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %wide.load614 = load <4 x i8>, ptr %i.em, align 1, !tbaa !43
  %wide.load615 = load <4 x i8>, ptr %i.en, align 1, !tbaa !43
  %i.eo = sext <4 x i8> %wide.load614 to <4 x i32>
  %i.ep = sext <4 x i8> %wide.load615 to <4 x i32>
  %i.eq = mul nsw <4 x i32> %i.eo, %i.ek
  %i.er = mul nsw <4 x i32> %i.ep, %i.el
  %i.es = add <4 x i32> %i.eq, %vec.phi           ; 2 uses
  %i.et = add <4 x i32> %i.er, %vec.phi612        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.et, %i.es
  %i.ev = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ee, 0
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %.lr.ph92.preheader.i, %middle.block
  %indvars.iv98.i.ph = phi i64 [ %i.ec, %.lr.ph92.preheader.i ], [ %i.ef, %middle.block ]
  %.17290.i.ph = phi i32 [ %.071.lcssa.i, %.lr.ph92.preheader.i ], [ %i.ev, %middle.block ]
  br label %.lr.ph92.i

.lr.ph.i358:                                      ; preds = %.lr.ph.i358, %.lr.ph.preheader.i
  %indvars.iv.i359 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i360, %.lr.ph.i358 ] ; 10 uses
  %.07086.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ho, %.lr.ph.i358 ]
  %.07185.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.gf, %.lr.ph.i358 ]
  %i.ew = or disjoint i64 %indvars.iv.i359, 7     ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.i359
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !43
  %i.ez = sext i8 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.i359
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !43
  %i.fc = sext i8 %i.fb to i32
  %i.fd = mul nsw i32 %i.fc, %i.ez
  %i.fe = or disjoint i64 %indvars.iv.i359, 1     ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !43
  %i.fh = sext i8 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.fe
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !43
  %i.fk = sext i8 %i.fj to i32
  %i.fl = mul nsw i32 %i.fk, %i.fh
  %i.fm = or disjoint i64 %indvars.iv.i359, 2     ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !43
  %i.fp = sext i8 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.fm
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !43
  %i.fs = sext i8 %i.fr to i32
  %i.ft = mul nsw i32 %i.fs, %i.fp
  %i.fu = or disjoint i64 %indvars.iv.i359, 3     ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !43
  %i.fx = sext i8 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.fu
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !43
  %i.ga = sext i8 %i.fz to i32
  %i.gb = mul nsw i32 %i.ga, %i.fx
  %i.gc = add i32 %i.fd, %.07185.i
  %i.gd = add i32 %i.gc, %i.fl
  %i.ge = add i32 %i.gd, %i.ft
  %i.gf = add i32 %i.ge, %i.gb                    ; 2 uses
  %i.gg = or disjoint i64 %indvars.iv.i359, 4     ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !43
  %i.gj = sext i8 %i.gi to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.gg
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !43
  %i.gm = sext i8 %i.gl to i32
  %i.gn = mul nsw i32 %i.gm, %i.gj
  %i.go = or disjoint i64 %indvars.iv.i359, 5     ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !43
  %i.gr = sext i8 %i.gq to i32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.go
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !43
  %i.gu = sext i8 %i.gt to i32
  %i.gv = mul nsw i32 %i.gu, %i.gr
  %i.gw = or disjoint i64 %indvars.iv.i359, 6     ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !43
  %i.gz = sext i8 %i.gy to i32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.gw
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !43
  %i.hc = sext i8 %i.hb to i32
  %i.hd = mul nsw i32 %i.hc, %i.gz
  %i.he = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ew
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !43
  %i.hg = sext i8 %i.hf to i32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ew
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !43
  %i.hj = sext i8 %i.hi to i32
  %i.hk = mul nsw i32 %i.hj, %i.hg
  %i.hl = add i32 %i.gn, %.07086.i
  %i.hm = add i32 %i.hl, %i.gv
  %i.hn = add i32 %i.hm, %i.hd
  %i.ho = add i32 %i.hn, %i.hk                    ; 2 uses
  %indvars.iv.next.i360 = add nuw nsw i64 %indvars.iv.i359, 8 ; 2 uses
  %5 = or disjoint i64 %indvars.iv.next.i360, 7
  %i.hp = icmp samesign ult i64 %5, %i.dz
  br i1 %i.hp, label %.lr.ph.i358, label %.preheader.loopexit.i, !llvm.loop !4

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph92.i ], [ %indvars.iv98.i.ph, %.lr.ph92.i.preheader ] ; 3 uses
  %.17290.i = phi i32 [ %i.hx, %.lr.ph92.i ], [ %.17290.i.ph, %.lr.ph92.i.preheader ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv98.i
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !43
  %i.hs = sext i8 %i.hr to i32
  %i.ht = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv98.i
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !43
  %i.hv = sext i8 %i.hu to i32
  %i.hw = mul nsw i32 %i.hv, %i.hs
  %i.hx = add nsw i32 %i.hw, %.17290.i            ; 2 uses
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph92.i, !llvm.loop !182

._crit_edge.i:                                    ; preds = %.lr.ph92.i, %middle.block, %.preheader.i356
  %.172.lcssa.i = phi i32 [ %.071.lcssa.i, %.preheader.i356 ], [ %i.ev, %middle.block ], [ %i.hx, %.lr.ph92.i ]
  %i.hy = add nsw i32 %.172.lcssa.i, %.070.lcssa.i
  %i.hz = sitofp i32 %i.hy to float
  %i.ia = fmul float %i.dx, %i.hz
  %i.ib = fsub float 1.000000e+00, %i.ia          ; 3 uses
  %i.ic = fcmp olt float %i.ib, 0.000000e+00
  %i.id = fcmp ogt float %i.ib, 2.000000e+00
  %spec.store.select.i = select i1 %i.id, float 2.000000e+00, float %i.ib
  %.0.i357 = select i1 %i.ic, float 0.000000e+00, float %spec.store.select.i
  br label %hnsw_distance.exit

bb.w:                                             ; preds = %bb.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !29
  %i.ig = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !29
  %i.ii = load i32, ptr %i.h, align 8, !tbaa !51
  %i.ij = tail call float @vectors_distance_bin(ptr noundef %i.if, ptr noundef %i.ih, i32 noundef %i.ii)
  br label %hnsw_distance.exit

bb.x:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %._crit_edge.i, %bb.u, %bb.t, %bb.r, %._crit_edge.i365, %bb.n, %bb.k, %bb.w
  %.0.i = phi float [ %i.ij, %bb.w ], [ %i.da, %._crit_edge.i365 ], [ %i.as, %bb.k ], [ %i.aw, %bb.n ], [ %i.dn, %bb.r ], [ %i.dr, %bb.t ], [ %.0.i357, %._crit_edge.i ], [ 1.000000e+00, %bb.u ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv458
  store float %.0.i, ptr %gep, align 4, !tbaa !39
  %i.ik = mul nuw nsw i64 %indvars.iv458, %i.c
  %gep578 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep577, i64 %i.ik
  store float %.0.i, ptr %gep578, align 4, !tbaa !39
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next459, %i.c
  br i1 %exitcond.not, label %.loopexit383, label %bb.i, !llvm.loop !183

._crit_edge406:                                   ; preds = %._crit_edge403.us
  %i.il = load ptr, ptr @hmalloc, align 8, !tbaa !29
  %i.im = tail call ptr %i.il(i64 noundef %i.e) #34 ; 13 uses
  %.not326 = icmp eq ptr %i.im, null
  br i1 %.not326, label %.sink.split.sink.split, label %.preheader379.lr.ph

.preheader379.lr.ph:                              ; preds = %._crit_edge406
  %i.in = zext i32 %3 to i64                      ; 3 uses
  %i.io = icmp sgt i32 %2, 2
  %i.ip = add nsw i32 %2, -1
  %i.iq = uitofp nneg i32 %i.ip to float
  %i.ir = add nsw i32 %2, -2
  %i.is = uitofp nneg i32 %i.ir to float
  br i1 %i.io, label %.preheader379.us.preheader, label %.preheader379

.preheader379.us.preheader:                       ; preds = %.preheader379.lr.ph
  %i.it = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.iu = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iv = insertelement <2 x float> poison, float %i.is, i64 0
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader379.us

.preheader379.us:                                 ; preds = %.preheader379.us.preheader, %._crit_edge413.split.us.us
  %indvars.iv502 = phi i64 [ %indvars.iv.next503, %._crit_edge413.split.us.us ], [ 0, %.preheader379.us.preheader ] ; 6 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv502
  %i.iy = mul nuw nsw i64 %indvars.iv502, %i.c    ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv502
  %invariant.gep583 = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.iy
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv502
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.iy
  br label %bb.y

bb.y:                                             ; preds = %bb.ad, %.preheader379.us
  %indvars.iv497 = phi i64 [ %indvars.iv.next498, %bb.ad ], [ 0, %.preheader379.us ] ; 6 uses
  %i.jc = icmp eq i64 %indvars.iv502, %indvars.iv497
  br i1 %i.jc, label %bb.ac, label %.preheader378.us.us

.preheader378.us.us:                              ; preds = %bb.y
  %i.jd = load ptr, ptr %i.ix, align 8, !tbaa !38
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 312
  %i.jf = getelementptr inbounds nuw [24 x i8], ptr %i.je, i64 %i.in ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !63 ; 2 uses
  %.not343407.us.us.not = icmp eq i32 %i.jh, 0
  br i1 %.not343407.us.us.not, label %.critedge.us.us, label %.lr.ph409.us.us

.lr.ph409.us.us:                                  ; preds = %.preheader378.us.us
  %i.ji = load ptr, ptr %i.jf, align 8, !tbaa !66
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv497
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !38
  %wide.trip.count495 = zext i32 %i.jh to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %.lr.ph409.us.us
  %indvars.iv492 = phi i64 [ %indvars.iv.next493, %bb.aa ], [ 0, %.lr.ph409.us.us ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv492
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !38
  %i.jn = icmp eq ptr %i.jm, %i.jk
  br i1 %i.jn, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 2 uses
  %exitcond496.not = icmp eq i64 %indvars.iv.next493, %wide.trip.count495
  br i1 %exitcond496.not, label %.critedge.us.us, label %bb.z, !llvm.loop !184

.critedge.us.us:                                  ; preds = %bb.aa, %.preheader378.us.us
  %i.jo = add nuw nsw i64 %indvars.iv497, %i.iy   ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jo
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !39 ; 2 uses
  %i.jr = load float, ptr %i.iz, align 4, !tbaa !39
  %i.js = fneg float %i.jq
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv497
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !39
  %i.jv = insertelement <2 x float> poison, float %i.jr, i64 0
  %i.jw = insertelement <2 x float> %i.jv, float %i.ju, i64 1
  %i.jx = insertelement <2 x float> poison, float %i.js, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> %i.iu, <2 x float> %i.jy)
  %i.ka = fdiv <2 x float> %i.jz, %i.iw
  %i.kb = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ka)
  %i.kc = fmul float %i.kb, 5.000000e-01
  %i.kd = fmul float %i.kc, 3.000000e-01
  %i.ke = fsub float 2.000000e+00, %i.jq
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.ke, float f0x3F333333, float %i.kd)
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.jo
  store float %i.kf, ptr %i.kg, align 4, !tbaa !39
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %gep584 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep583, i64 %indvars.iv497
  store float -1.000000e+00, ptr %gep584, align 4, !tbaa !39
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  store float -1.000000e+00, ptr %i.jb, align 4, !tbaa !39
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %.critedge.us.us
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %exitcond501.not = icmp eq i64 %indvars.iv.next498, %i.c
  br i1 %exitcond501.not, label %._crit_edge413.split.us.us, label %bb.y, !llvm.loop !185

._crit_edge413.split.us.us:                       ; preds = %bb.ad
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1 ; 2 uses
  %exitcond506.not = icmp eq i64 %indvars.iv.next503, %i.c
  br i1 %exitcond506.not, label %._crit_edge416.split, label %.preheader379.us, !llvm.loop !186

._crit_edge416.split:                             ; preds = %.preheader379, %._crit_edge413.split, %._crit_edge413.split.1, %._crit_edge413.split.us.us
  %i.kh = load ptr, ptr @hmalloc, align 8, !tbaa !29
  %i.ki = tail call ptr %i.kh(i64 noundef %i.d) #34 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ki, i8 0, i64 %i.d, i1 false)
  %.not327 = icmp eq ptr %i.ki, null
  br i1 %.not327, label %.sink.split.sink.split.sink.split, label %.preheader377

.preheader377:                                    ; preds = %._crit_edge416.split
  %i.kj = zext i32 %3 to i64                      ; 13 uses
  %wide.trip.count516 = zext nneg i32 %2 to i64   ; 2 uses
  br label %.lr.ph432

.preheader379.1:                                  ; preds = %._crit_edge413.split
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %invariant.gep581.1 = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.c
  %i.kl = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.c
  %i.kn = load ptr, ptr %i.kk, align 8, !tbaa !38
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 312
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %i.ko, i64 %i.in ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !63 ; 2 uses
  %.not343407.not.1636 = icmp eq i32 %i.kr, 0
  br i1 %.not343407.not.1636, label %.critedge.1644, label %.lr.ph409.1639

.lr.ph409.1639:                                   ; preds = %.preheader379.1
  %i.ks = load ptr, ptr %i.kp, align 8, !tbaa !66
  %i.kt = load ptr, ptr %1, align 8, !tbaa !38
  %wide.trip.count479.1638 = zext i32 %i.kr to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph409.1639
  %indvars.iv476.1640 = phi i64 [ 0, %.lr.ph409.1639 ], [ %indvars.iv.next477.1641, %bb.af ] ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv476.1640
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !38
  %i.kw = icmp eq ptr %i.kv, %i.kt
  br i1 %i.kw, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
end_hunk_4
begin_hunk_5_@hnsw_reconnect_nodes:bb.a
  %.sink590 = phi ptr [ %i.f, %._crit_edge ], [ %.sink590.ph, %.sink.split.sink.split ]
  %i.sy = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.sy(ptr noundef nonnull %.sink590) #34
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_unlink_node(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.an

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.d = atomicrmw add ptr %i.c, i64 1 seq_cst, align 8 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %.080136 = phi i32 [ 0, %bb.b ], [ %i.n, %._crit_edge ] ; 2 uses
  %i.h = zext i32 %.080136 to i64                 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !63
  %.not146 = icmp eq i32 %i.k, 0
  br i1 %.not146, label %._crit_edge, label %.lr.ph135

bb.c:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %.not88 = icmp eq ptr %i.m, null
  br i1 %.not88, label %hnsw_cursor_element_deleted.exit, label %.lr.ph.i

._crit_edge:                                      ; preds = %hnsw_update_worst_neighbor_on_remove.exit, %.preheader
  %i.n = add i32 %.080136, 1                      ; 2 uses
  %i.o = load i32, ptr %1, align 8, !tbaa !25
  %.not = icmp ugt i32 %i.n, %i.o
  br i1 %.not, label %bb.c, label %.preheader, !llvm.loop !192

.lr.ph135:                                        ; preds = %.preheader, %hnsw_update_worst_neighbor_on_remove.exit
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %hnsw_update_worst_neighbor_on_remove.exit ], [ 0, %.preheader ] ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv159
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 312
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.h ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !63   ; 3 uses
  %.not147 = icmp eq i32 %i.v, 0
  br i1 %.not147, label %hnsw_update_worst_neighbor_on_remove.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph135
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !66   ; 3 uses
  %wide.trip.count = zext i32 %i.v to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.z = icmp eq ptr %i.y, %1
  br i1 %i.z, label %bb.e, label %bb.z

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
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !63
  %i.ak = add i32 %i.aj, -1                       ; 3 uses
  store i32 %i.ak, ptr %i.u, align 8, !tbaa !63
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store float 0.000000e+00, ptr %i.am, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i32 0, ptr %i.an, align 4, !tbaa !65
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !65 ; 3 uses
  %i.aq = icmp eq i32 %i.ap, %i.ab
  br i1 %i.aq, label %.lr.ph.i98, label %bb.x

.lr.ph.i98:                                       ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  br label %bb.h

bb.h:                                             ; preds = %hnsw_distance.exit.i, %.lr.ph.i98
  %i.at = phi i32 [ %i.ak, %.lr.ph.i98 ], [ %i.it, %hnsw_distance.exit.i ] ; 7 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i98 ], [ %indvars.iv.next.i, %hnsw_distance.exit.i ] ; 3 uses
  %.01826.i = phi i32 [ 0, %.lr.ph.i98 ], [ %.1.i, %hnsw_distance.exit.i ]
  %.01925.i = phi float [ 0.000000e+00, %.lr.ph.i98 ], [ %.120.i, %hnsw_distance.exit.i ] ; 2 uses
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !66
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 4 uses
  %i.ax = load i32, ptr %i.f, align 8, !tbaa !50
  switch i32 %i.ax, label %bb.w [
    i32 0, label %bb.i
    i32 1, label %bb.o
    i32 2, label %bb.v
  ]

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29 ; 8 uses
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !51  ; 8 uses
  %i.bc = icmp ugt i32 %i.bb, 15                  ; 2 uses
  %.pre.i104 = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 3 uses
  %i.bd = and i32 %.pre.i104, 2129920
  %or.cond65.not.i = icmp eq i32 %i.bd, 2129920
  %or.cond84.i = select i1 %i.bc, i1 %or.cond65.not.i, i1 false
  br i1 %or.cond84.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = tail call float @vectors_distance_float_avx512(ptr noundef readonly %i.ay, ptr noundef readonly %i.ba, i32 noundef %i.bb)
  br label %hnsw_distance.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bf = and i32 %.pre.i104, 1024
  %.not64.i = icmp eq i32 %i.bf, 0
  br i1 %.not64.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = and i32 %.pre.i104, 16384
  %i.bh = icmp ne i32 %i.bg, 0
  %or.cond.i105 = and i1 %i.bc, %i.bh
  br i1 %or.cond.i105, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bi = tail call float @vectors_distance_float_avx2(ptr noundef readonly %i.ay, ptr noundef readonly %i.ba, i32 noundef %i.bb)
  br label %hnsw_distance.exit.i

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bj = icmp ugt i32 %i.bb, 7
  br i1 %i.bj, label %.lr.ph.preheader.i110, label %.preheader.i106

.lr.ph.preheader.i110:                            ; preds = %bb.n
  %i.bk = zext i32 %i.bb to i64
  br label %.lr.ph.i111

.preheader.loopexit.i114:                         ; preds = %.lr.ph.i111
  %i.bl = and i32 %i.bb, -8
  br label %.preheader.i106

.preheader.i106:                                  ; preds = %.preheader.loopexit.i114, %bb.n
  %.0.lcssa.i = phi i32 [ 0, %bb.n ], [ %i.bl, %.preheader.loopexit.i114 ] ; 2 uses
  %i.bm = phi <2 x float> [ zeroinitializer, %bb.n ], [ %i.co, %.preheader.loopexit.i114 ] ; 2 uses
  %i.bn = icmp ult i32 %.0.lcssa.i, %i.bb
  %i.bo = extractelement <2 x float> %i.bm, i64 1 ; 3 uses
  br i1 %i.bn, label %.lr.ph73.preheader.i, label %._crit_edge.i107

.lr.ph73.preheader.i:                             ; preds = %.preheader.i106
  %i.bp = zext i32 %.0.lcssa.i to i64             ; 3 uses
  %wide.trip.count.i108 = zext i32 %i.bb to i64   ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i108, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.i.prol.loopexit, label %.lr.ph73.i.prol

.lr.ph73.i.prol:                                  ; preds = %.lr.ph73.preheader.i, %.lr.ph73.i.prol
  %indvars.iv79.i.prol = phi i64 [ %indvars.iv.next80.i.prol, %.lr.ph73.i.prol ], [ %i.bp, %.lr.ph73.preheader.i ] ; 3 uses
  %.15871.i.prol = phi float [ %i.bu, %.lr.ph73.i.prol ], [ %i.bo, %.lr.ph73.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.i.prol ], [ 0, %.lr.ph73.preheader.i ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv79.i.prol
  %i.br = load float, ptr %i.bq, align 4, !tbaa !39
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv79.i.prol
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !39
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bt, float %.15871.i.prol) ; 3 uses
  %indvars.iv.next80.i.prol = add nuw nsw i64 %indvars.iv79.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.i.prol.loopexit, label %.lr.ph73.i.prol, !llvm.loop !193

.lr.ph73.i.prol.loopexit:                         ; preds = %.lr.ph73.i.prol, %.lr.ph73.preheader.i
  %.lcssa223.unr = phi float [ poison, %.lr.ph73.preheader.i ], [ %i.bu, %.lr.ph73.i.prol ]
  %indvars.iv79.i.unr = phi i64 [ %i.bp, %.lr.ph73.preheader.i ], [ %indvars.iv.next80.i.prol, %.lr.ph73.i.prol ]
  %.15871.i.unr = phi float [ %i.bo, %.lr.ph73.preheader.i ], [ %i.bu, %.lr.ph73.i.prol ]
  %i.bv = sub nsw i64 %i.bp, %wide.trip.count.i108
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge.i107, label %.lr.ph73.i

.lr.ph.i111:                                      ; preds = %.lr.ph.i111, %.lr.ph.preheader.i110
  %indvars.iv.i112 = phi i64 [ 0, %.lr.ph.preheader.i110 ], [ %indvars.iv.next.i113, %.lr.ph.i111 ] ; 3 uses
  %i.bx = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i110 ], [ %i.co, %.lr.ph.i111 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i112
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i112
  %i.ca = load <8 x float>, ptr %i.by, align 4, !tbaa !39 ; 4 uses
  %i.cb = load <8 x float>, ptr %i.bz, align 4, !tbaa !39 ; 4 uses
  %i.cc = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.cd = shufflevector <8 x float> %i.cb, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.ce = fmul <2 x float> %i.cc, %i.cd
  %i.cf = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.cg = shufflevector <8 x float> %i.cb, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.cg, <2 x float> %i.ce)
  %i.ci = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.cj = shufflevector <8 x float> %i.cb, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.cj, <2 x float> %i.ch)
  %i.cl = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.cm = shufflevector <8 x float> %i.cb, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cm, <2 x float> %i.ck)
  %i.co = fadd <2 x float> %i.bx, %i.cn           ; 2 uses
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 8 ; 2 uses
  %2 = or disjoint i64 %indvars.iv.next.i113, 7
  %i.cp = icmp samesign ult i64 %2, %i.bk
  br i1 %i.cp, label %.lr.ph.i111, label %.preheader.loopexit.i114, !llvm.loop !2

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i.3, %.lr.ph73.i ], [ %indvars.iv79.i.unr, %.lr.ph73.i.prol.loopexit ] ; 6 uses
  %.15871.i = phi float [ %i.dj, %.lr.ph73.i ], [ %.15871.i.unr, %.lr.ph73.i.prol.loopexit ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv79.i
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !39
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv79.i
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !39
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.ct, float %.15871.i)
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next80.i
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !39
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next80.i
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !39
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cy, float %i.cu)
  %indvars.iv.next80.i.1 = add nuw nsw i64 %indvars.iv79.i, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next80.i.1
  %i.db = load float, ptr %i.da, align 4, !tbaa !39
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next80.i.1
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !39
  %i.de = tail call float @llvm.fmuladd.f32(float %i.db, float %i.dd, float %i.cz)
  %indvars.iv.next80.i.2 = add nuw nsw i64 %indvars.iv79.i, 3 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next80.i.2
  %i.dg = load float, ptr %i.df, align 4, !tbaa !39
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next80.i.2
  %i.di = load float, ptr %i.dh, align 4, !tbaa !39
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.di, float %i.de) ; 2 uses
  %indvars.iv.next80.i.3 = add nuw nsw i64 %indvars.iv79.i, 4 ; 2 uses
  %exitcond.not.i109.3 = icmp eq i64 %indvars.iv.next80.i.3, %wide.trip.count.i108
  br i1 %exitcond.not.i109.3, label %._crit_edge.i107, label %.lr.ph73.i, !llvm.loop !3

._crit_edge.i107:                                 ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i, %.preheader.i106
  %.158.lcssa.i = phi float [ %i.bo, %.preheader.i106 ], [ %.lcssa223.unr, %.lr.ph73.i.prol.loopexit ], [ %i.dj, %.lr.ph73.i ]
  %i.dk = extractelement <2 x float> %i.bm, i64 0
  %i.dl = fadd float %i.dk, %.158.lcssa.i
  %i.dm = fsub float 1.000000e+00, %i.dl
  br label %hnsw_distance.exit.i

bb.o:                                             ; preds = %bb.h
  %i.dn = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 12 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !29 ; 12 uses
  %i.dq = load i32, ptr %i.g, align 8, !tbaa !51  ; 9 uses
  %i.dr = load float, ptr %i.as, align 8, !tbaa !39 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !39 ; 4 uses
  %i.du = icmp ugt i32 %i.dq, 63
  br i1 %i.du, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 2 uses
  %i.dw = and i32 %i.dv, 2129920
  %or.cond83.not.i = icmp eq i32 %i.dw, 2129920
  br i1 %or.cond83.not.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p
  %i.dx = tail call float @vectors_distance_q8_avx512(ptr noundef readonly %i.dn, ptr noundef readonly %i.dp, i32 noundef %i.dq, float noundef %i.dr, float noundef %i.dt)
  br label %hnsw_distance.exit.i

bb.r:                                             ; preds = %bb.o
  %i.dy = icmp samesign ugt i32 %i.dq, 31
  br i1 %i.dy, label %..thread_crit_edge.i, label %bb.t

..thread_crit_edge.i:                             ; preds = %bb.r
  %.pre.i103 = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.p
  %i.dz = phi i32 [ %.pre.i103, %..thread_crit_edge.i ], [ %i.dv, %bb.p ]
  %i.ea = and i32 %i.dz, 17408
  %or.cond84.not.i = icmp eq i32 %i.ea, 17408
  br i1 %or.cond84.not.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread.i
  %i.eb = tail call float @vectors_distance_q8_avx2(ptr noundef readonly %i.dn, ptr noundef readonly %i.dp, i32 noundef %i.dq, float noundef %i.dr, float noundef %i.dt)
  br label %hnsw_distance.exit.i

bb.t:                                             ; preds = %.thread.i, %bb.r
  %i.ec = fcmp oeq float %i.dr, 0.000000e+00
  %i.ed = fcmp oeq float %i.dt, 0.000000e+00
  %or.cond.i = or i1 %i.ec, %i.ed
  br i1 %or.cond.i, label %hnsw_distance.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ee = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.ef = insertelement <2 x float> %i.ee, float %i.dt, i64 1
  %i.eg = fdiv <2 x float> %i.ef, splat (float 1.270000e+02) ; 2 uses
  %shift = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.eg, %shift
  %i.eh = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ei = icmp ugt i32 %i.dq, 7
  br i1 %i.ei, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.u
  %i.ej = zext i32 %i.dq to i64
  br label %.lr.ph.i100

.preheader.loopexit.i:                            ; preds = %.lr.ph.i100
  %i.ek = and i32 %i.dq, -8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.u
  %.071.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.gp, %.preheader.loopexit.i ] ; 3 uses
  %.070.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.hy, %.preheader.loopexit.i ]
  %.069.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.ek, %.preheader.loopexit.i ] ; 2 uses
  %i.el = icmp ult i32 %.069.lcssa.i, %i.dq
  br i1 %i.el, label %.lr.ph92.preheader.i, label %._crit_edge.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i
  %i.em = zext i32 %.069.lcssa.i to i64           ; 4 uses
  %wide.trip.count.i = zext i32 %i.dq to i64      ; 3 uses
  %i.en = sub nsw i64 %wide.trip.count.i, %i.em   ; 2 uses
  %min.iters.check = icmp ult i64 %i.en, 8
  br i1 %min.iters.check, label %.lr.ph92.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader.i
  %i.eo = and i64 %wide.trip.count.i, 7           ; 2 uses
  %n.vec = sub nuw nsw i64 %i.en, %i.eo           ; 2 uses
  %i.ep = add nsw i64 %n.vec, %i.em
  %i.eq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.071.lcssa.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.eq, %vector.ph ], [ %i.fc, %vector.body ]
  %vec.phi209 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fd, %vector.body ]
  %i.er = add nuw i64 %index, %i.em               ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %wide.load = load <4 x i8>, ptr %i.es, align 1, !tbaa !43
  %wide.load210 = load <4 x i8>, ptr %i.et, align 1, !tbaa !43
  %i.eu = sext <4 x i8> %wide.load to <4 x i32>
  %i.ev = sext <4 x i8> %wide.load210 to <4 x i32>
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.er ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %wide.load211 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !43
  %wide.load212 = load <4 x i8>, ptr %i.ex, align 1, !tbaa !43
  %i.ey = sext <4 x i8> %wide.load211 to <4 x i32>
  %i.ez = sext <4 x i8> %wide.load212 to <4 x i32>
  %i.fa = mul nsw <4 x i32> %i.ey, %i.eu
  %i.fb = mul nsw <4 x i32> %i.ez, %i.ev
  %i.fc = add <4 x i32> %i.fa, %vec.phi           ; 2 uses
  %i.fd = add <4 x i32> %i.fb, %vec.phi209        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fd, %i.fc
  %i.ff = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.eo, 0
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %.lr.ph92.preheader.i, %middle.block
  %indvars.iv98.i.ph = phi i64 [ %i.em, %.lr.ph92.preheader.i ], [ %i.ep, %middle.block ]
  %.17290.i.ph = phi i32 [ %.071.lcssa.i, %.lr.ph92.preheader.i ], [ %i.ff, %middle.block ]
  br label %.lr.ph92.i

.lr.ph.i100:                                      ; preds = %.lr.ph.i100, %.lr.ph.preheader.i
  %indvars.iv.i101 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i102, %.lr.ph.i100 ] ; 10 uses
  %.07086.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.hy, %.lr.ph.i100 ]
  %.07185.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.gp, %.lr.ph.i100 ]
  %i.fg = or disjoint i64 %indvars.iv.i101, 7     ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.i101
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !43
  %i.fj = sext i8 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv.i101
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !43
  %i.fm = sext i8 %i.fl to i32
  %i.fn = mul nsw i32 %i.fm, %i.fj
  %i.fo = or disjoint i64 %indvars.iv.i101, 1     ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !43
  %i.fr = sext i8 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fo
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !43
  %i.fu = sext i8 %i.ft to i32
  %i.fv = mul nsw i32 %i.fu, %i.fr
  %i.fw = or disjoint i64 %indvars.iv.i101, 2     ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !43
  %i.fz = sext i8 %i.fy to i32
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fw
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !43
  %i.gc = sext i8 %i.gb to i32
  %i.gd = mul nsw i32 %i.gc, %i.fz
  %i.ge = or disjoint i64 %indvars.iv.i101, 3     ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !43
  %i.gh = sext i8 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ge
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !43
  %i.gk = sext i8 %i.gj to i32
  %i.gl = mul nsw i32 %i.gk, %i.gh
  %i.gm = add i32 %i.fn, %.07185.i
  %i.gn = add i32 %i.gm, %i.fv
  %i.go = add i32 %i.gn, %i.gd
  %i.gp = add i32 %i.go, %i.gl                    ; 2 uses
  %i.gq = or disjoint i64 %indvars.iv.i101, 4     ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !43
  %i.gt = sext i8 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.gq
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !43
  %i.gw = sext i8 %i.gv to i32
  %i.gx = mul nsw i32 %i.gw, %i.gt
  %i.gy = or disjoint i64 %indvars.iv.i101, 5     ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !43
  %i.hb = sext i8 %i.ha to i32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.gy
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !43
  %i.he = sext i8 %i.hd to i32
  %i.hf = mul nsw i32 %i.he, %i.hb
  %i.hg = or disjoint i64 %indvars.iv.i101, 6     ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !43
  %i.hj = sext i8 %i.hi to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.hg
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !43
  %i.hm = sext i8 %i.hl to i32
  %i.hn = mul nsw i32 %i.hm, %i.hj
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.fg
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !43
  %i.hq = sext i8 %i.hp to i32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fg
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !43
  %i.ht = sext i8 %i.hs to i32
  %i.hu = mul nsw i32 %i.ht, %i.hq
  %i.hv = add i32 %i.gx, %.07086.i
  %i.hw = add i32 %i.hv, %i.hf
  %i.hx = add i32 %i.hw, %i.hn
  %i.hy = add i32 %i.hx, %i.hu                    ; 2 uses
  %indvars.iv.next.i102 = add nuw nsw i64 %indvars.iv.i101, 8 ; 2 uses
  %3 = or disjoint i64 %indvars.iv.next.i102, 7
  %i.hz = icmp samesign ult i64 %3, %i.ej
  br i1 %i.hz, label %.lr.ph.i100, label %.preheader.loopexit.i, !llvm.loop !4

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph92.i ], [ %indvars.iv98.i.ph, %.lr.ph92.i.preheader ] ; 3 uses
  %.17290.i = phi i32 [ %i.ih, %.lr.ph92.i ], [ %.17290.i.ph, %.lr.ph92.i.preheader ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv98.i
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !43
  %i.ic = sext i8 %i.ib to i32
  %i.id = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv98.i
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !43
  %i.if = sext i8 %i.ie to i32
  %i.ig = mul nsw i32 %i.if, %i.ic
  %i.ih = add nsw i32 %i.ig, %.17290.i            ; 2 uses
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph92.i, !llvm.loop !195

._crit_edge.i:                                    ; preds = %.lr.ph92.i, %middle.block, %.preheader.i
  %.172.lcssa.i = phi i32 [ %.071.lcssa.i, %.preheader.i ], [ %i.ff, %middle.block ], [ %i.ih, %.lr.ph92.i ]
  %i.ii = add nsw i32 %.172.lcssa.i, %.070.lcssa.i
  %i.ij = sitofp i32 %i.ii to float
  %i.ik = fmul float %i.eh, %i.ij
  %i.il = fsub float 1.000000e+00, %i.ik          ; 3 uses
  %i.im = fcmp olt float %i.il, 0.000000e+00
  %i.in = fcmp ogt float %i.il, 2.000000e+00
  %spec.store.select.i = select i1 %i.in, float 2.000000e+00, float %i.il
  %.0.i99 = select i1 %i.im, float 0.000000e+00, float %spec.store.select.i
  br label %hnsw_distance.exit.i

bb.v:                                             ; preds = %bb.h
  %i.io = load ptr, ptr %i.ar, align 8, !tbaa !29
  %i.ip = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !29
  %i.ir = load i32, ptr %i.g, align 8, !tbaa !51
  %i.is = tail call float @vectors_distance_bin(ptr noundef %i.io, ptr noundef %i.iq, i32 noundef %i.ir)
  %.pre.i = load i32, ptr %i.u, align 8, !tbaa !63
  br label %hnsw_distance.exit.i

bb.w:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit.i:                             ; preds = %._crit_edge.i, %bb.t, %bb.s, %bb.q, %._crit_edge.i107, %bb.m, %bb.j, %bb.v
  %i.it = phi i32 [ %.pre.i, %bb.v ], [ %i.at, %._crit_edge.i107 ], [ %i.at, %bb.j ], [ %i.at, %bb.m ], [ %i.at, %bb.q ], [ %i.at, %bb.s ], [ %i.at, %bb.t ], [ %i.at, %._crit_edge.i ] ; 2 uses
  %.0.i.i = phi float [ %i.is, %bb.v ], [ %i.dm, %._crit_edge.i107 ], [ %i.be, %bb.j ], [ %i.bi, %bb.m ], [ %i.dx, %bb.q ], [ %i.eb, %bb.s ], [ 1.000000e+00, %bb.t ], [ %.0.i99, %._crit_edge.i ] ; 2 uses
  %i.iu = fcmp ogt float %.0.i.i, %.01925.i       ; 2 uses
  %.120.i = select i1 %i.iu, float %.0.i.i, float %.01925.i ; 2 uses
  %i.iv = trunc nuw i64 %indvars.iv.i to i32
  %.1.i = select i1 %i.iu, i32 %i.iv, i32 %.01826.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.iw = zext i32 %i.it to i64
  %i.ix = icmp samesign ult i64 %indvars.iv.next.i, %i.iw
  br i1 %i.ix, label %bb.h, label %hnsw_update_worst_neighbor.exit, !llvm.loop !11

hnsw_update_worst_neighbor.exit:                  ; preds = %hnsw_distance.exit.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store float %.120.i, ptr %i.iy, align 8, !tbaa !64
  store i32 %.1.i, ptr %i.ao, align 4, !tbaa !65
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.x:                                             ; preds = %bb.g
  %i.iz = icmp ugt i32 %i.ap, %i.ab
  br i1 %i.iz, label %bb.y, label %hnsw_update_worst_neighbor_on_remove.exit

bb.y:                                             ; preds = %bb.x
  %i.ja = add i32 %i.ap, -1
  store i32 %i.ja, ptr %i.ao, align 4, !tbaa !65
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.z:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %hnsw_update_worst_neighbor_on_remove.exit, label %bb.d, !llvm.loop !196

hnsw_update_worst_neighbor_on_remove.exit:        ; preds = %bb.z, %.lr.ph135, %bb.y, %bb.x, %hnsw_update_worst_neighbor.exit, %bb.f
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %i.jb = load i32, ptr %i.j, align 8, !tbaa !63
  %i.jc = zext i32 %i.jb to i64
  %i.jd = icmp samesign ult i64 %indvars.iv.next160, %i.jc
  br i1 %i.jd, label %.lr.ph135, label %._crit_edge, !llvm.loop !197

.lr.ph.i:                                         ; preds = %bb.c
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 304
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.0.i, %bb.ac ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !73
  %i.jh = icmp eq ptr %i.jg, %1
  br i1 %i.jh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ji = load ptr, ptr %i.je, align 8, !tbaa !38
  store ptr %i.ji, ptr %i.jf, align 8, !tbaa !73
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.jj = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %.0.i = load ptr, ptr %i.jj, align 8, !tbaa !74 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %hnsw_cursor_element_deleted.exit, label %bb.aa, !llvm.loop !12

hnsw_cursor_element_deleted.exit:                 ; preds = %bb.ac, %bb.c
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !38 ; 2 uses
  %.not89 = icmp eq ptr %i.jl, null
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !38 ; 4 uses
  br i1 %.not89, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %hnsw_cursor_element_deleted.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 304
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !38
  br label %bb.af

bb.ae:                                            ; preds = %hnsw_cursor_element_deleted.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.jn, ptr %i.jp, align 8, !tbaa !67
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not90 = icmp eq ptr %i.jn, null
  br i1 %.not90, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jq = load ptr, ptr %i.jk, align 8, !tbaa !38
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 296
  store ptr %i.jq, ptr %i.jr, align 8, !tbaa !38
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !55
  %i.ju = add i64 %i.jt, -1
  store i64 %i.ju, ptr %i.js, align 8, !tbaa !55
  %i.jv = load ptr, ptr %0, align 8, !tbaa !53
  %i.jw = icmp eq ptr %1, %i.jv
  br i1 %i.jw, label %bb.ai, label %.loopexit.thread

bb.ai:                                            ; preds = %bb.ah
  store ptr null, ptr %0, align 8, !tbaa !53
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.jx, align 4, !tbaa !54
  %i.jy = load i32, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.jz = icmp sgt i32 %i.jy, -1
  br i1 %i.jz, label %.lr.ph139, label %thread-pre-split.thread

bb.aj:                                            ; preds = %.lr.ph139
  %i.ka = add nsw i32 %.077137, -1
  %i.kb = icmp sgt i32 %.077137, 0
  br i1 %i.kb, label %.lr.ph139, label %thread-pre-split.thread, !llvm.loop !198

.lr.ph139:                                        ; preds = %bb.ai, %bb.aj
  %.077137 = phi i32 [ %i.ka, %bb.aj ], [ %i.jy, %bb.ai ] ; 3 uses
  %i.kc = zext nneg i32 %.077137 to i64
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.kc ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !63
  %.not91 = icmp eq i32 %i.kf, 0
  br i1 %.not91, label %bb.aj, label %thread-pre-split

thread-pre-split:                                 ; preds = %.lr.ph139
  %i.kg = load ptr, ptr %i.kd, align 8, !tbaa !66
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !38 ; 3 uses
  store ptr %i.kh, ptr %0, align 8, !tbaa !53
  %.not92 = icmp eq ptr %i.kh, null
  br i1 %.not92, label %thread-pre-split.thread, label %.loopexit.thread186

thread-pre-split.thread:                          ; preds = %bb.aj, %bb.ai, %thread-pre-split
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.0140 = load ptr, ptr %i.ki, align 8, !tbaa !38 ; 2 uses
  %.not93141 = icmp eq ptr %.0140, null
  br i1 %.not93141, label %.loopexit.thread, label %.lr.ph145

.lr.ph145:                                        ; preds = %thread-pre-split.thread, %bb.am
  %i.kj = phi ptr [ %i.kl, %bb.am ], [ null, %thread-pre-split.thread ] ; 2 uses
  %.0143 = phi ptr [ %.0, %bb.am ], [ %.0140, %thread-pre-split.thread ] ; 5 uses
  %.076142 = phi i32 [ %.1, %bb.am ], [ 0, %thread-pre-split.thread ] ; 3 uses
  %.not94 = icmp eq ptr %.0143, %1
  br i1 %.not94, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph145
  %i.kk = load i32, ptr %.0143, align 8, !tbaa !25 ; 2 uses
  %.not95 = icmp ult i32 %i.kk, %.076142
  br i1 %.not95, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %.0143, ptr %0, align 8, !tbaa !53
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %.lr.ph145
  %i.kl = phi ptr [ %.0143, %bb.al ], [ %i.kj, %bb.ak ], [ %i.kj, %.lr.ph145 ] ; 3 uses
  %.1 = phi i32 [ %i.kk, %bb.al ], [ %.076142, %bb.ak ], [ %.076142, %.lr.ph145 ]
  %i.km = getelementptr inbounds nuw i8, ptr %.0143, i64 304
  %.0 = load ptr, ptr %i.km, align 8, !tbaa !38   ; 2 uses
  %.not93 = icmp eq ptr %.0, null
  br i1 %.not93, label %.loopexit, label %.lr.ph145, !llvm.loop !199

end_hunk_5
