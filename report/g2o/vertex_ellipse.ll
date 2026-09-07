Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_ellipse?download=true
inline.NumInlined: 7129
inline.NumDeleted: 3730
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN5Eigen8internal27computeFromTridiagonal_implINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS2_IfLi2ELi1ELi0ELi2ELi1EEENS2_IfLi1ELi1ELi0ELi1ELi1EEEEENS_15ComputationInfoERT0_RT1_lbRT_:bb.a
  %i.a = shl i64 %2, 1                            ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.a, i64 0) ; 2 uses
  %i.b = or disjoint i64 %smax, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph

.preheader96.sink.split:                          ; preds = %bb.b, %.lr.ph
  store float 0.000000e+00, ptr %1, align 4, !tbaa !17
  br label %.preheader96

.lr.ph:                                           ; preds = %.lr.ph.backedge, %bb.a
  %.065 = phi i64 [ 0, %bb.a ], [ %i.q, %.lr.ph.backedge ] ; 3 uses
  %i.f = load float, ptr %1, align 4, !tbaa !17   ; 2 uses
  %i.g = tail call noundef float @llvm.fabs.f32(float %i.f)
  %i.h = fcmp olt float %i.g, f0x00800000
  br i1 %i.h, label %.preheader96.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = fmul float %i.f, f0x4B000000             ; 2 uses
  %i.j = fmul float %i.i, %i.i
  %i.k = load <2 x float>, ptr %0, align 4, !tbaa !17
  %i.l = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.k) ; 2 uses
  %shift = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.l, %shift
  %i.m = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.n = fcmp ugt float %i.j, %i.m
  br i1 %i.n, label %.preheader96, label %.preheader96.sink.split

.preheader96:                                     ; preds = %bb.b, %.preheader96.sink.split
  %i.o = load float, ptr %1, align 4, !tbaa !17   ; 7 uses
  %i.p = fcmp oeq float %i.o, 0.000000e+00
  br i1 %i.p, label %.critedge.thread, label %.critedge, !llvm.loop !173

.critedge:                                        ; preds = %.preheader96
  %i.q = add nuw nsw i64 %.065, 1
  %exitcond118.not = icmp eq i64 %.065, %smax
  br i1 %exitcond118.not, label %.critedge.thread, label %.critedge2

.critedge2:                                       ; preds = %.critedge
  %i.r = load float, ptr %0, align 4, !tbaa !17
  %i.s = load float, ptr %i.c, align 4, !tbaa !17 ; 2 uses
  %i.t = fsub float %i.r, %i.s
  %i.u = fmul float %i.t, 5.000000e-01            ; 4 uses
  %i.v = fcmp oeq float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge2
  %i.w = tail call noundef float @llvm.fabs.f32(float %i.o)
  br label %bb.g

bb.d:                                             ; preds = %.critedge2
  %i.x = fmul float %i.o, %i.o                    ; 2 uses
  %i.y = tail call noundef float @llvm.fabs.f32(float %i.u) ; 5 uses
  %i.z = tail call noundef float @llvm.fabs.f32(float %i.o) ; 5 uses
  %i.aa = fcmp oeq float %i.y, +inf
  %i.ab = fcmp oeq float %i.z, +inf
  %or.cond.i.i.i = or i1 %i.ab, %i.aa
  br i1 %or.cond.i.i.i, label %_ZN5Eigen6numext5hypotIfEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %or.cond.i.i.i.i = fcmp uno float %i.y, %i.z
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen6numext5hypotIfEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = fcmp olt float %i.y, %i.z               ; 2 uses
  %i.ad = select i1 %i.ac, float %i.z, float %i.y ; 2 uses
  %i.ae = select i1 %i.ac, float %i.y, float %i.z
  %i.af = fdiv float %i.ae, %i.ad                 ; 2 uses
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float 1.000000e+00)
  %sqrt.i.i.i.i = tail call float @llvm.sqrt.f32(float %i.ag)
  %i.ah = fmul float %i.ad, %sqrt.i.i.i.i
  br label %_ZN5Eigen6numext5hypotIfEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i

_ZN5Eigen6numext5hypotIfEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.1.i.i.i.i = phi float [ +qnan, %bb.e ], [ +inf, %bb.d ], [ %i.ah, %bb.f ] ; 2 uses
  %i.ai = fcmp oeq float %i.x, 0.000000e+00
  %i.aj = fcmp ogt float %i.u, 0.000000e+00
  %i.ak = fneg float %.1.i.i.i.i
  %i.al = select i1 %i.aj, float %.1.i.i.i.i, float %i.ak
  %i.am = fadd float %i.u, %i.al                  ; 2 uses
  %i.an = fdiv float %i.am, %i.o
  %i.ao = fdiv float %i.o, %i.an
  %i.ap = fdiv float %i.x, %i.am
  %.pn.i = select i1 %i.ai, float %i.ao, float %i.ap
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen6numext5hypotIfEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, %bb.c
  %.pn = phi float [ %i.w, %bb.c ], [ %.pn.i, %_ZN5Eigen6numext5hypotIfEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i ]
  %i.aq = load float, ptr %1, align 4, !tbaa !17  ; 6 uses
  %i.ar = fcmp une float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.h, label %.lr.ph.backedge

bb.h:                                             ; preds = %bb.g
  %.1.i = fsub float %i.s, %.pn
  %i.as = load float, ptr %0, align 4, !tbaa !17
  %i.at = fsub float %i.as, %.1.i                 ; 5 uses
  %i.au = fcmp oeq float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = fcmp olt float %i.aq, 0.000000e+00
  %i.aw = select i1 %i.av, float 1.000000e+00, float -1.000000e+00
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ax = tail call noundef float @llvm.fabs.f32(float %i.at)
  %i.ay = tail call noundef float @llvm.fabs.f32(float %i.aq)
  %i.az = fcmp ogt float %i.ax, %i.ay
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = fdiv float %i.aq, %i.at                 ; 3 uses
  %i.bb = fmul float %i.ba, %i.ba
  %i.bc = fadd float %i.bb, 1.000000e+00
  %sqrt.i.i.i = tail call float @llvm.sqrt.f32(float %i.bc) ; 2 uses
  %i.bd = fcmp olt float %i.at, 0.000000e+00
  %i.be = fneg float %sqrt.i.i.i
  %spec.select.i.i.i = select i1 %i.bd, float %i.be, float %sqrt.i.i.i
  %i.bf = fdiv float 1.000000e+00, %spec.select.i.i.i ; 2 uses
  %i.bg = fneg float %i.ba
  %i.bh = fmul float %i.bf, %i.bg
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bi = fdiv float %i.at, %i.aq                 ; 3 uses
  %i.bj = fmul float %i.bi, %i.bi
  %i.bk = fadd float %i.bj, 1.000000e+00
  %sqrt41.i.i.i = tail call float @llvm.sqrt.f32(float %i.bk) ; 2 uses
  %i.bl = fcmp olt float %i.aq, 0.000000e+00
  %i.bm = fneg float %sqrt41.i.i.i
  %spec.select37.i.i.i = select i1 %i.bl, float %i.bm, float %sqrt41.i.i.i
  %i.bn = fdiv float -1.000000e+00, %spec.select37.i.i.i ; 2 uses
  %i.bo = fneg float %i.bi
  %i.bp = fmul float %i.bn, %i.bo
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.sroa.16.0.i = phi float [ %i.bn, %bb.l ], [ %i.aw, %bb.i ], [ %i.bh, %bb.k ] ; 10 uses
  %.sroa.077.0.i = phi float [ %i.bp, %bb.l ], [ 0.000000e+00, %bb.i ], [ %i.bf, %bb.k ] ; 10 uses
  %i.bq = load float, ptr %0, align 4, !tbaa !17  ; 2 uses
  %i.br = load float, ptr %1, align 4, !tbaa !17  ; 4 uses
  %i.bs = fmul float %.sroa.077.0.i, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %.sroa.16.0.i, float %i.bq, float %i.bs) ; 2 uses
  %i.bu = load float, ptr %i.d, align 4, !tbaa !17 ; 2 uses
  %i.bv = fmul float %.sroa.077.0.i, %i.bu
  %i.bw = tail call float @llvm.fmuladd.f32(float %.sroa.16.0.i, float %i.br, float %i.bv) ; 2 uses
  %i.bx = fneg float %i.br
  %i.by = fmul float %.sroa.16.0.i, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %.sroa.077.0.i, float %i.bq, float %i.by)
  %i.ca = fneg float %i.bu
  %i.cb = fmul float %.sroa.16.0.i, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %.sroa.077.0.i, float %i.br, float %i.cb)
  %i.cd = fneg float %i.cc
  %i.ce = fmul float %.sroa.16.0.i, %i.cd
  %i.cf = tail call float @llvm.fmuladd.f32(float %.sroa.077.0.i, float %i.bz, float %i.ce)
  store float %i.cf, ptr %0, align 4, !tbaa !17
  %i.cg = fmul float %.sroa.077.0.i, %i.bw
  %i.ch = tail call float @llvm.fmuladd.f32(float %.sroa.16.0.i, float %i.bt, float %i.cg)
  store float %i.ch, ptr %i.d, align 4, !tbaa !17
  %i.ci = fneg float %i.bw
  %i.cj = fmul float %.sroa.16.0.i, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %.sroa.077.0.i, float %i.bt, float %i.cj)
  store float %i.ck, ptr %1, align 4, !tbaa !17
  br i1 %3, label %bb.n, label %.lr.ph.backedge

bb.n:                                             ; preds = %bb.m
  %i.cl = fcmp une float %.sroa.077.0.i, 1.000000e+00
  %i.cm = fcmp une float %.sroa.16.0.i, 0.000000e+00
  %or.cond.not18.i.i.i = or i1 %i.cm, %i.cl
  br i1 %or.cond.not18.i.i.i, label %.lr.ph.i.i.preheader.i.i, label %.lr.ph.backedge

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.n
  %i.cn = fneg float %.sroa.16.0.i
  %i.co = load <2 x float>, ptr %4, align 16, !tbaa !17
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cq = load <2 x float>, ptr %i.e, align 8, !tbaa !17
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cs = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %.sroa.077.0.i, i64 1
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cv = fmul <4 x float> %i.cr, %i.cu
  %i.cw = insertelement <4 x float> poison, float %.sroa.077.0.i, i64 0
  %i.cx = insertelement <4 x float> %i.cw, float %.sroa.16.0.i, i64 1
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.cp, <4 x float> %i.cv)
  store <4 x float> %i.cz, ptr %4, align 16, !tbaa !17
  br label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %.lr.ph.i.i.preheader.i.i, %bb.n, %bb.m, %bb.g
  br label %.lr.ph, !llvm.loop !174

.critedge.thread:                                 ; preds = %.preheader96, %.critedge
  %.1 = phi i64 [ %i.b, %.critedge ], [ %.065, %.preheader96 ]
  %.not73.not = icmp sgt i64 %.1, %i.a
  br i1 %.not73.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.critedge.thread
  %i.da = load float, ptr %0, align 4, !tbaa !17  ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !17 ; 3 uses
  %5 = fcmp olt float %i.dc, %i.da                ; 2 uses
  br i1 %3, label %.preheader.split.us.split, label %.preheader.split.split

.preheader.split.us.split:                        ; preds = %.preheader
  br i1 %5, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.preheader.split.us.split
  store float %i.dc, ptr %0, align 4, !tbaa !17
  store float %i.da, ptr %i.db, align 4, !tbaa !17
  %i.dd = load <4 x float>, ptr %4, align 16, !tbaa !17
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.de, ptr %4, align 16, !tbaa !17
  br label %.loopexit

.preheader.split.split:                           ; preds = %.preheader
  br i1 %5, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.preheader.split.split
  store float %i.dc, ptr %0, align 4, !tbaa !17
  store float %i.da, ptr %i.db, align 4, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.split.us.split, %bb.o, %.preheader.split.split, %bb.p, %.critedge.thread
  %. = phi i32 [ 2, %.critedge.thread ], [ 0, %bb.p ], [ 0, %.preheader.split.split ], [ 0, %bb.o ], [ 0, %.preheader.split.us.split ]
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal26tridiagonalization_inplaceINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS2_IfLi1ELi1ELi0ELi1ELi1EEEEEvRT_RT0_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:
  %i.a = alloca float, align 4                    ; 4 uses
  %2 = alloca %"class.Eigen::Block.129", align 8  ; 11 uses
  %3 = alloca %"class.Eigen::Block.185", align 8  ; 8 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %4 = alloca %"class.Eigen::VectorBlock.200", align 8 ; 8 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 6 uses
  %5 = alloca %"class.Eigen::VectorBlock", align 8 ; 12 uses
  %6 = alloca %"class.Eigen::Product", align 8    ; 21 uses
  %7 = alloca %"class.Eigen::VectorBlock.184", align 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.5207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.6208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.8210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.7196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.8197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.9198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 76
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 80
  %.sroa.8174.24..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  %.sroa.10176.24..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 104
  %.sroa.12178.24..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 120
  %.sroa.13179.24..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 128
  %.sroa.15181.24..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 144
  %.sroa.16182.24..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 152
  %.sroa.18184.24..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 168
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.w = ptrtoint ptr %1 to i64
  %i.x = lshr exact i64 %i.w, 2
  %i.y = sub nsw i64 0, %i.x
  %i.z = and i64 %i.y, 3                          ; 2 uses
  %i.aa = icmp ne i64 %i.z, 0                     ; 2 uses
  %i.ab = zext i1 %i.aa to i64                    ; 2 uses
  %.not = icmp eq i64 %i.z, 0                     ; 2 uses
  %i.ac = select i1 %i.aa, i64 4, i64 0           ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.e, ptr %5, align 8, !tbaa !52, !alias.scope !181
  store i64 1, ptr %i.f, align 8, !tbaa !53, !alias.scope !181
  store ptr %0, ptr %i.g, align 8
  store ptr %0, ptr %.sroa.5207.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6208.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 2, ptr %.sroa.8210.0..sroa_idx, align 8
  store i64 1, ptr %i.h, align 8, !tbaa !53, !alias.scope !181
  store i64 2, ptr %i.i, align 8, !tbaa !189, !alias.scope !181
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.j, ptr %4, align 8, !tbaa !57
  store i64 0, ptr %i.k, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.l, ptr noundef nonnull align 8 dereferenceable(96) %5, i64 96, i1 false)
  store i64 1, ptr %i.m, align 8, !tbaa !53
  store i64 2, ptr %i.n, align 8, !tbaa !194
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RfSC_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ae = load float, ptr %i.d, align 4, !tbaa !17
  store ptr %i.o, ptr %6, align 8
  store i64 1, ptr %.sroa.4193.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.5194.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6195.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.7196.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.8197.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.9198.0..sroa_idx, align 8
  store i64 1, ptr %i.p, align 8, !alias.scope !195
  store float %i.ae, ptr %i.q, align 4, !tbaa !59, !alias.scope !195
  store ptr %i.e, ptr %i.r, align 8
  store i64 1, ptr %.sroa.8174.24..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10176.24..sroa_idx, align 8
  store ptr %0, ptr %.sroa.12178.24..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13179.24..sroa_idx, i8 0, i64 16, i1 false)
  store i64 2, ptr %.sroa.15181.24..sroa_idx, align 8
  store i64 1, ptr %.sroa.16182.24..sroa_idx, align 8
  store i64 2, ptr %.sroa.18184.24..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %1, ptr %7, align 8, !tbaa !61, !alias.scope !196
  store i64 1, ptr %i.s, align 8, !tbaa !53, !alias.scope !196
  store ptr %1, ptr %i.t, align 8, !tbaa !38, !alias.scope !196
  store i64 0, ptr %i.u, align 8, !tbaa !53, !alias.scope !196
  store i64 1, ptr %i.v, align 8, !tbaa !199, !alias.scope !196
  br i1 %.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %1, i8 0, i64 %i.ac, i1 false), !tbaa !17
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIfNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIfSF_EEE10ReturnTypeERKNS0_ISD_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.af = xor i64 %i.ac, 4
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %1, i64 %i.ac
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i.i.i.i.i, i8 0, i64 %i.af, i1 false), !tbaa !17
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIfNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIfSF_EEE10ReturnTypeERKNS0_ISD_EE.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIfNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIfSF_EEE10ReturnTypeERKNS0_ISD_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !17
  call void @_ZN5Eigen8internal24selfadjoint_product_implINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi17ELb0ENS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS3_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS2_INS2_IS4_Li2ELi1ELb1EEELin1ELi1ELb0EEEEELi0ELb1EE3runINS2_INS3_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEEvRT_RKS5_RKSJ_RKf(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(184) %6, ptr noundef nonnull align 8 dereferenceable(121) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ag = load float, ptr %i.d, align 4, !tbaa !17
  %i.ah = fmul float %i.ag, -5.000000e-01
  %i.ai = load float, ptr %1, align 4, !tbaa !17  ; 2 uses
  %i.aj = load float, ptr %i.e, align 4, !tbaa !17 ; 2 uses
  %i.ak = fmul float %i.ai, %i.aj
  %i.al = fmul float %i.ah, %i.ak                 ; 2 uses
  br i1 %.not, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIfNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIfSF_EEE10ReturnTypeERKNS0_ISD_EE.exit
  %i.am = fmul float %i.al, %i.aj
  %i.an = fadd float %i.am, %i.ai
  store float %i.an, ptr %1, align 4, !tbaa !17
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIfNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIfSF_EEE10ReturnTypeERKNS0_ISD_EE.exit
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ab ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ab
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !17
  %i.ar = fmul float %i.al, %i.aq
  %i.as = load float, ptr %i.ao, align 4, !tbaa !17
  %i.at = fadd float %i.ar, %i.as
  store float %i.at, ptr %i.ao, align 4, !tbaa !17
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS1_INS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.preheader
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.1273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float -1.000000e+00, ptr %i.a, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.e, ptr %2, align 8
  store i64 1, ptr %.sroa.467.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.569.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.771.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.872.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 2, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.1273.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %1, ptr %3, align 8
  store i64 1, ptr %.sroa.455.0..sroa_idx, align 8
  store ptr %1, ptr %.sroa.557.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.658.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.760.0..sroa_idx, align 8
  call void @_ZN5Eigen8internal33selfadjoint_rank2_update_selectorIflNS_5BlockINS2_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEENS2_INS3_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELi1EE3runEPflRKS6_RKS8_RKf(ptr noundef nonnull %i.o, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.au = load float, ptr %i.c, align 4, !tbaa !17
  store float %i.au, ptr %i.e, align 4, !tbaa !17
  %i.av = load float, ptr %i.d, align 4, !tbaa !17
  store float %i.av, ptr %1, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RfSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 10 uses
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
end_hunk_0
