Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodySphericalJointLimit?download=true
inline.NumInlined: 275
inline.NumDeleted: 77
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN30btMultiBodySphericalJointLimitD2Ev:bb.a
bb.a:
  tail call void @_ZN21btMultiBodyConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN30btMultiBodySphericalJointLimitD0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN21btMultiBodyConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(232) %0) #13
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN21btMultiBodyConstraintdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #14
  unreachable

_ZN21btMultiBodyConstraintdlEPv.exit:             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK30btMultiBodySphericalJointLimit12getIslandIdAEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %.not7.not = icmp eq ptr %i.g, null
  br i1 %.not7.not, label %.thread, label %.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = zext nneg i32 %i.b to i64
  %i.k = getelementptr inbounds nuw [688 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.c, %bb.b
  %.sink11 = phi ptr [ %i.g, %bb.b ], [ %i.m, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sink11, i64 228
  %i.o = load i32, ptr %i.n, align 4, !tbaa !63
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b, %bb.c
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %bb.b ], [ %i.o, %.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK30btMultiBodySphericalJointLimit12getIslandIdBEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64   ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %.not7.not = icmp eq ptr %i.g, null
  br i1 %.not7.not, label %.thread, label %.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = zext nneg i32 %i.b to i64
  %i.k = getelementptr inbounds nuw [688 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.c, %bb.b
  %.sink11 = phi ptr [ %i.g, %bb.b ], [ %i.m, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sink11, i64 228
  %i.o = load i32, ptr %i.n, align 4, !tbaa !63
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b, %bb.c
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %bb.b ], [ %i.o, %.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btMultiBodySphericalJointLimit20createConstraintRowsER20btAlignedObjectArrayI27btMultiBodySolverConstraintER23btMultiBodyJacobianDataRK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(204) %2, ptr noundef nonnull align 4 dereferenceable(128) %3) unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 4           ; 6 uses
  %5 = alloca %class.btVector3, align 4           ; 7 uses
  %6 = alloca %class.btMatrix3x3, align 8         ; 14 uses
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %7 = alloca %class.btMatrix3x3, align 4         ; 12 uses
  %8 = alloca %class.btMatrix3x3, align 4         ; 6 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !45
  %.not = icmp eq i32 %i.c, %i.e
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(232) %0)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !46
  %.pre200 = load i32, ptr %i.d, align 4, !tbaa !45
  %i.i = icmp eq i32 %.pre, %.pre200
  br i1 %i.i, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !42
  %i.l = fcmp oeq float %i.k, 0.000000e+00
  br i1 %i.l, label %bb.x, label %bb.c

bb.c:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !43
  %i.q = tail call noundef ptr @_ZN11btMultiBody19getJointPosMultiDofEi(ptr noundef nonnull align 8 dereferenceable(640) %i.n, i32 noundef %i.p)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.s = load i32, ptr %i.o, align 8, !tbaa !43
  %i.t = tail call noundef ptr @_ZN11btMultiBody19getJointPosMultiDofEi(ptr noundef nonnull align 8 dereferenceable(640) %i.r, i32 noundef %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.w = load i32, ptr %i.o, align 8, !tbaa !43
  %i.x = tail call noundef ptr @_ZN11btMultiBody19getJointPosMultiDofEi(ptr noundef nonnull align 8 dereferenceable(640) %i.v, i32 noundef %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.aa = load i32, ptr %i.o, align 8, !tbaa !43
  %i.ab = tail call noundef ptr @_ZN11btMultiBody19getJointPosMultiDofEi(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i32 noundef %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load float, ptr %i.q, align 4, !tbaa !29 ; 6 uses
  %i.ae = load float, ptr %i.u, align 4, !tbaa !29 ; 6 uses
  %i.af = load float, ptr %i.y, align 4, !tbaa !29 ; 7 uses
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !29 ; 10 uses
  %i.ah = fmul float %i.af, 0.000000e+00
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ag, float 0.000000e+00, float %i.ah)
  %i.aj = fsub float %i.ai, %i.ad                 ; 3 uses
  %i.ak = fmul float %i.ad, 0.000000e+00
  %i.al = insertelement <2 x float> poison, float %i.af, i64 0 ; 2 uses
  %i.am = insertelement <2 x float> %i.al, float %i.ad, i64 1 ; 2 uses
  %i.an = fneg <2 x float> %i.am                  ; 5 uses
  %i.ao = insertelement <2 x float> poison, float %i.ae, i64 0 ; 2 uses
  %i.ap = insertelement <2 x float> %i.ao, float %i.af, i64 1 ; 2 uses
  %i.aq = fneg <2 x float> %i.ap                  ; 4 uses
  %i.ar = extractelement <2 x float> %i.an, i64 0
  %i.as = fmul float %i.ae, -0.000000e+00
  %i.at = extractelement <2 x float> %i.an, i64 1 ; 3 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.as)
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ag, float 0.000000e+00, float %i.ae)
  %i.aw = fadd float %i.ak, %i.ag
  %i.ax = shufflevector <2 x float> %i.an, <2 x float> %i.aq, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %i.av, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.aw, i64 1
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> zeroinitializer, <2 x float> %i.az) ; 4 uses
  %i.bb = fsub float %i.au, %i.af                 ; 2 uses
  %i.bc = extractelement <2 x float> %i.ba, i64 0
  %i.bd = fmul float %i.ag, %i.bc
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.at, float %i.bd)
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ar, float %i.be)
  %i.bg = extractelement <2 x float> %i.ba, i64 1 ; 2 uses
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.ae, float %i.bf) ; 3 uses
  %i.bi = fmul float %i.ag, %i.aj
  %i.bj = fmul float %i.ag, %i.bg
  %i.bk = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bi, i64 1
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.ax, <2 x float> %i.bn)
  %i.bp = shufflevector <2 x float> %i.aq, <2 x float> %i.an, <2 x i32> <i32 0, i32 3>
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bp, <2 x float> %i.bo)
  %i.br = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bs = insertelement <2 x float> %i.br, float %i.aj, i64 0
  %i.bt = insertelement <2 x float> poison, float %i.ad, i64 0 ; 2 uses
  %i.bu = insertelement <2 x float> %i.bt, float %i.af, i64 1 ; 2 uses
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bu, <2 x float> %i.bq) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bv, %i.bv
  %i.bw = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bw)
  %i.by = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bx)
  %i.ca = tail call noundef float @llvm.sqrt.f32(float %i.bz)
  %i.cb = fdiv float 1.000000e+00, %i.ca          ; 2 uses
  %i.cc = fmul float %i.bh, %i.cb                 ; 3 uses
  %i.cd = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.bv, %i.ce           ; 3 uses
  %i.cg = extractelement <2 x float> %i.cf, i64 1 ; 2 uses
  %i.ch = fmul float %i.cg, 0.000000e+00
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.cc, float 0.000000e+00, float %i.ch)
  %i.cj = extractelement <2 x float> %i.cf, i64 0 ; 2 uses
  %i.ck = fadd float %i.cj, %i.ci                 ; 2 uses
  %i.cl = fcmp olt float %i.ck, f0xBF7FFFFE
  br i1 %i.cl, label %_Z15shortestArcQuatRK9btVector3S1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cm = fmul float %i.cc, -0.000000e+00
  %i.cn = fmul float %i.cj, 0.000000e+00
  %i.co = fsub float %i.cc, %i.cn
  %i.cp = fneg float %i.cg
  %i.cq = fadd float %i.ck, 1.000000e+00
  %i.cr = fmul float %i.cq, 2.000000e+00
  %i.cs = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cm, i64 1
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> zeroinitializer, <2 x float> %i.ct) ; 2 uses
  %i.cv = tail call noundef float @sqrtf(float noundef %i.cr) #13 ; 2 uses
  %i.cw = fdiv float 1.000000e+00, %i.cv          ; 3 uses
  %i.cx = extractelement <2 x float> %i.cu, i64 0
  %i.cy = fmul float %i.cx, %i.cw
  %i.cz = fmul float %i.co, %i.cw
  %i.da = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.db = insertelement <2 x float> %i.da, float %i.cv, i64 1
  %i.dc = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.cw, i64 0
  %i.dd = fmul <2 x float> %i.db, %i.dc
  %.sroa.022.0.vec.insert25.i = insertelement <2 x float> poison, float %i.cy, i64 0
  %.sroa.022.4.vec.insert27.i = insertelement <2 x float> %.sroa.022.0.vec.insert25.i, float %i.cz, i64 1
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

_Z15shortestArcQuatRK9btVector3S1_.exit:          ; preds = %bb.c, %bb.d
  %.sroa.022.0.i = phi <2 x float> [ %.sroa.022.4.vec.insert27.i, %bb.d ], [ <float 0.000000e+00, float -1.000000e+00>, %bb.c ] ; 6 uses
  %.sroa.528.0.i = phi <2 x float> [ %i.dd, %bb.d ], [ zeroinitializer, %bb.c ] ; 4 uses
  %.sroa.0129.0.vec.extract = extractelement <2 x float> %.sroa.022.0.i, i64 0 ; 2 uses
  %foldExtExtBinop215 = fmul <2 x float> %.sroa.022.0.i, %.sroa.022.0.i
  %i.de = extractelement <2 x float> %foldExtExtBinop215, i64 1
  %i.df = tail call float @llvm.fmuladd.f32(float %.sroa.0129.0.vec.extract, float %.sroa.0129.0.vec.extract, float %i.de)
  %.sroa.9.8.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 0 ; 2 uses
  %i.dg = tail call float @llvm.fmuladd.f32(float %.sroa.9.8.vec.extract, float %.sroa.9.8.vec.extract, float %i.df)
  %.sroa.9.12.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 1 ; 3 uses
  %i.dh = tail call noundef float @llvm.fmuladd.f32(float %.sroa.9.12.vec.extract, float %.sroa.9.12.vec.extract, float %i.dg)
  %i.di = tail call noundef float @llvm.sqrt.f32(float %i.dh)
  %i.dj = insertelement <2 x float> poison, float %i.ag, i64 0 ; 2 uses
  %i.dk = insertelement <2 x float> %i.dj, float %i.ad, i64 1
  %i.dl = insertelement <2 x float> %i.al, float %i.ag, i64 1
  %i.dm = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fdiv float 1.000000e+00, %i.di          ; 2 uses
  %i.do = shufflevector <2 x float> %.sroa.528.0.i, <2 x float> %.sroa.022.0.i, <2 x i32> <i32 0, i32 2>
  %i.dp = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dr = fmul <2 x float> %i.do, %i.dq           ; 3 uses
  %i.ds = shufflevector <2 x float> %.sroa.022.0.i, <2 x float> %.sroa.528.0.i, <2 x i32> <i32 1, i32 2>
  %i.dt = fmul <2 x float> %i.ds, %i.dq           ; 3 uses
  %i.du = fmul float %.sroa.9.12.vec.extract, %i.dn
  %i.dv = fneg <2 x float> %i.dq
  %i.dw = fmul <2 x float> %.sroa.022.0.i, %i.dv  ; 2 uses
  %i.dx = fneg <2 x float> %i.dt                  ; 2 uses
  %i.dy = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = fmul <2 x float> %i.dy, %i.dw
  %i.ea = insertelement <2 x float> poison, float %i.du, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = insertelement <2 x float> %i.bt, float %i.ae, i64 1 ; 2 uses
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.ec, <2 x float> %i.dz)
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.am, <2 x float> %i.ed)
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.ap, <2 x float> %i.ee) ; 4 uses
  %i.eg = shufflevector <2 x float> %i.dr, <2 x float> %i.dx, <2 x i32> <i32 3, i32 1>
  %i.eh = fmul <2 x float> %i.dk, %i.eg
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.dl, <2 x float> %i.eh)
  %i.ej = shufflevector <2 x float> %i.dt, <2 x float> %i.dw, <2 x i32> <i32 2, i32 0>
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.dm, <2 x float> %i.ei)
  %i.el = shufflevector <2 x float> %i.dr, <2 x float> %i.dt, <2 x i32> <i32 2, i32 0>
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.bu, <2 x float> %i.ek) ; 3 uses
  %foldExtExtBinop217 = fmul <2 x float> %i.ef, %i.ef
  %i.en = extractelement <2 x float> %foldExtExtBinop217, i64 1
  %i.eo = extractelement <2 x float> %i.ef, i64 0 ; 2 uses
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %i.en)
  %i.eq = extractelement <2 x float> %i.em, i64 0 ; 2 uses
  %i.er = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %i.ep)
  %i.es = extractelement <2 x float> %i.em, i64 1 ; 2 uses
  %i.et = tail call noundef float @llvm.fmuladd.f32(float %i.es, float %i.es, float %i.er)
  %i.eu = tail call noundef float @llvm.sqrt.f32(float %i.et)
  %i.ev = fdiv float 1.000000e+00, %i.eu
  %i.ew = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ey = fmul <2 x float> %i.ef, %i.ex           ; 7 uses
  %.sroa.12.12.vec.insert = fmul <2 x float> %i.em, %i.ex ; 7 uses
  %i.ez = extractelement <2 x float> %.sroa.12.12.vec.insert, i64 1 ; 5 uses
  %i.fa = fmul float %i.ez, %i.at
  %i.fb = extractelement <2 x float> %i.ey, i64 0 ; 2 uses
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.fb, float %i.fa)
  %i.fd = extractelement <2 x float> %.sroa.12.12.vec.insert, i64 0 ; 2 uses
  %i.fe = extractelement <2 x float> %i.aq, i64 0
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.fd, float %i.fc)
  %i.fg = extractelement <2 x float> %i.ey, i64 1 ; 2 uses
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.af, float %i.fg, float %i.ff) ; 6 uses
  %i.fi = fmul float %i.ad, %i.fb
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ez, float %i.fi)
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.fg, float %i.fj)
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.af, float %i.fd, float %i.fk) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.fm = shufflevector <2 x float> %.sroa.12.12.vec.insert, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fn = fmul <2 x float> %i.fm, %i.aq
  %i.fo = shufflevector <2 x float> %i.ey, <2 x float> %.sroa.12.12.vec.insert, <2 x i32> <i32 1, i32 2>
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.fo, <2 x float> %i.fn)
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ey, <2 x float> %i.fp)
  %i.fr = shufflevector <2 x float> %.sroa.12.12.vec.insert, <2 x float> %i.ey, <2 x i32> <i32 0, i32 2>
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.fr, <2 x float> %i.fq) ; 5 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 0 ; 2 uses
  %foldExtExtBinop219 = fmul <2 x float> %i.fs, %i.fs
  %i.fu = extractelement <2 x float> %foldExtExtBinop219, i64 0
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.fh, float %i.fu)
  %i.fw = extractelement <2 x float> %i.fs, i64 1 ; 3 uses
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fw, float %i.fv)
  %i.fy = tail call noundef float @llvm.fmuladd.f32(float %i.fl, float %i.fl, float %i.fx)
  %i.fz = fdiv float 2.000000e+00, %i.fy          ; 3 uses
  %i.ga = fmul float %i.fh, %i.fz                 ; 2 uses
  %i.gb = fmul float %i.ft, %i.fz                 ; 3 uses
  %i.gc = fmul float %i.fl, %i.ga                 ; 2 uses
  %i.gd = fmul float %i.fl, %i.gb                 ; 2 uses
  %i.ge = fmul float %i.fh, %i.ga                 ; 2 uses
  %i.gf = fmul float %i.fh, %i.gb                 ; 2 uses
  %i.gg = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.fz, i64 1
  %i.gi = fmul <2 x float> %i.fs, %i.gh           ; 4 uses
  %i.gj = extractelement <2 x float> %i.gi, i64 1 ; 3 uses
  %i.gk = fmul float %i.fh, %i.gj                 ; 2 uses
  %i.gl = fmul float %i.ft, %i.gj                 ; 2 uses
  %i.gm = fmul float %i.fw, %i.gj                 ; 2 uses
  %i.gn = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.fl, i64 1 ; 2 uses
  %i.gp = fadd <2 x float> %i.go, %i.gi
  %i.gq = fmul <2 x float> %i.go, %i.gi           ; 2 uses
  %i.gr = shufflevector <2 x float> %i.gp, <2 x float> %i.gq, <2 x i32> <i32 0, i32 3>
  %i.gs = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.gf, i64 1
  %i.gt = fsub <2 x float> %i.gs, %i.gr
  %i.gu = fadd float %i.gk, %i.gd
  %i.gv = extractelement <2 x float> %i.gq, i64 1
  %i.gw = fadd float %i.gf, %i.gv
  %i.gx = fadd float %i.ge, %i.gm
  %i.gy = fsub float 1.000000e+00, %i.gx
  %i.gz = fsub float %i.gl, %i.gc
  %i.ha = fsub float %i.gk, %i.gd
  %i.hb = fadd float %i.gl, %i.gc
  %i.hc = extractelement <2 x float> %i.gi, i64 0
  %i.hd = fadd float %i.ge, %i.hc
  %i.he = fsub float 1.000000e+00, %i.hd
  store <2 x float> %i.gt, ptr %6, align 8, !tbaa !29
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.gu, ptr %i.hf, align 8, !tbaa !29
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float 0.000000e+00, ptr %i.hg, align 4, !tbaa !29
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %i.gw, ptr %i.hh, align 8, !tbaa !29
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.gy, ptr %i.hi, align 4, !tbaa !29
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.gz, ptr %i.hj, align 8, !tbaa !29
  %i.hk = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float 0.000000e+00, ptr %i.hk, align 4, !tbaa !29
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float %i.ha, ptr %i.hl, align 8, !tbaa !29
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 36
  store float %i.hb, ptr %i.hm, align 4, !tbaa !29
  %i.hn = getelementptr inbounds nuw i8, ptr %6, i64 40
  store float %i.he, ptr %i.hn, align 8, !tbaa !29
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 44
  store float 0.000000e+00, ptr %i.ho, align 4, !tbaa !29
  %i.hp = call noundef zeroext i1 @_ZN30btGeneric6DofSpring2Constraint16matrixToEulerXYZERK11btMatrix3x3R9btVector3(ptr noundef nonnull align 4 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(16) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.hr = load <2 x float>, ptr %i.hq, align 4, !tbaa !29
  store <2 x float> %i.hr, ptr %i.a, align 8, !tbaa !29
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !41
  store float %i.hu, ptr %i.hs, align 8, !tbaa !29
  %i.hv = fcmp olt float %i.ez, -1.000000e+00
  %spec.store.select.i.i = select i1 %i.hv, float -1.000000e+00, float %i.ez ; 2 uses
  %i.hw = fcmp ogt float %spec.store.select.i.i, 1.000000e+00
  %spec.store.select1.i.i = select i1 %i.hw, float 1.000000e+00, float %spec.store.select.i.i
  %i.hx = call noundef float @acosf(float noundef %spec.store.select1.i.i) #13
  %i.hy = fmul float %i.hx, 2.000000e+00          ; 2 uses
  %i.hz = fcmp ogt float %i.hy, f0x40490FDB
  br i1 %i.hz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.ia = fneg <2 x float> %i.ey
  %i.ib = fneg <2 x float> %.sroa.12.12.vec.insert
  %i.ic = fneg float %i.ez                        ; 2 uses
  %i.id = fcmp olt float %i.ic, -1.000000e+00
  %spec.store.select.i.i84 = select i1 %i.id, float -1.000000e+00, float %i.ic ; 2 uses
  %i.ie = fcmp ogt float %spec.store.select.i.i84, 1.000000e+00
  %spec.store.select1.i.i85 = select i1 %i.ie, float 1.000000e+00, float %spec.store.select.i.i84
  %i.if = call noundef float @acosf(float noundef %spec.store.select1.i.i85) #13
  %i.ig = fmul float %i.if, 2.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_Z15shortestArcQuatRK9btVector3S1_.exit
  %.sroa.695.0 = phi <2 x float> [ %i.ib, %bb.e ], [ %.sroa.12.12.vec.insert, %_Z15shortestArcQuatRK9btVector3S1_.exit ]
  %.sroa.094.0 = phi <2 x float> [ %i.ia, %bb.e ], [ %i.ey, %_Z15shortestArcQuatRK9btVector3S1_.exit ] ; 2 uses
  %.050 = phi float [ %i.ig, %bb.e ], [ %i.hy, %_Z15shortestArcQuatRK9btVector3S1_.exit ] ; 3 uses
  %.sroa.094.0.vec.extract = extractelement <2 x float> %.sroa.094.0, i64 0 ; 4 uses
  %.sroa.094.4.vec.extract = extractelement <2 x float> %.sroa.094.0, i64 1 ; 4 uses
  %.sroa.695.8.vec.extract = extractelement <2 x float> %.sroa.695.0, i64 0 ; 4 uses
  %i.ih = fcmp ogt float %.050, f0x34000000
  br i1 %i.ih, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ii = fmul float %.sroa.094.4.vec.extract, %.sroa.094.4.vec.extract
  %i.ij = call float @llvm.fmuladd.f32(float %.sroa.094.0.vec.extract, float %.sroa.094.0.vec.extract, float %i.ii)
  %i.ik = call noundef float @llvm.fmuladd.f32(float %.sroa.695.8.vec.extract, float %.sroa.695.8.vec.extract, float %i.ij)
  %i.il = call noundef float @llvm.sqrt.f32(float %i.ik)
  %i.im = fdiv float 1.000000e+00, %i.il          ; 3 uses
  %i.in = fmul float %.sroa.094.0.vec.extract, %i.im
  %i.io = fmul float %.sroa.094.4.vec.extract, %i.im
  %i.ip = fmul float %.sroa.695.8.vec.extract, %i.im
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0 = phi float [ %i.ip, %bb.g ], [ %.sroa.695.8.vec.extract, %bb.f ]
  %.sroa.6.0 = phi float [ %i.io, %bb.g ], [ %.sroa.094.4.vec.extract, %bb.f ]
  %.sroa.0.0 = phi float [ %i.in, %bb.g ], [ %.sroa.094.0.vec.extract, %bb.f ]
  %i.iq = fmul float %.sroa.6.0, 0.000000e+00
  %i.ir = call float @llvm.fmuladd.f32(float %.sroa.0.0, float 0.000000e+00, float %i.iq)
  %i.is = fadd float %.sroa.10.0, %i.ir
  %i.it = fcmp olt float %i.is, 0.000000e+00
  %i.iu = fneg float %.050
  %.1 = select i1 %i.it, float %i.iu, float %.050
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.1, ptr %i.iv, align 4, !tbaa !29
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !44
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.iz = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ja = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.jb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.jc = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.jd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.jg = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ji = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.i

._crit_edge:                                      ; preds = %bb.w, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.x

bb.i:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 4 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !29 ; 5 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.js = load float, ptr %i.jr, align 4, !tbaa !29 ; 5 uses
  %i.jt = fneg float %i.jq                        ; 2 uses
  %i.ju = fcmp ogt float %i.js, %i.jt
  %i.jv = fcmp olt float %i.js, %i.jq
  %or.cond = and i1 %i.ju, %i.jv
  br i1 %or.cond, label %.sink.split, label %condstore.split

condstore.split:                                  ; preds = %bb.i
  %i.jw = fcmp ogt float %i.js, %i.jq             ; 2 uses
  %i.jx = fsub float %i.js, %i.jq
  %i.jy = select i1 %i.jw, float %i.jx, float %i.js ; 3 uses
  %i.jz = fcmp olt float %i.jy, %i.jt             ; 2 uses
  %i.ka = fadd float %i.jq, %i.jy
  %simplifycfg.merge = select i1 %i.jz, float %i.ka, float %i.jy
  %i.kb = or i1 %i.jw, %i.jz
  br i1 %i.kb, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %condstore.split, %bb.i
  %simplifycfg.merge.sink = phi float [ 0.000000e+00, %bb.i ], [ %simplifycfg.merge, %condstore.split ]
  %.048.ph = phi float [ 0.000000e+00, %bb.i ], [ 1.000000e+00, %condstore.split ]
  store float %simplifycfg.merge.sink, ptr %i.jr, align 4, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %condstore.split
  %.048 = phi float [ 1.000000e+00, %condstore.split ], [ %.048.ph, %.sink.split ]
  %i.kc = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.kd = load i32, ptr %i.o, align 8, !tbaa !43
  %i.ke = call noundef ptr @_ZN11btMultiBody19getJointVelMultiDofEi(ptr noundef nonnull align 8 dereferenceable(640) %i.kc, i32 noundef %i.kd) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store float 1.000000e+00, ptr %7, align 4, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.iz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ja, align 4, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jb, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.jc, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.kf = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.kg = load i32, ptr %i.o, align 8, !tbaa !43
  call void @_ZNK11btMultiBody17localFrameToWorldEiRK11btMatrix3x3(ptr dead_on_unwind nonnull writable sret(%class.btMatrix3x3) align 4 %8, ptr noundef nonnull align 8 dereferenceable(640) %i.kf, i32 noundef %i.kg, ptr noundef nonnull align 4 dereferenceable(48) %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %7, ptr noundef nonnull align 4 dereferenceable(48) %8, i64 16, i1 false), !tbaa.struct !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.je, ptr noundef nonnull align 4 dereferenceable(16) %i.jd, i64 16, i1 false), !tbaa.struct !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jg, ptr noundef nonnull align 4 dereferenceable(16) %i.jf, i64 16, i1 false), !tbaa.struct !39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.kh = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.ki = load i32, ptr %i.o, align 8, !tbaa !43
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 192
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !14
  %i.kl = sext i32 %i.ki to i64
  %i.km = getelementptr inbounds [688 x i8], ptr %i.kk, i64 %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 564
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !74
  %cond = icmp eq i32 %i.ko, 2
  br i1 %cond, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.kp = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.kq = urem i32 %i.kp, 3
  %i.kr = zext nneg i32 %i.kq to i64              ; 7 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.kr
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.kr
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.kr
  %i.kv = load float, ptr %i.ks, align 4, !tbaa !29
  %.sroa.0.0.vec.insert.i86 = insertelement <2 x float> poison, float %i.kv, i64 0
  %i.kw = load float, ptr %i.kt, align 4, !tbaa !29
  %.sroa.0.4.vec.insert.i87 = insertelement <2 x float> %.sroa.0.0.vec.insert.i86, float %i.kw, i64 1
  %i.kx = load float, ptr %i.ku, align 4, !tbaa !29
  %.sroa.3.12.vec.insert.i88 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kx, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i87, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i88, ptr %i.ji, align 8
  %i.ky = load i8, ptr %i.jh, align 8, !tbaa !36, !range !75, !noundef !76
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.la = load float, ptr %i.jj, align 4, !tbaa !29
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.kr
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !29
  %i.ld = fmul float %i.la, %i.lc
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.kr
  %i.lf = load float, ptr %i.le, align 4, !tbaa !29
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.kr
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !29
  %i.li = fmul float %i.lf, %i.lh
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.kr
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.lk = phi float [ %i.li, %bb.m ], [ %i.ld, %bb.l ] ; 3 uses
  %.in54 = phi ptr [ %i.lj, %bb.m ], [ %i.j, %bb.l ]
  %i.ll = load float, ptr %.in54, align 4, !tbaa !29 ; 2 uses
  %i.lm = fcmp ogt float %i.lk, 0.000000e+00      ; 2 uses
  %i.ln = fneg float %i.ll
  %.047 = select i1 %i.lm, float 0.000000e+00, float %i.ll
  %.0 = select i1 %i.lm, float %i.ln, float 0.000000e+00
  %i.lo = call noundef float @llvm.fabs.f32(float %i.lk)
  %i.lp = fcmp ogt float %i.lo, f0x34000000
  br i1 %i.lp, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.lq = load i32, ptr %i.jl, align 4, !tbaa !80 ; 8 uses
  %i.lr = load i32, ptr %i.jm, align 8, !tbaa !81
  %i.ls = icmp eq i32 %i.lq, %i.lr
  br i1 %i.ls, label %bb.p, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

bb.p:                                             ; preds = %bb.o
  %.not.i.i = icmp eq i32 %i.lq, 0
  %i.lt = shl nsw i32 %i.lq, 1
  %i.lu = select i1 %.not.i.i, i32 1, i32 %i.lt   ; 4 uses
  %i.lv = icmp slt i32 %i.lq, %i.lu
  br i1 %i.lv, label %bb.q, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.lw = sext i32 %i.lu to i64
  %i.lx = mul nsw i64 %i.lw, 224
  %i.ly = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.lx, i32 noundef 16)
  %.pre.i = load i32, ptr %i.jl, align 4, !tbaa !80
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i: ; preds = %bb.r, %bb.q
  %i.lz = phi i32 [ %.pre.i, %bb.r ], [ %i.lq, %bb.q ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.ly, %bb.r ], [ null, %bb.q ] ; 4 uses
  %i.ma = icmp sgt i32 %i.lz, 0
  br i1 %i.ma, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.lz to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.mb = icmp eq i32 %i.lz, 1
  br i1 %i.mb, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.s ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.s ]
  %i.mc = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.md = load ptr, ptr %i.jn, align 8, !tbaa !82
  %i.me = getelementptr inbounds nuw [224 x i8], ptr %i.md, i64 %indvars.iv.i.i.i
end_hunk_0
begin_hunk_1_@_ZN30btMultiBodySphericalJointLimit20createConstraintRowsER20btAlignedObjectArrayI27btMultiBodySolverConstraintER23btMultiBodyJacobianDataRK19btContactSolverInfo:bb.a
  br i1 %i.my, label %bb.i, label %._crit_edge, !llvm.loop !73

bb.x:                                             ; preds = %.thread, %bb.b, %._crit_edge
  ret void
}

declare noundef ptr @_ZN11btMultiBody19getJointPosMultiDofEi(ptr noundef nonnull align 8 dereferenceable(640), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN30btGeneric6DofSpring2Constraint16matrixToEulerXYZERK11btMatrix3x3R9btVector3(ptr noundef nonnull align 4 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZN11btMultiBody19getJointVelMultiDofEi(ptr noundef nonnull align 8 dereferenceable(640), i32 noundef) local_unnamed_addr #1

declare void @_ZNK11btMultiBody17localFrameToWorldEiRK11btMatrix3x3(ptr dead_on_unwind writable sret(%class.btMatrix3x3) align 4, ptr noundef nonnull align 8 dereferenceable(640), i32 noundef, ptr noundef nonnull align 4 dereferenceable(48)) local_unnamed_addr #1

declare noundef float @_ZN21btMultiBodyConstraint23fillMultiBodyConstraintER27btMultiBodySolverConstraintR23btMultiBodyJacobianDataPfS4_RK9btVector3S7_S7_S7_fRK19btContactSolverInfoffbfbfff(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(220), ptr noundef nonnull align 8 dereferenceable(204), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef nonnull align 4 dereferenceable(128), float noundef, float noundef, i1 noundef zeroext, float noundef, i1 noundef zeroext, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btMultiBodySphericalJointLimit9debugDrawEP12btIDebugDraw(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1) unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store float 1.000000e+00, ptr %2, align 4, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.k = tail call { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640) %i.g, i32 noundef %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j) ; 2 uses
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.k, 0
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.l, ptr %i.n, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store <2 x float> %i.m, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !38
  %i.o = load ptr, ptr %1, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef 1.000000e-01)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

declare { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21btMultiBodyConstraint11setFrameInBERK11btMatrix3x3(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21btMultiBodyConstraint11setPivotInBERK9btVector3(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21btMultiBodyConstraint12setGearRatioEf(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21btMultiBodyConstraint14setGearAuxLinkEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21btMultiBodyConstraint25setRelativePositionTargetEf(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN30btMultiBodySphericalJointLimit6setErpEf(ptr noundef nonnull align 8 dereferenceable(232) %0, float noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %1, ptr %i.a, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN30btMultiBodySphericalJointLimit17setVelocityTargetERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.c = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %2, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.e, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN30btMultiBodySphericalJointLimit25setVelocityTargetMultiDofERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.c, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN30btMultiBodySphericalJointLimit17setPositionTargetERK12btQuaternionf(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.c = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %2, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.e, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN30btMultiBodySphericalJointLimit25setPositionTargetMultiDofERK12btQuaternionRK9btVector3(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.c, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK30btMultiBodySphericalJointLimit6getErpEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load float, ptr %i.a, align 4, !tbaa !65
  ret float %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN30btMultiBodySphericalJointLimit11setRhsClampEf(ptr noundef nonnull align 8 dereferenceable(232) %0, float noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store float %1, ptr %i.a, align 8, !tbaa !93
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

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
!9 = !{!"_ZTS18btAlignedAllocatorI15btMultibodyLinkLj16EE"}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15btMultibodyLink", !10, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"_ZTS20btAlignedObjectArrayI15btMultibodyLinkE", !9, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !12, i64 24}
!14 = !{!13, !11, i64 16}
!15 = !{!"float", !5, i64 0}
!16 = !{!"_ZTS9btVector3", !5, i64 0}
!17 = !{!"_ZTS10btQuadWord", !5, i64 0}
!18 = !{!"_ZTS12btQuaternion", !17, i64 0}
!19 = !{!"_ZTS21btSpatialMotionVector", !16, i64 0, !16, i64 16}
!20 = !{!"p1 _ZTS23btMultiBodyLinkCollider", !10, i64 0}
!21 = !{!"_ZTSN15btMultibodyLink22eFeatherstoneJointTypeE", !5, i64 0}
!22 = !{!"p1 _ZTS24btMultiBodyJointFeedback", !10, i64 0}
!23 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!24 = !{!"_ZTS11btTransform", !23, i64 0, !16, i64 48}
!25 = !{!"p1 omnipotent char", !10, i64 0}
!26 = !{!"_ZTS15btMultibodyLink", !15, i64 0, !16, i64 4, !6, i64 20, !18, i64 24, !16, i64 40, !16, i64 56, !19, i64 72, !19, i64 104, !5, i64 136, !6, i64 328, !6, i64 332, !18, i64 336, !16, i64 352, !18, i64 368, !16, i64 384, !16, i64 400, !16, i64 416, !16, i64 432, !16, i64 448, !5, i64 464, !5, i64 492, !5, i64 520, !20, i64 544, !6, i64 552, !6, i64 556, !6, i64 560, !21, i64 564, !22, i64 568, !24, i64 576, !25, i64 640, !25, i64 648, !10, i64 656, !15, i64 664, !15, i64 668, !15, i64 672, !15, i64 676, !15, i64 680, !15, i64 684}
!27 = !{!"vtable pointer", !4, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!15, !15, i64 0}
!30 = !{!"p1 _ZTS11btMultiBody", !10, i64 0}
!31 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!32 = !{!"p1 float", !10, i64 0}
!33 = !{!"_ZTS20btAlignedObjectArrayIfE", !31, i64 0, !6, i64 4, !6, i64 8, !32, i64 16, !12, i64 24}
!34 = !{!"_ZTS21btMultiBodyConstraint", !30, i64 8, !30, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !12, i64 52, !6, i64 56, !15, i64 60, !33, i64 64}
!35 = !{!"_ZTS30btMultiBodySphericalJointLimit", !34, i64 0, !16, i64 96, !18, i64 112, !12, i64 128, !16, i64 132, !16, i64 148, !15, i64 164, !15, i64 168, !16, i64 172, !16, i64 188, !16, i64 204, !15, i64 220, !15, i64 224, !15, i64 228}
!36 = !{!35, !12, i64 128}
!37 = !{!34, !30, i64 8}
!38 = !{!5, !5, i64 0}
!39 = !{i64 0, i64 16, !38}
!40 = !{!34, !30, i64 16}
!41 = !{!35, !15, i64 228}
!42 = !{!34, !15, i64 60}
!43 = !{!34, !6, i64 24}
!44 = !{!34, !6, i64 36}
!45 = !{!34, !6, i64 44}
!46 = !{!34, !6, i64 56}
!47 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!48 = !{!"p1 _ZTS9btVector3", !10, i64 0}
!49 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !47, i64 0, !6, i64 4, !6, i64 8, !48, i64 16, !12, i64 24}
!50 = !{!"_ZTS18btAlignedAllocatorI11btMatrix3x3Lj16EE"}
!51 = !{!"p1 _ZTS11btMatrix3x3", !10, i64 0}
!52 = !{!"_ZTS20btAlignedObjectArrayI11btMatrix3x3E", !50, i64 0, !6, i64 4, !6, i64 8, !51, i64 16, !12, i64 24}
!53 = !{!"_ZTS11btMultiBody", !20, i64 8, !25, i64 16, !16, i64 24, !16, i64 40, !18, i64 56, !18, i64 72, !15, i64 88, !16, i64 92, !16, i64 108, !16, i64 124, !16, i64 140, !16, i64 156, !13, i64 176, !33, i64 208, !33, i64 240, !33, i64 272, !49, i64 304, !52, i64 336, !23, i64 368, !23, i64 416, !23, i64 464, !23, i64 512, !12, i64 560, !12, i64 561, !12, i64 562, !12, i64 563, !12, i64 564, !15, i64 568, !15, i64 572, !15, i64 576, !10, i64 584, !6, i64 592, !6, i64 596, !6, i64 600, !15, i64 604, !15, i64 608, !12, i64 612, !15, i64 616, !15, i64 620, !12, i64 624, !12, i64 625, !6, i64 628, !6, i64 632, !12, i64 636, !12, i64 637, !12, i64 638, !12, i64 639}
!54 = !{!53, !20, i64 8}
!55 = !{!26, !20, i64 544}
!56 = !{!"p1 _ZTS17btBroadphaseProxy", !10, i64 0}
!57 = !{!"p1 _ZTS16btCollisionShape", !10, i64 0}
!58 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!59 = !{!"any p2 pointer", !10, i64 0}
!60 = !{!"p2 _ZTS17btCollisionObject", !59, i64 0}
!61 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !58, i64 0, !6, i64 4, !6, i64 8, !60, i64 16, !12, i64 24}
!62 = !{!"_ZTS17btCollisionObject", !24, i64 8, !24, i64 72, !16, i64 136, !16, i64 152, !16, i64 168, !6, i64 184, !15, i64 188, !56, i64 192, !57, i64 200, !10, i64 208, !57, i64 216, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !15, i64 244, !15, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !6, i64 272, !10, i64 280, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 300, !15, i64 304, !15, i64 308, !6, i64 312, !61, i64 320, !6, i64 352, !16, i64 356}
!63 = !{!62, !6, i64 228}
!64 = !{!34, !6, i64 28}
!65 = !{!35, !15, i64 164}
!66 = !{!26, !6, i64 20}
!67 = !{!35, !15, i64 220}
!68 = !{!35, !15, i64 224}
!69 = !{!26, !6, i64 328}
!70 = !{!33, !32, i64 16}
!71 = !{!34, !6, i64 40}
!72 = distinct !{!72, !88}
!73 = distinct !{!73, !88}
!74 = !{!26, !21, i64 564}
!75 = !{i8 0, i8 2}
!76 = !{}
!77 = !{!"_ZTS18btAlignedAllocatorI27btMultiBodySolverConstraintLj16EE"}
!78 = !{!"p1 _ZTS27btMultiBodySolverConstraint", !10, i64 0}
!79 = !{!"_ZTS20btAlignedObjectArrayI27btMultiBodySolverConstraintE", !77, i64 0, !6, i64 4, !6, i64 8, !78, i64 16, !12, i64 24}
!80 = !{!79, !6, i64 4}
!81 = !{!79, !6, i64 8}
!82 = !{!79, !78, i64 16}
!83 = !{!6, !6, i64 0}
!84 = !{!30, !30, i64 0}
!85 = !{!"p1 _ZTS21btMultiBodyConstraint", !10, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{i64 0, i64 4, !83, i64 4, i64 4, !83, i64 8, i64 4, !83, i64 12, i64 4, !83, i64 16, i64 16, !38, i64 32, i64 16, !38, i64 48, i64 16, !38, i64 64, i64 16, !38, i64 80, i64 16, !38, i64 96, i64 16, !38, i64 112, i64 4, !29, i64 116, i64 4, !29, i64 120, i64 4, !29, i64 124, i64 4, !29, i64 128, i64 4, !29, i64 132, i64 4, !29, i64 136, i64 4, !29, i64 140, i64 4, !29, i64 144, i64 4, !29, i64 152, i64 8, !38, i64 160, i64 4, !83, i64 164, i64 4, !83, i64 168, i64 4, !83, i64 176, i64 8, !84, i64 184, i64 4, !83, i64 188, i64 4, !83, i64 192, i64 8, !84, i64 200, i64 4, !83, i64 208, i64 8, !86, i64 216, i64 4, !83}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!79, !12, i64 24}
!90 = !{!"_ZTS27btMultiBodySolverConstraint", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !16, i64 16, !16, i64 32, !16, i64 48, !16, i64 64, !16, i64 80, !16, i64 96, !15, i64 112, !15, i64 116, !15, i64 120, !15, i64 124, !15, i64 128, !15, i64 132, !15, i64 136, !15, i64 140, !15, i64 144, !5, i64 152, !6, i64 160, !6, i64 164, !6, i64 168, !30, i64 176, !6, i64 184, !6, i64 188, !30, i64 192, !6, i64 200, !85, i64 208, !6, i64 216}
!91 = !{!90, !85, i64 208}
!92 = !{!90, !6, i64 216}
!93 = !{!35, !15, i64 168}
end_hunk_1
