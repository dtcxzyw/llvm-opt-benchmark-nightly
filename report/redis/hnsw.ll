Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hnsw?download=true
inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@vectors_distance_float_avx2:bb.a
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !77
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bj, float %.062)
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next72
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !77
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next72
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !77
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bo, float %i.bk)
  %indvars.iv.next72.1 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next72.1
  %i.br = load float, ptr %i.bq, align 4, !tbaa !77
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next72.1
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !77
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bt, float %i.bp)
  %indvars.iv.next72.2 = add nuw nsw i64 %indvars.iv71, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next72.2
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !77
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next72.2
  %i.by = load float, ptr %i.bx, align 4, !tbaa !77
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.by, float %i.bu) ; 2 uses
  %indvars.iv.next72.3 = add nuw nsw i64 %indvars.iv71, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next72.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge65, label %.lr.ph64, !llvm.loop !135

._crit_edge65:                                    ; preds = %.lr.ph64.prol.loopexit, %.lr.ph64, %._crit_edge
  %.0.lcssa = phi float [ %i.aw, %._crit_edge ], [ %.lcssa.unr, %.lr.ph64.prol.loopexit ], [ %i.bz, %.lr.ph64 ]
  %i.ca = fsub float 1.000000e+00, %.0.lcssa
  ret float %i.ca
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @vectors_distance_float(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 !guid !138 {
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
  %i.p = load float, ptr %i.o, align 4, !tbaa !77
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv79.prol
  %i.r = load float, ptr %i.q, align 4, !tbaa !77
  %i.s = tail call float @llvm.fmuladd.f32(float %i.p, float %i.r, float %.15871.prol) ; 3 uses
  %indvars.iv.next80.prol = add nuw nsw i64 %indvars.iv79.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !137

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
  %i.y = load <8 x float>, ptr %i.w, align 4, !tbaa !77 ; 4 uses
  %i.z = load <8 x float>, ptr %i.x, align 4, !tbaa !77 ; 4 uses
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
  %i.an = or disjoint i64 %indvars.iv.next, 7
  %i.ao = icmp samesign ult i64 %i.an, %i.i
  br i1 %i.ao, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !2

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %indvars.iv79 = phi i64 [ %indvars.iv.next80.3, %.lr.ph73 ], [ %indvars.iv79.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %.15871 = phi float [ %i.bi, %.lr.ph73 ], [ %.15871.unr, %.lr.ph73.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv79
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !77
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv79
  %i.as = load float, ptr %i.ar, align 4, !tbaa !77
  %i.at = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.as, float %.15871)
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next80
  %i.av = load float, ptr %i.au, align 4, !tbaa !77
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next80
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !77
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.av, float %i.ax, float %i.at)
  %indvars.iv.next80.1 = add nuw nsw i64 %indvars.iv79, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next80.1
  %i.ba = load float, ptr %i.az, align 4, !tbaa !77
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next80.1
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !77
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bc, float %i.ay)
  %indvars.iv.next80.2 = add nuw nsw i64 %indvars.iv79, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next80.2
  %i.bf = load float, ptr %i.be, align 4, !tbaa !77
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next80.2
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !77
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bh, float %i.bd) ; 2 uses
  %indvars.iv.next80.3 = add nuw nsw i64 %indvars.iv79, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next80.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph73, !llvm.loop !3

._crit_edge:                                      ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %.preheader
  %.158.lcssa = phi float [ %i.m, %.preheader ], [ %.lcssa.unr, %.lr.ph73.prol.loopexit ], [ %i.bi, %.lr.ph73 ]
  %i.bj = extractelement <2 x float> %i.k, i64 0
  %i.bk = fadd float %i.bj, %.158.lcssa
  %i.bl = fsub float 1.000000e+00, %i.bk
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.b
  %.059 = phi float [ %i.c, %bb.b ], [ %i.g, %bb.e ], [ %i.bl, %._crit_edge ]
  ret float %.059
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local float @vectors_distance_q8_avx512(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #7 !guid !143 {
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
  %i.h = phi <16 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.t, %.lr.ph ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.j = load <8 x i64>, ptr %i.i, align 1, !tbaa !81 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = load <8 x i64>, ptr %i.k, align 1, !tbaa !81 ; 2 uses
  %5 = shufflevector <8 x i64> %i.j, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %6 = bitcast <4 x i64> %5 to <32 x i8>
  %i.m = sext <32 x i8> %6 to <32 x i16>
  %7 = shufflevector <8 x i64> %i.l, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = bitcast <4 x i64> %7 to <32 x i8>
  %i.n = sext <32 x i8> %8 to <32 x i16>
  %i.o = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.m, <32 x i16> %i.n)
  %i.p = add <16 x i32> %i.o, %i.h
  %9 = shufflevector <8 x i64> %i.j, <8 x i64> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %10 = bitcast <4 x i64> %9 to <32 x i8>
  %i.q = sext <32 x i8> %10 to <32 x i16>
  %11 = shufflevector <8 x i64> %i.l, <8 x i64> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %12 = bitcast <4 x i64> %11 to <32 x i8>
  %i.r = sext <32 x i8> %12 to <32 x i16>
  %i.s = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.q, <32 x i16> %i.r)
  %i.t = add <16 x i32> %i.p, %i.s                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64 ; 2 uses
  %i.u = or disjoint i64 %indvars.iv.next, 63
  %i.v = icmp samesign ult i64 %i.u, %i.g
  br i1 %i.v, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !139

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.w = and i32 %2, -64
  %i.x = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.t)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.046.lcssa = phi i32 [ 0, %bb.b ], [ %i.w, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ 0, %bb.b ], [ %i.x, %._crit_edge.loopexit ] ; 4 uses
  %i.y = icmp ult i32 %.046.lcssa, %2
  br i1 %i.y, label %iter.check, label %._crit_edge81

iter.check:                                       ; preds = %._crit_edge
  %i.z = zext i32 %.046.lcssa to i64              ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 4 uses
  %i.aa = sub nsw i64 %wide.trip.count, %i.z      ; 4 uses
  %min.iters.check = icmp ult i64 %i.aa, 8
  br i1 %min.iters.check, label %.lr.ph80.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check97 = icmp ult i64 %i.aa, 64
  br i1 %min.iters.check97, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %wide.trip.count, 63            ; 3 uses
  %n.vec = sub nuw nsw i64 %i.aa, %i.ab           ; 3 uses
  %i.ac = add nsw i64 %n.vec, %i.z
  %i.ad = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i32> [ %i.ad, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi98 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi99 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi100 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.ae = add nuw i64 %index, %i.z                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %wide.load = load <16 x i8>, ptr %i.af, align 1, !tbaa !81
  %wide.load101 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !81
  %wide.load102 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !81
  %wide.load103 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !81
  %i.aj = sext <16 x i8> %wide.load to <16 x i32>
  %i.ak = sext <16 x i8> %wide.load101 to <16 x i32>
  %i.al = sext <16 x i8> %wide.load102 to <16 x i32>
  %i.am = sext <16 x i8> %wide.load103 to <16 x i32>
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %wide.load104 = load <16 x i8>, ptr %i.an, align 1, !tbaa !81
  %wide.load105 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !81
  %wide.load106 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !81
  %wide.load107 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !81
  %i.ar = sext <16 x i8> %wide.load104 to <16 x i32>
  %i.as = sext <16 x i8> %wide.load105 to <16 x i32>
  %i.at = sext <16 x i8> %wide.load106 to <16 x i32>
  %i.au = sext <16 x i8> %wide.load107 to <16 x i32>
  %i.av = mul nsw <16 x i32> %i.ar, %i.aj
  %i.aw = mul nsw <16 x i32> %i.as, %i.ak
  %i.ax = mul nsw <16 x i32> %i.at, %i.al
  %i.ay = mul nsw <16 x i32> %i.au, %i.am
  %i.az = add <16 x i32> %i.av, %vec.phi          ; 2 uses
  %i.ba = add <16 x i32> %i.aw, %vec.phi98        ; 2 uses
  %i.bb = add <16 x i32> %i.ax, %vec.phi99        ; 2 uses
  %i.bc = add <16 x i32> %i.ay, %vec.phi100       ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i32> %i.ba, %i.az
  %bin.rdx108 = add <16 x i32> %i.bb, %bin.rdx
  %bin.rdx109 = add <16 x i32> %i.bc, %bin.rdx108
  %i.be = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx109) ; 3 uses
  %cmp.n = icmp eq i64 %i.ab, 0
  br i1 %cmp.n, label %._crit_edge81, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.ab, 8
  br i1 %min.epilog.iters.check, label %.lr.ph80.preheader, label %vec.epilog.ph, !prof !144

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.be, %vec.epilog.iter.check ], [ %.lcssa, %vector.main.loop.iter.check ]
  %i.bf = and i64 %wide.trip.count, 7             ; 2 uses
  %n.vec110 = sub nsw i64 %i.aa, %i.bf            ; 2 uses
  %i.bg = add nsw i64 %n.vec110, %i.z
  %i.bh = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi112 = phi <8 x i32> [ %i.bh, %vec.epilog.ph ], [ %i.bo, %vec.epilog.vector.body ]
  %i.bi = add nuw i64 %index111, %i.z             ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  %wide.load113 = load <8 x i8>, ptr %i.bj, align 1, !tbaa !81
  %i.bk = sext <8 x i8> %wide.load113 to <8 x i32>
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  %wide.load114 = load <8 x i8>, ptr %i.bl, align 1, !tbaa !81
  %i.bm = sext <8 x i8> %wide.load114 to <8 x i32>
  %i.bn = mul nsw <8 x i32> %i.bm, %i.bk
  %i.bo = add <8 x i32> %i.bn, %vec.phi112        ; 2 uses
  %index.next115 = add nuw i64 %index111, 8       ; 2 uses
  %i.bp = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !141

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bq = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bo) ; 2 uses
  %cmp.n116 = icmp eq i64 %i.bf, 0
  br i1 %cmp.n116, label %._crit_edge81, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv87.ph = phi i64 [ %i.z, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  %.04378.ph = phi i32 [ %.lcssa, %iter.check ], [ %i.be, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %.lr.ph80
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %.lr.ph80 ], [ %indvars.iv87.ph, %.lr.ph80.preheader ] ; 3 uses
  %.04378 = phi i32 [ %i.by, %.lr.ph80 ], [ %.04378.ph, %.lr.ph80.preheader ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv87
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = sext i8 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv87
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !81
  %i.bw = sext i8 %i.bv to i32
  %i.bx = mul nsw i32 %i.bw, %i.bt
  %i.by = add nsw i32 %i.bx, %.04378              ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge81, label %.lr.ph80, !llvm.loop !142

._crit_edge81:                                    ; preds = %.lr.ph80, %middle.block, %vec.epilog.middle.block, %._crit_edge
  %.043.lcssa = phi i32 [ %.lcssa, %._crit_edge ], [ %i.bq, %vec.epilog.middle.block ], [ %i.be, %middle.block ], [ %i.by, %.lr.ph80 ]
  %i.bz = sitofp i32 %.043.lcssa to float
  %i.ca = fmul float %i.e, %i.bz
  %i.cb = fsub float 1.000000e+00, %i.ca          ; 3 uses
  %i.cc = fcmp olt float %i.cb, 0.000000e+00
  %i.cd = fcmp ogt float %i.cb, 2.000000e+00
  %spec.store.select = select i1 %i.cd, float 2.000000e+00, float %i.cb
  %.0 = select i1 %i.cc, float 0.000000e+00, float %spec.store.select
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge81
  %.044 = phi float [ %.0, %._crit_edge81 ], [ 1.000000e+00, %bb.a ]
  ret float %.044
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local float @vectors_distance_q8_avx2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #9 !guid !149 {
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
  %i.i = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.k = load <4 x i64>, ptr %i.j, align 1, !tbaa !81 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.m = load <4 x i64>, ptr %i.l, align 1, !tbaa !81 ; 2 uses
  %5 = shufflevector <4 x i64> %i.k, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %6 = bitcast <2 x i64> %5 to <16 x i8>
  %i.n = sext <16 x i8> %6 to <16 x i16>
  %7 = shufflevector <4 x i64> %i.m, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %8 = bitcast <2 x i64> %7 to <16 x i8>
  %i.o = sext <16 x i8> %8 to <16 x i16>
  %i.p = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.n, <16 x i16> %i.o)
  %i.q = add <8 x i32> %i.p, %i.i
  %9 = shufflevector <4 x i64> %i.k, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %10 = bitcast <2 x i64> %9 to <16 x i8>
  %i.r = sext <16 x i8> %10 to <16 x i16>
  %11 = shufflevector <4 x i64> %i.m, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %12 = bitcast <2 x i64> %11 to <16 x i8>
  %i.s = sext <16 x i8> %12 to <16 x i16>
  %i.t = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.r, <16 x i16> %i.s)
  %i.u = add <8 x i32> %i.q, %i.t                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %i.v = or disjoint i64 %indvars.iv.next, 31
  %i.w = icmp samesign ult i64 %i.v, %i.h
  br i1 %i.w, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !145

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.x = and i32 %2, -32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.054.lcssa = phi i32 [ 0, %bb.b ], [ %i.x, %._crit_edge.loopexit ] ; 2 uses
  %i.y = phi <8 x i32> [ zeroinitializer, %bb.b ], [ %i.u, %._crit_edge.loopexit ] ; 2 uses
  %i.z = shufflevector <8 x i32> %i.y, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aa = shufflevector <8 x i32> %i.y, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ab = add <4 x i32> %i.z, %i.aa               ; 2 uses
  %i.ac = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.ab, <4 x i32> %i.ab) ; 2 uses
  %i.ad = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.ac, <4 x i32> %i.ac)
  %i.ae = extractelement <4 x i32> %i.ad, i64 0   ; 4 uses
  %i.af = icmp ult i32 %.054.lcssa, %2
  br i1 %i.af, label %iter.check, label %._crit_edge82

iter.check:                                       ; preds = %._crit_edge
  %i.ag = zext i32 %.054.lcssa to i64             ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 4 uses
  %i.ah = sub nsw i64 %wide.trip.count, %i.ag     ; 4 uses
  %min.iters.check = icmp ult i64 %i.ah, 8
  br i1 %min.iters.check, label %.lr.ph81.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check95 = icmp ult i64 %i.ah, 32
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %wide.trip.count, 31            ; 3 uses
  %n.vec = sub nuw nsw i64 %i.ah, %i.ai           ; 3 uses
  %i.aj = add nsw i64 %n.vec, %i.ag
  %i.ak = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.ae, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.ak, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi96 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi97 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi98 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.al = add nuw i64 %index, %i.ag               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %wide.load = load <8 x i8>, ptr %i.am, align 1, !tbaa !81
  %wide.load99 = load <8 x i8>, ptr %i.an, align 1, !tbaa !81
  %wide.load100 = load <8 x i8>, ptr %i.ao, align 1, !tbaa !81
  %wide.load101 = load <8 x i8>, ptr %i.ap, align 1, !tbaa !81
  %i.aq = sext <8 x i8> %wide.load to <8 x i32>
  %i.ar = sext <8 x i8> %wide.load99 to <8 x i32>
  %i.as = sext <8 x i8> %wide.load100 to <8 x i32>
  %i.at = sext <8 x i8> %wide.load101 to <8 x i32>
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.al ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %wide.load102 = load <8 x i8>, ptr %i.au, align 1, !tbaa !81
  %wide.load103 = load <8 x i8>, ptr %i.av, align 1, !tbaa !81
  %wide.load104 = load <8 x i8>, ptr %i.aw, align 1, !tbaa !81
  %wide.load105 = load <8 x i8>, ptr %i.ax, align 1, !tbaa !81
  %i.ay = sext <8 x i8> %wide.load102 to <8 x i32>
  %i.az = sext <8 x i8> %wide.load103 to <8 x i32>
  %i.ba = sext <8 x i8> %wide.load104 to <8 x i32>
  %i.bb = sext <8 x i8> %wide.load105 to <8 x i32>
  %i.bc = mul nsw <8 x i32> %i.ay, %i.aq
  %i.bd = mul nsw <8 x i32> %i.az, %i.ar
  %i.be = mul nsw <8 x i32> %i.ba, %i.as
  %i.bf = mul nsw <8 x i32> %i.bb, %i.at
  %i.bg = add <8 x i32> %i.bc, %vec.phi           ; 2 uses
  %i.bh = add <8 x i32> %i.bd, %vec.phi96         ; 2 uses
  %i.bi = add <8 x i32> %i.be, %vec.phi97         ; 2 uses
  %i.bj = add <8 x i32> %i.bf, %vec.phi98         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.bh, %i.bg
  %bin.rdx106 = add <8 x i32> %i.bi, %bin.rdx
  %bin.rdx107 = add <8 x i32> %i.bj, %bin.rdx106
  %i.bl = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx107) ; 3 uses
  %cmp.n = icmp eq i64 %i.ai, 0
  br i1 %cmp.n, label %._crit_edge82, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.ai, 8
  br i1 %min.epilog.iters.check, label %.lr.ph81.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bl, %vec.epilog.iter.check ], [ %i.ae, %vector.main.loop.iter.check ]
  %i.bm = and i64 %wide.trip.count, 7             ; 2 uses
  %n.vec108 = sub nsw i64 %i.ah, %i.bm            ; 2 uses
  %i.bn = add nsw i64 %n.vec108, %i.ag
  %i.bo = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index109 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi110 = phi <8 x i32> [ %i.bo, %vec.epilog.ph ], [ %i.bv, %vec.epilog.vector.body ]
  %i.bp = add nuw i64 %index109, %i.ag            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %wide.load111 = load <8 x i8>, ptr %i.bq, align 1, !tbaa !81
  %i.br = sext <8 x i8> %wide.load111 to <8 x i32>
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %i.bp
  %wide.load112 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !81
  %i.bt = sext <8 x i8> %wide.load112 to <8 x i32>
  %i.bu = mul nsw <8 x i32> %i.bt, %i.br
  %i.bv = add <8 x i32> %i.bu, %vec.phi110        ; 2 uses
  %index.next113 = add nuw i64 %index109, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next113, %n.vec108
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !147

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bx = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bv) ; 2 uses
  %cmp.n114 = icmp eq i64 %i.bm, 0
  br i1 %cmp.n114, label %._crit_edge82, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv87.ph = phi i64 [ %i.ag, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  %.05179.ph = phi i32 [ %i.ae, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ]
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %.lr.ph81
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %.lr.ph81 ], [ %indvars.iv87.ph, %.lr.ph81.preheader ] ; 3 uses
  %.05179 = phi i32 [ %i.cf, %.lr.ph81 ], [ %.05179.ph, %.lr.ph81.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv87
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !81
  %i.ca = sext i8 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv87
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !81
  %i.cd = sext i8 %i.cc to i32
  %i.ce = mul nsw i32 %i.cd, %i.ca
  %i.cf = add nsw i32 %i.ce, %.05179              ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge82, label %.lr.ph81, !llvm.loop !148

._crit_edge82:                                    ; preds = %.lr.ph81, %middle.block, %vec.epilog.middle.block, %._crit_edge
  %.051.lcssa = phi i32 [ %i.ae, %._crit_edge ], [ %i.bx, %vec.epilog.middle.block ], [ %i.bl, %middle.block ], [ %i.cf, %.lr.ph81 ]
  %i.cg = sitofp i32 %.051.lcssa to float
  %i.ch = fmul float %i.f, %i.cg
  %i.ci = fsub float 1.000000e+00, %i.ch          ; 3 uses
  %i.cj = fcmp olt float %i.ci, 0.000000e+00
  %i.ck = fcmp ogt float %i.ci, 2.000000e+00
  %spec.store.select = select i1 %i.ck, float 2.000000e+00, float %i.ci
  %.0 = select i1 %i.cj, float 0.000000e+00, float %spec.store.select
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge82
  %.052 = phi float [ %.0, %._crit_edge82 ], [ 1.000000e+00, %bb.a ]
  ret float %.052
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @vectors_distance_q8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #10 !guid !152 {
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
end_hunk_0
