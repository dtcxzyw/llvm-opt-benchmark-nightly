inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@vectors_distance_q8_avx512:bb.a
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
  %5 = insertelement <2 x float> poison, float %3, i64 0
  %6 = insertelement <2 x float> %5, float %4, i64 1
  %7 = fdiv <2 x float> %6, splat (float 1.270000e+02) ; 2 uses
  %shift = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %7, %shift
  %8 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = icmp ugt i32 %2, 31
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.d = zext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.e = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.y, %.lr.ph ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.g = load <4 x i64>, ptr %i.f, align 1, !tbaa !32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.i = load <4 x i64>, ptr %i.h, align 1, !tbaa !32 ; 2 uses
  %i.j = bitcast <4 x i64> %i.g to <32 x i8>
  %i.k = shufflevector <32 x i8> %i.j, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.l = sext <16 x i8> %i.k to <16 x i16>
  %i.m = bitcast <4 x i64> %i.i to <32 x i8>
  %i.n = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.o = sext <16 x i8> %i.n to <16 x i16>
  %i.p = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.l, <16 x i16> %i.o)
  %i.q = add <8 x i32> %i.p, %i.e
  %i.r = bitcast <4 x i64> %i.g to <32 x i8>
  %i.s = shufflevector <32 x i8> %i.r, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.t = sext <16 x i8> %i.s to <16 x i16>
  %i.u = bitcast <4 x i64> %i.i to <32 x i8>
  %i.v = shufflevector <32 x i8> %i.u, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.w = sext <16 x i8> %i.v to <16 x i16>
  %i.x = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.t, <16 x i16> %i.w)
  %i.y = add <8 x i32> %i.q, %i.x                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %i.z = or disjoint i64 %indvars.iv.next, 31
  %i.aa = icmp samesign ult i64 %i.z, %i.d
  br i1 %i.aa, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !51

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ab = and i32 %2, -32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.054.lcssa = phi i32 [ 0, %bb.b ], [ %i.ab, %._crit_edge.loopexit ] ; 2 uses
  %i.ac = phi <8 x i32> [ zeroinitializer, %bb.b ], [ %i.y, %._crit_edge.loopexit ] ; 2 uses
  %i.ad = shufflevector <8 x i32> %i.ac, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ae = shufflevector <8 x i32> %i.ac, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.af = add <4 x i32> %i.ad, %i.ae              ; 2 uses
  %i.ag = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.af, <4 x i32> %i.af) ; 2 uses
  %i.ah = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.ag, <4 x i32> %i.ag)
  %i.ai = extractelement <4 x i32> %i.ah, i64 0   ; 4 uses
  %i.aj = icmp ult i32 %.054.lcssa, %2
  br i1 %i.aj, label %iter.check, label %._crit_edge82

iter.check:                                       ; preds = %._crit_edge
  %i.ak = zext i32 %.054.lcssa to i64             ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 4 uses
  %i.al = sub nsw i64 %wide.trip.count, %i.ak     ; 4 uses
  %min.iters.check = icmp ult i64 %i.al, 8
  br i1 %min.iters.check, label %.lr.ph81.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check95 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 31        ; 3 uses
  %n.vec = sub nuw nsw i64 %i.al, %n.mod.vf       ; 3 uses
  %i.am = add nsw i64 %n.vec, %i.ak
  %i.an = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.ai, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.an, %vector.ph ], [ %i.bj, %vector.body ]
  %vec.phi96 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi97 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.phi98 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bm, %vector.body ]
  %i.ao = add i64 %index, %i.ak                   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %wide.load = load <8 x i8>, ptr %i.ap, align 1, !tbaa !32
  %wide.load99 = load <8 x i8>, ptr %i.aq, align 1, !tbaa !32
  %wide.load100 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !32
  %wide.load101 = load <8 x i8>, ptr %i.as, align 1, !tbaa !32
  %i.at = sext <8 x i8> %wide.load to <8 x i32>
  %i.au = sext <8 x i8> %wide.load99 to <8 x i32>
  %i.av = sext <8 x i8> %wide.load100 to <8 x i32>
  %i.aw = sext <8 x i8> %wide.load101 to <8 x i32>
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %wide.load102 = load <8 x i8>, ptr %i.ax, align 1, !tbaa !32
  %wide.load103 = load <8 x i8>, ptr %i.ay, align 1, !tbaa !32
  %wide.load104 = load <8 x i8>, ptr %i.az, align 1, !tbaa !32
  %wide.load105 = load <8 x i8>, ptr %i.ba, align 1, !tbaa !32
  %i.bb = sext <8 x i8> %wide.load102 to <8 x i32>
  %i.bc = sext <8 x i8> %wide.load103 to <8 x i32>
  %i.bd = sext <8 x i8> %wide.load104 to <8 x i32>
  %i.be = sext <8 x i8> %wide.load105 to <8 x i32>
  %i.bf = mul nsw <8 x i32> %i.bb, %i.at
  %i.bg = mul nsw <8 x i32> %i.bc, %i.au
  %i.bh = mul nsw <8 x i32> %i.bd, %i.av
  %i.bi = mul nsw <8 x i32> %i.be, %i.aw
  %i.bj = add <8 x i32> %i.bf, %vec.phi           ; 2 uses
  %i.bk = add <8 x i32> %i.bg, %vec.phi96         ; 2 uses
  %i.bl = add <8 x i32> %i.bh, %vec.phi97         ; 2 uses
  %i.bm = add <8 x i32> %i.bi, %vec.phi98         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.bk, %i.bj
  %bin.rdx106 = add <8 x i32> %i.bl, %bin.rdx
  %bin.rdx107 = add <8 x i32> %i.bm, %bin.rdx106
  %i.bo = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx107) ; 3 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge82, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 8
  br i1 %min.epilog.iters.check, label %.lr.ph81.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bo, %vec.epilog.iter.check ], [ %i.ai, %vector.main.loop.iter.check ]
  %n.mod.vf108 = and i64 %wide.trip.count, 7      ; 2 uses
  %n.vec109 = sub nsw i64 %i.al, %n.mod.vf108     ; 2 uses
  %i.bp = add nsw i64 %n.vec109, %i.ak
  %i.bq = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index110 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next114, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi111 = phi <8 x i32> [ %i.bq, %vec.epilog.ph ], [ %i.bx, %vec.epilog.vector.body ]
  %i.br = add i64 %index110, %i.ak                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br
  %wide.load112 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !32
  %i.bt = sext <8 x i8> %wide.load112 to <8 x i32>
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.br
  %wide.load113 = load <8 x i8>, ptr %i.bu, align 1, !tbaa !32
  %i.bv = sext <8 x i8> %wide.load113 to <8 x i32>
  %i.bw = mul nsw <8 x i32> %i.bv, %i.bt
  %i.bx = add <8 x i32> %i.bw, %vec.phi111        ; 2 uses
  %index.next114 = add nuw i64 %index110, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bz = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bx) ; 2 uses
  %cmp.n115 = icmp eq i64 %n.mod.vf108, 0
  br i1 %cmp.n115, label %._crit_edge82, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv87.ph = phi i64 [ %i.ak, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %.05279.ph = phi i32 [ %i.ai, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %.lr.ph81
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %.lr.ph81 ], [ %indvars.iv87.ph, %.lr.ph81.preheader ] ; 3 uses
  %.05279 = phi i32 [ %i.ch, %.lr.ph81 ], [ %.05279.ph, %.lr.ph81.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv87
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !32
  %i.cc = sext i8 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv87
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !32
  %i.cf = sext i8 %i.ce to i32
  %i.cg = mul nsw i32 %i.cf, %i.cc
  %i.ch = add nsw i32 %i.cg, %.05279              ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge82, label %.lr.ph81, !llvm.loop !55

._crit_edge82:                                    ; preds = %.lr.ph81, %middle.block, %vec.epilog.middle.block, %._crit_edge
  %.052.lcssa = phi i32 [ %i.ai, %._crit_edge ], [ %i.bz, %vec.epilog.middle.block ], [ %i.bo, %middle.block ], [ %i.ch, %.lr.ph81 ]
  %i.ci = sitofp i32 %.052.lcssa to float
  %i.cj = fmul float %8, %i.ci
  %i.ck = fsub float 1.000000e+00, %i.cj          ; 3 uses
  %i.cl = fcmp olt float %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge82
  %i.cm = fcmp ogt float %i.ck, 2.000000e+00
  br i1 %i.cm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge82, %bb.a
  %.051 = phi float [ 1.000000e+00, %bb.a ], [ %i.ck, %bb.c ], [ 2.000000e+00, %bb.d ], [ 0.000000e+00, %._crit_edge82 ]
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
  %5 = insertelement <2 x float> poison, float %3, i64 0
  %6 = insertelement <2 x float> %5, float %4, i64 1
  %7 = fdiv <2 x float> %6, splat (float 1.270000e+02) ; 2 uses
  %shift = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %7, %shift
  %8 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = icmp ugt i32 %2, 7
  br i1 %i.k, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.l = zext i32 %2 to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.m = and i32 %2, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.g
  %.072.lcssa = phi i32 [ 0, %bb.g ], [ %i.bq, %.preheader.loopexit ] ; 3 uses
  %.071.lcssa = phi i32 [ 0, %bb.g ], [ %i.cz, %.preheader.loopexit ]
  %.070.lcssa = phi i32 [ 0, %bb.g ], [ %i.m, %.preheader.loopexit ] ; 2 uses
  %i.n = icmp ult i32 %.070.lcssa, %2
  br i1 %i.n, label %.lr.ph92.preheader, label %._crit_edge

.lr.ph92.preheader:                               ; preds = %.preheader
  %i.o = zext i32 %.070.lcssa to i64              ; 4 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.p = sub nsw i64 %wide.trip.count, %i.o       ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph92.preheader112, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader
  %n.mod.vf = and i64 %wide.trip.count, 7         ; 2 uses
  %n.vec = sub nuw nsw i64 %i.p, %n.mod.vf        ; 2 uses
  %i.q = add nsw i64 %n.vec, %i.o
  %i.r = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.072.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.r, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi108 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %i.s = add i64 %index, %i.o                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %wide.load = load <4 x i8>, ptr %i.t, align 1, !tbaa !32
  %wide.load109 = load <4 x i8>, ptr %i.u, align 1, !tbaa !32
  %i.v = sext <4 x i8> %wide.load to <4 x i32>
  %i.w = sext <4 x i8> %wide.load109 to <4 x i32>
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %wide.load110 = load <4 x i8>, ptr %i.x, align 1, !tbaa !32
  %wide.load111 = load <4 x i8>, ptr %i.y, align 1, !tbaa !32
  %i.z = sext <4 x i8> %wide.load110 to <4 x i32>
  %i.aa = sext <4 x i8> %wide.load111 to <4 x i32>
  %i.ab = mul nsw <4 x i32> %i.z, %i.v
  %i.ac = mul nsw <4 x i32> %i.aa, %i.w
  %i.ad = add <4 x i32> %i.ab, %vec.phi           ; 2 uses
  %i.ae = add <4 x i32> %i.ac, %vec.phi108        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ae, %i.ad
  %i.ag = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph92.preheader112

.lr.ph92.preheader112:                            ; preds = %.lr.ph92.preheader, %middle.block
  %indvars.iv98.ph = phi i64 [ %i.o, %.lr.ph92.preheader ], [ %i.q, %middle.block ]
  %.17390.ph = phi i32 [ %.072.lcssa, %.lr.ph92.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph92

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 10 uses
  %.07186 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cz, %.lr.ph ]
  %.07285 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bq, %.lr.ph ]
  %i.ah = or disjoint i64 %indvars.iv, 7          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !32
  %i.ak = sext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !tbaa !32
  %i.an = sext i8 %i.am to i32
  %i.ao = mul nsw i32 %i.an, %i.ak
  %i.ap = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !32
  %i.as = sext i8 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1, !tbaa !32
  %i.av = sext i8 %i.au to i32
  %i.aw = mul nsw i32 %i.av, %i.as
  %i.ax = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !32
  %i.ba = sext i8 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !32
  %i.bd = sext i8 %i.bc to i32
  %i.be = mul nsw i32 %i.bd, %i.ba
  %i.bf = or disjoint i64 %indvars.iv, 3          ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !32
  %i.bi = sext i8 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !32
  %i.bl = sext i8 %i.bk to i32
  %i.bm = mul nsw i32 %i.bl, %i.bi
  %i.bn = add i32 %i.ao, %.07285
  %i.bo = add i32 %i.bn, %i.aw
  %i.bp = add i32 %i.bo, %i.be
  %i.bq = add i32 %i.bp, %i.bm                    ; 2 uses
  %i.br = or disjoint i64 %indvars.iv, 4          ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !32
  %i.bu = sext i8 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %i.br
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !32
  %i.bx = sext i8 %i.bw to i32
  %i.by = mul nsw i32 %i.bx, %i.bu
  %i.bz = or disjoint i64 %indvars.iv, 5          ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !32
  %i.cc = sext i8 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %i.bz
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !32
  %i.cf = sext i8 %i.ce to i32
  %i.cg = mul nsw i32 %i.cf, %i.cc
  %i.ch = or disjoint i64 %indvars.iv, 6          ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !32
  %i.ck = sext i8 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !32
  %i.cn = sext i8 %i.cm to i32
  %i.co = mul nsw i32 %i.cn, %i.ck
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !32
  %i.cr = sext i8 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !32
  %i.cu = sext i8 %i.ct to i32
  %i.cv = mul nsw i32 %i.cu, %i.cr
  %i.cw = add i32 %i.by, %.07186
  %i.cx = add i32 %i.cw, %i.cg
  %i.cy = add i32 %i.cx, %i.co
  %i.cz = add i32 %i.cy, %i.cv                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.da = or disjoint i64 %indvars.iv.next, 7
  %i.db = icmp samesign ult i64 %i.da, %i.l
  br i1 %i.db, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !57

.lr.ph92:                                         ; preds = %.lr.ph92.preheader112, %.lr.ph92
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.lr.ph92 ], [ %indvars.iv98.ph, %.lr.ph92.preheader112 ] ; 3 uses
  %.17390 = phi i32 [ %i.dj, %.lr.ph92 ], [ %.17390.ph, %.lr.ph92.preheader112 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv98
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !32
  %i.de = sext i8 %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv98
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !32
  %i.dh = sext i8 %i.dg to i32
  %i.di = mul nsw i32 %i.dh, %i.de
  %i.dj = add nsw i32 %i.di, %.17390              ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph92, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph92, %middle.block, %.preheader
  %.173.lcssa = phi i32 [ %.072.lcssa, %.preheader ], [ %i.ag, %middle.block ], [ %i.dj, %.lr.ph92 ]
  %i.dk = add nsw i32 %.173.lcssa, %.071.lcssa
  %i.dl = sitofp i32 %i.dk to float
  %i.dm = fmul float %8, %i.dl
  %i.dn = fsub float 1.000000e+00, %i.dm          ; 3 uses
  %i.do = fcmp olt float %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.dp = fcmp ogt float %i.dn, 2.000000e+00
  br i1 %i.dp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge, %bb.f, %bb.e, %bb.c
  %.069 = phi float [ %i.d, %bb.c ], [ %i.h, %bb.e ], [ 1.000000e+00, %bb.f ], [ %i.dn, %bb.h ], [ 2.000000e+00, %bb.i ], [ 0.000000e+00, %._crit_edge ]
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
end_hunk_0
begin_hunk_1_@hnsw_reconnect_nodes:bb.a
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
  %i.ba = phi <2 x float> [ zeroinitializer, %bb.o ], [ %i.cb, %.preheader.loopexit.i371 ] ; 2 uses
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
  %.lcssa629.unr = phi float [ poison, %.lr.ph73.preheader.i ], [ %i.bi, %.lr.ph73.i.prol ]
  %indvars.iv79.i.unr = phi i64 [ %i.bd, %.lr.ph73.preheader.i ], [ %indvars.iv.next80.i.prol, %.lr.ph73.i.prol ]
  %.15871.i.unr = phi float [ %i.bc, %.lr.ph73.preheader.i ], [ %i.bi, %.lr.ph73.i.prol ]
  %i.bj = sub nsw i64 %i.bd, %wide.trip.count.i365
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %._crit_edge.i364, label %.lr.ph73.i

.lr.ph.i368:                                      ; preds = %.lr.ph.i368, %.lr.ph.preheader.i367
  %indvars.iv.i369 = phi i64 [ 0, %.lr.ph.preheader.i367 ], [ %indvars.iv.next.i370, %.lr.ph.i368 ] ; 3 uses
  %i.bl = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i367 ], [ %i.cb, %.lr.ph.i368 ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i369
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i369
  %i.bo = load <8 x float>, ptr %i.bm, align 4, !tbaa !27 ; 4 uses
  %i.bp = load <8 x float>, ptr %i.bn, align 4, !tbaa !27 ; 4 uses
  %i.bq = fmul <8 x float> %i.bo, %i.bp
  %i.br = shufflevector <8 x float> %i.bq, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.bs = shufflevector <8 x float> %i.bo, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.bt = shufflevector <8 x float> %i.bp, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bt, <2 x float> %i.br)
  %i.bv = shufflevector <8 x float> %i.bo, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.bw = shufflevector <8 x float> %i.bp, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bw, <2 x float> %i.bu)
  %i.by = shufflevector <8 x float> %i.bo, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.bz = shufflevector <8 x float> %i.bp, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.bz, <2 x float> %i.bx)
  %i.cb = fadd <2 x float> %i.bl, %i.ca           ; 2 uses
  %indvars.iv.next.i370 = add nuw nsw i64 %indvars.iv.i369, 8 ; 2 uses
  %i.cc = or disjoint i64 %indvars.iv.next.i370, 7
  %i.cd = icmp samesign ult i64 %i.cc, %i.ay
  br i1 %i.cd, label %.lr.ph.i368, label %.preheader.loopexit.i371, !llvm.loop !42

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i.3, %.lr.ph73.i ], [ %indvars.iv79.i.unr, %.lr.ph73.i.prol.loopexit ] ; 6 uses
  %.15871.i = phi float [ %i.cx, %.lr.ph73.i ], [ %.15871.i.unr, %.lr.ph73.i.prol.loopexit ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv79.i
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !27
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv79.i
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !27
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.ch, float %.15871.i)
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !27
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !27
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.cm, float %i.ci)
  %indvars.iv.next80.i.1 = add nuw nsw i64 %indvars.iv79.i, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i.1
  %i.cp = load float, ptr %i.co, align 4, !tbaa !27
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i.1
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !27
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cr, float %i.cn)
  %indvars.iv.next80.i.2 = add nuw nsw i64 %indvars.iv79.i, 3 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i.2
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !27
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i.2
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !27
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.cw, float %i.cs) ; 2 uses
  %indvars.iv.next80.i.3 = add nuw nsw i64 %indvars.iv79.i, 4 ; 2 uses
  %exitcond.not.i366.3 = icmp eq i64 %indvars.iv.next80.i.3, %wide.trip.count.i365
  br i1 %exitcond.not.i366.3, label %._crit_edge.i364, label %.lr.ph73.i, !llvm.loop !43

._crit_edge.i364:                                 ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i, %.preheader.i362
  %.158.lcssa.i = phi float [ %i.bc, %.preheader.i362 ], [ %.lcssa629.unr, %.lr.ph73.i.prol.loopexit ], [ %i.cx, %.lr.ph73.i ]
  %i.cy = extractelement <2 x float> %i.ba, i64 0
  %i.cz = fadd float %i.cy, %.158.lcssa.i
  %i.da = fsub float 1.000000e+00, %i.cz
  br label %hnsw_distance.exit

bb.p:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !15 ; 12 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !15 ; 12 uses
  %i.df = load i32, ptr %i.h, align 8, !tbaa !73  ; 9 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !27 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.dj = load float, ptr %i.di, align 8, !tbaa !27 ; 4 uses
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
  %4 = insertelement <2 x float> poison, float %i.dh, i64 0
  %5 = insertelement <2 x float> %4, float %i.dj, i64 1
  %6 = fdiv <2 x float> %5, splat (float 1.270000e+02) ; 2 uses
  %shift = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %6, %shift
  %7 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.du = icmp ugt i32 %i.df, 7
  br i1 %i.du, label %.lr.ph.preheader.i, label %.preheader.i356

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.dv = zext i32 %i.df to i64
  br label %.lr.ph.i357

.preheader.loopexit.i:                            ; preds = %.lr.ph.i357
  %i.dw = and i32 %i.df, -8
  br label %.preheader.i356

.preheader.i356:                                  ; preds = %.preheader.loopexit.i, %bb.v
  %.072.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.ga, %.preheader.loopexit.i ] ; 3 uses
  %.071.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.hj, %.preheader.loopexit.i ]
  %.070.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.dw, %.preheader.loopexit.i ] ; 2 uses
  %i.dx = icmp ult i32 %.070.lcssa.i, %i.df
  br i1 %i.dx, label %.lr.ph92.preheader.i, label %._crit_edge.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i356
  %i.dy = zext i32 %.070.lcssa.i to i64           ; 4 uses
  %wide.trip.count.i = zext i32 %i.df to i64      ; 3 uses
  %i.dz = sub nsw i64 %wide.trip.count.i, %i.dy   ; 2 uses
  %min.iters.check = icmp ult i64 %i.dz, 8
  br i1 %min.iters.check, label %.lr.ph92.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader.i
  %n.mod.vf = and i64 %wide.trip.count.i, 7       ; 2 uses
  %n.vec = sub nuw nsw i64 %i.dz, %n.mod.vf       ; 2 uses
  %i.ea = add nsw i64 %n.vec, %i.dy
  %i.eb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.072.lcssa.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.eb, %vector.ph ], [ %i.en, %vector.body ]
  %vec.phi612 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.eo, %vector.body ]
  %i.ec = add i64 %index, %i.dy                   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %wide.load = load <4 x i8>, ptr %i.ed, align 1, !tbaa !32
  %wide.load613 = load <4 x i8>, ptr %i.ee, align 1, !tbaa !32
  %i.ef = sext <4 x i8> %wide.load to <4 x i32>
  %i.eg = sext <4 x i8> %wide.load613 to <4 x i32>
  %i.eh = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ec ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %wide.load614 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !32
  %wide.load615 = load <4 x i8>, ptr %i.ei, align 1, !tbaa !32
  %i.ej = sext <4 x i8> %wide.load614 to <4 x i32>
  %i.ek = sext <4 x i8> %wide.load615 to <4 x i32>
  %i.el = mul nsw <4 x i32> %i.ej, %i.ef
  %i.em = mul nsw <4 x i32> %i.ek, %i.eg
  %i.en = add <4 x i32> %i.el, %vec.phi           ; 2 uses
  %i.eo = add <4 x i32> %i.em, %vec.phi612        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.eo, %i.en
  %i.eq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %.lr.ph92.preheader.i, %middle.block
  %indvars.iv98.i.ph = phi i64 [ %i.dy, %.lr.ph92.preheader.i ], [ %i.ea, %middle.block ]
  %.17390.i.ph = phi i32 [ %.072.lcssa.i, %.lr.ph92.preheader.i ], [ %i.eq, %middle.block ]
  br label %.lr.ph92.i

.lr.ph.i357:                                      ; preds = %.lr.ph.i357, %.lr.ph.preheader.i
  %indvars.iv.i358 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i359, %.lr.ph.i357 ] ; 10 uses
  %.07186.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.hj, %.lr.ph.i357 ]
  %.07285.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ga, %.lr.ph.i357 ]
  %i.er = or disjoint i64 %indvars.iv.i358, 7     ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.i358
  %i.et = load i8, ptr %i.es, align 1, !tbaa !32
  %i.eu = sext i8 %i.et to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.i358
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !32
  %i.ex = sext i8 %i.ew to i32
  %i.ey = mul nsw i32 %i.ex, %i.eu
  %i.ez = or disjoint i64 %indvars.iv.i358, 1     ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !32
  %i.fc = sext i8 %i.fb to i32
  %i.fd = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ez
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !32
  %i.ff = sext i8 %i.fe to i32
  %i.fg = mul nsw i32 %i.ff, %i.fc
  %i.fh = or disjoint i64 %indvars.iv.i358, 2     ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !32
  %i.fk = sext i8 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.fh
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !32
  %i.fn = sext i8 %i.fm to i32
  %i.fo = mul nsw i32 %i.fn, %i.fk
  %i.fp = or disjoint i64 %indvars.iv.i358, 3     ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !32
  %i.fs = sext i8 %i.fr to i32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.fp
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !32
  %i.fv = sext i8 %i.fu to i32
  %i.fw = mul nsw i32 %i.fv, %i.fs
  %i.fx = add i32 %i.ey, %.07285.i
  %i.fy = add i32 %i.fx, %i.fg
  %i.fz = add i32 %i.fy, %i.fo
  %i.ga = add i32 %i.fz, %i.fw                    ; 2 uses
  %i.gb = or disjoint i64 %indvars.iv.i358, 4     ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !32
  %i.ge = sext i8 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.gb
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !32
  %i.gh = sext i8 %i.gg to i32
  %i.gi = mul nsw i32 %i.gh, %i.ge
  %i.gj = or disjoint i64 %indvars.iv.i358, 5     ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !32
  %i.gm = sext i8 %i.gl to i32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.gj
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !32
  %i.gp = sext i8 %i.go to i32
  %i.gq = mul nsw i32 %i.gp, %i.gm
  %i.gr = or disjoint i64 %indvars.iv.i358, 6     ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !32
  %i.gu = sext i8 %i.gt to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.gr
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !32
  %i.gx = sext i8 %i.gw to i32
  %i.gy = mul nsw i32 %i.gx, %i.gu
  %i.gz = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.er
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !32
  %i.hb = sext i8 %i.ha to i32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.er
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !32
  %i.he = sext i8 %i.hd to i32
  %i.hf = mul nsw i32 %i.he, %i.hb
  %i.hg = add i32 %i.gi, %.07186.i
  %i.hh = add i32 %i.hg, %i.gq
  %i.hi = add i32 %i.hh, %i.gy
  %i.hj = add i32 %i.hi, %i.hf                    ; 2 uses
  %indvars.iv.next.i359 = add nuw nsw i64 %indvars.iv.i358, 8 ; 2 uses
  %i.hk = or disjoint i64 %indvars.iv.next.i359, 7
  %i.hl = icmp samesign ult i64 %i.hk, %i.dv
  br i1 %i.hl, label %.lr.ph.i357, label %.preheader.loopexit.i, !llvm.loop !57

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph92.i ], [ %indvars.iv98.i.ph, %.lr.ph92.i.preheader ] ; 3 uses
  %.17390.i = phi i32 [ %i.ht, %.lr.ph92.i ], [ %.17390.i.ph, %.lr.ph92.i.preheader ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv98.i
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !32
  %i.ho = sext i8 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv98.i
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !32
  %i.hr = sext i8 %i.hq to i32
  %i.hs = mul nsw i32 %i.hr, %i.ho
  %i.ht = add nsw i32 %i.hs, %.17390.i            ; 2 uses
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph92.i, !llvm.loop !169

._crit_edge.i:                                    ; preds = %.lr.ph92.i, %middle.block, %.preheader.i356
  %.173.lcssa.i = phi i32 [ %.072.lcssa.i, %.preheader.i356 ], [ %i.eq, %middle.block ], [ %i.ht, %.lr.ph92.i ]
  %i.hu = add nsw i32 %.173.lcssa.i, %.071.lcssa.i
  %i.hv = sitofp i32 %i.hu to float
  %i.hw = fmul float %7, %i.hv
  %i.hx = fsub float 1.000000e+00, %i.hw          ; 3 uses
  %i.hy = fcmp olt float %i.hx, 0.000000e+00
  br i1 %i.hy, label %hnsw_distance.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i
  %i.hz = fcmp ogt float %i.hx, 2.000000e+00
  br i1 %i.hz, label %bb.x, label %hnsw_distance.exit

bb.x:                                             ; preds = %bb.w
  br label %hnsw_distance.exit

bb.y:                                             ; preds = %bb.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !15
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !15
  %i.ie = load i32, ptr %i.h, align 8, !tbaa !73
  %i.if = tail call float @vectors_distance_bin(ptr noundef %i.ib, ptr noundef %i.id, i32 noundef %i.ie)
  br label %hnsw_distance.exit

bb.z:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %bb.x, %bb.w, %._crit_edge.i, %bb.u, %bb.t, %bb.r, %._crit_edge.i364, %bb.n, %bb.k, %bb.y
  %.0.i = phi float [ %i.if, %bb.y ], [ %i.da, %._crit_edge.i364 ], [ %i.as, %bb.k ], [ %i.aw, %bb.n ], [ %i.dn, %bb.r ], [ %i.dr, %bb.t ], [ 1.000000e+00, %bb.u ], [ %i.hx, %bb.w ], [ 2.000000e+00, %bb.x ], [ 0.000000e+00, %._crit_edge.i ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv457
  store float %.0.i, ptr %gep, align 4, !tbaa !27
  %i.ig = mul nuw nsw i64 %indvars.iv457, %i.c
  %gep578 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep577, i64 %i.ig
  store float %.0.i, ptr %gep578, align 4, !tbaa !27
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next458, %i.c
  br i1 %exitcond.not, label %.loopexit382, label %bb.i, !llvm.loop !170

._crit_edge405:                                   ; preds = %._crit_edge402.us
  %i.ih = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.ii = tail call ptr %i.ih(i64 noundef %i.e) #34 ; 13 uses
  %.not326 = icmp eq ptr %i.ii, null
  br i1 %.not326, label %.sink.split.sink.split, label %.preheader378.lr.ph

.preheader378.lr.ph:                              ; preds = %._crit_edge405
  %i.ij = zext i32 %3 to i64                      ; 3 uses
  %i.ik = icmp sgt i32 %2, 2
  %i.il = add nsw i32 %2, -1
  %i.im = uitofp nneg i32 %i.il to float
  %i.in = add nsw i32 %2, -2
  %i.io = uitofp nneg i32 %i.in to float
  br i1 %i.ik, label %.preheader378.us.preheader, label %.preheader378

.preheader378.us.preheader:                       ; preds = %.preheader378.lr.ph
  %8 = insertelement <2 x float> poison, float %i.im, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = insertelement <2 x float> poison, float %i.io, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader378.us

.preheader378.us:                                 ; preds = %.preheader378.us.preheader, %._crit_edge412.split.us.us
  %indvars.iv501 = phi i64 [ %indvars.iv.next502, %._crit_edge412.split.us.us ], [ 0, %.preheader378.us.preheader ] ; 6 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv501
  %i.iq = mul nuw nsw i64 %indvars.iv501, %i.c    ; 3 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv501
  %invariant.gep583 = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.iq
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv501
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.iq
  br label %bb.aa

bb.aa:                                            ; preds = %bb.af, %.preheader378.us
  %indvars.iv496 = phi i64 [ %indvars.iv.next497, %bb.af ], [ 0, %.preheader378.us ] ; 6 uses
  %i.iu = icmp eq i64 %indvars.iv501, %indvars.iv496
  br i1 %i.iu, label %bb.ae, label %.preheader377.us.us

bb.ab:                                            ; preds = %bb.ac
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %exitcond495.not = icmp eq i64 %indvars.iv.next492, %wide.trip.count494
  br i1 %exitcond495.not, label %.critedge.us.us, label %bb.ac, !llvm.loop !171

.critedge.us.us:                                  ; preds = %bb.ab, %.preheader377.us.us
  %i.iv = add nuw nsw i64 %indvars.iv496, %i.iq   ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.iv
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !27 ; 2 uses
  %i.iy = load float, ptr %i.ir, align 4, !tbaa !27
  %i.iz = fneg float %i.ix
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv496
  %13 = load float, ptr %12, align 4, !tbaa !27
  %14 = insertelement <2 x float> poison, float %i.iy, i64 0
  %15 = insertelement <2 x float> %14, float %13, i64 1
  %16 = insertelement <2 x float> poison, float %i.iz, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %9, <2 x float> %17)
  %19 = fdiv <2 x float> %18, %11                 ; 2 uses
  %shift617 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop618 = fadd <2 x float> %19, %shift617
  %20 = extractelement <2 x float> %foldExtExtBinop618, i64 0
  %i.ja = fmul float %20, 5.000000e-01
  %i.jb = fmul float %i.ja, 3.000000e-01
  %i.jc = fsub float 2.000000e+00, %i.ix
  %i.jd = tail call float @llvm.fmuladd.f32(float %i.jc, float f0x3F333333, float %i.jb)
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.iv
  store float %i.jd, ptr %i.je, align 4, !tbaa !27
  br label %bb.af

bb.ac:                                            ; preds = %.lr.ph408.us.us, %bb.ab
  %indvars.iv491 = phi i64 [ 0, %.lr.ph408.us.us ], [ %indvars.iv.next492, %bb.ab ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv491
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !26
  %i.jh = icmp eq ptr %i.jg, %i.jp
  br i1 %i.jh, label %bb.ad, label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  %gep584 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep583, i64 %indvars.iv496
  store float -1.000000e+00, ptr %gep584, align 4, !tbaa !27
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  store float -1.000000e+00, ptr %i.it, align 4, !tbaa !27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.critedge.us.us
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %exitcond500.not = icmp eq i64 %indvars.iv.next497, %i.c
  br i1 %exitcond500.not, label %._crit_edge412.split.us.us, label %bb.aa, !llvm.loop !172

.preheader377.us.us:                              ; preds = %bb.aa
  %i.ji = load ptr, ptr %i.ip, align 8, !tbaa !26
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 312
  %i.jk = getelementptr inbounds nuw [24 x i8], ptr %i.jj, i64 %i.ij ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !132 ; 2 uses
  %.not343406.us.us.not = icmp eq i32 %i.jm, 0
  br i1 %.not343406.us.us.not, label %.critedge.us.us, label %.lr.ph408.us.us

.lr.ph408.us.us:                                  ; preds = %.preheader377.us.us
  %i.jn = load ptr, ptr %i.jk, align 8, !tbaa !135
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv496
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !26
  %wide.trip.count494 = zext i32 %i.jm to i64
  br label %bb.ac

._crit_edge412.split.us.us:                       ; preds = %bb.af
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1 ; 2 uses
  %exitcond505.not = icmp eq i64 %indvars.iv.next502, %i.c
  br i1 %exitcond505.not, label %._crit_edge415.split, label %.preheader378.us, !llvm.loop !173

._crit_edge415.split:                             ; preds = %.preheader378, %._crit_edge412.split, %._crit_edge412.split.1, %._crit_edge412.split.us.us
  %i.jq = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.jr = tail call ptr %i.jq(i64 noundef %i.d) #34 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jr, i8 0, i64 %i.d, i1 false)
  %.not327 = icmp eq ptr %i.jr, null
  br i1 %.not327, label %.sink.split.sink.split.sink.split, label %.preheader376

.preheader376:                                    ; preds = %._crit_edge415.split
  %i.js = zext i32 %3 to i64                      ; 13 uses
  %wide.trip.count515 = zext nneg i32 %2 to i64   ; 2 uses
  br label %.lr.ph431

.preheader378.1:                                  ; preds = %._crit_edge412.split
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %invariant.gep581.1 = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.c
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.c
  %i.jw = load ptr, ptr %i.jt, align 8, !tbaa !26
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 312
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %i.ij ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !132 ; 2 uses
  %.not343406.not.1635 = icmp eq i32 %i.ka, 0
  br i1 %.not343406.not.1635, label %.critedge.1643, label %.lr.ph408.1638

.lr.ph408.1638:                                   ; preds = %.preheader378.1
  %i.kb = load ptr, ptr %i.jy, align 8, !tbaa !135
  %i.kc = load ptr, ptr %1, align 8, !tbaa !26
  %wide.trip.count478.1637 = zext i32 %i.ka to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph408.1638
  %indvars.iv475.1639 = phi i64 [ 0, %.lr.ph408.1638 ], [ %indvars.iv.next476.1640, %bb.ah ] ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %indvars.iv475.1639
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !26
  %i.kf = icmp eq ptr %i.ke, %i.kc
  br i1 %i.kf, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next476.1640 = add nuw nsw i64 %indvars.iv475.1639, 1 ; 2 uses
  %exitcond479.not.1641 = icmp eq i64 %indvars.iv.next476.1640, %wide.trip.count478.1637
  br i1 %exitcond479.not.1641, label %.critedge.1643, label %bb.ag, !llvm.loop !171

bb.ai:                                            ; preds = %bb.ag
  store float -1.000000e+00, ptr %invariant.gep581.1, align 4, !tbaa !27
  br label %._crit_edge412.split.1

.critedge.1643:                                   ; preds = %bb.ah, %.preheader378.1
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !27
  %i.ki = fsub float 2.000000e+00, %i.kh
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.ki, float f0x3F333333, float 0.000000e+00)
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.c
  store float %i.kj, ptr %i.kk, align 4, !tbaa !27
  br label %._crit_edge412.split.1

._crit_edge412.split.1:                           ; preds = %.critedge.1643, %bb.ai
  store float -1.000000e+00, ptr %i.jv, align 4, !tbaa !27
  br label %._crit_edge415.split

.preheader378:                                    ; preds = %.preheader378.lr.ph
  store float -1.000000e+00, ptr %i.ii, align 4, !tbaa !27
  %cond = icmp eq i32 %2, 1
  br i1 %cond, label %._crit_edge415.split, label %.preheader377.1

.preheader377.1:                                  ; preds = %.preheader378
  %i.kl = load ptr, ptr %1, align 8, !tbaa !26
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 312
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %i.km, i64 %i.ij ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !132 ; 2 uses
  %.not343406.not.1 = icmp eq i32 %i.kp, 0
  br i1 %.not343406.not.1, label %.critedge.1, label %.lr.ph408.1

.lr.ph408.1:                                      ; preds = %.preheader377.1
  %i.kq = load ptr, ptr %i.kn, align 8, !tbaa !135
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !26
  %wide.trip.count478.1 = zext i32 %i.kp to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %.lr.ph408.1
  %indvars.iv475.1 = phi i64 [ 0, %.lr.ph408.1 ], [ %indvars.iv.next476.1, %bb.ak ] ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv475.1
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !26
  %i.kv = icmp eq ptr %i.ku, %i.ks
  br i1 %i.kv, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %indvars.iv.next476.1 = add nuw nsw i64 %indvars.iv475.1, 1 ; 2 uses
  %exitcond479.not.1 = icmp eq i64 %indvars.iv.next476.1, %wide.trip.count478.1
  br i1 %exitcond479.not.1, label %.critedge.1, label %bb.aj, !llvm.loop !171

bb.al:                                            ; preds = %bb.aj
  %gep582.1 = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store float -1.000000e+00, ptr %gep582.1, align 4, !tbaa !27
  br label %._crit_edge412.split

.critedge.1:                                      ; preds = %bb.ak, %.preheader377.1
  %i.kw = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !27
  %i.ky = fsub float 2.000000e+00, %i.kx
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.ky, float f0x3F333333, float 0.000000e+00)
  %i.la = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store float %i.kz, ptr %i.la, align 4, !tbaa !27
  br label %._crit_edge412.split

._crit_edge412.split:                             ; preds = %.critedge.1, %bb.al
  %exitcond490.not = icmp eq i32 %2, 1
  br i1 %exitcond490.not, label %._crit_edge415.split, label %.preheader378.1

.lr.ph431:                                        ; preds = %.lr.ph431.backedge, %.preheader376
  %indvars.iv512 = phi i64 [ 0, %.preheader376 ], [ %indvars.iv512.be, %.lr.ph431.backedge ] ; 6 uses
  %.0293427.us = phi i32 [ -1, %.preheader376 ], [ %.0293427.us.be, %.lr.ph431.backedge ] ; 3 uses
  %.0296426.us = phi i32 [ -1, %.preheader376 ], [ %.0296426.us.be, %.lr.ph431.backedge ] ; 3 uses
  %.0302425.us = phi float [ -1.000000e+00, %.preheader376 ], [ %.0302425.us.be, %.lr.ph431.backedge ] ; 3 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv512
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !9
  %.not339.us = icmp eq i32 %i.lc, 0
  br i1 %.not339.us, label %bb.am, label %..loopexit_crit_edge.us

bb.am:                                            ; preds = %.lr.ph431
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv512
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !26
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 312
  %i.lg = getelementptr inbounds nuw [24 x i8], ptr %i.lf, i64 %i.js ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !132
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !128
  %.not340.us = icmp ult i32 %i.li, %i.lk
  br i1 %.not340.us, label %.preheader.us, label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.as, %bb.am, %.lr.ph431
  %.5307.us = phi float [ %.0302425.us, %.lr.ph431 ], [ %.0302425.us, %bb.am ], [ %.4306.us, %bb.as ]
  %.5301.us = phi i32 [ %.0296426.us, %.lr.ph431 ], [ %.0296426.us, %bb.am ], [ %.4300.us, %bb.as ] ; 4 uses
  %.5.us = phi i32 [ %.0293427.us, %.lr.ph431 ], [ %.0293427.us, %bb.am ], [ %.4.us, %bb.as ] ; 3 uses
  %indvars.iv.next513 = add nuw nsw i64 %indvars.iv512, 1 ; 2 uses
  %exitcond516.not = icmp eq i64 %indvars.iv.next513, %wide.trip.count515
  br i1 %exitcond516.not, label %._crit_edge432.split.us, label %.lr.ph431.backedge

.lr.ph431.backedge:                               ; preds = %..loopexit_crit_edge.us, %hnsw_update_worst_neighbor_on_add.exit346
  %indvars.iv512.be = phi i64 [ %indvars.iv.next513, %..loopexit_crit_edge.us ], [ 0, %hnsw_update_worst_neighbor_on_add.exit346 ]
  %.0293427.us.be = phi i32 [ %.5.us, %..loopexit_crit_edge.us ], [ -1, %hnsw_update_worst_neighbor_on_add.exit346 ]
  %.0296426.us.be = phi i32 [ %.5301.us, %..loopexit_crit_edge.us ], [ -1, %hnsw_update_worst_neighbor_on_add.exit346 ]
  %.0302425.us.be = phi float [ %.5307.us, %..loopexit_crit_edge.us ], [ -1.000000e+00, %hnsw_update_worst_neighbor_on_add.exit346 ]
  br label %.lr.ph431, !llvm.loop !174

bb.an:                                            ; preds = %.preheader.us, %bb.as
  %indvars.iv506 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next507, %bb.as ] ; 6 uses
  %.1294420.us = phi i32 [ %.0293427.us, %.preheader.us ], [ %.4.us, %bb.as ] ; 4 uses
end_hunk_1
begin_hunk_2_@hnsw_unlink_node:bb.a
  %i.at = phi i32 [ %i.ak, %.lr.ph.i98 ], [ %i.ip, %hnsw_distance.exit.i ] ; 9 uses
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
  %i.bm = phi <2 x float> [ zeroinitializer, %bb.n ], [ %i.cn, %.preheader.loopexit.i114 ] ; 2 uses
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
  %.lcssa223.unr = phi float [ poison, %.lr.ph73.preheader.i ], [ %i.bu, %.lr.ph73.i.prol ]
  %indvars.iv79.i.unr = phi i64 [ %i.bp, %.lr.ph73.preheader.i ], [ %indvars.iv.next80.i.prol, %.lr.ph73.i.prol ]
  %.15871.i.unr = phi float [ %i.bo, %.lr.ph73.preheader.i ], [ %i.bu, %.lr.ph73.i.prol ]
  %i.bv = sub nsw i64 %i.bp, %wide.trip.count.i108
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge.i107, label %.lr.ph73.i

.lr.ph.i111:                                      ; preds = %.lr.ph.i111, %.lr.ph.preheader.i110
  %indvars.iv.i112 = phi i64 [ 0, %.lr.ph.preheader.i110 ], [ %indvars.iv.next.i113, %.lr.ph.i111 ] ; 3 uses
  %i.bx = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i110 ], [ %i.cn, %.lr.ph.i111 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i112
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i112
  %i.ca = load <8 x float>, ptr %i.by, align 4, !tbaa !27 ; 4 uses
  %i.cb = load <8 x float>, ptr %i.bz, align 4, !tbaa !27 ; 4 uses
  %i.cc = fmul <8 x float> %i.ca, %i.cb
  %i.cd = shufflevector <8 x float> %i.cc, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.ce = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.cf = shufflevector <8 x float> %i.cb, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cf, <2 x float> %i.cd)
  %i.ch = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.ci = shufflevector <8 x float> %i.cb, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.ci, <2 x float> %i.cg)
  %i.ck = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.cl = shufflevector <8 x float> %i.cb, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cl, <2 x float> %i.cj)
  %i.cn = fadd <2 x float> %i.bx, %i.cm           ; 2 uses
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 8 ; 2 uses
  %i.co = or disjoint i64 %indvars.iv.next.i113, 7
  %i.cp = icmp samesign ult i64 %i.co, %i.bk
  br i1 %i.cp, label %.lr.ph.i111, label %.preheader.loopexit.i114, !llvm.loop !42

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i.3, %.lr.ph73.i ], [ %indvars.iv79.i.unr, %.lr.ph73.i.prol.loopexit ] ; 6 uses
  %.15871.i = phi float [ %i.dj, %.lr.ph73.i ], [ %.15871.i.unr, %.lr.ph73.i.prol.loopexit ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv79.i
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !27
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv79.i
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !27
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.ct, float %.15871.i)
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next80.i
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !27
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next80.i
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !27
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cy, float %i.cu)
  %indvars.iv.next80.i.1 = add nuw nsw i64 %indvars.iv79.i, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next80.i.1
  %i.db = load float, ptr %i.da, align 4, !tbaa !27
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next80.i.1
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !27
  %i.de = tail call float @llvm.fmuladd.f32(float %i.db, float %i.dd, float %i.cz)
  %indvars.iv.next80.i.2 = add nuw nsw i64 %indvars.iv79.i, 3 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next80.i.2
  %i.dg = load float, ptr %i.df, align 4, !tbaa !27
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next80.i.2
  %i.di = load float, ptr %i.dh, align 4, !tbaa !27
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.di, float %i.de) ; 2 uses
  %indvars.iv.next80.i.3 = add nuw nsw i64 %indvars.iv79.i, 4 ; 2 uses
  %exitcond.not.i109.3 = icmp eq i64 %indvars.iv.next80.i.3, %wide.trip.count.i108
  br i1 %exitcond.not.i109.3, label %._crit_edge.i107, label %.lr.ph73.i, !llvm.loop !43

._crit_edge.i107:                                 ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i, %.preheader.i105
  %.158.lcssa.i = phi float [ %i.bo, %.preheader.i105 ], [ %.lcssa223.unr, %.lr.ph73.i.prol.loopexit ], [ %i.dj, %.lr.ph73.i ]
  %i.dk = extractelement <2 x float> %i.bm, i64 0
  %i.dl = fadd float %i.dk, %.158.lcssa.i
  %i.dm = fsub float 1.000000e+00, %i.dl
  br label %hnsw_distance.exit.i

bb.o:                                             ; preds = %bb.h
  %i.dn = load ptr, ptr %i.ar, align 8, !tbaa !15 ; 12 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !15 ; 12 uses
  %i.dq = load i32, ptr %i.g, align 8, !tbaa !73  ; 9 uses
  %i.dr = load float, ptr %i.as, align 8, !tbaa !27 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !27 ; 4 uses
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
  %.pre.i102 = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.p
  %i.dz = phi i32 [ %.pre.i102, %..thread_crit_edge.i ], [ %i.dv, %bb.p ]
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
  %2 = insertelement <2 x float> poison, float %i.dr, i64 0
  %3 = insertelement <2 x float> %2, float %i.dt, i64 1
  %4 = fdiv <2 x float> %3, splat (float 1.270000e+02) ; 2 uses
  %shift = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %4, %shift
  %5 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ee = icmp ugt i32 %i.dq, 7
  br i1 %i.ee, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.u
  %i.ef = zext i32 %i.dq to i64
  br label %.lr.ph.i99

.preheader.loopexit.i:                            ; preds = %.lr.ph.i99
  %i.eg = and i32 %i.dq, -8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.u
  %.072.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.gk, %.preheader.loopexit.i ] ; 3 uses
  %.071.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.ht, %.preheader.loopexit.i ]
  %.070.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.eg, %.preheader.loopexit.i ] ; 2 uses
  %i.eh = icmp ult i32 %.070.lcssa.i, %i.dq
  br i1 %i.eh, label %.lr.ph92.preheader.i, label %._crit_edge.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i
  %i.ei = zext i32 %.070.lcssa.i to i64           ; 4 uses
  %wide.trip.count.i = zext i32 %i.dq to i64      ; 3 uses
  %i.ej = sub nsw i64 %wide.trip.count.i, %i.ei   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ej, 8
  br i1 %min.iters.check, label %.lr.ph92.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader.i
  %n.mod.vf = and i64 %wide.trip.count.i, 7       ; 2 uses
  %n.vec = sub nuw nsw i64 %i.ej, %n.mod.vf       ; 2 uses
  %i.ek = add nsw i64 %n.vec, %i.ei
  %i.el = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.072.lcssa.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.el, %vector.ph ], [ %i.ex, %vector.body ]
  %vec.phi210 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ey, %vector.body ]
  %i.em = add i64 %index, %i.ei                   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %wide.load = load <4 x i8>, ptr %i.en, align 1, !tbaa !32
  %wide.load211 = load <4 x i8>, ptr %i.eo, align 1, !tbaa !32
  %i.ep = sext <4 x i8> %wide.load to <4 x i32>
  %i.eq = sext <4 x i8> %wide.load211 to <4 x i32>
  %i.er = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.em ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %wide.load212 = load <4 x i8>, ptr %i.er, align 1, !tbaa !32
  %wide.load213 = load <4 x i8>, ptr %i.es, align 1, !tbaa !32
  %i.et = sext <4 x i8> %wide.load212 to <4 x i32>
  %i.eu = sext <4 x i8> %wide.load213 to <4 x i32>
  %i.ev = mul nsw <4 x i32> %i.et, %i.ep
  %i.ew = mul nsw <4 x i32> %i.eu, %i.eq
  %i.ex = add <4 x i32> %i.ev, %vec.phi           ; 2 uses
  %i.ey = add <4 x i32> %i.ew, %vec.phi210        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ey, %i.ex
  %i.fa = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %.lr.ph92.preheader.i, %middle.block
  %indvars.iv98.i.ph = phi i64 [ %i.ei, %.lr.ph92.preheader.i ], [ %i.ek, %middle.block ]
  %.17390.i.ph = phi i32 [ %.072.lcssa.i, %.lr.ph92.preheader.i ], [ %i.fa, %middle.block ]
  br label %.lr.ph92.i

.lr.ph.i99:                                       ; preds = %.lr.ph.i99, %.lr.ph.preheader.i
  %indvars.iv.i100 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i101, %.lr.ph.i99 ] ; 10 uses
  %.07186.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ht, %.lr.ph.i99 ]
  %.07285.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.gk, %.lr.ph.i99 ]
  %i.fb = or disjoint i64 %indvars.iv.i100, 7     ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.i100
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !32
  %i.fe = sext i8 %i.fd to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv.i100
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !32
  %i.fh = sext i8 %i.fg to i32
  %i.fi = mul nsw i32 %i.fh, %i.fe
  %i.fj = or disjoint i64 %indvars.iv.i100, 1     ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !32
  %i.fm = sext i8 %i.fl to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fj
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !32
  %i.fp = sext i8 %i.fo to i32
  %i.fq = mul nsw i32 %i.fp, %i.fm
  %i.fr = or disjoint i64 %indvars.iv.i100, 2     ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !32
  %i.fu = sext i8 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fr
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !32
  %i.fx = sext i8 %i.fw to i32
  %i.fy = mul nsw i32 %i.fx, %i.fu
  %i.fz = or disjoint i64 %indvars.iv.i100, 3     ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !32
  %i.gc = sext i8 %i.gb to i32
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fz
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !32
  %i.gf = sext i8 %i.ge to i32
  %i.gg = mul nsw i32 %i.gf, %i.gc
  %i.gh = add i32 %i.fi, %.07285.i
  %i.gi = add i32 %i.gh, %i.fq
  %i.gj = add i32 %i.gi, %i.fy
  %i.gk = add i32 %i.gj, %i.gg                    ; 2 uses
  %i.gl = or disjoint i64 %indvars.iv.i100, 4     ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !32
  %i.go = sext i8 %i.gn to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.gl
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !32
  %i.gr = sext i8 %i.gq to i32
  %i.gs = mul nsw i32 %i.gr, %i.go
  %i.gt = or disjoint i64 %indvars.iv.i100, 5     ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !32
  %i.gw = sext i8 %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.gt
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !32
  %i.gz = sext i8 %i.gy to i32
  %i.ha = mul nsw i32 %i.gz, %i.gw
  %i.hb = or disjoint i64 %indvars.iv.i100, 6     ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !32
  %i.he = sext i8 %i.hd to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.hb
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !32
  %i.hh = sext i8 %i.hg to i32
  %i.hi = mul nsw i32 %i.hh, %i.he
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.fb
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !32
  %i.hl = sext i8 %i.hk to i32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fb
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !32
  %i.ho = sext i8 %i.hn to i32
  %i.hp = mul nsw i32 %i.ho, %i.hl
  %i.hq = add i32 %i.gs, %.07186.i
  %i.hr = add i32 %i.hq, %i.ha
  %i.hs = add i32 %i.hr, %i.hi
  %i.ht = add i32 %i.hs, %i.hp                    ; 2 uses
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i100, 8 ; 2 uses
  %i.hu = or disjoint i64 %indvars.iv.next.i101, 7
  %i.hv = icmp samesign ult i64 %i.hu, %i.ef
  br i1 %i.hv, label %.lr.ph.i99, label %.preheader.loopexit.i, !llvm.loop !57

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph92.i ], [ %indvars.iv98.i.ph, %.lr.ph92.i.preheader ] ; 3 uses
  %.17390.i = phi i32 [ %i.id, %.lr.ph92.i ], [ %.17390.i.ph, %.lr.ph92.i.preheader ]
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv98.i
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !32
  %i.hy = sext i8 %i.hx to i32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv98.i
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !32
  %i.ib = sext i8 %i.ia to i32
  %i.ic = mul nsw i32 %i.ib, %i.hy
  %i.id = add nsw i32 %i.ic, %.17390.i            ; 2 uses
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph92.i, !llvm.loop !182

._crit_edge.i:                                    ; preds = %.lr.ph92.i, %middle.block, %.preheader.i
  %.173.lcssa.i = phi i32 [ %.072.lcssa.i, %.preheader.i ], [ %i.fa, %middle.block ], [ %i.id, %.lr.ph92.i ]
  %i.ie = add nsw i32 %.173.lcssa.i, %.071.lcssa.i
  %i.if = sitofp i32 %i.ie to float
  %i.ig = fmul float %5, %i.if
  %i.ih = fsub float 1.000000e+00, %i.ig          ; 3 uses
  %i.ii = fcmp olt float %i.ih, 0.000000e+00
  br i1 %i.ii, label %hnsw_distance.exit.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  %i.ij = fcmp ogt float %i.ih, 2.000000e+00
  br i1 %i.ij, label %bb.w, label %hnsw_distance.exit.i

bb.w:                                             ; preds = %bb.v
  br label %hnsw_distance.exit.i

bb.x:                                             ; preds = %bb.h
  %i.ik = load ptr, ptr %i.ar, align 8, !tbaa !15
  %i.il = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !15
  %i.in = load i32, ptr %i.g, align 8, !tbaa !73
  %i.io = tail call float @vectors_distance_bin(ptr noundef %i.ik, ptr noundef %i.im, i32 noundef %i.in)
  %.pre.i = load i32, ptr %i.u, align 8, !tbaa !132
  br label %hnsw_distance.exit.i

bb.y:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit.i:                             ; preds = %bb.w, %bb.v, %._crit_edge.i, %bb.t, %bb.s, %bb.q, %._crit_edge.i107, %bb.m, %bb.j, %bb.x
  %i.ip = phi i32 [ %.pre.i, %bb.x ], [ %i.at, %._crit_edge.i107 ], [ %i.at, %bb.j ], [ %i.at, %bb.m ], [ %i.at, %bb.q ], [ %i.at, %bb.s ], [ %i.at, %bb.t ], [ %i.at, %._crit_edge.i ], [ %i.at, %bb.v ], [ %i.at, %bb.w ] ; 2 uses
  %.0.i.i = phi float [ %i.io, %bb.x ], [ %i.dm, %._crit_edge.i107 ], [ %i.be, %bb.j ], [ %i.bi, %bb.m ], [ %i.dx, %bb.q ], [ %i.eb, %bb.s ], [ 1.000000e+00, %bb.t ], [ 0.000000e+00, %._crit_edge.i ], [ %i.ih, %bb.v ], [ 2.000000e+00, %bb.w ] ; 2 uses
  %i.iq = fcmp ogt float %.0.i.i, %.027.i         ; 2 uses
  %i.ir = trunc nuw i64 %indvars.iv.i to i32
  %.120.i = select i1 %i.iq, i32 %i.ir, i32 %.01925.i ; 2 uses
  %.1.i = select i1 %i.iq, float %.0.i.i, float %.027.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.is = zext i32 %i.ip to i64
  %i.it = icmp samesign ult i64 %indvars.iv.next.i, %i.is
  br i1 %i.it, label %bb.h, label %hnsw_update_worst_neighbor.exit, !llvm.loop !158

hnsw_update_worst_neighbor.exit:                  ; preds = %hnsw_distance.exit.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store float %.1.i, ptr %i.iu, align 8, !tbaa !133
  store i32 %.120.i, ptr %i.ao, align 4, !tbaa !134
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.z:                                             ; preds = %bb.g
  %i.iv = icmp ugt i32 %i.ap, %i.ab
  br i1 %i.iv, label %bb.aa, label %hnsw_update_worst_neighbor_on_remove.exit

bb.aa:                                            ; preds = %bb.z
  %i.iw = add i32 %i.ap, -1
  store i32 %i.iw, ptr %i.ao, align 4, !tbaa !134
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.ab:                                            ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %hnsw_update_worst_neighbor_on_remove.exit, label %bb.d, !llvm.loop !183

hnsw_update_worst_neighbor_on_remove.exit:        ; preds = %bb.ab, %.lr.ph135, %bb.aa, %bb.z, %hnsw_update_worst_neighbor.exit, %bb.f
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %i.ix = load i32, ptr %i.j, align 8, !tbaa !132
  %i.iy = zext i32 %i.ix to i64
  %i.iz = icmp samesign ult i64 %indvars.iv.next160, %i.iy
  br i1 %i.iz, label %.lr.ph135, label %._crit_edge, !llvm.loop !184

.lr.ph.i:                                         ; preds = %bb.c
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 304
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.0.i, %bb.ae ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !185
  %i.jd = icmp eq ptr %i.jc, %1
  br i1 %i.jd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.je = load ptr, ptr %i.ja, align 8, !tbaa !26
  store ptr %i.je, ptr %i.jb, align 8, !tbaa !185
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.jf = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %.0.i = load ptr, ptr %i.jf, align 8, !tbaa !188 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %hnsw_cursor_element_deleted.exit, label %bb.ac, !llvm.loop !189

hnsw_cursor_element_deleted.exit:                 ; preds = %bb.ae, %bb.c
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !26 ; 2 uses
  %.not89 = icmp eq ptr %i.jh, null
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !26 ; 4 uses
  br i1 %.not89, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %hnsw_cursor_element_deleted.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 304
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !26
  br label %bb.ah

bb.ag:                                            ; preds = %hnsw_cursor_element_deleted.exit
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.jj, ptr %i.jl, align 8, !tbaa !139
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not90 = icmp eq ptr %i.jj, null
  br i1 %.not90, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jm = load ptr, ptr %i.jg, align 8, !tbaa !26
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 296
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !92
  %i.jq = add i64 %i.jp, -1
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !92
  %i.jr = load ptr, ptr %0, align 8, !tbaa !90
  %i.js = icmp eq ptr %1, %i.jr
  br i1 %i.js, label %bb.ak, label %.loopexit.thread

bb.ak:                                            ; preds = %bb.aj
  store ptr null, ptr %0, align 8, !tbaa !90
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.jt, align 4, !tbaa !91
  %i.ju = load i32, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, -1
  br i1 %i.jv, label %.lr.ph139, label %thread-pre-split.thread

bb.al:                                            ; preds = %.lr.ph139
  %i.jw = add nsw i32 %.077137, -1
  %i.jx = icmp sgt i32 %.077137, 0
  br i1 %i.jx, label %.lr.ph139, label %thread-pre-split.thread, !llvm.loop !190

.lr.ph139:                                        ; preds = %bb.ak, %bb.al
  %.077137 = phi i32 [ %i.jw, %bb.al ], [ %i.ju, %bb.ak ] ; 3 uses
  %i.jy = zext nneg i32 %.077137 to i64
  %i.jz = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.jy ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !132
  %.not91 = icmp eq i32 %i.kb, 0
  br i1 %.not91, label %bb.al, label %thread-pre-split

thread-pre-split:                                 ; preds = %.lr.ph139
  %i.kc = load ptr, ptr %i.jz, align 8, !tbaa !135
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !26 ; 3 uses
  store ptr %i.kd, ptr %0, align 8, !tbaa !90
  %.not92 = icmp eq ptr %i.kd, null
  br i1 %.not92, label %thread-pre-split.thread, label %.loopexit.thread187

thread-pre-split.thread:                          ; preds = %bb.al, %bb.ak, %thread-pre-split
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.0140 = load ptr, ptr %i.ke, align 8, !tbaa !26 ; 2 uses
  %.not93141 = icmp eq ptr %.0140, null
  br i1 %.not93141, label %.loopexit.thread, label %.lr.ph145

.lr.ph145:                                        ; preds = %thread-pre-split.thread, %bb.ao
  %i.kf = phi ptr [ %i.kh, %bb.ao ], [ null, %thread-pre-split.thread ] ; 2 uses
  %.0143 = phi ptr [ %.0, %bb.ao ], [ %.0140, %thread-pre-split.thread ] ; 5 uses
  %.076142 = phi i32 [ %.1, %bb.ao ], [ 0, %thread-pre-split.thread ] ; 3 uses
  %.not94 = icmp eq ptr %.0143, %1
  br i1 %.not94, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %.lr.ph145
  %i.kg = load i32, ptr %.0143, align 8, !tbaa !9 ; 2 uses
  %.not95 = icmp ult i32 %i.kg, %.076142
  br i1 %.not95, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %.0143, ptr %0, align 8, !tbaa !90
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %.lr.ph145
  %i.kh = phi ptr [ %.0143, %bb.an ], [ %i.kf, %bb.am ], [ %i.kf, %.lr.ph145 ] ; 3 uses
  %.1 = phi i32 [ %i.kg, %bb.an ], [ %.076142, %bb.am ], [ %.076142, %.lr.ph145 ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.0143, i64 304
  %.0 = load ptr, ptr %i.ki, align 8, !tbaa !26   ; 2 uses
  %.not93 = icmp eq ptr %.0, null
  br i1 %.not93, label %.loopexit, label %.lr.ph145, !llvm.loop !191

.loopexit:                                        ; preds = %bb.ao
  %.not96 = icmp eq ptr %i.kh, null
  br i1 %.not96, label %.loopexit.thread, label %.loopexit.thread187

.loopexit.thread187:                              ; preds = %thread-pre-split, %.loopexit
  %i.kj = phi ptr [ %i.kh, %.loopexit ], [ %i.kd, %thread-pre-split ]
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !9
  store i32 %i.kk, ptr %i.jt, align 4, !tbaa !91
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %thread-pre-split.thread, %.loopexit, %.loopexit.thread187, %bb.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i8 0, i64 16, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.a, %.loopexit.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
end_hunk_2
begin_hunk_3_@hnsw_test_graph_recall:bb.a
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv.ph
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !32
  %i.aq = sitofp i8 %i.ap to float
  %i.ar = load float, ptr %i.af, align 8, !tbaa !27
  %i.as = fmul float %i.ar, %i.aq
  %i.at = fdiv float %i.as, 1.270000e+02
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.ph
  store float %i.at, ptr %i.au, align 4, !tbaa !27
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.av = add nsw i64 %wide.trip.count, -1
  %i.aw = icmp eq i64 %indvars.iv.ph, %i.av
  br i1 %i.aw, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !32
  %i.az = sitofp i8 %i.ay to float
  %i.ba = load float, ptr %i.af, align 8, !tbaa !27
  %i.bb = fmul float %i.ba, %i.az
  %i.bc = fdiv float %i.bb, 1.270000e+02
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  store float %i.bc, ptr %i.bd, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv.next
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !32
  %i.bg = sitofp i8 %i.bf to float
  %i.bh = load float, ptr %i.af, align 8, !tbaa !27
  %i.bi = fmul float %i.bh, %i.bg
  %i.bj = fdiv float %i.bi, 1.270000e+02
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  store float %i.bj, ptr %i.bk, align 4, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !251

bb.h:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %.093130, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !15
  %i.bn = load i32, ptr %i.i, align 8, !tbaa !73
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 1 %i.bm, i64 %i.bp, i1 false)
  br label %.loopexit

bb.i:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 3169, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_test_graph_recall) #35
  unreachable

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.g, %bb.h
  %i.bq = tail call i32 @hnsw_search_with_filter(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, i32 noundef %i.t, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) ; 5 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.p, label %.preheader, !llvm.loop !252

.preheader:                                       ; preds = %.loopexit
  %.not112119 = icmp sgt i32 %i.bq, 0             ; 2 uses
  br i1 %.not112119, label %.lr.ph121.preheader, label %.critedge

.lr.ph121.preheader:                              ; preds = %.preheader
  %wide.trip.count146 = zext nneg i32 %i.bq to i64
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %bb.k
  %indvars.iv143 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next144, %bb.k ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv143
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !26
  %i.bu = icmp eq ptr %i.bt, %.093130
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph121
  %.not113 = icmp eq i64 %indvars.iv143, 0
  br i1 %.not113, label %bb.n, label %.critedge.thread

bb.k:                                             ; preds = %.lr.ph121
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %.critedge, label %.lr.ph121, !llvm.loop !253

.critedge:                                        ; preds = %bb.k, %.preheader
  %i.bv = add i32 %.092131, 1                     ; 2 uses
  br i1 %.not106, label %bb.o, label %bb.l

.critedge.thread:                                 ; preds = %bb.j
  %i.bw = add i32 %.092131, 1                     ; 2 uses
  br i1 %.not106, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.critedge.thread, %.critedge
  %.str.28.sink = phi ptr [ @.str.27, %.critedge ], [ @.str.28, %.critedge.thread ]
  %i.bx = phi i32 [ %i.bv, %.critedge ], [ %i.bw, %.critedge.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %.093130, i64 288
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !15
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.28.sink, ptr noundef %i.bz) ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.093130, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !13
  %i.cd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i64 noundef %i.cc) ; 0 uses
  %i.ce = load i32, ptr %.093130, align 8, !tbaa !9
  %i.cf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.ce) ; 0 uses
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.bq) ; 0 uses
  %i.ch = load float, ptr %i.g, align 4, !tbaa !27
  %i.ci = fpext float %i.ch to double
  %i.cj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, double noundef %i.ci) ; 0 uses
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31) ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.093130, i64 320 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !132
  %.not139 = icmp eq i32 %i.cm, 0
  br i1 %.not139, label %._crit_edge, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %.093130, i64 312
  br label %bb.m

._crit_edge:                                      ; preds = %bb.m, %bb.l
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.co = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34) ; 0 uses
  br i1 %.not112119, label %.lr.ph126.preheader, label %._crit_edge127

.lr.ph126.preheader:                              ; preds = %._crit_edge
  %i.cp = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 10)
  %wide.trip.count154 = zext nneg i32 %i.cp to i64
  br label %.lr.ph126

bb.m:                                             ; preds = %.lr.ph123, %bb.m
  %indvars.iv148 = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next149, %bb.m ] ; 2 uses
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !135
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv148
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 288
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !15
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %i.cu) ; 0 uses
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.cw = load i32, ptr %i.cl, align 8, !tbaa !132
  %i.cx = zext i32 %i.cw to i64
  %i.cy = icmp samesign ult i64 %indvars.iv.next149, %i.cx
  br i1 %i.cy, label %bb.m, label %._crit_edge, !llvm.loop !254

._crit_edge127:                                   ; preds = %.lr.ph126, %._crit_edge
  %putchar108 = tail call i32 @putchar(i32 10)    ; 0 uses
  br label %bb.o

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %.lr.ph126
  %indvars.iv151 = phi i64 [ 0, %.lr.ph126.preheader ], [ %indvars.iv.next152, %.lr.ph126 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv151
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !26
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 288
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !15
  %i.dd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %i.dc) ; 0 uses
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge127, label %.lr.ph126, !llvm.loop !255

bb.n:                                             ; preds = %bb.j
  %i.de = add i32 %.095129, 1
  br label %bb.o

bb.o:                                             ; preds = %.critedge.thread, %.critedge, %._crit_edge127, %bb.n
  %.196 = phi i32 [ %.095129, %._crit_edge127 ], [ %.095129, %.critedge ], [ %i.de, %bb.n ], [ %.095129, %.critedge.thread ]
  %.1 = phi i32 [ %i.bx, %._crit_edge127 ], [ %i.bv, %.critedge ], [ %.092131, %bb.n ], [ %i.bw, %.critedge.thread ]
  %i.df = getelementptr inbounds nuw i8, ptr %.093130, i64 304
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.o
  %.297 = phi i32 [ %.196, %bb.o ], [ %.095129, %.loopexit ] ; 2 uses
  %.194 = phi ptr [ %i.dg, %bb.o ], [ %.093130, %.loopexit ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.o ], [ %.092131, %.loopexit ] ; 2 uses
  %.not = icmp eq ptr %.194, null
  br i1 %.not, label %hnsw_release_read_slot.exit, label %bb.f

hnsw_release_read_slot.exit:                      ; preds = %bb.p, %bb.e
  %.095.lcssa = phi i32 [ 0, %bb.e ], [ %.297, %bb.p ] ; 3 uses
  %.092.lcssa = phi i32 [ 0, %bb.e ], [ %.2, %bb.p ] ; 2 uses
  %.090.lcssa = phi i32 [ 0, %bb.e ], [ %i.aa, %bb.p ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.di = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.dh) #34 ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dk = zext nneg i32 %i.t to i64
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dl) #34 ; 0 uses
  %i.dn = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.dn(ptr noundef nonnull %i.d) #34
  %i.do = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.do(ptr noundef nonnull %i.g) #34
  %i.dp = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.dp(ptr noundef nonnull %i.m) #34
  %i.dq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %.090.lcssa) ; 0 uses
  %.not105 = icmp eq i32 %.090.lcssa, 0
  br i1 %.not105, label %.critedge110, label %bb.q

bb.q:                                             ; preds = %hnsw_release_read_slot.exit
  %i.dr = uitofp i32 %.095.lcssa to float
  %3 = uitofp i32 %.090.lcssa to float
  %i.ds = uitofp i32 %.092.lcssa to float
  %4 = insertelement <2 x float> poison, float %i.ds, i64 0
  %5 = insertelement <2 x float> %4, float %i.dr, i64 1
  %6 = fmul nnan <2 x float> %5, splat (float 1.000000e+02)
  %7 = insertelement <2 x float> poison, float %3, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fdiv <2 x float> %6, %8                    ; 2 uses
  %10 = extractelement <2 x float> %9, i64 1
  %11 = fpext float %10 to double
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %.095.lcssa, double noundef %11) ; 0 uses
  %13 = extractelement <2 x float> %9, i64 0
  %i.dt = fpext float %13 to double
  br label %bb.r

.critedge110:                                     ; preds = %hnsw_release_read_slot.exit
  %i.du = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %.095.lcssa, double noundef 0.000000e+00) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %.critedge110, %bb.q
  %i.dv = phi double [ %i.dt, %bb.q ], [ 0.000000e+00, %.critedge110 ]
  %i.dw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %.092.lcssa, double noundef %i.dv) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.r, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hnsw_ground_truth_with_filter(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #3 {
bb.a:
  %9 = alloca %struct.hnswNode, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.a = call i32 @hnsw_init_tmp_node(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %6, ptr noundef %1)
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %hnsw_free_tmp_node.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.d = tail call ptr %i.c(i64 noundef 16) #34, !inline_history !142 ; 12 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.f = zext i32 %2 to i64
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = tail call ptr %i.e(i64 noundef %i.g) #34, !inline_history !142 ; 3 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !17
  %.not10.i = icmp eq ptr %i.h, null
  br i1 %.not10.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.i(ptr noundef nonnull %i.d) #34, !inline_history !142
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %.not.i52 = icmp eq ptr %i.k, %1
  br i1 %.not.i52, label %hnsw_free_tmp_node.exit, label %hnsw_free_tmp_node.exit.sink.split

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store i32 0, ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  store i32 %2, ptr %i.m, align 4, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.04163 = load ptr, ptr %i.n, align 8, !tbaa !26 ; 2 uses
  %.not4864 = icmp eq ptr %.04163, null
  br i1 %.not4864, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.not50 = icmp eq ptr %7, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %.04165 = phi ptr [ %.04163, %.lr.ph ], [ %.041, %.backedge ] ; 8 uses
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.04165, i64 288
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = tail call i32 %7(ptr noundef %i.t, ptr noundef %8) #34
  %.not51 = icmp eq i32 %i.u, 0
  br i1 %.not51, label %.backedge, label %bb.i

.backedge:                                        ; preds = %.critedge2.i, %bb.o, %.critedge.i, %bb.h
  %.041.in.be = getelementptr inbounds nuw i8, ptr %.04165, i64 304
  %.041 = load ptr, ptr %.041.in.be, align 8, !tbaa !26 ; 2 uses
  %.not48 = icmp eq ptr %.041, null
  br i1 %.not48, label %._crit_edge.loopexit, label %bb.g, !llvm.loop !256

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = load i32, ptr %i.o, align 8, !tbaa !70
  switch i32 %i.v, label %bb.m [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = load i32, ptr %i.q, align 8, !tbaa !73
  %i.aa = tail call float @vectors_distance_float(ptr noundef %i.w, ptr noundef %i.y, i32 noundef %i.z)
  br label %hnsw_distance.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.ae = load i32, ptr %i.q, align 8, !tbaa !73
  %i.af = load float, ptr %i.r, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %.04165, i64 24
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !27
  %i.ai = tail call float @vectors_distance_q8(ptr noundef %i.ab, ptr noundef %i.ad, i32 noundef %i.ae, float noundef %i.af, float noundef %i.ah)
  br label %hnsw_distance.exit

bb.l:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.am = load i32, ptr %i.q, align 8, !tbaa !73
  %i.an = tail call float @vectors_distance_bin(ptr noundef %i.aj, ptr noundef %i.al, i32 noundef %i.am)
  br label %hnsw_distance.exit

bb.m:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %bb.j, %bb.k, %bb.l
  %.0.i53 = phi float [ %i.aa, %bb.j ], [ %i.ai, %bb.k ], [ %i.an, %bb.l ] ; 5 uses
  %i.ao = load i32, ptr %i.l, align 8, !tbaa !19  ; 3 uses
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !20  ; 2 uses
  %i.aq = icmp ult i32 %i.ao, %i.ap
  br i1 %i.aq, label %.preheader.i, label %bb.o

.preheader.i:                                     ; preds = %hnsw_distance.exit
  %.not45.i = icmp eq i32 %i.ao, 0
  br i1 %.not45.i, label %.critedge.i, label %.lr.ph47.preheader.i

.lr.ph47.preheader.i:                             ; preds = %.preheader.i
  %i.ar = zext i32 %i.ao to i64
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.n, %.lr.ph47.preheader.i
  %indvars.iv53.i = phi i64 [ %i.ar, %.lr.ph47.preheader.i ], [ %indvars.iv.next54.i, %bb.n ] ; 3 uses
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1 ; 2 uses
  %i.at = and i64 %indvars.iv.next54.i, 4294967295 ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load float, ptr %i.av, align 8, !tbaa !21
  %i.ax = fcmp olt float %i.aw, %.0.i53
  br i1 %i.ax, label %bb.n, label %.critedge.loopexit.i

bb.n:                                             ; preds = %.lr.ph47.i
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv53.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !25
  %.not.i54 = icmp eq i64 %i.at, 0
  br i1 %.not.i54, label %.critedge.loopexit.i, label %.lr.ph47.i, !llvm.loop !28

.critedge.loopexit.i:                             ; preds = %bb.n, %.lr.ph47.i
  %.038.lcssa.ph.i = phi i64 [ %indvars.iv53.i, %.lr.ph47.i ], [ 0, %bb.n ]
  %.pre57.i = load i32, ptr %i.l, align 8, !tbaa !19
  %i.az = add i32 %.pre57.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.ba = phi i32 [ 1, %.preheader.i ], [ %i.az, %.critedge.loopexit.i ]
  %.038.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.038.lcssa.ph.i, %.critedge.loopexit.i ]
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.038.lcssa.i ; 2 uses
  store ptr %.04165, ptr %i.bc, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store float %.0.i53, ptr %i.bd, align 8, !tbaa !21
  store i32 %i.ba, ptr %i.l, align 8, !tbaa !19
  br label %.backedge

bb.o:                                             ; preds = %hnsw_distance.exit
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !21
  %i.bh = fcmp ult float %.0.i53, %i.bg
  br i1 %i.bh, label %.preheader41.i, label %.backedge

.preheader41.i:                                   ; preds = %bb.o
  %.not51.i = icmp eq i32 %i.ap, 1
  br i1 %.not51.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.p
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ 0, %.preheader41.i ] ; 3 uses
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !17  ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %indvars.iv.next.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !21
  %i.bm = fcmp ogt float %i.bl, %.0.i53
  br i1 %i.bm, label %bb.p, label %.critedge2.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !25
  %i.bo = load i32, ptr %i.m, align 4, !tbaa !20
  %i.bp = add i32 %i.bo, -1
  %i.bq = zext i32 %i.bp to i64
end_hunk_3
