Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodyConstraintSolver?download=true
inline.NumInlined: 636
inline.NumDeleted: 122
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN27btMultiBodyConstraintSolver31setupMultiBodyContactConstraintER27btMultiBodySolverConstraintRK9btVector3RKfR15btManifoldPointRK19btContactSolverInfoRfbff:bb.a
  br i1 %i.ayr, label %middle.block1219, label %vector.body1212, !llvm.loop !301

middle.block1219:                                 ; preds = %vector.body1212
  %cmp.n1220 = icmp eq i64 %n.vec1209, %wide.trip.count.i779
  br i1 %cmp.n1220, label %_ZN27btMultiBodyConstraintSolver13applyDeltaVeeEPffii.exit785, label %scalar.ph1206.preheader

scalar.ph1206.preheader:                          ; preds = %vector.memcheck1200, %.lr.ph.i778, %middle.block1219
  %indvars.iv.i781.ph = phi i64 [ 0, %vector.memcheck1200 ], [ 0, %.lr.ph.i778 ], [ %n.vec1209, %middle.block1219 ] ; 5 uses
  %xtraiter1281 = and i64 %wide.trip.count.i779, 1
  %lcmp.mod1282.not = icmp eq i64 %xtraiter1281, 0
  br i1 %lcmp.mod1282.not, label %scalar.ph1206.prol.loopexit, label %scalar.ph1206.prol

scalar.ph1206.prol:                               ; preds = %scalar.ph1206.preheader
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %indvars.iv.i781.ph
  %i.ayt = load float, ptr %i.ays, align 4, !tbaa !56
  %gep.i782.prol = getelementptr [4 x i8], ptr %invariant.gep.i780, i64 %indvars.iv.i781.ph ; 2 uses
  %i.ayu = load float, ptr %gep.i782.prol, align 4, !tbaa !56
  %i.ayv = call float @llvm.fmuladd.f32(float %i.ayt, float %i.awi, float %i.ayu)
  store float %i.ayv, ptr %gep.i782.prol, align 4, !tbaa !56
  %indvars.iv.next.i783.prol = or disjoint i64 %indvars.iv.i781.ph, 1
  br label %scalar.ph1206.prol.loopexit

scalar.ph1206.prol.loopexit:                      ; preds = %scalar.ph1206.prol, %scalar.ph1206.preheader
  %indvars.iv.i781.unr = phi i64 [ %indvars.iv.i781.ph, %scalar.ph1206.preheader ], [ %indvars.iv.next.i783.prol, %scalar.ph1206.prol ]
  %i.ayw = add nsw i64 %wide.trip.count.i779, -1
  %i.ayx = icmp eq i64 %indvars.iv.i781.ph, %i.ayw
  br i1 %i.ayx, label %_ZN27btMultiBodyConstraintSolver13applyDeltaVeeEPffii.exit785, label %scalar.ph1206

scalar.ph1206:                                    ; preds = %scalar.ph1206.prol.loopexit, %scalar.ph1206
  %indvars.iv.i781 = phi i64 [ %indvars.iv.next.i783.1, %scalar.ph1206 ], [ %indvars.iv.i781.unr, %scalar.ph1206.prol.loopexit ] ; 4 uses
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %indvars.iv.i781
  %i.ayz = load float, ptr %i.ayy, align 4, !tbaa !56
  %gep.i782 = getelementptr [4 x i8], ptr %invariant.gep.i780, i64 %indvars.iv.i781 ; 2 uses
  %i.aza = load float, ptr %gep.i782, align 4, !tbaa !56
  %i.azb = call float @llvm.fmuladd.f32(float %i.ayz, float %i.awi, float %i.aza)
  store float %i.azb, ptr %gep.i782, align 4, !tbaa !56
  %indvars.iv.next.i783 = add nuw nsw i64 %indvars.iv.i781, 1 ; 2 uses
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %indvars.iv.next.i783
  %i.azd = load float, ptr %i.azc, align 4, !tbaa !56
  %gep.i782.1 = getelementptr [4 x i8], ptr %invariant.gep.i780, i64 %indvars.iv.next.i783 ; 2 uses
  %i.aze = load float, ptr %gep.i782.1, align 4, !tbaa !56
  %i.azf = call float @llvm.fmuladd.f32(float %i.azd, float %i.awi, float %i.aze)
  store float %i.azf, ptr %gep.i782.1, align 4, !tbaa !56
  %indvars.iv.next.i783.1 = add nuw nsw i64 %indvars.iv.i781, 2 ; 2 uses
  %exitcond.not.i784.1 = icmp eq i64 %indvars.iv.next.i783.1, %wide.trip.count.i779
  br i1 %exitcond.not.i784.1, label %_ZN27btMultiBodyConstraintSolver13applyDeltaVeeEPffii.exit785, label %scalar.ph1206, !llvm.loop !302

bb.dq:                                            ; preds = %_ZN27btMultiBodyConstraintSolver13applyDeltaVeeEPffii.exit
  %.not435 = icmp eq ptr %i.z, null
  br i1 %.not435, label %_ZN27btMultiBodyConstraintSolver13applyDeltaVeeEPffii.exit785, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.azg = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.azh = load ptr, ptr %i.azg, align 8, !tbaa !72
  %.not.i806 = icmp eq ptr %i.azh, null
  br i1 %.not.i806, label %_ZN27btMultiBodyConstraintSolver13applyDeltaVeeEPffii.exit785, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.azi = load float, ptr %i.ark, align 4, !tbaa !46
  %i.azj = fneg float %i.azi                      ; 3 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.azl = load float, ptr %i.azk, align 8, !tbaa !56
  %i.azm = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.azn = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.azo = load float, ptr %i.azn, align 8, !tbaa !56
  %i.azp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.azq = load float, ptr %i.azp, align 8, !tbaa !56
  %i.azr = fneg float %i.azq
  %i.azs = fmul float %i.azo, %i.azr
  %i.azt = getelementptr inbounds nuw i8, ptr %i.z, i64 464
  %i.azu = load float, ptr %i.azt, align 4, !tbaa !56
  %i.azv = fmul float %i.azs, %i.azu
  %i.azw = getelementptr inbounds nuw i8, ptr %i.z, i64 456
  %i.azx = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.azy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.azz = fmul float %i.azv, %i.azj
  %i.baa = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.bab = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.bac = load float, ptr %i.bab, align 8, !tbaa !56
  %i.bad = fmul float %i.azz, %i.bac
  %i.bae = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.baf = load <2 x float>, ptr %i.azx, align 8, !tbaa !56
  %i.bag = load <2 x float>, ptr %i.azy, align 8, !tbaa !56
  %i.bah = fneg <2 x float> %i.bag
  %i.bai = fmul <2 x float> %i.baf, %i.bah
  %i.baj = load <2 x float>, ptr %i.azw, align 4, !tbaa !56
  %i.bak = fmul <2 x float> %i.bai, %i.baj
  %i.bal = insertelement <2 x float> poison, float %i.azj, i64 0
  %i.bam = shufflevector <2 x float> %i.bal, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ban = fmul <2 x float> %i.bak, %i.bam
  %i.bao = load <2 x float>, ptr %i.baa, align 8, !tbaa !56
  %i.bap = fmul <2 x float> %i.bao, %i.ban
  %i.baq = load <2 x float>, ptr %i.bae, align 8, !tbaa !56
  %i.bar = fadd <2 x float> %i.bap, %i.baq
  %i.bas = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.bat = load float, ptr %i.bas, align 8, !tbaa !56
  %i.bau = fadd float %i.bad, %i.bat
  %i.bav = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.baw = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.bax = load float, ptr %i.baw, align 8, !tbaa !56
  %i.bay = fmul float %i.bax, %i.azj
  %i.baz = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.bba = load <2 x float>, ptr %i.azm, align 8, !tbaa !56
  store <2 x float> %i.bar, ptr %i.bae, align 8, !tbaa !56
  store float %i.bau, ptr %i.bas, align 8, !tbaa !56
  %i.bbb = load <2 x float>, ptr %i.bav, align 8, !tbaa !56
  %i.bbc = fmul <2 x float> %i.bbb, %i.bam
  %i.bbd = load <2 x float>, ptr %i.baz, align 8, !tbaa !56
  %i.bbe = fmul <2 x float> %i.bba, %i.bbc
  %i.bbf = fsub <2 x float> %i.bbd, %i.bbe
  store <2 x float> %i.bbf, ptr %i.baz, align 8, !tbaa !56
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.t, i64 88 ; 2 uses
  %i.bbh = load float, ptr %i.bbg, align 8, !tbaa !56
  %i.bbi = fmul float %i.azl, %i.bay
  %i.bbj = fsub float %i.bbh, %i.bbi
  store float %i.bbj, ptr %i.bbg, align 8, !tbaa !56
  br label %_ZN27btMultiBodyConstraintSolver13applyDeltaVeeEPffii.exit785

bb.dt:                                            ; preds = %bb.de
  %i.bbk = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <2 x float> zeroinitializer, ptr %i.bbk, align 8, !tbaa !56
  br label %_ZN27btMultiBodyConstraintSolver13applyDeltaVeeEPffii.exit785

_ZN27btMultiBodyConstraintSolver13applyDeltaVeeEPffii.exit785: ; preds = %scalar.ph1206.prol.loopexit, %scalar.ph1206, %middle.block1219, %.thread, %bb.dr, %bb.ds, %_ZN11btMultiBody22applyDeltaVeeMultiDof2EPKff.exit777, %bb.dj, %bb.dq, %bb.dt
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  ret void

bb.du:                                            ; preds = %bb.co, %bb.at, %bb.au, %bb.as, %bb.ar, %bb.af, %bb.bx, %bb.bw, %bb.bv, %bb.bj, %bb.bi
  %.pn438.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pq, %bb.bi ], [ %i.vh, %bb.bx ], [ %i.pr, %bb.bj ], [ %i.vf, %bb.bv ], [ %i.kp, %bb.au ], [ %i.fj, %bb.af ], [ %i.kn, %bb.as ], [ %i.vg, %bb.bw ], [ %i.ko, %bb.at ], [ %i.aef, %bb.co ], [ %i.km, %bb.ar ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  resume { ptr, i32 } %.pn438.pn.pn.pn.pn
}

declare void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZNK11btMultiBody30calcAccelerationDeltasMultiDofEPKfPfR20btAlignedObjectArrayIfERS3_I9btVector3E(ptr noundef nonnull align 8 dereferenceable(640), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare noundef float @_ZN35btSequentialImpulseConstraintSolver16restitutionCurveEfff(ptr noundef nonnull align 8 dereferenceable(408), float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btMultiBodyConstraintSolver41setupMultiBodyTorsionalFrictionConstraintER27btMultiBodySolverConstraintRK9btVector3R15btManifoldPointfRK19btContactSolverInfoRfbff(ptr noundef nonnull align 8 dereferenceable(788) %0, ptr nofree noundef nonnull align 8 dereferenceable(220) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(204) %3, float noundef %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %6, i1 noundef zeroext %7, float %8, float %9) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %class.CProfileSample, align 1     ; 6 uses
  %11 = alloca %class.btVector3, align 4          ; 5 uses
  %12 = alloca %class.btVector3, align 8          ; 6 uses
  %13 = alloca %class.btVector3, align 4          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull @.str.1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.not = icmp eq ptr %i.b, null                  ; 5 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.h = load i32, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [248 x i8], ptr %i.j, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %.not261 = icmp eq ptr %i.d, null               ; 5 uses
  br i1 %.not261, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.o = load i32, ptr %i.n, align 4, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds [248 x i8], ptr %i.q, i64 %i.r
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ null, %bb.c ]
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.w = phi ptr [ %i.v, %bb.f ], [ null, %bb.e ] ; 21 uses
  br i1 %.not261, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.z = phi ptr [ %i.y, %bb.h ], [ null, %bb.g ] ; 21 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !95
  store float %i.ab, ptr %6, align 4, !tbaa !56
  br i1 %.not, label %bb.af, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 628
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !52 ; 3 uses
  %i.af = add nsw i32 %i.ae, 6                    ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 600 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !94 ; 2 uses
  store i32 %i.ah, ptr %1, align 8, !tbaa !55
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !80 ; 5 uses
  store i32 %i.ak, ptr %1, align 8, !tbaa !55
  store i32 %i.ak, ptr %i.ag, align 8, !tbaa !94
  %i.al = add nsw i32 %i.ak, %i.af                ; 5 uses
  %i.am = icmp sgt i32 %i.ae, -6
  br i1 %i.am, label %bb.l, label %.loopexit569

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !81
  %i.ap = icmp slt i32 %i.ao, %i.al
  br i1 %i.ap, label %bb.m, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !54
  br label %.lr.ph.i

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = sext i32 %i.al to i64
  %i.ar = shl nsw i64 %i.aq, 2
  %i.as = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ar, i32 noundef 16)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.n
  %.pre.i = load i32, ptr %i.aj, align 4, !tbaa !80
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i: ; preds = %.noexc, %bb.m
  %i.at = phi i32 [ %.pre.i, %.noexc ], [ %i.ak, %bb.m ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.as, %.noexc ], [ null, %bb.m ] ; 9 uses
  %i.au = icmp sgt i32 %i.at, 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !54 ; 9 uses
  br i1 %i.au, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %.0.i.i.i659 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.at to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.at, 8
  %i.ay = sub i64 %i.ax, %.0.i.i.i659
  %diff.check = icmp ugt i64 %i.ay, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <4 x float>, ptr %i.ba, align 4, !tbaa !56
  %wide.load660 = load <4 x float>, ptr %i.bb, align 4, !tbaa !56
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x float> %wide.load, ptr %i.az, align 4, !tbaa !56
  store <4 x float> %wide.load660, ptr %i.bc, align 4, !tbaa !56
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !322

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i.i.prol
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !56
  store float %i.bg, ptr %i.be, align 4, !tbaa !56
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !323

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.bh = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i.i
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !56
  store float %i.bl, ptr %i.bj, align 4, !tbaa !56
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.i
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !56
  store float %i.bo, ptr %i.bm, align 4, !tbaa !56
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.i.1
  %i.br = load float, ptr %i.bq, align 4, !tbaa !56
  store float %i.br, ptr %i.bp, align 4, !tbaa !56
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.i.2
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !56
  store float %i.bu, ptr %i.bs, align 4, !tbaa !56
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !324

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !82, !range !74, !noundef !79
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.o, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.o:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aw)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i unwind label %bb.p

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.o, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i8 1, ptr %i.by, align 8, !tbaa !82
  store ptr %.0.i.i.i, ptr %i.av, align 8, !tbaa !54
  store i32 %i.al, ptr %i.an, align 8, !tbaa !81
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %i.bz = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.ca = sext i32 %i.ak to i64
  %i.cb = shl nsw i64 %i.ca, 2
  %scevgep = getelementptr i8, ptr %i.bz, i64 %i.cb
  %i.cc = zext nneg i32 %i.af to i64
  %i.cd = shl nuw nsw i64 %i.cc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.cd, i1 false), !tbaa !56
  br label %.loopexit569

.loopexit569:                                     ; preds = %.lr.ph.i, %bb.k
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !80
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.q:                                             ; preds = %bb.j, %.loopexit569
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 4 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !80 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !53
  %i.ci = add nsw i32 %i.cg, %i.af                ; 6 uses
  %i.cj = icmp sgt i32 %i.ae, -6
  br i1 %i.cj, label %bb.r, label %.loopexit568

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !81
end_hunk_0
begin_hunk_1_@_ZN27btMultiBodyConstraintSolver41setupMultiBodyTorsionalFrictionConstraintER27btMultiBodySolverConstraintRK9btVector3R15btManifoldPointfRK19btContactSolverInfoRfbff:bb.a
..lr.ph.i322_crit_edge:                           ; preds = %bb.v
  %.phi.trans.insert613 = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.pre614 = load ptr, ptr %.phi.trans.insert613, align 8, !tbaa !54
  br label %.lr.ph.i322

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i328 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i328, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i330, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = sext i32 %i.eg to i64
  %i.el = shl nsw i64 %i.ek, 2
  %i.em = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.el, i32 noundef 16)
          to label %.noexc341 unwind label %bb.ac

.noexc341:                                        ; preds = %bb.x
  %.pre.i329 = load i32, ptr %i.ee, align 4, !tbaa !80
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i330

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i330: ; preds = %.noexc341, %bb.w
  %i.en = phi i32 [ %.pre.i329, %.noexc341 ], [ %i.ef, %bb.w ] ; 3 uses
  %.0.i.i.i331 = phi ptr [ %i.em, %.noexc341 ], [ null, %bb.w ] ; 9 uses
  %i.eo = icmp sgt i32 %i.en, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !54 ; 9 uses
  br i1 %i.eo, label %.lr.ph.i.i.i336, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i332

.lr.ph.i.i.i336:                                  ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i330
  %i.er = ptrtoaddr ptr %i.eq to i64
  %.0.i.i.i331677 = ptrtoaddr ptr %.0.i.i.i331 to i64
  %wide.trip.count.i.i.i337 = zext nneg i32 %i.en to i64 ; 5 uses
  %min.iters.check680 = icmp ult i32 %i.en, 8
  %i.es = sub i64 %i.er, %.0.i.i.i331677
  %diff.check678 = icmp ugt i64 %i.es, -32
  %or.cond737 = select i1 %min.iters.check680, i1 true, i1 %diff.check678
  br i1 %or.cond737, label %scalar.ph679.preheader, label %vector.ph681

vector.ph681:                                     ; preds = %.lr.ph.i.i.i336
  %n.vec682 = and i64 %wide.trip.count.i.i.i337, 2147483640 ; 3 uses
  br label %vector.body683

vector.body683:                                   ; preds = %vector.body683, %vector.ph681
  %index684 = phi i64 [ 0, %vector.ph681 ], [ %index.next687, %vector.body683 ] ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i331, i64 %index684 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %index684 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load685 = load <4 x float>, ptr %i.eu, align 4, !tbaa !56
  %wide.load686 = load <4 x float>, ptr %i.ev, align 4, !tbaa !56
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <4 x float> %wide.load685, ptr %i.et, align 4, !tbaa !56
  store <4 x float> %wide.load686, ptr %i.ew, align 4, !tbaa !56
  %index.next687 = add nuw i64 %index684, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next687, %n.vec682
  br i1 %i.ex, label %middle.block688, label %vector.body683, !llvm.loop !328

middle.block688:                                  ; preds = %vector.body683
  %cmp.n689 = icmp eq i64 %n.vec682, %wide.trip.count.i.i.i337
  br i1 %cmp.n689, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i334, label %scalar.ph679.preheader

scalar.ph679.preheader:                           ; preds = %.lr.ph.i.i.i336, %middle.block688
  %indvars.iv.i.i.i338.ph = phi i64 [ 0, %.lr.ph.i.i.i336 ], [ %n.vec682, %middle.block688 ] ; 3 uses
  %xtraiter751 = and i64 %wide.trip.count.i.i.i337, 3 ; 2 uses
  %lcmp.mod752.not = icmp eq i64 %xtraiter751, 0
  br i1 %lcmp.mod752.not, label %scalar.ph679.prol.loopexit, label %scalar.ph679.prol

scalar.ph679.prol:                                ; preds = %scalar.ph679.preheader, %scalar.ph679.prol
  %indvars.iv.i.i.i338.prol = phi i64 [ %indvars.iv.next.i.i.i339.prol, %scalar.ph679.prol ], [ %indvars.iv.i.i.i338.ph, %scalar.ph679.preheader ] ; 3 uses
  %prol.iter753 = phi i64 [ %prol.iter753.next, %scalar.ph679.prol ], [ 0, %scalar.ph679.preheader ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i331, i64 %indvars.iv.i.i.i338.prol
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.i.i.i338.prol
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !56
  store float %i.fa, ptr %i.ey, align 4, !tbaa !56
  %indvars.iv.next.i.i.i339.prol = add nuw nsw i64 %indvars.iv.i.i.i338.prol, 1 ; 2 uses
  %prol.iter753.next = add i64 %prol.iter753, 1   ; 2 uses
  %prol.iter753.cmp.not = icmp eq i64 %prol.iter753.next, %xtraiter751
  br i1 %prol.iter753.cmp.not, label %scalar.ph679.prol.loopexit, label %scalar.ph679.prol, !llvm.loop !329

scalar.ph679.prol.loopexit:                       ; preds = %scalar.ph679.prol, %scalar.ph679.preheader
  %indvars.iv.i.i.i338.unr = phi i64 [ %indvars.iv.i.i.i338.ph, %scalar.ph679.preheader ], [ %indvars.iv.next.i.i.i339.prol, %scalar.ph679.prol ]
  %i.fb = sub nsw i64 %indvars.iv.i.i.i338.ph, %wide.trip.count.i.i.i337
  %i.fc = icmp ugt i64 %i.fb, -4
  br i1 %i.fc, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i334, label %scalar.ph679

scalar.ph679:                                     ; preds = %scalar.ph679.prol.loopexit, %scalar.ph679
  %indvars.iv.i.i.i338 = phi i64 [ %indvars.iv.next.i.i.i339.3, %scalar.ph679 ], [ %indvars.iv.i.i.i338.unr, %scalar.ph679.prol.loopexit ] ; 6 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i331, i64 %indvars.iv.i.i.i338
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.i.i.i338
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !56
  store float %i.ff, ptr %i.fd, align 4, !tbaa !56
  %indvars.iv.next.i.i.i339 = add nuw nsw i64 %indvars.iv.i.i.i338, 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i331, i64 %indvars.iv.next.i.i.i339
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next.i.i.i339
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !56
  store float %i.fi, ptr %i.fg, align 4, !tbaa !56
  %indvars.iv.next.i.i.i339.1 = add nuw nsw i64 %indvars.iv.i.i.i338, 2 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i331, i64 %indvars.iv.next.i.i.i339.1
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next.i.i.i339.1
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !56
  store float %i.fl, ptr %i.fj, align 4, !tbaa !56
  %indvars.iv.next.i.i.i339.2 = add nuw nsw i64 %indvars.iv.i.i.i338, 3 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i331, i64 %indvars.iv.next.i.i.i339.2
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next.i.i.i339.2
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !56
  store float %i.fo, ptr %i.fm, align 4, !tbaa !56
  %indvars.iv.next.i.i.i339.3 = add nuw nsw i64 %indvars.iv.i.i.i338, 4 ; 2 uses
  %exitcond.not.i.i.i340.3 = icmp eq i64 %indvars.iv.next.i.i.i339.3, %wide.trip.count.i.i.i337
  br i1 %exitcond.not.i.i.i340.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i334, label %scalar.ph679, !llvm.loop !330

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i332: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i330
  %.not.i5.i.i333 = icmp eq ptr %i.eq, null
  br i1 %.not.i5.i.i333, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i335, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i334

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i334: ; preds = %scalar.ph679.prol.loopexit, %scalar.ph679, %middle.block688, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i332
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !82, !range !74, !noundef !79
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.y, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i335

bb.y:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i334
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.eq)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i335 unwind label %bb.ac

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i335: ; preds = %bb.y, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i334, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i332
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i8 1, ptr %i.fs, align 8, !tbaa !82
  store ptr %.0.i.i.i331, ptr %i.ep, align 8, !tbaa !54
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !81
  br label %.lr.ph.i322

.lr.ph.i322:                                      ; preds = %..lr.ph.i322_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i335
  %i.ft = phi ptr [ %.pre614, %..lr.ph.i322_crit_edge ], [ %.0.i.i.i331, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i335 ]
  %i.fu = sext i32 %i.ef to i64
  %i.fv = shl nsw i64 %i.fu, 2
  %scevgep588 = getelementptr i8, ptr %i.ft, i64 %i.fv
  %i.fw = zext nneg i32 %i.af to i64
  %i.fx = shl nuw nsw i64 %i.fw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep588, i8 0, i64 %i.fx, i1 false), !tbaa !56
  br label %.loopexit567

.loopexit567:                                     ; preds = %.loopexit568, %.lr.ph.i322
  %i.fy = phi i32 [ %i.eg, %.lr.ph.i322 ], [ %i.dy, %.loopexit568 ]
  %i.fz = phi ptr [ %i.ee, %.lr.ph.i322 ], [ %i.dw, %.loopexit568 ]
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !80
  %i.ga = load i32, ptr %i.ch, align 4, !tbaa !53
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !54
  %i.gd = sext i32 %i.ga to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = load i32, ptr %i.ac, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  invoke void @_ZNK11btMultiBody30fillConstraintJacobianMultiDofEiRK9btVector3S2_S2_PfR20btAlignedObjectArrayIfERS4_IS0_ERS4_I11btMatrix3x3E(ptr noundef nonnull align 8 dereferenceable(640) %i.b, i32 noundef %i.gf, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull %i.ge, ptr noundef nonnull align 8 dereferenceable(25) %i.gg, ptr noundef nonnull align 8 dereferenceable(25) %i.gh, ptr noundef nonnull align 8 dereferenceable(25) %i.gi)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %.loopexit567
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.gj = load i32, ptr %i.ch, align 4, !tbaa !53
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !54
  %i.gm = sext i32 %i.gj to i64                   ; 2 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load ptr, ptr %i.gb, align 8, !tbaa !54
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gm
  invoke void @_ZNK11btMultiBody30calcAccelerationDeltasMultiDofEPKfPfR20btAlignedObjectArrayIfERS3_I9btVector3E(ptr noundef nonnull align 8 dereferenceable(640) %i.b, ptr noundef nonnull %i.gp, ptr noundef nonnull %i.gn, ptr noundef nonnull align 8 dereferenceable(25) %i.gg, ptr noundef nonnull align 8 dereferenceable(25) %i.gh)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i8 0, i64 16, i1 false)
  br label %bb.ai

bb.ab:                                            ; preds = %bb.u, %bb.t
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.ac:                                            ; preds = %bb.y, %bb.x
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.ad:                                            ; preds = %.loopexit567
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.cd

bb.ae:                                            ; preds = %bb.z
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.af:                                            ; preds = %bb.i
  %.sroa.6539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gx = load <4 x float>, ptr %2, align 4       ; 6 uses
  %.sroa.6539.0.copyload = load float, ptr %.sroa.6539.0..sroa_idx, align 4
  store <4 x float> %i.gx, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not264 = icmp eq ptr %i.w, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i8 0, i64 16, i1 false)
  br i1 %.not264, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gz = getelementptr inbounds nuw i8, ptr %i.w, i64 372
  %i.ha = getelementptr inbounds nuw i8, ptr %i.w, i64 380
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !56
  %i.hc = getelementptr inbounds nuw i8, ptr %i.w, i64 388
  %i.hd = getelementptr inbounds nuw i8, ptr %i.w, i64 396
  %i.he = load float, ptr %i.hd, align 4, !tbaa !56
  %i.hf = getelementptr inbounds nuw i8, ptr %i.w, i64 404
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !56
  %i.hh = getelementptr inbounds nuw i8, ptr %i.w, i64 408
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !56
  %i.hj = fmul float %.sroa.6539.0.copyload, %i.hi
  %i.hk = extractelement <4 x float> %i.gx, i64 0
  %i.hl = call float @llvm.fmuladd.f32(float %i.hg, float %i.hk, float %i.hj)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.w, i64 412
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !56
  %i.ho = extractelement <4 x float> %i.gx, i64 2
  %i.hp = call noundef float @llvm.fmuladd.f32(float %i.hn, float %i.ho, float %i.hl)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.w, i64 672
  %i.hr = load <2 x float>, ptr %i.gz, align 4, !tbaa !56 ; 2 uses
  %i.hs = load <2 x float>, ptr %i.hc, align 4, !tbaa !56 ; 2 uses
  %14 = shufflevector <4 x float> %i.gx, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %15 = shufflevector <2 x float> %i.hr, <2 x float> %i.hs, <2 x i32> <i32 1, i32 3>
  %16 = fmul <2 x float> %14, %15
  %i.ht = shufflevector <2 x float> %i.hr, <2 x float> %i.hs, <2 x i32> <i32 0, i32 2>
  %i.hu = shufflevector <4 x float> %i.gx, <4 x float> poison, <2 x i32> zeroinitializer
  %i.hv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ht, <2 x float> %i.hu, <2 x float> %16)
  %i.hw = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.hx = insertelement <2 x float> %i.hw, float %i.he, i64 1
  %i.hy = shufflevector <4 x float> %i.gx, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.hz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.hy, <2 x float> %i.hv)
  %i.ia = load <2 x float>, ptr %i.hq, align 4, !tbaa !56
  %i.ib = fmul <2 x float> %i.hz, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.w, i64 680
  %i.id = load float, ptr %i.ic, align 4, !tbaa !56
  %i.ie = fmul float %i.hp, %i.id
  %.sroa.3.12.vec.insert.i351 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ie, i64 0
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sroa.7529.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i351, %bb.ag ], [ zeroinitializer, %bb.af ]
  %.sroa.0528.0 = phi <2 x float> [ %i.ib, %bb.ag ], [ zeroinitializer, %bb.af ]
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <2 x float> %.sroa.0528.0, ptr %i.if, align 8
  %.sroa.7529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  store <2 x float> %.sroa.7529.0, ptr %.sroa.7529.0..sroa_idx, align 8, !tbaa !100
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.aa
  br i1 %.not261, label %bb.bf, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ih = getelementptr inbounds nuw i8, ptr %i.d, i64 628
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !52 ; 3 uses
  %i.ij = add nsw i32 %i.ii, 6                    ; 7 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.d, i64 600 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !94 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %i.il, ptr %i.im, align 8, !tbaa !64
  %i.in = icmp slt i32 %i.il, 0
  br i1 %i.in, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 3 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !80 ; 5 uses
  store i32 %i.ip, ptr %i.im, align 8, !tbaa !64
  store i32 %i.ip, ptr %i.ik, align 8, !tbaa !94
  %i.iq = add nsw i32 %i.ip, %i.ij                ; 5 uses
  %i.ir = icmp sgt i32 %i.ii, -6
  br i1 %i.ir, label %bb.al, label %.loopexit566

bb.al:                                            ; preds = %bb.ak
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !81
  %i.iu = icmp slt i32 %i.it, %i.iq
  br i1 %i.iu, label %bb.am, label %..lr.ph.i364_crit_edge

..lr.ph.i364_crit_edge:                           ; preds = %bb.al
  %.phi.trans.insert615 = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.pre616 = load ptr, ptr %.phi.trans.insert615, align 8, !tbaa !54
  br label %.lr.ph.i364

bb.am:                                            ; preds = %bb.al
  %.not.i.i.i370 = icmp eq i32 %i.iq, 0
  br i1 %.not.i.i.i370, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i372, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iv = sext i32 %i.iq to i64
  %i.iw = shl nsw i64 %i.iv, 2
  %i.ix = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.iw, i32 noundef 16)
          to label %.noexc383 unwind label %bb.aq

.noexc383:                                        ; preds = %bb.an
  %.pre.i371 = load i32, ptr %i.io, align 4, !tbaa !80
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i372

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i372: ; preds = %.noexc383, %bb.am
  %i.iy = phi i32 [ %.pre.i371, %.noexc383 ], [ %i.ip, %bb.am ] ; 3 uses
  %.0.i.i.i373 = phi ptr [ %i.ix, %.noexc383 ], [ null, %bb.am ] ; 9 uses
  %i.iz = icmp sgt i32 %i.iy, 0
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !54 ; 9 uses
  br i1 %i.iz, label %.lr.ph.i.i.i378, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i374

.lr.ph.i.i.i378:                                  ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i372
  %i.jc = ptrtoaddr ptr %i.jb to i64
  %.0.i.i.i373692 = ptrtoaddr ptr %.0.i.i.i373 to i64
  %wide.trip.count.i.i.i379 = zext nneg i32 %i.iy to i64 ; 5 uses
  %min.iters.check695 = icmp ult i32 %i.iy, 8
  %i.jd = sub i64 %i.jc, %.0.i.i.i373692
  %diff.check693 = icmp ugt i64 %i.jd, -32
  %or.cond738 = select i1 %min.iters.check695, i1 true, i1 %diff.check693
  br i1 %or.cond738, label %scalar.ph694.preheader, label %vector.ph696

vector.ph696:                                     ; preds = %.lr.ph.i.i.i378
  %n.vec697 = and i64 %wide.trip.count.i.i.i379, 2147483640 ; 3 uses
  br label %vector.body698

vector.body698:                                   ; preds = %vector.body698, %vector.ph696
  %index699 = phi i64 [ 0, %vector.ph696 ], [ %index.next702, %vector.body698 ] ; 3 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i373, i64 %index699 ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %index699 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %wide.load700 = load <4 x float>, ptr %i.jf, align 4, !tbaa !56
  %wide.load701 = load <4 x float>, ptr %i.jg, align 4, !tbaa !56
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <4 x float> %wide.load700, ptr %i.je, align 4, !tbaa !56
  store <4 x float> %wide.load701, ptr %i.jh, align 4, !tbaa !56
  %index.next702 = add nuw i64 %index699, 8       ; 2 uses
  %i.ji = icmp eq i64 %index.next702, %n.vec697
  br i1 %i.ji, label %middle.block703, label %vector.body698, !llvm.loop !331

middle.block703:                                  ; preds = %vector.body698
  %cmp.n704 = icmp eq i64 %n.vec697, %wide.trip.count.i.i.i379
  br i1 %cmp.n704, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i376, label %scalar.ph694.preheader

scalar.ph694.preheader:                           ; preds = %.lr.ph.i.i.i378, %middle.block703
  %indvars.iv.i.i.i380.ph = phi i64 [ 0, %.lr.ph.i.i.i378 ], [ %n.vec697, %middle.block703 ] ; 3 uses
  %xtraiter754 = and i64 %wide.trip.count.i.i.i379, 3 ; 2 uses
  %lcmp.mod755.not = icmp eq i64 %xtraiter754, 0
  br i1 %lcmp.mod755.not, label %scalar.ph694.prol.loopexit, label %scalar.ph694.prol

scalar.ph694.prol:                                ; preds = %scalar.ph694.preheader, %scalar.ph694.prol
  %indvars.iv.i.i.i380.prol = phi i64 [ %indvars.iv.next.i.i.i381.prol, %scalar.ph694.prol ], [ %indvars.iv.i.i.i380.ph, %scalar.ph694.preheader ] ; 3 uses
  %prol.iter756 = phi i64 [ %prol.iter756.next, %scalar.ph694.prol ], [ 0, %scalar.ph694.preheader ]
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i373, i64 %indvars.iv.i.i.i380.prol
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.i.i.i380.prol
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !56
  store float %i.jl, ptr %i.jj, align 4, !tbaa !56
  %indvars.iv.next.i.i.i381.prol = add nuw nsw i64 %indvars.iv.i.i.i380.prol, 1 ; 2 uses
  %prol.iter756.next = add i64 %prol.iter756, 1   ; 2 uses
  %prol.iter756.cmp.not = icmp eq i64 %prol.iter756.next, %xtraiter754
  br i1 %prol.iter756.cmp.not, label %scalar.ph694.prol.loopexit, label %scalar.ph694.prol, !llvm.loop !332

scalar.ph694.prol.loopexit:                       ; preds = %scalar.ph694.prol, %scalar.ph694.preheader
  %indvars.iv.i.i.i380.unr = phi i64 [ %indvars.iv.i.i.i380.ph, %scalar.ph694.preheader ], [ %indvars.iv.next.i.i.i381.prol, %scalar.ph694.prol ]
  %i.jm = sub nsw i64 %indvars.iv.i.i.i380.ph, %wide.trip.count.i.i.i379
  %i.jn = icmp ugt i64 %i.jm, -4
  br i1 %i.jn, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i376, label %scalar.ph694

scalar.ph694:                                     ; preds = %scalar.ph694.prol.loopexit, %scalar.ph694
  %indvars.iv.i.i.i380 = phi i64 [ %indvars.iv.next.i.i.i381.3, %scalar.ph694 ], [ %indvars.iv.i.i.i380.unr, %scalar.ph694.prol.loopexit ] ; 6 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i373, i64 %indvars.iv.i.i.i380
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.i.i.i380
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !56
  store float %i.jq, ptr %i.jo, align 4, !tbaa !56
  %indvars.iv.next.i.i.i381 = add nuw nsw i64 %indvars.iv.i.i.i380, 1 ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i373, i64 %indvars.iv.next.i.i.i381
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next.i.i.i381
  %i.jt = load float, ptr %i.js, align 4, !tbaa !56
  store float %i.jt, ptr %i.jr, align 4, !tbaa !56
  %indvars.iv.next.i.i.i381.1 = add nuw nsw i64 %indvars.iv.i.i.i380, 2 ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i373, i64 %indvars.iv.next.i.i.i381.1
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next.i.i.i381.1
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !56
  store float %i.jw, ptr %i.ju, align 4, !tbaa !56
  %indvars.iv.next.i.i.i381.2 = add nuw nsw i64 %indvars.iv.i.i.i380, 3 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i373, i64 %indvars.iv.next.i.i.i381.2
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next.i.i.i381.2
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !56
  store float %i.jz, ptr %i.jx, align 4, !tbaa !56
  %indvars.iv.next.i.i.i381.3 = add nuw nsw i64 %indvars.iv.i.i.i380, 4 ; 2 uses
  %exitcond.not.i.i.i382.3 = icmp eq i64 %indvars.iv.next.i.i.i381.3, %wide.trip.count.i.i.i379
  br i1 %exitcond.not.i.i.i382.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i376, label %scalar.ph694, !llvm.loop !333

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i374: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i372
  %.not.i5.i.i375 = icmp eq ptr %i.jb, null
  br i1 %.not.i5.i.i375, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i377, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i376

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i376: ; preds = %scalar.ph694.prol.loopexit, %scalar.ph694, %middle.block703, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i374
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.kb = load i8, ptr %i.ka, align 8, !tbaa !82, !range !74, !noundef !79
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %bb.ao, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i377

bb.ao:                                            ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i376
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.jb)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i377 unwind label %bb.aq

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i377: ; preds = %bb.ao, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i376, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i374
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i8 1, ptr %i.kd, align 8, !tbaa !82
  store ptr %.0.i.i.i373, ptr %i.ja, align 8, !tbaa !54
  store i32 %i.iq, ptr %i.is, align 8, !tbaa !81
  br label %.lr.ph.i364

.lr.ph.i364:                                      ; preds = %..lr.ph.i364_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i377
  %i.ke = phi ptr [ %.pre616, %..lr.ph.i364_crit_edge ], [ %.0.i.i.i373, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i377 ]
  %i.kf = sext i32 %i.ip to i64
  %i.kg = shl nsw i64 %i.kf, 2
  %scevgep589 = getelementptr i8, ptr %i.ke, i64 %i.kg
  %i.kh = zext nneg i32 %i.ij to i64
  %i.ki = shl nuw nsw i64 %i.kh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep589, i8 0, i64 %i.ki, i1 false), !tbaa !56
  br label %.loopexit566

.loopexit566:                                     ; preds = %.lr.ph.i364, %bb.ak
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !80
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ba
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.aq:                                            ; preds = %bb.ao, %bb.an
end_hunk_1
