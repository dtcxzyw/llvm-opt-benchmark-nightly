Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGeometryUtil?download=true
inline.NumInlined: 81
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.t = load float, ptr %i.s, align 4, !tbaa !21
  %i.u = fadd float %i.r, %i.t
  %i.v = fcmp ule float %i.u, %2                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.v, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %.critedge, !llvm.loop !0

.critedge:                                        ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.v, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN14btGeometryUtil22areVerticesBehindPlaneERK9btVector3RK20btAlignedObjectArrayIS0_Ef(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, float noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not17 = icmp slt i32 %i.b, 1
  br i1 %.not17, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = load float, ptr %0, align 4, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load float, ptr %i.j, align 4, !tbaa !21
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !21
  %i.p = fmul float %i.g, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.e, float %i.m, float %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !21
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.s, float %i.q)
  %i.u = fadd float %i.t, %i.k
  %i.v = fcmp ule float %i.u, %2                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.v, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %.critedge, !llvm.loop !1

.critedge:                                        ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.v, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not14 = icmp slt i32 %i.b, 1
  br i1 %.not14, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = load float, ptr %0, align 4, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !21
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !21
  %i.n = fmul float %i.g, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.e, float %i.k, float %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !21
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.q, float %i.o)
  %i.s = fcmp ule float %i.r, 9.990000e-01        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.s, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %.critedge, !llvm.loop !2

.critedge:                                        ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.s, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14btGeometryUtil29getPlaneEquationsFromVerticesER20btAlignedObjectArrayI9btVector3ES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph97, label %._crit_edge

.lr.ph97:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.i = zext nneg i32 %i.b to i64
  %wide.trip.count113 = zext nneg i32 %i.b to i64 ; 2 uses
  br label %bb.b

.loopexit90:                                      ; preds = %.loopexit89, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %._crit_edge, label %bb.b, !llvm.loop !29

._crit_edge:                                      ; preds = %.loopexit90, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph97, %.loopexit90
  %indvars.iv110 = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next111, %.loopexit90 ] ; 2 uses
  %indvars.iv104 = phi i64 [ 1, %.lr.ph97 ], [ %indvars.iv.next105, %.loopexit90 ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph97 ], [ %indvars.iv.next, %.loopexit90 ] ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv110 ; 4 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 3 uses
  %i.l = icmp samesign ult i64 %indvars.iv.next111, %i.i
  br i1 %i.l, label %.lr.ph95, label %.loopexit90

.lr.ph95:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.c

.loopexit89:                                      ; preds = %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit.1, %bb.c
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %exitcond109.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count113
  br i1 %exitcond109.not, label %.loopexit90, label %bb.c, !llvm.loop !30

bb.c:                                             ; preds = %.lr.ph95, %.loopexit89
  %indvars.iv106 = phi i64 [ %indvars.iv104, %.lr.ph95 ], [ %indvars.iv.next107, %.loopexit89 ] ; 2 uses
  %indvars.iv99 = phi i64 [ %indvars.iv, %.lr.ph95 ], [ %indvars.iv.next100, %.loopexit89 ] ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv106 ; 2 uses
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 3 uses
  %i.q = trunc nuw i64 %indvars.iv.next107 to i32
  %i.r = icmp sgt i32 %i.b, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit89

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit.1
  %indvars.iv101 = phi i64 [ %indvars.iv99, %.lr.ph ], [ %indvars.iv.next102, %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit.1 ] ; 2 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv101 ; 2 uses
  %i.v = load float, ptr %i.p, align 4, !tbaa !21
  %i.w = load float, ptr %i.k, align 4, !tbaa !21 ; 2 uses
  %i.x = load float, ptr %i.u, align 4, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = load <2 x float>, ptr %i.s, align 4, !tbaa !21 ; 2 uses
  %i.aa = load <2 x float>, ptr %i.m, align 4, !tbaa !21 ; 5 uses
  %i.ab = fsub <2 x float> %i.z, %i.aa            ; 2 uses
  %i.ac = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ad = insertelement <2 x float> %i.ac, float %i.v, i64 1
  %i.ae = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.af = insertelement <2 x float> %i.ae, float %i.w, i64 1 ; 2 uses
  %i.ag = fsub <2 x float> %i.ad, %i.af           ; 2 uses
  %i.ah = load <2 x float>, ptr %i.y, align 4, !tbaa !21 ; 2 uses
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = insertelement <2 x float> %i.ai, float %i.x, i64 1
  %i.ak = fsub <2 x float> %i.aj, %i.af           ; 2 uses
  %i.al = fsub <2 x float> %i.ah, %i.aa           ; 2 uses
  %i.am = fneg <2 x float> %i.al
  %i.an = fmul <2 x float> %i.ag, %i.am
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ak, <2 x float> %i.an) ; 4 uses
  %i.ap = extractelement <2 x float> %i.ak, i64 1
  %i.aq = fneg float %i.ap
  %i.ar = extractelement <2 x float> %i.ab, i64 0
  %i.as = fmul float %i.ar, %i.aq
  %i.at = extractelement <2 x float> %i.ag, i64 1
  %i.au = extractelement <2 x float> %i.al, i64 0
  %i.av = tail call float @llvm.fmuladd.f32(float %i.at, float %i.au, float %i.as) ; 6 uses
  %i.aw = extractelement <2 x float> %i.ao, i64 1 ; 4 uses
  %i.ax = fmul float %i.aw, %i.aw
  %i.ay = extractelement <2 x float> %i.ao, i64 0 ; 4 uses
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.ax)
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.az) ; 2 uses
  %i.bb = fcmp ogt float %i.ba, f0x38D1B717
  br i1 %i.bb, label %bb.e, label %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit

bb.e:                                             ; preds = %bb.d
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ba)
  %i.bc = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.bd = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.ao, %i.be           ; 5 uses
  %i.bg = fmul float %i.av, %i.bc                 ; 4 uses
  %.sroa.16.8.vec.insert = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bh = load i32, ptr %i.e, align 4, !tbaa !18  ; 9 uses
  %.not14.i = icmp slt i32 %i.bh, 1
  br i1 %.not14.i, label %.loopexit88, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !19
  %wide.trip.count.i = zext nneg i32 %i.bh to i64
  %i.bj = extractelement <2 x float> %i.bf, i64 0
  %i.bk = extractelement <2 x float> %i.bf, i64 1
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit88, label %bb.g, !llvm.loop !2

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %indvars.iv.i ; 3 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !21
  %i.bp = fmul float %i.bk, %i.bo
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bm, float %i.bp)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bs = load float, ptr %i.br, align 4, !tbaa !21
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.bs, float %i.bq)
  %i.bu = fcmp ule float %i.bt, 9.990000e-01
  br i1 %i.bu, label %bb.f, label %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit

.loopexit88:                                      ; preds = %bb.f, %bb.e
  %i.bv = extractelement <2 x float> %i.aa, i64 0
  %i.bw = extractelement <2 x float> %i.bf, i64 1 ; 2 uses
  %i.bx = fmul float %i.bw, %i.bv
  %i.by = extractelement <2 x float> %i.bf, i64 0 ; 2 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.w, float %i.bx)
  %i.ca = extractelement <2 x float> %i.aa, i64 1
  %i.cb = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.ca, float %i.bz) ; 2 uses
  %i.cc = fneg float %i.cb
  %.sroa.16.12.vec.insert = insertelement <2 x float> %.sroa.16.8.vec.insert, float %i.cc, i64 1
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !18  ; 2 uses
  %.not17.i = icmp slt i32 %i.cd, 1
  br i1 %.not17.i, label %.loopexit, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.loopexit88
  %wide.trip.count.i46 = zext nneg i32 %i.cd to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %wide.trip.count.i46
  br i1 %exitcond.not.i50, label %.loopexit, label %bb.i, !llvm.loop !1

bb.i:                                             ; preds = %bb.h, %.lr.ph.i45
  %indvars.iv.i47 = phi i64 [ 0, %.lr.ph.i45 ], [ %indvars.iv.next.i49, %bb.h ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv.i47 ; 3 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !21
  %i.ci = fmul float %i.bw, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.by, float %i.cf, float %i.ci)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !21
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.cl, float %i.cj)
  %i.cn = fsub float %i.cm, %i.cb
  %i.co = fcmp ule float %i.cn, f0x3C23D70A
  br i1 %i.co, label %bb.h, label %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit

.loopexit:                                        ; preds = %bb.h, %.loopexit88
  %i.cp = load i32, ptr %i.g, align 8, !tbaa !23
  %i.cq = icmp eq i32 %i.bh, %i.cp
  br i1 %i.cq, label %bb.j, label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit

bb.j:                                             ; preds = %.loopexit
  %.not.i.i = icmp eq i32 %i.bh, 0
  %i.cr = shl nsw i32 %i.bh, 1
  %i.cs = select i1 %.not.i.i, i32 1, i32 %i.cr   ; 4 uses
  %i.ct = icmp slt i32 %i.bh, %i.cs
  br i1 %i.ct, label %bb.k, label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = sext i32 %i.cs to i64
  %i.cv = shl nsw i64 %i.cu, 4
  %i.cw = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cv, i32 noundef 16)
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.l, %bb.k
  %i.cx = phi i32 [ %.pre.i, %bb.l ], [ %i.bh, %bb.k ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.cw, %bb.l ], [ null, %bb.k ] ; 4 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.cx to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.cz = icmp eq i32 %i.cx, 1
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1137, %bb.m ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.m ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.da, ptr noundef nonnull align 4 dereferenceable(16) %i.dc, i64 16, i1 false), !tbaa.struct !25
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dd, ptr noundef nonnull align 4 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !25
  %indvars.iv.next.i.i.i.1137 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.m, !llvm.loop !3

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1137, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod135 = trunc i32 %i.cx to i1
  tail call void @llvm.assume(i1 %lcmp.mod135)
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.dh = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dg, ptr noundef nonnull align 4 dereferenceable(16) %i.di, i64 16, i1 false), !tbaa.struct !25
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.dj = load ptr, ptr %i.f, align 8, !tbaa !19  ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.dk = load i8, ptr %i.h, align 8, !tbaa !26, !range !27, !noundef !28
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.o, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dj)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.o, %bb.n, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.h, align 8, !tbaa !26
  store ptr %.0.i.i.i, ptr %i.f, align 8, !tbaa !19
  store i32 %i.cs, ptr %i.g, align 8, !tbaa !23
  %.pre2.i = load i32, ptr %i.e, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit: ; preds = %.loopexit, %bb.j, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i
  %i.dm = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i ], [ %i.bh, %bb.j ], [ %i.bh, %.loopexit ]
  %i.dn = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.do = sext i32 %i.dm to i64
  %i.dp = getelementptr inbounds [16 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  store <2 x float> %i.bf, ptr %i.dp, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store <2 x float> %.sroa.16.12.vec.insert, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !24
  %i.dq = load i32, ptr %i.e, align 4, !tbaa !18
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.e, align 4, !tbaa !18
  br label %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit

_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit: ; preds = %bb.g, %bb.i, %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit, %bb.d
  %i.ds = fmul float %i.aw, %i.aw
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.ds)
  %i.du = tail call float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.dt) ; 2 uses
  %i.dv = fcmp ogt float %i.du, f0x38D1B717
  br i1 %i.dv, label %bb.p, label %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit.1

bb.p:                                             ; preds = %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit
  %i.dw = fneg float %i.av
  %i.dx = fneg <2 x float> %i.ao
  %sqrt.i.i.1 = tail call noundef float @llvm.sqrt.f32(float %i.du)
  %i.dy = fdiv float 1.000000e+00, %sqrt.i.i.1    ; 2 uses
  %i.dz = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.ea, %i.dx           ; 5 uses
  %i.ec = fmul float %i.dy, %i.dw                 ; 4 uses
  %.sroa.16.8.vec.insert.1 = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ed = load i32, ptr %i.e, align 4, !tbaa !18  ; 9 uses
  %.not14.i.1 = icmp slt i32 %i.ed, 1
  br i1 %.not14.i.1, label %.loopexit88.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.p
  %i.ee = load ptr, ptr %i.f, align 8, !tbaa !19
  %wide.trip.count.i.1 = zext nneg i32 %i.ed to i64
  %i.ef = extractelement <2 x float> %i.eb, i64 0
  %i.eg = extractelement <2 x float> %i.eb, i64 1
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i.1
  %indvars.iv.i.1 = phi i64 [ 0, %.lr.ph.i.1 ], [ %indvars.iv.next.i.1, %bb.r ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %indvars.iv.i.1 ; 3 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !21
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !21
  %i.el = fmul float %i.eg, %i.ek
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.ei, float %i.el)
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.eo = load float, ptr %i.en, align 4, !tbaa !21
  %i.ep = tail call noundef float @llvm.fmuladd.f32(float %i.ec, float %i.eo, float %i.em)
  %i.eq = fcmp ule float %i.ep, 9.990000e-01
  br i1 %i.eq, label %bb.r, label %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit.1

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i.1
  br i1 %exitcond.not.i.1, label %.loopexit88.1, label %bb.q, !llvm.loop !2

.loopexit88.1:                                    ; preds = %bb.r, %bb.p
  %i.er = load float, ptr %i.k, align 4, !tbaa !21
  %i.es = load float, ptr %i.m, align 4, !tbaa !21
  %i.et = extractelement <2 x float> %i.eb, i64 1 ; 2 uses
  %i.eu = fmul float %i.et, %i.es
  %i.ev = extractelement <2 x float> %i.eb, i64 0 ; 2 uses
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.er, float %i.eu)
  %i.ex = load float, ptr %i.n, align 4, !tbaa !21
  %i.ey = tail call noundef float @llvm.fmuladd.f32(float %i.ec, float %i.ex, float %i.ew) ; 2 uses
  %i.ez = fneg float %i.ey
  %.sroa.16.12.vec.insert.1 = insertelement <2 x float> %.sroa.16.8.vec.insert.1, float %i.ez, i64 1
  %i.fa = load i32, ptr %i.a, align 4, !tbaa !18  ; 2 uses
  %.not17.i.1 = icmp slt i32 %i.fa, 1
  br i1 %.not17.i.1, label %.loopexit.1, label %.lr.ph.i45.1

.lr.ph.i45.1:                                     ; preds = %.loopexit88.1
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !19
  %wide.trip.count.i46.1 = zext nneg i32 %i.fa to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i45.1
  %indvars.iv.i47.1 = phi i64 [ 0, %.lr.ph.i45.1 ], [ %indvars.iv.next.i49.1, %bb.t ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %indvars.iv.i47.1 ; 3 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !21
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !21
  %i.fg = fmul float %i.et, %i.ff
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.fd, float %i.fg)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !21
  %i.fk = tail call noundef float @llvm.fmuladd.f32(float %i.ec, float %i.fj, float %i.fh)
  %i.fl = fsub float %i.fk, %i.ey
  %i.fm = fcmp ule float %i.fl, f0x3C23D70A
  br i1 %i.fm, label %bb.t, label %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit.1

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.i49.1 = add nuw nsw i64 %indvars.iv.i47.1, 1 ; 2 uses
  %exitcond.not.i50.1 = icmp eq i64 %indvars.iv.next.i49.1, %wide.trip.count.i46.1
  br i1 %exitcond.not.i50.1, label %.loopexit.1, label %bb.s, !llvm.loop !1

.loopexit.1:                                      ; preds = %bb.t, %.loopexit88.1
  %i.fn = load i32, ptr %i.g, align 8, !tbaa !23
  %i.fo = icmp eq i32 %i.ed, %i.fn
  br i1 %i.fo, label %bb.u, label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit.1

bb.u:                                             ; preds = %.loopexit.1
  %.not.i.i.1 = icmp eq i32 %i.ed, 0
  %i.fp = shl nsw i32 %i.ed, 1
  %i.fq = select i1 %.not.i.i.1, i32 1, i32 %i.fp ; 4 uses
  %i.fr = icmp slt i32 %i.ed, %i.fq
  br i1 %i.fr, label %bb.v, label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit.1

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i.1 = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i.i.1, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.1, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fs = sext i32 %i.fq to i64
  %i.ft = shl nsw i64 %i.fs, 4
  %i.fu = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ft, i32 noundef 16)
  %.pre.i.1 = load i32, ptr %i.e, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.1

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.1: ; preds = %bb.w, %bb.v
  %i.fv = phi i32 [ %.pre.i.1, %bb.w ], [ %i.ed, %bb.v ] ; 4 uses
  %.0.i.i.i.1 = phi ptr [ %i.fu, %bb.w ], [ null, %bb.v ] ; 4 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.i.i.i.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.1
  %wide.trip.count.i.i.i.1 = zext nneg i32 %i.fv to i64 ; 2 uses
  %xtraiter140 = and i64 %wide.trip.count.i.i.i.1, 1
  %i.fx = icmp eq i32 %i.fv, 1
  br i1 %i.fx, label %.epil.preheader139, label %.lr.ph.i.i.i.1.new

.lr.ph.i.i.i.1.new:                               ; preds = %.lr.ph.i.i.i.1
  %unroll_iter143 = and i64 %wide.trip.count.i.i.i.1, 2147483646
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.i.i.1.new
  %indvars.iv.i.i.i.1 = phi i64 [ 0, %.lr.ph.i.i.i.1.new ], [ %indvars.iv.next.i.i.i.1.1, %bb.x ] ; 4 uses
  %niter144 = phi i64 [ 0, %.lr.ph.i.i.i.1.new ], [ %niter144.next.1, %bb.x ]
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.1, i64 %indvars.iv.i.i.i.1
  %i.fz = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %indvars.iv.i.i.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fy, ptr noundef nonnull align 4 dereferenceable(16) %i.ga, i64 16, i1 false), !tbaa.struct !25
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i.1, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.1, i64 %indvars.iv.next.i.i.i.1
  %i.gc = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %indvars.iv.next.i.i.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gb, ptr noundef nonnull align 4 dereferenceable(16) %i.gd, i64 16, i1 false), !tbaa.struct !25
  %indvars.iv.next.i.i.i.1.1 = add nuw nsw i64 %indvars.iv.i.i.i.1, 2 ; 2 uses
  %niter144.next.1 = add i64 %niter144, 2         ; 2 uses
  %niter144.ncmp.1 = icmp eq i64 %niter144.next.1, %unroll_iter143
  br i1 %niter144.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa, label %bb.x, !llvm.loop !3

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa: ; preds = %bb.x
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  br i1 %lcmp.mod141.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1, label %.epil.preheader139

.epil.preheader139:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa, %.lr.ph.i.i.i.1
  %indvars.iv.i.i.i.1.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.1 ], [ %indvars.iv.next.i.i.i.1.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod142 = trunc i32 %i.fv to i1
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.1, i64 %indvars.iv.i.i.i.1.epil.init
  %i.gf = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %indvars.iv.i.i.i.1.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ge, ptr noundef nonnull align 4 dereferenceable(16) %i.gg, i64 16, i1 false), !tbaa.struct !25
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1: ; preds = %.epil.preheader139, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.1
  %i.gh = load ptr, ptr %i.f, align 8, !tbaa !19  ; 2 uses
  %.not.i5.i.i.1 = icmp eq ptr %i.gh, null
  br i1 %.not.i5.i.i.1, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.1, label %bb.y

bb.y:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1
  %i.gi = load i8, ptr %i.h, align 8, !tbaa !26, !range !27, !noundef !28
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.z, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.1

bb.z:                                             ; preds = %bb.y
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gh)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.1

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.1: ; preds = %bb.z, %bb.y, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1
  store i8 1, ptr %i.h, align 8, !tbaa !26
  store ptr %.0.i.i.i.1, ptr %i.f, align 8, !tbaa !19
  store i32 %i.fq, ptr %i.g, align 8, !tbaa !23
  %.pre2.i.1 = load i32, ptr %i.e, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit.1

_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit.1: ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.1, %bb.u, %.loopexit.1
  %i.gk = phi i32 [ %.pre2.i.1, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.1 ], [ %i.ed, %bb.u ], [ %i.ed, %.loopexit.1 ]
  %i.gl = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.gm = sext i32 %i.gk to i64
  %i.gn = getelementptr inbounds [16 x i8], ptr %i.gl, i64 %i.gm ; 2 uses
  store <2 x float> %i.eb, ptr %i.gn, align 4
  %.sroa.16.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store <2 x float> %.sroa.16.12.vec.insert.1, ptr %.sroa.16.0..sroa_idx.1, align 4, !tbaa !24
  %i.go = load i32, ptr %i.e, align 4, !tbaa !18
  %i.gp = add nsw i32 %i.go, 1
  store i32 %i.gp, ptr %i.e, align 4, !tbaa !18
  br label %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit.1

_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit.1: ; preds = %bb.q, %bb.s, %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit.1, %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next102 to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit89, label %bb.d, !llvm.loop !31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14btGeometryUtil29getVerticesFromPlaneEquationsERK20btAlignedObjectArrayI9btVector3ERS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph128, label %._crit_edge

.lr.ph128:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN14btGeometryUtil29getVerticesFromPlaneEquationsERK20btAlignedObjectArrayI9btVector3ERS2_:bb.a

bb.e:                                             ; preds = %bb.d
  %foldExtExtBinop = fmul <4 x float> %i.be, %i.be
  %i.bw = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.bx = extractelement <4 x float> %i.be, i64 0 ; 2 uses
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bw)
  %i.bz = extractelement <4 x float> %i.be, i64 2 ; 2 uses
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.by)
  %i.cb = fcmp ogt float %i.ca, f0x38D1B717
  br i1 %i.cb, label %bb.f, label %_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit

bb.f:                                             ; preds = %bb.e
  %foldExtExtBinop151 = fmul <4 x float> %i.bp, %i.bp
  %i.cc = extractelement <4 x float> %foldExtExtBinop151, i64 1
  %i.cd = extractelement <4 x float> %i.bp, i64 0 ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.cc)
  %i.cf = extractelement <4 x float> %i.bp, i64 2 ; 2 uses
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.ce)
  %i.ch = fcmp ogt float %i.cg, f0x38D1B717
  br i1 %i.ch, label %bb.g, label %_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit

bb.g:                                             ; preds = %bb.f
  %i.ci = extractelement <2 x float> %i.aq, i64 0
  %i.cj = fmul float %i.ci, %i.bq
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.bs, float %i.cj)
  %i.cl = extractelement <2 x float> %i.aq, i64 1
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.ap, float %i.ck) ; 2 uses
  %i.cn = tail call noundef float @llvm.fabs.f32(float %i.cm)
  %i.co = fcmp ogt float %i.cn, f0x358637BD
  br i1 %i.co, label %bb.h, label %_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit

bb.h:                                             ; preds = %bb.g
  %i.cp = load float, ptr %i.n, align 4, !tbaa !21
  %i.cq = load float, ptr %i.t, align 4, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !21
  %i.ct = fdiv nnan float -1.000000e+00, %i.cm
  %i.cu = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.cp, i64 0
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cw = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = insertelement <4 x float> %i.cw, float 1.000000e+00, i64 3
  %i.cy = insertelement <4 x float> %i.cx, float %i.ap, i64 2
  %i.cz = fmul <4 x float> %i.cv, %i.cy
  %i.da = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.cq, i64 0
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dc = fmul <4 x float> %i.db, %i.be
  %i.dd = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.cs, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.df = fmul <4 x float> %i.de, %i.bp
  %i.dg = fadd <4 x float> %i.cz, %i.dc
  %i.dh = fadd <4 x float> %i.df, %i.dg
  %i.di = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ct, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dk = fmul <4 x float> %i.dj, %i.dh           ; 4 uses
  %i.dl = load i32, ptr %i.a, align 4, !tbaa !18  ; 2 uses
  %.not17.i = icmp slt i32 %i.dl, 1
  br i1 %.not17.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %wide.trip.count.i = zext nneg i32 %i.dl to i64
  %i.dm = extractelement <4 x float> %i.dk, i64 0
  %i.dn = extractelement <4 x float> %i.dk, i64 1
  %i.do = extractelement <4 x float> %i.dk, i64 2
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.j, !llvm.loop !0

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.i ; 4 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !21
  %i.dt = fmul float %i.dn, %i.ds
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dm, float %i.dt)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !21
  %i.dx = tail call noundef float @llvm.fmuladd.f32(float %i.dw, float %i.do, float %i.du)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !21
  %i.ea = fadd float %i.dz, %i.dx
  %i.eb = fcmp ule float %i.ea, f0x3C23D70A
  br i1 %i.eb, label %bb.i, label %_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit

.loopexit:                                        ; preds = %bb.i, %bb.h
  %i.ec = load i32, ptr %i.e, align 4, !tbaa !18  ; 7 uses
  %i.ed = load i32, ptr %i.f, align 8, !tbaa !23
  %i.ee = icmp eq i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.k, label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit

bb.k:                                             ; preds = %.loopexit
  %.not.i.i = icmp eq i32 %i.ec, 0
  %i.ef = shl nsw i32 %i.ec, 1
  %i.eg = select i1 %.not.i.i, i32 1, i32 %i.ef   ; 4 uses
  %i.eh = icmp slt i32 %i.ec, %i.eg
  br i1 %i.eh, label %bb.l, label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ei = sext i32 %i.eg to i64
  %i.ej = shl nsw i64 %i.ei, 4
  %i.ek = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ej, i32 noundef 16)
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.m, %bb.l
  %i.el = phi i32 [ %.pre.i, %bb.m ], [ %i.ec, %bb.l ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.ek, %bb.m ], [ null, %bb.l ] ; 4 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.el to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.en = icmp eq i32 %i.el, 1
  br i1 %i.en, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.n ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.n ]
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ep = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.eo, ptr noundef nonnull align 4 dereferenceable(16) %i.eq, i64 16, i1 false), !tbaa.struct !25
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.es = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.er, ptr noundef nonnull align 4 dereferenceable(16) %i.et, i64 16, i1 false), !tbaa.struct !25
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.n, !llvm.loop !3

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod153 = trunc i32 %i.el to i1
  tail call void @llvm.assume(i1 %lcmp.mod153)
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.ev = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.eu, ptr noundef nonnull align 4 dereferenceable(16) %i.ew, i64 16, i1 false), !tbaa.struct !25
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.ex = load ptr, ptr %i.g, align 8, !tbaa !19  ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.ey = load i8, ptr %i.h, align 8, !tbaa !26, !range !27, !noundef !28
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.p, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ex)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.p, %bb.o, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.h, align 8, !tbaa !26
  store ptr %.0.i.i.i, ptr %i.g, align 8, !tbaa !19
  store i32 %i.eg, ptr %i.f, align 8, !tbaa !23
  %.pre2.i = load i32, ptr %i.e, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit: ; preds = %.loopexit, %bb.k, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i
  %i.fa = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i ], [ %i.ec, %bb.k ], [ %i.ec, %.loopexit ]
  %i.fb = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.fc = sext i32 %i.fa to i64
  %i.fd = getelementptr inbounds [16 x i8], ptr %i.fb, i64 %i.fc
  store <4 x float> %i.dk, ptr %i.fd, align 4
  %i.fe = load i32, ptr %i.e, align 4, !tbaa !18
  %i.ff = add nsw i32 %i.fe, 1
  store i32 %i.ff, ptr %i.e, align 4, !tbaa !18
  br label %_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit

_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit: ; preds = %bb.j, %bb.g, %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit, %bb.f, %bb.e, %bb.d
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next132 to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit122, label %bb.d, !llvm.loop !34
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #5

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = distinct !{!3, !22}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTS9btVector3", !14, i64 0}
!16 = !{!"bool", !9, i64 0}
!17 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !13, i64 0, !10, i64 4, !10, i64 8, !15, i64 16, !16, i64 24}
!18 = !{!17, !10, i64 4}
!19 = !{!17, !15, i64 16}
!20 = !{!"float", !9, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!17, !10, i64 8}
!24 = !{!9, !9, i64 0}
!25 = !{i64 0, i64 16, !24}
!26 = !{!17, !16, i64 24}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
end_hunk_1
