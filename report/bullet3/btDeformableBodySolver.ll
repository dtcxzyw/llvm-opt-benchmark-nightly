Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableBodySolver?download=true
inline.NumInlined: 1163
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 123
begin_hunk_0_@_ZN22btDeformableBodySolver12reinitializeERK20btAlignedObjectArrayIP10btSoftBodyEf:bb.a
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.ag

._crit_edge:                                      ; preds = %bb.ag, %_ZN22btDeformableBodySolver11updateNodesEv.exit
  %i.ko = fcmp ogt float %2, 0.000000e+00
  br i1 %i.ko, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %.lr.ph, %bb.ag
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ag ] ; 4 uses
  %i.kp = load ptr, ptr %i.kl, align 8, !tbaa !49
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %i.kp, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kq, i8 0, i64 16, i1 false)
  %i.kr = load ptr, ptr %i.km, align 8, !tbaa !49
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.kr, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ks, i8 0, i64 16, i1 false)
  %i.kt = load ptr, ptr %i.kn, align 8, !tbaa !49
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ku, i8 0, i64 16, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kv = load i32, ptr %i.cf, align 4, !tbaa !98
  %i.kw = sext i32 %i.kv to i64
  %i.kx = icmp slt i64 %indvars.iv.next, %i.kw
  br i1 %i.kx, label %bb.ag, label %._crit_edge, !llvm.loop !386

bb.ah:                                            ; preds = %._crit_edge
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 216
  store float %2, ptr %i.ky, align 8, !tbaa !387
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !109
  tail call void @_ZN34btDeformableBackwardEulerObjective12reinitializeEbf(ptr noundef nonnull align 8 dereferenceable(504) %i.la, i1 noundef zeroext %.not.i, float noundef %2)
  %i.lb = load ptr, ptr %0, align 8, !tbaa !64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 64
  %i.ld = load ptr, ptr %i.lc, align 8
  tail call void %i.ld(ptr noundef nonnull align 8 dereferenceable(609) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN22btDeformableBodySolver11updateNodesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(609) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.b = load i32, ptr %i.a, align 4, !tbaa !101  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100  ; 5 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = icmp ult i32 %i.b, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.079.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.079.epil = phi i32 [ %.079.epil.init, %.epil.preheader ], [ %i.k, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 932
  %i.j = load i32, ptr %i.i, align 4, !tbaa !158
  %i.k = add nsw i32 %i.j, %.079.epil             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !388

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !98
  %.not = icmp ne i32 %.07.lcssa, %i.m            ; 2 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.079 = phi i32 [ 0, %.lr.ph.new ], [ %i.aj, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !154
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 932
  %i.q = load i32, ptr %i.p, align 4, !tbaa !158
  %i.r = add nsw i32 %i.q, %.079
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !154
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 932
  %i.w = load i32, ptr %i.v, align 4, !tbaa !158
  %i.x = add nsw i32 %i.w, %i.r
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !154
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 932
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !158
  %i.ad = add nsw i32 %i.ac, %i.x
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !154
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 932
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !158
  %i.aj = add nsw i32 %i.ai, %i.ad                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !16

bb.d:                                             ; preds = %._crit_edge
  store i32 %.07.lcssa, ptr %i.l, align 4, !tbaa !98
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  ret i1 %.not
}

declare void @_ZN34btDeformableBackwardEulerObjective12reinitializeEbf(ptr noundef nonnull align 8 dereferenceable(504), i1 noundef zeroext, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22btDeformableBodySolver14setConstraintsERK19btContactSolverInfo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(609) %0, ptr noundef nonnull align 4 dereferenceable(128) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @.str.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  invoke void @_ZN34btDeformableBackwardEulerObjective14setConstraintsERK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(504) %i.b, ptr noundef nonnull align 4 dereferenceable(128) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.c
}

declare void @_ZN34btDeformableBackwardEulerObjective14setConstraintsERK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 4 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN22btDeformableBodySolver23solveContactConstraintsEPP17btCollisionObjectiRK19btContactSolverInfo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(609) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(128) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull @.str.9)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = invoke noundef float @_ZN29btDeformableContactProjection6updateEPP17btCollisionObjectiRK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(369) %i.c, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(128) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret float %i.d

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.e
}

declare noundef float @_ZN29btDeformableContactProjection6updateEPP17btCollisionObjectiRK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(369), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(128)) unnamed_addr #5

declare void @_ZN10btSoftBody17updateDeformationEv(ptr noundef nonnull align 8 dereferenceable(2064)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN22btDeformableBodySolver14backupVelocityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(609) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !101  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph16, label %._crit_edge17

.lr.ph16:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre26 = load ptr, ptr %i.d, align 8, !tbaa !100
  br label %bb.b

._crit_edge17:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph16, %._crit_edge
  %i.f = phi i32 [ %i.b, %.lr.ph16 ], [ %i.o, %._crit_edge ]
  %1 = phi ptr [ %.pre26, %.lr.ph16 ], [ %2, %._crit_edge ] ; 2 uses
  %indvars.iv23 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next24, %._crit_edge ] ; 2 uses
  %.01013 = phi i32 [ 0, %.lr.ph16 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv23
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 932 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !158
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 944
  %i.m = sext i32 %.01013 to i64
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.n = trunc nsw i64 %indvars.iv.next19 to i32
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !100
  %.pre.a = load i32, ptr %i.a, align 4, !tbaa !101
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.o = phi i32 [ %i.f, %bb.b ], [ %.pre.a, %._crit_edge.loopexit ] ; 2 uses
  %2 = phi ptr [ %1, %bb.b ], [ %.pre, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.01013, %bb.b ], [ %i.n, %._crit_edge.loopexit ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next24, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge17, !llvm.loop !389

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv18 = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next19, %bb.c ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !159
  %i.s = getelementptr inbounds nuw [256 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.v = getelementptr inbounds [16 x i8], ptr %i.u, i64 %indvars.iv18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.i, align 4, !tbaa !158
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !390
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN22btDeformableBodySolver20setupDeformableSolveEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(609) %0, i1 noundef zeroext %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !101  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph50, label %._crit_edge

.lr.ph50:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br i1 %1, label %.lr.ph50.split.us, label %.lr.ph50.split

.lr.ph50.split.us:                                ; preds = %.lr.ph50, %.loopexit.us
  %i.g = phi i32 [ %i.bo, %.loopexit.us ], [ %i.b, %.lr.ph50 ] ; 2 uses
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.loopexit.us ], [ 0, %.lr.ph50 ] ; 2 uses
  %.049.us = phi i32 [ %.2.us, %.loopexit.us ], [ 0, %.lr.ph50 ] ; 3 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv68
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !154  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.l = load i32, ptr %i.k, align 8, !tbaa !256
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 932 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !158  ; 2 uses
  switch i32 %i.l, label %_ZNK17btCollisionObject8isActiveEv.exit.preheader.us [
    i32 6, label %bb.b
    i32 2, label %bb.b
    i32 5, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph50.split.us, %.lr.ph50.split.us, %.lr.ph50.split.us
  %i.o = add nsw i32 %i.n, %.049.us
  br label %.loopexit.us

_ZNK17btCollisionObject8isActiveEv.exit.preheader.us: ; preds = %.lr.ph50.split.us
  %i.p = icmp sgt i32 %i.n, 0
  br i1 %i.p, label %.lr.ph.us, label %.loopexit.us

.lr.ph.us:                                        ; preds = %_ZNK17btCollisionObject8isActiveEv.exit.preheader.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 944 ; 3 uses
  %i.r = sext i32 %.049.us to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK17btCollisionObject8isActiveEv.exit.us.us, %.lr.ph.us
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %_ZNK17btCollisionObject8isActiveEv.exit.us.us ], [ 0, %.lr.ph.us ] ; 4 uses
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %_ZNK17btCollisionObject8isActiveEv.exit.us.us ], [ %i.r, %.lr.ph.us ] ; 6 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !159
  %i.t = getelementptr inbounds nuw [256 x i8], ptr %i.s, i64 %indvars.iv63 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.w = getelementptr inbounds [16 x i8], ptr %i.v, i64 %indvars.iv61 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 60
  %i.y = load float, ptr %i.x, align 4, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !62
  %i.ab = fcmp oeq float %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !62 ; 2 uses
  br i1 %i.ab, label %bb.d, label %_ZNK9btVector3eqERKS_.exit.thread.us.us

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !62
  %i.ag = fcmp oeq float %i.ad, %i.af
  br i1 %i.ag, label %bb.e, label %_ZNK9btVector3eqERKS_.exit.thread.us.us

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !62
  %i.al = fcmp oeq float %i.ai, %i.ak
  br i1 %i.al, label %_ZNK9btVector3eqERKS_.exit.us.us, label %_ZNK9btVector3eqERKS_.exit.thread.us.us

_ZNK9btVector3eqERKS_.exit.us.us:                 ; preds = %bb.e
  %i.am = load float, ptr %i.u, align 4, !tbaa !62
  %i.an = load float, ptr %i.w, align 4, !tbaa !62
  %i.ao = fcmp oeq float %i.am, %i.an
  br i1 %i.ao, label %bb.f, label %_ZNK9btVector3eqERKS_.exit.thread.us.us

_ZNK9btVector3eqERKS_.exit.thread.us.us:          ; preds = %bb.c, %_ZNK9btVector3eqERKS_.exit.us.us, %bb.e, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.aq = load <2 x float>, ptr %i.u, align 4, !tbaa !62
  %i.ar = load <2 x float>, ptr %i.ap, align 4, !tbaa !62
  %i.as = fsub <2 x float> %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.au = load float, ptr %i.at, align 4, !tbaa !62
  %i.av = fsub float %i.ad, %i.au
  %.sroa.3.12.vec.insert.i.us.us = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.av, i64 0
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %indvars.iv61 ; 2 uses
  store <2 x float> %i.as, ptr %i.ax, align 4
  %.sroa.42.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.us.us, ptr %.sroa.42.0..sroa_idx.us.us, align 4, !tbaa !59
  br label %_ZNK17btCollisionObject8isActiveEv.exit.us.us

bb.f:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.us.us
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.az = getelementptr inbounds [16 x i8], ptr %i.ay, i64 %indvars.iv61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  br label %_ZNK17btCollisionObject8isActiveEv.exit.us.us

_ZNK17btCollisionObject8isActiveEv.exit.us.us:    ; preds = %bb.f, %_ZNK9btVector3eqERKS_.exit.thread.us.us
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !159
  %i.bb = getelementptr inbounds nuw [256 x i8], ptr %i.ba, i64 %indvars.iv63
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.be = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %indvars.iv61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !60
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.bf, i64 %indvars.iv61
  %i.bh = load ptr, ptr %i.q, align 8, !tbaa !159
  %i.bi = getelementptr inbounds nuw [256 x i8], ptr %i.bh, i64 %indvars.iv63
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 4 dereferenceable(16) %i.bg, i64 16, i1 false), !tbaa.struct !60
  %indvars.iv.next62 = add nsw i64 %indvars.iv61, 1 ; 2 uses
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.bk = load i32, ptr %i.m, align 4, !tbaa !158
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next64, %i.bl
  br i1 %i.bm, label %bb.c, label %.loopexit.us.loopexit, !llvm.loop !391

.loopexit.us.loopexit:                            ; preds = %_ZNK17btCollisionObject8isActiveEv.exit.us.us
  %i.bn = trunc nsw i64 %indvars.iv.next62 to i32
  %.pre72 = load i32, ptr %i.a, align 4, !tbaa !101
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit, %_ZNK17btCollisionObject8isActiveEv.exit.preheader.us, %bb.b
  %i.bo = phi i32 [ %i.g, %bb.b ], [ %i.g, %_ZNK17btCollisionObject8isActiveEv.exit.preheader.us ], [ %.pre72, %.loopexit.us.loopexit ] ; 2 uses
  %.2.us = phi i32 [ %i.o, %bb.b ], [ %.049.us, %_ZNK17btCollisionObject8isActiveEv.exit.preheader.us ], [ %i.bn, %.loopexit.us.loopexit ]
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next69, %i.bp
  br i1 %i.bq, label %.lr.ph50.split.us, label %._crit_edge, !llvm.loop !392

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.us, %bb.a
  ret void

.lr.ph50.split:                                   ; preds = %.lr.ph50, %.loopexit
  %i.br = phi i32 [ %i.dh, %.loopexit ], [ %i.b, %.lr.ph50 ] ; 2 uses
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %.loopexit ], [ 0, %.lr.ph50 ] ; 2 uses
  %.049 = phi i32 [ %.2, %.loopexit ], [ 0, %.lr.ph50 ] ; 3 uses
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv58
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !154 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 240
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !256
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 932 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !158 ; 2 uses
  switch i32 %i.bw, label %_ZNK17btCollisionObject8isActiveEv.exit.preheader [
    i32 6, label %bb.g
    i32 2, label %bb.g
    i32 5, label %bb.g
  ]

_ZNK17btCollisionObject8isActiveEv.exit.preheader: ; preds = %.lr.ph50.split
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK17btCollisionObject8isActiveEv.exit.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 944 ; 2 uses
  %i.cb = sext i32 %.049 to i64
  br label %_ZNK17btCollisionObject8isActiveEv.exit

bb.g:                                             ; preds = %.lr.ph50.split, %.lr.ph50.split, %.lr.ph50.split
  %i.cc = add nsw i32 %i.by, %.049
  br label %.loopexit

_ZNK17btCollisionObject8isActiveEv.exit:          ; preds = %.lr.ph, %_ZNK17btCollisionObject8isActiveEv.exit
  %indvars.iv53 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next54, %_ZNK17btCollisionObject8isActiveEv.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %i.cb, %.lr.ph ], [ %indvars.iv.next, %_ZNK17btCollisionObject8isActiveEv.exit ] ; 4 uses
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !159
  %i.ce = getelementptr inbounds nuw [256 x i8], ptr %i.cd, i64 %indvars.iv53 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 140
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !62
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 148
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !62
  %i.cl = fadd float %i.ci, %i.ck
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.cn = getelementptr inbounds [16 x i8], ptr %i.cm, i64 %indvars.iv ; 2 uses
  %i.co = load <2 x float>, ptr %i.cf, align 4, !tbaa !62
  %i.cp = load <2 x float>, ptr %i.cg, align 4, !tbaa !62
  %i.cq = fadd <2 x float> %i.co, %i.cp
  %i.cr = load <2 x float>, ptr %i.cn, align 4, !tbaa !62
  %i.cs = fsub <2 x float> %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !62
  %i.cv = fsub float %i.cl, %i.cu
  %.sroa.3.12.vec.insert.i43 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cv, i64 0
  %i.cw = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.cx = getelementptr inbounds [16 x i8], ptr %i.cw, i64 %indvars.iv ; 2 uses
  store <2 x float> %i.cs, ptr %i.cx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i43, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !59
  %i.cy = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.cz = getelementptr inbounds [16 x i8], ptr %i.cy, i64 %indvars.iv
  %i.da = load ptr, ptr %i.ca, align 8, !tbaa !159
  %i.db = getelementptr inbounds nuw [256 x i8], ptr %i.da, i64 %indvars.iv53
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 4 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !60
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.dd = load i32, ptr %i.bx, align 4, !tbaa !158
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next54, %i.de
  br i1 %i.df, label %_ZNK17btCollisionObject8isActiveEv.exit, label %.loopexit.loopexit, !llvm.loop !391

.loopexit.loopexit:                               ; preds = %_ZNK17btCollisionObject8isActiveEv.exit
  %i.dg = trunc nsw i64 %indvars.iv.next to i32
  %.pre = load i32, ptr %i.a, align 4, !tbaa !101
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNK17btCollisionObject8isActiveEv.exit.preheader, %bb.g
  %i.dh = phi i32 [ %i.br, %bb.g ], [ %i.br, %_ZNK17btCollisionObject8isActiveEv.exit.preheader ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.2 = phi i32 [ %i.cc, %bb.g ], [ %.049, %_ZNK17btCollisionObject8isActiveEv.exit.preheader ], [ %i.dg, %.loopexit.loopexit ]
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next59, %i.di
  br i1 %i.dj, label %.lr.ph50.split, label %._crit_edge, !llvm.loop !392
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN22btDeformableBodySolver14revertVelocityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(609) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !101  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph16, label %._crit_edge17

.lr.ph16:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre26 = load ptr, ptr %i.d, align 8, !tbaa !100
  br label %bb.b

._crit_edge17:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph16, %._crit_edge
  %i.f = phi i32 [ %i.b, %.lr.ph16 ], [ %i.o, %._crit_edge ]
  %1 = phi ptr [ %.pre26, %.lr.ph16 ], [ %2, %._crit_edge ] ; 2 uses
  %indvars.iv23 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next24, %._crit_edge ] ; 2 uses
  %.01013 = phi i32 [ 0, %.lr.ph16 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv23
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 932 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !158
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 944
  %i.m = sext i32 %.01013 to i64
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.n = trunc nsw i64 %indvars.iv.next19 to i32
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !100
  %.pre.a = load i32, ptr %i.a, align 4, !tbaa !101
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.o = phi i32 [ %i.f, %bb.b ], [ %.pre.a, %._crit_edge.loopexit ] ; 2 uses
  %2 = phi ptr [ %1, %bb.b ], [ %.pre, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.01013, %bb.b ], [ %i.n, %._crit_edge.loopexit ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next24, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge17, !llvm.loop !393

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv18 = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next19, %bb.c ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.s = getelementptr inbounds [16 x i8], ptr %i.r, i64 %indvars.iv18
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !159
  %i.u = getelementptr inbounds nuw [256 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.i, align 4, !tbaa !158
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !394
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22btDeformableBodySolver13predictMotionEf(ptr noundef nonnull align 8 dereferenceable(609) %0, float noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.btSoftBody::DeformableNodeRigidContact", align 8 ; 45 uses
  %3 = alloca %"class.btSoftBody::DeformableFaceRigidContact", align 8 ; 45 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = load i8, ptr %i.a, align 8, !tbaa !111, !range !52, !noundef !58
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !101  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph51, label %.loopexit

.lr.ph51:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = insertelement <2 x float> poison, float %1, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph51, %_ZNK17btCollisionObject8isActiveEv.exit.thread
  %i.j = phi i32 [ %i.e, %.lr.ph51 ], [ %i.al, %_ZNK17btCollisionObject8isActiveEv.exit.thread ] ; 4 uses
  %indvars.iv55 = phi i64 [ 0, %.lr.ph51 ], [ %indvars.iv.next56, %_ZNK17btCollisionObject8isActiveEv.exit.thread ] ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv55
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !154  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.o = load i32, ptr %i.n, align 8, !tbaa !256
  switch i32 %i.o, label %_ZNK17btCollisionObject8isActiveEv.exit.preheader [
    i32 6, label %_ZNK17btCollisionObject8isActiveEv.exit.thread
    i32 2, label %_ZNK17btCollisionObject8isActiveEv.exit.thread
    i32 5, label %_ZNK17btCollisionObject8isActiveEv.exit.thread
  ]

_ZNK17btCollisionObject8isActiveEv.exit.preheader: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 932 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !158
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %_ZNK17btCollisionObject8isActiveEv.exit.thread

.lr.ph:                                           ; preds = %_ZNK17btCollisionObject8isActiveEv.exit.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 944
  br label %_ZNK17btCollisionObject8isActiveEv.exit

_ZNK17btCollisionObject8isActiveEv.exit:          ; preds = %.lr.ph, %_ZNK17btCollisionObject8isActiveEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK17btCollisionObject8isActiveEv.exit ] ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !159
  %i.u = getelementptr inbounds nuw [256 x i8], ptr %i.t, i64 %indvars.iv ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.y = load float, ptr %i.x, align 4, !tbaa !62
  %i.z = fmul float %1, %i.y
  %i.aa = load <2 x float>, ptr %i.w, align 4, !tbaa !62
  %i.ab = fmul <2 x float> %i.i, %i.aa
  %i.ac = load <2 x float>, ptr %i.v, align 4, !tbaa !62
  %i.ad = fadd <2 x float> %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.af = load float, ptr %i.ae, align 4, !tbaa !62
  %i.ag = fadd float %i.z, %i.af
  %.sroa.3.12.vec.insert.i31 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ag, i64 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store <2 x float> %i.ad, ptr %i.ah, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i31, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i32, ptr %i.p, align 4, !tbaa !158
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %_ZNK17btCollisionObject8isActiveEv.exit, label %_ZNK17btCollisionObject8isActiveEv.exit.thread.loopexit, !llvm.loop !395

_ZNK17btCollisionObject8isActiveEv.exit.thread.loopexit: ; preds = %_ZNK17btCollisionObject8isActiveEv.exit
  %.pre = load i32, ptr %i.d, align 4, !tbaa !101
  br label %_ZNK17btCollisionObject8isActiveEv.exit.thread

_ZNK17btCollisionObject8isActiveEv.exit.thread:   ; preds = %_ZNK17btCollisionObject8isActiveEv.exit.thread.loopexit, %_ZNK17btCollisionObject8isActiveEv.exit.preheader, %bb.b, %bb.b, %bb.b
  %i.al = phi i32 [ %.pre, %_ZNK17btCollisionObject8isActiveEv.exit.thread.loopexit ], [ %i.j, %_ZNK17btCollisionObject8isActiveEv.exit.preheader ], [ %i.j, %bb.b ], [ %i.j, %bb.b ], [ %i.j, %bb.b ] ; 2 uses
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next56, %i.am
  br i1 %i.an, label %bb.b, label %.loopexit, !llvm.loop !396

.loopexit:                                        ; preds = %_ZNK17btCollisionObject8isActiveEv.exit.thread, %.preheader, %bb.a
  %i.ao = load ptr, ptr %0, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(609) %0)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !101
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 292
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 324
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 376
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 356
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 404
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 456
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 436
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 468
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 500
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 552
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 532
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 584
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 564
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 632
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 612
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 644
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 696
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 676
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 728
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 708
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 760
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 740
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 792
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 772
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 400
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 196
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 228
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 260
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 292
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 324
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 356
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 404
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 456
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 436
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 468
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 520
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 500
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 552
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 532
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 584
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 564
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 632
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 612
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 644
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 696
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 676
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 728
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 708
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 760
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 740
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 792
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 772
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 608
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 400
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 192
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK17btCollisionObject8isActiveEv.exit34, %.loopexit
end_hunk_0
