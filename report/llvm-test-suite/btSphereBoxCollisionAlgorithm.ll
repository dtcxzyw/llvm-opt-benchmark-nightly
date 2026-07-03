inline.NumInlined: 146
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationEP17btCollisionObjectR9btVector3S3_RKS2_fS5_S5_:bb.a
  %i.df = load float, ptr %i.a, align 4, !tbaa !34
  %i.dg = load float, ptr %2, align 4, !tbaa !34  ; 3 uses
  %i.dh = load float, ptr %i.r, align 4, !tbaa !34
  %i.di = load float, ptr %i.cz, align 4, !tbaa !34 ; 3 uses
  %i.dj = fmul float %i.dh, %i.di
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.df, float %i.dg, float %i.dj)
  %i.dl = load float, ptr %i.u, align 4, !tbaa !34
  %i.dm = load float, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !34 ; 3 uses
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.dl, float %i.dm, float %i.dk)
  %i.do = load float, ptr %i.b, align 4, !tbaa !34
  %i.dp = fadd float %i.dn, %i.do
  %i.dq = load float, ptr %i.p, align 4, !tbaa !34
  %i.dr = load float, ptr %i.s, align 4, !tbaa !34
  %i.ds = fmul float %i.di, %i.dr
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dg, float %i.ds)
  %i.du = load float, ptr %i.v, align 4, !tbaa !34
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %i.du, float %i.dm, float %i.dt)
  %i.dw = load float, ptr %i.h, align 4, !tbaa !34
  %i.dx = fadd float %i.dw, %i.dv
  %i.dy = load float, ptr %i.q, align 4, !tbaa !34
  %i.dz = load float, ptr %i.t, align 4, !tbaa !34
  %i.ea = fmul float %i.di, %i.dz
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.dg, float %i.ea)
  %i.ec = load float, ptr %i.w, align 4, !tbaa !34
  %i.ed = tail call noundef float @llvm.fmuladd.f32(float %i.ec, float %i.dm, float %i.eb)
  %i.ee = load float, ptr %i.m, align 4, !tbaa !34
  %i.ef = fadd float %i.ee, %i.ed
  %.sroa.0.0.vec.insert.i72 = insertelement <2 x float> poison, float %i.dp, i64 0
  %.sroa.0.4.vec.insert.i73 = insertelement <2 x float> %.sroa.0.0.vec.insert.i72, float %i.dx, i64 1
  %.sroa.3.12.vec.insert.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ef, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i73, ptr %2, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i74, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !33
  %i.eg = load float, ptr %i.a, align 4, !tbaa !34
  %i.eh = load float, ptr %3, align 4, !tbaa !34  ; 3 uses
  %i.ei = load float, ptr %i.r, align 4, !tbaa !34
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !34 ; 3 uses
  %i.el = fmul float %i.ei, %i.ek
  %i.em = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.eh, float %i.el)
  %i.en = load float, ptr %i.u, align 4, !tbaa !34
  %i.eo = load float, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !34 ; 3 uses
  %i.ep = tail call noundef float @llvm.fmuladd.f32(float %i.en, float %i.eo, float %i.em)
  %i.eq = load float, ptr %i.b, align 4, !tbaa !34
  %i.er = fadd float %i.ep, %i.eq
  %i.es = load float, ptr %i.p, align 4, !tbaa !34
  %i.et = load float, ptr %i.s, align 4, !tbaa !34
  %i.eu = fmul float %i.ek, %i.et
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.es, float %i.eh, float %i.eu)
  %i.ew = load float, ptr %i.v, align 4, !tbaa !34
  %i.ex = tail call noundef float @llvm.fmuladd.f32(float %i.ew, float %i.eo, float %i.ev)
  %i.ey = load float, ptr %i.h, align 4, !tbaa !34
  %i.ez = fadd float %i.ey, %i.ex
  %i.fa = load float, ptr %i.q, align 4, !tbaa !34
  %i.fb = load float, ptr %i.t, align 4, !tbaa !34
  %i.fc = fmul float %i.ek, %i.fb
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.eh, float %i.fc)
  %i.fe = load float, ptr %i.w, align 4, !tbaa !34
  %i.ff = tail call noundef float @llvm.fmuladd.f32(float %i.fe, float %i.eo, float %i.fd)
  %i.fg = load float, ptr %i.m, align 4, !tbaa !34
  %i.fh = fadd float %i.fg, %i.ff
  %.sroa.0.0.vec.insert.i77 = insertelement <2 x float> poison, float %i.er, i64 0
  %.sroa.0.4.vec.insert.i78 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77, float %i.ez, i64 1
  %.sroa.3.12.vec.insert.i79 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fh, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i78, ptr %3, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i79, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !33
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.d, %bb.g, %bb.j, %bb.m, %bb.p, %.critedge46
  %.3 = phi float [ %.1.5, %.critedge46 ], [ 1.000000e+00, %bb.p ], [ 1.000000e+00, %bb.m ], [ 1.000000e+00, %bb.j ], [ 1.000000e+00, %bb.g ], [ 1.000000e+00, %bb.d ], [ 1.000000e+00, %bb.a ]
  ret float %.3
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN29btSphereBoxCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !21
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.k = shl nsw i32 %i.g, 1
  %i.l = select i1 %.not.i.i, i32 1, i32 %i.k     ; 4 uses
  %i.m = icmp slt i32 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.o, i32 noundef 16)
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !50
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %.pre.i, %bb.e ], [ %i.g, %bb.d ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ] ; 8 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56   ; 9 uses
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %i.u = ptrtoaddr ptr %i.t to i64
  %.0.i.i.i8 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 6
  %i.v = sub i64 %.0.i.i.i8, %i.u
  %diff.check = icmp ult i64 %i.v, 32
  %or.cond10 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond10, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x ptr>, ptr %i.x, align 8, !tbaa !57
  %wide.load9 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x ptr> %wide.load, ptr %i.w, align 8, !tbaa !57
  store <2 x ptr> %wide.load9, ptr %i.z, align 8, !tbaa !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.prol
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !57
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !61

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !57
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !57
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !57
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.1
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !57
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.2
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !57
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !57
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !63

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp ne ptr %i.t, null
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %3 = load i8, ptr %2, align 8, !range !21
  %4 = trunc nuw i8 %3 to i1
  %or.cond.i = select i1 %.not.i5.i.i, i1 %4, i1 false
  br i1 %or.cond.i, label %bb.f, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.old8.i = load i8, ptr %.old.i, align 8, !tbaa !64, !range !21, !noundef !22
  %.old9.i = trunc nuw i8 %.old8.i to i1
  br i1 %.old9.i, label %bb.f, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.t)
  %.pre2.pre.pre.i = load i32, ptr %i.f, align 4, !tbaa !50
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.f ], [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.as, align 8, !tbaa !64
  store ptr %.0.i.i.i, ptr %i.s, align 8, !tbaa !56
  store i32 %i.l, ptr %i.h, align 8, !tbaa !55
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
  %i.at = phi ptr [ %.pre, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  %i.au = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.g, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !56
  %i.ax = sext i32 %i.au to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  store ptr %i.at, ptr %i.ay, align 8, !tbaa !57
  %i.az = add nsw i32 %i.au, 1
  store i32 %i.az, ptr %i.f, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit, %bb.a
  ret void
}

declare void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !16, i64 16}
!11 = !{!"_ZTS29btSphereBoxCollisionAlgorithm", !12, i64 0, !16, i64 16, !17, i64 24, !16, i64 32}
!12 = !{!"_ZTS30btActivatingCollisionAlgorithm", !13, i64 0}
!13 = !{!"_ZTS20btCollisionAlgorithm", !14, i64 8}
!14 = !{!"p1 _ZTS12btDispatcher", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!"p1 _ZTS20btPersistentManifold", !15, i64 0}
!18 = !{!11, !17, i64 24}
!19 = !{!11, !16, i64 32}
!20 = !{!13, !14, i64 8}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{ptr @_ZN29btSphereBoxCollisionAlgorithmD2Ev}
!24 = !{!25, !31, i64 200}
!25 = !{!"_ZTS17btCollisionObject", !26, i64 8, !26, i64 72, !28, i64 136, !28, i64 152, !28, i64 168, !16, i64 184, !29, i64 188, !30, i64 192, !31, i64 200, !31, i64 208, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !29, i64 232, !29, i64 236, !29, i64 240, !15, i64 248, !5, i64 256, !29, i64 260, !29, i64 264, !29, i64 268, !16, i64 272, !6, i64 273}
!26 = !{!"_ZTS11btTransform", !27, i64 0, !28, i64 48}
!27 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!28 = !{!"_ZTS9btVector3", !6, i64 0}
!29 = !{!"float", !6, i64 0}
!30 = !{!"p1 _ZTS17btBroadphaseProxy", !15, i64 0}
!31 = !{!"p1 _ZTS16btCollisionShape", !15, i64 0}
!32 = !{i64 0, i64 16, !33}
!33 = !{!6, !6, i64 0}
!34 = !{!29, !29, i64 0}
!35 = !{!36, !17, i64 8}
!36 = !{!"_ZTS16btManifoldResult", !37, i64 0, !17, i64 8, !26, i64 16, !26, i64 80, !38, i64 144, !38, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172}
!37 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface6ResultE"}
!38 = !{!"p1 _ZTS17btCollisionObject", !15, i64 0}
!39 = !{!40, !5, i64 728}
!40 = !{!"_ZTS20btPersistentManifold", !41, i64 0, !6, i64 8, !15, i64 712, !15, i64 720, !5, i64 728, !29, i64 732, !29, i64 736, !5, i64 740}
!41 = !{!"_ZTS13btTypedObject", !5, i64 0}
!42 = !{!40, !15, i64 712}
!43 = !{!36, !38, i64 144}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!46 = distinct !{!46, !"_ZNK11btMatrix3x39transposeEv"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!49 = distinct !{!49, !"_ZNK11btMatrix3x39transposeEv"}
!50 = !{!51, !5, i64 4}
!51 = !{!"_ZTS20btAlignedObjectArrayIP20btPersistentManifoldE", !52, i64 0, !5, i64 4, !5, i64 8, !53, i64 16, !16, i64 24}
!52 = !{!"_ZTS18btAlignedAllocatorIP20btPersistentManifoldLj16EE"}
!53 = !{!"p2 _ZTS20btPersistentManifold", !54, i64 0}
!54 = !{!"any p2 pointer", !15, i64 0}
!55 = !{!51, !5, i64 8}
!56 = !{!51, !53, i64 16}
!57 = !{!17, !17, i64 0}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = distinct !{!63, !59}
!64 = !{!51, !16, i64 24}
end_hunk_0
