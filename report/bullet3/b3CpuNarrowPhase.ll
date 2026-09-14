Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3CpuNarrowPhase?download=true
inline.NumInlined: 585
inline.NumDeleted: 221
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z13b3TestSepAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_RK20b3AlignedObjectArrayIS2_ESB_Rf:bb.a
.lr.ph.i22:                                       ; preds = %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dv = load i32, ptr %i.du, align 16, !tbaa !116
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !53
  %i.dy = sext i32 %i.dv to i64
  %wide.trip.count.i23 = zext nneg i32 %i.bw to i64
  %invariant.gep.i24 = getelementptr [16 x i8], ptr %i.dx, i64 %i.dy
  br label %bb.d

._crit_edge.i20:                                  ; preds = %bb.d
  %i.dz = fcmp ogt float %.243, %.2
  br i1 %i.dz, label %bb.e, label %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30

bb.d:                                             ; preds = %bb.d, %.lr.ph.i22
  %.142 = phi float [ f0x7F7FFFFF, %.lr.ph.i22 ], [ %.243, %bb.d ] ; 2 uses
  %.1 = phi float [ f0xFF7FFFFF, %.lr.ph.i22 ], [ %.2, %bb.d ] ; 2 uses
  %indvars.iv.i25 = phi i64 [ 0, %.lr.ph.i22 ], [ %indvars.iv.next.i27, %bb.d ] ; 2 uses
  %gep.i26 = getelementptr [16 x i8], ptr %invariant.gep.i24, i64 %indvars.iv.i25 ; 3 uses
  %i.ea = load float, ptr %gep.i26, align 16, !tbaa !80
  %i.eb = getelementptr inbounds nuw i8, ptr %gep.i26, i64 4
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !80
  %i.ed = fmul float %i.dj, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.df, float %i.ed)
  %i.ef = getelementptr inbounds nuw i8, ptr %gep.i26, i64 8
  %i.eg = load float, ptr %i.ef, align 8, !tbaa !80
  %i.eh = tail call noundef float @llvm.fmuladd.f32(float %i.eg, float %i.dn, float %i.ee) ; 4 uses
  %i.ei = fcmp olt float %i.eh, %.142
  %.243 = select i1 %i.ei, float %i.eh, float %.142 ; 4 uses
  %i.ej = fcmp ogt float %i.eh, %.1
  %.2 = select i1 %i.ej, float %i.eh, float %.1   ; 4 uses
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not.i28 = icmp eq i64 %indvars.iv.next.i27, %wide.trip.count.i23
  br i1 %exitcond.not.i28, label %._crit_edge.i20, label %bb.d, !llvm.loop !183

bb.e:                                             ; preds = %._crit_edge.i20
  br label %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30

_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30: ; preds = %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit, %._crit_edge.i20, %bb.e
  %.3 = phi float [ %.2, %._crit_edge.i20 ], [ %.243, %bb.e ], [ f0x7F7FFFFF, %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit ]
  %i.ek = phi float [ %.243, %._crit_edge.i20 ], [ %.2, %bb.e ], [ f0xFF7FFFFF, %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit ]
  %i.el = fmul float %i.m, %i.dq
  %i.em = tail call float @llvm.fmuladd.f32(float %i.do, float %i.k, float %i.el)
  %i.en = tail call noundef float @llvm.fmuladd.f32(float %i.ds, float %i.l, float %i.em) ; 2 uses
  %i.eo = fadd float %i.en, %i.ek                 ; 2 uses
  %i.ep = fadd float %i.en, %.3                   ; 2 uses
  %i.eq = fcmp uge float %i.cs, %i.eo
  %i.er = fcmp uge float %i.ep, %i.cr
  %or.cond.not = select i1 %i.eq, i1 %i.er, i1 false ; 2 uses
  br i1 %or.cond.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30
  %i.es = fsub float %i.cs, %i.eo                 ; 2 uses
  %i.et = fsub float %i.ep, %i.cr                 ; 2 uses
  %i.eu = fcmp olt float %i.es, %i.et
  %i.ev = select i1 %i.eu, float %i.es, float %i.et
  store float %i.ev, ptr %9, align 4, !tbaa !99
  br label %bb.g

bb.g:                                             ; preds = %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30, %bb.f
  ret i1 %or.cond.not
}

declare void @b3EnterProfileZone(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

declare void @b3LeaveProfileZone() local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z21b3ClipHullAgainstHullRK9b3Vector3RK22b3ConvexPolyhedronDataS4_S1_RK12b3QuaternionS1_S7_PS_S8_iffRK20b3AlignedObjectArrayIS_ERKS9_I9b3GpuFaceERKS9_IiESC_SG_SJ_S8_i(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(96) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef %7, ptr noundef %8, i32 noundef %9, float noundef %10, float noundef %11, ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull align 8 dereferenceable(25) %14, ptr noundef nonnull align 8 dereferenceable(25) %15, ptr noundef nonnull align 8 dereferenceable(25) %16, ptr noundef nonnull align 8 dereferenceable(25) %17, ptr noundef %18, i32 noundef %19) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @b3EnterProfileZone(ptr noundef nonnull @.str.8)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !108  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !99 ; 4 uses
  %i.j = load float, ptr %6, align 16, !tbaa !99  ; 2 uses
  %i.k = load <3 x float>, ptr %6, align 16, !tbaa !99 ; 3 uses
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.m = extractelement <3 x float> %i.k, i64 2   ; 2 uses
  %i.n = fneg float %i.m                          ; 4 uses
  %i.o = fneg float %i.j                          ; 4 uses
  %i.p = extractelement <3 x float> %i.k, i64 1   ; 2 uses
  %i.q = fneg float %i.p                          ; 3 uses
  %i.r = load float, ptr %0, align 16, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load float, ptr %i.u, align 8, !tbaa !80
  %i.w = sext i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  %invariant.gep = getelementptr [32 x i8], ptr %i.g, i64 %i.w
  %i.x = insertelement <4 x float> poison, float %i.i, i64 0
  %i.y = insertelement <4 x float> %i.x, float %i.o, i64 1
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.058.lcssa = phi i32 [ -1, %bb.a ], [ %.159, %bb.b ] ; 2 uses
  store i8 0, ptr @_ZZ21b3ClipHullAgainstHullRK9b3Vector3RK22b3ConvexPolyhedronDataS4_S1_RK12b3QuaternionS1_S7_PS_S8_iffRK20b3AlignedObjectArrayIS_ERKS9_I9b3GpuFaceERKS9_IiESC_SG_SJ_S8_iE4once, align 1, !tbaa !186
  %i.aa = add nsw i32 %i.e, %.058.lcssa
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [32 x i8], ptr %i.g, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !113 ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.26.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 12
  %wide.trip.count83 = zext nneg i32 %i.ae to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.05769 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.1, %bb.b ] ; 2 uses
  %.05868 = phi i32 [ -1, %.lr.ph ], [ %.159, %bb.b ]
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.an = load <3 x float>, ptr %gep, align 16, !tbaa !80 ; 4 uses
  %i.ao = shufflevector <3 x float> %i.an, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0> ; 2 uses
  %i.ap = load float, ptr %gep, align 16, !tbaa !80
  %i.aq = extractelement <3 x float> %i.an, i64 1
  %i.ar = shufflevector <3 x float> %i.an, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.as = fneg <4 x float> %i.ao
  %i.at = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.au = fmul <4 x float> %i.l, %i.at
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> %i.ao, <4 x float> %i.au) ; 4 uses
  %i.aw = extractelement <4 x float> %i.av, i64 2
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.n, float %i.aq, float %i.aw) ; 3 uses
  %i.ay = extractelement <4 x float> %i.av, i64 0
  %i.az = extractelement <3 x float> %i.an, i64 2 ; 2 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.o, float %i.az, float %i.ay) ; 3 uses
  %i.bb = extractelement <4 x float> %i.av, i64 1
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.q, float %i.ap, float %i.bb) ; 3 uses
  %i.bd = extractelement <4 x float> %i.av, i64 3
  %i.be = tail call float @llvm.fmuladd.f32(float %i.n, float %i.az, float %i.bd) ; 3 uses
  %i.bf = fmul float %i.i, %i.ax
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.be, float %i.o, float %i.bf)
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.n, float %i.bg)
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.p, float %i.bh)
  %i.bj = fmul float %i.i, %i.ba
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.be, float %i.q, float %i.bj)
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.o, float %i.bk)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.m, float %i.bl)
  %i.bn = fmul float %i.i, %i.bc
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.be, float %i.n, float %i.bn)
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.q, float %i.bo)
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.j, float %i.bp)
  %i.br = fmul float %i.t, %i.bm
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.r, float %i.br)
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.v, float %i.bs) ; 2 uses
  %i.bu = fcmp ogt float %i.bt, %.05769           ; 2 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  %.159 = select i1 %i.bu, i32 %i.bv, i32 %.05868 ; 2 uses
  %.1 = select i1 %i.bu, float %i.bt, float %.05769
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !184

._crit_edge75:                                    ; preds = %bb.c, %._crit_edge
  %.060.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.ae, %bb.c ]
  %i.bw = icmp sgt i32 %.058.lcssa, -1
  br i1 %i.bw, label %bb.d, label %bb.f

bb.c:                                             ; preds = %.lr.ph74, %bb.c
  %indvars.iv78 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next79, %bb.c ] ; 3 uses
  %indvars80 = trunc i64 %indvars.iv78 to i32
  %i.bx = load i32, ptr %i.ag, align 16, !tbaa !116
  %i.by = load i32, ptr %i.ah, align 16, !tbaa !114
  %i.bz = add nsw i32 %i.by, %indvars80
  %i.ca = load ptr, ptr %i.ai, align 8, !tbaa !60
  %i.cb = sext i32 %i.bz to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !41
  %i.ce = add nsw i32 %i.cd, %i.bx
  %i.cf = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.cg = sext i32 %i.ce to i64
  %i.ch = getelementptr inbounds [16 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  %.sroa.26.48.copyload.i = load float, ptr %.sroa.26.48..sroa_idx.i, align 8
  %i.ci = load float, ptr %i.am, align 4, !tbaa !80 ; 5 uses
  %i.cj = load <2 x float>, ptr %5, align 16
  %i.ck = load float, ptr %6, align 16, !tbaa !80 ; 6 uses
  %i.cl = load float, ptr %i.al, align 8, !tbaa !80 ; 4 uses
  %i.cm = load float, ptr %i.ak, align 4, !tbaa !80 ; 5 uses
  %i.cn = fmul float %i.cm, %i.cm
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.co)
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.cp)
  %i.cr = fdiv float 2.000000e+00, %i.cq          ; 3 uses
  %i.cs = fmul float %i.ck, %i.cr                 ; 2 uses
  %i.ct = fmul float %i.cm, %i.cr                 ; 3 uses
  %i.cu = fmul float %i.ci, %i.cs                 ; 2 uses
  %i.cv = fmul float %i.ci, %i.ct                 ; 2 uses
  %i.cw = fmul float %i.ck, %i.cs                 ; 2 uses
  %i.cx = fmul float %i.ck, %i.ct                 ; 2 uses
  %i.cy = fmul float %i.cl, %i.cr                 ; 4 uses
  %i.cz = fmul float %i.cm, %i.ct                 ; 2 uses
  %i.da = fmul float %i.cm, %i.cy                 ; 2 uses
  %i.db = fmul float %i.ck, %i.cy                 ; 2 uses
  %i.dc = fmul float %i.cl, %i.cy                 ; 2 uses
  %i.dd = fmul float %i.ci, %i.cy                 ; 2 uses
  %i.de = fadd float %i.cz, %i.dc
  %i.df = fadd float %i.cx, %i.dd
  %i.dg = fsub float 1.000000e+00, %i.de
  %i.dh = fadd float %i.cw, %i.dc
  %i.di = fsub float 1.000000e+00, %i.dh
  %i.dj = fsub float %i.cx, %i.dd
  %i.dk = fsub float %i.da, %i.cu
  %i.dl = fadd float %i.db, %i.cv
  %i.dm = fsub float %i.db, %i.cv
  %i.dn = fadd float %i.da, %i.cu
  %i.do = fadd float %i.cw, %i.cz
  %i.dp = fsub float 1.000000e+00, %i.do
  %20 = load <3 x float>, ptr %i.ch, align 16, !tbaa !80 ; 5 uses
  %i.dq = load float, ptr %i.ch, align 16, !tbaa !80
  %21 = shufflevector <3 x float> %20, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dr = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.di, i64 1
  %i.dt = fmul <2 x float> %21, %i.ds
  %i.du = shufflevector <3 x float> %20, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dv = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.df, i64 1
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dw, <2 x float> %i.dt)
  %22 = shufflevector <3 x float> %20, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %23 = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dy = insertelement <2 x float> %23, float %i.dk, i64 1
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %i.dy, <2 x float> %i.dx)
  %25 = extractelement <3 x float> %20, i64 1
  %i.dz = fmul float %25, %i.dn
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dm, float %i.dz)
  %26 = extractelement <3 x float> %20, i64 2
  %i.eb = tail call noundef float @llvm.fmuladd.f32(float %26, float %i.dp, float %i.ea)
  %i.ec = fadd <2 x float> %i.cj, %24
  %i.ed = fadd float %.sroa.26.48.copyload.i, %i.eb
  %.sroa.3.12.vec.insert.i.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ed, i64 0
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %indvars.iv78 ; 2 uses
  store <2 x float> %i.ec, ptr %i.ee, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i4.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !80
  %exitcond84.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge75, label %bb.c, !llvm.loop !185

bb.d:                                             ; preds = %._crit_edge75
  %i.ef = invoke noundef i32 @_Z21b3ClipFaceAgainstHullRK9b3Vector3PK22b3ConvexPolyhedronDataS1_RK12b3QuaternionPS_iS8_iffRK20b3AlignedObjectArrayIS_ERKS9_I9b3GpuFaceERKS9_IiES8_i(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef %7, i32 noundef %.060.lcssa, ptr noundef %8, i32 noundef %9, float noundef %10, float noundef %11, ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull align 8 dereferenceable(25) %14, ptr noundef %18, i32 noundef %19)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit64 unwind label %bb.h

bb.f:                                             ; preds = %bb.d, %._crit_edge75
  %.061 = phi i32 [ 0, %._crit_edge75 ], [ %i.ef, %bb.d ]
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  tail call void @__clang_call_terminate(ptr %i.ei) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %bb.f
  ret i32 %.061

bb.h:                                             ; preds = %bb.e
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  tail call void @__clang_call_terminate(ptr %i.ek) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit64:                    ; preds = %bb.e
  resume { ptr, i32 } %i.eg
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z16b3ReduceContactsPK9b3Vector3iRS0_P6b3Int4(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 5
  br i1 %i.b, label %bb.s, label %.new

.new:                                             ; preds = %bb.b
  %i.c = tail call i32 @llvm.umin.i32(i32 %1, i32 64) ; 3 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 126
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod208 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod208)
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.next.1 ; 2 uses
  %i.e = load <2 x float>, ptr %i.d, align 16, !tbaa !80
  %i.f = fadd <2 x float> %i.cl, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !80
  %.sroa.15.8.vec.extract171.epil = extractelement <2 x float> %.sroa.15.8.vec.insert173.1, i64 0
  %i.i = fadd float %.sroa.15.8.vec.extract171.epil, %i.h
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa205 = phi <2 x float> [ %i.cl, %.unr-lcssa ], [ %i.f, %.epil.preheader ] ; 2 uses
  %.lcssa = phi float [ %i.co, %.unr-lcssa ], [ %i.i, %.epil.preheader ] ; 2 uses
  %i.j = uitofp nneg i32 %i.c to float
  %i.k = fdiv float 1.000000e+00, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load float, ptr %2, align 16, !tbaa !80  ; 2 uses
  %i.o = insertelement <2 x float> poison, float %i.k, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.q = shufflevector <2 x float> %.lcssa205, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.r = insertelement <2 x float> %i.q, float %.lcssa, i64 0
  %i.s = fmul <2 x float> %i.p, %i.r              ; 3 uses
  %i.t = fmul <2 x float> %i.p, %.lcssa205
  %i.u = insertelement <2 x float> %i.q, float %.lcssa, i64 1
  %i.v = fmul <2 x float> %i.p, %i.u              ; 2 uses
  %i.w = load <2 x float>, ptr %i.l, align 4, !tbaa !80 ; 2 uses
  %i.x = load <2 x float>, ptr %0, align 16, !tbaa !80 ; 2 uses
  %i.y = load <2 x float>, ptr %i.m, align 4, !tbaa !80 ; 6 uses
  %i.z = shufflevector <2 x float> %i.w, <2 x float> %i.x, <2 x i32> <i32 1, i32 2>
  %i.aa = fsub <2 x float> %i.z, %i.s
  %i.ab = fsub <2 x float> %i.w, %i.v             ; 2 uses
  %i.ac = fsub <2 x float> %i.x, %i.t
  %i.ad = fneg <2 x float> %i.ab
  %i.ae = fneg <2 x float> %i.ac
  %i.af = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ag = insertelement <2 x float> %i.af, float %i.n, i64 1 ; 2 uses
  %i.ah = fmul <2 x float> %i.ag, %i.ad
  %i.ai = fmul <2 x float> %i.y, %i.ae
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.aa, <2 x float> %i.ah) ; 5 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 1 ; 2 uses
  %i.al = fneg float %i.ak
  %i.am = extractelement <2 x float> %i.y, i64 1
  %i.an = fmul float %i.am, %i.al
  %i.ao = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> %i.y, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.ab, <2 x float> %i.ai) ; 4 uses
  %i.ar = extractelement <2 x float> %i.y, i64 0
  %i.as = extractelement <2 x float> %i.aq, i64 0
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.as, float %i.an) ; 2 uses
  %i.au = fneg <2 x float> %i.aq
  %i.av = fmul <2 x float> %i.ap, %i.au
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.aj, <2 x float> %i.av) ; 3 uses
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> %i.aj, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.ay = fmul <2 x float> %i.ax, %i.ax
  %i.az = insertelement <2 x float> %i.aj, float %i.at, i64 1 ; 2 uses
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.az, <2 x float> %i.ay)
  %i.bb = shufflevector <2 x float> %i.aq, <2 x float> %i.aw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bb, <2 x float> %i.ba)
  %i.bd = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bc)
  %i.be = fdiv <2 x float> splat (float 1.000000e+00), %i.bd ; 5 uses
  %i.bf = extractelement <2 x float> %i.be, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.aj, %i.be
  %i.bg = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bh = fmul float %i.ak, %i.bf                 ; 2 uses
  %foldExtExtBinop203 = fmul <2 x float> %i.aq, %i.be
  %i.bi = extractelement <2 x float> %foldExtExtBinop203, i64 0 ; 2 uses
  %i.bj = extractelement <2 x float> %i.be, i64 1
  %i.bk = fmul float %i.at, %i.bj                 ; 2 uses
  %i.bl = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = fmul <2 x float> %i.aw, %i.bl           ; 3 uses
  %i.bn = fneg float %i.bg
  %i.bo = fneg float %i.bh
  %i.bp = fneg float %i.bi
  %i.bq = fneg float %i.bk
  %i.br = fneg <2 x float> %i.bm                  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.bv = extractelement <2 x float> %i.br, i64 0
  %i.bw = extractelement <2 x float> %i.br, i64 1
  %i.bx = extractelement <2 x float> %i.bm, i64 0
  %i.by = extractelement <2 x float> %i.bm, i64 1
  %i.bz = extractelement <2 x float> %i.s, i64 0
  %i.ca = extractelement <2 x float> %i.s, i64 1
  %i.cb = extractelement <2 x float> %i.v, i64 0
  br label %bb.f

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.sroa.15.0177 = phi <2 x float> [ zeroinitializer, %.new ], [ %.sroa.15.8.vec.insert173.1, %bb.d ] ; 2 uses
  %.sroa.0148.0176 = phi <2 x float> [ zeroinitializer, %.new ], [ %i.cl, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.cd = load <2 x float>, ptr %i.cc, align 16, !tbaa !80
  %i.ce = fadd <2 x float> %.sroa.0148.0176, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !80
  %.sroa.15.8.vec.extract171 = extractelement <2 x float> %.sroa.15.0177, i64 0
  %i.ch = fadd float %.sroa.15.8.vec.extract171, %i.cg
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load <2 x float>, ptr %i.cj, align 16, !tbaa !80
  %i.cl = fadd <2 x float> %i.ce, %i.ck           ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !80
  %i.co = fadd float %i.ch, %i.cn                 ; 2 uses
  %.sroa.15.8.vec.insert173.1 = insertelement <2 x float> %.sroa.15.0177, float %i.co, i64 0 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d, !llvm.loop !187

bb.e:                                             ; preds = %bb.n
  %i.cp = load i32, ptr %3, align 16, !tbaa !80
  %.not = icmp eq i32 %i.cp, %.1
  br i1 %.not, label %bb.s, label %bb.o

bb.f:                                             ; preds = %bb.c, %bb.n
  %indvars.iv189 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next190, %bb.n ] ; 3 uses
  %.sroa.0.0184 = phi float [ f0x00800000, %bb.c ], [ %.sroa.0.1, %bb.n ] ; 2 uses
  %.sroa.5.0183 = phi float [ f0x00800000, %bb.c ], [ %.sroa.5.1, %bb.n ] ; 2 uses
  %.sroa.8.0182 = phi float [ f0x00800000, %bb.c ], [ %.sroa.8.1, %bb.n ] ; 2 uses
  %.sroa.11.0181 = phi float [ f0x00800000, %bb.c ], [ %.sroa.11.1, %bb.n ] ; 2 uses
  %.053180 = phi i32 [ -1, %bb.c ], [ %.1, %bb.n ]
  %.054179 = phi float [ f0x7F7FFFFF, %bb.c ], [ %.155, %bb.n ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv189 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !80 ; 2 uses
  %i.ct = fcmp olt float %i.cs, %.054179          ; 2 uses
  %.155 = select i1 %i.ct, float %i.cs, float %.054179
end_hunk_0
