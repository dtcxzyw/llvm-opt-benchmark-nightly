Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btCompoundCollisionAlgorithm?download=true
inline.NumInlined: 333
inline.NumDeleted: 117
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN28btCompoundCollisionAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.lx = load float, ptr %i.lb, align 8, !tbaa !98, !noalias !142
  %i.ly = load <2 x float>, ptr %i.kt, align 4
  %i.lz = load float, ptr %i.lc, align 8, !tbaa !98, !noalias !143 ; 2 uses
  %i.ma = load float, ptr %i.ld, align 4, !tbaa !98, !noalias !143 ; 2 uses
  %i.mb = load float, ptr %i.le, align 8, !tbaa !98, !noalias !143 ; 2 uses
  %i.mc = load <2 x float>, ptr %.sroa.5138.0..sroa_idx, align 4 ; 3 uses
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.me = shufflevector <4 x float> %i.md, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.mf = load <2 x float>, ptr %.sroa.9.16..sroa_idx, align 4 ; 3 uses
  %i.mg = shufflevector <2 x float> %i.mc, <2 x float> %i.mf, <2 x i32> <i32 0, i32 2>
  %i.mh = insertelement <2 x float> poison, float %i.ma, i64 0
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mj = fmul <2 x float> %i.mg, %i.mi
  %i.mk = insertelement <2 x float> poison, float %i.lz, i64 0
  %i.ml = shufflevector <2 x float> %i.mk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mm = shufflevector <2 x float> %i.lf, <2 x float> %i.lr, <2 x i32> <i32 0, i32 2>
  %i.mn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> %i.mm, <2 x float> %i.mj)
  %i.mo = insertelement <2 x float> poison, float %i.mb, i64 0
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mq = shufflevector <2 x float> %i.mc, <2 x float> %i.mf, <2 x i32> <i32 1, i32 3>
  %i.mr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mp, <2 x float> %i.mq, <2 x float> %i.mn)
  %i.ms = fadd <2 x float> %i.ly, %i.mr
  %i.mt = shufflevector <2 x float> %i.ls, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mu = shufflevector <4 x float> %i.ll, <4 x float> %i.mt, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.mv = fmul <4 x float> %i.lj, %i.mu
  %i.mw = shufflevector <2 x float> %i.lu, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mx = shufflevector <4 x float> %i.ln, <4 x float> %i.mw, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.my = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mx, <4 x float> %i.lo, <4 x float> %i.mv)
  %i.mz = shufflevector <2 x float> %i.lw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.na = shufflevector <4 x float> %i.lq, <4 x float> %i.mz, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.nb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.na, <4 x float> %i.me, <4 x float> %i.my)
  %i.nc = shufflevector <2 x float> %i.lr, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.nd = shufflevector <2 x float> %i.lh, <2 x float> %i.ls, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ne = insertelement <4 x float> %i.nd, float 1.000000e+00, i64 3 ; 2 uses
  %i.nf = fmul <4 x float> %i.nc, %i.ne
  %i.ng = shufflevector <2 x float> %i.lg, <2 x float> %i.lu, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.nh = insertelement <4 x float> %i.ng, float 0.000000e+00, i64 3 ; 2 uses
  %i.ni = shufflevector <2 x float> %i.lr, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.nj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nh, <4 x float> %i.ni, <4 x float> %i.nf)
  %i.nk = shufflevector <2 x float> %i.li, <2 x float> %i.lw, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.nl = insertelement <4 x float> %i.nk, float 0.000000e+00, i64 3 ; 2 uses
  %i.nm = shufflevector <2 x float> %i.mf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.no = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nl, <4 x float> %i.nn, <4 x float> %i.nj)
  store <4 x float> %i.nb, ptr %10, align 16
  store <4 x float> %i.no, ptr %i.jw, align 16
  %i.np = load <2 x float>, ptr %i.ks, align 4    ; 3 uses
  %.sroa.13145.32.copyload = load float, ptr %.sroa.13145.32..sroa_idx, align 4
  %i.nq = fmul float %.sroa.13145.32.copyload, %i.ma
  %i.nr = extractelement <2 x float> %i.np, i64 0
  %i.ns = call float @llvm.fmuladd.f32(float %i.lz, float %i.nr, float %i.nq)
  %i.nt = call noundef float @llvm.fmuladd.f32(float %i.mb, float %.sroa.14.32.copyload, float %i.ns)
  %i.nu = fadd float %.sroa.18149.48.copyload, %i.nt
  %.sroa.3.12.vec.insert.i4.i.i126 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nu, i64 0
  %i.nv = shufflevector <2 x float> %i.np, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.nw = insertelement <4 x float> %i.ne, float %i.lt, i64 2
  %i.nx = fmul <4 x float> %i.nv, %i.nw
  %i.ny = insertelement <4 x float> %i.nh, float %i.lv, i64 2
  %i.nz = shufflevector <2 x float> %i.np, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.oa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ny, <4 x float> %i.nz, <4 x float> %i.nx)
  %i.ob = insertelement <4 x float> %i.nl, float %i.lx, i64 2
  %i.oc = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.sroa.14.32.copyload, i64 0
  %i.od = shufflevector <4 x float> %i.oc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.oe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ob, <4 x float> %i.od, <4 x float> %i.oa)
  store <4 x float> %i.oe, ptr %i.jx, align 16
  store <2 x float> %i.ms, ptr %i.jy, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i126, ptr %.sroa.20.48..sroa_idx, align 8, !tbaa !99
  %i.of = load ptr, ptr %i.kp, align 8, !tbaa !11
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oh = load ptr, ptr %i.og, align 8
  call void %i.oh(ptr noundef nonnull align 8 dereferenceable(32) %i.kp, ptr noundef nonnull align 4 dereferenceable(64) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %12)
  %i.oi = load ptr, ptr %i.jz, align 8, !tbaa !48 ; 2 uses
  %i.oj = load ptr, ptr %i.ka, align 8, !tbaa !96, !nonnull !60, !align !97
  %i.ok = load ptr, ptr %i.oi, align 8, !tbaa !11
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load ptr, ptr %i.ol, align 8
  call void %i.om(ptr noundef nonnull align 8 dereferenceable(32) %i.oi, ptr noundef nonnull align 4 dereferenceable(64) %i.oj, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %14)
  %i.on = load float, ptr %11, align 4, !tbaa !98
  %i.oo = load float, ptr %14, align 4, !tbaa !98
  %i.op = fcmp ule float %i.on, %i.oo
  %i.oq = load float, ptr %12, align 4
  %i.or = load float, ptr %13, align 4
  %i.os = fcmp uge float %i.oq, %i.or
  %i.ot = load float, ptr %i.kb, align 4, !tbaa !98
  %i.ou = load float, ptr %i.kc, align 4, !tbaa !98
  %i.ov = fcmp ule float %i.ot, %i.ou
  %i.ow = load float, ptr %i.kd, align 4
  %i.ox = load float, ptr %i.ke, align 4
  %i.oy = fcmp uge float %i.ow, %i.ox
  %i.oz = load float, ptr %i.kf, align 4, !tbaa !98
  %i.pa = load float, ptr %i.kg, align 4, !tbaa !98
  %i.pb = fcmp ule float %i.oz, %i.pa
  %i.pc = load float, ptr %i.kh, align 4
  %i.pd = load float, ptr %i.ki, align 4
  %i.pe = fcmp uge float %i.pc, %i.pd
  %i.pf = select i1 %i.pb, i1 %i.pe, i1 false
  %i.pg = select i1 %i.pf, i1 %i.ov, i1 false
  %i.ph = select i1 %i.pg, i1 %i.oy, i1 false
  %i.pi = select i1 %i.ph, i1 %i.op, i1 false
  %i.pj = select i1 %i.pi, i1 %i.os, i1 false
  br i1 %i.pj, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.pk = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv208
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !62 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !11
  %i.po = load ptr, ptr %i.pn, align 8
  call void %i.po(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.pm) #14
  %i.pp = load ptr, ptr %i.ai, align 8, !tbaa !79 ; 2 uses
  %i.pq = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv208
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !62
  %i.pt = load ptr, ptr %i.pp, align 8, !tbaa !11
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 120
  %i.pv = load ptr, ptr %i.pu, align 8
  call void %i.pv(ptr noundef nonnull align 8 dereferenceable(8) %i.pp, ptr noundef %i.ps)
  %i.pw = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv208
  store ptr null, ptr %i.px, align 8, !tbaa !62
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
  %i.q = phi i32 [ %i.l, %.lr.ph.i ], [ %i.e, %bb.b ]
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.s = icmp slt i32 %i.q, 64
  br i1 %i.s, label %bb.e, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit
  %i.t = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 512, i32 noundef 16) ; 9 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !20   ; 5 uses
  %i.v = icmp sgt i32 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 9 uses
  br i1 %i.v, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = ptrtoaddr ptr %i.t to i64
  %wide.trip.count.i.i = zext nneg i32 %i.u to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.u, 8
  %i.aa = sub i64 %i.y, %i.z
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond141 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond141, label %scalar.ph.preheader, label %vector.ph

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
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit.thread95, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit.thread95: ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 1, ptr %5, align 8, !tbaa !18
  store ptr %i.t, ptr %i.w, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit.sink.split

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !18, !range !59, !noundef !60
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.x)
  %.pre66.pre.pre = load i32, ptr %i.a, align 4, !tbaa !20
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i: ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i, %bb.f
  %.pre66.pre = phi i32 [ %.pre66.pre.pre, %bb.f ], [ %i.u, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 1, ptr %i.ba, align 8, !tbaa !18
  store ptr %i.t, ptr %i.w, align 8, !tbaa !19
  store i32 64, ptr %i.r, align 8, !tbaa !21
  %6 = icmp eq i32 %.pre66.pre, 64
  br i1 %6, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i
  %i.bb = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 1024, i32 noundef 16) ; 8 uses
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
  %diff.check98 = icmp ugt i64 %i.bh, -32
  %or.cond142 = select i1 %min.iters.check100, i1 true, i1 %diff.check98
  br i1 %or.cond142, label %scalar.ph99.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %.lr.ph.i.i.i20
  %n.vec102 = and i64 %wide.trip.count.i.i.i21, 2147483644 ; 3 uses
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next107, %vector.body103 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index104 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index104 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load105 = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !157
  %wide.load106 = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !157
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <2 x ptr> %wide.load105, ptr %i.bi, align 8, !tbaa !157
  store <2 x ptr> %wide.load106, ptr %i.bl, align 8, !tbaa !157
  %index.next107 = add nuw i64 %index104, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next107, %n.vec102
  br i1 %i.bm, label %middle.block108, label %vector.body103, !llvm.loop !147

middle.block108:                                  ; preds = %vector.body103
  %cmp.n109 = icmp eq i64 %n.vec102, %wide.trip.count.i.i.i21
  br i1 %cmp.n109, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i18, label %scalar.ph99.preheader

scalar.ph99.preheader:                            ; preds = %.lr.ph.i.i.i20, %middle.block108
  %indvars.iv.i.i.i22.ph = phi i64 [ 0, %.lr.ph.i.i.i20 ], [ %n.vec102, %middle.block108 ] ; 3 uses
  %xtraiter145 = and i64 %wide.trip.count.i.i.i21, 3 ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %scalar.ph99.prol.loopexit, label %scalar.ph99.prol

scalar.ph99.prol:                                 ; preds = %scalar.ph99.preheader, %scalar.ph99.prol
  %indvars.iv.i.i.i22.prol = phi i64 [ %indvars.iv.next.i.i.i23.prol, %scalar.ph99.prol ], [ %indvars.iv.i.i.i22.ph, %scalar.ph99.preheader ] ; 3 uses
  %prol.iter147 = phi i64 [ %prol.iter147.next, %scalar.ph99.prol ], [ 0, %scalar.ph99.preheader ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i.i.i22.prol
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i.i.i22.prol
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !157
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !157
  %indvars.iv.next.i.i.i23.prol = add nuw nsw i64 %indvars.iv.i.i.i22.prol, 1 ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %scalar.ph99.prol.loopexit, label %scalar.ph99.prol, !llvm.loop !148

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

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i18: ; preds = %scalar.ph99.prol.loopexit, %scalar.ph99, %middle.block108, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i16
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
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit.sink.split

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit.sink.split: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i19, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit.thread95
  %.sink = phi i32 [ 64, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit.thread95 ], [ 128, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i19 ]
  %.ph = phi i32 [ %i.u, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit.thread95 ], [ %.pre2.i, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i19 ]
  store i32 %.sink, ptr %i.r, align 8, !tbaa !21
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit.sink.split, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i
  %7 = phi i32 [ %.pre66.pre, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i ], [ 0, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ], [ %.ph, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit.sink.split ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !19
  %i.ck = sext i32 %7 to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ck
  store ptr %1, ptr %i.cl, align 8, !tbaa !157
  %i.cm = add nsw i32 %7, 1
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
  %.0.i.i.i29127 = ptrtoaddr ptr %.0.i.i.i29 to i64
  %wide.trip.count.i.i.i37 = zext nneg i32 %i.dy to i64 ; 5 uses
  %min.iters.check130 = icmp ult i32 %i.dy, 4
  %i.eb = sub i64 %i.ea, %.0.i.i.i29127
  %diff.check128 = icmp ugt i64 %i.eb, -32
  %or.cond143 = select i1 %min.iters.check130, i1 true, i1 %diff.check128
  br i1 %or.cond143, label %scalar.ph129.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.i.i.i36
  %n.vec132 = and i64 %wide.trip.count.i.i.i37, 2147483644 ; 3 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next137, %vector.body133 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i29, i64 %index134 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %index134 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load135 = load <2 x ptr>, ptr %i.ed, align 8, !tbaa !157
  %wide.load136 = load <2 x ptr>, ptr %i.ee, align 8, !tbaa !157
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <2 x ptr> %wide.load135, ptr %i.ec, align 8, !tbaa !157
  store <2 x ptr> %wide.load136, ptr %i.ef, align 8, !tbaa !157
  %index.next137 = add nuw i64 %index134, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.eg, label %middle.block138, label %vector.body133, !llvm.loop !150

middle.block138:                                  ; preds = %vector.body133
  %cmp.n139 = icmp eq i64 %n.vec132, %wide.trip.count.i.i.i37
  br i1 %cmp.n139, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i32, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %.lr.ph.i.i.i36, %middle.block138
  %indvars.iv.i.i.i38.ph = phi i64 [ 0, %.lr.ph.i.i.i36 ], [ %n.vec132, %middle.block138 ] ; 3 uses
  %xtraiter148 = and i64 %wide.trip.count.i.i.i37, 3 ; 2 uses
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol

scalar.ph129.prol:                                ; preds = %scalar.ph129.preheader, %scalar.ph129.prol
  %indvars.iv.i.i.i38.prol = phi i64 [ %indvars.iv.next.i.i.i39.prol, %scalar.ph129.prol ], [ %indvars.iv.i.i.i38.ph, %scalar.ph129.preheader ] ; 3 uses
  %prol.iter150 = phi i64 [ %prol.iter150.next, %scalar.ph129.prol ], [ 0, %scalar.ph129.preheader ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.i.i.i38.prol
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.i.i.i38.prol
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !157
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !157
  %indvars.iv.next.i.i.i39.prol = add nuw nsw i64 %indvars.iv.i.i.i38.prol, 1 ; 2 uses
  %prol.iter150.next = add i64 %prol.iter150, 1   ; 2 uses
  %prol.iter150.cmp.not = icmp eq i64 %prol.iter150.next, %xtraiter148
  br i1 %prol.iter150.cmp.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol, !llvm.loop !151

scalar.ph129.prol.loopexit:                       ; preds = %scalar.ph129.prol, %scalar.ph129.preheader
  %indvars.iv.i.i.i38.unr = phi i64 [ %indvars.iv.i.i.i38.ph, %scalar.ph129.preheader ], [ %indvars.iv.next.i.i.i39.prol, %scalar.ph129.prol ]
  %i.ek = sub nsw i64 %indvars.iv.i.i.i38.ph, %wide.trip.count.i.i.i37
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i32, label %scalar.ph129

scalar.ph129:                                     ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129
  %indvars.iv.i.i.i38 = phi i64 [ %indvars.iv.next.i.i.i39.3, %scalar.ph129 ], [ %indvars.iv.i.i.i38.unr, %scalar.ph129.prol.loopexit ] ; 6 uses
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
  br i1 %exitcond.not.i.i.i40.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i32, label %scalar.ph129, !llvm.loop !152

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i30: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i28
  %.not.i5.i.i31 = icmp eq ptr %i.dx, null
  br i1 %.not.i5.i.i31, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i33, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i32

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i32: ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129, %middle.block138, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i30
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
