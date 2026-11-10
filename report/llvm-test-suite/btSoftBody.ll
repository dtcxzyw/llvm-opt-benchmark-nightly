Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSoftBody?download=true
inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody10clusterComEPKNS_7ClusterE:bb.a

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.sroa.015.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ], [ %i.u, %.epil.preheader ]
  %i.w = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.bg, %._crit_edge.loopexit.unr-lcssa ], [ %i.v, %.epil.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.y = load float, ptr %i.x, align 4, !tbaa !229 ; 3 uses
  %i.z = fmul float %.sroa.015.0.lcssa, %i.y
  %i.aa = extractelement <2 x float> %i.w, i64 0
  %i.ab = fmul float %i.aa, %i.y
  %i.ac = extractelement <2 x float> %i.w, i64 1
  %i.ad = fmul float %i.ac, %i.y
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.z, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ab, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.3.12.vec.insert.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.sroa.015.019 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.bf, %bb.b ]
  %i.ae = phi <2 x float> [ zeroinitializer, %.lr.ph.new ], [ %i.bg, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !279 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.aj = load float, ptr %i.ah, align 4, !tbaa !229
  %i.ak = load float, ptr %i.ai, align 4, !tbaa !229 ; 2 uses
  %i.al = fmul float %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.an = load <2 x float>, ptr %i.am, align 4, !tbaa !229
  %i.ao = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %i.ap, %i.an
  %i.ar = fadd float %.sroa.015.019, %i.al
  %i.as = fadd <2 x float> %i.ae, %i.aq
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !279 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.ax = load float, ptr %i.av, align 4, !tbaa !229
  %i.ay = load float, ptr %i.aw, align 4, !tbaa !229 ; 2 uses
  %i.az = fmul float %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.bb = load <2 x float>, ptr %i.ba, align 4, !tbaa !229
  %i.bc = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bd, %i.bb
  %i.bf = fadd float %i.ar, %i.az                 ; 3 uses
  %i.bg = fadd <2 x float> %i.as, %i.be           ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK10btSoftBody10clusterComEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0, i32 noundef %1) local_unnamed_addr #16 align 2 !guid !566 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !296  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !315  ; 4 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !316  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113  ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.g to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.m = icmp eq i32 %i.g, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 4 uses
  %.sroa.015.019.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.ao, %bb.b ]
  %i.n = phi <2 x float> [ zeroinitializer, %.lr.ph.i.new ], [ %i.ap, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !279  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.s = load float, ptr %i.q, align 4, !tbaa !229
  %i.t = load float, ptr %i.r, align 4, !tbaa !229 ; 2 uses
  %i.u = fmul float %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.w = load <2 x float>, ptr %i.v, align 4, !tbaa !229
  %i.x = insertelement <2 x float> poison, float %i.t, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.y, %i.w
  %i.aa = fadd float %.sroa.015.019.i, %i.u
  %i.ab = fadd <2 x float> %i.n, %i.z
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !279 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i
  %i.ag = load float, ptr %i.ae, align 4, !tbaa !229
  %i.ah = load float, ptr %i.af, align 4, !tbaa !229 ; 2 uses
  %i.ai = fmul float %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !229
  %i.al = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.am, %i.ak
  %i.ao = fadd float %i.aa, %i.ai                 ; 3 uses
  %i.ap = fadd <2 x float> %i.ab, %i.an           ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, label %bb.b

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.015.019.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ao, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.ap, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ]
  %lcmp.mod12 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i.epil.init
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !279 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.epil.init
  %i.au = load float, ptr %i.as, align 4, !tbaa !229
  %i.av = load float, ptr %i.at, align 4, !tbaa !229 ; 2 uses
  %i.aw = fmul float %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.ay = load <2 x float>, ptr %i.ax, align 4, !tbaa !229
  %i.az = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.ba, %i.ay
  %i.bc = fadd float %.sroa.015.019.i.epil.init, %i.aw
  %i.bd = fadd <2 x float> %.epil.init, %i.bb
  br label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit:  ; preds = %.epil.preheader, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.015.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.ao, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.bc, %.epil.preheader ]
  %i.be = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ap, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.bd, %.epil.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 164
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !229 ; 3 uses
  %i.bh = fmul float %.sroa.015.0.lcssa.i, %i.bg
  %i.bi = extractelement <2 x float> %i.be, i64 0
  %i.bj = fmul float %i.bi, %i.bg
  %i.bk = extractelement <2 x float> %i.be, i64 1
  %i.bl = fmul float %i.bk, %i.bg
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.bh, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.bj, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bl, i64 0
  %.fca.0.insert.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert.i.i, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN10btSoftBody15clusterVelocityEPKNS_7ClusterERK9btVector3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #18 align 2 !guid !567 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !229 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.g = load float, ptr %i.f, align 4, !tbaa !229 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.a, align 4, !tbaa !229
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.k = load float, ptr %i.h, align 4, !tbaa !229
  %i.l = load <2 x float>, ptr %1, align 4, !tbaa !229 ; 2 uses
  %i.m = fneg float %i.k
  %i.n = fmul float %i.g, %i.m
  %i.o = load float, ptr %i.c, align 4, !tbaa !229
  %i.p = load <2 x float>, ptr %i.b, align 4, !tbaa !229 ; 2 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %i.o, float %i.e, float %i.n)
  %i.r = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.s = insertelement <2 x float> %i.r, float %i.e, i64 0
  %i.t = fneg <2 x float> %i.s
  %i.u = fmul <2 x float> %i.p, %i.t
  %i.v = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.w = insertelement <2 x float> %i.v, float %i.g, i64 0
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.l, <2 x float> %i.u)
  %i.y = fadd float %i.q, %i.i
  %i.z = load <2 x float>, ptr %i.j, align 4, !tbaa !229
  %i.aa = fadd <2 x float> %i.z, %i.x             ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.aa, <2 x i32> <i32 0, i32 2>
  %2 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.aa, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ab, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %2, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10btSoftBody15clusterVImpulseEPNS_7ClusterERK9btVector3S4_(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #19 align 2 !guid !568 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load float, ptr %i.a, align 4, !tbaa !229 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load float, ptr %i.d, align 4, !tbaa !229
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = load float, ptr %i.g, align 4, !tbaa !229
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = load float, ptr %i.i, align 4, !tbaa !229
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.l = load float, ptr %i.k, align 4, !tbaa !229
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = load float, ptr %i.m, align 4, !tbaa !229
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !229
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !229
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !229
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !229
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.y = load float, ptr %2, align 4, !tbaa !229
  %i.z = load <3 x float>, ptr %2, align 4, !tbaa !229 ; 2 uses
  %i.aa = shufflevector <3 x float> %i.z, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0> ; 2 uses
  %i.ab = fmul float %i.y, %i.b                   ; 2 uses
  %i.ac = load <3 x float>, ptr %1, align 4, !tbaa !229 ; 2 uses
  %i.ad = fneg <3 x float> %i.z
  %i.ae = shufflevector <3 x float> %i.ac, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.af = fmul <3 x float> %i.ae, %i.ad
  %i.ag = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ac, <3 x float> %i.aa, <3 x float> %i.af) ; 6 uses
  %i.ah = load <2 x float>, ptr %i.c, align 4, !tbaa !229 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.f, align 4, !tbaa !229 ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <2 x i32> <i32 1, i32 3>
  %i.ak = shufflevector <3 x float> %i.ag, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.al = fmul <2 x float> %i.aj, %i.ak
  %i.am = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <2 x i32> <i32 0, i32 2>
  %i.an = shufflevector <3 x float> %i.ag, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.an, <2 x float> %i.al)
  %i.ap = insertelement <2 x float> poison, float %i.e, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.h, i64 1
  %i.ar = shufflevector <3 x float> %i.ag, <3 x float> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.ar, <2 x float> %i.ao) ; 2 uses
  %i.at = extractelement <3 x float> %i.ag, i64 2
  %i.au = fmul float %i.at, %i.l
  %i.av = extractelement <3 x float> %i.ag, i64 1
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.j, float %i.av, float %i.au)
  %i.ax = extractelement <3 x float> %i.ag, i64 0
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.ax, float %i.aw) ; 2 uses
  %i.az = fadd float %i.ab, %i.p
  store float %i.az, ptr %i.o, align 4, !tbaa !229
  %i.ba = fadd float %i.ab, %i.v
  store float %i.ba, ptr %i.u, align 4, !tbaa !229
  %i.bb = load <2 x float>, ptr %i.w, align 4, !tbaa !229
  %i.bc = insertelement <2 x float> poison, float %i.b, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = shufflevector <3 x float> %i.aa, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bf = fmul <2 x float> %i.bd, %i.be           ; 3 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = fadd float %i.bg, %i.r
  store float %i.bh, ptr %i.q, align 4, !tbaa !229
  %i.bi = extractelement <2 x float> %i.bf, i64 1
  %i.bj = fadd float %i.bi, %i.t
  store float %i.bj, ptr %i.s, align 4, !tbaa !229
  %i.bk = fadd <2 x float> %i.bf, %i.bb
  store <2 x float> %i.bk, ptr %i.w, align 4, !tbaa !229
  %i.bl = load <2 x float>, ptr %i.x, align 4, !tbaa !229
  %i.bm = fadd <2 x float> %i.as, %i.bl
  store <2 x float> %i.bm, ptr %i.x, align 4, !tbaa !229
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !229
  %i.bp = fadd float %i.ay, %i.bo
  store float %i.bp, ptr %i.bn, align 4, !tbaa !229
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.br = load <2 x float>, ptr %i.bq, align 4, !tbaa !229
  %i.bs = fadd <2 x float> %i.as, %i.br
  store <2 x float> %i.bs, ptr %i.bq, align 4, !tbaa !229
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !229
  %i.bv = fadd float %i.ay, %i.bu
  store float %i.bv, ptr %i.bt, align 4, !tbaa !229
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !318
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10btSoftBody15clusterDImpulseEPNS_7ClusterERK9btVector3S4_(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #19 align 2 !guid !569 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load float, ptr %i.a, align 4, !tbaa !229 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !229 ; 3 uses
  %i.e = fmul float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load float, ptr %i.g, align 4, !tbaa !229
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = load float, ptr %i.j, align 4, !tbaa !229
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = load float, ptr %i.l, align 4, !tbaa !229
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.o = load float, ptr %i.n, align 4, !tbaa !229
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.q = load float, ptr %i.p, align 4, !tbaa !229
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.s = load <2 x float>, ptr %2, align 4, !tbaa !229 ; 3 uses
  %i.t = insertelement <2 x float> poison, float %i.b, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.u, %i.s
  %i.w = load <2 x float>, ptr %i.r, align 4, !tbaa !229
  %i.x = fadd <2 x float> %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !229
  %i.aa = fadd float %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ac = load <3 x float>, ptr %1, align 4, !tbaa !229 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.f, align 4, !tbaa !229 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.i, align 4, !tbaa !229 ; 2 uses
  %i.af = shufflevector <2 x float> %i.s, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ag = insertelement <3 x float> %i.af, float %i.d, i64 2
  %i.ah = fneg <3 x float> %i.ag
  %i.ai = shufflevector <3 x float> %i.ac, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.aj = fmul <3 x float> %i.ai, %i.ah
  %i.ak = shufflevector <2 x float> %i.s, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.al = insertelement <3 x float> %i.ak, float %i.d, i64 1
  %i.am = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ac, <3 x float> %i.al, <3 x float> %i.aj) ; 6 uses
  %i.an = shufflevector <2 x float> %i.ad, <2 x float> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ao = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ap = fmul <2 x float> %i.an, %i.ao
  %i.aq = shufflevector <2 x float> %i.ad, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.ar = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.ar, <2 x float> %i.ap)
  %i.at = insertelement <2 x float> poison, float %i.h, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.k, i64 1
  %i.av = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.av, <2 x float> %i.as)
  %i.ax = extractelement <3 x float> %i.am, i64 2
  %i.ay = fmul float %i.ax, %i.o
  %i.az = extractelement <3 x float> %i.am, i64 1
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.m, float %i.az, float %i.ay)
  %i.bb = extractelement <3 x float> %i.am, i64 0
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.bb, float %i.ba)
  store <2 x float> %i.x, ptr %i.r, align 4, !tbaa !229
  store float %i.aa, ptr %i.y, align 4, !tbaa !229
  %i.bd = load <2 x float>, ptr %i.ab, align 4, !tbaa !229
  %i.be = fadd <2 x float> %i.aw, %i.bd
  store <2 x float> %i.be, ptr %i.ab, align 4, !tbaa !229
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !229
  %i.bh = fadd float %i.bc, %i.bg
  store float %i.bh, ptr %i.bf, align 4, !tbaa !229
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !319
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !319
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10btSoftBody14clusterImpulseEPNS_7ClusterERK9btVector3RKNS_7ImpulseE(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(33) %2) local_unnamed_addr #19 align 2 !guid !570 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.e = load float, ptr %i.d, align 4, !tbaa !229 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load float, ptr %i.g, align 4, !tbaa !229
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = load float, ptr %i.j, align 4, !tbaa !229
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = load float, ptr %i.l, align 4, !tbaa !229
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.o = load float, ptr %i.n, align 4, !tbaa !229
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.q = load float, ptr %i.p, align 4, !tbaa !229
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !229
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !229
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody18initializeClustersEv:bb.a
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !652

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
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i.prol
  %i.ag = load float, ptr %i.af, align 4, !tbaa !229
  store float %i.ag, ptr %i.ae, align 4, !tbaa !229
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !653

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ah = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i
  %i.al = load float, ptr %i.ak, align 4, !tbaa !229
  store float %i.al, ptr %i.aj, align 4, !tbaa !229
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i
  %i.ao = load float, ptr %i.an, align 4, !tbaa !229
  store float %i.ao, ptr %i.am, align 4, !tbaa !229
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.1
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !229
  store float %i.ar, ptr %i.ap, align 4, !tbaa !229
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.2
  %i.au = load float, ptr %i.at, align 4, !tbaa !229
  store float %i.au, ptr %i.as, align 4, !tbaa !229
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !654

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !112, !range !245, !noundef !246
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.f, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i8 1, ptr %i.ay, align 8, !tbaa !112
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !113
  store i32 %i.j, ptr %i.n, align 8, !tbaa !115
  %.pre190.pre = load i32, ptr %i.i, align 4, !tbaa !315
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %.pre190 = phi i32 [ %i.j, %..lr.ph.i_crit_edge ], [ %.pre190.pre, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.az = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.ba = sext i32 %i.l to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %i.j to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %scevgep = getelementptr i8, ptr %i.az, i64 %i.bb
  %i.bc = sub nsw i64 %wide.trip.count.i, %i.ba
  %i.bd = shl nsw i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.bd, i1 false), !tbaa !229
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit:    ; preds = %.lr.ph.i, %bb.b
  %i.be = phi i32 [ %.pre190, %.lr.ph.i ], [ %i.j, %bb.b ] ; 11 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !114
  %i.bf = icmp sgt i32 %i.be, 0                   ; 3 uses
  br i1 %i.bf, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %.pre193 = load float, ptr %i.h, align 4, !tbaa !332
  %i.bg = fdiv float 1.000000e+00, %.pre193       ; 2 uses
  store float %i.bg, ptr %i.h, align 4, !tbaa !332
  br label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !316
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !113
  %wide.trip.count = zext nneg i32 %i.be to i64   ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.k
  %i.bm = fdiv float 1.000000e+00, %i.en          ; 3 uses
  store float %i.bm, ptr %i.h, align 4, !tbaa !332
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !316 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !113 ; 3 uses
  %xtraiter242 = and i64 %wide.trip.count, 1
  %i.br = icmp eq i32 %i.be, 1
  br i1 %i.br, label %.epil.preheader, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge.new
  %indvars.iv.i81 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next.i82.1, %bb.g ] ; 4 uses
  %.sroa.015.019.i = phi float [ 0.000000e+00, %._crit_edge.new ], [ %i.ct, %bb.g ]
  %i.bs = phi <2 x float> [ zeroinitializer, %._crit_edge.new ], [ %i.cu, %bb.g ]
  %niter = phi i64 [ 0, %._crit_edge.new ], [ %niter.next.1, %bb.g ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i81
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !279 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i81
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !229
  %i.by = load float, ptr %i.bw, align 4, !tbaa !229 ; 2 uses
  %i.bz = fmul float %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %i.cb = load <2 x float>, ptr %i.ca, align 4, !tbaa !229
  %i.cc = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.cd, %i.cb
  %i.cf = fadd float %.sroa.015.019.i, %i.bz
  %i.cg = fadd <2 x float> %i.bs, %i.ce
  %indvars.iv.next.i82 = or disjoint i64 %indvars.iv.i81, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i82
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !279 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next.i82
  %i.cl = load float, ptr %i.cj, align 4, !tbaa !229
  %i.cm = load float, ptr %i.ck, align 4, !tbaa !229 ; 2 uses
  %i.cn = fmul float %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %i.cp = load <2 x float>, ptr %i.co, align 4, !tbaa !229
  %i.cq = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cr, %i.cp
  %i.ct = fadd float %i.cf, %i.cn                 ; 3 uses
  %i.cu = fadd <2 x float> %i.cg, %i.cs           ; 3 uses
  %indvars.iv.next.i82.1 = add nuw nsw i64 %indvars.iv.i81, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, label %bb.g

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, %._crit_edge
  %indvars.iv.i81.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i82.1, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.015.019.i.epil.init = phi float [ 0.000000e+00, %._crit_edge ], [ %i.ct, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %._crit_edge ], [ %i.cu, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ]
  %lcmp.mod246 = trunc i32 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod246)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i81.epil.init
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !279 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i81.epil.init
  %i.cz = load float, ptr %i.cx, align 4, !tbaa !229
  %i.da = load float, ptr %i.cy, align 4, !tbaa !229 ; 2 uses
  %i.db = fmul float %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.dd = load <2 x float>, ptr %i.dc, align 4, !tbaa !229
  %i.de = insertelement <2 x float> poison, float %i.da, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %i.df, %i.dd
  %i.dh = fadd float %.sroa.015.019.i.epil.init, %i.db
  %i.di = fadd <2 x float> %.epil.init, %i.dg
  br label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit:  ; preds = %.epil.preheader, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, %._crit_edge.thread
  %i.dj = phi float [ %i.bg, %._crit_edge.thread ], [ %i.bm, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.bm, %.epil.preheader ] ; 2 uses
  %.sroa.015.0.lcssa.i = phi float [ 0.000000e+00, %._crit_edge.thread ], [ %i.ct, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.dh, %.epil.preheader ]
  %i.dk = phi <2 x float> [ zeroinitializer, %._crit_edge.thread ], [ %i.cu, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.di, %.epil.preheader ]
  %i.dl = fmul float %i.dj, %.sroa.015.0.lcssa.i  ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.dn, %i.dk           ; 3 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dp = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> %i.do, <2 x i32> <i32 0, i32 2>
  %1 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.do, <2 x i32> <i32 3, i32 1>
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 3 uses
  store <2 x float> %i.dp, ptr %i.dq, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  store <2 x float> %1, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !250
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 168 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 208 ; 2 uses
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dr, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ds, i8 0, i64 48, i1 false)
  br i1 %i.bf, label %.lr.ph163, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge: ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit
  %.phi.trans.insert194 = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  %.phi.trans.insert198 = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %.phi.trans.insert200 = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %i.du = load <2 x float>, ptr %.phi.trans.insert194, align 4, !tbaa !229
  %.pre199 = load float, ptr %.phi.trans.insert198, align 8, !tbaa !229
  %.pre201 = load float, ptr %.phi.trans.insert200, align 4, !tbaa !229, !noalias !658 ; 2 uses
  %i.dv = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.pre201, i64 1
  br label %._crit_edge164

.lr.ph163:                                        ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !316
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !113
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 188 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 172 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %.promoted165 = load float, ptr %i.ea, align 4, !tbaa !229
  %i.ed = load <2 x float>, ptr %i.eb, align 4, !tbaa !229
  %.promoted168 = load float, ptr %i.ec, align 8, !tbaa !229
  %wide.trip.count182 = zext nneg i32 %i.be to i64
  %i.ee = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.promoted168, i64 1
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !279
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 96
  %i.ei = load float, ptr %i.eh, align 8, !tbaa !267 ; 2 uses
  %i.ej = fcmp oeq float %i.ei, 0.000000e+00
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  br i1 %i.ej, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.bk, align 8, !tbaa !328
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.el = fdiv float 1.000000e+00, %i.ei
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = phi float [ %i.el, %bb.j ], [ f0x5D5E0B6B, %bb.i ] ; 2 uses
  store float %.sink, ptr %i.ek, align 4, !tbaa !229
  %i.em = load float, ptr %i.h, align 4, !tbaa !332
  %i.en = fadd float %.sink, %i.em                ; 2 uses
  store float %i.en, ptr %i.h, align 4, !tbaa !332
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h

bb.l:                                             ; preds = %.lr.ph163, %bb.l
  %indvars.iv179 = phi i64 [ 0, %.lr.ph163 ], [ %indvars.iv.next180, %bb.l ] ; 3 uses
  %i.eo = phi float [ 0.000000e+00, %.lr.ph163 ], [ %i.fn, %bb.l ]
  %i.ep = phi float [ %.promoted165, %.lr.ph163 ], [ %i.fp, %bb.l ]
  %i.eq = phi <2 x float> [ %i.ed, %.lr.ph163 ], [ %i.fu, %bb.l ]
  %i.er = phi <2 x float> [ %i.ee, %.lr.ph163 ], [ %i.fz, %bb.l ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv179
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !279 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !229
  %i.ew = fsub float %i.ev, %i.dl                 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  %i.ey = fmul float %i.ew, %i.ew
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv179
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !229 ; 3 uses
  %i.fb = load <2 x float>, ptr %i.ex, align 4, !tbaa !229
  %i.fc = fsub <2 x float> %i.fb, %i.do           ; 5 uses
  %i.fd = fmul <2 x float> %i.fc, %i.fc           ; 2 uses
  %i.fe = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fd)
  %i.ff = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fadd <2 x float> %i.fg, %i.fd
  %i.fi = insertelement <2 x float> poison, float %i.fa, i64 0 ; 2 uses
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.ep, i64 1
  %i.fm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fh, <2 x float> %i.fl) ; 3 uses
  %i.fn = extractelement <2 x float> %i.fm, i64 0 ; 3 uses
  store float %i.fn, ptr %.sroa.5142.0..sroa_idx, align 8, !tbaa !229
  %i.fo = extractelement <2 x float> %i.fc, i64 0
  %i.fp = extractelement <2 x float> %i.fm, i64 1 ; 3 uses
  store float %i.fp, ptr %i.ea, align 4, !tbaa !229
  %i.fq = fneg float %i.ew
  %i.fr = fmul float %i.fa, %i.fq
  %i.fs = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fc, <2 x float> %i.eq) ; 3 uses
  store <2 x float> %i.fu, ptr %i.eb, align 4, !tbaa !229
  %i.fv = fneg float %i.fo
  %i.fw = fmul float %i.fa, %i.fv
  %i.fx = insertelement <2 x float> %i.fi, float %i.fw, i64 1
  %i.fy = insertelement <2 x float> %i.fc, float %i.fe, i64 0
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fy, <2 x float> %i.er) ; 3 uses
  %i.ga = extractelement <2 x float> %i.fz, i64 0 ; 2 uses
  store float %i.ga, ptr %i.ds, align 8, !tbaa !229
  %i.gb = extractelement <2 x float> %i.fz, i64 1 ; 2 uses
  store float %i.gb, ptr %i.ec, align 8, !tbaa !229
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count182
  br i1 %exitcond183.not, label %._crit_edge164, label %bb.l

._crit_edge164:                                   ; preds = %bb.l, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge
  %i.gc = phi float [ 0.000000e+00, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.ga, %bb.l ] ; 4 uses
  %i.gd = phi float [ 0.000000e+00, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fn, %bb.l ] ; 2 uses
  %i.ge = phi float [ %.pre201, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fp, %bb.l ] ; 3 uses
  %i.gf = phi float [ %.pre199, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.gb, %bb.l ] ; 5 uses
  %i.gg = phi <2 x float> [ %i.dv, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fm, %bb.l ]
  %i.gh = phi <2 x float> [ %i.du, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fu, %bb.l ] ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  %i.gj = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.gk = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %i.gl = fneg float %i.gf                        ; 2 uses
  %i.gm = fmul float %i.gf, %i.gl
  %i.gn = fneg <2 x float> %i.gg
  %i.go = extractelement <2 x float> %i.gh, i64 1 ; 3 uses
  %i.gp = fneg float %i.go                        ; 2 uses
  %i.gq = fmul float %i.go, %i.gp
  %i.gr = tail call noundef float @llvm.fmuladd.f32(float %i.gc, float %i.gd, float %i.gq)
  %i.gs = extractelement <2 x float> %i.gh, i64 0 ; 3 uses
  %i.gt = fneg float %i.gs
  %i.gu = fmul float %i.gs, %i.gt
  %i.gv = tail call noundef float @llvm.fmuladd.f32(float %i.gc, float %i.ge, float %i.gu)
  %i.gw = tail call noundef float @llvm.fmuladd.f32(float %i.ge, float %i.gd, float %i.gm) ; 2 uses
  %i.gx = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.gz = shufflevector <2 x float> %i.gn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ha = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %i.gz, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.hb = shufflevector <4 x float> %i.gz, <4 x float> %i.ha, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hc = fmul <4 x float> %i.gy, %i.hb
  %i.hd = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.gf, i64 0
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> %i.gx, <4 x i32> <i32 0, i32 4, i32 2, i32 0>
  %2 = shufflevector <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x float> %i.gx, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.hf = insertelement <4 x float> %2, float %i.gf, i64 1
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.he, <4 x float> %i.hg, <4 x float> %i.hc) ; 2 uses
  %i.hi = extractelement <4 x float> %i.hh, i64 0
  %i.hj = fmul float %i.gs, %i.hi
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.gw, float %i.hj)
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 196
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 4, !tbaa !250
  %i.hl = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.hm = insertelement <2 x float> %i.hl, float %i.gc, i64 1
  %i.hn = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.ho = insertelement <2 x float> %i.hn, float %i.gl, i64 1
  %i.hp = fmul <2 x float> %i.hm, %i.ho
  %i.hq = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hr = insertelement <2 x float> %i.hq, float %i.gf, i64 0
  %i.hs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.hr, <2 x float> %i.hp) ; 2 uses
  %i.ht = extractelement <2 x float> %i.hs, i64 0
  %i.hu = tail call noundef float @llvm.fmuladd.f32(float %i.go, float %i.ht, float %i.hk)
  %i.hv = fdiv float 1.000000e+00, %i.hu          ; 5 uses
  %i.hw = fmul float %i.gw, %i.hv
  %i.hx = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.hv, i64 0
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.hz = fmul <4 x float> %i.hh, %i.hy
  %i.ia = fmul float %i.gr, %i.hv
  %i.ib = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x float> %i.hs, %i.ic           ; 2 uses
  %i.ie = fmul float %i.gv, %i.hv
  store float %i.hw, ptr %i.ds, align 8
  store <4 x float> %i.hz, ptr %i.gi, align 4
  store float %i.ia, ptr %i.gk, align 4
  %i.if = extractelement <2 x float> %i.id, i64 1
  store float %i.if, ptr %i.gj, align 8
  store <2 x float> %i.id, ptr %i.dt, align 8
  store float %i.ie, ptr %.sroa.5142.0..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.6143.0..sroa_idx, align 4, !tbaa !250
  %i.ig = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store float 1.000000e+00, ptr %i.ig, align 8, !tbaa !229
  %i.ih = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  %i.ii = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ih, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ii, align 4, !tbaa !229
  %i.ij = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ik = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ik, align 8, !tbaa !229
  %i.il = getelementptr inbounds nuw i8, ptr %i.g, i64 140
  store i32 0, ptr %i.il, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.im, ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i64 16, i1 false), !tbaa.struct !263
  %i.in = getelementptr inbounds nuw i8, ptr %i.g, i64 68 ; 4 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !107 ; 2 uses
  %i.ip = icmp sgt i32 %i.be, %i.io
  br i1 %i.ip, label %bb.m, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.m:                                             ; preds = %._crit_edge164
  %i.iq = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !108
  %i.is = icmp slt i32 %i.ir, %i.be
  br i1 %i.is, label %bb.n, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i94 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i94, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.it = sext i32 %i.be to i64
  %i.iu = shl nsw i64 %i.it, 4
  %i.iv = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.iu, i32 noundef 16)
  %.pre.i95 = load i32, ptr %i.in, align 4, !tbaa !107
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.o, %bb.n
  %i.iw = phi i32 [ %.pre.i95, %bb.o ], [ %i.io, %bb.n ] ; 4 uses
  %.0.i.i.i96 = phi ptr [ %i.iv, %bb.o ], [ null, %bb.n ] ; 4 uses
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %.lr.ph.i.i.i98, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i98:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 3 uses
  %wide.trip.count.i.i.i99 = zext nneg i32 %i.iw to i64 ; 2 uses
  %xtraiter248 = and i64 %wide.trip.count.i.i.i99, 1
  %i.iz = icmp eq i32 %i.iw, 1
  br i1 %i.iz, label %.epil.preheader247, label %.lr.ph.i.i.i98.new

.lr.ph.i.i.i98.new:                               ; preds = %.lr.ph.i.i.i98
  %unroll_iter251 = and i64 %wide.trip.count.i.i.i99, 2147483646
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.i98.new
  %indvars.iv.i.i.i100 = phi i64 [ 0, %.lr.ph.i.i.i98.new ], [ %indvars.iv.next.i.i.i101.1, %bb.p ] ; 4 uses
  %niter252 = phi i64 [ 0, %.lr.ph.i.i.i98.new ], [ %niter252.next.1, %bb.p ]
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.i.i.i100
  %i.jb = load ptr, ptr %i.iy, align 8, !tbaa !106
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %indvars.iv.i.i.i100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ja, ptr noundef nonnull align 4 dereferenceable(16) %i.jc, i64 16, i1 false), !tbaa.struct !263
  %indvars.iv.next.i.i.i101 = or disjoint i64 %indvars.iv.i.i.i100, 1 ; 2 uses
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.next.i.i.i101
  %i.je = load ptr, ptr %i.iy, align 8, !tbaa !106
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %indvars.iv.next.i.i.i101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jd, ptr noundef nonnull align 4 dereferenceable(16) %i.jf, i64 16, i1 false), !tbaa.struct !263
  %indvars.iv.next.i.i.i101.1 = add nuw nsw i64 %indvars.iv.i.i.i100, 2 ; 2 uses
  %niter252.next.1 = add i64 %niter252, 2         ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.p

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.p
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader247

.epil.preheader247:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i98
  %indvars.iv.i.i.i100.epil.init = phi i64 [ 0, %.lr.ph.i.i.i98 ], [ %indvars.iv.next.i.i.i101.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod250 = trunc i32 %i.iw to i1
  tail call void @llvm.assume(i1 %lcmp.mod250)
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.i.i.i100.epil.init
  %i.jh = load ptr, ptr %i.iy, align 8, !tbaa !106
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.jh, i64 %indvars.iv.i.i.i100.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jg, ptr noundef nonnull align 4 dereferenceable(16) %i.ji, i64 16, i1 false), !tbaa.struct !263
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader247, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !106 ; 2 uses
  %.not.i5.i.i97 = icmp eq ptr %i.jk, null
  br i1 %.not.i5.i.i97, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !105, !range !245, !noundef !246
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.r, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.jk)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.r, %bb.q, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i8 1, ptr %i.jo, align 8, !tbaa !105
  store ptr %.0.i.i.i96, ptr %i.jj, align 8, !tbaa !106
  store i32 %i.be, ptr %i.iq, align 8, !tbaa !108
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.m, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %._crit_edge164
  store i32 %i.be, ptr %i.in, align 4, !tbaa !107
  br i1 %i.bf, label %.lr.ph170, label %._crit_edge171

.lr.ph170:                                        ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph170, %bb.s
  %indvars.iv184 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next185, %bb.s ] ; 3 uses
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !316
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv184
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !279 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load <2 x float>, ptr %i.ju, align 4, !tbaa !229
  %i.jw = load <2 x float>, ptr %i.dq, align 8, !tbaa !229
  %i.jx = fsub <2 x float> %i.jv, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !229
  %i.ka = load float, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !229
  %i.kb = fsub float %i.jz, %i.ka
  %.sroa.3.12.vec.insert.i105 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kb, i64 0
  %i.kc = load ptr, ptr %i.jq, align 8, !tbaa !106
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %indvars.iv184 ; 2 uses
  store <2 x float> %i.jx, ptr %i.kd, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i105, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !250
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.ke = load i32, ptr %i.in, align 4, !tbaa !107
  %i.kf = sext i32 %i.ke to i64
  %i.kg = icmp slt i64 %indvars.iv.next185, %i.kf
  br i1 %i.kg, label %bb.s, label %._crit_edge171

._crit_edge171:                                   ; preds = %bb.s, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.kh = load i32, ptr %i.a, align 4, !tbaa !216
  %i.ki = sext i32 %i.kh to i64
  %i.kj = icmp slt i64 %indvars.iv.next188, %i.ki
  br i1 %i.kj, label %bb.b, label %._crit_edge175

._crit_edge175:                                   ; preds = %._crit_edge171, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody14updateClustersEv(ptr noundef nonnull align 8 dereferenceable(1496) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !661 {
bb.a:
  %1 = alloca %class.btMatrix3x3, align 4         ; 11 uses
  %2 = alloca %class.btMatrix3x3, align 4         ; 7 uses
  %3 = alloca %class.btMatrix3x3, align 4         ; 4 uses
  %4 = alloca %struct.btDbvtAabbMm, align 16      ; 7 uses
  %5 = alloca %class.btVector3, align 8           ; 6 uses
  tail call void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !216  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
end_hunk_1
begin_hunk_2_@_ZN10btSoftBody10updatePoseEv:bb.a
  %i.ck = load <1 x float>, ptr %i.cd, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.cm = load <1 x float>, ptr %i.cl, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.co = load <1 x float>, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.cq = load <1 x float>, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.cs = load <1 x float>, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cu = load <1 x float>, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.cw = load <1 x float>, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.cy = load <1 x float>, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.da = load <1 x float>, ptr %i.cz, align 8
  %i.db = load <2 x float>, ptr %2, align 8, !tbaa !229, !noalias !719 ; 2 uses
  %i.dc = load <2 x float>, ptr %i.bz, align 8, !tbaa !229, !noalias !719 ; 2 uses
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.de = load <2 x float>, ptr %i.cb, align 8, !tbaa !229, !noalias !719 ; 2 uses
  %i.df = shufflevector <2 x float> %i.de, <2 x float> %i.db, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.dg = shufflevector <2 x float> %i.dc, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.dh = shufflevector <3 x float> %i.df, <3 x float> %i.dg, <3 x i32> <i32 0, i32 1, i32 4>
  %i.di = shufflevector <1 x float> %i.cy, <1 x float> poison, <3 x i32> zeroinitializer
  %i.dj = fmul <3 x float> %i.dh, %i.di
  %i.dk = shufflevector <2 x float> %i.de, <2 x float> %i.db, <3 x i32> <i32 0, i32 2, i32 poison> ; 2 uses
  %i.dl = shufflevector <3 x float> %i.dk, <3 x float> %i.dg, <3 x i32> <i32 0, i32 1, i32 3>
  %i.dm = shufflevector <1 x float> %i.cw, <1 x float> poison, <3 x i32> zeroinitializer
  %i.dn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dl, <3 x float> %i.dm, <3 x float> %i.dj)
  %i.do = shufflevector <1 x float> %i.da, <1 x float> poison, <3 x i32> zeroinitializer
  %i.dp = load <2 x float>, ptr %i.ce, align 4, !tbaa !229, !noalias !719 ; 3 uses
  %i.dq = load float, ptr %i.ch, align 8, !tbaa !229, !noalias !719
  %i.dr = load <2 x float>, ptr %i.cf, align 4, !tbaa !229, !noalias !719 ; 3 uses
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.dt = load float, ptr %i.ci, align 8, !tbaa !229, !noalias !719
  %i.du = load <2 x float>, ptr %i.cg, align 4, !tbaa !229, !noalias !719 ; 3 uses
  %i.dv = load float, ptr %i.cj, align 8, !tbaa !229, !noalias !719
  %i.dw = shufflevector <2 x float> %i.du, <2 x float> %i.dp, <3 x i32> <i32 0, i32 2, i32 poison> ; 2 uses
  %i.dx = shufflevector <2 x float> %i.dr, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.dy = shufflevector <3 x float> %i.dw, <3 x float> %i.dx, <3 x i32> <i32 0, i32 1, i32 3>
  %i.dz = shufflevector <1 x float> %i.cs, <1 x float> poison, <3 x i32> zeroinitializer
  %i.ea = fmul <3 x float> %i.dy, %i.dz
  %i.eb = shufflevector <3 x float> %i.dk, <3 x float> %i.dd, <3 x i32> <i32 0, i32 1, i32 3> ; 2 uses
  %i.ec = shufflevector <1 x float> %i.cq, <1 x float> poison, <3 x i32> zeroinitializer
  %i.ed = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eb, <3 x float> %i.ec, <3 x float> %i.ea)
  %i.ee = shufflevector <2 x float> %i.du, <2 x float> %i.dp, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.ef = shufflevector <3 x float> %i.ee, <3 x float> %i.dx, <3 x i32> <i32 0, i32 1, i32 4>
  %i.eg = shufflevector <1 x float> %i.cu, <1 x float> poison, <3 x i32> zeroinitializer
  %i.eh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ef, <3 x float> %i.eg, <3 x float> %i.ed) ; 6 uses
  %i.ei = shufflevector <2 x float> %i.dp, <2 x float> %i.dr, <3 x i32> <i32 poison, i32 1, i32 3>
  %i.ej = shufflevector <2 x float> %i.du, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.ek = shufflevector <3 x float> %i.ei, <3 x float> %i.ej, <3 x i32> <i32 4, i32 1, i32 2>
  %i.el = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ek, <3 x float> %i.do, <3 x float> %i.dn) ; 6 uses
  %i.em = shufflevector <3 x float> %i.dw, <3 x float> %i.ds, <3 x i32> <i32 0, i32 1, i32 3>
  %i.en = shufflevector <1 x float> %i.cm, <1 x float> poison, <3 x i32> zeroinitializer
  %i.eo = fmul <3 x float> %i.em, %i.en
  %i.ep = shufflevector <1 x float> %i.ck, <1 x float> poison, <3 x i32> zeroinitializer
  %i.eq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eb, <3 x float> %i.ep, <3 x float> %i.eo)
  %i.er = insertelement <3 x float> poison, float %i.dv, i64 0
  %i.es = insertelement <3 x float> %i.er, float %i.dq, i64 1
  %i.et = insertelement <3 x float> %i.es, float %i.dt, i64 2
  %i.eu = shufflevector <1 x float> %i.co, <1 x float> poison, <3 x i32> zeroinitializer
  %i.ev = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.et, <3 x float> %i.eu, <3 x float> %i.eq) ; 6 uses
  %i.ew = shufflevector <3 x float> %i.ev, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ex = fmul <2 x float> %i.ew, %i.bw
  %i.ey = insertelement <2 x float> %i.bv, float %i.bt, i64 1 ; 2 uses
  %i.ez = shufflevector <3 x float> %i.ev, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.ez, <2 x float> %i.ex)
  %i.fb = shufflevector <3 x float> %i.ev, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.fb, <2 x float> %i.fa) ; 4 uses
  %i.fd = extractelement <3 x float> %i.ev, i64 2
  %i.fe = fmul float %i.fd, %i.br
  %i.ff = extractelement <3 x float> %i.ev, i64 1
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.ff, float %i.fe)
  %i.fh = extractelement <3 x float> %i.ev, i64 0
  %i.fi = tail call noundef float @llvm.fmuladd.f32(float %.lcssa91, float %i.fh, float %i.fg) ; 3 uses
  %i.fj = shufflevector <3 x float> %i.eh, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fk = fmul <2 x float> %i.fj, %i.bw
  %i.fl = shufflevector <3 x float> %i.eh, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.fl, <2 x float> %i.fk)
  %i.fn = shufflevector <3 x float> %i.eh, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.fn, <2 x float> %i.fm) ; 4 uses
  %i.fp = shufflevector <3 x float> %i.el, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fq = fmul <2 x float> %i.bw, %i.fp
  %i.fr = shufflevector <3 x float> %i.el, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.fr, <2 x float> %i.fq)
  %i.ft = shufflevector <3 x float> %i.el, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.ft, <2 x float> %i.fs) ; 4 uses
  %i.fv = shufflevector <3 x float> %i.eh, <3 x float> %i.el, <2 x i32> <i32 2, i32 5>
  %i.fw = insertelement <2 x float> poison, float %i.br, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x float> %i.fv, %i.fx
  %i.fz = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = shufflevector <3 x float> %i.eh, <3 x float> %i.el, <2 x i32> <i32 1, i32 4>
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.gb, <2 x float> %i.fy)
  %i.gd = insertelement <2 x float> poison, float %.lcssa91, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = shufflevector <3 x float> %i.eh, <3 x float> %i.el, <2 x i32> <i32 0, i32 3>
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.gf, <2 x float> %i.gc) ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  store <2 x float> %i.fc, ptr %i.gh, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  store float %i.fi, ptr %.sroa.558.0..sroa_idx, align 8
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 684
  store float 0.000000e+00, ptr %.sroa.659.0..sroa_idx, align 4, !tbaa !250
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  store <2 x float> %i.fo, ptr %i.gi, align 8
  %.sroa.1062.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.gj = extractelement <2 x float> %i.gg, i64 0 ; 3 uses
  store float %i.gj, ptr %.sroa.1062.16..sroa_idx, align 8
  %.sroa.1163.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 700
  store float 0.000000e+00, ptr %.sroa.1163.16..sroa_idx, align 4, !tbaa !250
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  store <2 x float> %i.fu, ptr %i.gk, align 8
  %.sroa.1564.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.gl = extractelement <2 x float> %i.gg, i64 1 ; 3 uses
  store float %i.gl, ptr %.sroa.1564.32..sroa_idx, align 8
  %.sroa.1665.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 716
  store float 0.000000e+00, ptr %.sroa.1665.32..sroa_idx, align 4, !tbaa !250
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !720 ; 3 uses
  %i.go = fcmp ogt float %i.gn, 1.000000e+00
  br i1 %i.go, label %bb.f, label %bb.g

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.gp = phi float [ %.promoted102, %.lr.ph ], [ %i.hp, %bb.e ]
  %i.gq = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.hw, %bb.e ]
  %i.gr = phi <2 x float> [ %i.bl, %.lr.ph ], [ %i.hj, %bb.e ]
  %i.gs = phi <2 x float> [ <float 0.000000e+00, float f0x34800000>, %.lr.ph ], [ %i.ho, %bb.e ]
  %i.gt = phi <2 x float> [ %i.bm, %.lr.ph ], [ %i.hx, %bb.e ]
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  %i.gv = getelementptr inbounds nuw [120 x i8], ptr %i.bf, i64 %indvars.iv
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load float, ptr %i.gu, align 4, !tbaa !229
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !229 ; 2 uses
  %i.hb = load <3 x float>, ptr %i.gw, align 4, !tbaa !229
  %i.hc = fsub <3 x float> %i.hb, %i.bn
  %i.hd = insertelement <3 x float> poison, float %i.gx, i64 0
  %i.he = shufflevector <3 x float> %i.hd, <3 x float> poison, <3 x i32> zeroinitializer
  %i.hf = fmul <3 x float> %i.he, %i.hc           ; 5 uses
  %i.hg = load <2 x float>, ptr %i.gy, align 4, !tbaa !229 ; 3 uses
  %i.hh = shufflevector <3 x float> %i.hf, <3 x float> poison, <2 x i32> zeroinitializer
  %i.hi = fmul <2 x float> %i.hh, %i.hg
  %i.hj = fadd <2 x float> %i.hi, %i.gr           ; 3 uses
  %i.hk = shufflevector <3 x float> %i.hf, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hl = fmul <2 x float> %i.hk, %i.hg
  %i.hm = extractelement <3 x float> %i.hf, i64 1
  %i.hn = fmul float %i.hm, %i.ha
  %i.ho = fadd <2 x float> %i.hl, %i.gs           ; 2 uses
  %i.hp = fadd float %i.hn, %i.gp                 ; 3 uses
  %i.hq = shufflevector <3 x float> %i.hf, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.hr = fmul <2 x float> %i.hq, %i.hg
  %i.hs = shufflevector <3 x float> %i.hf, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ht = insertelement <2 x float> poison, float %i.ha, i64 0
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hv = fmul <2 x float> %i.hs, %i.hu
  %i.hw = fadd <2 x float> %i.hr, %i.gq           ; 2 uses
  %i.hx = fadd <2 x float> %i.hv, %i.gt           ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e

bb.f:                                             ; preds = %bb.d
  %i.hy = extractelement <2 x float> %i.fu, i64 1 ; 2 uses
  %i.hz = fneg float %i.hy
  %i.ia = fmul float %i.gj, %i.hz
  %i.ib = extractelement <2 x float> %i.fo, i64 1 ; 2 uses
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.gl, float %i.ia)
  %i.id = fneg float %i.gl
  %i.ie = extractelement <2 x float> %i.fo, i64 0 ; 2 uses
  %i.if = fmul float %i.ie, %i.id
  %i.ig = extractelement <2 x float> %i.fu, i64 0 ; 2 uses
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.gj, float %i.ig, float %i.if)
  %i.ii = extractelement <2 x float> %i.fc, i64 1
  %i.ij = fmul float %i.ii, %i.ih
  %i.ik = extractelement <2 x float> %i.fc, i64 0
  %i.il = tail call float @llvm.fmuladd.f32(float %i.ik, float %i.ic, float %i.ij)
  %i.im = fneg float %i.ig
  %i.in = fmul float %i.ib, %i.im
  %i.io = tail call float @llvm.fmuladd.f32(float %i.ie, float %i.hy, float %i.in)
  %i.ip = tail call noundef float @llvm.fmuladd.f32(float %i.fi, float %i.io, float %i.il)
  %i.iq = fdiv float 1.000000e+00, %i.ip          ; 3 uses
  %i.ir = fcmp olt float %i.iq, 1.000000e+00
  %i.is = fcmp ogt float %i.iq, %i.gn
  %..i = select i1 %i.is, float %i.gn, float %i.iq
  %i.it = select i1 %i.ir, float 1.000000e+00, float %..i ; 2 uses
  %i.iu = insertelement <2 x float> poison, float %i.it, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.iw = fmul <2 x float> %i.fc, %i.iv
  %i.ix = fmul float %i.fi, %i.it
  %.sroa.3.12.vec.insert.i.i40 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ix, i64 0
  %i.iy = fmul <2 x float> %i.fo, %i.iv
  %i.iz = fmul <2 x float> %i.fu, %i.iv
  %i.ja = fmul <2 x float> %i.gg, %i.iv           ; 2 uses
  %i.jb = insertelement <2 x float> %i.ja, float 0.000000e+00, i64 1
  %4 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ja, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.iw, ptr %i.gh, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i40, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !250
  store <2 x float> %i.iy, ptr %i.gi, align 8
  store <2 x float> %i.jb, ptr %.sroa.1062.16..sroa_idx, align 8, !tbaa !250
  store <2 x float> %i.iz, ptr %i.gk, align 8
  store <2 x float> %4, ptr %.sroa.1564.32..sroa_idx, align 8, !tbaa !250
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

declare void @_ZN6btDbvt19optimizeIncrementalEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody16solveConstraintsEv(ptr noundef nonnull align 8 dereferenceable(1496) %0) local_unnamed_addr #0 align 2 !guid !723 {
bb.a:
  %1 = alloca %class.btVector3, align 8           ; 6 uses
  %2 = alloca %class.btMatrix3x3, align 4         ; 6 uses
  tail call void @_ZN10btSoftBody13applyClustersEb(ptr noundef nonnull align 8 dereferenceable(1496) %0, i1 noundef zeroext false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.b = load i32, ptr %i.a, align 4, !tbaa !184  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 864
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %indvars.iv ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !279  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !279  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load <2 x float>, ptr %i.j, align 4, !tbaa !229
  %i.n = load <2 x float>, ptr %i.l, align 4, !tbaa !229
  %i.o = fsub <2 x float> %i.m, %i.n              ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.q = load float, ptr %i.p, align 4, !tbaa !229
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.s = load float, ptr %i.r, align 4, !tbaa !229
  %i.t = fsub float %i.q, %i.s                    ; 3 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.t, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store <2 x float> %i.o, ptr %i.u, align 4
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.445.0..sroa_idx, align 4, !tbaa !250
  %foldExtExtBinop = fmul <2 x float> %i.o, %i.o
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.w = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.v)
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.aa = load float, ptr %i.z, align 8, !tbaa !309
  %i.ab = fmul float %i.aa, %i.y
  %i.ac = fdiv float 1.000000e+00, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store float %i.ac, ptr %i.ad, align 8, !tbaa !343
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 948
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !196 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph140, label %._crit_edge141

.lr.ph140:                                        ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %wide.trip.count177 = zext nneg i32 %i.af to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph140, %bb.c
  %indvars.iv174 = phi i64 [ 0, %.lr.ph140 ], [ %indvars.iv.next175, %bb.c ] ; 2 uses
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !195
  %i.an = getelementptr inbounds nuw [104 x i8], ptr %i.am, i64 %indvars.iv174 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !344 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = load float, ptr %i.at, align 4, !tbaa !229
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !229
  %i.az = load float, ptr %i.ar, align 8, !tbaa !229 ; 2 uses
  %i.ba = load <2 x float>, ptr %i.aq, align 4, !tbaa !229 ; 2 uses
  %i.bb = load float, ptr %i.as, align 4, !tbaa !229 ; 2 uses
  %i.bc = load float, ptr %i.av, align 8, !tbaa !229 ; 2 uses
  %i.bd = load <2 x float>, ptr %i.aw, align 4, !tbaa !229 ; 2 uses
  %i.be = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = shufflevector <2 x float> %i.ba, <2 x float> %i.bd, <2 x i32> <i32 1, i32 3>
  %i.bh = fmul <2 x float> %i.bf, %i.bg
  %i.bi = shufflevector <2 x float> %i.ba, <2 x float> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.bj = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bk, <2 x float> %i.bh)
  %i.bm = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.ay, i64 1
  %i.bo = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bp, <2 x float> %i.bl)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.bs = load float, ptr %i.br, align 4, !tbaa !229
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !229
  %i.bv = fmul float %i.bb, %i.bu
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.az, float %i.bv)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.by = load float, ptr %i.bx, align 4, !tbaa !229
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.by, float %i.bc, float %i.bw)
  %.sroa.3.12.vec.insert.i83 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bz, i64 0
  store <2 x float> %i.bq, ptr %1, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i83, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.ca = load float, ptr %i.aj, align 8, !tbaa !341
  %i.cb = load ptr, ptr %i.an, align 8, !tbaa !284
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 96 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !267
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 360
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !350
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ap, i64 280
  call fastcc void @_ZL13ImpulseMatrixfffRK11btMatrix3x3RK9btVector3(ptr dead_on_unwind noalias writable align 4 %2, float noundef %i.ca, float noundef %i.cd, float noundef %i.cf, ptr noundef nonnull align 4 dereferenceable(48) %i.cg, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 4 dereferenceable(48) %2, i64 16, i1 false), !tbaa.struct !263
  %i.ci = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !263
  %i.cj = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 4 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !263
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !263
  %i.cl = load float, ptr %i.aj, align 8, !tbaa !341
  %i.cm = load float, ptr %i.cc, align 8, !tbaa !267
  %i.cn = fmul float %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  store float %i.cn, ptr %i.co, align 8, !tbaa !724
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.ap, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %._crit_edge141, label %bb.c

._crit_edge141:                                   ; preds = %bb.c, %._crit_edge
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !725 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.preheader135.lr.ph, label %.loopexit134

.preheader135.lr.ph:                              ; preds = %._crit_edge141
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !94 ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.preheader135, label %._crit_edge146

.preheader135:                                    ; preds = %.preheader135.lr.ph, %._crit_edge144
  %i.cw = phi i32 [ %i.de, %._crit_edge144 ], [ %i.cq, %.preheader135.lr.ph ]
  %i.cx = phi i32 [ %i.df, %._crit_edge144 ], [ %i.cu, %.preheader135.lr.ph ] ; 2 uses
  %.076145 = phi i32 [ %i.dg, %._crit_edge144 ], [ 0, %.preheader135.lr.ph ]
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph143, label %._crit_edge144

._crit_edge146:                                   ; preds = %._crit_edge144, %.preheader135.lr.ph
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !180 ; 2 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph149, label %.loopexit134

.lr.ph149:                                        ; preds = %._crit_edge146
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 512
  %wide.trip.count185 = zext nneg i32 %i.da to i64
  br label %bb.d

._crit_edge144.loopexit:                          ; preds = %.lr.ph143
  %.pre = load i32, ptr %i.cp, align 4, !tbaa !725
  br label %._crit_edge144

end_hunk_2
begin_hunk_3_@_ZN10btSoftBody13applyClustersEb:bb.a
  %i.az = fmul float %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %.v53 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !229
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bd = load <2 x float>, ptr %i.av, align 4, !tbaa !229
  %i.be = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bg = fmul <2 x float> %i.bf, %i.bd
  %i.bh = load <2 x float>, ptr %i.bc, align 4, !tbaa !229 ; 2 uses
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bj = insertelement <2 x float> %i.bi, float %i.bb, i64 1
  %i.bk = fmul <2 x float> %i.bf, %i.bh           ; 2 uses
  %i.bl = fmul <2 x float> %i.bf, %i.bj           ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !315 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph184, label %.loopexit

.lr.ph184:                                        ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !316
  %i.br = load ptr, ptr %i.ap, align 8, !tbaa !179
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !113
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 264
  %i.bw = getelementptr inbounds nuw i8, ptr %i.as, i64 268
  %wide.trip.count193 = zext nneg i32 %i.bn to i64
  %i.bx = extractelement <2 x float> %i.bk, i64 0
  %i.by = extractelement <2 x float> %i.bl, i64 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph184, %bb.i
  %indvars.iv190 = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next191, %bb.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv190
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !279 ; 3 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bs
  %i.cd = sdiv exact i64 %i.cc, 120
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv190
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !229 ; 3 uses
  %i.ch = load float, ptr %i.ce, align 4, !tbaa !229
  %i.ci = load float, ptr %i.bv, align 8, !tbaa !229
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.ck = shl i64 %i.cd, 32
  %i.cl = ashr exact i64 %i.ck, 32                ; 2 uses
  %i.cm = getelementptr inbounds [16 x i8], ptr %.sroa.11154.3165, i64 %i.cl ; 3 uses
  %i.cn = load <2 x float>, ptr %i.cj, align 4, !tbaa !229 ; 2 uses
  %i.co = load <2 x float>, ptr %i.bw, align 4, !tbaa !229 ; 2 uses
  %i.cp = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cq = insertelement <2 x float> %i.cp, float %i.ch, i64 1
  %i.cr = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cs = insertelement <2 x float> %i.cr, float %i.ci, i64 1
  %i.ct = fsub <2 x float> %i.cq, %i.cs           ; 2 uses
  %i.cu = fsub <2 x float> %i.cn, %i.co           ; 2 uses
  %i.cv = fneg <2 x float> %i.cu
  %i.cw = fmul <2 x float> %i.bl, %i.cv
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.ct, <2 x float> %i.cw)
  %i.cy = extractelement <2 x float> %i.ct, i64 1
  %i.cz = fneg float %i.cy
  %i.da = fmul float %i.bx, %i.cz
  %i.db = extractelement <2 x float> %i.cu, i64 0
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.by, float %i.db, float %i.da)
  %i.dd = fadd <2 x float> %i.bg, %i.cx
  %i.de = fadd float %i.az, %i.dc
  %i.df = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x float> %i.dg, %i.dd
  %i.di = fmul float %i.cg, %i.de
  %i.dj = load <2 x float>, ptr %i.cm, align 4, !tbaa !229
  %i.dk = fadd <2 x float> %i.dj, %i.dh
  store <2 x float> %i.dk, ptr %i.cm, align 4, !tbaa !229
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !229
  %i.dn = fadd float %i.di, %i.dm
  store float %i.dn, ptr %i.dl, align 4, !tbaa !229
  %i.do = getelementptr inbounds [4 x i8], ptr %.sroa.10141.1, i64 %i.cl ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !229
  %i.dq = fadd float %i.cg, %i.dp
  store float %i.dq, ptr %i.do, align 4, !tbaa !229
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count193
  br i1 %exitcond194.not, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.g
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %.preheader, label %bb.g

bb.j:                                             ; preds = %.lr.ph188, %bb.l
  %indvars.iv200 = phi i64 [ 0, %.lr.ph188 ], [ %indvars.iv.next201, %bb.l ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10141.1, i64 %indvars.iv200
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !229 ; 2 uses
  %i.dt = fcmp ogt float %i.ds, 0.000000e+00
  br i1 %i.dt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.sroa.11154.3165, i64 %indvars.iv200 ; 2 uses
  %i.dv = fdiv float 1.000000e+00, %i.ds          ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !229
  %i.dy = fmul float %i.dv, %i.dx
  %i.dz = load ptr, ptr %i.aq, align 8, !tbaa !179
  %i.ea = getelementptr inbounds nuw [120 x i8], ptr %i.dz, i64 %indvars.iv200 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ec = load <2 x float>, ptr %i.du, align 4, !tbaa !229
  %i.ed = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x float> %i.ee, %i.ec
  %i.eg = load <2 x float>, ptr %i.eb, align 4, !tbaa !229
  %i.eh = fadd <2 x float> %i.ef, %i.eg
  store <2 x float> %i.eh, ptr %i.eb, align 4, !tbaa !229
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !229
  %i.ek = fadd float %i.dy, %i.ej
  store float %i.ek, ptr %i.ei, align 4, !tbaa !229
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge.thread, label %bb.j

._crit_edge:                                      ; preds = %.preheader
  %.not.i.i.i104.not = icmp eq ptr %.sroa.10141.1, null
  br i1 %.not.i.i.i104.not, label %_ZN20btAlignedObjectArrayIfED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10141.1)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit unwind label %_ZN20btAlignedObjectArrayIfED2Ev.exit112

_ZN20btAlignedObjectArrayIfED2Ev.exit:            ; preds = %._crit_edge, %._crit_edge.thread
  %.not.i.i.i106.not = icmp eq ptr %.sroa.11154.3165, null
  br i1 %.not.i.i.i106.not, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.11154.3165)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread172

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit, %bb.m
  tail call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret void

_ZN20btAlignedObjectArrayIfED2Ev.exit112:         ; preds = %._crit_edge.thread
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i113.not = icmp eq ptr %.sroa.11154.3165, null
  br i1 %.not.i.i.i113.not, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116, label %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176

_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176: ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread, %_ZN20btAlignedObjectArrayIfED2Ev.exit112
  %.pn56.pn.pn.pn171 = phi { ptr, i32 } [ %i.al, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread ], [ %i.el, %_ZN20btAlignedObjectArrayIfED2Ev.exit112 ]
  %.sroa.11154.1169 = phi ptr [ %i.g, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread ], [ %.sroa.11154.3165, %_ZN20btAlignedObjectArrayIfED2Ev.exit112 ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.11154.1169)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116 unwind label %bb.n

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116: ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit112, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread172, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176
  %.pn56.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn171, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176 ], [ %i.el, %_ZN20btAlignedObjectArrayIfED2Ev.exit112 ], [ %i.ak, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread172 ]
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.n

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116
  resume { ptr, i32 } %.pn56.pn.pn.pn.pn

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  tail call void @__clang_call_terminate(ptr %i.en) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13ImpulseMatrixfffRK11btMatrix3x3RK9btVector3(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 48)) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) unnamed_addr #21 !guid !739 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.c = load float, ptr %5, align 4, !tbaa !229, !noalias !740 ; 6 uses
  %i.d = fneg float %i.c                          ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.j = load <3 x float>, ptr %4, align 4, !tbaa !229, !noalias !741 ; 2 uses
  %i.k = shufflevector <3 x float> %i.j, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.l = load <1 x float>, ptr %i.g, align 4
  %i.m = load <3 x float>, ptr %i.e, align 4, !tbaa !229, !noalias !741 ; 2 uses
  %i.n = shufflevector <3 x float> %i.m, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.o = load <1 x float>, ptr %i.h, align 4
  %i.p = load <3 x float>, ptr %i.f, align 4, !tbaa !229, !noalias !741 ; 3 uses
  %i.q = shufflevector <3 x float> %i.p, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.r = load float, ptr %i.i, align 4, !tbaa !229, !noalias !741
  %i.s = extractelement <3 x float> %i.p, i64 2
  %i.t = extractelement <3 x float> %i.p, i64 0
  %i.u = load <2 x float>, ptr %i.b, align 4, !tbaa !229, !noalias !740 ; 3 uses
  %i.v = load float, ptr %i.a, align 4, !tbaa !229, !noalias !740 ; 5 uses
  %i.w = extractelement <2 x float> %i.u, i64 0   ; 2 uses
  %i.x = fneg float %i.w                          ; 4 uses
  %i.y = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %6 = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.y, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.z = insertelement <4 x float> %i.y, float %i.d, i64 1
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ab = insertelement <4 x float> %i.y, float 0.000000e+00, i64 2
  %i.ac = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %i.x, i64 1
  %i.ad = insertelement <4 x float> %i.ac, float %i.c, i64 2
  %i.ae = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %3, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ag = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %2, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ai = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.x, i64 1
  %i.aj = fneg float %i.v                         ; 4 uses
  %i.ak = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.aj, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.am = fmul <4 x float> %i.n, %i.al
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %6, <4 x float> %i.am)
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.q, <4 x float> %i.aa, <4 x float> %i.an) ; 5 uses
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 1, i32 1, i32 1>
  %i.aq = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.aj, i64 2
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> %i.y, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.as = shufflevector <4 x float> %i.q, <4 x float> %i.ao, <4 x i32> <i32 2, i32 4, i32 4, i32 4>
  %i.at = shufflevector <1 x float> %i.o, <1 x float> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.c, i64 1
  %i.av = fmul <2 x float> %i.at, %i.au
  %i.aw = shufflevector <1 x float> %i.l, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.x, i64 1 ; 2 uses
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ay, <2 x float> %i.av)
  %i.ba = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.d, i64 0
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bc, <2 x float> %i.az) ; 3 uses
  %i.be = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 2, i32 2>
  %i.bf = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.v, i64 1
  %i.bg = fmul <2 x float> %i.bf, %i.bd
  %i.bh = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bi = shufflevector <4 x float> %i.ao, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.bj = insertelement <2 x float> %i.bi, float 0.000000e+00, i64 1
  %i.bk = insertelement <2 x float> %i.ay, float %i.c, i64 0
  %i.bl = insertelement <2 x float> <float poison, float 0.000000e+00>, float %3, i64 0
  %i.bm = insertelement <2 x float> <float poison, float -0.000000e+00>, float %2, i64 0
  %i.bn = shufflevector <2 x float> %i.bd, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.bo = shufflevector <3 x float> %i.m, <3 x float> %i.bn, <4 x i32> <i32 2, i32 2, i32 0, i32 3>
  %i.bp = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.c, i64 1
  %i.bq = insertelement <4 x float> %i.bp, float %i.d, i64 3
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.bs = fmul <4 x float> %i.bo, %i.br
  %i.bt = shufflevector <2 x float> %i.u, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.bu = shufflevector <3 x float> %i.j, <3 x float> %i.bt, <4 x i32> <i32 2, i32 2, i32 0, i32 3>
  %i.bv = insertelement <4 x float> %i.ao, float %i.v, i64 0
  %i.bw = insertelement <4 x float> %i.bv, float %i.x, i64 1
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %i.bx, <4 x float> %i.bs) ; 4 uses
  %i.bz = shufflevector <4 x float> %i.ab, <4 x float> %i.by, <4 x i32> <i32 5, i32 1, i32 2, i32 poison>
  %i.ca = insertelement <4 x float> %i.bz, float %i.d, i64 3
  %i.cb = extractelement <4 x float> %i.by, i64 0
  %i.cc = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.d, float %i.cb) ; 2 uses
  %i.cd = fmul <4 x float> %i.ca, %i.ap
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ar, <4 x float> %i.as, <4 x float> %i.cd) ; 3 uses
  %i.cf = extractelement <4 x float> %i.ce, i64 0 ; 2 uses
  %i.cg = extractelement <4 x float> %i.by, i64 2
  %i.ch = tail call noundef float @llvm.fmuladd.f32(float %i.t, float 0.000000e+00, float %i.cg) ; 3 uses
  %i.ci = insertelement <2 x float> %i.bh, float %i.ch, i64 1
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.bj, <2 x float> %i.bg)
  %i.ck = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cl = insertelement <2 x float> %i.ck, float %i.cc, i64 0
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.cl, <2 x float> %i.cj)
  %i.cn = fsub <2 x float> %i.bl, %i.cm           ; 2 uses
  %i.co = fadd <2 x float> %i.bm, %i.cn           ; 3 uses
  %i.cp = extractelement <2 x float> %i.co, i64 0 ; 2 uses
  %i.cq = fneg float %i.cp
  %i.cr = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = extractelement <2 x float> %i.cn, i64 1 ; 2 uses
  %i.cu = fneg float %i.ct                        ; 2 uses
  %i.cv = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.v, i64 0
  %i.cw = insertelement <4 x float> %i.cv, float %i.d, i64 2
  %i.cx = insertelement <4 x float> %i.cw, float %i.cu, i64 3
  %i.cy = shufflevector <2 x float> %i.bd, <2 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %i.cz = fmul <4 x float> %i.cx, %i.cy           ; 4 uses
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> %i.ce, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.be, <4 x float> %i.da) ; 2 uses
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> %i.by, <2 x i32> <i32 7, i32 0>
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.cs, <2 x float> %i.dc)
  %i.de = fsub <2 x float> zeroinitializer, %i.dd ; 5 uses
  %i.df = extractelement <2 x float> %i.de, i64 0 ; 2 uses
  %i.dg = extractelement <2 x float> %i.de, i64 1 ; 2 uses
  %i.dh = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.di = fneg <2 x float> %i.de
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dk = extractelement <4 x float> %i.cz, i64 1
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ch, float %i.dk)
  %i.dm = tail call noundef float @llvm.fmuladd.f32(float %i.c, float %i.cf, float %i.dl)
  %i.dn = extractelement <4 x float> %i.cz, i64 2
  %i.do = tail call float @llvm.fmuladd.f32(float %i.w, float %i.ch, float %i.dn)
  %i.dp = tail call noundef float @llvm.fmuladd.f32(float %i.cf, float 0.000000e+00, float %i.do)
  %i.dq = fsub float 0.000000e+00, %i.dm          ; 3 uses
  %i.dr = fneg float %i.dq                        ; 2 uses
  %i.ds = insertelement <4 x float> %i.db, float %i.dp, i64 0
  %i.dt = fsub <4 x float> %i.af, %i.ds           ; 3 uses
  %i.du = fadd <4 x float> %i.dt, %i.ah           ; 5 uses
  %i.dv = extractelement <4 x float> %i.du, i64 0 ; 2 uses
  %i.dw = fneg float %i.dv                        ; 2 uses
  %i.dx = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 3, i32 2>
  %i.dy = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.dz = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ea = fmul float %i.df, %i.dr
  %i.eb = extractelement <4 x float> %i.cz, i64 3
  %i.ec = tail call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.dq, float %i.eb) ; 2 uses
  %i.ed = tail call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.dv, float %i.ea) ; 2 uses
  %i.ee = fmul float %i.dg, %i.dw
  %i.ef = insertelement <4 x float> %i.dz, float %i.ed, i64 1
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> %i.dh, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.eh = insertelement <4 x float> %i.eg, float %i.dq, i64 3
  %i.ei = shufflevector <4 x float> %i.du, <4 x float> %i.dt, <4 x i32> <i32 1, i32 6, i32 1, i32 poison>
  %i.ej = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.dr, i64 2
  %i.ek = shufflevector <4 x float> %i.dj, <4 x float> %i.ej, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.el = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %i.em = shufflevector <2 x float> %i.de, <2 x float> %i.co, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.en = insertelement <4 x float> %i.em, float %i.ec, i64 3
  %i.eo = insertelement <4 x float> poison, float %i.ed, i64 0
  %i.ep = insertelement <4 x float> poison, float %i.ec, i64 0
  %i.eq = tail call noundef float @llvm.fmuladd.f32(float %i.df, float %i.ct, float %i.ee) ; 2 uses
  %i.er = insertelement <4 x float> %i.dy, float %i.eq, i64 1
  %i.es = insertelement <4 x float> %i.er, float %i.cq, i64 2
  %i.et = insertelement <4 x float> %i.es, float %i.dw, i64 3
  %i.eu = fmul <4 x float> %i.dx, %i.et
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %i.eh, <4 x float> %i.eu) ; 3 uses
  %i.ew = shufflevector <4 x float> %i.ei, <4 x float> %i.ev, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ex = fmul <4 x float> %i.ew, %i.ek
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> %i.en, <4 x float> %i.ex) ; 3 uses
  %i.ez = shufflevector <4 x float> %i.eo, <4 x float> %i.ev, <4 x i32> <i32 0, i32 7, i32 6, i32 0>
  %i.fa = shufflevector <4 x float> %i.ev, <4 x float> %i.ey, <4 x i32> <i32 poison, i32 0, i32 4, i32 0>
  %i.fb = insertelement <4 x float> %i.fa, float %i.eq, i64 0
  %i.fc = shufflevector <4 x float> %i.ep, <4 x float> %i.ey, <4 x i32> <i32 0, i32 6, i32 5, i32 0>
  %i.fd = shufflevector <4 x float> %i.ey, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.fe = insertelement <2 x float> %i.fd, float %1, i64 1
  %i.ff = fdiv <2 x float> splat (float 1.000000e+00), %i.fe ; 6 uses
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fh = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fi = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fj = extractelement <2 x float> %i.ff, i64 1
  %i.fk = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.fl = fmul <4 x float> %i.ez, %i.fk           ; 3 uses
  %i.fm = fmul <4 x float> %i.fb, %i.fk           ; 2 uses
  %i.fn = fmul <4 x float> %i.fc, %i.fk           ; 3 uses
  %i.fo = extractelement <4 x float> %i.fl, i64 2
  %i.fp = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.fq = extractelement <4 x float> %i.fn, i64 2
  %i.fr = insertelement <2 x float> %i.ff, float 0.000000e+00, i64 0
  %i.fs = shufflevector <4 x float> %i.fm, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ft = fmul <2 x float> %i.fr, %i.fs           ; 2 uses
  %7 = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.fi, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.fu = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %8 = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.fh, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.fv = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.fw = fmul <4 x float> %i.fm, %i.fv           ; 2 uses
  %i.fx = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.fy = shufflevector <2 x float> %i.ft, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fz = shufflevector <4 x float> %i.fx, <4 x float> %i.fy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ga = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %i.fu, <4 x float> %i.fz)
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> zeroinitializer, <4 x float> %i.ga) ; 2 uses
  %i.gc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fp, <4 x float> zeroinitializer, <4 x float> %i.fw)
  %i.gd = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %9 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.fg, <4 x i32> <i32 5, i32 1, i32 2, i32 poison>
  %i.ge = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.gf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %i.ge, <4 x float> %i.gc) ; 2 uses
  %i.gg = extractelement <2 x float> %i.ft, i64 0
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.fo, float 0.000000e+00, float %i.gg)
  %i.gi = tail call noundef float @llvm.fmuladd.f32(float %i.fq, float %i.fj, float %i.gh)
  %i.gj = insertelement <4 x float> %i.gb, float 0.000000e+00, i64 3
  store <4 x float> %i.gj, ptr %0, align 4, !tbaa !229, !alias.scope !742
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gl = shufflevector <4 x float> %i.gb, <4 x float> %i.gf, <4 x i32> <i32 3, i32 5, i32 6, i32 poison>
  %i.gm = insertelement <4 x float> %i.gl, float 0.000000e+00, i64 3
  store <4 x float> %i.gm, ptr %i.gk, align 4, !tbaa !229, !alias.scope !742
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.go = shufflevector <4 x float> %i.gf, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.go, ptr %i.gn, align 4, !tbaa !229, !alias.scope !742
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.gi, ptr %i.gp, align 4, !tbaa !229, !alias.scope !742
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %i.gq, align 4, !tbaa !229, !alias.scope !742
  ret void
}

declare void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN10btSoftBody9getSolverENS_8eVSolver1_E(i32 noundef %0) local_unnamed_addr #22 align 2 !guid !743 {
bb.a:
  %cond = icmp eq i32 %0, 0
  %_ZN10btSoftBody12VSolve_LinksEPS_f. = select i1 %cond, ptr @_ZN10btSoftBody12VSolve_LinksEPS_f, ptr null
  ret ptr %_ZN10btSoftBody12VSolve_LinksEPS_f.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN10btSoftBody9getSolverENS_8ePSolver1_E(i32 noundef %0) local_unnamed_addr #22 align 2 !guid !744 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN10btSoftBody11staticSolveEi, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10btSoftBody12dampClustersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0) local_unnamed_addr #15 align 2 !guid !745 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1340
  %i.b = load i32, ptr %i.a, align 4, !tbaa !216  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph50, label %._crit_edge

.lr.ph50:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !215
  %wide.trip.count55 = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph50, %.loopexit
  %indvars.iv52 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next53, %.loopexit ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv52
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !296  ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 392 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !746
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  br i1 %i.j, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !315  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !316
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 268
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 372
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !279  ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load float, ptr %i.x, align 8, !tbaa !267
  %i.z = fcmp ogt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !229
  %i.ac = load float, ptr %i.r, align 8, !tbaa !229
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.ae = load float, ptr %i.q, align 8, !tbaa !229 ; 2 uses
  %i.af = load float, ptr %i.u, align 8, !tbaa !229
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.ad, align 4, !tbaa !229 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.s, align 4, !tbaa !229 ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ak = insertelement <2 x float> %i.aj, float %i.ab, i64 1
  %i.al = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.am = insertelement <2 x float> %i.al, float %i.ac, i64 1
  %i.an = fsub <2 x float> %i.ak, %i.am           ; 2 uses
  %i.ao = fsub <2 x float> %i.ah, %i.ai           ; 2 uses
  %i.ap = load <2 x float>, ptr %i.t, align 4, !tbaa !229 ; 3 uses
  %i.aq = fneg <2 x float> %i.ao
  %i.ar = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.as = insertelement <2 x float> %i.ar, float %i.ae, i64 1
  %i.at = fmul <2 x float> %i.as, %i.aq
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.an, <2 x float> %i.at)
  %i.av = extractelement <2 x float> %i.an, i64 1
  %i.aw = fneg float %i.av
  %i.ax = extractelement <2 x float> %i.ap, i64 0
  %i.ay = fmul float %i.ax, %i.aw
  %i.az = extractelement <2 x float> %i.ao, i64 0
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.az, float %i.ay)
  %i.bb = load <2 x float>, ptr %i.p, align 8, !tbaa !229
  %i.bc = fadd <2 x float> %i.bb, %i.au           ; 3 uses
  %i.bd = fadd float %i.ba, %i.af                 ; 2 uses
  %i.be = load <2 x float>, ptr %i.ag, align 8, !tbaa !229 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !229 ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bc, <2 x float> %i.be, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bi = fmul <2 x float> %i.bh, %i.bh
  %i.bj = shufflevector <2 x float> %i.bc, <2 x float> %i.be, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bj, <2 x float> %i.bi)
  %i.bl = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bg, i64 1 ; 2 uses
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bm, <2 x float> %i.bk) ; 2 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0
  %i.bp = extractelement <2 x float> %i.bn, i64 1
  %i.bq = fcmp ugt float %i.bo, %i.bp
  br i1 %i.bq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = fsub <2 x float> %i.bc, %i.be
  %i.bs = fsub float %i.bd, %i.bg
  %i.bt = load float, ptr %i.h, align 8, !tbaa !229 ; 2 uses
  %i.bu = fmul float %i.bs, %i.bt
  %i.bv = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.br, %i.bw
  %i.by = fadd <2 x float> %i.be, %i.bx
  store <2 x float> %i.by, ptr %i.ag, align 8, !tbaa !229
  %i.bz = fadd float %i.bg, %i.bu
  store float %i.bz, ptr %i.bf, align 8, !tbaa !229
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.f, %.preheader, %bb.b
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody11staticSolveEi(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !guid !748 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge9

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.d = load i32, ptr %i.b, align 4, !tbaa !100  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader, label %._crit_edge9

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.f = phi i32 [ %i.h, %._crit_edge ], [ %i.d, %.preheader.lr.ph ] ; 2 uses
  %.068 = phi i32 [ %i.i, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge9:                                     ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.h = phi i32 [ %i.f, %.preheader ], [ %i.n, %.lr.ph ]
  %i.i = add nuw nsw i32 %.068, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.i, %1
  br i1 %exitcond.not, label %._crit_edge9, label %.preheader, !llvm.loop !747

end_hunk_3
begin_hunk_4_@_ZN10btSoftBody6LJoint7PrepareEfi:bb.a

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.gw = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %_ZNK10btSoftBody4Body7invMassEv.exit
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !362 ; 2 uses
  %.not5.i43 = icmp eq ptr %i.gx, null
  br i1 %.not5.i43, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 280
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

bb.aj:                                            ; preds = %bb.ah
  %i.gz = load ptr, ptr %i.e, align 8, !tbaa !301 ; 2 uses
  %.not6.i45 = icmp eq ptr %i.gz, null
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 216
  %spec.select.i46 = select i1 %.not6.i45, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.ha
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit:    ; preds = %bb.ai, %bb.aj
  %.0.i44 = phi ptr [ %i.gy, %bb.ai ], [ %spec.select.i46, %bb.aj ]
  %i.hb = load ptr, ptr %i.c, align 8, !tbaa !362 ; 2 uses
  %.not.i48 = icmp eq ptr %i.hb, null
  br i1 %.not.i48, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 360
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !350
  br label %_ZNK10btSoftBody4Body7invMassEv.exit51

bb.al:                                            ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.he = load ptr, ptr %i.bi, align 8, !tbaa !301 ; 2 uses
  %.not4.i50 = icmp eq ptr %i.he, null
  br i1 %.not4.i50, label %_ZNK10btSoftBody4Body7invMassEv.exit51, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 164
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !332
  br label %_ZNK10btSoftBody4Body7invMassEv.exit51

_ZNK10btSoftBody4Body7invMassEv.exit51:           ; preds = %bb.ak, %bb.al, %bb.am
  %.0.i49 = phi float [ %i.hd, %bb.ak ], [ %i.hg, %bb.am ], [ 0.000000e+00, %bb.al ]
  %i.hh = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.hi = icmp eq i8 %i.hh, 0
  br i1 %i.hi, label %bb.an, label %bb.ap, !prof !261

bb.an:                                            ; preds = %_ZNK10btSoftBody4Body7invMassEv.exit51
  %i.hj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  %.not.i56 = icmp eq i32 %i.hj, 0
  br i1 %.not.i56, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.hk = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %_ZNK10btSoftBody4Body7invMassEv.exit51
  %i.hl = load ptr, ptr %i.c, align 8, !tbaa !362 ; 2 uses
  %.not5.i52 = icmp eq ptr %i.hl, null
  br i1 %.not5.i52, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 280
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57

bb.ar:                                            ; preds = %bb.ap
  %i.hn = load ptr, ptr %i.bi, align 8, !tbaa !301 ; 2 uses
  %.not6.i54 = icmp eq ptr %i.hn, null
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 216
  %spec.select.i55 = select i1 %.not6.i54, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.ho
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57:  ; preds = %bb.aq, %bb.ar
  %.0.i53 = phi ptr [ %i.hm, %bb.aq ], [ %spec.select.i55, %bb.ar ]
  call fastcc void @_ZL13ImpulseMatrixfRK11btMatrix3x3RK9btVector3fS1_S4_(ptr dead_on_unwind noalias writable align 4 %3, float noundef %.0.i42, ptr noundef nonnull align 4 dereferenceable(48) %.0.i44, ptr noundef nonnull align 4 dereferenceable(16) %i.bh, float noundef %.0.i49, ptr noundef nonnull align 4 dereferenceable(48) %.0.i53, ptr noundef nonnull align 4 dereferenceable(16) %i.cn)
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.hp, ptr noundef nonnull align 4 dereferenceable(48) %3, i64 16, i1 false), !tbaa.struct !263
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hr, ptr noundef nonnull align 4 dereferenceable(16) %i.hq, i64 16, i1 false), !tbaa.struct !263
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ht, ptr noundef nonnull align 4 dereferenceable(16) %i.hs, i64 16, i1 false), !tbaa.struct !263
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hv = load float, ptr %i.hu, align 8, !tbaa !305 ; 5 uses
  %i.hw = fcmp ogt float %i.hv, 0.000000e+00
  %.pre = load float, ptr %i.ep, align 4, !tbaa !229 ; 3 uses
  br i1 %i.hw, label %bb.as, label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57._crit_edge

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57._crit_edge: ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre79 = load float, ptr %.phi.trans.insert, align 8, !tbaa !229
  %.pre80 = load float, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !229
  br label %bb.at

bb.as:                                            ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.hz = load <2 x float>, ptr %i.hy, align 4
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !229
  %i.ic = fmul float %i.hv, %.pre                 ; 2 uses
  %i.id = load float, ptr %i.hx, align 8, !tbaa !229 ; 2 uses
  %i.ie = fmul float %i.hv, %i.id                 ; 2 uses
  %i.if = load float, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !229 ; 2 uses
  %i.ig = fmul float %i.hv, %i.if                 ; 2 uses
  %i.ih = load <2 x float>, ptr %i.hp, align 4, !tbaa !229 ; 2 uses
  %i.ii = load <2 x float>, ptr %i.hr, align 4, !tbaa !229 ; 2 uses
  %i.ij = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.il = shufflevector <2 x float> %i.ih, <2 x float> %i.ii, <2 x i32> <i32 1, i32 3>
  %i.im = fmul <2 x float> %i.ik, %i.il
  %i.in = shufflevector <2 x float> %i.ih, <2 x float> %i.ii, <2 x i32> <i32 0, i32 2>
  %i.io = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.in, <2 x float> %i.ip, <2 x float> %i.im)
  %i.ir = insertelement <2 x float> %i.hz, float %i.ib, i64 1
  %i.is = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ir, <2 x float> %i.it, <2 x float> %i.iq)
  %i.iv = load float, ptr %i.ht, align 4, !tbaa !229
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ix = load float, ptr %i.iw, align 8, !tbaa !229
  %i.iy = fmul float %i.ie, %i.ix
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.iv, float %i.ic, float %i.iy)
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !229
  %i.jc = tail call noundef float @llvm.fmuladd.f32(float %i.jb, float %i.ig, float %i.iz)
  %.sroa.3.12.vec.insert.i65 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jc, i64 0
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 116
  store <2 x float> %i.iu, ptr %i.jd, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <2 x float> %.sroa.3.12.vec.insert.i65, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !250
  %i.je = fsub float 1.000000e+00, %i.hv          ; 3 uses
  %i.jf = fmul float %i.je, %.pre                 ; 2 uses
  store float %i.jf, ptr %i.ep, align 4, !tbaa !229
  %i.jg = fmul float %i.je, %i.id                 ; 2 uses
  store float %i.jg, ptr %i.hx, align 8, !tbaa !229
  %i.jh = fmul float %i.je, %i.if                 ; 2 uses
  store float %i.jh, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !229
  br label %bb.at

bb.at:                                            ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57._crit_edge, %bb.as
  %i.ji = phi float [ %i.jh, %bb.as ], [ %.pre80, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57._crit_edge ]
  %i.jj = phi float [ %i.jg, %bb.as ], [ %.pre79, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57._crit_edge ]
  %i.jk = phi float [ %i.jf, %bb.as ], [ %.pre, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57._crit_edge ]
  %i.jl = sitofp i32 %2 to float
  %i.jm = fdiv float 1.000000e+00, %i.jl          ; 3 uses
  %i.jn = fmul float %i.jm, %i.jk
  store float %i.jn, ptr %i.ep, align 4, !tbaa !229
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.jp = fmul float %i.jm, %i.jj
  store float %i.jp, ptr %i.jo, align 8, !tbaa !229
  %i.jq = fmul float %i.jm, %i.ji
  store float %i.jq, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !229
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13ImpulseMatrixfRK11btMatrix3x3RK9btVector3fS1_S4_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 48)) %0, float noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, float noundef %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6) unnamed_addr #21 !guid !809 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !229, !noalias !810 ; 5 uses
  %i.c = fneg float %i.b                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.i = load float, ptr %i.h, align 4, !tbaa !229, !noalias !811 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !229, !noalias !812 ; 5 uses
  %i.l = fneg float %i.k                          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.s = load float, ptr %i.r, align 4, !tbaa !229, !noalias !813 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !229, !alias.scope !814
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.x, align 4, !tbaa !229, !alias.scope !814
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load <2 x float>, ptr %3, align 4, !tbaa !229, !noalias !810 ; 5 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ab = load <2 x float>, ptr %2, align 4, !tbaa !229, !noalias !811 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.d, align 4, !tbaa !229, !noalias !811 ; 3 uses
  %i.ad = load <2 x float>, ptr %i.e, align 4, !tbaa !229, !noalias !811 ; 3 uses
  %i.ae = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison> ; 2 uses
  %7 = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float -0.000000e+00>, <4 x float> %i.ae, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.af = insertelement <4 x float> %i.ae, float 1.000000e+00, i64 3
  %i.ag = insertelement <4 x float> %i.af, float %i.c, i64 1 ; 3 uses
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ai = fmul <4 x float> %7, %i.ah
  %i.aj = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.al = shufflevector <4 x float> %i.aj, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 0, i32 7>
  %i.am = insertelement <4 x float> poison, float %i.b, i64 0
  %i.an = insertelement <4 x float> %i.al, float %i.b, i64 0
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.an, <4 x float> %i.ai)
  %i.ap = shufflevector <2 x float> %i.ad, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aq = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.ar = insertelement <4 x float> %i.aq, float -0.000000e+00, i64 3
  %i.as = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.at = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float 1.000000e+00>, <4 x float> %i.as, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.au = shufflevector <4 x float> %i.as, <4 x float> %i.ag, <4 x i32> <i32 1, i32 5, i32 5, i32 poison>
  %i.av = insertelement <4 x float> %i.au, float 1.000000e+00, i64 3
  %i.aw = fmul <4 x float> %i.at, %i.av
  %8 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.aj, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ax = shufflevector <4 x float> %i.am, <4 x float> %i.aj, <4 x i32> <i32 0, i32 5, i32 5, i32 poison>
  %i.ay = insertelement <4 x float> %i.ax, float -0.000000e+00, i64 3
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %8, <4 x float> %i.ay, <4 x float> %i.aw) ; 2 uses
  %i.ba = shufflevector <2 x float> %i.ad, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %i.bb = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.c, i64 1
  %i.bc = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.b, i64 0 ; 2 uses
  %i.bd = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.i, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bf = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.c, i64 1
  %i.bg = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.b, i64 1
  %i.bh = shufflevector <4 x float> %i.ag, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 1, i32 7>
  %i.bi = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %1, i64 2
  %i.bj = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float -0.000000e+00>, float %1, i64 2
  %i.bk = load <2 x float>, ptr %6, align 4, !tbaa !229, !noalias !812 ; 4 uses
  %i.bl = load float, ptr %i.m, align 4, !tbaa !229, !noalias !812 ; 2 uses
  %i.bm = load <2 x float>, ptr %5, align 4, !tbaa !229, !noalias !813 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.n, align 4, !tbaa !229, !noalias !813 ; 3 uses
  %i.bo = load <2 x float>, ptr %i.o, align 4, !tbaa !229, !noalias !813 ; 3 uses
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison> ; 2 uses
  %9 = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float -0.000000e+00>, <4 x float> %i.bp, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bq = insertelement <4 x float> %i.bp, float 1.000000e+00, i64 3
  %i.br = insertelement <4 x float> %i.bq, float %i.l, i64 1 ; 3 uses
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.bt = fmul <4 x float> %9, %i.bs
  %i.bu = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bw = shufflevector <4 x float> %i.bu, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 0, i32 7>
  %i.bx = insertelement <4 x float> poison, float %i.k, i64 0
  %i.by = insertelement <4 x float> %i.bw, float %i.k, i64 0
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.by, <4 x float> %i.bt)
  %i.ca = shufflevector <2 x float> %i.bo, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cb = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.cc = insertelement <4 x float> %i.cb, float -0.000000e+00, i64 3
  %i.cd = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.ce = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float 1.000000e+00>, <4 x float> %i.cd, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.cf = shufflevector <4 x float> %i.cd, <4 x float> %i.br, <4 x i32> <i32 1, i32 5, i32 5, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float 1.000000e+00, i64 3
  %i.ch = fmul <4 x float> %i.ce, %i.cg
  %10 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.bu, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ci = shufflevector <4 x float> %i.bx, <4 x float> %i.bu, <4 x i32> <i32 0, i32 5, i32 5, i32 poison>
  %i.cj = insertelement <4 x float> %i.ci, float -0.000000e+00, i64 3
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.cj, <4 x float> %i.ch) ; 2 uses
  %i.cl = shufflevector <2 x float> %i.bo, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %i.cm = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.l, i64 1
  %i.cn = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.k, i64 0 ; 2 uses
  %i.co = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.s, i64 0
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cq = load <2 x float>, ptr %i.f, align 4, !tbaa !229, !noalias !811 ; 2 uses
  %i.cr = load <2 x float>, ptr %i.g, align 4, !tbaa !229, !noalias !811 ; 2 uses
  %i.cs = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %11 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.cs, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ct = shufflevector <4 x float> %i.bc, <4 x float> %i.cs, <4 x i32> <i32 0, i32 5, i32 5, i32 3>
  %i.cu = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.cv = fmul <4 x float> %i.cu, %i.bb
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 7>
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %i.ct, <4 x float> %i.cw)
  %i.cy = insertelement <2 x float> %i.aa, float %i.bl, i64 1 ; 2 uses
  %i.cz = fneg <2 x float> %i.cy                  ; 3 uses
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.db = shufflevector <2 x float> %i.z, <2 x float> %i.bk, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.dc = shufflevector <2 x float> %i.ac, <2 x float> %i.bn, <4 x i32> <i32 0, i32 poison, i32 poison, i32 2>
  %i.dd = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.de = shufflevector <4 x float> %i.dc, <4 x float> %i.dd, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.df = fmul <4 x float> %i.db, %i.de
  %i.dg = shufflevector <2 x float> %i.ab, <2 x float> %i.bm, <4 x i32> <i32 0, i32 poison, i32 poison, i32 2>
  %i.dh = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.di = shufflevector <4 x float> %i.dg, <4 x float> %i.dh, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.da, <4 x float> %i.df) ; 3 uses
  %i.dk = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.dj, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> %i.az, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %i.dm = shufflevector <4 x float> %i.bc, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 0, i32 7>
  %i.dn = insertelement <4 x float> %i.da, float 0.000000e+00, i64 3
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> %i.aq, <4 x i32> <i32 0, i32 4, i32 poison, i32 3> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.dq = shufflevector <4 x float> %i.do, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.dr = extractelement <2 x float> %i.bo, i64 0
  %i.ds = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.l, i64 1
  %i.dt = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %12 = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.dt, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.du = shufflevector <4 x float> %12, <4 x float> %i.cb, <4 x i32> <i32 0, i32 4, i32 poison, i32 3> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.dw = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.k, i64 1
  %i.dx = shufflevector <4 x float> %i.br, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 1, i32 7>
  %i.dy = shufflevector <4 x float> %i.du, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.dz = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float -0.000000e+00>, float %4, i64 2 ; 2 uses
  %i.ea = load <4 x float>, ptr %i.p, align 4     ; 3 uses
  %i.eb = load <2 x float>, ptr %i.q, align 4, !tbaa !229, !noalias !813 ; 2 uses
  %13 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ea, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ec = shufflevector <4 x float> %i.cn, <4 x float> %i.ea, <4 x i32> <i32 0, i32 5, i32 5, i32 3>
  %i.ed = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.ee = fmul <4 x float> %i.ed, %i.cm
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 7>
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %13, <4 x float> %i.ec, <4 x float> %i.ef)
  %i.eh = shufflevector <2 x float> %i.cz, <2 x float> %i.ad, <4 x i32> <i32 1, i32 1, i32 2, i32 poison>
  %i.ei = insertelement <4 x float> %i.eh, float %i.i, i64 3
  %i.ej = shufflevector <4 x float> %i.ea, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ek = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.el = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.em = fmul <4 x float> %i.ek, %i.el
  %i.en = shufflevector <4 x float> %i.em, <4 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 4, i32 6>
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ei, <4 x float> %i.ej, <4 x float> %i.en) ; 6 uses
  %i.ep = insertelement <4 x float> %i.eo, float 1.000000e+00, i64 3
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> %i.ck, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %i.er = shufflevector <4 x float> %i.cn, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 0, i32 7>
  %14 = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.eo, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %15 = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.eo, <4 x i32> <i32 7, i32 poison, i32 poison, i32 3>
  %i.es = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.et = insertelement <2 x float> <float poison, float 0.000000e+00>, float %1, i64 0
  %i.eu = extractelement <4 x float> %i.dj, i64 3
  %i.ev = tail call noundef float @llvm.fmuladd.f32(float %i.dr, float 0.000000e+00, float %i.eu) ; 2 uses
  %i.ew = extractelement <4 x float> %i.eo, i64 1
  %i.ex = tail call noundef float @llvm.fmuladd.f32(float %i.s, float 0.000000e+00, float %i.ew) ; 2 uses
  %i.ey = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.ev, i64 0
  %i.ez = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.ex, i64 0
  %i.fa = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = shufflevector <2 x float> %i.z, <2 x float> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.fd = fneg <2 x float> %i.fc                  ; 5 uses
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> %i.ar, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 3 uses
  %i.fg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.ff, <4 x float> %i.ao) ; 4 uses
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %i.ff, <4 x float> %i.az) ; 3 uses
  %i.fi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.ff, <4 x float> %i.cx) ; 4 uses
  %16 = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %i.fe, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.fj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %16, <4 x float> %i.dl) ; 2 uses
  %i.fk = fmul <4 x float> %i.dm, %i.fh
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.fg, <4 x float> %i.fk)
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %i.fi, <4 x float> %i.fl)
  %i.fn = fmul <4 x float> %i.bg, %i.fj
  %i.fo = shufflevector <4 x float> %14, <4 x float> %i.fg, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %i.fp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.fo, <4 x float> %i.fn)
  %i.fq = shufflevector <4 x float> %15, <4 x float> %i.fi, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %i.fr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> %i.fq, <4 x float> %i.fp)
  %i.fs = shufflevector <4 x float> %i.fj, <4 x float> %i.fh, <2 x i32> <i32 0, i32 5>
  %i.ft = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = fmul <2 x float> %i.fs, %i.ft
  %i.fv = shufflevector <4 x float> %i.eo, <4 x float> %i.fg, <2 x i32> <i32 2, i32 5>
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.fv, <2 x float> %i.fu)
  %i.fx = shufflevector <4 x float> %i.eo, <4 x float> %i.fi, <2 x i32> <i32 3, i32 5>
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> zeroinitializer, <2 x float> %i.fw)
  %i.fz = fsub <4 x float> %i.bi, %i.fm
  %i.ga = fsub <4 x float> %i.bj, %i.fr
  %i.gb = fsub <2 x float> %i.et, %i.fy
  %i.gc = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> %i.cc, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 3 uses
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.gd, <4 x float> %i.bz) ; 4 uses
  %i.gf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.gd, <4 x float> %i.ck) ; 3 uses
  %i.gg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.gd, <4 x float> %i.eg) ; 4 uses
  %17 = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %i.fe, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %17, <4 x float> %i.eq) ; 2 uses
  %i.gi = fmul <4 x float> %i.er, %i.gf
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.ge, <4 x float> %i.gi)
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.gg, <4 x float> %i.gj)
  %i.gl = shufflevector <4 x float> %i.fh, <4 x float> %i.gf, <2 x i32> <i32 0, i32 4>
  %i.gm = fmul <2 x float> %i.gl, %i.fd
  %i.gn = shufflevector <4 x float> %i.fg, <4 x float> %i.ge, <2 x i32> <i32 0, i32 4>
  %i.go = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.gn, <2 x float> %i.gm)
  %i.gp = shufflevector <4 x float> %i.fi, <4 x float> %i.gg, <2 x i32> <i32 0, i32 4>
  %i.gq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> zeroinitializer, <2 x float> %i.go)
  %i.gr = fmul <4 x float> %i.dw, %i.gh
  %i.gs = shufflevector <4 x float> %i.ey, <4 x float> %i.ge, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %i.gt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.gs, <4 x float> %i.gr)
  %i.gu = shufflevector <4 x float> %i.ez, <4 x float> %i.gg, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %i.gv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dy, <4 x float> %i.gu, <4 x float> %i.gt)
  %i.gw = shufflevector <4 x float> %i.gh, <4 x float> %i.gf, <2 x i32> <i32 0, i32 5>
  %i.gx = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gy = fmul <2 x float> %i.gw, %i.gx
  %i.gz = shufflevector <4 x float> %i.ge, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.ha = insertelement <2 x float> %i.gz, float %i.ev, i64 0
  %i.hb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.ha, <2 x float> %i.gy)
  %i.hc = shufflevector <4 x float> %i.gg, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.hd = insertelement <2 x float> %i.hc, float %i.ex, i64 0
  %i.he = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> zeroinitializer, <2 x float> %i.hb)
  %i.hf = fsub <4 x float> %i.dz, %i.gk
  %i.hg = fsub <2 x float> zeroinitializer, %i.gq ; 2 uses
  %i.hh = fsub <4 x float> %i.dz, %i.gv
  %i.hi = insertelement <2 x float> <float poison, float 0.000000e+00>, float %4, i64 0
  %i.hj = fsub <2 x float> %i.hi, %i.he
  %i.hk = fadd <4 x float> %i.fz, %i.hf           ; 6 uses
  %shift = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.hg, %shift ; 3 uses
  %i.hl = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.hm = fadd <4 x float> %i.ga, %i.hh           ; 6 uses
  %i.hn = fadd <2 x float> %i.gb, %i.hj           ; 4 uses
  %i.ho = extractelement <4 x float> %i.hm, i64 2 ; 2 uses
  %i.hp = shufflevector <4 x float> %i.hm, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> %i.hn, <2 x i32> <i32 0, i32 2>
  %i.hr = fneg <2 x float> %i.hq                  ; 3 uses
  %i.hs = extractelement <4 x float> %i.hk, i64 0 ; 3 uses
  %i.ht = extractelement <2 x float> %i.hr, i64 1
  %i.hu = extractelement <4 x float> %i.hm, i64 1
  %i.hv = extractelement <4 x float> %i.hk, i64 1 ; 3 uses
  %i.hw = extractelement <4 x float> %i.hk, i64 2 ; 3 uses
  %i.hx = shufflevector <4 x float> %i.hk, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.hy = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.hx, <2 x i32> <i32 0, i32 3>
  %i.hz = fmul <2 x float> %i.hy, %i.hr
  %i.ia = shufflevector <4 x float> %i.hm, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ib = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ia, <2 x float> %i.hn, <2 x float> %i.hz) ; 2 uses
  %i.ic = extractelement <2 x float> %i.ib, i64 0
  %i.id = extractelement <2 x float> %i.hr, i64 0
  %i.ie = fmul float %i.hw, %i.id
  %i.if = fneg float %i.hs
  %i.ig = fmul float %i.hv, %i.if
  %i.ih = extractelement <2 x float> %i.hn, i64 1 ; 4 uses
  %i.ii = fneg float %i.ho
  %i.ij = fmul float %i.ih, %i.ii
  %i.ik = tail call noundef float @llvm.fmuladd.f32(float %i.hv, float %i.hl, float %i.ij)
  %i.il = fneg float %i.hl
  %i.im = fmul float %i.hw, %i.il
  %i.in = tail call noundef float @llvm.fmuladd.f32(float %i.ih, float %i.hs, float %i.im)
  %i.io = fmul float %i.hs, %i.ht
  %i.ip = fneg float %i.hu                        ; 2 uses
  %i.iq = fmul float %i.ho, %i.ip
  %i.ir = fmul float %i.ih, %i.ip
  %i.is = shufflevector <4 x float> %i.hk, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.it = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.is, <2 x i32> <i32 0, i32 3>
  %i.iu = shufflevector <2 x float> %i.hn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.iv = shufflevector <4 x float> %i.hm, <4 x float> %i.iu, <2 x i32> <i32 1, i32 4>
  %i.iw = insertelement <2 x float> poison, float %i.io, i64 0
  %i.ix = insertelement <2 x float> %i.iw, float %i.ir, i64 1
  %i.iy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.iv, <2 x float> %i.ix) ; 2 uses
  %i.iz = extractelement <2 x float> %i.iy, i64 0
  %i.ja = fmul float %i.hv, %i.iz
  %i.jb = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.ic, float %i.ja)
  %i.jc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.iq, i64 0
  %i.jd = insertelement <4 x float> %i.jc, float %i.ie, i64 1
  %i.je = insertelement <4 x float> %i.jd, float %i.ig, i64 2
  %i.jf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hk, <4 x float> %i.hm, <4 x float> %i.je) ; 2 uses
  %i.jg = extractelement <4 x float> %i.jf, i64 0
  %i.jh = tail call noundef float @llvm.fmuladd.f32(float %i.ih, float %i.jg, float %i.jb)
  %i.ji = fdiv float 1.000000e+00, %i.jh          ; 4 uses
  %i.jj = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jl = fmul <2 x float> %i.ib, %i.jk
  %i.jm = fmul float %i.ik, %i.ji
  %i.jn = fmul <2 x float> %i.iy, %i.jk
  %i.jo = fmul float %i.in, %i.ji
  %i.jp = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ji, i64 0
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.jr = fmul <4 x float> %i.jf, %i.jq
  store <2 x float> %i.jl, ptr %0, align 4, !tbaa !229, !alias.scope !814
  store float %i.jm, ptr %i.t, align 4, !tbaa !229, !alias.scope !814
  store <2 x float> %i.jn, ptr %i.v, align 4, !tbaa !229, !alias.scope !814
  store float %i.jo, ptr %i.w, align 4, !tbaa !229, !alias.scope !814
  store <4 x float> %i.jr, ptr %i.y, align 4, !tbaa !229, !alias.scope !814
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6LJoint5SolveEff(ptr noundef nonnull align 8 dereferenceable(216) %0, float %1, float noundef %2) unnamed_addr #0 align 2 !guid !817 {
bb.a:
  %3 = alloca %"struct.btSoftBody::Impulse", align 8 ; 9 uses
  %4 = alloca %"struct.btSoftBody::Impulse", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !362  ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !301  ; 5 uses
  %.not2.i.i = icmp eq ptr %i.e, null
  br i1 %.not2.i.i, label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.f, align 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %.sroa.5.0.copyload.i.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 348
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.j = load float, ptr %i.b, align 8, !tbaa !229 ; 2 uses
  %i.k = load float, ptr %i.g, align 4, !tbaa !229 ; 2 uses
  %i.l = load <2 x float>, ptr %i.h, align 4, !tbaa !229 ; 3 uses
  %i.m = load <2 x float>, ptr %i.i, align 4, !tbaa !229 ; 3 uses
  %i.n = fneg <2 x float> %i.m
  %i.o = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = insertelement <2 x float> %i.o, float %i.k, i64 1
  %i.q = fmul <2 x float> %i.p, %i.n
  %i.r = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = insertelement <2 x float> %i.r, float %i.j, i64 1
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.s, <2 x float> %i.q)
  %i.u = fneg float %i.j
  %i.v = extractelement <2 x float> %i.l, i64 0
  %i.w = fmul float %i.v, %i.u
  %i.x = extractelement <2 x float> %i.m, i64 0
  %i.y = tail call float @llvm.fmuladd.f32(float %i.k, float %i.x, float %i.w)
  %.sroa.3.12.vec.insert.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.y, i64 0
  br label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %.sroa.5.0.copyload8.i.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !tbaa !250
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %.sroa.0.0.copyload6.i.i = load <2 x float>, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 372
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ad = load float, ptr %i.b, align 8, !tbaa !229 ; 2 uses
  %i.ae = load float, ptr %i.aa, align 8, !tbaa !229 ; 2 uses
  %i.af = load <2 x float>, ptr %i.ab, align 4, !tbaa !229 ; 3 uses
  %i.ag = load <2 x float>, ptr %i.ac, align 4, !tbaa !229 ; 3 uses
  %i.ah = fneg <2 x float> %i.ag
  %i.ai = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = insertelement <2 x float> %i.ai, float %i.ae, i64 1
  %i.ak = fmul <2 x float> %i.aj, %i.ah
  %i.al = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.am = insertelement <2 x float> %i.al, float %i.ad, i64 1
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.am, <2 x float> %i.ak)
  %i.ao = fneg float %i.ad
  %i.ap = extractelement <2 x float> %i.af, i64 0
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = extractelement <2 x float> %i.ag, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ar, float %i.aq)
  %.sroa.3.12.vec.insert.i.i7.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  br label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit

_ZNK10btSoftBody4Body8velocityERK9btVector3.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.5.0.i17.i = phi <2 x float> [ %.sroa.5.0.copyload.i.i, %bb.c ], [ %.sroa.5.0.copyload8.i.i, %bb.d ], [ zeroinitializer, %bb.b ]
  %.sroa.0.0.i15.i = phi <2 x float> [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.0.0.copyload6.i.i, %bb.d ], [ zeroinitializer, %bb.b ]
  %.sroa.0.0.i3.i = phi <2 x float> [ %i.t, %bb.c ], [ %i.an, %bb.d ], [ zeroinitializer, %bb.b ]
  %.sroa.5.0.i4.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i.i, %bb.c ], [ %.sroa.3.12.vec.insert.i.i7.i.i, %bb.d ], [ zeroinitializer, %bb.b ]
  %i.at = shufflevector <2 x float> %.sroa.5.0.i17.i, <2 x float> %.sroa.0.0.i15.i, <3 x i32> <i32 0, i32 2, i32 3>
  %i.au = shufflevector <2 x float> %.sroa.5.0.i4.i, <2 x float> %.sroa.0.0.i3.i, <3 x i32> <i32 0, i32 2, i32 3>
  %i.av = fadd <3 x float> %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !362 ; 5 uses
  %.not.i.i1 = icmp eq ptr %i.az, null
  br i1 %.not.i.i1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !301 ; 5 uses
  %.not2.i.i23 = icmp eq ptr %i.ba, null
  br i1 %.not2.i.i23, label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30, label %bb.g

bb.f:                                             ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 328
  %.sroa.0.0.copyload.i.i2 = load <2 x float>, ptr %i.bb, align 4
  %.sroa.5.0..sroa_idx.i.i3 = getelementptr inbounds nuw i8, ptr %i.az, i64 336
  %.sroa.5.0.copyload.i.i4 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i.i3, align 4, !tbaa !250
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 344
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 348
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.bf = load float, ptr %i.ax, align 8, !tbaa !229 ; 2 uses
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !229 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_:bb.a

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6AJoint7PrepareEfi(ptr noundef nonnull align 8 dereferenceable(224) %0, float noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !825 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !308  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !362  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK10btSoftBody4Body8activateEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.f, i1 noundef zeroext false)
  br label %_ZNK10btSoftBody4Body8activateEv.exit.i

_ZNK10btSoftBody4Body8activateEv.exit.i:          ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !362  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i1.i, label %_ZN10btSoftBody5Joint7PrepareEfi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK10btSoftBody4Body8activateEv.exit.i
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.h, i1 noundef zeroext false)
  br label %_ZN10btSoftBody5Joint7PrepareEfi.exit

_ZN10btSoftBody5Joint7PrepareEfi.exit:            ; preds = %_ZNK10btSoftBody4Body8activateEv.exit.i, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.g, !prof !261

bb.d:                                             ; preds = %_ZN10btSoftBody5Joint7PrepareEfi.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.f unwind label %common.resume ; 4 uses

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.m, i64 16, i1 false), !tbaa.struct !263
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !263
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !263
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !263
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %_ZN10btSoftBody5Joint7PrepareEfi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !300  ; 2 uses
  %.not5.i = icmp eq ptr %i.s, null
  br i1 %.not5.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  br label %_ZNK10btSoftBody4Body5xformEv.exit

bb.i:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !301  ; 2 uses
  %.not6.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %spec.select.i = select i1 %.not6.i, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.v
  br label %_ZNK10btSoftBody4Body5xformEv.exit

_ZNK10btSoftBody4Body5xformEv.exit:               ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.t, %bb.h ], [ %spec.select.i, %bb.i ] ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !229
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !229
  %i.ae = load float, ptr %i.w, align 8, !tbaa !229 ; 2 uses
  %i.af = load <2 x float>, ptr %.0.i, align 4, !tbaa !229 ; 2 uses
  %i.ag = load float, ptr %i.x, align 4, !tbaa !229 ; 2 uses
  %i.ah = load float, ptr %i.aa, align 8, !tbaa !229 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.ab, align 4, !tbaa !229 ; 2 uses
  %i.aj = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = shufflevector <2 x float> %i.af, <2 x float> %i.ai, <2 x i32> <i32 1, i32 3>
  %i.am = fmul <2 x float> %i.ak, %i.al
  %i.an = shufflevector <2 x float> %i.af, <2 x float> %i.ai, <2 x i32> <i32 0, i32 2>
  %i.ao = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ap, <2 x float> %i.am)
  %i.ar = insertelement <2 x float> poison, float %i.z, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.ad, i64 1
  %i.at = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.au, <2 x float> %i.aq)
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !229
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  %i.az = load float, ptr %i.ay, align 4, !tbaa !229
  %i.ba = fmul float %i.ag, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ae, float %i.ba)
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !229
  %i.be = tail call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.ah, float %i.bb)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.be, i64 0
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store <2 x float> %i.av, ptr %i.bf, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !250
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bh = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.j, label %bb.m, !prof !261

bb.j:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit
  %i.bj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  %.not.i16 = icmp eq i32 %i.bj, 0
  br i1 %.not.i16, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.l unwind label %common.resume ; 4 uses

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.bk, i64 16, i1 false), !tbaa.struct !263
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !263
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !263
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !263
  %i.bo = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %_ZNK10btSoftBody4Body5xformEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !300 ; 2 uses
  %.not5.i12 = icmp eq ptr %i.bq, null
  br i1 %.not5.i12, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  br label %_ZNK10btSoftBody4Body5xformEv.exit17

common.resume:                                    ; preds = %bb.e, %bb.k
  %i.bs = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  resume { ptr, i32 } %i.bs

bb.o:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %i.bg, align 8, !tbaa !301 ; 2 uses
  %.not6.i14 = icmp eq ptr %i.bt, null
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 96
  %spec.select.i15 = select i1 %.not6.i14, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.bu
  br label %_ZNK10btSoftBody4Body5xformEv.exit17

_ZNK10btSoftBody4Body5xformEv.exit17:             ; preds = %bb.n, %bb.o
  %.0.i13 = phi ptr [ %i.br, %bb.n ], [ %spec.select.i15, %bb.o ] ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i13, i64 8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !229
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i13, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i13, i64 24
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !229
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i13, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i13, i64 40
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !229 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.cg = load float, ptr %i.bf, align 8, !tbaa !229 ; 3 uses
  %i.ch = load <2 x float>, ptr %.0.i13, align 4, !tbaa !229 ; 2 uses
  %i.ci = load <3 x float>, ptr %i.bv, align 8, !tbaa !229 ; 3 uses
  %i.cj = load <2 x float>, ptr %i.by, align 4, !tbaa !229 ; 2 uses
  %i.ck = load <2 x float>, ptr %i.cb, align 4, !tbaa !229 ; 4 uses
  %i.cl = shufflevector <3 x float> %i.ci, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cm = shufflevector <2 x float> %i.cj, <2 x float> %i.ck, <2 x i32> <i32 1, i32 3>
  %i.cn = fmul <2 x float> %i.cl, %i.cm
  %i.co = shufflevector <2 x float> %i.ck, <2 x float> %i.ch, <2 x i32> <i32 1, i32 3>
  %i.cp = fmul <2 x float> %i.co, %i.cl
  %i.cq = shufflevector <2 x float> %i.cj, <2 x float> %i.ck, <2 x i32> <i32 0, i32 2>
  %i.cr = shufflevector <3 x float> %i.ci, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cr, <2 x float> %i.cn)
  %i.ct = shufflevector <2 x float> %i.ck, <2 x float> %i.ch, <2 x i32> <i32 0, i32 2>
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cr, <2 x float> %i.cp)
  %i.cv = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.cd, i64 1
  %i.cx = shufflevector <3 x float> %i.ci, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.cx, <2 x float> %i.cs) ; 6 uses
  %i.cz = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.bx, i64 1
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.cx, <2 x float> %i.cu) ; 3 uses
  %i.dc = shufflevector <2 x float> %i.cy, <2 x float> %i.db, <2 x i32> <i32 3, i32 0>
  %3 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.cy, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.dc, ptr %i.ce, align 8
  store <2 x float> %3, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !250
  %i.dd = load <2 x float>, ptr %i.cf, align 4, !tbaa !229 ; 5 uses
  %i.de = fneg <2 x float> %i.dd
  %i.df = fmul <2 x float> %i.db, %i.de
  %i.dg = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dh = insertelement <2 x float> %i.dg, float %i.cg, i64 1
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.dh, <2 x float> %i.df) ; 4 uses
  %i.dj = fneg float %i.cg
  %i.dk = extractelement <2 x float> %i.cy, i64 0
  %i.dl = fmul float %i.dk, %i.dj
  %i.dm = extractelement <2 x float> %i.db, i64 1 ; 2 uses
  %i.dn = extractelement <2 x float> %i.dd, i64 0
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.dn, float %i.dl) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.di, %i.di
  %i.dp = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dq = extractelement <2 x float> %i.di, i64 0 ; 2 uses
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.dp)
  %i.ds = tail call noundef float @llvm.fmuladd.f32(float %i.do, float %i.do, float %i.dr)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ds) ; 2 uses
  %i.dt = fcmp ogt float %sqrt.i.i, f0x34000000
  br i1 %i.dt, label %bb.p, label %_ZL12NormalizeAnyRK9btVector3.exit

bb.p:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit17
  %i.du = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.dv = insertelement <2 x float> poison, float %i.du, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %i.di, %i.dw
  %i.dy = fmul float %i.do, %i.du
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dy, i64 0
  br label %_ZL12NormalizeAnyRK9btVector3.exit

_ZL12NormalizeAnyRK9btVector3.exit:               ; preds = %_ZNK10btSoftBody4Body5xformEv.exit17, %bb.p
  %.sroa.0.0.i = phi <2 x float> [ %i.dx, %bb.p ], [ zeroinitializer, %_ZNK10btSoftBody4Body5xformEv.exit17 ]
  %.sroa.4.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i, %bb.p ], [ zeroinitializer, %_ZNK10btSoftBody4Body5xformEv.exit17 ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 5 uses
  store <2 x float> %.sroa.4.0.i, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !250
  %foldExtExtBinop77 = fmul <2 x float> %i.cy, %i.dd
  %i.ea = extractelement <2 x float> %foldExtExtBinop77, i64 0
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.dm, float %i.ea)
  %i.ec = extractelement <2 x float> %i.cy, i64 1
  %i.ed = extractelement <2 x float> %i.dd, i64 1
  %i.ee = tail call noundef float @llvm.fmuladd.f32(float %i.ed, float %i.ec, float %i.eb) ; 3 uses
  %i.ef = fcmp olt float %i.ee, -1.000000e+00
  %i.eg = fcmp ogt float %i.ee, 1.000000e+00
  %..i = select i1 %i.eg, float 1.000000e+00, float %i.ee
  %i.eh = select i1 %i.ef, float -1.000000e+00, float %..i
  %i.ei = tail call noundef float @acosf(float noundef %i.eh) #34, !tbaa !7 ; 2 uses
  %i.ej = fcmp ogt float %i.ei, f0x3E490FDB
  %.sroa.speculated61 = select i1 %i.ej, float f0x3E490FDB, float %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.el = extractelement <2 x float> %.sroa.4.0.i, i64 0
  %i.em = fmul float %.sroa.speculated61, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.eo = load float, ptr %i.en, align 4, !tbaa !364
  %i.ep = fdiv float %i.eo, %1                    ; 2 uses
  %i.eq = insertelement <2 x float> poison, float %.sroa.speculated61, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x float> %i.er, %.sroa.0.0.i
  %i.et = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %i.es, %i.eu
  store <2 x float> %i.ev, ptr %i.dz, align 4, !tbaa !229
  %i.ew = fmul float %i.em, %i.ep
  store float %i.ew, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !229
  %i.ex = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.ey = icmp eq i8 %i.ex, 0
  br i1 %i.ey, label %bb.q, label %bb.s, !prof !261

bb.q:                                             ; preds = %_ZL12NormalizeAnyRK9btVector3.exit
  %i.ez = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  %.not.i29 = icmp eq i32 %i.ez, 0
  br i1 %.not.i29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.fa = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %_ZL12NormalizeAnyRK9btVector3.exit
  %i.fb = load ptr, ptr %i.e, align 8, !tbaa !362 ; 2 uses
  %.not5.i25 = icmp eq ptr %i.fb, null
  br i1 %.not5.i25, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 280
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

bb.u:                                             ; preds = %bb.s
  %i.fd = load ptr, ptr %i.i, align 8, !tbaa !301 ; 2 uses
  %.not6.i27 = icmp eq ptr %i.fd, null
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 216
  %spec.select.i28 = select i1 %.not6.i27, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.fe
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit:    ; preds = %bb.t, %bb.u
  %.0.i26 = phi ptr [ %i.fc, %bb.t ], [ %spec.select.i28, %bb.u ] ; 6 uses
  %i.ff = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.fg = icmp eq i8 %i.ff, 0
  br i1 %i.fg, label %bb.v, label %bb.x, !prof !261

bb.v:                                             ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.fh = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  %.not.i34 = icmp eq i32 %i.fh, 0
  br i1 %.not.i34, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.fi = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.fj = load ptr, ptr %i.g, align 8, !tbaa !362 ; 2 uses
  %.not5.i30 = icmp eq ptr %i.fj, null
  br i1 %.not5.i30, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 280
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35

bb.z:                                             ; preds = %bb.x
  %i.fl = load ptr, ptr %i.bg, align 8, !tbaa !301 ; 2 uses
  %.not6.i32 = icmp eq ptr %i.fl, null
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 216
  %spec.select.i33 = select i1 %.not6.i32, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.fm
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35:  ; preds = %bb.y, %bb.z
  %.0.i31 = phi ptr [ %i.fk, %bb.y ], [ %spec.select.i33, %bb.z ] ; 6 uses
  %i.fn = load float, ptr %.0.i26, align 4, !tbaa !229, !noalias !826
  %i.fo = load float, ptr %.0.i31, align 4, !tbaa !229, !noalias !826
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i26, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i31, i64 4
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i26, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i31, i64 16
  %i.ft = load float, ptr %i.fr, align 4, !tbaa !229, !noalias !826
  %i.fu = load float, ptr %i.fs, align 4, !tbaa !229, !noalias !826
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i26, i64 20
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i31, i64 20
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i26, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i31, i64 32
  %i.fz = load float, ptr %i.fx, align 4, !tbaa !229, !noalias !826
  %i.ga = load float, ptr %i.fy, align 4, !tbaa !229, !noalias !826
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i26, i64 36
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i31, i64 36
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.4.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 164
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gg = load float, ptr %i.gf, align 8, !tbaa !305 ; 5 uses
  %i.gh = fcmp ogt float %i.gg, 0.000000e+00
  %i.gi = load <2 x float>, ptr %i.fp, align 4, !tbaa !229, !noalias !826 ; 2 uses
  %i.gj = load <2 x float>, ptr %i.fq, align 4, !tbaa !229, !noalias !826 ; 2 uses
  %i.gk = fadd <2 x float> %i.gi, %i.gj           ; 5 uses
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gm = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gn = insertelement <2 x float> %i.gm, float %i.fn, i64 1
  %i.go = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gp = insertelement <2 x float> %i.go, float %i.fo, i64 1
  %i.gq = fadd <2 x float> %i.gn, %i.gp           ; 4 uses
  %i.gr = load <2 x float>, ptr %i.fv, align 4, !tbaa !229, !noalias !826 ; 2 uses
  %i.gs = load <2 x float>, ptr %i.fw, align 4, !tbaa !229, !noalias !826 ; 2 uses
  %i.gt = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gu = insertelement <2 x float> %i.gt, float %i.ft, i64 1
  %i.gv = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gw = insertelement <2 x float> %i.gv, float %i.fu, i64 1
  %i.gx = fadd <2 x float> %i.gu, %i.gw           ; 4 uses
  %i.gy = fadd <2 x float> %i.gr, %i.gs           ; 4 uses
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ha = load <2 x float>, ptr %i.gb, align 4, !tbaa !229, !noalias !826 ; 2 uses
  %i.hb = load <2 x float>, ptr %i.gc, align 4, !tbaa !229, !noalias !826 ; 2 uses
  %i.hc = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hd = insertelement <2 x float> %i.hc, float %i.fz, i64 1
  %i.he = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hf = insertelement <2 x float> %i.he, float %i.ga, i64 1
  %i.hg = fadd <2 x float> %i.hd, %i.hf           ; 4 uses
  %i.hh = fadd <2 x float> %i.ha, %i.hb           ; 3 uses
  %i.hi = fneg <2 x float> %i.hh                  ; 2 uses
  %i.hj = fneg <2 x float> %i.hg
  %i.hk = fmul <2 x float> %i.gx, %i.hi
  %i.hl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.hg, <2 x float> %i.hk) ; 3 uses
  %i.hm = extractelement <2 x float> %i.gk, i64 1
  %i.hn = fmul <2 x float> %i.gk, %i.hj
  %i.ho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> %i.hh, <2 x float> %i.hn)
  %i.hp = fneg <2 x float> %i.gy
  %i.hq = fmul <2 x float> %i.gq, %i.hp
  %i.hr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.gx, <2 x float> %i.hq)
  %i.hs = shufflevector <2 x float> %i.hg, <2 x float> %i.gx, <2 x i32> <i32 1, i32 3>
  %i.ht = fneg <2 x float> %i.hs
  %i.hu = shufflevector <2 x float> %i.gy, <2 x float> %i.gk, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.hv = shufflevector <2 x float> %i.gq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
end_hunk_5
