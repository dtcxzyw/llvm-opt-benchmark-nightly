inline.NumInlined: 392
inline.NumDeleted: 103
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11btRigidBody19integrateVelocitiesEf:bb.a
  store float %i.bo, ptr %i.bm, align 8, !tbaa !29
  %foldExtExtBinop = fmul <2 x float> %i.bk, %i.bk
  %i.bp = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %i.bp)
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bq)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.br) ; 2 uses
  %i.bs = fmul float %1, %sqrt.i
  %i.bt = fcmp ogt float %i.bs, f0x3FC90FDB
  br i1 %i.bt, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bu = fdiv float f0x3FC90FDB, %1
  %i.bv = fdiv float %i.bu, %sqrt.i               ; 2 uses
  %i.bw = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x float> %i.bk, %i.bx
  store <2 x float> %i.by, ptr %i.ar, align 8, !tbaa !29
  %i.bz = fmul float %i.bo, %i.bv
  store float %i.bz, ptr %i.bm, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK11btRigidBody14getOrientationEv(ptr noundef nonnull align 8 dereferenceable(564) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.btQuaternion, align 8        ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %.fca.0.load = load <2 x float>, ptr %1, align 8
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load = load <2 x float>, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.fca.1.load, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !29 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !29 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #19, !tbaa !4 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 4, !tbaa !29
  %i.t = load float, ptr %i.m, align 4, !tbaa !29
  %i.u = load float, ptr %i.j, align 4, !tbaa !29
  %i.v = load float, ptr %i.k, align 4, !tbaa !29
  %i.w = load float, ptr %i.o, align 4, !tbaa !29
  %i.x = load float, ptr %i.p, align 4, !tbaa !29
  %i.y = fsub float %i.v, %i.x
  %i.z = fsub float %i.w, %i.u
  %i.aa = fsub float %i.t, %i.s
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 1
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.y, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !29
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !29
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !29
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #19, !tbaa !4 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !29
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !29
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !29
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !29
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !29
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !29
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !29
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !29
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !29
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !29
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11btRigidBody24checkCollideWithOverrideEP17btCollisionObject(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(564) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = icmp ne i32 %i.b, 2
  %.not23 = icmp eq ptr %1, null
  %.not = or i1 %i.c, %.not23
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18   ; 2 uses
  %.not1718 = icmp slt i32 %i.e, 1
  br i1 %.not1718, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63, !nonnull !39, !align !67
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68, !nonnull !39, !align !67
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.critedge, %bb.c, %bb.b, %.preheader, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ true, %.preheader ], [ false, %bb.c ], [ false, %.critedge ], [ true, %bb.b ]
  ret i1 %.3
}

; Function Attrs: uwtable
define dso_local void @_ZN11btRigidBody16addConstraintRefEP17btTypedConstraint(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(564) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 9 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.thread, label %bb.b

_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.thread: ; preds = %bb.c, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !19
  %i.k = icmp eq i32 %i.b, %i.j
  br i1 %i.k, label %bb.d, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.thread
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.l = shl nsw i32 %i.b, 1
  %i.m = select i1 %.not.i.i, i32 1, i32 %i.l     ; 4 uses
  %i.n = icmp slt i32 %i.b, %i.m
  br i1 %i.n, label %bb.e, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = sext i32 %i.m to i64
  %i.p = shl nsw i64 %i.o, 3
  %i.q = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.p, i32 noundef 16)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i: ; preds = %bb.f, %bb.e
  %i.r = phi i32 [ %.pre.i, %bb.f ], [ %i.b, %bb.e ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.q, %bb.f ], [ null, %bb.e ] ; 8 uses
  %i.s = icmp sgt i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17   ; 9 uses
  br i1 %i.s, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i
  %i.v = ptrtoaddr ptr %i.u to i64
  %.0.i.i.i10 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.r to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.r, 8
  %i.w = sub i64 %i.v, %.0.i.i.i10
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <2 x ptr>, ptr %i.y, align 8, !tbaa !61
  %wide.load11 = load <2 x ptr>, ptr %i.z, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x ptr> %wide.load, ptr %i.x, align 8, !tbaa !61
  store <2 x ptr> %wide.load11, ptr %i.aa, align 8, !tbaa !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.i.i.prol
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !61
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !72

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.af = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !61
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !61
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !61
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !61
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.1
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !61
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.2
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !61
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !61
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !74

_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.au = load i8, ptr %i.at, align 8, !tbaa !10, !range !20, !noundef !39
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.u)
  %.pre2.pre.pre.i = load i32, ptr %i.a, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i: ; preds = %bb.g, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.r, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.g ], [ %i.r, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i8 1, ptr %i.aw, align 8, !tbaa !10
  store ptr %.0.i.i.i, ptr %i.t, align 8, !tbaa !17
  store i32 %i.m, ptr %i.i, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit: ; preds = %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.thread, %bb.d, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i
  %i.ax = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i ], [ %i.b, %bb.d ], [ %i.b, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.thread ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17
  %i.ba = sext i32 %i.ax to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  store ptr %1, ptr %i.bb, align 8, !tbaa !61
  %i.bc = add nsw i32 %i.ax, 1
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 1, ptr %i.bd, align 8, !tbaa !75
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11btRigidBody19removeConstraintRefEP17btTypedConstraint(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(564) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.j = add nsw i32 %i.b, -1                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  store ptr %i.m, ptr %i.i, align 8, !tbaa !61
  store ptr %i.g, ptr %i.l, align 8, !tbaa !61
  store i32 %i.j, ptr %i.a, align 4, !tbaa !18
  %i.n = icmp ne i32 %i.b, 1
  %i.o = zext i1 %i.n to i8
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit

_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit: ; preds = %bb.c, %bb.a, %bb.d
  %2 = phi i8 [ %i.o, %bb.d ], [ 0, %bb.a ], [ 1, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 %2, ptr %i.p, align 8, !tbaa !75
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN11btRigidBodyD2Ev(ptr noundef nonnull align 8 dereferenceable(564) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV11btRigidBody, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = load i8, ptr %i.c, align 8, !range !20
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit unwind label %bb.c

_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #18
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN11btRigidBodyD0Ev(ptr noundef nonnull align 8 dereferenceable(564) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV11btRigidBody, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = load i8, ptr %i.c, align 8, !range !20
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit.i unwind label %bb.c, !inline_history !76

_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(564) %0)
          to label %_ZN11btRigidBodyD2Ev.exit unwind label %bb.e, !inline_history !76

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(564) %0)
          to label %.body unwind label %bb.d, !inline_history !76

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #18, !inline_history !76
  unreachable

_ZN11btRigidBodyD2Ev.exit:                        ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.f, %bb.c ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.f

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

bb.f:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #18
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.a, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %1, ptr %i.b, align 8, !tbaa !77
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #15

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.btMatrix3x3, align 8         ; 12 uses
  %5 = alloca %class.btQuaternion, align 4        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load float, ptr %i.d, align 4, !tbaa !29, !noalias !78 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !29, !noalias !78 ; 4 uses
  %i.j = fneg float %i.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.k = load float, ptr %1, align 4, !tbaa !29, !noalias !81 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !29, !noalias !81 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !29, !noalias !81 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load float, ptr %i.p, align 4, !tbaa !29, !noalias !81 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.s = load float, ptr %i.r, align 4, !tbaa !29, !noalias !81 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load float, ptr %i.t, align 4, !tbaa !29, !noalias !81 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load float, ptr %i.v, align 4, !tbaa !29, !noalias !81 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.y = load float, ptr %i.x, align 4, !tbaa !29, !noalias !81 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load float, ptr %i.z, align 4, !tbaa !29, !noalias !81 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.f, align 4, !tbaa !29, !noalias !78 ; 3 uses
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ad = load <2 x float>, ptr %i.c, align 4, !tbaa !29, !noalias !78 ; 3 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.af = load <2 x float>, ptr %i.a, align 4, !tbaa !29, !noalias !78 ; 5 uses
  %i.ag = load float, ptr %i.b, align 4, !tbaa !29, !noalias !78 ; 2 uses
  %i.ah = fneg <2 x float> %i.ad
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.aj = fneg <2 x float> %i.ai
  %i.ak = shufflevector <2 x float> %i.ac, <2 x float> %i.ae, <2 x i32> <i32 0, i32 3>
  %i.al = fneg <2 x float> %i.ak
  %i.am = load <2 x float>, ptr %0, align 4, !tbaa !29, !noalias !78 ; 5 uses
  %i.an = load float, ptr %i.g, align 4, !tbaa !29, !noalias !78 ; 3 uses
  %i.ao = insertelement <2 x float> %i.af, float %i.i, i64 1 ; 2 uses
  %i.ap = fmul <2 x float> %i.ao, %i.al
  %i.aq = shufflevector <2 x float> %i.ad, <2 x float> %i.am, <2 x i32> <i32 0, i32 2>
  %i.ar = insertelement <2 x float> %i.ab, float %i.e, i64 0
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.ar, <2 x float> %i.ap) ; 2 uses
  %i.at = extractelement <2 x float> %i.as, i64 0
  %i.au = fmul float %i.an, %i.at
  %i.av = insertelement <2 x float> %i.am, float %i.e, i64 0
  %i.aw = fmul <2 x float> %i.av, %i.aj
  %i.ax = shufflevector <2 x float> %i.ao, <2 x float> %i.af, <2 x i32> <i32 3, i32 1>
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ac, <2 x float> %i.aw) ; 2 uses
  %i.az = extractelement <2 x float> %i.ay, i64 0
  %i.ba = extractelement <2 x float> %i.am, i64 0 ; 3 uses
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.az, float %i.au)
  %i.bc = shufflevector <2 x float> %i.af, <2 x float> %i.am, <2 x i32> <i32 1, i32 2>
  %i.bd = fmul <2 x float> %i.bc, %i.ah
  %i.be = shufflevector <2 x float> %i.af, <2 x float> %i.am, <2 x i32> <i32 0, i32 3>
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.ae, <2 x float> %i.bd) ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.bg, float %i.bb)
  %i.bi = fdiv float 1.000000e+00, %i.bh          ; 4 uses
  %i.bj = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bl = fmul <2 x float> %i.ay, %i.bk           ; 3 uses
  %i.bm = fneg float %i.ag
  %i.bn = fmul float %i.i, %i.bm
  %i.bo = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.e, float %i.bn)
  %i.bp = fmul float %i.bo, %i.bi                 ; 3 uses
  %i.bq = fmul <2 x float> %i.as, %i.bk           ; 3 uses
  %i.br = fmul float %i.ba, %i.j
  %i.bs = extractelement <2 x float> %i.af, i64 0 ; 2 uses
end_hunk_0
