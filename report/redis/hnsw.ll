inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@vectors_distance_float:bb.a
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
  %i.v = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.am, %.lr.ph ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.y = load <8 x float>, ptr %i.w, align 4, !tbaa !27 ; 4 uses
  %i.z = load <8 x float>, ptr %i.x, align 4, !tbaa !27 ; 4 uses
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
  br i1 %i.ao, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !42

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %indvars.iv79 = phi i64 [ %indvars.iv.next80.3, %.lr.ph73 ], [ %indvars.iv79.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %.15871 = phi float [ %i.bi, %.lr.ph73 ], [ %.15871.unr, %.lr.ph73.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv79
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !27
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv79
  %i.as = load float, ptr %i.ar, align 4, !tbaa !27
  %i.at = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.as, float %.15871)
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next80
  %i.av = load float, ptr %i.au, align 4, !tbaa !27
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next80
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !27
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.av, float %i.ax, float %i.at)
  %indvars.iv.next80.1 = add nuw nsw i64 %indvars.iv79, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next80.1
  %i.ba = load float, ptr %i.az, align 4, !tbaa !27
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next80.1
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !27
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bc, float %i.ay)
  %indvars.iv.next80.2 = add nuw nsw i64 %indvars.iv79, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next80.2
  %i.bf = load float, ptr %i.be, align 4, !tbaa !27
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next80.2
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !27
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bh, float %i.bd) ; 2 uses
  %indvars.iv.next80.3 = add nuw nsw i64 %indvars.iv79, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next80.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph73, !llvm.loop !43

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
  %i.bq = sext <8 x i8> %wide.load114 to <8 x i32>
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bo
  %wide.load115 = load <8 x i8>, ptr %i.br, align 1, !tbaa !32
  %i.bs = sext <8 x i8> %wide.load115 to <8 x i32>
  %i.bt = mul nsw <8 x i32> %i.bs, %i.bq
  %i.bu = add <8 x i32> %i.bt, %vec.phi113        ; 2 uses
  %index.next116 = add nuw i64 %index112, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next116, %n.vec111
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bw = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bu) ; 2 uses
  %cmp.n117 = icmp eq i64 %n.mod.vf110, 0
  br i1 %cmp.n117, label %._crit_edge81, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv87.ph = phi i64 [ %i.ah, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.04478.ph = phi i32 [ %.lcssa, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ]
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %.lr.ph80
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %.lr.ph80 ], [ %indvars.iv87.ph, %.lr.ph80.preheader ] ; 3 uses
  %.04478 = phi i32 [ %i.ce, %.lr.ph80 ], [ %.04478.ph, %.lr.ph80.preheader ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv87
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !32
  %i.bz = sext i8 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv87
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !32
  %i.cc = sext i8 %i.cb to i32
  %i.cd = mul nsw i32 %i.cc, %i.bz
  %i.ce = add nsw i32 %i.cd, %.04478              ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge81, label %.lr.ph80, !llvm.loop !50

._crit_edge81:                                    ; preds = %.lr.ph80, %middle.block, %vec.epilog.middle.block, %._crit_edge
  %.044.lcssa = phi i32 [ %.lcssa, %._crit_edge ], [ %i.bw, %vec.epilog.middle.block ], [ %i.bl, %middle.block ], [ %i.ce, %.lr.ph80 ]
  %i.cf = sitofp i32 %.044.lcssa to float
  %i.cg = fmul float %i.e, %i.cf
  %i.ch = fsub float 1.000000e+00, %i.cg          ; 3 uses
  %i.ci = fcmp olt float %i.ch, 0.000000e+00
  br i1 %i.ci, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge81
  %i.cj = fcmp ogt float %i.ch, 2.000000e+00
  br i1 %i.cj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge81, %bb.a
  %.043 = phi float [ 1.000000e+00, %bb.a ], [ %i.ch, %bb.c ], [ 2.000000e+00, %bb.d ], [ 0.000000e+00, %._crit_edge81 ]
  ret float %.043
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local float @vectors_distance_q8_avx2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #9 {
bb.a:
  %i.a = fcmp oeq float %3, 0.000000e+00
  %i.b = fcmp oeq float %4, 0.000000e+00
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

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
  %i.k = load <4 x i64>, ptr %i.j, align 1, !tbaa !32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.m = load <4 x i64>, ptr %i.l, align 1, !tbaa !32 ; 2 uses
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
  %i.ad = or disjoint i64 %indvars.iv.next, 31
  %i.ae = icmp samesign ult i64 %i.ad, %i.h
  br i1 %i.ae, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !51

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.af = and i32 %2, -32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.054.lcssa = phi i32 [ 0, %bb.b ], [ %i.af, %._crit_edge.loopexit ] ; 2 uses
  %i.ag = phi <8 x i32> [ zeroinitializer, %bb.b ], [ %i.ac, %._crit_edge.loopexit ] ; 2 uses
  %i.ah = shufflevector <8 x i32> %i.ag, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ai = shufflevector <8 x i32> %i.ag, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aj = add <4 x i32> %i.ah, %i.ai              ; 2 uses
  %i.ak = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.aj, <4 x i32> %i.aj) ; 2 uses
  %i.al = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.ak, <4 x i32> %i.ak)
  %i.am = extractelement <4 x i32> %i.al, i64 0   ; 4 uses
  %i.an = icmp ult i32 %.054.lcssa, %2
  br i1 %i.an, label %iter.check, label %._crit_edge82

iter.check:                                       ; preds = %._crit_edge
  %i.ao = zext i32 %.054.lcssa to i64             ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 4 uses
  %i.ap = sub nsw i64 %wide.trip.count, %i.ao     ; 4 uses
  %min.iters.check = icmp ult i64 %i.ap, 8
  br i1 %min.iters.check, label %.lr.ph81.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check95 = icmp ult i64 %i.ap, 32
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 31        ; 3 uses
  %n.vec = sub nuw nsw i64 %i.ap, %n.mod.vf       ; 3 uses
  %i.aq = add nsw i64 %n.vec, %i.ao
  %i.ar = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.am, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.ar, %vector.ph ], [ %i.bn, %vector.body ]
  %vec.phi96 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi97 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bp, %vector.body ]
  %vec.phi98 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bq, %vector.body ]
  %i.as = add i64 %index, %i.ao                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %wide.load = load <8 x i8>, ptr %i.at, align 1, !tbaa !32
  %wide.load99 = load <8 x i8>, ptr %i.au, align 1, !tbaa !32
  %wide.load100 = load <8 x i8>, ptr %i.av, align 1, !tbaa !32
  %wide.load101 = load <8 x i8>, ptr %i.aw, align 1, !tbaa !32
  %i.ax = sext <8 x i8> %wide.load to <8 x i32>
  %i.ay = sext <8 x i8> %wide.load99 to <8 x i32>
  %i.az = sext <8 x i8> %wide.load100 to <8 x i32>
  %i.ba = sext <8 x i8> %wide.load101 to <8 x i32>
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.as ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %wide.load102 = load <8 x i8>, ptr %i.bb, align 1, !tbaa !32
  %wide.load103 = load <8 x i8>, ptr %i.bc, align 1, !tbaa !32
  %wide.load104 = load <8 x i8>, ptr %i.bd, align 1, !tbaa !32
  %wide.load105 = load <8 x i8>, ptr %i.be, align 1, !tbaa !32
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
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.bo, %i.bn
  %bin.rdx106 = add <8 x i32> %i.bp, %bin.rdx
  %bin.rdx107 = add <8 x i32> %i.bq, %bin.rdx106
  %i.bs = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx107) ; 3 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge82, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 8
  br i1 %min.epilog.iters.check, label %.lr.ph81.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bs, %vec.epilog.iter.check ], [ %i.am, %vector.main.loop.iter.check ]
  %n.mod.vf108 = and i64 %wide.trip.count, 7      ; 2 uses
  %n.vec109 = sub nsw i64 %i.ap, %n.mod.vf108     ; 2 uses
  %i.bt = add nsw i64 %n.vec109, %i.ao
  %i.bu = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index110 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next114, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi111 = phi <8 x i32> [ %i.bu, %vec.epilog.ph ], [ %i.cb, %vec.epilog.vector.body ]
  %i.bv = add i64 %index110, %i.ao                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %wide.load112 = load <8 x i8>, ptr %i.bw, align 1, !tbaa !32
  %i.bx = sext <8 x i8> %wide.load112 to <8 x i32>
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv
  %wide.load113 = load <8 x i8>, ptr %i.by, align 1, !tbaa !32
  %i.bz = sext <8 x i8> %wide.load113 to <8 x i32>
  %i.ca = mul nsw <8 x i32> %i.bz, %i.bx
  %i.cb = add <8 x i32> %i.ca, %vec.phi111        ; 2 uses
  %index.next114 = add nuw i64 %index110, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cd = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.cb) ; 2 uses
  %cmp.n115 = icmp eq i64 %n.mod.vf108, 0
  br i1 %cmp.n115, label %._crit_edge82, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv87.ph = phi i64 [ %i.ao, %iter.check ], [ %i.aq, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  %.05279.ph = phi i32 [ %i.am, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ]
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %.lr.ph81
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %.lr.ph81 ], [ %indvars.iv87.ph, %.lr.ph81.preheader ] ; 3 uses
  %.05279 = phi i32 [ %i.cl, %.lr.ph81 ], [ %.05279.ph, %.lr.ph81.preheader ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv87
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !32
  %i.cg = sext i8 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv87
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !32
  %i.cj = sext i8 %i.ci to i32
  %i.ck = mul nsw i32 %i.cj, %i.cg
  %i.cl = add nsw i32 %i.ck, %.05279              ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge82, label %.lr.ph81, !llvm.loop !55

._crit_edge82:                                    ; preds = %.lr.ph81, %middle.block, %vec.epilog.middle.block, %._crit_edge
  %.052.lcssa = phi i32 [ %i.am, %._crit_edge ], [ %i.cd, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cl, %.lr.ph81 ]
  %i.cm = sitofp i32 %.052.lcssa to float
  %i.cn = fmul float %i.f, %i.cm
  %i.co = fsub float 1.000000e+00, %i.cn          ; 3 uses
  %i.cp = fcmp olt float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge82
  %i.cq = fcmp ogt float %i.co, 2.000000e+00
  br i1 %i.cq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge82, %bb.a
  %.051 = phi float [ 1.000000e+00, %bb.a ], [ %i.co, %bb.c ], [ 2.000000e+00, %bb.d ], [ 0.000000e+00, %._crit_edge82 ]
  ret float %.051
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
  br label %bb.j

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
  br label %bb.j

bb.f:                                             ; preds = %.thread, %bb.d
  %i.i = fcmp oeq float %3, 0.000000e+00
  %i.j = fcmp oeq float %4, 0.000000e+00
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %bb.j, label %bb.g

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
  %.072.lcssa = phi i32 [ 0, %bb.g ], [ %i.bu, %.preheader.loopexit ] ; 3 uses
  %.071.lcssa = phi i32 [ 0, %bb.g ], [ %i.dd, %.preheader.loopexit ]
  %.070.lcssa = phi i32 [ 0, %bb.g ], [ %i.q, %.preheader.loopexit ] ; 2 uses
  %i.r = icmp ult i32 %.070.lcssa, %2
  br i1 %i.r, label %.lr.ph92.preheader, label %._crit_edge

.lr.ph92.preheader:                               ; preds = %.preheader
  %i.s = zext i32 %.070.lcssa to i64              ; 4 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.t = sub nsw i64 %wide.trip.count, %i.s       ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 8
  br i1 %min.iters.check, label %.lr.ph92.preheader113, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader
  %n.mod.vf = and i64 %wide.trip.count, 7         ; 2 uses
  %n.vec = sub nuw nsw i64 %i.t, %n.mod.vf        ; 2 uses
  %i.u = add nsw i64 %n.vec, %i.s
  %i.v = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.072.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.v, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi108 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.w = add i64 %index, %i.s                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %wide.load = load <4 x i8>, ptr %i.x, align 1, !tbaa !32
  %wide.load109 = load <4 x i8>, ptr %i.y, align 1, !tbaa !32
  %i.z = sext <4 x i8> %wide.load to <4 x i32>
  %i.aa = sext <4 x i8> %wide.load109 to <4 x i32>
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %wide.load110 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !32
  %wide.load111 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !32
  %i.ad = sext <4 x i8> %wide.load110 to <4 x i32>
  %i.ae = sext <4 x i8> %wide.load111 to <4 x i32>
  %i.af = mul nsw <4 x i32> %i.ad, %i.z
  %i.ag = mul nsw <4 x i32> %i.ae, %i.aa
  %i.ah = add <4 x i32> %i.af, %vec.phi           ; 2 uses
  %i.ai = add <4 x i32> %i.ag, %vec.phi108        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ai, %i.ah
  %i.ak = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph92.preheader113

.lr.ph92.preheader113:                            ; preds = %.lr.ph92.preheader, %middle.block
  %indvars.iv98.ph = phi i64 [ %i.s, %.lr.ph92.preheader ], [ %i.u, %middle.block ]
  %.17390.ph = phi i32 [ %.072.lcssa, %.lr.ph92.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph92

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 10 uses
  %.07186 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.dd, %.lr.ph ]
  %.07285 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bu, %.lr.ph ]
  %i.al = or disjoint i64 %indvars.iv, 7          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.an = load i8, ptr %i.am, align 1, !tbaa !32
  %i.ao = sext i8 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !32
  %i.ar = sext i8 %i.aq to i32
  %i.as = mul nsw i32 %i.ar, %i.ao
  %i.at = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !32
  %i.aw = sext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.at
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !32
  %i.az = sext i8 %i.ay to i32
  %i.ba = mul nsw i32 %i.az, %i.aw
  %i.bb = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !32
  %i.be = sext i8 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.bb
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !32
  %i.bh = sext i8 %i.bg to i32
  %i.bi = mul nsw i32 %i.bh, %i.be
  %i.bj = or disjoint i64 %indvars.iv, 3          ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !32
  %i.bm = sext i8 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bj
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !32
  %i.bp = sext i8 %i.bo to i32
  %i.bq = mul nsw i32 %i.bp, %i.bm
  %i.br = add i32 %i.as, %.07285
  %i.bs = add i32 %i.br, %i.ba
  %i.bt = add i32 %i.bs, %i.bi
  %i.bu = add i32 %i.bt, %i.bq                    ; 2 uses
  %i.bv = or disjoint i64 %indvars.iv, 4          ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !32
  %i.by = sext i8 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !32
  %i.cb = sext i8 %i.ca to i32
  %i.cc = mul nsw i32 %i.cb, %i.by
  %i.cd = or disjoint i64 %indvars.iv, 5          ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !32
  %i.cg = sext i8 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.cd
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !32
  %i.cj = sext i8 %i.ci to i32
  %i.ck = mul nsw i32 %i.cj, %i.cg
  %i.cl = or disjoint i64 %indvars.iv, 6          ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !32
  %i.co = sext i8 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %i.cl
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !32
  %i.cr = sext i8 %i.cq to i32
  %i.cs = mul nsw i32 %i.cr, %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !32
  %i.cv = sext i8 %i.cu to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !32
  %i.cy = sext i8 %i.cx to i32
  %i.cz = mul nsw i32 %i.cy, %i.cv
  %i.da = add i32 %i.cc, %.07186
  %i.db = add i32 %i.da, %i.ck
  %i.dc = add i32 %i.db, %i.cs
  %i.dd = add i32 %i.dc, %i.cz                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.de = or disjoint i64 %indvars.iv.next, 7
  %i.df = icmp samesign ult i64 %i.de, %i.p
  br i1 %i.df, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !57

.lr.ph92:                                         ; preds = %.lr.ph92.preheader113, %.lr.ph92
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.lr.ph92 ], [ %indvars.iv98.ph, %.lr.ph92.preheader113 ] ; 3 uses
  %.17390 = phi i32 [ %i.dn, %.lr.ph92 ], [ %.17390.ph, %.lr.ph92.preheader113 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv98
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !32
  %i.di = sext i8 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv98
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !32
  %i.dl = sext i8 %i.dk to i32
  %i.dm = mul nsw i32 %i.dl, %i.di
  %i.dn = add nsw i32 %i.dm, %.17390              ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph92, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph92, %middle.block, %.preheader
  %.173.lcssa = phi i32 [ %.072.lcssa, %.preheader ], [ %i.ak, %middle.block ], [ %i.dn, %.lr.ph92 ]
  %i.do = add nsw i32 %.173.lcssa, %.071.lcssa
  %i.dp = sitofp i32 %i.do to float
  %i.dq = fmul float %i.n, %i.dp
  %i.dr = fsub float 1.000000e+00, %i.dq          ; 3 uses
  %i.ds = fcmp olt float %i.dr, 0.000000e+00
  br i1 %i.ds, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.dt = fcmp ogt float %i.dr, 2.000000e+00
  br i1 %i.dt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge, %bb.f, %bb.e, %bb.c
  %.069 = phi float [ %i.d, %bb.c ], [ %i.h, %bb.e ], [ 1.000000e+00, %bb.f ], [ %i.dr, %bb.h ], [ 2.000000e+00, %bb.i ], [ 0.000000e+00, %._crit_edge ]
  ret float %.069
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
  %.promoted.i = load i32, ptr %i.k, align 4, !tbaa !9
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  br label %bb.g

._crit_edge.loopexit.i:                           ; preds = %hnsw_popcount.exit.i
  %i.n = uitofp i32 %i.y to float
  %i.o = fmul nnan float %i.n, 2.000000e+00
  br label %hnsw_vectors_distance_bin.exit

bb.g:                                             ; preds = %hnsw_popcount.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %hnsw_popcount.exit.i ] ; 3 uses
  %.lobit.i.i15.i = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %.lobit.i.i14.i, %hnsw_popcount.exit.i ] ; 2 uses
  %.013.i = phi i32 [ 0, %.lr.ph.i ], [ %i.y, %hnsw_popcount.exit.i ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.q = load i64, ptr %i.p, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  %i.t = xor i64 %i.s, %i.q                       ; 2 uses
  %i.u = icmp eq i32 %.lobit.i.i15.i, -1
  br i1 %i.u, label %bb.h, label %hnsw_cpu_supports_popcnt.exit.i.i

bb.h:                                             ; preds = %bb.g
  store i32 %.lobit.i.i.i, ptr %i.k, align 4, !tbaa !9
  br label %hnsw_cpu_supports_popcnt.exit.i.i

hnsw_cpu_supports_popcnt.exit.i.i:                ; preds = %bb.h, %bb.g
  %.lobit.i.i14.i = phi i32 [ %.lobit.i.i.i, %bb.h ], [ %.lobit.i.i15.i, %bb.g ] ; 2 uses
  %.not.i.i = icmp eq i32 %.lobit.i.i14.i, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i, !prof !59

bb.i:                                             ; preds = %hnsw_cpu_supports_popcnt.exit.i.i
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.t)
  %i.w = trunc nuw nsw i64 %i.v to i32
  br label %hnsw_popcount.exit.i

bb.j:                                             ; preds = %hnsw_cpu_supports_popcnt.exit.i.i
  %i.x = tail call fastcc i32 @hnsw_popcount64(i64 noundef %i.t)
  br label %hnsw_popcount.exit.i

hnsw_popcount.exit.i:                             ; preds = %bb.j, %bb.i
  %.0.i.i = phi i32 [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  %i.y = add i32 %.0.i.i, %.013.i                 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.g, !llvm.loop !60

hnsw_vectors_distance_bin.exit:                   ; preds = %bb.f, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.f ], [ %i.o, %._crit_edge.loopexit.i ]
  %i.z = uitofp i32 %2 to float
  %i.aa = fdiv float %.0.lcssa.i, %i.z
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
  %i.f = load <8 x i64>, ptr %i.e, align 1, !tbaa !32
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.h = load <8 x i64>, ptr %i.g, align 1, !tbaa !32
  %i.i = xor <8 x i64> %i.h, %i.f
  %i.j = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.i)
  %i.k = add <8 x i64> %i.j, %.02739              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.l = or disjoint i64 %indvars.iv.next, 7
  %i.m = icmp samesign ult i64 %i.l, %i.d
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.o = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.k)
  %i.p = trunc i64 %i.o to i32
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.126 = phi i32 [ %i.n, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.0 = phi i32 [ %i.p, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %i.q = icmp samesign ult i32 %.126, %i.b
  br i1 %i.q, label %iter.check, label %._crit_edge46

iter.check:                                       ; preds = %bb.b
  %i.r = zext nneg i32 %.126 to i64               ; 6 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %i.s = sub nsw i64 %wide.trip.count, %i.r       ; 7 uses
  %min.iters.check = icmp ult i64 %i.s, 8
  br i1 %min.iters.check, label %.lr.ph45.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check57 = icmp ult i64 %i.s, 32
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.s, 24
  %n.vec = and i64 %i.s, -32                      ; 4 uses
  %i.t = add nsw i64 %n.vec, %i.r
  %i.u = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.u, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi58 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi59 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi60 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %i.v = add i64 %index, %i.r                     ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %wide.load = load <8 x i64>, ptr %i.w, align 8, !tbaa !13
  %wide.load61 = load <8 x i64>, ptr %i.x, align 8, !tbaa !13
  %wide.load62 = load <8 x i64>, ptr %i.y, align 8, !tbaa !13
  %wide.load63 = load <8 x i64>, ptr %i.z, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %wide.load64 = load <8 x i64>, ptr %i.aa, align 8, !tbaa !13
  %wide.load65 = load <8 x i64>, ptr %i.ab, align 8, !tbaa !13
  %wide.load66 = load <8 x i64>, ptr %i.ac, align 8, !tbaa !13
  %wide.load67 = load <8 x i64>, ptr %i.ad, align 8, !tbaa !13
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
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.ar, %i.aq
  %bin.rdx68 = add <8 x i32> %i.as, %bin.rdx
  %bin.rdx69 = add <8 x i32> %i.at, %bin.rdx68
  %i.av = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx69) ; 3 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge46, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph45.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.av, %vec.epilog.iter.check ], [ %.0, %vector.main.loop.iter.check ]
  %n.vec71 = and i64 %i.s, -8                     ; 3 uses
  %i.aw = add nsw i64 %n.vec71, %i.r
  %i.ax = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index72 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi73 = phi <8 x i32> [ %i.ax, %vec.epilog.ph ], [ %i.be, %vec.epilog.vector.body ]
  %i.ay = add i64 %index72, %i.r                  ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay
  %wide.load74 = load <8 x i64>, ptr %i.az, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ay
  %wide.load75 = load <8 x i64>, ptr %i.ba, align 8, !tbaa !13
  %i.bb = xor <8 x i64> %wide.load75, %wide.load74
  %i.bc = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.bb)
  %i.bd = trunc nuw nsw <8 x i64> %i.bc to <8 x i32>
  %i.be = add <8 x i32> %vec.phi73, %i.bd         ; 2 uses
  %index.next76 = add nuw i64 %index72, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next76, %n.vec71
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !63

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bg = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.be) ; 2 uses
  %cmp.n77 = icmp eq i64 %i.s, %n.vec71
  br i1 %cmp.n77, label %._crit_edge46, label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv51.ph = phi i64 [ %i.r, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  %.143.ph = phi i32 [ %.0, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  br label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %.lr.ph45
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.lr.ph45 ], [ %indvars.iv51.ph, %.lr.ph45.preheader ] ; 3 uses
  %.143 = phi i32 [ %i.bo, %.lr.ph45 ], [ %.143.ph, %.lr.ph45.preheader ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv51
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv51
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !13
  %i.bl = xor i64 %i.bk, %i.bi
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bl)
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = add i32 %.143, %i.bn                    ; 2 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge46, label %.lr.ph45, !llvm.loop !64

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
  %.034 = phi i32 [ 0, %.lr.ph.preheader ], [ %op.rdx, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.f = load <4 x i64>, ptr %i.e, align 1, !tbaa !32
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.h = load <4 x i64>, ptr %i.g, align 1, !tbaa !32
  %i.i = xor <4 x i64> %i.h, %i.f
  %i.j = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.i)
  %i.k = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.j)
  %i.l = trunc nuw nsw i64 %i.k to i32
  %op.rdx = add i32 %.034, %i.l                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.m = or disjoint i64 %indvars.iv.next, 3
  %i.n = icmp samesign ult i64 %i.m, %i.d
  br i1 %i.n, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !65

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.o = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.127 = phi i32 [ 0, %bb.a ], [ %i.o, %.loopexit.loopexit ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.a ], [ %op.rdx, %.loopexit.loopexit ] ; 4 uses
  %i.p = icmp samesign ult i32 %.127, %i.b
  br i1 %i.p, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.loopexit
  %i.q = zext nneg i32 %.127 to i64               ; 6 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %i.r = sub nsw i64 %wide.trip.count, %i.q       ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph38.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check48 = icmp ult i64 %i.r, 16
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.r, 12
  %n.vec = and i64 %i.r, -16                      ; 4 uses
  %i.s = add nsw i64 %n.vec, %i.q
  %i.t = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.t, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi49 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi51 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %i.u = add i64 %index, %i.q                     ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %wide.load = load <4 x i64>, ptr %i.v, align 8, !tbaa !13
  %wide.load52 = load <4 x i64>, ptr %i.w, align 8, !tbaa !13
  %wide.load53 = load <4 x i64>, ptr %i.x, align 8, !tbaa !13
  %wide.load54 = load <4 x i64>, ptr %i.y, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.u ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load55 = load <4 x i64>, ptr %i.z, align 8, !tbaa !13
  %wide.load56 = load <4 x i64>, ptr %i.aa, align 8, !tbaa !13
  %wide.load57 = load <4 x i64>, ptr %i.ab, align 8, !tbaa !13
  %wide.load58 = load <4 x i64>, ptr %i.ac, align 8, !tbaa !13
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
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aq, %i.ap
  %bin.rdx59 = add <4 x i32> %i.ar, %bin.rdx
  %bin.rdx60 = add <4 x i32> %i.as, %bin.rdx59
  %i.au = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx60) ; 3 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph38.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.au, %vec.epilog.iter.check ], [ %.1, %vector.main.loop.iter.check ]
  %n.vec62 = and i64 %i.r, -4                     ; 3 uses
  %i.av = add nsw i64 %n.vec62, %i.q
  %i.aw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index63 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next67, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi64 = phi <4 x i32> [ %i.aw, %vec.epilog.ph ], [ %i.bd, %vec.epilog.vector.body ]
  %i.ax = add i64 %index63, %i.q                  ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax
  %wide.load65 = load <4 x i64>, ptr %i.ay, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax
  %wide.load66 = load <4 x i64>, ptr %i.az, align 8, !tbaa !13
  %i.ba = xor <4 x i64> %wide.load66, %wide.load65
  %i.bb = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ba)
  %i.bc = trunc nuw nsw <4 x i64> %i.bb to <4 x i32>
  %i.bd = add <4 x i32> %vec.phi64, %i.bc         ; 2 uses
  %index.next67 = add nuw i64 %index63, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next67, %n.vec62
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !68

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bd) ; 2 uses
  %cmp.n68 = icmp eq i64 %i.r, %n.vec62
  br i1 %cmp.n68, label %._crit_edge, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv43.ph = phi i64 [ %i.q, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  %.237.ph = phi i32 [ %.1, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %.lr.ph38
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %.lr.ph38 ], [ %indvars.iv43.ph, %.lr.ph38.preheader ] ; 3 uses
  %.237 = phi i32 [ %i.bn, %.lr.ph38 ], [ %.237.ph, %.lr.ph38.preheader ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv43
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv43
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !13
  %i.bk = xor i64 %i.bj, %i.bh
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bk)
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = add i32 %.237, %i.bm                    ; 2 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph38, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph38, %middle.block, %vec.epilog.middle.block, %.loopexit
  %.2.lcssa = phi i32 [ %.1, %.loopexit ], [ %i.bf, %vec.epilog.middle.block ], [ %i.au, %middle.block ], [ %i.bn, %.lr.ph38 ]
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !73
  %i.i = tail call float @vectors_distance_float(ptr noundef %i.d, ptr noundef %i.f, i32 noundef %i.h)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load float, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load float, ptr %i.r, align 8, !tbaa !27
  %i.t = tail call float @vectors_distance_q8(ptr noundef %i.k, ptr noundef %i.m, i32 noundef %i.o, float noundef %i.q, float noundef %i.s)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !73
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
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.02938.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.2.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod58 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.c = load float, ptr %i.b, align 4, !tbaa !27 ; 3 uses
  %i.d = fcmp ogt float %i.c, %.02938.epil.init
  %.1.epil = select i1 %i.d, float %i.c, float %.02938.epil.init ; 2 uses
  %i.e = fneg float %i.c                          ; 2 uses
  %i.f = fcmp olt float %.1.epil, %i.e
  %.2.epil = select i1 %i.f, float %i.e, float %.1.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.2.lcssa = phi float [ %.2.1, %._crit_edge.unr-lcssa ], [ %.2.epil, %.lr.ph.epil.preheader ] ; 3 uses
  %i.g = fcmp oeq float %.2.lcssa, 0.000000e+00
  br i1 %i.g, label %._crit_edge.thread, label %.lr.ph41.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.02938 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %.2.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.i = load float, ptr %i.h, align 4, !tbaa !27 ; 3 uses
  %i.j = fcmp ogt float %i.i, %.02938
  %.1 = select i1 %i.j, float %i.i, float %.02938 ; 2 uses
  %i.k = fneg float %i.i                          ; 2 uses
  %i.l = fcmp olt float %.1, %i.k
  %.2 = select i1 %i.l, float %i.k, float %.1     ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !27 ; 3 uses
  %i.p = fcmp ogt float %i.o, %.2
  %.1.1 = select i1 %i.p, float %i.o, float %.2   ; 2 uses
  %i.q = fneg float %i.o                          ; 2 uses
  %i.r = fcmp olt float %.1.1, %i.q
  %.2.1 = select i1 %i.r, float %i.q, float %.1.1 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !74

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.not36 = icmp eq ptr %3, null
  br i1 %.not36, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread
  store float 0.000000e+00, ptr %3, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.thread
  %i.s = zext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.s, i1 false)
  br label %bb.e

.lr.ph41.preheader:                               ; preds = %._crit_edge
  %i.t = fdiv float 1.270000e+02, %.2.lcssa       ; 4 uses
  %wide.trip.count49 = zext i32 %2 to i64
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph41.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph41.preheader
  %scevgep = getelementptr i8, ptr %1, i64 %wide.trip.count
  %i.u = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep55 = getelementptr i8, ptr %0, i64 %i.u
  %bound0 = icmp ult ptr %1, %scevgep55
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph41.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.t, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

end_hunk_0
begin_hunk_1_@hnsw_reconnect_nodes:bb.a
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
  %i.ba = phi <2 x float> [ zeroinitializer, %bb.o ], [ %i.cc, %.preheader.loopexit.i371 ] ; 2 uses
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
  %i.bl = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i367 ], [ %i.cc, %.lr.ph.i368 ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i369
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i369
  %i.bo = load <8 x float>, ptr %i.bm, align 4, !tbaa !27 ; 4 uses
  %i.bp = load <8 x float>, ptr %i.bn, align 4, !tbaa !27 ; 4 uses
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
  %indvars.iv.next.i370 = add nuw nsw i64 %indvars.iv.i369, 8 ; 2 uses
  %i.cd = or disjoint i64 %indvars.iv.next.i370, 7
  %i.ce = icmp samesign ult i64 %i.cd, %i.ay
  br i1 %i.ce, label %.lr.ph.i368, label %.preheader.loopexit.i371, !llvm.loop !42

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i.3, %.lr.ph73.i ], [ %indvars.iv79.i.unr, %.lr.ph73.i.prol.loopexit ] ; 6 uses
  %.15871.i = phi float [ %i.cy, %.lr.ph73.i ], [ %.15871.i.unr, %.lr.ph73.i.prol.loopexit ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv79.i
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !27
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv79.i
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !27
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.ci, float %.15871.i)
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !27
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !27
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cn, float %i.cj)
  %indvars.iv.next80.i.1 = add nuw nsw i64 %indvars.iv79.i, 2 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i.1
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !27
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i.1
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !27
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cs, float %i.co)
  %indvars.iv.next80.i.2 = add nuw nsw i64 %indvars.iv79.i, 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i.2
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !27
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i.2
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !27
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cx, float %i.ct) ; 2 uses
  %indvars.iv.next80.i.3 = add nuw nsw i64 %indvars.iv79.i, 4 ; 2 uses
  %exitcond.not.i366.3 = icmp eq i64 %indvars.iv.next80.i.3, %wide.trip.count.i365
  br i1 %exitcond.not.i366.3, label %._crit_edge.i364, label %.lr.ph73.i, !llvm.loop !43

._crit_edge.i364:                                 ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i, %.preheader.i362
  %.158.lcssa.i = phi float [ %i.bc, %.preheader.i362 ], [ %.lcssa633.unr, %.lr.ph73.i.prol.loopexit ], [ %i.cy, %.lr.ph73.i ]
  %i.cz = extractelement <2 x float> %i.ba, i64 0
  %i.da = fadd float %i.cz, %.158.lcssa.i
  %i.db = fsub float 1.000000e+00, %i.da
  br label %hnsw_distance.exit

bb.p:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !15 ; 12 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !15 ; 12 uses
  %i.dg = load i32, ptr %i.h, align 8, !tbaa !73  ; 9 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.di = load float, ptr %i.dh, align 8, !tbaa !27 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !27 ; 4 uses
  %i.dl = icmp ugt i32 %i.dg, 63
  br i1 %i.dl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 2 uses
  %i.dn = and i32 %i.dm, 2129920
  %or.cond83.not.i = icmp eq i32 %i.dn, 2129920
  br i1 %or.cond83.not.i, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.do = tail call float @vectors_distance_q8_avx512(ptr noundef readonly %i.dd, ptr noundef readonly %i.df, i32 noundef %i.dg, float noundef %i.di, float noundef %i.dk)
  br label %hnsw_distance.exit

bb.s:                                             ; preds = %bb.p
  %i.dp = icmp samesign ugt i32 %i.dg, 31
  br i1 %i.dp, label %..thread_crit_edge.i, label %bb.u

..thread_crit_edge.i:                             ; preds = %bb.s
  %.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.q
  %i.dq = phi i32 [ %.pre.i, %..thread_crit_edge.i ], [ %i.dm, %bb.q ]
  %i.dr = and i32 %i.dq, 17408
  %or.cond84.not.i = icmp eq i32 %i.dr, 17408
  br i1 %or.cond84.not.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread.i
  %i.ds = tail call float @vectors_distance_q8_avx2(ptr noundef readonly %i.dd, ptr noundef readonly %i.df, i32 noundef %i.dg, float noundef %i.di, float noundef %i.dk)
  br label %hnsw_distance.exit

bb.u:                                             ; preds = %.thread.i, %bb.s
  %i.dt = fcmp oeq float %i.di, 0.000000e+00
  %i.du = fcmp oeq float %i.dk, 0.000000e+00
  %or.cond.i = or i1 %i.dt, %i.du
  br i1 %or.cond.i, label %hnsw_distance.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.dk, i64 1
  %i.dx = fdiv <2 x float> %i.dw, splat (float 1.270000e+02) ; 2 uses
  %shift = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.dx, %shift
  %i.dy = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dz = icmp ugt i32 %i.dg, 7
  br i1 %i.dz, label %.lr.ph.preheader.i, label %.preheader.i356

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.ea = zext i32 %i.dg to i64
  br label %.lr.ph.i357

.preheader.loopexit.i:                            ; preds = %.lr.ph.i357
  %i.eb = and i32 %i.dg, -8
  br label %.preheader.i356

.preheader.i356:                                  ; preds = %.preheader.loopexit.i, %bb.v
  %.072.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.gf, %.preheader.loopexit.i ] ; 3 uses
  %.071.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.ho, %.preheader.loopexit.i ]
  %.070.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.eb, %.preheader.loopexit.i ] ; 2 uses
  %i.ec = icmp ult i32 %.070.lcssa.i, %i.dg
  br i1 %i.ec, label %.lr.ph92.preheader.i, label %._crit_edge.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i356
  %i.ed = zext i32 %.070.lcssa.i to i64           ; 4 uses
  %wide.trip.count.i = zext i32 %i.dg to i64      ; 3 uses
  %i.ee = sub nsw i64 %wide.trip.count.i, %i.ed   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ee, 8
  br i1 %min.iters.check, label %.lr.ph92.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader.i
  %n.mod.vf = and i64 %wide.trip.count.i, 7       ; 2 uses
  %n.vec = sub nuw nsw i64 %i.ee, %n.mod.vf       ; 2 uses
  %i.ef = add nsw i64 %n.vec, %i.ed
  %i.eg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.072.lcssa.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.eg, %vector.ph ], [ %i.es, %vector.body ]
  %vec.phi612 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.et, %vector.body ]
  %i.eh = add i64 %index, %i.ed                   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %wide.load = load <4 x i8>, ptr %i.ei, align 1, !tbaa !32
  %wide.load613 = load <4 x i8>, ptr %i.ej, align 1, !tbaa !32
  %i.ek = sext <4 x i8> %wide.load to <4 x i32>
  %i.el = sext <4 x i8> %wide.load613 to <4 x i32>
  %i.em = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.eh ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %wide.load614 = load <4 x i8>, ptr %i.em, align 1, !tbaa !32
  %wide.load615 = load <4 x i8>, ptr %i.en, align 1, !tbaa !32
  %i.eo = sext <4 x i8> %wide.load614 to <4 x i32>
  %i.ep = sext <4 x i8> %wide.load615 to <4 x i32>
  %i.eq = mul nsw <4 x i32> %i.eo, %i.ek
  %i.er = mul nsw <4 x i32> %i.ep, %i.el
  %i.es = add <4 x i32> %i.eq, %vec.phi           ; 2 uses
  %i.et = add <4 x i32> %i.er, %vec.phi612        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.et, %i.es
  %i.ev = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %.lr.ph92.preheader.i, %middle.block
  %indvars.iv98.i.ph = phi i64 [ %i.ed, %.lr.ph92.preheader.i ], [ %i.ef, %middle.block ]
  %.17390.i.ph = phi i32 [ %.072.lcssa.i, %.lr.ph92.preheader.i ], [ %i.ev, %middle.block ]
  br label %.lr.ph92.i

.lr.ph.i357:                                      ; preds = %.lr.ph.i357, %.lr.ph.preheader.i
  %indvars.iv.i358 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i359, %.lr.ph.i357 ] ; 10 uses
  %.07186.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ho, %.lr.ph.i357 ]
  %.07285.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.gf, %.lr.ph.i357 ]
  %i.ew = or disjoint i64 %indvars.iv.i358, 7     ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i358
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !32
  %i.ez = sext i8 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv.i358
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !32
  %i.fc = sext i8 %i.fb to i32
  %i.fd = mul nsw i32 %i.fc, %i.ez
  %i.fe = or disjoint i64 %indvars.iv.i358, 1     ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !32
  %i.fh = sext i8 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.fe
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !32
  %i.fk = sext i8 %i.fj to i32
  %i.fl = mul nsw i32 %i.fk, %i.fh
  %i.fm = or disjoint i64 %indvars.iv.i358, 2     ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !32
  %i.fp = sext i8 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.fm
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !32
  %i.fs = sext i8 %i.fr to i32
  %i.ft = mul nsw i32 %i.fs, %i.fp
  %i.fu = or disjoint i64 %indvars.iv.i358, 3     ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !32
  %i.fx = sext i8 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.fu
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !32
  %i.ga = sext i8 %i.fz to i32
  %i.gb = mul nsw i32 %i.ga, %i.fx
  %i.gc = add i32 %i.fd, %.07285.i
  %i.gd = add i32 %i.gc, %i.fl
  %i.ge = add i32 %i.gd, %i.ft
  %i.gf = add i32 %i.ge, %i.gb                    ; 2 uses
  %i.gg = or disjoint i64 %indvars.iv.i358, 4     ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !32
  %i.gj = sext i8 %i.gi to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.gg
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !32
  %i.gm = sext i8 %i.gl to i32
  %i.gn = mul nsw i32 %i.gm, %i.gj
  %i.go = or disjoint i64 %indvars.iv.i358, 5     ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !32
  %i.gr = sext i8 %i.gq to i32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.go
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !32
  %i.gu = sext i8 %i.gt to i32
  %i.gv = mul nsw i32 %i.gu, %i.gr
  %i.gw = or disjoint i64 %indvars.iv.i358, 6     ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !32
  %i.gz = sext i8 %i.gy to i32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.gw
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !32
  %i.hc = sext i8 %i.hb to i32
  %i.hd = mul nsw i32 %i.hc, %i.gz
  %i.he = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ew
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !32
  %i.hg = sext i8 %i.hf to i32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.ew
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !32
  %i.hj = sext i8 %i.hi to i32
  %i.hk = mul nsw i32 %i.hj, %i.hg
  %i.hl = add i32 %i.gn, %.07186.i
  %i.hm = add i32 %i.hl, %i.gv
  %i.hn = add i32 %i.hm, %i.hd
  %i.ho = add i32 %i.hn, %i.hk                    ; 2 uses
  %indvars.iv.next.i359 = add nuw nsw i64 %indvars.iv.i358, 8 ; 2 uses
  %i.hp = or disjoint i64 %indvars.iv.next.i359, 7
  %i.hq = icmp samesign ult i64 %i.hp, %i.ea
  br i1 %i.hq, label %.lr.ph.i357, label %.preheader.loopexit.i, !llvm.loop !57

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph92.i ], [ %indvars.iv98.i.ph, %.lr.ph92.i.preheader ] ; 3 uses
  %.17390.i = phi i32 [ %i.hy, %.lr.ph92.i ], [ %.17390.i.ph, %.lr.ph92.i.preheader ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv98.i
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !32
  %i.ht = sext i8 %i.hs to i32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv98.i
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !32
  %i.hw = sext i8 %i.hv to i32
  %i.hx = mul nsw i32 %i.hw, %i.ht
  %i.hy = add nsw i32 %i.hx, %.17390.i            ; 2 uses
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph92.i, !llvm.loop !169

._crit_edge.i:                                    ; preds = %.lr.ph92.i, %middle.block, %.preheader.i356
  %.173.lcssa.i = phi i32 [ %.072.lcssa.i, %.preheader.i356 ], [ %i.ev, %middle.block ], [ %i.hy, %.lr.ph92.i ]
  %i.hz = add nsw i32 %.173.lcssa.i, %.071.lcssa.i
  %i.ia = sitofp i32 %i.hz to float
  %i.ib = fmul float %i.dy, %i.ia
  %i.ic = fsub float 1.000000e+00, %i.ib          ; 3 uses
  %i.id = fcmp olt float %i.ic, 0.000000e+00
  br i1 %i.id, label %hnsw_distance.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i
  %i.ie = fcmp ogt float %i.ic, 2.000000e+00
  br i1 %i.ie, label %bb.x, label %hnsw_distance.exit

bb.x:                                             ; preds = %bb.w
  br label %hnsw_distance.exit

bb.y:                                             ; preds = %bb.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !15
  %i.ih = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !15
  %i.ij = load i32, ptr %i.h, align 8, !tbaa !73
  %i.ik = tail call float @vectors_distance_bin(ptr noundef %i.ig, ptr noundef %i.ii, i32 noundef %i.ij)
  br label %hnsw_distance.exit

bb.z:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %bb.x, %bb.w, %._crit_edge.i, %bb.u, %bb.t, %bb.r, %._crit_edge.i364, %bb.n, %bb.k, %bb.y
  %.0.i = phi float [ %i.ik, %bb.y ], [ %i.db, %._crit_edge.i364 ], [ %i.as, %bb.k ], [ %i.aw, %bb.n ], [ %i.do, %bb.r ], [ %i.ds, %bb.t ], [ 1.000000e+00, %bb.u ], [ %i.ic, %bb.w ], [ 2.000000e+00, %bb.x ], [ 0.000000e+00, %._crit_edge.i ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv457
  store float %.0.i, ptr %gep, align 4, !tbaa !27
  %i.il = mul nuw nsw i64 %indvars.iv457, %i.c
  %gep578 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep577, i64 %i.il
  store float %.0.i, ptr %gep578, align 4, !tbaa !27
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next458, %i.c
  br i1 %exitcond.not, label %.loopexit382, label %bb.i, !llvm.loop !170

._crit_edge405:                                   ; preds = %._crit_edge402.us
  %i.im = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.in = tail call ptr %i.im(i64 noundef %i.e) #34 ; 13 uses
  %.not326 = icmp eq ptr %i.in, null
  br i1 %.not326, label %.sink.split.sink.split, label %.preheader378.lr.ph

.preheader378.lr.ph:                              ; preds = %._crit_edge405
  %i.io = zext i32 %3 to i64                      ; 3 uses
  %i.ip = icmp sgt i32 %2, 2
  %i.iq = add nsw i32 %2, -1
  %i.ir = uitofp nneg i32 %i.iq to float
  %i.is = add nsw i32 %2, -2
  %i.it = uitofp nneg i32 %i.is to float
  br i1 %i.ip, label %.preheader378.us.preheader, label %.preheader378

.preheader378.us.preheader:                       ; preds = %.preheader378.lr.ph
  %i.iu = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = insertelement <2 x float> poison, float %i.it, i64 0
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader378.us

.preheader378.us:                                 ; preds = %.preheader378.us.preheader, %._crit_edge412.split.us.us
  %indvars.iv501 = phi i64 [ %indvars.iv.next502, %._crit_edge412.split.us.us ], [ 0, %.preheader378.us.preheader ] ; 6 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv501
  %i.iz = mul nuw nsw i64 %indvars.iv501, %i.c    ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv501
  %invariant.gep583 = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.iz
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv501
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.iz
  br label %bb.aa

bb.aa:                                            ; preds = %bb.af, %.preheader378.us
  %indvars.iv496 = phi i64 [ %indvars.iv.next497, %bb.af ], [ 0, %.preheader378.us ] ; 6 uses
end_hunk_1
begin_hunk_2_@hnsw_unlink_node:bb.a
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
  %i.bm = phi <2 x float> [ zeroinitializer, %bb.n ], [ %i.co, %.preheader.loopexit.i114 ] ; 2 uses
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
  %i.bx = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i110 ], [ %i.co, %.lr.ph.i111 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i112
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i112
  %i.ca = load <8 x float>, ptr %i.by, align 4, !tbaa !27 ; 4 uses
  %i.cb = load <8 x float>, ptr %i.bz, align 4, !tbaa !27 ; 4 uses
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
  %i.cp = or disjoint i64 %indvars.iv.next.i113, 7
  %i.cq = icmp samesign ult i64 %i.cp, %i.bk
  br i1 %i.cq, label %.lr.ph.i111, label %.preheader.loopexit.i114, !llvm.loop !42

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i.3, %.lr.ph73.i ], [ %indvars.iv79.i.unr, %.lr.ph73.i.prol.loopexit ] ; 6 uses
  %.15871.i = phi float [ %i.dk, %.lr.ph73.i ], [ %.15871.i.unr, %.lr.ph73.i.prol.loopexit ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv79.i
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !27
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv79.i
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !27
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cu, float %.15871.i)
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next80.i
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !27
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next80.i
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !27
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cz, float %i.cv)
  %indvars.iv.next80.i.1 = add nuw nsw i64 %indvars.iv79.i, 2 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next80.i.1
  %i.dc = load float, ptr %i.db, align 4, !tbaa !27
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next80.i.1
  %i.de = load float, ptr %i.dd, align 4, !tbaa !27
  %i.df = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.de, float %i.da)
  %indvars.iv.next80.i.2 = add nuw nsw i64 %indvars.iv79.i, 3 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next80.i.2
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !27
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next80.i.2
  %i.dj = load float, ptr %i.di, align 4, !tbaa !27
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.dj, float %i.df) ; 2 uses
  %indvars.iv.next80.i.3 = add nuw nsw i64 %indvars.iv79.i, 4 ; 2 uses
  %exitcond.not.i109.3 = icmp eq i64 %indvars.iv.next80.i.3, %wide.trip.count.i108
  br i1 %exitcond.not.i109.3, label %._crit_edge.i107, label %.lr.ph73.i, !llvm.loop !43

._crit_edge.i107:                                 ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i, %.preheader.i105
  %.158.lcssa.i = phi float [ %i.bo, %.preheader.i105 ], [ %.lcssa224.unr, %.lr.ph73.i.prol.loopexit ], [ %i.dk, %.lr.ph73.i ]
  %i.dl = extractelement <2 x float> %i.bm, i64 0
  %i.dm = fadd float %i.dl, %.158.lcssa.i
  %i.dn = fsub float 1.000000e+00, %i.dm
  br label %hnsw_distance.exit.i

bb.o:                                             ; preds = %bb.h
  %i.do = load ptr, ptr %i.ar, align 8, !tbaa !15 ; 12 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !15 ; 12 uses
  %i.dr = load i32, ptr %i.g, align 8, !tbaa !73  ; 9 uses
  %i.ds = load float, ptr %i.as, align 8, !tbaa !27 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.du = load float, ptr %i.dt, align 8, !tbaa !27 ; 4 uses
  %i.dv = icmp ugt i32 %i.dr, 63
  br i1 %i.dv, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 2 uses
  %i.dx = and i32 %i.dw, 2129920
  %or.cond83.not.i = icmp eq i32 %i.dx, 2129920
  br i1 %or.cond83.not.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p
  %i.dy = tail call float @vectors_distance_q8_avx512(ptr noundef readonly %i.do, ptr noundef readonly %i.dq, i32 noundef %i.dr, float noundef %i.ds, float noundef %i.du)
  br label %hnsw_distance.exit.i

bb.r:                                             ; preds = %bb.o
  %i.dz = icmp samesign ugt i32 %i.dr, 31
  br i1 %i.dz, label %..thread_crit_edge.i, label %bb.t

..thread_crit_edge.i:                             ; preds = %bb.r
  %.pre.i102 = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.p
  %i.ea = phi i32 [ %.pre.i102, %..thread_crit_edge.i ], [ %i.dw, %bb.p ]
  %i.eb = and i32 %i.ea, 17408
  %or.cond84.not.i = icmp eq i32 %i.eb, 17408
  br i1 %or.cond84.not.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread.i
  %i.ec = tail call float @vectors_distance_q8_avx2(ptr noundef readonly %i.do, ptr noundef readonly %i.dq, i32 noundef %i.dr, float noundef %i.ds, float noundef %i.du)
  br label %hnsw_distance.exit.i

bb.t:                                             ; preds = %.thread.i, %bb.r
  %i.ed = fcmp oeq float %i.ds, 0.000000e+00
  %i.ee = fcmp oeq float %i.du, 0.000000e+00
  %or.cond.i = or i1 %i.ed, %i.ee
  br i1 %or.cond.i, label %hnsw_distance.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ef = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.du, i64 1
  %i.eh = fdiv <2 x float> %i.eg, splat (float 1.270000e+02) ; 2 uses
  %shift = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.eh, %shift
  %i.ei = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ej = icmp ugt i32 %i.dr, 7
  br i1 %i.ej, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.u
  %i.ek = zext i32 %i.dr to i64
  br label %.lr.ph.i99

.preheader.loopexit.i:                            ; preds = %.lr.ph.i99
  %i.el = and i32 %i.dr, -8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.u
  %.072.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.gp, %.preheader.loopexit.i ] ; 3 uses
  %.071.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.hy, %.preheader.loopexit.i ]
  %.070.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.el, %.preheader.loopexit.i ] ; 2 uses
  %i.em = icmp ult i32 %.070.lcssa.i, %i.dr
  br i1 %i.em, label %.lr.ph92.preheader.i, label %._crit_edge.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i
  %i.en = zext i32 %.070.lcssa.i to i64           ; 4 uses
  %wide.trip.count.i = zext i32 %i.dr to i64      ; 3 uses
  %i.eo = sub nsw i64 %wide.trip.count.i, %i.en   ; 2 uses
  %min.iters.check = icmp ult i64 %i.eo, 8
  br i1 %min.iters.check, label %.lr.ph92.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader.i
  %n.mod.vf = and i64 %wide.trip.count.i, 7       ; 2 uses
  %n.vec = sub nuw nsw i64 %i.eo, %n.mod.vf       ; 2 uses
  %i.ep = add nsw i64 %n.vec, %i.en
  %i.eq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.072.lcssa.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.eq, %vector.ph ], [ %i.fc, %vector.body ]
  %vec.phi210 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fd, %vector.body ]
  %i.er = add i64 %index, %i.en                   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %wide.load = load <4 x i8>, ptr %i.es, align 1, !tbaa !32
  %wide.load211 = load <4 x i8>, ptr %i.et, align 1, !tbaa !32
  %i.eu = sext <4 x i8> %wide.load to <4 x i32>
  %i.ev = sext <4 x i8> %wide.load211 to <4 x i32>
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.er ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %wide.load212 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !32
  %wide.load213 = load <4 x i8>, ptr %i.ex, align 1, !tbaa !32
  %i.ey = sext <4 x i8> %wide.load212 to <4 x i32>
  %i.ez = sext <4 x i8> %wide.load213 to <4 x i32>
  %i.fa = mul nsw <4 x i32> %i.ey, %i.eu
  %i.fb = mul nsw <4 x i32> %i.ez, %i.ev
  %i.fc = add <4 x i32> %i.fa, %vec.phi           ; 2 uses
  %i.fd = add <4 x i32> %i.fb, %vec.phi210        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fd, %i.fc
  %i.ff = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %.lr.ph92.preheader.i, %middle.block
  %indvars.iv98.i.ph = phi i64 [ %i.en, %.lr.ph92.preheader.i ], [ %i.ep, %middle.block ]
  %.17390.i.ph = phi i32 [ %.072.lcssa.i, %.lr.ph92.preheader.i ], [ %i.ff, %middle.block ]
  br label %.lr.ph92.i

.lr.ph.i99:                                       ; preds = %.lr.ph.i99, %.lr.ph.preheader.i
  %indvars.iv.i100 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i101, %.lr.ph.i99 ] ; 10 uses
  %.07186.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.hy, %.lr.ph.i99 ]
  %.07285.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.gp, %.lr.ph.i99 ]
  %i.fg = or disjoint i64 %indvars.iv.i100, 7     ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.i100
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !32
  %i.fj = sext i8 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.i100
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !32
  %i.fm = sext i8 %i.fl to i32
  %i.fn = mul nsw i32 %i.fm, %i.fj
  %i.fo = or disjoint i64 %indvars.iv.i100, 1     ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !32
  %i.fr = sext i8 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.fo
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !32
  %i.fu = sext i8 %i.ft to i32
  %i.fv = mul nsw i32 %i.fu, %i.fr
  %i.fw = or disjoint i64 %indvars.iv.i100, 2     ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !32
  %i.fz = sext i8 %i.fy to i32
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.fw
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !32
  %i.gc = sext i8 %i.gb to i32
  %i.gd = mul nsw i32 %i.gc, %i.fz
  %i.ge = or disjoint i64 %indvars.iv.i100, 3     ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !32
  %i.gh = sext i8 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ge
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !32
  %i.gk = sext i8 %i.gj to i32
  %i.gl = mul nsw i32 %i.gk, %i.gh
  %i.gm = add i32 %i.fn, %.07285.i
  %i.gn = add i32 %i.gm, %i.fv
  %i.go = add i32 %i.gn, %i.gd
  %i.gp = add i32 %i.go, %i.gl                    ; 2 uses
  %i.gq = or disjoint i64 %indvars.iv.i100, 4     ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !32
  %i.gt = sext i8 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.gq
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !32
  %i.gw = sext i8 %i.gv to i32
  %i.gx = mul nsw i32 %i.gw, %i.gt
  %i.gy = or disjoint i64 %indvars.iv.i100, 5     ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !32
  %i.hb = sext i8 %i.ha to i32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.gy
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !32
  %i.he = sext i8 %i.hd to i32
  %i.hf = mul nsw i32 %i.he, %i.hb
  %i.hg = or disjoint i64 %indvars.iv.i100, 6     ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !32
  %i.hj = sext i8 %i.hi to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.hg
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !32
  %i.hm = sext i8 %i.hl to i32
  %i.hn = mul nsw i32 %i.hm, %i.hj
  %i.ho = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fg
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !32
  %i.hq = sext i8 %i.hp to i32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.fg
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !32
  %i.ht = sext i8 %i.hs to i32
  %i.hu = mul nsw i32 %i.ht, %i.hq
  %i.hv = add i32 %i.gx, %.07186.i
  %i.hw = add i32 %i.hv, %i.hf
  %i.hx = add i32 %i.hw, %i.hn
  %i.hy = add i32 %i.hx, %i.hu                    ; 2 uses
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i100, 8 ; 2 uses
  %i.hz = or disjoint i64 %indvars.iv.next.i101, 7
  %i.ia = icmp samesign ult i64 %i.hz, %i.ek
  br i1 %i.ia, label %.lr.ph.i99, label %.preheader.loopexit.i, !llvm.loop !57

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph92.i ], [ %indvars.iv98.i.ph, %.lr.ph92.i.preheader ] ; 3 uses
  %.17390.i = phi i32 [ %i.ii, %.lr.ph92.i ], [ %.17390.i.ph, %.lr.ph92.i.preheader ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv98.i
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !32
  %i.id = sext i8 %i.ic to i32
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv98.i
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !32
  %i.ig = sext i8 %i.if to i32
  %i.ih = mul nsw i32 %i.ig, %i.id
  %i.ii = add nsw i32 %i.ih, %.17390.i            ; 2 uses
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph92.i, !llvm.loop !182

._crit_edge.i:                                    ; preds = %.lr.ph92.i, %middle.block, %.preheader.i
  %.173.lcssa.i = phi i32 [ %.072.lcssa.i, %.preheader.i ], [ %i.ff, %middle.block ], [ %i.ii, %.lr.ph92.i ]
  %i.ij = add nsw i32 %.173.lcssa.i, %.071.lcssa.i
  %i.ik = sitofp i32 %i.ij to float
  %i.il = fmul float %i.ei, %i.ik
  %i.im = fsub float 1.000000e+00, %i.il          ; 3 uses
  %i.in = fcmp olt float %i.im, 0.000000e+00
  br i1 %i.in, label %hnsw_distance.exit.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  %i.io = fcmp ogt float %i.im, 2.000000e+00
  br i1 %i.io, label %bb.w, label %hnsw_distance.exit.i

bb.w:                                             ; preds = %bb.v
  br label %hnsw_distance.exit.i

bb.x:                                             ; preds = %bb.h
  %i.ip = load ptr, ptr %i.ar, align 8, !tbaa !15
  %i.iq = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !15
  %i.is = load i32, ptr %i.g, align 8, !tbaa !73
  %i.it = tail call float @vectors_distance_bin(ptr noundef %i.ip, ptr noundef %i.ir, i32 noundef %i.is)
  %.pre.i = load i32, ptr %i.u, align 8, !tbaa !132
  br label %hnsw_distance.exit.i

bb.y:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit.i:                             ; preds = %bb.w, %bb.v, %._crit_edge.i, %bb.t, %bb.s, %bb.q, %._crit_edge.i107, %bb.m, %bb.j, %bb.x
  %i.iu = phi i32 [ %.pre.i, %bb.x ], [ %i.at, %._crit_edge.i107 ], [ %i.at, %bb.j ], [ %i.at, %bb.m ], [ %i.at, %bb.q ], [ %i.at, %bb.s ], [ %i.at, %bb.t ], [ %i.at, %._crit_edge.i ], [ %i.at, %bb.v ], [ %i.at, %bb.w ] ; 2 uses
  %.0.i.i = phi float [ %i.it, %bb.x ], [ %i.dn, %._crit_edge.i107 ], [ %i.be, %bb.j ], [ %i.bi, %bb.m ], [ %i.dy, %bb.q ], [ %i.ec, %bb.s ], [ 1.000000e+00, %bb.t ], [ 0.000000e+00, %._crit_edge.i ], [ %i.im, %bb.v ], [ 2.000000e+00, %bb.w ] ; 2 uses
  %i.iv = fcmp ogt float %.0.i.i, %.027.i         ; 2 uses
  %i.iw = trunc nuw i64 %indvars.iv.i to i32
  %.120.i = select i1 %i.iv, i32 %i.iw, i32 %.01925.i ; 2 uses
  %.1.i = select i1 %i.iv, float %.0.i.i, float %.027.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ix = zext i32 %i.iu to i64
  %i.iy = icmp samesign ult i64 %indvars.iv.next.i, %i.ix
  br i1 %i.iy, label %bb.h, label %hnsw_update_worst_neighbor.exit, !llvm.loop !158

hnsw_update_worst_neighbor.exit:                  ; preds = %hnsw_distance.exit.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store float %.1.i, ptr %i.iz, align 8, !tbaa !133
  store i32 %.120.i, ptr %i.ao, align 4, !tbaa !134
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.z:                                             ; preds = %bb.g
  %i.ja = icmp ugt i32 %i.ap, %i.ab
  br i1 %i.ja, label %bb.aa, label %hnsw_update_worst_neighbor_on_remove.exit

bb.aa:                                            ; preds = %bb.z
  %i.jb = add i32 %i.ap, -1
  store i32 %i.jb, ptr %i.ao, align 4, !tbaa !134
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.ab:                                            ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %hnsw_update_worst_neighbor_on_remove.exit, label %bb.d, !llvm.loop !183

hnsw_update_worst_neighbor_on_remove.exit:        ; preds = %bb.ab, %.lr.ph135, %bb.aa, %bb.z, %hnsw_update_worst_neighbor.exit, %bb.f
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %i.jc = load i32, ptr %i.j, align 8, !tbaa !132
  %i.jd = zext i32 %i.jc to i64
  %i.je = icmp samesign ult i64 %indvars.iv.next160, %i.jd
  br i1 %i.je, label %.lr.ph135, label %._crit_edge, !llvm.loop !184

.lr.ph.i:                                         ; preds = %bb.c
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 304
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.0.i, %bb.ae ] ; 2 uses
end_hunk_2
