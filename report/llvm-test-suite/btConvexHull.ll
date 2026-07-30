inline.NumInlined: 627
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN11HullLibrary7extrudeEP14btHullTrianglei:bb.a
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ei
  store ptr null, ptr %i.ej, align 8, !tbaa !54
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bb)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !56
  %i.em = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.en = sext i32 %i.el to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.en
  store ptr null, ptr %i.eo, align 8, !tbaa !54
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dw)
  %.pre95 = load ptr, ptr %i.j, align 8, !tbaa !49
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ep = phi ptr [ %.pre95, %bb.u ], [ %i.ds, %bb.t ]
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !56
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.es
  store ptr null, ptr %i.et, align 8, !tbaa !54
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef ptr @_ZN11HullLibrary10extrudableEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, float noundef %1) local_unnamed_addr #13 align 2 {
.lr.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64   ; 4 uses
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
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !54 ; 4 uses
  br i1 %.not, label %._crit_edge15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not11 = icmp eq ptr %.pre, null
  br i1 %.not11, label %._crit_edge15, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.013, i64 32
  %i.h = load float, ptr %i.g, align 4, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.j = load float, ptr %i.i, align 4, !tbaa !63
  %i.k = fcmp olt float %i.h, %i.j
  br i1 %i.k, label %bb.d, label %._crit_edge15

bb.d:                                             ; preds = %bb.c
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.1 = phi ptr [ %.013, %bb.b ], [ %.013, %bb.c ], [ %.pre, %bb.d ], [ %.pre, %bb.a ] ; 4 uses
  %.not.1 = icmp eq ptr %.1, null
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %.phi.trans.insert.1 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre.1 = load ptr, ptr %.phi.trans.insert.1, align 8, !tbaa !54 ; 4 uses
  br i1 %.not.1, label %._crit_edge15.1, label %bb.e

bb.e:                                             ; preds = %._crit_edge15
  %.not11.1 = icmp eq ptr %.pre.1, null
  br i1 %.not11.1, label %._crit_edge15.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.n = load float, ptr %i.m, align 4, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %.pre.1, i64 32
  %i.p = load float, ptr %i.o, align 4, !tbaa !63
  %i.q = fcmp olt float %i.n, %i.p
  br i1 %i.q, label %bb.g, label %._crit_edge15.1

bb.g:                                             ; preds = %bb.f
  br label %._crit_edge15.1

._crit_edge15.1:                                  ; preds = %bb.g, %bb.f, %bb.e, %._crit_edge15
  %.1.1 = phi ptr [ %.1, %bb.e ], [ %.1, %bb.f ], [ %.pre.1, %bb.g ], [ %.pre.1, %._crit_edge15 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.a

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
  %.pre.epil = load ptr, ptr %.phi.trans.insert.epil, align 8, !tbaa !54 ; 4 uses
  br i1 %.not.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %.not11.epil = icmp eq ptr %.pre.epil, null
  br i1 %.not11.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.013.epil.init, i64 32
  %i.s = load float, ptr %i.r, align 4, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.epil, i64 32
  %i.u = load float, ptr %i.t, align 4, !tbaa !63
  %i.v = fcmp olt float %i.s, %i.u
  br i1 %i.v, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.h, %bb.i, %bb.j, %._crit_edge.unr-lcssa
  %.1.lcssa = phi ptr [ %.1.1, %._crit_edge.unr-lcssa ], [ %.013.epil.init, %bb.h ], [ %.013.epil.init, %bb.i ], [ %.pre.epil, %bb.j ], [ %.pre.epil, %.epil.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 32
  %i.x = load float, ptr %i.w, align 4, !tbaa !63
  %i.y = fcmp ogt float %i.x, %1
  %i.z = select i1 %i.y, ptr %.1.lcssa, ptr null
  ret ptr %i.z
}

; Function Attrs: uwtable
define dso_local { i64, i64 } @_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #14 align 2 {
bb.a:
  %4 = alloca [3 x %class.btVector3], align 16    ; 13 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.sroa.4156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <4 x float> <float f0x3C23D70A, float 2.000000e-02, float 1.000000e+00, float 0.000000e+00>, ptr %4, align 16
  %i.a = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.b = load <2 x float>, ptr %4, align 16, !tbaa !8
  %i.c = fneg <2 x float> %i.b
  %i.d = load float, ptr %.sroa.5157.0..sroa_idx, align 8, !tbaa !8
  %i.e = fneg float %i.d
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.e, i64 0
  store <2 x float> %i.c, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.f, align 8
  %i.g = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.h = sext i32 %i.a to i64
  %i.i = getelementptr inbounds [16 x i8], ptr %1, i64 %i.h ; 5 uses
  %i.j = sext i32 %i.g to i64
  %i.k = getelementptr inbounds [16 x i8], ptr %1, i64 %i.j ; 4 uses
  %i.l = load float, ptr %i.i, align 4, !tbaa !8
  %i.m = load float, ptr %i.k, align 4, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !8
  %i.r = fsub float %i.o, %i.q                    ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !8
  %i.w = insertelement <2 x float> poison, float %i.t, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.l, i64 1
  %i.y = insertelement <2 x float> poison, float %i.v, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.m, i64 1
  %i.aa = fsub <2 x float> %i.x, %i.z             ; 6 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i68 = insertelement <2 x float> %i.ab, float %i.r, i64 1
  %i.ac = insertelement <2 x float> %i.aa, float 0.000000e+00, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i68, ptr %4, align 16
  store <2 x float> %i.ac, ptr %.sroa.5157.0..sroa_idx, align 8, !tbaa !14
  %i.ad = icmp eq i32 %i.a, %i.g
  br i1 %i.ad, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = extractelement <2 x float> %i.aa, i64 0 ; 3 uses
  %i.af = fcmp oeq float %i.ae, 0.000000e+00
  %i.ag = fcmp oeq float %i.r, 0.000000e+00
  %or.cond167 = select i1 %i.af, i1 %i.ag, i1 false
  %i.ah = extractelement <2 x float> %i.aa, i64 1 ; 4 uses
  %i.ai = fcmp oeq float %i.ah, 0.000000e+00
  %or.cond169 = select i1 %or.cond167, i1 %i.ai, i1 false
  br i1 %or.cond169, label %.critedge, label %_ZNK9btVector3eqERKS_.exit.thread

_ZNK9btVector3eqERKS_.exit.thread:                ; preds = %bb.b
  %i.aj = fmul float %i.r, -0.000000e+00          ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.al = fneg <2 x float> %i.aa
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> %i.al, <2 x i32> <i32 0, i32 2>
  %i.an = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> <float 2.000000e-02, float 0.000000e+00>, <2 x float> %i.am) ; 3 uses
  %i.ao = fneg float %i.ah
  %i.ap = fmul float %i.ah, 2.000000e-02
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %9 = fadd float %i.ae, %i.aj                    ; 2 uses
  %.sroa.0.0.vec.insert.i.i72.a = insertelement <2 x float> poison, float %9, i64 0
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %.sroa.44.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %10 = fsub float %i.r, %i.ap                    ; 3 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %10, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !14
  %i.ar = fmul float %i.ae, 2.000000e-02
  %i.as = call float @llvm.fmuladd.f32(float %i.ah, float 0.000000e+00, float %i.ar) ; 2 uses
  %i.at = call float @llvm.fmuladd.f32(float %i.r, float -2.000000e-02, float %i.ao) ; 2 uses
  %.sroa.0.4.vec.insert.i.i73 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i72.a, float %i.as, i64 1
  %.sroa.3.12.vec.insert.i.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.at, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i73, ptr %i.aq, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i74, ptr %.sroa.44.0..sroa_idx.a, align 8, !tbaa !14
  %11 = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %12 = insertelement <2 x float> %11, float %i.as, i64 1 ; 2 uses
  %i.au = fmul <2 x float> %12, %12
  %13 = insertelement <2 x float> %i.an, float %9, i64 1 ; 2 uses
  %14 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %13, <2 x float> %i.au)
  %15 = insertelement <2 x float> poison, float %10, i64 0
  %16 = insertelement <2 x float> %15, float %i.at, i64 1 ; 2 uses
  %17 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %16, <2 x float> %14)
  %18 = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %17) ; 2 uses
  %19 = extractelement <2 x float> %18, i64 0     ; 2 uses
  %20 = extractelement <2 x float> %18, i64 1
  %i.av = fcmp ogt float %19, %20
  br i1 %i.av, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !38
  %i.aw = load <2 x float>, ptr %8, align 16, !tbaa !8 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.aw, %i.aw
  %i.ax = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ay = extractelement <2 x float> %i.aw, i64 0 ; 2 uses
  %i.az = call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.ax)
  %i.ba = load float, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !8 ; 3 uses
  %i.bb = call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.az)
  %sqrt.i.i78 = call noundef float @llvm.sqrt.f32(float %i.bb)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread, %bb.c
  %sqrt.i.i78.sink = phi float [ %sqrt.i.i78, %bb.c ], [ %19, %_ZNK9btVector3eqERKS_.exit.thread ]
  %.sink177 = phi float [ %i.ba, %bb.c ], [ %10, %_ZNK9btVector3eqERKS_.exit.thread ]
  %i.bc = phi <2 x float> [ %i.aw, %bb.c ], [ %i.an, %_ZNK9btVector3eqERKS_.exit.thread ]
  %i.bd = fdiv float 1.000000e+00, %sqrt.i.i78.sink ; 2 uses
  %i.be = fmul float %.sink177, %i.bd
  %i.bf = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %i.bc, %i.bg
  store <2 x float> %i.bh, ptr %8, align 16, !tbaa !8
  store float %i.be, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !8
  %i.bi = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 3 uses
  %i.bj = icmp eq i32 %i.bi, %i.a
  %i.bk = icmp eq i32 %i.bi, %i.g
  %or.cond = or i1 %i.bj, %i.bk
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bl = load <2 x float>, ptr %8, align 16, !tbaa !8
  %i.bm = fneg <2 x float> %i.bl
  %i.bn = load float, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !8
  %i.bo = fneg float %i.bn
  %.sroa.3.12.vec.insert.i81 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bo, i64 0
  store <2 x float> %i.bm, ptr %6, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i81, ptr %i.bp, align 8
  %i.bq = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i32 [ %i.bq, %bb.e ], [ %i.bi, %bb.d ] ; 7 uses
  %i.br = icmp eq i32 %.0, %i.a
  %i.bs = icmp eq i32 %.0, %i.g
  %or.cond60 = or i1 %i.br, %i.bs
  br i1 %or.cond60, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = sext i32 %.0 to i64
  %i.bu = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bt ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.bx = load <2 x float>, ptr %i.i, align 4, !tbaa !8
  %i.by = fsub <2 x float> %i.bw, %i.bx           ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !8
  %i.cb = load float, ptr %i.s, align 4, !tbaa !8
  %i.cc = fsub float %i.ca, %i.cb                 ; 3 uses
  %.sroa.3.12.vec.insert.i86 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cc, i64 0
  store <2 x float> %i.by, ptr %8, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i86, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !14
  %i.cd = extractelement <2 x float> %i.by, i64 1
  %i.ce = load float, ptr %4, align 16, !tbaa !8  ; 2 uses
  %i.cf = extractelement <2 x float> %i.by, i64 0
  %i.cg = fneg float %i.ce
  %i.ch = fmul float %i.cd, %i.cg
  %i.ci = load <2 x float>, ptr %.sroa.4156.0..sroa_idx, align 4, !tbaa !8 ; 3 uses
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
  %foldExtExtBinop183 = fmul <2 x float> %i.cq, %i.cq
  %i.ct = extractelement <2 x float> %foldExtExtBinop183, i64 1
  %i.cu = extractelement <2 x float> %i.cq, i64 0 ; 2 uses
  %i.cv = call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.ct)
  %i.cw = call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cv)
  %sqrt.i.i94 = call noundef float @llvm.sqrt.f32(float %i.cw)
  %i.cx = fdiv float 1.000000e+00, %sqrt.i.i94    ; 2 uses
  %i.cy = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %i.cq, %i.cz
  %i.db = fmul float %i.cs, %i.cx
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.db, i64 0
  store <2 x float> %i.da, ptr %i.aq, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.44.0..sroa_idx.a, align 8, !tbaa !14
  %i.dc = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 4 uses
  %i.dd = icmp eq i32 %i.dc, %i.a
  %i.de = icmp eq i32 %i.dc, %i.g
  %or.cond61 = or i1 %i.dd, %i.de
  %i.df = icmp eq i32 %i.dc, %.0
  %or.cond63 = or i1 %i.df, %or.cond61
  br i1 %or.cond63, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.dg = load <2 x float>, ptr %i.aq, align 16, !tbaa !8
  %i.dh = fneg <2 x float> %i.dg
  %i.di = load float, ptr %.sroa.44.0..sroa_idx.a, align 8, !tbaa !8
  %i.dj = fneg float %i.di
  %.sroa.3.12.vec.insert.i97 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dj, i64 0
  store <2 x float> %i.dh, ptr %7, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i97, ptr %i.dk, align 8
  %i.dl = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0162 = phi i32 [ %i.dl, %bb.h ], [ %i.dc, %bb.g ] ; 6 uses
  %i.dm = icmp eq i32 %.0162, %i.a
  %i.dn = icmp eq i32 %.0162, %i.g
  %or.cond64 = or i1 %i.dm, %i.dn
  %i.do = icmp eq i32 %.0162, %.0
  %or.cond66 = or i1 %i.do, %or.cond64
  br i1 %or.cond66, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dp = sext i32 %.0162 to i64
  %i.dq = getelementptr inbounds [16 x i8], ptr %1, i64 %i.dp ; 3 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !8
  %i.ds = load float, ptr %i.i, align 4, !tbaa !8 ; 3 uses
  %i.dt = fsub float %i.dr, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.dv = load float, ptr %i.du, align 4, !tbaa !8
  %i.dw = load float, ptr %i.n, align 4, !tbaa !8 ; 3 uses
  %i.dx = fsub float %i.dv, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !8
  %i.ea = load float, ptr %i.s, align 4, !tbaa !8 ; 3 uses
  %i.eb = fsub float %i.dz, %i.ea
  %i.ec = load float, ptr %i.k, align 4, !tbaa !8
  %i.ed = fsub float %i.ec, %i.ds                 ; 2 uses
  %i.ee = load float, ptr %i.p, align 4, !tbaa !8
  %i.ef = fsub float %i.ee, %i.dw                 ; 2 uses
  %i.eg = load float, ptr %i.u, align 4, !tbaa !8
  %i.eh = fsub float %i.eg, %i.ea                 ; 2 uses
  %i.ei = load float, ptr %i.bu, align 4, !tbaa !8
  %i.ej = fsub float %i.ei, %i.ds                 ; 2 uses
  %i.ek = load float, ptr %i.bv, align 4, !tbaa !8
  %i.el = fsub float %i.ek, %i.dw                 ; 2 uses
  %i.em = load float, ptr %i.bz, align 4, !tbaa !8
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
  %i.fa = fcmp olt float %i.ez, 0.000000e+00
  br i1 %i.fa, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.f, %bb.j, %bb.k, %bb.i, %bb.a
  %.sroa.0159.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.a, %bb.k ], [ %i.a, %bb.j ]
  %.sroa.5160.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.g, %bb.k ], [ %i.g, %bb.j ]
  %.sroa.9161.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %.0162, %bb.k ], [ %.0, %bb.j ]
  %.sroa.14.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %.0, %bb.k ], [ %.0162, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.sroa.5160.0.insert.ext = zext i32 %.sroa.5160.2 to i64
  %.sroa.5160.0.insert.shift = shl nuw i64 %.sroa.5160.0.insert.ext, 32
  %.sroa.0159.0.insert.ext = zext i32 %.sroa.0159.2 to i64
  %.sroa.0159.0.insert.insert = or disjoint i64 %.sroa.5160.0.insert.shift, %.sroa.0159.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0159.0.insert.insert, 0
  %.sroa.14.8.insert.ext = zext i32 %.sroa.14.2 to i64
  %.sroa.14.8.insert.shift = shl nuw i64 %.sroa.14.8.insert.ext, 32
  %.sroa.9161.8.insert.ext = zext i32 %.sroa.9161.2 to i64
  %.sroa.9161.8.insert.insert = or disjoint i64 %.sroa.14.8.insert.shift, %.sroa.9161.8.insert.ext
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.9161.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = icmp sgt i32 %1, 0                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %i.f = load float, ptr %i.d, align 4            ; 7 uses
  %i.g = load float, ptr %i.e, align 4            ; 6 uses
  %i.h = fmul float %i.g, 0.000000e+00
  %i.i = load float, ptr %2, align 4              ; 7 uses
  %i.j = fneg float %i.i                          ; 2 uses
  %i.k = fmul float %i.f, -0.000000e+00           ; 2 uses
  %i.l = tail call float @llvm.fmuladd.f32(float %i.i, float 0.000000e+00, float %i.k) ; 2 uses
  %i.m = fneg float %i.g                          ; 2 uses
  %i.n = fmul float %i.i, -0.000000e+00
  %i.o = fadd float %i.k, %i.i                    ; 2 uses
  %i.p = fsub float %i.f, %i.h                    ; 2 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %i.f, float 0.000000e+00, float %i.m) ; 2 uses
  %i.r = insertelement <2 x float> poison, float %i.g, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x float> poison, float %i.j, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.n, i64 1
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> zeroinitializer, <2 x float> %i.u) ; 4 uses
  %i.w = fmul <2 x float> %i.v, %i.v
  %i.x = insertelement <2 x float> poison, float %i.p, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.q, i64 1 ; 2 uses
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.y, <2 x float> %i.w)
  %i.aa = insertelement <2 x float> poison, float %i.l, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.o, i64 1 ; 2 uses
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ab, <2 x float> %i.z)
  %i.ad = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ac) ; 2 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.af = extractelement <2 x float> %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp ogt float %i.ae, %i.af             ; 4 uses
  %sqrt.i.sqrt.i8.i = select i1 %i.ag, float %i.ae, float %i.af
  %..i = select i1 %i.ag, float %i.p, float %i.q
  %i.ah = extractelement <2 x float> %i.v, i64 0
  %i.ai = extractelement <2 x float> %i.v, i64 1
  %.47.i = select i1 %i.ag, float %i.ah, float %i.ai
  %.48.i = select i1 %i.ag, float %i.l, float %i.o
  %i.aj = fdiv float 1.000000e+00, %sqrt.i.sqrt.i8.i ; 3 uses
  %i.ak = fmul float %..i, %i.aj                  ; 4 uses
  %i.al = fmul float %.47.i, %i.aj                ; 4 uses
  %i.am = fmul float %.48.i, %i.aj                ; 4 uses
  %i.an = fneg float %i.f
  %i.ao = fmul float %i.am, %i.an
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.al, float %i.g, float %i.ao) ; 2 uses
  %i.aq = fmul float %i.ak, %i.m
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.am, float %i.i, float %i.aq) ; 2 uses
  %i.as = fmul float %i.al, %i.j
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.f, float %i.as) ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread208
  br i1 %i.a, label %.lr.ph.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.au = load float, ptr %2, align 4
  %i.av = load float, ptr %i.d, align 4
  %i.aw = load float, ptr %i.e, align 4
  %i.ax = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %.01314.i = phi i32 [ -1, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = icmp eq i32 %.01314.i, -1
  br i1 %i.bf, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !8
  %i.bj = sext i32 %.01314.i to i64
  %i.bk = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !8
  %i.bn = load <2 x float>, ptr %i.bg, align 4, !tbaa !8 ; 2 uses
  %i.bo = load <2 x float>, ptr %i.bk, align 4, !tbaa !8 ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.bq = fmul <2 x float> %i.bc, %i.bp
  %i.br = shufflevector <2 x float> %i.bn, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.ba, <2 x float> %i.bq)
  %i.bt = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bm, i64 1
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.ay, <2 x float> %i.bs) ; 2 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 0
  %i.bx = extractelement <2 x float> %i.bv, i64 1
  %i.by = fcmp ogt float %i.bw, %i.bx
  br i1 %i.by, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bz = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.1.i = phi i32 [ %i.bz, %bb.f ], [ %.01314.i, %bb.e ], [ %.01314.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit, label %bb.c

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit: ; preds = %bb.g, %bb.b
  %.013.lcssa.i = phi i32 [ -1, %bb.b ], [ %.1.i, %bb.g ] ; 7 uses
  %i.ca = sext i32 %.013.lcssa.i to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ca ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_:bb.a
  %i.ck = extractelement <2 x float> %foldExtExtBinop532, i64 0
  %i.cl = tail call float @llvm.fabs.f32(float %i.ck)
  %i.cm = fcmp olt float %i.cl, %6
  %i.cn = fcmp olt float %i.cj, %6
  %or.cond335 = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %or.cond335, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.co = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.cp = insertelement <2 x float> %i.cg, float %i.bw, i64 0
  %i.cq = fsub <2 x float> %i.cp, %i.bn           ; 2 uses
  %i.cr = insertelement <2 x float> %i.bv, float %i.ca, i64 1
  %i.cs = fsub <2 x float> %i.cr, %i.bo           ; 2 uses
  %i.ct = shufflevector <2 x float> %i.bv, <2 x float> %i.cg, <2 x i32> <i32 1, i32 2>
  %i.cu = fsub <2 x float> %i.ct, %i.bp           ; 2 uses
  %i.cv = fmul <2 x float> %i.cu, %i.cu
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.cs, <2 x float> %i.cv)
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cq, <2 x float> %i.cw) ; 2 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0
  %i.cz = extractelement <2 x float> %i.cx, i64 1
  %i.da = fcmp ogt float %i.cy, %i.cz
  br i1 %i.da, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store <2 x float> %i.bv, ptr %i.bz, align 4, !tbaa !8
  store float %i.bw, ptr %i.db, align 4, !tbaa !8
  br label %.loopexit

bb.q:                                             ; preds = %bb.n, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond402.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond402.not, label %.loopexit.thread, label %.lr.ph

.loopexit:                                        ; preds = %bb.m, %bb.p, %bb.o
  %.0310372 = phi i32 [ %i.co, %bb.o ], [ %i.co, %bb.p ], [ 0, %bb.m ] ; 3 uses
  %i.dc = icmp eq i32 %.0310372, %i.bx
  br i1 %i.dc, label %.loopexit.thread, label %bb.r

.loopexit.thread:                                 ; preds = %bb.q, %.loopexit
  %.0310372463 = phi i32 [ %.0310372, %.loopexit ], [ %i.bx, %bb.q ]
  %i.dd = zext i32 %i.bx to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.dd ; 2 uses
  store <2 x float> %i.bv, ptr %i.de, align 4, !tbaa !8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store float %i.bw, ptr %i.df, align 4, !tbaa !8
  %i.dg = add i32 %i.bx, 1
  store i32 %i.dg, ptr %4, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.thread, %.loopexit
  %.0310372462 = phi i32 [ %.0310372463, %.loopexit.thread ], [ %.0310372, %.loopexit ]
  %i.dh = load i32, ptr %i.b, align 4, !tbaa !77  ; 7 uses
  %i.di = load i32, ptr %i.bj, align 8, !tbaa !78
  %i.dj = icmp eq i32 %i.dh, %i.di
  br i1 %i.dj, label %bb.s, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.s:                                             ; preds = %bb.r
  %.not.i.i = icmp eq i32 %i.dh, 0
  %i.dk = shl nsw i32 %i.dh, 1
  %i.dl = select i1 %.not.i.i, i32 1, i32 %i.dk   ; 4 uses
  %i.dm = icmp slt i32 %i.dh, %i.dl
  br i1 %i.dm, label %bb.t, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = sext i32 %i.dl to i64
  %i.do = shl nsw i64 %i.dn, 2
  %i.dp = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.do, i32 noundef 16)
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !77
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.u, %bb.t
  %i.dq = phi i32 [ %.pre.i, %bb.u ], [ %i.dh, %bb.t ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.dp, %bb.u ], [ null, %bb.t ] ; 8 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  %i.ds = load ptr, ptr %i.bk, align 8, !tbaa !70 ; 9 uses
  br i1 %i.dr, label %.lr.ph.i.i.i344, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i340

.lr.ph.i.i.i344:                                  ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %.0.i.i.i526 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i345 = zext nneg i32 %i.dq to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.dq, 8
  %i.du = sub i64 %i.dt, %.0.i.i.i526
  %diff.check = icmp ugt i64 %i.du, -32
  %or.cond528 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond528, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i344
  %n.vec = and i64 %wide.trip.count.i.i.i345, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <4 x i32>, ptr %i.dw, align 4, !tbaa !4
  %wide.load527 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <4 x i32> %wide.load, ptr %i.dv, align 4, !tbaa !4
  store <4 x i32> %wide.load527, ptr %i.dy, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i345
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i342, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i344, %middle.block
  %indvars.iv.i.i.i346.ph = phi i64 [ 0, %.lr.ph.i.i.i344 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i345, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i346.prol = phi i64 [ %indvars.iv.next.i.i.i347.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i346.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i346.prol
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.i.i.i346.prol
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !4
  %indvars.iv.next.i.i.i347.prol = add nuw nsw i64 %indvars.iv.i.i.i346.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !133

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i346.unr = phi i64 [ %indvars.iv.i.i.i346.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i347.prol, %scalar.ph.prol ]
  %i.ed = sub nsw i64 %indvars.iv.i.i.i346.ph, %wide.trip.count.i.i.i345
  %i.ee = icmp ugt i64 %i.ed, -4
  br i1 %i.ee, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i342, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i346 = phi i64 [ %indvars.iv.next.i.i.i347.3, %scalar.ph ], [ %indvars.iv.i.i.i346.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i346
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.i.i.i346
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !4
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !4
  %indvars.iv.next.i.i.i347 = add nuw nsw i64 %indvars.iv.i.i.i346, 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i347
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.next.i.i.i347
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !4
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !4
  %indvars.iv.next.i.i.i347.1 = add nuw nsw i64 %indvars.iv.i.i.i346, 2 ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i347.1
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.next.i.i.i347.1
  %i.en = load i32, ptr %i.em, align 4, !tbaa !4
  store i32 %i.en, ptr %i.el, align 4, !tbaa !4
  %indvars.iv.next.i.i.i347.2 = add nuw nsw i64 %indvars.iv.i.i.i346, 3 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i347.2
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.next.i.i.i347.2
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !4
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !4
  %indvars.iv.next.i.i.i347.3 = add nuw nsw i64 %indvars.iv.i.i.i346, 4 ; 2 uses
  %exitcond.not.i.i.i348.3 = icmp eq i64 %indvars.iv.next.i.i.i347.3, %wide.trip.count.i.i.i345
  br i1 %exitcond.not.i.i.i348.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i342, label %scalar.ph, !llvm.loop !134

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i340: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i341 = icmp eq ptr %i.ds, null
  br i1 %.not.i5.i.i341, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i343, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i342

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i342: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i340
  %i.er = load i8, ptr %i.bl, align 8, !tbaa !76, !range !39, !noundef !40
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i342
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ds)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i342
  %.pre2.pre.i = load i32, ptr %i.b, align 4, !tbaa !77
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i343

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i343: ; preds = %bb.w, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i340
  %.pre2.i = phi i32 [ %.pre2.pre.i, %bb.w ], [ %i.dq, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i340 ]
  store i8 1, ptr %i.bl, align 8, !tbaa !76
  store ptr %.0.i.i.i, ptr %i.bk, align 8, !tbaa !70
  store i32 %i.dl, ptr %i.bj, align 8, !tbaa !78
  br label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

_ZN20btAlignedObjectArrayIiE9push_backERKi.exit:  ; preds = %bb.r, %bb.s, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i343
  %i.et = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i343 ], [ %i.dh, %bb.s ], [ %i.dh, %bb.r ]
  %i.eu = load ptr, ptr %i.bk, align 8, !tbaa !70
  %i.ev = sext i32 %i.et to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ev
  store i32 %.0310372462, ptr %i.ew, align 4, !tbaa !4
  %i.ex = load i32, ptr %i.b, align 4, !tbaa !77
  %i.ey = add nsw i32 %i.ex, 1
  store i32 %i.ey, ptr %i.b, align 4, !tbaa !77
  %i.ez = add nuw i32 %.0306386, 1                ; 2 uses
  %exitcond403.not = icmp eq i32 %i.ez, %1
  br i1 %exitcond403.not, label %bb.l, label %bb.m

._crit_edge:                                      ; preds = %.lr.ph390, %bb.l
  %.sroa.10420.0 = phi float [ f0x7F7FFFFF, %bb.l ], [ %.sroa.10420.2, %.lr.ph390 ] ; 2 uses
  %.sroa.10.0 = phi float [ f0xFF7FFFFF, %bb.l ], [ %.sroa.10.2, %.lr.ph390 ]
  %i.fa = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.l ], [ %11, %.lr.ph390 ] ; 2 uses
  %i.fb = phi <2 x float> [ splat (float f0xFF7FFFFF), %bb.l ], [ %i.fm, %.lr.ph390 ]
  %i.fc = fsub <2 x float> %i.fb, %i.fa           ; 6 uses
  %i.fd = fsub float %.sroa.10.0, %.sroa.10420.0  ; 6 uses
  %i.fe = fcmp olt <2 x float> %i.fc, splat (float f0x358637BD) ; 3 uses
  %i.ff = extractelement <2 x i1> %i.fe, i64 0
  %i.fg = extractelement <2 x i1> %i.fe, i64 1
  %or.cond7 = select i1 %i.ff, i1 true, i1 %i.fg
  %i.fh = fcmp olt float %i.fd, f0x358637BD       ; 2 uses
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.fh
  %i.fi = icmp ult i32 %i.bq, 3
  %or.cond336 = or i1 %i.fi, %or.cond9
  br i1 %or.cond336, label %bb.x, label %bb.aa

.lr.ph390:                                        ; preds = %.lr.ph390.preheader, %.lr.ph390
  %.sroa.10420.1 = phi float [ f0x7F7FFFFF, %.lr.ph390.preheader ], [ %.sroa.10420.2, %.lr.ph390 ] ; 2 uses
  %.sroa.10.1 = phi float [ f0xFF7FFFFF, %.lr.ph390.preheader ], [ %.sroa.10.2, %.lr.ph390 ] ; 2 uses
  %indvars.iv408 = phi i64 [ 0, %.lr.ph390.preheader ], [ %indvars.iv.next409, %.lr.ph390 ] ; 2 uses
  %8 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph390.preheader ], [ %11, %.lr.ph390 ] ; 2 uses
  %i.fj = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph390.preheader ], [ %i.fm, %.lr.ph390 ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv408 ; 2 uses
  %9 = load <2 x float>, ptr %i.fk, align 4, !tbaa !8 ; 4 uses
  %10 = fcmp olt <2 x float> %9, %8
  %11 = select <2 x i1> %10, <2 x float> %9, <2 x float> %8 ; 2 uses
  %i.fl = fcmp ogt <2 x float> %9, %i.fj
  %i.fm = select <2 x i1> %i.fl, <2 x float> %9, <2 x float> %i.fj ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %13 = load float, ptr %12, align 4, !tbaa !8    ; 4 uses
  %14 = fcmp olt float %13, %.sroa.10420.1
  %.sroa.10420.2 = select i1 %14, float %13, float %.sroa.10420.1 ; 2 uses
  %15 = fcmp ogt float %13, %.sroa.10.1
  %.sroa.10.2 = select i1 %15, float %13, float %.sroa.10.1 ; 2 uses
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 2 uses
  %exitcond412.not = icmp eq i64 %indvars.iv.next409, %wide.trip.count411
  br i1 %exitcond412.not, label %._crit_edge, label %.lr.ph390

bb.x:                                             ; preds = %._crit_edge
  %i.fn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> splat (float 5.000000e-01), <2 x float> %i.fa) ; 2 uses
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fd, float 5.000000e-01, float %.sroa.10420.0) ; 2 uses
  %16 = fcmp oge <2 x float> %i.fc, splat (float f0x358637BD) ; 2 uses
  %i.fp = extractelement <2 x float> %i.fc, i64 0 ; 2 uses
  %17 = fcmp olt float %i.fp, f0x7F7FFFFF
  %18 = extractelement <2 x i1> %16, i64 0
  %or.cond337 = and i1 %18, %17
  %.0285 = select i1 %or.cond337, float %i.fp, float f0x7F7FFFFF ; 2 uses
  %i.fq = extractelement <2 x float> %i.fc, i64 1 ; 2 uses
  %19 = fcmp olt float %i.fq, %.0285
  %20 = extractelement <2 x i1> %16, i64 1
  %or.cond338 = and i1 %20, %19
  %.1286 = select i1 %or.cond338, float %i.fq, float %.0285 ; 2 uses
  %i.fr = fcmp oge float %i.fd, f0x358637BD
  %i.fs = fcmp olt float %i.fd, %.1286
  %or.cond339 = select i1 %i.fr, i1 %i.fs, i1 false
  %.2287 = select i1 %or.cond339, float %i.fd, float %.1286 ; 2 uses
  %i.ft = fcmp oeq float %.2287, f0x7F7FFFFF
  br i1 %i.ft, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fu = fmul float %.2287, 5.000000e-02         ; 2 uses
  %i.fv = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = select <2 x i1> %i.fe, <2 x float> %i.fw, <2 x float> %i.fc ; 2 uses
  br i1 %i.fh, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.y, %bb.z
  %.0293 = phi float [ %i.fd, %bb.y ], [ %i.fu, %bb.z ], [ f0x3C23D70A, %bb.x ] ; 2 uses
  %i.fy = phi <2 x float> [ %i.fx, %bb.y ], [ %i.fx, %bb.z ], [ splat (float f0x3C23D70A), %bb.x ] ; 2 uses
  %i.fz = fsub <2 x float> %i.fn, %i.fy
  %i.ga = fadd <2 x float> %i.fn, %i.fy
  %i.gb = fsub float %i.fo, %.0293
  %i.gc = fadd float %i.fo, %.0293
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.j
  %.sink515 = phi float [ %i.be, %bb.j ], [ %i.gb, %.critedge ] ; 4 uses
  %.sink491 = phi float [ %i.bf, %bb.j ], [ %i.gc, %.critedge ] ; 4 uses
  %i.gd = phi <2 x float> [ %i.bc, %bb.j ], [ %i.fz, %.critedge ] ; 4 uses
  %i.ge = phi <2 x float> [ %i.bd, %bb.j ], [ %i.ga, %.critedge ] ; 4 uses
  store <2 x float> %i.gd, ptr %5, align 4, !tbaa !8
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sink515, ptr %i.gf, align 4, !tbaa !8
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gh = extractelement <2 x float> %i.ge, i64 0 ; 2 uses
  store float %i.gh, ptr %i.gg, align 4, !tbaa !8
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.gj = extractelement <2 x float> %i.gd, i64 1 ; 2 uses
  store float %i.gj, ptr %i.gi, align 4, !tbaa !8
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %.sink515, ptr %i.gk, align 4, !tbaa !8
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 32
  store <2 x float> %i.ge, ptr %i.gl, align 4, !tbaa !8
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 40
  store float %.sink515, ptr %i.gm, align 4, !tbaa !8
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.go = extractelement <2 x float> %i.gd, i64 0 ; 2 uses
  store float %i.go, ptr %i.gn, align 4, !tbaa !8
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.gq = extractelement <2 x float> %i.ge, i64 1 ; 2 uses
  store float %i.gq, ptr %i.gp, align 4, !tbaa !8
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 56
  store float %.sink515, ptr %i.gr, align 4, !tbaa !8
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 64
  store <2 x float> %i.gd, ptr %i.gs, align 4, !tbaa !8
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 72
  store float %.sink491, ptr %i.gt, align 4, !tbaa !8
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 80
  store float %i.gh, ptr %i.gu, align 4, !tbaa !8
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 84
  store float %i.gj, ptr %i.gv, align 4, !tbaa !8
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 88
  store float %.sink491, ptr %i.gw, align 4, !tbaa !8
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 96
  store <2 x float> %i.ge, ptr %i.gx, align 4, !tbaa !8
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 104
  store float %.sink491, ptr %i.gy, align 4, !tbaa !8
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 112
  store float %i.go, ptr %i.gz, align 4, !tbaa !8
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 116
  store float %i.gq, ptr %i.ha, align 4, !tbaa !8
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 120
  store float %.sink491, ptr %i.hb, align 4, !tbaa !8
  store i32 8, ptr %4, align 4, !tbaa !4
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %._crit_edge, %bb.a
  ret i1 %i.a
}

; Function Attrs: uwtable
define dso_local void @_ZN11HullLibrary16BringOutYourDeadEPK9btVector3jPS0_RjPjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !77   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit, label %._crit_edge

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit:    ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.f = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.e, i32 noundef 16) ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %i.e, i1 false), !tbaa !4
  %.pre = load i32, ptr %i.a, align 4, !tbaa !77
  %i.g = icmp sgt i32 %.pre, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 %i.k, ptr %i.l, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.a, align 4, !tbaa !77
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit
  %.sroa.1096.2133 = phi ptr [ null, %bb.a ], [ %i.f, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit ], [ %i.f, %bb.b ] ; 5 uses
  %i.p = icmp sgt i32 %2, 0
  %i.q = zext i32 %2 to i64
  %i.r = shl nuw nsw i64 %i.q, 2                  ; 2 uses
  br i1 %i.p, label %bb.c, label %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit.thread

bb.c:                                             ; preds = %._crit_edge
  %i.s = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.r, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit unwind label %_ZN20btAlignedObjectArrayIjED2Ev.exit ; 4 uses

_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit:    ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.s, i8 0, i64 %i.r, i1 false)
  store i32 0, ptr %4, align 4, !tbaa !4
  %i.t = icmp sgt i32 %6, 0
  br i1 %i.t, label %.lr.ph114, label %._crit_edge115

_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit.thread: ; preds = %._crit_edge
  %i.u = icmp eq i32 %2, 0
  tail call void @llvm.assume(i1 %i.u)
  store i32 0, ptr %4, align 4, !tbaa !4
  %i.v = icmp sgt i32 %6, 0
  br i1 %i.v, label %.lr.ph114, label %_ZN20btAlignedObjectArrayIjED2Ev.exit72

.lr.ph114:                                        ; preds = %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit.thread, %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit
  %.sroa.1080.1137 = phi ptr [ null, %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit.thread ], [ %i.s, %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph114, %bb.j
  %indvars.iv120 = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next121, %bb.j ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv120 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4    ; 3 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %.sroa.1080.1137, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4  ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = add i32 %i.ab, -1
  store i32 %i.ac, ptr %i.x, align 4, !tbaa !4
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge115.thread
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZN20btAlignedObjectArrayIjED2Ev.exit:            ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.af = load i32, ptr %4, align 4, !tbaa !4     ; 4 uses
  store i32 %i.af, ptr %i.x, align 4, !tbaa !4
  %i.ag = zext i32 %i.y to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ag ; 3 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !8
  %i.aj = zext i32 %i.af to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.aj ; 3 uses
  store float %i.ai, ptr %i.ak, align 4, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store float %i.am, ptr %i.an, align 4, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store float %i.ap, ptr %i.aq, align 4, !tbaa !8
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !77  ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph111, label %._crit_edge112

._crit_edge112:                                   ; preds = %bb.i, %bb.g
  %i.at = add i32 %i.af, 1                        ; 2 uses
  store i32 %i.at, ptr %4, align 4, !tbaa !4
  store i32 %i.at, ptr %i.aa, align 4, !tbaa !4
  br label %bb.j

.lr.ph111:                                        ; preds = %bb.g, %bb.i
  %i.au = phi i32 [ %i.ba, %bb.i ], [ %i.ar, %bb.g ]
end_hunk_1
