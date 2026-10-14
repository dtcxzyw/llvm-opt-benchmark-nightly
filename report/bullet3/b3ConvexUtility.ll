Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3ConvexUtility?download=true
inline.NumInlined: 499
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN20b3AlignedObjectArrayI15b3GrahamVector3E9push_backERKS0_:bb.a
.lr.ph.i.i:                                       ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.q, ptr noundef nonnull align 16 dereferenceable(32) %i.s, i64 32, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv.next.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.t, ptr noundef nonnull align 16 dereferenceable(32) %i.v, i64 32, i1 false)
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI15b3GrahamVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !2

.split7.i:                                        ; preds = %_ZN20b3AlignedObjectArrayI15b3GrahamVector3E8allocateEi.exit.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
  store i32 0, ptr %i.a, align 4, !tbaa !57
  br label %_ZNK20b3AlignedObjectArrayI15b3GrahamVector3E4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI15b3GrahamVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI15b3GrahamVector3E4copyEiiPS0_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI15b3GrahamVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20b3AlignedObjectArrayI15b3GrahamVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.w, ptr noundef nonnull align 16 dereferenceable(32) %i.y, i64 32, i1 false)
  br label %_ZNK20b3AlignedObjectArrayI15b3GrahamVector3E4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI15b3GrahamVector3E4copyEiiPS0_.exit.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI15b3GrahamVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.split7.i, %.split.i
  %.0.i12.i = phi ptr [ null, %.split7.i ], [ %i.k, %.split.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI15b3GrahamVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i = phi i32 [ 0, %.split7.i ], [ %i.g, %.split.i ], [ %i.g, %_ZNK20b3AlignedObjectArrayI15b3GrahamVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.g, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56  ; 2 uses
  %.not.i10.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i, label %_ZN20b3AlignedObjectArrayI15b3GrahamVector3E10deallocateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI15b3GrahamVector3E4copyEiiPS0_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !55, !range !20, !noundef !32
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI15b3GrahamVector3E10deallocateEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI15b3GrahamVector3E10deallocateEv.exit.i

_ZN20b3AlignedObjectArrayI15b3GrahamVector3E10deallocateEv.exit.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI15b3GrahamVector3E4copyEiiPS0_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !55
  store ptr %.0.i12.i, ptr %i.z, align 8, !tbaa !56
  store i32 %.0.i, ptr %i.c, align 8, !tbaa !58
  %.pre = load i32, ptr %i.a, align 4, !tbaa !57
  br label %_ZN20b3AlignedObjectArrayI15b3GrahamVector3E7reserveEi.exit

_ZN20b3AlignedObjectArrayI15b3GrahamVector3E7reserveEi.exit: ; preds = %_ZN20b3AlignedObjectArrayI15b3GrahamVector3E10deallocateEv.exit.i, %bb.b, %bb.a
  %i.af = phi i32 [ %.pre, %_ZN20b3AlignedObjectArrayI15b3GrahamVector3E10deallocateEv.exit.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds [32 x i8], ptr %i.ah, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aj, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !57
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 4, !tbaa !57
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_Z24b3GrahamScanConvexHull2DR20b3AlignedObjectArrayI15b3GrahamVector3ES2_RK9b3Vector3(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %struct.b3GrahamVector3, align 16   ; 4 uses
  %4 = alloca %struct.b3AngleCompareFunc, align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !51 ; 4 uses
  %i.c = tail call noundef float @llvm.fabs.f32(float %i.b)
  %i.d = fcmp ogt float %i.c, f0x3F3504F3
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !51 ; 3 uses
  %i.g = fmul nnan float %i.b, %i.b
  %i.h = tail call float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.g)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.h)
  %i.i = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.j = fneg float %i.b
  %i.k = fmul float %i.i, %i.j
  %i.l = fmul float %i.f, %i.i
  br label %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load float, ptr %2, align 16, !tbaa !51  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !51 ; 3 uses
  %i.p = fmul float %i.o, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.p)
  %sqrt43.i = tail call float @llvm.sqrt.f32(float %i.q)
  %i.r = fdiv float 1.000000e+00, %sqrt43.i       ; 2 uses
  %i.s = fneg float %i.o
  %i.t = fmul float %i.r, %i.s
  %i.u = fmul float %i.m, %i.r
  br label %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit

_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit:   ; preds = %bb.b, %bb.c
  %.sroa.093.0 = phi float [ 0.000000e+00, %bb.b ], [ %i.t, %bb.c ] ; 3 uses
  %.sroa.8.0 = phi float [ %i.k, %bb.b ], [ %i.u, %bb.c ] ; 3 uses
  %.sroa.14.0 = phi float [ %i.l, %bb.b ], [ 0.000000e+00, %bb.c ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !57   ; 3 uses
  %i.x = icmp slt i32 %i.w, 2
  br i1 %i.x, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre127 = load ptr, ptr %i.y, align 8, !tbaa !56
  %i.z = insertelement <2 x float> poison, float %.sroa.14.0, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = insertelement <2 x float> poison, float %.sroa.093.0, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x float> poison, float %.sroa.8.0, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.e

.preheader:                                       ; preds = %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit
  %i.af = icmp eq i32 %i.w, 1
  br i1 %i.af, label %.lr.ph113, label %.loopexit

.lr.ph113:                                        ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph113, %bb.d
  %.057112 = phi i32 [ 0, %.lr.ph113 ], [ %i.ai, %bb.d ]
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56
  tail call void @_ZN20b3AlignedObjectArrayI15b3GrahamVector3E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 16 dereferenceable(24) %i.ah)
  %i.ai = add nuw nsw i32 %.057112, 1             ; 2 uses
  %i.aj = load i32, ptr %i.v, align 4, !tbaa !57
  %i.ak = icmp slt i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %.loopexit, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store float -1.000000e+30, ptr %i.am, align 16, !tbaa !62
  %i.an = icmp sgt i32 %i.eq, 1
  br i1 %i.an, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %wide.trip.count = zext nneg i32 %i.eq to i64   ; 3 uses
  %i.ap = load <3 x float>, ptr %i.er, align 16, !tbaa !45 ; 4 uses
  %i.aq = shufflevector <3 x float> %i.ap, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 0>
  %i.ar = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i32 %i.eq, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph106
  %indvars.iv118.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph106 ], [ %i.bd, %vector.body ]
  %i.as = insertelement <4 x float> poison, float %.sroa.14.0, i64 0
  %i.at = insertelement <4 x float> %i.as, float %.sroa.093.0, i64 1
  %i.au = insertelement <4 x float> %i.at, float %.sroa.8.0, i64 2 ; 2 uses
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph106
  %i.av = getelementptr i8, ptr %i.er, i64 32
  %i.aw = shl nuw nsw i64 %wide.trip.count, 5
  %i.ax = getelementptr i8, ptr %i.er, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -12
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 12
  %bound0 = icmp ult ptr %i.av, %i.az
  %bound1 = icmp ult ptr %2, %i.ay
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ba = and i64 %i.ar, 3                        ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = select i1 %i.bb, i64 4, i64 %i.ba
  %n.vec = sub nsw i64 %i.ar, %i.bc               ; 2 uses
  %i.bd = add nsw i64 %n.vec, 1
  %5 = load <4 x float>, ptr %2, align 16         ; 3 uses
  %broadcast.splat169 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat167 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat171 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat = shufflevector <3 x float> %i.ap, <3 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat157 = shufflevector <3 x float> %i.ap, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat159 = shufflevector <3 x float> %i.ap, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splatinsert160 = insertelement <4 x float> poison, float %.sroa.14.0, i64 0
  %broadcast.splat161 = shufflevector <4 x float> %broadcast.splatinsert160, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert162 = insertelement <4 x float> poison, float %.sroa.8.0, i64 0
  %broadcast.splat163 = shufflevector <4 x float> %broadcast.splatinsert162, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert164 = insertelement <4 x float> poison, float %.sroa.093.0, i64 0
  %broadcast.splat165 = shufflevector <4 x float> %broadcast.splatinsert164, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.er, i64 %index ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.er, i64 %index ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.er, i64 %index ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.bk = getelementptr [32 x i8], ptr %i.er, i64 %index ; 4 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 128
  %i.bm = load float, ptr %i.bf, align 16, !tbaa !45, !alias.scope !150, !noalias !151
  %i.bn = load float, ptr %i.bh, align 16, !tbaa !45, !alias.scope !150, !noalias !151
  %i.bo = load float, ptr %i.bj, align 16, !tbaa !45, !alias.scope !150, !noalias !151
  %i.bp = load float, ptr %i.bl, align 16, !tbaa !45, !alias.scope !150, !noalias !151
  %i.bq = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 2
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 3
  %i.bu = fsub <4 x float> %i.bt, %broadcast.splat ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 36
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 68
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 100
  %i.by = getelementptr i8, ptr %i.bk, i64 132
  %i.bz = load float, ptr %i.bv, align 4, !tbaa !45, !alias.scope !150, !noalias !151
  %i.ca = load float, ptr %i.bw, align 4, !tbaa !45, !alias.scope !150, !noalias !151
  %i.cb = load float, ptr %i.bx, align 4, !tbaa !45, !alias.scope !150, !noalias !151
  %i.cc = load float, ptr %i.by, align 4, !tbaa !45, !alias.scope !150, !noalias !151
  %i.cd = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 1
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 2
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 3
  %i.ch = fsub <4 x float> %i.cg, %broadcast.splat157 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.cl = getelementptr i8, ptr %i.bk, i64 136
  %i.cm = load float, ptr %i.ci, align 8, !tbaa !45, !alias.scope !150, !noalias !151
  %i.cn = load float, ptr %i.cj, align 8, !tbaa !45, !alias.scope !150, !noalias !151
  %i.co = load float, ptr %i.ck, align 8, !tbaa !45, !alias.scope !150, !noalias !151
  %i.cp = load float, ptr %i.cl, align 8, !tbaa !45, !alias.scope !150, !noalias !151
  %i.cq = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cr = insertelement <4 x float> %i.cq, float %i.cn, i64 1
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 2
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 3
  %i.cu = fsub <4 x float> %i.ct, %broadcast.splat159 ; 4 uses
  %i.cv = fneg <4 x float> %i.ch
  %i.cw = fmul <4 x float> %broadcast.splat161, %i.cv
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat163, <4 x float> %i.cu, <4 x float> %i.cw)
  %i.cy = fneg <4 x float> %i.cu
  %i.cz = fmul <4 x float> %broadcast.splat165, %i.cy
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat161, <4 x float> %i.bu, <4 x float> %i.cz)
  %i.db = fneg <4 x float> %i.bu
  %i.dc = fmul <4 x float> %broadcast.splat163, %i.db
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat165, <4 x float> %i.ch, <4 x float> %i.dc)
  %i.de = fmul <4 x float> %broadcast.splat167, %i.da
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %broadcast.splat169, <4 x float> %i.de)
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %broadcast.splat171, <4 x float> %i.df)
  %i.dh = fmul <4 x float> %i.ch, %i.ch
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %i.bu, <4 x float> %i.dh)
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.cu, <4 x float> %i.di)
  %i.dk = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.dj)
  %i.dl = fdiv <4 x float> %i.dg, %i.dk           ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.do = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  %i.dp = getelementptr i8, ptr %i.bk, i64 144
  %i.dq = extractelement <4 x float> %i.dl, i64 0
  store float %i.dq, ptr %i.dm, align 16, !tbaa !62, !alias.scope !150, !noalias !151
  %i.dr = extractelement <4 x float> %i.dl, i64 1
  store float %i.dr, ptr %i.dn, align 16, !tbaa !62, !alias.scope !150, !noalias !151
  %i.ds = extractelement <4 x float> %i.dl, i64 2
  store float %i.ds, ptr %i.do, align 16, !tbaa !62, !alias.scope !150, !noalias !151
  %i.dt = extractelement <4 x float> %i.dl, i64 3
  store float %i.dt, ptr %i.dp, align 16, !tbaa !62, !alias.scope !150, !noalias !151
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %scalar.ph.preheader, label %vector.body, !llvm.loop !145

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.dv = phi i32 [ %i.w, %.lr.ph ], [ %i.eq, %bb.g ]
  %i.dw = phi ptr [ %.pre127, %.lr.ph ], [ %i.er, %bb.g ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %indvars.iv ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !45
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eb = load float, ptr %i.ea, align 8, !tbaa !45
  %i.ec = load <2 x float>, ptr %i.dx, align 16, !tbaa !45 ; 2 uses
  %i.ed = load <2 x float>, ptr %i.dw, align 16, !tbaa !45 ; 2 uses
  %i.ee = shufflevector <2 x float> %i.ec, <2 x float> %i.ed, <2 x i32> <i32 1, i32 3>
  %i.ef = fmul <2 x float> %i.ae, %i.ee
  %i.eg = shufflevector <2 x float> %i.ec, <2 x float> %i.ed, <2 x i32> <i32 0, i32 2>
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.ac, <2 x float> %i.ef)
  %i.ei = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.eb, i64 1
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.aa, <2 x float> %i.eh) ; 2 uses
  %i.el = extractelement <2 x float> %i.ek, i64 0
  %i.em = extractelement <2 x float> %i.ek, i64 1
  %i.en = fcmp olt float %i.el, %i.em
  br i1 %i.en, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) %i.dw, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dw, ptr noundef nonnull align 16 dereferenceable(24) %i.dx, i64 24, i1 false)
  %i.eo = load ptr, ptr %i.y, align 8, !tbaa !56
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ep, ptr noundef nonnull align 16 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !56
  %.pre128 = load i32, ptr %i.v, align 4, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eq = phi i32 [ %.pre128, %bb.f ], [ %i.dv, %bb.e ] ; 6 uses
  %i.er = phi ptr [ %.pre, %bb.f ], [ %i.dw, %bb.e ] ; 11 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.es = sext i32 %i.eq to i64
  %i.et = icmp slt i64 %indvars.iv.next, %i.es
  br i1 %i.et, label %bb.e, label %._crit_edge, !llvm.loop !146

._crit_edge107:                                   ; preds = %scalar.ph, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %i.er, i64 16, i1 false), !tbaa.struct !46
  %i.eu = add nsw i32 %i.eq, -1
  call void @_ZN20b3AlignedObjectArrayI15b3GrahamVector3E17quickSortInternalI18b3AngleCompareFuncEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 16 dereferenceable(16) %4, i32 noundef 1, i32 noundef %i.eu)
  %i.ev = load ptr, ptr %i.al, align 8, !tbaa !56
  call void @_ZN20b3AlignedObjectArrayI15b3GrahamVector3E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 16 dereferenceable(24) %i.ev)
  %i.ew = load ptr, ptr %i.al, align 8, !tbaa !56
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  call void @_ZN20b3AlignedObjectArrayI15b3GrahamVector3E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 16 dereferenceable(24) %i.ex)
  %i.ey = load i32, ptr %i.v, align 4, !tbaa !57
  %.not109 = icmp eq i32 %i.ey, 2
  br i1 %.not109, label %._crit_edge111, label %.preheader100.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %scalar.ph ], [ %indvars.iv118.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [32 x i8], ptr %i.er, i64 %indvars.iv118 ; 2 uses
  %i.fa = load float, ptr %2, align 16, !tbaa !45
  %i.fb = load float, ptr %i.ao, align 4, !tbaa !45
  %i.fc = load float, ptr %i.a, align 8, !tbaa !45
  %i.fd = load <3 x float>, ptr %i.ez, align 16, !tbaa !45
  %i.fe = shufflevector <3 x float> %i.fd, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 0>
  %i.ff = fsub <4 x float> %i.fe, %i.aq           ; 7 uses
  %i.fg = fneg <4 x float> %i.ff
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.fi = shufflevector <4 x float> %i.au, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.fj = fneg <4 x float> %i.ff
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> %i.ff, <4 x i32> <i32 poison, i32 poison, i32 1, i32 6>
  %i.fl = shufflevector <2 x float> %i.fh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> %i.fk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fn = fmul <4 x float> %i.fi, %i.fm
  %i.fo = shufflevector <4 x float> %i.au, <4 x float> %i.ff, <4 x i32> <i32 2, i32 0, i32 1, i32 5>
  %i.fp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> %i.fo, <4 x float> %i.fn) ; 4 uses
  %i.fq = extractelement <4 x float> %i.fp, i64 1
  %i.fr = fmul float %i.fb, %i.fq
  %i.fs = extractelement <4 x float> %i.fp, i64 0
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.fa, float %i.fr)
  %i.fu = extractelement <4 x float> %i.fp, i64 2
  %i.fv = tail call noundef float @llvm.fmuladd.f32(float %i.fu, float %i.fc, float %i.ft)
  %i.fw = extractelement <4 x float> %i.fp, i64 3
  %i.fx = extractelement <4 x float> %i.ff, i64 0 ; 2 uses
  %i.fy = tail call noundef float @llvm.fmuladd.f32(float %i.fx, float %i.fx, float %i.fw)
  %sqrt.i58 = tail call noundef float @llvm.sqrt.f32(float %i.fy)
  %i.fz = fdiv float %i.fv, %sqrt.i58
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store float %i.fz, ptr %i.ga, align 16, !tbaa !62
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge107, label %scalar.ph, !llvm.loop !147

.preheader100.lr.ph:                              ; preds = %._crit_edge107
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.pre133.pre = load i32, ptr %i.gb, align 4, !tbaa !57
  br label %.preheader100

.preheader100:                                    ; preds = %.preheader100.lr.ph, %.critedge
  %.pre133 = phi i32 [ %.pre133.pre, %.preheader100.lr.ph ], [ %.pre133134, %.critedge ] ; 3 uses
  %indvars.iv124 = phi i64 [ 2, %.preheader100.lr.ph ], [ %indvars.iv.next125, %.critedge ] ; 2 uses
  %i.gg = icmp sgt i32 %.pre133, 1
  br i1 %i.gg, label %.lr.ph152.preheader, label %.critedge

.lr.ph152.preheader:                              ; preds = %.preheader100
  %i.gh = load ptr, ptr %i.gc, align 8, !tbaa !56 ; 3 uses
  %i.gi = load ptr, ptr %i.al, align 8, !tbaa !56
end_hunk_0
