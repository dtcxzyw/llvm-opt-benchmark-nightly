Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGImpactQuantizedBvh?download=true
inline.NumInlined: 484
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK21btGImpactQuantizedBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE:bb.a
  %i.ee = select i1 %.not.i.i, i32 1, i32 %i.ed   ; 4 uses
  %i.ef = icmp slt i32 %i.ea, %i.ee
  br i1 %i.ef, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eg = sext i32 %i.ee to i64
  %i.eh = shl nsw i64 %i.eg, 2
  %i.ei = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.eh, i32 noundef 16)
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !49
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.k, %bb.j
  %i.ej = phi i32 [ %.pre.i, %bb.k ], [ %i.ea, %bb.j ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.ei, %bb.k ], [ null, %bb.j ] ; 8 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  %i.el = load ptr, ptr %i.o, align 8, !tbaa !51  ; 9 uses
  br i1 %i.ek, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.em = ptrtoaddr ptr %i.el to i64
  %.0.i.i.i33 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.ej to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ej, 8
  %i.en = sub i64 %i.em, %.0.i.i.i33
  %diff.check = icmp ugt i64 %i.en, -32
  %or.cond35 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond35, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %index ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load = load <4 x i32>, ptr %i.ep, align 4, !tbaa !26
  %wide.load34 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !26
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <4 x i32> %wide.load, ptr %i.eo, align 4, !tbaa !26
  store <4 x i32> %wide.load34, ptr %i.er, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.i.i.i.prol
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !26
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !80

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ew = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.i.i.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !26
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !26
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.next.i.i.i
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !26
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.next.i.i.i.1
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !26
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.next.i.i.i.2
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !26
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph, !llvm.loop !81

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.fk = load i8, ptr %i.p, align 8, !tbaa !54, !range !38, !noundef !39
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.el)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  %.pre2.pre.i = load i32, ptr %i.m, align 4, !tbaa !49
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.m, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.pre2.i = phi i32 [ %.pre2.pre.i, %bb.m ], [ %i.ej, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ]
  store i8 1, ptr %i.p, align 8, !tbaa !54
  store ptr %.0.i.i.i, ptr %i.o, align 8, !tbaa !51
  store i32 %i.ee, ptr %i.n, align 8, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, %bb.i, %bb.h
  %i.fm = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.ea, %bb.i ], [ %i.ea, %bb.h ]
  %i.fn = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.fo = sext i32 %i.fm to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.fo
  store i32 %i.dy, ptr %i.fp, align 4, !tbaa !26
  %i.fq = load i32, ptr %i.m, align 4, !tbaa !49
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.m, align 4, !tbaa !49
  br label %bb.o

bb.n:                                             ; preds = %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread, %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit
  %i.fs = phi i1 [ %i.dj, %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread ], [ %i.dz, %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit ]
  %.3.i23 = phi i1 [ false, %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread ], [ %i.dw, %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit ]
  %or.cond3 = or i1 %i.fs, %.3.i23
  br i1 %or.cond3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread, %bb.n
  %i.ft = add nsw i32 %.024, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.fu = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.fv = getelementptr inbounds [16 x i8], ptr %i.fu, i64 %i.r
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !37
  %i.fy = sub nsw i32 %.024, %i.fx
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1 = phi i32 [ %i.ft, %bb.o ], [ %i.fy, %bb.p ] ; 2 uses
  %i.fz = icmp slt i32 %.1, %i.a
  br i1 %i.fz, label %bb.b, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.q, %bb.a
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !49
  %i.gc = icmp sgt i32 %i.gb, 0
  ret i1 %i.gc
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21btGImpactQuantizedBvh14find_collisionEPKS_RK11btTransformS1_S4_R9btPairSet(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(25) %4) local_unnamed_addr #5 align 2 {
bb.a:
  %5 = alloca %class.BT_BOX_BOX_TRANSFORM_CACHE, align 8 ; 20 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !32
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 8, !tbaa !32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load float, ptr %i.g, align 4, !tbaa !19, !noalias !91 ; 2 uses
  %i.k = load float, ptr %i.h, align 4, !tbaa !19, !noalias !91 ; 2 uses
  %i.l = load float, ptr %i.i, align 4, !tbaa !19, !noalias !91 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !19, !noalias !92 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = load float, ptr %i.r, align 4, !tbaa !19, !noalias !92 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.u = load float, ptr %i.t, align 4, !tbaa !19, !noalias !92 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 48
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.w = load <2 x float>, ptr %1, align 4, !tbaa !19, !noalias !91 ; 6 uses
  %i.x = load <2 x float>, ptr %i.e, align 4, !tbaa !19, !noalias !91 ; 6 uses
  %i.y = load <2 x float>, ptr %i.f, align 4, !tbaa !19, !noalias !91 ; 6 uses
  %i.z = load <3 x float>, ptr %i.m, align 4, !tbaa !19, !noalias !93
  %i.aa = fneg <3 x float> %i.z                   ; 4 uses
  %i.ab = shufflevector <3 x float> %i.aa, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ac = fmul <2 x float> %i.x, %i.ab
  %i.ad = shufflevector <3 x float> %i.aa, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.ad, <2 x float> %i.ac)
  %i.af = shufflevector <3 x float> %i.aa, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.af, <2 x float> %i.ae)
  %i.ah = extractelement <2 x float> %i.x, i64 0
  %i.ai = fmul float %i.ah, %i.s
  %i.aj = extractelement <2 x float> %i.w, i64 0
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.q, float %i.aj, float %i.ai)
  %i.al = extractelement <2 x float> %i.y, i64 0
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %i.al, float %i.ak) ; 2 uses
  %7 = load float, ptr %6, align 4, !tbaa !19, !noalias !94 ; 2 uses
  %8 = insertelement <2 x float> poison, float %7, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = load <2 x float>, ptr %i.v, align 4, !tbaa !19, !noalias !94 ; 4 uses
  %i.an = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ao = fmul <2 x float> %i.x, %i.an
  %i.ap = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.w, <2 x float> %i.ao)
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %i.y, <2 x float> %i.aq)
  %i.as = insertelement <2 x float> poison, float %i.k, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %11 = shufflevector <2 x float> %i.ab, <2 x float> %10, <2 x i32> <i32 0, i32 3>
  %i.au = fmul <2 x float> %i.at, %11
  %i.av = insertelement <2 x float> poison, float %i.j, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %12 = shufflevector <2 x float> %i.ad, <2 x float> %10, <2 x i32> <i32 0, i32 2>
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %12, <2 x float> %i.au)
  %i.ay = insertelement <2 x float> poison, float %i.l, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %13 = shufflevector <3 x float> %i.aa, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %14 = insertelement <2 x float> %13, float %7, i64 1
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %14, <2 x float> %i.ax) ; 2 uses
  %i.bb = fadd <2 x float> %i.ag, %i.ar
  %shift = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ba, %shift
  %.sroa.3.12.vec.insert.i4.i.i.i8 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  store <2 x float> %i.bb, ptr %5, align 8
  %.sroa.43.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i.i8, ptr %.sroa.43.48..sroa_idx.i, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bd = load <2 x float>, ptr %3, align 4, !tbaa !19, !noalias !92 ; 3 uses
  %i.be = load <2 x float>, ptr %i.n, align 4, !tbaa !19, !noalias !92 ; 3 uses
  %i.bf = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.bf, %i.be
  %i.bh = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bh, <2 x float> %i.bg)
  %i.bj = load <2 x float>, ptr %i.o, align 4, !tbaa !19, !noalias !92 ; 3 uses
  %i.bk = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bk, <2 x float> %i.bi) ; 2 uses
  store <2 x float> %i.bl, ptr %i.bc, align 8
  %.sroa.96.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %i.am, ptr %.sroa.96.0..sroa_idx.i, align 8
  %.sroa.127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float 0.000000e+00, ptr %.sroa.127.0..sroa_idx.i, align 4, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bn = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bo = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = fmul <2 x float> %i.bo, %i.be
  %i.bq = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.br = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.br, <2 x float> %i.bp)
  %i.bt = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bu = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bu, <2 x float> %i.bs) ; 2 uses
  store <2 x float> %i.bv, ptr %i.bm, align 8
  %.sroa.21.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.24.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 44
  store float 0.000000e+00, ptr %.sroa.24.16..sroa_idx.i, align 4, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bx = fmul <2 x float> %i.at, %i.be
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.aw, <2 x float> %i.bx)
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.az, <2 x float> %i.by) ; 2 uses
  store <2 x float> %i.bz, ptr %i.bw, align 8
  %.sroa.33.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.36.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 60
  store float 0.000000e+00, ptr %.sroa.36.32..sroa_idx.i, align 4, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.cb = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bl)
  %i.cc = fadd <2 x float> %i.cb, splat (float f0x358637BD)
  store <2 x float> %i.cc, ptr %i.ca, align 8, !tbaa !19
  %i.cd = tail call noundef float @llvm.fabs.f32(float %i.am)
  %i.ce = fadd float %i.cd, f0x358637BD
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 72
  store float %i.ce, ptr %i.cf, align 8, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ch = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bv)
  %i.ci = fadd <2 x float> %i.ch, splat (float f0x358637BD)
  store <2 x float> %i.ci, ptr %i.cg, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.cl = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bz)
  %i.cm = fadd <2 x float> %i.cl, splat (float f0x358637BD)
  store <2 x float> %i.cm, ptr %i.ck, align 8, !tbaa !19
  %i.cn = insertelement <2 x float> %i.bn, float %i.k, i64 1
  %i.co = insertelement <2 x float> poison, float %i.s, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %i.cn, %i.cp
  %i.cr = insertelement <2 x float> poison, float %i.q, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = insertelement <2 x float> %i.bq, float %i.j, i64 1
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ct, <2 x float> %i.cq)
  %i.cv = insertelement <2 x float> poison, float %i.u, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = insertelement <2 x float> %i.bt, float %i.l, i64 1
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.cx, <2 x float> %i.cu) ; 3 uses
  %i.cz = extractelement <2 x float> %i.cy, i64 0
  store float %i.cz, ptr %.sroa.21.16..sroa_idx.i, align 8
  %i.da = extractelement <2 x float> %i.cy, i64 1
  store float %i.da, ptr %.sroa.33.32..sroa_idx.i, align 8
  %i.db = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cy) ; 2 uses
  %i.dc = extractelement <2 x float> %i.db, i64 0
  %i.dd = fadd float %i.dc, f0x358637BD
  store float %i.dd, ptr %i.cj, align 8, !tbaa !19
  %i.de = extractelement <2 x float> %i.db, i64 1
  %i.df = fadd float %i.de, f0x358637BD
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 104
  store float %i.df, ptr %i.dg, align 8, !tbaa !19
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursivePK21btGImpactQuantizedBvhS1_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(112) %5, i32 noundef 0, i32 noundef 0, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL41_find_quantized_collision_pairs_recursivePK21btGImpactQuantizedBvhS1_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #5 {
bb.a:
  %7 = alloca %class.btAABB, align 8              ; 7 uses
  %8 = alloca %class.btAABB, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = sext i32 %4 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i16, ptr %i.g, align 2, !tbaa !35
  %i.i = uitofp i16 %i.h to float
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load float, ptr %i.j, align 8, !tbaa !19 ; 2 uses
  %i.l = fdiv float %i.i, %i.k
  %i.m = load <2 x i16>, ptr %i.d, align 2, !tbaa !35
  %i.n = uitofp <2 x i16> %i.m to <2 x float>
  %i.o = load <2 x float>, ptr %i.f, align 8, !tbaa !19 ; 2 uses
  %i.p = fdiv <2 x float> %i.n, %i.o
  %i.q = load <2 x float>, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %i.r = fadd <2 x float> %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load float, ptr %i.s, align 8, !tbaa !19 ; 2 uses
  %i.u = fadd float %i.l, %i.t
  %.sroa.7.8.vec.insert19.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.u, i64 0
  store <2 x float> %i.r, ptr %7, align 8
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.7.8.vec.insert19.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.x = load i16, ptr %i.w, align 2, !tbaa !35
  %i.y = uitofp i16 %i.x to float
  %i.z = fdiv float %i.y, %i.k
  %i.aa = load <2 x i16>, ptr %i.v, align 2, !tbaa !35
  %i.ab = uitofp <2 x i16> %i.aa to <2 x float>
  %i.ac = fdiv <2 x float> %i.ab, %i.o
  %i.ad = fadd <2 x float> %i.q, %i.ac
  %i.ae = fadd float %i.t, %i.z
  %.sroa.7.8.vec.insert19.i7.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ae, i64 0
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x float> %i.ad, ptr %i.af, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> %.sroa.7.8.vec.insert19.i7.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.ai = sext i32 %5 to i64                      ; 2 uses
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.ai ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i16, ptr %i.am, align 2, !tbaa !35
  %i.ao = uitofp i16 %i.an to float
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !19 ; 2 uses
  %i.ar = fdiv float %i.ao, %i.aq
  %i.as = load <2 x i16>, ptr %i.aj, align 2, !tbaa !35
  %i.at = uitofp <2 x i16> %i.as to <2 x float>
  %i.au = load <2 x float>, ptr %i.al, align 8, !tbaa !19 ; 2 uses
  %i.av = fdiv <2 x float> %i.at, %i.au
  %i.aw = load <2 x float>, ptr %i.ak, align 8, !tbaa !19 ; 2 uses
  %i.ax = fadd <2 x float> %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = load float, ptr %i.ay, align 8, !tbaa !19 ; 2 uses
  %i.ba = fadd float %i.ar, %i.az
  %.sroa.7.8.vec.insert19.i.i.i6.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ba, i64 0
  store <2 x float> %i.ax, ptr %8, align 8
  %.sroa.42.0..sroa_idx.i.i7.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.7.8.vec.insert19.i.i.i6.i, ptr %.sroa.42.0..sroa_idx.i.i7.i, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 10
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !35
  %i.be = uitofp i16 %i.bd to float
  %i.bf = fdiv float %i.be, %i.aq
  %i.bg = load <2 x i16>, ptr %i.bb, align 2, !tbaa !35
  %i.bh = uitofp <2 x i16> %i.bg to <2 x float>
  %i.bi = fdiv <2 x float> %i.bh, %i.au
  %i.bj = fadd <2 x float> %i.aw, %i.bi
  %i.bk = fadd float %i.az, %i.bf
  %.sroa.7.8.vec.insert19.i7.i.i9.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bk, i64 0
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <2 x float> %i.bj, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx.i.i10.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store <2 x float> %.sroa.7.8.vec.insert19.i7.i.i9.i, ptr %.sroa.4.0..sroa_idx.i.i10.i, align 8, !tbaa !17
  %i.bm = call noundef zeroext i1 @_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(32) %8, ptr noundef nonnull align 4 dereferenceable(112) %3, i1 noundef zeroext %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br i1 %i.bm, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.bn, i64 %i.c
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !37 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, -1
  %i.bs = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.ai
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !37 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, -1                  ; 2 uses
  br i1 %i.br, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  br i1 %i.bw, label %bb.d, label %bb.i
end_hunk_0
