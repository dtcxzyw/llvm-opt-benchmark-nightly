Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN15btSoftColliders10CollideCCD7ProcessEPK10btDbvtNodeS3_:bb.a

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE8allocateEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = sext i32 %i.av to i64
  %i.ay = mul nsw i64 %i.ax, 88
  %i.az = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ay, i32 noundef 16)
  %.pre.i = load i32, ptr %i.ap, align 4, !tbaa !215
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE8allocateEi.exit.i.i: ; preds = %bb.g, %bb.f
  %i.ba = phi i32 [ %.pre.i, %bb.g ], [ %i.aq, %bb.f ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.az, %bb.g ], [ null, %bb.f ] ; 4 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE8allocateEi.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 1392 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ba to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.bd = icmp eq i32 %i.ba, 1
  br i1 %i.bd, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.be = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !214
  %i.bg = getelementptr inbounds nuw [88 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.be, ptr noundef nonnull align 8 dereferenceable(88) %i.bg, i64 88, i1 false), !tbaa.struct !556
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !214
  %i.bj = getelementptr inbounds nuw [88 x i8], ptr %i.bi, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bh, ptr noundef nonnull align 8 dereferenceable(88) %i.bj, i64 88, i1 false), !tbaa.struct !556
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !30

_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod33 = trunc i32 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.bk = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !214
  %i.bm = getelementptr inbounds nuw [88 x i8], ptr %i.bl, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bk, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i64 88, i1 false), !tbaa.struct !556
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE8allocateEi.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 1392 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !214 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE10deallocateEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 1400
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !213, !range !262, !noundef !263
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.j, label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE10deallocateEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bo)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE10deallocateEv.exit.i.i: ; preds = %bb.j, %bb.i, %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 1400
  store i8 1, ptr %i.bs, align 8, !tbaa !213
  store ptr %.0.i.i.i, ptr %i.bn, align 8, !tbaa !214
  store i32 %i.av, ptr %i.ar, align 8, !tbaa !216
  %.pre2.i = load i32, ptr %i.ap, align 4, !tbaa !215
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE9push_backERKS1_.exit: ; preds = %.critedge, %bb.e, %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE10deallocateEv.exit.i.i
  %i.bt = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE10deallocateEv.exit.i.i ], [ %i.aq, %bb.e ], [ %i.aq, %.critedge ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.af, i64 1392
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !214
  %i.bw = sext i32 %i.bt to i64
  %i.bx = getelementptr inbounds [88 x i8], ptr %i.bv, i64 %i.bw ; 10 uses
  store ptr %i.b, ptr %i.bx, align 8, !tbaa !316
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.d, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !555
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.624.0..sroa_idx, i8 0, i64 16, i1 false)
  store <2 x float> %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  store <2 x float> %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !259
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  store float %i.ao, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !253
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 68
  store float %i.am, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !253
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  store <2 x float> zeroinitializer, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !253
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  store ptr %i.aj, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !332
  %i.by = load i32, ptr %i.ap, align 4, !tbaa !215
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.ap, align 4, !tbaa !215
  br label %bb.k

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE9push_backERKS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btSoftColliders10CollideCCD7ProcessEPK11btDbvntNodeS3_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !479  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !479  ; 3 uses
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN15btSoftColliders10CollideCCD5RepelEPN10btSoftBody4FaceES3_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %i.b, ptr noundef %i.d)
  tail call void @_ZN15btSoftColliders10CollideCCD5RepelEPN10btSoftBody4FaceES3_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %i.d, ptr noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL12bernsteinCCDPKN10btSoftBody4FaceEPKNS_4NodeERKfS7_R9btVector3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, float nofpclass(nan inf zero sub nnorm) %.0.val, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %3) unnamed_addr #30 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 14 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %8 = alloca %class.btVector3, align 8           ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load float, ptr %i.g, align 4, !tbaa !253 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load float, ptr %i.i, align 4, !tbaa !253
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.l = load float, ptr %i.k, align 4, !tbaa !253
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load float, ptr %i.m, align 4, !tbaa !253
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !316  ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.u = load <2 x float>, ptr %i.r, align 4, !tbaa !253 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !253 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !253
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !253
  %i.ae = load <2 x float>, ptr %i.b, align 8, !tbaa !253 ; 4 uses
  %i.af = load <2 x float>, ptr %i.c, align 8, !tbaa !253 ; 3 uses
  %i.ag = load float, ptr %i.e, align 4, !tbaa !253
  %foldExtExtBinop = fadd <2 x float> %i.ae, %i.af
  %i.ah = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ai = fsub float %i.ah, %i.j                  ; 2 uses
  %i.aj = load <2 x float>, ptr %i.o, align 4, !tbaa !253 ; 7 uses
  %i.ak = load float, ptr %i.s, align 4, !tbaa !253 ; 5 uses
  %i.al = load <2 x float>, ptr %i.t, align 4, !tbaa !253 ; 5 uses
  %i.am = load float, ptr %i.x, align 4, !tbaa !253 ; 2 uses
  %i.an = load <2 x float>, ptr %i.y, align 4, !tbaa !253 ; 2 uses
  %i.ao = load <2 x float>, ptr %i.z, align 4, !tbaa !253 ; 2 uses
  %i.ap = shufflevector <2 x float> %i.aj, <2 x float> %i.an, <2 x i32> <i32 0, i32 2>
  %i.aq = shufflevector <2 x float> %i.u, <2 x float> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.ar = fsub <2 x float> %i.ap, %i.aq           ; 3 uses
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.at = shufflevector <2 x float> %i.aj, <2 x float> %i.an, <2 x i32> <i32 1, i32 3>
  %i.au = shufflevector <2 x float> %i.al, <2 x float> %i.ao, <2 x i32> <i32 0, i32 3>
  %i.av = fsub <2 x float> %i.at, %i.au           ; 3 uses
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.ab, i64 1
  %i.az = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ba = insertelement <2 x float> %i.az, float %i.ad, i64 1
  %i.bb = fsub <2 x float> %i.ay, %i.ba           ; 3 uses
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.bd = load <2 x float>, ptr %i.d, align 4, !tbaa !253 ; 4 uses
  %i.be = load float, ptr %i.f, align 8, !tbaa !253
  %i.bf = fadd float %i.be, %i.h
  %i.bg = fsub float %i.bf, %i.n                  ; 2 uses
  %i.bh = extractelement <2 x float> %i.bd, i64 0
  %i.bi = fadd float %i.bh, %i.ag
  %i.bj = fsub float %i.bi, %i.l                  ; 2 uses
  %i.bk = insertelement <2 x float> %i.bd, float %i.bj, i64 1
  %i.bl = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = fmul <2 x float> %i.bk, %i.bl
  %i.bn = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = insertelement <2 x float> %i.ae, float %i.ai, i64 1
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bo, <2 x float> %i.bm)
  %i.bq = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bs = insertelement <2 x float> %i.br, float %i.bg, i64 1
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bs, <2 x float> %i.bp)
  %i.bu = shufflevector <2 x float> %i.ae, <2 x float> %i.af, <4 x i32> <i32 1, i32 poison, i32 3, i32 3>
  %i.bv = insertelement <4 x float> %i.bu, float %i.bj, i64 1
  %i.bw = fmul <4 x float> %i.bv, %i.aw
  %i.bx = shufflevector <2 x float> %i.ae, <2 x float> %i.af, <4 x i32> <i32 0, i32 poison, i32 2, i32 2>
  %i.by = insertelement <4 x float> %i.bx, float %i.ai, i64 1
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %i.by, <4 x float> %i.bw)
  %i.ca = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cb = insertelement <4 x float> %i.ca, float %i.bg, i64 1
  %i.cc = insertelement <4 x float> %i.cb, float %i.h, i64 2
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.cd, <4 x float> %i.bz) ; 2 uses
  %i.cf = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cg = shufflevector <4 x float> <float 3.000000e+00, float poison, float poison, float 3.000000e+00>, <4 x float> %i.cf, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 2 uses
  %i.ch = fmul <4 x float> %i.ce, %i.cg
  %i.ci = fadd <4 x float> %i.ce, %i.cg
  %i.cj = shufflevector <4 x float> %i.ch, <4 x float> %i.ci, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 2 uses
  %i.ck = insertelement <4 x float> poison, float %.0.val, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = fcmp ule <4 x float> %i.cj, %i.cl
  %i.cn = bitcast <4 x i1> %i.cm to i4
  %i.co = icmp eq i4 %i.cn, 0
  br i1 %i.co, label %_ZL28continuousCollisionDetectionPKN10btSoftBody4FaceEPKNS_4NodeERKfS7_R9btVector3.exit, label %_ZL15bernsteinVFTestPKN10btSoftBody4FaceEPKNS_4NodeERKfS7_.exit

_ZL15bernsteinVFTestPKN10btSoftBody4FaceEPKNS_4NodeERKfS7_.exit: ; preds = %bb.a
  %i.cp = fneg float %.0.val
  %i.cq = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cs = fcmp uge <4 x float> %i.cj, %i.cr
  %i.ct = bitcast <4 x i1> %i.cs to i4
  %.not = icmp eq i4 %i.ct, 0
  br i1 %.not, label %_ZL28continuousCollisionDetectionPKN10btSoftBody4FaceEPKNS_4NodeERKfS7_R9btVector3.exit, label %bb.b

bb.b:                                             ; preds = %_ZL15bernsteinVFTestPKN10btSoftBody4FaceEPKNS_4NodeERKfS7_.exit
  %.val69.i = load float, ptr %2, align 4, !tbaa !253 ; 11 uses
  %i.cu = extractelement <2 x float> %i.aj, i64 0
  %foldExtExtBinop13 = fsub <2 x float> %i.u, %i.aj
  %i.cv = extractelement <2 x float> %foldExtExtBinop13, i64 0
  %i.cw = extractelement <2 x float> %i.al, i64 0
  %i.cx = fsub float %i.cw, %i.ak
  %i.cy = fsub float %i.am, %i.w
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !316 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.de = load float, ptr %i.dd, align 4, !tbaa !253 ; 3 uses
  %i.df = fsub float %i.de, %i.w
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !316 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !253 ; 3 uses
  %i.dm = fsub float %i.dl, %i.w
  %i.dn = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.dp = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !253 ; 4 uses
  %i.dr = fmul float %.val69.i, %i.dq
  %i.ds = fadd float %i.am, %i.dr
  %i.dt = fsub float %i.ds, %i.w
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dv = getelementptr inbounds nuw i8, ptr %i.da, i64 52
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !253 ; 3 uses
  %i.dy = fmul float %.val69.i, %i.dx
  %i.dz = fadd float %i.de, %i.dy
  %i.ea = fsub float %i.dz, %i.w
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dh, i64 52
  %i.ed = load <2 x float>, ptr %i.db, align 4, !tbaa !253 ; 4 uses
  %i.ee = load float, ptr %i.dc, align 4, !tbaa !253 ; 2 uses
  %i.ef = extractelement <2 x float> %i.ed, i64 0
  %foldExtExtBinop15 = fsub <2 x float> %i.ed, %i.aj
  %i.eg = extractelement <2 x float> %foldExtExtBinop15, i64 0
  %i.eh = fsub float %i.ee, %i.ak
  %i.ei = load <2 x float>, ptr %i.di, align 4, !tbaa !253 ; 4 uses
  %i.ej = load float, ptr %i.dj, align 4, !tbaa !253 ; 2 uses
  %i.ek = extractelement <2 x float> %i.ei, i64 0
  %foldExtExtBinop17 = fsub <2 x float> %i.ei, %i.aj
  %i.el = extractelement <2 x float> %foldExtExtBinop17, i64 0
  %i.em = fsub float %i.ej, %i.ak
  %i.en = load <2 x float>, ptr %i.dn, align 4, !tbaa !253 ; 4 uses
  %i.eo = load float, ptr %i.do, align 4, !tbaa !253 ; 2 uses
  %i.ep = load <2 x float>, ptr %i.du, align 4, !tbaa !253 ; 3 uses
  %i.eq = load float, ptr %i.dv, align 4, !tbaa !253
  %i.er = insertelement <4 x float> poison, float %.val69.i, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> zeroinitializer
  %i.et = shufflevector <2 x float> %i.en, <2 x float> %i.ep, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.eu = insertelement <4 x float> %i.et, float %i.eo, i64 1
  %i.ev = insertelement <4 x float> %i.eu, float %i.eq, i64 3
  %i.ew = fmul <4 x float> %i.es, %i.ev
  %i.ex = shufflevector <2 x float> %i.u, <2 x float> %i.al, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ey = insertelement <4 x float> %i.ex, float %i.ef, i64 2
  %i.ez = insertelement <4 x float> %i.ey, float %i.ee, i64 3
  %i.fa = fadd <4 x float> %i.ez, %i.ew
  %i.fb = insertelement <2 x float> %i.aj, float %i.ak, i64 1
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fd = fsub <4 x float> %i.fa, %i.fc           ; 4 uses
  %i.fe = load <2 x float>, ptr %i.eb, align 4, !tbaa !253 ; 2 uses
  %i.ff = load float, ptr %i.ec, align 4, !tbaa !253
  %i.fg = extractelement <2 x float> %i.fe, i64 0
  %i.fh = fmul float %.val69.i, %i.fg
  %i.fi = fmul float %.val69.i, %i.ff
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !253 ; 2 uses
  %i.fl = fmul float %.val69.i, %i.fk
  %i.fm = fadd float %i.ek, %i.fh
  %i.fn = fadd float %i.ej, %i.fi
  %i.fo = fadd float %i.dl, %i.fl
  %i.fp = fsub float %i.fm, %i.cu
  %i.fq = fsub float %i.fn, %i.ak
  %i.fr = fsub float %i.fo, %i.w
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !253 ; 2 uses
  %i.fu = fmul float %.val69.i, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !253 ; 2 uses
  %i.fx = fmul float %.val69.i, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !253 ; 2 uses
  %i.ga = fmul float %.val69.i, %i.fz
  %i.gb = extractelement <4 x float> %i.fd, i64 0
  %i.gc = extractelement <4 x float> %i.fd, i64 1
  %i.gd = extractelement <4 x float> %i.fd, i64 2
  %i.ge = extractelement <4 x float> %i.fd, i64 3
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i, %bb.b
  %indvars.iv.i.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.i, %.thread.i.i ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr @_ZL3dop, i64 %indvars.iv.i.i ; 3 uses
  %i.gg = load float, ptr %i.gf, align 16, !tbaa !253 ; 7 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !253 ; 7 uses
  %i.gj = fmul float %i.fx, %i.gi
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.fu, float %i.gj)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gm = load float, ptr %i.gl, align 8, !tbaa !253 ; 7 uses
  %i.gn = tail call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.ga, float %i.gk) ; 2 uses
  %i.go = fcmp ogt float %i.gn, f0x34000000       ; 7 uses
  %i.gp = fcmp olt float %i.gn, f0xB4000000       ; 6 uses
  %not..i.i = xor i1 %i.go, true                  ; 6 uses
  %i.gq = fmul float %i.cx, %i.gi
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.cv, float %i.gq)
  %i.gs = tail call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.cy, float %i.gr) ; 2 uses
  %i.gt = fcmp ogt float %i.gs, f0x34000000
  %i.gu = fcmp uge float %i.gs, f0xB4000000
  %i.gv = xor i1 %i.gp, %i.gu
  %i.gw = and i1 %i.gv, %not..i.i
  %i.gx = select i1 %i.gt, i1 %i.go, i1 %i.gw
  br i1 %i.gx, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gy = fmul float %i.eh, %i.gi
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.eg, float %i.gy)
  %i.ha = tail call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.df, float %i.gz) ; 2 uses
  %i.hb = fcmp ogt float %i.ha, f0x34000000
  %i.hc = fcmp uge float %i.ha, f0xB4000000
  %i.hd = xor i1 %i.gp, %i.hc
  %i.he = and i1 %i.hd, %not..i.i
  %i.hf = select i1 %i.hb, i1 %i.go, i1 %i.he
  br i1 %i.hf, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.hg = fmul float %i.em, %i.gi
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.el, float %i.hg)
  %i.hi = tail call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.dm, float %i.hh) ; 2 uses
  %i.hj = fcmp ogt float %i.hi, f0x34000000
  %i.hk = fcmp uge float %i.hi, f0xB4000000
  %i.hl = xor i1 %i.gp, %i.hk
  %i.hm = and i1 %i.hl, %not..i.i
  %i.hn = select i1 %i.hj, i1 %i.go, i1 %i.hm
  br i1 %i.hn, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ho = fmul float %i.gc, %i.gi
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.gb, float %i.ho)
  %i.hq = tail call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.dt, float %i.hp) ; 2 uses
  %i.hr = fcmp ogt float %i.hq, f0x34000000
  %i.hs = fcmp uge float %i.hq, f0xB4000000
  %i.ht = xor i1 %i.gp, %i.hs
  %i.hu = and i1 %i.ht, %not..i.i
  %i.hv = select i1 %i.hr, i1 %i.go, i1 %i.hu
  br i1 %i.hv, label %.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hw = fmul float %i.ge, %i.gi
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.gd, float %i.hw)
  %i.hy = tail call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.ea, float %i.hx) ; 2 uses
  %i.hz = fcmp ogt float %i.hy, f0x34000000
  %i.ia = fcmp uge float %i.hy, f0xB4000000
  %i.ib = xor i1 %i.gp, %i.ia
  %i.ic = and i1 %i.ib, %not..i.i
  %i.id = select i1 %i.hz, i1 %i.go, i1 %i.ic
  br i1 %i.id, label %.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ie = fmul float %i.fq, %i.gi
  %i.if = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.fp, float %i.ie)
  %i.ig = tail call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.fr, float %i.if) ; 2 uses
  %i.ih = fcmp ogt float %i.ig, f0x34000000
  %i.ii = fcmp uge float %i.ig, f0xB4000000
  %i.ij = xor i1 %i.gp, %i.ii
  %i.ik = and i1 %i.ij, %not..i.i
  %i.il = select i1 %i.ih, i1 %i.go, i1 %i.ik
  br i1 %i.il, label %.thread.i.i, label %_ZL28continuousCollisionDetectionPKN10btSoftBody4FaceEPKNS_4NodeERKfS7_R9btVector3.exit

.thread.i.i:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 13
  br i1 %exitcond.not.i.i, label %_ZL18hasSeparatingPlanePKN10btSoftBody4FaceEPKNS_4NodeERKf.exit.i, label %bb.c, !llvm.loop !1498

_ZL18hasSeparatingPlanePKN10btSoftBody4FaceEPKNS_4NodeERKf.exit.i: ; preds = %.thread.i.i
  %i.im = insertelement <4 x float> poison, float %i.de, i64 0
  %i.in = insertelement <4 x float> %i.im, float %i.dx, i64 3
  %i.io = shufflevector <2 x float> %i.ed, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ip = shufflevector <4 x float> %i.in, <4 x float> %i.io, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.iq = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ir = shufflevector <4 x float> %i.ip, <4 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.is = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.it = insertelement <4 x float> %i.is, float %i.dq, i64 3
  %i.iu = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.iv = shufflevector <4 x float> %i.it, <4 x float> %i.iu, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.iw = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ix = shufflevector <4 x float> %i.iv, <4 x float> %i.iw, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.iy = fsub <4 x float> %i.ir, %i.ix           ; 6 uses
  %i.iz = shufflevector <2 x float> %i.ed, <2 x float> %i.ep, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.ja = insertelement <4 x float> %i.iz, float %i.dx, i64 2
  %i.jb = shufflevector <2 x float> %i.u, <2 x float> %i.en, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.jc = insertelement <4 x float> %i.jb, float %i.dq, i64 2 ; 2 uses
  %i.jd = fsub <4 x float> %i.ja, %i.jc           ; 4 uses
  %i.je = shufflevector <2 x float> %i.fe, <2 x float> %i.ei, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.jf = insertelement <4 x float> %i.je, float %i.dl, i64 2 ; 2 uses
  %i.jg = shufflevector <4 x float> %i.iw, <4 x float> %i.ix, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jh = fsub <4 x float> %i.jf, %i.jg           ; 5 uses
  %i.ji = shufflevector <2 x float> %i.ei, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.jj = shufflevector <4 x float> %i.jf, <4 x float> %i.ji, <4 x i32> <i32 poison, i32 0, i32 5, i32 2>
  %i.jk = insertelement <4 x float> %i.jj, float %i.fk, i64 0
  %i.jl = shufflevector <4 x float> %i.jc, <4 x float> %i.is, <4 x i32> <i32 2, i32 3, i32 1, i32 4>
  %i.jm = fsub <4 x float> %i.jk, %i.jl           ; 4 uses
  %i.jn = extractelement <2 x float> %i.en, i64 0
  %i.jo = fsub float %i.ft, %i.jn                 ; 2 uses
  %i.jp = fsub float %i.fw, %i.eo                 ; 2 uses
  %i.jq = fsub float %i.fz, %i.dq                 ; 2 uses
  %i.jr = extractelement <4 x float> %i.jh, i64 3 ; 2 uses
  %i.js = fneg float %i.jr                        ; 2 uses
  %i.jt = extractelement <4 x float> %i.jd, i64 1 ; 3 uses
  %i.ju = fmul float %i.jt, %i.js
  %i.jv = extractelement <4 x float> %i.iy, i64 1 ; 2 uses
  %i.jw = extractelement <4 x float> %i.jm, i64 2
  %i.jx = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.jw, float %i.ju) ; 2 uses
  %i.jy = extractelement <4 x float> %i.jh, i64 1
  %i.jz = fneg float %i.jy                        ; 2 uses
  %i.ka = extractelement <4 x float> %i.iy, i64 0 ; 2 uses
  %i.kb = fmul float %i.ka, %i.jz
  %i.kc = extractelement <4 x float> %i.jm, i64 0
  %i.kd = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.kc, float %i.kb)
  %i.ke = fneg <4 x float> %i.jm                  ; 4 uses
  %shift = shufflevector <4 x float> %i.ke, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop19 = fmul <4 x float> %i.iy, %shift
  %i.kf = extractelement <4 x float> %foldExtExtBinop19, i64 0
  %i.kg = extractelement <4 x float> %i.jh, i64 2
  %i.kh = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.kg, float %i.kf) ; 2 uses
  %i.ki = extractelement <4 x float> %i.ke, i64 3
  %i.kj = fmul float %i.jv, %i.ki
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.ka, float %i.jr, float %i.kj) ; 2 uses
  %i.kl = fmul <4 x float> %i.jd, %i.ke
  %i.km = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iy, <4 x float> %i.jh, <4 x float> %i.kl) ; 4 uses
  %i.kn = extractelement <4 x float> %i.km, i64 2
  %i.ko = fadd float %i.kn, %i.kd
  %shift21 = shufflevector <4 x float> %i.km, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop22 = fadd <4 x float> %shift21, %i.km
  %i.kp = extractelement <4 x float> %foldExtExtBinop22, i64 0
  %i.kq = shufflevector <4 x float> %i.iy, <4 x float> %i.jd, <4 x i32> <i32 2, i32 3, i32 7, i32 2>
  %i.kr = shufflevector <4 x float> %i.ke, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.ks = insertelement <4 x float> %i.kr, float %i.js, i64 0
  %i.kt = insertelement <4 x float> %i.ks, float %i.jz, i64 1
  %i.ku = fmul <4 x float> %i.kq, %i.kt
  %i.kv = shufflevector <4 x float> %i.jd, <4 x float> %i.iy, <4 x i32> <i32 3, i32 6, i32 7, i32 3>
  %i.kw = shufflevector <4 x float> %i.jm, <4 x float> %i.jh, <4 x i32> <i32 2, i32 0, i32 4, i32 5>
  %i.kx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kv, <4 x float> %i.kw, <4 x float> %i.ku) ; 4 uses
  %shift24 = shufflevector <4 x float> %i.km, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop25 = fadd <4 x float> %i.kx, %shift24
  %i.ky = extractelement <4 x float> %foldExtExtBinop25, i64 0
  %i.kz = extractelement <2 x float> %i.av, i64 0
  %i.la = fmul float %i.kz, %i.kk
  %i.lb = extractelement <2 x float> %i.ar, i64 0
  %i.lc = tail call float @llvm.fmuladd.f32(float %i.kh, float %i.lb, float %i.la)
  %i.ld = extractelement <2 x float> %i.bb, i64 0
  %i.le = tail call noundef float @llvm.fmuladd.f32(float %i.jx, float %i.ld, float %i.lc) ; 4 uses
  %i.lf = fmul float %i.kk, %i.jp
  %i.lg = tail call float @llvm.fmuladd.f32(float %i.kh, float %i.jo, float %i.lf)
  %i.lh = tail call noundef float @llvm.fmuladd.f32(float %i.jx, float %i.jq, float %i.lg)
  %i.li = insertelement <4 x float> %i.aw, float %i.jp, i64 1
  %i.lj = shufflevector <4 x float> %i.li, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lk = shufflevector <4 x float> %i.kx, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ll = insertelement <2 x float> %i.lk, float %i.kp, i64 0
  %i.lm = shufflevector <2 x float> %i.ll, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ln = fmul <4 x float> %i.lj, %i.lm
  %i.lo = shufflevector <4 x float> %i.kx, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.lp = insertelement <2 x float> %i.lo, float %i.ko, i64 0
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.lr = insertelement <4 x float> %i.as, float %i.jo, i64 1
  %i.ls = shufflevector <4 x float> %i.lr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lq, <4 x float> %i.ls, <4 x float> %i.ln)
  %9 = shufflevector <4 x float> %i.kx, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %10 = insertelement <2 x float> %9, float %i.ky, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %12 = insertelement <4 x float> %i.bc, float %i.jq, i64 1
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %14 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %13, <4 x float> %i.lt) ; 4 uses
  %i.lu = extractelement <4 x float> %14, i64 0
  %15 = fadd float %i.lh, %i.lu                   ; 4 uses
  %shift27 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop28 = fadd <4 x float> %shift27, %14
  %16 = extractelement <4 x float> %foldExtExtBinop28, i64 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %17 = extractelement <4 x float> %14, i64 3     ; 4 uses
  %i.lv = tail call noundef float @llvm.fabs.f32(float %17)
  %i.lw = fcmp olt float %i.lv, f0x37480000
  br i1 %i.lw, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZL18hasSeparatingPlanePKN10btSoftBody4FaceEPKNS_4NodeERKf.exit.i
  %i.lx = tail call noundef float @llvm.fabs.f32(float %16)
  %i.ly = fcmp olt float %i.lx, f0x37480000
  br i1 %i.ly, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.lz = tail call noundef float @llvm.fabs.f32(float %15)
  %i.ma = fcmp olt float %i.lz, f0x37480000
  br i1 %i.ma, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.mb = tail call noundef float @llvm.fabs.f32(float %i.le)
  %i.mc = fcmp olt float %i.mb, f0x37480000
  br i1 %i.mc, label %.thread103.i, label %.thread111.i

.thread103.i:                                     ; preds = %bb.k
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !253
  %i.md = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %.val69.i, ptr %i.md, align 4, !tbaa !253
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.me = fneg float %i.le
  %i.mf = fdiv float %i.me, %15
  store float %i.mf, ptr %i.a, align 4, !tbaa !253
  br label %.lr.ph.i

bb.m:                                             ; preds = %bb.i
  %i.mg = fdiv float %15, %16
  %i.mh = fdiv float %i.le, %16
  %i.mi = call noundef i32 @_Z7SolveP2Pfff(ptr noundef nonnull %i.a, float noundef %i.mg, float noundef %i.mh)
  br label %bb.o

bb.n:                                             ; preds = %_ZL18hasSeparatingPlanePKN10btSoftBody4FaceEPKNS_4NodeERKf.exit.i
  %i.mj = fdiv float %16, %17
  %i.mk = fdiv float %15, %17
  %i.ml = fdiv float %i.le, %17
  %i.mm = call noundef i32 @_Z7SolveP3Pffff(ptr noundef nonnull %i.a, float noundef %i.mj, float noundef %i.mk, float noundef %i.ml)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.064.i = phi i32 [ %i.mm, %bb.n ], [ %i.mi, %bb.m ] ; 3 uses
  %i.mn = icmp sgt i32 %.064.i, 1
  br i1 %i.mn, label %._crit_edge.i, label %.thread107.i

._crit_edge.i:                                    ; preds = %bb.o
  %.pre.i = load float, ptr %i.a, align 4, !tbaa !253
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre120.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !253
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %.thread103.i
  %i.mo = phi float [ %.val69.i, %.thread103.i ], [ %.pre120.i, %._crit_edge.i ] ; 4 uses
  %i.mp = phi float [ 0.000000e+00, %.thread103.i ], [ %.pre.i, %._crit_edge.i ] ; 4 uses
  %.064105.i = phi i32 [ 2, %.thread103.i ], [ %.064.i, %._crit_edge.i ] ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.mr = fcmp ogt float %i.mp, %i.mo
  br i1 %i.mr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store float %i.mo, ptr %i.a, align 4, !tbaa !253
  store float %i.mp, ptr %i.mq, align 4, !tbaa !253
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ms = phi float [ %i.mo, %bb.p ], [ %i.mp, %bb.q ] ; 2 uses
  %i.mt = phi float [ %i.mp, %bb.p ], [ %i.mo, %bb.q ] ; 3 uses
  %i.mu = icmp samesign ugt i32 %.064105.i, 2
  br i1 %i.mu, label %bb.s, label %.lr.ph.i

bb.s:                                             ; preds = %bb.r
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !253 ; 3 uses
  %i.mx = fcmp ogt float %i.mt, %i.mw
  br i1 %i.mx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store float %i.mw, ptr %i.a, align 4, !tbaa !253
  store float %i.mt, ptr %i.mv, align 4, !tbaa !253
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.my = phi float [ %i.mt, %bb.t ], [ %i.mw, %bb.s ] ; 2 uses
  %i.mz = fcmp ogt float %i.ms, %i.my
  br i1 %i.mz, label %bb.v, label %.lr.ph.i

bb.v:                                             ; preds = %bb.u
  store float %i.my, ptr %i.mq, align 4, !tbaa !253
  store float %i.ms, ptr %i.mv, align 4, !tbaa !253
  br label %.lr.ph.i

.thread107.i:                                     ; preds = %bb.o
  %.not114.i = icmp eq i32 %.064.i, 1
  br i1 %.not114.i, label %.lr.ph.i, label %.thread111.i

.lr.ph.i:                                         ; preds = %.thread107.i, %bb.v, %bb.u, %bb.r, %bb.l
  %.064102109136.i = phi i32 [ 1, %.thread107.i ], [ 1, %bb.l ], [ %.064105.i, %bb.v ], [ %.064105.i, %bb.u ], [ 2, %bb.r ]
  %i.na = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.nb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.nd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ne = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %8, i64 12
  %wide.trip.count.i = zext nneg i32 %.064102109136.i to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ab ] ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !253 ; 4 uses
  %i.ni = fcmp ugt float %i.nh, 0.000000e+00
  br i1 %i.ni, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.nj = load float, ptr %2, align 4, !tbaa !253
  %i.nk = fadd float %i.nj, f0x34000000
  %i.nl = fcmp ogt float %i.nh, %i.nk
  br i1 %i.nl, label %.thread111.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.nm = load ptr, ptr %i.p, align 8, !tbaa !316 ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 48
  %i.np = load float, ptr %i.no, align 4, !tbaa !253
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 52
  %i.nr = load float, ptr %i.nn, align 4, !tbaa !253
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nm, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.nt = load ptr, ptr %i.cz, align 8, !tbaa !316 ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 48
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !253
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 52
  %i.ny = load float, ptr %i.nu, align 4, !tbaa !253
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nt, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.oa = load ptr, ptr %i.dg, align 8, !tbaa !316 ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 48
  %i.od = load float, ptr %i.oc, align 4, !tbaa !253
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 52
  %i.of = load float, ptr %i.ob, align 4, !tbaa !253
  %i.og = getelementptr inbounds nuw i8, ptr %i.oa, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.oh = load float, ptr %i.fy, align 4, !tbaa !253
  %i.oi = fmul float %i.nh, %i.oh
  %i.oj = load <2 x float>, ptr %i.fs, align 4, !tbaa !253
  %i.ok = insertelement <2 x float> poison, float %i.nh, i64 0
  %i.ol = shufflevector <2 x float> %i.ok, <2 x float> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.om = fmul <2 x float> %i.ol, %i.oj
  %i.on = load <2 x float>, ptr %i.o, align 4, !tbaa !253
  %i.oo = fadd <2 x float> %i.om, %i.on
  %i.op = load float, ptr %i.v, align 4, !tbaa !253
  %i.oq = fadd float %i.oi, %i.op
  %.sroa.3.12.vec.insert.i152.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.oq, i64 0
  store <2 x float> %i.oo, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i152.i, ptr %i.nd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.or = load <2 x float>, ptr %i.nq, align 4, !tbaa !253 ; 2 uses
  %i.os = fmul <2 x float> %i.ol, %i.or
  %i.ot = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ou = insertelement <2 x float> %i.ot, float %i.np, i64 1
  %i.ov = fmul <2 x float> %i.ol, %i.ou
  %i.ow = load <2 x float>, ptr %i.ns, align 4, !tbaa !253 ; 2 uses
  %i.ox = fadd <2 x float> %i.os, %i.ow           ; 4 uses
  %i.oy = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.oz = insertelement <2 x float> %i.oy, float %i.nr, i64 1
  %i.pa = fadd <2 x float> %i.ov, %i.oz           ; 3 uses
  %i.pb = shufflevector <2 x float> %i.ox, <2 x float> %i.pa, <2 x i32> <i32 3, i32 0>
  %i.pc = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ox, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.pb, ptr %4, align 8
  store <2 x float> %i.pc, ptr %i.na, align 8
  %i.pd = load <2 x float>, ptr %i.nx, align 4, !tbaa !253 ; 2 uses
  %i.pe = fmul <2 x float> %i.ol, %i.pd
  %i.pf = shufflevector <2 x float> %i.pd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pg = insertelement <2 x float> %i.pf, float %i.nw, i64 1
  %i.ph = fmul <2 x float> %i.ol, %i.pg
  %i.pi = load <2 x float>, ptr %i.nz, align 4, !tbaa !253 ; 2 uses
  %i.pj = fadd <2 x float> %i.pe, %i.pi           ; 3 uses
  %i.pk = shufflevector <2 x float> %i.pi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pl = insertelement <2 x float> %i.pk, float %i.ny, i64 1
  %i.pm = fadd <2 x float> %i.ph, %i.pl           ; 2 uses
  %i.pn = shufflevector <2 x float> %i.pj, <2 x float> %i.pm, <2 x i32> <i32 3, i32 0>
  %i.po = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.pj, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.pn, ptr %5, align 8
  store <2 x float> %i.po, ptr %i.nb, align 8
  %i.pp = load <2 x float>, ptr %i.oe, align 4, !tbaa !253 ; 2 uses
  %i.pq = shufflevector <2 x float> %i.pp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pr = insertelement <2 x float> %i.pq, float %i.od, i64 1
  %i.ps = fmul <2 x float> %i.ol, %i.pr
  %i.pt = fmul <2 x float> %i.ol, %i.pp
  %i.pu = load <2 x float>, ptr %i.og, align 4, !tbaa !253 ; 2 uses
  %i.pv = shufflevector <2 x float> %i.pu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pw = insertelement <2 x float> %i.pv, float %i.of, i64 1
  %i.px = fadd <2 x float> %i.ps, %i.pw           ; 3 uses
  %i.py = fadd <2 x float> %i.pt, %i.pu           ; 2 uses
  %i.pz = shufflevector <2 x float> %i.px, <2 x float> %i.py, <2 x i32> <i32 1, i32 2>
  %i.qa = insertelement <2 x float> %i.px, float 0.000000e+00, i64 1
  store <2 x float> %i.pz, ptr %6, align 8
  store <2 x float> %i.qa, ptr %i.nc, align 8
  %i.qb = fsub <2 x float> %i.pj, %i.ox           ; 2 uses
  %i.qc = fsub <2 x float> %i.pm, %i.pa           ; 2 uses
  %i.qd = fsub <2 x float> %i.px, %i.pa           ; 2 uses
  %i.qe = fsub <2 x float> %i.py, %i.ox           ; 2 uses
  %i.qf = fneg <2 x float> %i.qe
  %i.qg = fmul <2 x float> %i.qc, %i.qf
  %i.qh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qb, <2 x float> %i.qd, <2 x float> %i.qg) ; 4 uses
  %i.qi = extractelement <2 x float> %i.qd, i64 1
  %i.qj = fneg float %i.qi
  %i.qk = extractelement <2 x float> %i.qb, i64 0
  %i.ql = fmul float %i.qk, %i.qj
  %i.qm = extractelement <2 x float> %i.qc, i64 1
  %i.qn = extractelement <2 x float> %i.qe, i64 0
  %i.qo = call float @llvm.fmuladd.f32(float %i.qm, float %i.qn, float %i.ql) ; 4 uses
  %.sroa.3.12.vec.insert.i167.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qo, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i167.i, ptr %i.ne, align 8
  %foldExtExtBinop27 = fmul <2 x float> %i.qh, %i.qh
  %i.qp = extractelement <2 x float> %foldExtExtBinop27, i64 1
  %i.qq = extractelement <2 x float> %i.qh, i64 0 ; 2 uses
  %i.qr = call float @llvm.fmuladd.f32(float %i.qq, float %i.qq, float %i.qp)
  %i.qs = call noundef float @llvm.fmuladd.f32(float %i.qo, float %i.qo, float %i.qr) ; 2 uses
  %i.qt = fcmp ult float %i.qs, f0x28800000
  br i1 %i.qt, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.qs)
  %i.qu = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.qv = insertelement <2 x float> poison, float %i.qu, i64 0
  %i.qw = shufflevector <2 x float> %i.qv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qx = fmul <2 x float> %i.qh, %i.qw
  %i.qy = fmul float %i.qo, %i.qu
  br label %_ZN9btVector313safeNormalizeEv.exit.i

bb.aa:                                            ; preds = %bb.y
  store float 0.000000e+00, ptr %i.nf, align 4, !tbaa !253
  br label %_ZN9btVector313safeNormalizeEv.exit.i
end_hunk_0
