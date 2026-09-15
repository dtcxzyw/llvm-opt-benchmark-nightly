Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/SphereTriangleDetector?download=true
inline.NumInlined: 207
inline.NumDeleted: 42
begin_hunk_0_@_ZN22SphereTriangleDetector7collideERK9btVector3RS0_S3_RfS4_f:bb.a

_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit: ; preds = %bb.g, %bb.i, %bb.j
  %.0.i = phi float [ %i.dh, %bb.i ], [ 1.000000e+00, %bb.j ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %.sroa.059.0.i = phi <2 x float> [ %i.dm, %bb.i ], [ %i.do, %bb.j ], [ %i.cs, %bb.g ] ; 3 uses
  %.sroa.17.0.i = phi <2 x float> [ %.sroa.17.8.vec.insert.i, %bb.i ], [ %.sroa.17.8.vec.insert88.i, %bb.j ], [ %.sroa.3.12.vec.insert.i.i, %bb.g ]
  %.sroa.059.0.vec.extract68.i = extractelement <2 x float> %.sroa.059.0.i, i64 0 ; 2 uses
  %foldExtExtBinop140 = fmul <2 x float> %.sroa.059.0.i, %.sroa.059.0.i
  %i.dq = extractelement <2 x float> %foldExtExtBinop140, i64 1
  %i.dr = call float @llvm.fmuladd.f32(float %.sroa.059.0.vec.extract68.i, float %.sroa.059.0.vec.extract68.i, float %i.dq)
  %.sroa.17.8.vec.extract90.i = extractelement <2 x float> %.sroa.17.0.i, i64 0 ; 2 uses
  %i.ds = call noundef float @llvm.fmuladd.f32(float %.sroa.17.8.vec.extract90.i, float %.sroa.17.8.vec.extract90.i, float %i.dr) ; 2 uses
  %i.dt = fcmp olt float %i.ds, %.046112
  br i1 %i.dt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit
  %i.du = fmul float %i.cw, %.0.i
  %i.dv = fadd float %i.co, %i.du
  %.sroa.3.12.vec.insert.i21.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dv, i64 0
  %i.dw = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x float> %i.cu, %i.dx
  %i.dz = fadd <2 x float> %i.cq, %i.dy
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit
  %.sroa.0100.1 = phi <2 x float> [ %i.dz, %bb.k ], [ %.sroa.0100.0109, %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit ] ; 2 uses
  %.sroa.8.1 = phi <2 x float> [ %.sroa.3.12.vec.insert.i21.i, %bb.k ], [ %.sroa.8.0110, %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit ] ; 2 uses
  %.149 = phi i1 [ true, %bb.k ], [ %.048111, %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit ] ; 2 uses
  %.147 = phi float [ %i.ds, %bb.k ], [ %.046112, %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %i.ea = add nuw nsw i32 %.045113, 1             ; 2 uses
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 208
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = call noundef i32 %i.ee(ptr noundef nonnull align 8 dereferenceable(128) %i.eb)
  %i.eg = icmp slt i32 %i.ea, %i.ef
  br i1 %i.eg, label %bb.g, label %._crit_edge, !llvm.loop !28

bb.m:                                             ; preds = %._crit_edge._crit_edge, %.critedge58
  %.pre-phi = phi float [ %i.cf, %._crit_edge._crit_edge ], [ %.pre118, %.critedge58 ]
  %i.eh = phi float [ %.pre117, %._crit_edge._crit_edge ], [ %i.bg, %.critedge58 ]
  %.sroa.0100.2 = phi <2 x float> [ %.sroa.0100.1, %._crit_edge._crit_edge ], [ %i.by, %.critedge58 ] ; 2 uses
  %.sroa.8.2 = phi <2 x float> [ %.sroa.8.1, %._crit_edge._crit_edge ], [ %.sroa.3.12.vec.insert.i82, %.critedge58 ] ; 2 uses
  %i.ei = phi <2 x float> [ %i.ci, %._crit_edge._crit_edge ], [ %i.bc, %.critedge58 ]
  %i.ej = fsub <2 x float> %i.ei, %.sroa.0100.2   ; 3 uses
  %.sroa.8.8.vec.extract = extractelement <2 x float> %.sroa.8.2, i64 0
  %i.ek = fsub float %i.eh, %.sroa.8.8.vec.extract ; 6 uses
  %.sroa.3.12.vec.insert.i87 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ek, i64 0
  %i.el = extractelement <2 x float> %i.ej, i64 1 ; 4 uses
  %i.em = fmul float %i.el, %i.el
  %i.en = extractelement <2 x float> %i.ej, i64 0 ; 4 uses
  %i.eo = call float @llvm.fmuladd.f32(float %i.en, float %i.en, float %i.em)
  %i.ep = call noundef float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.eo) ; 3 uses
  %i.eq = fcmp uge float %i.ep, %.pre-phi
  br i1 %i.eq, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.er = fcmp ogt float %i.ep, f0x34000000
  br i1 %i.er, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %sqrt108 = call float @llvm.sqrt.f32(float %i.ep)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i87, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !21
  %i.es = fmul float %i.el, %i.el
  %i.et = call float @llvm.fmuladd.f32(float %i.en, float %i.en, float %i.es)
  %i.eu = call noundef float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.et)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.eu)
  %i.ev = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ew = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x float> %i.ej, %i.ex
  store <2 x float> %i.ey, ptr %3, align 4, !tbaa !20
  %i.ez = fmul float %i.ek, %i.ev
  store float %i.ez, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !20
  %i.fa = fsub float %i.j, %sqrt108
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink = phi float [ %i.j, %bb.p ], [ %i.fa, %bb.o ]
  %i.fb = fneg float %.sink
  store <2 x float> %.sroa.0100.2, ptr %2, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.8.2, ptr %i.fc, align 4, !tbaa !21
  store float %i.fb, ptr %4, align 4, !tbaa !20
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %._crit_edge, %bb.a, %bb.m, %bb.d, %bb.q
  %.1 = phi i1 [ true, %bb.q ], [ false, %bb.d ], [ false, %bb.m ], [ false, %bb.a ], [ false, %._crit_edge ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef float @_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !20 ; 3 uses
  %i.e = fsub float %i.b, %i.d                    ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.e, i64 0 ; 3 uses
  %i.f = load <2 x float>, ptr %0, align 4, !tbaa !20 ; 3 uses
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !20
  %i.h = fsub <2 x float> %i.g, %i.f              ; 5 uses
  %i.i = load <2 x float>, ptr %1, align 4, !tbaa !20
  %i.j = fsub <2 x float> %i.i, %i.f              ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !20
  %i.m = fsub float %i.l, %i.d                    ; 6 uses
  %foldExtExtBinop = fmul <2 x float> %i.h, %i.j
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.o = extractelement <2 x float> %i.j, i64 0   ; 3 uses
  %i.p = extractelement <2 x float> %i.h, i64 0
  %i.q = tail call float @llvm.fmuladd.f32(float %i.o, float %i.p, float %i.n)
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.e, float %i.q) ; 3 uses
  %i.s = fcmp ogt float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop96 = fmul <2 x float> %i.j, %i.j
  %i.t = extractelement <2 x float> %foldExtExtBinop96, i64 1
  %i.u = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.t)
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.u) ; 2 uses
  %i.w = fcmp olt float %i.r, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = fdiv float %i.r, %i.v                    ; 3 uses
  %i.y = fmul float %i.m, %i.x
  %i.z = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.j, %i.aa
  %i.ac = fsub <2 x float> %i.h, %i.ab
  %i.ad = fsub float %i.e, %i.y
  %.sroa.17.8.vec.insert = insertelement <2 x float> %.sroa.3.12.vec.insert.i, float %i.ad, i64 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ae = fsub <2 x float> %i.h, %i.j
  %i.af = fsub float %i.e, %i.m
  %.sroa.17.8.vec.insert88 = insertelement <2 x float> %.sroa.3.12.vec.insert.i, float %i.af, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.0 = phi float [ %i.x, %bb.c ], [ 1.000000e+00, %bb.d ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.sroa.059.0 = phi <2 x float> [ %i.ac, %bb.c ], [ %i.ae, %bb.d ], [ %i.h, %bb.a ] ; 3 uses
  %.sroa.17.0 = phi <2 x float> [ %.sroa.17.8.vec.insert, %bb.c ], [ %.sroa.17.8.vec.insert88, %bb.d ], [ %.sroa.3.12.vec.insert.i, %bb.a ]
  %i.ag = insertelement <2 x float> poison, float %.0, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.j, %i.ah
  %i.aj = fmul float %i.m, %.0
  %i.ak = fadd <2 x float> %i.f, %i.ai
  %i.al = fadd float %i.d, %i.aj
  %.sroa.3.12.vec.insert.i21 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.al, i64 0
  store <2 x float> %i.ak, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i21, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !21
  %.sroa.059.0.vec.extract68 = extractelement <2 x float> %.sroa.059.0, i64 0 ; 2 uses
  %foldExtExtBinop98 = fmul <2 x float> %.sroa.059.0, %.sroa.059.0
  %i.am = extractelement <2 x float> %foldExtExtBinop98, i64 1
  %i.an = tail call float @llvm.fmuladd.f32(float %.sroa.059.0.vec.extract68, float %.sroa.059.0.vec.extract68, float %i.am)
  %.sroa.17.8.vec.extract90 = extractelement <2 x float> %.sroa.17.0, i64 0 ; 2 uses
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %.sroa.17.8.vec.extract90, float %.sroa.17.8.vec.extract90, float %i.an)
  ret float %i.ao
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN22SphereTriangleDetector12facecontainsERK9btVector3PS1_RS0_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN22SphereTriangleDetector15pointInTriangleEPK9btVector3RS1_PS0_(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN22SphereTriangleDetector15pointInTriangleEPK9btVector3RS1_PS0_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load float, ptr %i.d, align 4, !tbaa !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load float, ptr %i.i, align 4, !tbaa !20 ; 3 uses
  %i.k = fsub float %i.g, %i.j                    ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load <2 x float>, ptr %i.a, align 4, !tbaa !20 ; 4 uses
  %i.o = load <2 x float>, ptr %1, align 4, !tbaa !20 ; 3 uses
  %i.p = load float, ptr %i.c, align 4, !tbaa !20
  %i.q = load <2 x float>, ptr %i.b, align 4, !tbaa !20 ; 4 uses
  %i.r = load float, ptr %i.h, align 4, !tbaa !20 ; 2 uses
  %i.s = shufflevector <2 x float> %i.n, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.t = shufflevector <2 x float> %i.o, <2 x float> %i.n, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.u = fsub <2 x float> %i.s, %i.t              ; 2 uses
  %i.v = shufflevector <2 x float> %i.n, <2 x float> %i.q, <2 x i32> <i32 1, i32 3>
  %i.w = shufflevector <2 x float> %i.o, <2 x float> %i.n, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.x = fsub <2 x float> %i.v, %i.w              ; 2 uses
  %i.y = insertelement <2 x float> poison, float %i.e, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.j, i64 1
  %i.aa = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.e, i64 1 ; 2 uses
  %i.ac = fsub <2 x float> %i.z, %i.ab            ; 2 uses
  %i.ad = extractelement <2 x float> %i.q, i64 0
  %foldExtExtBinop = fsub <2 x float> %i.o, %i.q
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.af = fsub float %i.p, %i.r                   ; 2 uses
  %6 = load float, ptr %4, align 4, !tbaa !20     ; 2 uses
  %i.ag = load float, ptr %3, align 4, !tbaa !20  ; 2 uses
  %7 = load float, ptr %5, align 4, !tbaa !20     ; 2 uses
  %8 = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ah = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fsub <2 x float> %i.ah, %i.t
  %9 = insertelement <2 x float> poison, float %6, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fsub <2 x float> %10, %i.w
  %12 = insertelement <2 x float> poison, float %7, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = fsub <2 x float> %13, %i.ab
  %i.aj = fsub float %i.ag, %i.ad
  %15 = fsub float %6, %i.r
  %i.ak = fsub float %7, %i.j
  %i.al = load float, ptr %2, align 4, !tbaa !20  ; 3 uses
  %i.am = load float, ptr %i.l, align 4, !tbaa !20 ; 3 uses
  %i.an = load float, ptr %i.m, align 4, !tbaa !20 ; 3 uses
  %i.ao = fneg float %i.am                        ; 2 uses
  %i.ap = fneg float %i.an                        ; 2 uses
  %i.aq = fneg float %i.al                        ; 2 uses
  %i.ar = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.ac, %i.as
  %i.au = insertelement <2 x float> poison, float %i.am, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.av, <2 x float> %i.at)
  %i.ax = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %i.u, %i.ay
  %i.ba = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.bb, <2 x float> %i.az)
  %i.bd = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.x, %i.be
  %i.bg = insertelement <2 x float> poison, float %i.an, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.bh, <2 x float> %i.bf)
  %i.bj = fmul float %i.k, %i.ap
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.af, float %i.am, float %i.bj)
  %i.bl = fmul float %i.ae, %i.ao
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.k, float %i.al, float %i.bl)
  %i.bn = fmul float %i.af, %i.aq
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.an, float %i.bn)
  %i.bp = fmul <2 x float> %11, %i.bc
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ai, <2 x float> %i.bp)
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %14, <2 x float> %i.bq) ; 3 uses
  %i.bs = fmul float %15, %i.bm
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.aj, float %i.bs)
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bo, float %i.ak, float %i.bt) ; 2 uses
  %i.bv = extractelement <2 x float> %i.br, i64 0
  %i.bw = fcmp ogt float %i.bv, 0.000000e+00
  %i.bx = extractelement <2 x float> %i.br, i64 1
  %i.by = fcmp ogt float %i.bx, 0.000000e+00
  %or.cond = and i1 %i.bw, %i.by
  %i.bz = fcmp ogt float %i.bu, 0.000000e+00
  %or.cond3 = and i1 %i.bz, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ca = fcmp ugt <2 x float> %i.br, zeroinitializer
  %i.cb = bitcast <2 x i1> %i.ca to i2
  %or.cond5 = icmp eq i2 %i.cb, 0
  %i.cc = fcmp ole float %i.bu, 0.000000e+00
  %or.cond7 = and i1 %i.cc, %or.cond5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %or.cond7, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN36btDiscreteCollisionDetectorInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22SphereTriangleDetectorD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #11
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTS36btDiscreteCollisionDetectorInterface"}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS13btSphereShape", !12, i64 0}
!14 = !{!"p1 _ZTS15btTriangleShape", !12, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!"_ZTS22SphereTriangleDetector", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24}
!17 = !{!16, !13, i64 8}
!18 = !{!16, !14, i64 16}
!19 = !{!16, !15, i64 24}
!20 = !{!15, !15, i64 0}
!21 = !{!5, !5, i64 0}
!22 = distinct !{!22, !"_ZNK11btTransform12inverseTimesERKS_"}
!23 = distinct !{!23, !22, !"_ZNK11btTransform12inverseTimesERKS_: argument 0"}
!24 = distinct !{!24, !"_ZNK11btMatrix3x314transposeTimesERKS_"}
!25 = distinct !{!25, !24, !"_ZNK11btMatrix3x314transposeTimesERKS_: argument 0"}
!26 = !{!23}
!27 = !{!25, !23}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{i64 0, i64 16, !21}
end_hunk_0
