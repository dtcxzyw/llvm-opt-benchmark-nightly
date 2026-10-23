Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btCompoundCollisionAlgorithm?download=true
inline.NumInlined: 333
inline.NumDeleted: 117
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN28btCompoundCollisionAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.lu = insertelement <4 x float> poison, float %.sroa.6139.0.copyload, i64 0
  %i.lv = insertelement <4 x float> %i.lu, float %.sroa.10142.16.copyload, i64 1
  %i.lw = shufflevector <4 x float> %i.lv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ls, <4 x float> %i.lw, <4 x float> %i.lq) ; 2 uses
  %i.ly = load <2 x float>, ptr %i.kx, align 4    ; 3 uses
  %.sroa.13145.32.copyload = load float, ptr %.sroa.13145.32..sroa_idx, align 4
  %i.lz = insertelement <2 x float> %i.ly, float %.sroa.9.16.copyload, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mb = shufflevector <3 x float> %i.lk, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.mc = insertelement <4 x float> poison, float %i.lm, i64 0
  %i.md = shufflevector <4 x float> %i.mc, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.me = shufflevector <4 x float> %i.md, <4 x float> %i.mb, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.mf = fmul <4 x float> %i.ma, %i.me
  %i.mg = shufflevector <3 x float> %i.lh, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.mh = insertelement <4 x float> poison, float %i.lj, i64 0
  %i.mi = shufflevector <4 x float> %i.mh, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.mj = shufflevector <4 x float> %i.mi, <4 x float> %i.mg, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.mk = shufflevector <2 x float> %i.lf, <2 x float> %i.ly, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.ml = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mj, <4 x float> %i.mk, <4 x float> %i.mf)
  %i.mm = shufflevector <3 x float> %i.lr, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.mn = insertelement <4 x float> poison, float %i.lt, i64 0
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.mp = shufflevector <4 x float> %i.mo, <4 x float> %i.mm, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.mq = insertelement <4 x float> poison, float %.sroa.10142.16.copyload, i64 0
  %i.mr = insertelement <4 x float> %i.mq, float %.sroa.14.32.copyload, i64 1
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mp, <4 x float> %i.ms, <4 x float> %i.ml) ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ks, i64 48
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ks, i64 56
  %i.mw = load float, ptr %i.mv, align 8, !tbaa !98, !noalias !143
  %i.mx = load <2 x float>, ptr %i.mu, align 8, !tbaa !98, !noalias !143 ; 2 uses
  %i.my = insertelement <4 x float> poison, float %.sroa.13145.32.copyload, i64 0
  %i.mz = insertelement <4 x float> %i.my, float %.sroa.5138.0.copyload, i64 1
  %i.na = insertelement <4 x float> %i.mz, float %.sroa.9.16.copyload, i64 2
  %i.nb = shufflevector <4 x float> %i.na, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.nc = shufflevector <3 x float> %i.lk, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.nd = shufflevector <2 x float> %i.nc, <2 x float> %i.mx, <4 x i32> <i32 0, i32 3, i32 3, i32 3>
  %i.ne = fmul <4 x float> %i.nb, %i.nd
  %i.nf = shufflevector <3 x float> %i.lh, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ng = shufflevector <2 x float> %i.nf, <2 x float> %i.mx, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.nh = shufflevector <2 x float> %i.ly, <2 x float> %i.le, <4 x i32> <i32 0, i32 2, i32 poison, i32 0>
  %i.ni = shufflevector <4 x float> %i.nh, <4 x float> %i.lg, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.nj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ng, <4 x float> %i.ni, <4 x float> %i.ne)
  %i.nk = shufflevector <3 x float> %i.lr, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.nl = insertelement <2 x float> %i.nk, float %i.mw, i64 1
  %i.nm = shufflevector <2 x float> %i.nl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.nn = insertelement <4 x float> poison, float %.sroa.14.32.copyload, i64 0
  %i.no = insertelement <4 x float> %i.nn, float %.sroa.6139.0.copyload, i64 1
  %i.np = insertelement <4 x float> %i.no, float %.sroa.10142.16.copyload, i64 2
  %i.nq = shufflevector <4 x float> %i.np, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.nr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nm, <4 x float> %i.nq, <4 x float> %i.nj) ; 3 uses
  %i.ns = load <2 x float>, ptr %i.ky, align 4
  %i.nt = shufflevector <4 x float> %i.nr, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.nu = fadd <2 x float> %i.ns, %i.nt
  %i.nv = extractelement <4 x float> %i.nr, i64 3
  %i.nw = fadd float %.sroa.18149.48.copyload, %i.nv
  %.sroa.3.12.vec.insert.i4.i.i126 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nw, i64 0
  %i.nx = insertelement <4 x float> %i.lx, float 0.000000e+00, i64 3
  store <4 x float> %i.nx, ptr %10, align 16
  %i.ny = shufflevector <4 x float> %i.lx, <4 x float> %i.mt, <4 x i32> <i32 3, i32 4, i32 6, i32 poison>
  %i.nz = insertelement <4 x float> %i.ny, float 0.000000e+00, i64 3
  store <4 x float> %i.nz, ptr %i.kb, align 16
  %i.oa = shufflevector <4 x float> %i.mt, <4 x float> %i.nr, <4 x i32> <i32 1, i32 3, i32 4, i32 poison>
  %i.ob = insertelement <4 x float> %i.oa, float 0.000000e+00, i64 3
  store <4 x float> %i.ob, ptr %i.kc, align 16
  store <2 x float> %i.nu, ptr %i.kd, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i126, ptr %.sroa.20.48..sroa_idx, align 8, !tbaa !99
  %i.oc = load ptr, ptr %i.ku, align 8, !tbaa !11
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oe(ptr noundef nonnull align 8 dereferenceable(32) %i.ku, ptr noundef nonnull align 4 dereferenceable(64) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %12)
  %i.of = load ptr, ptr %i.ke, align 8, !tbaa !48 ; 2 uses
  %i.og = load ptr, ptr %i.kf, align 8, !tbaa !96, !nonnull !60, !align !97
  %i.oh = load ptr, ptr %i.of, align 8, !tbaa !11
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8
  call void %i.oj(ptr noundef nonnull align 8 dereferenceable(32) %i.of, ptr noundef nonnull align 4 dereferenceable(64) %i.og, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %14)
  %i.ok = load float, ptr %11, align 4, !tbaa !98
  %i.ol = load float, ptr %14, align 4, !tbaa !98
  %i.om = fcmp ule float %i.ok, %i.ol
  %i.on = load float, ptr %12, align 4
  %i.oo = load float, ptr %13, align 4
  %i.op = fcmp uge float %i.on, %i.oo
  %i.oq = load float, ptr %i.kg, align 4, !tbaa !98
  %i.or = load float, ptr %i.kh, align 4, !tbaa !98
  %i.os = fcmp ule float %i.oq, %i.or
  %i.ot = load float, ptr %i.ki, align 4
  %i.ou = load float, ptr %i.kj, align 4
  %i.ov = fcmp uge float %i.ot, %i.ou
  %i.ow = load float, ptr %i.kk, align 4, !tbaa !98
  %i.ox = load float, ptr %i.kl, align 4, !tbaa !98
  %i.oy = fcmp ule float %i.ow, %i.ox
  %i.oz = load float, ptr %i.km, align 4
  %i.pa = load float, ptr %i.kn, align 4
  %i.pb = fcmp uge float %i.oz, %i.pa
  %i.pc = select i1 %i.oy, i1 %i.pb, i1 false
  %i.pd = select i1 %i.pc, i1 %i.os, i1 false
  %i.pe = select i1 %i.pd, i1 %i.ov, i1 false
  %i.pf = select i1 %i.pe, i1 %i.om, i1 false
  %i.pg = select i1 %i.pf, i1 %i.op, i1 false
  br i1 %i.pg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ph = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv208
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !62 ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !11
  %i.pl = load ptr, ptr %i.pk, align 8
  call void %i.pl(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.pj) #14
  %i.pm = load ptr, ptr %i.ai, align 8, !tbaa !79 ; 2 uses
  %i.pn = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %indvars.iv208
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !62
  %i.pq = load ptr, ptr %i.pm, align 8, !tbaa !11
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 120
  %i.ps = load ptr, ptr %i.pr, align 8
  call void %i.ps(ptr noundef nonnull align 8 dereferenceable(8) %i.pm, ptr noundef %i.pp)
  %i.pt = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %indvars.iv208
  store ptr null, ptr %i.pu, align 8, !tbaa !62
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %exitcond212.not = icmp eq i64 %indvars.iv.next209, %wide.trip.count211
  br i1 %exitcond212.not, label %._crit_edge196, label %bb.t, !llvm.loop !125

._crit_edge196:                                   ; preds = %bb.w, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.x

bb.x:                                             ; preds = %bb.f, %._crit_edge196
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK6btDbvt21collideTVNoStackAllocEPK10btDbvtNodeRK12btDbvtAabbMmR20btAlignedObjectArrayIS2_ERNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load float, ptr %2, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.659.0.copyload = load float, ptr %.sroa.659.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 14 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20   ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  br i1 %i.c, label %bb.c, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  br i1 %i.f, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i, label %.lr.ph.i

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i: ; preds = %bb.c
  %.not.i5.i.i = icmp ne ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !59
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond = select i1 %.not.i5.i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.d, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.h)
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i
  store i8 1, ptr %i.i, align 8, !tbaa !18
  store ptr null, ptr %i.g, align 8, !tbaa !19
  store i32 0, ptr %i.d, align 8, !tbaa !21
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i
  %i.l = phi i32 [ 0, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i ], [ %i.e, %bb.c ]
  %i.m = phi ptr [ null, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i ], [ %i.h, %bb.c ]
  %i.n = sext i32 %i.b to i64                     ; 2 uses
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = mul nsw i64 %i.n, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.p, i1 false), !tbaa !157
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit: ; preds = %bb.b, %.lr.ph.i
  %i.q = phi i32 [ %i.l, %.lr.ph.i ], [ %i.e, %bb.b ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.s = icmp slt i32 %i.q, 64
  br i1 %i.s, label %bb.e, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit
  %i.t = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 512, i32 noundef 16) ; 8 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !20   ; 5 uses
  %i.v = icmp sgt i32 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 9 uses
  br i1 %i.v, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = ptrtoaddr ptr %i.t to i64
  %wide.trip.count.i.i = zext nneg i32 %i.u to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.u, 8
  %i.aa = sub i64 %i.y, %i.z
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond143 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond143, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !157
  %wide.load96 = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !157
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x ptr> %wide.load, ptr %i.ab, align 8, !tbaa !157
  store <2 x ptr> %wide.load96, ptr %i.ae, align 8, !tbaa !157
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.prol
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i.i.prol
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !157
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !157
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !145

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.aj = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !157
  store ptr %i.an, ptr %i.al, align 8, !tbaa !157
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !157
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !157
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.1
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !157
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !157
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.2
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.2
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !157
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !157
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i, label %scalar.ph, !llvm.loop !146

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i: ; preds = %bb.e
  %.not.i5.i = icmp eq ptr %i.x, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !18, !range !59, !noundef !60
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.x)
  %.pre66.pre.pre = load i32, ptr %i.a, align 4, !tbaa !20
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i: ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i, %bb.f, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i
  %.pre66 = phi i32 [ %i.u, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i ], [ %.pre66.pre.pre, %bb.f ], [ %i.u, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 1, ptr %i.ba, align 8, !tbaa !18
  store ptr %i.t, ptr %i.w, align 8, !tbaa !19
  store i32 64, ptr %i.r, align 8, !tbaa !21
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i
  %5 = phi i32 [ %i.q, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ], [ 64, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i ] ; 2 uses
  %6 = phi i32 [ 0, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ], [ %.pre66, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i ] ; 2 uses
  %7 = icmp eq i32 %6, %5
  br i1 %7, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit
  %8 = shl nuw nsw i32 %5, 1                      ; 2 uses
  %9 = zext nneg i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %i.bb = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %10, i32 noundef 16) ; 8 uses
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !20 ; 5 uses
  %i.bc = icmp sgt i32 %.pre.i, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !19 ; 9 uses
  br i1 %i.bc, label %.lr.ph.i.i.i20, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i16

.lr.ph.i.i.i20:                                   ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = ptrtoaddr ptr %i.bb to i64
  %wide.trip.count.i.i.i21 = zext nneg i32 %.pre.i to i64 ; 5 uses
  %min.iters.check100 = icmp ult i32 %.pre.i, 8
  %i.bh = sub i64 %i.bf, %i.bg
  %diff.check102 = icmp ugt i64 %i.bh, -32
  %or.cond144 = select i1 %min.iters.check100, i1 true, i1 %diff.check102
  br i1 %or.cond144, label %scalar.ph99.preheader, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i20
  %n.vec104 = and i64 %wide.trip.count.i.i.i21, 2147483644 ; 3 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next109, %vector.body105 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index106 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index106 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load107 = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !157
  %wide.load108 = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !157
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <2 x ptr> %wide.load107, ptr %i.bi, align 8, !tbaa !157
  store <2 x ptr> %wide.load108, ptr %i.bl, align 8, !tbaa !157
  %index.next109 = add nuw i64 %index106, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next109, %n.vec104
  br i1 %i.bm, label %middle.block110, label %vector.body105, !llvm.loop !147

middle.block110:                                  ; preds = %vector.body105
  %cmp.n111 = icmp eq i64 %n.vec104, %wide.trip.count.i.i.i21
  br i1 %cmp.n111, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i18, label %scalar.ph99.preheader

scalar.ph99.preheader:                            ; preds = %.lr.ph.i.i.i20, %middle.block110
  %indvars.iv.i.i.i22.ph = phi i64 [ 0, %.lr.ph.i.i.i20 ], [ %n.vec104, %middle.block110 ] ; 3 uses
  %xtraiter147 = and i64 %wide.trip.count.i.i.i21, 3 ; 2 uses
  %lcmp.mod148.not = icmp eq i64 %xtraiter147, 0
  br i1 %lcmp.mod148.not, label %scalar.ph99.prol.loopexit, label %scalar.ph99.prol

scalar.ph99.prol:                                 ; preds = %scalar.ph99.preheader, %scalar.ph99.prol
  %indvars.iv.i.i.i22.prol = phi i64 [ %indvars.iv.next.i.i.i23.prol, %scalar.ph99.prol ], [ %indvars.iv.i.i.i22.ph, %scalar.ph99.preheader ] ; 3 uses
  %prol.iter149 = phi i64 [ %prol.iter149.next, %scalar.ph99.prol ], [ 0, %scalar.ph99.preheader ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i.i.i22.prol
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i.i.i22.prol
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !157
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !157
  %indvars.iv.next.i.i.i23.prol = add nuw nsw i64 %indvars.iv.i.i.i22.prol, 1 ; 2 uses
  %prol.iter149.next = add i64 %prol.iter149, 1   ; 2 uses
  %prol.iter149.cmp.not = icmp eq i64 %prol.iter149.next, %xtraiter147
  br i1 %prol.iter149.cmp.not, label %scalar.ph99.prol.loopexit, label %scalar.ph99.prol, !llvm.loop !148

scalar.ph99.prol.loopexit:                        ; preds = %scalar.ph99.prol, %scalar.ph99.preheader
  %indvars.iv.i.i.i22.unr = phi i64 [ %indvars.iv.i.i.i22.ph, %scalar.ph99.preheader ], [ %indvars.iv.next.i.i.i23.prol, %scalar.ph99.prol ]
  %i.bq = sub nsw i64 %indvars.iv.i.i.i22.ph, %wide.trip.count.i.i.i21
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i18, label %scalar.ph99

scalar.ph99:                                      ; preds = %scalar.ph99.prol.loopexit, %scalar.ph99
  %indvars.iv.i.i.i22 = phi i64 [ %indvars.iv.next.i.i.i23.3, %scalar.ph99 ], [ %indvars.iv.i.i.i22.unr, %scalar.ph99.prol.loopexit ] ; 6 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i.i.i22
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i.i.i22
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !157
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !157
  %indvars.iv.next.i.i.i23 = add nuw nsw i64 %indvars.iv.i.i.i22, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i.i.i23
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i.i.i23
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !157
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !157
  %indvars.iv.next.i.i.i23.1 = add nuw nsw i64 %indvars.iv.i.i.i22, 2 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i.i.i23.1
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i.i.i23.1
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !157
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !157
  %indvars.iv.next.i.i.i23.2 = add nuw nsw i64 %indvars.iv.i.i.i22, 3 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i.i.i23.2
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i.i.i23.2
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !157
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !157
  %indvars.iv.next.i.i.i23.3 = add nuw nsw i64 %indvars.iv.i.i.i22, 4 ; 2 uses
  %exitcond.not.i.i.i24.3 = icmp eq i64 %indvars.iv.next.i.i.i23.3, %wide.trip.count.i.i.i21
  br i1 %exitcond.not.i.i.i24.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i18, label %scalar.ph99, !llvm.loop !149

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i16: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i
  %.not.i5.i.i17 = icmp eq ptr %i.be, null
  br i1 %.not.i5.i.i17, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i19, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i18

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i18: ; preds = %scalar.ph99.prol.loopexit, %scalar.ph99, %middle.block110, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i16
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !18, !range !59, !noundef !60
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.g, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i19

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i18
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.be)
  %.pre2.pre.pre.i = load i32, ptr %i.a, align 4, !tbaa !20
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i19

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i19: ; preds = %bb.g, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i18, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i16
  %.pre2.i = phi i32 [ %.pre.i, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i16 ], [ %.pre2.pre.pre.i, %bb.g ], [ %.pre.i, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i18 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 1, ptr %i.ch, align 8, !tbaa !18
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !19
  store i32 %8, ptr %i.r, align 8, !tbaa !21
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i19
  %11 = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i19 ], [ %6, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !19
  %i.ck = sext i32 %11 to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ck
  store ptr %1, ptr %i.cl, align 8, !tbaa !157
  %i.cm = add nsw i32 %11, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit
  %i.co = phi i32 [ %i.gz, %thread-pre-split ], [ %i.cm, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit ] ; 4 uses
  %i.cp = add nsw i32 %i.co, -1                   ; 12 uses
  %i.cq = load ptr, ptr %i.ci, align 8, !tbaa !19 ; 5 uses
  %i.cr = sext i32 %i.cp to i64                   ; 3 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !157 ; 9 uses
  store i32 %i.cp, ptr %i.a, align 4, !tbaa !20
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !98
  %i.cv = fcmp ugt float %i.cu, %.sroa.659.0.copyload
  br i1 %i.cv, label %thread-pre-split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !98
  %i.cy = fcmp ult float %i.cx, %.sroa.0.0.copyload
  br i1 %i.cy, label %thread-pre-split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !98
  %i.db = fcmp ugt float %i.da, %.sroa.7.0.copyload
  br i1 %i.db, label %thread-pre-split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !98
  %i.de = fcmp ult float %i.dd, %.sroa.4.0.copyload
  br i1 %i.de, label %thread-pre-split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !98
  %i.dh = fcmp ugt float %i.dg, %.sroa.8.0.copyload
  br i1 %i.dh, label %thread-pre-split, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit

_Z9IntersectRK12btDbvtAabbMmS1_.exit:             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.dj = load float, ptr %i.di, align 4, !tbaa !98
  %i.dk = fcmp ult float %i.dj, %.sroa.5.0.copyload
  br i1 %i.dk, label %thread-pre-split, label %bb.m

bb.m:                                             ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ct, i64 48 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !99
  %.not62 = icmp eq ptr %i.dm, null
  br i1 %.not62, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ct, i64 40 ; 2 uses
  %i.do = load i32, ptr %i.r, align 8, !tbaa !21  ; 2 uses
  %i.dp = icmp eq i32 %i.cp, %i.do
  br i1 %i.dp, label %bb.o, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit41

bb.o:                                             ; preds = %bb.n
  %.not.i.i25 = icmp eq i32 %i.cp, 0
  %i.dq = shl nsw i32 %i.cp, 1
  %i.dr = select i1 %.not.i.i25, i32 1, i32 %i.dq ; 5 uses
  %.not63 = icmp sgt i32 %i.co, %i.dr
  br i1 %.not63, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit41.thread, label %bb.p

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit41.thread: ; preds = %bb.o
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cr
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !157
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !157
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit58

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i26 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i.i26, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i28, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.du = sext i32 %i.dr to i64
  %i.dv = shl nsw i64 %i.du, 3
  %i.dw = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.dv, i32 noundef 16)
  %.pre.i27 = load i32, ptr %i.a, align 4, !tbaa !20
  %.pre67 = load ptr, ptr %i.ci, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i28

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i28: ; preds = %bb.q, %bb.p
  %i.dx = phi ptr [ %.pre67, %bb.q ], [ %i.cq, %bb.p ] ; 9 uses
  %i.dy = phi i32 [ %.pre.i27, %bb.q ], [ %i.cp, %bb.p ] ; 5 uses
  %.0.i.i.i29 = phi ptr [ %i.dw, %bb.q ], [ null, %bb.p ] ; 9 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.i.i.i36, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i30

.lr.ph.i.i.i36:                                   ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i28
  %i.ea = ptrtoaddr ptr %i.dx to i64
  %.0.i.i.i29129 = ptrtoaddr ptr %.0.i.i.i29 to i64
  %wide.trip.count.i.i.i37 = zext nneg i32 %i.dy to i64 ; 5 uses
  %min.iters.check132 = icmp ult i32 %i.dy, 4
  %i.eb = sub i64 %i.ea, %.0.i.i.i29129
  %diff.check130 = icmp ugt i64 %i.eb, -32
  %or.cond145 = select i1 %min.iters.check132, i1 true, i1 %diff.check130
  br i1 %or.cond145, label %scalar.ph131.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.i.i.i36
  %n.vec134 = and i64 %wide.trip.count.i.i.i37, 2147483644 ; 3 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next139, %vector.body135 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i29, i64 %index136 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %index136 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load137 = load <2 x ptr>, ptr %i.ed, align 8, !tbaa !157
  %wide.load138 = load <2 x ptr>, ptr %i.ee, align 8, !tbaa !157
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <2 x ptr> %wide.load137, ptr %i.ec, align 8, !tbaa !157
  store <2 x ptr> %wide.load138, ptr %i.ef, align 8, !tbaa !157
  %index.next139 = add nuw i64 %index136, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.eg, label %middle.block140, label %vector.body135, !llvm.loop !150

middle.block140:                                  ; preds = %vector.body135
  %cmp.n141 = icmp eq i64 %n.vec134, %wide.trip.count.i.i.i37
  br i1 %cmp.n141, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i32, label %scalar.ph131.preheader

scalar.ph131.preheader:                           ; preds = %.lr.ph.i.i.i36, %middle.block140
  %indvars.iv.i.i.i38.ph = phi i64 [ 0, %.lr.ph.i.i.i36 ], [ %n.vec134, %middle.block140 ] ; 3 uses
  %xtraiter150 = and i64 %wide.trip.count.i.i.i37, 3 ; 2 uses
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %scalar.ph131.prol.loopexit, label %scalar.ph131.prol

scalar.ph131.prol:                                ; preds = %scalar.ph131.preheader, %scalar.ph131.prol
  %indvars.iv.i.i.i38.prol = phi i64 [ %indvars.iv.next.i.i.i39.prol, %scalar.ph131.prol ], [ %indvars.iv.i.i.i38.ph, %scalar.ph131.preheader ] ; 3 uses
  %prol.iter152 = phi i64 [ %prol.iter152.next, %scalar.ph131.prol ], [ 0, %scalar.ph131.preheader ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.i.i.i38.prol
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.i.i.i38.prol
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !157
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !157
  %indvars.iv.next.i.i.i39.prol = add nuw nsw i64 %indvars.iv.i.i.i38.prol, 1 ; 2 uses
  %prol.iter152.next = add i64 %prol.iter152, 1   ; 2 uses
  %prol.iter152.cmp.not = icmp eq i64 %prol.iter152.next, %xtraiter150
  br i1 %prol.iter152.cmp.not, label %scalar.ph131.prol.loopexit, label %scalar.ph131.prol, !llvm.loop !151

scalar.ph131.prol.loopexit:                       ; preds = %scalar.ph131.prol, %scalar.ph131.preheader
  %indvars.iv.i.i.i38.unr = phi i64 [ %indvars.iv.i.i.i38.ph, %scalar.ph131.preheader ], [ %indvars.iv.next.i.i.i39.prol, %scalar.ph131.prol ]
  %i.ek = sub nsw i64 %indvars.iv.i.i.i38.ph, %wide.trip.count.i.i.i37
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i32, label %scalar.ph131

scalar.ph131:                                     ; preds = %scalar.ph131.prol.loopexit, %scalar.ph131
  %indvars.iv.i.i.i38 = phi i64 [ %indvars.iv.next.i.i.i39.3, %scalar.ph131 ], [ %indvars.iv.i.i.i38.unr, %scalar.ph131.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.i.i.i38
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.i.i.i38
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !157
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !157
  %indvars.iv.next.i.i.i39 = add nuw nsw i64 %indvars.iv.i.i.i38, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.next.i.i.i39
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next.i.i.i39
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !157
  store ptr %i.er, ptr %i.ep, align 8, !tbaa !157
  %indvars.iv.next.i.i.i39.1 = add nuw nsw i64 %indvars.iv.i.i.i38, 2 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.next.i.i.i39.1
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next.i.i.i39.1
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !157
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !157
  %indvars.iv.next.i.i.i39.2 = add nuw nsw i64 %indvars.iv.i.i.i38, 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.next.i.i.i39.2
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next.i.i.i39.2
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !157
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !157
  %indvars.iv.next.i.i.i39.3 = add nuw nsw i64 %indvars.iv.i.i.i38, 4 ; 2 uses
  %exitcond.not.i.i.i40.3 = icmp eq i64 %indvars.iv.next.i.i.i39.3, %wide.trip.count.i.i.i37
  br i1 %exitcond.not.i.i.i40.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i32, label %scalar.ph131, !llvm.loop !152

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i30: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i28
  %.not.i5.i.i31 = icmp eq ptr %i.dx, null
  br i1 %.not.i5.i.i31, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i33, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i32

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i32: ; preds = %scalar.ph131.prol.loopexit, %scalar.ph131, %middle.block140, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i30
  %i.ey = load i8, ptr %i.cn, align 8, !tbaa !18, !range !59, !noundef !60
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.r, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i33

bb.r:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i32
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dx)
  %.pre2.pre.pre.i35 = load i32, ptr %i.a, align 4, !tbaa !20
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i33

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i33: ; preds = %bb.r, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i32, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i30
  %.pre2.i34 = phi i32 [ %i.dy, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i30 ], [ %.pre2.pre.pre.i35, %bb.r ], [ %i.dy, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i32 ] ; 2 uses
  store i8 1, ptr %i.cn, align 8, !tbaa !18
  store ptr %.0.i.i.i29, ptr %i.ci, align 8, !tbaa !19
  store i32 %i.dr, ptr %i.r, align 8, !tbaa !21
  %.pre72 = sext i32 %.pre2.i34 to i64
  %i.fa = add nsw i32 %.pre2.i34, 1
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit41

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit41: ; preds = %bb.n, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i33
  %.pre-phi = phi i64 [ %i.cr, %bb.n ], [ %.pre72, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i33 ]
  %i.fb = phi i32 [ %i.do, %bb.n ], [ %i.dr, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i33 ] ; 6 uses
  %i.fc = phi ptr [ %i.cq, %bb.n ], [ %.0.i.i.i29, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i33 ] ; 4 uses
  %i.fd = phi i32 [ %i.co, %bb.n ], [ %i.fa, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i33 ] ; 3 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %.pre-phi
  %i.ff = load ptr, ptr %i.dn, align 8, !tbaa !157
end_hunk_0
