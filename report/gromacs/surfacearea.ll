Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/surfacearea?download=true
inline.NumInlined: 537
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@__gxx_personality_v0
; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN3gmx20AnalysisNeighborhoodC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx21SurfaceAreaCalculatorD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx21SurfaceAreaCalculator4ImplESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @_ZN3gmx20AnalysisNeighborhoodD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #19
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN3gmx21SurfaceAreaCalculator4ImplEEclEPS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #18
  br label %_ZNKSt14default_deleteIN3gmx21SurfaceAreaCalculator4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN3gmx21SurfaceAreaCalculator4ImplEEclEPS2_.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #18
  br label %_ZNSt10unique_ptrIN3gmx21SurfaceAreaCalculator4ImplESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx21SurfaceAreaCalculator4ImplESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN3gmx21SurfaceAreaCalculator4ImplEEclEPS2_.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare void @_ZN3gmx20AnalysisNeighborhoodD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx21SurfaceAreaCalculator11setDotCountEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.013.i.i = phi i32 [ 1, %bb.a ], [ %i.e, %bb.b ] ; 3 uses
  %i.a = mul nuw nsw i32 %.013.i.i, 10
  %i.b = mul nuw nsw i32 %i.a, %.013.i.i          ; 2 uses
  %i.c = add nuw nsw i32 %i.b, 2
  %i.d = icmp slt i32 %i.c, %1
  %i.e = add nuw nsw i32 %.013.i.i, 1
  br i1 %i.d, label %bb.b, label %.preheader.i.i, !llvm.loop !47

.preheader.i.i:                                   ; preds = %bb.b, %.preheader.i.i
  %.0.i.i = phi i32 [ %i.j, %.preheader.i.i ], [ 1, %bb.b ] ; 3 uses
  %i.f = mul nuw nsw i32 %.0.i.i, 30
  %i.g = mul nuw nsw i32 %i.f, %.0.i.i            ; 2 uses
  %i.h = add nuw nsw i32 %i.g, 2
  %i.i = icmp slt i32 %i.h, %1
  %i.j = add nuw nsw i32 %.0.i.i, 1
  br i1 %i.i, label %.preheader.i.i, label %_ZL9unsp_typei.exit.i, !llvm.loop !48

_ZL9unsp_typei.exit.i:                            ; preds = %.preheader.i.i
  %i.k = icmp samesign ult i32 %i.b, %i.g
  %i.l = sitofp i32 %1 to float
  %i.m = fpext float %i.l to double
  %i.n = fadd double %i.m, -2.000000e+00          ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %_ZL9unsp_typei.exit.i
  %i.o = fdiv double %i.n, 1.000000e+01
  %i.p = tail call double @sqrt(double noundef %i.o) #19, !noalias !80
  %i.q = fptrunc double %i.p to float
  %i.r = tail call noundef float @llvm.ceil.f32(float %i.q)
  %i.s = fptosi float %i.r to i32
  %.fr.i.i = freeze i32 %i.s                      ; 9 uses
  %i.t = mul nsw i32 %.fr.i.i, 10
  %i.u = mul nsw i32 %i.t, %.fr.i.i               ; 2 uses
  %i.v = add nsw i32 %i.u, 2                      ; 3 uses
  %.not.i.i = icmp slt i32 %i.v, %1
  br i1 %.not.i.i, label %.invoke.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = icmp slt i32 %i.u, -2
  br i1 %i.w, label %.noexc.i.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20, !noalias !81
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.d
  %i.x = mul nuw nsw i32 %i.v, 3
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %.not.i.i.i.i.i.i = icmp ne i32 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 2                  ; 3 uses
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #17, !noalias !81 ; 18 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.y ; 3 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 4
  %.idx.i.i.i.i.i.i.i.i.i = add nsw i64 %i.z, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !18, !noalias !80
  %i.ad = getelementptr i8, ptr %i.aa, i64 %i.z   ; 3 uses
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float f0x3E8D8368, float f0x3F59C441, float f0x3EE4F92C, float f0xBF393E4D, float f0x3F069650>, ptr %i.aa, align 4, !tbaa !18, !noalias !80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store <8 x float> <float f0x3EE4F92C, float f0xBF393E4B, float f0xBF069652, float f0x3EE4F92C, float f0x3E8D836D, float f0xBF59C440, float f0x3EE4F92C, float f0x3F64F92F>, ptr %i.ae, align 4, !tbaa !18, !noalias !80
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store <8 x float> <float 0.000000e+00, float f0x3EE4F92C, float f0x3F393E4C, float f0x3F069651, float f0xBEE4F92C, float f0xBE8D836B, float f0x3F59C441, float f0xBEE4F92C>, ptr %i.af, align 4, !tbaa !18, !noalias !80
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  store <8 x float> <float f0xBF64F92F, float 0.000000e+00, float f0xBEE4F92C, float f0xBE8D8366, float f0xBF59C442, float f0xBEE4F92C, float f0x3F393E4E, float -5.257310e-01>, ptr %i.ag, align 4, !tbaa !18, !noalias !80
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  store <4 x float> <float f0xBEE4F92C, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ah, align 4, !tbaa !18, !noalias !80
  %i.ai = icmp sgt i32 %.fr.i.i, 1
  br i1 %i.ai, label %.preheader256.split.us.preheader.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

.preheader256.split.us.preheader.i.i:             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.aj = uitofp nneg i32 %.fr.i.i to float       ; 7 uses
  br label %.lr.ph261.us.i.i

.lr.ph261.us.i.i:                                 ; preds = %.loopexit255.us.i.i, %.preheader256.split.us.preheader.i.i
  %indvars.iv297.i.i = phi i64 [ 0, %.preheader256.split.us.preheader.i.i ], [ %indvars.iv.next298.i.i, %.loopexit255.us.i.i ] ; 2 uses
  %indvars.iv291.i.i = phi i64 [ 1, %.preheader256.split.us.preheader.i.i ], [ %indvars.iv.next292.i.i, %.loopexit255.us.i.i ] ; 2 uses
  %.0160263.us.i.i = phi i32 [ 12, %.preheader256.split.us.preheader.i.i ], [ %.3.us.us.i.i, %.loopexit255.us.i.i ]
  %.idx.i.i = mul nuw nsw i64 %indvars.iv297.i.i, 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  br label %bb.e

bb.e:                                             ; preds = %..loopexit254_crit_edge.us.us.i.i, %.lr.ph261.us.i.i
  %indvars.iv293.i.i = phi i64 [ %indvars.iv.next294.i.i, %..loopexit254_crit_edge.us.us.i.i ], [ %indvars.iv291.i.i, %.lr.ph261.us.i.i ] ; 2 uses
  %.1259.us.us.i.i = phi i32 [ %.3.us.us.i.i, %..loopexit254_crit_edge.us.us.i.i ], [ %.0160263.us.i.i, %.lr.ph261.us.i.i ] ; 2 uses
  %i.an = load float, ptr %i.ak, align 4, !tbaa !18, !noalias !80
  %.idx334.i.i = mul nuw nsw i64 %indvars.iv293.i.i, 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx334.i.i ; 4 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18, !noalias !80
  %i.aq = fsub float %i.an, %i.ap                 ; 2 uses
  %i.ar = load float, ptr %i.al, align 4, !tbaa !18, !noalias !80
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !18, !noalias !80
  %i.au = fsub float %i.ar, %i.at                 ; 2 uses
  %i.av = load float, ptr %i.am, align 4, !tbaa !18, !noalias !80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !18, !noalias !80
  %i.ay = fsub float %i.av, %i.ax                 ; 2 uses
  %i.az = fmul float %i.au, %i.au
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.az)
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.ba)
  %i.bc = fsub float f0x3F8D836A, %i.bb
  %i.bd = tail call noundef float @llvm.fabs.f32(float %i.bc)
  %i.be = fpext float %i.bd to double
  %i.bf = fcmp ogt double %i.be, 1.000000e-03
  br i1 %i.bf, label %..loopexit254_crit_edge.us.us.i.i, label %.preheader253.us.us.preheader.i.i

.preheader253.us.us.preheader.i.i:                ; preds = %bb.e
  %i.bg = sext i32 %.1259.us.us.i.i to i64
  br label %.preheader253.us.us.i.i

.preheader253.us.us.i.i:                          ; preds = %bb.g, %.preheader253.us.us.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.bg, %.preheader253.us.us.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %.0157258.us.us.i.i = phi i32 [ 1, %.preheader253.us.us.preheader.i.i ], [ %i.fd, %bb.g ] ; 2 uses
  %.idx335.i.i = mul i64 %indvars.iv.i.i, 12
  %i.bh = getelementptr i8, ptr %i.aa, i64 %.idx335.i.i ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load <2 x float>, ptr %i.ak, align 4, !tbaa !18, !noalias !80 ; 6 uses
  %i.bk = load <2 x float>, ptr %i.al, align 4, !tbaa !18, !noalias !80 ; 8 uses
  %i.bl = load <2 x float>, ptr %i.ao, align 4, !tbaa !18, !noalias !80 ; 4 uses
  %i.bm = load <2 x float>, ptr %i.as, align 4, !tbaa !18, !noalias !80 ; 5 uses
  %i.bn = shufflevector <2 x float> %i.bk, <2 x float> %i.bj, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bo = fneg <2 x float> %i.bn
  %i.bp = fneg <2 x float> %i.bj
  %i.bq = fneg <2 x float> %i.bk
  %i.br = fmul <2 x float> %i.bm, %i.bo
  %i.bs = shufflevector <2 x float> %i.bm, <2 x float> %i.bl, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bp
  %i.bu = fmul <2 x float> %i.bl, %i.bq
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bs, <2 x float> %i.br) ; 3 uses
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bl, <2 x float> %i.bt) ; 2 uses
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bm, <2 x float> %i.bu)
  %i.by = extractelement <2 x float> %i.bv, i64 1 ; 4 uses
  %i.bz = fmul float %i.by, %i.by
  %i.ca = extractelement <2 x float> %i.bv, i64 0 ; 4 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.bz)
  %i.cc = extractelement <2 x float> %i.bw, i64 1 ; 4 uses
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.cb)
  %sqrt.i.us.us.i.i.a = tail call float @llvm.sqrt.f32(float %i.cd) ; 5 uses
  %i.ce = shufflevector <2 x float> %i.bk, <2 x float> %i.bm, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cf = fmul <2 x float> %i.ce, %i.ce
  %i.cg = shufflevector <2 x float> %i.bj, <2 x float> %i.bl, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.cg, <2 x float> %i.cf)
  %i.ci = shufflevector <2 x float> %i.bk, <2 x float> %i.bm, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.ci, <2 x float> %i.ch) ; 2 uses
  %shift = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.cj, %shift
  %i.ck = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cl = tail call float @llvm.sqrt.f32(float %i.ck)
  %i.cm = fdiv float %sqrt.i.us.us.i.i.a, %i.cl   ; 2 uses
  %i.cn = tail call noundef float @llvm.fabs.f32(float %i.cm)
  %i.co = fcmp olt float %i.cn, 1.000000e+00
  br i1 %i.co, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader253.us.us.i.i
  %i.cp = tail call noundef float @asinf(float noundef %i.cm) #19, !noalias !80
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader253.us.us.i.i
  %.0.i.i.us.us.i.i = phi float [ %i.cp, %bb.f ], [ f0x3FC90FDB, %.preheader253.us.us.i.i ]
  %i.cq = uitofp nneg i32 %.0157258.us.us.i.i to float
  %i.cr = fmul float %.0.i.i.us.us.i.i, %i.cq
  %i.cs = fdiv float %i.cr, %i.aj                 ; 2 uses
  %i.ct = tail call noundef float @sinf(float noundef %i.cs) #19, !noalias !80 ; 2 uses
  %i.cu = tail call noundef float @cosf(float noundef %i.cs) #19, !noalias !80 ; 3 uses
  %i.cv = extractelement <2 x float> %i.bk, i64 0 ; 2 uses
  %i.cw = fmul float %i.cv, %i.by
  %i.cx = extractelement <2 x float> %i.bj, i64 0 ; 2 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.ca, float %i.cw)
  %i.cz = extractelement <2 x float> %i.bk, i64 1 ; 2 uses
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.cc, float %i.cy)
  %i.db = fdiv float %i.da, %sqrt.i.us.us.i.i.a   ; 2 uses
  %i.dc = fpext float %i.cu to double
  %i.dd = fsub double 1.000000e+00, %i.dc         ; 2 uses
  %i.de = fpext float %sqrt.i.us.us.i.i.a to double ; 2 uses
  %i.df = fneg <2 x float> %i.bx
  %i.dg = fmul float %i.cc, %i.db
  %i.dh = fpext float %i.dg to double
  %i.di = fmul double %i.dd, %i.dh
  %i.dj = fdiv double %i.di, %i.de
  %i.dk = fmul float %i.cz, %i.cu
  %i.dl = fpext float %i.dk to double
  %i.dm = fadd double %i.dj, %i.dl
  %i.dn = fneg float %i.by
  %i.do = fmul float %i.cx, %i.dn
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.cv, float %i.do)
  %i.dq = fmul float %i.dp, %i.ct
  %i.dr = fdiv float %i.dq, %sqrt.i.us.us.i.i.a
  %i.ds = fpext float %i.dr to double
  %i.dt = fadd double %i.dm, %i.ds
  %i.du = fptrunc double %i.dt to float           ; 3 uses
  %i.dv = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %i.bv, %i.dw
  %i.dy = fpext <2 x float> %i.dx to <2 x double>
  %i.dz = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x double> %i.ea, %i.dy
  %i.ec = insertelement <2 x double> poison, double %i.de, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fdiv <2 x double> %i.eb, %i.ed
  %i.ef = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x float> %i.bj, %i.eg
  %i.ei = fpext <2 x float> %i.eh to <2 x double>
  %i.ej = fadd <2 x double> %i.ee, %i.ei
  %i.ek = fmul <2 x float> %i.bk, %i.df
  %i.el = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.bn, <2 x float> %i.ek)
  %i.em = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = fmul <2 x float> %i.el, %i.en
  %i.ep = insertelement <2 x float> poison, float %sqrt.i.us.us.i.i.a, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fdiv <2 x float> %i.eo, %i.eq
  %i.es = fpext <2 x float> %i.er to <2 x double>
  %i.et = fadd <2 x double> %i.ej, %i.es
  %i.eu = fptrunc <2 x double> %i.et to <2 x float> ; 4 uses
  %foldExtExtBinop48 = fmul <2 x float> %i.eu, %i.eu
  %i.ev = extractelement <2 x float> %foldExtExtBinop48, i64 1
  %i.ew = extractelement <2 x float> %i.eu, i64 0 ; 2 uses
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.ew, float %i.ev)
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.du, float %i.du, float %i.ex)
  %sqrt95.i.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.ey) ; 2 uses
  %i.ez = insertelement <2 x float> poison, float %sqrt95.i.us.us.i.i, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fdiv <2 x float> %i.eu, %i.fa
  store <2 x float> %i.fb, ptr %i.bh, align 4, !tbaa !18, !noalias !80
  %i.fc = fdiv float %i.du, %sqrt95.i.us.us.i.i
  store float %i.fc, ptr %i.bi, align 4, !tbaa !18, !noalias !80
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fd = add nuw nsw i32 %.0157258.us.us.i.i, 1  ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.fd, %.fr.i.i
  br i1 %exitcond.not.i.i, label %..loopexit254_crit_edge.us.us.loopexit.i.i, label %.preheader253.us.us.i.i, !llvm.loop !53

..loopexit254_crit_edge.us.us.loopexit.i.i:       ; preds = %bb.g
  %i.fe = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %..loopexit254_crit_edge.us.us.i.i

..loopexit254_crit_edge.us.us.i.i:                ; preds = %..loopexit254_crit_edge.us.us.loopexit.i.i, %bb.e
  %.3.us.us.i.i = phi i32 [ %.1259.us.us.i.i, %bb.e ], [ %i.fe, %..loopexit254_crit_edge.us.us.loopexit.i.i ] ; 3 uses
  %indvars.iv.next294.i.i = add nuw nsw i64 %indvars.iv293.i.i, 1 ; 2 uses
  %exitcond296.not.i.i = icmp eq i64 %indvars.iv.next294.i.i, 12
  br i1 %exitcond296.not.i.i, label %.loopexit255.us.i.i, label %bb.e, !llvm.loop !54

.loopexit255.us.i.i:                              ; preds = %..loopexit254_crit_edge.us.us.i.i
  %indvars.iv.next298.i.i = add nuw nsw i64 %indvars.iv297.i.i, 1 ; 2 uses
  %indvars.iv.next292.i.i = add nuw nsw i64 %indvars.iv291.i.i, 1
  %exitcond300.not.i.i = icmp eq i64 %indvars.iv.next298.i.i, 11
  br i1 %exitcond300.not.i.i, label %.preheader251.i.i, label %.lr.ph261.us.i.i, !llvm.loop !55

.preheader251.i.i:                                ; preds = %.loopexit255.us.i.i
  %i.ff = add nsw i32 %.fr.i.i, -1                ; 2 uses
  %.not286.i.i = icmp eq i32 %.fr.i.i, 2
  br i1 %.not286.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.preheader251.i.i, %.loopexit250.us.i.i
  %indvars.iv318.i.i = phi i64 [ %indvars.iv.next319.i.i, %.loopexit250.us.i.i ], [ 0, %.preheader251.i.i ] ; 2 uses
  %indvars.iv308.i.i = phi i64 [ %indvars.iv.next309.i.i, %.loopexit250.us.i.i ], [ 1, %.preheader251.i.i ] ; 2 uses
  %.4283.us.i.i = phi i32 [ %.10.us.us.i.i, %.loopexit250.us.i.i ], [ %.3.us.us.i.i, %.preheader251.i.i ]
  %.idx336.i.i = mul nuw nsw i64 %indvars.iv318.i.i, 12
  %i.fg = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx336.i.i ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.loopexit249.us.us.i.i, %.lr.ph.us.i.i
  %indvars.iv310.i.i.a = phi i64 [ %indvars.iv.next311.i.i, %.loopexit249.us.us.i.i ], [ %indvars.iv308.i.i, %.lr.ph.us.i.i ] ; 3 uses
  %.5278.us.us.i.i = phi i32 [ %.10.us.us.i.i, %.loopexit249.us.us.i.i ], [ %.4283.us.i.i, %.lr.ph.us.i.i ] ; 2 uses
  %i.fj = load float, ptr %i.fg, align 4, !tbaa !18, !noalias !80
  %.idx337.i.i = mul nuw nsw i64 %indvars.iv310.i.i.a, 12
  %i.fk = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx337.i.i ; 6 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !18, !noalias !80
  %i.fm = fsub float %i.fj, %i.fl                 ; 2 uses
  %i.fn = load float, ptr %i.fh, align 4, !tbaa !18, !noalias !80
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 3 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !18, !noalias !80
  %i.fq = fsub float %i.fn, %i.fp                 ; 2 uses
  %i.fr = load float, ptr %i.fi, align 4, !tbaa !18, !noalias !80
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 3 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !18, !noalias !80
  %i.fu = fsub float %i.fr, %i.ft                 ; 2 uses
  %i.fv = fmul float %i.fq, %i.fq
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.fm, float %i.fv)
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fu, float %i.fw)
  %i.fy = fsub float f0x3F8D836A, %i.fx
  %i.fz = tail call noundef float @llvm.fabs.f32(float %i.fy)
  %i.ga = fpext float %i.fz to double
  %i.gb = fcmp ule double %i.ga, 1.000000e-03
  br i1 %i.gb, label %.lr.ph275.us.us.i.i, label %.loopexit249.us.us.i.i

.lr.ph275.us.us.i.i:                              ; preds = %bb.h, %..loopexit_crit_edge.us.us.us.i.i
  %indvars.iv312.i.i = phi i64 [ %indvars.iv.next313.i.i, %..loopexit_crit_edge.us.us.us.i.i ], [ %indvars.iv310.i.i.a, %bb.h ]
  %.6273.us.us.us.i.i = phi i32 [ %.9.us.us.us.i.i, %..loopexit_crit_edge.us.us.us.i.i ], [ %.5278.us.us.i.i, %bb.h ] ; 3 uses
  %indvars.iv.next313.i.i = add nuw nsw i64 %indvars.iv312.i.i, 1 ; 3 uses
  %i.gc = load float, ptr %i.fg, align 4, !tbaa !18, !noalias !80
  %.idx338.i.i = mul nuw nsw i64 %indvars.iv.next313.i.i, 12
  %i.gd = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx338.i.i ; 5 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !18, !noalias !80 ; 2 uses
  %i.gf = fsub float %i.gc, %i.ge                 ; 2 uses
  %i.gg = load float, ptr %i.fh, align 4, !tbaa !18, !noalias !80
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 4 ; 3 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !18, !noalias !80 ; 2 uses
  %i.gj = fsub float %i.gg, %i.gi                 ; 2 uses
  %i.gk = load float, ptr %i.fi, align 4, !tbaa !18, !noalias !80
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !18, !noalias !80 ; 2 uses
  %i.gn = fsub float %i.gk, %i.gm                 ; 2 uses
  %i.go = fmul float %i.gj, %i.gj
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.gf, float %i.gf, float %i.go)
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.gn, float %i.gp)
  %i.gr = fsub float f0x3F8D836A, %i.gq
  %i.gs = tail call noundef float @llvm.fabs.f32(float %i.gr)
  %i.gt = fpext float %i.gs to double
  %i.gu = fcmp ogt double %i.gt, 1.000000e-03
  br i1 %i.gu, label %..loopexit_crit_edge.us.us.us.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph275.us.us.i.i
  %i.gv = load float, ptr %i.fk, align 4, !tbaa !18, !noalias !80
  %i.gw = fsub float %i.gv, %i.ge                 ; 2 uses
  %i.gx = load float, ptr %i.fo, align 4, !tbaa !18, !noalias !80
  %i.gy = fsub float %i.gx, %i.gi                 ; 2 uses
  %i.gz = load float, ptr %i.fs, align 4, !tbaa !18, !noalias !80
  %i.ha = fsub float %i.gz, %i.gm                 ; 2 uses
  %i.hb = fmul float %i.gy, %i.gy
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.gw, float %i.hb)
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.ha, float %i.hc)
  %i.he = fsub float f0x3F8D836A, %i.hd
  %i.hf = tail call noundef float @llvm.fabs.f32(float %i.he)
  %i.hg = fpext float %i.hf to double
  %i.hh = fcmp ogt double %i.hg, 1.000000e-03
  br i1 %i.hh, label %..loopexit_crit_edge.us.us.us.i.i, label %.preheader.us.us.us.i.i.preheader

.preheader.us.us.us.i.i.preheader:                ; preds = %bb.i
  %i.hi = sext i32 %.6273.us.us.us.i.i to i64
  br label %.preheader.us.us.us.i.i

.preheader.us.us.us.i.i:                          ; preds = %.preheader.us.us.us.i.i.preheader, %._crit_edge.us.us.us.loopexit.i.i
  %indvars.iv304.i.i = phi i32 [ %indvars.iv.next305.i.i, %._crit_edge.us.us.us.loopexit.i.i ], [ %i.ff, %.preheader.us.us.us.i.i.preheader ] ; 2 uses
  %.0153269.us.us.us.i.i = phi i32 [ %i.aoy, %._crit_edge.us.us.us.loopexit.i.i ], [ 1, %.preheader.us.us.us.i.i.preheader ] ; 4 uses
  %.7268.us.us.us.i.i = phi i64 [ %indvars.iv.next302.i.i, %._crit_edge.us.us.us.loopexit.i.i ], [ %i.hi, %.preheader.us.us.us.i.i.preheader ]
  %i.hj = load <2 x float>, ptr %i.fg, align 4, !tbaa !18, !noalias !80 ; 8 uses
  %i.hk = load <2 x float>, ptr %i.fh, align 4, !tbaa !18, !noalias !80 ; 4 uses
  %i.hl = load <2 x float>, ptr %i.fk, align 4, !tbaa !18, !noalias !80 ; 8 uses
  %i.hm = load <2 x float>, ptr %i.fo, align 4, !tbaa !18, !noalias !80 ; 6 uses
  %i.hn = fneg <2 x float> %i.hm
  %i.ho = shufflevector <2 x float> %i.hm, <2 x float> %i.hl, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.hp = fneg <2 x float> %i.ho
  %i.hq = fneg <2 x float> %i.hl
  %i.hr = fmul <2 x float> %i.hj, %i.hn
  %i.hs = shufflevector <2 x float> %i.hj, <2 x float> %i.hk, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ht = fmul <2 x float> %i.hs, %i.hp
  %i.hu = shufflevector <2 x float> %i.hk, <2 x float> %i.hj, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.hv = fmul <2 x float> %i.hu, %i.hq
  %i.hw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.hs, <2 x float> %i.hr) ; 3 uses
  %i.hx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.hu, <2 x float> %i.ht) ; 2 uses
  %i.hy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.hj, <2 x float> %i.hv)
  %i.hz = extractelement <2 x float> %i.hx, i64 1 ; 4 uses
  %i.ia = fmul float %i.hz, %i.hz
  %i.ib = extractelement <2 x float> %i.hw, i64 1 ; 4 uses
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.ib, float %i.ia)
  %i.id = extractelement <2 x float> %i.hw, i64 0 ; 4 uses
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.id, float %i.id, float %i.ic)
  %sqrt.i174.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.ie) ; 5 uses
  %i.if = shufflevector <2 x float> %i.hl, <2 x float> %i.hj, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ig = fmul <2 x float> %i.if, %i.if
  %i.ih = shufflevector <2 x float> %i.hl, <2 x float> %i.hj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ii = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.ih, <2 x float> %i.ig)
  %i.ij = shufflevector <2 x float> %i.hm, <2 x float> %i.hk, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ik = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.ij, <2 x float> %i.ii) ; 2 uses
  %i.il = extractelement <2 x float> %i.ik, i64 0
  %i.im = extractelement <2 x float> %i.ik, i64 1 ; 2 uses
  %i.in = fmul float %i.il, %i.im
  %i.io = tail call float @llvm.sqrt.f32(float %i.in)
  %i.ip = fdiv float %sqrt.i174.us.us.us.i.i, %i.io ; 2 uses
  %i.iq = tail call noundef float @llvm.fabs.f32(float %i.ip)
  %i.ir = fcmp olt float %i.iq, 1.000000e+00
  br i1 %i.ir, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader.us.us.us.i.i
  %i.is = tail call noundef float @asinf(float noundef %i.ip) #19, !noalias !80
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader.us.us.us.i.i
  %.0.i.i175.us.us.us.i.i = phi float [ %i.is, %bb.j ], [ f0x3FC90FDB, %.preheader.us.us.us.i.i ]
  %i.it = uitofp nneg i32 %.0153269.us.us.us.i.i to float ; 4 uses
  %i.iu = fmul float %.0.i.i175.us.us.us.i.i, %i.it
  %i.iv = fdiv float %i.iu, %i.aj                 ; 2 uses
  %i.iw = tail call noundef float @sinf(float noundef %i.iv) #19, !noalias !80 ; 2 uses
  %i.ix = tail call noundef float @cosf(float noundef %i.iv) #19, !noalias !80 ; 3 uses
  %i.iy = extractelement <2 x float> %i.hl, i64 1 ; 2 uses
  %i.iz = fmul float %i.iy, %i.hz
  %i.ja = extractelement <2 x float> %i.hl, i64 0 ; 2 uses
  %i.jb = tail call float @llvm.fmuladd.f32(float %i.ja, float %i.ib, float %i.iz)
  %i.jc = extractelement <2 x float> %i.hm, i64 1 ; 2 uses
  %i.jd = tail call float @llvm.fmuladd.f32(float %i.jc, float %i.id, float %i.jb)
  %i.je = fdiv float %i.jd, %sqrt.i174.us.us.us.i.i ; 2 uses
  %i.jf = fpext float %i.ix to double
  %i.jg = fsub double 1.000000e+00, %i.jf         ; 2 uses
  %i.jh = fpext float %sqrt.i174.us.us.us.i.i to double ; 2 uses
  %i.ji = fneg <2 x float> %i.hy
  %i.jj = fmul float %i.hz, %i.je
  %i.jk = fpext float %i.jj to double
  %i.jl = fmul double %i.jg, %i.jk
  %i.jm = fdiv double %i.jl, %i.jh
  %i.jn = fmul float %i.iy, %i.ix
  %i.jo = fpext float %i.jn to double
  %i.jp = fadd double %i.jm, %i.jo
  %i.jq = fneg float %i.ib
  %i.jr = fmul float %i.jc, %i.jq
  %i.js = tail call float @llvm.fmuladd.f32(float %i.id, float %i.ja, float %i.jr)
  %i.jt = fmul float %i.js, %i.iw
  %i.ju = fdiv float %i.jt, %sqrt.i174.us.us.us.i.i
  %i.jv = fpext float %i.ju to double
  %i.jw = fadd double %i.jp, %i.jv
  %i.jx = fptrunc double %i.jw to float           ; 3 uses
  %i.jy = insertelement <2 x float> poison, float %i.je, i64 0
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ka = fmul <2 x float> %i.hw, %i.jz
  %i.kb = fpext <2 x float> %i.ka to <2 x double>
  %i.kc = insertelement <2 x double> poison, double %i.jg, i64 0
  %i.kd = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ke = fmul <2 x double> %i.kd, %i.kb
  %i.kf = insertelement <2 x double> poison, double %i.jh, i64 0
  %i.kg = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kh = fdiv <2 x double> %i.ke, %i.kg
  %i.ki = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kk = fmul <2 x float> %i.ho, %i.kj
  %i.kl = fpext <2 x float> %i.kk to <2 x double>
  %i.km = fadd <2 x double> %i.kh, %i.kl
  %i.kn = fmul <2 x float> %i.hl, %i.ji
  %i.ko = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.hm, <2 x float> %i.kn)
  %i.kp = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = fmul <2 x float> %i.ko, %i.kq
  %i.ks = insertelement <2 x float> poison, float %sqrt.i174.us.us.us.i.i, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = fdiv <2 x float> %i.kr, %i.kt
  %i.kv = fpext <2 x float> %i.ku to <2 x double>
  %i.kw = fadd <2 x double> %i.km, %i.kv
  %i.kx = fptrunc <2 x double> %i.kw to <2 x float> ; 3 uses
  %i.ky = fmul float %i.jx, %i.jx
  %i.kz = extractelement <2 x float> %i.kx, i64 1 ; 2 uses
  %i.la = tail call float @llvm.fmuladd.f32(float %i.kz, float %i.kz, float %i.ky)
  %i.lb = extractelement <2 x float> %i.kx, i64 0 ; 2 uses
  %i.lc = tail call float @llvm.fmuladd.f32(float %i.lb, float %i.lb, float %i.la)
  %sqrt95.i176.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.lc) ; 2 uses
  %i.ld = fdiv float %i.jx, %sqrt95.i176.us.us.us.i.i ; 4 uses
  %i.le = insertelement <2 x float> poison, float %sqrt95.i176.us.us.us.i.i, i64 0
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lg = fdiv <2 x float> %i.kx, %i.lf           ; 4 uses
  %i.lh = load <2 x float>, ptr %i.gd, align 4, !tbaa !18, !noalias !80 ; 6 uses
  %i.li = load <2 x float>, ptr %i.gh, align 4, !tbaa !18, !noalias !80 ; 4 uses
  %i.lj = fneg <2 x float> %i.lh
  %i.lk = fneg <2 x float> %i.li
  %i.ll = fmul <2 x float> %i.hu, %i.lj
  %i.lm = fmul <2 x float> %i.hj, %i.lk
  %i.ln = shufflevector <2 x float> %i.li, <2 x float> %i.lh, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.lo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ln, <2 x float> %i.hj, <2 x float> %i.ll) ; 6 uses
  %i.lp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> %i.hk, <2 x float> %i.lm) ; 3 uses
  %i.lq = extractelement <2 x float> %i.lo, i64 0 ; 2 uses
  %foldExtExtBinop50 = fmul <2 x float> %i.lo, %i.lo
  %i.lr = extractelement <2 x float> %foldExtExtBinop50, i64 0
  %i.ls = extractelement <2 x float> %i.lp, i64 1 ; 4 uses
  %i.lt = tail call float @llvm.fmuladd.f32(float %i.ls, float %i.ls, float %i.lr)
  %i.lu = extractelement <2 x float> %i.lo, i64 1 ; 4 uses
  %i.lv = tail call float @llvm.fmuladd.f32(float %i.lu, float %i.lu, float %i.lt)
  %sqrt.i178.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.lv) ; 5 uses
  %i.lw = extractelement <2 x float> %i.lh, i64 1 ; 4 uses
  %i.lx = fmul float %i.lw, %i.lw
  %i.ly = extractelement <2 x float> %i.lh, i64 0 ; 4 uses
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.ly, float %i.ly, float %i.lx)
  %i.ma = extractelement <2 x float> %i.li, i64 1 ; 4 uses
  %i.mb = tail call float @llvm.fmuladd.f32(float %i.ma, float %i.ma, float %i.lz)
  %i.mc = fmul float %i.im, %i.mb
  %i.md = tail call float @llvm.sqrt.f32(float %i.mc)
  %i.me = fdiv float %sqrt.i178.us.us.us.i.i, %i.md ; 2 uses
  %i.mf = tail call noundef float @llvm.fabs.f32(float %i.me)
  %i.mg = fcmp olt float %i.mf, 1.000000e+00
  br i1 %i.mg, label %bb.l, label %_ZL6divarcffffffiiPfS_S_.exit181.us.us.us.i.i

bb.l:                                             ; preds = %bb.k
  %i.mh = tail call noundef float @asinf(float noundef %i.me) #19, !noalias !80
  br label %_ZL6divarcffffffiiPfS_S_.exit181.us.us.us.i.i

_ZL6divarcffffffiiPfS_S_.exit181.us.us.us.i.i:    ; preds = %bb.l, %bb.k
  %.0.i.i179.us.us.us.i.i = phi float [ %i.mh, %bb.l ], [ f0x3FC90FDB, %bb.k ]
  %i.mi = fmul float %.0.i.i179.us.us.us.i.i, %i.it
  %i.mj = fdiv float %i.mi, %i.aj                 ; 2 uses
  %i.mk = tail call noundef float @sinf(float noundef %i.mj) #19, !noalias !80 ; 2 uses
  %i.ml = tail call noundef float @cosf(float noundef %i.mj) #19, !noalias !80 ; 3 uses
  %i.mm = fmul float %i.lw, %i.lq
  %i.mn = tail call float @llvm.fmuladd.f32(float %i.ly, float %i.ls, float %i.mm)
  %i.mo = tail call float @llvm.fmuladd.f32(float %i.ma, float %i.lu, float %i.mn)
  %i.mp = fdiv float %i.mo, %sqrt.i178.us.us.us.i.i ; 2 uses
  %i.mq = fpext float %i.ml to double
  %i.mr = fsub double 1.000000e+00, %i.mq         ; 2 uses
  %i.ms = fpext float %sqrt.i178.us.us.us.i.i to double ; 2 uses
  %i.mt = fneg <2 x float> %i.lp
  %i.mu = shufflevector <2 x float> %i.lp, <2 x float> %i.lo, <2 x i32> <i32 1, i32 2>
  %i.mv = insertelement <2 x float> poison, float %i.mp, i64 0
  %i.mw = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mx = fmul <2 x float> %i.mu, %i.mw
  %i.my = fpext <2 x float> %i.mx to <2 x double>
  %i.mz = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.na = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nb = fmul <2 x double> %i.na, %i.my
  %i.nc = fmul float %i.lu, %i.mp
  %i.nd = fpext float %i.nc to double
  %i.ne = fmul double %i.mr, %i.nd
  %i.nf = fdiv double %i.ne, %i.ms
  %i.ng = fmul float %i.ma, %i.ml
  %i.nh = fpext float %i.ng to double
  %i.ni = fadd double %i.nf, %i.nh
  %i.nj = fneg float %i.lq
  %i.nk = fmul float %i.ly, %i.nj
  %i.nl = tail call float @llvm.fmuladd.f32(float %i.ls, float %i.lw, float %i.nk)
  %i.nm = fmul float %i.nl, %i.mk
  %i.nn = fdiv float %i.nm, %sqrt.i178.us.us.us.i.i
  %i.no = fpext float %i.nn to double
  %i.np = sub nuw nsw i32 %.fr.i.i, %.0153269.us.us.us.i.i ; 2 uses
  %i.nq = fmul float %i.ld, %i.ld
  %i.nr = extractelement <2 x float> %i.lg, i64 1 ; 3 uses
  %i.ns = tail call float @llvm.fmuladd.f32(float %i.nr, float %i.nr, float %i.nq)
  %i.nt = extractelement <2 x float> %i.lg, i64 0 ; 2 uses
  %i.nu = tail call float @llvm.fmuladd.f32(float %i.nt, float %i.nt, float %i.ns)
  %i.nv = uitofp nneg i32 %i.np to float
  %i.nw = insertelement <2 x double> poison, double %i.ms, i64 0
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = fdiv <2 x double> %i.nb, %i.nx
  %i.nz = insertelement <2 x float> poison, float %i.ml, i64 0
  %i.oa = shufflevector <2 x float> %i.nz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ob = fmul <2 x float> %i.lh, %i.oa
  %i.oc = fpext <2 x float> %i.ob to <2 x double>
  %i.od = fadd <2 x double> %i.ny, %i.oc
  %i.oe = fmul <2 x float> %i.li, %i.mt
  %i.of = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> %i.ln, <2 x float> %i.oe)
  %i.og = insertelement <2 x float> poison, float %i.mk, i64 0
  %i.oh = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oi = fmul <2 x float> %i.of, %i.oh
  %i.oj = insertelement <2 x float> poison, float %sqrt.i178.us.us.us.i.i, i64 0
  %i.ok = shufflevector <2 x float> %i.oj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ol = fdiv <2 x float> %i.oi, %i.ok
  %i.om = fpext <2 x float> %i.ol to <2 x double>
  %i.on = fadd <2 x double> %i.od, %i.om
  %i.oo = fptrunc <2 x double> %i.on to <2 x float> ; 5 uses
  %i.op = fadd double %i.ni, %i.no
  %i.oq = fptrunc double %i.op to float           ; 3 uses
  %foldExtExtBinop52 = fmul <2 x float> %i.oo, %i.oo
  %i.or = extractelement <2 x float> %foldExtExtBinop52, i64 1
  %i.os = extractelement <2 x float> %i.oo, i64 0 ; 2 uses
  %i.ot = tail call float @llvm.fmuladd.f32(float %i.os, float %i.os, float %i.or)
  %i.ou = tail call float @llvm.fmuladd.f32(float %i.oq, float %i.oq, float %i.ot)
  %sqrt95.i180.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.ou)
  %i.ov = insertelement <2 x float> poison, float %sqrt95.i180.us.us.us.i.i, i64 0
  %i.ow = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ox = fdiv <2 x float> %i.oo, %i.ow           ; 3 uses
  %i.oy = shufflevector <2 x float> %i.oo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.oz = insertelement <2 x float> %i.oy, float %i.oq, i64 1
  %i.pa = fdiv <2 x float> %i.oz, %i.ow           ; 6 uses
  %i.pb = extractelement <2 x float> %i.pa, i64 1 ; 6 uses
  %i.pc = extractelement <2 x float> %i.ox, i64 0 ; 6 uses
  %i.pd = shufflevector <2 x float> %i.pa, <2 x float> %i.ox, <2 x i32> <i32 1, i32 2>
  %i.pe = fneg <2 x float> %i.pd
  %i.pf = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pg = insertelement <2 x float> %i.pf, float %i.ld, i64 0
  %i.ph = fmul <2 x float> %i.pg, %i.pe
  %i.pi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pa, <2 x float> %i.lg, <2 x float> %i.ph) ; 3 uses
  %i.pj = extractelement <2 x float> %i.pa, i64 0 ; 4 uses
  %i.pk = fneg float %i.pj
  %i.pl = fmul float %i.nr, %i.pk
  %i.pm = tail call float @llvm.fmuladd.f32(float %i.pc, float %i.ld, float %i.pl) ; 6 uses
  %i.pn = extractelement <2 x float> %i.pi, i64 1 ; 5 uses
  %i.po = fmul float %i.pn, %i.pn
  %i.pp = extractelement <2 x float> %i.pi, i64 0 ; 5 uses
  %i.pq = tail call float @llvm.fmuladd.f32(float %i.pp, float %i.pp, float %i.po)
  %i.pr = tail call float @llvm.fmuladd.f32(float %i.pm, float %i.pm, float %i.pq)
  %sqrt.i198.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.pr) ; 5 uses
  %foldExtExtBinop54 = fmul <2 x float> %i.pa, %i.pa
  %i.ps = extractelement <2 x float> %foldExtExtBinop54, i64 0
  %i.pt = tail call float @llvm.fmuladd.f32(float %i.pc, float %i.pc, float %i.ps)
  %i.pu = tail call float @llvm.fmuladd.f32(float %i.pb, float %i.pb, float %i.pt)
  %i.pv = fmul float %i.nu, %i.pu
  %sqrt.i205.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.pv)
  %2 = fdiv float %sqrt.i198.us.us.us.i.i, %sqrt.i205.us.us.us.i.i ; 2 uses
  %3 = tail call noundef float @llvm.fabs.f32(float %2)
  %4 = fcmp olt float %3, 1.000000e+00
  %i.pw = fmul float %i.pj, %i.pn
  %i.px = tail call float @llvm.fmuladd.f32(float %i.pc, float %i.pp, float %i.pw)
  %i.py = tail call float @llvm.fmuladd.f32(float %i.pb, float %i.pm, float %i.px)
  %i.pz = fdiv float %i.py, %sqrt.i198.us.us.us.i.i ; 2 uses
  %i.qa = insertelement <2 x float> poison, float %i.pz, i64 0
  %i.qb = shufflevector <2 x float> %i.qa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qc = fmul <2 x float> %i.pi, %i.qb
  %i.qd = fpext float %sqrt.i198.us.us.us.i.i to double ; 2 uses
  %i.qe = fneg float %i.pm
  %i.qf = fmul float %i.pj, %i.qe
  %i.qg = tail call float @llvm.fmuladd.f32(float %i.pn, float %i.pb, float %i.qf)
  %i.qh = fpext <2 x float> %i.qc to <2 x double>
  %i.qi = fneg float %i.pp
  %i.qj = fmul float %i.pb, %i.qi
  %i.qk = tail call float @llvm.fmuladd.f32(float %i.pm, float %i.pc, float %i.qj)
  %i.ql = fmul float %i.pm, %i.pz
  %i.qm = fpext float %i.ql to double
  %i.qn = fneg float %i.pn
  %i.qo = fmul float %i.pc, %i.qn
  %i.qp = tail call float @llvm.fmuladd.f32(float %i.pp, float %i.pj, float %i.qo)
  %i.qq = insertelement <2 x double> poison, double %i.qd, i64 0
  %i.qr = shufflevector <2 x double> %i.qq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qs = insertelement <2 x float> poison, float %i.qg, i64 0
  %i.qt = insertelement <2 x float> %i.qs, float %i.qk, i64 1
  %i.qu = insertelement <2 x float> poison, float %sqrt.i198.us.us.us.i.i, i64 0
  %i.qv = shufflevector <2 x float> %i.qu, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %bb.aa, %_ZL6divarcffffffiiPfS_S_.exit181.us.us.us.i.i
  %indvars.iv301.i.i = phi i64 [ %indvars.iv.next302.i.i, %bb.aa ], [ %.7268.us.us.us.i.i, %_ZL6divarcffffffiiPfS_S_.exit181.us.us.us.i.i ] ; 2 uses
  %.0267.us.us.us.i.i = phi i32 [ %i.aox, %bb.aa ], [ 1, %_ZL6divarcffffffiiPfS_S_.exit181.us.us.us.i.i ] ; 5 uses
  %i.qw = load <2 x float>, ptr %i.fk, align 4, !tbaa !18, !noalias !80 ; 5 uses
  %i.qx = load float, ptr %i.fs, align 4, !tbaa !18, !noalias !80 ; 12 uses
  %i.qy = extractelement <2 x float> %i.qw, i64 1 ; 9 uses
  %i.qz = extractelement <2 x float> %i.qw, i64 0 ; 10 uses
  %i.ra = load <2 x float>, ptr %i.fg, align 4, !tbaa !18, !noalias !80 ; 7 uses
  %i.rb = load <2 x float>, ptr %i.fh, align 4, !tbaa !18, !noalias !80 ; 5 uses
  %i.rc = fneg <2 x float> %i.rb                  ; 2 uses
  %i.rd = shufflevector <2 x float> %i.rb, <2 x float> %i.ra, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.re = fneg <2 x float> %i.rd                  ; 2 uses
  %i.rf = extractelement <2 x float> %i.ra, i64 1 ; 8 uses
  %i.rg = fneg <2 x float> %i.ra
  %i.rh = extractelement <2 x float> %i.re, i64 1
  %i.ri = extractelement <2 x float> %i.rb, i64 1 ; 9 uses
  %i.rj = extractelement <2 x float> %i.ra, i64 0 ; 8 uses
  %i.rk = fmul float %i.qx, %i.rh
  %i.rl = tail call float @llvm.fmuladd.f32(float %i.ri, float %i.qz, float %i.rk) ; 6 uses
  %i.rm = fmul <2 x float> %i.qw, %i.rc
  %i.rn = shufflevector <2 x float> %i.qw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ro = insertelement <2 x float> %i.rn, float %i.qx, i64 1
  %i.rp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ra, <2 x float> %i.ro, <2 x float> %i.rm) ; 3 uses
  %i.rq = fmul float %i.rl, %i.rl
  %i.rr = extractelement <2 x float> %i.rp, i64 1 ; 5 uses
  %i.rs = tail call float @llvm.fmuladd.f32(float %i.rr, float %i.rr, float %i.rq)
  %i.rt = extractelement <2 x float> %i.rp, i64 0 ; 5 uses
  %i.ru = tail call float @llvm.fmuladd.f32(float %i.rt, float %i.rt, float %i.rs)
  %sqrt.i182.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.ru) ; 5 uses
  %i.rv = fmul float %i.rf, %i.rf
  %i.rw = tail call float @llvm.fmuladd.f32(float %i.rj, float %i.rj, float %i.rv)
  %i.rx = tail call float @llvm.fmuladd.f32(float %i.ri, float %i.ri, float %i.rw) ; 2 uses
  %i.ry = fmul float %i.qy, %i.qy
  %i.rz = tail call float @llvm.fmuladd.f32(float %i.qz, float %i.qz, float %i.ry)
  %i.sa = tail call float @llvm.fmuladd.f32(float %i.qx, float %i.qx, float %i.rz) ; 2 uses
  %i.sb = fmul float %i.rx, %i.sa
  %i.sc = tail call float @llvm.sqrt.f32(float %i.sb)
  %i.sd = fdiv float %sqrt.i182.us.us.us.i.i, %i.sc ; 2 uses
  %i.se = tail call noundef float @llvm.fabs.f32(float %i.sd)
  %i.sf = fcmp olt float %i.se, 1.000000e+00
  br i1 %i.sf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.sg = tail call noundef float @asinf(float noundef %i.sd) #19, !noalias !80
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i.i183.us.us.us.i.i = phi float [ %i.sg, %bb.n ], [ f0x3FC90FDB, %bb.m ]
  %i.sh = uitofp nneg i32 %.0267.us.us.us.i.i to float ; 3 uses
  %i.si = fmul float %.0.i.i183.us.us.us.i.i, %i.sh
  %i.sj = fdiv float %i.si, %i.aj                 ; 2 uses
  %i.sk = tail call noundef float @sinf(float noundef %i.sj) #19, !noalias !80 ; 2 uses
  %i.sl = tail call noundef float @cosf(float noundef %i.sj) #19, !noalias !80 ; 4 uses
  %i.sm = fmul float %i.rf, %i.rl
  %i.sn = tail call float @llvm.fmuladd.f32(float %i.rj, float %i.rr, float %i.sm)
  %i.so = tail call float @llvm.fmuladd.f32(float %i.ri, float %i.rt, float %i.sn)
  %i.sp = fdiv float %i.so, %sqrt.i182.us.us.us.i.i ; 2 uses
  %i.sq = fpext float %i.sl to double
  %i.sr = fsub double 1.000000e+00, %i.sq         ; 2 uses
  %i.ss = fpext float %sqrt.i182.us.us.us.i.i to double ; 2 uses
  %i.st = fneg float %i.rt
  %i.su = fmul float %i.rl, %i.sp
  %i.sv = fpext float %i.su to double
  %i.sw = fmul double %i.sr, %i.sv
  %i.sx = fdiv double %i.sw, %i.ss
  %i.sy = fmul float %i.rf, %i.sl
  %i.sz = fpext float %i.sy to double
  %i.ta = fadd double %i.sx, %i.sz
  %i.tb = fneg float %i.rr
  %i.tc = fmul float %i.ri, %i.tb
  %i.td = tail call float @llvm.fmuladd.f32(float %i.rt, float %i.rj, float %i.tc)
  %i.te = fmul float %i.td, %i.sk
  %i.tf = fdiv float %i.te, %sqrt.i182.us.us.us.i.i
  %i.tg = fpext float %i.tf to double
  %i.th = fneg float %i.rl
  %i.ti = fadd double %i.ta, %i.tg
  %i.tj = fptrunc double %i.ti to float           ; 3 uses
  %i.tk = fmul float %i.rj, %i.sl
  %i.tl = fmul float %i.rf, %i.st
  %i.tm = tail call float @llvm.fmuladd.f32(float %i.rl, float %i.ri, float %i.tl)
  %i.tn = insertelement <2 x float> poison, float %i.sp, i64 0
  %i.to = shufflevector <2 x float> %i.tn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tp = fmul <2 x float> %i.rp, %i.to
  %i.tq = fpext <2 x float> %i.tp to <2 x double>
  %i.tr = insertelement <2 x double> poison, double %i.sr, i64 0
  %i.ts = shufflevector <2 x double> %i.tr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tt = fmul <2 x double> %i.ts, %i.tq
  %i.tu = insertelement <2 x double> poison, double %i.ss, i64 0
  %i.tv = shufflevector <2 x double> %i.tu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tw = fdiv <2 x double> %i.tt, %i.tv
  %i.tx = fmul float %i.ri, %i.sl
  %i.ty = insertelement <2 x float> poison, float %i.tx, i64 0
  %i.tz = insertelement <2 x float> %i.ty, float %i.tk, i64 1
  %i.ua = fpext <2 x float> %i.tz to <2 x double>
  %i.ub = fadd <2 x double> %i.tw, %i.ua
  %i.uc = fmul float %i.rj, %i.th
  %i.ud = tail call float @llvm.fmuladd.f32(float %i.rr, float %i.rf, float %i.uc)
  %i.ue = insertelement <2 x float> poison, float %i.ud, i64 0
  %i.uf = insertelement <2 x float> %i.ue, float %i.tm, i64 1
  %i.ug = insertelement <2 x float> poison, float %i.sk, i64 0
  %i.uh = shufflevector <2 x float> %i.ug, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ui = fmul <2 x float> %i.uf, %i.uh
  %i.uj = insertelement <2 x float> poison, float %sqrt.i182.us.us.us.i.i, i64 0
  %i.uk = shufflevector <2 x float> %i.uj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ul = fdiv <2 x float> %i.ui, %i.uk
  %i.um = fpext <2 x float> %i.ul to <2 x double>
  %i.un = fadd <2 x double> %i.ub, %i.um
  %i.uo = fptrunc <2 x double> %i.un to <2 x float> ; 3 uses
  %i.up = fmul float %i.tj, %i.tj
  %i.uq = extractelement <2 x float> %i.uo, i64 1 ; 2 uses
  %i.ur = tail call float @llvm.fmuladd.f32(float %i.uq, float %i.uq, float %i.up)
  %i.us = extractelement <2 x float> %i.uo, i64 0 ; 2 uses
  %i.ut = tail call float @llvm.fmuladd.f32(float %i.us, float %i.us, float %i.ur)
  %sqrt95.i184.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.ut) ; 2 uses
  %i.uu = fdiv float %i.tj, %sqrt95.i184.us.us.us.i.i ; 4 uses
  %i.uv = insertelement <2 x float> poison, float %sqrt95.i184.us.us.us.i.i, i64 0
  %i.uw = shufflevector <2 x float> %i.uv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ux = fdiv <2 x float> %i.uo, %i.uw           ; 3 uses
  %i.uy = load <2 x float>, ptr %i.gh, align 4, !tbaa !18, !noalias !80 ; 8 uses
  %i.uz = extractelement <2 x float> %i.uy, i64 1 ; 10 uses
  %i.va = fneg float %i.uz
  %i.vb = fmul float %i.qy, %i.va
  %i.vc = load <2 x float>, ptr %i.gd, align 4, !tbaa !18, !noalias !80 ; 5 uses
  %i.vd = extractelement <2 x float> %i.uy, i64 0 ; 7 uses
  %i.ve = tail call float @llvm.fmuladd.f32(float %i.vd, float %i.qx, float %i.vb) ; 6 uses
  %i.vf = extractelement <2 x float> %i.vc, i64 0 ; 9 uses
  %i.vg = fneg float %i.vf
  %i.vh = fmul float %i.qx, %i.vg
  %i.vi = tail call float @llvm.fmuladd.f32(float %i.uz, float %i.qz, float %i.vh) ; 6 uses
  %i.vj = fneg float %i.vd
  %i.vk = fmul float %i.qz, %i.vj
  %i.vl = tail call float @llvm.fmuladd.f32(float %i.vf, float %i.qy, float %i.vk) ; 6 uses
  %i.vm = fmul float %i.vi, %i.vi
  %i.vn = tail call float @llvm.fmuladd.f32(float %i.ve, float %i.ve, float %i.vm)
  %i.vo = tail call float @llvm.fmuladd.f32(float %i.vl, float %i.vl, float %i.vn)
  %sqrt.i186.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.vo) ; 5 uses
  %foldExtExtBinop56 = fmul <2 x float> %i.uy, %i.uy
  %i.vp = extractelement <2 x float> %foldExtExtBinop56, i64 0
  %i.vq = tail call float @llvm.fmuladd.f32(float %i.vf, float %i.vf, float %i.vp)
  %i.vr = tail call float @llvm.fmuladd.f32(float %i.uz, float %i.uz, float %i.vq) ; 2 uses
  %i.vs = fmul float %i.sa, %i.vr
  %i.vt = tail call float @llvm.sqrt.f32(float %i.vs) ; 2 uses
  %i.vu = fdiv float %sqrt.i186.us.us.us.i.i, %i.vt ; 2 uses
  %i.vv = tail call noundef float @llvm.fabs.f32(float %i.vu)
  %i.vw = fcmp olt float %i.vv, 1.000000e+00
  br i1 %i.vw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.vx = tail call noundef float @asinf(float noundef %i.vu) #19, !noalias !80
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i.i187.us.us.us.i.i = phi float [ %i.vx, %bb.p ], [ f0x3FC90FDB, %bb.o ]
  %i.vy = fmul float %.0.i.i187.us.us.us.i.i, %i.sh
  %i.vz = fdiv float %i.vy, %i.aj                 ; 2 uses
  %i.wa = tail call noundef float @sinf(float noundef %i.vz) #19, !noalias !80 ; 3 uses
  %i.wb = tail call noundef float @cosf(float noundef %i.vz) #19, !noalias !80 ; 3 uses
  %i.wc = fmul float %i.vd, %i.vi
  %i.wd = tail call float @llvm.fmuladd.f32(float %i.vf, float %i.ve, float %i.wc)
  %i.we = tail call float @llvm.fmuladd.f32(float %i.uz, float %i.vl, float %i.wd)
  %i.wf = fdiv float %i.we, %sqrt.i186.us.us.us.i.i ; 3 uses
  %i.wg = fmul float %i.ve, %i.wf
  %i.wh = fpext float %i.wg to double
  %i.wi = fpext float %i.wb to double
  %i.wj = fsub double 1.000000e+00, %i.wi         ; 3 uses
  %i.wk = fmul double %i.wj, %i.wh
  %i.wl = fpext float %sqrt.i186.us.us.us.i.i to double ; 2 uses
  %i.wm = fneg float %i.vl
  %i.wn = fmul float %i.vd, %i.wm
  %i.wo = tail call float @llvm.fmuladd.f32(float %i.vi, float %i.uz, float %i.wn)
  %i.wp = fmul float %i.vi, %i.wf
  %i.wq = fpext float %i.wp to double
  %i.wr = fmul double %i.wj, %i.wq
  %i.ws = fneg float %i.ve
  %i.wt = fmul float %i.uz, %i.ws
  %i.wu = tail call float @llvm.fmuladd.f32(float %i.vl, float %i.vf, float %i.wt)
  %i.wv = fmul float %i.vl, %i.wf
  %i.ww = fpext float %i.wv to double
  %i.wx = fmul double %i.wj, %i.ww
  %i.wy = fdiv double %i.wx, %i.wl
  %i.wz = fmul float %i.uz, %i.wb
  %i.xa = fpext float %i.wz to double
  %i.xb = fadd double %i.wy, %i.xa
  %i.xc = fneg float %i.vi
  %i.xd = fmul float %i.vf, %i.xc
  %i.xe = tail call float @llvm.fmuladd.f32(float %i.ve, float %i.vd, float %i.xd)
  %i.xf = fmul float %i.xe, %i.wa
  %i.xg = fdiv float %i.xf, %sqrt.i186.us.us.us.i.i
  %i.xh = fpext float %i.xg to double
  %i.xi = sub nuw nsw i32 %i.np, %.0267.us.us.us.i.i
  %i.xj = fmul <2 x float> %i.vc, %i.rc
  %i.xk = fmul <2 x float> %i.uy, %i.re
  %i.xl = shufflevector <2 x float> %i.uy, <2 x float> %i.vc, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.xm = fmul <2 x float> %i.xl, %i.rg
  %i.xn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ra, <2 x float> %i.uy, <2 x float> %i.xj) ; 3 uses
  %i.xo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rb, <2 x float> %i.xl, <2 x float> %i.xk) ; 2 uses
  %i.xp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rd, <2 x float> %i.vc, <2 x float> %i.xm)
  %i.xq = fmul float %i.wo, %i.wa
  %i.xr = insertelement <2 x double> poison, double %i.wk, i64 0
  %i.xs = insertelement <2 x double> %i.xr, double %i.wr, i64 1
  %i.xt = insertelement <2 x double> poison, double %i.wl, i64 0
  %i.xu = shufflevector <2 x double> %i.xt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xv = fdiv <2 x double> %i.xs, %i.xu
  %i.xw = shufflevector <2 x float> %i.uy, <2 x float> %i.vc, <2 x i32> <i32 2, i32 0>
  %i.xx = insertelement <2 x float> poison, float %i.wb, i64 0
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xz = fmul <2 x float> %i.xw, %i.xy
  %i.ya = fpext <2 x float> %i.xz to <2 x double>
  %i.yb = fadd <2 x double> %i.xv, %i.ya
  %i.yc = fmul float %i.wu, %i.wa
  %i.yd = insertelement <2 x float> poison, float %i.xq, i64 0
  %i.ye = insertelement <2 x float> %i.yd, float %i.yc, i64 1
  %i.yf = insertelement <2 x float> poison, float %sqrt.i186.us.us.us.i.i, i64 0
  %i.yg = shufflevector <2 x float> %i.yf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yh = fdiv <2 x float> %i.ye, %i.yg
  %i.yi = fpext <2 x float> %i.yh to <2 x double>
  %i.yj = fadd <2 x double> %i.yb, %i.yi
  %i.yk = fptrunc <2 x double> %i.yj to <2 x float> ; 5 uses
  %i.yl = fadd double %i.xb, %i.xh
  %i.ym = fptrunc double %i.yl to float           ; 3 uses
  %foldExtExtBinop58 = fmul <2 x float> %i.yk, %i.yk
  %i.yn = extractelement <2 x float> %foldExtExtBinop58, i64 1
  %i.yo = extractelement <2 x float> %i.yk, i64 0 ; 2 uses
  %i.yp = tail call float @llvm.fmuladd.f32(float %i.yo, float %i.yo, float %i.yn)
  %i.yq = tail call float @llvm.fmuladd.f32(float %i.ym, float %i.ym, float %i.yp)
  %sqrt95.i188.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.yq)
  %i.yr = insertelement <2 x float> poison, float %sqrt95.i188.us.us.us.i.i, i64 0
  %i.ys = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yt = fdiv <2 x float> %i.yk, %i.ys           ; 2 uses
  %i.yu = shufflevector <2 x float> %i.yk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.yv = insertelement <2 x float> %i.yu, float %i.ym, i64 1
  %i.yw = fdiv <2 x float> %i.yv, %i.ys           ; 5 uses
  %i.yx = extractelement <2 x float> %i.xo, i64 1 ; 4 uses
  %i.yy = fmul float %i.yx, %i.yx
  %i.yz = extractelement <2 x float> %i.xn, i64 1 ; 4 uses
  %i.za = tail call float @llvm.fmuladd.f32(float %i.yz, float %i.yz, float %i.yy)
  %i.zb = extractelement <2 x float> %i.xn, i64 0 ; 4 uses
  %i.zc = tail call float @llvm.fmuladd.f32(float %i.zb, float %i.zb, float %i.za)
  %sqrt.i190.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.zc) ; 5 uses
  %i.zd = fmul float %i.rx, %i.vr
  %i.ze = tail call float @llvm.sqrt.f32(float %i.zd)
  %i.zf = fdiv float %sqrt.i190.us.us.us.i.i, %i.ze ; 2 uses
  %i.zg = tail call noundef float @llvm.fabs.f32(float %i.zf)
  %i.zh = fcmp olt float %i.zg, 1.000000e+00
  br i1 %i.zh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.zi = tail call noundef float @asinf(float noundef %i.zf) #19, !noalias !80
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i.i191.us.us.us.i.i = phi float [ %i.zi, %bb.r ], [ f0x3FC90FDB, %bb.q ]
  %i.zj = uitofp nneg i32 %i.xi to float          ; 2 uses
  %i.zk = fmul float %.0.i.i191.us.us.us.i.i, %i.zj
  %i.zl = fdiv float %i.zk, %i.aj                 ; 2 uses
  %i.zm = tail call noundef float @sinf(float noundef %i.zl) #19, !noalias !80 ; 2 uses
  %i.zn = tail call noundef float @cosf(float noundef %i.zl) #19, !noalias !80 ; 3 uses
  %i.zo = fmul float %i.rf, %i.yx
  %i.zp = tail call float @llvm.fmuladd.f32(float %i.rj, float %i.yz, float %i.zo)
  %i.zq = tail call float @llvm.fmuladd.f32(float %i.ri, float %i.zb, float %i.zp)
  %i.zr = fdiv float %i.zq, %sqrt.i190.us.us.us.i.i ; 2 uses
  %i.zs = fpext float %i.zn to double
  %i.zt = fsub double 1.000000e+00, %i.zs         ; 2 uses
  %i.zu = fpext float %sqrt.i190.us.us.us.i.i to double ; 2 uses
  %i.zv = fneg <2 x float> %i.xp
  %i.zw = fmul float %i.yx, %i.zr
  %i.zx = fpext float %i.zw to double
  %i.zy = fmul double %i.zt, %i.zx
  %i.zz = fdiv double %i.zy, %i.zu
  %i.aaa = fmul float %i.rf, %i.zn
  %i.aab = fpext float %i.aaa to double
  %i.aac = fneg float %i.yz
  %i.aad = fmul float %i.ri, %i.aac
  %i.aae = tail call float @llvm.fmuladd.f32(float %i.zb, float %i.rj, float %i.aad)
  %i.aaf = fmul float %i.aae, %i.zm
  %i.aag = fneg float %i.qx
  %i.aah = fmul float %i.vd, %i.aag
  %i.aai = tail call float @llvm.fmuladd.f32(float %i.qy, float %i.uz, float %i.aah) ; 6 uses
  %i.aaj = fneg float %i.qz
  %i.aak = fmul float %i.uz, %i.aaj
  %i.aal = tail call float @llvm.fmuladd.f32(float %i.qx, float %i.vf, float %i.aak) ; 6 uses
  %i.aam = fneg float %i.qy
  %i.aan = fmul float %i.vf, %i.aam
  %i.aao = tail call float @llvm.fmuladd.f32(float %i.qz, float %i.vd, float %i.aan) ; 6 uses
  %i.aap = fadd double %i.zz, %i.aab
  %i.aaq = fdiv float %i.aaf, %sqrt.i190.us.us.us.i.i
  %i.aar = fpext float %i.aaq to double
  %i.aas = fadd double %i.aap, %i.aar
  %i.aat = fptrunc double %i.aas to float         ; 3 uses
  %i.aau = insertelement <2 x float> poison, float %i.zr, i64 0
  %i.aav = shufflevector <2 x float> %i.aau, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaw = fmul <2 x float> %i.xn, %i.aav
  %i.aax = fpext <2 x float> %i.aaw to <2 x double>
  %i.aay = insertelement <2 x double> poison, double %i.zt, i64 0
  %i.aaz = shufflevector <2 x double> %i.aay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aba = fmul <2 x double> %i.aaz, %i.aax
  %i.abb = insertelement <2 x double> poison, double %i.zu, i64 0
  %i.abc = shufflevector <2 x double> %i.abb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abd = fdiv <2 x double> %i.aba, %i.abc
  %i.abe = insertelement <2 x float> poison, float %i.zn, i64 0
  %i.abf = shufflevector <2 x float> %i.abe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abg = fmul <2 x float> %i.rd, %i.abf
  %i.abh = fpext <2 x float> %i.abg to <2 x double>
  %i.abi = fmul <2 x float> %i.ra, %i.zv
  %i.abj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xo, <2 x float> %i.rb, <2 x float> %i.abi)
  %i.abk = insertelement <2 x float> poison, float %i.zm, i64 0
  %i.abl = shufflevector <2 x float> %i.abk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abm = fmul <2 x float> %i.abj, %i.abl
  %i.abn = fadd <2 x double> %i.abd, %i.abh
  %i.abo = insertelement <2 x float> poison, float %sqrt.i190.us.us.us.i.i, i64 0
  %i.abp = shufflevector <2 x float> %i.abo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abq = fdiv <2 x float> %i.abm, %i.abp
  %i.abr = fpext <2 x float> %i.abq to <2 x double>
  %i.abs = fadd <2 x double> %i.abn, %i.abr
  %i.abt = fptrunc <2 x double> %i.abs to <2 x float> ; 3 uses
  %i.abu = fmul float %i.aat, %i.aat
  %i.abv = extractelement <2 x float> %i.abt, i64 1 ; 2 uses
  %i.abw = tail call float @llvm.fmuladd.f32(float %i.abv, float %i.abv, float %i.abu)
  %i.abx = extractelement <2 x float> %i.abt, i64 0 ; 2 uses
  %i.aby = tail call float @llvm.fmuladd.f32(float %i.abx, float %i.abx, float %i.abw)
  %sqrt95.i192.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.aby) ; 2 uses
  %i.abz = fdiv float %i.aat, %sqrt95.i192.us.us.us.i.i ; 4 uses
  %i.aca = insertelement <2 x float> poison, float %sqrt95.i192.us.us.us.i.i, i64 0
  %i.acb = shufflevector <2 x float> %i.aca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acc = fdiv <2 x float> %i.abt, %i.acb        ; 4 uses
  %i.acd = fmul float %i.aal, %i.aal
  %i.ace = tail call float @llvm.fmuladd.f32(float %i.aai, float %i.aai, float %i.acd)
  %i.acf = tail call float @llvm.fmuladd.f32(float %i.aao, float %i.aao, float %i.ace)
  %i.acg = tail call float @llvm.sqrt.f32(float %i.acf) ; 5 uses
  %i.ach = fdiv float %i.acg, %i.vt               ; 2 uses
  %i.aci = tail call noundef float @llvm.fabs.f32(float %i.ach)
  %i.acj = fcmp olt float %i.aci, 1.000000e+00
  br i1 %i.acj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ack = tail call noundef float @asinf(float noundef %i.ach) #19, !noalias !80
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i.i195.us.us.us.i.i = phi float [ %i.ack, %bb.t ], [ f0x3FC90FDB, %bb.s ]
  %i.acl = fmul float %.0.i.i195.us.us.us.i.i, %i.zj
  %i.acm = fdiv float %i.acl, %i.aj               ; 2 uses
  %i.acn = tail call noundef float @sinf(float noundef %i.acm) #19, !noalias !80 ; 2 uses
  %i.aco = tail call noundef float @cosf(float noundef %i.acm) #19, !noalias !80 ; 3 uses
  %i.acp = fmul float %i.qy, %i.aal
  %i.acq = tail call float @llvm.fmuladd.f32(float %i.qz, float %i.aai, float %i.acp)
  %i.acr = tail call float @llvm.fmuladd.f32(float %i.qx, float %i.aao, float %i.acq)
  %i.acs = fdiv float %i.acr, %i.acg              ; 3 uses
  %i.act = fmul float %i.aai, %i.acs
  %i.acu = fpext float %i.act to double
  %i.acv = fpext float %i.aco to double
  %i.acw = fsub double 1.000000e+00, %i.acv       ; 3 uses
  %i.acx = fpext float %i.acg to double           ; 2 uses
  %i.acy = fneg float %i.aao
  %i.acz = fmul float %i.qy, %i.acy
  %i.ada = fmul float %i.aal, %i.acs
  %i.adb = fpext float %i.ada to double
  %i.adc = fneg float %i.aai
  %i.add = fmul float %i.qx, %i.adc
  %i.ade = fmul float %i.aao, %i.acs
  %i.adf = fpext float %i.ade to double
  %i.adg = fmul double %i.acw, %i.adf
  %i.adh = fdiv double %i.adg, %i.acx
  %i.adi = fmul float %i.qx, %i.aco
  %i.adj = fpext float %i.adi to double
  %i.adk = fneg float %i.aal
  %i.adl = fmul float %i.qz, %i.adk
  %i.adm = tail call float @llvm.fmuladd.f32(float %i.aai, float %i.qy, float %i.adl)
  %i.adn = fmul float %i.adm, %i.acn
  %i.ado = fmul double %i.acw, %i.acu
  %i.adp = tail call float @llvm.fmuladd.f32(float %i.aal, float %i.qx, float %i.acz)
  %i.adq = fmul double %i.acw, %i.adb
  %i.adr = insertelement <2 x double> poison, double %i.ado, i64 0
  %i.ads = insertelement <2 x double> %i.adr, double %i.adq, i64 1
  %i.adt = insertelement <2 x double> poison, double %i.acx, i64 0
  %i.adu = shufflevector <2 x double> %i.adt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adv = fdiv <2 x double> %i.ads, %i.adu
  %i.adw = insertelement <2 x float> poison, float %i.aco, i64 0
  %i.adx = shufflevector <2 x float> %i.adw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ady = fmul <2 x float> %i.qw, %i.adx
  %i.adz = fpext <2 x float> %i.ady to <2 x double>
  %i.aea = fadd <2 x double> %i.adv, %i.adz
  %i.aeb = tail call float @llvm.fmuladd.f32(float %i.aao, float %i.qz, float %i.add)
  %i.aec = insertelement <2 x float> poison, float %i.adp, i64 0
  %i.aed = insertelement <2 x float> %i.aec, float %i.aeb, i64 1
  %i.aee = insertelement <2 x float> poison, float %i.acn, i64 0
  %i.aef = shufflevector <2 x float> %i.aee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeg = fmul <2 x float> %i.aed, %i.aef
  %i.aeh = insertelement <2 x float> poison, float %i.acg, i64 0
  %i.aei = shufflevector <2 x float> %i.aeh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aej = fdiv <2 x float> %i.aeg, %i.aei
  %i.aek = fpext <2 x float> %i.aej to <2 x double>
  %i.ael = fadd <2 x double> %i.aea, %i.aek       ; 2 uses
  %i.aem = fptrunc <2 x double> %i.ael to <2 x float> ; 2 uses
  %i.aen = fadd double %i.adh, %i.adj
  %i.aeo = fdiv float %i.adn, %i.acg
  %i.aep = fpext float %i.aeo to double
  %i.aeq = fadd double %i.aen, %i.aep
  %i.aer = shufflevector <2 x double> %i.ael, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aes = insertelement <2 x double> %i.aer, double %i.aeq, i64 1
  %i.aet = fptrunc <2 x double> %i.aes to <2 x float> ; 4 uses
  %foldExtExtBinop60 = fmul <2 x float> %i.aet, %i.aet
  %i.aeu = extractelement <2 x float> %foldExtExtBinop60, i64 0
  %i.aev = extractelement <2 x float> %i.aem, i64 0 ; 2 uses
  %i.aew = tail call float @llvm.fmuladd.f32(float %i.aev, float %i.aev, float %i.aeu)
  %i.aex = extractelement <2 x float> %i.aet, i64 1 ; 2 uses
  %i.aey = tail call float @llvm.fmuladd.f32(float %i.aex, float %i.aex, float %i.aew)
  %sqrt95.i196.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.aey)
  %i.aez = insertelement <2 x float> poison, float %sqrt95.i196.us.us.us.i.i, i64 0
  %i.afa = shufflevector <2 x float> %i.aez, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afb = fdiv <2 x float> %i.aem, %i.afa        ; 3 uses
  %i.afc = fdiv <2 x float> %i.aet, %i.afa        ; 6 uses
  br i1 %4, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.afd = tail call noundef float @asinf(float noundef %2) #19, !noalias !80
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i.i199.us.us.us.i.i = phi float [ %i.afd, %bb.v ], [ f0x3FC90FDB, %bb.u ]
  %i.afe = fmul float %.0.i.i199.us.us.us.i.i, %i.sh
  %i.aff = fdiv float %i.afe, %i.nv               ; 2 uses
  %i.afg = tail call noundef float @sinf(float noundef %i.aff) #19, !noalias !80 ; 2 uses
  %i.afh = tail call noundef float @cosf(float noundef %i.aff) #19, !noalias !80 ; 3 uses
  %i.afi = fpext float %i.afh to double
  %i.afj = fsub double 1.000000e+00, %i.afi       ; 2 uses
  %i.afk = fmul double %i.afj, %i.qm
  %i.afl = fdiv double %i.afk, %i.qd
  %i.afm = fmul float %i.pb, %i.afh
  %i.afn = fpext float %i.afm to double
  %i.afo = fadd double %i.afl, %i.afn
  %i.afp = fmul float %i.qp, %i.afg
  %i.afq = fdiv float %i.afp, %sqrt.i198.us.us.us.i.i
  %i.afr = fpext float %i.afq to double
  %i.afs = fadd double %i.afo, %i.afr
  %i.aft = sub nuw nsw i32 %.fr.i.i, %.0267.us.us.us.i.i
  %i.afu = extractelement <2 x float> %i.yw, i64 1 ; 7 uses
  %i.afv = fneg float %i.afu
  %i.afw = extractelement <2 x float> %i.yt, i64 0 ; 7 uses
  %i.afx = fneg float %i.afw
  %i.afy = extractelement <2 x float> %i.yw, i64 0 ; 4 uses
  %i.afz = fneg float %i.afy
  %i.aga = insertelement <2 x double> poison, double %i.afj, i64 0
  %i.agb = shufflevector <2 x double> %i.aga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agc = fmul <2 x double> %i.agb, %i.qh
  %i.agd = fdiv <2 x double> %i.agc, %i.qr
  %i.age = insertelement <2 x float> poison, float %i.afh, i64 0
  %i.agf = shufflevector <2 x float> %i.age, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agg = fmul <2 x float> %i.ox, %i.agf
  %i.agh = fpext <2 x float> %i.agg to <2 x double>
  %i.agi = fadd <2 x double> %i.agd, %i.agh
  %i.agj = insertelement <2 x float> poison, float %i.afg, i64 0
  %i.agk = shufflevector <2 x float> %i.agj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agl = fmul <2 x float> %i.qt, %i.agk
  %i.agm = fdiv <2 x float> %i.agl, %i.qv
  %i.agn = fpext <2 x float> %i.agm to <2 x double>
  %i.ago = fadd <2 x double> %i.agi, %i.agn
  %i.agp = fptrunc <2 x double> %i.ago to <2 x float> ; 4 uses
  %i.agq = fptrunc double %i.afs to float         ; 3 uses
  %foldExtExtBinop62 = fmul <2 x float> %i.agp, %i.agp
  %i.agr = extractelement <2 x float> %foldExtExtBinop62, i64 1
  %i.ags = extractelement <2 x float> %i.agp, i64 0 ; 2 uses
  %i.agt = tail call float @llvm.fmuladd.f32(float %i.ags, float %i.ags, float %i.agr)
  %i.agu = tail call float @llvm.fmuladd.f32(float %i.agq, float %i.agq, float %i.agt)
  %sqrt95.i200.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.agu) ; 2 uses
  %i.agv = insertelement <2 x float> poison, float %sqrt95.i200.us.us.us.i.i, i64 0
  %i.agw = shufflevector <2 x float> %i.agv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agx = fdiv <2 x float> %i.agp, %i.agw
  %i.agy = fdiv float %i.agq, %sqrt95.i200.us.us.us.i.i
  %i.agz = fmul float %i.uu, %i.afv
  %i.aha = extractelement <2 x float> %i.ux, i64 0 ; 3 uses
  %i.ahb = fmul float %i.aha, %i.afx
  %i.ahc = insertelement <2 x float> poison, float %i.agz, i64 0
  %i.ahd = insertelement <2 x float> %i.ahc, float %i.ahb, i64 1
  %i.ahe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yw, <2 x float> %i.ux, <2 x float> %i.ahd) ; 3 uses
  %i.ahf = extractelement <2 x float> %i.ux, i64 1 ; 3 uses
  %i.ahg = fmul float %i.ahf, %i.afz
  %i.ahh = tail call float @llvm.fmuladd.f32(float %i.afw, float %i.uu, float %i.ahg) ; 6 uses
  %i.ahi = extractelement <2 x float> %i.ahe, i64 1 ; 5 uses
  %i.ahj = fmul float %i.ahi, %i.ahi
  %i.ahk = extractelement <2 x float> %i.ahe, i64 0 ; 5 uses
  %i.ahl = tail call float @llvm.fmuladd.f32(float %i.ahk, float %i.ahk, float %i.ahj)
  %i.ahm = tail call float @llvm.fmuladd.f32(float %i.ahh, float %i.ahh, float %i.ahl)
  %sqrt.i202.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.ahm) ; 5 uses
  %foldExtExtBinop64 = fmul <2 x float> %i.yw, %i.yw
  %i.ahn = extractelement <2 x float> %foldExtExtBinop64, i64 0
  %i.aho = tail call float @llvm.fmuladd.f32(float %i.afw, float %i.afw, float %i.ahn)
  %i.ahp = tail call float @llvm.fmuladd.f32(float %i.afu, float %i.afu, float %i.aho)
  %i.ahq = fmul float %i.uu, %i.uu
  %i.ahr = tail call float @llvm.fmuladd.f32(float %i.ahf, float %i.ahf, float %i.ahq)
  %i.ahs = tail call float @llvm.fmuladd.f32(float %i.aha, float %i.aha, float %i.ahr)
  %i.aht = fmul float %i.ahs, %i.ahp
  %i.ahu = tail call float @llvm.sqrt.f32(float %i.aht)
  %i.ahv = fdiv float %sqrt.i202.us.us.us.i.i, %i.ahu ; 2 uses
  %i.ahw = tail call noundef float @llvm.fabs.f32(float %i.ahv)
  %i.ahx = fcmp olt float %i.ahw, 1.000000e+00
  br i1 %i.ahx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ahy = tail call noundef float @asinf(float noundef %i.ahv) #19, !noalias !80
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i.i203.us.us.us.i.i = phi float [ %i.ahy, %bb.x ], [ f0x3FC90FDB, %bb.w ]
  %i.ahz = fmul float %.0.i.i203.us.us.us.i.i, %i.it
  %i.aia = uitofp nneg i32 %i.aft to float
  %i.aib = fdiv float %i.ahz, %i.aia              ; 2 uses
  %i.aic = tail call noundef float @sinf(float noundef %i.aib) #19, !noalias !80 ; 2 uses
  %i.aid = tail call noundef float @cosf(float noundef %i.aib) #19, !noalias !80 ; 3 uses
  %i.aie = fmul float %i.afy, %i.ahi
  %i.aif = tail call float @llvm.fmuladd.f32(float %i.afw, float %i.ahk, float %i.aie)
  %i.aig = tail call float @llvm.fmuladd.f32(float %i.afu, float %i.ahh, float %i.aif)
  %i.aih = fdiv float %i.aig, %sqrt.i202.us.us.us.i.i ; 2 uses
  %i.aii = fpext float %i.aid to double
  %i.aij = fsub double 1.000000e+00, %i.aii       ; 2 uses
  %i.aik = fpext float %sqrt.i202.us.us.us.i.i to double ; 2 uses
  %i.ail = fneg float %i.ahh
  %i.aim = fneg float %i.ahk
  %i.ain = fmul float %i.ahh, %i.aih
  %i.aio = fpext float %i.ain to double
  %i.aip = fmul double %i.aij, %i.aio
  %i.aiq = fdiv double %i.aip, %i.aik
  %i.air = fmul float %i.afu, %i.aid
  %i.ais = fpext float %i.air to double
  %i.ait = fadd double %i.aiq, %i.ais
  %i.aiu = fneg float %i.ahi
  %i.aiv = fmul float %i.afw, %i.aiu
  %i.aiw = tail call float @llvm.fmuladd.f32(float %i.ahk, float %i.afy, float %i.aiv)
  %i.aix = fmul float %i.aiw, %i.aic
  %i.aiy = fdiv float %i.aix, %sqrt.i202.us.us.us.i.i
  %i.aiz = fpext float %i.aiy to double
  %i.aja = fadd double %i.ait, %i.aiz
  %i.ajb = add nuw nsw i32 %.0267.us.us.us.i.i, %.0153269.us.us.us.i.i
  %i.ajc = shufflevector <2 x float> %i.afc, <2 x float> %i.afb, <2 x i32> <i32 1, i32 2>
  %i.ajd = fneg <2 x float> %i.ajc
  %i.aje = extractelement <2 x float> %i.afc, i64 0 ; 4 uses
  %i.ajf = fneg float %i.aje
  %i.ajg = fmul float %i.afy, %i.ail
  %i.ajh = tail call float @llvm.fmuladd.f32(float %i.ahi, float %i.afu, float %i.ajg)
  %i.aji = insertelement <2 x float> poison, float %i.aih, i64 0
  %i.ajj = shufflevector <2 x float> %i.aji, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajk = fmul <2 x float> %i.ahe, %i.ajj
  %i.ajl = fpext <2 x float> %i.ajk to <2 x double>
  %i.ajm = insertelement <2 x double> poison, double %i.aij, i64 0
  %i.ajn = shufflevector <2 x double> %i.ajm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajo = fmul <2 x double> %i.ajn, %i.ajl
  %i.ajp = insertelement <2 x double> poison, double %i.aik, i64 0
  %i.ajq = shufflevector <2 x double> %i.ajp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajr = fdiv <2 x double> %i.ajo, %i.ajq
  %i.ajs = insertelement <2 x float> poison, float %i.aid, i64 0
  %i.ajt = shufflevector <2 x float> %i.ajs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aju = fmul <2 x float> %i.yt, %i.ajt
  %i.ajv = fpext <2 x float> %i.aju to <2 x double>
  %i.ajw = fadd <2 x double> %i.ajr, %i.ajv
  %i.ajx = fmul float %i.afu, %i.aim
  %i.ajy = tail call float @llvm.fmuladd.f32(float %i.ahh, float %i.afw, float %i.ajx)
  %i.ajz = insertelement <2 x float> poison, float %i.ajh, i64 0
  %i.aka = insertelement <2 x float> %i.ajz, float %i.ajy, i64 1
  %i.akb = insertelement <2 x float> poison, float %i.aic, i64 0
  %i.akc = shufflevector <2 x float> %i.akb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akd = fmul <2 x float> %i.aka, %i.akc
  %i.ake = insertelement <2 x float> poison, float %sqrt.i202.us.us.us.i.i, i64 0
  %i.akf = shufflevector <2 x float> %i.ake, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akg = fdiv <2 x float> %i.akd, %i.akf
  %i.akh = fpext <2 x float> %i.akg to <2 x double>
  %i.aki = fadd <2 x double> %i.ajw, %i.akh
  %i.akj = fptrunc <2 x double> %i.aki to <2 x float> ; 4 uses
  %i.akk = fptrunc double %i.aja to float         ; 3 uses
  %foldExtExtBinop66 = fmul <2 x float> %i.akj, %i.akj
  %i.akl = extractelement <2 x float> %foldExtExtBinop66, i64 1
  %i.akm = extractelement <2 x float> %i.akj, i64 0 ; 2 uses
  %i.akn = tail call float @llvm.fmuladd.f32(float %i.akm, float %i.akm, float %i.akl)
  %i.ako = tail call float @llvm.fmuladd.f32(float %i.akk, float %i.akk, float %i.akn)
  %sqrt95.i204.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.ako) ; 2 uses
  %i.akp = insertelement <2 x float> poison, float %sqrt95.i204.us.us.us.i.i, i64 0
  %i.akq = shufflevector <2 x float> %i.akp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akr = fdiv <2 x float> %i.akj, %i.akq
  %i.aks = fdiv float %i.akk, %sqrt95.i204.us.us.us.i.i
  %i.akt = shufflevector <2 x float> %i.acc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aku = insertelement <2 x float> %i.akt, float %i.abz, i64 0
  %i.akv = fmul <2 x float> %i.aku, %i.ajd
  %i.akw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afc, <2 x float> %i.acc, <2 x float> %i.akv) ; 3 uses
  %i.akx = extractelement <2 x float> %i.acc, i64 1 ; 3 uses
  %i.aky = fmul float %i.akx, %i.ajf
  %i.akz = extractelement <2 x float> %i.afb, i64 0 ; 6 uses
  %i.ala = tail call float @llvm.fmuladd.f32(float %i.akz, float %i.abz, float %i.aky) ; 6 uses
  %i.alb = extractelement <2 x float> %i.akw, i64 1 ; 5 uses
  %i.alc = fmul float %i.alb, %i.alb
  %i.ald = extractelement <2 x float> %i.akw, i64 0 ; 5 uses
  %i.ale = tail call float @llvm.fmuladd.f32(float %i.ald, float %i.ald, float %i.alc)
  %i.alf = tail call float @llvm.fmuladd.f32(float %i.ala, float %i.ala, float %i.ale)
  %sqrt.i206.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.alf) ; 5 uses
  %foldExtExtBinop68 = fmul <2 x float> %i.afc, %i.afc
  %i.alg = extractelement <2 x float> %foldExtExtBinop68, i64 0
  %i.alh = tail call float @llvm.fmuladd.f32(float %i.akz, float %i.akz, float %i.alg)
  %i.ali = extractelement <2 x float> %i.afc, i64 1 ; 6 uses
  %i.alj = tail call float @llvm.fmuladd.f32(float %i.ali, float %i.ali, float %i.alh)
  %i.alk = fmul float %i.abz, %i.abz
  %i.all = tail call float @llvm.fmuladd.f32(float %i.akx, float %i.akx, float %i.alk)
  %i.alm = extractelement <2 x float> %i.acc, i64 0 ; 2 uses
  %i.aln = tail call float @llvm.fmuladd.f32(float %i.alm, float %i.alm, float %i.all)
  %i.alo = fmul float %i.aln, %i.alj
  %i.alp = tail call float @llvm.sqrt.f32(float %i.alo)
  %i.alq = fdiv float %sqrt.i206.us.us.us.i.i, %i.alp ; 2 uses
  %i.alr = tail call noundef float @llvm.fabs.f32(float %i.alq)
  %i.als = fcmp olt float %i.alr, 1.000000e+00
  br i1 %i.als, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.alt = tail call noundef float @asinf(float noundef %i.alq) #19, !noalias !80
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i.i207.us.us.us.i.i = phi float [ %i.alt, %bb.z ], [ f0x3FC90FDB, %bb.y ]
  %i.alu = fmul float %.0.i.i207.us.us.us.i.i, %i.it
  %i.alv = uitofp nneg i32 %i.ajb to float
  %i.alw = fdiv float %i.alu, %i.alv              ; 2 uses
  %i.alx = tail call noundef float @sinf(float noundef %i.alw) #19, !noalias !80 ; 2 uses
  %i.aly = tail call noundef float @cosf(float noundef %i.alw) #19, !noalias !80 ; 3 uses
  %i.alz = fmul float %i.aje, %i.alb
  %i.ama = tail call float @llvm.fmuladd.f32(float %i.akz, float %i.ald, float %i.alz)
  %i.amb = tail call float @llvm.fmuladd.f32(float %i.ali, float %i.ala, float %i.ama)
  %i.amc = fdiv float %i.amb, %sqrt.i206.us.us.us.i.i ; 2 uses
  %i.amd = fpext float %i.aly to double
  %i.ame = fsub double 1.000000e+00, %i.amd       ; 2 uses
  %i.amf = fpext float %sqrt.i206.us.us.us.i.i to double ; 2 uses
  %i.amg = fneg float %i.ala
  %i.amh = fneg float %i.ald
  %i.ami = fmul float %i.ala, %i.amc
  %i.amj = fpext float %i.ami to double
  %i.amk = fmul double %i.ame, %i.amj
  %i.aml = fdiv double %i.amk, %i.amf
  %i.amm = fmul float %i.ali, %i.aly
  %i.amn = fpext float %i.amm to double
  %i.amo = fadd double %i.aml, %i.amn
  %i.amp = fneg float %i.alb
  %i.amq = fmul float %i.akz, %i.amp
  %i.amr = tail call float @llvm.fmuladd.f32(float %i.ald, float %i.aje, float %i.amq)
  %i.ams = fmul float %i.amr, %i.alx
  %i.amt = fdiv float %i.ams, %sqrt.i206.us.us.us.i.i
  %i.amu = fpext float %i.amt to double
  %i.amv = fadd double %i.amo, %i.amu
  %i.amw = fptrunc double %i.amv to float         ; 3 uses
  %i.amx = fadd <2 x float> %i.agx, %i.akr
  %i.amy = fadd float %i.agy, %i.aks
  %.idx339.i.i = mul i64 %indvars.iv301.i.i, 12
  %i.amz = getelementptr i8, ptr %i.aa, i64 %.idx339.i.i ; 2 uses
  %i.ana = fmul float %i.aje, %i.amg
  %i.anb = tail call float @llvm.fmuladd.f32(float %i.alb, float %i.ali, float %i.ana)
  %i.anc = insertelement <2 x float> poison, float %i.amc, i64 0
  %i.and = shufflevector <2 x float> %i.anc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ane = fmul <2 x float> %i.akw, %i.and
  %i.anf = fpext <2 x float> %i.ane to <2 x double>
  %i.ang = insertelement <2 x double> poison, double %i.ame, i64 0
  %i.anh = shufflevector <2 x double> %i.ang, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ani = fmul <2 x double> %i.anh, %i.anf
  %i.anj = insertelement <2 x double> poison, double %i.amf, i64 0
  %i.ank = shufflevector <2 x double> %i.anj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.anl = fdiv <2 x double> %i.ani, %i.ank
  %i.anm = insertelement <2 x float> poison, float %i.aly, i64 0
  %i.ann = shufflevector <2 x float> %i.anm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ano = fmul <2 x float> %i.afb, %i.ann
  %i.anp = fpext <2 x float> %i.ano to <2 x double>
  %i.anq = fadd <2 x double> %i.anl, %i.anp
  %i.anr = fmul float %i.ali, %i.amh
  %i.ans = tail call float @llvm.fmuladd.f32(float %i.ala, float %i.akz, float %i.anr)
  %i.ant = insertelement <2 x float> poison, float %i.anb, i64 0
  %i.anu = insertelement <2 x float> %i.ant, float %i.ans, i64 1
  %i.anv = insertelement <2 x float> poison, float %i.alx, i64 0
  %i.anw = shufflevector <2 x float> %i.anv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anx = fmul <2 x float> %i.anu, %i.anw
  %i.any = insertelement <2 x float> poison, float %sqrt.i206.us.us.us.i.i, i64 0
  %i.anz = shufflevector <2 x float> %i.any, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aoa = fdiv <2 x float> %i.anx, %i.anz
  %i.aob = fpext <2 x float> %i.aoa to <2 x double>
  %i.aoc = fadd <2 x double> %i.anq, %i.aob
  %i.aod = fptrunc <2 x double> %i.aoc to <2 x float> ; 4 uses
  %foldExtExtBinop70 = fmul <2 x float> %i.aod, %i.aod
  %i.aoe = extractelement <2 x float> %foldExtExtBinop70, i64 1
  %i.aof = extractelement <2 x float> %i.aod, i64 0 ; 2 uses
  %i.aog = tail call float @llvm.fmuladd.f32(float %i.aof, float %i.aof, float %i.aoe)
  %i.aoh = tail call float @llvm.fmuladd.f32(float %i.amw, float %i.amw, float %i.aog)
  %sqrt95.i208.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.aoh) ; 2 uses
  %i.aoi = insertelement <2 x float> poison, float %sqrt95.i208.us.us.us.i.i, i64 0
  %i.aoj = shufflevector <2 x float> %i.aoi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aok = fdiv <2 x float> %i.aod, %i.aoj
  %i.aol = fdiv float %i.amw, %sqrt95.i208.us.us.us.i.i
  %i.aom = fadd <2 x float> %i.amx, %i.aok        ; 4 uses
  %i.aon = fadd float %i.amy, %i.aol              ; 3 uses
  %foldExtExtBinop72 = fmul <2 x float> %i.aom, %i.aom
  %i.aoo = extractelement <2 x float> %foldExtExtBinop72, i64 1
  %i.aop = extractelement <2 x float> %i.aom, i64 0 ; 2 uses
  %i.aoq = tail call float @llvm.fmuladd.f32(float %i.aop, float %i.aop, float %i.aoo)
  %i.aor = tail call float @llvm.fmuladd.f32(float %i.aon, float %i.aon, float %i.aoq)
  %sqrt.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.aor) ; 2 uses
  %i.aos = insertelement <2 x float> poison, float %sqrt.us.us.us.i.i, i64 0
  %i.aot = shufflevector <2 x float> %i.aos, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aou = fdiv <2 x float> %i.aom, %i.aot
  store <2 x float> %i.aou, ptr %i.amz, align 4, !tbaa !18, !noalias !80
  %i.aov = fdiv float %i.aon, %sqrt.us.us.us.i.i
  %i.aow = getelementptr i8, ptr %i.amz, i64 8
  store float %i.aov, ptr %i.aow, align 4, !tbaa !18, !noalias !80
  %indvars.iv.next302.i.i = add nsw i64 %indvars.iv301.i.i, 1 ; 3 uses
  %i.aox = add nuw nsw i32 %.0267.us.us.us.i.i, 1 ; 2 uses
  %exitcond306.not.i.i = icmp eq i32 %i.aox, %indvars.iv304.i.i
  br i1 %exitcond306.not.i.i, label %._crit_edge.us.us.us.loopexit.i.i, label %bb.m, !llvm.loop !56

._crit_edge.us.us.us.loopexit.i.i:                ; preds = %bb.aa
  %i.aoy = add nuw nsw i32 %.0153269.us.us.us.i.i, 1 ; 2 uses
  %indvars.iv.next305.i.i = add nsw i32 %indvars.iv304.i.i, -1
  %exitcond307.not.i.i = icmp eq i32 %i.aoy, %i.ff
  br i1 %exitcond307.not.i.i, label %..loopexit_crit_edge.us.us.us.i.i.loopexit, label %.preheader.us.us.us.i.i, !llvm.loop !57

..loopexit_crit_edge.us.us.us.i.i.loopexit:       ; preds = %._crit_edge.us.us.us.loopexit.i.i
  %i.aoz = trunc nsw i64 %indvars.iv.next302.i.i to i32
  br label %..loopexit_crit_edge.us.us.us.i.i

..loopexit_crit_edge.us.us.us.i.i:                ; preds = %..loopexit_crit_edge.us.us.us.i.i.loopexit, %bb.i, %.lr.ph275.us.us.i.i
  %.9.us.us.us.i.i = phi i32 [ %.6273.us.us.us.i.i, %.lr.ph275.us.us.i.i ], [ %.6273.us.us.us.i.i, %bb.i ], [ %i.aoz, %..loopexit_crit_edge.us.us.us.i.i.loopexit ] ; 2 uses
  %exitcond315.not.i.i = icmp eq i64 %indvars.iv.next313.i.i, 11
  br i1 %exitcond315.not.i.i, label %.loopexit249.us.us.i.i, label %.lr.ph275.us.us.i.i, !llvm.loop !58

.loopexit249.us.us.i.i:                           ; preds = %..loopexit_crit_edge.us.us.us.i.i, %bb.h
  %.10.us.us.i.i = phi i32 [ %.5278.us.us.i.i, %bb.h ], [ %.9.us.us.us.i.i, %..loopexit_crit_edge.us.us.us.i.i ] ; 2 uses
  %indvars.iv.next311.i.i = add nuw nsw i64 %indvars.iv310.i.i.a, 1 ; 2 uses
  %exitcond317.not.i.i = icmp eq i64 %indvars.iv.next311.i.i, 11
  br i1 %exitcond317.not.i.i, label %.loopexit250.us.i.i, label %bb.h, !llvm.loop !59

.loopexit250.us.i.i:                              ; preds = %.loopexit249.us.us.i.i
  %indvars.iv.next319.i.i = add nuw nsw i64 %indvars.iv318.i.i, 1 ; 2 uses
  %indvars.iv.next309.i.i = add nuw nsw i64 %indvars.iv308.i.i, 1
  %exitcond321.not.i.i = icmp eq i64 %indvars.iv.next319.i.i, 10
  br i1 %exitcond321.not.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %.lr.ph.us.i.i, !llvm.loop !60

bb.ab:                                            ; preds = %_ZL9unsp_typei.exit.i
  %i.apa = fdiv double %i.n, 3.000000e+01
  %i.apb = tail call double @sqrt(double noundef %i.apa) #19, !noalias !82
  %i.apc = fptrunc double %i.apb to float
  %i.apd = tail call noundef float @llvm.ceil.f32(float %i.apc)
  %i.ape = fptosi float %i.apd to i32
  %.fr.i128.i = freeze i32 %i.ape                 ; 4 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %.fr.i128.i, i32 1) ; 6 uses
  %i.apf = mul nuw nsw i32 %.sroa.speculated.i.i, 30
  %i.apg = mul nuw nsw i32 %i.apf, %.sroa.speculated.i.i
  %i.aph = add nuw nsw i32 %i.apg, 2              ; 2 uses
  %.not.i129.i = icmp slt i32 %i.aph, %1
  br i1 %.not.i129.i, label %.invoke.i, label %.noexc148.i

.invoke.i:                                        ; preds = %bb.ab, %bb.c
  %i.api = phi ptr [ @"__PRETTY_FUNCTION__._ZZL11ico_dot_arciENK3$_0clEv", %bb.c ], [ @"__PRETTY_FUNCTION__._ZZL11ico_dot_dodiENK3$_0clEv", %bb.ab ]
  %i.apj = phi i32 [ 164, %bb.c ], [ 345, %bb.ab ]
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.api, ptr noundef nonnull @.str.2, i32 noundef %i.apj) #20, !noalias !81
  unreachable

.noexc148.i:                                      ; preds = %bb.ab
  %i.apk = mul nuw nsw i32 %i.aph, 3
  %i.apl = zext nneg i32 %i.apk to i64            ; 2 uses
  %i.apm = shl nuw nsw i64 %i.apl, 2              ; 3 uses
  %i.apn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apm) #17, !noalias !81 ; 22 uses
  %i.apo = getelementptr i8, ptr %i.apn, i64 4
  %.idx.i.i.i.i.i.i.i.i130.i = add nsw i64 %i.apm, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.apo, i8 0, i64 %.idx.i.i.i.i.i.i.i.i130.i, i1 false), !tbaa !18, !noalias !82
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float f0x3E8D8368, float f0x3F59C441, float f0x3EE4F92C, float f0xBF393E4D, float f0x3F069650>, ptr %i.apn, align 4, !tbaa !18, !noalias !82
  %i.app = getelementptr inbounds nuw i8, ptr %i.apn, i64 32
  store <8 x float> <float f0x3EE4F92C, float f0xBF393E4B, float f0xBF069652, float f0x3EE4F92C, float f0x3E8D836D, float f0xBF59C440, float f0x3EE4F92C, float f0x3F64F92F>, ptr %i.app, align 4, !tbaa !18, !noalias !82
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apn, i64 64
  store <8 x float> <float 0.000000e+00, float f0x3EE4F92C, float f0x3F393E4C, float f0x3F069651, float f0xBEE4F92C, float f0xBE8D836B, float f0x3F59C441, float f0xBEE4F92C>, ptr %i.apq, align 4, !tbaa !18, !noalias !82
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apn, i64 96
  store <8 x float> <float f0xBF64F92F, float 0.000000e+00, float f0xBEE4F92C, float f0xBE8D8366, float f0xBF59C442, float f0xBEE4F92C, float f0x3F393E4E, float -5.257310e-01>, ptr %i.apr, align 4, !tbaa !18, !noalias !82
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apn, i64 128
  store <4 x float> <float f0xBEE4F92C, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.aps, align 4, !tbaa !18, !noalias !82
  br label %.lr.ph370.i.i

.loopexit364.i.i:                                 ; preds = %.loopexit363.i.i
  %indvars.iv.next418.i.i = add nuw nsw i64 %indvars.iv417.i.i, 1 ; 2 uses
  %indvars.iv.next.i133.i = add nuw nsw i64 %indvars.iv.i131.i, 1
  %exitcond420.not.i.i = icmp eq i64 %indvars.iv.next418.i.i, 10
  br i1 %exitcond420.not.i.i, label %bb.ac, label %.lr.ph370.i.i, !llvm.loop !63

bb.ac:                                            ; preds = %.loopexit364.i.i
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %i.apn, i64 %i.apl ; 3 uses
  %i.apu = getelementptr i8, ptr %i.apn, i64 %i.apm ; 3 uses
  %i.apv = icmp sgt i32 %.fr.i128.i, 1
  br i1 %i.apv, label %.preheader361.split.us.preheader.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

.preheader361.split.us.preheader.i.i:             ; preds = %bb.ac
  %i.apw = uitofp nneg i32 %.sroa.speculated.i.i to float ; 7 uses
  br label %.preheader361.split.us.i.i

.preheader361.split.us.i.i:                       ; preds = %.loopexit360.us.i.loopexit.i, %.preheader361.split.us.preheader.i.i
  %indvars.iv425.i.i = phi i64 [ 0, %.preheader361.split.us.preheader.i.i ], [ %indvars.iv.next426.i.i, %.loopexit360.us.i.loopexit.i ] ; 4 uses
  %.0249382.us.i.i = phi i32 [ 32, %.preheader361.split.us.preheader.i.i ], [ %.3.us.us.i145.i, %.loopexit360.us.i.loopexit.i ]
  %i.apx = icmp samesign ult i64 %indvars.iv425.i.i, 12
  %spec.select.us.i.i = select i1 %i.apx, float f0x3ED2461B, float 5.092880e-01
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %indvars.iv425.i.i, i64 11)
  %.idx462.i.i = mul nuw nsw i64 %indvars.iv425.i.i, 12
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apn, i64 %.idx462.i.i ; 4 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 4 ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apy, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %..loopexit359_crit_edge.us.us.i.i, %.preheader361.split.us.i.i
  %indvars.iv427.in.i.i = phi i64 [ %indvars.iv427.i.i, %..loopexit359_crit_edge.us.us.i.i ], [ %umax.i.i, %.preheader361.split.us.i.i ] ; 2 uses
  %.1378.us.us.i.i = phi i32 [ %.3.us.us.i145.i, %..loopexit359_crit_edge.us.us.i.i ], [ %.0249382.us.i.i, %.preheader361.split.us.i.i ] ; 2 uses
  %indvars.iv427.i.i = add nuw nsw i64 %indvars.iv427.in.i.i, 1 ; 2 uses
  %i.aqb = load float, ptr %i.apy, align 4, !tbaa !18, !noalias !82
  %.idx463.i.i = mul nuw nsw i64 %indvars.iv427.i.i, 12
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apn, i64 %.idx463.i.i ; 4 uses
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !18, !noalias !82
  %i.aqe = fsub float %i.aqb, %i.aqd              ; 2 uses
  %i.aqf = load float, ptr %i.apz, align 4, !tbaa !18, !noalias !82
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqc, i64 4 ; 2 uses
  %i.aqh = load float, ptr %i.aqg, align 4, !tbaa !18, !noalias !82
  %i.aqi = fsub float %i.aqf, %i.aqh              ; 2 uses
  %i.aqj = load float, ptr %i.aqa, align 4, !tbaa !18, !noalias !82
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8
  %i.aql = load float, ptr %i.aqk, align 4, !tbaa !18, !noalias !82
  %i.aqm = fsub float %i.aqj, %i.aql              ; 2 uses
  %i.aqn = fmul float %i.aqi, %i.aqi
  %i.aqo = tail call float @llvm.fmuladd.f32(float %i.aqe, float %i.aqe, float %i.aqn)
  %i.aqp = tail call float @llvm.fmuladd.f32(float %i.aqm, float %i.aqm, float %i.aqo)
  %i.aqq = fsub float %spec.select.us.i.i, %i.aqp
  %i.aqr = tail call noundef float @llvm.fabs.f32(float %i.aqq)
  %i.aqs = fpext float %i.aqr to double
  %i.aqt = fcmp ogt double %i.aqs, 1.000000e-03
  br i1 %i.aqt, label %..loopexit359_crit_edge.us.us.i.i, label %.preheader358.us.us.preheader.i.i

.preheader358.us.us.preheader.i.i:                ; preds = %bb.ad
  %i.aqu = sext i32 %.1378.us.us.i.i to i64
  br label %.preheader358.us.us.i.i

.preheader358.us.us.i.i:                          ; preds = %bb.af, %.preheader358.us.us.preheader.i.i
  %indvars.iv421.i.i.a = phi i64 [ %i.aqu, %.preheader358.us.us.preheader.i.i ], [ %indvars.iv.next422.i.i.a, %bb.af ] ; 2 uses
  %.0245375.us.us.i.i = phi i32 [ 1, %.preheader358.us.us.preheader.i.i ], [ %i.aur, %bb.af ] ; 2 uses
  %.idx464.i.i = mul i64 %indvars.iv421.i.i.a, 12
  %i.aqv = getelementptr i8, ptr %i.apn, i64 %.idx464.i.i ; 2 uses
  %i.aqw = getelementptr i8, ptr %i.aqv, i64 8
  %i.aqx = load <2 x float>, ptr %i.apy, align 4, !tbaa !18, !noalias !82 ; 6 uses
  %i.aqy = load <2 x float>, ptr %i.apz, align 4, !tbaa !18, !noalias !82 ; 8 uses
  %i.aqz = load <2 x float>, ptr %i.aqc, align 4, !tbaa !18, !noalias !82 ; 4 uses
  %i.ara = load <2 x float>, ptr %i.aqg, align 4, !tbaa !18, !noalias !82 ; 5 uses
  %i.arb = shufflevector <2 x float> %i.aqy, <2 x float> %i.aqx, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.arc = fneg <2 x float> %i.arb
  %i.ard = fneg <2 x float> %i.aqx
  %i.are = fneg <2 x float> %i.aqy
  %i.arf = fmul <2 x float> %i.ara, %i.arc
  %i.arg = shufflevector <2 x float> %i.ara, <2 x float> %i.aqz, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.arh = fmul <2 x float> %i.arg, %i.ard
  %i.ari = fmul <2 x float> %i.aqz, %i.are
  %i.arj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqy, <2 x float> %i.arg, <2 x float> %i.arf) ; 3 uses
  %i.ark = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arb, <2 x float> %i.aqz, <2 x float> %i.arh) ; 2 uses
  %i.arl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqx, <2 x float> %i.ara, <2 x float> %i.ari)
  %i.arm = extractelement <2 x float> %i.arj, i64 1 ; 4 uses
  %i.arn = fmul float %i.arm, %i.arm
  %i.aro = extractelement <2 x float> %i.arj, i64 0 ; 4 uses
  %i.arp = tail call float @llvm.fmuladd.f32(float %i.aro, float %i.aro, float %i.arn)
  %i.arq = extractelement <2 x float> %i.ark, i64 1 ; 4 uses
  %i.arr = tail call float @llvm.fmuladd.f32(float %i.arq, float %i.arq, float %i.arp)
  %sqrt.i.us.us.i142.i = tail call float @llvm.sqrt.f32(float %i.arr) ; 5 uses
  %i.ars = shufflevector <2 x float> %i.aqy, <2 x float> %i.ara, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.art = fmul <2 x float> %i.ars, %i.ars
  %i.aru = shufflevector <2 x float> %i.aqx, <2 x float> %i.aqz, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.arv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aru, <2 x float> %i.aru, <2 x float> %i.art)
  %i.arw = shufflevector <2 x float> %i.aqy, <2 x float> %i.ara, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.arx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arw, <2 x float> %i.arw, <2 x float> %i.arv) ; 2 uses
  %shift74 = shufflevector <2 x float> %i.arx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop75 = fmul <2 x float> %i.arx, %shift74
  %i.ary = extractelement <2 x float> %foldExtExtBinop75, i64 0
  %i.arz = tail call float @llvm.sqrt.f32(float %i.ary)
  %i.asa = fdiv float %sqrt.i.us.us.i142.i, %i.arz ; 2 uses
  %i.asb = tail call noundef float @llvm.fabs.f32(float %i.asa)
  %i.asc = fcmp olt float %i.asb, 1.000000e+00
  br i1 %i.asc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.preheader358.us.us.i.i
  %i.asd = tail call noundef float @asinf(float noundef %i.asa) #19, !noalias !82
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.preheader358.us.us.i.i
  %.0.i.i.us.us.i143.i = phi float [ %i.asd, %bb.ae ], [ f0x3FC90FDB, %.preheader358.us.us.i.i ]
  %i.ase = uitofp nneg i32 %.0245375.us.us.i.i to float
  %i.asf = fmul float %.0.i.i.us.us.i143.i, %i.ase
  %i.asg = fdiv float %i.asf, %i.apw              ; 2 uses
  %i.ash = tail call noundef float @sinf(float noundef %i.asg) #19, !noalias !82 ; 2 uses
  %i.asi = tail call noundef float @cosf(float noundef %i.asg) #19, !noalias !82 ; 3 uses
  %i.asj = extractelement <2 x float> %i.aqy, i64 0 ; 2 uses
  %i.ask = fmul float %i.asj, %i.arm
  %i.asl = extractelement <2 x float> %i.aqx, i64 0 ; 2 uses
  %i.asm = tail call float @llvm.fmuladd.f32(float %i.asl, float %i.aro, float %i.ask)
  %i.asn = extractelement <2 x float> %i.aqy, i64 1 ; 2 uses
  %i.aso = tail call float @llvm.fmuladd.f32(float %i.asn, float %i.arq, float %i.asm)
  %i.asp = fdiv float %i.aso, %sqrt.i.us.us.i142.i ; 2 uses
  %i.asq = fpext float %i.asi to double
  %i.asr = fsub double 1.000000e+00, %i.asq       ; 2 uses
  %i.ass = fpext float %sqrt.i.us.us.i142.i to double ; 2 uses
  %i.ast = fneg <2 x float> %i.arl
  %i.asu = fmul float %i.arq, %i.asp
  %i.asv = fpext float %i.asu to double
  %i.asw = fmul double %i.asr, %i.asv
  %i.asx = fdiv double %i.asw, %i.ass
  %i.asy = fmul float %i.asn, %i.asi
  %i.asz = fpext float %i.asy to double
  %i.ata = fadd double %i.asx, %i.asz
  %i.atb = fneg float %i.arm
  %i.atc = fmul float %i.asl, %i.atb
  %i.atd = tail call float @llvm.fmuladd.f32(float %i.aro, float %i.asj, float %i.atc)
  %i.ate = fmul float %i.atd, %i.ash
  %i.atf = fdiv float %i.ate, %sqrt.i.us.us.i142.i
  %i.atg = fpext float %i.atf to double
  %i.ath = fadd double %i.ata, %i.atg
  %i.ati = fptrunc double %i.ath to float         ; 3 uses
  %i.atj = insertelement <2 x float> poison, float %i.asp, i64 0
  %i.atk = shufflevector <2 x float> %i.atj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atl = fmul <2 x float> %i.arj, %i.atk
  %i.atm = fpext <2 x float> %i.atl to <2 x double>
  %i.atn = insertelement <2 x double> poison, double %i.asr, i64 0
  %i.ato = shufflevector <2 x double> %i.atn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.atp = fmul <2 x double> %i.ato, %i.atm
  %i.atq = insertelement <2 x double> poison, double %i.ass, i64 0
  %i.atr = shufflevector <2 x double> %i.atq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ats = fdiv <2 x double> %i.atp, %i.atr
  %i.att = insertelement <2 x float> poison, float %i.asi, i64 0
  %i.atu = shufflevector <2 x float> %i.att, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atv = fmul <2 x float> %i.aqx, %i.atu
  %i.atw = fpext <2 x float> %i.atv to <2 x double>
  %i.atx = fadd <2 x double> %i.ats, %i.atw
  %i.aty = fmul <2 x float> %i.aqy, %i.ast
  %i.atz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ark, <2 x float> %i.arb, <2 x float> %i.aty)
  %i.aua = insertelement <2 x float> poison, float %i.ash, i64 0
  %i.aub = shufflevector <2 x float> %i.aua, <2 x float> poison, <2 x i32> zeroinitializer
  %i.auc = fmul <2 x float> %i.atz, %i.aub
  %i.aud = insertelement <2 x float> poison, float %sqrt.i.us.us.i142.i, i64 0
  %i.aue = shufflevector <2 x float> %i.aud, <2 x float> poison, <2 x i32> zeroinitializer
  %i.auf = fdiv <2 x float> %i.auc, %i.aue
  %i.aug = fpext <2 x float> %i.auf to <2 x double>
  %i.auh = fadd <2 x double> %i.atx, %i.aug
  %i.aui = fptrunc <2 x double> %i.auh to <2 x float> ; 4 uses
  %foldExtExtBinop77 = fmul <2 x float> %i.aui, %i.aui
  %i.auj = extractelement <2 x float> %foldExtExtBinop77, i64 1
  %i.auk = extractelement <2 x float> %i.aui, i64 0 ; 2 uses
  %i.aul = tail call float @llvm.fmuladd.f32(float %i.auk, float %i.auk, float %i.auj)
  %i.aum = tail call float @llvm.fmuladd.f32(float %i.ati, float %i.ati, float %i.aul)
  %sqrt95.i.us.us.i144.i = tail call float @llvm.sqrt.f32(float %i.aum) ; 2 uses
  %i.aun = insertelement <2 x float> poison, float %sqrt95.i.us.us.i144.i, i64 0
  %i.auo = shufflevector <2 x float> %i.aun, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aup = fdiv <2 x float> %i.aui, %i.auo
  store <2 x float> %i.aup, ptr %i.aqv, align 4, !tbaa !18, !noalias !82
  %i.auq = fdiv float %i.ati, %sqrt95.i.us.us.i144.i
  store float %i.auq, ptr %i.aqw, align 4, !tbaa !18, !noalias !82
  %indvars.iv.next422.i.i.a = add nsw i64 %indvars.iv421.i.i.a, 1 ; 2 uses
  %i.aur = add nuw nsw i32 %.0245375.us.us.i.i, 1 ; 2 uses
  %exitcond424.not.i.i = icmp eq i32 %i.aur, %.fr.i128.i
  br i1 %exitcond424.not.i.i, label %..loopexit359_crit_edge.us.us.loopexit.i.i, label %.preheader358.us.us.i.i, !llvm.loop !64

..loopexit359_crit_edge.us.us.loopexit.i.i:       ; preds = %bb.af
  %i.aus = trunc nsw i64 %indvars.iv.next422.i.i.a to i32
  br label %..loopexit359_crit_edge.us.us.i.i

..loopexit359_crit_edge.us.us.i.i:                ; preds = %..loopexit359_crit_edge.us.us.loopexit.i.i, %bb.ad
  %.3.us.us.i145.i = phi i32 [ %.1378.us.us.i.i, %bb.ad ], [ %i.aus, %..loopexit359_crit_edge.us.us.loopexit.i.i ] ; 3 uses
  %i.aut = icmp samesign ult i64 %indvars.iv427.in.i.i, 30
  br i1 %i.aut, label %bb.ad, label %.loopexit360.us.i.loopexit.i, !llvm.loop !65

.loopexit360.us.i.loopexit.i:                     ; preds = %..loopexit359_crit_edge.us.us.i.i
  %indvars.iv.next426.i.i = add nuw nsw i64 %indvars.iv425.i.i, 1 ; 2 uses
  %exitcond430.not.i.i = icmp eq i64 %indvars.iv.next426.i.i, 31
  br i1 %exitcond430.not.i.i, label %.preheader356.i.i, label %.preheader361.split.us.i.i, !llvm.loop !66

.lr.ph370.i.i:                                    ; preds = %.loopexit364.i.i, %.noexc148.i
  %indvars.iv417.i.i = phi i64 [ 0, %.noexc148.i ], [ %indvars.iv.next418.i.i, %.loopexit364.i.i ] ; 2 uses
  %indvars.iv.i131.i = phi i64 [ 1, %.noexc148.i ], [ %indvars.iv.next.i133.i, %.loopexit364.i.i ] ; 2 uses
  %.0256372.i.i = phi i32 [ 12, %.noexc148.i ], [ %.4260.i.i, %.loopexit364.i.i ]
  %.idx.i132.i = mul nuw nsw i64 %indvars.iv417.i.i, 12
  %i.auu = getelementptr inbounds nuw i8, ptr %i.apn, i64 %.idx.i132.i ; 4 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 4
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auu, i64 8 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit363.i.i, %.lr.ph370.i.i
  %indvars.iv410.i.i = phi i64 [ %indvars.iv.i131.i, %.lr.ph370.i.i ], [ %indvars.iv.next411.i.i, %.loopexit363.i.i ] ; 3 uses
  %.1257368.i.i = phi i32 [ %.0256372.i.i, %.lr.ph370.i.i ], [ %.4260.i.i, %.loopexit363.i.i ] ; 2 uses
  %i.aux = load float, ptr %i.auu, align 4, !tbaa !18, !noalias !82
  %.idx460.i.i = mul nuw nsw i64 %indvars.iv410.i.i, 12
  %i.auy = getelementptr inbounds nuw i8, ptr %i.apn, i64 %.idx460.i.i ; 4 uses
  %i.auz = load float, ptr %i.auy, align 4, !tbaa !18, !noalias !82
  %i.ava = fsub float %i.aux, %i.auz              ; 2 uses
  %i.avb = load float, ptr %i.auv, align 4, !tbaa !18, !noalias !82
  %i.avc = getelementptr inbounds nuw i8, ptr %i.auy, i64 4
  %i.avd = load float, ptr %i.avc, align 4, !tbaa !18, !noalias !82
  %i.ave = fsub float %i.avb, %i.avd              ; 2 uses
  %i.avf = load float, ptr %i.auw, align 4, !tbaa !18, !noalias !82
  %i.avg = getelementptr inbounds nuw i8, ptr %i.auy, i64 8 ; 2 uses
  %i.avh = load float, ptr %i.avg, align 4, !tbaa !18, !noalias !82
  %i.avi = fsub float %i.avf, %i.avh              ; 2 uses
  %i.avj = fmul float %i.ave, %i.ave
  %i.avk = tail call float @llvm.fmuladd.f32(float %i.ava, float %i.ava, float %i.avj)
  %i.avl = tail call float @llvm.fmuladd.f32(float %i.avi, float %i.avi, float %i.avk)
  %i.avm = fsub float f0x3F8D836A, %i.avl
  %i.avn = tail call noundef float @llvm.fabs.f32(float %i.avm)
  %i.avo = fpext float %i.avn to double
  %i.avp = fcmp ule double %i.avo, 1.000000e-03
  br i1 %i.avp, label %.lr.ph.i.i, label %.loopexit363.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag, %bb.aj
  %indvars.iv412.i.i = phi i64 [ %indvars.iv.next413.i.i, %bb.aj ], [ %indvars.iv410.i.i, %bb.ag ]
  %.2258366.i.i = phi i32 [ %.3259.i.i, %bb.aj ], [ %.1257368.i.i, %bb.ag ] ; 4 uses
  %indvars.iv.next413.i.i = add nuw nsw i64 %indvars.iv412.i.i, 1 ; 3 uses
  %.idx461.i.i = mul nuw nsw i64 %indvars.iv.next413.i.i, 12
  %i.avq = getelementptr inbounds nuw i8, ptr %i.apn, i64 %.idx461.i.i ; 2 uses
  %i.avr = load <2 x float>, ptr %i.auu, align 4, !tbaa !18, !noalias !82 ; 3 uses
  %i.avs = load <2 x float>, ptr %i.avq, align 4, !tbaa !18, !noalias !82 ; 5 uses
  %foldExtExtBinop79 = fsub <2 x float> %i.avr, %i.avs
  %i.avt = extractelement <2 x float> %foldExtExtBinop79, i64 0 ; 2 uses
  %foldExtExtBinop81 = fsub <2 x float> %i.avr, %i.avs ; 2 uses
  %i.avu = load float, ptr %i.auw, align 4, !tbaa !18, !noalias !82 ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avq, i64 8
  %i.avw = load float, ptr %i.avv, align 4, !tbaa !18, !noalias !82 ; 3 uses
  %i.avx = fsub float %i.avu, %i.avw              ; 2 uses
  %foldExtExtBinop83 = fmul <2 x float> %foldExtExtBinop81, %foldExtExtBinop81
  %i.avy = extractelement <2 x float> %foldExtExtBinop83, i64 1
  %i.avz = tail call float @llvm.fmuladd.f32(float %i.avt, float %i.avt, float %i.avy)
  %i.awa = tail call float @llvm.fmuladd.f32(float %i.avx, float %i.avx, float %i.avz)
  %i.awb = fsub float f0x3F8D836A, %i.awa
  %i.awc = tail call noundef float @llvm.fabs.f32(float %i.awb)
  %i.awd = fpext float %i.awc to double
  %i.awe = fcmp ogt double %i.awd, 1.000000e-03
  br i1 %i.awe, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.awf = load <2 x float>, ptr %i.auy, align 4, !tbaa !18, !noalias !82 ; 3 uses
  %foldExtExtBinop85 = fsub <2 x float> %i.awf, %i.avs
  %i.awg = extractelement <2 x float> %foldExtExtBinop85, i64 0 ; 2 uses
  %foldExtExtBinop87 = fsub <2 x float> %i.awf, %i.avs ; 2 uses
  %i.awh = load float, ptr %i.avg, align 4, !tbaa !18, !noalias !82 ; 2 uses
  %i.awi = fsub float %i.awh, %i.avw              ; 2 uses
  %foldExtExtBinop89 = fmul <2 x float> %foldExtExtBinop87, %foldExtExtBinop87
  %i.awj = extractelement <2 x float> %foldExtExtBinop89, i64 1
  %i.awk = tail call float @llvm.fmuladd.f32(float %i.awg, float %i.awg, float %i.awj)
  %i.awl = tail call float @llvm.fmuladd.f32(float %i.awi, float %i.awi, float %i.awk)
  %i.awm = fsub float f0x3F8D836A, %i.awl
  %i.awn = tail call noundef float @llvm.fabs.f32(float %i.awm)
  %i.awo = fpext float %i.awn to double
  %i.awp = fcmp ogt double %i.awo, 1.000000e-03
  br i1 %i.awp, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.awq = fadd <2 x float> %i.avr, %i.awf
  %i.awr = fadd float %i.avu, %i.awh
  %i.aws = fadd float %i.avw, %i.awr              ; 3 uses
  %i.awt = mul nsw i32 %.2258366.i.i, 3
  %i.awu = sext i32 %i.awt to i64
  %i.awv = getelementptr [4 x i8], ptr %i.apn, i64 %i.awu ; 2 uses
  %i.aww = fadd <2 x float> %i.avs, %i.awq        ; 4 uses
  %foldExtExtBinop91 = fmul <2 x float> %i.aww, %i.aww
  %i.awx = extractelement <2 x float> %foldExtExtBinop91, i64 1
  %i.awy = extractelement <2 x float> %i.aww, i64 0 ; 2 uses
  %i.awz = tail call float @llvm.fmuladd.f32(float %i.awy, float %i.awy, float %i.awx)
  %i.axa = tail call float @llvm.fmuladd.f32(float %i.aws, float %i.aws, float %i.awz)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.axa) ; 2 uses
  %i.axb = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.axc = shufflevector <2 x float> %i.axb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axd = fdiv <2 x float> %i.aww, %i.axc
  store <2 x float> %i.axd, ptr %i.awv, align 4, !tbaa !18, !noalias !82
  %i.axe = fdiv float %i.aws, %sqrt.i.i
  %i.axf = getelementptr i8, ptr %i.awv, i64 8
  store float %i.axe, ptr %i.axf, align 4, !tbaa !18, !noalias !82
  %i.axg = add nsw i32 %.2258366.i.i, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %.lr.ph.i.i
  %.3259.i.i = phi i32 [ %i.axg, %bb.ai ], [ %.2258366.i.i, %bb.ah ], [ %.2258366.i.i, %.lr.ph.i.i ] ; 2 uses
  %exitcond.not.i146.i = icmp eq i64 %indvars.iv.next413.i.i, 11
  br i1 %exitcond.not.i146.i, label %.loopexit363.i.i, label %.lr.ph.i.i, !llvm.loop !67

.loopexit363.i.i:                                 ; preds = %bb.aj, %bb.ag
  %.4260.i.i = phi i32 [ %.1257368.i.i, %bb.ag ], [ %.3259.i.i, %bb.aj ] ; 2 uses
  %indvars.iv.next411.i.i = add nuw nsw i64 %indvars.iv410.i.i, 1 ; 2 uses
  %exitcond416.not.i.i = icmp eq i64 %indvars.iv.next411.i.i, 11
  br i1 %exitcond416.not.i.i, label %.loopexit364.i.i, label %bb.ag, !llvm.loop !68

.preheader356.i.i:                                ; preds = %.loopexit360.us.i.loopexit.i
  %i.axh = add nsw i32 %.sroa.speculated.i.i, -1  ; 2 uses
  %.not406.i.i = icmp eq i32 %.fr.i128.i, 2
  br i1 %.not406.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %.preheader355.us.i.i

.preheader355.us.i.i:                             ; preds = %.preheader356.i.i, %.split.us.us.i.i
  %indvars.iv446.i.i = phi i64 [ %indvars.iv.next447.i.i, %.split.us.us.i.i ], [ 0, %.preheader356.i.i ] ; 2 uses
  %.4402.us.i.i = phi i32 [ %.10.us.us.i135.i, %.split.us.us.i.i ], [ %.3.us.us.i145.i, %.preheader356.i.i ]
  %.idx465.i.i = mul nuw nsw i64 %indvars.iv446.i.i, 12
  %i.axi = getelementptr inbounds nuw i8, ptr %i.apn, i64 %.idx465.i.i ; 6 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 4 ; 4 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axi, i64 8 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit354.us.us.i.i, %.preheader355.us.i.i
  %indvars.iv438.i.i = phi i64 [ %indvars.iv.next439.i.i, %.loopexit354.us.us.i.i ], [ 12, %.preheader355.us.i.i ] ; 3 uses
  %.5399.us.us.i.i = phi i32 [ %.10.us.us.i135.i, %.loopexit354.us.us.i.i ], [ %.4402.us.i.i, %.preheader355.us.i.i ] ; 2 uses
  %i.axl = load float, ptr %i.axi, align 4, !tbaa !18, !noalias !82
  %.idx466.i.i = mul nuw nsw i64 %indvars.iv438.i.i, 12
  %i.axm = getelementptr inbounds nuw i8, ptr %i.apn, i64 %.idx466.i.i ; 6 uses
  %i.axn = load float, ptr %i.axm, align 4, !tbaa !18, !noalias !82
  %i.axo = fsub float %i.axl, %i.axn              ; 2 uses
  %i.axp = load float, ptr %i.axj, align 4, !tbaa !18, !noalias !82
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axm, i64 4 ; 3 uses
  %i.axr = load float, ptr %i.axq, align 4, !tbaa !18, !noalias !82
  %i.axs = fsub float %i.axp, %i.axr              ; 2 uses
  %i.axt = load float, ptr %i.axk, align 4, !tbaa !18, !noalias !82
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axm, i64 8 ; 3 uses
  %i.axv = load float, ptr %i.axu, align 4, !tbaa !18, !noalias !82
  %i.axw = fsub float %i.axt, %i.axv              ; 2 uses
  %i.axx = fmul float %i.axs, %i.axs
  %i.axy = tail call float @llvm.fmuladd.f32(float %i.axo, float %i.axo, float %i.axx)
  %i.axz = tail call float @llvm.fmuladd.f32(float %i.axw, float %i.axw, float %i.axy)
  %i.aya = fsub float f0x3ED2461B, %i.axz
  %i.ayb = tail call noundef float @llvm.fabs.f32(float %i.aya)
  %i.ayc = fpext float %i.ayb to double
  %i.ayd = fcmp ule double %i.ayc, 1.000000e-03
  br i1 %i.ayd, label %.lr.ph396.us.us.i.i, label %.loopexit354.us.us.i.i

.lr.ph396.us.us.i.i:                              ; preds = %bb.ak, %..loopexit_crit_edge.us.us.us.i139.i
  %indvars.iv440.i.i.a = phi i64 [ %indvars.iv.next441.i.i.a, %..loopexit_crit_edge.us.us.us.i139.i ], [ %indvars.iv438.i.i, %bb.ak ]
  %.6394.us.us.us.i.i = phi i32 [ %.9.us.us.us.i140.i, %..loopexit_crit_edge.us.us.us.i139.i ], [ %.5399.us.us.i.i, %bb.ak ] ; 3 uses
  %indvars.iv.next441.i.i.a = add nuw nsw i64 %indvars.iv440.i.i.a, 1 ; 3 uses
  %i.aye = load float, ptr %i.axi, align 4, !tbaa !18, !noalias !82
  %.idx467.i.i = mul nuw nsw i64 %indvars.iv.next441.i.i.a, 12
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.apn, i64 %.idx467.i.i ; 5 uses
  %i.ayg = load float, ptr %i.ayf, align 4, !tbaa !18, !noalias !82 ; 2 uses
  %i.ayh = fsub float %i.aye, %i.ayg              ; 2 uses
  %i.ayi = load float, ptr %i.axj, align 4, !tbaa !18, !noalias !82
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayf, i64 4 ; 3 uses
  %i.ayk = load float, ptr %i.ayj, align 4, !tbaa !18, !noalias !82 ; 2 uses
  %i.ayl = fsub float %i.ayi, %i.ayk              ; 2 uses
  %i.aym = load float, ptr %i.axk, align 4, !tbaa !18, !noalias !82
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.ayf, i64 8
  %i.ayo = load float, ptr %i.ayn, align 4, !tbaa !18, !noalias !82 ; 2 uses
  %i.ayp = fsub float %i.aym, %i.ayo              ; 2 uses
  %i.ayq = fmul float %i.ayl, %i.ayl
  %i.ayr = tail call float @llvm.fmuladd.f32(float %i.ayh, float %i.ayh, float %i.ayq)
  %i.ays = tail call float @llvm.fmuladd.f32(float %i.ayp, float %i.ayp, float %i.ayr)
  %i.ayt = fsub float f0x3ED2461B, %i.ays
  %i.ayu = tail call noundef float @llvm.fabs.f32(float %i.ayt)
  %i.ayv = fpext float %i.ayu to double
  %i.ayw = fcmp ogt double %i.ayv, 1.000000e-03
  br i1 %i.ayw, label %..loopexit_crit_edge.us.us.us.i139.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph396.us.us.i.i
  %i.ayx = load float, ptr %i.axm, align 4, !tbaa !18, !noalias !82
  %i.ayy = fsub float %i.ayx, %i.ayg              ; 2 uses
  %i.ayz = load float, ptr %i.axq, align 4, !tbaa !18, !noalias !82
  %i.aza = fsub float %i.ayz, %i.ayk              ; 2 uses
  %i.azb = load float, ptr %i.axu, align 4, !tbaa !18, !noalias !82
  %i.azc = fsub float %i.azb, %i.ayo              ; 2 uses
  %i.azd = fmul float %i.aza, %i.aza
  %i.aze = tail call float @llvm.fmuladd.f32(float %i.ayy, float %i.ayy, float %i.azd)
  %i.azf = tail call float @llvm.fmuladd.f32(float %i.azc, float %i.azc, float %i.aze)
  %i.azg = fsub float 5.092880e-01, %i.azf
  %i.azh = tail call noundef float @llvm.fabs.f32(float %i.azg)
  %i.azi = fpext float %i.azh to double
  %i.azj = fcmp ogt double %i.azi, 1.000000e-03
  br i1 %i.azj, label %..loopexit_crit_edge.us.us.us.i139.i, label %.preheader.us.us.us.i136.i.preheader

.preheader.us.us.us.i136.i.preheader:             ; preds = %bb.al
  %i.azk = sext i32 %.6394.us.us.us.i.i to i64
  br label %.preheader.us.us.us.i136.i

.preheader.us.us.us.i136.i:                       ; preds = %.preheader.us.us.us.i136.i.preheader, %._crit_edge.us.us.us.loopexit.i141.i
  %indvars.iv434.i.i = phi i32 [ %indvars.iv.next435.i.i, %._crit_edge.us.us.us.loopexit.i141.i ], [ %i.axh, %.preheader.us.us.us.i136.i.preheader ] ; 2 uses
  %.0241390.us.us.us.i.i = phi i32 [ %i.cha, %._crit_edge.us.us.us.loopexit.i141.i ], [ 1, %.preheader.us.us.us.i136.i.preheader ] ; 4 uses
  %.7389.us.us.us.i.i = phi i64 [ %indvars.iv.next432.i.i, %._crit_edge.us.us.us.loopexit.i141.i ], [ %i.azk, %.preheader.us.us.us.i136.i.preheader ]
  %i.azl = load <2 x float>, ptr %i.axi, align 4, !tbaa !18, !noalias !82 ; 8 uses
  %i.azm = load <2 x float>, ptr %i.axj, align 4, !tbaa !18, !noalias !82 ; 4 uses
  %i.azn = load <2 x float>, ptr %i.axm, align 4, !tbaa !18, !noalias !82 ; 8 uses
  %i.azo = load <2 x float>, ptr %i.axq, align 4, !tbaa !18, !noalias !82 ; 6 uses
  %i.azp = fneg <2 x float> %i.azo
  %i.azq = shufflevector <2 x float> %i.azo, <2 x float> %i.azn, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.azr = fneg <2 x float> %i.azq
  %i.azs = fneg <2 x float> %i.azn
  %i.azt = fmul <2 x float> %i.azl, %i.azp
  %i.azu = shufflevector <2 x float> %i.azl, <2 x float> %i.azm, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.azv = fmul <2 x float> %i.azu, %i.azr
  %i.azw = shufflevector <2 x float> %i.azm, <2 x float> %i.azl, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.azx = fmul <2 x float> %i.azw, %i.azs
  %i.azy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.azn, <2 x float> %i.azu, <2 x float> %i.azt) ; 3 uses
  %i.azz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.azo, <2 x float> %i.azw, <2 x float> %i.azv) ; 2 uses
  %i.baa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.azq, <2 x float> %i.azl, <2 x float> %i.azx)
  %i.bab = extractelement <2 x float> %i.azz, i64 1 ; 4 uses
  %i.bac = fmul float %i.bab, %i.bab
  %i.bad = extractelement <2 x float> %i.azy, i64 1 ; 4 uses
  %i.bae = tail call float @llvm.fmuladd.f32(float %i.bad, float %i.bad, float %i.bac)
  %i.baf = extractelement <2 x float> %i.azy, i64 0 ; 4 uses
  %i.bag = tail call float @llvm.fmuladd.f32(float %i.baf, float %i.baf, float %i.bae)
  %sqrt.i276.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.bag) ; 5 uses
  %i.bah = shufflevector <2 x float> %i.azn, <2 x float> %i.azl, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bai = fmul <2 x float> %i.bah, %i.bah
  %i.baj = shufflevector <2 x float> %i.azn, <2 x float> %i.azl, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.baj, <2 x float> %i.baj, <2 x float> %i.bai)
  %i.bal = shufflevector <2 x float> %i.azo, <2 x float> %i.azm, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bam = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bal, <2 x float> %i.bal, <2 x float> %i.bak) ; 2 uses
  %i.ban = extractelement <2 x float> %i.bam, i64 0
  %i.bao = extractelement <2 x float> %i.bam, i64 1 ; 2 uses
  %i.bap = fmul float %i.ban, %i.bao
  %i.baq = tail call float @llvm.sqrt.f32(float %i.bap)
  %i.bar = fdiv float %sqrt.i276.us.us.us.i.i, %i.baq ; 2 uses
  %i.bas = tail call noundef float @llvm.fabs.f32(float %i.bar)
  %i.bat = fcmp olt float %i.bas, 1.000000e+00
  br i1 %i.bat, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.preheader.us.us.us.i136.i
  %i.bau = tail call noundef float @asinf(float noundef %i.bar) #19, !noalias !82
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.preheader.us.us.us.i136.i
  %.0.i.i277.us.us.us.i.i = phi float [ %i.bau, %bb.am ], [ f0x3FC90FDB, %.preheader.us.us.us.i136.i ]
  %i.bav = uitofp nneg i32 %.0241390.us.us.us.i.i to float ; 4 uses
  %i.baw = fmul float %.0.i.i277.us.us.us.i.i, %i.bav
  %i.bax = fdiv float %i.baw, %i.apw              ; 2 uses
  %i.bay = tail call noundef float @sinf(float noundef %i.bax) #19, !noalias !82 ; 2 uses
  %i.baz = tail call noundef float @cosf(float noundef %i.bax) #19, !noalias !82 ; 3 uses
  %i.bba = extractelement <2 x float> %i.azn, i64 1 ; 2 uses
  %i.bbb = fmul float %i.bba, %i.bab
  %i.bbc = extractelement <2 x float> %i.azn, i64 0 ; 2 uses
  %i.bbd = tail call float @llvm.fmuladd.f32(float %i.bbc, float %i.bad, float %i.bbb)
  %i.bbe = extractelement <2 x float> %i.azo, i64 1 ; 2 uses
  %i.bbf = tail call float @llvm.fmuladd.f32(float %i.bbe, float %i.baf, float %i.bbd)
  %i.bbg = fdiv float %i.bbf, %sqrt.i276.us.us.us.i.i ; 2 uses
  %i.bbh = fpext float %i.baz to double
  %i.bbi = fsub double 1.000000e+00, %i.bbh       ; 2 uses
  %i.bbj = fpext float %sqrt.i276.us.us.us.i.i to double ; 2 uses
  %i.bbk = fneg <2 x float> %i.baa
  %i.bbl = fmul float %i.bab, %i.bbg
  %i.bbm = fpext float %i.bbl to double
  %i.bbn = fmul double %i.bbi, %i.bbm
  %i.bbo = fdiv double %i.bbn, %i.bbj
  %i.bbp = fmul float %i.bba, %i.baz
  %i.bbq = fpext float %i.bbp to double
  %i.bbr = fadd double %i.bbo, %i.bbq
  %i.bbs = fneg float %i.bad
  %i.bbt = fmul float %i.bbe, %i.bbs
  %i.bbu = tail call float @llvm.fmuladd.f32(float %i.baf, float %i.bbc, float %i.bbt)
  %i.bbv = fmul float %i.bbu, %i.bay
  %i.bbw = fdiv float %i.bbv, %sqrt.i276.us.us.us.i.i
  %i.bbx = fpext float %i.bbw to double
  %i.bby = fadd double %i.bbr, %i.bbx
  %i.bbz = fptrunc double %i.bby to float         ; 3 uses
  %i.bca = insertelement <2 x float> poison, float %i.bbg, i64 0
  %i.bcb = shufflevector <2 x float> %i.bca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bcc = fmul <2 x float> %i.azy, %i.bcb
  %i.bcd = fpext <2 x float> %i.bcc to <2 x double>
  %i.bce = insertelement <2 x double> poison, double %i.bbi, i64 0
  %i.bcf = shufflevector <2 x double> %i.bce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bcg = fmul <2 x double> %i.bcf, %i.bcd
  %i.bch = insertelement <2 x double> poison, double %i.bbj, i64 0
  %i.bci = shufflevector <2 x double> %i.bch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bcj = fdiv <2 x double> %i.bcg, %i.bci
  %i.bck = insertelement <2 x float> poison, float %i.baz, i64 0
  %i.bcl = shufflevector <2 x float> %i.bck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bcm = fmul <2 x float> %i.azq, %i.bcl
  %i.bcn = fpext <2 x float> %i.bcm to <2 x double>
  %i.bco = fadd <2 x double> %i.bcj, %i.bcn
  %i.bcp = fmul <2 x float> %i.azn, %i.bbk
  %i.bcq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.azz, <2 x float> %i.azo, <2 x float> %i.bcp)
  %i.bcr = insertelement <2 x float> poison, float %i.bay, i64 0
  %i.bcs = shufflevector <2 x float> %i.bcr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bct = fmul <2 x float> %i.bcq, %i.bcs
  %i.bcu = insertelement <2 x float> poison, float %sqrt.i276.us.us.us.i.i, i64 0
  %i.bcv = shufflevector <2 x float> %i.bcu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bcw = fdiv <2 x float> %i.bct, %i.bcv
  %i.bcx = fpext <2 x float> %i.bcw to <2 x double>
  %i.bcy = fadd <2 x double> %i.bco, %i.bcx
  %i.bcz = fptrunc <2 x double> %i.bcy to <2 x float> ; 3 uses
  %i.bda = fmul float %i.bbz, %i.bbz
  %i.bdb = extractelement <2 x float> %i.bcz, i64 1 ; 2 uses
  %i.bdc = tail call float @llvm.fmuladd.f32(float %i.bdb, float %i.bdb, float %i.bda)
  %i.bdd = extractelement <2 x float> %i.bcz, i64 0 ; 2 uses
  %i.bde = tail call float @llvm.fmuladd.f32(float %i.bdd, float %i.bdd, float %i.bdc)
  %sqrt95.i278.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.bde) ; 2 uses
  %i.bdf = fdiv float %i.bbz, %sqrt95.i278.us.us.us.i.i ; 4 uses
  %i.bdg = insertelement <2 x float> poison, float %sqrt95.i278.us.us.us.i.i, i64 0
  %i.bdh = shufflevector <2 x float> %i.bdg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdi = fdiv <2 x float> %i.bcz, %i.bdh        ; 4 uses
  %i.bdj = load <2 x float>, ptr %i.ayf, align 4, !tbaa !18, !noalias !82 ; 6 uses
  %i.bdk = load <2 x float>, ptr %i.ayj, align 4, !tbaa !18, !noalias !82 ; 4 uses
  %i.bdl = fneg <2 x float> %i.bdj
  %i.bdm = fneg <2 x float> %i.bdk
  %i.bdn = fmul <2 x float> %i.azw, %i.bdl
  %i.bdo = fmul <2 x float> %i.azl, %i.bdm
  %i.bdp = shufflevector <2 x float> %i.bdk, <2 x float> %i.bdj, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bdq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bdp, <2 x float> %i.azl, <2 x float> %i.bdn) ; 6 uses
  %i.bdr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bdj, <2 x float> %i.azm, <2 x float> %i.bdo) ; 3 uses
  %i.bds = extractelement <2 x float> %i.bdq, i64 0 ; 2 uses
  %foldExtExtBinop93 = fmul <2 x float> %i.bdq, %i.bdq
  %i.bdt = extractelement <2 x float> %foldExtExtBinop93, i64 0
  %i.bdu = extractelement <2 x float> %i.bdr, i64 1 ; 4 uses
  %i.bdv = tail call float @llvm.fmuladd.f32(float %i.bdu, float %i.bdu, float %i.bdt)
  %i.bdw = extractelement <2 x float> %i.bdq, i64 1 ; 4 uses
  %i.bdx = tail call float @llvm.fmuladd.f32(float %i.bdw, float %i.bdw, float %i.bdv)
  %sqrt.i280.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.bdx) ; 5 uses
  %i.bdy = extractelement <2 x float> %i.bdj, i64 1 ; 4 uses
  %i.bdz = fmul float %i.bdy, %i.bdy
  %i.bea = extractelement <2 x float> %i.bdj, i64 0 ; 4 uses
  %i.beb = tail call float @llvm.fmuladd.f32(float %i.bea, float %i.bea, float %i.bdz)
  %i.bec = extractelement <2 x float> %i.bdk, i64 1 ; 4 uses
  %i.bed = tail call float @llvm.fmuladd.f32(float %i.bec, float %i.bec, float %i.beb)
  %i.bee = fmul float %i.bao, %i.bed
  %i.bef = tail call float @llvm.sqrt.f32(float %i.bee)
  %i.beg = fdiv float %sqrt.i280.us.us.us.i.i, %i.bef ; 2 uses
  %i.beh = tail call noundef float @llvm.fabs.f32(float %i.beg)
  %i.bei = fcmp olt float %i.beh, 1.000000e+00
  br i1 %i.bei, label %bb.ao, label %_ZL6divarcffffffiiPfS_S_.exit283.us.us.us.i.i

bb.ao:                                            ; preds = %bb.an
  %i.bej = tail call noundef float @asinf(float noundef %i.beg) #19, !noalias !82
  br label %_ZL6divarcffffffiiPfS_S_.exit283.us.us.us.i.i

_ZL6divarcffffffiiPfS_S_.exit283.us.us.us.i.i:    ; preds = %bb.ao, %bb.an
  %.0.i.i281.us.us.us.i.i = phi float [ %i.bej, %bb.ao ], [ f0x3FC90FDB, %bb.an ]
  %i.bek = fmul float %.0.i.i281.us.us.us.i.i, %i.bav
  %i.bel = fdiv float %i.bek, %i.apw              ; 2 uses
  %i.bem = tail call noundef float @sinf(float noundef %i.bel) #19, !noalias !82 ; 2 uses
  %i.ben = tail call noundef float @cosf(float noundef %i.bel) #19, !noalias !82 ; 3 uses
  %i.beo = fmul float %i.bdy, %i.bds
  %i.bep = tail call float @llvm.fmuladd.f32(float %i.bea, float %i.bdu, float %i.beo)
  %i.beq = tail call float @llvm.fmuladd.f32(float %i.bec, float %i.bdw, float %i.bep)
  %i.ber = fdiv float %i.beq, %sqrt.i280.us.us.us.i.i ; 2 uses
  %i.bes = fpext float %i.ben to double
  %i.bet = fsub double 1.000000e+00, %i.bes       ; 2 uses
  %i.beu = fpext float %sqrt.i280.us.us.us.i.i to double ; 2 uses
  %i.bev = fneg <2 x float> %i.bdr
  %i.bew = shufflevector <2 x float> %i.bdr, <2 x float> %i.bdq, <2 x i32> <i32 1, i32 2>
  %i.bex = insertelement <2 x float> poison, float %i.ber, i64 0
  %i.bey = shufflevector <2 x float> %i.bex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bez = fmul <2 x float> %i.bew, %i.bey
  %i.bfa = fpext <2 x float> %i.bez to <2 x double>
  %i.bfb = insertelement <2 x double> poison, double %i.bet, i64 0
  %i.bfc = shufflevector <2 x double> %i.bfb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bfd = fmul <2 x double> %i.bfc, %i.bfa
  %i.bfe = fmul float %i.bdw, %i.ber
  %i.bff = fpext float %i.bfe to double
  %i.bfg = fmul double %i.bet, %i.bff
  %i.bfh = fdiv double %i.bfg, %i.beu
  %i.bfi = fmul float %i.bec, %i.ben
  %i.bfj = fpext float %i.bfi to double
  %i.bfk = fadd double %i.bfh, %i.bfj
  %i.bfl = fneg float %i.bds
  %i.bfm = fmul float %i.bea, %i.bfl
  %i.bfn = tail call float @llvm.fmuladd.f32(float %i.bdu, float %i.bdy, float %i.bfm)
  %i.bfo = fmul float %i.bfn, %i.bem
  %i.bfp = fdiv float %i.bfo, %sqrt.i280.us.us.us.i.i
  %i.bfq = fpext float %i.bfp to double
  %i.bfr = sub nuw nsw i32 %.sroa.speculated.i.i, %.0241390.us.us.us.i.i ; 2 uses
  %i.bfs = fmul float %i.bdf, %i.bdf
  %i.bft = extractelement <2 x float> %i.bdi, i64 1 ; 3 uses
  %i.bfu = tail call float @llvm.fmuladd.f32(float %i.bft, float %i.bft, float %i.bfs)
  %i.bfv = extractelement <2 x float> %i.bdi, i64 0 ; 2 uses
  %i.bfw = tail call float @llvm.fmuladd.f32(float %i.bfv, float %i.bfv, float %i.bfu)
  %i.bfx = uitofp nneg i32 %i.bfr to float
  %i.bfy = insertelement <2 x double> poison, double %i.beu, i64 0
  %i.bfz = shufflevector <2 x double> %i.bfy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bga = fdiv <2 x double> %i.bfd, %i.bfz
  %i.bgb = insertelement <2 x float> poison, float %i.ben, i64 0
  %i.bgc = shufflevector <2 x float> %i.bgb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgd = fmul <2 x float> %i.bdj, %i.bgc
  %i.bge = fpext <2 x float> %i.bgd to <2 x double>
  %i.bgf = fadd <2 x double> %i.bga, %i.bge
  %i.bgg = fmul <2 x float> %i.bdk, %i.bev
  %i.bgh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bdq, <2 x float> %i.bdp, <2 x float> %i.bgg)
  %i.bgi = insertelement <2 x float> poison, float %i.bem, i64 0
  %i.bgj = shufflevector <2 x float> %i.bgi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgk = fmul <2 x float> %i.bgh, %i.bgj
  %i.bgl = insertelement <2 x float> poison, float %sqrt.i280.us.us.us.i.i, i64 0
  %i.bgm = shufflevector <2 x float> %i.bgl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgn = fdiv <2 x float> %i.bgk, %i.bgm
  %i.bgo = fpext <2 x float> %i.bgn to <2 x double>
  %i.bgp = fadd <2 x double> %i.bgf, %i.bgo
  %i.bgq = fptrunc <2 x double> %i.bgp to <2 x float> ; 5 uses
  %i.bgr = fadd double %i.bfk, %i.bfq
  %i.bgs = fptrunc double %i.bgr to float         ; 3 uses
  %foldExtExtBinop95 = fmul <2 x float> %i.bgq, %i.bgq
  %i.bgt = extractelement <2 x float> %foldExtExtBinop95, i64 1
  %i.bgu = extractelement <2 x float> %i.bgq, i64 0 ; 2 uses
  %i.bgv = tail call float @llvm.fmuladd.f32(float %i.bgu, float %i.bgu, float %i.bgt)
  %i.bgw = tail call float @llvm.fmuladd.f32(float %i.bgs, float %i.bgs, float %i.bgv)
  %sqrt95.i282.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.bgw)
  %i.bgx = insertelement <2 x float> poison, float %sqrt95.i282.us.us.us.i.i, i64 0
  %i.bgy = shufflevector <2 x float> %i.bgx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bgz = fdiv <2 x float> %i.bgq, %i.bgy        ; 3 uses
  %i.bha = shufflevector <2 x float> %i.bgq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bhb = insertelement <2 x float> %i.bha, float %i.bgs, i64 1
  %i.bhc = fdiv <2 x float> %i.bhb, %i.bgy        ; 6 uses
  %i.bhd = extractelement <2 x float> %i.bhc, i64 1 ; 6 uses
  %i.bhe = extractelement <2 x float> %i.bgz, i64 0 ; 6 uses
  %i.bhf = shufflevector <2 x float> %i.bhc, <2 x float> %i.bgz, <2 x i32> <i32 1, i32 2>
  %i.bhg = fneg <2 x float> %i.bhf
  %i.bhh = shufflevector <2 x float> %i.bdi, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bhi = insertelement <2 x float> %i.bhh, float %i.bdf, i64 0
  %i.bhj = fmul <2 x float> %i.bhi, %i.bhg
  %i.bhk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhc, <2 x float> %i.bdi, <2 x float> %i.bhj) ; 3 uses
  %i.bhl = extractelement <2 x float> %i.bhc, i64 0 ; 4 uses
  %i.bhm = fneg float %i.bhl
  %i.bhn = fmul float %i.bft, %i.bhm
  %i.bho = tail call float @llvm.fmuladd.f32(float %i.bhe, float %i.bdf, float %i.bhn) ; 6 uses
  %i.bhp = extractelement <2 x float> %i.bhk, i64 1 ; 5 uses
  %i.bhq = fmul float %i.bhp, %i.bhp
  %i.bhr = extractelement <2 x float> %i.bhk, i64 0 ; 5 uses
  %i.bhs = tail call float @llvm.fmuladd.f32(float %i.bhr, float %i.bhr, float %i.bhq)
  %i.bht = tail call float @llvm.fmuladd.f32(float %i.bho, float %i.bho, float %i.bhs)
  %sqrt.i300.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.bht) ; 5 uses
  %foldExtExtBinop97 = fmul <2 x float> %i.bhc, %i.bhc
  %i.bhu = extractelement <2 x float> %foldExtExtBinop97, i64 0
  %i.bhv = tail call float @llvm.fmuladd.f32(float %i.bhe, float %i.bhe, float %i.bhu)
  %i.bhw = tail call float @llvm.fmuladd.f32(float %i.bhd, float %i.bhd, float %i.bhv)
  %i.bhx = fmul float %i.bfw, %i.bhw
  %sqrt.i307.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.bhx)
  %5 = fdiv float %sqrt.i300.us.us.us.i.i, %sqrt.i307.us.us.us.i.i ; 2 uses
  %6 = tail call noundef float @llvm.fabs.f32(float %5)
  %7 = fcmp olt float %6, 1.000000e+00
  %i.bhy = fmul float %i.bhl, %i.bhp
  %i.bhz = tail call float @llvm.fmuladd.f32(float %i.bhe, float %i.bhr, float %i.bhy)
  %i.bia = tail call float @llvm.fmuladd.f32(float %i.bhd, float %i.bho, float %i.bhz)
  %i.bib = fdiv float %i.bia, %sqrt.i300.us.us.us.i.i ; 2 uses
  %i.bic = insertelement <2 x float> poison, float %i.bib, i64 0
  %i.bid = shufflevector <2 x float> %i.bic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bie = fmul <2 x float> %i.bhk, %i.bid
  %i.bif = fpext float %sqrt.i300.us.us.us.i.i to double ; 2 uses
  %i.big = fneg float %i.bho
  %i.bih = fmul float %i.bhl, %i.big
  %i.bii = tail call float @llvm.fmuladd.f32(float %i.bhp, float %i.bhd, float %i.bih)
  %i.bij = fpext <2 x float> %i.bie to <2 x double>
  %i.bik = fneg float %i.bhr
  %i.bil = fmul float %i.bhd, %i.bik
  %i.bim = tail call float @llvm.fmuladd.f32(float %i.bho, float %i.bhe, float %i.bil)
  %i.bin = fmul float %i.bho, %i.bib
  %i.bio = fpext float %i.bin to double
  %i.bip = fneg float %i.bhp
  %i.biq = fmul float %i.bhe, %i.bip
  %i.bir = tail call float @llvm.fmuladd.f32(float %i.bhr, float %i.bhl, float %i.biq)
  %i.bis = insertelement <2 x double> poison, double %i.bif, i64 0
  %i.bit = shufflevector <2 x double> %i.bis, <2 x double> poison, <2 x i32> zeroinitializer
  %i.biu = insertelement <2 x float> poison, float %i.bii, i64 0
  %i.biv = insertelement <2 x float> %i.biu, float %i.bim, i64 1
  %i.biw = insertelement <2 x float> poison, float %sqrt.i300.us.us.us.i.i, i64 0
  %i.bix = shufflevector <2 x float> %i.biw, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.ap

bb.ap:                                            ; preds = %bb.bd, %_ZL6divarcffffffiiPfS_S_.exit283.us.us.us.i.i
  %indvars.iv431.i.i = phi i64 [ %indvars.iv.next432.i.i, %bb.bd ], [ %.7389.us.us.us.i.i, %_ZL6divarcffffffiiPfS_S_.exit283.us.us.us.i.i ] ; 2 uses
  %.0386.us.us.us.i.i = phi i32 [ %i.cgz, %bb.bd ], [ 1, %_ZL6divarcffffffiiPfS_S_.exit283.us.us.us.i.i ] ; 5 uses
  %i.biy = load <2 x float>, ptr %i.axm, align 4, !tbaa !18, !noalias !82 ; 5 uses
  %i.biz = load float, ptr %i.axu, align 4, !tbaa !18, !noalias !82 ; 12 uses
  %i.bja = extractelement <2 x float> %i.biy, i64 1 ; 9 uses
  %i.bjb = extractelement <2 x float> %i.biy, i64 0 ; 10 uses
  %i.bjc = load <2 x float>, ptr %i.axi, align 4, !tbaa !18, !noalias !82 ; 7 uses
  %i.bjd = load <2 x float>, ptr %i.axj, align 4, !tbaa !18, !noalias !82 ; 5 uses
  %i.bje = fneg <2 x float> %i.bjd                ; 2 uses
  %i.bjf = shufflevector <2 x float> %i.bjd, <2 x float> %i.bjc, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bjg = fneg <2 x float> %i.bjf                ; 2 uses
  %i.bjh = extractelement <2 x float> %i.bjc, i64 1 ; 8 uses
  %i.bji = fneg <2 x float> %i.bjc
  %i.bjj = extractelement <2 x float> %i.bjg, i64 1
  %i.bjk = extractelement <2 x float> %i.bjd, i64 1 ; 9 uses
  %i.bjl = extractelement <2 x float> %i.bjc, i64 0 ; 8 uses
  %i.bjm = fmul float %i.biz, %i.bjj
  %i.bjn = tail call float @llvm.fmuladd.f32(float %i.bjk, float %i.bjb, float %i.bjm) ; 6 uses
  %i.bjo = fmul <2 x float> %i.biy, %i.bje
  %i.bjp = shufflevector <2 x float> %i.biy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bjq = insertelement <2 x float> %i.bjp, float %i.biz, i64 1
  %i.bjr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bjc, <2 x float> %i.bjq, <2 x float> %i.bjo) ; 3 uses
  %i.bjs = fmul float %i.bjn, %i.bjn
  %i.bjt = extractelement <2 x float> %i.bjr, i64 1 ; 5 uses
  %i.bju = tail call float @llvm.fmuladd.f32(float %i.bjt, float %i.bjt, float %i.bjs)
  %i.bjv = extractelement <2 x float> %i.bjr, i64 0 ; 5 uses
  %i.bjw = tail call float @llvm.fmuladd.f32(float %i.bjv, float %i.bjv, float %i.bju)
  %sqrt.i284.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.bjw) ; 5 uses
  %i.bjx = fmul float %i.bjh, %i.bjh
  %i.bjy = tail call float @llvm.fmuladd.f32(float %i.bjl, float %i.bjl, float %i.bjx)
  %i.bjz = tail call float @llvm.fmuladd.f32(float %i.bjk, float %i.bjk, float %i.bjy) ; 2 uses
  %i.bka = fmul float %i.bja, %i.bja
  %i.bkb = tail call float @llvm.fmuladd.f32(float %i.bjb, float %i.bjb, float %i.bka)
  %i.bkc = tail call float @llvm.fmuladd.f32(float %i.biz, float %i.biz, float %i.bkb) ; 2 uses
  %i.bkd = fmul float %i.bjz, %i.bkc
  %i.bke = tail call float @llvm.sqrt.f32(float %i.bkd)
  %i.bkf = fdiv float %sqrt.i284.us.us.us.i.i, %i.bke ; 2 uses
  %i.bkg = tail call noundef float @llvm.fabs.f32(float %i.bkf)
  %i.bkh = fcmp olt float %i.bkg, 1.000000e+00
  br i1 %i.bkh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.bki = tail call noundef float @asinf(float noundef %i.bkf) #19, !noalias !82
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0.i.i285.us.us.us.i.i = phi float [ %i.bki, %bb.aq ], [ f0x3FC90FDB, %bb.ap ]
  %i.bkj = uitofp nneg i32 %.0386.us.us.us.i.i to float ; 3 uses
  %i.bkk = fmul float %.0.i.i285.us.us.us.i.i, %i.bkj
  %i.bkl = fdiv float %i.bkk, %i.apw              ; 2 uses
  %i.bkm = tail call noundef float @sinf(float noundef %i.bkl) #19, !noalias !82 ; 2 uses
  %i.bkn = tail call noundef float @cosf(float noundef %i.bkl) #19, !noalias !82 ; 4 uses
  %i.bko = fmul float %i.bjh, %i.bjn
  %i.bkp = tail call float @llvm.fmuladd.f32(float %i.bjl, float %i.bjt, float %i.bko)
  %i.bkq = tail call float @llvm.fmuladd.f32(float %i.bjk, float %i.bjv, float %i.bkp)
  %i.bkr = fdiv float %i.bkq, %sqrt.i284.us.us.us.i.i ; 2 uses
  %i.bks = fpext float %i.bkn to double
  %i.bkt = fsub double 1.000000e+00, %i.bks       ; 2 uses
  %i.bku = fpext float %sqrt.i284.us.us.us.i.i to double ; 2 uses
  %i.bkv = fneg float %i.bjv
  %i.bkw = fmul float %i.bjn, %i.bkr
  %i.bkx = fpext float %i.bkw to double
  %i.bky = fmul double %i.bkt, %i.bkx
  %i.bkz = fdiv double %i.bky, %i.bku
  %i.bla = fmul float %i.bjh, %i.bkn
  %i.blb = fpext float %i.bla to double
  %i.blc = fadd double %i.bkz, %i.blb
  %i.bld = fneg float %i.bjt
  %i.ble = fmul float %i.bjk, %i.bld
  %i.blf = tail call float @llvm.fmuladd.f32(float %i.bjv, float %i.bjl, float %i.ble)
  %i.blg = fmul float %i.blf, %i.bkm
  %i.blh = fdiv float %i.blg, %sqrt.i284.us.us.us.i.i
  %i.bli = fpext float %i.blh to double
  %i.blj = fneg float %i.bjn
  %i.blk = fadd double %i.blc, %i.bli
  %i.bll = fptrunc double %i.blk to float         ; 3 uses
  %i.blm = fmul float %i.bjl, %i.bkn
  %i.bln = fmul float %i.bjh, %i.bkv
  %i.blo = tail call float @llvm.fmuladd.f32(float %i.bjn, float %i.bjk, float %i.bln)
  %i.blp = insertelement <2 x float> poison, float %i.bkr, i64 0
  %i.blq = shufflevector <2 x float> %i.blp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.blr = fmul <2 x float> %i.bjr, %i.blq
  %i.bls = fpext <2 x float> %i.blr to <2 x double>
  %i.blt = insertelement <2 x double> poison, double %i.bkt, i64 0
  %i.blu = shufflevector <2 x double> %i.blt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.blv = fmul <2 x double> %i.blu, %i.bls
  %i.blw = insertelement <2 x double> poison, double %i.bku, i64 0
  %i.blx = shufflevector <2 x double> %i.blw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bly = fdiv <2 x double> %i.blv, %i.blx
  %i.blz = fmul float %i.bjk, %i.bkn
  %i.bma = insertelement <2 x float> poison, float %i.blz, i64 0
  %i.bmb = insertelement <2 x float> %i.bma, float %i.blm, i64 1
  %i.bmc = fpext <2 x float> %i.bmb to <2 x double>
  %i.bmd = fadd <2 x double> %i.bly, %i.bmc
  %i.bme = fmul float %i.bjl, %i.blj
  %i.bmf = tail call float @llvm.fmuladd.f32(float %i.bjt, float %i.bjh, float %i.bme)
  %i.bmg = insertelement <2 x float> poison, float %i.bmf, i64 0
  %i.bmh = insertelement <2 x float> %i.bmg, float %i.blo, i64 1
  %i.bmi = insertelement <2 x float> poison, float %i.bkm, i64 0
  %i.bmj = shufflevector <2 x float> %i.bmi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmk = fmul <2 x float> %i.bmh, %i.bmj
  %i.bml = insertelement <2 x float> poison, float %sqrt.i284.us.us.us.i.i, i64 0
  %i.bmm = shufflevector <2 x float> %i.bml, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmn = fdiv <2 x float> %i.bmk, %i.bmm
  %i.bmo = fpext <2 x float> %i.bmn to <2 x double>
  %i.bmp = fadd <2 x double> %i.bmd, %i.bmo
  %i.bmq = fptrunc <2 x double> %i.bmp to <2 x float> ; 3 uses
  %i.bmr = fmul float %i.bll, %i.bll
  %i.bms = extractelement <2 x float> %i.bmq, i64 1 ; 2 uses
  %i.bmt = tail call float @llvm.fmuladd.f32(float %i.bms, float %i.bms, float %i.bmr)
  %i.bmu = extractelement <2 x float> %i.bmq, i64 0 ; 2 uses
  %i.bmv = tail call float @llvm.fmuladd.f32(float %i.bmu, float %i.bmu, float %i.bmt)
  %sqrt95.i286.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.bmv) ; 2 uses
  %i.bmw = fdiv float %i.bll, %sqrt95.i286.us.us.us.i.i ; 4 uses
  %i.bmx = insertelement <2 x float> poison, float %sqrt95.i286.us.us.us.i.i, i64 0
  %i.bmy = shufflevector <2 x float> %i.bmx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmz = fdiv <2 x float> %i.bmq, %i.bmy        ; 3 uses
  %i.bna = load <2 x float>, ptr %i.ayj, align 4, !tbaa !18, !noalias !82 ; 8 uses
  %i.bnb = extractelement <2 x float> %i.bna, i64 1 ; 10 uses
  %i.bnc = fneg float %i.bnb
  %i.bnd = fmul float %i.bja, %i.bnc
  %i.bne = load <2 x float>, ptr %i.ayf, align 4, !tbaa !18, !noalias !82 ; 5 uses
  %i.bnf = extractelement <2 x float> %i.bna, i64 0 ; 7 uses
  %i.bng = tail call float @llvm.fmuladd.f32(float %i.bnf, float %i.biz, float %i.bnd) ; 6 uses
  %i.bnh = extractelement <2 x float> %i.bne, i64 0 ; 9 uses
  %i.bni = fneg float %i.bnh
  %i.bnj = fmul float %i.biz, %i.bni
  %i.bnk = tail call float @llvm.fmuladd.f32(float %i.bnb, float %i.bjb, float %i.bnj) ; 6 uses
  %i.bnl = fneg float %i.bnf
  %i.bnm = fmul float %i.bjb, %i.bnl
  %i.bnn = tail call float @llvm.fmuladd.f32(float %i.bnh, float %i.bja, float %i.bnm) ; 6 uses
  %i.bno = fmul float %i.bnk, %i.bnk
  %i.bnp = tail call float @llvm.fmuladd.f32(float %i.bng, float %i.bng, float %i.bno)
  %i.bnq = tail call float @llvm.fmuladd.f32(float %i.bnn, float %i.bnn, float %i.bnp)
  %sqrt.i288.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.bnq) ; 5 uses
  %foldExtExtBinop99 = fmul <2 x float> %i.bna, %i.bna
  %i.bnr = extractelement <2 x float> %foldExtExtBinop99, i64 0
  %i.bns = tail call float @llvm.fmuladd.f32(float %i.bnh, float %i.bnh, float %i.bnr)
  %i.bnt = tail call float @llvm.fmuladd.f32(float %i.bnb, float %i.bnb, float %i.bns) ; 2 uses
  %i.bnu = fmul float %i.bkc, %i.bnt
  %i.bnv = tail call float @llvm.sqrt.f32(float %i.bnu) ; 2 uses
  %i.bnw = fdiv float %sqrt.i288.us.us.us.i.i, %i.bnv ; 2 uses
  %i.bnx = tail call noundef float @llvm.fabs.f32(float %i.bnw)
  %i.bny = fcmp olt float %i.bnx, 1.000000e+00
  br i1 %i.bny, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.bnz = tail call noundef float @asinf(float noundef %i.bnw) #19, !noalias !82
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0.i.i289.us.us.us.i.i = phi float [ %i.bnz, %bb.as ], [ f0x3FC90FDB, %bb.ar ]
  %i.boa = fmul float %.0.i.i289.us.us.us.i.i, %i.bkj
  %i.bob = fdiv float %i.boa, %i.apw              ; 2 uses
  %i.boc = tail call noundef float @sinf(float noundef %i.bob) #19, !noalias !82 ; 3 uses
  %i.bod = tail call noundef float @cosf(float noundef %i.bob) #19, !noalias !82 ; 3 uses
  %i.boe = fmul float %i.bnf, %i.bnk
  %i.bof = tail call float @llvm.fmuladd.f32(float %i.bnh, float %i.bng, float %i.boe)
  %i.bog = tail call float @llvm.fmuladd.f32(float %i.bnb, float %i.bnn, float %i.bof)
  %i.boh = fdiv float %i.bog, %sqrt.i288.us.us.us.i.i ; 3 uses
  %i.boi = fmul float %i.bng, %i.boh
  %i.boj = fpext float %i.boi to double
  %i.bok = fpext float %i.bod to double
  %i.bol = fsub double 1.000000e+00, %i.bok       ; 3 uses
  %i.bom = fmul double %i.bol, %i.boj
  %i.bon = fpext float %sqrt.i288.us.us.us.i.i to double ; 2 uses
  %i.boo = fneg float %i.bnn
  %i.bop = fmul float %i.bnf, %i.boo
  %i.boq = tail call float @llvm.fmuladd.f32(float %i.bnk, float %i.bnb, float %i.bop)
  %i.bor = fmul float %i.bnk, %i.boh
  %i.bos = fpext float %i.bor to double
  %i.bot = fmul double %i.bol, %i.bos
  %i.bou = fneg float %i.bng
  %i.bov = fmul float %i.bnb, %i.bou
  %i.bow = tail call float @llvm.fmuladd.f32(float %i.bnn, float %i.bnh, float %i.bov)
  %i.box = fmul float %i.bnn, %i.boh
  %i.boy = fpext float %i.box to double
  %i.boz = fmul double %i.bol, %i.boy
  %i.bpa = fdiv double %i.boz, %i.bon
  %i.bpb = fmul float %i.bnb, %i.bod
  %i.bpc = fpext float %i.bpb to double
  %i.bpd = fadd double %i.bpa, %i.bpc
  %i.bpe = fneg float %i.bnk
  %i.bpf = fmul float %i.bnh, %i.bpe
  %i.bpg = tail call float @llvm.fmuladd.f32(float %i.bng, float %i.bnf, float %i.bpf)
  %i.bph = fmul float %i.bpg, %i.boc
  %i.bpi = fdiv float %i.bph, %sqrt.i288.us.us.us.i.i
  %i.bpj = fpext float %i.bpi to double
  %i.bpk = sub nuw nsw i32 %i.bfr, %.0386.us.us.us.i.i
  %i.bpl = fmul <2 x float> %i.bne, %i.bje
  %i.bpm = fmul <2 x float> %i.bna, %i.bjg
  %i.bpn = shufflevector <2 x float> %i.bna, <2 x float> %i.bne, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bpo = fmul <2 x float> %i.bpn, %i.bji
  %i.bpp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bjc, <2 x float> %i.bna, <2 x float> %i.bpl) ; 3 uses
  %i.bpq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bjd, <2 x float> %i.bpn, <2 x float> %i.bpm) ; 2 uses
  %i.bpr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bjf, <2 x float> %i.bne, <2 x float> %i.bpo)
  %i.bps = fmul float %i.boq, %i.boc
  %i.bpt = insertelement <2 x double> poison, double %i.bom, i64 0
  %i.bpu = insertelement <2 x double> %i.bpt, double %i.bot, i64 1
  %i.bpv = insertelement <2 x double> poison, double %i.bon, i64 0
  %i.bpw = shufflevector <2 x double> %i.bpv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bpx = fdiv <2 x double> %i.bpu, %i.bpw
  %i.bpy = shufflevector <2 x float> %i.bna, <2 x float> %i.bne, <2 x i32> <i32 2, i32 0>
  %i.bpz = insertelement <2 x float> poison, float %i.bod, i64 0
  %i.bqa = shufflevector <2 x float> %i.bpz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bqb = fmul <2 x float> %i.bpy, %i.bqa
  %i.bqc = fpext <2 x float> %i.bqb to <2 x double>
  %i.bqd = fadd <2 x double> %i.bpx, %i.bqc
  %i.bqe = fmul float %i.bow, %i.boc
  %i.bqf = insertelement <2 x float> poison, float %i.bps, i64 0
  %i.bqg = insertelement <2 x float> %i.bqf, float %i.bqe, i64 1
  %i.bqh = insertelement <2 x float> poison, float %sqrt.i288.us.us.us.i.i, i64 0
  %i.bqi = shufflevector <2 x float> %i.bqh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bqj = fdiv <2 x float> %i.bqg, %i.bqi
  %i.bqk = fpext <2 x float> %i.bqj to <2 x double>
  %i.bql = fadd <2 x double> %i.bqd, %i.bqk
  %i.bqm = fptrunc <2 x double> %i.bql to <2 x float> ; 5 uses
  %i.bqn = fadd double %i.bpd, %i.bpj
  %i.bqo = fptrunc double %i.bqn to float         ; 3 uses
  %foldExtExtBinop101 = fmul <2 x float> %i.bqm, %i.bqm
  %i.bqp = extractelement <2 x float> %foldExtExtBinop101, i64 1
  %i.bqq = extractelement <2 x float> %i.bqm, i64 0 ; 2 uses
  %i.bqr = tail call float @llvm.fmuladd.f32(float %i.bqq, float %i.bqq, float %i.bqp)
  %i.bqs = tail call float @llvm.fmuladd.f32(float %i.bqo, float %i.bqo, float %i.bqr)
  %sqrt95.i290.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.bqs)
  %i.bqt = insertelement <2 x float> poison, float %sqrt95.i290.us.us.us.i.i, i64 0
  %i.bqu = shufflevector <2 x float> %i.bqt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bqv = fdiv <2 x float> %i.bqm, %i.bqu        ; 2 uses
  %i.bqw = shufflevector <2 x float> %i.bqm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bqx = insertelement <2 x float> %i.bqw, float %i.bqo, i64 1
  %i.bqy = fdiv <2 x float> %i.bqx, %i.bqu        ; 5 uses
  %i.bqz = extractelement <2 x float> %i.bpq, i64 1 ; 4 uses
  %i.bra = fmul float %i.bqz, %i.bqz
  %i.brb = extractelement <2 x float> %i.bpp, i64 1 ; 4 uses
  %i.brc = tail call float @llvm.fmuladd.f32(float %i.brb, float %i.brb, float %i.bra)
  %i.brd = extractelement <2 x float> %i.bpp, i64 0 ; 4 uses
  %i.bre = tail call float @llvm.fmuladd.f32(float %i.brd, float %i.brd, float %i.brc)
  %sqrt.i292.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.bre) ; 5 uses
  %i.brf = fmul float %i.bjz, %i.bnt
  %i.brg = tail call float @llvm.sqrt.f32(float %i.brf)
  %i.brh = fdiv float %sqrt.i292.us.us.us.i.i, %i.brg ; 2 uses
  %i.bri = tail call noundef float @llvm.fabs.f32(float %i.brh)
  %i.brj = fcmp olt float %i.bri, 1.000000e+00
  br i1 %i.brj, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.brk = tail call noundef float @asinf(float noundef %i.brh) #19, !noalias !82
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0.i.i293.us.us.us.i.i = phi float [ %i.brk, %bb.au ], [ f0x3FC90FDB, %bb.at ]
  %i.brl = uitofp nneg i32 %i.bpk to float        ; 2 uses
  %i.brm = fmul float %.0.i.i293.us.us.us.i.i, %i.brl
  %i.brn = fdiv float %i.brm, %i.apw              ; 2 uses
  %i.bro = tail call noundef float @sinf(float noundef %i.brn) #19, !noalias !82 ; 2 uses
  %i.brp = tail call noundef float @cosf(float noundef %i.brn) #19, !noalias !82 ; 3 uses
  %i.brq = fmul float %i.bjh, %i.bqz
  %i.brr = tail call float @llvm.fmuladd.f32(float %i.bjl, float %i.brb, float %i.brq)
  %i.brs = tail call float @llvm.fmuladd.f32(float %i.bjk, float %i.brd, float %i.brr)
  %i.brt = fdiv float %i.brs, %sqrt.i292.us.us.us.i.i ; 2 uses
  %i.bru = fpext float %i.brp to double
  %i.brv = fsub double 1.000000e+00, %i.bru       ; 2 uses
  %i.brw = fpext float %sqrt.i292.us.us.us.i.i to double ; 2 uses
  %i.brx = fneg <2 x float> %i.bpr
  %i.bry = fmul float %i.bqz, %i.brt
  %i.brz = fpext float %i.bry to double
  %i.bsa = fmul double %i.brv, %i.brz
  %i.bsb = fdiv double %i.bsa, %i.brw
  %i.bsc = fmul float %i.bjh, %i.brp
  %i.bsd = fpext float %i.bsc to double
  %i.bse = fneg float %i.brb
  %i.bsf = fmul float %i.bjk, %i.bse
  %i.bsg = tail call float @llvm.fmuladd.f32(float %i.brd, float %i.bjl, float %i.bsf)
  %i.bsh = fmul float %i.bsg, %i.bro
  %i.bsi = fneg float %i.biz
  %i.bsj = fmul float %i.bnf, %i.bsi
  %i.bsk = tail call float @llvm.fmuladd.f32(float %i.bja, float %i.bnb, float %i.bsj) ; 6 uses
  %i.bsl = fneg float %i.bjb
  %i.bsm = fmul float %i.bnb, %i.bsl
  %i.bsn = tail call float @llvm.fmuladd.f32(float %i.biz, float %i.bnh, float %i.bsm) ; 6 uses
  %i.bso = fneg float %i.bja
  %i.bsp = fmul float %i.bnh, %i.bso
  %i.bsq = tail call float @llvm.fmuladd.f32(float %i.bjb, float %i.bnf, float %i.bsp) ; 6 uses
  %i.bsr = fadd double %i.bsb, %i.bsd
  %i.bss = fdiv float %i.bsh, %sqrt.i292.us.us.us.i.i
  %i.bst = fpext float %i.bss to double
  %i.bsu = fadd double %i.bsr, %i.bst
  %i.bsv = fptrunc double %i.bsu to float         ; 3 uses
  %i.bsw = insertelement <2 x float> poison, float %i.brt, i64 0
  %i.bsx = shufflevector <2 x float> %i.bsw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bsy = fmul <2 x float> %i.bpp, %i.bsx
  %i.bsz = fpext <2 x float> %i.bsy to <2 x double>
  %i.bta = insertelement <2 x double> poison, double %i.brv, i64 0
  %i.btb = shufflevector <2 x double> %i.bta, <2 x double> poison, <2 x i32> zeroinitializer
  %i.btc = fmul <2 x double> %i.btb, %i.bsz
  %i.btd = insertelement <2 x double> poison, double %i.brw, i64 0
  %i.bte = shufflevector <2 x double> %i.btd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.btf = fdiv <2 x double> %i.btc, %i.bte
  %i.btg = insertelement <2 x float> poison, float %i.brp, i64 0
  %i.bth = shufflevector <2 x float> %i.btg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bti = fmul <2 x float> %i.bjf, %i.bth
  %i.btj = fpext <2 x float> %i.bti to <2 x double>
  %i.btk = fmul <2 x float> %i.bjc, %i.brx
  %i.btl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bpq, <2 x float> %i.bjd, <2 x float> %i.btk)
  %i.btm = insertelement <2 x float> poison, float %i.bro, i64 0
  %i.btn = shufflevector <2 x float> %i.btm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bto = fmul <2 x float> %i.btl, %i.btn
  %i.btp = fadd <2 x double> %i.btf, %i.btj
  %i.btq = insertelement <2 x float> poison, float %sqrt.i292.us.us.us.i.i, i64 0
  %i.btr = shufflevector <2 x float> %i.btq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bts = fdiv <2 x float> %i.bto, %i.btr
  %i.btt = fpext <2 x float> %i.bts to <2 x double>
  %i.btu = fadd <2 x double> %i.btp, %i.btt
  %i.btv = fptrunc <2 x double> %i.btu to <2 x float> ; 3 uses
  %i.btw = fmul float %i.bsv, %i.bsv
  %i.btx = extractelement <2 x float> %i.btv, i64 1 ; 2 uses
  %i.bty = tail call float @llvm.fmuladd.f32(float %i.btx, float %i.btx, float %i.btw)
  %i.btz = extractelement <2 x float> %i.btv, i64 0 ; 2 uses
  %i.bua = tail call float @llvm.fmuladd.f32(float %i.btz, float %i.btz, float %i.bty)
  %sqrt95.i294.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.bua) ; 2 uses
  %i.bub = fdiv float %i.bsv, %sqrt95.i294.us.us.us.i.i ; 4 uses
  %i.buc = insertelement <2 x float> poison, float %sqrt95.i294.us.us.us.i.i, i64 0
  %i.bud = shufflevector <2 x float> %i.buc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bue = fdiv <2 x float> %i.btv, %i.bud        ; 4 uses
  %i.buf = fmul float %i.bsn, %i.bsn
  %i.bug = tail call float @llvm.fmuladd.f32(float %i.bsk, float %i.bsk, float %i.buf)
  %i.buh = tail call float @llvm.fmuladd.f32(float %i.bsq, float %i.bsq, float %i.bug)
  %i.bui = tail call float @llvm.sqrt.f32(float %i.buh) ; 5 uses
  %i.buj = fdiv float %i.bui, %i.bnv              ; 2 uses
  %i.buk = tail call noundef float @llvm.fabs.f32(float %i.buj)
  %i.bul = fcmp olt float %i.buk, 1.000000e+00
  br i1 %i.bul, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.bum = tail call noundef float @asinf(float noundef %i.buj) #19, !noalias !82
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0.i.i297.us.us.us.i.i = phi float [ %i.bum, %bb.aw ], [ f0x3FC90FDB, %bb.av ]
  %i.bun = fmul float %.0.i.i297.us.us.us.i.i, %i.brl
  %i.buo = fdiv float %i.bun, %i.apw              ; 2 uses
  %i.bup = tail call noundef float @sinf(float noundef %i.buo) #19, !noalias !82 ; 2 uses
  %i.buq = tail call noundef float @cosf(float noundef %i.buo) #19, !noalias !82 ; 3 uses
  %i.bur = fmul float %i.bja, %i.bsn
  %i.bus = tail call float @llvm.fmuladd.f32(float %i.bjb, float %i.bsk, float %i.bur)
  %i.but = tail call float @llvm.fmuladd.f32(float %i.biz, float %i.bsq, float %i.bus)
  %i.buu = fdiv float %i.but, %i.bui              ; 3 uses
  %i.buv = fmul float %i.bsk, %i.buu
  %i.buw = fpext float %i.buv to double
  %i.bux = fpext float %i.buq to double
  %i.buy = fsub double 1.000000e+00, %i.bux       ; 3 uses
  %i.buz = fpext float %i.bui to double           ; 2 uses
  %i.bva = fneg float %i.bsq
  %i.bvb = fmul float %i.bja, %i.bva
  %i.bvc = fmul float %i.bsn, %i.buu
  %i.bvd = fpext float %i.bvc to double
  %i.bve = fneg float %i.bsk
  %i.bvf = fmul float %i.biz, %i.bve
  %i.bvg = fmul float %i.bsq, %i.buu
  %i.bvh = fpext float %i.bvg to double
  %i.bvi = fmul double %i.buy, %i.bvh
  %i.bvj = fdiv double %i.bvi, %i.buz
  %i.bvk = fmul float %i.biz, %i.buq
  %i.bvl = fpext float %i.bvk to double
  %i.bvm = fneg float %i.bsn
  %i.bvn = fmul float %i.bjb, %i.bvm
  %i.bvo = tail call float @llvm.fmuladd.f32(float %i.bsk, float %i.bja, float %i.bvn)
  %i.bvp = fmul float %i.bvo, %i.bup
  %i.bvq = fmul double %i.buy, %i.buw
  %i.bvr = tail call float @llvm.fmuladd.f32(float %i.bsn, float %i.biz, float %i.bvb)
  %i.bvs = fmul double %i.buy, %i.bvd
  %i.bvt = insertelement <2 x double> poison, double %i.bvq, i64 0
  %i.bvu = insertelement <2 x double> %i.bvt, double %i.bvs, i64 1
  %i.bvv = insertelement <2 x double> poison, double %i.buz, i64 0
  %i.bvw = shufflevector <2 x double> %i.bvv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bvx = fdiv <2 x double> %i.bvu, %i.bvw
  %i.bvy = insertelement <2 x float> poison, float %i.buq, i64 0
  %i.bvz = shufflevector <2 x float> %i.bvy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bwa = fmul <2 x float> %i.biy, %i.bvz
  %i.bwb = fpext <2 x float> %i.bwa to <2 x double>
  %i.bwc = fadd <2 x double> %i.bvx, %i.bwb
  %i.bwd = tail call float @llvm.fmuladd.f32(float %i.bsq, float %i.bjb, float %i.bvf)
  %i.bwe = insertelement <2 x float> poison, float %i.bvr, i64 0
  %i.bwf = insertelement <2 x float> %i.bwe, float %i.bwd, i64 1
  %i.bwg = insertelement <2 x float> poison, float %i.bup, i64 0
  %i.bwh = shufflevector <2 x float> %i.bwg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bwi = fmul <2 x float> %i.bwf, %i.bwh
  %i.bwj = insertelement <2 x float> poison, float %i.bui, i64 0
  %i.bwk = shufflevector <2 x float> %i.bwj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bwl = fdiv <2 x float> %i.bwi, %i.bwk
  %i.bwm = fpext <2 x float> %i.bwl to <2 x double>
  %i.bwn = fadd <2 x double> %i.bwc, %i.bwm       ; 2 uses
  %i.bwo = fptrunc <2 x double> %i.bwn to <2 x float> ; 2 uses
  %i.bwp = fadd double %i.bvj, %i.bvl
  %i.bwq = fdiv float %i.bvp, %i.bui
  %i.bwr = fpext float %i.bwq to double
  %i.bws = fadd double %i.bwp, %i.bwr
  %i.bwt = shufflevector <2 x double> %i.bwn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bwu = insertelement <2 x double> %i.bwt, double %i.bws, i64 1
  %i.bwv = fptrunc <2 x double> %i.bwu to <2 x float> ; 4 uses
  %foldExtExtBinop103 = fmul <2 x float> %i.bwv, %i.bwv
  %i.bww = extractelement <2 x float> %foldExtExtBinop103, i64 0
  %i.bwx = extractelement <2 x float> %i.bwo, i64 0 ; 2 uses
  %i.bwy = tail call float @llvm.fmuladd.f32(float %i.bwx, float %i.bwx, float %i.bww)
  %i.bwz = extractelement <2 x float> %i.bwv, i64 1 ; 2 uses
  %i.bxa = tail call float @llvm.fmuladd.f32(float %i.bwz, float %i.bwz, float %i.bwy)
  %sqrt95.i298.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.bxa)
  %i.bxb = insertelement <2 x float> poison, float %sqrt95.i298.us.us.us.i.i, i64 0
  %i.bxc = shufflevector <2 x float> %i.bxb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bxd = fdiv <2 x float> %i.bwo, %i.bxc        ; 3 uses
  %i.bxe = fdiv <2 x float> %i.bwv, %i.bxc        ; 6 uses
  br i1 %7, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.bxf = tail call noundef float @asinf(float noundef %5) #19, !noalias !82
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0.i.i301.us.us.us.i.i = phi float [ %i.bxf, %bb.ay ], [ f0x3FC90FDB, %bb.ax ]
  %i.bxg = fmul float %.0.i.i301.us.us.us.i.i, %i.bkj
  %i.bxh = fdiv float %i.bxg, %i.bfx              ; 2 uses
  %i.bxi = tail call noundef float @sinf(float noundef %i.bxh) #19, !noalias !82 ; 2 uses
  %i.bxj = tail call noundef float @cosf(float noundef %i.bxh) #19, !noalias !82 ; 3 uses
  %i.bxk = fpext float %i.bxj to double
  %i.bxl = fsub double 1.000000e+00, %i.bxk       ; 2 uses
  %i.bxm = fmul double %i.bxl, %i.bio
  %i.bxn = fdiv double %i.bxm, %i.bif
  %i.bxo = fmul float %i.bhd, %i.bxj
  %i.bxp = fpext float %i.bxo to double
  %i.bxq = fadd double %i.bxn, %i.bxp
  %i.bxr = fmul float %i.bir, %i.bxi
  %i.bxs = fdiv float %i.bxr, %sqrt.i300.us.us.us.i.i
  %i.bxt = fpext float %i.bxs to double
  %i.bxu = fadd double %i.bxq, %i.bxt
  %i.bxv = sub nuw nsw i32 %.sroa.speculated.i.i, %.0386.us.us.us.i.i
  %i.bxw = extractelement <2 x float> %i.bqy, i64 1 ; 7 uses
  %i.bxx = fneg float %i.bxw
  %i.bxy = extractelement <2 x float> %i.bqv, i64 0 ; 7 uses
  %i.bxz = fneg float %i.bxy
  %i.bya = extractelement <2 x float> %i.bqy, i64 0 ; 4 uses
  %i.byb = fneg float %i.bya
  %i.byc = insertelement <2 x double> poison, double %i.bxl, i64 0
  %i.byd = shufflevector <2 x double> %i.byc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bye = fmul <2 x double> %i.byd, %i.bij
  %i.byf = fdiv <2 x double> %i.bye, %i.bit
  %i.byg = insertelement <2 x float> poison, float %i.bxj, i64 0
  %i.byh = shufflevector <2 x float> %i.byg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.byi = fmul <2 x float> %i.bgz, %i.byh
  %i.byj = fpext <2 x float> %i.byi to <2 x double>
  %i.byk = fadd <2 x double> %i.byf, %i.byj
  %i.byl = insertelement <2 x float> poison, float %i.bxi, i64 0
  %i.bym = shufflevector <2 x float> %i.byl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.byn = fmul <2 x float> %i.biv, %i.bym
  %i.byo = fdiv <2 x float> %i.byn, %i.bix
  %i.byp = fpext <2 x float> %i.byo to <2 x double>
  %i.byq = fadd <2 x double> %i.byk, %i.byp
  %i.byr = fptrunc <2 x double> %i.byq to <2 x float> ; 4 uses
  %i.bys = fptrunc double %i.bxu to float         ; 3 uses
  %foldExtExtBinop105 = fmul <2 x float> %i.byr, %i.byr
  %i.byt = extractelement <2 x float> %foldExtExtBinop105, i64 1
  %i.byu = extractelement <2 x float> %i.byr, i64 0 ; 2 uses
  %i.byv = tail call float @llvm.fmuladd.f32(float %i.byu, float %i.byu, float %i.byt)
  %i.byw = tail call float @llvm.fmuladd.f32(float %i.bys, float %i.bys, float %i.byv)
  %sqrt95.i302.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.byw) ; 2 uses
  %i.byx = insertelement <2 x float> poison, float %sqrt95.i302.us.us.us.i.i, i64 0
  %i.byy = shufflevector <2 x float> %i.byx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.byz = fdiv <2 x float> %i.byr, %i.byy
  %i.bza = fdiv float %i.bys, %sqrt95.i302.us.us.us.i.i
  %i.bzb = fmul float %i.bmw, %i.bxx
  %i.bzc = extractelement <2 x float> %i.bmz, i64 0 ; 3 uses
  %i.bzd = fmul float %i.bzc, %i.bxz
  %i.bze = insertelement <2 x float> poison, float %i.bzb, i64 0
  %i.bzf = insertelement <2 x float> %i.bze, float %i.bzd, i64 1
  %i.bzg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bqy, <2 x float> %i.bmz, <2 x float> %i.bzf) ; 3 uses
  %i.bzh = extractelement <2 x float> %i.bmz, i64 1 ; 3 uses
  %i.bzi = fmul float %i.bzh, %i.byb
  %i.bzj = tail call float @llvm.fmuladd.f32(float %i.bxy, float %i.bmw, float %i.bzi) ; 6 uses
  %i.bzk = extractelement <2 x float> %i.bzg, i64 1 ; 5 uses
  %i.bzl = fmul float %i.bzk, %i.bzk
  %i.bzm = extractelement <2 x float> %i.bzg, i64 0 ; 5 uses
  %i.bzn = tail call float @llvm.fmuladd.f32(float %i.bzm, float %i.bzm, float %i.bzl)
  %i.bzo = tail call float @llvm.fmuladd.f32(float %i.bzj, float %i.bzj, float %i.bzn)
  %sqrt.i304.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.bzo) ; 5 uses
  %foldExtExtBinop107 = fmul <2 x float> %i.bqy, %i.bqy
  %i.bzp = extractelement <2 x float> %foldExtExtBinop107, i64 0
  %i.bzq = tail call float @llvm.fmuladd.f32(float %i.bxy, float %i.bxy, float %i.bzp)
  %i.bzr = tail call float @llvm.fmuladd.f32(float %i.bxw, float %i.bxw, float %i.bzq)
  %i.bzs = fmul float %i.bmw, %i.bmw
  %i.bzt = tail call float @llvm.fmuladd.f32(float %i.bzh, float %i.bzh, float %i.bzs)
  %i.bzu = tail call float @llvm.fmuladd.f32(float %i.bzc, float %i.bzc, float %i.bzt)
  %i.bzv = fmul float %i.bzu, %i.bzr
  %i.bzw = tail call float @llvm.sqrt.f32(float %i.bzv)
  %i.bzx = fdiv float %sqrt.i304.us.us.us.i.i, %i.bzw ; 2 uses
  %i.bzy = tail call noundef float @llvm.fabs.f32(float %i.bzx)
  %i.bzz = fcmp olt float %i.bzy, 1.000000e+00
  br i1 %i.bzz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.caa = tail call noundef float @asinf(float noundef %i.bzx) #19, !noalias !82
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.0.i.i305.us.us.us.i.i = phi float [ %i.caa, %bb.ba ], [ f0x3FC90FDB, %bb.az ]
  %i.cab = fmul float %.0.i.i305.us.us.us.i.i, %i.bav
  %i.cac = uitofp nneg i32 %i.bxv to float
  %i.cad = fdiv float %i.cab, %i.cac              ; 2 uses
  %i.cae = tail call noundef float @sinf(float noundef %i.cad) #19, !noalias !82 ; 2 uses
  %i.caf = tail call noundef float @cosf(float noundef %i.cad) #19, !noalias !82 ; 3 uses
  %i.cag = fmul float %i.bya, %i.bzk
  %i.cah = tail call float @llvm.fmuladd.f32(float %i.bxy, float %i.bzm, float %i.cag)
  %i.cai = tail call float @llvm.fmuladd.f32(float %i.bxw, float %i.bzj, float %i.cah)
  %i.caj = fdiv float %i.cai, %sqrt.i304.us.us.us.i.i ; 2 uses
  %i.cak = fpext float %i.caf to double
  %i.cal = fsub double 1.000000e+00, %i.cak       ; 2 uses
  %i.cam = fpext float %sqrt.i304.us.us.us.i.i to double ; 2 uses
  %i.can = fneg float %i.bzj
  %i.cao = fneg float %i.bzm
  %i.cap = fmul float %i.bzj, %i.caj
  %i.caq = fpext float %i.cap to double
  %i.car = fmul double %i.cal, %i.caq
  %i.cas = fdiv double %i.car, %i.cam
  %i.cat = fmul float %i.bxw, %i.caf
  %i.cau = fpext float %i.cat to double
  %i.cav = fadd double %i.cas, %i.cau
  %i.caw = fneg float %i.bzk
  %i.cax = fmul float %i.bxy, %i.caw
  %i.cay = tail call float @llvm.fmuladd.f32(float %i.bzm, float %i.bya, float %i.cax)
  %i.caz = fmul float %i.cay, %i.cae
  %i.cba = fdiv float %i.caz, %sqrt.i304.us.us.us.i.i
  %i.cbb = fpext float %i.cba to double
  %i.cbc = fadd double %i.cav, %i.cbb
  %i.cbd = add nuw nsw i32 %.0386.us.us.us.i.i, %.0241390.us.us.us.i.i
  %i.cbe = shufflevector <2 x float> %i.bxe, <2 x float> %i.bxd, <2 x i32> <i32 1, i32 2>
  %i.cbf = fneg <2 x float> %i.cbe
  %i.cbg = extractelement <2 x float> %i.bxe, i64 0 ; 4 uses
  %i.cbh = fneg float %i.cbg
  %i.cbi = fmul float %i.bya, %i.can
  %i.cbj = tail call float @llvm.fmuladd.f32(float %i.bzk, float %i.bxw, float %i.cbi)
  %i.cbk = insertelement <2 x float> poison, float %i.caj, i64 0
  %i.cbl = shufflevector <2 x float> %i.cbk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cbm = fmul <2 x float> %i.bzg, %i.cbl
  %i.cbn = fpext <2 x float> %i.cbm to <2 x double>
  %i.cbo = insertelement <2 x double> poison, double %i.cal, i64 0
  %i.cbp = shufflevector <2 x double> %i.cbo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cbq = fmul <2 x double> %i.cbp, %i.cbn
  %i.cbr = insertelement <2 x double> poison, double %i.cam, i64 0
  %i.cbs = shufflevector <2 x double> %i.cbr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cbt = fdiv <2 x double> %i.cbq, %i.cbs
  %i.cbu = insertelement <2 x float> poison, float %i.caf, i64 0
  %i.cbv = shufflevector <2 x float> %i.cbu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cbw = fmul <2 x float> %i.bqv, %i.cbv
  %i.cbx = fpext <2 x float> %i.cbw to <2 x double>
  %i.cby = fadd <2 x double> %i.cbt, %i.cbx
  %i.cbz = fmul float %i.bxw, %i.cao
  %i.cca = tail call float @llvm.fmuladd.f32(float %i.bzj, float %i.bxy, float %i.cbz)
  %i.ccb = insertelement <2 x float> poison, float %i.cbj, i64 0
  %i.ccc = insertelement <2 x float> %i.ccb, float %i.cca, i64 1
  %i.ccd = insertelement <2 x float> poison, float %i.cae, i64 0
  %i.cce = shufflevector <2 x float> %i.ccd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ccf = fmul <2 x float> %i.ccc, %i.cce
  %i.ccg = insertelement <2 x float> poison, float %sqrt.i304.us.us.us.i.i, i64 0
  %i.cch = shufflevector <2 x float> %i.ccg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cci = fdiv <2 x float> %i.ccf, %i.cch
  %i.ccj = fpext <2 x float> %i.cci to <2 x double>
  %i.cck = fadd <2 x double> %i.cby, %i.ccj
  %i.ccl = fptrunc <2 x double> %i.cck to <2 x float> ; 4 uses
  %i.ccm = fptrunc double %i.cbc to float         ; 3 uses
  %foldExtExtBinop109 = fmul <2 x float> %i.ccl, %i.ccl
  %i.ccn = extractelement <2 x float> %foldExtExtBinop109, i64 1
  %i.cco = extractelement <2 x float> %i.ccl, i64 0 ; 2 uses
  %i.ccp = tail call float @llvm.fmuladd.f32(float %i.cco, float %i.cco, float %i.ccn)
  %i.ccq = tail call float @llvm.fmuladd.f32(float %i.ccm, float %i.ccm, float %i.ccp)
  %sqrt95.i306.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.ccq) ; 2 uses
  %i.ccr = insertelement <2 x float> poison, float %sqrt95.i306.us.us.us.i.i, i64 0
  %i.ccs = shufflevector <2 x float> %i.ccr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cct = fdiv <2 x float> %i.ccl, %i.ccs
  %i.ccu = fdiv float %i.ccm, %sqrt95.i306.us.us.us.i.i
  %i.ccv = shufflevector <2 x float> %i.bue, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ccw = insertelement <2 x float> %i.ccv, float %i.bub, i64 0
  %i.ccx = fmul <2 x float> %i.ccw, %i.cbf
  %i.ccy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bxe, <2 x float> %i.bue, <2 x float> %i.ccx) ; 3 uses
  %i.ccz = extractelement <2 x float> %i.bue, i64 1 ; 3 uses
  %i.cda = fmul float %i.ccz, %i.cbh
  %i.cdb = extractelement <2 x float> %i.bxd, i64 0 ; 6 uses
  %i.cdc = tail call float @llvm.fmuladd.f32(float %i.cdb, float %i.bub, float %i.cda) ; 6 uses
  %i.cdd = extractelement <2 x float> %i.ccy, i64 1 ; 5 uses
  %i.cde = fmul float %i.cdd, %i.cdd
  %i.cdf = extractelement <2 x float> %i.ccy, i64 0 ; 5 uses
  %i.cdg = tail call float @llvm.fmuladd.f32(float %i.cdf, float %i.cdf, float %i.cde)
  %i.cdh = tail call float @llvm.fmuladd.f32(float %i.cdc, float %i.cdc, float %i.cdg)
  %sqrt.i308.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.cdh) ; 5 uses
  %foldExtExtBinop111 = fmul <2 x float> %i.bxe, %i.bxe
  %i.cdi = extractelement <2 x float> %foldExtExtBinop111, i64 0
  %i.cdj = tail call float @llvm.fmuladd.f32(float %i.cdb, float %i.cdb, float %i.cdi)
  %i.cdk = extractelement <2 x float> %i.bxe, i64 1 ; 6 uses
  %i.cdl = tail call float @llvm.fmuladd.f32(float %i.cdk, float %i.cdk, float %i.cdj)
  %i.cdm = fmul float %i.bub, %i.bub
  %i.cdn = tail call float @llvm.fmuladd.f32(float %i.ccz, float %i.ccz, float %i.cdm)
  %i.cdo = extractelement <2 x float> %i.bue, i64 0 ; 2 uses
  %i.cdp = tail call float @llvm.fmuladd.f32(float %i.cdo, float %i.cdo, float %i.cdn)
  %i.cdq = fmul float %i.cdp, %i.cdl
  %i.cdr = tail call float @llvm.sqrt.f32(float %i.cdq)
  %i.cds = fdiv float %sqrt.i308.us.us.us.i.i, %i.cdr ; 2 uses
  %i.cdt = tail call noundef float @llvm.fabs.f32(float %i.cds)
  %i.cdu = fcmp olt float %i.cdt, 1.000000e+00
  br i1 %i.cdu, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.cdv = tail call noundef float @asinf(float noundef %i.cds) #19, !noalias !82
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.0.i.i309.us.us.us.i.i = phi float [ %i.cdv, %bb.bc ], [ f0x3FC90FDB, %bb.bb ]
  %i.cdw = fmul float %.0.i.i309.us.us.us.i.i, %i.bav
  %i.cdx = uitofp nneg i32 %i.cbd to float
  %i.cdy = fdiv float %i.cdw, %i.cdx              ; 2 uses
  %i.cdz = tail call noundef float @sinf(float noundef %i.cdy) #19, !noalias !82 ; 2 uses
  %i.cea = tail call noundef float @cosf(float noundef %i.cdy) #19, !noalias !82 ; 3 uses
  %i.ceb = fmul float %i.cbg, %i.cdd
  %i.cec = tail call float @llvm.fmuladd.f32(float %i.cdb, float %i.cdf, float %i.ceb)
  %i.ced = tail call float @llvm.fmuladd.f32(float %i.cdk, float %i.cdc, float %i.cec)
  %i.cee = fdiv float %i.ced, %sqrt.i308.us.us.us.i.i ; 2 uses
  %i.cef = fpext float %i.cea to double
  %i.ceg = fsub double 1.000000e+00, %i.cef       ; 2 uses
  %i.ceh = fpext float %sqrt.i308.us.us.us.i.i to double ; 2 uses
  %i.cei = fneg float %i.cdc
  %i.cej = fneg float %i.cdf
  %i.cek = fmul float %i.cdc, %i.cee
  %i.cel = fpext float %i.cek to double
  %i.cem = fmul double %i.ceg, %i.cel
  %i.cen = fdiv double %i.cem, %i.ceh
  %i.ceo = fmul float %i.cdk, %i.cea
  %i.cep = fpext float %i.ceo to double
  %i.ceq = fadd double %i.cen, %i.cep
  %i.cer = fneg float %i.cdd
  %i.ces = fmul float %i.cdb, %i.cer
  %i.cet = tail call float @llvm.fmuladd.f32(float %i.cdf, float %i.cbg, float %i.ces)
  %i.ceu = fmul float %i.cet, %i.cdz
  %i.cev = fdiv float %i.ceu, %sqrt.i308.us.us.us.i.i
  %i.cew = fpext float %i.cev to double
  %i.cex = fadd double %i.ceq, %i.cew
  %i.cey = fptrunc double %i.cex to float         ; 3 uses
  %i.cez = fadd <2 x float> %i.byz, %i.cct
  %i.cfa = fadd float %i.bza, %i.ccu
  %.idx468.i.i = mul i64 %indvars.iv431.i.i, 12
  %i.cfb = getelementptr i8, ptr %i.apn, i64 %.idx468.i.i ; 2 uses
  %i.cfc = fmul float %i.cbg, %i.cei
  %i.cfd = tail call float @llvm.fmuladd.f32(float %i.cdd, float %i.cdk, float %i.cfc)
  %i.cfe = insertelement <2 x float> poison, float %i.cee, i64 0
  %i.cff = shufflevector <2 x float> %i.cfe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cfg = fmul <2 x float> %i.ccy, %i.cff
  %i.cfh = fpext <2 x float> %i.cfg to <2 x double>
  %i.cfi = insertelement <2 x double> poison, double %i.ceg, i64 0
  %i.cfj = shufflevector <2 x double> %i.cfi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cfk = fmul <2 x double> %i.cfj, %i.cfh
  %i.cfl = insertelement <2 x double> poison, double %i.ceh, i64 0
  %i.cfm = shufflevector <2 x double> %i.cfl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cfn = fdiv <2 x double> %i.cfk, %i.cfm
  %i.cfo = insertelement <2 x float> poison, float %i.cea, i64 0
  %i.cfp = shufflevector <2 x float> %i.cfo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cfq = fmul <2 x float> %i.bxd, %i.cfp
  %i.cfr = fpext <2 x float> %i.cfq to <2 x double>
  %i.cfs = fadd <2 x double> %i.cfn, %i.cfr
  %i.cft = fmul float %i.cdk, %i.cej
  %i.cfu = tail call float @llvm.fmuladd.f32(float %i.cdc, float %i.cdb, float %i.cft)
  %i.cfv = insertelement <2 x float> poison, float %i.cfd, i64 0
  %i.cfw = insertelement <2 x float> %i.cfv, float %i.cfu, i64 1
  %i.cfx = insertelement <2 x float> poison, float %i.cdz, i64 0
  %i.cfy = shufflevector <2 x float> %i.cfx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cfz = fmul <2 x float> %i.cfw, %i.cfy
  %i.cga = insertelement <2 x float> poison, float %sqrt.i308.us.us.us.i.i, i64 0
  %i.cgb = shufflevector <2 x float> %i.cga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cgc = fdiv <2 x float> %i.cfz, %i.cgb
  %i.cgd = fpext <2 x float> %i.cgc to <2 x double>
  %i.cge = fadd <2 x double> %i.cfs, %i.cgd
  %i.cgf = fptrunc <2 x double> %i.cge to <2 x float> ; 4 uses
  %foldExtExtBinop113 = fmul <2 x float> %i.cgf, %i.cgf
  %i.cgg = extractelement <2 x float> %foldExtExtBinop113, i64 1
  %i.cgh = extractelement <2 x float> %i.cgf, i64 0 ; 2 uses
  %i.cgi = tail call float @llvm.fmuladd.f32(float %i.cgh, float %i.cgh, float %i.cgg)
  %i.cgj = tail call float @llvm.fmuladd.f32(float %i.cey, float %i.cey, float %i.cgi)
  %sqrt95.i310.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.cgj) ; 2 uses
  %i.cgk = insertelement <2 x float> poison, float %sqrt95.i310.us.us.us.i.i, i64 0
  %i.cgl = shufflevector <2 x float> %i.cgk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cgm = fdiv <2 x float> %i.cgf, %i.cgl
  %i.cgn = fdiv float %i.cey, %sqrt95.i310.us.us.us.i.i
  %i.cgo = fadd <2 x float> %i.cez, %i.cgm        ; 4 uses
  %i.cgp = fadd float %i.cfa, %i.cgn              ; 3 uses
  %foldExtExtBinop115 = fmul <2 x float> %i.cgo, %i.cgo
  %i.cgq = extractelement <2 x float> %foldExtExtBinop115, i64 1
  %i.cgr = extractelement <2 x float> %i.cgo, i64 0 ; 2 uses
  %i.cgs = tail call float @llvm.fmuladd.f32(float %i.cgr, float %i.cgr, float %i.cgq)
  %i.cgt = tail call float @llvm.fmuladd.f32(float %i.cgp, float %i.cgp, float %i.cgs)
  %sqrt352.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.cgt) ; 2 uses
  %i.cgu = insertelement <2 x float> poison, float %sqrt352.us.us.us.i.i, i64 0
  %i.cgv = shufflevector <2 x float> %i.cgu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cgw = fdiv <2 x float> %i.cgo, %i.cgv
  store <2 x float> %i.cgw, ptr %i.cfb, align 4, !tbaa !18, !noalias !82
  %i.cgx = fdiv float %i.cgp, %sqrt352.us.us.us.i.i
  %i.cgy = getelementptr i8, ptr %i.cfb, i64 8
  store float %i.cgx, ptr %i.cgy, align 4, !tbaa !18, !noalias !82
  %indvars.iv.next432.i.i = add nsw i64 %indvars.iv431.i.i, 1 ; 3 uses
  %i.cgz = add nuw nsw i32 %.0386.us.us.us.i.i, 1 ; 2 uses
  %exitcond436.not.i.i = icmp eq i32 %i.cgz, %indvars.iv434.i.i
  br i1 %exitcond436.not.i.i, label %._crit_edge.us.us.us.loopexit.i141.i, label %bb.ap, !llvm.loop !69

._crit_edge.us.us.us.loopexit.i141.i:             ; preds = %bb.bd
  %i.cha = add nuw nsw i32 %.0241390.us.us.us.i.i, 1 ; 2 uses
  %indvars.iv.next435.i.i = add nsw i32 %indvars.iv434.i.i, -1
  %exitcond437.not.i.i = icmp eq i32 %i.cha, %i.axh
  br i1 %exitcond437.not.i.i, label %..loopexit_crit_edge.us.us.us.i139.i.loopexit, label %.preheader.us.us.us.i136.i, !llvm.loop !70

..loopexit_crit_edge.us.us.us.i139.i.loopexit:    ; preds = %._crit_edge.us.us.us.loopexit.i141.i
  %i.chb = trunc nsw i64 %indvars.iv.next432.i.i to i32
  br label %..loopexit_crit_edge.us.us.us.i139.i

..loopexit_crit_edge.us.us.us.i139.i:             ; preds = %..loopexit_crit_edge.us.us.us.i139.i.loopexit, %bb.al, %.lr.ph396.us.us.i.i
  %.9.us.us.us.i140.i = phi i32 [ %.6394.us.us.us.i.i, %bb.al ], [ %.6394.us.us.us.i.i, %.lr.ph396.us.us.i.i ], [ %i.chb, %..loopexit_crit_edge.us.us.us.i139.i.loopexit ] ; 2 uses
  %exitcond443.not.i.i = icmp eq i64 %indvars.iv.next441.i.i.a, 31
  br i1 %exitcond443.not.i.i, label %.loopexit354.us.us.i.i, label %.lr.ph396.us.us.i.i, !llvm.loop !71

.loopexit354.us.us.i.i:                           ; preds = %..loopexit_crit_edge.us.us.us.i139.i, %bb.ak
  %.10.us.us.i135.i = phi i32 [ %.5399.us.us.i.i, %bb.ak ], [ %.9.us.us.us.i140.i, %..loopexit_crit_edge.us.us.us.i139.i ] ; 2 uses
  %indvars.iv.next439.i.i = add nuw nsw i64 %indvars.iv438.i.i, 1 ; 2 uses
  %exitcond445.not.i.i = icmp eq i64 %indvars.iv.next439.i.i, 31
  br i1 %exitcond445.not.i.i, label %.split.us.us.i.i, label %bb.ak, !llvm.loop !72

.split.us.us.i.i:                                 ; preds = %.loopexit354.us.us.i.i
  %indvars.iv.next447.i.i = add nuw nsw i64 %indvars.iv446.i.i, 1 ; 2 uses
  %exitcond449.not.i.i = icmp eq i64 %indvars.iv.next447.i.i, 12
  br i1 %exitcond449.not.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %.preheader355.us.i.i, !llvm.loop !73

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %.split.us.us.i.i, %.loopexit250.us.i.i, %.preheader356.i.i, %bb.ac, %.preheader251.i.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %.sink329.i = phi ptr [ %i.aa, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.apn, %bb.ac ], [ %i.aa, %.preheader251.i.i ], [ %i.aa, %.loopexit250.us.i.i ], [ %i.apn, %.preheader356.i.i ], [ %i.apn, %.split.us.us.i.i ] ; 12 uses
  %.sink327.i = phi ptr [ %i.ad, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.apu, %bb.ac ], [ %i.ad, %.preheader251.i.i ], [ %i.ad, %.loopexit250.us.i.i ], [ %i.apu, %.preheader356.i.i ], [ %i.apu, %.split.us.us.i.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.ab, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.apt, %bb.ac ], [ %i.ab, %.preheader251.i.i ], [ %i.ab, %.loopexit250.us.i.i ], [ %i.apt, %.preheader356.i.i ], [ %i.apt, %.split.us.us.i.i ] ; 2 uses
  %i.chc = ptrtoint ptr %.sink327.i to i64
  %i.chd = ptrtoint ptr %.sink329.i to i64        ; 2 uses
  %i.che = sub i64 %i.chc, %i.chd
  %i.chf = ashr exact i64 %i.che, 2
  %i.chg = sdiv i64 %i.chf, 3                     ; 6 uses
  %i.chh = trunc i64 %i.chg to i32                ; 5 uses
  %i.chi = icmp sgt i32 %i.chh, 0                 ; 2 uses
  br i1 %i.chi, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %wide.trip.count.i = and i64 %i.chg, 2147483647
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %.sroa.17.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorIfSaIfEED2Ev.exit.i ], [ %.sroa.17.1.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i ] ; 2 uses
  %.sroa.0188.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorIfSaIfEED2Ev.exit.i ], [ %.sroa.0188.1.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i ] ; 21 uses
  %i.chj = invoke noalias noundef nonnull dereferenceable(516) ptr @_Znwm(i64 noundef 516) #17
          to label %bb.bj unwind label %.loopexit.split-lp.i, !noalias !81 ; 16 uses

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i ] ; 2 uses
  %.sroa.0188.0223.i = phi ptr [ null, %.lr.ph.preheader.i ], [ %.sroa.0188.1.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i ] ; 7 uses
  %.sroa.17.0222.i = phi ptr [ null, %.lr.ph.preheader.i ], [ %.sroa.17.1.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i ] ; 5 uses
  %.sroa.14.0221.i = phi ptr [ null, %.lr.ph.preheader.i ], [ %.sroa.14.1.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i ] ; 3 uses
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 12
  %i.chk = getelementptr inbounds nuw i8, ptr %.sink329.i, i64 %.idx.i ; 2 uses
  %i.chl = load float, ptr %i.chk, align 4, !tbaa !18, !noalias !81
  %i.chm = fpext float %i.chl to double
  %i.chn = fadd double %i.chm, 1.000000e+00
  %i.cho = fmul double %i.chn, 2.000000e+00
  %i.chp = tail call double @llvm.floor.f64(double %i.cho)
  %i.chq = fptosi double %i.chp to i32
  %.sroa.speculated183.i = tail call i32 @llvm.smax.i32(i32 %i.chq, i32 0)
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated183.i, i32 3)
  %i.chr = getelementptr inbounds nuw i8, ptr %i.chk, i64 4
  %i.chs = load <2 x float>, ptr %i.chr, align 4, !tbaa !18, !noalias !81
  %i.cht = fpext <2 x float> %i.chs to <2 x double>
  %i.chu = fadd <2 x double> %i.cht, splat (double 1.000000e+00)
  %i.chv = fmul <2 x double> %i.chu, splat (double 2.000000e+00)
  %i.chw = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.chv)
  %i.chx = fptosi <2 x double> %i.chw to <2 x i32>
  %i.chy = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.chx, <2 x i32> zeroinitializer)
  %i.chz = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.chy, <2 x i32> splat (i32 3))
  %i.cia = shl nuw nsw <2 x i32> %i.chz, <i32 2, i32 4> ; 2 uses
  %i.cib = extractelement <2 x i32> %i.cia, i64 0
  %i.cic = or disjoint i32 %i.cib, %spec.select.i
  %i.cid = extractelement <2 x i32> %i.cia, i64 1
  %i.cie = or disjoint i32 %i.cic, %i.cid         ; 2 uses
  %.not.i158.i = icmp eq ptr %.sroa.14.0221.i, %.sroa.17.0222.i
  br i1 %.not.i158.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i
  store i32 %i.cie, ptr %.sroa.14.0221.i, align 4, !tbaa !19, !noalias !81
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i

bb.bf:                                            ; preds = %.lr.ph.i
  %i.cif = ptrtoint ptr %.sroa.17.0222.i to i64
  %i.cig = ptrtoint ptr %.sroa.0188.0223.i to i64
  %i.cih = sub i64 %i.cif, %i.cig                 ; 6 uses
  %i.cii = icmp eq i64 %i.cih, 9223372036854775804
  br i1 %i.cii, label %bb.bg, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc160.i unwind label %.loopexit.split-lp.i, !noalias !81

end_hunk_0
begin_hunk_1_@_ZN3gmx21SurfaceAreaCalculator11setDotCountEi:bb.a
  store float %i.cnk, ptr %i.cna, align 4, !tbaa !18, !noalias !81
  store <2 x float> %i.cni, ptr %i.cne, align 4, !tbaa !18, !noalias !81
  store float %i.cnb, ptr %i.cnh, align 4, !tbaa !18, !noalias !81
  %i.cnl = sext i32 %.3229.2.i to i64
  %i.cnm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0188.0.lcssa.i, i64 %i.cnl ; 2 uses
  %i.cnn = load i32, ptr %i.cnm, align 4, !tbaa !19, !noalias !81
  store i32 %i.cnn, ptr %i.cmv, align 4, !tbaa !19, !noalias !81
  store i32 %i.cmt, ptr %i.cnm, align 4, !tbaa !19, !noalias !81
  %i.cno = add nsw i32 %.3229.2.i, 1
  %i.cnp = add nsw i32 %.0100230.2.i, 1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.lr.ph234.2.i
  %.4.2.i = phi i32 [ %i.cno, %bb.bp ], [ %.3229.2.i, %.lr.ph234.2.i ] ; 2 uses
  %.1101.2.i = phi i32 [ %i.cnp, %bb.bp ], [ %.0100230.2.i, %.lr.ph234.2.i ] ; 2 uses
  %indvars.iv.next257.2.i = add nsw i64 %indvars.iv256.2.i, 1 ; 2 uses
  %exitcond260.2.not.i = icmp eq i64 %indvars.iv.next257.2.i, %wide.trip.count259.i
  br i1 %exitcond260.2.not.i, label %._crit_edge235.2.i, label %.lr.ph234.2.i, !llvm.loop !78

._crit_edge235.2.i:                               ; preds = %bb.bq, %._crit_edge235.1.i
  %.3.lcssa.2.i = phi i32 [ %.3.lcssa.1.i, %._crit_edge235.1.i ], [ %.4.2.i, %bb.bq ] ; 5 uses
  %.0100.lcssa.2.i = phi i32 [ 0, %._crit_edge235.1.i ], [ %.1101.2.i, %bb.bq ]
  %i.cnq = getelementptr inbounds nuw [4 x i8], ptr %i.chj, i64 %i.cmq
  store i32 %.0100.lcssa.2.i, ptr %i.cnq, align 4, !tbaa !19, !noalias !81
  %i.cnr = add nuw nsw i64 %i.clj, 48             ; 3 uses
  %i.cns = getelementptr inbounds nuw [4 x i8], ptr %i.cit, i64 %i.cnr
  store i32 %.3.lcssa.2.i, ptr %i.cns, align 4, !tbaa !19, !noalias !81
  %i.cnt = icmp slt i32 %.3.lcssa.2.i, %i.chh
  %i.cnu = trunc nuw nsw i64 %i.cnr to i32        ; 2 uses
  br i1 %i.cnt, label %.lr.ph234.preheader.3.i, label %._crit_edge235.3.i

.lr.ph234.preheader.3.i:                          ; preds = %._crit_edge235.2.i
  %i.cnv = sext i32 %.3.lcssa.2.i to i64
  br label %.lr.ph234.3.i

.lr.ph234.3.i:                                    ; preds = %bb.bs, %.lr.ph234.preheader.3.i
  %indvars.iv256.3.i = phi i64 [ %i.cnv, %.lr.ph234.preheader.3.i ], [ %indvars.iv.next257.3.i, %bb.bs ] ; 3 uses
  %.0100230.3.i = phi i32 [ 0, %.lr.ph234.preheader.3.i ], [ %.1101.3.i, %bb.bs ] ; 2 uses
  %.3229.3.i = phi i32 [ %.3.lcssa.2.i, %.lr.ph234.preheader.3.i ], [ %.4.3.i, %bb.bs ] ; 4 uses
  %i.cnw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0188.0.lcssa.i, i64 %indvars.iv256.3.i ; 2 uses
  %i.cnx = load i32, ptr %i.cnw, align 4, !tbaa !19, !noalias !81
  %i.cny = icmp eq i32 %i.cnx, %i.cnu
  br i1 %i.cny, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph234.3.i
  %.idx303.i = mul i64 %indvars.iv256.3.i, 12
  %i.cnz = getelementptr i8, ptr %.sink329.i, i64 %.idx303.i ; 4 uses
  %i.coa = getelementptr i8, ptr %i.cnz, i64 4
  %i.cob = getelementptr i8, ptr %i.cnz, i64 8    ; 2 uses
  %i.coc = load float, ptr %i.cob, align 4, !tbaa !18, !noalias !81
  %i.cod = mul nsw i32 %.3229.3.i, 3
  %i.coe = sext i32 %i.cod to i64
  %i.cof = getelementptr [4 x i8], ptr %.sink329.i, i64 %i.coe ; 4 uses
  %i.cog = load float, ptr %i.cof, align 4, !tbaa !18, !noalias !81
  %i.coh = getelementptr i8, ptr %i.cof, i64 4
  %i.coi = getelementptr i8, ptr %i.cof, i64 8    ; 2 uses
  %i.coj = load <2 x float>, ptr %i.cnz, align 4, !tbaa !18, !noalias !81
  store float %i.cog, ptr %i.cnz, align 4, !tbaa !18, !noalias !81
  %i.cok = load float, ptr %i.coh, align 4, !tbaa !18, !noalias !81
  store float %i.cok, ptr %i.coa, align 4, !tbaa !18, !noalias !81
  %i.col = load float, ptr %i.coi, align 4, !tbaa !18, !noalias !81
  store float %i.col, ptr %i.cob, align 4, !tbaa !18, !noalias !81
  store <2 x float> %i.coj, ptr %i.cof, align 4, !tbaa !18, !noalias !81
  store float %i.coc, ptr %i.coi, align 4, !tbaa !18, !noalias !81
  %i.com = sext i32 %.3229.3.i to i64
  %i.con = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0188.0.lcssa.i, i64 %i.com ; 2 uses
  %i.coo = load i32, ptr %i.con, align 4, !tbaa !19, !noalias !81
  store i32 %i.coo, ptr %i.cnw, align 4, !tbaa !19, !noalias !81
  store i32 %i.cnu, ptr %i.con, align 4, !tbaa !19, !noalias !81
  %i.cop = add nsw i32 %.3229.3.i, 1
  %i.coq = add nsw i32 %.0100230.3.i, 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph234.3.i
  %.4.3.i = phi i32 [ %i.cop, %bb.br ], [ %.3229.3.i, %.lr.ph234.3.i ] ; 2 uses
  %.1101.3.i = phi i32 [ %i.coq, %bb.br ], [ %.0100230.3.i, %.lr.ph234.3.i ] ; 2 uses
  %indvars.iv.next257.3.i = add nsw i64 %indvars.iv256.3.i, 1 ; 2 uses
  %exitcond260.3.not.i = icmp eq i64 %indvars.iv.next257.3.i, %wide.trip.count259.i
  br i1 %exitcond260.3.not.i, label %._crit_edge235.3.i, label %.lr.ph234.3.i, !llvm.loop !78

._crit_edge235.3.i:                               ; preds = %bb.bs, %._crit_edge235.2.i
  %.3.lcssa.3.i = phi i32 [ %.3.lcssa.2.i, %._crit_edge235.2.i ], [ %.4.3.i, %bb.bs ] ; 2 uses
  %.0100.lcssa.3.i = phi i32 [ 0, %._crit_edge235.2.i ], [ %.1101.3.i, %bb.bs ]
  %i.cor = getelementptr inbounds nuw [4 x i8], ptr %i.chj, i64 %i.cnr
  store i32 %.0100.lcssa.3.i, ptr %i.cor, align 4, !tbaa !19, !noalias !81
  %indvars.iv.next267.i = add nuw nsw i64 %indvars.iv266.i, 1 ; 2 uses
  %exitcond270.not.i = icmp eq i64 %indvars.iv.next267.i, 4
  br i1 %exitcond270.not.i, label %bb.bm, label %.preheader.i, !llvm.loop !79

.lr.ph234.i:                                      ; preds = %bb.bu, %.lr.ph234.preheader.i
  %indvars.iv256.i = phi i64 [ %i.cln, %.lr.ph234.preheader.i ], [ %indvars.iv.next257.i, %bb.bu ] ; 3 uses
  %.0100230.i = phi i32 [ 0, %.lr.ph234.preheader.i ], [ %.1101.i, %bb.bu ] ; 2 uses
  %.3229.i = phi i32 [ %.1106241.i, %.lr.ph234.preheader.i ], [ %.4.i, %bb.bu ] ; 4 uses
  %i.cos = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0188.0.lcssa.i, i64 %indvars.iv256.i ; 2 uses
  %i.cot = load i32, ptr %i.cos, align 4, !tbaa !19, !noalias !81
  %i.cou = icmp eq i32 %i.cot, %i.clm
  br i1 %i.cou, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.lr.ph234.i
  %.idx297.i = mul i64 %indvars.iv256.i, 12
  %i.cov = getelementptr i8, ptr %.sink329.i, i64 %.idx297.i ; 4 uses
  %i.cow = getelementptr i8, ptr %i.cov, i64 4
  %i.cox = getelementptr i8, ptr %i.cov, i64 8    ; 2 uses
  %i.coy = load float, ptr %i.cox, align 4, !tbaa !18, !noalias !81
  %i.coz = mul nsw i32 %.3229.i, 3
  %i.cpa = sext i32 %i.coz to i64
  %i.cpb = getelementptr [4 x i8], ptr %.sink329.i, i64 %i.cpa ; 4 uses
  %i.cpc = load float, ptr %i.cpb, align 4, !tbaa !18, !noalias !81
  %i.cpd = getelementptr i8, ptr %i.cpb, i64 4
  %i.cpe = getelementptr i8, ptr %i.cpb, i64 8    ; 2 uses
  %i.cpf = load <2 x float>, ptr %i.cov, align 4, !tbaa !18, !noalias !81
  store float %i.cpc, ptr %i.cov, align 4, !tbaa !18, !noalias !81
  %i.cpg = load float, ptr %i.cpd, align 4, !tbaa !18, !noalias !81
  store float %i.cpg, ptr %i.cow, align 4, !tbaa !18, !noalias !81
  %i.cph = load float, ptr %i.cpe, align 4, !tbaa !18, !noalias !81
  store float %i.cph, ptr %i.cox, align 4, !tbaa !18, !noalias !81
  store <2 x float> %i.cpf, ptr %i.cpb, align 4, !tbaa !18, !noalias !81
  store float %i.coy, ptr %i.cpe, align 4, !tbaa !18, !noalias !81
  %i.cpi = sext i32 %.3229.i to i64
  %i.cpj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0188.0.lcssa.i, i64 %i.cpi ; 2 uses
  %i.cpk = load i32, ptr %i.cpj, align 4, !tbaa !19, !noalias !81
  store i32 %i.cpk, ptr %i.cos, align 4, !tbaa !19, !noalias !81
  store i32 %i.clm, ptr %i.cpj, align 4, !tbaa !19, !noalias !81
  %i.cpl = add nsw i32 %.3229.i, 1
  %i.cpm = add nsw i32 %.0100230.i, 1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph234.i
  %.4.i = phi i32 [ %i.cpl, %bb.bt ], [ %.3229.i, %.lr.ph234.i ] ; 2 uses
  %.1101.i = phi i32 [ %i.cpm, %bb.bt ], [ %.0100230.i, %.lr.ph234.i ] ; 2 uses
  %indvars.iv.next257.i = add nsw i64 %indvars.iv256.i, 1 ; 2 uses
  %exitcond260.not.i = icmp eq i64 %indvars.iv.next257.i, %wide.trip.count259.i
  br i1 %exitcond260.not.i, label %._crit_edge235.i, label %.lr.ph234.i, !llvm.loop !78

_ZNSt6vectorIiSaIiEED2Ev.exit166thread-pre-split.i.thread: ; preds = %bb.bk
  %i.cpn = ptrtoint ptr %.sroa.17.0218.i to i64
  %i.cpo = ptrtoint ptr %.sroa.0188.0214.i to i64
  %i.cpp = sub i64 %i.cpn, %i.cpo
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0188.0214.i, i64 noundef %i.cpp) #18, !noalias !81
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166thread-pre-split.i

_ZNSt6vectorIiSaIiEED2Ev.exit166thread-pre-split.i: ; preds = %bb.bk, %_ZNSt6vectorIiSaIiEED2Ev.exit166thread-pre-split.i.thread
  %i.cpq = ptrtoint ptr %.sink.i to i64
  %i.cpr = sub i64 %i.cpq, %i.chd
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink329.i, i64 noundef %i.cpr) #18, !noalias !81
  resume { ptr, i32 } %lpad.phi.i

_ZL9make_unspii.exit:                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.bl
  %i.cps = load ptr, ptr %0, align 8, !tbaa !15   ; 4 uses
  %i.cpt = load ptr, ptr %i.cps, align 8, !tbaa !12 ; 3 uses
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cps, i64 8
  %i.cpv = getelementptr inbounds nuw i8, ptr %i.cps, i64 16 ; 2 uses
  %i.cpw = load ptr, ptr %i.cpv, align 8, !tbaa !13
  store ptr %.sink329.i, ptr %i.cps, align 8, !tbaa !12
  store ptr %.sink327.i, ptr %i.cpu, align 8, !tbaa !21
  store ptr %.sink.i, ptr %i.cpv, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.cpt, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZL9make_unspii.exit
  %i.cpx = ptrtoint ptr %i.cpw to i64
  %i.cpy = ptrtoint ptr %i.cpt to i64
  %i.cpz = sub i64 %i.cpx, %i.cpy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cpt, i64 noundef %i.cpz) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.bv, %_ZL9make_unspii.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #7

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx21SurfaceAreaCalculator8setRadiiERKNS_8ArrayRefIKfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.01.0.copyload.i = load ptr, ptr %1, align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8 ; 3 uses
  %i.d = icmp eq ptr %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 4 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.e, %.sroa.0.0.copyload.i
  br i1 %.not10.i.i, label %_ZSt11max_elementIN3gmx12ArrayRefIterIKfEEET_S4_S4_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %.pre.i.i = load float, ptr %.sroa.01.0.copyload.i, align 4, !tbaa !18
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.f = phi float [ %i.k, %.lr.ph.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.g = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.e, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.07.011.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %.sroa.01.0.copyload.i, %.lr.ph.preheader.i.i ]
  %i.h = load float, ptr %i.g, align 4, !tbaa !18 ; 2 uses
  %i.i = fcmp olt float %i.f, %i.h                ; 2 uses
  %spec.select.i.i = select i1 %i.i, ptr %i.g, ptr %.sroa.07.011.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %.sroa.0.0.copyload.i
  %i.k = select i1 %i.i, float %i.h, float %i.f
  br i1 %.not.i.i, label %_ZSt11max_elementIN3gmx12ArrayRefIterIKfEEET_S4_S4_.exit, label %.lr.ph.i.i, !llvm.loop !83

_ZSt11max_elementIN3gmx12ArrayRefIterIKfEEET_S4_S4_.exit: ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.07.2.i.i = phi ptr [ %.sroa.01.0.copyload.i, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.l = load float, ptr %.sroa.07.2.i.i, align 4, !tbaa !18
  %i.m = load ptr, ptr %0, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = fmul float %i.l, 2.000000e+00
  tail call void @_ZN3gmx20AnalysisNeighborhood9setCutoffEf(ptr noundef nonnull align 8 dereferenceable(8) %i.n, float noundef %i.o)
  br label %bb.c

bb.c:                                             ; preds = %_ZSt11max_elementIN3gmx12ArrayRefIterIKfEEET_S4_S4_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @_ZN3gmx20AnalysisNeighborhood9setCutoffEf(ptr noundef nonnull align 8 dereferenceable(8), float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx21SurfaceAreaCalculator18setCalculateVolumeEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !36
  %i.d = and i32 %i.c, -3
  %masksel = select i1 %1, i32 2, i32 0
  %.sink = or disjoint i32 %i.d, %masksel
  store i32 %.sink, ptr %i.b, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx21SurfaceAreaCalculator20setCalculateAtomAreaEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !36
  %i.d = and i32 %i.c, -5
  %masksel = select i1 %1, i32 4, i32 0
  %.sink = or disjoint i32 %i.d, %masksel
  store i32 %.sink, ptr %i.b, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx21SurfaceAreaCalculator23setCalculateSurfaceDotsEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !36
  %i.d = and i32 %i.c, -2
  %masksel = zext i1 %1 to i32
  %.sink = or disjoint i32 %i.d, %masksel
  store i32 %.sink, ptr %i.b, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx21SurfaceAreaCalculator9calculateEPA3_KfPK5t_pbciPiiPfS8_PS8_S9_S7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9, ptr nofree noundef writeonly captures(address_is_null) %10) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.gmx::AnalysisNeighborhoodPositions", align 8 ; 9 uses
  %12 = alloca %"class.gmx::AnalysisNeighborhoodSearch", align 8 ; 7 uses
  %13 = alloca %"class.gmx::AnalysisNeighborhoodPairSearch", align 8 ; 7 uses
  %14 = alloca %"class.gmx::AnalysisNeighborhoodPositions", align 8 ; 8 uses
  %15 = alloca %"class.gmx::AnalysisNeighborhoodPair", align 4 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !36
  %i.d = or i32 %i.c, %5                          ; 2 uses
  store float 0.000000e+00, ptr %6, align 4, !tbaa !18
  %i.e = icmp eq ptr %7, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, -3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %7, align 4, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.d, %bb.c ]  ; 2 uses
  %i.g = icmp eq ptr %8, null                     ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = and i32 %.0, -5
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr null, ptr %8, align 8, !tbaa !102
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.h, %bb.e ], [ %.0, %bb.f ]   ; 2 uses
  %i.i = icmp eq ptr %9, null                     ; 2 uses
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = and i32 %.1, -2
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %9, align 8, !tbaa !102
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2 = phi i32 [ %i.j, %bb.h ], [ %.1, %bb.i ]   ; 2 uses
  %i.k = icmp eq ptr %10, null                    ; 2 uses
  br i1 %i.k, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.l = and i32 %.2, -2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 0, ptr %10, align 4, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3 = phi i32 [ %i.l, %bb.k ], [ %.2, %bb.l ]   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !12   ; 19 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = udiv i64 %i.t, 3                         ; 9 uses
  %i.v = trunc i64 %i.u to i32                    ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.x = sitofp i32 %i.v to float
  %i.y = fpext float %i.x to double
  %i.z = fdiv double f0x402921FB54442D18, %i.y
  %i.aa = fptrunc double %i.z to float            ; 2 uses
  %i.ab = load ptr, ptr @debug, align 8, !tbaa !104 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = fpext float %i.aa to double
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.7, i32 noundef %i.v, double noundef %i.ac) #19 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ae = icmp eq i32 %3, 0
  br i1 %i.ae, label %_ZL12nsc_dclm_pbcPA3_KfRKN3gmx8ArrayRefIS_EEiPS_iiPfPS8_S8_S9_PiSA_PNS2_20AnalysisNeighborhoodEPK5t_pbc.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = and i32 %.3, 2
  %.not202.i = icmp eq i32 %i.af, 0               ; 2 uses
  %i.ag = and i32 %.3, 1
  %.not203.i = icmp eq i32 %i.ag, 0               ; 3 uses
  br i1 %.not203.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = mul i32 %3, 3
  %i.ai = mul i32 %i.ah, %i.v
  %i.aj = sdiv i32 %i.ai, 10                      ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 742, i64 noundef range(i64 -2147483648, 2147483648) %i.ak, i64 noundef 4)
  br label %bb.r
end_hunk_1
