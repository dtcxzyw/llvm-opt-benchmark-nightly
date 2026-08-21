inline.NumInlined: 176
inline.NumDeleted: 64
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.btVectorX = type { %class.btAlignedObjectArray }
%class.btAlignedObjectArray = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.CProfileSample = type { i8 }
%struct.btMatrixX = type { i32, i32, i32, i32, i32, [4 x i8], %class.btAlignedObjectArray, %class.btAlignedObjectArray.0 }
%class.btAlignedObjectArray.0 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.btAlignedObjectArray.2 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>

$_ZN9btMatrixXIfE8negativeEv = comdat any

$_ZN20btAlignedObjectArrayIiED2Ev = comdat any

$_ZN9btMatrixXIfED2Ev = comdat any

$_ZN9btVectorXIfED2Ev = comdat any

$_ZN20btAlignedObjectArrayIS_IiEED2Ev = comdat any

$_ZN20btAlignedObjectArrayIfED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN9btMatrixXIfE6resizeEii = comdat any

@_ZZ9btMachEpsvE10calculated = internal unnamed_addr global i1 false, align 1
@_ZZ9btMachEpsvE7machEps = internal unnamed_addr global float 1.000000e+00, align 4
@_ZZ9btEpsRootvE7epsroot = internal unnamed_addr global float 0.000000e+00, align 4
@_ZZ9btEpsRootvE17alreadyCalculated = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [17 x i8] c"m_storage.resize\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"storage=0\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_Z9btMachEpsv() local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @_ZZ9btMachEpsvE10calculated, align 1
  %.pre = load float, ptr @_ZZ9btMachEpsvE7machEps, align 4, !tbaa !9 ; 2 uses
  br i1 %.b, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %i.a = phi float [ %i.b, %.preheader ], [ %.pre, %bb.a ]
  %i.b = fmul float %i.a, 5.000000e-01            ; 4 uses
  %i.c = fmul float %i.b, 5.000000e-01
  %i.d = fadd float %i.c, 1.000000e+00
  %i.e = fcmp une float %i.d, 1.000000e+00
  br i1 %i.e, label %.preheader, label %bb.b, !llvm.loop !11

bb.b:                                             ; preds = %.preheader
  store float %i.b, ptr @_ZZ9btMachEpsvE7machEps, align 4, !tbaa !9
  store i1 true, ptr @_ZZ9btMachEpsvE10calculated, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi float [ %i.b, %bb.b ], [ %.pre, %bb.a ]
  ret float %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_Z9btEpsRootv() local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @_ZZ9btEpsRootvE17alreadyCalculated, align 1
  br i1 %.b, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load float, ptr @_ZZ9btEpsRootvE7epsroot, align 4, !tbaa !9
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %.b.i = load i1, ptr @_ZZ9btMachEpsvE10calculated, align 1
  %.pre.i = load float, ptr @_ZZ9btMachEpsvE7machEps, align 4, !tbaa !9 ; 2 uses
  br i1 %.b.i, label %_Z9btMachEpsv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %i.a = phi float [ %i.b, %.preheader.i ], [ %.pre.i, %bb.b ]
  %i.b = fmul float %i.a, 5.000000e-01            ; 4 uses
  %i.c = fmul float %i.b, 5.000000e-01
  %i.d = fadd float %i.c, 1.000000e+00
  %i.e = fcmp une float %i.d, 1.000000e+00
  br i1 %i.e, label %.preheader.i, label %bb.c, !llvm.loop !11

bb.c:                                             ; preds = %.preheader.i
  store float %i.b, ptr @_ZZ9btMachEpsvE7machEps, align 4, !tbaa !9
  store i1 true, ptr @_ZZ9btMachEpsvE10calculated, align 1
  br label %_Z9btMachEpsv.exit

_Z9btMachEpsv.exit:                               ; preds = %bb.b, %bb.c
  %i.f = phi float [ %i.b, %bb.c ], [ %.pre.i, %bb.b ]
  %i.g = tail call noundef float @sqrtf(float noundef %i.f) #15 ; 2 uses
  store float %i.g, ptr @_ZZ9btEpsRootvE7epsroot, align 4, !tbaa !9
  store i1 true, ptr @_ZZ9btEpsRootvE17alreadyCalculated, align 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %_Z9btMachEpsv.exit
  %i.h = phi float [ %.pre, %._crit_edge ], [ %i.g, %_Z9btMachEpsv.exit ]
  ret float %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btLemkeAlgorithm5solveEj(ptr dead_on_unwind noalias writable sret(%struct.btVectorX) align 8 initializes((4, 12), (16, 25)) %0, ptr noundef nonnull align 8 dereferenceable(140) initializes((128, 132)) %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 4 uses
  %4 = alloca %struct.btMatrixX, align 8          ; 22 uses
  %5 = alloca %struct.btMatrixX, align 8          ; 14 uses
  %6 = alloca %struct.btMatrixX, align 8          ; 23 uses
  %7 = alloca %class.btAlignedObjectArray.2, align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !25   ; 24 uses
  %i.g = shl i32 %i.f, 1                          ; 19 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i8 1, ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr null, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i32 0, ptr %i.j, align 4, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !28
  %i.l = icmp sgt i32 %i.f, 0                     ; 3 uses
  br i1 %i.l, label %bb.b, label %_ZN9btVectorXIfEC2Ei.exit

bb.b:                                             ; preds = %bb.a
  %i.m = zext nneg i32 %i.g to i64
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  %i.o = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.n, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i unwind label %bb.d ; 10 uses

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i: ; preds = %bb.b
  %.pre.i.i = load i32, ptr %i.j, align 4, !tbaa !25 ; 3 uses
  %i.p = icmp sgt i32 %.pre.i.i, 0
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !27   ; 9 uses
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = ptrtoaddr ptr %i.o to i64
  %wide.trip.count.i.i.i.i = zext nneg i32 %.pre.i.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre.i.i, 8
  %i.t = sub i64 %i.r, %i.s
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond424 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond424, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <4 x float>, ptr %i.v, align 4, !tbaa !9
  %wide.load325 = load <4 x float>, ptr %i.w, align 4, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x float> %wide.load, ptr %i.u, align 4, !tbaa !9
  store <4 x float> %wide.load325, ptr %i.x, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i.prol
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i.prol
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !9
  store float %i.ab, ptr %i.z, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !32

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i
  %i.ag = load float, ptr %i.af, align 4, !tbaa !9
  store float %i.ag, ptr %i.ae, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !9
  store float %i.aj, ptr %i.ah, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.1
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i.1
  %i.am = load float, ptr %i.al, align 4, !tbaa !9
  store float %i.am, ptr %i.ak, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.2
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i.2
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !9
  store float %i.ap, ptr %i.an, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph, !llvm.loop !34

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp ne ptr %i.q, null
  %i.aq = load i8, ptr %i.h, align 8, !range !35
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond = select i1 %.not.i5.i.i.i, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN9btVectorXIfEC2Ei.exit.thread

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old = load i8, ptr %i.h, align 8, !tbaa !26, !range !35, !noundef !36
  %.old232 = trunc nuw i8 %.old to i1
  br i1 %.old232, label %bb.c, label %_ZN9btVectorXIfEC2Ei.exit.thread

bb.c:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.q)
          to label %_ZN9btVectorXIfEC2Ei.exit.thread unwind label %bb.d

_ZN9btVectorXIfEC2Ei.exit.thread:                 ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, %bb.c
  store i8 1, ptr %i.h, align 8, !tbaa !26
  store ptr %i.o, ptr %i.i, align 8, !tbaa !27
  store i32 %i.g, ptr %i.k, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 0, i64 %i.n, i1 false), !tbaa !9
  store i32 %i.g, ptr %i.j, align 4, !tbaa !25
  br label %_Z9btSetZeroIfEvPT_i.exit.i

common.resume:                                    ; preds = %.body, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.d ], [ %.pn82.pn.pn.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(32) %0) #15
  br label %common.resume

_ZN9btVectorXIfEC2Ei.exit:                        ; preds = %bb.a
  store i32 %i.g, ptr %i.j, align 4, !tbaa !25
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN9btVectorXIfE7setZeroEv.exit, label %_Z9btSetZeroIfEvPT_i.exit.i

_Z9btSetZeroIfEvPT_i.exit.i:                      ; preds = %_ZN9btVectorXIfEC2Ei.exit.thread, %_ZN9btVectorXIfEC2Ei.exit
  %i.at = phi ptr [ %i.o, %_ZN9btVectorXIfEC2Ei.exit.thread ], [ null, %_ZN9btVectorXIfEC2Ei.exit ]
  %i.au = sext i32 %i.g to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.at, i8 0, i64 %i.av, i1 false), !tbaa !9
  br label %_ZN9btVectorXIfE7setZeroEv.exit

_ZN9btVectorXIfE7setZeroEv.exit:                  ; preds = %_Z9btSetZeroIfEvPT_i.exit.i, %_ZN9btVectorXIfEC2Ei.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i32 %i.f, ptr %4, align 8, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 %i.f, ptr %i.aw, align 4, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.ax, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 0, ptr %i.az, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 1, ptr %i.ba, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  store ptr null, ptr %i.bb, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  store i32 0, ptr %i.bc, align 4, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %i.bd, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  store i8 1, ptr %i.be, align 8, !tbaa !42
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  store ptr null, ptr %i.bf, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  store i32 0, ptr %i.bg, align 4, !tbaa !44
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.bh, align 8, !tbaa !45
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %4, i32 noundef %i.f, i32 noundef %i.f)
          to label %_ZN9btMatrixXIfEC2Eii.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN9btVectorXIfE7setZeroEv.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN20btAlignedObjectArrayIS_IiEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.bj) #15
  call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.bk) #15
  br label %.body

_ZN9btMatrixXIfEC2Eii.exit:                       ; preds = %_ZN9btVectorXIfE7setZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.1)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %_ZN9btMatrixXIfEC2Eii.exit
  %i.bl = load i32, ptr %i.bc, align 4, !tbaa !25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i, label %_ZN9btMatrixXIfE7setZeroEv.exit.i, label %_Z9btSetZeroIfEvPT_i.exit.i.i

_Z9btSetZeroIfEvPT_i.exit.i.i:                    ; preds = %.noexc
  %i.bm = load ptr, ptr %i.bb, align 8, !tbaa !27
  %i.bn = sext i32 %i.bl to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bm, i8 0, i64 %i.bo, i1 false), !tbaa !9
  br label %_ZN9btMatrixXIfE7setZeroEv.exit.i

_ZN9btMatrixXIfE7setZeroEv.exit.i:                ; preds = %_Z9btSetZeroIfEvPT_i.exit.i.i, %.noexc
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.bp = load i32, ptr %4, align 8, !tbaa !37    ; 4 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i, label %_ZN9btMatrixXIfE11setIdentityEv.exit

.lr.ph.i:                                         ; preds = %_ZN9btMatrixXIfE7setZeroEv.exit.i
  %i.br = load i32, ptr %i.aw, align 4, !tbaa !38
  %i.bs = add i32 %i.br, 1                        ; 5 uses
  %i.bt = load ptr, ptr %i.bb, align 8, !tbaa !27 ; 5 uses
  %.promoted.i = load i32, ptr %i.az, align 8, !tbaa !41
  %wide.trip.count.i = zext nneg i32 %i.bp to i64 ; 2 uses
  %xtraiter439 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.bu = icmp ult i32 %i.bp, 4
  br i1 %i.bu, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod440.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod440.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod441 = icmp ne i64 %xtraiter439, 0
  call void @llvm.assume(i1 %lcmp.mod441)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bv = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  %i.bw = mul i32 %i.bs, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bx
  store float 1.000000e+00, ptr %i.by, align 4, !tbaa !9
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter439
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.f, !llvm.loop !46

._crit_edge.i:                                    ; preds = %bb.f, %._crit_edge.i.unr-lcssa
  %i.bz = add i32 %.promoted.i, %i.bp
  store i32 %i.bz, ptr %i.az, align 8, !tbaa !41
  br label %_ZN9btMatrixXIfE11setIdentityEv.exit

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  %i.ca = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cb = mul i32 %i.bs, %i.ca
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cc
  store float 1.000000e+00, ptr %i.cd, align 4, !tbaa !9
  %i.ce = trunc i64 %indvars.iv.i to i32
  %i.cf = or disjoint i32 %i.ce, 1
  %i.cg = mul i32 %i.bs, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.ch
  store float 1.000000e+00, ptr %i.ci, align 4, !tbaa !9
  %i.cj = trunc i64 %indvars.iv.i to i32
  %i.ck = or disjoint i32 %i.cj, 2
  %i.cl = mul i32 %i.bs, %i.ck
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cm
  store float 1.000000e+00, ptr %i.cn, align 4, !tbaa !9
  %i.co = trunc i64 %indvars.iv.i to i32
  %i.cp = or disjoint i32 %i.co, 3
  %i.cq = mul i32 %i.bs, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cr
  store float 1.000000e+00, ptr %i.cs, align 4, !tbaa !9
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !47

_ZN9btMatrixXIfE11setIdentityEv.exit:             ; preds = %._crit_edge.i, %_ZN9btMatrixXIfE7setZeroEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN9btMatrixXIfE8negativeEv(ptr dead_on_unwind nonnull writable sret(%struct.btMatrixX) align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %i.ct)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZN9btMatrixXIfE11setIdentityEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.cu = add nsw i32 %i.g, 2                     ; 2 uses
  store i32 %i.f, ptr %6, align 8, !tbaa !37
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 9 uses
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !38
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.cw, align 8, !tbaa !39
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !40
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 25 uses
  store i32 0, ptr %i.cy, align 8, !tbaa !41
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i8 1, ptr %i.cz, align 8, !tbaa !26
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 10 uses
  store ptr null, ptr %i.da, align 8, !tbaa !27
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 0, ptr %i.db, align 4, !tbaa !25
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 0, ptr %i.dc, align 8, !tbaa !28
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  store i8 1, ptr %i.dd, align 8, !tbaa !42
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 3 uses
  store ptr null, ptr %i.de, align 8, !tbaa !43
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  store i32 0, ptr %i.df, align 4, !tbaa !44
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.dg, align 8, !tbaa !45
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %6, i32 noundef %i.f, i32 noundef %i.cu)
          to label %_ZN9btMatrixXIfEC2Eii.exit93 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN20btAlignedObjectArrayIS_IiEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.di) #15
  call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.dj) #15
  br label %.body91

_ZN9btMatrixXIfEC2Eii.exit93:                     ; preds = %bb.h
  %i.dk = add i32 %i.f, -1                        ; 2 uses
  %i.dl = load i32, ptr %4, align 8, !tbaa !37    ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.preheader.lr.ph.i, label %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit

.preheader.lr.ph.i:                               ; preds = %_ZN9btMatrixXIfEC2Eii.exit93
  %i.dn = load i32, ptr %i.aw, align 4, !tbaa !38 ; 4 uses
  %i.do = icmp sgt i32 %i.dn, 0
  %i.dp = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.dq = load ptr, ptr %i.da, align 8            ; 7 uses
  %.promoted17.i = load i32, ptr %i.cy, align 8
  br i1 %i.do, label %.preheader.preheader.i, label %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.dr = ptrtoaddr ptr %i.dq to i64
  %i.ds = ptrtoaddr ptr %i.dp to i64
  %i.dt = load i32, ptr %i.cv, align 4            ; 3 uses
  %i.du = zext nneg i32 %i.dn to i64              ; 8 uses
  %wide.trip.count24.i = zext nneg i32 %i.dl to i64
  %i.dv = add nsw i64 %i.du, -1                   ; 2 uses
  %i.dw = sub i64 %i.dr, %i.ds
  %i.dx = mul nsw i64 %i.du, -4
  %min.iters.check329 = icmp ult i32 %i.dn, 12
  %i.dy = trunc nsw i64 %i.dv to i32
  %i.dz = icmp ugt i64 %i.dv, 4294967295
  %n.vec331 = and i64 %i.du, 2147483640           ; 3 uses
  %cmp.n338 = icmp eq i64 %n.vec331, %i.du
  %xtraiter442 = and i64 %i.du, 3                 ; 2 uses
  %lcmp.mod443.not = icmp eq i64 %xtraiter442, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i98, %.preheader.preheader.i
  %indvars.iv21.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next22.i, %._crit_edge.i98 ] ; 6 uses
  %i.ea = mul nuw nsw i64 %indvars.iv21.i, %i.du
  %i.eb = trunc i64 %indvars.iv21.i to i32
  %i.ec = mul i32 %i.dt, %i.eb                    ; 6 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.ea ; 6 uses
  br i1 %min.iters.check329, label %scalar.ph328.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i
  %i.ee = mul i64 %i.dx, %indvars.iv21.i
  %i.ef = add i64 %i.dw, %i.ee
  %i.eg = trunc i64 %indvars.iv21.i to i32
  %i.eh = mul i32 %i.dt, %i.eg
  %i.ei = sext i32 %i.eh to i64
  %i.ej = shl nsw i64 %i.ei, 2
  %i.ek = add i64 %i.ef, %i.ej
  %8 = trunc i64 %indvars.iv21.i to i32
  %9 = mul i32 %i.dt, %8                          ; 2 uses
  %i.el = add i32 %9, %i.dy
  %i.em = icmp slt i32 %i.el, %9
  %i.en = or i1 %i.em, %i.dz
  %i.eo = add i64 %i.ek, -1
  %diff.check327 = icmp ult i64 %i.eo, 31
  %or.cond426 = select i1 %i.en, i1 true, i1 %diff.check327
  br i1 %or.cond426, label %scalar.ph328.preheader, label %vector.body332

vector.body332:                                   ; preds = %vector.scevcheck, %vector.body332
  %index333 = phi i64 [ %index.next336, %vector.body332 ], [ 0, %vector.scevcheck ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %index333 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load334 = load <4 x float>, ptr %i.ep, align 4, !tbaa !9
  %wide.load335 = load <4 x float>, ptr %i.eq, align 4, !tbaa !9
  %i.er = trunc nuw nsw i64 %index333 to i32
  %i.es = add i32 %i.ec, %i.er
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <4 x float> %wide.load334, ptr %i.eu, align 4, !tbaa !9
  store <4 x float> %wide.load335, ptr %i.ev, align 4, !tbaa !9
  %index.next336 = add nuw i64 %index333, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next336, %n.vec331
  br i1 %i.ew, label %middle.block337, label %vector.body332, !llvm.loop !48

middle.block337:                                  ; preds = %vector.body332
  br i1 %cmp.n338, label %._crit_edge.i98, label %scalar.ph328.preheader

scalar.ph328.preheader:                           ; preds = %vector.scevcheck, %.preheader.i, %middle.block337
  %indvars.iv.i95.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.i ], [ %n.vec331, %middle.block337 ] ; 3 uses
  br i1 %lcmp.mod443.not, label %scalar.ph328.prol.loopexit, label %scalar.ph328.prol

scalar.ph328.prol:                                ; preds = %scalar.ph328.preheader, %scalar.ph328.prol
  %indvars.iv.i95.prol = phi i64 [ %indvars.iv.next.i96.prol, %scalar.ph328.prol ], [ %indvars.iv.i95.ph, %scalar.ph328.preheader ] ; 3 uses
  %prol.iter444 = phi i64 [ %prol.iter444.next, %scalar.ph328.prol ], [ 0, %scalar.ph328.preheader ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.i95.prol
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !9
  %i.ez = trunc nuw nsw i64 %indvars.iv.i95.prol to i32
  %.reass.i.prol = add i32 %i.ec, %i.ez
  %i.fa = sext i32 %.reass.i.prol to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.fa
  store float %i.ey, ptr %i.fb, align 4, !tbaa !9
  %indvars.iv.next.i96.prol = add nuw nsw i64 %indvars.iv.i95.prol, 1 ; 2 uses
  %prol.iter444.next = add i64 %prol.iter444, 1   ; 2 uses
  %prol.iter444.cmp.not = icmp eq i64 %prol.iter444.next, %xtraiter442
  br i1 %prol.iter444.cmp.not, label %scalar.ph328.prol.loopexit, label %scalar.ph328.prol, !llvm.loop !49

scalar.ph328.prol.loopexit:                       ; preds = %scalar.ph328.prol, %scalar.ph328.preheader
  %indvars.iv.i95.unr = phi i64 [ %indvars.iv.i95.ph, %scalar.ph328.preheader ], [ %indvars.iv.next.i96.prol, %scalar.ph328.prol ]
  %i.fc = sub nsw i64 %indvars.iv.i95.ph, %i.du
  %i.fd = icmp ugt i64 %i.fc, -4
  br i1 %i.fd, label %._crit_edge.i98, label %scalar.ph328

._crit_edge16.i:                                  ; preds = %._crit_edge.i98
  %i.fe = mul i32 %i.dn, %i.dl
  %i.ff = add i32 %.promoted17.i, %i.fe
  store i32 %i.ff, ptr %i.cy, align 8, !tbaa !41
  br label %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit

._crit_edge.i98:                                  ; preds = %scalar.ph328.prol.loopexit, %scalar.ph328, %middle.block337
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next22.i, %wide.trip.count24.i
  br i1 %exitcond25.not.i, label %._crit_edge16.i, label %.preheader.i, !llvm.loop !50

scalar.ph328:                                     ; preds = %scalar.ph328.prol.loopexit, %scalar.ph328
  %indvars.iv.i95 = phi i64 [ %indvars.iv.next.i96.3, %scalar.ph328 ], [ %indvars.iv.i95.unr, %scalar.ph328.prol.loopexit ] ; 6 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.i95
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !9
  %i.fi = trunc nuw nsw i64 %indvars.iv.i95 to i32
  %.reass.i = add i32 %i.ec, %i.fi
  %i.fj = sext i32 %.reass.i to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.fj
  store float %i.fh, ptr %i.fk, align 4, !tbaa !9
  %indvars.iv.next.i96 = add nuw nsw i64 %indvars.iv.i95, 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.i96
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !9
  %i.fn = trunc nuw nsw i64 %indvars.iv.next.i96 to i32
  %.reass.i.1 = add i32 %i.ec, %i.fn
  %i.fo = sext i32 %.reass.i.1 to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.fo
  store float %i.fm, ptr %i.fp, align 4, !tbaa !9
  %indvars.iv.next.i96.1 = add nuw nsw i64 %indvars.iv.i95, 2 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.i96.1
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !9
  %i.fs = trunc nuw nsw i64 %indvars.iv.next.i96.1 to i32
  %.reass.i.2 = add i32 %i.ec, %i.fs
  %i.ft = sext i32 %.reass.i.2 to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ft
  store float %i.fr, ptr %i.fu, align 4, !tbaa !9
  %indvars.iv.next.i96.2 = add nuw nsw i64 %indvars.iv.i95, 3 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.i96.2
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !9
  %i.fx = trunc nuw nsw i64 %indvars.iv.next.i96.2 to i32
  %.reass.i.3 = add i32 %i.ec, %i.fx
  %i.fy = sext i32 %.reass.i.3 to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.fy
  store float %i.fw, ptr %i.fz, align 4, !tbaa !9
  %indvars.iv.next.i96.3 = add nuw nsw i64 %indvars.iv.i95, 4 ; 2 uses
  %exitcond.not.i97.3 = icmp eq i64 %indvars.iv.next.i96.3, %i.du
  br i1 %exitcond.not.i97.3, label %._crit_edge.i98, label %scalar.ph328, !llvm.loop !51

_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit:    ; preds = %._crit_edge16.i, %.preheader.lr.ph.i, %_ZN9btMatrixXIfEC2Eii.exit93
  %i.ga = load i32, ptr %5, align 8, !tbaa !37    ; 3 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.preheader.lr.ph.i99, label %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit114

.preheader.lr.ph.i99:                             ; preds = %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !38 ; 4 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  %i.gh = load ptr, ptr %i.da, align 8            ; 7 uses
  %.promoted17.i100 = load i32, ptr %i.cy, align 8
  br i1 %i.ge, label %.preheader.preheader.i101, label %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit114

.preheader.preheader.i101:                        ; preds = %.preheader.lr.ph.i99
  %i.gi = ptrtoaddr ptr %i.gh to i64
  %i.gj = ptrtoaddr ptr %i.gg to i64
  %i.gk = load i32, ptr %i.cv, align 4            ; 3 uses
  %i.gl = zext nneg i32 %i.gd to i64              ; 8 uses
  %wide.trip.count24.i102 = zext nneg i32 %i.ga to i64
  %i.gm = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gn = sub i64 %i.gi, %i.gj
  %i.go = mul nsw i64 %i.gl, -4
  %min.iters.check344 = icmp ult i32 %i.gd, 12
  %i.gp = trunc nsw i64 %i.gm to i32
  %i.gq = icmp ugt i64 %i.gm, 4294967295
  %n.vec346 = and i64 %i.gl, 2147483640           ; 3 uses
  %cmp.n353 = icmp eq i64 %n.vec346, %i.gl
  %xtraiter445 = and i64 %i.gl, 3                 ; 2 uses
  %lcmp.mod446.not = icmp eq i64 %xtraiter445, 0
  br label %.preheader.i104

.preheader.i104:                                  ; preds = %._crit_edge.i110, %.preheader.preheader.i101
  %indvars.iv21.i105 = phi i64 [ 0, %.preheader.preheader.i101 ], [ %indvars.iv.next22.i111, %._crit_edge.i110 ] ; 6 uses
  %i.gr = mul nuw nsw i64 %indvars.iv21.i105, %i.gl
  %i.gs = trunc i64 %indvars.iv21.i105 to i32
  %i.gt = mul i32 %i.gk, %i.gs
  %invariant.op.i = add i32 %i.gt, %i.f           ; 6 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gr ; 6 uses
  br i1 %min.iters.check344, label %scalar.ph343.preheader, label %vector.scevcheck340

vector.scevcheck340:                              ; preds = %.preheader.i104
  %i.gv = mul i64 %i.go, %indvars.iv21.i105
  %i.gw = add i64 %i.gn, %i.gv
  %i.gx = trunc i64 %indvars.iv21.i105 to i32
  %i.gy = mul i32 %i.gk, %i.gx
  %i.gz = add i32 %i.gy, %i.f
  %i.ha = sext i32 %i.gz to i64
  %i.hb = shl nsw i64 %i.ha, 2
  %i.hc = add i64 %i.gw, %i.hb
  %10 = trunc i64 %indvars.iv21.i105 to i32
  %11 = mul i32 %i.gk, %10
  %12 = add i32 %11, %i.f                         ; 2 uses
  %i.hd = add i32 %12, %i.gp
  %i.he = icmp slt i32 %i.hd, %12
  %i.hf = or i1 %i.he, %i.gq
  %i.hg = add i64 %i.hc, -1
  %diff.check342 = icmp ult i64 %i.hg, 31
  %or.cond428 = select i1 %i.hf, i1 true, i1 %diff.check342
  br i1 %or.cond428, label %scalar.ph343.preheader, label %vector.body347

vector.body347:                                   ; preds = %vector.scevcheck340, %vector.body347
  %index348 = phi i64 [ %index.next351, %vector.body347 ], [ 0, %vector.scevcheck340 ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index348 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load349 = load <4 x float>, ptr %i.hh, align 4, !tbaa !9
  %wide.load350 = load <4 x float>, ptr %i.hi, align 4, !tbaa !9
  %i.hj = trunc nuw nsw i64 %index348 to i32
  %i.hk = add i32 %invariant.op.i, %i.hj
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.hl ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store <4 x float> %wide.load349, ptr %i.hm, align 4, !tbaa !9
  store <4 x float> %wide.load350, ptr %i.hn, align 4, !tbaa !9
  %index.next351 = add nuw i64 %index348, 8       ; 2 uses
  %i.ho = icmp eq i64 %index.next351, %n.vec346
  br i1 %i.ho, label %middle.block352, label %vector.body347, !llvm.loop !52

middle.block352:                                  ; preds = %vector.body347
  br i1 %cmp.n353, label %._crit_edge.i110, label %scalar.ph343.preheader

scalar.ph343.preheader:                           ; preds = %vector.scevcheck340, %.preheader.i104, %middle.block352
  %indvars.iv.i106.ph = phi i64 [ 0, %vector.scevcheck340 ], [ 0, %.preheader.i104 ], [ %n.vec346, %middle.block352 ] ; 3 uses
  br i1 %lcmp.mod446.not, label %scalar.ph343.prol.loopexit, label %scalar.ph343.prol

scalar.ph343.prol:                                ; preds = %scalar.ph343.preheader, %scalar.ph343.prol
  %indvars.iv.i106.prol = phi i64 [ %indvars.iv.next.i108.prol, %scalar.ph343.prol ], [ %indvars.iv.i106.ph, %scalar.ph343.preheader ] ; 3 uses
  %prol.iter447 = phi i64 [ %prol.iter447.next, %scalar.ph343.prol ], [ 0, %scalar.ph343.preheader ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.i106.prol
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !9
  %i.hr = trunc nuw nsw i64 %indvars.iv.i106.prol to i32
  %.reass.i107.prol = add i32 %invariant.op.i, %i.hr
  %i.hs = sext i32 %.reass.i107.prol to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.hs
  store float %i.hq, ptr %i.ht, align 4, !tbaa !9
  %indvars.iv.next.i108.prol = add nuw nsw i64 %indvars.iv.i106.prol, 1 ; 2 uses
  %prol.iter447.next = add i64 %prol.iter447, 1   ; 2 uses
  %prol.iter447.cmp.not = icmp eq i64 %prol.iter447.next, %xtraiter445
  br i1 %prol.iter447.cmp.not, label %scalar.ph343.prol.loopexit, label %scalar.ph343.prol, !llvm.loop !53

scalar.ph343.prol.loopexit:                       ; preds = %scalar.ph343.prol, %scalar.ph343.preheader
  %indvars.iv.i106.unr = phi i64 [ %indvars.iv.i106.ph, %scalar.ph343.preheader ], [ %indvars.iv.next.i108.prol, %scalar.ph343.prol ]
  %i.hu = sub nsw i64 %indvars.iv.i106.ph, %i.gl
  %i.hv = icmp ugt i64 %i.hu, -4
  br i1 %i.hv, label %._crit_edge.i110, label %scalar.ph343

._crit_edge16.i113:                               ; preds = %._crit_edge.i110
  %i.hw = mul i32 %i.gd, %i.ga
  %i.hx = add i32 %.promoted17.i100, %i.hw
  store i32 %i.hx, ptr %i.cy, align 8, !tbaa !41
  br label %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit114

._crit_edge.i110:                                 ; preds = %scalar.ph343.prol.loopexit, %scalar.ph343, %middle.block352
  %indvars.iv.next22.i111 = add nuw nsw i64 %indvars.iv21.i105, 1 ; 2 uses
  %exitcond25.not.i112 = icmp eq i64 %indvars.iv.next22.i111, %wide.trip.count24.i102
  br i1 %exitcond25.not.i112, label %._crit_edge16.i113, label %.preheader.i104, !llvm.loop !50

scalar.ph343:                                     ; preds = %scalar.ph343.prol.loopexit, %scalar.ph343
  %indvars.iv.i106 = phi i64 [ %indvars.iv.next.i108.3, %scalar.ph343 ], [ %indvars.iv.i106.unr, %scalar.ph343.prol.loopexit ] ; 6 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.i106
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !9
  %i.ia = trunc nuw nsw i64 %indvars.iv.i106 to i32
  %.reass.i107 = add i32 %invariant.op.i, %i.ia
  %i.ib = sext i32 %.reass.i107 to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.ib
  store float %i.hz, ptr %i.ic, align 4, !tbaa !9
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i106, 1 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i108
  %i.ie = load float, ptr %i.id, align 4, !tbaa !9
  %i.if = trunc nuw nsw i64 %indvars.iv.next.i108 to i32
  %.reass.i107.1 = add i32 %invariant.op.i, %i.if
  %i.ig = sext i32 %.reass.i107.1 to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.ig
  store float %i.ie, ptr %i.ih, align 4, !tbaa !9
  %indvars.iv.next.i108.1 = add nuw nsw i64 %indvars.iv.i106, 2 ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i108.1
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !9
  %i.ik = trunc nuw nsw i64 %indvars.iv.next.i108.1 to i32
  %.reass.i107.2 = add i32 %invariant.op.i, %i.ik
  %i.il = sext i32 %.reass.i107.2 to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.il
  store float %i.ij, ptr %i.im, align 4, !tbaa !9
  %indvars.iv.next.i108.2 = add nuw nsw i64 %indvars.iv.i106, 3 ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i108.2
  %i.io = load float, ptr %i.in, align 4, !tbaa !9
  %i.ip = trunc nuw nsw i64 %indvars.iv.next.i108.2 to i32
  %.reass.i107.3 = add i32 %invariant.op.i, %i.ip
  %i.iq = sext i32 %.reass.i107.3 to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.iq
  store float %i.io, ptr %i.ir, align 4, !tbaa !9
  %indvars.iv.next.i108.3 = add nuw nsw i64 %indvars.iv.i106, 4 ; 2 uses
  %exitcond.not.i109.3 = icmp eq i64 %indvars.iv.next.i108.3, %i.gl
  br i1 %exitcond.not.i109.3, label %._crit_edge.i110, label %scalar.ph343, !llvm.loop !54

_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit114: ; preds = %._crit_edge16.i113, %.preheader.lr.ph.i99, %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit
  br i1 %i.l, label %.preheader.lr.ph.i115, label %_ZN9btMatrixXIfE12setSubMatrixEiiiif.exit

.preheader.lr.ph.i115:                            ; preds = %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit114
  %i.is = load i32, ptr %i.cv, align 4            ; 6 uses
  %i.it = load ptr, ptr %i.da, align 8            ; 6 uses
  %.promoted20.i = load i32, ptr %i.cy, align 8
  %i.iu = zext i32 %i.dk to i64                   ; 2 uses
  %i.iv = zext nneg i32 %i.f to i64               ; 2 uses
  %min.iters.check357 = icmp ult i32 %i.f, 8
  br i1 %min.iters.check357, label %.preheader.i118.preheader, label %vector.scevcheck355

vector.scevcheck355:                              ; preds = %.preheader.lr.ph.i115
  %ident.check = icmp ne i32 %i.is, 1
  %i.iw = add i32 %i.g, %i.dk
  %i.ix = icmp slt i32 %i.iw, %i.g
  %i.iy = or i1 %ident.check, %i.ix
  br i1 %i.iy, label %.preheader.i118.preheader, label %vector.ph358

vector.ph358:                                     ; preds = %vector.scevcheck355
  %n.vec359 = and i64 %i.iv, 2147483640           ; 3 uses
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next362, %vector.body360 ] ; 2 uses
  %i.iz = trunc i64 %index361 to i32
  %i.ja = add i32 %i.g, %i.iz
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store <4 x float> splat (float -1.000000e+00), ptr %i.jc, align 4, !tbaa !9
  store <4 x float> splat (float -1.000000e+00), ptr %i.jd, align 4, !tbaa !9
  %index.next362 = add nuw i64 %index361, 8       ; 2 uses
  %i.je = icmp eq i64 %index.next362, %n.vec359
  br i1 %i.je, label %middle.block363, label %vector.body360, !llvm.loop !55

middle.block363:                                  ; preds = %vector.body360
  %cmp.n364 = icmp eq i64 %n.vec359, %i.iv
  br i1 %cmp.n364, label %._crit_edge19.i, label %.preheader.i118.preheader

.preheader.i118.preheader:                        ; preds = %vector.scevcheck355, %.preheader.lr.ph.i115, %middle.block363
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck355 ], [ 0, %.preheader.lr.ph.i115 ], [ %n.vec359, %middle.block363 ] ; 3 uses
  %i.jf = sub nsw i64 %i.iu, %indvars.iv.ph
  %i.jg = and i32 %i.f, 3                         ; 2 uses
  %xtraiter448 = zext nneg i32 %i.jg to i64
  %lcmp.mod449.not = icmp eq i32 %i.jg, 0
  br i1 %lcmp.mod449.not, label %.preheader.i118.prol.loopexit, label %.preheader.i118.prol

.preheader.i118.prol:                             ; preds = %.preheader.i118.preheader, %.preheader.i118.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.preheader.i118.prol ], [ %indvars.iv.ph, %.preheader.i118.preheader ] ; 2 uses
  %prol.iter450 = phi i64 [ %prol.iter450.next, %.preheader.i118.prol ], [ 0, %.preheader.i118.preheader ]
  %i.jh = trunc i64 %indvars.iv.prol to i32
  %i.ji = mul i32 %i.is, %i.jh
  %invariant.op.i119.prol = add i32 %i.ji, %i.g
  %i.jj = sext i32 %invariant.op.i119.prol to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jj
  store float -1.000000e+00, ptr %i.jk, align 4, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter450.next = add i64 %prol.iter450, 1   ; 2 uses
  %prol.iter450.cmp.not = icmp eq i64 %prol.iter450.next, %xtraiter448
  br i1 %prol.iter450.cmp.not, label %.preheader.i118.prol.loopexit, label %.preheader.i118.prol, !llvm.loop !56

.preheader.i118.prol.loopexit:                    ; preds = %.preheader.i118.prol, %.preheader.i118.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.i118.preheader ], [ %indvars.iv.next.prol, %.preheader.i118.prol ]
  %i.jl = icmp ult i64 %i.jf, 3
  br i1 %i.jl, label %._crit_edge19.i, label %.preheader.i118

.preheader.i118:                                  ; preds = %.preheader.i118.prol.loopexit, %.preheader.i118
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.i118 ], [ %indvars.iv.unr, %.preheader.i118.prol.loopexit ] ; 5 uses
  %i.jm = trunc i64 %indvars.iv to i32
  %i.jn = mul i32 %i.is, %i.jm
  %invariant.op.i119 = add i32 %i.jn, %i.g
  %i.jo = sext i32 %invariant.op.i119 to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jo
  store float -1.000000e+00, ptr %i.jp, align 4, !tbaa !9
  %i.jq = trunc i64 %indvars.iv to i32
  %i.jr = add i32 %i.jq, 1
  %i.js = mul i32 %i.is, %i.jr
  %invariant.op.i119.1 = add i32 %i.js, %i.g
  %i.jt = sext i32 %invariant.op.i119.1 to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jt
  store float -1.000000e+00, ptr %i.ju, align 4, !tbaa !9
  %i.jv = trunc i64 %indvars.iv to i32
  %i.jw = add i32 %i.jv, 2
  %i.jx = mul i32 %i.is, %i.jw
  %invariant.op.i119.2 = add i32 %i.jx, %i.g
  %i.jy = sext i32 %invariant.op.i119.2 to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jy
  store float -1.000000e+00, ptr %i.jz, align 4, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ka = trunc i64 %indvars.iv.next.2 to i32
  %i.kb = mul i32 %i.is, %i.ka
  %invariant.op.i119.3 = add i32 %i.kb, %i.g
  %i.kc = sext i32 %invariant.op.i119.3 to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.kc
  store float -1.000000e+00, ptr %i.kd, align 4, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond25.not.i125.3 = icmp eq i64 %indvars.iv.next.2, %i.iu
  br i1 %exitcond25.not.i125.3, label %._crit_edge19.i, label %.preheader.i118, !llvm.loop !57

._crit_edge19.i:                                  ; preds = %.preheader.i118.prol.loopexit, %.preheader.i118, %middle.block363
end_hunk_0
