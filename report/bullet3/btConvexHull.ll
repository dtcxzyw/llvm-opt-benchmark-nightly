Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexHull?download=true
inline.NumInlined: 616
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN11HullLibrary7extrudeEP14btHullTrianglei:bb.a
bb.u:                                             ; preds = %bb.t
  tail call void @_ZN11HullLibrary6b2bfixEP14btHullTriangleS1_(ptr noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.dw)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !51
  %i.eh = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.ei = sext i32 %i.eg to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ei
  store ptr null, ptr %i.ej, align 8, !tbaa !48
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bb)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !51
  %i.em = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.en = sext i32 %i.el to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.en
  store ptr null, ptr %i.eo, align 8, !tbaa !48
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dw)
  %.pre95 = load ptr, ptr %i.j, align 8, !tbaa !46
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ep = phi ptr [ %.pre95, %bb.u ], [ %i.ds, %bb.t ]
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !51
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.es
  store ptr null, ptr %i.et, align 8, !tbaa !48
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef ptr @_ZN11HullLibrary10extrudableEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, float noundef %1) local_unnamed_addr #10 align 2 {
.lr.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !54   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge15.1, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %._crit_edge15.1 ] ; 3 uses
  %.013 = phi ptr [ null, %.lr.ph.new ], [ %.1.1, %._crit_edge15.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %._crit_edge15.1 ]
  %.not = icmp eq ptr %.013, null
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48 ; 4 uses
  br i1 %.not, label %._crit_edge15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not11 = icmp eq ptr %.pre, null
  br i1 %.not11, label %._crit_edge15, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.013, i64 32
  %i.h = load float, ptr %i.g, align 4, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.j = load float, ptr %i.i, align 4, !tbaa !53
  %i.k = fcmp olt float %i.h, %i.j
  %spec.select = select i1 %i.k, ptr %.pre, ptr %.013
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %bb.c, %bb.a, %bb.b
  %.1 = phi ptr [ %.013, %bb.b ], [ %spec.select, %bb.c ], [ %.pre, %bb.a ] ; 4 uses
  %.not.1 = icmp eq ptr %.1, null
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %.phi.trans.insert.1 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre.1 = load ptr, ptr %.phi.trans.insert.1, align 8, !tbaa !48 ; 4 uses
  br i1 %.not.1, label %._crit_edge15.1, label %bb.d

bb.d:                                             ; preds = %._crit_edge15
  %.not11.1 = icmp eq ptr %.pre.1, null
  br i1 %.not11.1, label %._crit_edge15.1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.n = load float, ptr %i.m, align 4, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %.pre.1, i64 32
  %i.p = load float, ptr %i.o, align 4, !tbaa !53
  %i.q = fcmp olt float %i.n, %i.p
  %spec.select.1 = select i1 %i.q, ptr %.pre.1, ptr %.1
  br label %._crit_edge15.1

._crit_edge15.1:                                  ; preds = %bb.e, %bb.d, %._crit_edge15
  %.1.1 = phi ptr [ %.1, %bb.d ], [ %spec.select.1, %bb.e ], [ %.pre.1, %._crit_edge15 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.a, !llvm.loop !1

._crit_edge.unr-lcssa:                            ; preds = %._crit_edge15.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.013.epil.init = phi ptr [ null, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 4 uses
  %lcmp.mod17 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %.not.epil = icmp eq ptr %.013.epil.init, null
  %.phi.trans.insert.epil = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %.pre.epil = load ptr, ptr %.phi.trans.insert.epil, align 8, !tbaa !48 ; 4 uses
  br i1 %.not.epil, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %.not11.epil = icmp eq ptr %.pre.epil, null
  br i1 %.not11.epil, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.013.epil.init, i64 32
  %i.s = load float, ptr %i.r, align 4, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.epil, i64 32
  %i.u = load float, ptr %i.t, align 4, !tbaa !53
  %i.v = fcmp olt float %i.s, %i.u
  %spec.select.epil = select i1 %i.v, ptr %.pre.epil, ptr %.013.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.f, %bb.g, %._crit_edge.unr-lcssa
  %.1.lcssa = phi ptr [ %.1.1, %._crit_edge.unr-lcssa ], [ %.013.epil.init, %bb.f ], [ %spec.select.epil, %bb.g ], [ %.pre.epil, %.epil.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 32
  %i.x = load float, ptr %i.w, align 4, !tbaa !53
  %i.y = fcmp ogt float %i.x, %1
  %i.z = select i1 %i.y, ptr %.1.lcssa, ptr null
  ret ptr %i.z
}

; Function Attrs: mustprogress uwtable
define dso_local { i64, i64 } @_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #11 align 2 {
bb.a:
  %4 = alloca [3 x %class.btVector3], align 16    ; 13 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <4 x float> <float f0x3C23D70A, float 2.000000e-02, float 1.000000e+00, float 0.000000e+00>, ptr %4, align 16
  %i.a = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.b = load <2 x float>, ptr %4, align 16, !tbaa !12
  %i.c = fneg <2 x float> %i.b
  %i.d = load float, ptr %.sroa.5160.0..sroa_idx, align 8, !tbaa !12
  %i.e = fneg float %i.d
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.e, i64 0
  store <2 x float> %i.c, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.f, align 8
  %i.g = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.h = sext i32 %i.a to i64
  %i.i = getelementptr inbounds [16 x i8], ptr %1, i64 %i.h ; 5 uses
  %i.j = sext i32 %i.g to i64
  %i.k = getelementptr inbounds [16 x i8], ptr %1, i64 %i.j ; 4 uses
  %i.l = load float, ptr %i.i, align 4, !tbaa !12
  %i.m = load float, ptr %i.k, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !12
  %i.r = fsub float %i.o, %i.q                    ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !12
  %i.w = insertelement <2 x float> poison, float %i.t, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.l, i64 1
  %i.y = insertelement <2 x float> poison, float %i.v, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.m, i64 1
  %i.aa = fsub <2 x float> %i.x, %i.z             ; 6 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i68 = insertelement <2 x float> %i.ab, float %i.r, i64 1
  %i.ac = insertelement <2 x float> %i.aa, float 0.000000e+00, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i68, ptr %4, align 16
  store <2 x float> %i.ac, ptr %.sroa.5160.0..sroa_idx, align 8, !tbaa !16
  %i.ad = icmp eq i32 %i.a, %i.g
  br i1 %i.ad, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = extractelement <2 x float> %i.aa, i64 0 ; 3 uses
  %i.af = fcmp oeq float %i.ae, 0.000000e+00
  %i.ag = fcmp oeq float %i.r, 0.000000e+00
  %or.cond170 = select i1 %i.af, i1 %i.ag, i1 false
  %i.ah = extractelement <2 x float> %i.aa, i64 1 ; 4 uses
  %i.ai = fcmp oeq float %i.ah, 0.000000e+00
  %or.cond172 = select i1 %or.cond170, i1 %i.ai, i1 false
  br i1 %or.cond172, label %.critedge, label %_ZNK9btVector3eqERKS_.exit.thread

_ZNK9btVector3eqERKS_.exit.thread:                ; preds = %bb.b
  %i.aj = fmul float %i.r, -0.000000e+00          ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.al = fneg <2 x float> %i.aa
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> %i.al, <2 x i32> <i32 0, i32 2>
  %i.an = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> <float 2.000000e-02, float 0.000000e+00>, <2 x float> %i.am) ; 4 uses
  %i.ao = fneg float %i.ah
  %i.ap = fmul float %i.ah, 2.000000e-02
  %8 = fsub float %i.r, %i.ap                     ; 4 uses
  %.sroa.3.12.vec.insert.i.i.a = insertelement <2 x float> <float poison, float 0.000000e+00>, float %8, i64 0
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %.sroa.46.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.a, ptr %.sroa.46.0..sroa_idx.a, align 8, !tbaa !16
  %9 = fadd float %i.ae, %i.aj                    ; 3 uses
  %i.ar = fmul float %i.ae, 2.000000e-02
  %i.as = call float @llvm.fmuladd.f32(float %i.ah, float 0.000000e+00, float %i.ar) ; 3 uses
  %i.at = call float @llvm.fmuladd.f32(float %i.r, float -2.000000e-02, float %i.ao) ; 3 uses
  %.sroa.0.0.vec.insert.i.i72 = insertelement <2 x float> poison, float %9, i64 0
  %.sroa.0.4.vec.insert.i.i73 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i72, float %i.as, i64 1
  %.sroa.3.12.vec.insert.i.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.at, i64 0
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i73, ptr %10, align 16
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i74, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !16
  %foldExtExtBinop.a = fmul <2 x float> %i.an, %i.an
  %11 = extractelement <2 x float> %foldExtExtBinop.a, i64 1
  %12 = extractelement <2 x float> %i.an, i64 0   ; 2 uses
  %13 = call float @llvm.fmuladd.f32(float %12, float %12, float %11)
  %14 = call noundef float @llvm.fmuladd.f32(float %8, float %8, float %13)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %14) ; 2 uses
  %15 = fmul float %i.as, %i.as
  %16 = call float @llvm.fmuladd.f32(float %9, float %9, float %15)
  %17 = call noundef float @llvm.fmuladd.f32(float %i.at, float %i.at, float %16)
  %sqrt.i77 = call noundef float @llvm.sqrt.f32(float %17)
  %i.au = fcmp ogt float %sqrt.i, %sqrt.i77
  br i1 %i.au, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, ptr noundef nonnull align 16 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !34
  %i.av = load <2 x float>, ptr %i.aq, align 16, !tbaa !12 ; 4 uses
  %foldExtExtBinop187.a = fmul <2 x float> %i.av, %i.av
  %i.aw = extractelement <2 x float> %foldExtExtBinop187.a, i64 1
  %i.ax = extractelement <2 x float> %i.av, i64 0 ; 2 uses
  %i.ay = call float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.aw)
  %i.az = load float, ptr %.sroa.46.0..sroa_idx.a, align 8, !tbaa !12 ; 3 uses
  %i.ba = call noundef float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.ay)
  %sqrt.i.i78 = call noundef float @llvm.sqrt.f32(float %i.ba)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread, %bb.c
  %sqrt.i.i78.sink = phi float [ %sqrt.i.i78, %bb.c ], [ %sqrt.i, %_ZNK9btVector3eqERKS_.exit.thread ]
  %.sink181 = phi float [ %i.az, %bb.c ], [ %8, %_ZNK9btVector3eqERKS_.exit.thread ]
  %i.bb = phi <2 x float> [ %i.av, %bb.c ], [ %i.an, %_ZNK9btVector3eqERKS_.exit.thread ]
  %i.bc = fdiv float 1.000000e+00, %sqrt.i.i78.sink ; 2 uses
  %i.bd = fmul float %.sink181, %i.bc
  %i.be = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.bb, %i.bf
  store <2 x float> %i.bg, ptr %i.aq, align 16, !tbaa !12
  store float %i.bd, ptr %.sroa.46.0..sroa_idx.a, align 8, !tbaa !12
  %i.bh = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 3 uses
  %i.bi = icmp eq i32 %i.bh, %i.a
  %i.bj = icmp eq i32 %i.bh, %i.g
  %or.cond = or i1 %i.bi, %i.bj
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bk = load <2 x float>, ptr %i.aq, align 16, !tbaa !12
  %i.bl = fneg <2 x float> %i.bk
  %i.bm = load float, ptr %.sroa.46.0..sroa_idx.a, align 8, !tbaa !12
  %i.bn = fneg float %i.bm
  %.sroa.3.12.vec.insert.i81 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bn, i64 0
  store <2 x float> %i.bl, ptr %6, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i81, ptr %i.bo, align 8
  %i.bp = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0165 = phi i32 [ %i.bp, %bb.e ], [ %i.bh, %bb.d ] ; 7 uses
  %i.bq = icmp eq i32 %.0165, %i.a
  %i.br = icmp eq i32 %.0165, %i.g
  %or.cond60 = or i1 %i.bq, %i.br
  br i1 %or.cond60, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = sext i32 %.0165 to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bs ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load <2 x float>, ptr %i.bt, align 4, !tbaa !12
  %i.bw = load <2 x float>, ptr %i.i, align 4, !tbaa !12
  %i.bx = fsub <2 x float> %i.bv, %i.bw           ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !12
  %i.ca = load float, ptr %i.s, align 4, !tbaa !12
  %i.cb = fsub float %i.bz, %i.ca                 ; 3 uses
  %.sroa.3.12.vec.insert.i86 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  store <2 x float> %i.bx, ptr %i.aq, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i86, ptr %.sroa.46.0..sroa_idx.a, align 8, !tbaa !16
  %i.cc = extractelement <2 x float> %i.bx, i64 1
  %i.cd = load float, ptr %4, align 16, !tbaa !12 ; 2 uses
  %i.ce = extractelement <2 x float> %i.bx, i64 0
  %i.cf = fneg float %i.cd
  %i.cg = fmul float %i.cc, %i.cf
  %i.ch = load <2 x float>, ptr %.sroa.4159.0..sroa_idx, align 4, !tbaa !12 ; 3 uses
  %i.ci = fneg <2 x float> %i.ch
  %i.cj = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ck = insertelement <2 x float> %i.cj, float %i.cb, i64 0
  %i.cl = fmul <2 x float> %i.ck, %i.ci
  %i.cm = insertelement <2 x float> %i.cj, float %i.cb, i64 1
  %i.cn = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.co = insertelement <2 x float> %i.cn, float %i.cd, i64 1
  %i.cp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.co, <2 x float> %i.cl) ; 4 uses
  %i.cq = extractelement <2 x float> %i.ch, i64 0
  %i.cr = call float @llvm.fmuladd.f32(float %i.ce, float %i.cq, float %i.cg) ; 3 uses
  %foldExtExtBinop189 = fmul <2 x float> %i.cp, %i.cp
  %i.cs = extractelement <2 x float> %foldExtExtBinop189, i64 1
  %i.ct = extractelement <2 x float> %i.cp, i64 0 ; 2 uses
  %i.cu = call float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.cs)
  %i.cv = call noundef float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.cu)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.cv)
  %i.cw = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.cx = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x float> %i.cp, %i.cy
  %i.da = fmul float %i.cr, %i.cw
  %.sroa.8.8.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.da, i64 0
  store <2 x float> %i.cz, ptr %10, align 16
  store <2 x float> %.sroa.8.8.vec.insert.i, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !16
  %i.db = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 4 uses
  %i.dc = icmp eq i32 %i.db, %i.a
  %i.dd = icmp eq i32 %i.db, %i.g
  %or.cond61 = or i1 %i.dc, %i.dd
  %i.de = icmp eq i32 %i.db, %.0165
  %or.cond63 = or i1 %i.de, %or.cond61
  br i1 %or.cond63, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.df = load <2 x float>, ptr %10, align 16, !tbaa !12
  %i.dg = fneg <2 x float> %i.df
  %i.dh = load float, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !12
  %i.di = fneg float %i.dh
  %.sroa.3.12.vec.insert.i100 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.di, i64 0
  store <2 x float> %i.dg, ptr %7, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i100, ptr %i.dj, align 8
  %i.dk = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i32 [ %i.dk, %bb.h ], [ %i.db, %bb.g ] ; 6 uses
  %i.dl = icmp eq i32 %.0, %i.a
  %i.dm = icmp eq i32 %.0, %i.g
  %or.cond64 = or i1 %i.dl, %i.dm
  %i.dn = icmp eq i32 %.0, %.0165
  %or.cond66 = or i1 %i.dn, %or.cond64
  br i1 %or.cond66, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.do = sext i32 %.0 to i64
  %i.dp = getelementptr inbounds [16 x i8], ptr %1, i64 %i.do ; 3 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !12
  %i.dr = load float, ptr %i.i, align 4, !tbaa !12 ; 3 uses
  %i.ds = fsub float %i.dq, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.du = load float, ptr %i.dt, align 4, !tbaa !12
  %i.dv = load float, ptr %i.n, align 4, !tbaa !12 ; 3 uses
  %i.dw = fsub float %i.du, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !12
  %i.dz = load float, ptr %i.s, align 4, !tbaa !12 ; 3 uses
  %i.ea = fsub float %i.dy, %i.dz
  %i.eb = load float, ptr %i.k, align 4, !tbaa !12
  %i.ec = fsub float %i.eb, %i.dr                 ; 2 uses
  %i.ed = load float, ptr %i.p, align 4, !tbaa !12
  %i.ee = fsub float %i.ed, %i.dv                 ; 2 uses
  %i.ef = load float, ptr %i.u, align 4, !tbaa !12
  %i.eg = fsub float %i.ef, %i.dz                 ; 2 uses
  %i.eh = load float, ptr %i.bt, align 4, !tbaa !12
  %i.ei = fsub float %i.eh, %i.dr                 ; 2 uses
  %i.ej = load float, ptr %i.bu, align 4, !tbaa !12
  %i.ek = fsub float %i.ej, %i.dv                 ; 2 uses
  %i.el = load float, ptr %i.by, align 4, !tbaa !12
  %i.em = fsub float %i.el, %i.dz                 ; 2 uses
  %i.en = fneg float %i.ek
  %i.eo = fmul float %i.eg, %i.en
  %i.ep = call float @llvm.fmuladd.f32(float %i.ee, float %i.em, float %i.eo)
  %i.eq = fneg float %i.em
  %i.er = fmul float %i.ec, %i.eq
  %i.es = call float @llvm.fmuladd.f32(float %i.eg, float %i.ei, float %i.er)
  %i.et = fneg float %i.ei
  %i.eu = fmul float %i.ee, %i.et
  %i.ev = call float @llvm.fmuladd.f32(float %i.ec, float %i.ek, float %i.eu)
  %i.ew = fmul float %i.dw, %i.es
  %i.ex = call float @llvm.fmuladd.f32(float %i.ds, float %i.ep, float %i.ew)
  %i.ey = call noundef float @llvm.fmuladd.f32(float %i.ea, float %i.ev, float %i.ex)
  %i.ez = fcmp olt float %i.ey, 0.000000e+00      ; 2 uses
  %spec.select = select i1 %i.ez, i32 %.0, i32 %.0165
  %spec.select173 = select i1 %i.ez, i32 %.0165, i32 %.0
  %i.fa = zext i32 %i.g to i64
  %i.fb = shl nuw i64 %i.fa, 32
  %i.fc = zext i32 %i.a to i64
  %i.fd = or disjoint i64 %i.fb, %i.fc
  %i.fe = zext i32 %spec.select173 to i64
  %i.ff = shl nuw i64 %i.fe, 32
  %i.fg = zext i32 %spec.select to i64
  %i.fh = or disjoint i64 %i.ff, %i.fg
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.b, %bb.f, %bb.i, %bb.a
  %.sroa.5163.2 = phi i64 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.fd, %bb.j ]
  %.sroa.14.2 = phi i64 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.fh, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.5163.2, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.14.2, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = icmp sgt i32 %1, 0                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %i.f = load <3 x float>, ptr %2, align 4        ; 6 uses
  %i.g = shufflevector <3 x float> %i.f, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 2 uses
  %i.h = load float, ptr %2, align 4              ; 4 uses
  %i.i = extractelement <3 x float> %i.f, i64 2   ; 2 uses
  %i.j = fmul float %i.i, 0.000000e+00
  %i.k = extractelement <3 x float> %i.f, i64 1   ; 2 uses
  %i.l = fsub float %i.k, %i.j                    ; 2 uses
  %i.m = fneg <3 x float> %i.f                    ; 3 uses
  %i.n = extractelement <3 x float> %i.m, i64 0
  %i.o = tail call float @llvm.fmuladd.f32(float %i.i, float 0.000000e+00, float %i.n) ; 2 uses
  %i.p = fmul float %i.k, -0.000000e+00           ; 2 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %i.h, float 0.000000e+00, float %i.p) ; 2 uses
  %i.r = fmul float %i.h, -0.000000e+00
  %i.s = shufflevector <3 x float> %i.f, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.t = shufflevector <3 x float> %i.m, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.u = insertelement <2 x float> %i.t, float %i.r, i64 1
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> zeroinitializer, <2 x float> %i.u) ; 3 uses
  %i.w = fadd float %i.p, %i.h                    ; 2 uses
  %i.x = insertelement <2 x float> %i.v, float %i.o, i64 0 ; 2 uses
  %i.y = fmul <2 x float> %i.x, %i.x
  %i.z = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aa = insertelement <2 x float> %i.z, float %i.l, i64 0 ; 2 uses
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.aa, <2 x float> %i.y)
  %i.ac = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.w, i64 1 ; 2 uses
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ad, <2 x float> %i.ab)
  %i.af = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ae) ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.ah = extractelement <2 x float> %i.af, i64 1 ; 2 uses
  %i.ai = fcmp ogt float %i.ag, %i.ah             ; 2 uses
  %sqrt.i.sqrt.i8.i = select i1 %i.ai, float %i.ag, float %i.ah
  %i.aj = insertelement <3 x i1> poison, i1 %i.ai, i64 0
  %i.ak = shufflevector <3 x i1> %i.aj, <3 x i1> poison, <3 x i32> zeroinitializer
  %i.al = insertelement <3 x float> poison, float %i.q, i64 0
  %i.am = insertelement <3 x float> %i.al, float %i.l, i64 1
  %i.an = insertelement <3 x float> %i.am, float %i.o, i64 2
  %i.ao = insertelement <3 x float> poison, float %i.w, i64 0
  %i.ap = shufflevector <2 x float> %i.v, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.aq = shufflevector <3 x float> %i.ao, <3 x float> %i.ap, <3 x i32> <i32 0, i32 3, i32 4>
  %i.ar = select <3 x i1> %i.ak, <3 x float> %i.an, <3 x float> %i.aq
  %i.as = fdiv float 1.000000e+00, %sqrt.i.sqrt.i8.i
  %i.at = insertelement <3 x float> poison, float %i.as, i64 0
  %i.au = shufflevector <3 x float> %i.at, <3 x float> poison, <3 x i32> zeroinitializer
  %i.av = fmul <3 x float> %i.ar, %i.au           ; 4 uses
  %i.aw = shufflevector <3 x float> %i.av, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.ax = shufflevector <3 x float> %i.m, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.ay = fmul <3 x float> %i.aw, %i.ax
  %i.az = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.av, <3 x float> %i.f, <3 x float> %i.ay) ; 2 uses
  %i.ba = insertelement <3 x float> %i.g, float %i.h, i64 1
  %i.bb = shufflevector <3 x float> %i.az, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.bc = shufflevector <3 x float> %i.az, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread206
  br i1 %i.a, label %.lr.ph.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.bd = load float, ptr %2, align 4
  %i.be = load float, ptr %i.d, align 4
  %i.bf = load float, ptr %i.e, align 4
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %.01314.i = phi i32 [ -1, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !41
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bo = icmp eq i32 %.01314.i, -1
  br i1 %i.bo, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = sext i32 %.01314.i to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !12
  %i.bw = load <2 x float>, ptr %i.bp, align 4, !tbaa !12 ; 2 uses
  %i.bx = load <2 x float>, ptr %i.bt, align 4, !tbaa !12 ; 2 uses
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 1, i32 3>
  %i.bz = fmul <2 x float> %i.bl, %i.by
  %i.ca = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 0, i32 2>
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.bj, <2 x float> %i.bz)
  %i.cc = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.bv, i64 1
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.bh, <2 x float> %i.cb) ; 2 uses
  %i.cf = extractelement <2 x float> %i.ce, i64 0
  %i.cg = extractelement <2 x float> %i.ce, i64 1
  %i.ch = fcmp ogt float %i.cf, %i.cg
  br i1 %i.ch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ci = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.1.i = phi i32 [ %i.ci, %bb.f ], [ %.01314.i, %bb.e ], [ %.01314.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit, label %bb.c, !llvm.loop !99

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit: ; preds = %bb.g, %bb.b
end_hunk_0
