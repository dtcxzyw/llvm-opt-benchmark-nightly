Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodyMLCPConstraintSolver?download=true
inline.NumInlined: 604
inline.NumDeleted: 179
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 48
begin_hunk_0
@.str.6 = private unnamed_addr constant [11 x i8] c"ofs resize\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Compute J and JinvM\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"m_A.resize\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"m_A.setZero\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Compute A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"compute diagonal\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"fill the upper triangle \00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"resize/init x\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"gather constraint data\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"createMLCPFast\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"solveMLCP\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"process MLCP results\00", align 1
@_ZTV31btMultiBodyMLCPConstraintSolver = dso_local constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTI31btMultiBodyMLCPConstraintSolver, ptr @_ZN31btMultiBodyMLCPConstraintSolverD2Ev, ptr @_ZN31btMultiBodyMLCPConstraintSolverD0Ev, ptr @_ZN18btConstraintSolver12prepareSolveEii, ptr @_ZN27btMultiBodyConstraintSolver10solveGroupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btDispatcher, ptr @_ZN18btConstraintSolver9allSolvedERK19btContactSolverInfoP12btIDebugDraw, ptr @_ZN35btSequentialImpulseConstraintSolver5resetEv, ptr @_ZNK31btMultiBodyMLCPConstraintSolver13getSolverTypeEv, ptr @_ZN27btMultiBodyConstraintSolver15convertContactsEPP20btPersistentManifoldiRK19btContactSolverInfo, ptr @_ZN35btSequentialImpulseConstraintSolver13convertJointsEPP17btTypedConstraintiRK19btContactSolverInfo, ptr @_ZN35btSequentialImpulseConstraintSolver13convertBodiesEPP17btCollisionObjectiRK19btContactSolverInfo, ptr @_ZN35btSequentialImpulseConstraintSolver45solveGroupCacheFriendlySplitImpulseIterationsEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDraw, ptr @_ZN27btMultiBodyConstraintSolver29solveGroupCacheFriendlyFinishEPP17btCollisionObjectiRK19btContactSolverInfo, ptr @_ZN27btMultiBodyConstraintSolver20solveSingleIterationEiPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDraw, ptr @_ZN31btMultiBodyMLCPConstraintSolver28solveGroupCacheFriendlySetupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDraw, ptr @_ZN31btMultiBodyMLCPConstraintSolver33solveGroupCacheFriendlyIterationsEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDraw, ptr @_ZN27btMultiBodyConstraintSolver19solveMultiBodyGroupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiPP21btMultiBodyConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btDispatcher, ptr @_ZN31btMultiBodyMLCPConstraintSolver14createMLCPFastERK19btContactSolverInfo, ptr @_ZN31btMultiBodyMLCPConstraintSolver9solveMLCPERK19btContactSolverInfo] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTI31btMultiBodyMLCPConstraintSolver = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS31btMultiBodyMLCPConstraintSolver, ptr @_ZTI27btMultiBodyConstraintSolver }, align 8
@_ZTS31btMultiBodyMLCPConstraintSolver = dso_local constant [34 x i8] c"31btMultiBodyMLCPConstraintSolver\00", align 1
@_ZTI27btMultiBodyConstraintSolver = external constant ptr
@_ZTV27btMultiBodyConstraintSolver = external constant { [18 x ptr] }, align 8
@.str.19 = private unnamed_addr constant [17 x i8] c"m_storage.resize\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"storage=0\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN31btMultiBodyMLCPConstraintSolverC1EP21btMLCPSolverInterface = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN31btMultiBodyMLCPConstraintSolverC2EP21btMLCPSolverInterface
@_ZN31btMultiBodyMLCPConstraintSolverD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN31btMultiBodyMLCPConstraintSolverD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31btMultiBodyMLCPConstraintSolver14createMLCPFastERK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(1640) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN31btMultiBodyMLCPConstraintSolver23createMLCPFastRigidBodyERK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(1640) %0, ptr noundef nonnull align 4 dereferenceable(128) %1)
  tail call void @_ZN31btMultiBodyMLCPConstraintSolver23createMLCPFastMultiBodyERK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(1640) %0, ptr noundef nonnull align 4 dereferenceable(128) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31btMultiBodyMLCPConstraintSolver23createMLCPFastRigidBodyERK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(1640) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CProfileSample, align 1      ; 4 uses
  %3 = alloca %class.CProfileSample, align 1      ; 4 uses
  %4 = alloca %class.CProfileSample, align 1      ; 4 uses
  %5 = alloca %class.CProfileSample, align 1      ; 6 uses
  %6 = alloca %class.CProfileSample, align 1      ; 4 uses
  %7 = alloca %class.CProfileSample, align 1      ; 6 uses
  %8 = alloca %class.CProfileSample, align 1      ; 6 uses
  %9 = alloca %class.CProfileSample, align 1      ; 6 uses
  %10 = alloca %class.CProfileSample, align 1     ; 6 uses
  %11 = alloca %class.CProfileSample, align 1     ; 6 uses
  %12 = alloca %class.CProfileSample, align 1     ; 6 uses
  %13 = alloca %class.CProfileSample, align 1     ; 6 uses
  %14 = alloca %class.CProfileSample, align 1     ; 6 uses
  %15 = alloca %class.CProfileSample, align 1     ; 6 uses
  %16 = alloca %class.CProfileSample, align 1     ; 5 uses
  %17 = alloca %class.CProfileSample, align 1     ; 5 uses
  %18 = alloca %class.CProfileSample, align 1     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 9 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 39 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN20btAlignedObjectArrayIiED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull @.str)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16   ; 2 uses
  %i.f = icmp sgt i32 %i.b, %i.e
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20
  %i.i = icmp slt i32 %i.h, %i.b
  br i1 %i.i, label %bb.d, label %..lr.ph.i_crit_edge.i

..lr.ph.i_crit_edge.i:                            ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 896
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  %.pre890 = sext i32 %i.b to i64
  br label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = sext i32 %i.b to i64                     ; 2 uses
  %i.k = shl nsw i64 %i.j, 2
  %i.l = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.k, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i unwind label %bb.o ; 9 uses

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i: ; preds = %bb.d
  %.pre.i.i = load i32, ptr %i.d, align 4, !tbaa !16 ; 3 uses
  %i.m = icmp sgt i32 %.pre.i.i, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = ptrtoaddr ptr %i.l to i64
  %wide.trip.count.i.i.i.i = zext nneg i32 %.pre.i.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre.i.i, 8
  %i.r = sub i64 %i.p, %i.q
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond1101 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1101, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x float>, ptr %i.t, align 4, !tbaa !22
  %wide.load969 = load <4 x float>, ptr %i.u, align 4, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x float> %wide.load, ptr %i.s, align 4, !tbaa !22
  store <4 x float> %wide.load969, ptr %i.v, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !24

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
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i.i.i.prol
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i.prol
  %i.z = load float, ptr %i.y, align 4, !tbaa !22
  store float %i.z, ptr %i.x, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !28

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !22
  store float %i.ae, ptr %i.ac, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.i.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !22
  store float %i.ah, ptr %i.af, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.i.i.1
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.1
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !22
  store float %i.ak, ptr %i.ai, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.i.i.2
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.2
  %i.an = load float, ptr %i.am, align 4, !tbaa !22
  store float %i.an, ptr %i.al, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph, !llvm.loop !30

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !31, !range !32, !noundef !33
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.e, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i unwind label %bb.o

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 904
  store i8 1, ptr %i.ar, align 8, !tbaa !31
  store ptr %i.l, ptr %i.n, align 8, !tbaa !21
  store i32 %i.b, ptr %i.g, align 8, !tbaa !20
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i, %..lr.ph.i_crit_edge.i
  %wide.trip.count.i.i.pre-phi = phi i64 [ %i.j, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i ], [ %.pre890, %..lr.ph.i_crit_edge.i ]
  %i.as = phi ptr [ %i.l, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i ], [ %.pre.i, %..lr.ph.i_crit_edge.i ]
  %i.at = sext i32 %i.e to i64                    ; 2 uses
  %i.au = shl nsw i64 %i.at, 2
  %scevgep.i = getelementptr i8, ptr %i.as, i64 %i.au
  %i.av = sub nsw i64 %wide.trip.count.i.i.pre-phi, %i.at
  %i.aw = shl nuw nsw i64 %i.av, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.aw, i1 false), !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i, %bb.b
  store i32 %i.b, ptr %i.d, align 4, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1012 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !16 ; 2 uses
  %i.az = icmp sgt i32 %i.b, %i.ay
  br i1 %i.az, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  store i32 %i.b, ptr %i.ax, align 4, !tbaa !16
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %.pre.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !21
  %.pre893 = sext i32 %i.b to i64                 ; 2 uses
  br label %_Z9btSetZeroIfEvPT_i.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !20
  %i.bc = icmp slt i32 %i.bb, %i.b
  br i1 %i.bc, label %bb.h, label %..lr.ph.i_crit_edge.i382

..lr.ph.i_crit_edge.i382:                         ; preds = %bb.g
  %.phi.trans.insert.i383 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %.pre.i384 = load ptr, ptr %.phi.trans.insert.i383, align 8, !tbaa !21
  %.pre891 = sext i32 %i.b to i64
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bd = sext i32 %i.b to i64                    ; 2 uses
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.be, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i390 unwind label %bb.o ; 9 uses

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i390: ; preds = %bb.h
  %.pre.i.i389 = load i32, ptr %i.ax, align 4, !tbaa !16 ; 3 uses
  %i.bg = icmp sgt i32 %.pre.i.i389, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21 ; 9 uses
  br i1 %i.bg, label %.lr.ph.i.i.i.i396, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i392

.lr.ph.i.i.i.i396:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i390
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = ptrtoaddr ptr %i.bf to i64
  %wide.trip.count.i.i.i.i397 = zext nneg i32 %.pre.i.i389 to i64 ; 5 uses
  %min.iters.check973 = icmp ult i32 %.pre.i.i389, 8
  %i.bl = sub i64 %i.bj, %i.bk
  %diff.check971 = icmp ugt i64 %i.bl, -32
  %or.cond1102 = select i1 %min.iters.check973, i1 true, i1 %diff.check971
  br i1 %or.cond1102, label %scalar.ph972.preheader, label %vector.ph974

vector.ph974:                                     ; preds = %.lr.ph.i.i.i.i396
  %n.vec975 = and i64 %wide.trip.count.i.i.i.i397, 2147483640 ; 3 uses
  br label %vector.body976

vector.body976:                                   ; preds = %vector.body976, %vector.ph974
  %index977 = phi i64 [ 0, %vector.ph974 ], [ %index.next980, %vector.body976 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index977 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index977 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load978 = load <4 x float>, ptr %i.bn, align 4, !tbaa !22
  %wide.load979 = load <4 x float>, ptr %i.bo, align 4, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x float> %wide.load978, ptr %i.bm, align 4, !tbaa !22
  store <4 x float> %wide.load979, ptr %i.bp, align 4, !tbaa !22
  %index.next980 = add nuw i64 %index977, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next980, %n.vec975
  br i1 %i.bq, label %middle.block981, label %vector.body976, !llvm.loop !34

middle.block981:                                  ; preds = %vector.body976
  %cmp.n982 = icmp eq i64 %n.vec975, %wide.trip.count.i.i.i.i397
  br i1 %cmp.n982, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i394, label %scalar.ph972.preheader

scalar.ph972.preheader:                           ; preds = %.lr.ph.i.i.i.i396, %middle.block981
  %indvars.iv.i.i.i.i398.ph = phi i64 [ 0, %.lr.ph.i.i.i.i396 ], [ %n.vec975, %middle.block981 ] ; 3 uses
  %xtraiter1112 = and i64 %wide.trip.count.i.i.i.i397, 3 ; 2 uses
  %lcmp.mod1113.not = icmp eq i64 %xtraiter1112, 0
  br i1 %lcmp.mod1113.not, label %scalar.ph972.prol.loopexit, label %scalar.ph972.prol

scalar.ph972.prol:                                ; preds = %scalar.ph972.preheader, %scalar.ph972.prol
  %indvars.iv.i.i.i.i398.prol = phi i64 [ %indvars.iv.next.i.i.i.i399.prol, %scalar.ph972.prol ], [ %indvars.iv.i.i.i.i398.ph, %scalar.ph972.preheader ] ; 3 uses
  %prol.iter1114 = phi i64 [ %prol.iter1114.next, %scalar.ph972.prol ], [ 0, %scalar.ph972.preheader ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i.i398.prol
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i.i.i398.prol
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !22
  store float %i.bt, ptr %i.br, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i399.prol = add nuw nsw i64 %indvars.iv.i.i.i.i398.prol, 1 ; 2 uses
  %prol.iter1114.next = add i64 %prol.iter1114, 1 ; 2 uses
  %prol.iter1114.cmp.not = icmp eq i64 %prol.iter1114.next, %xtraiter1112
  br i1 %prol.iter1114.cmp.not, label %scalar.ph972.prol.loopexit, label %scalar.ph972.prol, !llvm.loop !35

scalar.ph972.prol.loopexit:                       ; preds = %scalar.ph972.prol, %scalar.ph972.preheader
  %indvars.iv.i.i.i.i398.unr = phi i64 [ %indvars.iv.i.i.i.i398.ph, %scalar.ph972.preheader ], [ %indvars.iv.next.i.i.i.i399.prol, %scalar.ph972.prol ]
  %i.bu = sub nsw i64 %indvars.iv.i.i.i.i398.ph, %wide.trip.count.i.i.i.i397
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i394, label %scalar.ph972

scalar.ph972:                                     ; preds = %scalar.ph972.prol.loopexit, %scalar.ph972
  %indvars.iv.i.i.i.i398 = phi i64 [ %indvars.iv.next.i.i.i.i399.3, %scalar.ph972 ], [ %indvars.iv.i.i.i.i398.unr, %scalar.ph972.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i.i398
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i.i.i398
  %i.by = load float, ptr %i.bx, align 4, !tbaa !22
  store float %i.by, ptr %i.bw, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i399 = add nuw nsw i64 %indvars.iv.i.i.i.i398, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i399
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next.i.i.i.i399
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !22
  store float %i.cb, ptr %i.bz, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i399.1 = add nuw nsw i64 %indvars.iv.i.i.i.i398, 2 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i399.1
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next.i.i.i.i399.1
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !22
  store float %i.ce, ptr %i.cc, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i399.2 = add nuw nsw i64 %indvars.iv.i.i.i.i398, 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i399.2
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next.i.i.i.i399.2
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !22
  store float %i.ch, ptr %i.cf, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i399.3 = add nuw nsw i64 %indvars.iv.i.i.i.i398, 4 ; 2 uses
  %exitcond.not.i.i.i.i400.3 = icmp eq i64 %indvars.iv.next.i.i.i.i399.3, %wide.trip.count.i.i.i.i397
  br i1 %exitcond.not.i.i.i.i400.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i394, label %scalar.ph972, !llvm.loop !36

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i392: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i390
  %.not.i5.i.i.i393 = icmp eq ptr %i.bi, null
  br i1 %.not.i5.i.i.i393, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i395, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i394

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i394: ; preds = %scalar.ph972.prol.loopexit, %scalar.ph972, %middle.block981, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i392
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !31, !range !32, !noundef !33
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i395

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i394
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bi)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i395 unwind label %bb.o

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i395: ; preds = %bb.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i394, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i392
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i8 1, ptr %i.cl, align 8, !tbaa !31
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !21
  store i32 %i.b, ptr %i.ba, align 8, !tbaa !20
  %.pr.pre = load i32, ptr %i.d, align 4, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %..lr.ph.i_crit_edge.i382, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i395
  %wide.trip.count.i.i386.pre-phi = phi i64 [ %.pre891, %..lr.ph.i_crit_edge.i382 ], [ %i.bd, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i395 ] ; 3 uses
  %.pr = phi i32 [ %i.b, %..lr.ph.i_crit_edge.i382 ], [ %.pr.pre, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i395 ] ; 2 uses
  %i.cm = phi ptr [ %.pre.i384, %..lr.ph.i_crit_edge.i382 ], [ %i.bf, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i395 ] ; 3 uses
  %i.cn = sext i32 %i.ay to i64                   ; 2 uses
  %i.co = shl nsw i64 %i.cn, 2
  %scevgep.i387 = getelementptr i8, ptr %i.cm, i64 %i.co
  %i.cp = sub nsw i64 %wide.trip.count.i.i386.pre-phi, %i.cn
  %i.cq = shl nuw nsw i64 %i.cp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i387, i8 0, i64 %i.cq, i1 false), !tbaa !22
  store i32 %i.b, ptr %i.ax, align 4, !tbaa !16
  %.not.i = icmp eq i32 %.pr, 0
  br i1 %.not.i, label %_ZN9btVectorXIfE7setZeroEv.exit406, label %._Z9btSetZeroIfEvPT_i.exit.i_crit_edge

._Z9btSetZeroIfEvPT_i.exit.i_crit_edge:           ; preds = %bb.j
  %.pre894 = sext i32 %.pr to i64
  br label %_Z9btSetZeroIfEvPT_i.exit.i

_Z9btSetZeroIfEvPT_i.exit.i:                      ; preds = %._Z9btSetZeroIfEvPT_i.exit.i_crit_edge, %.thread
  %.pre-phi895 = phi i64 [ %.pre894, %._Z9btSetZeroIfEvPT_i.exit.i_crit_edge ], [ %.pre893, %.thread ]
  %.pre892.pre-phi = phi i64 [ %wide.trip.count.i.i386.pre-phi, %._Z9btSetZeroIfEvPT_i.exit.i_crit_edge ], [ %.pre893, %.thread ]
  %.pre = phi ptr [ %i.cm, %._Z9btSetZeroIfEvPT_i.exit.i_crit_edge ], [ %.pre.pre, %.thread ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !21
  %i.ct = shl nuw nsw i64 %.pre-phi895, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cs, i8 0, i64 %i.ct, i1 false), !tbaa !22
  br label %_ZN9btVectorXIfE7setZeroEv.exit406

_ZN9btVectorXIfE7setZeroEv.exit406:               ; preds = %_Z9btSetZeroIfEvPT_i.exit.i, %bb.j
  %.pre-phi = phi i64 [ %.pre892.pre-phi, %_Z9btSetZeroIfEvPT_i.exit.i ], [ %wide.trip.count.i.i386.pre-phi, %bb.j ] ; 5 uses
  %i.cu = phi ptr [ %.pre, %_Z9btSetZeroIfEvPT_i.exit.i ], [ %i.cm, %bb.j ] ; 2 uses
  %i.cv = shl nsw i64 %.pre-phi, 2                ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cu, i8 0, i64 %i.cv, i1 false), !tbaa !22
  %i.cw = icmp sgt i32 %i.b, 0                    ; 2 uses
  br i1 %i.cw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN9btVectorXIfE7setZeroEv.exit406
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !37
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 896
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.p

._crit_edge:                                      ; preds = %bb.r, %_ZN9btVectorXIfE7setZeroEv.exit406
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !16 ; 2 uses
  %i.dc = icmp sgt i32 %i.b, %i.db
  br i1 %i.dc, label %bb.k, label %_ZN9btVectorXIfE6resizeEi.exit426

bb.k:                                             ; preds = %._crit_edge
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !20
  %i.df = icmp slt i32 %i.de, %i.b
  br i1 %i.df, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i415, label %..lr.ph.i_crit_edge.i407

..lr.ph.i_crit_edge.i407:                         ; preds = %bb.k
  %.phi.trans.insert.i408 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %.pre.i409 = load ptr, ptr %.phi.trans.insert.i408, align 8, !tbaa !21
  br label %.lr.ph.i.i410

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i415: ; preds = %bb.k
  %i.dg = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cv, i32 noundef 16) ; 9 uses
  %.pre.i.i414 = load i32, ptr %i.da, align 4, !tbaa !16 ; 3 uses
  %i.dh = icmp sgt i32 %.pre.i.i414, 0
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !21 ; 9 uses
  br i1 %i.dh, label %.lr.ph.i.i.i.i421, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i417

.lr.ph.i.i.i.i421:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i415
  %i.dk = ptrtoaddr ptr %i.dj to i64
  %i.dl = ptrtoaddr ptr %i.dg to i64
  %wide.trip.count.i.i.i.i422 = zext nneg i32 %.pre.i.i414 to i64 ; 5 uses
  %min.iters.check987 = icmp ult i32 %.pre.i.i414, 8
  %i.dm = sub i64 %i.dk, %i.dl
  %diff.check985 = icmp ugt i64 %i.dm, -32
  %or.cond1103 = select i1 %min.iters.check987, i1 true, i1 %diff.check985
  br i1 %or.cond1103, label %scalar.ph986.preheader, label %vector.ph988

vector.ph988:                                     ; preds = %.lr.ph.i.i.i.i421
  %n.vec989 = and i64 %wide.trip.count.i.i.i.i422, 2147483640 ; 3 uses
  br label %vector.body990

vector.body990:                                   ; preds = %vector.body990, %vector.ph988
  %index991 = phi i64 [ 0, %vector.ph988 ], [ %index.next994, %vector.body990 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index991 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index991 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load992 = load <4 x float>, ptr %i.do, align 4, !tbaa !22
  %wide.load993 = load <4 x float>, ptr %i.dp, align 4, !tbaa !22
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <4 x float> %wide.load992, ptr %i.dn, align 4, !tbaa !22
  store <4 x float> %wide.load993, ptr %i.dq, align 4, !tbaa !22
  %index.next994 = add nuw i64 %index991, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next994, %n.vec989
  br i1 %i.dr, label %middle.block995, label %vector.body990, !llvm.loop !38

middle.block995:                                  ; preds = %vector.body990
  %cmp.n996 = icmp eq i64 %n.vec989, %wide.trip.count.i.i.i.i422
  br i1 %cmp.n996, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i419, label %scalar.ph986.preheader

scalar.ph986.preheader:                           ; preds = %.lr.ph.i.i.i.i421, %middle.block995
  %indvars.iv.i.i.i.i423.ph = phi i64 [ 0, %.lr.ph.i.i.i.i421 ], [ %n.vec989, %middle.block995 ] ; 3 uses
  %xtraiter1115 = and i64 %wide.trip.count.i.i.i.i422, 3 ; 2 uses
  %lcmp.mod1116.not = icmp eq i64 %xtraiter1115, 0
  br i1 %lcmp.mod1116.not, label %scalar.ph986.prol.loopexit, label %scalar.ph986.prol

scalar.ph986.prol:                                ; preds = %scalar.ph986.preheader, %scalar.ph986.prol
  %indvars.iv.i.i.i.i423.prol = phi i64 [ %indvars.iv.next.i.i.i.i424.prol, %scalar.ph986.prol ], [ %indvars.iv.i.i.i.i423.ph, %scalar.ph986.preheader ] ; 3 uses
  %prol.iter1117 = phi i64 [ %prol.iter1117.next, %scalar.ph986.prol ], [ 0, %scalar.ph986.preheader ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.i.i.i.i423.prol
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.i.i.i.i423.prol
  %i.du = load float, ptr %i.dt, align 4, !tbaa !22
  store float %i.du, ptr %i.ds, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i424.prol = add nuw nsw i64 %indvars.iv.i.i.i.i423.prol, 1 ; 2 uses
  %prol.iter1117.next = add i64 %prol.iter1117, 1 ; 2 uses
  %prol.iter1117.cmp.not = icmp eq i64 %prol.iter1117.next, %xtraiter1115
  br i1 %prol.iter1117.cmp.not, label %scalar.ph986.prol.loopexit, label %scalar.ph986.prol, !llvm.loop !39

scalar.ph986.prol.loopexit:                       ; preds = %scalar.ph986.prol, %scalar.ph986.preheader
  %indvars.iv.i.i.i.i423.unr = phi i64 [ %indvars.iv.i.i.i.i423.ph, %scalar.ph986.preheader ], [ %indvars.iv.next.i.i.i.i424.prol, %scalar.ph986.prol ]
  %i.dv = sub nsw i64 %indvars.iv.i.i.i.i423.ph, %wide.trip.count.i.i.i.i422
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i419, label %scalar.ph986

scalar.ph986:                                     ; preds = %scalar.ph986.prol.loopexit, %scalar.ph986
  %indvars.iv.i.i.i.i423 = phi i64 [ %indvars.iv.next.i.i.i.i424.3, %scalar.ph986 ], [ %indvars.iv.i.i.i.i423.unr, %scalar.ph986.prol.loopexit ] ; 6 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.i.i.i.i423
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.i.i.i.i423
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !22
  store float %i.dz, ptr %i.dx, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i424 = add nuw nsw i64 %indvars.iv.i.i.i.i423, 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.next.i.i.i.i424
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next.i.i.i.i424
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !22
  store float %i.ec, ptr %i.ea, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i424.1 = add nuw nsw i64 %indvars.iv.i.i.i.i423, 2 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.next.i.i.i.i424.1
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next.i.i.i.i424.1
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !22
  store float %i.ef, ptr %i.ed, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i424.2 = add nuw nsw i64 %indvars.iv.i.i.i.i423, 3 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.next.i.i.i.i424.2
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next.i.i.i.i424.2
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !22
  store float %i.ei, ptr %i.eg, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i424.3 = add nuw nsw i64 %indvars.iv.i.i.i.i423, 4 ; 2 uses
  %exitcond.not.i.i.i.i425.3 = icmp eq i64 %indvars.iv.next.i.i.i.i424.3, %wide.trip.count.i.i.i.i422
  br i1 %exitcond.not.i.i.i.i425.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i419, label %scalar.ph986, !llvm.loop !40

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i417: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i415
  %.not.i5.i.i.i418 = icmp eq ptr %i.dj, null
  br i1 %.not.i5.i.i.i418, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i420, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i419

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i419: ; preds = %scalar.ph986.prol.loopexit, %scalar.ph986, %middle.block995, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i417
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !31, !range !32, !noundef !33
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.l, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i420

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i419
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dj)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i420

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i420: ; preds = %bb.l, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i419, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i417
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i8 1, ptr %i.em, align 8, !tbaa !31
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !21
  store i32 %i.b, ptr %i.dd, align 8, !tbaa !20
  br label %.lr.ph.i.i410

.lr.ph.i.i410:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i420, %..lr.ph.i_crit_edge.i407
  %i.en = phi ptr [ %.pre.i409, %..lr.ph.i_crit_edge.i407 ], [ %i.dg, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i420 ]
  %i.eo = sext i32 %i.db to i64                   ; 2 uses
  %i.ep = shl nsw i64 %i.eo, 2
  %scevgep.i412 = getelementptr i8, ptr %i.en, i64 %i.ep
  %i.eq = sub nsw i64 %.pre-phi, %i.eo
  %i.er = shl nuw nsw i64 %i.eq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i412, i8 0, i64 %i.er, i1 false), !tbaa !22
  br label %_ZN9btVectorXIfE6resizeEi.exit426

_ZN9btVectorXIfE6resizeEi.exit426:                ; preds = %._crit_edge, %.lr.ph.i.i410
  store i32 %i.b, ptr %i.da, align 4, !tbaa !16
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 980 ; 3 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !16 ; 2 uses
  %i.eu = icmp sgt i32 %i.b, %i.et
  br i1 %i.eu, label %bb.m, label %_ZN9btVectorXIfE6resizeEi.exit446

bb.m:                                             ; preds = %_ZN9btVectorXIfE6resizeEi.exit426
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !20
  %i.ex = icmp slt i32 %i.ew, %i.b
  br i1 %i.ex, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i435, label %..lr.ph.i_crit_edge.i427

..lr.ph.i_crit_edge.i427:                         ; preds = %bb.m
  %.phi.trans.insert.i428 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %.pre.i429 = load ptr, ptr %.phi.trans.insert.i428, align 8, !tbaa !21
  br label %.lr.ph.i.i430

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i435: ; preds = %bb.m
  %i.ey = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cv, i32 noundef 16) ; 9 uses
  %.pre.i.i434 = load i32, ptr %i.es, align 4, !tbaa !16 ; 3 uses
  %i.ez = icmp sgt i32 %.pre.i.i434, 0
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !21 ; 9 uses
  br i1 %i.ez, label %.lr.ph.i.i.i.i441, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i437

.lr.ph.i.i.i.i441:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i435
  %i.fc = ptrtoaddr ptr %i.fb to i64
  %i.fd = ptrtoaddr ptr %i.ey to i64
  %wide.trip.count.i.i.i.i442 = zext nneg i32 %.pre.i.i434 to i64 ; 5 uses
  %min.iters.check1001 = icmp ult i32 %.pre.i.i434, 8
  %i.fe = sub i64 %i.fc, %i.fd
  %diff.check999 = icmp ugt i64 %i.fe, -32
  %or.cond1104 = select i1 %min.iters.check1001, i1 true, i1 %diff.check999
  br i1 %or.cond1104, label %scalar.ph1000.preheader, label %vector.ph1002

vector.ph1002:                                    ; preds = %.lr.ph.i.i.i.i441
  %n.vec1003 = and i64 %wide.trip.count.i.i.i.i442, 2147483640 ; 3 uses
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %vector.ph1002
  %index1005 = phi i64 [ 0, %vector.ph1002 ], [ %index.next1008, %vector.body1004 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %index1005 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index1005 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %wide.load1006 = load <4 x float>, ptr %i.fg, align 4, !tbaa !22
  %wide.load1007 = load <4 x float>, ptr %i.fh, align 4, !tbaa !22
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store <4 x float> %wide.load1006, ptr %i.ff, align 4, !tbaa !22
  store <4 x float> %wide.load1007, ptr %i.fi, align 4, !tbaa !22
  %index.next1008 = add nuw i64 %index1005, 8     ; 2 uses
  %i.fj = icmp eq i64 %index.next1008, %n.vec1003
  br i1 %i.fj, label %middle.block1009, label %vector.body1004, !llvm.loop !41

middle.block1009:                                 ; preds = %vector.body1004
  %cmp.n1010 = icmp eq i64 %n.vec1003, %wide.trip.count.i.i.i.i442
  br i1 %cmp.n1010, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i439, label %scalar.ph1000.preheader

scalar.ph1000.preheader:                          ; preds = %.lr.ph.i.i.i.i441, %middle.block1009
  %indvars.iv.i.i.i.i443.ph = phi i64 [ 0, %.lr.ph.i.i.i.i441 ], [ %n.vec1003, %middle.block1009 ] ; 3 uses
  %xtraiter1118 = and i64 %wide.trip.count.i.i.i.i442, 3 ; 2 uses
  %lcmp.mod1119.not = icmp eq i64 %xtraiter1118, 0
  br i1 %lcmp.mod1119.not, label %scalar.ph1000.prol.loopexit, label %scalar.ph1000.prol

scalar.ph1000.prol:                               ; preds = %scalar.ph1000.preheader, %scalar.ph1000.prol
  %indvars.iv.i.i.i.i443.prol = phi i64 [ %indvars.iv.next.i.i.i.i444.prol, %scalar.ph1000.prol ], [ %indvars.iv.i.i.i.i443.ph, %scalar.ph1000.preheader ] ; 3 uses
  %prol.iter1120 = phi i64 [ %prol.iter1120.next, %scalar.ph1000.prol ], [ 0, %scalar.ph1000.preheader ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.i.i.i.i443.prol
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv.i.i.i.i443.prol
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !22
  store float %i.fm, ptr %i.fk, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i444.prol = add nuw nsw i64 %indvars.iv.i.i.i.i443.prol, 1 ; 2 uses
  %prol.iter1120.next = add i64 %prol.iter1120, 1 ; 2 uses
  %prol.iter1120.cmp.not = icmp eq i64 %prol.iter1120.next, %xtraiter1118
  br i1 %prol.iter1120.cmp.not, label %scalar.ph1000.prol.loopexit, label %scalar.ph1000.prol, !llvm.loop !42

scalar.ph1000.prol.loopexit:                      ; preds = %scalar.ph1000.prol, %scalar.ph1000.preheader
  %indvars.iv.i.i.i.i443.unr = phi i64 [ %indvars.iv.i.i.i.i443.ph, %scalar.ph1000.preheader ], [ %indvars.iv.next.i.i.i.i444.prol, %scalar.ph1000.prol ]
  %i.fn = sub nsw i64 %indvars.iv.i.i.i.i443.ph, %wide.trip.count.i.i.i.i442
  %i.fo = icmp ugt i64 %i.fn, -4
  br i1 %i.fo, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i439, label %scalar.ph1000

scalar.ph1000:                                    ; preds = %scalar.ph1000.prol.loopexit, %scalar.ph1000
  %indvars.iv.i.i.i.i443 = phi i64 [ %indvars.iv.next.i.i.i.i444.3, %scalar.ph1000 ], [ %indvars.iv.i.i.i.i443.unr, %scalar.ph1000.prol.loopexit ] ; 6 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.i.i.i.i443
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv.i.i.i.i443
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !22
  store float %i.fr, ptr %i.fp, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i444 = add nuw nsw i64 %indvars.iv.i.i.i.i443, 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i444
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i444
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !22
  store float %i.fu, ptr %i.fs, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i444.1 = add nuw nsw i64 %indvars.iv.i.i.i.i443, 2 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i444.1
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i444.1
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !22
  store float %i.fx, ptr %i.fv, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i444.2 = add nuw nsw i64 %indvars.iv.i.i.i.i443, 3 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i444.2
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i444.2
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !22
  store float %i.ga, ptr %i.fy, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i444.3 = add nuw nsw i64 %indvars.iv.i.i.i.i443, 4 ; 2 uses
  %exitcond.not.i.i.i.i445.3 = icmp eq i64 %indvars.iv.next.i.i.i.i444.3, %wide.trip.count.i.i.i.i442
  br i1 %exitcond.not.i.i.i.i445.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i439, label %scalar.ph1000, !llvm.loop !43

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i437: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i435
  %.not.i5.i.i.i438 = icmp eq ptr %i.fb, null
  br i1 %.not.i5.i.i.i438, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i440, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i439

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i439: ; preds = %scalar.ph1000.prol.loopexit, %scalar.ph1000, %middle.block1009, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i437
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !31, !range !32, !noundef !33
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.n, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i440

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i439
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fb)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i440

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i440: ; preds = %bb.n, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i439, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i437
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store i8 1, ptr %i.ge, align 8, !tbaa !31
  store ptr %i.ey, ptr %i.fa, align 8, !tbaa !21
  store i32 %i.b, ptr %i.ev, align 8, !tbaa !20
  br label %.lr.ph.i.i430

.lr.ph.i.i430:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i440, %..lr.ph.i_crit_edge.i427
  %i.gf = phi ptr [ %.pre.i429, %..lr.ph.i_crit_edge.i427 ], [ %i.ey, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i440 ]
  %i.gg = sext i32 %i.et to i64                   ; 2 uses
  %i.gh = shl nsw i64 %i.gg, 2
  %scevgep.i432 = getelementptr i8, ptr %i.gf, i64 %i.gh
  %i.gi = sub nsw i64 %.pre-phi, %i.gg
  %i.gj = shl nuw nsw i64 %i.gi, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i432, i8 0, i64 %i.gj, i1 false), !tbaa !22
  br label %_ZN9btVectorXIfE6resizeEi.exit446

_ZN9btVectorXIfE6resizeEi.exit446:                ; preds = %_ZN9btVectorXIfE6resizeEi.exit426, %.lr.ph.i.i430
  store i32 %i.b, ptr %i.es, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull @.str.1)
  br i1 %i.cw, label %.lr.ph735, label %._crit_edge736

.lr.ph735:                                        ; preds = %_ZN9btVectorXIfE6resizeEi.exit446
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !37 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !21 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !21 ; 3 uses
  %wide.trip.count825 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter1121 = and i64 %wide.trip.count825, 1
  %i.gq = icmp eq i32 %i.b, 1
  br i1 %i.gq, label %.epil.preheader, label %.lr.ph735.new

.lr.ph735.new:                                    ; preds = %.lr.ph735
  %unroll_iter = and i64 %wide.trip.count825, 2147483646
  br label %bb.s

bb.o:                                             ; preds = %bb.i, %bb.h, %bb.e, %bb.d
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit647

bb.p:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 4 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !44 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 108
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !46 ; 3 uses
  %i.gw = call noundef float @llvm.fabs.f32(float %i.gv)
  %i.gx = fcmp olt float %i.gw, f0x34000000
  br i1 %i.gx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 112
  %i.gz = load float, ptr %i.gy, align 8, !tbaa !49
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 128
  %i.hb = load float, ptr %i.ha, align 8, !tbaa !50
  %i.hc = fdiv float %i.gz, %i.gv
  %i.hd = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv
  store float %i.hc, ptr %i.he, align 4, !tbaa !22
  %i.hf = fdiv float %i.hb, %i.gv
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv
  store float %i.hf, ptr %i.hg, align 4, !tbaa !22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !51

._crit_edge736.loopexit.unr-lcssa:                ; preds = %bb.s
  %lcmp.mod1122.not = icmp eq i64 %xtraiter1121, 0
  br i1 %lcmp.mod1122.not, label %._crit_edge736, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge736.loopexit.unr-lcssa, %.lr.ph735
  %indvars.iv822.epil.init = phi i64 [ 0, %.lr.ph735 ], [ %indvars.iv.next823.1, %._crit_edge736.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1123 = trunc i32 %i.b to i1
  call void @llvm.assume(i1 %lcmp.mod1123)
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv822.epil.init
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !44 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 120
  %i.hk = load float, ptr %i.hj, align 8, !tbaa !52
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv822.epil.init
  store float %i.hk, ptr %i.hl, align 4, !tbaa !22
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 124
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !53
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv822.epil.init
  store float %i.hn, ptr %i.ho, align 4, !tbaa !22
  br label %._crit_edge736

._crit_edge736:                                   ; preds = %.epil.preheader, %._crit_edge736.loopexit.unr-lcssa, %_ZN9btVectorXIfE6resizeEi.exit446
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.hp = load i32, ptr %i.a, align 4, !tbaa !9
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !54 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull @.str.2)
          to label %bb.t unwind label %bb.ak

bb.s:                                             ; preds = %bb.s, %.lr.ph735.new
  %indvars.iv822 = phi i64 [ 0, %.lr.ph735.new ], [ %indvars.iv.next823.1, %bb.s ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph735.new ], [ %niter.next.1, %bb.s ]
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv822
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !44 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 120
  %i.hv = load float, ptr %i.hu, align 8, !tbaa !52
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv822
  store float %i.hv, ptr %i.hw, align 4, !tbaa !22
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 124
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !53
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv822
  store float %i.hy, ptr %i.hz, align 4, !tbaa !22
  %indvars.iv.next823 = or disjoint i64 %indvars.iv822, 1 ; 3 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.next823
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !44 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 120
  %i.id = load float, ptr %i.ic, align 8, !tbaa !52
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next823
  store float %i.id, ptr %i.ie, align 4, !tbaa !22
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 124
  %i.ig = load float, ptr %i.if, align 4, !tbaa !53
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next823
  store float %i.ig, ptr %i.ih, align 4, !tbaa !22
  %indvars.iv.next823.1 = add nuw nsw i64 %indvars.iv822, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge736.loopexit.unr-lcssa, label %bb.s, !llvm.loop !58

bb.t:                                             ; preds = %._crit_edge736
  %i.ii = icmp sgt i32 %i.hr, 0
  br i1 %i.ii, label %bb.u, label %.loopexit728

bb.u:                                             ; preds = %bb.t
  %i.ij = zext nneg i32 %i.hr to i64
  %i.ik = shl nuw nsw i64 %i.ij, 2                ; 2 uses
  %i.il = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ik, i32 noundef 16)
          to label %.lr.ph.i unwind label %bb.al  ; 2 uses

.lr.ph.i:                                         ; preds = %bb.u
  call void @llvm.memset.p0.i64(ptr align 4 %i.il, i8 -1, i64 %i.ik, i1 false), !tbaa !59
  br label %.loopexit728

.loopexit728:                                     ; preds = %.lr.ph.i, %bb.t
  %.sroa.10693.2 = phi ptr [ null, %bb.t ], [ %i.il, %.lr.ph.i ] ; 9 uses
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull @.str.3)
          to label %bb.v unwind label %bb.am

bb.v:                                             ; preds = %.loopexit728
  %i.im = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %bb.w, label %_ZN20btAlignedObjectArrayI12btJointNode1E7reserveEi.exit

bb.w:                                             ; preds = %bb.v
  %i.io = shl nuw nsw i32 %i.im, 1                ; 2 uses
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = shl nuw nsw i64 %i.ip, 4
  %i.ir = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.iq, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayI12btJointNode1E7reserveEi.exit unwind label %bb.an

_ZN20btAlignedObjectArrayI12btJointNode1E7reserveEi.exit: ; preds = %bb.v, %bb.w
  %.sroa.22659.6 = phi ptr [ null, %bb.v ], [ %i.ir, %bb.w ] ; 6 uses
  %.sroa.15.3 = phi i32 [ 0, %bb.v ], [ %i.io, %bb.w ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull @.str.4)
          to label %bb.x unwind label %bb.ap

bb.x:                                             ; preds = %_ZN20btAlignedObjectArrayI12btJointNode1E7reserveEi.exit
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.it = shl nsw i32 %i.hp, 1                    ; 2 uses
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %i.is, i32 noundef %i.it, i32 noundef 8)
          to label %bb.y unwind label %bb.aq

bb.y:                                             ; preds = %bb.x
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull @.str.5)
          to label %bb.z unwind label %bb.as

bb.z:                                             ; preds = %bb.y
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1520
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %i.iu, i32 noundef %i.it, i32 noundef 8)
          to label %bb.aa unwind label %bb.at

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull @.str.20)
          to label %.noexc456 unwind label %bb.at

.noexc456:                                        ; preds = %bb.aa
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 1548 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !16 ; 2 uses
  %.not.i454 = icmp eq i32 %i.iw, 0
  br i1 %.not.i454, label %bb.ab, label %_Z9btSetZeroIfEvPT_i.exit.i455

_Z9btSetZeroIfEvPT_i.exit.i455:                   ; preds = %.noexc456
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !21
  %i.iz = sext i32 %i.iw to i64
  %i.ja = shl nuw nsw i64 %i.iz, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.iy, i8 0, i64 %i.ja, i1 false), !tbaa !22
  br label %bb.ab

end_hunk_0
begin_hunk_1_@_ZN31btMultiBodyMLCPConstraintSolver23createMLCPFastRigidBodyERK19btContactSolverInfo:bb.a
  %i.xy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %14) #16
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn343 = phi { ptr, i32 } [ %i.xy, %bb.ce ], [ %i.xx, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.ed

bb.cg:                                            ; preds = %bb.by
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.ch:                                            ; preds = %.lr.ph790, %._crit_edge786
  %indvars.iv864 = phi i64 [ 0, %.lr.ph790 ], [ %indvars.iv.next865, %._crit_edge786 ] ; 5 uses
  %.0279789 = phi i32 [ 0, %.lr.ph790 ], [ %i.afb, %._crit_edge786 ] ; 3 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %indvars.iv864
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !59 ; 4 uses
  %i.yc = sext i32 %.0279789 to i64
  %i.yd = getelementptr inbounds [8 x i8], ptr %i.xo, i64 %i.yc
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !44 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 152
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !70 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 156
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !71 ; 2 uses
  %i.yj = icmp slt i32 %.0279789, %i.xq
  br i1 %i.yj, label %bb.ci, label %.thread945

bb.ci:                                            ; preds = %bb.ch
  %i.yk = load ptr, ptr %i.xr, align 8, !tbaa !81
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.yk, i64 %indvars.iv864
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !85
  %i.yn = freeze i32 %i.ym                        ; 3 uses
  %i.yo = sext i32 %i.yb to i64
  %.idx = shl nsw i64 %i.yo, 6
  %i.yp = getelementptr inbounds nuw i8, ptr %i.mb, i64 %.idx ; 2 uses
  %i.yq = sext i32 %i.yg to i64
  %i.yr = getelementptr inbounds [4 x i8], ptr %.sroa.10693.2, i64 %i.yq
  %.0278777 = load i32, ptr %i.yr, align 4, !tbaa !59 ; 2 uses
  %i.ys = icmp sgt i32 %.0278777, -1
  %i.yt = icmp sgt i32 %i.yn, 0
  %or.cond963 = and i1 %i.ys, %i.yt
  br i1 %or.cond963, label %.lr.ph780.split.us.preheader, label %._crit_edge781

.thread945:                                       ; preds = %bb.ch
  %i.yu = sext i32 %i.yb to i64
  %.idx947 = shl nsw i64 %i.yu, 6
  %i.yv = getelementptr inbounds nuw i8, ptr %i.mb, i64 %.idx947 ; 2 uses
  %i.yw = sext i32 %i.yg to i64
  %i.yx = getelementptr inbounds [4 x i8], ptr %.sroa.10693.2, i64 %i.yw
  %.0278777948 = load i32, ptr %i.yx, align 4, !tbaa !59 ; 2 uses
  %i.yy = icmp sgt i32 %.0278777948, -1
  br i1 %i.yy, label %.lr.ph780.split.us.preheader, label %._crit_edge781

.lr.ph780.split.us.preheader:                     ; preds = %bb.ci, %.thread945
  %.fr806950955 = phi i32 [ %i.yn, %bb.ci ], [ 1, %.thread945 ] ; 2 uses
  %i.yz = phi ptr [ %i.yp, %bb.ci ], [ %i.yv, %.thread945 ] ; 2 uses
  %.0278777951954 = phi i32 [ %.0278777, %bb.ci ], [ %.0278777948, %.thread945 ]
  br label %.lr.ph780.split.us

.lr.ph780.split.us:                               ; preds = %.lr.ph780.split.us.preheader, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us
  %.0278778.us = phi i32 [ %.0278.us, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us ], [ %.0278777951954, %.lr.ph780.split.us.preheader ]
  %i.za = zext nneg i32 %.0278778.us to i64
  %i.zb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22659.0.lcssa, i64 %i.za ; 3 uses
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !91
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zb, i64 12
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !92 ; 2 uses
  %i.zf = sext i32 %i.zc to i64                   ; 3 uses
  %i.zg = icmp sgt i64 %indvars.iv864, %i.zf
  br i1 %i.zg, label %bb.cj, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us

bb.cj:                                            ; preds = %.lr.ph780.split.us
  %i.zh = icmp slt i32 %i.ze, %i.xq
  br i1 %i.zh, label %bb.ck, label %.preheader.lr.ph.i.us

bb.ck:                                            ; preds = %bb.cj
  %i.zi = load ptr, ptr %i.xr, align 8, !tbaa !81
  %i.zj = getelementptr inbounds [8 x i8], ptr %i.zi, i64 %i.zf
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !85
  br label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %bb.ck, %bb.cj
  %i.zl = phi i32 [ %i.zk, %bb.ck ], [ 1, %bb.cj ] ; 3 uses
  %i.zm = sext i32 %i.ze to i64
  %i.zn = getelementptr inbounds [8 x i8], ptr %i.xo, i64 %i.zm
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !44
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 156
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !71
  %i.zr = icmp eq i32 %i.zq, %i.yg
  %i.zs = shl nsw i32 %i.zl, 3
  %i.zt = select i1 %i.zr, i32 %i.zs, i32 0
  %i.zu = sext i32 %i.zt to i64
  %i.zv = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %i.zf
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !59 ; 2 uses
  %i.zx = sext i32 %i.zw to i64
  %.idx354.us = shl nsw i64 %i.zx, 6
  %i.zy = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.idx354.us
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %i.zu
  %i.aaa = icmp sgt i32 %i.zl, 0
  br i1 %i.aaa, label %.preheader.i.us, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us

.preheader.i.us:                                  ; preds = %.preheader.lr.ph.i.us, %._crit_edge.i.us
  %.038.i.us = phi ptr [ %i.abt, %._crit_edge.i.us ], [ %i.yz, %.preheader.lr.ph.i.us ] ; 7 uses
  %.03437.i.us = phi i32 [ %i.abu, %._crit_edge.i.us ], [ 0, %.preheader.lr.ph.i.us ] ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 4
  %i.aac = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 8
  %i.aad = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 16
  %i.aae = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 20
  %i.aaf = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 24
  %i.aag = add nsw i32 %.03437.i.us, %i.yb
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i.us, %.preheader.i.us
  %.03236.i.us = phi i32 [ 0, %.preheader.i.us ], [ %i.abs, %_ZN9btMatrixXIfE7addElemEiif.exit.i.us ] ; 2 uses
  %.03335.i.us = phi ptr [ %i.zz, %.preheader.i.us ], [ %i.abr, %_ZN9btMatrixXIfE7addElemEiif.exit.i.us ] ; 7 uses
  %i.aah = load float, ptr %.038.i.us, align 4, !tbaa !22
  %i.aai = load float, ptr %.03335.i.us, align 4, !tbaa !22
  %i.aaj = fmul float %i.aah, %i.aai
  %i.aak = load float, ptr %i.aab, align 4, !tbaa !22
  %i.aal = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 4
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !22
  %i.aan = call float @llvm.fmuladd.f32(float %i.aak, float %i.aam, float %i.aaj)
  %i.aao = load float, ptr %i.aac, align 4, !tbaa !22
  %i.aap = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 8
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !22
  %i.aar = call float @llvm.fmuladd.f32(float %i.aao, float %i.aaq, float %i.aan)
  %i.aas = load float, ptr %i.aad, align 4, !tbaa !22
  %i.aat = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 16
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !22
  %i.aav = call float @llvm.fmuladd.f32(float %i.aas, float %i.aau, float %i.aar)
  %i.aaw = load float, ptr %i.aae, align 4, !tbaa !22
  %i.aax = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 20
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !22
  %i.aaz = call float @llvm.fmuladd.f32(float %i.aaw, float %i.aay, float %i.aav)
  %i.aba = load float, ptr %i.aaf, align 4, !tbaa !22
  %i.abb = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 24
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !22
  %i.abd = call float @llvm.fmuladd.f32(float %i.aba, float %i.abc, float %i.aaz) ; 3 uses
  %i.abe = fcmp une float %i.abd, 0.000000e+00
  br i1 %i.abe, label %bb.cm, label %_ZN9btMatrixXIfE7addElemEiif.exit.i.us

bb.cm:                                            ; preds = %bb.cl
  %i.abf = add nsw i32 %.03236.i.us, %i.zw
  %i.abg = load i32, ptr %i.xs, align 4, !tbaa !94
  %i.abh = mul nsw i32 %i.abg, %i.aag
  %i.abi = add nsw i32 %i.abf, %i.abh
  %i.abj = load ptr, ptr %i.xt, align 8, !tbaa !21
  %i.abk = sext i32 %i.abi to i64
  %i.abl = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.abk ; 2 uses
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !22 ; 2 uses
  %i.abn = fcmp oeq float %i.abm, 0.000000e+00
  br i1 %i.abn, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.abo = fadd float %i.abd, %i.abm
  br label %.sink.split.i.i.us

bb.co:                                            ; preds = %bb.cm
  %i.abp = load i32, ptr %i.xu, align 8, !tbaa !99
  %i.abq = add nsw i32 %i.abp, 1
  store i32 %i.abq, ptr %i.xu, align 8, !tbaa !99
  br label %.sink.split.i.i.us

.sink.split.i.i.us:                               ; preds = %bb.co, %bb.cn
  %.sink.i.i.us = phi float [ %i.abd, %bb.co ], [ %i.abo, %bb.cn ]
  store float %.sink.i.i.us, ptr %i.abl, align 4, !tbaa !22
  br label %_ZN9btMatrixXIfE7addElemEiif.exit.i.us

_ZN9btMatrixXIfE7addElemEiif.exit.i.us:           ; preds = %.sink.split.i.i.us, %bb.cl
  %i.abr = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 32
  %i.abs = add nuw nsw i32 %.03236.i.us, 1        ; 2 uses
  %exitcond.not.i544.us = icmp eq i32 %i.abs, %i.zl
  br i1 %exitcond.not.i544.us, label %._crit_edge.i.us, label %bb.cl, !llvm.loop !115

._crit_edge.i.us:                                 ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i.us
  %i.abt = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 32
  %i.abu = add nuw nsw i32 %.03437.i.us, 1        ; 2 uses
  %exitcond40.not.i.us = icmp eq i32 %i.abu, %.fr806950955
  br i1 %exitcond40.not.i.us, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us, label %.preheader.i.us, !llvm.loop !116

_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us: ; preds = %._crit_edge.i.us, %.preheader.lr.ph.i.us, %.lr.ph780.split.us
  %i.abv = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %.0278.us = load i32, ptr %i.abv, align 4, !tbaa !59 ; 2 uses
  %i.abw = icmp sgt i32 %.0278.us, -1
  br i1 %i.abw, label %.lr.ph780.split.us, label %._crit_edge781, !llvm.loop !117

._crit_edge781:                                   ; preds = %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us, %.thread945, %bb.ci
  %i.abx = phi ptr [ %i.yv, %.thread945 ], [ %i.yp, %bb.ci ], [ %i.yz, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us ]
  %.fr806949 = phi i32 [ 1, %.thread945 ], [ %i.yn, %bb.ci ], [ %.fr806950955, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us ] ; 4 uses
  %i.aby = sext i32 %i.yi to i64
  %i.abz = getelementptr inbounds [4 x i8], ptr %.sroa.10693.2, i64 %i.aby
  %.0277782 = load i32, ptr %i.abz, align 4, !tbaa !59 ; 2 uses
  %i.aca = icmp sgt i32 %.0277782, -1
  br i1 %i.aca, label %.lr.ph785, label %._crit_edge786

.lr.ph785:                                        ; preds = %._crit_edge781
  %i.acb = icmp sgt i32 %.fr806949, 0
  %i.acc = sext i32 %.fr806949 to i64
  %.idx352 = shl nuw nsw i64 %i.acc, 5
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abx, i64 %.idx352
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph785, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit557
  %.0277783 = phi i32 [ %.0277782, %.lr.ph785 ], [ %.0277, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit557 ]
  %i.ace = zext nneg i32 %.0277783 to i64
  %i.acf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22659.0.lcssa, i64 %i.ace ; 3 uses
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !91
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 12
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !92 ; 2 uses
  %i.acj = sext i32 %i.acg to i64                 ; 3 uses
  %i.ack = icmp sgt i64 %indvars.iv864, %i.acj
  br i1 %i.ack, label %bb.cq, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit557

bb.cq:                                            ; preds = %bb.cp
  %i.acl = icmp slt i32 %i.aci, %i.xq
  br i1 %i.acl, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.acm = load ptr, ptr %i.xr, align 8, !tbaa !81
  %i.acn = getelementptr inbounds [8 x i8], ptr %i.acm, i64 %i.acj
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !85
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr
  %i.acp = phi i32 [ %i.aco, %bb.cr ], [ 1, %bb.cq ] ; 3 uses
  %i.acq = sext i32 %i.aci to i64
  %i.acr = getelementptr inbounds [8 x i8], ptr %i.xo, i64 %i.acq
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !44
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 156
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !71
  %i.acv = icmp eq i32 %i.acu, %i.yi
  %i.acw = shl nsw i32 %i.acp, 3
  %i.acx = select i1 %i.acv, i32 %i.acw, i32 0
  %i.acy = sext i32 %i.acx to i64
  %i.acz = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %i.acj
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !59 ; 2 uses
  %i.adb = sext i32 %i.ada to i64
  %.idx353 = shl nsw i64 %i.adb, 6
  %i.adc = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.idx353
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.adc, i64 %i.acy
  %i.ade = icmp sgt i32 %i.acp, 0
  %or.cond = select i1 %i.acb, i1 %i.ade, i1 false
  br i1 %or.cond, label %.preheader.i546, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit557

.preheader.i546:                                  ; preds = %bb.cs, %._crit_edge.i553
  %.038.i547 = phi ptr [ %i.adl, %._crit_edge.i553 ], [ %i.acd, %bb.cs ] ; 7 uses
  %.03437.i548 = phi i32 [ %i.adm, %._crit_edge.i553 ], [ 0, %bb.cs ] ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %.038.i547, i64 4
  %i.adg = getelementptr inbounds nuw i8, ptr %.038.i547, i64 8
  %i.adh = getelementptr inbounds nuw i8, ptr %.038.i547, i64 16
  %i.adi = getelementptr inbounds nuw i8, ptr %.038.i547, i64 20
  %i.adj = getelementptr inbounds nuw i8, ptr %.038.i547, i64 24
  %i.adk = add nsw i32 %.03437.i548, %i.yb
  br label %bb.ct

._crit_edge.i553:                                 ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i551
  %i.adl = getelementptr inbounds nuw i8, ptr %.038.i547, i64 32
  %i.adm = add nuw nsw i32 %.03437.i548, 1        ; 2 uses
  %exitcond40.not.i554 = icmp eq i32 %i.adm, %.fr806949
  br i1 %exitcond40.not.i554, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit557, label %.preheader.i546, !llvm.loop !116

bb.ct:                                            ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i551, %.preheader.i546
  %.03236.i549 = phi i32 [ 0, %.preheader.i546 ], [ %i.aey, %_ZN9btMatrixXIfE7addElemEiif.exit.i551 ] ; 2 uses
  %.03335.i550 = phi ptr [ %i.add, %.preheader.i546 ], [ %i.aex, %_ZN9btMatrixXIfE7addElemEiif.exit.i551 ] ; 7 uses
  %i.adn = load float, ptr %.038.i547, align 4, !tbaa !22
  %i.ado = load float, ptr %.03335.i550, align 4, !tbaa !22
  %i.adp = fmul float %i.adn, %i.ado
  %i.adq = load float, ptr %i.adf, align 4, !tbaa !22
  %i.adr = getelementptr inbounds nuw i8, ptr %.03335.i550, i64 4
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !22
  %i.adt = call float @llvm.fmuladd.f32(float %i.adq, float %i.ads, float %i.adp)
  %i.adu = load float, ptr %i.adg, align 4, !tbaa !22
  %i.adv = getelementptr inbounds nuw i8, ptr %.03335.i550, i64 8
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !22
  %i.adx = call float @llvm.fmuladd.f32(float %i.adu, float %i.adw, float %i.adt)
  %i.ady = load float, ptr %i.adh, align 4, !tbaa !22
  %i.adz = getelementptr inbounds nuw i8, ptr %.03335.i550, i64 16
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !22
  %i.aeb = call float @llvm.fmuladd.f32(float %i.ady, float %i.aea, float %i.adx)
  %i.aec = load float, ptr %i.adi, align 4, !tbaa !22
  %i.aed = getelementptr inbounds nuw i8, ptr %.03335.i550, i64 20
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !22
  %i.aef = call float @llvm.fmuladd.f32(float %i.aec, float %i.aee, float %i.aeb)
  %i.aeg = load float, ptr %i.adj, align 4, !tbaa !22
  %i.aeh = getelementptr inbounds nuw i8, ptr %.03335.i550, i64 24
  %i.aei = load float, ptr %i.aeh, align 4, !tbaa !22
  %i.aej = call float @llvm.fmuladd.f32(float %i.aeg, float %i.aei, float %i.aef) ; 3 uses
  %i.aek = fcmp une float %i.aej, 0.000000e+00
  br i1 %i.aek, label %bb.cu, label %_ZN9btMatrixXIfE7addElemEiif.exit.i551

bb.cu:                                            ; preds = %bb.ct
  %i.ael = add nsw i32 %.03236.i549, %i.ada
  %i.aem = load i32, ptr %i.xs, align 4, !tbaa !94
  %i.aen = mul nsw i32 %i.aem, %i.adk
  %i.aeo = add nsw i32 %i.ael, %i.aen
  %i.aep = load ptr, ptr %i.xt, align 8, !tbaa !21
  %i.aeq = sext i32 %i.aeo to i64
  %i.aer = getelementptr inbounds [4 x i8], ptr %i.aep, i64 %i.aeq ; 2 uses
  %i.aes = load float, ptr %i.aer, align 4, !tbaa !22 ; 2 uses
  %i.aet = fcmp oeq float %i.aes, 0.000000e+00
  br i1 %i.aet, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.aeu = load i32, ptr %i.xu, align 8, !tbaa !99
  %i.aev = add nsw i32 %i.aeu, 1
  store i32 %i.aev, ptr %i.xu, align 8, !tbaa !99
  br label %.sink.split.i.i555

bb.cw:                                            ; preds = %bb.cu
  %i.aew = fadd float %i.aej, %i.aes
  br label %.sink.split.i.i555

.sink.split.i.i555:                               ; preds = %bb.cw, %bb.cv
  %.sink.i.i556 = phi float [ %i.aej, %bb.cv ], [ %i.aew, %bb.cw ]
  store float %.sink.i.i556, ptr %i.aer, align 4, !tbaa !22
  br label %_ZN9btMatrixXIfE7addElemEiif.exit.i551

_ZN9btMatrixXIfE7addElemEiif.exit.i551:           ; preds = %.sink.split.i.i555, %bb.ct
  %i.aex = getelementptr inbounds nuw i8, ptr %.03335.i550, i64 32
  %i.aey = add nuw nsw i32 %.03236.i549, 1        ; 2 uses
  %exitcond.not.i552 = icmp eq i32 %i.aey, %i.acp
  br i1 %exitcond.not.i552, label %._crit_edge.i553, label %bb.ct, !llvm.loop !115

_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit557: ; preds = %._crit_edge.i553, %bb.cs, %bb.cp
  %i.aez = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  %.0277 = load i32, ptr %i.aez, align 4, !tbaa !59 ; 2 uses
  %i.afa = icmp sgt i32 %.0277, -1
  br i1 %i.afa, label %bb.cp, label %._crit_edge786, !llvm.loop !118

._crit_edge786:                                   ; preds = %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit557, %._crit_edge781
  %i.afb = add nsw i32 %.fr806949, %.0279789      ; 2 uses
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1
  %i.afc = icmp slt i32 %i.afb, %i.xj
  br i1 %i.afc, label %bb.ch, label %._crit_edge791, !llvm.loop !119

bb.cx:                                            ; preds = %._crit_edge791
  %i.afd = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.afe = icmp sgt i32 %i.afd, 0
  br i1 %i.afe, label %.lr.ph796, label %._crit_edge797

.lr.ph796:                                        ; preds = %bb.cx
  %i.aff = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !37
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !72
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !78
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.afm = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 4 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %0, i64 796 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %scevgep1027 = getelementptr i8, ptr %i.mb, i64 28
  %scevgep1032 = getelementptr i8, ptr %i.mf, i64 -4
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph796, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit580
  %indvars.iv867 = phi i64 [ 0, %.lr.ph796 ], [ %indvars.iv.next868, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit580 ] ; 2 uses
  %.0276792 = phi i32 [ 0, %.lr.ph796 ], [ %i.aoe, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit580 ] ; 8 uses
  %i.afp = sext i32 %.0276792 to i64              ; 3 uses
  %i.afq = getelementptr inbounds [8 x i8], ptr %i.afg, i64 %i.afp
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !44
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 156
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !71
  %i.afu = sext i32 %i.aft to i64
  %i.afv = getelementptr inbounds [248 x i8], ptr %i.afi, i64 %i.afu
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 240
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !73
  %i.afy = icmp slt i32 %.0276792, %i.afk
  br i1 %i.afy, label %bb.cz, label %.preheader.lr.ph.i558

bb.cz:                                            ; preds = %bb.cy
  %i.afz = load ptr, ptr %i.afl, align 8, !tbaa !81
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.afz, i64 %indvars.iv867
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !85 ; 3 uses
  %i.agc = icmp sgt i32 %i.agb, 0
  br i1 %i.agc, label %.preheader.lr.ph.i558, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit580

.preheader.lr.ph.i558:                            ; preds = %bb.cy, %bb.cz
  %i.agd = phi i32 [ %i.agb, %bb.cz ], [ 1, %bb.cy ] ; 11 uses
  %.pn964 = shl nsw i64 %i.afp, 4                 ; 2 uses
  %i.age = getelementptr [4 x i8], ptr %i.mb, i64 %.pn964 ; 3 uses
  %i.agf = getelementptr [4 x i8], ptr %i.mf, i64 %.pn964 ; 10 uses
  %i.agg = load i32, ptr %i.afn, align 4          ; 3 uses
  %i.agh = load ptr, ptr %i.afo, align 8          ; 4 uses
  %.promoted40.i = load i32, ptr %i.afm, align 8, !tbaa !99
  %wide.trip.count.i559 = zext nneg i32 %i.agd to i64 ; 6 uses
  %i.agi = add nsw i64 %wide.trip.count.i559, -1  ; 2 uses
  %i.agj = shl nsw i64 %i.afp, 6                  ; 2 uses
  %i.agk = add nsw i32 %i.agd, -1
  %i.agl = zext i32 %i.agk to i64
  %i.agm = shl nuw nsw i64 %i.agl, 5
  %i.agn = getelementptr i8, ptr %scevgep1027, i64 %i.agj
  %scevgep1028 = getelementptr i8, ptr %i.agn, i64 %i.agm
  %i.ago = add i32 %i.agg, 1
  %i.agp = mul i32 %.0276792, %i.ago
  %i.agq = shl nuw nsw i64 %wide.trip.count.i559, 2
  %scevgep1030 = getelementptr i8, ptr %i.agh, i64 %i.agq
  %i.agr = shl nuw nsw i64 %wide.trip.count.i559, 5
  %i.ags = getelementptr i8, ptr %scevgep1032, i64 %i.agj
end_hunk_1
begin_hunk_2_@_ZN31btMultiBodyMLCPConstraintSolver23createMLCPFastRigidBodyERK19btContactSolverInfo:bb.a
  %prol.iter1147 = phi i64 [ %prol.iter1147.next, %scalar.ph1061.prol ], [ 0, %scalar.ph1061.preheader ]
  %i.aqj = getelementptr [4 x i8], ptr %i.aqd, i64 %indvars.iv.i585.prol
  %i.aqk = load float, ptr %i.aqj, align 4, !tbaa !22
  %i.aql = mul nsw i64 %indvars.iv.i585.prol, %i.aqb
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aql
  store float %i.aqk, ptr %gep.i.prol, align 4, !tbaa !22
  %indvars.iv.next.i586.prol = add nuw nsw i64 %indvars.iv.i585.prol, 1 ; 2 uses
  %prol.iter1147.next = add i64 %prol.iter1147, 1 ; 2 uses
  %prol.iter1147.cmp.not = icmp eq i64 %prol.iter1147.next, %xtraiter1145
  br i1 %prol.iter1147.cmp.not, label %scalar.ph1061.prol.loopexit, label %scalar.ph1061.prol, !llvm.loop !137

scalar.ph1061.prol.loopexit:                      ; preds = %scalar.ph1061.prol, %scalar.ph1061.preheader
  %indvars.iv.i585.unr = phi i64 [ %indvars.iv.i585.ph, %scalar.ph1061.preheader ], [ %indvars.iv.next.i586.prol, %scalar.ph1061.prol ]
  %i.aqm = sub nsw i64 %indvars.iv.i585.ph, %indvars.iv19.i
  %i.aqn = icmp ugt i64 %i.aqm, -4
  br i1 %i.aqn, label %._crit_edge.i588, label %scalar.ph1061

._crit_edge.i588:                                 ; preds = %scalar.ph1061.prol.loopexit, %scalar.ph1061, %middle.block1070
  %i.aqo = trunc nuw nsw i64 %indvars.iv19.i to i32
  %i.aqp = add i32 %.promoted.i, %i.aqo
  store i32 %i.aqp, ptr %i.aqa, align 8, !tbaa !99
  br label %bb.dj

bb.dj:                                            ; preds = %._crit_edge.i588, %.preheader.i582
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next20.i, %wide.trip.count22.i
  br i1 %exitcond23.not.i, label %_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit, label %.preheader.i582, !llvm.loop !138

scalar.ph1061:                                    ; preds = %scalar.ph1061.prol.loopexit, %scalar.ph1061
  %indvars.iv.i585 = phi i64 [ %indvars.iv.next.i586.3, %scalar.ph1061 ], [ %indvars.iv.i585.unr, %scalar.ph1061.prol.loopexit ] ; 6 uses
  %i.aqq = getelementptr [4 x i8], ptr %i.aqd, i64 %indvars.iv.i585
  %i.aqr = load float, ptr %i.aqq, align 4, !tbaa !22
  %i.aqs = mul nsw i64 %indvars.iv.i585, %i.aqb
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aqs
  store float %i.aqr, ptr %gep.i, align 4, !tbaa !22
  %indvars.iv.next.i586 = add nuw nsw i64 %indvars.iv.i585, 1 ; 2 uses
  %i.aqt = getelementptr [4 x i8], ptr %i.aqd, i64 %indvars.iv.next.i586
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !22
  %i.aqv = mul nsw i64 %indvars.iv.next.i586, %i.aqb
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aqv
  store float %i.aqu, ptr %gep.i.1, align 4, !tbaa !22
  %indvars.iv.next.i586.1 = add nuw nsw i64 %indvars.iv.i585, 2 ; 2 uses
  %i.aqw = getelementptr [4 x i8], ptr %i.aqd, i64 %indvars.iv.next.i586.1
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !22
  %i.aqy = mul nsw i64 %indvars.iv.next.i586.1, %i.aqb
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aqy
  store float %i.aqx, ptr %gep.i.2, align 4, !tbaa !22
  %indvars.iv.next.i586.2 = add nuw nsw i64 %indvars.iv.i585, 3 ; 2 uses
  %i.aqz = getelementptr [4 x i8], ptr %i.aqd, i64 %indvars.iv.next.i586.2
  %i.ara = load float, ptr %i.aqz, align 4, !tbaa !22
  %i.arb = mul nsw i64 %indvars.iv.next.i586.2, %i.aqb
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.arb
  store float %i.ara, ptr %gep.i.3, align 4, !tbaa !22
  %indvars.iv.next.i586.3 = add nuw nsw i64 %indvars.iv.i585, 4 ; 2 uses
  %exitcond.not.i587.3 = icmp eq i64 %indvars.iv.next.i586.3, %indvars.iv19.i
  br i1 %exitcond.not.i587.3, label %._crit_edge.i588, label %scalar.ph1061, !llvm.loop !139

_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit: ; preds = %bb.dj, %bb.di
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull @.str.13)
          to label %bb.dk unwind label %bb.du

bb.dk:                                            ; preds = %_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 916 ; 4 uses
  %i.ard = load i32, ptr %i.arc, align 4, !tbaa !16 ; 2 uses
  %i.are = icmp sgt i32 %i.b, %i.ard
  br i1 %i.are, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  %i.arf = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.arg = load i32, ptr %i.arf, align 8, !tbaa !20
  %i.arh = icmp slt i32 %i.arg, %i.b
  br i1 %i.arh, label %bb.dm, label %..lr.ph.i_crit_edge.i589

..lr.ph.i_crit_edge.i589:                         ; preds = %bb.dl
  %.phi.trans.insert.i590 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %.pre.i591 = load ptr, ptr %.phi.trans.insert.i590, align 8, !tbaa !21
  br label %.lr.ph.i.i592

bb.dm:                                            ; preds = %bb.dl
  %i.ari = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cv, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i597 unwind label %bb.dv ; 9 uses

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i597: ; preds = %bb.dm
  %.pre.i.i596 = load i32, ptr %i.arc, align 4, !tbaa !16 ; 3 uses
  %i.arj = icmp sgt i32 %.pre.i.i596, 0
  %i.ark = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !21 ; 9 uses
  br i1 %i.arj, label %.lr.ph.i.i.i.i603, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i599

.lr.ph.i.i.i.i603:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i597
  %i.arm = ptrtoaddr ptr %i.arl to i64
  %i.arn = ptrtoaddr ptr %i.ari to i64
  %wide.trip.count.i.i.i.i604 = zext nneg i32 %.pre.i.i596 to i64 ; 5 uses
  %min.iters.check1076 = icmp ult i32 %.pre.i.i596, 8
  %i.aro = sub i64 %i.arm, %i.arn
  %diff.check1074 = icmp ugt i64 %i.aro, -32
  %or.cond1107 = select i1 %min.iters.check1076, i1 true, i1 %diff.check1074
  br i1 %or.cond1107, label %scalar.ph1075.preheader, label %vector.ph1077

vector.ph1077:                                    ; preds = %.lr.ph.i.i.i.i603
  %n.vec1078 = and i64 %wide.trip.count.i.i.i.i604, 2147483640 ; 3 uses
  br label %vector.body1079

vector.body1079:                                  ; preds = %vector.body1079, %vector.ph1077
  %index1080 = phi i64 [ 0, %vector.ph1077 ], [ %index.next1083, %vector.body1079 ] ; 3 uses
  %i.arp = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %index1080 ; 2 uses
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.arl, i64 %index1080 ; 2 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 16
  %wide.load1081 = load <4 x float>, ptr %i.arq, align 4, !tbaa !22
  %wide.load1082 = load <4 x float>, ptr %i.arr, align 4, !tbaa !22
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arp, i64 16
  store <4 x float> %wide.load1081, ptr %i.arp, align 4, !tbaa !22
  store <4 x float> %wide.load1082, ptr %i.ars, align 4, !tbaa !22
  %index.next1083 = add nuw i64 %index1080, 8     ; 2 uses
  %i.art = icmp eq i64 %index.next1083, %n.vec1078
  br i1 %i.art, label %middle.block1084, label %vector.body1079, !llvm.loop !140

middle.block1084:                                 ; preds = %vector.body1079
  %cmp.n1085 = icmp eq i64 %n.vec1078, %wide.trip.count.i.i.i.i604
  br i1 %cmp.n1085, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i601, label %scalar.ph1075.preheader

scalar.ph1075.preheader:                          ; preds = %.lr.ph.i.i.i.i603, %middle.block1084
  %indvars.iv.i.i.i.i605.ph = phi i64 [ 0, %.lr.ph.i.i.i.i603 ], [ %n.vec1078, %middle.block1084 ] ; 3 uses
  %xtraiter1148 = and i64 %wide.trip.count.i.i.i.i604, 3 ; 2 uses
  %lcmp.mod1149.not = icmp eq i64 %xtraiter1148, 0
  br i1 %lcmp.mod1149.not, label %scalar.ph1075.prol.loopexit, label %scalar.ph1075.prol

scalar.ph1075.prol:                               ; preds = %scalar.ph1075.preheader, %scalar.ph1075.prol
  %indvars.iv.i.i.i.i605.prol = phi i64 [ %indvars.iv.next.i.i.i.i606.prol, %scalar.ph1075.prol ], [ %indvars.iv.i.i.i.i605.ph, %scalar.ph1075.preheader ] ; 3 uses
  %prol.iter1150 = phi i64 [ %prol.iter1150.next, %scalar.ph1075.prol ], [ 0, %scalar.ph1075.preheader ]
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv.i.i.i.i605.prol
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.arl, i64 %indvars.iv.i.i.i.i605.prol
  %i.arw = load float, ptr %i.arv, align 4, !tbaa !22
  store float %i.arw, ptr %i.aru, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i606.prol = add nuw nsw i64 %indvars.iv.i.i.i.i605.prol, 1 ; 2 uses
  %prol.iter1150.next = add i64 %prol.iter1150, 1 ; 2 uses
  %prol.iter1150.cmp.not = icmp eq i64 %prol.iter1150.next, %xtraiter1148
  br i1 %prol.iter1150.cmp.not, label %scalar.ph1075.prol.loopexit, label %scalar.ph1075.prol, !llvm.loop !141

scalar.ph1075.prol.loopexit:                      ; preds = %scalar.ph1075.prol, %scalar.ph1075.preheader
  %indvars.iv.i.i.i.i605.unr = phi i64 [ %indvars.iv.i.i.i.i605.ph, %scalar.ph1075.preheader ], [ %indvars.iv.next.i.i.i.i606.prol, %scalar.ph1075.prol ]
  %i.arx = sub nsw i64 %indvars.iv.i.i.i.i605.ph, %wide.trip.count.i.i.i.i604
  %i.ary = icmp ugt i64 %i.arx, -4
  br i1 %i.ary, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i601, label %scalar.ph1075

scalar.ph1075:                                    ; preds = %scalar.ph1075.prol.loopexit, %scalar.ph1075
  %indvars.iv.i.i.i.i605 = phi i64 [ %indvars.iv.next.i.i.i.i606.3, %scalar.ph1075 ], [ %indvars.iv.i.i.i.i605.unr, %scalar.ph1075.prol.loopexit ] ; 6 uses
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv.i.i.i.i605
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %i.arl, i64 %indvars.iv.i.i.i.i605
  %i.asb = load float, ptr %i.asa, align 4, !tbaa !22
  store float %i.asb, ptr %i.arz, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i606 = add nuw nsw i64 %indvars.iv.i.i.i.i605, 1 ; 2 uses
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv.next.i.i.i.i606
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.arl, i64 %indvars.iv.next.i.i.i.i606
  %i.ase = load float, ptr %i.asd, align 4, !tbaa !22
  store float %i.ase, ptr %i.asc, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i606.1 = add nuw nsw i64 %indvars.iv.i.i.i.i605, 2 ; 2 uses
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv.next.i.i.i.i606.1
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %i.arl, i64 %indvars.iv.next.i.i.i.i606.1
  %i.ash = load float, ptr %i.asg, align 4, !tbaa !22
  store float %i.ash, ptr %i.asf, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i606.2 = add nuw nsw i64 %indvars.iv.i.i.i.i605, 3 ; 2 uses
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv.next.i.i.i.i606.2
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %i.arl, i64 %indvars.iv.next.i.i.i.i606.2
  %i.ask = load float, ptr %i.asj, align 4, !tbaa !22
  store float %i.ask, ptr %i.asi, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i606.3 = add nuw nsw i64 %indvars.iv.i.i.i.i605, 4 ; 2 uses
  %exitcond.not.i.i.i.i607.3 = icmp eq i64 %indvars.iv.next.i.i.i.i606.3, %wide.trip.count.i.i.i.i604
  br i1 %exitcond.not.i.i.i.i607.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i601, label %scalar.ph1075, !llvm.loop !142

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i599: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i597
  %.not.i5.i.i.i600 = icmp eq ptr %i.arl, null
  br i1 %.not.i5.i.i.i600, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i602, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i601

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i601: ; preds = %scalar.ph1075.prol.loopexit, %scalar.ph1075, %middle.block1084, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i599
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.asm = load i8, ptr %i.asl, align 8, !tbaa !31, !range !32, !noundef !33
  %i.asn = trunc nuw i8 %i.asm to i1
  br i1 %i.asn, label %bb.dn, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i602

bb.dn:                                            ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i601
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.arl)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i602 unwind label %bb.dv

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i602: ; preds = %bb.dn, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i601, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i599
  %i.aso = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i8 1, ptr %i.aso, align 8, !tbaa !31
  store ptr %i.ari, ptr %i.ark, align 8, !tbaa !21
  store i32 %i.b, ptr %i.arf, align 8, !tbaa !20
  br label %.lr.ph.i.i592

.lr.ph.i.i592:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i602, %..lr.ph.i_crit_edge.i589
  %i.asp = phi ptr [ %.pre.i591, %..lr.ph.i_crit_edge.i589 ], [ %i.ari, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i602 ]
  %i.asq = sext i32 %i.ard to i64                 ; 2 uses
  %i.asr = shl nsw i64 %i.asq, 2
  %scevgep.i594 = getelementptr i8, ptr %i.asp, i64 %i.asr
  %i.ass = sub nsw i64 %.pre-phi, %i.asq
  %i.ast = shl nuw nsw i64 %i.ass, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i594, i8 0, i64 %i.ast, i1 false), !tbaa !22
  br label %bb.do

bb.do:                                            ; preds = %.lr.ph.i.i592, %bb.dk
  store i32 %i.b, ptr %i.arc, align 4, !tbaa !16
  %i.asu = getelementptr inbounds nuw i8, ptr %0, i64 1044 ; 3 uses
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !16 ; 2 uses
  %i.asw = icmp sgt i32 %i.b, %i.asv
  br i1 %i.asw, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.asx = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.asy = load i32, ptr %i.asx, align 8, !tbaa !20
  %i.asz = icmp slt i32 %i.asy, %i.b
  br i1 %i.asz, label %bb.dq, label %..lr.ph.i_crit_edge.i611

..lr.ph.i_crit_edge.i611:                         ; preds = %bb.dp
  %.phi.trans.insert.i612 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %.pre.i613 = load ptr, ptr %.phi.trans.insert.i612, align 8, !tbaa !21
  br label %.lr.ph.i.i614

bb.dq:                                            ; preds = %bb.dp
  %i.ata = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cv, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i619 unwind label %bb.dv ; 9 uses

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i619: ; preds = %bb.dq
  %.pre.i.i618 = load i32, ptr %i.asu, align 4, !tbaa !16 ; 3 uses
  %i.atb = icmp sgt i32 %.pre.i.i618, 0
  %i.atc = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.atd = load ptr, ptr %i.atc, align 8, !tbaa !21 ; 9 uses
  br i1 %i.atb, label %.lr.ph.i.i.i.i625, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i621

.lr.ph.i.i.i.i625:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i619
  %i.ate = ptrtoaddr ptr %i.atd to i64
  %i.atf = ptrtoaddr ptr %i.ata to i64
  %wide.trip.count.i.i.i.i626 = zext nneg i32 %.pre.i.i618 to i64 ; 5 uses
  %min.iters.check1090 = icmp ult i32 %.pre.i.i618, 8
  %i.atg = sub i64 %i.ate, %i.atf
  %diff.check1088 = icmp ugt i64 %i.atg, -32
  %or.cond1108 = select i1 %min.iters.check1090, i1 true, i1 %diff.check1088
  br i1 %or.cond1108, label %scalar.ph1089.preheader, label %vector.ph1091

vector.ph1091:                                    ; preds = %.lr.ph.i.i.i.i625
  %n.vec1092 = and i64 %wide.trip.count.i.i.i.i626, 2147483640 ; 3 uses
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %vector.ph1091
  %index1094 = phi i64 [ 0, %vector.ph1091 ], [ %index.next1097, %vector.body1093 ] ; 3 uses
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %index1094 ; 2 uses
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %i.atd, i64 %index1094 ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 16
  %wide.load1095 = load <4 x float>, ptr %i.ati, align 4, !tbaa !22
  %wide.load1096 = load <4 x float>, ptr %i.atj, align 4, !tbaa !22
  %i.atk = getelementptr inbounds nuw i8, ptr %i.ath, i64 16
  store <4 x float> %wide.load1095, ptr %i.ath, align 4, !tbaa !22
  store <4 x float> %wide.load1096, ptr %i.atk, align 4, !tbaa !22
  %index.next1097 = add nuw i64 %index1094, 8     ; 2 uses
  %i.atl = icmp eq i64 %index.next1097, %n.vec1092
  br i1 %i.atl, label %middle.block1098, label %vector.body1093, !llvm.loop !143

middle.block1098:                                 ; preds = %vector.body1093
  %cmp.n1099 = icmp eq i64 %n.vec1092, %wide.trip.count.i.i.i.i626
  br i1 %cmp.n1099, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i623, label %scalar.ph1089.preheader

scalar.ph1089.preheader:                          ; preds = %.lr.ph.i.i.i.i625, %middle.block1098
  %indvars.iv.i.i.i.i627.ph = phi i64 [ 0, %.lr.ph.i.i.i.i625 ], [ %n.vec1092, %middle.block1098 ] ; 3 uses
  %xtraiter1151 = and i64 %wide.trip.count.i.i.i.i626, 3 ; 2 uses
  %lcmp.mod1152.not = icmp eq i64 %xtraiter1151, 0
  br i1 %lcmp.mod1152.not, label %scalar.ph1089.prol.loopexit, label %scalar.ph1089.prol

scalar.ph1089.prol:                               ; preds = %scalar.ph1089.preheader, %scalar.ph1089.prol
  %indvars.iv.i.i.i.i627.prol = phi i64 [ %indvars.iv.next.i.i.i.i628.prol, %scalar.ph1089.prol ], [ %indvars.iv.i.i.i.i627.ph, %scalar.ph1089.preheader ] ; 3 uses
  %prol.iter1153 = phi i64 [ %prol.iter1153.next, %scalar.ph1089.prol ], [ 0, %scalar.ph1089.preheader ]
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %indvars.iv.i.i.i.i627.prol
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %i.atd, i64 %indvars.iv.i.i.i.i627.prol
  %i.ato = load float, ptr %i.atn, align 4, !tbaa !22
  store float %i.ato, ptr %i.atm, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i628.prol = add nuw nsw i64 %indvars.iv.i.i.i.i627.prol, 1 ; 2 uses
  %prol.iter1153.next = add i64 %prol.iter1153, 1 ; 2 uses
  %prol.iter1153.cmp.not = icmp eq i64 %prol.iter1153.next, %xtraiter1151
  br i1 %prol.iter1153.cmp.not, label %scalar.ph1089.prol.loopexit, label %scalar.ph1089.prol, !llvm.loop !144

scalar.ph1089.prol.loopexit:                      ; preds = %scalar.ph1089.prol, %scalar.ph1089.preheader
  %indvars.iv.i.i.i.i627.unr = phi i64 [ %indvars.iv.i.i.i.i627.ph, %scalar.ph1089.preheader ], [ %indvars.iv.next.i.i.i.i628.prol, %scalar.ph1089.prol ]
  %i.atp = sub nsw i64 %indvars.iv.i.i.i.i627.ph, %wide.trip.count.i.i.i.i626
  %i.atq = icmp ugt i64 %i.atp, -4
  br i1 %i.atq, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i623, label %scalar.ph1089

scalar.ph1089:                                    ; preds = %scalar.ph1089.prol.loopexit, %scalar.ph1089
  %indvars.iv.i.i.i.i627 = phi i64 [ %indvars.iv.next.i.i.i.i628.3, %scalar.ph1089 ], [ %indvars.iv.i.i.i.i627.unr, %scalar.ph1089.prol.loopexit ] ; 6 uses
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %indvars.iv.i.i.i.i627
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %i.atd, i64 %indvars.iv.i.i.i.i627
  %i.att = load float, ptr %i.ats, align 4, !tbaa !22
  store float %i.att, ptr %i.atr, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i628 = add nuw nsw i64 %indvars.iv.i.i.i.i627, 1 ; 2 uses
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %indvars.iv.next.i.i.i.i628
  %i.atv = getelementptr inbounds nuw [4 x i8], ptr %i.atd, i64 %indvars.iv.next.i.i.i.i628
  %i.atw = load float, ptr %i.atv, align 4, !tbaa !22
  store float %i.atw, ptr %i.atu, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i628.1 = add nuw nsw i64 %indvars.iv.i.i.i.i627, 2 ; 2 uses
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %indvars.iv.next.i.i.i.i628.1
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %i.atd, i64 %indvars.iv.next.i.i.i.i628.1
  %i.atz = load float, ptr %i.aty, align 4, !tbaa !22
  store float %i.atz, ptr %i.atx, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i628.2 = add nuw nsw i64 %indvars.iv.i.i.i.i627, 3 ; 2 uses
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %indvars.iv.next.i.i.i.i628.2
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %i.atd, i64 %indvars.iv.next.i.i.i.i628.2
  %i.auc = load float, ptr %i.aub, align 4, !tbaa !22
  store float %i.auc, ptr %i.aua, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i628.3 = add nuw nsw i64 %indvars.iv.i.i.i.i627, 4 ; 2 uses
  %exitcond.not.i.i.i.i629.3 = icmp eq i64 %indvars.iv.next.i.i.i.i628.3, %wide.trip.count.i.i.i.i626
  br i1 %exitcond.not.i.i.i.i629.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i623, label %scalar.ph1089, !llvm.loop !145

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i621: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i619
  %.not.i5.i.i.i622 = icmp eq ptr %i.atd, null
  br i1 %.not.i5.i.i.i622, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i624, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i623

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i623: ; preds = %scalar.ph1089.prol.loopexit, %scalar.ph1089, %middle.block1098, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i621
  %i.aud = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.aue = load i8, ptr %i.aud, align 8, !tbaa !31, !range !32, !noundef !33
  %i.auf = trunc nuw i8 %i.aue to i1
  br i1 %i.auf, label %bb.dr, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i624

bb.dr:                                            ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i623
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.atd)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i624 unwind label %bb.dv

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i624: ; preds = %bb.dr, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i623, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i621
  %i.aug = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i8 1, ptr %i.aug, align 8, !tbaa !31
  store ptr %i.ata, ptr %i.atc, align 8, !tbaa !21
  store i32 %i.b, ptr %i.asx, align 8, !tbaa !20
  br label %.lr.ph.i.i614

.lr.ph.i.i614:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i624, %..lr.ph.i_crit_edge.i611
  %i.auh = phi ptr [ %.pre.i613, %..lr.ph.i_crit_edge.i611 ], [ %i.ata, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i624 ]
  %i.aui = sext i32 %i.asv to i64                 ; 2 uses
  %i.auj = shl nsw i64 %i.aui, 2
  %scevgep.i616 = getelementptr i8, ptr %i.auh, i64 %i.auj
  %i.auk = sub nsw i64 %.pre-phi, %i.aui
  %i.aul = shl nuw nsw i64 %i.auk, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i616, i8 0, i64 %i.aul, i1 false), !tbaa !22
  br label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i.i614, %bb.do
  store i32 %i.b, ptr %i.asu, align 4, !tbaa !16
  %i.aum = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !146
  %i.auo = and i32 %i.aun, 4
  %.not = icmp eq i32 %i.auo, 0
  br i1 %.not, label %bb.dx, label %.preheader

.preheader:                                       ; preds = %bb.ds
  %i.aup = load i32, ptr %i.a, align 4, !tbaa !9  ; 4 uses
  %i.auq = icmp sgt i32 %i.aup, 0
  br i1 %i.auq, label %.lr.ph805, label %.loopexit

.lr.ph805:                                        ; preds = %.preheader
  %i.aur = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.aus = load ptr, ptr %i.aur, align 8, !tbaa !37 ; 3 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !21 ; 3 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.auw = load ptr, ptr %i.auv, align 8, !tbaa !21 ; 3 uses
  %wide.trip.count878 = zext nneg i32 %i.aup to i64 ; 2 uses
  %xtraiter1155 = and i64 %wide.trip.count878, 1
  %i.aux = icmp eq i32 %i.aup, 1
  br i1 %i.aux, label %.epil.preheader1154, label %.lr.ph805.new

.lr.ph805.new:                                    ; preds = %.lr.ph805
  %unroll_iter1158 = and i64 %wide.trip.count878, 2147483646
  br label %bb.dw

bb.dt:                                            ; preds = %bb.df
  %i.auy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.ed

bb.du:                                            ; preds = %_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit
  %i.auz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.dv:                                            ; preds = %bb.dr, %bb.dq, %bb.dn, %bb.dm
  %i.ava = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %18) #16
  br label %bb.ec

bb.dw:                                            ; preds = %bb.dw, %.lr.ph805.new
  %indvars.iv875 = phi i64 [ 0, %.lr.ph805.new ], [ %indvars.iv.next876.1, %bb.dw ] ; 5 uses
  %niter1159 = phi i64 [ 0, %.lr.ph805.new ], [ %niter1159.next.1, %bb.dw ]
  %i.avb = getelementptr inbounds nuw [8 x i8], ptr %i.aus, i64 %indvars.iv875
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !44 ; 2 uses
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 100
  %i.ave = load float, ptr %i.avd, align 4, !tbaa !147
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %indvars.iv875
  store float %i.ave, ptr %i.avf, align 4, !tbaa !22
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avc, i64 96
  %i.avh = load float, ptr %i.avg, align 8, !tbaa !148
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.auw, i64 %indvars.iv875
  store float %i.avh, ptr %i.avi, align 4, !tbaa !22
  %indvars.iv.next876 = or disjoint i64 %indvars.iv875, 1 ; 3 uses
  %i.avj = getelementptr inbounds nuw [8 x i8], ptr %i.aus, i64 %indvars.iv.next876
  %i.avk = load ptr, ptr %i.avj, align 8, !tbaa !44 ; 2 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 100
  %i.avm = load float, ptr %i.avl, align 4, !tbaa !147
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %indvars.iv.next876
  store float %i.avm, ptr %i.avn, align 4, !tbaa !22
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avk, i64 96
  %i.avp = load float, ptr %i.avo, align 8, !tbaa !148
  %i.avq = getelementptr inbounds nuw [4 x i8], ptr %i.auw, i64 %indvars.iv.next876
  store float %i.avp, ptr %i.avq, align 4, !tbaa !22
  %indvars.iv.next876.1 = add nuw nsw i64 %indvars.iv875, 2 ; 2 uses
  %niter1159.next.1 = add i64 %niter1159, 2       ; 2 uses
  %niter1159.ncmp.1 = icmp eq i64 %niter1159.next.1, %unroll_iter1158
  br i1 %niter1159.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.dw, !llvm.loop !149

bb.dx:                                            ; preds = %bb.ds
  %i.avr = load i32, ptr %i.arc, align 4, !tbaa !16 ; 2 uses
  %.not.i633 = icmp eq i32 %i.avr, 0
  br i1 %.not.i633, label %_ZN9btVectorXIfE7setZeroEv.exit638, label %_Z9btSetZeroIfEvPT_i.exit.i634

_Z9btSetZeroIfEvPT_i.exit.i634:                   ; preds = %bb.dx
  %i.avs = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.avt = load ptr, ptr %i.avs, align 8, !tbaa !21
  %i.avu = sext i32 %i.avr to i64
  %i.avv = shl nuw nsw i64 %i.avu, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.avt, i8 0, i64 %i.avv, i1 false), !tbaa !22
  br label %_ZN9btVectorXIfE7setZeroEv.exit638

_ZN9btVectorXIfE7setZeroEv.exit638:               ; preds = %_Z9btSetZeroIfEvPT_i.exit.i634, %bb.dx
  %i.avw = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.avx = load ptr, ptr %i.avw, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.avx, i8 0, i64 %i.cv, i1 false), !tbaa !22
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.dw
  %lcmp.mod1156.not = icmp eq i64 %xtraiter1155, 0
  br i1 %lcmp.mod1156.not, label %.loopexit, label %.epil.preheader1154

.epil.preheader1154:                              ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph805
  %indvars.iv875.epil.init = phi i64 [ 0, %.lr.ph805 ], [ %indvars.iv.next876.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1157 = trunc i32 %i.aup to i1
  call void @llvm.assume(i1 %lcmp.mod1157)
  %i.avy = getelementptr inbounds nuw [8 x i8], ptr %i.aus, i64 %indvars.iv875.epil.init
  %i.avz = load ptr, ptr %i.avy, align 8, !tbaa !44 ; 2 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avz, i64 100
  %i.awb = load float, ptr %i.awa, align 4, !tbaa !147
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %indvars.iv875.epil.init
  store float %i.awb, ptr %i.awc, align 4, !tbaa !22
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avz, i64 96
  %i.awe = load float, ptr %i.awd, align 8, !tbaa !148
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.auw, i64 %indvars.iv875.epil.init
  store float %i.awe, ptr %i.awf, align 4, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader1154, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN9btVectorXIfE7setZeroEv.exit638
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %.not.i.i.i639.not = icmp eq ptr %.sroa.22659.0.lcssa, null
  br i1 %.not.i.i.i639.not, label %_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit, label %bb.dy

bb.dy:                                            ; preds = %.loopexit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.22659.0.lcssa)
          to label %_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit unwind label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.awg = landingpad { ptr, i32 }
          catch ptr null
  %i.awh = extractvalue { ptr, i32 } %i.awg, 0
  call void @__clang_call_terminate(ptr %i.awh) #17
  unreachable

_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit: ; preds = %.loopexit, %bb.dy
  %.not.i.i.i640.not = icmp eq ptr %.sroa.10693.2, null
  br i1 %.not.i.i.i640.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit, label %bb.ea

bb.ea:                                            ; preds = %_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10693.2)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.awi = landingpad { ptr, i32 }
          catch ptr null
  %i.awj = extractvalue { ptr, i32 } %i.awi, 0
  call void @__clang_call_terminate(ptr %i.awj) #17
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.ea, %_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit, %bb.a
  ret void

bb.ec:                                            ; preds = %bb.dv, %bb.du
  %.pn347 = phi { ptr, i32 } [ %i.ava, %bb.dv ], [ %i.auz, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ar, %bb.az, %bb.bz, %bb.dg, %bb.dt, %bb.ec, %bb.cf, %bb.cc, %bb.au
  %.sroa.22659.5 = phi ptr [ %.sroa.22659.4, %bb.bz ], [ %.sroa.22659.0.lcssa, %bb.ec ], [ %.sroa.22659.0.lcssa, %bb.dt ], [ %.sroa.22659.0.lcssa, %bb.dg ], [ %.sroa.22659.0.lcssa, %bb.cf ], [ %.sroa.22659.0.lcssa, %bb.cc ], [ %.sroa.22659.6, %bb.az ], [ %.sroa.22659.6, %bb.au ], [ %.sroa.22659.6, %bb.ar ] ; 2 uses
  %.pn367.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn367.pn.pn.pn, %bb.bz ], [ %.pn347, %bb.ec ], [ %i.auy, %bb.dt ], [ %.pn355.pn.pn, %bb.dg ], [ %.pn343, %bb.cf ], [ %.pn341, %bb.cc ], [ %.pn338.pn, %bb.az ], [ %.pn336, %bb.au ], [ %.pn334, %bb.ar ] ; 2 uses
  %.not.i.i.i642.not = icmp eq ptr %.sroa.22659.5, null
  br i1 %.not.i.i.i642.not, label %_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit644, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.22659.5)
          to label %_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit644 unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.awk = landingpad { ptr, i32 }
          catch ptr null
  %i.awl = extractvalue { ptr, i32 } %i.awk, 0
  call void @__clang_call_terminate(ptr %i.awl) #17
  unreachable

_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit644: ; preds = %bb.ao, %bb.ed, %bb.ee
  %.pn367.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn367.pn.pn.pn.pn.pn.pn.pn, %bb.ee ], [ %.pn332, %bb.ao ], [ %.pn367.pn.pn.pn.pn.pn.pn.pn, %bb.ed ] ; 2 uses
  %.not.i.i.i645.not = icmp eq ptr %.sroa.10693.2, null
  br i1 %.not.i.i.i645.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit647, label %bb.eg

bb.eg:                                            ; preds = %_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit644
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10693.2)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit647 unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.awm = landingpad { ptr, i32 }
          catch ptr null
  %i.awn = extractvalue { ptr, i32 } %i.awm, 0
  call void @__clang_call_terminate(ptr %i.awn) #17
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit647:         ; preds = %bb.eg, %_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit644, %_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit644.thread, %bb.o
  %.pn378.pn = phi { ptr, i32 } [ %i.gr, %bb.o ], [ %.pn, %_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit644.thread ], [ %.pn367.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN20btAlignedObjectArrayI12btJointNode1ED2Ev.exit644 ], [ %.pn367.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.eg ]
  resume { ptr, i32 } %.pn378.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31btMultiBodyMLCPConstraintSolver23createMLCPFastMultiBodyERK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(1640) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CProfileSample, align 1      ; 6 uses
  %3 = alloca %class.CProfileSample, align 1      ; 6 uses
  %4 = alloca %class.CProfileSample, align 1      ; 6 uses
  %5 = alloca %class.CProfileSample, align 1      ; 6 uses
  %6 = alloca %class.CProfileSample, align 1      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.b = load i32, ptr %i.a, align 4, !tbaa !150  ; 33 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.br, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @.str)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1164 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16   ; 2 uses
  %i.f = icmp sgt i32 %i.b, %i.e
  br i1 %i.f, label %bb.c, label %._ZN9btVectorXIfE7setZeroEv.exit_crit_edge

._ZN9btVectorXIfE7setZeroEv.exit_crit_edge:       ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21
  %.pre234 = sext i32 %i.b to i64
  br label %_ZN9btVectorXIfE7setZeroEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20
  %i.i = icmp slt i32 %i.h, %i.b
  br i1 %i.i, label %bb.d, label %..lr.ph.i_crit_edge.i

..lr.ph.i_crit_edge.i:                            ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  %.pre233 = sext i32 %i.b to i64
  br label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = sext i32 %i.b to i64                     ; 2 uses
  %i.k = shl nsw i64 %i.j, 2
  %i.l = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.k, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i unwind label %bb.j ; 9 uses

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i: ; preds = %bb.d
  %.pre.i.i = load i32, ptr %i.d, align 4, !tbaa !16 ; 3 uses
  %i.m = icmp sgt i32 %.pre.i.i, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = ptrtoaddr ptr %i.l to i64
  %wide.trip.count.i.i.i.i = zext nneg i32 %.pre.i.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre.i.i, 8
  %i.r = sub i64 %i.p, %i.q
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x float>, ptr %i.t, align 4, !tbaa !22
  %wide.load274 = load <4 x float>, ptr %i.u, align 4, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x float> %wide.load, ptr %i.s, align 4, !tbaa !22
  store <4 x float> %wide.load274, ptr %i.v, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !154

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
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i.i.i.prol
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i.prol
  %i.z = load float, ptr %i.y, align 4, !tbaa !22
  store float %i.z, ptr %i.x, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !155

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !22
  store float %i.ae, ptr %i.ac, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.i.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !22
  store float %i.ah, ptr %i.af, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.i.i.1
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.1
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !22
  store float %i.ak, ptr %i.ai, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.i.i.2
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.2
  %i.an = load float, ptr %i.am, align 4, !tbaa !22
  store float %i.an, ptr %i.al, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph, !llvm.loop !156

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !31, !range !32, !noundef !33
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.e, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i unwind label %bb.j

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i8 1, ptr %i.ar, align 8, !tbaa !31
  store ptr %i.l, ptr %i.n, align 8, !tbaa !21
  store i32 %i.b, ptr %i.g, align 8, !tbaa !20
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i, %..lr.ph.i_crit_edge.i
  %wide.trip.count.i.i.pre-phi = phi i64 [ %i.j, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i ], [ %.pre233, %..lr.ph.i_crit_edge.i ] ; 2 uses
  %i.as = phi ptr [ %i.l, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i ], [ %.pre.i, %..lr.ph.i_crit_edge.i ] ; 2 uses
  %i.at = sext i32 %i.e to i64                    ; 2 uses
  %i.au = shl nsw i64 %i.at, 2
  %scevgep.i = getelementptr i8, ptr %i.as, i64 %i.au
  %i.av = sub nsw i64 %wide.trip.count.i.i.pre-phi, %i.at
  %i.aw = shl nuw nsw i64 %i.av, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.aw, i1 false), !tbaa !22
  br label %_ZN9btVectorXIfE7setZeroEv.exit

_ZN9btVectorXIfE7setZeroEv.exit:                  ; preds = %._ZN9btVectorXIfE7setZeroEv.exit_crit_edge, %.lr.ph.i.i
  %.pre-phi = phi i64 [ %.pre234, %._ZN9btVectorXIfE7setZeroEv.exit_crit_edge ], [ %wide.trip.count.i.i.pre-phi, %.lr.ph.i.i ] ; 5 uses
  %i.ax = phi ptr [ %.pre, %._ZN9btVectorXIfE7setZeroEv.exit_crit_edge ], [ %i.as, %.lr.ph.i.i ] ; 4 uses
  store i32 %i.b, ptr %i.d, align 4, !tbaa !16
  %i.ay = shl nsw i64 %.pre-phi, 2                ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ax, i8 0, i64 %i.ay, i1 false), !tbaa !22
  %i.az = icmp sgt i32 %i.b, 0                    ; 4 uses
  br i1 %i.az, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN9btVectorXIfE7setZeroEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !157 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter325 = and i64 %wide.trip.count, 1
  %i.bc = icmp eq i32 %i.b, 1
  br i1 %i.bc, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.k

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.o
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod327 = trunc i32 %i.b to i1
  call void @llvm.assume(i1 %lcmp.mod327)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.epil.init
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !158 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 124
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !160 ; 2 uses
  %i.bh = call noundef float @llvm.fabs.f32(float %i.bg)
  %i.bi = fcmp olt float %i.bh, f0x34000000
  br i1 %i.bi, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !164
  %i.bl = fdiv float %i.bk, %i.bg
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.epil.init
  store float %i.bl, ptr %i.bm, align 4, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.f, %.epil.preheader, %_ZN9btVectorXIfE7setZeroEv.exit
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.1)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1228 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !16 ; 2 uses
  %i.bp = icmp sgt i32 %i.b, %i.bo
  br i1 %i.bp, label %bb.g, label %bb.p

bb.g:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !20
  %i.bs = icmp slt i32 %i.br, %i.b
  br i1 %i.bs, label %bb.h, label %..lr.ph.i_crit_edge.i88

..lr.ph.i_crit_edge.i88:                          ; preds = %bb.g
  %.phi.trans.insert.i89 = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %.pre.i90 = load ptr, ptr %.phi.trans.insert.i89, align 8, !tbaa !21
  br label %.lr.ph.i.i91

bb.h:                                             ; preds = %bb.g
  %i.bt = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ay, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i96 unwind label %bb.t ; 9 uses

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i96: ; preds = %bb.h
  %.pre.i.i95 = load i32, ptr %i.bn, align 4, !tbaa !16 ; 3 uses
  %i.bu = icmp sgt i32 %.pre.i.i95, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !21 ; 9 uses
  br i1 %i.bu, label %.lr.ph.i.i.i.i102, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i98

.lr.ph.i.i.i.i102:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i96
  %i.bx = ptrtoaddr ptr %i.bw to i64
  %i.by = ptrtoaddr ptr %i.bt to i64
  %wide.trip.count.i.i.i.i103 = zext nneg i32 %.pre.i.i95 to i64 ; 5 uses
  %min.iters.check278 = icmp ult i32 %.pre.i.i95, 8
  %i.bz = sub i64 %i.bx, %i.by
  %diff.check276 = icmp ugt i64 %i.bz, -32
  %or.cond317 = select i1 %min.iters.check278, i1 true, i1 %diff.check276
  br i1 %or.cond317, label %scalar.ph277.preheader, label %vector.ph279

vector.ph279:                                     ; preds = %.lr.ph.i.i.i.i102
  %n.vec280 = and i64 %wide.trip.count.i.i.i.i103, 2147483640 ; 3 uses
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph279
  %index282 = phi i64 [ 0, %vector.ph279 ], [ %index.next285, %vector.body281 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index282 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index282 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load283 = load <4 x float>, ptr %i.cb, align 4, !tbaa !22
  %wide.load284 = load <4 x float>, ptr %i.cc, align 4, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <4 x float> %wide.load283, ptr %i.ca, align 4, !tbaa !22
  store <4 x float> %wide.load284, ptr %i.cd, align 4, !tbaa !22
  %index.next285 = add nuw i64 %index282, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next285, %n.vec280
  br i1 %i.ce, label %middle.block286, label %vector.body281, !llvm.loop !165

middle.block286:                                  ; preds = %vector.body281
  %cmp.n287 = icmp eq i64 %n.vec280, %wide.trip.count.i.i.i.i103
  br i1 %cmp.n287, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i100, label %scalar.ph277.preheader

scalar.ph277.preheader:                           ; preds = %.lr.ph.i.i.i.i102, %middle.block286
  %indvars.iv.i.i.i.i104.ph = phi i64 [ 0, %.lr.ph.i.i.i.i102 ], [ %n.vec280, %middle.block286 ] ; 3 uses
  %xtraiter328 = and i64 %wide.trip.count.i.i.i.i103, 3 ; 2 uses
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  br i1 %lcmp.mod329.not, label %scalar.ph277.prol.loopexit, label %scalar.ph277.prol

scalar.ph277.prol:                                ; preds = %scalar.ph277.preheader, %scalar.ph277.prol
  %indvars.iv.i.i.i.i104.prol = phi i64 [ %indvars.iv.next.i.i.i.i105.prol, %scalar.ph277.prol ], [ %indvars.iv.i.i.i.i104.ph, %scalar.ph277.preheader ] ; 3 uses
  %prol.iter330 = phi i64 [ %prol.iter330.next, %scalar.ph277.prol ], [ 0, %scalar.ph277.preheader ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.i.i.i.i104.prol
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i.i.i.i104.prol
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !22
  store float %i.ch, ptr %i.cf, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i105.prol = add nuw nsw i64 %indvars.iv.i.i.i.i104.prol, 1 ; 2 uses
  %prol.iter330.next = add i64 %prol.iter330, 1   ; 2 uses
  %prol.iter330.cmp.not = icmp eq i64 %prol.iter330.next, %xtraiter328
  br i1 %prol.iter330.cmp.not, label %scalar.ph277.prol.loopexit, label %scalar.ph277.prol, !llvm.loop !166

scalar.ph277.prol.loopexit:                       ; preds = %scalar.ph277.prol, %scalar.ph277.preheader
  %indvars.iv.i.i.i.i104.unr = phi i64 [ %indvars.iv.i.i.i.i104.ph, %scalar.ph277.preheader ], [ %indvars.iv.next.i.i.i.i105.prol, %scalar.ph277.prol ]
  %i.ci = sub nsw i64 %indvars.iv.i.i.i.i104.ph, %wide.trip.count.i.i.i.i103
  %i.cj = icmp ugt i64 %i.ci, -4
  br i1 %i.cj, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i100, label %scalar.ph277

scalar.ph277:                                     ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277
  %indvars.iv.i.i.i.i104 = phi i64 [ %indvars.iv.next.i.i.i.i105.3, %scalar.ph277 ], [ %indvars.iv.i.i.i.i104.unr, %scalar.ph277.prol.loopexit ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.i.i.i.i104
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i.i.i.i104
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !22
  store float %i.cm, ptr %i.ck, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i105 = add nuw nsw i64 %indvars.iv.i.i.i.i104, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next.i.i.i.i105
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next.i.i.i.i105
  %i.cp = load float, ptr %i.co, align 4, !tbaa !22
  store float %i.cp, ptr %i.cn, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i105.1 = add nuw nsw i64 %indvars.iv.i.i.i.i104, 2 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next.i.i.i.i105.1
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next.i.i.i.i105.1
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !22
  store float %i.cs, ptr %i.cq, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i105.2 = add nuw nsw i64 %indvars.iv.i.i.i.i104, 3 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next.i.i.i.i105.2
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next.i.i.i.i105.2
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !22
  store float %i.cv, ptr %i.ct, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i105.3 = add nuw nsw i64 %indvars.iv.i.i.i.i104, 4 ; 2 uses
  %exitcond.not.i.i.i.i106.3 = icmp eq i64 %indvars.iv.next.i.i.i.i105.3, %wide.trip.count.i.i.i.i103
  br i1 %exitcond.not.i.i.i.i106.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i100, label %scalar.ph277, !llvm.loop !167

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i98: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i96
  %.not.i5.i.i.i99 = icmp eq ptr %i.bw, null
  br i1 %.not.i5.i.i.i99, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i101, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i100

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i100: ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277, %middle.block286, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i98
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !31, !range !32, !noundef !33
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i101

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i100
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bw)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i101 unwind label %bb.t

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i101: ; preds = %bb.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i100, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i98
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store i8 1, ptr %i.cz, align 8, !tbaa !31
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !21
  store i32 %i.b, ptr %i.bq, align 8, !tbaa !20
  br label %.lr.ph.i.i91

.lr.ph.i.i91:                                     ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i101, %..lr.ph.i_crit_edge.i88
  %i.da = phi ptr [ %.pre.i90, %..lr.ph.i_crit_edge.i88 ], [ %i.bt, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i101 ]
  %i.db = sext i32 %i.bo to i64                   ; 2 uses
  %i.dc = shl nsw i64 %i.db, 2
  %scevgep.i93 = getelementptr i8, ptr %i.da, i64 %i.dc
  %i.dd = sub nsw i64 %.pre-phi, %i.db
  %i.de = shl nuw nsw i64 %i.dd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i93, i8 0, i64 %i.de, i1 false), !tbaa !22
  br label %bb.p

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.bs

bb.k:                                             ; preds = %bb.o, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.o ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.o ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !158 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 124
  %i.dj = load float, ptr %i.di, align 4, !tbaa !160 ; 2 uses
  %i.dk = call noundef float @llvm.fabs.f32(float %i.dj)
  %i.dl = fcmp olt float %i.dk, f0x34000000
  br i1 %i.dl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 128
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !164
  %i.do = fdiv float %i.dn, %i.dj
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  store float %i.do, ptr %i.dp, align 4, !tbaa !22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !158 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 124
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !160 ; 2 uses
  %i.du = call noundef float @llvm.fabs.f32(float %i.dt)
  %i.dv = fcmp olt float %i.du, f0x34000000
  br i1 %i.dv, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 128
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !164
  %i.dy = fdiv float %i.dx, %i.dt
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next
  store float %i.dy, ptr %i.dz, align 4, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.k, !llvm.loop !168

bb.p:                                             ; preds = %.lr.ph.i.i91, %._crit_edge
  store i32 %i.b, ptr %i.bn, align 4, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1260 ; 3 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !16 ; 2 uses
  %i.ec = icmp sgt i32 %i.b, %i.eb
  br i1 %i.ec, label %bb.q, label %_ZN9btVectorXIfE6resizeEi.exit131

bb.q:                                             ; preds = %bb.p
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !20
  %i.ef = icmp slt i32 %i.ee, %i.b
  br i1 %i.ef, label %bb.r, label %..lr.ph.i_crit_edge.i110

..lr.ph.i_crit_edge.i110:                         ; preds = %bb.q
  %.phi.trans.insert.i111 = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %.pre.i112 = load ptr, ptr %.phi.trans.insert.i111, align 8, !tbaa !21
  br label %.lr.ph.i.i113

bb.r:                                             ; preds = %bb.q
  %i.eg = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ay, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i118 unwind label %bb.t ; 9 uses

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i118: ; preds = %bb.r
  %.pre.i.i117 = load i32, ptr %i.ea, align 4, !tbaa !16 ; 3 uses
  %i.eh = icmp sgt i32 %.pre.i.i117, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !21 ; 9 uses
  br i1 %i.eh, label %.lr.ph.i.i.i.i124, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i120

.lr.ph.i.i.i.i124:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i118
  %i.ek = ptrtoaddr ptr %i.ej to i64
  %i.el = ptrtoaddr ptr %i.eg to i64
  %wide.trip.count.i.i.i.i125 = zext nneg i32 %.pre.i.i117 to i64 ; 5 uses
  %min.iters.check292 = icmp ult i32 %.pre.i.i117, 8
  %i.em = sub i64 %i.ek, %i.el
  %diff.check290 = icmp ugt i64 %i.em, -32
  %or.cond318 = select i1 %min.iters.check292, i1 true, i1 %diff.check290
  br i1 %or.cond318, label %scalar.ph291.preheader, label %vector.ph293

vector.ph293:                                     ; preds = %.lr.ph.i.i.i.i124
  %n.vec294 = and i64 %wide.trip.count.i.i.i.i125, 2147483640 ; 3 uses
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph293
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next299, %vector.body295 ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index296 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index296 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load297 = load <4 x float>, ptr %i.eo, align 4, !tbaa !22
  %wide.load298 = load <4 x float>, ptr %i.ep, align 4, !tbaa !22
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <4 x float> %wide.load297, ptr %i.en, align 4, !tbaa !22
  store <4 x float> %wide.load298, ptr %i.eq, align 4, !tbaa !22
  %index.next299 = add nuw i64 %index296, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next299, %n.vec294
  br i1 %i.er, label %middle.block300, label %vector.body295, !llvm.loop !169

middle.block300:                                  ; preds = %vector.body295
  %cmp.n301 = icmp eq i64 %n.vec294, %wide.trip.count.i.i.i.i125
  br i1 %cmp.n301, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122, label %scalar.ph291.preheader

scalar.ph291.preheader:                           ; preds = %.lr.ph.i.i.i.i124, %middle.block300
  %indvars.iv.i.i.i.i126.ph = phi i64 [ 0, %.lr.ph.i.i.i.i124 ], [ %n.vec294, %middle.block300 ] ; 3 uses
  %xtraiter331 = and i64 %wide.trip.count.i.i.i.i125, 3 ; 2 uses
  %lcmp.mod332.not = icmp eq i64 %xtraiter331, 0
  br i1 %lcmp.mod332.not, label %scalar.ph291.prol.loopexit, label %scalar.ph291.prol

scalar.ph291.prol:                                ; preds = %scalar.ph291.preheader, %scalar.ph291.prol
  %indvars.iv.i.i.i.i126.prol = phi i64 [ %indvars.iv.next.i.i.i.i127.prol, %scalar.ph291.prol ], [ %indvars.iv.i.i.i.i126.ph, %scalar.ph291.preheader ] ; 3 uses
  %prol.iter333 = phi i64 [ %prol.iter333.next, %scalar.ph291.prol ], [ 0, %scalar.ph291.preheader ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i.i.i.i126.prol
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.i.i.i.i126.prol
  %i.eu = load float, ptr %i.et, align 4, !tbaa !22
  store float %i.eu, ptr %i.es, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i127.prol = add nuw nsw i64 %indvars.iv.i.i.i.i126.prol, 1 ; 2 uses
  %prol.iter333.next = add i64 %prol.iter333, 1   ; 2 uses
  %prol.iter333.cmp.not = icmp eq i64 %prol.iter333.next, %xtraiter331
  br i1 %prol.iter333.cmp.not, label %scalar.ph291.prol.loopexit, label %scalar.ph291.prol, !llvm.loop !170

scalar.ph291.prol.loopexit:                       ; preds = %scalar.ph291.prol, %scalar.ph291.preheader
  %indvars.iv.i.i.i.i126.unr = phi i64 [ %indvars.iv.i.i.i.i126.ph, %scalar.ph291.preheader ], [ %indvars.iv.next.i.i.i.i127.prol, %scalar.ph291.prol ]
  %i.ev = sub nsw i64 %indvars.iv.i.i.i.i126.ph, %wide.trip.count.i.i.i.i125
  %i.ew = icmp ugt i64 %i.ev, -4
  br i1 %i.ew, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122, label %scalar.ph291

scalar.ph291:                                     ; preds = %scalar.ph291.prol.loopexit, %scalar.ph291
  %indvars.iv.i.i.i.i126 = phi i64 [ %indvars.iv.next.i.i.i.i127.3, %scalar.ph291 ], [ %indvars.iv.i.i.i.i126.unr, %scalar.ph291.prol.loopexit ] ; 6 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i.i.i.i126
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.i.i.i.i126
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !22
  store float %i.ez, ptr %i.ex, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i127 = add nuw nsw i64 %indvars.iv.i.i.i.i126, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.i.i.i127
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i.i.i.i127
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !22
  store float %i.fc, ptr %i.fa, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i127.1 = add nuw nsw i64 %indvars.iv.i.i.i.i126, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.i.i.i127.1
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i.i.i.i127.1
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !22
  store float %i.ff, ptr %i.fd, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i127.2 = add nuw nsw i64 %indvars.iv.i.i.i.i126, 3 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.i.i.i127.2
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i.i.i.i127.2
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !22
  store float %i.fi, ptr %i.fg, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i127.3 = add nuw nsw i64 %indvars.iv.i.i.i.i126, 4 ; 2 uses
  %exitcond.not.i.i.i.i128.3 = icmp eq i64 %indvars.iv.next.i.i.i.i127.3, %wide.trip.count.i.i.i.i125
  br i1 %exitcond.not.i.i.i.i128.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122, label %scalar.ph291, !llvm.loop !171

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i120: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i118
  %.not.i5.i.i.i121 = icmp eq ptr %i.ej, null
  br i1 %.not.i5.i.i.i121, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122: ; preds = %scalar.ph291.prol.loopexit, %scalar.ph291, %middle.block300, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i120
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !31, !range !32, !noundef !33
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.s, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123

bb.s:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ej)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123 unwind label %bb.t

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123: ; preds = %bb.s, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i120
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i8 1, ptr %i.fm, align 8, !tbaa !31
  store ptr %i.eg, ptr %i.ei, align 8, !tbaa !21
  store i32 %i.b, ptr %i.ed, align 8, !tbaa !20
  br label %.lr.ph.i.i113

.lr.ph.i.i113:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123, %..lr.ph.i_crit_edge.i110
  %i.fn = phi ptr [ %.pre.i112, %..lr.ph.i_crit_edge.i110 ], [ %i.eg, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123 ]
  %i.fo = sext i32 %i.eb to i64                   ; 2 uses
  %i.fp = shl nsw i64 %i.fo, 2
  %scevgep.i115 = getelementptr i8, ptr %i.fn, i64 %i.fp
  %i.fq = sub nsw i64 %.pre-phi, %i.fo
  %i.fr = shl nuw nsw i64 %i.fq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i115, i8 0, i64 %i.fr, i1 false), !tbaa !22
  br label %_ZN9btVectorXIfE6resizeEi.exit131

_ZN9btVectorXIfE6resizeEi.exit131:                ; preds = %bb.p, %.lr.ph.i.i113
  store i32 %i.b, ptr %i.ea, align 4, !tbaa !16
  br i1 %i.az, label %.lr.ph178, label %._crit_edge179

.lr.ph178:                                        ; preds = %_ZN9btVectorXIfE6resizeEi.exit131
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !157 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !21 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !21 ; 3 uses
  %wide.trip.count207 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter335 = and i64 %wide.trip.count207, 1
  %i.fy = icmp eq i32 %i.b, 1
  br i1 %i.fy, label %.epil.preheader334, label %.lr.ph178.new

.lr.ph178.new:                                    ; preds = %.lr.ph178
  %unroll_iter338 = and i64 %wide.trip.count207, 2147483646
  br label %bb.u

._crit_edge179.loopexit.unr-lcssa:                ; preds = %bb.u
  %lcmp.mod336.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %._crit_edge179, label %.epil.preheader334

.epil.preheader334:                               ; preds = %._crit_edge179.loopexit.unr-lcssa, %.lr.ph178
  %indvars.iv204.epil.init = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next205.1, %._crit_edge179.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod337 = trunc i32 %i.b to i1
  call void @llvm.assume(i1 %lcmp.mod337)
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv204.epil.init
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !158 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 136
  %i.gc = load float, ptr %i.gb, align 8, !tbaa !172
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv204.epil.init
  store float %i.gc, ptr %i.gd, align 4, !tbaa !22
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 140
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !173
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv204.epil.init
  store float %i.gf, ptr %i.gg, align 4, !tbaa !22
  br label %._crit_edge179

._crit_edge179:                                   ; preds = %.epil.preheader334, %._crit_edge179.loopexit.unr-lcssa, %_ZN9btVectorXIfE6resizeEi.exit131
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull @.str.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull @.str.8)
          to label %bb.v unwind label %bb.x

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.i, %bb.h
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.bs

bb.u:                                             ; preds = %bb.u, %.lr.ph178.new
  %indvars.iv204 = phi i64 [ 0, %.lr.ph178.new ], [ %indvars.iv.next205.1, %bb.u ] ; 5 uses
  %niter339 = phi i64 [ 0, %.lr.ph178.new ], [ %niter339.next.1, %bb.u ]
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv204
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !158 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 136
  %i.gl = load float, ptr %i.gk, align 8, !tbaa !172
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv204
  store float %i.gl, ptr %i.gm, align 4, !tbaa !22
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 140
  %i.go = load float, ptr %i.gn, align 4, !tbaa !173
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv204
  store float %i.go, ptr %i.gp, align 4, !tbaa !22
  %indvars.iv.next205 = or disjoint i64 %indvars.iv204, 1 ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.next205
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !158 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 136
  %i.gt = load float, ptr %i.gs, align 8, !tbaa !172
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.next205
  store float %i.gt, ptr %i.gu, align 4, !tbaa !22
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 140
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !173
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.next205
  store float %i.gw, ptr %i.gx, align 4, !tbaa !22
  %indvars.iv.next205.1 = add nuw nsw i64 %indvars.iv204, 2 ; 2 uses
  %niter339.next.1 = add i64 %niter339, 2         ; 2 uses
  %niter339.ncmp.1 = icmp eq i64 %niter339.next.1, %unroll_iter338
  br i1 %niter339.ncmp.1, label %._crit_edge179.loopexit.unr-lcssa, label %bb.u, !llvm.loop !174

bb.v:                                             ; preds = %._crit_edge179
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %i.gy, i32 noundef %i.b, i32 noundef %i.b)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %i.az, label %.lr.ph186, label %._crit_edge187

.lr.ph186:                                        ; preds = %bb.w
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !157 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !94
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !21 ; 3 uses
  %i.hj = sext i32 %i.hg to i64                   ; 2 uses
  %i.hk = shl nuw i32 %i.b, 1
  %wide.trip.count221 = zext nneg i32 %i.b to i64 ; 2 uses
  br label %bb.aa

..loopexit169_crit_edge:                          ; preds = %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit138.i
  %i.hl = add i32 %i.my, %indvars.iv213
  store i32 %i.hl, ptr %i.he, align 8, !tbaa !99
  br label %.loopexit169

.loopexit169:                                     ; preds = %..loopexit169_crit_edge, %.loopexit170
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge187, label %bb.aa, !llvm.loop !175

._crit_edge187:                                   ; preds = %.loopexit169, %bb.w
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.hm = load i32, ptr %i.gy, align 8, !tbaa !131 ; 5 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph190, label %bb.bi

.lr.ph190:                                        ; preds = %._crit_edge187
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !94
  %i.hq = add i32 %i.hp, 1                        ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !21 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %.promoted192 = load i32, ptr %i.hv, align 8, !tbaa !99
  %wide.trip.count226 = zext nneg i32 %i.hm to i64 ; 2 uses
  %xtraiter382 = and i64 %wide.trip.count226, 1
  %i.hw = icmp eq i32 %i.hm, 1
  br i1 %i.hw, label %.epil.preheader381, label %.lr.ph190.new

.lr.ph190.new:                                    ; preds = %.lr.ph190
  %unroll_iter386 = and i64 %wide.trip.count226, 2147483646
  br label %bb.bm

bb.x:                                             ; preds = %._crit_edge179
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.hy, %bb.y ], [ %i.hx, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.bs

bb.aa:                                            ; preds = %.lr.ph186, %.loopexit169
  %indvars.iv218 = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next219, %.loopexit169 ] ; 5 uses
  %indvars.iv213.in = phi i32 [ %i.hk, %.lr.ph186 ], [ %indvars.iv213, %.loopexit169 ]
  %indvars.iv209 = phi i64 [ 1, %.lr.ph186 ], [ %indvars.iv.next210, %.loopexit169 ] ; 2 uses
  %indvars.iv213 = add i32 %indvars.iv213.in, -2  ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv218
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !158 ; 34 uses
  %.val = load ptr, ptr %i.hb, align 8            ; 2 uses
  %.val82 = load ptr, ptr %i.hc, align 8          ; 2 uses
  %.val83 = load ptr, ptr %i.hd, align 8          ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 176
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !176 ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 192
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !177 ; 5 uses
  %.not.i132 = icmp eq ptr %i.ic, null
  br i1 %.not.i132, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !178
  %i.ih = sext i32 %i.ig to i64                   ; 2 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %.val82, i64 %i.ih ; 5 uses
  %i.ij = getelementptr inbounds [4 x i8], ptr %.val83, i64 %i.ih ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 628
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !179 ; 3 uses
  %i.im = icmp sgt i32 %i.il, -6
  br i1 %i.im, label %.lr.ph.preheader.i.i, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ab
  %i.in = add nsw i32 %i.il, 6
  %wide.trip.count.i.i133 = zext nneg i32 %i.in to i64 ; 2 uses
  %xtraiter340 = and i64 %wide.trip.count.i.i133, 3 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN31btMultiBodyMLCPConstraintSolver23createMLCPFastMultiBodyERK19btContactSolverInfo:bb.a
  %i.yj = load float, ptr %i.yh, align 8, !tbaa !22
  %i.yk = load float, ptr %i.nj, align 8, !tbaa !22
  %i.yl = getelementptr inbounds nuw i8, ptr %i.nw, i64 52
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !22
  %i.yn = load float, ptr %i.nl, align 4, !tbaa !22
  %i.yo = fmul float %i.ym, %i.yn
  %i.yp = call float @llvm.fmuladd.f32(float %i.yj, float %i.yk, float %i.yo)
  %i.yq = getelementptr inbounds nuw i8, ptr %i.nw, i64 56
  %i.yr = load float, ptr %i.yq, align 8, !tbaa !22
  %i.ys = load float, ptr %i.nm, align 8, !tbaa !22
  %i.yt = call noundef float @llvm.fmuladd.f32(float %i.yr, float %i.ys, float %i.yp)
  %i.yu = load float, ptr %i.yi, align 8, !tbaa !22
  %i.yv = load float, ptr %i.nk, align 8, !tbaa !22
  %i.yw = getelementptr inbounds nuw i8, ptr %i.nw, i64 68
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !22
  %i.yy = load float, ptr %i.nn, align 4, !tbaa !22
  %i.yz = fmul float %i.yx, %i.yy
  %i.za = call float @llvm.fmuladd.f32(float %i.yu, float %i.yv, float %i.yz)
  %i.zb = getelementptr inbounds nuw i8, ptr %i.nw, i64 72
  %i.zc = load float, ptr %i.zb, align 8, !tbaa !22
  %i.zd = load float, ptr %i.no, align 8, !tbaa !22
  %i.ze = call noundef float @llvm.fmuladd.f32(float %i.zc, float %i.zd, float %i.za)
  %i.zf = call noundef float @llvm.fmuladd.f32(float %i.ze, float %i.yg, float %i.yt)
  %i.zg = fadd float %.2.i, %i.zf
  br label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit138.i

_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit138.i: ; preds = %bb.az, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit147.i.loopexit, %bb.ax, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit138.i.loopexit, %bb.bh, %bb.be, %bb.bd, %bb.ay
  %.5.i = phi float [ %.2.i, %bb.ay ], [ %.2.i, %bb.be ], [ %i.vd, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit138.i.loopexit ], [ %i.xy, %bb.bd ], [ %i.zg, %bb.bh ], [ %.2.i, %bb.ax ], [ %.2.i, %bb.az ], [ %i.wm, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit147.i.loopexit ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv211
  store float %.5.i, ptr %gep, align 4, !tbaa !22
  %i.zh = mul nsw i64 %indvars.iv211, %i.hj
  %gep268 = getelementptr [4 x i8], ptr %invariant.gep267, i64 %i.zh
  store float %.5.i, ptr %gep268, align 4, !tbaa !22
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count221
  br i1 %exitcond217.not, label %..loopexit169_crit_edge, label %bb.aj, !llvm.loop !204

._crit_edge191.unr-lcssa:                         ; preds = %bb.bm
  %lcmp.mod384.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod384.not, label %._crit_edge191, label %.epil.preheader381

.epil.preheader381:                               ; preds = %._crit_edge191.unr-lcssa, %.lr.ph190
  %indvars.iv223.epil.init = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next224.1, %._crit_edge191.unr-lcssa ]
  %lcmp.mod385 = trunc i32 %i.hm to i1
  call void @llvm.assume(i1 %lcmp.mod385)
  %i.zi = trunc nuw nsw i64 %indvars.iv223.epil.init to i32
  %i.zj = mul i32 %i.hq, %i.zi
  %i.zk = sext i32 %i.zj to i64
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.zk ; 2 uses
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !22
  %i.zn = load float, ptr %i.ht, align 4, !tbaa !132
  %i.zo = load float, ptr %i.hu, align 4, !tbaa !134
  %i.zp = fdiv float %i.zn, %i.zo
  %i.zq = fadd float %i.zm, %i.zp
  store float %i.zq, ptr %i.zl, align 4, !tbaa !22
  br label %._crit_edge191

._crit_edge191:                                   ; preds = %._crit_edge191.unr-lcssa, %.epil.preheader381
  %i.zr = add i32 %i.hm, %.promoted192
  store i32 %i.zr, ptr %i.hv, align 8, !tbaa !99
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge191, %._crit_edge187
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull @.str.13)
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 1196 ; 3 uses
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !16 ; 2 uses
  %i.zu = icmp sgt i32 %i.b, %i.zt
  br i1 %i.zu, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.zw = load i32, ptr %i.zv, align 8, !tbaa !20
  %i.zx = icmp slt i32 %i.zw, %i.b
  br i1 %i.zx, label %bb.bk, label %..lr.ph.i_crit_edge.i144

..lr.ph.i_crit_edge.i144:                         ; preds = %bb.bj
  %.phi.trans.insert.i145 = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %.pre.i146 = load ptr, ptr %.phi.trans.insert.i145, align 8, !tbaa !21
  br label %.lr.ph.i.i147

bb.bk:                                            ; preds = %bb.bj
  %i.zy = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ay, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i152 unwind label %bb.bo ; 9 uses

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i152: ; preds = %bb.bk
  %.pre.i.i151 = load i32, ptr %i.zs, align 4, !tbaa !16 ; 3 uses
  %i.zz = icmp sgt i32 %.pre.i.i151, 0
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !21 ; 9 uses
  br i1 %i.zz, label %.lr.ph.i.i.i.i158, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i154

.lr.ph.i.i.i.i158:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i152
  %i.aac = ptrtoaddr ptr %i.aab to i64
  %i.aad = ptrtoaddr ptr %i.zy to i64
  %wide.trip.count.i.i.i.i159 = zext nneg i32 %.pre.i.i151 to i64 ; 5 uses
  %min.iters.check306 = icmp ult i32 %.pre.i.i151, 8
  %i.aae = sub i64 %i.aac, %i.aad
  %diff.check304 = icmp ugt i64 %i.aae, -32
  %or.cond319 = select i1 %min.iters.check306, i1 true, i1 %diff.check304
  br i1 %or.cond319, label %scalar.ph305.preheader, label %vector.ph307

vector.ph307:                                     ; preds = %.lr.ph.i.i.i.i158
  %n.vec308 = and i64 %wide.trip.count.i.i.i.i159, 2147483640 ; 3 uses
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph307
  %index310 = phi i64 [ 0, %vector.ph307 ], [ %index.next313, %vector.body309 ] ; 3 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %index310 ; 2 uses
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %index310 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  %wide.load311 = load <4 x float>, ptr %i.aag, align 4, !tbaa !22
  %wide.load312 = load <4 x float>, ptr %i.aah, align 4, !tbaa !22
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16
  store <4 x float> %wide.load311, ptr %i.aaf, align 4, !tbaa !22
  store <4 x float> %wide.load312, ptr %i.aai, align 4, !tbaa !22
  %index.next313 = add nuw i64 %index310, 8       ; 2 uses
  %i.aaj = icmp eq i64 %index.next313, %n.vec308
  br i1 %i.aaj, label %middle.block314, label %vector.body309, !llvm.loop !205

middle.block314:                                  ; preds = %vector.body309
  %cmp.n315 = icmp eq i64 %n.vec308, %wide.trip.count.i.i.i.i159
  br i1 %cmp.n315, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i156, label %scalar.ph305.preheader

scalar.ph305.preheader:                           ; preds = %.lr.ph.i.i.i.i158, %middle.block314
  %indvars.iv.i.i.i.i160.ph = phi i64 [ 0, %.lr.ph.i.i.i.i158 ], [ %n.vec308, %middle.block314 ] ; 3 uses
  %xtraiter388 = and i64 %wide.trip.count.i.i.i.i159, 3 ; 2 uses
  %lcmp.mod389.not = icmp eq i64 %xtraiter388, 0
  br i1 %lcmp.mod389.not, label %scalar.ph305.prol.loopexit, label %scalar.ph305.prol

scalar.ph305.prol:                                ; preds = %scalar.ph305.preheader, %scalar.ph305.prol
  %indvars.iv.i.i.i.i160.prol = phi i64 [ %indvars.iv.next.i.i.i.i161.prol, %scalar.ph305.prol ], [ %indvars.iv.i.i.i.i160.ph, %scalar.ph305.preheader ] ; 3 uses
  %prol.iter390 = phi i64 [ %prol.iter390.next, %scalar.ph305.prol ], [ 0, %scalar.ph305.preheader ]
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %indvars.iv.i.i.i.i160.prol
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv.i.i.i.i160.prol
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !22
  store float %i.aam, ptr %i.aak, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i161.prol = add nuw nsw i64 %indvars.iv.i.i.i.i160.prol, 1 ; 2 uses
  %prol.iter390.next = add i64 %prol.iter390, 1   ; 2 uses
  %prol.iter390.cmp.not = icmp eq i64 %prol.iter390.next, %xtraiter388
  br i1 %prol.iter390.cmp.not, label %scalar.ph305.prol.loopexit, label %scalar.ph305.prol, !llvm.loop !206

scalar.ph305.prol.loopexit:                       ; preds = %scalar.ph305.prol, %scalar.ph305.preheader
  %indvars.iv.i.i.i.i160.unr = phi i64 [ %indvars.iv.i.i.i.i160.ph, %scalar.ph305.preheader ], [ %indvars.iv.next.i.i.i.i161.prol, %scalar.ph305.prol ]
  %i.aan = sub nsw i64 %indvars.iv.i.i.i.i160.ph, %wide.trip.count.i.i.i.i159
  %i.aao = icmp ugt i64 %i.aan, -4
  br i1 %i.aao, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i156, label %scalar.ph305

scalar.ph305:                                     ; preds = %scalar.ph305.prol.loopexit, %scalar.ph305
  %indvars.iv.i.i.i.i160 = phi i64 [ %indvars.iv.next.i.i.i.i161.3, %scalar.ph305 ], [ %indvars.iv.i.i.i.i160.unr, %scalar.ph305.prol.loopexit ] ; 6 uses
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %indvars.iv.i.i.i.i160
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv.i.i.i.i160
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !22
  store float %i.aar, ptr %i.aap, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i161 = add nuw nsw i64 %indvars.iv.i.i.i.i160, 1 ; 2 uses
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %indvars.iv.next.i.i.i.i161
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv.next.i.i.i.i161
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !22
  store float %i.aau, ptr %i.aas, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i161.1 = add nuw nsw i64 %indvars.iv.i.i.i.i160, 2 ; 2 uses
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %indvars.iv.next.i.i.i.i161.1
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv.next.i.i.i.i161.1
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !22
  store float %i.aax, ptr %i.aav, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i161.2 = add nuw nsw i64 %indvars.iv.i.i.i.i160, 3 ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %indvars.iv.next.i.i.i.i161.2
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv.next.i.i.i.i161.2
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !22
  store float %i.aba, ptr %i.aay, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i161.3 = add nuw nsw i64 %indvars.iv.i.i.i.i160, 4 ; 2 uses
  %exitcond.not.i.i.i.i162.3 = icmp eq i64 %indvars.iv.next.i.i.i.i161.3, %wide.trip.count.i.i.i.i159
  br i1 %exitcond.not.i.i.i.i162.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i156, label %scalar.ph305, !llvm.loop !207

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i154: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i152
  %.not.i5.i.i.i155 = icmp eq ptr %i.aab, null
  br i1 %.not.i5.i.i.i155, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i157, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i156

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i156: ; preds = %scalar.ph305.prol.loopexit, %scalar.ph305, %middle.block314, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i154
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.abc = load i8, ptr %i.abb, align 8, !tbaa !31, !range !32, !noundef !33
  %i.abd = trunc nuw i8 %i.abc to i1
  br i1 %i.abd, label %bb.bl, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i157

bb.bl:                                            ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i156
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aab)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i157 unwind label %bb.bo

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i157: ; preds = %bb.bl, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i156, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i154
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 1216
  store i8 1, ptr %i.abe, align 8, !tbaa !31
  store ptr %i.zy, ptr %i.aaa, align 8, !tbaa !21
  store i32 %i.b, ptr %i.zv, align 8, !tbaa !20
  br label %.lr.ph.i.i147

.lr.ph.i.i147:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i157, %..lr.ph.i_crit_edge.i144
  %i.abf = phi ptr [ %.pre.i146, %..lr.ph.i_crit_edge.i144 ], [ %i.zy, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i157 ]
  %i.abg = sext i32 %i.zt to i64                  ; 2 uses
  %i.abh = shl nsw i64 %i.abg, 2
  %scevgep.i149 = getelementptr i8, ptr %i.abf, i64 %i.abh
  %i.abi = sub nsw i64 %.pre-phi, %i.abg
  %i.abj = shl nuw nsw i64 %i.abi, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i149, i8 0, i64 %i.abj, i1 false), !tbaa !22
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bm, %.lr.ph190.new
  %indvars.iv223 = phi i64 [ 0, %.lr.ph190.new ], [ %indvars.iv.next224.1, %bb.bm ] ; 3 uses
  %niter387 = phi i64 [ 0, %.lr.ph190.new ], [ %niter387.next.1, %bb.bm ]
  %i.abk = trunc nuw nsw i64 %indvars.iv223 to i32
  %i.abl = mul i32 %i.hq, %i.abk
  %i.abm = sext i32 %i.abl to i64
  %i.abn = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.abm ; 2 uses
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !22
  %i.abp = load float, ptr %i.ht, align 4, !tbaa !132
  %i.abq = load float, ptr %i.hu, align 4, !tbaa !134
  %i.abr = fdiv float %i.abp, %i.abq
  %i.abs = fadd float %i.abo, %i.abr
  store float %i.abs, ptr %i.abn, align 4, !tbaa !22
  %i.abt = trunc i64 %indvars.iv223 to i32
  %i.abu = or disjoint i32 %i.abt, 1
  %i.abv = mul i32 %i.hq, %i.abu
  %i.abw = sext i32 %i.abv to i64
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.abw ; 2 uses
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !22
  %i.abz = load float, ptr %i.ht, align 4, !tbaa !132
  %i.aca = load float, ptr %i.hu, align 4, !tbaa !134
  %i.acb = fdiv float %i.abz, %i.aca
  %i.acc = fadd float %i.aby, %i.acb
  store float %i.acc, ptr %i.abx, align 4, !tbaa !22
  %indvars.iv.next224.1 = add nuw nsw i64 %indvars.iv223, 2 ; 2 uses
  %niter387.next.1 = add i64 %niter387, 2         ; 2 uses
  %niter387.ncmp.1 = icmp eq i64 %niter387.next.1, %unroll_iter386
  br i1 %niter387.ncmp.1, label %._crit_edge191.unr-lcssa, label %bb.bm, !llvm.loop !208

bb.bn:                                            ; preds = %.lr.ph.i.i147, %bb.bi
  store i32 %i.b, ptr %i.zs, align 4, !tbaa !16
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !146
  %i.acf = and i32 %i.ace, 4
  %.not = icmp eq i32 %i.acf, 0
  br i1 %.not, label %_ZN9btVectorXIfE7setZeroEv.exit168, label %.preheader

.preheader:                                       ; preds = %bb.bn
  br i1 %i.az, label %.lr.ph195, label %.loopexit

.lr.ph195:                                        ; preds = %.preheader
  %i.acg = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !157 ; 5 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !21 ; 5 uses
  %wide.trip.count231 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter392 = and i64 %wide.trip.count231, 3   ; 3 uses
  %i.ack = add nsw i32 %i.b, -1
  %i.acl = icmp ult i32 %i.ack, 3
  br i1 %i.acl, label %.epil.preheader391, label %.lr.ph195.new

.lr.ph195.new:                                    ; preds = %.lr.ph195
  %unroll_iter396 = and i64 %wide.trip.count231, 2147483644
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  %i.acm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bp, %.lr.ph195.new
  %indvars.iv228 = phi i64 [ 0, %.lr.ph195.new ], [ %indvars.iv.next229.3, %bb.bp ] ; 6 uses
  %niter397 = phi i64 [ 0, %.lr.ph195.new ], [ %niter397.next.3, %bb.bp ]
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %indvars.iv228
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !158
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 116
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !209
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv228
  store float %i.acq, ptr %i.acr, align 4, !tbaa !22
  %indvars.iv.next229 = or disjoint i64 %indvars.iv228, 1 ; 2 uses
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %indvars.iv.next229
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !158
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 116
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !209
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.next229
  store float %i.acv, ptr %i.acw, align 4, !tbaa !22
  %indvars.iv.next229.1 = or disjoint i64 %indvars.iv228, 2 ; 2 uses
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %indvars.iv.next229.1
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !158
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 116
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !209
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.next229.1
  store float %i.ada, ptr %i.adb, align 4, !tbaa !22
  %indvars.iv.next229.2 = or disjoint i64 %indvars.iv228, 3 ; 2 uses
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %indvars.iv.next229.2
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !158
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 116
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !209
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.next229.2
  store float %i.adf, ptr %i.adg, align 4, !tbaa !22
  %indvars.iv.next229.3 = add nuw nsw i64 %indvars.iv228, 4 ; 2 uses
  %niter397.next.3 = add i64 %niter397, 4         ; 2 uses
  %niter397.ncmp.3 = icmp eq i64 %niter397.next.3, %unroll_iter396
  br i1 %niter397.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.bp, !llvm.loop !210

_ZN9btVectorXIfE7setZeroEv.exit168:               ; preds = %bb.bn
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.adi, i8 0, i64 %i.ay, i1 false), !tbaa !22
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bp
  %lcmp.mod394.not = icmp eq i64 %xtraiter392, 0
  br i1 %lcmp.mod394.not, label %.loopexit, label %.epil.preheader391

.epil.preheader391:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph195
  %indvars.iv228.epil.init = phi i64 [ 0, %.lr.ph195 ], [ %indvars.iv.next229.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod395 = icmp ne i64 %xtraiter392, 0
  call void @llvm.assume(i1 %lcmp.mod395)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.epil.preheader391
  %indvars.iv228.epil = phi i64 [ %indvars.iv228.epil.init, %.epil.preheader391 ], [ %indvars.iv.next229.epil, %bb.bq ] ; 3 uses
  %epil.iter393 = phi i64 [ 0, %.epil.preheader391 ], [ %epil.iter393.next, %bb.bq ]
  %i.adj = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %indvars.iv228.epil
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !158
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 116
  %i.adm = load float, ptr %i.adl, align 4, !tbaa !209
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv228.epil
  store float %i.adm, ptr %i.adn, align 4, !tbaa !22
  %indvars.iv.next229.epil = add nuw nsw i64 %indvars.iv228.epil, 1
  %epil.iter393.next = add i64 %epil.iter393, 1   ; 2 uses
  %epil.iter393.cmp.not = icmp eq i64 %epil.iter393.next, %xtraiter392
  br i1 %epil.iter393.cmp.not, label %.loopexit, label %bb.bq, !llvm.loop !211

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.bq, %.preheader, %_ZN9btVectorXIfE7setZeroEv.exit168
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.br

bb.br:                                            ; preds = %bb.a, %.loopexit
  ret void

bb.bs:                                            ; preds = %bb.bo, %bb.z, %bb.t, %bb.j
  %.pn79.pn = phi { ptr, i32 } [ %i.df, %bb.j ], [ %.pn, %bb.z ], [ %i.acm, %bb.bo ], [ %i.gh, %bb.t ]
  resume { ptr, i32 } %.pn79.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !212
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !212
  store i32 %1, ptr %0, align 8, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.d, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.19)
  %i.e = mul nsw i32 %2, %1                       ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16   ; 3 uses
  %i.h = icmp sgt i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !20
  %i.k = icmp slt i32 %i.j, %i.e
  br i1 %i.k, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sext i32 %i.e to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.m, i32 noundef 16)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !16
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i

end_hunk_3
