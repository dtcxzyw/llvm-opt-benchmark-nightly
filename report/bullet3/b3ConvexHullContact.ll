Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3ConvexHullContact?download=true
inline.NumInlined: 2655
inline.NumDeleted: 497
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZNK13b3OpenCLArrayI10b3Contact4E10copyToHostER20b3AlignedObjectArrayIS0_Eb:bb.a
  %wide.trip.count.i.i.i = zext nneg i32 %i.n to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.q = icmp eq i32 %i.n, 1
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.r = getelementptr inbounds nuw [112 x i8], ptr %i.l, i64 %indvars.iv.i.i.i
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !148
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %i.s, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.r, ptr noundef nonnull align 16 dereferenceable(112) %i.t, i64 112, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.i
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !148
  %i.w = getelementptr inbounds nuw [112 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.u, ptr noundef nonnull align 16 dereferenceable(112) %i.w, i64 112, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !11

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI10b3Contact4E8allocateEi.exit.i.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.78, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.79)
  store i32 0, ptr %i.d, align 4, !tbaa !153
  br label %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i32 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %i.l, i64 %indvars.iv.i.i.i.epil.init
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !148
  %i.z = getelementptr inbounds nuw [112 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.x, ptr noundef nonnull align 16 dereferenceable(112) %i.z, i64 112, i1 false)
  br label %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.l, %.split.i.i ], [ %i.l, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.l, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.c, %.split.i.i ], [ %i.c, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.c, %.epil.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !148 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI10b3Contact4E10deallocateEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !155, !range !91, !noundef !92
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %_ZN20b3AlignedObjectArrayI10b3Contact4E10deallocateEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ab)
  br label %_ZN20b3AlignedObjectArrayI10b3Contact4E10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI10b3Contact4E10deallocateEv.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.af, align 8, !tbaa !155
  store ptr %.0.i12.i.i, ptr %i.aa, align 8, !tbaa !148
  store i32 %.0.i.i, ptr %i.g, align 8, !tbaa !154
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI10b3Contact4E10deallocateEv.exit.i.i, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ah = sext i32 %i.e to i64                    ; 4 uses
  %sext3 = shl i64 %i.b, 32
  %wide.trip.count.i = ashr exact i64 %sext3, 32  ; 2 uses
  %i.ai = sub i64 %i.b, %i.ah
  %xtraiter10 = and i64 %i.ai, 3                  ; 2 uses
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.ah, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !148
  %i.ak = getelementptr inbounds [112 x i8], ptr %i.aj, i64 %indvars.iv.i.prol
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ak, i8 0, i64 112, i1 false)
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter10
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !440

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.ah, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.al = sub nsw i64 %i.ah, %wide.trip.count.i
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %_ZN20b3AlignedObjectArrayI10b3Contact4E6resizeEiRKS0_.exit.loopexit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 5 uses
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !148
  %i.ao = getelementptr inbounds [112 x i8], ptr %i.an, i64 %indvars.iv.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ao, i8 0, i64 112, i1 false)
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !148
  %i.aq = getelementptr [112 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ar, i8 0, i64 112, i1 false)
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !148
  %i.at = getelementptr [112 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = getelementptr i8, ptr %i.at, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.au, i8 0, i64 112, i1 false)
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !148
  %i.aw = getelementptr [112 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ax, i8 0, i64 112, i1 false)
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN20b3AlignedObjectArrayI10b3Contact4E6resizeEiRKS0_.exit.loopexit, label %.lr.ph.i.new, !llvm.loop !16

_ZN20b3AlignedObjectArrayI10b3Contact4E6resizeEiRKS0_.exit.loopexit: ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !259
  br label %_ZN20b3AlignedObjectArrayI10b3Contact4E6resizeEiRKS0_.exit

_ZN20b3AlignedObjectArrayI10b3Contact4E6resizeEiRKS0_.exit: ; preds = %_ZN20b3AlignedObjectArrayI10b3Contact4E6resizeEiRKS0_.exit.loopexit, %bb.a
  %i.ay = phi i64 [ %.pre, %_ZN20b3AlignedObjectArrayI10b3Contact4E6resizeEiRKS0_.exit.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !153
  %.not = icmp eq i64 %i.ay, 0
  br i1 %.not, label %_ZNK13b3OpenCLArrayI10b3Contact4E17copyToHostPointerEPS0_mmb.exit, label %bb.g

bb.g:                                             ; preds = %_ZN20b3AlignedObjectArrayI10b3Contact4E6resizeEiRKS0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !256
  %.not.i = icmp ugt i64 %i.ay, %i.ba
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !148
  %i.bd = load ptr, ptr @__clewEnqueueReadBuffer, align 8, !tbaa !95
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !260
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !204
  %i.bi = mul i64 %i.ay, 112
  %i.bj = tail call i32 %i.bd(ptr noundef %i.bf, ptr noundef %i.bh, i32 noundef 0, i64 noundef 0, i64 noundef %i.bi, ptr noundef nonnull %i.bc, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !441 ; 0 uses
  br i1 %2, label %bb.i, label %_ZNK13b3OpenCLArrayI10b3Contact4E17copyToHostPointerEPS0_mmb.exit

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr @__clewFinish, align 8, !tbaa !95
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !260
  %i.bm = tail call i32 %i.bk(ptr noundef %i.bl), !inline_history !441 ; 0 uses
  br label %_ZNK13b3OpenCLArrayI10b3Contact4E17copyToHostPointerEPS0_mmb.exit

bb.j:                                             ; preds = %bb.g
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.75, i32 noundef 285)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.80)
  br label %_ZNK13b3OpenCLArrayI10b3Contact4E17copyToHostPointerEPS0_mmb.exit

_ZNK13b3OpenCLArrayI10b3Contact4E17copyToHostPointerEPS0_mmb.exit: ; preds = %bb.j, %bb.i, %bb.h, %_ZN20b3AlignedObjectArrayI10b3Contact4E6resizeEiRKS0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z16b3MprPenetrationiiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_PiPfSB_SB_(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #3 comdat {
bb.a:
  %12 = alloca %class.b3Vector3, align 16         ; 8 uses
  %13 = alloca %struct._b3MprSupport_t, align 16  ; 9 uses
  %14 = alloca %class.b3Vector3, align 16         ; 4 uses
  %15 = alloca %class.b3Vector3, align 16         ; 8 uses
  %16 = alloca %struct._b3MprSupport_t, align 16  ; 10 uses
  %17 = alloca %class.b3Vector3, align 16         ; 7 uses
  %18 = alloca %struct._b3MprSupport_t, align 16  ; 4 uses
  %19 = alloca %class.b3Vector3, align 16         ; 7 uses
  %20 = alloca %class.b3Vector3, align 16         ; 7 uses
  %21 = alloca %struct._b3MprSimplex_t, align 16  ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %8, i64 %i.a ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !38
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [80 x i8], ptr %3, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !40
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds [80 x i8], ptr %3, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !40
  %i.i = load <2 x float>, ptr %i.e, align 16, !tbaa !37
  %i.j = load <2 x float>, ptr %i.h, align 16, !tbaa !37
  %i.k = fsub <2 x float> %i.i, %i.j              ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 2 uses
  %i.o = load float, ptr %i.n, align 8, !tbaa !37
  %i.p = fsub float %i.m, %i.o                    ; 3 uses
  %.sroa.3.12.vec.insert.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.p, i64 0 ; 4 uses
  store <2 x float> %i.k, ptr %21, align 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %21, i64 192 ; 4 uses
  store i32 0, ptr %i.q, align 16, !tbaa !446
  %i.r = extractelement <2 x float> %i.k, i64 0
  %i.s = tail call noundef float @llvm.fabs.f32(float %i.r) ; 3 uses
  %i.t = fcmp uge float %i.s, f0x34000000
  %i.u = fmul float %i.s, f0x34000000
  %i.v = fcmp uge float %i.s, %i.u
  %or.cond176.i = and i1 %i.t, %i.v
  br i1 %or.cond176.i, label %_Z11b3MprVec3EqPK9b3Vector3S1_.exit.thread.i, label %_Z7b3MprEqff.exit.thread.i.i

_Z7b3MprEqff.exit.thread.i.i:                     ; preds = %bb.a
  %i.w = extractelement <2 x float> %i.k, i64 1
  %i.x = tail call noundef float @llvm.fabs.f32(float %i.w) ; 3 uses
  %i.y = fcmp uge float %i.x, f0x34000000
  %i.z = fmul float %i.x, f0x34000000
  %i.aa = fcmp uge float %i.x, %i.z
  %or.cond178.i = and i1 %i.y, %i.aa
  br i1 %or.cond178.i, label %_Z11b3MprVec3EqPK9b3Vector3S1_.exit.thread.i, label %_Z7b3MprEqff.exit9.thread.i.i

_Z7b3MprEqff.exit9.thread.i.i:                    ; preds = %_Z7b3MprEqff.exit.thread.i.i
  %i.ab = tail call noundef float @llvm.fabs.f32(float %i.p) ; 3 uses
  %i.ac = fcmp uge float %i.ab, f0x34000000
  %i.ad = fmul float %i.ab, f0x34000000
  %i.ae = fcmp uge float %i.ab, %i.ad
  %or.cond184.i = and i1 %i.ac, %i.ae
  br i1 %or.cond184.i, label %_Z11b3MprVec3EqPK9b3Vector3S1_.exit.thread.i, label %_Z11b3MprVec3EqPK9b3Vector3S1_.exit.thread164.i

_Z11b3MprVec3EqPK9b3Vector3S1_.exit.thread164.i:  ; preds = %_Z7b3MprEqff.exit9.thread.i.i
  %i.af = fadd <2 x float> %i.k, <float f0x35A00000, float 0.000000e+00> ; 2 uses
  store <2 x float> %i.af, ptr %21, align 16, !tbaa !37
  %i.ag = fadd float %i.p, 0.000000e+00
  store float %i.ag, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !37
  %.sroa.49.0.copyload.pre.i = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !37
  br label %_Z11b3MprVec3EqPK9b3Vector3S1_.exit.thread.i

_Z11b3MprVec3EqPK9b3Vector3S1_.exit.thread.i:     ; preds = %_Z11b3MprVec3EqPK9b3Vector3S1_.exit.thread164.i, %_Z7b3MprEqff.exit9.thread.i.i, %_Z7b3MprEqff.exit.thread.i.i, %bb.a
  %.sroa.49.0.copyload.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i.i, %_Z7b3MprEqff.exit9.thread.i.i ], [ %.sroa.3.12.vec.insert.i.i.i.i, %_Z7b3MprEqff.exit.thread.i.i ], [ %.sroa.3.12.vec.insert.i.i.i.i, %bb.a ], [ %.sroa.49.0.copyload.pre.i, %_Z11b3MprVec3EqPK9b3Vector3S1_.exit.thread164.i ] ; 2 uses
  %.sroa.042.0.copyload.i = phi <2 x float> [ %i.k, %_Z7b3MprEqff.exit9.thread.i.i ], [ %i.k, %_Z7b3MprEqff.exit.thread.i.i ], [ %i.k, %bb.a ], [ %i.af, %_Z11b3MprVec3EqPK9b3Vector3S1_.exit.thread164.i ] ; 4 uses
  %.sroa.042.0.vec.extract.i = extractelement <2 x float> %.sroa.042.0.copyload.i, i64 0 ; 2 uses
  %.sroa.49.8.vec.extract.i = extractelement <2 x float> %.sroa.49.0.copyload.i, i64 0 ; 3 uses
  %i.ah = fneg float %.sroa.49.8.vec.extract.i
  %foldExtExtBinop = fmul <2 x float> %.sroa.042.0.copyload.i, %.sroa.042.0.copyload.i
  %i.ai = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.aj = tail call float @llvm.fmuladd.f32(float %.sroa.042.0.vec.extract.i, float %.sroa.042.0.vec.extract.i, float %i.ai)
  %i.ak = tail call float @llvm.fmuladd.f32(float %.sroa.49.8.vec.extract.i, float %.sroa.49.8.vec.extract.i, float %i.aj)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.ak)
  %i.al = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.am = fneg <2 x float> %.sroa.042.0.copyload.i
  %i.an = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ao, %i.am           ; 4 uses
  %i.aq = fmul float %i.al, %i.ah                 ; 3 uses
  %.sroa.49.8.vec.insert130.i = insertelement <2 x float> %.sroa.49.0.copyload.i, float %i.aq, i64 0
  %i.ar = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store <2 x float> %i.ap, ptr %20, align 16
  %.sroa.49.0..sroa_idx120.i = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store <2 x float> %.sroa.49.8.vec.insert130.i, ptr %.sroa.49.0..sroa_idx120.i, align 8, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %21, i64 64 ; 5 uses
  call fastcc void @_ZL18b3MprConvexSupportiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_SA_SB_i(i32 noundef %1, ptr noundef nonnull readonly %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr noundef readonly %6, ptr noundef %20, ptr noundef nonnull %i.as)
  %i.at = extractelement <2 x float> %i.ap, i64 0
  %i.au = fneg <2 x float> %i.ap
  %i.av = fneg float %i.aq
  %.sroa.3.12.vec.insert.i.i.i98.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.av, i64 0
  store <2 x float> %i.au, ptr %20, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i98.i, ptr %.sroa.49.0..sroa_idx120.i, align 8, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %21, i64 80 ; 3 uses
  call fastcc void @_ZL18b3MprConvexSupportiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_SA_SB_i(i32 noundef %2, ptr noundef nonnull readonly %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr noundef readonly %6, ptr noundef %20, ptr noundef nonnull %i.aw)
  %i.ax = load float, ptr %i.aw, align 16, !tbaa !37 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %21, i64 68
  %i.az = getelementptr inbounds nuw i8, ptr %21, i64 84
  %i.ba = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %21, i64 88
  %i.bc = load <2 x float>, ptr %i.ay, align 4, !tbaa !37
  %i.bd = load <3 x float>, ptr %i.as, align 16, !tbaa !37
  %i.be = shufflevector <3 x float> %i.bd, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.bf = load <2 x float>, ptr %i.az, align 4, !tbaa !37 ; 6 uses
  %i.bg = insertelement <2 x float> %i.bf, float %i.ax, i64 0
  %i.bh = fsub <2 x float> %i.be, %i.bg           ; 4 uses
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bj = fsub <2 x float> %i.bc, %i.bf           ; 4 uses
  %i.bk = shufflevector <2 x float> %i.bh, <2 x float> %i.bj, <2 x i32> <i32 0, i32 2>
  %i.bl = insertelement <2 x float> %i.bi, float 0.000000e+00, i64 1
  store <2 x float> %i.bk, ptr %i.ar, align 16
  %.sroa.4.0..sroa_idx.i99.i = getelementptr inbounds nuw i8, ptr %21, i64 56
  store <2 x float> %i.bl, ptr %.sroa.4.0..sroa_idx.i99.i, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.bm = getelementptr inbounds nuw i8, ptr %21, i64 52 ; 6 uses
  %i.bn = extractelement <2 x float> %i.bj, i64 0 ; 2 uses
  %shift = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop147 = fmul <2 x float> %shift, %i.bj
  %i.bo = extractelement <2 x float> %foldExtExtBinop147, i64 0
  %i.bp = extractelement <2 x float> %i.bh, i64 0 ; 3 uses
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.at, float %i.bo)
  %i.br = extractelement <2 x float> %i.bh, i64 1 ; 2 uses
  %i.bs = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %i.aq, float %i.bq) ; 2 uses
  %i.bt = tail call noundef float @llvm.fabs.f32(float %i.bs)
  %i.bu = fcmp olt float %i.bt, f0x34000000
  %i.bv = fcmp olt float %i.bs, 0.000000e+00
  %or.cond.i = or i1 %i.bv, %i.bu
  br i1 %or.cond.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_Z11b3MprVec3EqPK9b3Vector3S1_.exit.thread.i
  %i.bw = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 3 uses
  %i.bx = fneg <2 x float> %i.bj
  %i.by = load float, ptr %21, align 16, !tbaa !37 ; 2 uses
  %i.bz = load <2 x float>, ptr %i.bw, align 4, !tbaa !37 ; 3 uses
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cb = insertelement <2 x float> %i.ca, float %i.by, i64 1
  %i.cc = fmul <2 x float> %i.cb, %i.bx
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.bi, <2 x float> %i.cc) ; 4 uses
  %i.ce = fneg float %i.bp
  %i.cf = extractelement <2 x float> %i.bz, i64 0
  %i.cg = fmul float %i.cf, %i.ce
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.by, float %i.bn, float %i.cg) ; 3 uses
  %foldExtExtBinop149 = fmul <2 x float> %i.cd, %i.cd
  %i.ci = extractelement <2 x float> %foldExtExtBinop149, i64 1
  %i.cj = extractelement <2 x float> %i.cd, i64 0 ; 2 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.ci)
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.ck) ; 2 uses
  %i.cm = tail call noundef float @llvm.fabs.f32(float %i.cl)
  %i.cn = fcmp uge float %i.cm, f0x34000000
  br i1 %i.cn, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.co = tail call noundef float @llvm.fabs.f32(float %i.bp) ; 3 uses
  %i.cp = fcmp uge float %i.co, f0x34000000
  %i.cq = fmul float %i.co, f0x34000000
  %i.cr = fcmp uge float %i.co, %i.cq
  %or.cond180.i = and i1 %i.cp, %i.cr
  br i1 %or.cond180.i, label %_ZL16b3DiscoverPortaliiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_PiP15_b3MprSimplex_t.exit, label %_Z7b3MprEqff.exit.thread.i103.i

_Z7b3MprEqff.exit.thread.i103.i:                  ; preds = %bb.c
  %i.cs = tail call noundef float @llvm.fabs.f32(float %i.bn) ; 3 uses
  %i.ct = fcmp uge float %i.cs, f0x34000000
  %i.cu = fmul float %i.cs, f0x34000000
  %i.cv = fcmp uge float %i.cs, %i.cu
  %or.cond182.i = and i1 %i.ct, %i.cv
  br i1 %or.cond182.i, label %_ZL16b3DiscoverPortaliiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_PiP15_b3MprSimplex_t.exit, label %_Z7b3MprEqff.exit9.thread.i106.i

_Z7b3MprEqff.exit9.thread.i106.i:                 ; preds = %_Z7b3MprEqff.exit.thread.i103.i
  %i.cw = tail call noundef float @llvm.fabs.f32(float %i.br) ; 3 uses
  %i.cx = fcmp uge float %i.cw, f0x34000000
  %i.cy = fmul float %i.cw, f0x34000000
  %i.cz = fcmp uge float %i.cw, %i.cy
  %or.cond186.i = and i1 %i.cx, %i.cz
  br i1 %or.cond186.i, label %_ZL16b3DiscoverPortaliiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_PiP15_b3MprSimplex_t.exit, label %bb.y

bb.d:                                             ; preds = %bb.b
  %sqrt.i111.i = tail call float @llvm.sqrt.f32(float %i.cl)
  %i.da = fdiv float 1.000000e+00, %sqrt.i111.i   ; 2 uses
  %i.db = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x float> %i.cd, %i.dc           ; 4 uses
  %i.de = fmul float %i.ch, %i.da                 ; 3 uses
  %.sroa.49.8.vec.insert140.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.de, i64 0
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 96 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store <2 x float> %i.dd, ptr %19, align 16
  %.sroa.49.0..sroa_idx122.i = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store <2 x float> %.sroa.49.8.vec.insert140.i, ptr %.sroa.49.0..sroa_idx122.i, align 8, !tbaa !37
  %i.dg = getelementptr inbounds nuw i8, ptr %21, i64 112 ; 3 uses
  call fastcc void @_ZL18b3MprConvexSupportiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_SA_SB_i(i32 noundef %1, ptr noundef nonnull readonly %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr noundef readonly %6, ptr noundef %19, ptr noundef nonnull %i.dg)
  %i.dh = extractelement <2 x float> %i.dd, i64 0
  %i.di = fneg <2 x float> %i.dd
  %i.dj = fneg float %i.de
  %.sroa.3.12.vec.insert.i.i.i114.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dj, i64 0
  store <2 x float> %i.di, ptr %19, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i114.i, ptr %.sroa.49.0..sroa_idx122.i, align 8, !tbaa !37
  %i.dk = getelementptr inbounds nuw i8, ptr %21, i64 128 ; 3 uses
  call fastcc void @_ZL18b3MprConvexSupportiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_SA_SB_i(i32 noundef %2, ptr noundef nonnull readonly %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr noundef readonly %6, ptr noundef %19, ptr noundef nonnull %i.dk)
  %i.dl = getelementptr inbounds nuw i8, ptr %21, i64 116
  %i.dm = getelementptr inbounds nuw i8, ptr %21, i64 132
  %i.dn = getelementptr inbounds nuw i8, ptr %21, i64 120
  %i.do = getelementptr inbounds nuw i8, ptr %21, i64 136
  %i.dp = load <2 x float>, ptr %i.dl, align 4, !tbaa !37
  %i.dq = load <3 x float>, ptr %i.dg, align 16, !tbaa !37
  %i.dr = shufflevector <3 x float> %i.dq, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ds = load <2 x float>, ptr %i.dm, align 4, !tbaa !37
  %i.dt = load <3 x float>, ptr %i.dk, align 16, !tbaa !37
  %i.du = shufflevector <3 x float> %i.dt, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.dv = fsub <2 x float> %i.dr, %i.du           ; 5 uses
  %i.dw = fsub <2 x float> %i.dp, %i.ds           ; 3 uses
  %i.dx = shufflevector <2 x float> %i.dv, <2 x float> %i.dw, <2 x i32> <i32 0, i32 2>
  %i.dy = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.dv, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.dx, ptr %i.df, align 16
  %.sroa.4.0..sroa_idx.i119.i = getelementptr inbounds nuw i8, ptr %21, i64 104
  store <2 x float> %i.dy, ptr %.sroa.4.0..sroa_idx.i119.i, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.dz = getelementptr inbounds nuw i8, ptr %21, i64 100 ; 5 uses
  %shift151 = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop152 = fmul <2 x float> %shift151, %i.dw
  %i.ea = extractelement <2 x float> %foldExtExtBinop152, i64 0
  %i.eb = extractelement <2 x float> %i.dv, i64 0
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.eb, float %i.dh, float %i.ea)
  %i.ed = extractelement <2 x float> %i.dv, i64 1
  %i.ee = tail call noundef float @llvm.fmuladd.f32(float %i.ed, float %i.de, float %i.ec) ; 2 uses
  %i.ef = tail call noundef float @llvm.fabs.f32(float %i.ee)
  %i.eg = fcmp olt float %i.ef, f0x34000000
  %i.eh = fcmp olt float %i.ee, 0.000000e+00
  %or.cond3.i = or i1 %i.eh, %i.eg
  br i1 %or.cond3.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.q, align 16, !tbaa !446
  %i.ei = load float, ptr %21, align 16, !tbaa !37 ; 2 uses
  %i.ej = load <2 x float>, ptr %i.bm, align 4, !tbaa !37
  %i.ek = load <3 x float>, ptr %i.ar, align 16, !tbaa !37
  %i.el = load <2 x float>, ptr %i.bw, align 4, !tbaa !37 ; 5 uses
  %i.em = fsub <2 x float> %i.ej, %i.el           ; 2 uses
  %i.en = insertelement <2 x float> %i.el, float %i.ei, i64 0 ; 2 uses
  %i.eo = shufflevector <3 x float> %i.ek, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ep = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eq = fsub <2 x float> %i.eo, %i.ep           ; 2 uses
  %i.er = fsub <2 x float> %i.dv, %i.en           ; 2 uses
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.et = fsub <2 x float> %i.dw, %i.el           ; 2 uses
  %i.eu = fneg <2 x float> %i.et
  %i.ev = fmul <2 x float> %i.eq, %i.eu
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.es, <2 x float> %i.ev) ; 4 uses
  %i.ex = extractelement <2 x float> %i.er, i64 0
  %i.ey = fneg float %i.ex
  %i.ez = extractelement <2 x float> %i.em, i64 0
  %i.fa = fmul float %i.ez, %i.ey
  %i.fb = extractelement <2 x float> %i.eq, i64 1
  %i.fc = extractelement <2 x float> %i.et, i64 0
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fc, float %i.fa) ; 3 uses
  %foldExtExtBinop154 = fmul <2 x float> %i.ew, %i.ew
  %i.fe = extractelement <2 x float> %foldExtExtBinop154, i64 1
  %i.ff = extractelement <2 x float> %i.ew, i64 0 ; 2 uses
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.ff, float %i.fe)
  %i.fh = tail call noundef float @llvm.fmuladd.f32(float %i.fd, float %i.fd, float %i.fg)
  %sqrt.i132.i = tail call float @llvm.sqrt.f32(float %i.fh)
  %i.fi = fdiv float 1.000000e+00, %sqrt.i132.i   ; 2 uses
  %i.fj = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x float> %i.ew, %i.fk           ; 4 uses
  %i.fm = fmul float %i.fd, %i.fi                 ; 3 uses
  %.sroa.49.8.vec.insert148.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fm, i64 0 ; 2 uses
  %shift156 = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop157 = fmul <2 x float> %i.el, %shift156
  %i.fn = extractelement <2 x float> %foldExtExtBinop157, i64 0
  %i.fo = extractelement <2 x float> %i.fl, i64 0
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.ei, float %i.fn)
  %i.fq = extractelement <2 x float> %i.el, i64 1
  %i.fr = tail call noundef float @llvm.fmuladd.f32(float %i.fm, float %i.fq, float %i.fp)
  %i.fs = fcmp ogt float %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.f, label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %18, ptr noundef nonnull align 16 dereferenceable(48) %i.ar, i64 48, i1 false), !tbaa.struct !447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ar, ptr noundef nonnull align 16 dereferenceable(48) %i.df, i64 48, i1 false), !tbaa.struct !447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.df, ptr noundef nonnull align 16 dereferenceable(48) %18, i64 48, i1 false), !tbaa.struct !447
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.ft = fneg <2 x float> %i.fl
  %i.fu = fneg float %i.fm
  %.sroa.49.8.vec.insert154.i = insertelement <2 x float> %.sroa.49.8.vec.insert148.i, float %i.fu, i64 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.e
  %.sroa.49.0.i = phi <2 x float> [ %.sroa.49.8.vec.insert154.i, %bb.f ], [ %.sroa.49.8.vec.insert148.i, %bb.e ]
  %.sroa.042.0.i = phi <2 x float> [ %i.ft, %bb.f ], [ %i.fl, %bb.e ]
  %i.fv = getelementptr inbounds nuw i8, ptr %21, i64 144 ; 9 uses
  %.sroa.49.0..sroa_idx124.i = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %21, i64 160 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %21, i64 176 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %21, i64 168 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %21, i64 184 ; 2 uses
  %.sroa.4.0..sroa_idx.i140.i = getelementptr inbounds nuw i8, ptr %21, i64 152
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.042.1192.i = phi <2 x float> [ %.sroa.042.0.i, %.lr.ph.i ], [ %i.jl, %bb.k ] ; 4 uses
  %.sroa.49.1191.i = phi <2 x float> [ %.sroa.49.0.i, %.lr.ph.i ], [ %.sroa.49.8.vec.insert162.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store <2 x float> %.sroa.042.1192.i, ptr %17, align 16
  store <2 x float> %.sroa.49.1191.i, ptr %.sroa.49.0..sroa_idx124.i, align 8, !tbaa !37
  call fastcc void @_ZL18b3MprConvexSupportiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_SA_SB_i(i32 noundef %1, ptr noundef nonnull readonly %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr noundef readonly %6, ptr noundef %17, ptr noundef nonnull %i.fw)
  %.sroa.042.0.vec.extract73.i = extractelement <2 x float> %.sroa.042.1192.i, i64 0
  %i.ga = fneg <2 x float> %.sroa.042.1192.i
  %.sroa.49.8.vec.extract156.i = extractelement <2 x float> %.sroa.49.1191.i, i64 0 ; 2 uses
  %i.gb = fneg float %.sroa.49.8.vec.extract156.i
  %.sroa.3.12.vec.insert.i.i.i135.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gb, i64 0
  store <2 x float> %i.ga, ptr %17, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i135.i, ptr %.sroa.49.0..sroa_idx124.i, align 8, !tbaa !37
  call fastcc void @_ZL18b3MprConvexSupportiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_SA_SB_i(i32 noundef %2, ptr noundef nonnull readonly %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr noundef readonly %6, ptr noundef %17, ptr noundef nonnull %i.fx)
  %i.gc = load <2 x float>, ptr %i.fw, align 16, !tbaa !37
  %i.gd = load <2 x float>, ptr %i.fx, align 16, !tbaa !37
  %i.ge = fsub <2 x float> %i.gc, %i.gd           ; 4 uses
  %i.gf = load float, ptr %i.fy, align 8, !tbaa !37
  %i.gg = load float, ptr %i.fz, align 8, !tbaa !37
  %i.gh = fsub float %i.gf, %i.gg                 ; 6 uses
  %.sroa.3.12.vec.insert.i.i24.i139.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gh, i64 0
  store <2 x float> %i.ge, ptr %i.fv, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i24.i139.i, ptr %.sroa.4.0..sroa_idx.i140.i, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.gi = extractelement <2 x float> %i.ge, i64 1 ; 4 uses
  %foldExtExtBinop159 = fmul <2 x float> %.sroa.042.1192.i, %i.ge
  %i.gj = extractelement <2 x float> %foldExtExtBinop159, i64 1
  %i.gk = extractelement <2 x float> %i.ge, i64 0 ; 5 uses
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.gk, float %.sroa.042.0.vec.extract73.i, float %i.gj)
  %i.gm = tail call noundef float @llvm.fmuladd.f32(float %i.gh, float %.sroa.49.8.vec.extract156.i, float %i.gl) ; 2 uses
  %i.gn = tail call noundef float @llvm.fabs.f32(float %i.gm)
  %i.go = fcmp olt float %i.gn, f0x34000000
  %i.gp = fcmp olt float %i.gm, 0.000000e+00
  %or.cond5.i = or i1 %i.gp, %i.go
  br i1 %or.cond5.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gq = fneg float %i.gi
  %i.gr = load float, ptr %i.ar, align 16, !tbaa !37 ; 3 uses
  %i.gs = fneg float %i.gh
  %i.gt = fmul float %i.gr, %i.gs
  %i.gu = fneg float %i.gk
  %i.gv = load float, ptr %21, align 16, !tbaa !37 ; 7 uses
  %i.gw = load <2 x float>, ptr %i.bm, align 4, !tbaa !37 ; 3 uses
  %i.gx = extractelement <2 x float> %i.gw, i64 1 ; 2 uses
  %i.gy = fmul float %i.gx, %i.gq
  %i.gz = extractelement <2 x float> %i.gw, i64 0 ; 2 uses
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.gh, float %i.gy)
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.gk, float %i.gt)
  %i.hc = fmul float %i.gz, %i.gu
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.gr, float %i.gi, float %i.hc)
  %i.he = load <2 x float>, ptr %i.bw, align 4, !tbaa !37 ; 5 uses
  %i.hf = extractelement <2 x float> %i.he, i64 0 ; 5 uses
  %i.hg = fmul float %i.hb, %i.hf
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.gv, float %i.hg)
  %i.hi = extractelement <2 x float> %i.he, i64 1 ; 5 uses
  %i.hj = tail call noundef float @llvm.fmuladd.f32(float %i.hd, float %i.hi, float %i.hh) ; 2 uses
  %i.hk = fcmp olt float %i.hj, 0.000000e+00
  %i.hl = tail call float @llvm.fabs.f32(float %i.hj)
  %i.hm = fcmp uge float %i.hl, f0x34000000
  %or.cond188.i = and i1 %i.hk, %i.hm
  br i1 %or.cond188.i, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.df, ptr noundef nonnull align 16 dereferenceable(48) %i.fv, i64 48, i1 false), !tbaa.struct !447
  %i.hn = load <2 x float>, ptr %i.dz, align 4, !tbaa !37
  %.pre199.i = load float, ptr %i.df, align 16, !tbaa !37
  br label %bb.k

.critedge.i:                                      ; preds = %bb.h
  %i.ho = load <2 x float>, ptr %i.dz, align 4, !tbaa !37 ; 3 uses
  %i.hp = extractelement <2 x float> %i.ho, i64 0 ; 2 uses
  %i.hq = fneg float %i.hp
  %i.hr = fmul float %i.gh, %i.hq
  %i.hs = extractelement <2 x float> %i.ho, i64 1 ; 2 uses
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.hs, float %i.hr)
  %i.hu = load float, ptr %i.df, align 16, !tbaa !37 ; 3 uses
  %i.hv = fneg float %i.hs
  %i.hw = fmul float %i.gk, %i.hv
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.gh, float %i.hu, float %i.hw)
  %i.hy = fneg float %i.hu
  %i.hz = fmul float %i.gi, %i.hy
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.hp, float %i.hz)
  %i.ib = fmul float %i.hf, %i.hx
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.gv, float %i.ib)
  %i.id = tail call noundef float @llvm.fmuladd.f32(float %i.ia, float %i.hi, float %i.ic) ; 2 uses
  %i.ie = fcmp olt float %i.id, 0.000000e+00
  %i.if = tail call float @llvm.fabs.f32(float %i.id)
  %i.ig = fcmp uge float %i.if, f0x34000000
  %or.cond190.i = and i1 %i.ie, %i.ig
  br i1 %or.cond190.i, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %.critedge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ar, ptr noundef nonnull align 16 dereferenceable(48) %i.fv, i64 48, i1 false), !tbaa.struct !447
  %i.ih = load <2 x float>, ptr %i.bm, align 4, !tbaa !37
  %.pre.i = load float, ptr %i.ar, align 16, !tbaa !37
  br label %bb.k

.thread.i:                                        ; preds = %.critedge.i
  store i32 3, ptr %i.q, align 16, !tbaa !446
  br label %.loopexit76

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ii = phi float [ %i.hu, %bb.j ], [ %.pre199.i, %bb.i ]
  %i.ij = phi float [ %.pre.i, %bb.j ], [ %i.gr, %bb.i ]
  %i.ik = phi <2 x float> [ %i.ih, %bb.j ], [ %i.gw, %bb.i ]
  %i.il = phi <2 x float> [ %i.ho, %bb.j ], [ %i.hn, %bb.i ] ; 2 uses
  %i.im = fsub float %i.ij, %i.gv                 ; 2 uses
  %i.in = fsub <2 x float> %i.ik, %i.he           ; 3 uses
  %i.io = insertelement <2 x float> %i.il, float %i.ii, i64 0
  %i.ip = insertelement <2 x float> %i.he, float %i.gv, i64 0
  %i.iq = fsub <2 x float> %i.io, %i.ip           ; 2 uses
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.is = fsub <2 x float> %i.il, %i.he           ; 2 uses
  %i.it = extractelement <2 x float> %i.iq, i64 0
  %i.iu = fneg float %i.it
  %i.iv = extractelement <2 x float> %i.in, i64 0
  %i.iw = fmul float %i.iv, %i.iu
  %i.ix = extractelement <2 x float> %i.is, i64 0
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.im, float %i.ix, float %i.iw) ; 3 uses
  %i.iz = fneg <2 x float> %i.is
  %i.ja = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jb = insertelement <2 x float> %i.ja, float %i.im, i64 1
  %i.jc = fmul <2 x float> %i.jb, %i.iz
  %i.jd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.in, <2 x float> %i.ir, <2 x float> %i.jc) ; 4 uses
  %foldExtExtBinop161 = fmul <2 x float> %i.jd, %i.jd
  %i.je = extractelement <2 x float> %foldExtExtBinop161, i64 1
  %i.jf = extractelement <2 x float> %i.jd, i64 0 ; 2 uses
  %i.jg = tail call float @llvm.fmuladd.f32(float %i.jf, float %i.jf, float %i.je)
  %i.jh = tail call noundef float @llvm.fmuladd.f32(float %i.iy, float %i.iy, float %i.jg)
  %sqrt.i161.i = tail call float @llvm.sqrt.f32(float %i.jh)
  %i.ji = fdiv float 1.000000e+00, %sqrt.i161.i   ; 2 uses
  %i.jj = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x float> %i.jd, %i.jk
  %i.jm = fmul float %i.iy, %i.ji
  %.sroa.49.8.vec.insert162.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jm, i64 0
  %.pre202.i = load i32, ptr %i.q, align 16, !tbaa !446
  %i.jn = icmp slt i32 %.pre202.i, 3
  br i1 %i.jn, label %bb.g, label %.loopexit76, !llvm.loop !442

.loopexit76:                                      ; preds = %bb.k, %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.jo = getelementptr inbounds nuw i8, ptr %21, i64 148 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 4
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.js = getelementptr inbounds nuw i8, ptr %16, i64 40
  %.sroa.4.0..sroa_idx.i.i45 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jt = fneg float %i.hf                        ; 2 uses
  %i.ju = fneg float %i.hi                        ; 2 uses
  %i.jv = fneg float %i.gv                        ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i, %.loopexit76
  %.01626.i = phi i32 [ 0, %.loopexit76 ], [ %i.nw, %_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i ]
  %i.jw = load float, ptr %i.df, align 16, !tbaa !37 ; 5 uses
  %i.jx = load float, ptr %i.ar, align 16, !tbaa !37 ; 5 uses
  %i.jy = load float, ptr %i.fv, align 16, !tbaa !37 ; 4 uses
  %i.jz = load <2 x float>, ptr %i.dz, align 4, !tbaa !37 ; 5 uses
  %i.ka = load <2 x float>, ptr %i.bm, align 4, !tbaa !37 ; 6 uses
  %i.kb = fsub <2 x float> %i.jz, %i.ka           ; 2 uses
  %i.kc = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kd = insertelement <2 x float> %i.kc, float %i.jw, i64 1
  %i.ke = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kf = insertelement <2 x float> %i.ke, float %i.jx, i64 1 ; 2 uses
  %i.kg = fsub <2 x float> %i.kd, %i.kf           ; 2 uses
  %i.kh = load <2 x float>, ptr %i.jo, align 4, !tbaa !37 ; 5 uses
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kj = insertelement <2 x float> %i.ki, float %i.jy, i64 1
  %i.kk = fsub <2 x float> %i.kj, %i.kf           ; 2 uses
  %i.kl = fsub <2 x float> %i.kh, %i.ka           ; 2 uses
  %i.km = fneg <2 x float> %i.kl
  %i.kn = fmul <2 x float> %i.kg, %i.km
  %i.ko = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.kk, <2 x float> %i.kn) ; 4 uses
  %i.kp = extractelement <2 x float> %i.kk, i64 1
  %i.kq = fneg float %i.kp
  %i.kr = extractelement <2 x float> %i.kb, i64 0
  %i.ks = fmul float %i.kr, %i.kq
  %i.kt = extractelement <2 x float> %i.kg, i64 1
  %i.ku = extractelement <2 x float> %i.kl, i64 0
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.kt, float %i.ku, float %i.ks) ; 3 uses
  %foldExtExtBinop163 = fmul <2 x float> %i.ko, %i.ko
  %i.kw = extractelement <2 x float> %foldExtExtBinop163, i64 1
  %i.kx = extractelement <2 x float> %i.ko, i64 0 ; 2 uses
  %i.ky = tail call float @llvm.fmuladd.f32(float %i.kx, float %i.kx, float %i.kw)
  %i.kz = tail call noundef float @llvm.fmuladd.f32(float %i.kv, float %i.kv, float %i.ky)
  %sqrt.i.i.i = tail call float @llvm.sqrt.f32(float %i.kz)
  %i.la = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.lb = insertelement <2 x float> poison, float %i.la, i64 0
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ld = fmul <2 x float> %i.ko, %i.lc           ; 3 uses
  %i.le = fmul float %i.kv, %i.la                 ; 6 uses
  %i.lf = extractelement <2 x float> %i.ld, i64 1 ; 5 uses
  %i.lg = extractelement <2 x float> %i.ka, i64 0 ; 2 uses
  %i.lh = fmul float %i.lg, %i.lf
  %i.li = extractelement <2 x float> %i.ld, i64 0 ; 5 uses
  %i.lj = tail call float @llvm.fmuladd.f32(float %i.li, float %i.jx, float %i.lh)
  %i.lk = extractelement <2 x float> %i.ka, i64 1 ; 2 uses
  %i.ll = tail call noundef float @llvm.fmuladd.f32(float %i.le, float %i.lk, float %i.lj) ; 3 uses
  %i.lm = tail call noundef float @llvm.fabs.f32(float %i.ll)
  %i.ln = fcmp uge float %i.lm, f0x34000000
  %i.lo = fcmp ule float %i.ll, 0.000000e+00
  %.not20.i = and i1 %i.lo, %i.ln
  br i1 %.not20.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %.sroa.13.8.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.le, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store float %i.li, ptr %15, align 16
  store float %i.lf, ptr %.sroa.8.0..sroa_idx.i, align 4
  store <2 x float> %.sroa.13.8.vec.insert.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !37
  call fastcc void @_ZL18b3MprConvexSupportiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_SA_SB_i(i32 noundef %1, ptr noundef nonnull readonly %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr noundef readonly %6, ptr noundef %15, ptr noundef nonnull %i.jp)
  %i.lp = fneg <2 x float> %i.ld
  %i.lq = fneg float %i.le
  %.sroa.3.12.vec.insert.i.i.i.i48 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lq, i64 0
  store <2 x float> %i.lp, ptr %15, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i48, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !37
  call fastcc void @_ZL18b3MprConvexSupportiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_SA_SB_i(i32 noundef %2, ptr noundef nonnull readonly %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr noundef readonly %6, ptr noundef %15, ptr noundef nonnull %i.jq)
  %i.lr = load <2 x float>, ptr %i.jp, align 16, !tbaa !37
  %i.ls = load <2 x float>, ptr %i.jq, align 16, !tbaa !37
  %i.lt = fsub <2 x float> %i.lr, %i.ls           ; 3 uses
  %i.lu = load float, ptr %i.jr, align 8, !tbaa !37
  %i.lv = load float, ptr %i.js, align 8, !tbaa !37
  %i.lw = fsub float %i.lu, %i.lv                 ; 4 uses
  %.sroa.3.12.vec.insert.i.i24.i.i51 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lw, i64 0
  store <2 x float> %i.lt, ptr %16, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i24.i.i51, ptr %.sroa.4.0..sroa_idx.i.i45, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.lx = extractelement <2 x float> %i.lt, i64 1 ; 3 uses
  %i.ly = fmul float %i.lf, %i.lx
  %i.lz = extractelement <2 x float> %i.lt, i64 0 ; 3 uses
  %i.ma = tail call float @llvm.fmuladd.f32(float %i.lz, float %i.li, float %i.ly)
  %i.mb = tail call noundef float @llvm.fmuladd.f32(float %i.lw, float %i.le, float %i.ma) ; 5 uses
  %i.mc = tail call noundef float @llvm.fabs.f32(float %i.mb)
  %i.md = fcmp uge float %i.mc, f0x34000000
  %i.me = fcmp ule float %i.mb, 0.000000e+00
  %.not22.i = and i1 %i.me, %i.md
  br i1 %.not22.i, label %_ZL14b3RefinePortaliiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_P15_b3MprSimplex_t.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.mf = extractelement <2 x float> %i.jz, i64 0 ; 2 uses
  %i.mg = fmul float %i.mf, %i.lf
  %i.mh = tail call float @llvm.fmuladd.f32(float %i.jw, float %i.li, float %i.mg)
  %i.mi = extractelement <2 x float> %i.jz, i64 1 ; 2 uses
  %i.mj = tail call noundef float @llvm.fmuladd.f32(float %i.mi, float %i.le, float %i.mh)
  %i.mk = extractelement <2 x float> %i.kh, i64 0 ; 2 uses
  %i.ml = fmul float %i.mk, %i.lf
  %i.mm = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.li, float %i.ml)
  %i.mn = extractelement <2 x float> %i.kh, i64 1 ; 2 uses
  %i.mo = tail call noundef float @llvm.fmuladd.f32(float %i.mn, float %i.le, float %i.mm)
  %i.mp = fsub float %i.mb, %i.ll                 ; 2 uses
  %i.mq = fsub float %i.mb, %i.mj                 ; 2 uses
  %i.mr = fsub float %i.mb, %i.mo                 ; 2 uses
  %i.ms = fcmp olt float %i.mp, %i.mq
  %i.mt = select i1 %i.ms, float %i.mp, float %i.mq ; 2 uses
  %i.mu = fcmp olt float %i.mt, %i.mr
  %i.mv = select i1 %i.mu, float %i.mt, float %i.mr ; 3 uses
  %i.mw = fadd float %i.mv, f0xB58637BD
  %i.mx = tail call noundef float @llvm.fabs.f32(float %i.mw) ; 2 uses
  %i.my = fcmp olt float %i.mx, f0x34000000
  br i1 %i.my, label %_ZL14b3RefinePortaliiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_P15_b3MprSimplex_t.exit.thread, label %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.i

_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.i: ; preds = %bb.n
  %i.mz = tail call noundef float @llvm.fabs.f32(float %i.mv) ; 2 uses
  %i.na = fcmp olt float %i.mz, f0x358637BD
  %i.nb = fmul float %i.mz, f0x34000000
  %i.nc = fcmp uge float %i.mx, %i.nb
  %.0.shrunk.i.i.not25.i = or i1 %i.na, %i.nc
  %i.nd = fcmp uge float %i.mv, f0x358637BD
  %.not23.i = and i1 %i.nd, %.0.shrunk.i.i.not25.i
  br i1 %.not23.i, label %bb.o, label %_ZL14b3RefinePortaliiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_P15_b3MprSimplex_t.exit.thread

bb.o:                                             ; preds = %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.i
  %i.ne = fmul float %i.lw, %i.jt
  %i.nf = tail call float @llvm.fmuladd.f32(float %i.lx, float %i.hi, float %i.ne) ; 3 uses
  %i.ng = fmul float %i.lz, %i.ju
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.lw, float %i.gv, float %i.ng) ; 3 uses
  %i.ni = fmul float %i.lx, %i.jv
  %i.nj = tail call float @llvm.fmuladd.f32(float %i.lz, float %i.hf, float %i.ni) ; 3 uses
  %i.nk = fmul float %i.lg, %i.nh
  %i.nl = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.nf, float %i.nk)
  %i.nm = tail call noundef float @llvm.fmuladd.f32(float %i.lk, float %i.nj, float %i.nl)
  %i.nn = fcmp ogt float %i.nm, 0.000000e+00
  br i1 %i.nn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.no = fmul float %i.mf, %i.nh
  %i.np = tail call float @llvm.fmuladd.f32(float %i.jw, float %i.nf, float %i.no)
  %i.nq = tail call noundef float @llvm.fmuladd.f32(float %i.mi, float %i.nj, float %i.np)
  %i.nr = fcmp ogt float %i.nq, 0.000000e+00
  %spec.select.i.i = select i1 %i.nr, ptr %i.ar, ptr %i.fv
  br label %_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ns = fmul float %i.mk, %i.nh
  %i.nt = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.nf, float %i.ns)
  %i.nu = tail call noundef float @llvm.fmuladd.f32(float %i.mn, float %i.nj, float %i.nt)
  %i.nv = fcmp ogt float %i.nu, 0.000000e+00
  %spec.select28.i.i = select i1 %i.nv, ptr %i.df, ptr %i.ar
  br label %_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i

_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i: ; preds = %bb.q, %bb.p
  %.sink.i.i = phi ptr [ %spec.select28.i.i, %bb.q ], [ %spec.select.i.i, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sink.i.i, ptr noundef nonnull align 16 dereferenceable(48) %16, i64 48, i1 false)
  %i.nw = add nuw nsw i32 %.01626.i, 1            ; 2 uses
  %exitcond.i = icmp eq i32 %i.nw, 1000
  br i1 %exitcond.i, label %_ZL14b3RefinePortaliiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_P15_b3MprSimplex_t.exit.thread, label %bb.l, !llvm.loop !443

_ZL14b3RefinePortaliiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_P15_b3MprSimplex_t.exit.thread: ; preds = %_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i, %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.i, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.z

bb.r:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %12, i64 4
  %.sroa.10.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.oa = getelementptr inbounds nuw i8, ptr %13, i64 40
  %.sroa.4.0..sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.ob = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.oc = insertelement <2 x float> %i.ob, float %i.jx, i64 1
  br label %bb.s

bb.s:                                             ; preds = %_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i63, %bb.r
  %i.od = phi float [ %i.jy, %bb.r ], [ %.pre84, %_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i63 ] ; 3 uses
  %i.oe = phi float [ %i.jx, %bb.r ], [ %.pre79, %_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i63 ] ; 3 uses
  %i.of = phi float [ %i.jw, %bb.r ], [ %.pre, %_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i63 ] ; 2 uses
  %.03223.i = phi i64 [ 1, %bb.r ], [ %i.xg, %_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i63 ] ; 2 uses
  %i.og = phi <2 x float> [ %i.jz, %bb.r ], [ %i.xh, %_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i63 ] ; 5 uses
  %i.oh = phi <2 x float> [ %i.ka, %bb.r ], [ %i.xi, %_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i63 ] ; 6 uses
end_hunk_0
begin_hunk_1_@_Z16b3MprPenetrationiiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_PiPfSB_SB_:bb.a
  %i.rm = fcmp uge float %i.rl, f0x34000000
  %or.cond = select i1 %or.cond34.i, i1 true, i1 %i.rm
  br i1 %or.cond, label %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.thread._crit_edge.i, label %bb.t

bb.t:                                             ; preds = %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.thread.i
  store <2 x float> %.sroa.10.8.vec.insert.i, ptr %.phi.trans.insert, align 8, !tbaa !37
  br label %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.thread._crit_edge.i

_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.thread._crit_edge.i: ; preds = %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.thread.i, %bb.t
  %i.rn = phi float [ %i.pk, %bb.t ], [ %.pre87, %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.thread.i ] ; 3 uses
  %i.ro = phi float [ %i.pi, %bb.t ], [ %i.rf, %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.thread.i ] ; 2 uses
  %i.rp = phi float [ %i.pj, %bb.t ], [ %i.rg, %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.thread.i ] ; 2 uses
  %i.rq = phi <2 x float> [ %i.ph, %bb.t ], [ %i.re, %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.thread.i ]
  %i.rr = fmul float %i.ro, %i.ro
  %i.rs = call float @llvm.fmuladd.f32(float %i.rp, float %i.rp, float %i.rr)
  %i.rt = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ru = call noundef float @llvm.fmuladd.f32(float %i.rn, float %i.rn, float %i.rs)
  %sqrt.i.i67 = call float @llvm.sqrt.f32(float %i.ru)
  %i.rv = fdiv float 1.000000e+00, %sqrt.i.i67    ; 2 uses
  %i.rw = insertelement <2 x float> poison, float %i.rv, i64 0
  %i.rx = shufflevector <2 x float> %i.rw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ry = fmul <2 x float> %i.rq, %i.rx
  store <2 x float> %i.ry, ptr %10, align 16, !tbaa !37
  %i.rz = fmul float %i.rn, %i.rv
  store float %i.rz, ptr %i.rt, align 8, !tbaa !37
  %i.sa = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !37 ; 2 uses
  %i.sb = load <2 x float>, ptr %i.df, align 16, !tbaa !37 ; 7 uses
  %i.sc = load <2 x float>, ptr %i.ar, align 16, !tbaa !37 ; 8 uses
  %i.sd = load <2 x float>, ptr %i.fv, align 16, !tbaa !37 ; 6 uses
  %i.se = load <2 x float>, ptr %i.dz, align 4, !tbaa !37 ; 6 uses
  %i.sf = load <2 x float>, ptr %i.bm, align 4, !tbaa !37 ; 8 uses
  %i.sg = load <2 x float>, ptr %i.jo, align 4, !tbaa !37 ; 10 uses
  %i.sh = load <4 x float>, ptr %21, align 16     ; 4 uses
  %i.si = shufflevector <2 x float> %i.sc, <2 x float> %i.sb, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.sj = shufflevector <2 x float> %i.sc, <2 x float> %i.sb, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.sk = fneg <4 x float> %i.sj                  ; 2 uses
  %i.sl = shufflevector <2 x float> %i.se, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.sm = shufflevector <2 x float> %i.sf, <2 x float> %i.se, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.sn = fneg <4 x float> %i.sm                  ; 2 uses
  %i.so = shufflevector <2 x float> %i.sc, <2 x float> %i.sb, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.sp = shufflevector <2 x float> %i.sc, <2 x float> %i.sb, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  %i.sq = fneg <4 x float> %i.sp                  ; 2 uses
  %i.sr = shufflevector <2 x float> %i.sg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ss = shufflevector <2 x float> %i.sg, <2 x float> %i.sf, <4 x i32> <i32 poison, i32 1, i32 poison, i32 3>
  %i.st = shufflevector <4 x float> %i.ss, <4 x float> %i.sl, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %i.su = insertelement <4 x float> %i.st, float %i.sa, i64 2 ; 2 uses
  %i.sv = fmul <4 x float> %i.su, %i.sk
  %i.sw = shufflevector <2 x float> %i.sd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.sx = shufflevector <4 x float> %i.si, <4 x float> %i.sw, <4 x i32> <i32 1, i32 5, i32 poison, i32 0>
  %i.sy = shufflevector <4 x float> %i.sx, <4 x float> %i.sh, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.sz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sy, <4 x float> %i.sm, <4 x float> %i.sv) ; 2 uses
  %i.ta = shufflevector <4 x float> %i.so, <4 x float> %i.sw, <4 x i32> <i32 1, i32 4, i32 poison, i32 0>
  %i.tb = shufflevector <4 x float> %i.ta, <4 x float> %i.sh, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.tc = fmul <4 x float> %i.tb, %i.sn
  %i.td = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.su, <4 x float> %i.sp, <4 x float> %i.tc) ; 2 uses
  %i.te = fmul <4 x float> %i.sy, %i.sq
  %i.tf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tb, <4 x float> %i.sj, <4 x float> %i.te) ; 2 uses
  %i.tg = shufflevector <4 x float> %i.sh, <4 x float> %i.sw, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %i.th = fmul <4 x float> %i.tg, %i.td
  %i.ti = shufflevector <4 x float> %i.sh, <4 x float> %i.sw, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %i.tj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sz, <4 x float> %i.ti, <4 x float> %i.th)
  %i.tk = insertelement <4 x float> poison, float %i.sa, i64 0
  %i.tl = shufflevector <4 x float> %i.tk, <4 x float> %i.sr, <4 x i32> <i32 0, i32 0, i32 5, i32 5>
  %i.tm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tf, <4 x float> %i.tl, <4 x float> %i.tj) ; 5 uses
  %shift170 = shufflevector <4 x float> %i.tm, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop171 = fadd <4 x float> %shift170, %i.tm
  %shift173 = shufflevector <4 x float> %i.tm, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop174 = fadd <4 x float> %foldExtExtBinop171, %shift173
  %shift176 = shufflevector <4 x float> %foldExtExtBinop174, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop177 = fadd <4 x float> %i.tm, %shift176
  %i.tn = extractelement <4 x float> %foldExtExtBinop177, i64 0 ; 3 uses
  %i.to = call noundef float @llvm.fabs.f32(float %i.tn)
  %i.tp = fcmp olt float %i.to, f0x34000000
  %i.tq = fcmp olt float %i.tn, 0.000000e+00
  %or.cond.i.i = or i1 %i.tq, %i.tp
  br i1 %or.cond.i.i, label %bb.u, label %_ZL12b3FindPenetriiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_P15_b3MprSimplex_tPfSB_SB_.exit

bb.u:                                             ; preds = %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.thread._crit_edge.i
  %i.tr = shufflevector <2 x float> %i.sf, <2 x float> poison, <3 x i32> <i32 0, i32 0, i32 1>
  %i.ts = extractelement <4 x float> %i.td, i64 3
  %i.tt = extractelement <4 x float> %i.sz, i64 3
  %i.tu = shufflevector <2 x float> %i.sb, <2 x float> %i.sd, <3 x i32> <i32 0, i32 poison, i32 2>
  %i.tv = shufflevector <2 x float> %i.sg, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.tw = shufflevector <3 x float> %i.tu, <3 x float> %i.tv, <3 x i32> <i32 0, i32 4, i32 2>
  %i.tx = shufflevector <2 x float> %i.sc, <2 x float> %i.sf, <3 x i32> <i32 0, i32 3, i32 0>
  %i.ty = fsub <3 x float> %i.tw, %i.tx
  %i.tz = shufflevector <2 x float> %i.sd, <2 x float> %i.sg, <3 x i32> <i32 0, i32 2, i32 3>
  %i.ua = shufflevector <2 x float> %i.sc, <2 x float> %i.sf, <3 x i32> <i32 0, i32 2, i32 3>
  %i.ub = fsub <3 x float> %i.tz, %i.ua
  %i.uc = shufflevector <2 x float> %i.sg, <2 x float> %i.se, <3 x i32> <i32 0, i32 2, i32 3> ; 2 uses
  %i.ud = fsub <3 x float> %i.uc, %i.tr
  %i.ue = shufflevector <2 x float> %i.sb, <2 x float> %i.se, <3 x i32> <i32 2, i32 3, i32 0>
  %i.uf = shufflevector <2 x float> %i.sf, <2 x float> %i.sc, <3 x i32> <i32 0, i32 1, i32 2>
  %i.ug = fsub <3 x float> %i.ue, %i.uf
  %i.uh = fneg <3 x float> %i.ub
  %i.ui = fmul <3 x float> %i.ug, %i.uh
  %i.uj = shufflevector <2 x float> %i.sg, <2 x float> %i.se, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.uk = shufflevector <4 x float> %i.sk, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ul = fneg <2 x float> %i.sg
  %i.um = shufflevector <2 x float> %i.uk, <2 x float> %i.ul, <2 x i32> <i32 0, i32 2>
  %i.un = fmul <2 x float> %i.uj, %i.um
  %i.uo = shufflevector <2 x float> %i.sd, <2 x float> %i.sb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.up = shufflevector <4 x float> %i.sn, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.uq = fneg <2 x float> %i.sg
  %i.ur = shufflevector <2 x float> %i.up, <2 x float> %i.uq, <2 x i32> <i32 0, i32 3>
  %i.us = fmul <2 x float> %i.uo, %i.ur
  %i.ut = shufflevector <3 x float> %i.uc, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.uu = shufflevector <4 x float> %i.sq, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.uv = fneg <2 x float> %i.sd
  %i.uw = shufflevector <2 x float> %i.uu, <2 x float> %i.uv, <2 x i32> <i32 0, i32 2>
  %i.ux = fmul <2 x float> %i.ut, %i.uw
  %i.uy = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ud, <3 x float> %i.ty, <3 x float> %i.ui) ; 5 uses
  %foldExtExtBinop179 = fmul <3 x float> %i.uy, %i.uy
  %i.uz = extractelement <3 x float> %foldExtExtBinop179, i64 2
  %i.va = extractelement <3 x float> %i.uy, i64 1 ; 2 uses
  %i.vb = call float @llvm.fmuladd.f32(float %i.va, float %i.va, float %i.uz)
  %i.vc = extractelement <3 x float> %i.uy, i64 0 ; 2 uses
  %i.vd = call noundef float @llvm.fmuladd.f32(float %i.vc, float %i.vc, float %i.vb)
  %sqrt.i.i.i.i = call float @llvm.sqrt.f32(float %i.vd)
  %i.ve = fdiv float 1.000000e+00, %sqrt.i.i.i.i
  %i.vf = insertelement <3 x float> poison, float %i.ve, i64 0
  %i.vg = shufflevector <3 x float> %i.vf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.vh = fmul <3 x float> %i.uy, %i.vg           ; 6 uses
  %i.vi = shufflevector <2 x float> %i.sf, <2 x float> %i.se, <2 x i32> <i32 1, i32 2>
  %i.vj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sg, <2 x float> %i.vi, <2 x float> %i.un)
  %i.vk = shufflevector <2 x float> %i.sc, <2 x float> %i.sd, <2 x i32> <i32 0, i32 2>
  %i.vl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uj, <2 x float> %i.vk, <2 x float> %i.us)
  %i.vm = shufflevector <2 x float> %i.sf, <2 x float> %i.sg, <2 x i32> <i32 0, i32 2>
  %i.vn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uo, <2 x float> %i.vm, <2 x float> %i.ux)
  %i.vo = shufflevector <3 x float> %i.vh, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.vp = fmul <2 x float> %i.vl, %i.vo
  %i.vq = extractelement <3 x float> %i.vh, i64 2
  %i.vr = fmul float %i.ts, %i.vq
  %i.vs = shufflevector <3 x float> %i.vh, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vj, <2 x float> %i.vs, <2 x float> %i.vp)
  %i.vu = extractelement <3 x float> %i.vh, i64 1
  %i.vv = call float @llvm.fmuladd.f32(float %i.tt, float %i.vu, float %i.vr)
  %i.vw = shufflevector <3 x float> %i.vh, <3 x float> poison, <2 x i32> zeroinitializer
  %i.vx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vn, <2 x float> %i.vw, <2 x float> %i.vt) ; 3 uses
  %i.vy = extractelement <4 x float> %i.tf, i64 3
  %i.vz = extractelement <3 x float> %i.vh, i64 0
  %i.wa = call noundef float @llvm.fmuladd.f32(float %i.vy, float %i.vz, float %i.vv) ; 2 uses
  %shift181 = shufflevector <2 x float> %i.vx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop182 = fadd <2 x float> %shift181, %i.vx
  %i.wb = extractelement <2 x float> %foldExtExtBinop182, i64 0
  %i.wc = fadd float %i.wa, %i.wb
  %i.wd = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.wa, i64 0
  %i.we = shufflevector <2 x float> %i.vx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wf = shufflevector <4 x float> %i.wd, <4 x float> %i.we, <4 x i32> <i32 0, i32 5, i32 4, i32 3>
  br label %_ZL12b3FindPenetriiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_P15_b3MprSimplex_tPfSB_SB_.exit

bb.v:                                             ; preds = %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.i60
  %i.wg = fmul float %i.ps, %i.jt
  %i.wh = extractelement <2 x float> %i.pp, i64 1 ; 2 uses
  %i.wi = tail call float @llvm.fmuladd.f32(float %i.wh, float %i.hi, float %i.wg) ; 3 uses
  %i.wj = extractelement <2 x float> %i.pp, i64 0 ; 2 uses
  %i.wk = fmul float %i.wj, %i.ju
  %i.wl = tail call float @llvm.fmuladd.f32(float %i.ps, float %i.gv, float %i.wk) ; 3 uses
  %i.wm = fmul float %i.wh, %i.jv
  %i.wn = tail call float @llvm.fmuladd.f32(float %i.wj, float %i.hf, float %i.wm) ; 3 uses
  %i.wo = extractelement <2 x float> %i.oh, i64 0
  %i.wp = fmul float %i.wo, %i.wl
  %i.wq = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.wi, float %i.wp)
  %i.wr = extractelement <2 x float> %i.oh, i64 1
  %i.ws = tail call noundef float @llvm.fmuladd.f32(float %i.wr, float %i.wn, float %i.wq)
  %i.wt = fcmp ogt float %i.ws, 0.000000e+00
  br i1 %i.wt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.wu = extractelement <2 x float> %i.og, i64 0
  %i.wv = fmul float %i.wu, %i.wl
  %i.ww = tail call float @llvm.fmuladd.f32(float %i.of, float %i.wi, float %i.wv)
  %i.wx = extractelement <2 x float> %i.og, i64 1
  %i.wy = tail call noundef float @llvm.fmuladd.f32(float %i.wx, float %i.wn, float %i.ww)
  %i.wz = fcmp ogt float %i.wy, 0.000000e+00
  %spec.select.i.i65 = select i1 %i.wz, ptr %i.ar, ptr %i.fv
  br label %_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i63

bb.x:                                             ; preds = %bb.v
  %i.xa = extractelement <2 x float> %i.oi, i64 0
  %i.xb = fmul float %i.xa, %i.wl
  %i.xc = tail call float @llvm.fmuladd.f32(float %i.od, float %i.wi, float %i.xb)
  %i.xd = extractelement <2 x float> %i.oi, i64 1
  %i.xe = tail call noundef float @llvm.fmuladd.f32(float %i.xd, float %i.wn, float %i.xc)
  %i.xf = fcmp ogt float %i.xe, 0.000000e+00
  %spec.select28.i.i62 = select i1 %i.xf, ptr %i.df, ptr %i.ar
  br label %_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i63

_Z14b3ExpandPortalP15_b3MprSimplex_tPK15_b3MprSupport_t.exit.i63: ; preds = %bb.x, %bb.w
  %.sink.i.i64 = phi ptr [ %spec.select28.i.i62, %bb.x ], [ %spec.select.i.i65, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sink.i.i64, ptr noundef nonnull align 16 dereferenceable(48) %13, i64 48, i1 false)
  %i.xg = add nuw nsw i64 %.03223.i, 1
  %i.xh = load <2 x float>, ptr %i.dz, align 4, !tbaa !37
  %.pre = load float, ptr %i.df, align 16, !tbaa !37 ; 2 uses
  %i.xi = load <2 x float>, ptr %i.bm, align 4, !tbaa !37
  %.pre79 = load float, ptr %i.ar, align 16, !tbaa !37 ; 2 uses
  %i.xj = load <2 x float>, ptr %i.jo, align 4, !tbaa !37
  %.pre84 = load float, ptr %i.fv, align 16, !tbaa !37
  %i.xk = insertelement <2 x float> poison, float %.pre, i64 0
  %i.xl = insertelement <2 x float> %i.xk, float %.pre79, i64 1
  br label %bb.s, !llvm.loop !444

_ZL12b3FindPenetriiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_P15_b3MprSimplex_tPfSB_SB_.exit: ; preds = %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.thread._crit_edge.i, %bb.u
  %.0.i.i = phi float [ %i.wc, %bb.u ], [ %i.tn, %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.thread._crit_edge.i ]
  %i.xm = phi <4 x float> [ %i.wf, %bb.u ], [ %i.tm, %_Z20portalReachTolerancePK15_b3MprSimplex_tPK15_b3MprSupport_tPK9b3Vector3.exit.thread._crit_edge.i ] ; 4 uses
  %i.xn = load <4 x float>, ptr %i.e, align 16
  %.sroa.37.8.vec.extract144.i.i = load float, ptr %i.l, align 8, !tbaa !37
  %i.xo = load <4 x float>, ptr %i.h, align 16
  %.sroa.37.8.vec.extract149.i.i = load float, ptr %i.n, align 8, !tbaa !37
  %i.xp = load <4 x float>, ptr %i.as, align 16
  %.sroa.37.8.vec.extract144.1.i.i = load float, ptr %i.ba, align 8, !tbaa !37
  %i.xq = load <4 x float>, ptr %i.aw, align 16
  %.sroa.37.8.vec.extract149.1.i.i = load float, ptr %i.bb, align 8, !tbaa !37
  %i.xr = load <4 x float>, ptr %i.dg, align 16
  %.sroa.37.8.vec.extract144.2.i.i = load float, ptr %i.dn, align 8, !tbaa !37
  %i.xs = load <4 x float>, ptr %i.dk, align 16
  %.sroa.37.8.vec.extract149.2.i.i = load float, ptr %i.do, align 8, !tbaa !37
  %i.xt = load <4 x float>, ptr %i.fw, align 16
  %.sroa.37.8.vec.extract144.3.i.i = load float, ptr %i.fy, align 8, !tbaa !37
  %i.xu = load <4 x float>, ptr %i.fx, align 16
  %.sroa.37.8.vec.extract149.3.i.i = load float, ptr %i.fz, align 8, !tbaa !37
  %i.xv = shufflevector <4 x float> %i.xm, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7> ; 2 uses
  %i.xw = insertelement <4 x float> %i.xn, float 1.000000e+00, i64 3
  %i.xx = insertelement <4 x float> %i.xw, float %.sroa.37.8.vec.extract144.i.i, i64 2
  %i.xy = fmul <4 x float> %i.xv, %i.xx
  %i.xz = fadd <4 x float> %i.xy, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.ya = insertelement <4 x float> %i.xo, float 1.000000e+00, i64 3
  %i.yb = insertelement <4 x float> %i.ya, float %.sroa.37.8.vec.extract149.i.i, i64 2
  %i.yc = fmul <4 x float> %i.xv, %i.yb
  %i.yd = fadd <4 x float> %i.yc, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.ye = shufflevector <4 x float> %i.xm, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7> ; 2 uses
  %i.yf = insertelement <4 x float> %i.xp, float 1.000000e+00, i64 3
  %i.yg = insertelement <4 x float> %i.yf, float %.sroa.37.8.vec.extract144.1.i.i, i64 2
  %i.yh = fmul <4 x float> %i.ye, %i.yg
  %i.yi = fadd <4 x float> %i.xz, %i.yh
  %i.yj = insertelement <4 x float> %i.xq, float 1.000000e+00, i64 3
  %i.yk = insertelement <4 x float> %i.yj, float %.sroa.37.8.vec.extract149.1.i.i, i64 2
  %i.yl = fmul <4 x float> %i.ye, %i.yk
  %i.ym = fadd <4 x float> %i.yd, %i.yl
  %i.yn = shufflevector <4 x float> %i.xm, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7> ; 2 uses
  %i.yo = insertelement <4 x float> %i.xr, float 1.000000e+00, i64 3
  %i.yp = insertelement <4 x float> %i.yo, float %.sroa.37.8.vec.extract144.2.i.i, i64 2
  %i.yq = fmul <4 x float> %i.yn, %i.yp
  %i.yr = fadd <4 x float> %i.yi, %i.yq
  %i.ys = insertelement <4 x float> %i.xs, float 1.000000e+00, i64 3
  %i.yt = insertelement <4 x float> %i.ys, float %.sroa.37.8.vec.extract149.2.i.i, i64 2
  %i.yu = fmul <4 x float> %i.yn, %i.yt
  %i.yv = fadd <4 x float> %i.ym, %i.yu
  %i.yw = shufflevector <4 x float> %i.xm, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7> ; 2 uses
  %i.yx = insertelement <4 x float> %i.xt, float 1.000000e+00, i64 3
  %i.yy = insertelement <4 x float> %i.yx, float %.sroa.37.8.vec.extract144.3.i.i, i64 2
  %i.yz = fmul <4 x float> %i.yw, %i.yy
  %i.za = fadd <4 x float> %i.yr, %i.yz
  %i.zb = insertelement <4 x float> %i.xu, float 1.000000e+00, i64 3
  %i.zc = insertelement <4 x float> %i.zb, float %.sroa.37.8.vec.extract149.3.i.i, i64 2
  %i.zd = fmul <4 x float> %i.yw, %i.zc
  %i.ze = fadd <4 x float> %i.yv, %i.zd
  %i.zf = fdiv float 1.000000e+00, %.0.i.i
  %i.zg = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.zf, i64 0 ; 2 uses
  %i.zh = shufflevector <4 x float> %i.zg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.zi = fmul <4 x float> %i.zh, %i.za
  %i.zj = shufflevector <4 x float> %i.zg, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.zk = fmul <4 x float> %i.zj, %i.ze
  %i.zl = fadd <4 x float> %i.zi, %i.zk
  %i.zm = fmul <4 x float> %i.zl, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00>
  store <4 x float> %i.zm, ptr %11, align 16, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  store i32 1, ptr %i.b, align 4, !tbaa !38
  %i.zn = load <2 x float>, ptr %10, align 16, !tbaa !37
  %i.zo = fneg <2 x float> %i.zn
  %i.zp = load float, ptr %i.rt, align 8, !tbaa !37
  %i.zq = fneg float %i.zp
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.zq, i64 0
  %i.zr = getelementptr inbounds [16 x i8], ptr %7, i64 %i.a ; 2 uses
  store <2 x float> %i.zo, ptr %i.zr, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  br label %bb.z

bb.y:                                             ; preds = %_Z7b3MprEqff.exit9.thread.i106.i
  store float 0.000000e+00, ptr %9, align 4, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !40
  %i.zs = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.zt = load float, ptr %i.zs, align 8, !tbaa !37
  %i.zu = extractelement <2 x float> %i.bf, i64 1
  %i.zv = fadd float %i.zu, %i.zt
  %i.zw = load <2 x float>, ptr %11, align 16, !tbaa !37
  %i.zx = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.zy = insertelement <2 x float> %i.zx, float %i.ax, i64 0
  %i.zz = fadd <2 x float> %i.zy, %i.zw
  %i.aaa = fmul <2 x float> %i.zz, splat (float 5.000000e-01)
  store <2 x float> %i.aaa, ptr %11, align 16, !tbaa !37
  %i.aab = fmul float %i.zv, 5.000000e-01
  store float %i.aab, ptr %i.zs, align 8, !tbaa !37
  br label %bb.z

_ZL16b3DiscoverPortaliiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_PiP15_b3MprSimplex_t.exit: ; preds = %_Z7b3MprEqff.exit9.thread.i106.i, %_Z7b3MprEqff.exit.thread.i103.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !40
  %i.aac = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.aad = load float, ptr %i.aac, align 8, !tbaa !37
  %i.aae = extractelement <2 x float> %i.bf, i64 1
  %i.aaf = fadd float %i.aae, %i.aad
  %i.aag = load <2 x float>, ptr %11, align 16, !tbaa !37
  %i.aah = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aai = insertelement <2 x float> %i.aah, float %i.ax, i64 0
  %i.aaj = fadd <2 x float> %i.aai, %i.aag
  %i.aak = fmul <2 x float> %i.aaj, splat (float 5.000000e-01)
  store <2 x float> %i.aak, ptr %11, align 16, !tbaa !37
  %i.aal = fmul float %i.aaf, 5.000000e-01
  store float %i.aal, ptr %i.aac, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !40
  %i.aam = load float, ptr %10, align 16, !tbaa !37 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 3 uses
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !37 ; 2 uses
  %i.aap = fmul float %i.aao, %i.aao
  %i.aaq = tail call float @llvm.fmuladd.f32(float %i.aam, float %i.aam, float %i.aap)
  %i.aar = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.aas = load float, ptr %i.aar, align 8, !tbaa !37 ; 2 uses
  %i.aat = tail call noundef float @llvm.fmuladd.f32(float %i.aas, float %i.aas, float %i.aaq)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.aat)
  store float %sqrt.i, ptr %9, align 4, !tbaa !44
  %i.aau = load float, ptr %10, align 16, !tbaa !37 ; 3 uses
  %i.aav = load float, ptr %i.aan, align 4, !tbaa !37 ; 3 uses
  %i.aaw = fmul float %i.aav, %i.aav
  %i.aax = tail call float @llvm.fmuladd.f32(float %i.aau, float %i.aau, float %i.aaw)
  %i.aay = load float, ptr %i.aar, align 8, !tbaa !37 ; 3 uses
  %i.aaz = tail call noundef float @llvm.fmuladd.f32(float %i.aay, float %i.aay, float %i.aax)
  %sqrt.i.i68 = tail call float @llvm.sqrt.f32(float %i.aaz)
  %i.aba = fdiv float 1.000000e+00, %sqrt.i.i68   ; 3 uses
  %i.abb = fmul float %i.aau, %i.aba
  store float %i.abb, ptr %10, align 16, !tbaa !37
  %i.abc = fmul float %i.aav, %i.aba
  store float %i.abc, ptr %i.aan, align 4, !tbaa !37
  %i.abd = fmul float %i.aay, %i.aba
  store float %i.abd, ptr %i.aar, align 8, !tbaa !37
  br label %bb.z

.loopexit:                                        ; preds = %bb.g, %_Z11b3MprVec3EqPK9b3Vector3S1_.exit.thread.i, %bb.d
  store i32 0, ptr %i.b, align 4, !tbaa !38
  br label %bb.z

bb.z:                                             ; preds = %_ZL14b3RefinePortaliiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_P15_b3MprSimplex_t.exit.thread, %_ZL12b3FindPenetriiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_P15_b3MprSimplex_tPfSB_SB_.exit, %bb.y, %_ZL16b3DiscoverPortaliiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_PiP15_b3MprSimplex_t.exit, %.loopexit
  %.0 = phi i32 [ -1, %.loopexit ], [ -1, %_ZL14b3RefinePortaliiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_P15_b3MprSimplex_t.exit.thread ], [ 0, %_ZL16b3DiscoverPortaliiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_PiP15_b3MprSimplex_t.exit ], [ 0, %bb.y ], [ 0, %_ZL12b3FindPenetriiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_P15_b3MprSimplex_tPfSB_SB_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI10b3Contact4ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI10b3Contact4E12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !153  ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !259
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %_ZN13b3OpenCLArrayI10b3Contact4E6resizeEmb.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !256
  %i.j = icmp ult i64 %i.i, %i.d
  br i1 %i.j, label %bb.c, label %_ZN13b3OpenCLArrayI10b3Contact4E6resizeEmb.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.l = load i8, ptr %i.k, align 1, !tbaa !257, !range !91, !noundef !92
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.n = mul nsw i64 %i.d, 112
  %i.o = load ptr, ptr @__clewCreateBuffer, align 8, !tbaa !95
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !258
  %i.r = call ptr %i.o(ptr noundef %i.q, i64 noundef 1, i64 noundef %i.n, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !448
  %i.s = load i32, ptr %i.a, align 4, !tbaa !38
  %.not.i.i = icmp eq i32 %i.s, 0                 ; 2 uses
  br i1 %.not.i.i, label %_ZNK13b3OpenCLArrayI10b3Contact4E8copyToCLEP7_cl_memmmm.exit.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.75, i32 noundef 166)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.76)
  br label %_ZNK13b3OpenCLArrayI10b3Contact4E8copyToCLEP7_cl_memmmm.exit.i.i

_ZNK13b3OpenCLArrayI10b3Contact4E8copyToCLEP7_cl_memmmm.exit.i.i: ; preds = %bb.d, %.thread.i.i
  %.01017.i.i = phi i64 [ 0, %.thread.i.i ], [ %i.d, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !204  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i8, ptr %i.v, align 8, !range !91
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.x, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN13b3OpenCLArrayI10b3Contact4E7reserveEmb.exit.i

bb.e:                                             ; preds = %_ZNK13b3OpenCLArrayI10b3Contact4E8copyToCLEP7_cl_memmmm.exit.i.i
  %i.y = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !95
  %i.z = call i32 %i.y(ptr noundef nonnull %i.u), !inline_history !449 ; 0 uses
  br label %_ZN13b3OpenCLArrayI10b3Contact4E7reserveEmb.exit.i

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !204 ; 2 uses
  %.not.i12.i.i = icmp ne ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i8, ptr %i.ac, align 8, !range !91
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i13.i.i = select i1 %.not.i12.i.i, i1 %i.ae, i1 false
  br i1 %or.cond.i13.i.i, label %bb.g, label %_ZN13b3OpenCLArrayI10b3Contact4E7reserveEmb.exit.thread12.i

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !95
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %i.ab), !inline_history !449 ; 0 uses
  br label %_ZN13b3OpenCLArrayI10b3Contact4E7reserveEmb.exit.thread12.i

_ZN13b3OpenCLArrayI10b3Contact4E7reserveEmb.exit.thread12.i: ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.h

_ZN13b3OpenCLArrayI10b3Contact4E7reserveEmb.exit.i: ; preds = %bb.e, %_ZNK13b3OpenCLArrayI10b3Contact4E8copyToCLEP7_cl_memmmm.exit.i.i
  store ptr %i.r, ptr %i.t, align 8, !tbaa !204
  store i64 %.01017.i.i, ptr %i.h, align 8, !tbaa !256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %.not.i.i, label %_ZN13b3OpenCLArrayI10b3Contact4E6resizeEmb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN13b3OpenCLArrayI10b3Contact4E7reserveEmb.exit.i, %_ZN13b3OpenCLArrayI10b3Contact4E7reserveEmb.exit.thread12.i
  br label %_ZN13b3OpenCLArrayI10b3Contact4E6resizeEmb.exit

_ZN13b3OpenCLArrayI10b3Contact4E6resizeEmb.exit:  ; preds = %bb.a, %bb.b, %_ZN13b3OpenCLArrayI10b3Contact4E7reserveEmb.exit.i, %bb.h
  %storemerge.i = phi i64 [ 0, %bb.h ], [ %i.d, %bb.b ], [ %i.d, %bb.a ], [ %i.d, %_ZN13b3OpenCLArrayI10b3Contact4E7reserveEmb.exit.i ]
  store i64 %storemerge.i, ptr %i.e, align 8, !tbaa !259
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN13b3OpenCLArrayI10b3Contact4E19copyFromHostPointerEPKS0_mmb.exit, label %bb.i

bb.i:                                             ; preds = %_ZN13b3OpenCLArrayI10b3Contact4E6resizeEmb.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !148
  %i.aj = mul nsw i64 %i.d, 112
  %i.ak = load ptr, ptr @__clewEnqueueWriteBuffer, align 8, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !260
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !204
  %i.ap = call i32 %i.ak(ptr noundef %i.am, ptr noundef %i.ao, i32 noundef 0, i64 noundef 0, i64 noundef %i.aj, ptr noundef nonnull %i.ai, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !450 ; 0 uses
  br i1 %2, label %bb.j, label %_ZN13b3OpenCLArrayI10b3Contact4E19copyFromHostPointerEPKS0_mmb.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr @__clewFinish, align 8, !tbaa !95
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !260
  %i.as = call i32 %i.aq(ptr noundef %i.ar), !inline_history !450 ; 0 uses
  br label %_ZN13b3OpenCLArrayI10b3Contact4E19copyFromHostPointerEPKS0_mmb.exit

_ZN13b3OpenCLArrayI10b3Contact4E19copyFromHostPointerEPKS0_mmb.exit: ; preds = %bb.j, %bb.i, %_ZN13b3OpenCLArrayI10b3Contact4E6resizeEmb.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayIiE12copyFromHostERK20b3AlignedObjectArrayIiEb(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !189  ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !114
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %_ZN13b3OpenCLArrayIiE6resizeEmb.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !115
  %i.j = icmp ult i64 %i.i, %i.d
  br i1 %i.j, label %bb.c, label %_ZN13b3OpenCLArrayIiE6resizeEmb.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.l = load i8, ptr %i.k, align 1, !tbaa !83, !range !91, !noundef !92
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.n = shl nsw i64 %i.d, 2
  %i.o = load ptr, ptr @__clewCreateBuffer, align 8, !tbaa !95
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.r = call ptr %i.o(ptr noundef %i.q, i64 noundef 1, i64 noundef %i.n, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !451
  %i.s = load i32, ptr %i.a, align 4, !tbaa !38
  %.not.i.i = icmp eq i32 %i.s, 0                 ; 2 uses
  br i1 %.not.i.i, label %_ZNK13b3OpenCLArrayIiE8copyToCLEP7_cl_memmmm.exit.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.75, i32 noundef 166)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.76)
  br label %_ZNK13b3OpenCLArrayIiE8copyToCLEP7_cl_memmmm.exit.i.i

_ZNK13b3OpenCLArrayIiE8copyToCLEP7_cl_memmmm.exit.i.i: ; preds = %bb.d, %.thread.i.i
  %.01017.i.i = phi i64 [ 0, %.thread.i.i ], [ %i.d, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !116  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i8, ptr %i.v, align 8, !range !91
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.x, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN13b3OpenCLArrayIiE7reserveEmb.exit.i

bb.e:                                             ; preds = %_ZNK13b3OpenCLArrayIiE8copyToCLEP7_cl_memmmm.exit.i.i
  %i.y = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !95
  %i.z = call i32 %i.y(ptr noundef nonnull %i.u), !inline_history !452 ; 0 uses
  br label %_ZN13b3OpenCLArrayIiE7reserveEmb.exit.i

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !116 ; 2 uses
  %.not.i12.i.i = icmp ne ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i8, ptr %i.ac, align 8, !range !91
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i13.i.i = select i1 %.not.i12.i.i, i1 %i.ae, i1 false
  br i1 %or.cond.i13.i.i, label %bb.g, label %_ZN13b3OpenCLArrayIiE7reserveEmb.exit.thread12.i

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !95
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %i.ab), !inline_history !452 ; 0 uses
  br label %_ZN13b3OpenCLArrayIiE7reserveEmb.exit.thread12.i

_ZN13b3OpenCLArrayIiE7reserveEmb.exit.thread12.i: ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.h

_ZN13b3OpenCLArrayIiE7reserveEmb.exit.i:          ; preds = %bb.e, %_ZNK13b3OpenCLArrayIiE8copyToCLEP7_cl_memmmm.exit.i.i
  store ptr %i.r, ptr %i.t, align 8, !tbaa !116
  store i64 %.01017.i.i, ptr %i.h, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %.not.i.i, label %_ZN13b3OpenCLArrayIiE6resizeEmb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN13b3OpenCLArrayIiE7reserveEmb.exit.i, %_ZN13b3OpenCLArrayIiE7reserveEmb.exit.thread12.i
  br label %_ZN13b3OpenCLArrayIiE6resizeEmb.exit

_ZN13b3OpenCLArrayIiE6resizeEmb.exit:             ; preds = %bb.a, %bb.b, %_ZN13b3OpenCLArrayIiE7reserveEmb.exit.i, %bb.h
  %storemerge.i = phi i64 [ 0, %bb.h ], [ %i.d, %bb.b ], [ %i.d, %bb.a ], [ %i.d, %_ZN13b3OpenCLArrayIiE7reserveEmb.exit.i ]
  store i64 %storemerge.i, ptr %i.e, align 8, !tbaa !114
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN13b3OpenCLArrayIiE19copyFromHostPointerEPKimmb.exit, label %bb.i

bb.i:                                             ; preds = %_ZN13b3OpenCLArrayIiE6resizeEmb.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !136
  %i.aj = shl nsw i64 %i.d, 2
  %i.ak = load ptr, ptr @__clewEnqueueWriteBuffer, align 8, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !82
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !116
  %i.ap = call i32 %i.ak(ptr noundef %i.am, ptr noundef %i.ao, i32 noundef 0, i64 noundef 0, i64 noundef %i.aj, ptr noundef nonnull %i.ai, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !5 ; 0 uses
  br i1 %2, label %bb.j, label %_ZN13b3OpenCLArrayIiE19copyFromHostPointerEPKimmb.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr @__clewFinish, align 8, !tbaa !95
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !82
  %i.as = call i32 %i.aq(ptr noundef %i.ar), !inline_history !5 ; 0 uses
  br label %_ZN13b3OpenCLArrayIiE19copyFromHostPointerEPKimmb.exit

_ZN13b3OpenCLArrayIiE19copyFromHostPointerEPKimmb.exit: ; preds = %bb.j, %bb.i, %_ZN13b3OpenCLArrayIiE6resizeEmb.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI9b3Vector3E12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !186  ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !117
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %_ZN13b3OpenCLArrayI9b3Vector3E6resizeEmb.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !118
  %i.j = icmp ult i64 %i.i, %i.d
  br i1 %i.j, label %bb.c, label %_ZN13b3OpenCLArrayI9b3Vector3E6resizeEmb.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.l = load i8, ptr %i.k, align 1, !tbaa !80, !range !91, !noundef !92
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.n = shl nsw i64 %i.d, 4
  %i.o = load ptr, ptr @__clewCreateBuffer, align 8, !tbaa !95
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78
  %i.r = call ptr %i.o(ptr noundef %i.q, i64 noundef 1, i64 noundef %i.n, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !453
  %i.s = load i32, ptr %i.a, align 4, !tbaa !38
  %.not.i.i = icmp eq i32 %i.s, 0                 ; 2 uses
  br i1 %.not.i.i, label %_ZNK13b3OpenCLArrayI9b3Vector3E8copyToCLEP7_cl_memmmm.exit.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.75, i32 noundef 166)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.76)
  br label %_ZNK13b3OpenCLArrayI9b3Vector3E8copyToCLEP7_cl_memmmm.exit.i.i

_ZNK13b3OpenCLArrayI9b3Vector3E8copyToCLEP7_cl_memmmm.exit.i.i: ; preds = %bb.d, %.thread.i.i
  %.01017.i.i = phi i64 [ 0, %.thread.i.i ], [ %i.d, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !96   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i8, ptr %i.v, align 8, !range !91
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.x, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN13b3OpenCLArrayI9b3Vector3E7reserveEmb.exit.i

bb.e:                                             ; preds = %_ZNK13b3OpenCLArrayI9b3Vector3E8copyToCLEP7_cl_memmmm.exit.i.i
  %i.y = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !95
  %i.z = call i32 %i.y(ptr noundef nonnull %i.u), !inline_history !454 ; 0 uses
  br label %_ZN13b3OpenCLArrayI9b3Vector3E7reserveEmb.exit.i

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !96 ; 2 uses
  %.not.i12.i.i = icmp ne ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i8, ptr %i.ac, align 8, !range !91
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i13.i.i = select i1 %.not.i12.i.i, i1 %i.ae, i1 false
  br i1 %or.cond.i13.i.i, label %bb.g, label %_ZN13b3OpenCLArrayI9b3Vector3E7reserveEmb.exit.thread12.i

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !95
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %i.ab), !inline_history !454 ; 0 uses
  br label %_ZN13b3OpenCLArrayI9b3Vector3E7reserveEmb.exit.thread12.i

_ZN13b3OpenCLArrayI9b3Vector3E7reserveEmb.exit.thread12.i: ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.h

_ZN13b3OpenCLArrayI9b3Vector3E7reserveEmb.exit.i: ; preds = %bb.e, %_ZNK13b3OpenCLArrayI9b3Vector3E8copyToCLEP7_cl_memmmm.exit.i.i
  store ptr %i.r, ptr %i.t, align 8, !tbaa !96
  store i64 %.01017.i.i, ptr %i.h, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %.not.i.i, label %_ZN13b3OpenCLArrayI9b3Vector3E6resizeEmb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN13b3OpenCLArrayI9b3Vector3E7reserveEmb.exit.i, %_ZN13b3OpenCLArrayI9b3Vector3E7reserveEmb.exit.thread12.i
  br label %_ZN13b3OpenCLArrayI9b3Vector3E6resizeEmb.exit

_ZN13b3OpenCLArrayI9b3Vector3E6resizeEmb.exit:    ; preds = %bb.a, %bb.b, %_ZN13b3OpenCLArrayI9b3Vector3E7reserveEmb.exit.i, %bb.h
  %storemerge.i = phi i64 [ 0, %bb.h ], [ %i.d, %bb.b ], [ %i.d, %bb.a ], [ %i.d, %_ZN13b3OpenCLArrayI9b3Vector3E7reserveEmb.exit.i ]
  store i64 %storemerge.i, ptr %i.e, align 8, !tbaa !117
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN13b3OpenCLArrayI9b3Vector3E19copyFromHostPointerEPKS0_mmb.exit, label %bb.i

bb.i:                                             ; preds = %_ZN13b3OpenCLArrayI9b3Vector3E6resizeEmb.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !128
  %i.aj = shl nsw i64 %i.d, 4
  %i.ak = load ptr, ptr @__clewEnqueueWriteBuffer, align 8, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !79
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !96
  %i.ap = call i32 %i.ak(ptr noundef %i.am, ptr noundef %i.ao, i32 noundef 0, i64 noundef 0, i64 noundef %i.aj, ptr noundef nonnull %i.ai, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !1 ; 0 uses
  br i1 %2, label %bb.j, label %_ZN13b3OpenCLArrayI9b3Vector3E19copyFromHostPointerEPKS0_mmb.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr @__clewFinish, align 8, !tbaa !95
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !79
  %i.as = call i32 %i.aq(ptr noundef %i.ar), !inline_history !1 ; 0 uses
  br label %_ZN13b3OpenCLArrayI9b3Vector3E19copyFromHostPointerEPKS0_mmb.exit

_ZN13b3OpenCLArrayI9b3Vector3E19copyFromHostPointerEPKS0_mmb.exit: ; preds = %bb.j, %bb.i, %_ZN13b3OpenCLArrayI9b3Vector3E6resizeEmb.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI9b3GpuFaceED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI22b3ConvexPolyhedronDataED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI15b3GpuChildShapeED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI12b3CollidableED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI15b3RigidBodyDataED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK13b3OpenCLArrayI18b3QuantizedBvhNodeE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !242  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !247  ; 2 uses
  %i.f = icmp slt i32 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE6resizeEiRKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !248
  %i.i = icmp slt i32 %i.h, %i.c
  br i1 %i.i, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE8allocateEi.exit.i.i: ; preds = %bb.c
  %sext = shl i64 %i.b, 32
  %i.j = ashr exact i64 %sext, 28
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE8allocateEi.exit.i.i
  %i.m = load i32, ptr %i.d, align 4, !tbaa !247  ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !173
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !173
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.v, i64 16, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !455

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE8allocateEi.exit.i.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.78, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.79)
  store i32 0, ptr %i.d, align 4, !tbaa !247
  br label %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !173
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull align 16 dereferenceable(16) %i.y, i64 16, i1 false)
  br label %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.k, %.split.i.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.c, %.split.i.i ], [ %i.c, %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.c, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !173 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE10deallocateEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !246, !range !91, !noundef !92
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE10deallocateEv.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !246
  store ptr %.0.i12.i.i, ptr %i.z, align 8, !tbaa !173
  store i32 %.0.i.i, ptr %i.g, align 8, !tbaa !248
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE10deallocateEv.exit.i.i, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ag = sext i32 %i.e to i64                    ; 4 uses
  %sext3 = shl i64 %i.b, 32
  %wide.trip.count.i = ashr exact i64 %sext3, 32  ; 2 uses
  %i.ah = sub i64 %i.b, %i.ag
  %xtraiter10 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.ag, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !173
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %indvars.iv.i.prol
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter10
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !456

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.ag, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.ak = sub nsw i64 %i.ag, %wide.trip.count.i
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE6resizeEiRKS0_.exit.loopexit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 5 uses
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !173
  %i.an = getelementptr inbounds [16 x i8], ptr %i.am, i64 %indvars.iv.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !173
  %i.ap = getelementptr [16 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !173
  %i.as = getelementptr [16 x i8], ptr %i.ar, i64 %indvars.iv.i
  %i.at = getelementptr i8, ptr %i.as, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !173
  %i.av = getelementptr [16 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.aw = getelementptr i8, ptr %i.av, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE6resizeEiRKS0_.exit.loopexit, label %.lr.ph.i.new, !llvm.loop !457

_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE6resizeEiRKS0_.exit.loopexit: ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !242
  br label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE6resizeEiRKS0_.exit

_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE6resizeEiRKS0_.exit: ; preds = %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE6resizeEiRKS0_.exit.loopexit, %bb.a
  %i.ax = phi i64 [ %.pre, %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE6resizeEiRKS0_.exit.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !247
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %_ZNK13b3OpenCLArrayI18b3QuantizedBvhNodeE17copyToHostPointerEPS0_mmb.exit, label %bb.g

bb.g:                                             ; preds = %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE6resizeEiRKS0_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !459
  %.not.i = icmp ugt i64 %i.ax, %i.az
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !173
  %i.bc = load ptr, ptr @__clewEnqueueReadBuffer, align 8, !tbaa !95
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !460
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !239
  %i.bh = shl i64 %i.ax, 4
  %i.bi = tail call i32 %i.bc(ptr noundef %i.be, ptr noundef %i.bg, i32 noundef 0, i64 noundef 0, i64 noundef %i.bh, ptr noundef nonnull %i.bb, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !458 ; 0 uses
  br i1 %2, label %bb.i, label %_ZNK13b3OpenCLArrayI18b3QuantizedBvhNodeE17copyToHostPointerEPS0_mmb.exit

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr @__clewFinish, align 8, !tbaa !95
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !460
  %i.bl = tail call i32 %i.bj(ptr noundef %i.bk), !inline_history !458 ; 0 uses
  br label %_ZNK13b3OpenCLArrayI18b3QuantizedBvhNodeE17copyToHostPointerEPS0_mmb.exit

bb.j:                                             ; preds = %bb.g
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.75, i32 noundef 285)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.80)
  br label %_ZNK13b3OpenCLArrayI18b3QuantizedBvhNodeE17copyToHostPointerEPS0_mmb.exit

_ZNK13b3OpenCLArrayI18b3QuantizedBvhNodeE17copyToHostPointerEPS0_mmb.exit: ; preds = %bb.j, %bb.i, %bb.h, %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE6resizeEiRKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK13b3OpenCLArrayI16b3BvhSubtreeInfoE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !463  ; 4 uses
  %i.c = trunc i64 %i.b to i32                    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !250
  %i.f = icmp slt i32 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE6resizeEiRKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !251
  %i.i = icmp slt i32 %i.h, %i.c
  br i1 %i.i, label %bb.c, label %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE6resizeEiRKS0_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE8allocateEi.exit.i.i: ; preds = %bb.c
  %sext = shl i64 %i.b, 32
  %i.j = ashr exact i64 %sext, 27
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE8allocateEi.exit.i.i
  %i.m = load i32, ptr %i.d, align 4, !tbaa !250  ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !163
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.q, ptr noundef nonnull align 16 dereferenceable(32) %i.s, i64 32, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !163
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.t, ptr noundef nonnull align 16 dereferenceable(32) %i.v, i64 32, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !461

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE8allocateEi.exit.i.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.78, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.79)
  store i32 0, ptr %i.d, align 4, !tbaa !250
  br label %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !163
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.w, ptr noundef nonnull align 16 dereferenceable(32) %i.y, i64 32, i1 false)
  br label %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.k, %.split.i.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.c, %.split.i.i ], [ %i.c, %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.c, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !163 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE10deallocateEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !249, !range !91, !noundef !92
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE10deallocateEv.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !249
  store ptr %.0.i12.i.i, ptr %i.z, align 8, !tbaa !163
  store i32 %.0.i.i, ptr %i.g, align 8, !tbaa !251
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !463
  br label %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE6resizeEiRKS0_.exit

_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE6resizeEiRKS0_.exit: ; preds = %bb.b, %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE10deallocateEv.exit.i.i, %bb.a
  %i.af = phi i64 [ %i.b, %bb.a ], [ %.pre.pre, %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE10deallocateEv.exit.i.i ], [ %i.b, %bb.b ] ; 3 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !250
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %_ZNK13b3OpenCLArrayI16b3BvhSubtreeInfoE17copyToHostPointerEPS0_mmb.exit, label %bb.g

bb.g:                                             ; preds = %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE6resizeEiRKS0_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !464
  %.not.i = icmp ugt i64 %i.af, %i.ah
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !163
  %i.ak = load ptr, ptr @__clewEnqueueReadBuffer, align 8, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !465
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !237
  %i.ap = shl i64 %i.af, 5
  %i.aq = tail call i32 %i.ak(ptr noundef %i.am, ptr noundef %i.ao, i32 noundef 0, i64 noundef 0, i64 noundef %i.ap, ptr noundef nonnull %i.aj, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !462 ; 0 uses
  br i1 %2, label %bb.i, label %_ZNK13b3OpenCLArrayI16b3BvhSubtreeInfoE17copyToHostPointerEPS0_mmb.exit

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr @__clewFinish, align 8, !tbaa !95
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !465
  %i.at = tail call i32 %i.ar(ptr noundef %i.as), !inline_history !462 ; 0 uses
  br label %_ZNK13b3OpenCLArrayI16b3BvhSubtreeInfoE17copyToHostPointerEPS0_mmb.exit

bb.j:                                             ; preds = %bb.g
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.75, i32 noundef 285)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.80)
  br label %_ZNK13b3OpenCLArrayI16b3BvhSubtreeInfoE17copyToHostPointerEPS0_mmb.exit

_ZNK13b3OpenCLArrayI16b3BvhSubtreeInfoE17copyToHostPointerEPS0_mmb.exit: ; preds = %bb.j, %bb.i, %bb.h, %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE6resizeEiRKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK13b3OpenCLArrayI9b3BvhInfoE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !470  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !253  ; 2 uses
  %i.f = icmp slt i32 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %_ZN20b3AlignedObjectArrayI9b3BvhInfoE6resizeEiRKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !254
  %i.i = icmp slt i32 %i.h, %i.c
  br i1 %i.i, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI9b3BvhInfoE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI9b3BvhInfoE8allocateEi.exit.i.i: ; preds = %bb.c
  %sext = shl i64 %i.b, 32
  %i.j = ashr exact i64 %sext, 26
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI9b3BvhInfoE8allocateEi.exit.i.i
  %i.m = load i32, ptr %i.d, align 4, !tbaa !253  ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI9b3BvhInfoE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !159
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.q, ptr noundef nonnull align 16 dereferenceable(64) %i.s, i64 64, i1 false), !tbaa.struct !471
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !159
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.t, ptr noundef nonnull align 16 dereferenceable(64) %i.v, i64 64, i1 false), !tbaa.struct !471
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI9b3BvhInfoE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !466

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI9b3BvhInfoE8allocateEi.exit.i.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.78, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.79)
  store i32 0, ptr %i.d, align 4, !tbaa !253
  br label %_ZNK20b3AlignedObjectArrayI9b3BvhInfoE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI9b3BvhInfoE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI9b3BvhInfoE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI9b3BvhInfoE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI9b3BvhInfoE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !159
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.w, ptr noundef nonnull align 16 dereferenceable(64) %i.y, i64 64, i1 false), !tbaa.struct !471
  br label %_ZNK20b3AlignedObjectArrayI9b3BvhInfoE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI9b3BvhInfoE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI9b3BvhInfoE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.k, %.split.i.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI9b3BvhInfoE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.c, %.split.i.i ], [ %i.c, %_ZNK20b3AlignedObjectArrayI9b3BvhInfoE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.c, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !159 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI9b3BvhInfoE10deallocateEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI9b3BvhInfoE4copyEiiPS0_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !252, !range !91, !noundef !92
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI9b3BvhInfoE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI9b3BvhInfoE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI9b3BvhInfoE10deallocateEv.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI9b3BvhInfoE4copyEiiPS0_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !252
  store ptr %.0.i12.i.i, ptr %i.z, align 8, !tbaa !159
  store i32 %.0.i.i, ptr %i.g, align 8, !tbaa !254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI9b3BvhInfoE10deallocateEv.exit.i.i, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ag = sext i32 %i.e to i64                    ; 4 uses
  %sext3 = shl i64 %i.b, 32
  %wide.trip.count.i = ashr exact i64 %sext3, 32  ; 2 uses
  %i.ah = sub i64 %i.b, %i.ag
  %xtraiter10 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.ag, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !159
  %i.aj = getelementptr inbounds [64 x i8], ptr %i.ai, i64 %indvars.iv.i.prol
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aj, i8 0, i64 64, i1 false)
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter10
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !467

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.ag, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.ak = sub nsw i64 %i.ag, %wide.trip.count.i
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN20b3AlignedObjectArrayI9b3BvhInfoE6resizeEiRKS0_.exit.loopexit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 5 uses
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !159
  %i.an = getelementptr inbounds [64 x i8], ptr %i.am, i64 %indvars.iv.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.an, i8 0, i64 64, i1 false)
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !159
  %i.ap = getelementptr [64 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aq, i8 0, i64 64, i1 false)
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !159
  %i.as = getelementptr [64 x i8], ptr %i.ar, i64 %indvars.iv.i
  %i.at = getelementptr i8, ptr %i.as, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.at, i8 0, i64 64, i1 false)
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !159
  %i.av = getelementptr [64 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.aw = getelementptr i8, ptr %i.av, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aw, i8 0, i64 64, i1 false)
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN20b3AlignedObjectArrayI9b3BvhInfoE6resizeEiRKS0_.exit.loopexit, label %.lr.ph.i.new, !llvm.loop !468

_ZN20b3AlignedObjectArrayI9b3BvhInfoE6resizeEiRKS0_.exit.loopexit: ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !470
  br label %_ZN20b3AlignedObjectArrayI9b3BvhInfoE6resizeEiRKS0_.exit

_ZN20b3AlignedObjectArrayI9b3BvhInfoE6resizeEiRKS0_.exit: ; preds = %_ZN20b3AlignedObjectArrayI9b3BvhInfoE6resizeEiRKS0_.exit.loopexit, %bb.a
  %i.ax = phi i64 [ %.pre, %_ZN20b3AlignedObjectArrayI9b3BvhInfoE6resizeEiRKS0_.exit.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !253
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %_ZNK13b3OpenCLArrayI9b3BvhInfoE17copyToHostPointerEPS0_mmb.exit, label %bb.g

bb.g:                                             ; preds = %_ZN20b3AlignedObjectArrayI9b3BvhInfoE6resizeEiRKS0_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !472
  %.not.i = icmp ugt i64 %i.ax, %i.az
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !159
  %i.bc = load ptr, ptr @__clewEnqueueReadBuffer, align 8, !tbaa !95
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !473
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !241
  %i.bh = shl i64 %i.ax, 6
  %i.bi = tail call i32 %i.bc(ptr noundef %i.be, ptr noundef %i.bg, i32 noundef 0, i64 noundef 0, i64 noundef %i.bh, ptr noundef nonnull %i.bb, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !469 ; 0 uses
  br i1 %2, label %bb.i, label %_ZNK13b3OpenCLArrayI9b3BvhInfoE17copyToHostPointerEPS0_mmb.exit

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr @__clewFinish, align 8, !tbaa !95
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !473
  %i.bl = tail call i32 %i.bj(ptr noundef %i.bk), !inline_history !469 ; 0 uses
  br label %_ZNK13b3OpenCLArrayI9b3BvhInfoE17copyToHostPointerEPS0_mmb.exit

bb.j:                                             ; preds = %bb.g
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.75, i32 noundef 285)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.80)
  br label %_ZNK13b3OpenCLArrayI9b3BvhInfoE17copyToHostPointerEPS0_mmb.exit

_ZNK13b3OpenCLArrayI9b3BvhInfoE17copyToHostPointerEPS0_mmb.exit: ; preds = %bb.j, %bb.i, %bb.h, %_ZN20b3AlignedObjectArrayI9b3BvhInfoE6resizeEiRKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK13b3OpenCLArrayI6b3AabbE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !478  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !244  ; 2 uses
  %i.f = icmp slt i32 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %_ZN20b3AlignedObjectArrayI6b3AabbE6resizeEiRKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !245
  %i.i = icmp slt i32 %i.h, %i.c
  br i1 %i.i, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI6b3AabbE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI6b3AabbE8allocateEi.exit.i.i: ; preds = %bb.c
  %sext = shl i64 %i.b, 32
  %i.j = ashr exact i64 %sext, 27
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI6b3AabbE8allocateEi.exit.i.i
  %i.m = load i32, ptr %i.d, align 4, !tbaa !244  ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !177
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.q, ptr noundef nonnull align 16 dereferenceable(32) %i.s, i64 32, i1 false), !tbaa.struct !479
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !177
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.t, ptr noundef nonnull align 16 dereferenceable(32) %i.v, i64 32, i1 false), !tbaa.struct !479
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !474

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI6b3AabbE8allocateEi.exit.i.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.78, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.79)
  store i32 0, ptr %i.d, align 4, !tbaa !244
  br label %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !177
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.w, ptr noundef nonnull align 16 dereferenceable(32) %i.y, i64 32, i1 false), !tbaa.struct !479
  br label %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.k, %.split.i.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.c, %.split.i.i ], [ %i.c, %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.c, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !177 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI6b3AabbE10deallocateEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !243, !range !91, !noundef !92
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI6b3AabbE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI6b3AabbE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI6b3AabbE10deallocateEv.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !243
  store ptr %.0.i12.i.i, ptr %i.z, align 8, !tbaa !177
  store i32 %.0.i.i, ptr %i.g, align 8, !tbaa !245
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI6b3AabbE10deallocateEv.exit.i.i, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ag = sext i32 %i.e to i64                    ; 4 uses
  %sext3 = shl i64 %i.b, 32
  %wide.trip.count.i = ashr exact i64 %sext3, 32  ; 2 uses
  %i.ah = sub i64 %i.b, %i.ag
  %xtraiter10 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.ag, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !177
  %i.aj = getelementptr inbounds [32 x i8], ptr %i.ai, i64 %indvars.iv.i.prol
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false)
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter10
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !475

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.ag, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.ak = sub nsw i64 %i.ag, %wide.trip.count.i
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN20b3AlignedObjectArrayI6b3AabbE6resizeEiRKS0_.exit.loopexit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 5 uses
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !177
  %i.an = getelementptr inbounds [32 x i8], ptr %i.am, i64 %indvars.iv.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.an, i8 0, i64 32, i1 false)
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !177
  %i.ap = getelementptr [32 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aq, i8 0, i64 32, i1 false)
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !177
  %i.as = getelementptr [32 x i8], ptr %i.ar, i64 %indvars.iv.i
  %i.at = getelementptr i8, ptr %i.as, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.at, i8 0, i64 32, i1 false)
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !177
  %i.av = getelementptr [32 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.aw = getelementptr i8, ptr %i.av, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aw, i8 0, i64 32, i1 false)
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN20b3AlignedObjectArrayI6b3AabbE6resizeEiRKS0_.exit.loopexit, label %.lr.ph.i.new, !llvm.loop !476

_ZN20b3AlignedObjectArrayI6b3AabbE6resizeEiRKS0_.exit.loopexit: ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !478
  br label %_ZN20b3AlignedObjectArrayI6b3AabbE6resizeEiRKS0_.exit

_ZN20b3AlignedObjectArrayI6b3AabbE6resizeEiRKS0_.exit: ; preds = %_ZN20b3AlignedObjectArrayI6b3AabbE6resizeEiRKS0_.exit.loopexit, %bb.a
  %i.ax = phi i64 [ %.pre, %_ZN20b3AlignedObjectArrayI6b3AabbE6resizeEiRKS0_.exit.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !244
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %_ZNK13b3OpenCLArrayI6b3AabbE17copyToHostPointerEPS0_mmb.exit, label %bb.g

bb.g:                                             ; preds = %_ZN20b3AlignedObjectArrayI6b3AabbE6resizeEiRKS0_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !480
  %.not.i = icmp ugt i64 %i.ax, %i.az
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !177
  %i.bc = load ptr, ptr @__clewEnqueueReadBuffer, align 8, !tbaa !95
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !481
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !214
  %i.bh = shl i64 %i.ax, 5
  %i.bi = tail call i32 %i.bc(ptr noundef %i.be, ptr noundef %i.bg, i32 noundef 0, i64 noundef 0, i64 noundef %i.bh, ptr noundef nonnull %i.bb, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !477 ; 0 uses
  br i1 %2, label %bb.i, label %_ZNK13b3OpenCLArrayI6b3AabbE17copyToHostPointerEPS0_mmb.exit

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr @__clewFinish, align 8, !tbaa !95
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !481
  %i.bl = tail call i32 %i.bj(ptr noundef %i.bk), !inline_history !477 ; 0 uses
  br label %_ZNK13b3OpenCLArrayI6b3AabbE17copyToHostPointerEPS0_mmb.exit

bb.j:                                             ; preds = %bb.g
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.75, i32 noundef 285)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.80)
  br label %_ZNK13b3OpenCLArrayI6b3AabbE17copyToHostPointerEPS0_mmb.exit

_ZNK13b3OpenCLArrayI6b3AabbE17copyToHostPointerEPS0_mmb.exit: ; preds = %bb.j, %bb.i, %bb.h, %_ZN20b3AlignedObjectArrayI6b3AabbE6resizeEiRKS0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI6b3AabbED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI9b3BvhInfoED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27
  unreachable
}

declare void @_ZN12b3LauncherCL9setBufferEP7_cl_mem(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI6b3Int4E12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !183  ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !255
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !262
  %i.j = icmp ult i64 %i.i, %i.d
  br i1 %i.j, label %bb.c, label %_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.l = load i8, ptr %i.k, align 1, !tbaa !264, !range !91, !noundef !92
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.n = shl nsw i64 %i.d, 4
  %i.o = load ptr, ptr @__clewCreateBuffer, align 8, !tbaa !95
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !265
  %i.r = call ptr %i.o(ptr noundef %i.q, i64 noundef 1, i64 noundef %i.n, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !482
  %i.s = load i32, ptr %i.a, align 4, !tbaa !38
  %.not.i.i = icmp eq i32 %i.s, 0                 ; 2 uses
  br i1 %.not.i.i, label %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.75, i32 noundef 166)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.76)
  br label %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i.i

_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i.i: ; preds = %bb.d, %.thread.i.i
  %.01017.i.i = phi i64 [ 0, %.thread.i.i ], [ %i.d, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !194  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i8, ptr %i.v, align 8, !range !91
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.x, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.i

bb.e:                                             ; preds = %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i.i
  %i.y = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !95
  %i.z = call i32 %i.y(ptr noundef nonnull %i.u), !inline_history !483 ; 0 uses
  br label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.i

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !194 ; 2 uses
  %.not.i12.i.i = icmp ne ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i8, ptr %i.ac, align 8, !range !91
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i13.i.i = select i1 %.not.i12.i.i, i1 %i.ae, i1 false
  br i1 %or.cond.i13.i.i, label %bb.g, label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread12.i

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !95
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %i.ab), !inline_history !483 ; 0 uses
  br label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread12.i

_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread12.i: ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.h

_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.i:    ; preds = %bb.e, %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i.i
  store ptr %i.r, ptr %i.t, align 8, !tbaa !194
  store i64 %.01017.i.i, ptr %i.h, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %.not.i.i, label %_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.i, %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread12.i
  br label %_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb.exit

_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb.exit:       ; preds = %bb.a, %bb.b, %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.i, %bb.h
  %storemerge.i = phi i64 [ 0, %bb.h ], [ %i.d, %bb.b ], [ %i.d, %bb.a ], [ %i.d, %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.i ]
  store i64 %storemerge.i, ptr %i.e, align 8, !tbaa !255
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN13b3OpenCLArrayI6b3Int4E19copyFromHostPointerEPKS0_mmb.exit, label %bb.i

bb.i:                                             ; preds = %_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !182
  %i.aj = shl nsw i64 %i.d, 4
  %i.ak = load ptr, ptr @__clewEnqueueWriteBuffer, align 8, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !263
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !194
  %i.ap = call i32 %i.ak(ptr noundef %i.am, ptr noundef %i.ao, i32 noundef 0, i64 noundef 0, i64 noundef %i.aj, ptr noundef nonnull %i.ai, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !484 ; 0 uses
  br i1 %2, label %bb.j, label %_ZN13b3OpenCLArrayI6b3Int4E19copyFromHostPointerEPKS0_mmb.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr @__clewFinish, align 8, !tbaa !95
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !263
  %i.as = call i32 %i.aq(ptr noundef %i.ar), !inline_history !484 ; 0 uses
  br label %_ZN13b3OpenCLArrayI6b3Int4E19copyFromHostPointerEPKS0_mmb.exit

_ZN13b3OpenCLArrayI6b3Int4E19copyFromHostPointerEPKS0_mmb.exit: ; preds = %bb.j, %bb.i, %_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !255
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !262
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.c, label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.i = load i8, ptr %i.h, align 1, !tbaa !264, !range !91, !noundef !92
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.k = shl i64 %1, 4
  %i.l = load ptr, ptr @__clewCreateBuffer, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !265
  %i.o = call ptr %i.l(ptr noundef %i.n, i64 noundef 1, i64 noundef %i.k, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !485 ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !38
  %.not.i = icmp eq i32 %i.p, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %.thread.i

.thread.i:                                        ; preds = %bb.d
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.75, i32 noundef 166)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.76)
  br label %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i

bb.e:                                             ; preds = %bb.d
  br i1 %2, label %bb.f, label %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.b, align 8, !tbaa !255  ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @__clewEnqueueCopyBuffer, align 8, !tbaa !95
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !263
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !194
  %i.x = shl i64 %i.q, 4
  %i.y = call i32 %i.s(ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.o, i64 noundef 0, i64 noundef 0, i64 noundef %i.x, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !486 ; 0 uses
  br label %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i

_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %.thread.i
  %.01017.i = phi i64 [ 0, %.thread.i ], [ %1, %bb.e ], [ %1, %bb.f ], [ %1, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !194 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i8, ptr %i.ab, align 8, !range !91
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit

bb.h:                                             ; preds = %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i
  %i.ae = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !95
  %i.af = call i32 %i.ae(ptr noundef nonnull %i.aa), !inline_history !487 ; 0 uses
  br label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit

bb.i:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !194 ; 2 uses
  %.not.i12.i = icmp ne ptr %i.ah, null
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load i8, ptr %i.ai, align 8, !range !91
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond.i13.i = select i1 %.not.i12.i, i1 %i.ak, i1 false
  br i1 %or.cond.i13.i, label %bb.j, label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread12

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !95
  %i.am = tail call i32 %i.al(ptr noundef nonnull %i.ah), !inline_history !487 ; 0 uses
  br label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread12

_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread12: ; preds = %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.k

_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit:      ; preds = %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i, %bb.h
  store ptr %i.o, ptr %i.z, align 8, !tbaa !194
  store i64 %.01017.i, ptr %i.e, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %.not.i, label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread12, %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit
  br label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread

_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit.thread: ; preds = %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit, %bb.a, %bb.b, %bb.k
  %storemerge = phi i64 [ 0, %bb.k ], [ %1, %bb.b ], [ %1, %bb.a ], [ %1, %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit ]
  %.010 = phi i1 [ false, %bb.k ], [ true, %bb.b ], [ true, %bb.a ], [ true, %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit ]
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !255
  ret i1 %.010
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #21

declare ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #18

declare ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11b3Matrix3x311getRotationER12b3Quaternion(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 16, !tbaa !44  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !44 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 8, !tbaa !44 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
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
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #26 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 8, !tbaa !44
  %i.t = load float, ptr %i.m, align 4, !tbaa !44
  %i.u = load float, ptr %i.j, align 16, !tbaa !44
  %i.v = load float, ptr %i.k, align 16, !tbaa !44
  %i.w = load float, ptr %i.o, align 8, !tbaa !44
  %i.x = load float, ptr %i.p, align 4, !tbaa !44
  %i.y = fsub float %i.v, %i.x
  %i.z = fsub float %i.w, %i.u
  %i.aa = fsub float %i.t, %i.s
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 3
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
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
  %i.aw = load float, ptr %i.av, align 4, !tbaa !44
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !44
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !44
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #26 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !44
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !44
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !44
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !44
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !44
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !44
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !44
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !44
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !44
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !44
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 16, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare void @b3EnterProfileZone(ptr noundef) local_unnamed_addr #18

declare void @b3LeaveProfileZone() local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZL11TestSepAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_RK20b3AlignedObjectArrayIS2_ESB_Rf(i32 %.76.val, i32 %.80.val, i32 %.76.val1, i32 %.80.val3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %4, ptr nofree readonly captures(none) %.16.val, ptr nofree readonly captures(none) %.16.val5, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 8, !tbaa !37 ; 5 uses
  %i.d = fneg float %i.c                          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load float, ptr %i.e, align 4, !tbaa !44 ; 4 uses
  %i.g = load <3 x float>, ptr %4, align 16, !tbaa !44 ; 5 uses
  %i.h = shufflevector <3 x float> %i.g, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 2>
  %i.i = load float, ptr %4, align 16, !tbaa !44  ; 5 uses
  %i.j = extractelement <3 x float> %i.g, i64 2   ; 6 uses
  %i.k = extractelement <3 x float> %i.g, i64 1   ; 4 uses
  %i.l = load <2 x float>, ptr %1, align 16, !tbaa !37 ; 3 uses
  %i.m = load float, ptr %i.a, align 4, !tbaa !37 ; 4 uses
  %i.n = extractelement <2 x float> %i.l, i64 0   ; 4 uses
  %i.o = fneg float %i.n                          ; 2 uses
  %i.p = fneg float %i.m                          ; 2 uses
  %i.q = shufflevector <3 x float> %i.g, <3 x float> poison, <4 x i32> <i32 2, i32 poison, i32 1, i32 1>
  %i.r = insertelement <4 x float> %i.q, float %i.i, i64 1 ; 2 uses
  %i.s = insertelement <4 x float> poison, float %i.p, i64 0
  %i.t = insertelement <4 x float> %i.s, float %i.d, i64 1
  %i.u = insertelement <4 x float> %i.t, float %i.o, i64 2
  %i.v = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.w = shufflevector <4 x float> %i.u, <4 x float> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.x = fmul <4 x float> %i.r, %i.w
  %i.y = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.z = insertelement <2 x float> %i.y, float %i.f, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ab = shufflevector <3 x float> %i.g, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> %i.r, <4 x i32> <i32 5, i32 1, i32 2, i32 5>
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.ac, <4 x float> %i.x) ; 4 uses
  %i.ae = extractelement <4 x float> %i.ad, i64 0
  %i.af = tail call float @llvm.fmuladd.f32(float %i.c, float %i.k, float %i.ae) ; 3 uses
  %i.ag = extractelement <4 x float> %i.ad, i64 1
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.n, float %i.j, float %i.ag) ; 3 uses
  %i.ai = extractelement <4 x float> %i.ad, i64 2
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.m, float %i.i, float %i.ai) ; 3 uses
  %i.ak = extractelement <4 x float> %i.ad, i64 3
  %i.al = tail call float @llvm.fmuladd.f32(float %i.c, float %i.j, float %i.ak) ; 3 uses
  %i.am = fmul float %i.f, %i.af
  %i.an = tail call float @llvm.fmuladd.f32(float %i.al, float %i.n, float %i.am)
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.c, float %i.an)
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.p, float %i.ao)
  %i.aq = fmul float %i.f, %i.ah
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.al, float %i.m, float %i.aq)
  %i.as = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.n, float %i.ar)
  %i.at = tail call float @llvm.fmuladd.f32(float %i.af, float %i.d, float %i.as)
  %i.au = fmul float %i.f, %i.aj
  %i.av = tail call float @llvm.fmuladd.f32(float %i.al, float %i.c, float %i.au)
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.af, float %i.m, float %i.av)
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.o, float %i.aw)
  %i.ay = load <2 x float>, ptr %0, align 16, !tbaa !37 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZL11TestSepAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_RK20b3AlignedObjectArrayIS2_ESB_Rf:bb.a
  %i.bz = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ca = insertelement <4 x float> %i.bz, float %i.bw, i64 0
  %i.cb = insertelement <4 x float> %i.ca, float %i.bt, i64 2
  %i.cc = insertelement <4 x float> %i.cb, float %i.bq, i64 3
  %i.cd = fmul <4 x float> %i.ab, %i.cc
  %i.ce = insertelement <2 x float> %i.ay, float %i.by, i64 1
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.h, <4 x float> %i.cd) ; 4 uses
  %i.ch = extractelement <4 x float> %i.cg, i64 1
  %i.ci = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.j, float %i.ch) ; 2 uses
  %i.cj = fadd float %i.ci, %i.bo                 ; 2 uses
  %i.ck = fadd float %i.ci, %.323                 ; 2 uses
  %i.cl = extractelement <4 x float> %i.cg, i64 2
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.k, float %i.cl) ; 3 uses
  %i.cn = extractelement <4 x float> %i.cg, i64 0
  %i.co = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.j, float %i.cn) ; 3 uses
  %i.cp = extractelement <4 x float> %i.cg, i64 3
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.i, float %i.cp) ; 3 uses
  %i.cr = fmul float %i.k, %i.bs
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.i, float %i.cr)
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.j, float %i.cs) ; 3 uses
  %i.cu = fmul float %i.by, %i.cm
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.bp, float %i.cu)
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.co, float %i.bv, float %i.cv)
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.bt, float %i.cw)
  %i.cy = fmul float %i.by, %i.co
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.bs, float %i.cy)
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.bp, float %i.cz)
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.bw, float %i.da)
  %i.dc = fmul float %i.by, %i.cq
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.bv, float %i.dc)
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.bs, float %i.dd)
  %i.df = tail call float @llvm.fmuladd.f32(float %i.co, float %i.bq, float %i.de)
  %i.dg = load float, ptr %2, align 16, !tbaa !37
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !37
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !37
  %i.dl = icmp sgt i32 %.76.val1, 0
  br i1 %i.dl, label %.lr.ph.i22, label %_Z7projectRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30

.lr.ph.i22:                                       ; preds = %_Z7projectRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit
  %i.dm = sext i32 %.80.val3 to i64
  %wide.trip.count.i23 = zext nneg i32 %.76.val1 to i64
  %invariant.gep.i24 = getelementptr [16 x i8], ptr %.16.val5, i64 %i.dm
  br label %bb.d

._crit_edge.i20:                                  ; preds = %bb.d
  %i.dn = fcmp ogt float %.219, %.2
  br i1 %i.dn, label %bb.e, label %_Z7projectRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30

bb.d:                                             ; preds = %bb.d, %.lr.ph.i22
  %.118 = phi float [ f0x7F7FFFFF, %.lr.ph.i22 ], [ %.219, %bb.d ] ; 2 uses
  %.1 = phi float [ f0xFF7FFFFF, %.lr.ph.i22 ], [ %.2, %bb.d ] ; 2 uses
  %indvars.iv.i25 = phi i64 [ 0, %.lr.ph.i22 ], [ %indvars.iv.next.i27, %bb.d ] ; 2 uses
  %gep.i26 = getelementptr [16 x i8], ptr %invariant.gep.i24, i64 %indvars.iv.i25 ; 3 uses
  %i.do = load float, ptr %gep.i26, align 16, !tbaa !37
  %i.dp = getelementptr inbounds nuw i8, ptr %gep.i26, i64 4
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !37
  %i.dr = fmul float %i.db, %i.dq
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.do, float %i.cx, float %i.dr)
  %i.dt = getelementptr inbounds nuw i8, ptr %gep.i26, i64 8
  %i.du = load float, ptr %i.dt, align 8, !tbaa !37
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %i.du, float %i.df, float %i.ds) ; 4 uses
  %i.dw = fcmp olt float %i.dv, %.118
  %.219 = select i1 %i.dw, float %i.dv, float %.118 ; 4 uses
  %i.dx = fcmp ogt float %i.dv, %.1
  %.2 = select i1 %i.dx, float %i.dv, float %.1   ; 4 uses
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not.i28 = icmp eq i64 %indvars.iv.next.i27, %wide.trip.count.i23
  br i1 %exitcond.not.i28, label %._crit_edge.i20, label %bb.d, !llvm.loop !10

bb.e:                                             ; preds = %._crit_edge.i20
  br label %_Z7projectRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30

_Z7projectRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30: ; preds = %_Z7projectRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit, %._crit_edge.i20, %bb.e
  %.3 = phi float [ %.2, %._crit_edge.i20 ], [ %.219, %bb.e ], [ f0x7F7FFFFF, %_Z7projectRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit ]
  %i.dy = phi float [ %.219, %._crit_edge.i20 ], [ %.2, %bb.e ], [ f0xFF7FFFFF, %_Z7projectRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit ]
  %i.dz = fmul float %i.k, %i.di
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.i, float %i.dz)
  %i.eb = tail call noundef float @llvm.fmuladd.f32(float %i.dk, float %i.j, float %i.ea) ; 2 uses
  %i.ec = fadd float %i.eb, %i.dy                 ; 2 uses
  %i.ed = fadd float %i.eb, %.3                   ; 2 uses
  %i.ee = fcmp uge float %i.ck, %i.ec
  %i.ef = fcmp uge float %i.ed, %i.cj
  %or.cond.not = select i1 %i.ee, i1 %i.ef, i1 false ; 2 uses
  br i1 %or.cond.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_Z7projectRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30
  %i.eg = fsub float %i.ck, %i.ec                 ; 2 uses
  %i.eh = fsub float %i.ed, %i.cj                 ; 2 uses
  %i.ei = fcmp olt float %i.eg, %i.eh
  %i.ej = select i1 %i.ei, float %i.eg, float %i.eh
  store float %i.ej, ptr %5, align 4, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %_Z7projectRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30, %bb.f
  ret i1 %or.cond.not
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL18b3MprConvexSupportiiPK15b3RigidBodyDataPK22b3ConvexPolyhedronDataPK12b3CollidablePK9b3Vector3PS8_SA_SB_i(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) unnamed_addr #6 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [80 x i8], ptr %1, i64 %i.a ; 7 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.515.0.copyload = load float, ptr %.sroa.515.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load <2 x float>, ptr %i.b, align 16
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8 ; 9 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 9 uses
  %i.e = fneg float %.sroa.7.0.copyload           ; 2 uses
  %i.f = load <2 x float>, ptr %i.c, align 16     ; 3 uses
  %.sroa.59.0.copyload = load float, ptr %.sroa.59.0..sroa_idx, align 4 ; 9 uses
  %i.g = load <3 x float>, ptr %5, align 16, !tbaa !37 ; 5 uses
  %i.h = shufflevector <3 x float> %i.g, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.i = load float, ptr %5, align 16, !tbaa !37
  %i.j = extractelement <2 x float> %i.f, i64 0   ; 10 uses
  %i.k = fneg float %i.j                          ; 2 uses
  %i.l = fneg float %.sroa.59.0.copyload          ; 2 uses
  %i.m = shufflevector <2 x float> %i.f, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.n = shufflevector <3 x float> %i.g, <3 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.o = insertelement <4 x float> poison, float %i.e, i64 0
  %i.p = insertelement <4 x float> %i.o, float %i.k, i64 1
  %i.q = insertelement <4 x float> %i.p, float %i.l, i64 2
  %i.r = shufflevector <3 x float> %i.g, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.s = shufflevector <4 x float> %i.q, <4 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.t = fmul <4 x float> %i.n, %i.s
  %i.u = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.v = insertelement <2 x float> %i.u, float %.sroa.9.0.copyload, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> %i.h, <4 x float> %i.t) ; 4 uses
  %i.y = extractelement <4 x float> %i.x, i64 2
  %i.z = extractelement <3 x float> %i.g, i64 1
  %i.aa = tail call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.z, float %i.y) ; 3 uses
  %i.ab = extractelement <4 x float> %i.x, i64 0
  %i.ac = extractelement <3 x float> %i.g, i64 2  ; 2 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.j, float %i.ac, float %i.ab) ; 3 uses
  %i.ae = extractelement <4 x float> %i.x, i64 1
  %i.af = tail call float @llvm.fmuladd.f32(float %.sroa.59.0.copyload, float %i.i, float %i.ae) ; 3 uses
  %i.ag = extractelement <4 x float> %i.x, i64 3
  %i.ah = tail call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.ac, float %i.ag) ; 3 uses
  %i.ai = fmul float %.sroa.9.0.copyload, %i.aa
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.j, float %i.ai)
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ad, float %.sroa.7.0.copyload, float %i.aj)
  %i.al = tail call float @llvm.fmuladd.f32(float %i.af, float %i.l, float %i.ak)
  %i.am = fmul float %.sroa.9.0.copyload, %i.ad
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ah, float %.sroa.59.0.copyload, float %i.am)
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.af, float %i.j, float %i.an)
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.e, float %i.ao)
  %i.aq = fmul float %.sroa.9.0.copyload, %i.af
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.ah, float %.sroa.7.0.copyload, float %i.aq)
  %i.as = tail call float @llvm.fmuladd.f32(float %i.aa, float %.sroa.59.0.copyload, float %i.ar)
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.k, float %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.av = load i32, ptr %i.au, align 16, !tbaa !33
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [16 x i8], ptr %3, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !37
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [96 x i8], ptr %2, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 76
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !45 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i, label %_Z23b3LocalGetSupportVertexRK9b3Vector3PK22b3ConvexPolyhedronDataPS0_.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bg = load i32, ptr %i.bf, align 16, !tbaa !46 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bh
  %wide.trip.count.i.i = zext nneg i32 %i.bd to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 3 uses
  %.019.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.1.i.i, %bb.b ]
  %.01417.i.i = phi float [ f0xFF7FFFFF, %.lr.ph.i.i ], [ %.115.i.i, %bb.b ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %indvars.iv.i.i ; 3 uses
  %i.bk = load float, ptr %i.bj, align 16, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !37
  %i.bn = fmul float %i.ap, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.al, float %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !37
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.at, float %i.bo) ; 2 uses
  %i.bs = fcmp ogt float %i.br, %.01417.i.i       ; 2 uses
  %.115.i.i = select i1 %i.bs, float %i.br, float %.01417.i.i
  %i.bt = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %.1.i.i = select i1 %i.bs, i32 %i.bt, i32 %.019.i.i ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_Z8b3MaxDotRK9b3Vector3PS0_iPf.exit.i, label %bb.b, !llvm.loop !488

_Z8b3MaxDotRK9b3Vector3PS0_iPf.exit.i:            ; preds = %bb.b
  %i.bu = tail call i32 @llvm.smax.i32(i32 %.1.i.i, i32 0)
  %i.bv = add nsw i32 %i.bu, %i.bg
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bw ; 2 uses
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %i.bx, align 16
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.3.0.copyload.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !37
  %i.by = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.07.0.copyload.i, 0
  %i.bz = insertvalue { <2 x float>, <2 x float> } %i.by, <2 x float> %.sroa.3.0.copyload.i, 1
  br label %_Z23b3LocalGetSupportVertexRK9b3Vector3PK22b3ConvexPolyhedronDataPS0_.exit

_Z23b3LocalGetSupportVertexRK9b3Vector3PK22b3ConvexPolyhedronDataPS0_.exit: ; preds = %bb.a, %_Z8b3MaxDotRK9b3Vector3PS0_iPf.exit.i
  %.fca.1.insert.merged.i = phi { <2 x float>, <2 x float> } [ %i.bz, %_Z8b3MaxDotRK9b3Vector3PS0_iPf.exit.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.ca = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i, 0 ; 4 uses
  %i.cb = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i, 1 ; 2 uses
  %i.cc = fmul float %.sroa.59.0.copyload, %.sroa.59.0.copyload
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.cc)
  %i.ce = tail call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %.sroa.7.0.copyload, float %i.cd)
  %i.cf = tail call noundef float @llvm.fmuladd.f32(float %.sroa.9.0.copyload, float %.sroa.9.0.copyload, float %i.ce)
  %i.cg = fdiv float 2.000000e+00, %i.cf          ; 3 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.ca, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.ca, i64 1
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.cb, i64 0
  %i.ch = fmul float %i.j, %i.cg                  ; 2 uses
  %i.ci = fmul float %.sroa.59.0.copyload, %i.cg  ; 3 uses
  %i.cj = fmul float %.sroa.9.0.copyload, %i.ch   ; 2 uses
  %i.ck = fmul float %.sroa.9.0.copyload, %i.ci   ; 2 uses
  %i.cl = fmul float %i.j, %i.ch                  ; 2 uses
  %i.cm = fmul float %i.j, %i.ci                  ; 2 uses
  %i.cn = fmul float %.sroa.7.0.copyload, %i.cg   ; 4 uses
  %i.co = fmul float %.sroa.59.0.copyload, %i.ci  ; 2 uses
  %i.cp = fmul float %.sroa.59.0.copyload, %i.cn  ; 2 uses
  %i.cq = fmul float %i.j, %i.cn                  ; 2 uses
  %i.cr = fmul float %.sroa.7.0.copyload, %i.cn   ; 2 uses
  %i.cs = fadd float %i.co, %i.cr
  %i.ct = fsub float 1.000000e+00, %i.cs
  %i.cu = fadd float %i.cl, %i.cr
  %i.cv = fmul float %.sroa.9.0.copyload, %i.cn   ; 2 uses
  %i.cw = fadd float %i.cm, %i.cv
  %i.cx = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cm, i64 0
  %i.cy = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.cu, i64 1
  %i.da = fsub <2 x float> %i.cx, %i.cz
  %i.db = fsub float %i.cp, %i.cj
  %i.dc = fadd float %i.cq, %i.ck
  %i.dd = fsub float %i.cq, %i.ck
  %i.de = fadd float %i.cp, %i.cj
  %i.df = fadd float %i.cl, %i.co
  %i.dg = fsub float 1.000000e+00, %i.df
  %i.dh = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.di = fmul <2 x float> %i.da, %i.dh
  %i.dj = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.cw, i64 1
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dl, <2 x float> %i.di)
  %i.dn = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.db, i64 1
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.dp, <2 x float> %i.dm)
  %i.dr = fmul float %i.de, %.sroa.0.4.vec.extract
  %i.ds = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract, float %i.dd, float %i.dr)
  %i.dt = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float %i.dg, float %i.ds)
  %i.du = fadd <2 x float> %i.d, %i.dq
  %i.dv = fadd float %.sroa.515.0.copyload, %i.dt
  %.sroa.3.12.vec.insert.i.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dv, i64 0
  store <2 x float> %i.du, ptr %6, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i4.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef float @_Z22b3MprVec3PointTriDist2PK9b3Vector3S1_S1_S1_PS_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.h = load float, ptr %i.g, align 8, !tbaa !37 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load float, ptr %i.j, align 8, !tbaa !37
  %i.l = load <2 x float>, ptr %2, align 16, !tbaa !37 ; 2 uses
  %i.m = load <3 x float>, ptr %1, align 16, !tbaa !37 ; 5 uses
  %i.n = shufflevector <3 x float> %i.m, <3 x float> poison, <3 x i32> <i32 poison, i32 0, i32 poison>
  %i.o = load <2 x float>, ptr %3, align 16, !tbaa !37 ; 4 uses
  %i.p = shufflevector <2 x float> %i.o, <2 x float> %i.l, <2 x i32> <i32 0, i32 2>
  %i.q = shufflevector <3 x float> %i.m, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = fsub <2 x float> %i.p, %i.q              ; 3 uses
  %i.s = shufflevector <2 x float> %i.o, <2 x float> %i.l, <2 x i32> <i32 1, i32 3>
  %i.t = shufflevector <3 x float> %i.m, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.u = fsub <2 x float> %i.s, %i.t              ; 3 uses
  %i.v = insertelement <2 x float> poison, float %i.h, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.d, i64 1
  %i.x = shufflevector <3 x float> %i.m, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 3 uses
  %i.y = fsub <2 x float> %i.w, %i.x              ; 3 uses
  %i.z = load <2 x float>, ptr %0, align 16, !tbaa !37
  %i.aa = shufflevector <2 x float> %i.q, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.ab = shufflevector <2 x float> %i.z, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.ac = shufflevector <3 x float> %i.ab, <3 x float> %i.n, <2 x i32> <i32 0, i32 4>
  %i.ad = fsub <2 x float> %i.aa, %i.ac           ; 5 uses
  %i.ae = shufflevector <2 x float> %i.t, <2 x float> %i.o, <2 x i32> <i32 0, i32 3>
  %i.af = shufflevector <3 x float> %i.ab, <3 x float> %i.m, <2 x i32> <i32 1, i32 4>
  %i.ag = fsub <2 x float> %i.ae, %i.af           ; 6 uses
  %i.ah = insertelement <2 x float> %i.x, float %i.h, i64 1
  %i.ai = insertelement <2 x float> %i.x, float %i.k, i64 0
  %i.aj = fsub <2 x float> %i.ah, %i.ai           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.ag, %i.ag
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.ak)
  %i.an = extractelement <2 x float> %i.aj, i64 0 ; 2 uses
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.am)
  %i.ap = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = fmul <2 x float> %i.ap, %i.ag
  %i.ar = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.ad, <2 x float> %i.aq)
  %i.at = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.au = fmul <2 x float> %i.at, %i.u
  %i.av = fmul <2 x float> %i.at, %i.ag
  %i.aw = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.aj, <2 x float> %i.as) ; 4 uses
  %i.ay = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.r, <2 x float> %i.au)
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.ad, <2 x float> %i.av)
  %i.bb = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.y, <2 x float> %i.az) ; 4 uses
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.aj, <2 x float> %i.ba) ; 2 uses
  %i.be = fneg <2 x float> %i.bd
  %i.bf = shufflevector <2 x float> %i.ax, <2 x float> %i.bc, <2 x i32> <i32 1, i32 2>
  %i.bg = fmul <2 x float> %i.bf, %i.be
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.bc, <2 x float> %i.bg) ; 2 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  %i.bj = extractelement <2 x float> %i.bh, i64 1
  %i.bk = fdiv float %i.bi, %i.bj                 ; 12 uses
  %i.bl = fneg float %i.bk
  %i.bm = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.bn = fneg float %i.bm
  %i.bo = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bo, float %i.bn)
  %i.bq = extractelement <2 x float> %i.ax, i64 1 ; 2 uses
  %i.br = fdiv float %i.bp, %i.bq                 ; 12 uses
  %i.bs = tail call noundef float @llvm.fabs.f32(float %i.bk) ; 3 uses
  %i.bt = fcmp olt float %i.bs, f0x34000000
  %i.bu = fcmp ogt float %i.bk, 0.000000e+00
  %or.cond = or i1 %i.bu, %i.bt
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.bv = fadd float %i.bk, -1.000000e+00
  %i.bw = tail call noundef float @llvm.fabs.f32(float %i.bv) ; 2 uses
  %i.bx = fcmp olt float %i.bw, f0x34000000
  br i1 %i.bx, label %_Z7b3MprEqff.exit.thread, label %_Z7b3MprEqff.exit

_Z7b3MprEqff.exit:                                ; preds = %bb.b
  %i.by = fcmp uge float %i.bs, 1.000000e+00
  %i.bz = fmul float %i.bs, f0x34000000
  %i.ca = fcmp olt float %i.bw, %i.bz
  %.0.shrunk.i = and i1 %i.by, %i.ca
  %i.cb = fcmp olt float %i.bk, 1.000000e+00
  %or.cond3 = or i1 %i.cb, %.0.shrunk.i
  br i1 %or.cond3, label %_Z7b3MprEqff.exit.thread, label %bb.f

_Z7b3MprEqff.exit.thread:                         ; preds = %bb.b, %_Z7b3MprEqff.exit
  %i.cc = tail call noundef float @llvm.fabs.f32(float %i.br) ; 3 uses
  %i.cd = fcmp olt float %i.cc, f0x34000000
  %i.ce = fcmp ogt float %i.br, 0.000000e+00
  %or.cond5 = or i1 %i.ce, %i.cd
  br i1 %or.cond5, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_Z7b3MprEqff.exit.thread
  %i.cf = fadd float %i.br, -1.000000e+00
  %i.cg = tail call noundef float @llvm.fabs.f32(float %i.cf) ; 2 uses
  %i.ch = fcmp olt float %i.cg, f0x34000000
  br i1 %i.ch, label %_Z7b3MprEqff.exit105.thread, label %_Z7b3MprEqff.exit105

_Z7b3MprEqff.exit105:                             ; preds = %bb.c
  %i.ci = fcmp uge float %i.cc, 1.000000e+00
  %i.cj = fmul float %i.cc, f0x34000000
  %i.ck = fcmp olt float %i.cg, %i.cj
  %.0.shrunk.i103 = and i1 %i.ci, %i.ck
  %i.cl = fcmp olt float %i.br, 1.000000e+00
  %or.cond7 = or i1 %i.cl, %.0.shrunk.i103
  br i1 %or.cond7, label %_Z7b3MprEqff.exit105.thread, label %bb.f

_Z7b3MprEqff.exit105.thread:                      ; preds = %bb.c, %_Z7b3MprEqff.exit105
  %i.cm = fadd float %i.bk, %i.br                 ; 3 uses
  %i.cn = fadd float %i.cm, -1.000000e+00
  %i.co = tail call noundef float @llvm.fabs.f32(float %i.cn) ; 2 uses
  %i.cp = fcmp olt float %i.co, f0x34000000
  br i1 %i.cp, label %_Z7b3MprEqff.exit108.thread, label %_Z7b3MprEqff.exit108

_Z7b3MprEqff.exit108:                             ; preds = %_Z7b3MprEqff.exit105.thread
  %i.cq = tail call noundef float @llvm.fabs.f32(float %i.cm) ; 2 uses
  %i.cr = fcmp uge float %i.cq, 1.000000e+00
end_hunk_2
begin_hunk_3_@llvm.fmuladd.v3f32
!244 = !{!176, !25, i64 4}
!245 = !{!176, !25, i64 8}
!246 = !{!172, !70, i64 24}
!247 = !{!172, !25, i64 4}
!248 = !{!172, !25, i64 8}
!249 = !{!162, !70, i64 24}
!250 = !{!162, !25, i64 4}
!251 = !{!162, !25, i64 8}
!252 = !{!158, !70, i64 24}
!253 = !{!158, !25, i64 4}
!254 = !{!158, !25, i64 8}
!255 = !{!193, !68, i64 8}
!256 = !{!203, !68, i64 16}
!257 = !{!203, !70, i64 49}
!258 = !{!203, !64, i64 32}
!259 = !{!203, !68, i64 8}
!260 = !{!203, !66, i64 40}
!261 = !{!74, !68, i64 8}
!262 = !{!193, !68, i64 16}
!263 = !{!193, !66, i64 40}
!264 = !{!193, !70, i64 49}
!265 = !{!193, !64, i64 32}
!266 = distinct !{!266, !39}
!267 = distinct !{!267, !39}
!268 = distinct !{!268, !39}
!269 = distinct !{!269, !39}
!270 = distinct !{!270, !39}
!271 = distinct !{!271, !39}
!272 = distinct !{!272, !39}
!273 = distinct !{!273, !39}
!274 = distinct !{!274, !39}
!275 = distinct !{!275, !39}
!276 = distinct !{!276, !39}
!277 = distinct !{!277, !39}
!278 = distinct !{!278, !39, !281}
!279 = distinct !{!279, !39}
!280 = distinct !{!280, !39}
!281 = !{!"llvm.loop.peeled.count", i32 1}
!282 = distinct !{!282, !39}
!283 = distinct !{!283, !39}
!284 = !{!75, !64, i64 8}
!285 = !{!75, !65, i64 16}
!286 = !{!71, !70, i64 48}
!287 = !{!72, !70, i64 48}
!288 = !{!73, !70, i64 48}
!289 = !{!74, !70, i64 48}
!290 = distinct !{null}
!291 = distinct !{null, null}
!292 = distinct !{null, null}
!293 = distinct !{null}
!294 = distinct !{null}
!295 = distinct !{null}
!296 = distinct !{null}
!297 = distinct !{!297, !39}
!298 = distinct !{!298, !39}
!299 = distinct !{!299, !39}
!300 = distinct !{!300, !39}
!301 = distinct !{!301, !39}
!302 = distinct !{!302, !39}
!303 = distinct !{!303, !39}
!304 = distinct !{!304, !39}
!305 = distinct !{!305, !39}
!306 = distinct !{!306, !39}
!307 = distinct !{!307, !39}
!308 = distinct !{!308, !39}
!309 = distinct !{!309, !39}
!310 = distinct !{!310, !39}
!311 = distinct !{!311, !39}
!312 = distinct !{!312, !39, !168, !169}
!313 = distinct !{!313, !39}
!314 = distinct !{!314, !39}
!315 = distinct !{!315, !39}
!316 = distinct !{!316, !39}
!317 = distinct !{!317, !39}
!318 = !{!"_ZTS9b3BvhInfo", !28, i64 0, !28, i64 16, !28, i64 32, !25, i64 48, !25, i64 52, !25, i64 56, !25, i64 60}
!319 = !{!318, !25, i64 52}
!320 = !{!318, !25, i64 60}
!321 = !{!318, !25, i64 56}
!322 = !{!166, !70, i64 24}
!323 = !{!166, !25, i64 4}
!324 = !{!166, !25, i64 8}
!325 = !{!52, !52, i64 0}
!326 = !{!"_ZTS22b3QuantizedBvhNodeData", !24, i64 0, !24, i64 6, !25, i64 12}
!327 = !{!326, !25, i64 12}
!328 = distinct !{!328, !39}
!329 = distinct !{!329, !39}
!330 = distinct !{!330, !39}
!331 = distinct !{!331, !39}
!332 = distinct !{!332, !191}
!333 = distinct !{!333, !39}
!334 = distinct !{!334, !39}
!335 = distinct !{!335, !39}
!336 = distinct !{!336, !39}
!337 = distinct !{!337, !39}
!338 = distinct !{!338, !39}
!339 = distinct !{!339, !39}
!340 = distinct !{null}
!341 = distinct !{null}
!342 = distinct !{null}
!343 = distinct !{!343, !39, !168, !169}
!344 = distinct !{!344, !191}
!345 = distinct !{!345, !39, !168}
!346 = distinct !{!346, !191}
!347 = distinct !{!347, !191}
!348 = distinct !{!348, !39}
!349 = distinct !{!349, !191}
!350 = distinct !{!350, !39}
!351 = distinct !{!351, !191}
!352 = distinct !{!352, !39, !168, !169}
!353 = distinct !{!353, !191}
!354 = distinct !{!354, !39, !168}
!355 = distinct !{!355, !191}
!356 = distinct !{!356, !191}
!357 = distinct !{!357, !191}
!358 = distinct !{!358, !191}
!359 = distinct !{!359, !39}
!360 = distinct !{!360, !191}
!361 = distinct !{!361, !39}
!362 = distinct !{!362, !191}
!363 = distinct !{!363, !39}
!364 = distinct !{!364, !191}
!365 = !{!"_ZTS14b3BufferInfoCL", !69, i64 0, !70, i64 8}
!366 = !{!365, !69, i64 0}
!367 = !{!365, !70, i64 8}
!368 = !{!"p1 omnipotent char", !63, i64 0}
!369 = !{!"_ZTS18b3AlignedAllocatorIP13b3OpenCLArrayIhELj16EE"}
!370 = !{!"any p2 pointer", !63, i64 0}
!371 = !{!"p2 _ZTS13b3OpenCLArrayIhE", !370, i64 0}
!372 = !{!"_ZTS20b3AlignedObjectArrayIP13b3OpenCLArrayIhEE", !369, i64 0, !25, i64 4, !25, i64 8, !371, i64 16, !70, i64 24}
!373 = !{!"_ZTS12b3LauncherCL", !66, i64 8, !67, i64 16, !25, i64 24, !207, i64 32, !25, i64 64, !70, i64 68, !368, i64 72, !372, i64 80}
!374 = !{!373, !70, i64 68}
!375 = !{!373, !25, i64 24}
!376 = !{!373, !25, i64 64}
!377 = !{!373, !67, i64 16}
!378 = !{!68, !68, i64 0}
!379 = !{!373, !66, i64 8}
!380 = !{!"_ZTS15b3KernelArgData", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !24, i64 16}
!381 = !{!380, !25, i64 4}
!382 = !{!380, !25, i64 0}
!383 = !{!380, !25, i64 8}
!384 = distinct !{null, null}
!385 = distinct !{null, null}
!386 = distinct !{null}
!387 = distinct !{null, null}
!388 = distinct !{null, null}
!389 = !{!74, !68, i64 16}
!390 = distinct !{null}
!391 = distinct !{null, null}
!392 = distinct !{null, null}
!393 = !{!73, !68, i64 8}
!394 = !{!73, !68, i64 16}
!395 = distinct !{!395, !191}
!396 = distinct !{null}
!397 = distinct !{!397, !39}
!398 = distinct !{!398, !191}
!399 = distinct !{!399, !39}
!400 = distinct !{null}
!401 = !{!195, !68, i64 8}
!402 = !{!195, !68, i64 16}
!403 = !{!195, !66, i64 40}
!404 = distinct !{!404, !39}
!405 = distinct !{!405, !191}
!406 = distinct !{!406, !39}
!407 = distinct !{null}
!408 = !{!197, !68, i64 8}
!409 = !{i64 0, i64 4, !37, i64 4, i64 4, !37, i64 8, i64 4, !38, i64 12, i64 4, !37}
!410 = !{!197, !68, i64 16}
!411 = !{!197, !66, i64 40}
!412 = distinct !{!412, !39}
!413 = distinct !{!413, !191}
!414 = distinct !{!414, !39}
!415 = distinct !{null}
!416 = !{!234, !68, i64 8}
!417 = !{!234, !68, i64 16}
!418 = !{!234, !66, i64 40}
!419 = distinct !{!419, !39}
!420 = distinct !{!420, !191}
!421 = distinct !{!421, !39}
!422 = distinct !{null}
!423 = !{!199, !68, i64 8}
!424 = !{!199, !68, i64 16}
!425 = !{!199, !66, i64 40}
!426 = distinct !{!426, !191}
!427 = distinct !{null}
!428 = distinct !{!428, !39}
!429 = distinct !{!429, !191}
!430 = distinct !{!430, !39}
!431 = distinct !{null}
!432 = !{!201, !68, i64 8}
!433 = !{i64 0, i64 16, !37, i64 16, i64 4, !38, i64 20, i64 4, !38, i64 24, i64 4, !38, i64 28, i64 4, !38}
!434 = !{!201, !68, i64 16}
!435 = !{!201, !66, i64 40}
!436 = distinct !{!436, !39, !168, !169}
!437 = distinct !{!437, !191}
!438 = distinct !{!438, !39, !168}
!439 = distinct !{null}
!440 = distinct !{!440, !191}
!441 = distinct !{null}
!442 = distinct !{!442, !39}
!443 = distinct !{!443, !39}
!444 = distinct !{!444, !39}
!445 = !{!"_ZTS15_b3MprSimplex_t", !24, i64 0, !25, i64 192}
!446 = !{!445, !25, i64 192}
!447 = !{i64 0, i64 16, !37, i64 16, i64 16, !37, i64 32, i64 16, !37}
!448 = distinct !{ptr @_ZN13b3OpenCLArrayI10b3Contact4E6resizeEmb, null}
!449 = distinct !{ptr @_ZN13b3OpenCLArrayI10b3Contact4E6resizeEmb, null, null}
!450 = distinct !{null}
!451 = distinct !{ptr @_ZN13b3OpenCLArrayIiE6resizeEmb, null}
!452 = distinct !{ptr @_ZN13b3OpenCLArrayIiE6resizeEmb, null, null}
!453 = distinct !{ptr @_ZN13b3OpenCLArrayI9b3Vector3E6resizeEmb, null}
!454 = distinct !{ptr @_ZN13b3OpenCLArrayI9b3Vector3E6resizeEmb, null, null}
!455 = distinct !{!455, !39}
!456 = distinct !{!456, !191}
!457 = distinct !{!457, !39}
!458 = distinct !{null}
!459 = !{!238, !68, i64 16}
!460 = !{!238, !66, i64 40}
!461 = distinct !{!461, !39}
!462 = distinct !{null}
!463 = !{!236, !68, i64 8}
!464 = !{!236, !68, i64 16}
!465 = !{!236, !66, i64 40}
!466 = distinct !{!466, !39}
!467 = distinct !{!467, !191}
!468 = distinct !{!468, !39}
!469 = distinct !{null}
!470 = !{!240, !68, i64 8}
!471 = !{i64 0, i64 16, !37, i64 16, i64 16, !37, i64 32, i64 16, !37, i64 48, i64 4, !38, i64 52, i64 4, !38, i64 56, i64 4, !38, i64 60, i64 4, !38}
!472 = !{!240, !68, i64 16}
!473 = !{!240, !66, i64 40}
!474 = distinct !{!474, !39}
!475 = distinct !{!475, !191}
!476 = distinct !{!476, !39}
!477 = distinct !{null}
!478 = !{!213, !68, i64 8}
!479 = !{i64 0, i64 16, !37, i64 16, i64 16, !37}
!480 = !{!213, !68, i64 16}
!481 = !{!213, !66, i64 40}
!482 = distinct !{ptr @_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb, null}
!483 = distinct !{ptr @_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb, null, null}
!484 = distinct !{null}
!485 = distinct !{null}
!486 = distinct !{null, null}
!487 = distinct !{null, null}
!488 = distinct !{!488, !39}
end_hunk_3
