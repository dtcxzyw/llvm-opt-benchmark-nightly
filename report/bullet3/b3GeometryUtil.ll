inline.NumInlined: 78
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"b3Error[%s,%d]:\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3Common/b3AlignedObjectArray.h\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"b3AlignedObjectArray reserve out-of-memory\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @b3BulletMathProbe() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not17 = icmp slt i32 %i.b, 1
  br i1 %.not17, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = load float, ptr %1, align 16, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load float, ptr %i.h, align 8, !tbaa !16
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 4 uses
  %i.k = load float, ptr %i.j, align 16, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !16
  %i.n = fmul float %i.m, %i.g
  %i.o = tail call float @llvm.fmuladd.f32(float %i.k, float %i.e, float %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load float, ptr %i.p, align 8, !tbaa !16
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.i, float %i.o)
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.t = load float, ptr %i.s, align 4, !tbaa !17
  %i.u = fadd float %i.r, %i.t
  %i.v = fcmp ule float %i.u, %2                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.v, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.v, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN14b3GeometryUtil22areVerticesBehindPlaneERK9b3Vector3RK20b3AlignedObjectArrayIS0_Ef(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, float noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not17 = icmp slt i32 %i.b, 1
  br i1 %.not17, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = load float, ptr %0, align 16, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load float, ptr %i.h, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load float, ptr %i.j, align 4, !tbaa !17
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.m = load float, ptr %i.l, align 16, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !16
  %i.p = fmul float %i.g, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.e, float %i.m, float %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load float, ptr %i.r, align 8, !tbaa !16
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.s, float %i.q)
  %i.u = fadd float %i.t, %i.k
  %i.v = fcmp ule float %i.u, %2                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.v, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %.critedge, !llvm.loop !21

.critedge:                                        ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.v, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not14 = icmp slt i32 %i.b, 1
  br i1 %.not14, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = load float, ptr %0, align 16, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load float, ptr %i.h, align 8, !tbaa !16
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.k = load float, ptr %i.j, align 16, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !16
  %i.n = fmul float %i.g, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.e, float %i.k, float %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load float, ptr %i.p, align 8, !tbaa !16
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.q, float %i.o)
  %i.s = fcmp ule float %i.r, 9.990000e-01        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.s, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %.critedge, !llvm.loop !22

.critedge:                                        ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.s, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14b3GeometryUtil29getPlaneEquationsFromVerticesER20b3AlignedObjectArrayI9b3Vector3ES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph97, label %._crit_edge

.lr.ph97:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.i = zext nneg i32 %i.b to i64
  %wide.trip.count113 = zext nneg i32 %i.b to i64 ; 3 uses
  br label %bb.b

.loopexit90:                                      ; preds = %.loopexit89, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %.loopexit90, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph97, %.loopexit90
  %indvars.iv110 = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next111, %.loopexit90 ] ; 2 uses
  %indvars.iv104 = phi i64 [ 1, %.lr.ph97 ], [ %indvars.iv.next105, %.loopexit90 ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph97 ], [ %indvars.iv.next, %.loopexit90 ] ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv110 ; 4 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 3 uses
  %i.l = icmp samesign ult i64 %indvars.iv.next111, %i.i
  br i1 %i.l, label %.lr.ph95, label %.loopexit90

.lr.ph95:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.c

.loopexit89:                                      ; preds = %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit.1, %bb.c
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %exitcond109.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count113
  br i1 %exitcond109.not, label %.loopexit90, label %bb.c, !llvm.loop !24

bb.c:                                             ; preds = %.lr.ph95, %.loopexit89
  %indvars.iv106 = phi i64 [ %indvars.iv104, %.lr.ph95 ], [ %indvars.iv.next107, %.loopexit89 ] ; 2 uses
  %indvars.iv99 = phi i64 [ %indvars.iv, %.lr.ph95 ], [ %indvars.iv.next100, %.loopexit89 ] ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv106 ; 2 uses
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 3 uses
  %i.q = trunc nuw i64 %indvars.iv.next107 to i32
  %i.r = icmp sgt i32 %i.b, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit89

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit.1
  %indvars.iv101 = phi i64 [ %indvars.iv99, %.lr.ph ], [ %indvars.iv.next102, %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit.1 ] ; 2 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv101 ; 2 uses
  %i.v = load float, ptr %i.p, align 16, !tbaa !16
  %i.w = load float, ptr %i.k, align 16, !tbaa !16 ; 2 uses
  %i.x = load float, ptr %i.u, align 16, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = load <2 x float>, ptr %i.s, align 4, !tbaa !16 ; 2 uses
  %i.aa = load <2 x float>, ptr %i.m, align 4, !tbaa !16 ; 5 uses
  %i.ab = fsub <2 x float> %i.z, %i.aa            ; 2 uses
  %i.ac = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ad = insertelement <2 x float> %i.ac, float %i.v, i64 1
  %i.ae = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.af = insertelement <2 x float> %i.ae, float %i.w, i64 1 ; 2 uses
  %i.ag = fsub <2 x float> %i.ad, %i.af           ; 2 uses
  %i.ah = load <2 x float>, ptr %i.y, align 4, !tbaa !16 ; 2 uses
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
  br i1 %i.bb, label %bb.e, label %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit

bb.e:                                             ; preds = %bb.d
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ba)
  %i.bc = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.bd = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.ao, %i.be           ; 5 uses
  %i.bg = fmul float %i.av, %i.bc                 ; 4 uses
  %.sroa.16.8.vec.insert = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bh = load i32, ptr %i.e, align 4, !tbaa !9   ; 8 uses
  %.not14.i = icmp slt i32 %i.bh, 1
  br i1 %.not14.i, label %.loopexit88, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !15
  %wide.trip.count.i = zext nneg i32 %i.bh to i64
  %i.bj = extractelement <2 x float> %i.bf, i64 0
  %i.bk = extractelement <2 x float> %i.bf, i64 1
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit88, label %bb.g, !llvm.loop !22

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %indvars.iv.i ; 3 uses
  %i.bm = load float, ptr %i.bl, align 16, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !16
  %i.bp = fmul float %i.bk, %i.bo
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bm, float %i.bp)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bs = load float, ptr %i.br, align 8, !tbaa !16
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.bs, float %i.bq)
  %i.bu = fcmp ule float %i.bt, 9.990000e-01
  br i1 %i.bu, label %bb.f, label %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit

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
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %.not17.i = icmp slt i32 %i.cd, 1
  br i1 %.not17.i, label %.loopexit, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.loopexit88
  %wide.trip.count.i46 = zext nneg i32 %i.cd to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %wide.trip.count.i46
  br i1 %exitcond.not.i50, label %.loopexit, label %bb.i, !llvm.loop !21

bb.i:                                             ; preds = %bb.h, %.lr.ph.i45
  %indvars.iv.i47 = phi i64 [ 0, %.lr.ph.i45 ], [ %indvars.iv.next.i49, %bb.h ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv.i47 ; 3 uses
  %i.cf = load float, ptr %i.ce, align 16, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !16
  %i.ci = fmul float %i.bw, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.by, float %i.cf, float %i.ci)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !16
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.cl, float %i.cj)
  %i.cn = fsub float %i.cm, %i.cb
  %i.co = fcmp ule float %i.cn, f0x3C23D70A
  br i1 %i.co, label %bb.h, label %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit

.loopexit:                                        ; preds = %bb.h, %.loopexit88
  %i.cp = load i32, ptr %i.g, align 8, !tbaa !25
  %i.cq = icmp eq i32 %i.bh, %i.cp
  br i1 %i.cq, label %bb.j, label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit

bb.j:                                             ; preds = %.loopexit
  %.not.i.i = icmp eq i32 %i.bh, 0
  %i.cr = shl nsw i32 %i.bh, 1
  %i.cs = select i1 %.not.i.i, i32 1, i32 %i.cr   ; 6 uses
  %i.ct = icmp slt i32 %i.bh, %i.cs
  br i1 %i.ct, label %bb.k, label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i: ; preds = %bb.k
  %i.cu = sext i32 %i.cs to i64
  %i.cv = shl nsw i64 %i.cu, 4
  %i.cw = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.cv, i32 noundef 16) ; 7 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i
  %i.cy = load i32, ptr %i.e, align 4, !tbaa !9   ; 4 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.cy to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.da = icmp eq i32 %i.cy, 1
  br i1 %i.da, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1138, %bb.l ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.l ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv.i.i.i
  %i.dc = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.db, ptr noundef nonnull align 16 dereferenceable(16) %i.dd, i64 16, i1 false), !tbaa.struct !26
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv.next.i.i.i
  %i.df = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.de, ptr noundef nonnull align 16 dereferenceable(16) %i.dg, i64 16, i1 false), !tbaa.struct !26
  %indvars.iv.next.i.i.i.1138 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.l, !llvm.loop !27

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i, %bb.k
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
  store i32 0, ptr %i.e, align 4, !tbaa !9
  br label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1138, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod136 = trunc i32 %i.cy to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv.i.i.i.epil.init
  %i.di = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dh, ptr noundef nonnull align 16 dereferenceable(16) %i.dj, i64 16, i1 false), !tbaa.struct !26
  br label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.cw, %.split.i.i ], [ %i.cw, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.cw, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.cs, %.split.i.i ], [ %i.cs, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.cs, %.epil.preheader ]
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i
  %i.dl = load i8, ptr %i.h, align 8, !tbaa !28, !range !29, !noundef !30
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.n, label %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.dk)
  br label %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i: ; preds = %bb.n, %bb.m, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.h, align 8, !tbaa !28
  store ptr %.0.i12.i.i, ptr %i.f, align 8, !tbaa !15
  store i32 %.0.i.i, ptr %i.g, align 8, !tbaa !25
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !9
  br label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit

_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit: ; preds = %.loopexit, %bb.j, %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i
  %i.dn = phi i32 [ %.pre.i, %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i ], [ %i.bh, %bb.j ], [ %i.bh, %.loopexit ]
  %i.do = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.dp = sext i32 %i.dn to i64
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.do, i64 %i.dp ; 2 uses
  store <2 x float> %i.bf, ptr %i.dq, align 16
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store <2 x float> %.sroa.16.12.vec.insert, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !16
  %i.dr = load i32, ptr %i.e, align 4, !tbaa !9
  %i.ds = add nsw i32 %i.dr, 1
  store i32 %i.ds, ptr %i.e, align 4, !tbaa !9
  br label %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit

_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit: ; preds = %bb.g, %bb.i, %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit, %bb.d
  %i.dt = fmul float %i.aw, %i.aw
  %i.du = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.dt)
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.du) ; 2 uses
  %i.dw = fcmp ogt float %i.dv, f0x38D1B717
  br i1 %i.dw, label %bb.o, label %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit.1

bb.o:                                             ; preds = %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit
  %i.dx = fneg float %i.av
  %i.dy = fneg <2 x float> %i.ao
  %sqrt.i.i.1 = tail call noundef float @llvm.sqrt.f32(float %i.dv)
  %i.dz = fdiv float 1.000000e+00, %sqrt.i.i.1    ; 2 uses
  %i.ea = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x float> %i.eb, %i.dy           ; 5 uses
  %i.ed = fmul float %i.dz, %i.dx                 ; 4 uses
  %.sroa.16.8.vec.insert.1 = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ee = load i32, ptr %i.e, align 4, !tbaa !9   ; 8 uses
  %.not14.i.1 = icmp slt i32 %i.ee, 1
  br i1 %.not14.i.1, label %.loopexit88.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.o
  %i.ef = load ptr, ptr %i.f, align 8, !tbaa !15
  %wide.trip.count.i.1 = zext nneg i32 %i.ee to i64
  %i.eg = extractelement <2 x float> %i.ec, i64 0
  %i.eh = extractelement <2 x float> %i.ec, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.1
  %indvars.iv.i.1 = phi i64 [ 0, %.lr.ph.i.1 ], [ %indvars.iv.next.i.1, %bb.q ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.i.1 ; 3 uses
  %i.ej = load float, ptr %i.ei, align 16, !tbaa !16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.el = load float, ptr %i.ek, align 4, !tbaa !16
  %i.em = fmul float %i.eh, %i.el
  %i.en = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.ej, float %i.em)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !16
  %i.eq = tail call noundef float @llvm.fmuladd.f32(float %i.ed, float %i.ep, float %i.en)
  %i.er = fcmp ule float %i.eq, 9.990000e-01
  br i1 %i.er, label %bb.q, label %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit.1

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i.1
  br i1 %exitcond.not.i.1, label %.loopexit88.1, label %bb.p, !llvm.loop !22

.loopexit88.1:                                    ; preds = %bb.q, %bb.o
  %i.es = load float, ptr %i.k, align 16, !tbaa !16
  %i.et = load float, ptr %i.m, align 4, !tbaa !16
  %i.eu = extractelement <2 x float> %i.ec, i64 1 ; 2 uses
  %i.ev = fmul float %i.eu, %i.et
  %i.ew = extractelement <2 x float> %i.ec, i64 0 ; 2 uses
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.es, float %i.ev)
  %i.ey = load float, ptr %i.n, align 8, !tbaa !16
  %i.ez = tail call noundef float @llvm.fmuladd.f32(float %i.ed, float %i.ey, float %i.ex) ; 2 uses
  %i.fa = fneg float %i.ez
  %.sroa.16.12.vec.insert.1 = insertelement <2 x float> %.sroa.16.8.vec.insert.1, float %i.fa, i64 1
  %i.fb = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %.not17.i.1 = icmp slt i32 %i.fb, 1
  br i1 %.not17.i.1, label %.loopexit.1, label %.lr.ph.i45.1

.lr.ph.i45.1:                                     ; preds = %.loopexit88.1
  %i.fc = load ptr, ptr %i.d, align 8, !tbaa !15
  %wide.trip.count.i46.1 = zext nneg i32 %i.fb to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph.i45.1
  %indvars.iv.i47.1 = phi i64 [ 0, %.lr.ph.i45.1 ], [ %indvars.iv.next.i49.1, %bb.s ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %indvars.iv.i47.1 ; 3 uses
  %i.fe = load float, ptr %i.fd, align 16, !tbaa !16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !16
  %i.fh = fmul float %i.eu, %i.fg
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.fe, float %i.fh)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fk = load float, ptr %i.fj, align 8, !tbaa !16
  %i.fl = tail call noundef float @llvm.fmuladd.f32(float %i.ed, float %i.fk, float %i.fi)
  %i.fm = fsub float %i.fl, %i.ez
  %i.fn = fcmp ule float %i.fm, f0x3C23D70A
  br i1 %i.fn, label %bb.s, label %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit.1

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i49.1 = add nuw nsw i64 %indvars.iv.i47.1, 1 ; 2 uses
  %exitcond.not.i50.1 = icmp eq i64 %indvars.iv.next.i49.1, %wide.trip.count.i46.1
  br i1 %exitcond.not.i50.1, label %.loopexit.1, label %bb.r, !llvm.loop !21

.loopexit.1:                                      ; preds = %bb.s, %.loopexit88.1
  %i.fo = load i32, ptr %i.g, align 8, !tbaa !25
  %i.fp = icmp eq i32 %i.ee, %i.fo
  br i1 %i.fp, label %bb.t, label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit.1

bb.t:                                             ; preds = %.loopexit.1
  %.not.i.i.1 = icmp eq i32 %i.ee, 0
  %i.fq = shl nsw i32 %i.ee, 1
  %i.fr = select i1 %.not.i.i.1, i32 1, i32 %i.fq ; 6 uses
  %i.fs = icmp slt i32 %i.ee, %i.fr
  br i1 %i.fs, label %bb.u, label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit.1

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.1 = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i.i.1, label %.split7.i.i.1, label %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i.1

_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i.1: ; preds = %bb.u
  %i.ft = sext i32 %i.fr to i64
  %i.fu = shl nsw i64 %i.ft, 4
  %i.fv = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.fu, i32 noundef 16) ; 7 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %.split7.i.i.1, label %.split.i.i.1

.split.i.i.1:                                     ; preds = %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i.1
  %i.fx = load i32, ptr %i.e, align 4, !tbaa !9   ; 4 uses
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %.lr.ph.i.i.i.1, label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.split.i.i.1
  %wide.trip.count.i.i.i.1 = zext nneg i32 %i.fx to i64 ; 2 uses
  %xtraiter141 = and i64 %wide.trip.count.i.i.i.1, 1
  %i.fz = icmp eq i32 %i.fx, 1
  br i1 %i.fz, label %.epil.preheader140, label %.lr.ph.i.i.i.1.new

.lr.ph.i.i.i.1.new:                               ; preds = %.lr.ph.i.i.i.1
  %unroll_iter144 = and i64 %wide.trip.count.i.i.i.1, 2147483646
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i.i.i.1.new
  %indvars.iv.i.i.i.1 = phi i64 [ 0, %.lr.ph.i.i.i.1.new ], [ %indvars.iv.next.i.i.i.1.1, %bb.v ] ; 4 uses
  %niter145 = phi i64 [ 0, %.lr.ph.i.i.i.1.new ], [ %niter145.next.1, %bb.v ]
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %indvars.iv.i.i.i.1
  %i.gb = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %indvars.iv.i.i.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ga, ptr noundef nonnull align 16 dereferenceable(16) %i.gc, i64 16, i1 false), !tbaa.struct !26
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i.1, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %indvars.iv.next.i.i.i.1
  %i.ge = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.ge, i64 %indvars.iv.next.i.i.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gd, ptr noundef nonnull align 16 dereferenceable(16) %i.gf, i64 16, i1 false), !tbaa.struct !26
  %indvars.iv.next.i.i.i.1.1 = add nuw nsw i64 %indvars.iv.i.i.i.1, 2 ; 2 uses
  %niter145.next.1 = add nuw i64 %niter145, 2     ; 2 uses
  %niter145.ncmp.1 = icmp eq i64 %niter145.next.1, %unroll_iter144
  br i1 %niter145.ncmp.1, label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa, label %bb.v, !llvm.loop !27

.split7.i.i.1:                                    ; preds = %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i.1, %bb.u
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
  store i32 0, ptr %i.e, align 4, !tbaa !9
  br label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1

_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa: ; preds = %bb.v
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod142.not, label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1, label %.epil.preheader140

.epil.preheader140:                               ; preds = %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa, %.lr.ph.i.i.i.1
  %indvars.iv.i.i.i.1.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.1 ], [ %indvars.iv.next.i.i.i.1.1, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod143 = trunc i32 %i.fx to i1
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %indvars.iv.i.i.i.1.epil.init
  %i.gh = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %indvars.iv.i.i.i.1.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gg, ptr noundef nonnull align 16 dereferenceable(16) %i.gi, i64 16, i1 false), !tbaa.struct !26
  br label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1

_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1: ; preds = %.epil.preheader140, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa, %.split7.i.i.1, %.split.i.i.1
  %.0.i12.i.i.1 = phi ptr [ null, %.split7.i.i.1 ], [ %i.fv, %.split.i.i.1 ], [ %i.fv, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa ], [ %i.fv, %.epil.preheader140 ]
  %.0.i.i.1 = phi i32 [ 0, %.split7.i.i.1 ], [ %i.fr, %.split.i.i.1 ], [ %i.fr, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa ], [ %i.fr, %.epil.preheader140 ]
  %i.gj = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not.i10.i.i.1 = icmp eq ptr %i.gj, null
  br i1 %.not.i10.i.i.1, label %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i.1, label %bb.w

bb.w:                                             ; preds = %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1
  %i.gk = load i8, ptr %i.h, align 8, !tbaa !28, !range !29, !noundef !30
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.x, label %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i.1

bb.x:                                             ; preds = %bb.w
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.gj)
  br label %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i.1

_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i.1: ; preds = %bb.x, %bb.w, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1
  store i8 1, ptr %i.h, align 8, !tbaa !28
  store ptr %.0.i12.i.i.1, ptr %i.f, align 8, !tbaa !15
  store i32 %.0.i.i.1, ptr %i.g, align 8, !tbaa !25
  %.pre.i.1 = load i32, ptr %i.e, align 4, !tbaa !9
  br label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit.1

_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit.1: ; preds = %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i.1, %bb.t, %.loopexit.1
  %i.gm = phi i32 [ %.pre.i.1, %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i.1 ], [ %i.ee, %bb.t ], [ %i.ee, %.loopexit.1 ]
  %i.gn = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.go = sext i32 %i.gm to i64
  %i.gp = getelementptr inbounds [16 x i8], ptr %i.gn, i64 %i.go ; 2 uses
  store <2 x float> %i.ec, ptr %i.gp, align 16
  %.sroa.16.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store <2 x float> %.sroa.16.12.vec.insert.1, ptr %.sroa.16.0..sroa_idx.1, align 8, !tbaa !16
  %i.gq = load i32, ptr %i.e, align 4, !tbaa !9
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.e, align 4, !tbaa !9
  br label %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit.1

_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit.1: ; preds = %bb.p, %bb.r, %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit.1, %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count113
  br i1 %exitcond.not, label %.loopexit89, label %bb.d, !llvm.loop !31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14b3GeometryUtil29getVerticesFromPlaneEquationsERK20b3AlignedObjectArrayI9b3Vector3ERS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph128, label %._crit_edge

.lr.ph128:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = zext nneg i32 %i.b to i64
  %wide.trip.count143 = zext nneg i32 %i.b to i64 ; 3 uses
  br label %bb.b

.loopexit123:                                     ; preds = %.loopexit122, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge, label %bb.b, !llvm.loop !32

._crit_edge:                                      ; preds = %.loopexit123, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph128, %.loopexit123
  %indvars.iv140 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next141, %.loopexit123 ] ; 2 uses
  %indvars.iv134 = phi i64 [ 1, %.lr.ph128 ], [ %indvars.iv.next135, %.loopexit123 ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph128 ], [ %indvars.iv.next, %.loopexit123 ] ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv140 ; 3 uses
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 3 uses
  %i.l = icmp samesign ult i64 %indvars.iv.next141, %i.i
  br i1 %i.l, label %.lr.ph126, label %.loopexit123

.lr.ph126:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  br label %bb.c

.loopexit122:                                     ; preds = %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit, %bb.c
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count143
  br i1 %exitcond139.not, label %.loopexit123, label %bb.c, !llvm.loop !33

bb.c:                                             ; preds = %.lr.ph126, %.loopexit122
  %indvars.iv136 = phi i64 [ %indvars.iv134, %.lr.ph126 ], [ %indvars.iv.next137, %.loopexit122 ] ; 2 uses
  %indvars.iv129 = phi i64 [ %indvars.iv, %.lr.ph126 ], [ %indvars.iv.next130, %.loopexit122 ] ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv136 ; 3 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 3 uses
  %i.q = trunc nuw i64 %indvars.iv.next137 to i32
  %i.r = icmp sgt i32 %i.b, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit122

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit
  %indvars.iv131 = phi i64 [ %indvars.iv129, %.lr.ph ], [ %indvars.iv.next132, %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit ] ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv131 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.v, align 16, !tbaa !16 ; 4 uses
  %i.y = load float, ptr %i.p, align 16, !tbaa !16 ; 4 uses
  %i.z = fneg float %i.x
  %i.aa = load float, ptr %i.k, align 16, !tbaa !16 ; 3 uses
  %i.ab = fneg float %i.aa
  %i.ac = fneg float %i.y
  %i.ad = load <2 x float>, ptr %i.s, align 4, !tbaa !16 ; 5 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  %i.af = fmul float %i.ae, %i.z
  %i.ag = load <2 x float>, ptr %i.w, align 4, !tbaa !16 ; 4 uses
  %i.ah = fneg <2 x float> %i.ag
  %i.ai = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = insertelement <2 x float> %i.ai, float %i.y, i64 1
  %i.ak = fmul <2 x float> %i.aj, %i.ah
  %i.al = extractelement <2 x float> %i.ag, i64 0
  %i.am = tail call float @llvm.fmuladd.f32(float %i.y, float %i.al, float %i.af) ; 4 uses
  %i.an = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ao = insertelement <2 x float> %i.an, float %i.x, i64 1
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ao, <2 x float> %i.ak) ; 3 uses
  %i.aq = load <2 x float>, ptr %i.m, align 4, !tbaa !16 ; 4 uses
  %i.ar = fneg <2 x float> %i.aq
  %i.as = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.at = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.as, <4 x i32> <i32 5, i32 poison, i32 4, i32 3>
  %i.au = insertelement <4 x float> %i.at, float %i.x, i64 1
  %i.av = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ab, i64 2
  %i.aw = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ay = fmul <4 x float> %i.au, %i.ax
  %i.az = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.x, i64 2
  %i.ba = shufflevector <4 x float> %i.as, <4 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bb = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.bc = insertelement <4 x float> %i.bb, float -0.000000e+00, i64 3
  %i.bd = insertelement <4 x float> %i.bc, float %i.aa, i64 1 ; 3 uses
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %i.bd, <4 x float> %i.ay) ; 5 uses
  %i.bf = fneg <2 x float> %i.ad
  %i.bg = insertelement <4 x float> %i.bd, float 1.000000e+00, i64 3
  %i.bh = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ac, i64 2
  %i.bi = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> %i.bh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bk = fmul <4 x float> %i.bg, %i.bj
  %i.bl = shufflevector <4 x float> %i.bd, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.bm = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.bn = insertelement <4 x float> %i.bm, float -0.000000e+00, i64 3
  %i.bo = insertelement <4 x float> %i.bn, float %i.y, i64 1
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.bo, <4 x float> %i.bk) ; 5 uses
  %i.bq = extractelement <2 x float> %i.ap, i64 1 ; 3 uses
  %i.br = fmul float %i.bq, %i.bq
  %i.bs = extractelement <2 x float> %i.ap, i64 0 ; 3 uses
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.br)
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.bt)
  %i.bv = fcmp ogt float %i.bu, f0x38D1B717
  br i1 %i.bv, label %bb.e, label %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit

bb.e:                                             ; preds = %bb.d
  %foldExtExtBinop = fmul <4 x float> %i.be, %i.be
  %i.bw = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.bx = extractelement <4 x float> %i.be, i64 0 ; 2 uses
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bw)
  %i.bz = extractelement <4 x float> %i.be, i64 2 ; 2 uses
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.by)
  %i.cb = fcmp ogt float %i.ca, f0x38D1B717
  br i1 %i.cb, label %bb.f, label %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit

bb.f:                                             ; preds = %bb.e
  %foldExtExtBinop152 = fmul <4 x float> %i.bp, %i.bp
  %i.cc = extractelement <4 x float> %foldExtExtBinop152, i64 1
  %i.cd = extractelement <4 x float> %i.bp, i64 0 ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.cc)
  %i.cf = extractelement <4 x float> %i.bp, i64 2 ; 2 uses
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.ce)
  %i.ch = fcmp ogt float %i.cg, f0x38D1B717
  br i1 %i.ch, label %bb.g, label %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit

bb.g:                                             ; preds = %bb.f
  %i.ci = extractelement <2 x float> %i.aq, i64 0
  %i.cj = fmul float %i.ci, %i.bq
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.bs, float %i.cj)
  %i.cl = extractelement <2 x float> %i.aq, i64 1
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.am, float %i.ck) ; 2 uses
  %i.cn = tail call noundef float @llvm.fabs.f32(float %i.cm)
  %i.co = fcmp ogt float %i.cn, f0x358637BD
  br i1 %i.co, label %bb.h, label %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit

bb.h:                                             ; preds = %bb.g
  %i.cp = load float, ptr %i.n, align 4, !tbaa !17
  %i.cq = load float, ptr %i.t, align 4, !tbaa !17
  %i.cr = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !17
  %i.ct = fdiv nnan float -1.000000e+00, %i.cm
  %i.cu = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.cp, i64 0
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cw = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = insertelement <4 x float> %i.cw, float 1.000000e+00, i64 3
  %i.cy = insertelement <4 x float> %i.cx, float %i.am, i64 2
  %i.cz = fmul <4 x float> %i.cv, %i.cy
  %i.da = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.cq, i64 0
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dc = fmul <4 x float> %i.db, %i.be
  %i.dd = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.cs, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.df = fmul <4 x float> %i.de, %i.bp
  %i.dg = fadd <4 x float> %i.cz, %i.dc
  %i.dh = fadd <4 x float> %i.df, %i.dg
  %i.di = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ct, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dk = fmul <4 x float> %i.dj, %i.dh           ; 4 uses
  %i.dl = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
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
  br i1 %exitcond.not.i, label %.loopexit, label %bb.j, !llvm.loop !19

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.i ; 4 uses
  %i.dq = load float, ptr %i.dp, align 16, !tbaa !16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !16
  %i.dt = fmul float %i.dn, %i.ds
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dm, float %i.dt)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !16
  %i.dx = tail call noundef float @llvm.fmuladd.f32(float %i.dw, float %i.do, float %i.du)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !17
  %i.ea = fadd float %i.dz, %i.dx
  %i.eb = fcmp ule float %i.ea, f0x3C23D70A
  br i1 %i.eb, label %bb.i, label %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit

.loopexit:                                        ; preds = %bb.i, %bb.h
  %i.ec = load i32, ptr %i.e, align 4, !tbaa !9   ; 6 uses
  %i.ed = load i32, ptr %i.f, align 8, !tbaa !25
  %i.ee = icmp eq i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.k, label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit

bb.k:                                             ; preds = %.loopexit
  %.not.i.i = icmp eq i32 %i.ec, 0
  %i.ef = shl nsw i32 %i.ec, 1
  %i.eg = select i1 %.not.i.i, i32 1, i32 %i.ef   ; 6 uses
  %i.eh = icmp slt i32 %i.ec, %i.eg
  br i1 %i.eh, label %bb.l, label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i: ; preds = %bb.l
  %i.ei = sext i32 %i.eg to i64
  %i.ej = shl nsw i64 %i.ei, 4
  %i.ek = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.ej, i32 noundef 16) ; 7 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i
  %i.em = load i32, ptr %i.e, align 4, !tbaa !9   ; 4 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.em to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.eo = icmp eq i32 %i.em, 1
  br i1 %i.eo, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.m ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.m ]
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %indvars.iv.i.i.i
  %i.eq = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ep, ptr noundef nonnull align 16 dereferenceable(16) %i.er, i64 16, i1 false), !tbaa.struct !26
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %indvars.iv.next.i.i.i
  %i.et = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.es, ptr noundef nonnull align 16 dereferenceable(16) %i.eu, i64 16, i1 false), !tbaa.struct !26
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.m, !llvm.loop !27

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i, %bb.l
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
  store i32 0, ptr %i.e, align 4, !tbaa !9
  br label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod154 = trunc i32 %i.em to i1
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %indvars.iv.i.i.i.epil.init
  %i.ew = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ev, ptr noundef nonnull align 16 dereferenceable(16) %i.ex, i64 16, i1 false), !tbaa.struct !26
  br label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.ek, %.split.i.i ], [ %i.ek, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.ek, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.eg, %.split.i.i ], [ %i.eg, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.eg, %.epil.preheader ]
  %i.ey = load ptr, ptr %i.g, align 8, !tbaa !15  ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i
  %i.ez = load i8, ptr %i.h, align 8, !tbaa !28, !range !29, !noundef !30
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.o, label %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ey)
  br label %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i: ; preds = %bb.o, %bb.n, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.h, align 8, !tbaa !28
  store ptr %.0.i12.i.i, ptr %i.g, align 8, !tbaa !15
  store i32 %.0.i.i, ptr %i.f, align 8, !tbaa !25
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !9
  br label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit

_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit: ; preds = %.loopexit, %bb.k, %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i
  %i.fb = phi i32 [ %.pre.i, %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i ], [ %i.ec, %bb.k ], [ %i.ec, %.loopexit ]
  %i.fc = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.fd = sext i32 %i.fb to i64
  %i.fe = getelementptr inbounds [16 x i8], ptr %i.fc, i64 %i.fd
  store <4 x float> %i.dk, ptr %i.fe, align 16
  %i.ff = load i32, ptr %i.e, align 4, !tbaa !9
  %i.fg = add nsw i32 %i.ff, 1
  store i32 %i.fg, ptr %i.e, align 4, !tbaa !9
  br label %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit

_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit: ; preds = %bb.j, %bb.g, %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit, %bb.f, %bb.e, %bb.d
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count143
  br i1 %exitcond.not, label %.loopexit122, label %bb.d, !llvm.loop !34
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @b3OutputErrorMessageVarArgsInternal(ptr noundef, ...) local_unnamed_addr #5

declare noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #5

declare void @_Z21b3AlignedFreeInternalPv(ptr noundef) local_unnamed_addr #5

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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 4}
!10 = !{!"_ZTS20b3AlignedObjectArrayI9b3Vector3E", !11, i64 0, !6, i64 4, !6, i64 8, !12, i64 16, !14, i64 24}
!11 = !{!"_ZTS18b3AlignedAllocatorI9b3Vector3Lj16EE"}
!12 = !{!"p1 _ZTS9b3Vector3", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"bool", !7, i64 0}
!15 = !{!10, !12, i64 16}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !7, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = !{!10, !6, i64 8}
!26 = !{i64 0, i64 16, !16}
!27 = distinct !{!27, !20}
!28 = !{!10, !14, i64 24}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
end_hunk_0
