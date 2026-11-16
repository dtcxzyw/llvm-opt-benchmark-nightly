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
  %.sroa.0.0.vec.insert.i.i72.a = insertelement <2 x float> <float poison, float 0.000000e+00>, float %8, i64 0
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %.sroa.44.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store <2 x float> %.sroa.0.0.vec.insert.i.i72.a, ptr %.sroa.44.0..sroa_idx.a, align 8, !tbaa !16
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
  %i.au = fmul <2 x float> %i.an, %i.an
  %11 = extractelement <2 x float> %i.au, i64 1
  %12 = extractelement <2 x float> %i.an, i64 0   ; 2 uses
  %13 = call float @llvm.fmuladd.f32(float %12, float %12, float %11)
  %14 = call noundef float @llvm.fmuladd.f32(float %8, float %8, float %13)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %14) ; 2 uses
  %15 = fmul float %i.as, %i.as
  %16 = call float @llvm.fmuladd.f32(float %9, float %9, float %15)
  %17 = call noundef float @llvm.fmuladd.f32(float %i.at, float %i.at, float %16)
  %sqrt.i77 = call noundef float @llvm.sqrt.f32(float %17)
  %i.av = fcmp ogt float %sqrt.i, %sqrt.i77
  br i1 %i.av, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, ptr noundef nonnull align 16 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !34
  %i.aw = load <2 x float>, ptr %i.aq, align 16, !tbaa !12 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.aw, %i.aw
  %i.ax = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ay = extractelement <2 x float> %i.aw, i64 0 ; 2 uses
  %i.az = call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.ax)
  %i.ba = load float, ptr %.sroa.44.0..sroa_idx.a, align 8, !tbaa !12 ; 3 uses
  %i.bb = call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.az)
  %sqrt.i.i78 = call noundef float @llvm.sqrt.f32(float %i.bb)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread, %bb.c
  %sqrt.i.i78.sink = phi float [ %sqrt.i.i78, %bb.c ], [ %sqrt.i, %_ZNK9btVector3eqERKS_.exit.thread ]
  %.sink181 = phi float [ %i.ba, %bb.c ], [ %8, %_ZNK9btVector3eqERKS_.exit.thread ]
  %i.bc = phi <2 x float> [ %i.aw, %bb.c ], [ %i.an, %_ZNK9btVector3eqERKS_.exit.thread ]
  %i.bd = fdiv float 1.000000e+00, %sqrt.i.i78.sink ; 2 uses
  %i.be = fmul float %.sink181, %i.bd
  %i.bf = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %i.bc, %i.bg
  store <2 x float> %i.bh, ptr %i.aq, align 16, !tbaa !12
  store float %i.be, ptr %.sroa.44.0..sroa_idx.a, align 8, !tbaa !12
  %i.bi = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 3 uses
  %i.bj = icmp eq i32 %i.bi, %i.a
  %i.bk = icmp eq i32 %i.bi, %i.g
  %or.cond = or i1 %i.bj, %i.bk
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bl = load <2 x float>, ptr %i.aq, align 16, !tbaa !12
  %i.bm = fneg <2 x float> %i.bl
  %i.bn = load float, ptr %.sroa.44.0..sroa_idx.a, align 8, !tbaa !12
  %i.bo = fneg float %i.bn
  %.sroa.3.12.vec.insert.i81 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bo, i64 0
  store <2 x float> %i.bm, ptr %6, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i81, ptr %i.bp, align 8
  %i.bq = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0165 = phi i32 [ %i.bq, %bb.e ], [ %i.bi, %bb.d ] ; 7 uses
  %i.br = icmp eq i32 %.0165, %i.a
  %i.bs = icmp eq i32 %.0165, %i.g
  %or.cond60 = or i1 %i.br, %i.bs
  br i1 %or.cond60, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = sext i32 %.0165 to i64
  %i.bu = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bt ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load <2 x float>, ptr %i.bu, align 4, !tbaa !12
  %i.bx = load <2 x float>, ptr %i.i, align 4, !tbaa !12
  %i.by = fsub <2 x float> %i.bw, %i.bx           ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !12
  %i.cb = load float, ptr %i.s, align 4, !tbaa !12
  %i.cc = fsub float %i.ca, %i.cb                 ; 3 uses
  %.sroa.3.12.vec.insert.i86 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cc, i64 0
  store <2 x float> %i.by, ptr %i.aq, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i86, ptr %.sroa.44.0..sroa_idx.a, align 8, !tbaa !16
  %i.cd = extractelement <2 x float> %i.by, i64 1
  %i.ce = load float, ptr %4, align 16, !tbaa !12 ; 2 uses
  %i.cf = extractelement <2 x float> %i.by, i64 0
  %i.cg = fneg float %i.ce
  %i.ch = fmul float %i.cd, %i.cg
  %i.ci = load <2 x float>, ptr %.sroa.4159.0..sroa_idx, align 4, !tbaa !12 ; 3 uses
  %i.cj = fneg <2 x float> %i.ci
  %i.ck = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cl = insertelement <2 x float> %i.ck, float %i.cc, i64 0
  %i.cm = fmul <2 x float> %i.cl, %i.cj
  %i.cn = insertelement <2 x float> %i.ck, float %i.cc, i64 1
  %i.co = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cp = insertelement <2 x float> %i.co, float %i.ce, i64 1
  %i.cq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> %i.cp, <2 x float> %i.cm) ; 4 uses
  %i.cr = extractelement <2 x float> %i.ci, i64 0
  %i.cs = call float @llvm.fmuladd.f32(float %i.cf, float %i.cr, float %i.ch) ; 3 uses
  %foldExtExtBinop187 = fmul <2 x float> %i.cq, %i.cq
  %i.ct = extractelement <2 x float> %foldExtExtBinop187, i64 1
  %i.cu = extractelement <2 x float> %i.cq, i64 0 ; 2 uses
  %i.cv = call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.ct)
  %i.cw = call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cv)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.cw)
  %i.cx = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.cy = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %i.cq, %i.cz
  %i.db = fmul float %i.cs, %i.cx
  %.sroa.8.8.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.db, i64 0
  store <2 x float> %i.da, ptr %10, align 16
  store <2 x float> %.sroa.8.8.vec.insert.i, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !16
  %i.dc = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 4 uses
  %i.dd = icmp eq i32 %i.dc, %i.a
  %i.de = icmp eq i32 %i.dc, %i.g
  %or.cond61 = or i1 %i.dd, %i.de
  %i.df = icmp eq i32 %i.dc, %.0165
  %or.cond63 = or i1 %i.df, %or.cond61
  br i1 %or.cond63, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.dg = load <2 x float>, ptr %10, align 16, !tbaa !12
  %i.dh = fneg <2 x float> %i.dg
  %i.di = load float, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !12
  %i.dj = fneg float %i.di
  %.sroa.3.12.vec.insert.i100 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dj, i64 0
  store <2 x float> %i.dh, ptr %7, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i100, ptr %i.dk, align 8
  %i.dl = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i32 [ %i.dl, %bb.h ], [ %i.dc, %bb.g ] ; 6 uses
  %i.dm = icmp eq i32 %.0, %i.a
  %i.dn = icmp eq i32 %.0, %i.g
  %or.cond64 = or i1 %i.dm, %i.dn
  %i.do = icmp eq i32 %.0, %.0165
  %or.cond66 = or i1 %i.do, %or.cond64
  br i1 %or.cond66, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dp = sext i32 %.0 to i64
  %i.dq = getelementptr inbounds [16 x i8], ptr %1, i64 %i.dp ; 3 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !12
  %i.ds = load float, ptr %i.i, align 4, !tbaa !12 ; 3 uses
  %i.dt = fsub float %i.dr, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.dv = load float, ptr %i.du, align 4, !tbaa !12
  %i.dw = load float, ptr %i.n, align 4, !tbaa !12 ; 3 uses
  %i.dx = fsub float %i.dv, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !12
  %i.ea = load float, ptr %i.s, align 4, !tbaa !12 ; 3 uses
  %i.eb = fsub float %i.dz, %i.ea
  %i.ec = load float, ptr %i.k, align 4, !tbaa !12
  %i.ed = fsub float %i.ec, %i.ds                 ; 2 uses
  %i.ee = load float, ptr %i.p, align 4, !tbaa !12
  %i.ef = fsub float %i.ee, %i.dw                 ; 2 uses
  %i.eg = load float, ptr %i.u, align 4, !tbaa !12
  %i.eh = fsub float %i.eg, %i.ea                 ; 2 uses
  %i.ei = load float, ptr %i.bu, align 4, !tbaa !12
  %i.ej = fsub float %i.ei, %i.ds                 ; 2 uses
  %i.ek = load float, ptr %i.bv, align 4, !tbaa !12
  %i.el = fsub float %i.ek, %i.dw                 ; 2 uses
  %i.em = load float, ptr %i.bz, align 4, !tbaa !12
  %i.en = fsub float %i.em, %i.ea                 ; 2 uses
  %i.eo = fneg float %i.el
  %i.ep = fmul float %i.eh, %i.eo
  %i.eq = call float @llvm.fmuladd.f32(float %i.ef, float %i.en, float %i.ep)
  %i.er = fneg float %i.en
  %i.es = fmul float %i.ed, %i.er
  %i.et = call float @llvm.fmuladd.f32(float %i.eh, float %i.ej, float %i.es)
  %i.eu = fneg float %i.ej
  %i.ev = fmul float %i.ef, %i.eu
  %i.ew = call float @llvm.fmuladd.f32(float %i.ed, float %i.el, float %i.ev)
  %i.ex = fmul float %i.dx, %i.et
  %i.ey = call float @llvm.fmuladd.f32(float %i.dt, float %i.eq, float %i.ex)
  %i.ez = call noundef float @llvm.fmuladd.f32(float %i.eb, float %i.ew, float %i.ey)
  %i.fa = fcmp olt float %i.ez, 0.000000e+00      ; 2 uses
  %spec.select = select i1 %i.fa, i32 %.0, i32 %.0165
  %spec.select173 = select i1 %i.fa, i32 %.0165, i32 %.0
  %i.fb = zext i32 %i.g to i64
  %i.fc = shl nuw i64 %i.fb, 32
  %i.fd = zext i32 %i.a to i64
  %i.fe = or disjoint i64 %i.fc, %i.fd
  %i.ff = zext i32 %spec.select173 to i64
  %i.fg = shl nuw i64 %i.ff, 32
  %i.fh = zext i32 %spec.select to i64
  %i.fi = or disjoint i64 %i.fg, %i.fh
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.b, %bb.f, %bb.i, %bb.a
  %.sroa.5163.2 = phi i64 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.fe, %bb.j ]
  %.sroa.14.2 = phi i64 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.fi, %bb.j ]
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
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %i.d = load <3 x float>, ptr %2, align 4        ; 6 uses
  %i.e = shufflevector <3 x float> %i.d, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 2 uses
  %i.f = load float, ptr %2, align 4              ; 4 uses
  %i.g = extractelement <3 x float> %i.d, i64 2   ; 2 uses
  %i.h = fmul float %i.g, 0.000000e+00
  %i.i = extractelement <3 x float> %i.d, i64 1   ; 2 uses
  %i.j = fsub float %i.i, %i.h                    ; 2 uses
  %i.k = fneg <3 x float> %i.d                    ; 3 uses
  %i.l = extractelement <3 x float> %i.k, i64 0
  %i.m = tail call float @llvm.fmuladd.f32(float %i.g, float 0.000000e+00, float %i.l) ; 2 uses
  %i.n = fmul float %i.i, -0.000000e+00           ; 2 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %i.f, float 0.000000e+00, float %i.n) ; 2 uses
  %i.p = fmul float %i.f, -0.000000e+00
  %i.q = shufflevector <3 x float> %i.d, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.r = shufflevector <3 x float> %i.k, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.s = insertelement <2 x float> %i.r, float %i.p, i64 1
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> zeroinitializer, <2 x float> %i.s) ; 3 uses
  %i.u = fadd float %i.n, %i.f                    ; 2 uses
  %i.v = insertelement <2 x float> %i.t, float %i.m, i64 0 ; 2 uses
  %i.w = fmul <2 x float> %i.v, %i.v
  %i.x = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.y = insertelement <2 x float> %i.x, float %i.j, i64 0 ; 2 uses
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.y, <2 x float> %i.w)
  %i.aa = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.u, i64 1 ; 2 uses
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ab, <2 x float> %i.z)
  %i.ad = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ac) ; 2 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.af = extractelement <2 x float> %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp ogt float %i.ae, %i.af             ; 2 uses
  %sqrt.i.sqrt.i8.i = select i1 %i.ag, float %i.ae, float %i.af
  %i.ah = insertelement <3 x i1> poison, i1 %i.ag, i64 0
  %i.ai = shufflevector <3 x i1> %i.ah, <3 x i1> poison, <3 x i32> zeroinitializer
  %i.aj = insertelement <3 x float> poison, float %i.o, i64 0
  %i.ak = insertelement <3 x float> %i.aj, float %i.j, i64 1
  %i.al = insertelement <3 x float> %i.ak, float %i.m, i64 2
  %i.am = insertelement <3 x float> poison, float %i.u, i64 0
  %i.an = shufflevector <2 x float> %i.t, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ao = shufflevector <3 x float> %i.am, <3 x float> %i.an, <3 x i32> <i32 0, i32 3, i32 4>
  %i.ap = select <3 x i1> %i.ai, <3 x float> %i.al, <3 x float> %i.ao
  %i.aq = fdiv float 1.000000e+00, %sqrt.i.sqrt.i8.i
  %i.ar = insertelement <3 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <3 x float> %i.ar, <3 x float> poison, <3 x i32> zeroinitializer
  %i.at = fmul <3 x float> %i.ap, %i.as           ; 4 uses
  %i.au = shufflevector <3 x float> %i.at, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.av = shufflevector <3 x float> %i.k, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.aw = fmul <3 x float> %i.au, %i.av
  %i.ax = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.at, <3 x float> %i.d, <3 x float> %i.aw) ; 2 uses
  %i.ay = insertelement <3 x float> %i.e, float %i.f, i64 1
  %i.az = shufflevector <3 x float> %i.ax, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.ba = shufflevector <3 x float> %i.ax, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread206
  br i1 %i.a, label %.lr.ph.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.bb = load <1 x float>, ptr %2, align 4
  %i.bc = load <2 x float>, ptr %2, align 4
  %i.bd = load <4 x float>, ptr %2, align 4
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bf = shufflevector <1 x float> %i.bb, <1 x float> poison, <2 x i32> zeroinitializer
  %i.bg = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %.01314.i = phi i32 [ -1, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !41
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = icmp eq i32 %.01314.i, -1
  br i1 %i.bj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12
  %i.bn = sext i32 %.01314.i to i64
  %i.bo = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !12
  %i.br = load <2 x float>, ptr %i.bk, align 4, !tbaa !12 ; 2 uses
  %i.bs = load <2 x float>, ptr %i.bo, align 4, !tbaa !12 ; 2 uses
  %i.bt = shufflevector <2 x float> %i.br, <2 x float> %i.bs, <2 x i32> <i32 1, i32 3>
  %i.bu = fmul <2 x float> %i.bg, %i.bt
  %i.bv = shufflevector <2 x float> %i.br, <2 x float> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bf, <2 x float> %i.bu)
  %i.bx = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bq, i64 1
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.be, <2 x float> %i.bw) ; 2 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 0
  %i.cb = extractelement <2 x float> %i.bz, i64 1
  %i.cc = fcmp ogt float %i.ca, %i.cb
  br i1 %i.cc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cd = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.1.i = phi i32 [ %i.cd, %bb.f ], [ %.01314.i, %bb.e ], [ %.01314.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit, label %bb.c, !llvm.loop !99

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit: ; preds = %bb.g, %bb.b
  %.013.lcssa.i = phi i32 [ -1, %bb.b ], [ %.1.i, %bb.g ] ; 7 uses
  %i.ce = sext i32 %.013.lcssa.i to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ce ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !41
  %i.ch = icmp eq i32 %i.cg, 3
end_hunk_0
