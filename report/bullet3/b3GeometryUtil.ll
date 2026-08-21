Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GeometryUtil?download=true
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
  %i.i = zext nneg i32 %i.b to i64                ; 2 uses
  %wide.trip.count113 = zext nneg i32 %i.b to i64 ; 2 uses
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
  %2 = icmp samesign ult i64 %indvars.iv.next107, %i.i
  br i1 %2, label %.lr.ph, label %.loopexit89

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit.1
  %indvars.iv101 = phi i64 [ %indvars.iv99, %.lr.ph ], [ %indvars.iv.next102, %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit.1 ] ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv101 ; 2 uses
  %i.t = load float, ptr %i.p, align 16, !tbaa !16
  %i.u = load float, ptr %i.k, align 16, !tbaa !16 ; 2 uses
  %i.v = load float, ptr %i.s, align 16, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.x = load <2 x float>, ptr %i.q, align 4, !tbaa !16 ; 2 uses
  %i.y = load <2 x float>, ptr %i.m, align 4, !tbaa !16 ; 5 uses
  %i.z = fsub <2 x float> %i.x, %i.y              ; 2 uses
  %i.aa = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ab = insertelement <2 x float> %i.aa, float %i.t, i64 1
  %i.ac = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ad = insertelement <2 x float> %i.ac, float %i.u, i64 1 ; 2 uses
  %i.ae = fsub <2 x float> %i.ab, %i.ad           ; 2 uses
  %i.af = load <2 x float>, ptr %i.w, align 4, !tbaa !16 ; 2 uses
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ah = insertelement <2 x float> %i.ag, float %i.v, i64 1
  %i.ai = fsub <2 x float> %i.ah, %i.ad           ; 2 uses
  %i.aj = fsub <2 x float> %i.af, %i.y            ; 2 uses
  %i.ak = fneg <2 x float> %i.aj
  %i.al = fmul <2 x float> %i.ae, %i.ak
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.ai, <2 x float> %i.al) ; 4 uses
  %i.an = extractelement <2 x float> %i.ai, i64 1
  %i.ao = fneg float %i.an
  %i.ap = extractelement <2 x float> %i.z, i64 0
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = extractelement <2 x float> %i.ae, i64 1
  %i.as = extractelement <2 x float> %i.aj, i64 0
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.as, float %i.aq) ; 6 uses
  %i.au = extractelement <2 x float> %i.am, i64 1 ; 4 uses
  %i.av = fmul float %i.au, %i.au
  %i.aw = extractelement <2 x float> %i.am, i64 0 ; 4 uses
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %i.av)
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.ax) ; 2 uses
  %i.az = fcmp ogt float %i.ay, f0x38D1B717
  br i1 %i.az, label %bb.e, label %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit

bb.e:                                             ; preds = %bb.d
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ay)
  %i.ba = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.bb = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x float> %i.am, %i.bc           ; 5 uses
  %i.be = fmul float %i.at, %i.ba                 ; 4 uses
  %.sroa.16.8.vec.insert = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bf = load i32, ptr %i.e, align 4, !tbaa !9   ; 8 uses
  %.not14.i = icmp slt i32 %i.bf, 1
  br i1 %.not14.i, label %.loopexit88, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !15
  %wide.trip.count.i = zext nneg i32 %i.bf to i64
  %i.bh = extractelement <2 x float> %i.bd, i64 0
  %i.bi = extractelement <2 x float> %i.bd, i64 1
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit88, label %bb.g, !llvm.loop !22

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i ; 3 uses
  %i.bk = load float, ptr %i.bj, align 16, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !16
  %i.bn = fmul float %i.bi, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bk, float %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !16
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.bq, float %i.bo)
  %i.bs = fcmp ule float %i.br, 9.990000e-01
  br i1 %i.bs, label %bb.f, label %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit

.loopexit88:                                      ; preds = %bb.f, %bb.e
  %i.bt = extractelement <2 x float> %i.y, i64 0
  %i.bu = extractelement <2 x float> %i.bd, i64 1 ; 2 uses
  %i.bv = fmul float %i.bu, %i.bt
  %i.bw = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.u, float %i.bv)
  %i.by = extractelement <2 x float> %i.y, i64 1
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.by, float %i.bx) ; 2 uses
  %i.ca = fneg float %i.bz
  %.sroa.16.12.vec.insert = insertelement <2 x float> %.sroa.16.8.vec.insert, float %i.ca, i64 1
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %.not17.i = icmp slt i32 %i.cb, 1
  br i1 %.not17.i, label %.loopexit, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.loopexit88
  %wide.trip.count.i46 = zext nneg i32 %i.cb to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %wide.trip.count.i46
  br i1 %exitcond.not.i50, label %.loopexit, label %bb.i, !llvm.loop !21

bb.i:                                             ; preds = %bb.h, %.lr.ph.i45
  %indvars.iv.i47 = phi i64 [ 0, %.lr.ph.i45 ], [ %indvars.iv.next.i49, %bb.h ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.i47 ; 3 uses
  %i.cd = load float, ptr %i.cc, align 16, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !16
  %i.cg = fmul float %i.bu, %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cd, float %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !16
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.cj, float %i.ch)
  %i.cl = fsub float %i.ck, %i.bz
  %i.cm = fcmp ule float %i.cl, f0x3C23D70A
  br i1 %i.cm, label %bb.h, label %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit

.loopexit:                                        ; preds = %bb.h, %.loopexit88
  %i.cn = load i32, ptr %i.g, align 8, !tbaa !25
  %i.co = icmp eq i32 %i.bf, %i.cn
  br i1 %i.co, label %bb.j, label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit

bb.j:                                             ; preds = %.loopexit
  %.not.i.i = icmp eq i32 %i.bf, 0
  %i.cp = shl nsw i32 %i.bf, 1
  %i.cq = select i1 %.not.i.i, i32 1, i32 %i.cp   ; 6 uses
  %i.cr = icmp slt i32 %i.bf, %i.cq
  br i1 %i.cr, label %bb.k, label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i: ; preds = %bb.k
  %i.cs = sext i32 %i.cq to i64
  %i.ct = shl nsw i64 %i.cs, 4
  %i.cu = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.ct, i32 noundef 16) ; 7 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i
  %i.cw = load i32, ptr %i.e, align 4, !tbaa !9   ; 4 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.cw to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.cy = icmp eq i32 %i.cw, 1
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1138, %bb.l ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.l ]
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cz, ptr noundef nonnull align 16 dereferenceable(16) %i.db, i64 16, i1 false), !tbaa.struct !26
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i.i
  %i.dd = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dc, ptr noundef nonnull align 16 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !26
  %indvars.iv.next.i.i.i.1138 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
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
  %lcmp.mod136 = trunc i32 %i.cw to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i.epil.init
  %i.dg = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.df, ptr noundef nonnull align 16 dereferenceable(16) %i.dh, i64 16, i1 false), !tbaa.struct !26
  br label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.cu, %.split.i.i ], [ %i.cu, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.cu, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.cq, %.split.i.i ], [ %i.cq, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.cq, %.epil.preheader ]
  %i.di = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.di, null
end_hunk_0
begin_hunk_1_@_ZN14b3GeometryUtil29getPlaneEquationsFromVerticesER20b3AlignedObjectArrayI9b3Vector3ES3_:bb.a
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x float> %i.dz, %i.dw           ; 5 uses
  %i.eb = fmul float %i.dx, %i.dv                 ; 4 uses
  %.sroa.16.8.vec.insert.1 = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ec = load i32, ptr %i.e, align 4, !tbaa !9   ; 8 uses
  %.not14.i.1 = icmp slt i32 %i.ec, 1
  br i1 %.not14.i.1, label %.loopexit88.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.o
  %i.ed = load ptr, ptr %i.f, align 8, !tbaa !15
  %wide.trip.count.i.1 = zext nneg i32 %i.ec to i64
  %i.ee = extractelement <2 x float> %i.ea, i64 0
  %i.ef = extractelement <2 x float> %i.ea, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.1
  %indvars.iv.i.1 = phi i64 [ 0, %.lr.ph.i.1 ], [ %indvars.iv.next.i.1, %bb.q ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %indvars.iv.i.1 ; 3 uses
  %i.eh = load float, ptr %i.eg, align 16, !tbaa !16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !16
  %i.ek = fmul float %i.ef, %i.ej
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.eh, float %i.ek)
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.en = load float, ptr %i.em, align 8, !tbaa !16
  %i.eo = tail call noundef float @llvm.fmuladd.f32(float %i.eb, float %i.en, float %i.el)
  %i.ep = fcmp ule float %i.eo, 9.990000e-01
  br i1 %i.ep, label %bb.q, label %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit.1

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i.1
  br i1 %exitcond.not.i.1, label %.loopexit88.1, label %bb.p, !llvm.loop !22

.loopexit88.1:                                    ; preds = %bb.q, %bb.o
  %i.eq = load float, ptr %i.k, align 16, !tbaa !16
  %i.er = load float, ptr %i.m, align 4, !tbaa !16
  %i.es = extractelement <2 x float> %i.ea, i64 1 ; 2 uses
  %i.et = fmul float %i.es, %i.er
  %i.eu = extractelement <2 x float> %i.ea, i64 0 ; 2 uses
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.eq, float %i.et)
  %i.ew = load float, ptr %i.n, align 8, !tbaa !16
  %i.ex = tail call noundef float @llvm.fmuladd.f32(float %i.eb, float %i.ew, float %i.ev) ; 2 uses
  %i.ey = fneg float %i.ex
  %.sroa.16.12.vec.insert.1 = insertelement <2 x float> %.sroa.16.8.vec.insert.1, float %i.ey, i64 1
  %i.ez = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %.not17.i.1 = icmp slt i32 %i.ez, 1
  br i1 %.not17.i.1, label %.loopexit.1, label %.lr.ph.i45.1

.lr.ph.i45.1:                                     ; preds = %.loopexit88.1
  %i.fa = load ptr, ptr %i.d, align 8, !tbaa !15
  %wide.trip.count.i46.1 = zext nneg i32 %i.ez to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph.i45.1
  %indvars.iv.i47.1 = phi i64 [ 0, %.lr.ph.i45.1 ], [ %indvars.iv.next.i49.1, %bb.s ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %indvars.iv.i47.1 ; 3 uses
  %i.fc = load float, ptr %i.fb, align 16, !tbaa !16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !16
  %i.ff = fmul float %i.es, %i.fe
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.fc, float %i.ff)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fi = load float, ptr %i.fh, align 8, !tbaa !16
  %i.fj = tail call noundef float @llvm.fmuladd.f32(float %i.eb, float %i.fi, float %i.fg)
  %i.fk = fsub float %i.fj, %i.ex
  %i.fl = fcmp ule float %i.fk, f0x3C23D70A
  br i1 %i.fl, label %bb.s, label %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit.1

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i49.1 = add nuw nsw i64 %indvars.iv.i47.1, 1 ; 2 uses
  %exitcond.not.i50.1 = icmp eq i64 %indvars.iv.next.i49.1, %wide.trip.count.i46.1
  br i1 %exitcond.not.i50.1, label %.loopexit.1, label %bb.r, !llvm.loop !21

.loopexit.1:                                      ; preds = %bb.s, %.loopexit88.1
  %i.fm = load i32, ptr %i.g, align 8, !tbaa !25
  %i.fn = icmp eq i32 %i.ec, %i.fm
  br i1 %i.fn, label %bb.t, label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit.1

bb.t:                                             ; preds = %.loopexit.1
  %.not.i.i.1 = icmp eq i32 %i.ec, 0
  %i.fo = shl nsw i32 %i.ec, 1
  %i.fp = select i1 %.not.i.i.1, i32 1, i32 %i.fo ; 6 uses
  %i.fq = icmp slt i32 %i.ec, %i.fp
  br i1 %i.fq, label %bb.u, label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit.1

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.1 = icmp eq i32 %i.fp, 0
  br i1 %.not.i.i.i.1, label %.split7.i.i.1, label %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i.1

_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i.1: ; preds = %bb.u
  %i.fr = sext i32 %i.fp to i64
  %i.fs = shl nsw i64 %i.fr, 4
  %i.ft = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.fs, i32 noundef 16) ; 7 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %.split7.i.i.1, label %.split.i.i.1

.split.i.i.1:                                     ; preds = %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i.1
  %i.fv = load i32, ptr %i.e, align 4, !tbaa !9   ; 4 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.i.i.i.1, label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.split.i.i.1
  %wide.trip.count.i.i.i.1 = zext nneg i32 %i.fv to i64 ; 2 uses
  %xtraiter141 = and i64 %wide.trip.count.i.i.i.1, 1
  %i.fx = icmp eq i32 %i.fv, 1
  br i1 %i.fx, label %.epil.preheader140, label %.lr.ph.i.i.i.1.new

.lr.ph.i.i.i.1.new:                               ; preds = %.lr.ph.i.i.i.1
  %unroll_iter144 = and i64 %wide.trip.count.i.i.i.1, 2147483646
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i.i.i.1.new
  %indvars.iv.i.i.i.1 = phi i64 [ 0, %.lr.ph.i.i.i.1.new ], [ %indvars.iv.next.i.i.i.1.1, %bb.v ] ; 4 uses
  %niter145 = phi i64 [ 0, %.lr.ph.i.i.i.1.new ], [ %niter145.next.1, %bb.v ]
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %indvars.iv.i.i.i.1
  %i.fz = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %indvars.iv.i.i.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fy, ptr noundef nonnull align 16 dereferenceable(16) %i.ga, i64 16, i1 false), !tbaa.struct !26
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i.1, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %indvars.iv.next.i.i.i.1
  %i.gc = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %indvars.iv.next.i.i.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gb, ptr noundef nonnull align 16 dereferenceable(16) %i.gd, i64 16, i1 false), !tbaa.struct !26
  %indvars.iv.next.i.i.i.1.1 = add nuw nsw i64 %indvars.iv.i.i.i.1, 2 ; 2 uses
  %niter145.next.1 = add i64 %niter145, 2         ; 2 uses
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
  %lcmp.mod143 = trunc i32 %i.fv to i1
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %indvars.iv.i.i.i.1.epil.init
  %i.gf = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %indvars.iv.i.i.i.1.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ge, ptr noundef nonnull align 16 dereferenceable(16) %i.gg, i64 16, i1 false), !tbaa.struct !26
  br label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1

_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1: ; preds = %.epil.preheader140, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa, %.split7.i.i.1, %.split.i.i.1
  %.0.i12.i.i.1 = phi ptr [ null, %.split7.i.i.1 ], [ %i.ft, %.split.i.i.1 ], [ %i.ft, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa ], [ %i.ft, %.epil.preheader140 ]
  %.0.i.i.1 = phi i32 [ 0, %.split7.i.i.1 ], [ %i.fp, %.split.i.i.1 ], [ %i.fp, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa ], [ %i.fp, %.epil.preheader140 ]
  %i.gh = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not.i10.i.i.1 = icmp eq ptr %i.gh, null
  br i1 %.not.i10.i.i.1, label %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i.1, label %bb.w

bb.w:                                             ; preds = %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1
  %i.gi = load i8, ptr %i.h, align 8, !tbaa !28, !range !29, !noundef !30
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.x, label %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i.1

bb.x:                                             ; preds = %bb.w
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.gh)
  br label %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i.1

_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i.1: ; preds = %bb.x, %bb.w, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.1
  store i8 1, ptr %i.h, align 8, !tbaa !28
  store ptr %.0.i12.i.i.1, ptr %i.f, align 8, !tbaa !15
  store i32 %.0.i.i.1, ptr %i.g, align 8, !tbaa !25
  %.pre.i.1 = load i32, ptr %i.e, align 4, !tbaa !9
  br label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit.1

_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit.1: ; preds = %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i.1, %bb.t, %.loopexit.1
  %i.gk = phi i32 [ %.pre.i.1, %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i.1 ], [ %i.ec, %bb.t ], [ %i.ec, %.loopexit.1 ]
  %i.gl = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.gm = sext i32 %i.gk to i64
  %i.gn = getelementptr inbounds [16 x i8], ptr %i.gl, i64 %i.gm ; 2 uses
  store <2 x float> %i.ea, ptr %i.gn, align 16
  %.sroa.16.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store <2 x float> %.sroa.16.12.vec.insert.1, ptr %.sroa.16.0..sroa_idx.1, align 8, !tbaa !16
  %i.go = load i32, ptr %i.e, align 4, !tbaa !9
  %i.gp = add nsw i32 %i.go, 1
  store i32 %i.gp, ptr %i.e, align 4, !tbaa !9
  br label %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit.1

_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit.1: ; preds = %bb.p, %bb.r, %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit.1, %_Z8notExistRK9b3Vector3RK20b3AlignedObjectArrayIS_E.exit
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next102 to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
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
  %i.i = zext nneg i32 %i.b to i64                ; 2 uses
  %wide.trip.count143 = zext nneg i32 %i.b to i64 ; 2 uses
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
  %2 = icmp samesign ult i64 %indvars.iv.next137, %i.i
  br i1 %2, label %.lr.ph, label %.loopexit122

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit
  %indvars.iv131 = phi i64 [ %indvars.iv129, %.lr.ph ], [ %indvars.iv.next132, %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit ] ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv131 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load float, ptr %i.t, align 16, !tbaa !16 ; 4 uses
  %i.w = load float, ptr %i.p, align 16, !tbaa !16 ; 4 uses
  %i.x = fneg float %i.v
  %i.y = load float, ptr %i.k, align 16, !tbaa !16 ; 3 uses
  %i.z = fneg float %i.y
  %i.aa = fneg float %i.w
  %i.ab = load <2 x float>, ptr %i.q, align 4, !tbaa !16 ; 5 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0
  %i.ad = fmul float %i.ac, %i.x
  %i.ae = load <2 x float>, ptr %i.u, align 4, !tbaa !16 ; 4 uses
  %i.af = fneg <2 x float> %i.ae
  %i.ag = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ah = insertelement <2 x float> %i.ag, float %i.w, i64 1
  %i.ai = fmul <2 x float> %i.ah, %i.af
  %i.aj = extractelement <2 x float> %i.ae, i64 0
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.w, float %i.aj, float %i.ad) ; 4 uses
  %i.al = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.am = insertelement <2 x float> %i.al, float %i.v, i64 1
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.am, <2 x float> %i.ai) ; 3 uses
  %i.ao = load <2 x float>, ptr %i.m, align 4, !tbaa !16 ; 4 uses
  %i.ap = fneg <2 x float> %i.ao
  %i.aq = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ar = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.aq, <4 x i32> <i32 5, i32 poison, i32 4, i32 3>
  %i.as = insertelement <4 x float> %i.ar, float %i.v, i64 1
  %i.at = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.z, i64 2
  %i.au = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = shufflevector <4 x float> %i.au, <4 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aw = fmul <4 x float> %i.as, %i.av
  %i.ax = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.v, i64 2
  %i.ay = shufflevector <4 x float> %i.aq, <4 x float> %i.ax, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.ba = insertelement <4 x float> %i.az, float -0.000000e+00, i64 3
  %i.bb = insertelement <4 x float> %i.ba, float %i.y, i64 1 ; 3 uses
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.bb, <4 x float> %i.aw) ; 5 uses
  %i.bd = fneg <2 x float> %i.ab
  %i.be = insertelement <4 x float> %i.bb, float 1.000000e+00, i64 3
  %i.bf = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.aa, i64 2
  %i.bg = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bi = fmul <4 x float> %i.be, %i.bh
  %i.bj = shufflevector <4 x float> %i.bb, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.bk = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.bl = insertelement <4 x float> %i.bk, float -0.000000e+00, i64 3
  %i.bm = insertelement <4 x float> %i.bl, float %i.w, i64 1
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %i.bm, <4 x float> %i.bi) ; 5 uses
  %i.bo = extractelement <2 x float> %i.an, i64 1 ; 3 uses
  %i.bp = fmul float %i.bo, %i.bo
  %i.bq = extractelement <2 x float> %i.an, i64 0 ; 3 uses
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.bp)
  %i.bs = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.br)
  %i.bt = fcmp ogt float %i.bs, f0x38D1B717
  br i1 %i.bt, label %bb.e, label %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit

bb.e:                                             ; preds = %bb.d
  %foldExtExtBinop = fmul <4 x float> %i.bc, %i.bc
  %i.bu = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.bv = extractelement <4 x float> %i.bc, i64 0 ; 2 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bu)
  %i.bx = extractelement <4 x float> %i.bc, i64 2 ; 2 uses
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bw)
  %i.bz = fcmp ogt float %i.by, f0x38D1B717
  br i1 %i.bz, label %bb.f, label %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit

bb.f:                                             ; preds = %bb.e
  %foldExtExtBinop152 = fmul <4 x float> %i.bn, %i.bn
  %i.ca = extractelement <4 x float> %foldExtExtBinop152, i64 1
  %i.cb = extractelement <4 x float> %i.bn, i64 0 ; 2 uses
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %i.ca)
  %i.cd = extractelement <4 x float> %i.bn, i64 2 ; 2 uses
  %i.ce = tail call noundef float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.cc)
  %i.cf = fcmp ogt float %i.ce, f0x38D1B717
  br i1 %i.cf, label %bb.g, label %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit

bb.g:                                             ; preds = %bb.f
  %i.cg = extractelement <2 x float> %i.ao, i64 0
  %i.ch = fmul float %i.cg, %i.bo
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.y, float %i.bq, float %i.ch)
  %i.cj = extractelement <2 x float> %i.ao, i64 1
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.ak, float %i.ci) ; 2 uses
  %i.cl = tail call noundef float @llvm.fabs.f32(float %i.ck)
  %i.cm = fcmp ogt float %i.cl, f0x358637BD
  br i1 %i.cm, label %bb.h, label %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit

bb.h:                                             ; preds = %bb.g
  %i.cn = load float, ptr %i.n, align 4, !tbaa !17
  %i.co = load float, ptr %i.r, align 4, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !17
  %i.cr = fdiv nnan float -1.000000e+00, %i.ck
  %i.cs = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.cn, i64 0
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cu = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cv = insertelement <4 x float> %i.cu, float 1.000000e+00, i64 3
  %i.cw = insertelement <4 x float> %i.cv, float %i.ak, i64 2
  %i.cx = fmul <4 x float> %i.ct, %i.cw
  %i.cy = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.co, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.da = fmul <4 x float> %i.cz, %i.bc
  %i.db = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.cq, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dd = fmul <4 x float> %i.dc, %i.bn
  %i.de = fadd <4 x float> %i.cx, %i.da
  %i.df = fadd <4 x float> %i.dd, %i.de
  %i.dg = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cr, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.di = fmul <4 x float> %i.dh, %i.df           ; 4 uses
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %.not17.i = icmp slt i32 %i.dj, 1
  br i1 %.not17.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %wide.trip.count.i = zext nneg i32 %i.dj to i64
  %i.dk = extractelement <4 x float> %i.di, i64 0
  %i.dl = extractelement <4 x float> %i.di, i64 1
  %i.dm = extractelement <4 x float> %i.di, i64 2
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.j, !llvm.loop !19

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.i ; 4 uses
  %i.do = load float, ptr %i.dn, align 16, !tbaa !16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !16
  %i.dr = fmul float %i.dl, %i.dq
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.do, float %i.dk, float %i.dr)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.du = load float, ptr %i.dt, align 8, !tbaa !16
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %i.du, float %i.dm, float %i.ds)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !17
  %i.dy = fadd float %i.dx, %i.dv
  %i.dz = fcmp ule float %i.dy, f0x3C23D70A
  br i1 %i.dz, label %bb.i, label %_ZN14b3GeometryUtil19isPointInsidePlanesERK20b3AlignedObjectArrayI9b3Vector3ERKS1_f.exit

.loopexit:                                        ; preds = %bb.i, %bb.h
  %i.ea = load i32, ptr %i.e, align 4, !tbaa !9   ; 6 uses
  %i.eb = load i32, ptr %i.f, align 8, !tbaa !25
  %i.ec = icmp eq i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.k, label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit

bb.k:                                             ; preds = %.loopexit
  %.not.i.i = icmp eq i32 %i.ea, 0
  %i.ed = shl nsw i32 %i.ea, 1
  %i.ee = select i1 %.not.i.i, i32 1, i32 %i.ed   ; 6 uses
  %i.ef = icmp slt i32 %i.ea, %i.ee
  br i1 %i.ef, label %bb.l, label %_ZN20b3AlignedObjectArrayI9b3Vector3E9push_backERKS0_.exit

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i: ; preds = %bb.l
  %i.eg = sext i32 %i.ee to i64
  %i.eh = shl nsw i64 %i.eg, 4
  %i.ei = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.eh, i32 noundef 16) ; 7 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i
  %i.ek = load i32, ptr %i.e, align 4, !tbaa !9   ; 4 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.ek to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.em = icmp eq i32 %i.ek, 1
  br i1 %i.em, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.m ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.m ]
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %indvars.iv.i.i.i
  %i.eo = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.en, ptr noundef nonnull align 16 dereferenceable(16) %i.ep, i64 16, i1 false), !tbaa.struct !26
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %indvars.iv.next.i.i.i
  %i.er = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %indvars.iv.next.i.i.i
end_hunk_1
