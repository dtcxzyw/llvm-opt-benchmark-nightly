Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btCompoundShape?download=true
inline.NumInlined: 362
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK15btCompoundShape7getAabbERK11btTransformR9btVector3S4_:bb.a
  %i.cg = fsub float %i.ay, %i.ce
  %.sroa.3.12.vec.insert.i24 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cg, i64 0
  store <2 x float> %i.cf, ptr %2, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i24, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !30
  %i.ch = fadd <2 x float> %i.cb, %i.bs
  %i.ci = fadd float %i.ce, %i.ay
  %.sroa.3.12.vec.insert.i29 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ci, i64 0
  store <2 x float> %i.ch, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i29, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK15btCompoundShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(128) %0, float noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 12)) %2) unnamed_addr #7 align 2 {
bb.a:
  %3 = alloca %class.btTransform, align 4         ; 9 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store float 1.000000e+00, ptr %3, align 4, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load float, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load float, ptr %i.k, align 8, !tbaa !23
  %i.m = fsub float %i.j, %i.l
  %i.n = fmul float %i.m, 5.000000e-01
  %i.o = fmul float %i.n, 2.000000e+00            ; 2 uses
  %i.p = load <2 x float>, ptr %5, align 8, !tbaa !23
  %i.q = load <2 x float>, ptr %4, align 8, !tbaa !23
  %i.r = fsub <2 x float> %i.p, %i.q
  %i.s = fmul <2 x float> %i.r, splat (float 5.000000e-01)
  %i.t = fmul <2 x float> %i.s, splat (float 2.000000e+00) ; 5 uses
  %i.u = fmul float %i.o, %i.o
  %i.v = fdiv float %1, 1.200000e+01              ; 2 uses
  %i.w = insertelement <2 x float> poison, float %i.u, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.t, <2 x float> %i.x)
  %i.z = insertelement <2 x float> poison, float %i.v, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ac = fmul <2 x float> %i.aa, %i.ab
  store <2 x float> %i.ac, ptr %2, align 4, !tbaa !23
  %foldExtExtBinop = fmul <2 x float> %i.t, %i.t
  %i.ad = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ae = extractelement <2 x float> %i.t, i64 0  ; 2 uses
  %i.af = call float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ad)
  %i.ag = fmul float %i.v, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.ag, ptr %i.ah, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK15btCompoundShape31calculatePrincipalAxisTransformEPKfR11btTransformR9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #7 align 2 {
bb.a:
  %4 = alloca %class.btMatrix3x3, align 8         ; 13 uses
  %5 = alloca %class.btVector3, align 4           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20   ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.0169173 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.ai, %bb.b ]
  %.sroa.15164.0172 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.ah, %bb.b ]
  %i.g = phi <2 x float> [ zeroinitializer, %.lr.ph.new ], [ %i.ag, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.h = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !23 ; 3 uses
  %i.l = load <2 x float>, ptr %i.i, align 4, !tbaa !23
  %i.m = insertelement <2 x float> poison, float %i.k, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.q = load float, ptr %i.p, align 4, !tbaa !23
  %i.r = fmul float %i.k, %i.q
  %i.s = fadd <2 x float> %i.g, %i.o
  %i.t = fadd float %.sroa.15164.0172, %i.r
  %i.u = fadd float %.0169173, %i.k
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv.next ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.y = load float, ptr %i.x, align 4, !tbaa !23 ; 3 uses
  %i.z = load <2 x float>, ptr %i.w, align 4, !tbaa !23
  %i.aa = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !23
  %i.af = fmul float %i.y, %i.ae
  %i.ag = fadd <2 x float> %i.s, %i.ac            ; 3 uses
  %i.ah = fadd float %i.t, %i.af                  ; 3 uses
  %i.ai = fadd float %i.u, %i.y                   ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !52

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0169173.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.15164.0172.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod203 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod203)
  %i.aj = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv.epil.init ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.am = load float, ptr %i.al, align 4, !tbaa !23 ; 3 uses
  %i.an = load <2 x float>, ptr %i.ak, align 4, !tbaa !23
  %i.ao = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.as = load float, ptr %i.ar, align 4, !tbaa !23
  %i.at = fmul float %i.am, %i.as
  %i.au = fadd <2 x float> %.epil.init, %i.aq
  %i.av = fadd float %.sroa.15164.0172.epil.init, %i.at
  %i.aw = fadd float %.0169173.epil.init, %i.am
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.sroa.15164.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.epil.preheader ]
  %.0169.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ], [ %i.aw, %.epil.preheader ]
  %i.ax = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ], [ %i.au, %.epil.preheader ]
  %i.ay = fdiv float 1.000000e+00, %.0169.lcssa   ; 2 uses
  %i.az = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.ax, %i.ba           ; 2 uses
  %i.bc = fmul float %.sroa.15164.0.lcssa, %i.ay  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.bb, ptr %i.bd, align 4
  %.sroa.15164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store float %i.bc, ptr %.sroa.15164.0..sroa_idx, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60
  store float 0.000000e+00, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  br i1 %i.c, label %.lr.ph180, label %._crit_edge181

.lr.ph180:                                        ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %wide.trip.count189 = zext nneg i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph180, %bb.c
  %i.bn = phi float [ 0.000000e+00, %.lr.ph180 ], [ %i.ew, %bb.c ]
  %indvars.iv186 = phi i64 [ 0, %.lr.ph180 ], [ %indvars.iv.next187, %bb.c ] ; 4 uses
  %i.bo = phi <2 x float> [ zeroinitializer, %.lr.ph180 ], [ %43, %bb.c ]
  %i.bp = phi <2 x float> [ zeroinitializer, %.lr.ph180 ], [ %44, %bb.c ]
  %i.bq = phi <2 x float> [ zeroinitializer, %.lr.ph180 ], [ %i.er, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.bs = getelementptr inbounds nuw [88 x i8], ptr %i.br, i64 %indvars.iv186
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !40 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv186 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !23
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, float noundef %i.bw, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.ca = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.cb = getelementptr inbounds nuw [88 x i8], ptr %i.ca, i64 %indvars.iv186 ; 9 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !23
  %i.cf = fsub float %i.ce, %i.bc                 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cm = load float, ptr %i.bi, align 4, !tbaa !23
  %i.cn = load float, ptr %i.bj, align 8, !tbaa !23
  %i.co = fmul float %i.cf, %i.cf
  %i.cp = load float, ptr %i.bv, align 4, !tbaa !23 ; 3 uses
  %i.cq = load <2 x float>, ptr %i.cc, align 4, !tbaa !23
  %i.cr = fsub <2 x float> %i.cq, %i.bb           ; 6 uses
  %foldExtExtBinop = fmul <2 x float> %i.cr, %i.cr
  %i.cs = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %i.ct = extractelement <2 x float> %i.cr, i64 0 ; 2 uses
  %i.cu = call float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.cs)
  %i.cv = call noundef float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.cu) ; 3 uses
  %i.cw = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %i.cw, %i.cr
  %i.cy = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cv, i64 0
  %i.cz = fsub <2 x float> %i.cy, %i.cx
  %i.da = fsub float %i.cv, %i.cs
  %i.db = fsub float %i.cv, %i.co
  %i.dc = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = fmul <2 x float> %i.cz, %i.dd           ; 2 uses
  %i.df = fmul float %i.da, %i.cp
  %i.dg = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dh = insertelement <2 x float> %i.dg, float %i.df, i64 1
  %i.di = fmul float %i.db, %i.cp
  %i.dj = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.cr, %i.dk
  %i.dm = fsub <2 x float> zeroinitializer, %i.dl
  %i.dn = fmul <2 x float> %i.dm, %i.dd           ; 2 uses
  %6 = load <2 x float>, ptr %i.cg, align 4, !tbaa !23, !noalias !56 ; 4 uses
  %7 = load <2 x float>, ptr %i.cb, align 4, !tbaa !23, !noalias !56 ; 4 uses
  %8 = shufflevector <2 x float> %7, <2 x float> %6, <2 x i32> <i32 0, i32 2> ; 2 uses
  %9 = shufflevector <2 x float> %7, <2 x float> %6, <2 x i32> <i32 1, i32 3>
  %10 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %11 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x float> poison, float %i.bn, i64 0
  %13 = insertelement <2 x float> %12, float %i.cm, i64 1
  %14 = load <2 x float>, ptr %i.ci, align 4, !tbaa !23, !noalias !56 ; 3 uses
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %16 = load <2 x float>, ptr %i.cj, align 4, !tbaa !23, !noalias !56 ; 3 uses
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %18 = load float, ptr %i.ck, align 4, !tbaa !23, !noalias !56 ; 3 uses
  %19 = load float, ptr %i.ch, align 4, !tbaa !23, !noalias !56 ; 3 uses
  %20 = load float, ptr %i.cl, align 4, !tbaa !23, !noalias !56 ; 3 uses
  %21 = load float, ptr %i.bl, align 4, !tbaa !23 ; 2 uses
  %22 = load float, ptr %5, align 4, !tbaa !23    ; 2 uses
  %23 = load float, ptr %i.bm, align 4, !tbaa !23 ; 2 uses
  %i.dp = insertelement <2 x float> poison, float %22, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x float> %8, %i.dq              ; 3 uses
  %24 = insertelement <2 x float> poison, float %21, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %9, %25                ; 3 uses
  %26 = shufflevector <2 x float> %14, <2 x float> %16, <2 x i32> <i32 1, i32 3> ; 2 uses
  %27 = insertelement <2 x float> poison, float %23, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = fmul <2 x float> %26, %28                 ; 3 uses
  %30 = fmul float %18, %21                       ; 2 uses
  %31 = fmul float %19, %22                       ; 2 uses
  %32 = fmul float %20, %23                       ; 2 uses
  %33 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %34 = fmul <2 x float> %33, %i.ds
  %35 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %10, <2 x float> %34)
  %36 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %15, <2 x float> %35)
  %37 = fmul <2 x float> %i.do, %i.ds
  %38 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %11, <2 x float> %37)
  %39 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %17, <2 x float> %38)
  %40 = shufflevector <2 x float> %14, <2 x float> %16, <2 x i32> <i32 0, i32 2>
  %i.dt = insertelement <2 x float> poison, float %30, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x float> %40, %i.du
  %i.dw = insertelement <2 x float> poison, float %31, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %8, <2 x float> %i.dv)
  %i.dz = insertelement <2 x float> poison, float %32, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %26, <2 x float> %i.dy)
  %i.ec = insertelement <2 x float> poison, float %18, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x float> %i.ed, %i.ds
  %i.ef = insertelement <2 x float> poison, float %19, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.eg, <2 x float> %i.ee)
  %i.ei = insertelement <2 x float> poison, float %20, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %i.ej, <2 x float> %i.eh)
  %i.el = fmul float %18, %30
  %i.em = call float @llvm.fmuladd.f32(float %31, float %19, float %i.el)
  %i.en = call noundef float @llvm.fmuladd.f32(float %32, float %20, float %i.em)
  %41 = fadd <2 x float> %i.bo, %36
  %42 = fadd <2 x float> %39, %i.bp
  %i.eo = fadd <2 x float> %i.eb, %i.bq
  %i.ep = fadd <2 x float> %i.ek, %13
  %i.eq = fadd float %i.en, %i.cn
  %43 = fadd <2 x float> %41, %i.de               ; 2 uses
  store <2 x float> %43, ptr %4, align 8, !tbaa !23
  %i.er = fadd <2 x float> %i.eo, %i.dn           ; 3 uses
  %i.es = extractelement <2 x float> %i.er, i64 0
  store float %i.es, ptr %i.be, align 8, !tbaa !23
  %44 = fadd <2 x float> %42, %i.dh               ; 2 uses
  store <2 x float> %44, ptr %i.bf, align 8, !tbaa !23
  %i.et = extractelement <2 x float> %i.er, i64 1
  store float %i.et, ptr %i.bg, align 8, !tbaa !23
  %i.eu = fadd <2 x float> %i.ep, %i.dn           ; 2 uses
  store <2 x float> %i.eu, ptr %i.bh, align 8, !tbaa !23
  %i.ev = fadd float %i.eq, %i.di
  store float %i.ev, ptr %i.bj, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  %i.ew = extractelement <2 x float> %i.eu, i64 0
  br i1 %exitcond190.not, label %._crit_edge181, label %bb.c, !llvm.loop !55

._crit_edge181:                                   ; preds = %bb.c, %._crit_edge
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @_ZN11btMatrix3x311diagonalizeERS_fi(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(48) %2, float noundef f0x3727C5AC, i32 noundef 20)
  %i.ey = load float, ptr %4, align 8, !tbaa !23
  store float %i.ey, ptr %3, align 4, !tbaa !23
  %i.ez = load float, ptr %i.ex, align 4, !tbaa !23
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.ez, ptr %i.fa, align 4, !tbaa !23
  %i.fb = load float, ptr %i.bj, align 8, !tbaa !23
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fd = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fb, i64 0
  store <2 x float> %i.fd, ptr %i.fc, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11btMatrix3x311diagonalizeERS_fi(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store float 1.000000e+00, ptr %1, align 4, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.d, align 4, !tbaa !23
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.0115 = phi i32 [ %3, %.lr.ph ], [ %i.dk, %bb.i ]
  %i.l = load <2 x float>, ptr %i.f, align 4, !tbaa !23
  %i.m = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.l) ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 0   ; 2 uses
  %i.o = extractelement <2 x float> %i.m, i64 1   ; 2 uses
  %i.p = fcmp ogt float %i.o, %i.n                ; 3 uses
  %.0102 = select i1 %i.p, i64 2, i64 1
  %.0100 = select i1 %i.p, i64 1, i64 2
  %.098 = select i1 %i.p, float %i.o, float %i.n  ; 2 uses
  %i.q = load float, ptr %i.g, align 4, !tbaa !23
  %i.r = tail call noundef float @llvm.fabs.f32(float %i.q) ; 2 uses
  %i.s = fcmp ogt float %i.r, %.098
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0104 = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]     ; 7 uses
  %.1103 = phi i64 [ 2, %bb.c ], [ %.0102, %bb.b ] ; 7 uses
  %.1101 = phi i64 [ 0, %bb.c ], [ %.0100, %bb.b ] ; 3 uses
  %.199 = phi float [ %i.r, %bb.c ], [ %.098, %bb.b ] ; 2 uses
  %i.t = load float, ptr %0, align 4, !tbaa !23
  %i.u = tail call noundef float @llvm.fabs.f32(float %i.t)
  %i.v = load float, ptr %i.h, align 4, !tbaa !23
  %i.w = tail call noundef float @llvm.fabs.f32(float %i.v)
  %i.x = fadd float %i.u, %i.w
  %i.y = load float, ptr %i.i, align 4, !tbaa !23
  %i.z = tail call noundef float @llvm.fabs.f32(float %i.y)
  %i.aa = fadd float %i.x, %i.z
  %i.ab = fmul float %2, %i.aa                    ; 2 uses
  %i.ac = fcmp ugt float %.199, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = fmul float %i.ab, f0x34000000
  %i.ae = fcmp ugt float %.199, %i.ad
  br i1 %i.ae, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %.0115, %bb.d ], [ 1, %bb.e ]   ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0104 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.1103 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !23 ; 3 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.1103 ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.1103 ; 3 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !23
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.0104 ; 3 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !23
  %i.an = fsub float %i.ak, %i.am
  %i.ao = fmul float %i.ah, 2.000000e+00
  %i.ap = fdiv float %i.an, %i.ao                 ; 5 uses
  %i.aq = fmul float %i.ap, %i.ap                 ; 4 uses
  %i.ar = fmul float %i.aq, %i.aq
  %i.as = fcmp olt float %i.ar, f0x4CA00000
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = fcmp ult float %i.ap, 0.000000e+00
  %i.au = fadd float %i.aq, 1.000000e+00
  %sqrt112 = tail call float @llvm.sqrt.f32(float %i.au) ; 2 uses
  %i.av = fneg float %sqrt112
  %.pn.p = select i1 %i.at, float %i.av, float %sqrt112
  %.pn = fadd float %i.ap, %.pn.p
  %i.aw = fdiv float 1.000000e+00, %.pn           ; 4 uses
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float 1.000000e+00)
  %sqrt113 = tail call float @llvm.sqrt.f32(float %i.ax)
  %i.ay = fdiv float 1.000000e+00, %sqrt113       ; 2 uses
  %i.az = fmul float %i.aw, %i.ay
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ba = fdiv float 5.000000e-01, %i.aq
  %i.bb = fadd float %i.ba, 2.000000e+00
  %i.bc = fmul float %i.ap, %i.bb
  %i.bd = fdiv float 1.000000e+00, %i.bc          ; 4 uses
  %i.be = fmul float %i.bd, -5.000000e-01
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bd, float 1.000000e+00) ; 2 uses
  %i.bg = fmul float %i.bd, %i.bf
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.097 = phi float [ %i.aw, %bb.g ], [ %i.bd, %bb.h ] ; 2 uses
  %.096 = phi float [ %i.ay, %bb.g ], [ %i.bf, %bb.h ] ; 5 uses
  %.095 = phi float [ %i.az, %bb.g ], [ %i.bg, %bb.h ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.0104
  store float 0.000000e+00, ptr %i.bh, align 4, !tbaa !23
  store float 0.000000e+00, ptr %i.ag, align 4, !tbaa !23
  %i.bi = load float, ptr %i.al, align 4, !tbaa !23
  %i.bj = fneg float %.097
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.ah, float %i.bi)
  store float %i.bk, ptr %i.al, align 4, !tbaa !23
  %i.bl = load float, ptr %i.aj, align 4, !tbaa !23
  %i.bm = tail call float @llvm.fmuladd.f32(float %.097, float %i.ah, float %i.bl)
  store float %i.bm, ptr %i.aj, align 4, !tbaa !23
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.1101 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.0104 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !23 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.1103 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !23 ; 2 uses
  %i.bs = fneg float %i.br
  %i.bt = fmul float %.095, %i.bs
  %i.bu = tail call float @llvm.fmuladd.f32(float %.096, float %i.bp, float %i.bt) ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.1101
  store float %i.bu, ptr %i.bv, align 4, !tbaa !23
  store float %i.bu, ptr %i.bo, align 4, !tbaa !23
  %i.bw = fmul float %.095, %i.bp
  %i.bx = tail call float @llvm.fmuladd.f32(float %.096, float %i.br, float %i.bw) ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.1101
  store float %i.bx, ptr %i.by, align 4, !tbaa !23
  store float %i.bx, ptr %i.bq, align 4, !tbaa !23
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0104 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !23 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1103 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !23 ; 2 uses
  %i.cd = fneg float %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.0104 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !23 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.1103 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !23 ; 2 uses
  %i.ci = fneg float %i.ch
  %i.cj = insertelement <4 x float> poison, float %.095, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cl = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.cm = insertelement <4 x float> %i.cl, float %i.ca, i64 1
  %i.cn = insertelement <4 x float> %i.cm, float %i.ci, i64 2
  %i.co = insertelement <4 x float> %i.cn, float %i.cf, i64 3
  %i.cp = fmul <4 x float> %i.ck, %i.co
  %i.cq = insertelement <4 x float> poison, float %.096, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cs = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.cc, i64 1
  %i.cu = insertelement <4 x float> %i.ct, float %i.cf, i64 2
  %i.cv = insertelement <4 x float> %i.cu, float %i.ch, i64 3
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.cv, <4 x float> %i.cp) ; 4 uses
  %i.cx = extractelement <4 x float> %i.cw, i64 0
  store float %i.cx, ptr %i.bz, align 4, !tbaa !23
  %i.cy = extractelement <4 x float> %i.cw, i64 1
  store float %i.cy, ptr %i.cb, align 4, !tbaa !23
  %i.cz = extractelement <4 x float> %i.cw, i64 2
  store float %i.cz, ptr %i.ce, align 4, !tbaa !23
  %i.da = extractelement <4 x float> %i.cw, i64 3
  store float %i.da, ptr %i.cg, align 4, !tbaa !23
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.0104 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !23 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.1103 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !23 ; 2 uses
end_hunk_0
