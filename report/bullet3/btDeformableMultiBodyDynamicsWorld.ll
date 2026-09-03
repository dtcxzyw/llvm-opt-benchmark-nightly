Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableMultiBodyDynamicsWorld?download=true
inline.NumInlined: 1094
inline.NumDeleted: 383
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN34btDeformableMultiBodyDynamicsWorld26performGeometricCollisionsEf:bb.a
._crit_edge218:                                   ; preds = %.epil.preheader, %.epil.preheader, %.epil.preheader, %bb.p, %._crit_edge218.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge218.unr-lcssa ], [ %i.ir, %bb.p ], [ %.080215.epil.init, %.epil.preheader ], [ %.080215.epil.init, %.epil.preheader ], [ %.080215.epil.init, %.epil.preheader ]
  %i.is = icmp eq i32 %.1.lcssa, 0
  br i1 %i.is, label %.critedge, label %.preheader195

.preheader195:                                    ; preds = %._crit_edge218
  %i.it = icmp sgt i32 %i.ho, 0
  br i1 %i.it, label %.lr.ph221, label %._crit_edge222

bb.q:                                             ; preds = %_ZNK17btCollisionObject8isActiveEv.exit173.1, %.lr.ph217.new
  %indvars.iv245 = phi i64 [ 0, %.lr.ph217.new ], [ %indvars.iv.next246.1, %_ZNK17btCollisionObject8isActiveEv.exit173.1 ] ; 3 uses
  %.080215 = phi i32 [ 0, %.lr.ph217.new ], [ %.1.1, %_ZNK17btCollisionObject8isActiveEv.exit173.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph217.new ], [ %niter.next.1, %_ZNK17btCollisionObject8isActiveEv.exit173.1 ]
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv245
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !200 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 240
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !288
  switch i32 %i.ix, label %bb.r [
    i32 6, label %_ZNK17btCollisionObject8isActiveEv.exit173
    i32 2, label %_ZNK17btCollisionObject8isActiveEv.exit173
    i32 5, label %_ZNK17btCollisionObject8isActiveEv.exit173
  ]

bb.r:                                             ; preds = %bb.q
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 1380
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !329
  %i.ja = add nsw i32 %i.iz, %.080215
  br label %_ZNK17btCollisionObject8isActiveEv.exit173

_ZNK17btCollisionObject8isActiveEv.exit173:       ; preds = %bb.q, %bb.q, %bb.q, %bb.r
  %.1 = phi i32 [ %i.ja, %bb.r ], [ %.080215, %bb.q ], [ %.080215, %bb.q ], [ %.080215, %bb.q ] ; 4 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv245
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !200 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 240
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !288
  switch i32 %i.jf, label %bb.s [
    i32 6, label %_ZNK17btCollisionObject8isActiveEv.exit173.1
    i32 2, label %_ZNK17btCollisionObject8isActiveEv.exit173.1
    i32 5, label %_ZNK17btCollisionObject8isActiveEv.exit173.1
  ]

bb.s:                                             ; preds = %_ZNK17btCollisionObject8isActiveEv.exit173
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 1380
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !329
  %i.ji = add nsw i32 %i.jh, %.1
  br label %_ZNK17btCollisionObject8isActiveEv.exit173.1

_ZNK17btCollisionObject8isActiveEv.exit173.1:     ; preds = %bb.s, %_ZNK17btCollisionObject8isActiveEv.exit173, %_ZNK17btCollisionObject8isActiveEv.exit173, %_ZNK17btCollisionObject8isActiveEv.exit173
  %.1.1 = phi i32 [ %i.ji, %bb.s ], [ %.1, %_ZNK17btCollisionObject8isActiveEv.exit173 ], [ %.1, %_ZNK17btCollisionObject8isActiveEv.exit173 ], [ %.1, %_ZNK17btCollisionObject8isActiveEv.exit173 ] ; 3 uses
  %indvars.iv.next246.1 = add nuw nsw i64 %indvars.iv245, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge218.unr-lcssa, label %bb.q, !llvm.loop !477

.lr.ph221:                                        ; preds = %.preheader195, %_ZNK17btCollisionObject8isActiveEv.exit174
  %i.jj = phi i32 [ %i.jq, %_ZNK17btCollisionObject8isActiveEv.exit174 ], [ %i.hn, %.preheader195 ] ; 3 uses
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %_ZNK17btCollisionObject8isActiveEv.exit174 ], [ 0, %.preheader195 ] ; 2 uses
  %i.jk = load ptr, ptr %i.i, align 8, !tbaa !125
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %indvars.iv248
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !200 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 240
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !288
  switch i32 %i.jo, label %bb.t [
    i32 6, label %_ZNK17btCollisionObject8isActiveEv.exit174
    i32 2, label %_ZNK17btCollisionObject8isActiveEv.exit174
    i32 5, label %_ZNK17btCollisionObject8isActiveEv.exit174
  ]

bb.t:                                             ; preds = %.lr.ph221
  invoke void @_ZN10btSoftBody19applyRepulsionForceEfb(ptr noundef nonnull align 8 dereferenceable(2064) %i.jm, float noundef %1, i1 noundef zeroext false)
          to label %._ZNK17btCollisionObject8isActiveEv.exit174_crit_edge unwind label %bb.u

._ZNK17btCollisionObject8isActiveEv.exit174_crit_edge: ; preds = %bb.t
  %.pre254 = load i32, ptr %i.a, align 4, !tbaa !126
  br label %_ZNK17btCollisionObject8isActiveEv.exit174

bb.u:                                             ; preds = %bb.t
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZNK17btCollisionObject8isActiveEv.exit174:       ; preds = %._ZNK17btCollisionObject8isActiveEv.exit174_crit_edge, %.lr.ph221, %.lr.ph221, %.lr.ph221
  %i.jq = phi i32 [ %.pre254, %._ZNK17btCollisionObject8isActiveEv.exit174_crit_edge ], [ %i.jj, %.lr.ph221 ], [ %i.jj, %.lr.ph221 ], [ %i.jj, %.lr.ph221 ] ; 3 uses
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %i.jr = sext i32 %i.jq to i64
  %i.js = icmp slt i64 %indvars.iv.next249, %i.jr
  br i1 %i.js, label %.lr.ph221, label %._crit_edge222, !llvm.loop !478

._crit_edge222:                                   ; preds = %_ZNK17btCollisionObject8isActiveEv.exit174, %.preheader195
  %i.jt = phi i32 [ %i.ho, %.preheader195 ], [ %i.jq, %_ZNK17btCollisionObject8isActiveEv.exit174 ]
  %i.ju = add nuw nsw i32 %.086223, 1             ; 2 uses
  %i.jv = load i32, ptr %i.f, align 4, !tbaa !149
  %i.jw = icmp slt i32 %i.ju, %i.jv
  br i1 %i.jw, label %.preheader198, label %.critedge, !llvm.loop !479

.critedge:                                        ; preds = %.preheader198, %.preheader197, %.preheader196, %._crit_edge222, %._crit_edge218, %.preheader199
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.v:                                             ; preds = %bb.o, %bb.u, %bb.j, %bb.g
  %.pn107.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.dg, %bb.j ], [ %i.jp, %bb.u ], [ %i.ie, %bb.o ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn107.pn.pn
}

declare void @_ZN23btDiscreteDynamicsWorld13updateActionsEf(ptr noundef nonnull align 8 dereferenceable(508), float noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #10

declare void @_ZN10btSoftBody23defaultCollisionHandlerEPS_(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34btDeformableMultiBodyDynamicsWorld21updateActivationStateEf(ptr noundef nonnull align 8 dereferenceable(1056) %0, float noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 860 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !126
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 872
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  tail call void @_ZN24btMultiBodyDynamicsWorld21updateActivationStateEf(ptr noundef nonnull align 8 dereferenceable(848) %0, float noundef %1)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !200  ; 6 uses
  tail call void @_ZN10btSoftBody18updateDeactivationEf(ptr noundef nonnull align 8 dereferenceable(2064) %i.g, float noundef %1)
  %i.h = tail call noundef zeroext i1 @_ZN10btSoftBody13wantsSleepingEv(ptr noundef nonnull align 8 dereferenceable(2064) %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 240 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !288  ; 3 uses
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(372) %i.g, i32 noundef 3)
  %.pr = load i32, ptr %i.i, align 8, !tbaa !288
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pr, %bb.d ], [ %i.j, %bb.c ]
  %i.m = icmp eq i32 %i.l, 2
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN10btSoftBody15setZeroVelocityEv(ptr noundef nonnull align 8 dereferenceable(2064) %i.g)
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.j, 4
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(372) %i.g, i32 noundef 1)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !126
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !488
}

declare void @_ZN10btSoftBody18updateDeactivationEf(ptr noundef nonnull align 8 dereferenceable(2064), float noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN10btSoftBody13wantsSleepingEv(ptr noundef nonnull align 8 dereferenceable(2064)) local_unnamed_addr #5

declare void @_ZNK17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(372), i32 noundef) local_unnamed_addr #5

declare void @_ZN10btSoftBody15setZeroVelocityEv(ptr noundef nonnull align 8 dereferenceable(2064)) local_unnamed_addr #5

declare void @_ZN24btMultiBodyDynamicsWorld21updateActivationStateEf(ptr noundef nonnull align 8 dereferenceable(848), float noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody19applyRepulsionForceEfb(ptr noundef nonnull align 8 dereferenceable(2064) %0, float noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btAlignedObjectArray.0, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i8 1, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1316 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !329  ; 8 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.i, i32 noundef 16)
          to label %.loopexit263 unwind label %bb.c ; 11 uses

.loopexit263:                                     ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !42
  store ptr %i.j, ptr %i.b, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %i.i, i1 false), !tbaa !52
  %.pre = load i32, ptr %i.e, align 4, !tbaa !329
  %i.k = icmp sgt i32 %.pre, 0
  br i1 %i.k, label %.lr.ph, label %.lr.ph267

.lr.ph267:                                        ; preds = %.lr.ph, %.loopexit263
  %i.l = zext nneg i32 %i.f to i64                ; 2 uses
  %_ZL4seed.promoted = load i64, ptr @_ZL4seed, align 8, !tbaa !492 ; 2 uses
  %xtraiter = and i64 %i.l, 1
  %4 = icmp eq i32 %i.f, 1
  br i1 %4, label %.epil.preheader, label %.lr.ph267.new

.lr.ph267.new:                                    ; preds = %.lr.ph267
  %unroll_iter = and i64 %i.l, 2147483646
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.m

.lr.ph:                                           ; preds = %.loopexit263, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.loopexit263 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.e, align 4, !tbaa !329
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %.lr.ph267, !llvm.loop !489

.preheader262.unr-lcssa:                          ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader262, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader262.unr-lcssa, %.lr.ph267
  %indvars.iv277.epil.init = phi i64 [ 0, %.lr.ph267 ], [ %indvars.iv.next278.1, %.preheader262.unr-lcssa ]
  %.epil.init = phi i64 [ %_ZL4seed.promoted, %.lr.ph267 ], [ %i.aa, %.preheader262.unr-lcssa ]
  %lcmp.mod314 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod314)
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv277.epil.init ; 2 uses
  %6 = mul nuw nsw i64 %.epil.init, 1664525
  %7 = add nuw nsw i64 %6, 1013904223             ; 2 uses
  %8 = and i64 %7, 4294967295
  %.lhs.trunc.epil = trunc i64 %7 to i32
  %9 = urem i32 %.lhs.trunc.epil, %i.f
  %.zext.epil = zext nneg i32 %9 to i64
  %sext.epil = shl nuw nsw i64 %.zext.epil, 2
  %10 = getelementptr inbounds nuw i8, ptr %i.j, i64 %sext.epil ; 2 uses
  %11 = load i32, ptr %5, align 4, !tbaa !52
  %12 = load i32, ptr %10, align 4, !tbaa !52
  store i32 %12, ptr %5, align 4, !tbaa !52
  store i32 %11, ptr %10, align 4, !tbaa !52
  br label %.preheader262

.preheader262:                                    ; preds = %.preheader262.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.aa, %.preheader262.unr-lcssa ], [ %8, %.epil.preheader ]
  store i64 %.lcssa, ptr @_ZL4seed, align 8, !tbaa !492
  %.pre297 = load i32, ptr %i.e, align 4, !tbaa !329 ; 2 uses
  %i.s = icmp sgt i32 %.pre297, 0
  br i1 %i.s, label %.lr.ph273, label %._crit_edge274

.lr.ph273:                                        ; preds = %.preheader262
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !328
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %wide.trip.count295 = zext nneg i32 %.pre297 to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.d, %.lr.ph267.new
  %indvars.iv277 = phi i64 [ 0, %.lr.ph267.new ], [ %indvars.iv.next278.1, %bb.d ] ; 3 uses
  %indvars.iv277.a = phi i64 [ %_ZL4seed.promoted, %.lr.ph267.new ], [ %i.aa, %bb.d ]
  %i.w = phi i64 [ 0, %.lr.ph267.new ], [ %indvars.iv.next278, %bb.d ]
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv277 ; 2 uses
  %14 = mul nuw nsw i64 %indvars.iv277.a, 1664525
  %15 = add nuw nsw i64 %14, 1013904223           ; 2 uses
  %16 = and i64 %15, 4294967295
  %.lhs.trunc = trunc i64 %15 to i32
  %17 = urem i32 %.lhs.trunc, %i.f
  %.zext = zext nneg i32 %17 to i64
  %sext = shl nuw nsw i64 %.zext, 2
  %18 = getelementptr inbounds nuw i8, ptr %i.j, i64 %sext ; 2 uses
  %19 = load i32, ptr %13, align 4, !tbaa !52
  %20 = load i32, ptr %18, align 4, !tbaa !52
  store i32 %20, ptr %13, align 4, !tbaa !52
  store i32 %19, ptr %18, align 4, !tbaa !52
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv277
  %21 = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.y = mul nuw nsw i64 %16, 1664525
  %i.z = add nuw nsw i64 %i.y, 1013904223         ; 2 uses
  %i.aa = and i64 %i.z, 4294967295                ; 3 uses
  %.lhs.trunc.a = trunc i64 %i.z to i32
  %i.ab = urem i32 %.lhs.trunc.a, %i.f
  %.zext.a = zext nneg i32 %i.ab to i64
  %sext.a = shl nuw nsw i64 %.zext.a, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 %sext.a ; 2 uses
  %i.ad = load i32, ptr %21, align 4, !tbaa !52
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !52
  store i32 %i.ae, ptr %21, align 4, !tbaa !52
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !52
  %indvars.iv.next278.1 = add nuw nsw i64 %indvars.iv277, 2 ; 2 uses
  %indvars.iv.next278 = add i64 %i.w, 2           ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next278, %unroll_iter
  br i1 %exitcond.not, label %.preheader262.unr-lcssa, label %bb.d, !llvm.loop !490

._crit_edge274.loopexit:                          ; preds = %bb.q
  %.pre298 = load ptr, ptr %i.b, align 8, !tbaa !43
  %.pre299 = load i8, ptr %i.a, align 8, !range !50
  %i.af = trunc nuw i8 %.pre299 to i1
  br label %._crit_edge274

._crit_edge274:                                   ; preds = %._crit_edge274.loopexit, %.preheader262
  %i.ag = phi i1 [ %i.af, %._crit_edge274.loopexit ], [ true, %.preheader262 ]
  %i.ah = phi ptr [ %.pre298, %._crit_edge274.loopexit ], [ %i.j, %.preheader262 ] ; 2 uses
  %.not.i.i.i128 = icmp ne ptr %i.ah, null
  %or.cond.i.i = select i1 %.not.i.i.i128, i1 %i.ag, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.e:                                             ; preds = %._crit_edge274
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ah)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #20
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.a, %._crit_edge274, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.g:                                             ; preds = %.lr.ph273, %bb.q
  %indvars.iv292 = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next293, %bb.q ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv292
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !52
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [88 x i8], ptr %i.u, i64 %i.am ; 14 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !494 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !495 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !327 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !327 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !327 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 20 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !60
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bi = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !60
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.bo = load float, ptr %i.bn, align 8, !tbaa !496
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 52 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 4 uses
  %i.br = load float, ptr %i.bq, align 8, !tbaa !60 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !60
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.bz = load float, ptr %i.by, align 4, !tbaa !60
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !60
  %i.cc = load <3 x float>, ptr %i.ar, align 8, !tbaa !60 ; 6 uses
  %i.cd = load float, ptr %i.be, align 4, !tbaa !60 ; 3 uses
  %i.ce = extractelement <3 x float> %i.cc, i64 2 ; 4 uses
  %i.cf = fmul float %i.bi, %i.ce
  %i.cg = load <2 x float>, ptr %i.as, align 8, !tbaa !60 ; 5 uses
  %i.ch = extractelement <2 x float> %i.cg, i64 0 ; 2 uses
  %i.ci = load <2 x float>, ptr %i.bt, align 4, !tbaa !60
  %i.cj = shufflevector <3 x float> %i.cc, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.cj, %i.ci
  %i.cl = load <2 x float>, ptr %i.bu, align 4, !tbaa !60
  %i.cm = shufflevector <3 x float> %i.cc, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cn = fmul <2 x float> %i.cm, %i.cl
  %i.co = fadd <2 x float> %i.ck, %i.cn
  %i.cp = load <2 x float>, ptr %i.av, align 4, !tbaa !60
  %i.cq = load <2 x float>, ptr %i.ay, align 4, !tbaa !60
  %i.cr = insertelement <4 x float> poison, float %i.bd, i64 2
  %i.cs = insertelement <4 x float> %i.cr, float %i.bx, i64 3
  %i.ct = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> %i.cs, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cv = shufflevector <3 x float> %i.cc, <3 x float> poison, <4 x i32> zeroinitializer
  %i.cw = fmul <4 x float> %i.cu, %i.cv
  %i.cx = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cz = insertelement <4 x float> poison, float %i.bg, i64 2
  %i.da = insertelement <4 x float> %i.cz, float %i.bz, i64 3
  %i.db = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> %i.da, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dd = fmul <4 x float> %i.cy, %i.dc
  %i.de = fadd <4 x float> %i.cw, %i.dd           ; 3 uses
  %i.df = extractelement <4 x float> %i.de, i64 0
  %i.dg = fadd float %i.df, %i.cf
  %i.dh = fsub float %i.bl, %i.dg
  %i.di = load <2 x float>, ptr %i.bj, align 4, !tbaa !60
  %i.dj = load <2 x float>, ptr %i.bm, align 4, !tbaa !60
  %i.dk = shufflevector <3 x float> %i.cc, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.dl = fmul <2 x float> %i.dk, %i.di
  %i.dm = shufflevector <4 x float> %i.de, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dn = fadd <2 x float> %i.dm, %i.dl
  %i.do = fsub <2 x float> %i.dj, %i.dn           ; 2 uses
  %shift = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop311 = fmul <2 x float> %i.do, %shift
  %i.dp = extractelement <2 x float> %foldExtExtBinop311, i64 0
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.dh, float %i.dp)
  %i.dr = extractelement <2 x float> %i.do, i64 1
  %i.ds = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %i.dr, float %i.dq)
  %i.dt = fsub float %i.bo, %i.ds                 ; 2 uses
  %i.du = fcmp olt float %i.dt, 0.000000e+00
  %.sroa.speculated248 = select i1 %i.du, float 0.000000e+00, float %i.dt ; 2 uses
  %i.dv = load <2 x float>, ptr %i.bv, align 4, !tbaa !60
  %i.dw = fmul <2 x float> %i.dk, %i.dv
  %i.dx = fmul float %i.ce, %i.cb
  %i.dy = fadd <2 x float> %i.co, %i.dw
  %i.dz = extractelement <4 x float> %i.de, i64 3
  %i.ea = fadd float %i.dz, %i.dx
  %i.eb = load <2 x float>, ptr %i.bs, align 4, !tbaa !60
  %i.ec = fsub <2 x float> %i.eb, %i.dy           ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 5 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !60
  %i.ef = fsub float %i.ee, %i.ea                 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.cg, %i.ec
  %i.eg = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.eh = extractelement <2 x float> %i.ec, i64 0
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.ch, float %i.eg)
  %i.ej = tail call noundef float @llvm.fmuladd.f32(float %i.ef, float %i.br, float %i.ei) ; 6 uses
  %i.ek = fmul float %.sroa.speculated248, 1.000000e-01
  %i.el = fdiv float %i.ek, %1                    ; 2 uses
  %i.em = fcmp ogt float %i.ej, %i.el
  br i1 %i.em, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.en = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x float> %i.cg, %i.eo
  %i.eq = fmul float %i.br, %i.ej
  %i.er = fsub <2 x float> %i.ec, %i.ep           ; 4 uses
  %i.es = fsub float %i.ef, %i.eq                 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ao, i64 112 ; 6 uses
  %i.eu = load float, ptr %i.et, align 8, !tbaa !501 ; 4 uses
  %i.ev = fcmp oeq float %i.eu, 0.000000e+00
  %i.ew = fdiv float 1.000000e+00, %i.eu
  %i.ex = select i1 %i.ev, float 0.000000e+00, float %i.ew ; 3 uses
  br i1 %2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ey = load float, ptr %i.v, align 8, !tbaa !502
  %i.ez = fmul float %1, %i.ey
  %i.fa = fmul float %.sroa.speculated248, %i.ez  ; 2 uses
  %i.fb = fsub float %i.el, %i.ej
  %i.fc = fmul float %i.fb, %i.ex                 ; 2 uses
  %i.fd = fcmp olt float %i.fa, %i.fc
  %.sroa.speculated207 = select i1 %i.fd, float %i.fa, float %i.fc
  %i.fe = fneg float %.sroa.speculated207
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.099 = phi float [ %i.fe, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  %i.ff = fcmp olt float %i.ej, 0.000000e+00
  br i1 %i.ff, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fg = fpext float %i.ex to double
  %i.fh = fmul double %i.fg, 5.000000e-01
  %i.fi = fpext float %i.ej to double
  %i.fj = fpext float %.099 to double
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.fi, double %i.fj)
  %i.fl = fptrunc double %i.fk to float
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi float [ %i.fl, %bb.k ], [ %.099, %bb.j ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !503 ; 2 uses
  %i.fo = load ptr, ptr %i.at, align 8, !tbaa !327 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 128
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !503
  %i.fr = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !327 ; 7 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 128
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !503
  %i.fv = or i32 %i.fu, %i.fq
  %i.fw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !327 ; 7 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 128
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !503
  %i.ga = or i32 %i.fz, %i.fv                     ; 2 uses
end_hunk_0
