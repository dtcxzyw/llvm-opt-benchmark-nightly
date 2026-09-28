Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodySphericalJointLimit?download=true
inline.NumInlined: 275
inline.NumDeleted: 77
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN30btMultiBodySphericalJointLimit16finalizeMultiDofEv:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 328
  %i.j = load i32, ptr %i.i, align 8, !tbaa !69
  %i.k = add nsw i32 %i.j, 6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !44   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70   ; 2 uses
  %i.q = sext i32 %i.m to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.q
  %i.s = zext i32 %i.k to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  store float 1.000000e+00, ptr %i.t, align 4, !tbaa !29
  %i.u = load i32, ptr %i.n, align 4, !tbaa !45   ; 2 uses
  %i.v = add nsw i32 %i.u, %i.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !71
  %i.y = add nsw i32 %i.v, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.s
  store float -1.000000e+00, ptr %i.ab, align 4, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.u, ptr %i.ac, align 8, !tbaa !46
  ret void
}

declare void @_ZN21btMultiBodyConstraint25allocateJacobiansMultiDofEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN30btMultiBodySphericalJointLimitD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #4 align 2 {
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
  %.pre204 = load i32, ptr %i.d, align 4, !tbaa !45
  %i.i = icmp eq i32 %.pre, %.pre204
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
  %i.al = fadd float %i.ak, %i.ag
  %i.am = insertelement <2 x float> poison, float %i.af, i64 0 ; 2 uses
  %i.an = insertelement <2 x float> %i.am, float %i.ad, i64 1 ; 2 uses
  %i.ao = fneg <2 x float> %i.an                  ; 5 uses
  %i.ap = insertelement <2 x float> poison, float %i.ae, i64 0 ; 2 uses
  %i.aq = insertelement <2 x float> %i.ap, float %i.af, i64 1 ; 2 uses
  %i.ar = fneg <2 x float> %i.aq                  ; 4 uses
  %i.as = extractelement <2 x float> %i.ao, i64 0
  %i.at = fmul float %i.ae, -0.000000e+00
  %i.au = extractelement <2 x float> %i.ao, i64 1 ; 3 uses
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float 0.000000e+00, float %i.at)
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.ag, float 0.000000e+00, float %i.ae)
  %i.ax = shufflevector <2 x float> %i.ao, <2 x float> %i.ar, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.al, i64 1
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> zeroinitializer, <2 x float> %i.az) ; 4 uses
  %10 = fsub float %i.av, %i.af                   ; 2 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 0
  %i.bc = fmul float %i.ag, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %10, float %i.au, float %i.bc)
  %i.be = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.as, float %i.bd)
  %i.bf = extractelement <2 x float> %i.ba, i64 1 ; 2 uses
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.ae, float %i.be) ; 3 uses
  %i.bh = fmul float %i.ag, %i.aj
  %i.bi = fmul float %i.ag, %i.bf
  %i.bj = insertelement <2 x float> poison, float %10, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bh, i64 1
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.ax, <2 x float> %i.bm)
  %i.bo = shufflevector <2 x float> %i.ar, <2 x float> %i.ao, <2 x i32> <i32 0, i32 3>
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bo, <2 x float> %i.bn)
  %i.bq = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.br = insertelement <2 x float> %i.bq, float %i.aj, i64 0
  %i.bs = insertelement <2 x float> poison, float %i.ad, i64 0 ; 2 uses
  %i.bt = insertelement <2 x float> %i.bs, float %i.af, i64 1 ; 2 uses
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bt, <2 x float> %i.bp) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bu, %i.bu
  %i.bv = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bv)
  %i.bx = extractelement <2 x float> %i.bu, i64 0 ; 2 uses
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bw)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.by)
  %i.bz = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ca = fmul float %i.bg, %i.bz                 ; 3 uses
  %i.cb = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.bu, %i.cc           ; 3 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 1 ; 2 uses
  %i.cf = fmul float %i.ce, 0.000000e+00
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.ca, float 0.000000e+00, float %i.cf)
  %i.ch = extractelement <2 x float> %i.cd, i64 0 ; 2 uses
  %i.ci = fadd float %i.ch, %i.cg                 ; 2 uses
  %i.cj = fcmp olt float %i.ci, f0xBF7FFFFE
  br i1 %i.cj, label %_Z15shortestArcQuatRK9btVector3S1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ck = fmul float %i.ca, -0.000000e+00
  %i.cl = fmul float %i.ch, 0.000000e+00
  %i.cm = fsub float %i.ca, %i.cl
  %i.cn = fneg float %i.ce
  %i.co = fadd float %i.ci, 1.000000e+00
  %i.cp = fmul float %i.co, 2.000000e+00
  %i.cq = tail call noundef float @sqrtf(float noundef %i.cp) #13 ; 2 uses
  %i.cr = fdiv float 1.000000e+00, %i.cq          ; 3 uses
  %i.cs = fmul float %i.cm, %i.cr
  %i.ct = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.ck, i64 1
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.cu) ; 2 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0
  %i.cx = fmul float %i.cw, %i.cr
  %i.cy = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cz = insertelement <2 x float> %i.cy, float %i.cq, i64 1
  %i.da = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.cr, i64 0
  %i.db = fmul <2 x float> %i.cz, %i.da
  %.sroa.022.0.vec.insert25.i = insertelement <2 x float> poison, float %i.cx, i64 0
  %.sroa.022.4.vec.insert27.i = insertelement <2 x float> %.sroa.022.0.vec.insert25.i, float %i.cs, i64 1
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

_Z15shortestArcQuatRK9btVector3S1_.exit:          ; preds = %bb.c, %bb.d
  %.sroa.022.0.i = phi <2 x float> [ %.sroa.022.4.vec.insert27.i, %bb.d ], [ <float 0.000000e+00, float -1.000000e+00>, %bb.c ] ; 6 uses
  %.sroa.528.0.i = phi <2 x float> [ %i.db, %bb.d ], [ zeroinitializer, %bb.c ] ; 4 uses
  %.sroa.0133.0.vec.extract = extractelement <2 x float> %.sroa.022.0.i, i64 0 ; 2 uses
  %foldExtExtBinop219 = fmul <2 x float> %.sroa.022.0.i, %.sroa.022.0.i
  %i.dc = extractelement <2 x float> %foldExtExtBinop219, i64 1
  %i.dd = tail call float @llvm.fmuladd.f32(float %.sroa.0133.0.vec.extract, float %.sroa.0133.0.vec.extract, float %i.dc)
  %.sroa.9.8.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 0 ; 2 uses
  %i.de = tail call float @llvm.fmuladd.f32(float %.sroa.9.8.vec.extract, float %.sroa.9.8.vec.extract, float %i.dd)
  %.sroa.9.12.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 1 ; 3 uses
  %i.df = tail call noundef float @llvm.fmuladd.f32(float %.sroa.9.12.vec.extract, float %.sroa.9.12.vec.extract, float %i.de)
  %sqrt.i.i58 = tail call noundef float @llvm.sqrt.f32(float %i.df)
  %i.dg = insertelement <2 x float> poison, float %i.ag, i64 0 ; 2 uses
  %i.dh = insertelement <2 x float> %i.dg, float %i.ad, i64 1
  %i.di = insertelement <2 x float> %i.am, float %i.ag, i64 1
  %i.dj = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fdiv float 1.000000e+00, %sqrt.i.i58    ; 2 uses
  %i.dl = shufflevector <2 x float> %.sroa.528.0.i, <2 x float> %.sroa.022.0.i, <2 x i32> <i32 0, i32 2>
  %i.dm = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.do = fmul <2 x float> %i.dl, %i.dn           ; 3 uses
  %i.dp = shufflevector <2 x float> %.sroa.022.0.i, <2 x float> %.sroa.528.0.i, <2 x i32> <i32 1, i32 2>
  %i.dq = fmul <2 x float> %i.dp, %i.dn           ; 3 uses
  %11 = fmul float %.sroa.9.12.vec.extract, %i.dk
  %i.dr = fneg <2 x float> %i.dn
  %i.ds = fmul <2 x float> %.sroa.022.0.i, %i.dr  ; 2 uses
  %i.dt = fneg <2 x float> %i.dq                  ; 2 uses
  %i.du = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dv = fmul <2 x float> %i.du, %i.ds
  %i.dw = insertelement <2 x float> poison, float %11, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dy = insertelement <2 x float> %i.bs, float %i.ae, i64 1 ; 2 uses
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.dy, <2 x float> %i.dv)
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.an, <2 x float> %i.dz)
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.aq, <2 x float> %i.ea) ; 4 uses
  %i.ec = shufflevector <2 x float> %i.do, <2 x float> %i.dt, <2 x i32> <i32 3, i32 1>
  %i.ed = fmul <2 x float> %i.dh, %i.ec
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.di, <2 x float> %i.ed)
  %i.ef = shufflevector <2 x float> %i.dq, <2 x float> %i.ds, <2 x i32> <i32 2, i32 0>
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.dj, <2 x float> %i.ee)
  %i.eh = shufflevector <2 x float> %i.do, <2 x float> %i.dq, <2 x i32> <i32 2, i32 0>
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.bt, <2 x float> %i.eg) ; 3 uses
  %foldExtExtBinop221 = fmul <2 x float> %i.eb, %i.eb
  %i.ej = extractelement <2 x float> %foldExtExtBinop221, i64 1
  %i.ek = extractelement <2 x float> %i.eb, i64 0 ; 2 uses
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.ej)
  %i.em = extractelement <2 x float> %i.ei, i64 0 ; 2 uses
  %i.en = tail call float @llvm.fmuladd.f32(float %i.em, float %i.em, float %i.el)
  %i.eo = extractelement <2 x float> %i.ei, i64 1 ; 2 uses
  %i.ep = tail call noundef float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %i.en)
  %sqrt.i.i68 = tail call noundef float @llvm.sqrt.f32(float %i.ep)
  %i.eq = fdiv float 1.000000e+00, %sqrt.i.i68
  %i.er = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.et = fmul <2 x float> %i.eb, %i.es           ; 7 uses
  %.sroa.12.12.vec.insert = fmul <2 x float> %i.ei, %i.es ; 7 uses
  %i.eu = extractelement <2 x float> %.sroa.12.12.vec.insert, i64 1 ; 5 uses
  %i.ev = fmul float %i.eu, %i.au
  %i.ew = extractelement <2 x float> %i.et, i64 0 ; 2 uses
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ew, float %i.ev)
  %i.ey = extractelement <2 x float> %.sroa.12.12.vec.insert, i64 0 ; 2 uses
  %i.ez = extractelement <2 x float> %i.ar, i64 0
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.ey, float %i.ex)
  %i.fb = extractelement <2 x float> %i.et, i64 1 ; 2 uses
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.af, float %i.fb, float %i.fa) ; 6 uses
  %i.fd = fmul float %i.ad, %i.ew
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.eu, float %i.fd)
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.fb, float %i.fe)
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ey, float %i.ff) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.fh = shufflevector <2 x float> %.sroa.12.12.vec.insert, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fi = fmul <2 x float> %i.fh, %i.ar
  %i.fj = shufflevector <2 x float> %i.et, <2 x float> %.sroa.12.12.vec.insert, <2 x i32> <i32 1, i32 2>
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.fj, <2 x float> %i.fi)
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.et, <2 x float> %i.fk)
  %i.fm = shufflevector <2 x float> %.sroa.12.12.vec.insert, <2 x float> %i.et, <2 x i32> <i32 0, i32 2>
  %i.fn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.fm, <2 x float> %i.fl) ; 5 uses
  %i.fo = extractelement <2 x float> %i.fn, i64 0 ; 2 uses
  %foldExtExtBinop223 = fmul <2 x float> %i.fn, %i.fn
  %i.fp = extractelement <2 x float> %foldExtExtBinop223, i64 0
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.fc, float %i.fp)
  %i.fr = extractelement <2 x float> %i.fn, i64 1 ; 3 uses
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.fr, float %i.fq)
  %i.ft = tail call noundef float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.fs)
  %i.fu = fdiv float 2.000000e+00, %i.ft          ; 3 uses
  %i.fv = fmul float %i.fc, %i.fu                 ; 2 uses
  %i.fw = fmul float %i.fo, %i.fu                 ; 3 uses
  %i.fx = fmul float %i.fg, %i.fv                 ; 2 uses
  %i.fy = fmul float %i.fg, %i.fw                 ; 2 uses
  %i.fz = fmul float %i.fc, %i.fv                 ; 2 uses
  %i.ga = fmul float %i.fc, %i.fw                 ; 2 uses
  %i.gb = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.gc = insertelement <2 x float> %i.gb, float %i.fu, i64 1
  %i.gd = fmul <2 x float> %i.fn, %i.gc           ; 4 uses
  %i.ge = extractelement <2 x float> %i.gd, i64 1 ; 3 uses
  %i.gf = fmul float %i.fc, %i.ge                 ; 2 uses
  %i.gg = fmul float %i.fo, %i.ge                 ; 2 uses
  %i.gh = fmul float %i.fr, %i.ge                 ; 2 uses
  %i.gi = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.fg, i64 1 ; 2 uses
  %i.gk = fadd <2 x float> %i.gj, %i.gd
  %i.gl = fmul <2 x float> %i.gj, %i.gd           ; 2 uses
  %i.gm = shufflevector <2 x float> %i.gk, <2 x float> %i.gl, <2 x i32> <i32 0, i32 3>
  %i.gn = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.ga, i64 1
  %i.go = fsub <2 x float> %i.gn, %i.gm
  %i.gp = fadd float %i.gf, %i.fy
  %i.gq = extractelement <2 x float> %i.gl, i64 1
  %i.gr = fadd float %i.ga, %i.gq
  %i.gs = fadd float %i.fz, %i.gh
  %i.gt = fsub float 1.000000e+00, %i.gs
  %i.gu = fsub float %i.gg, %i.fx
  %i.gv = fsub float %i.gf, %i.fy
  %i.gw = fadd float %i.gg, %i.fx
  %i.gx = extractelement <2 x float> %i.gd, i64 0
  %i.gy = fadd float %i.fz, %i.gx
  %i.gz = fsub float 1.000000e+00, %i.gy
  store <2 x float> %i.go, ptr %6, align 8, !tbaa !29
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.gp, ptr %i.ha, align 8, !tbaa !29
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float 0.000000e+00, ptr %i.hb, align 4, !tbaa !29
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %i.gr, ptr %i.hc, align 8, !tbaa !29
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.gt, ptr %i.hd, align 4, !tbaa !29
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.gu, ptr %i.he, align 8, !tbaa !29
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float 0.000000e+00, ptr %i.hf, align 4, !tbaa !29
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float %i.gv, ptr %i.hg, align 8, !tbaa !29
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 36
  store float %i.gw, ptr %i.hh, align 4, !tbaa !29
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 40
  store float %i.gz, ptr %i.hi, align 8, !tbaa !29
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 44
  store float 0.000000e+00, ptr %i.hj, align 4, !tbaa !29
  %i.hk = call noundef zeroext i1 @_ZN30btGeneric6DofSpring2Constraint16matrixToEulerXYZERK11btMatrix3x3R9btVector3(ptr noundef nonnull align 4 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(16) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.hm = load <2 x float>, ptr %i.hl, align 4, !tbaa !29
  store <2 x float> %i.hm, ptr %i.a, align 8, !tbaa !29
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !41
  store float %i.hp, ptr %i.hn, align 8, !tbaa !29
  %i.hq = fcmp olt float %i.eu, -1.000000e+00
  %spec.store.select.i.i = select i1 %i.hq, float -1.000000e+00, float %i.eu ; 2 uses
  %i.hr = fcmp ogt float %spec.store.select.i.i, 1.000000e+00
  %spec.store.select1.i.i = select i1 %i.hr, float 1.000000e+00, float %spec.store.select.i.i
  %i.hs = call noundef float @acosf(float noundef %spec.store.select1.i.i) #13
  %i.ht = fmul float %i.hs, 2.000000e+00          ; 2 uses
  %i.hu = fcmp ogt float %i.ht, f0x40490FDB
  br i1 %i.hu, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.hv = fneg <2 x float> %i.et
  %i.hw = fneg <2 x float> %.sroa.12.12.vec.insert
  %i.hx = fneg float %i.eu                        ; 2 uses
  %i.hy = fcmp olt float %i.hx, -1.000000e+00
  %spec.store.select.i.i87 = select i1 %i.hy, float -1.000000e+00, float %i.hx ; 2 uses
  %i.hz = fcmp ogt float %spec.store.select.i.i87, 1.000000e+00
  %spec.store.select1.i.i88 = select i1 %i.hz, float 1.000000e+00, float %spec.store.select.i.i87
  %i.ia = call noundef float @acosf(float noundef %spec.store.select1.i.i88) #13
  %i.ib = fmul float %i.ia, 2.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_Z15shortestArcQuatRK9btVector3S1_.exit
  %.sroa.699.0 = phi <2 x float> [ %i.hw, %bb.e ], [ %.sroa.12.12.vec.insert, %_Z15shortestArcQuatRK9btVector3S1_.exit ]
  %.sroa.098.0 = phi <2 x float> [ %i.hv, %bb.e ], [ %i.et, %_Z15shortestArcQuatRK9btVector3S1_.exit ] ; 2 uses
  %.050 = phi float [ %i.ib, %bb.e ], [ %i.ht, %_Z15shortestArcQuatRK9btVector3S1_.exit ] ; 3 uses
  %.sroa.098.0.vec.extract = extractelement <2 x float> %.sroa.098.0, i64 0 ; 4 uses
  %.sroa.098.4.vec.extract = extractelement <2 x float> %.sroa.098.0, i64 1 ; 4 uses
  %.sroa.699.8.vec.extract = extractelement <2 x float> %.sroa.699.0, i64 0 ; 4 uses
  %i.ic = fcmp ogt float %.050, f0x34000000
  br i1 %i.ic, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.id = fmul float %.sroa.098.4.vec.extract, %.sroa.098.4.vec.extract
  %i.ie = call float @llvm.fmuladd.f32(float %.sroa.098.0.vec.extract, float %.sroa.098.0.vec.extract, float %i.id)
  %i.if = call noundef float @llvm.fmuladd.f32(float %.sroa.699.8.vec.extract, float %.sroa.699.8.vec.extract, float %i.ie)
  %sqrt.i.i89 = call noundef float @llvm.sqrt.f32(float %i.if)
  %i.ig = fdiv float 1.000000e+00, %sqrt.i.i89    ; 3 uses
  %i.ih = fmul float %.sroa.098.0.vec.extract, %i.ig
  %i.ii = fmul float %.sroa.098.4.vec.extract, %i.ig
  %i.ij = fmul float %.sroa.699.8.vec.extract, %i.ig
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0 = phi float [ %i.ij, %bb.g ], [ %.sroa.699.8.vec.extract, %bb.f ]
  %.sroa.6.0 = phi float [ %i.ii, %bb.g ], [ %.sroa.098.4.vec.extract, %bb.f ]
  %.sroa.0.0 = phi float [ %i.ih, %bb.g ], [ %.sroa.098.0.vec.extract, %bb.f ]
  %i.ik = fmul float %.sroa.6.0, 0.000000e+00
  %i.il = call float @llvm.fmuladd.f32(float %.sroa.0.0, float 0.000000e+00, float %i.ik)
  %i.im = fadd float %.sroa.10.0, %i.il
  %i.in = fcmp olt float %i.im, 0.000000e+00
  %i.io = fneg float %.050
  %.1 = select i1 %i.in, float %i.io, float %.050
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.1, ptr %i.ip, align 4, !tbaa !29
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !44
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.iu = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.iw = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ix = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.iy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ja = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
end_hunk_0
