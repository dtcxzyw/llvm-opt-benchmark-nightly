Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/principal_curvature?download=true
inline.NumInlined: 17939
inline.NumDeleted: 8729
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 147
loop-unroll.NumUnrolled: 163
begin_hunk_0_@_ZN5Eigen8internal27computeFromTridiagonal_implINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEENS2_IdLi2ELi1ELi0ELi2ELi1EEENS2_IdLi1ELi1ELi0ELi1ELi1EEEEENS_15ComputationInfoERT0_RT1_lbRT_:bb.a
bb.c:                                             ; preds = %.critedge2
  %i.w = tail call noundef double @llvm.fabs.f64(double %i.o)
  br label %bb.g

bb.d:                                             ; preds = %.critedge2
  %i.x = fmul double %i.o, %i.o                   ; 2 uses
  %i.y = tail call noundef double @llvm.fabs.f64(double %i.u) ; 5 uses
  %i.z = tail call noundef double @llvm.fabs.f64(double %i.o) ; 5 uses
  %i.aa = fcmp oeq double %i.y, +inf
  %i.ab = fcmp oeq double %i.z, +inf
  %or.cond.i.i.i = or i1 %i.ab, %i.aa
  br i1 %or.cond.i.i.i, label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %or.cond.i.i.i.i = fcmp uno double %i.y, %i.z
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = fcmp olt double %i.y, %i.z              ; 2 uses
  %i.ad = select i1 %i.ac, double %i.z, double %i.y ; 2 uses
  %i.ae = select i1 %i.ac, double %i.y, double %i.z
  %i.af = fdiv double %i.ae, %i.ad                ; 2 uses
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double 1.000000e+00)
  %sqrt.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.ag)
  %i.ah = fmul double %i.ad, %sqrt.i.i.i.i
  br label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i

_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.1.i.i.i.i = phi double [ +qnan, %bb.e ], [ +inf, %bb.d ], [ %i.ah, %bb.f ] ; 2 uses
  %i.ai = fcmp oeq double %i.x, 0.000000e+00
  %i.aj = fcmp ogt double %i.u, 0.000000e+00
  %i.ak = fneg double %.1.i.i.i.i
  %i.al = select i1 %i.aj, double %.1.i.i.i.i, double %i.ak
  %i.am = fadd double %i.u, %i.al                 ; 2 uses
  %i.an = fdiv double %i.am, %i.o
  %i.ao = fdiv double %i.o, %i.an
  %i.ap = fdiv double %i.x, %i.am
  %.pn.i = select i1 %i.ai, double %i.ao, double %i.ap
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, %bb.c
  %.pn = phi double [ %i.w, %bb.c ], [ %.pn.i, %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i ]
  %i.aq = load double, ptr %1, align 8, !tbaa !74 ; 6 uses
  %i.ar = fcmp une double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.h, label %.lr.ph.backedge

bb.h:                                             ; preds = %bb.g
  %.1.i = fsub double %i.s, %.pn
  %i.as = load double, ptr %0, align 16, !tbaa !74
  %i.at = fsub double %i.as, %.1.i                ; 5 uses
  %i.au = fcmp oeq double %i.at, 0.000000e+00
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = fcmp olt double %i.aq, 0.000000e+00
  %i.aw = select i1 %i.av, double 1.000000e+00, double -1.000000e+00
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.at)
  %i.ay = tail call noundef double @llvm.fabs.f64(double %i.aq)
  %i.az = fcmp ogt double %i.ax, %i.ay
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = fdiv double %i.aq, %i.at                ; 3 uses
  %i.bb = fmul double %i.ba, %i.ba
  %i.bc = fadd double %i.bb, 1.000000e+00
  %sqrt.i.i.i = tail call double @llvm.sqrt.f64(double %i.bc) ; 2 uses
  %i.bd = fcmp olt double %i.at, 0.000000e+00
  %i.be = fneg double %sqrt.i.i.i
  %.031.i.i.i = select i1 %i.bd, double %i.be, double %sqrt.i.i.i
  %i.bf = fdiv double 1.000000e+00, %.031.i.i.i   ; 2 uses
  %i.bg = fneg double %i.ba
  %i.bh = fmul double %i.bf, %i.bg
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bi = fdiv double %i.at, %i.aq                ; 3 uses
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = fadd double %i.bj, 1.000000e+00
  %sqrt40.i.i.i = tail call double @llvm.sqrt.f64(double %i.bk) ; 2 uses
  %i.bl = fcmp olt double %i.aq, 0.000000e+00
  %i.bm = fneg double %sqrt40.i.i.i
  %.0.i.i.i = select i1 %i.bl, double %i.bm, double %sqrt40.i.i.i
  %i.bn = fdiv double -1.000000e+00, %.0.i.i.i    ; 2 uses
  %i.bo = fneg double %i.bi
  %i.bp = fmul double %i.bn, %i.bo
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.sroa.16.0.i = phi double [ %i.bn, %bb.l ], [ %i.aw, %bb.i ], [ %i.bh, %bb.k ] ; 4 uses
  %.sroa.077.0.i = phi double [ %i.bp, %bb.l ], [ 0.000000e+00, %bb.i ], [ %i.bf, %bb.k ] ; 4 uses
  %i.bq = load double, ptr %0, align 16, !tbaa !74
  %i.br = load double, ptr %1, align 8, !tbaa !74 ; 3 uses
  %i.bs = load double, ptr %i.d, align 8, !tbaa !74 ; 2 uses
  %i.bt = fneg double %i.br
  %i.bu = fneg double %i.bs
  %i.bv = insertelement <2 x double> poison, double %.sroa.16.0.i, i64 0 ; 2 uses
  %i.bw = insertelement <2 x double> %i.bv, double %.sroa.077.0.i, i64 1 ; 5 uses
  %i.bx = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.br, i64 1
  %i.bz = fmul <2 x double> %i.bw, %i.by
  %i.ca = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cb = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cc, <2 x double> %i.bz) ; 2 uses
  %i.ce = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.bs, i64 1
  %i.cg = fmul <2 x double> %i.bw, %i.cf
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = insertelement <2 x double> poison, double %i.br, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.cj, <2 x double> %i.ch) ; 2 uses
  %i.cl = fneg <2 x double> %i.ck                 ; 2 uses
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> %i.ck, <2 x i32> <i32 1, i32 2>
  %i.cn = fmul <2 x double> %i.bw, %i.cm
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cd, <2 x double> %i.cn)
  store <2 x double> %i.co, ptr %0, align 16, !tbaa !74
  %i.cp = extractelement <2 x double> %i.cl, i64 0
  %i.cq = fmul double %.sroa.16.0.i, %i.cp
  %i.cr = extractelement <2 x double> %i.cd, i64 1
  %i.cs = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.cr, double %i.cq)
  store double %i.cs, ptr %1, align 8, !tbaa !74
  br i1 %3, label %bb.n, label %.lr.ph.backedge

bb.n:                                             ; preds = %bb.m
  %i.ct = fcmp une double %.sroa.077.0.i, 1.000000e+00
  %i.cu = fcmp une double %.sroa.16.0.i, 0.000000e+00
  %or.cond.not18.i.i.i = or i1 %i.cu, %i.ct
  br i1 %or.cond.not18.i.i.i, label %.lr.ph.i.i.preheader.i.i, label %.lr.ph.backedge

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.n
  %i.cv = fneg double %.sroa.16.0.i
  %i.cw = load <2 x double>, ptr %i.e, align 16, !tbaa !74 ; 2 uses
  %i.cx = load <2 x double>, ptr %4, align 16, !tbaa !74 ; 2 uses
  %i.cy = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x double> %i.cw, %i.cz
  %i.db = insertelement <2 x double> poison, double %.sroa.077.0.i, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.cx, <2 x double> %i.da)
  store <2 x double> %i.dd, ptr %4, align 16, !tbaa !74
  %i.de = fmul <2 x double> %i.dc, %i.cw
  %i.df = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.cx, <2 x double> %i.de)
  store <2 x double> %i.dg, ptr %i.e, align 16, !tbaa !74
  br label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %.lr.ph.i.i.preheader.i.i, %bb.n, %bb.m, %bb.g
  br label %.lr.ph, !llvm.loop !1688

.critedge.thread:                                 ; preds = %.preheader96, %.critedge
  %.1 = phi i64 [ %i.b, %.critedge ], [ %.065, %.preheader96 ]
  %.not73.not = icmp sgt i64 %.1, %i.a
  br i1 %.not73.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.critedge.thread
  %i.dh = load double, ptr %0, align 16, !tbaa !74 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !74 ; 3 uses
  %i.dk = fcmp olt double %i.dj, %i.dh            ; 2 uses
  br i1 %3, label %.preheader.split.us.split, label %.preheader.split.split

.preheader.split.us.split:                        ; preds = %.preheader
  br i1 %i.dk, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.preheader.split.us.split
  store double %i.dj, ptr %0, align 16, !tbaa !74
  store double %i.dh, ptr %i.di, align 8, !tbaa !74
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dm = load <2 x double>, ptr %i.dl, align 16, !tbaa !30
  %i.dn = load <2 x double>, ptr %4, align 16, !tbaa !30
  store <2 x double> %i.dn, ptr %i.dl, align 16, !tbaa !30
  store <2 x double> %i.dm, ptr %4, align 16, !tbaa !30
  br label %.loopexit

.preheader.split.split:                           ; preds = %.preheader
  br i1 %i.dk, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.preheader.split.split
  store double %i.dj, ptr %0, align 16, !tbaa !74
  store double %i.dh, ptr %i.di, align 8, !tbaa !74
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.split.us.split, %bb.o, %.preheader.split.split, %bb.p, %.critedge.thread
  %. = phi i32 [ 2, %.critedge.thread ], [ 0, %bb.p ], [ 0, %.preheader.split.split ], [ 0, %bb.o ], [ 0, %.preheader.split.us.split ]
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26tridiagonalization_inplaceINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEENS2_IdLi1ELi1ELi0ELi1ELi1EEEEEvRT_RT0_(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:
  %i.a = alloca double, align 8                   ; 4 uses
  %2 = alloca %"class.Eigen::VectorBlock.2248", align 8 ; 8 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.Eigen::VectorBlock.2174", align 8 ; 12 uses
  %4 = alloca %"class.Eigen::Product.2201", align 8 ; 21 uses
  %5 = alloca %"class.Eigen::VectorBlock.2234", align 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.5207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.6208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.8210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.7196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.8197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.9198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.8174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %.sroa.10176.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 112
  %.sroa.12178.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 128
  %.sroa.13179.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 136
  %.sroa.15181.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 152
  %.sroa.16182.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 160
  %.sroa.18184.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.v = ptrtoint ptr %1 to i64
  %i.w = lshr exact i64 %i.v, 3
  %i.x = and i64 %i.w, 1                          ; 2 uses
  %.not = icmp eq i64 %i.x, 0
  %i.y = shl nuw nsw i64 %i.x, 3                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.d, ptr %3, align 8, !tbaa !321, !alias.scope !1695
  store i64 1, ptr %i.e, align 8, !tbaa !135, !alias.scope !1695
  store ptr %0, ptr %i.f, align 8
  store ptr %0, ptr %.sroa.5207.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6208.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 2, ptr %.sroa.8210.0..sroa_idx, align 8
  store i64 1, ptr %i.g, align 8, !tbaa !135, !alias.scope !1695
  store i64 2, ptr %i.h, align 8, !tbaa !1703, !alias.scope !1695
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %i.i, ptr %2, align 8, !tbaa !324
  store i64 0, ptr %i.j, align 8, !tbaa !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false)
  store i64 1, ptr %i.l, align 8, !tbaa !135
  store i64 2, ptr %i.m, align 8, !tbaa !1708
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.z = load double, ptr %i.c, align 8, !tbaa !74
  store ptr %i.n, ptr %4, align 8
  store i64 1, ptr %.sroa.4193.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.5194.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6195.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.7196.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.8197.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.9198.0..sroa_idx, align 8
  store i64 1, ptr %i.o, align 8, !alias.scope !1709
  store double %i.z, ptr %i.p, align 8, !tbaa !187, !alias.scope !1709
  store ptr %i.d, ptr %i.q, align 8
  store i64 1, ptr %.sroa.8174.32..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10176.32..sroa_idx, align 8
  store ptr %0, ptr %.sroa.12178.32..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13179.32..sroa_idx, i8 0, i64 16, i1 false)
  store i64 2, ptr %.sroa.15181.32..sroa_idx, align 8
  store i64 1, ptr %.sroa.16182.32..sroa_idx, align 8
  store i64 2, ptr %.sroa.18184.32..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %1, ptr %5, align 8, !tbaa !326, !alias.scope !1710
  store i64 1, ptr %i.r, align 8, !tbaa !135, !alias.scope !1710
  store ptr %1, ptr %i.s, align 8, !tbaa !104, !alias.scope !1710
  store i64 0, ptr %i.t, align 8, !tbaa !135, !alias.scope !1710
  store i64 1, ptr %i.u, align 8, !tbaa !1713, !alias.scope !1710
  br i1 %.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %1, i8 0, i64 %i.y, i1 false), !tbaa !74
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit.a

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %1, i64 %i.y
  store i64 0, ptr %scevgep1.i.i.i.i.i, align 8
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit.a

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit.a: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !74
  call void @_ZN5Eigen8internal24selfadjoint_product_implINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi17ELb0ENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS2_INS2_IS4_Li2ELi1ELb1EEELin1ELi1ELb0EEEEELi0ELb1EE3runINS2_INS3_IdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEEvRT_RKS5_RKSJ_RKd(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(192) %4, ptr noundef nonnull align 8 dereferenceable(129) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %7 = load double, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.aa = fmul double %7, -5.000000e-01
  %8 = load double, ptr %1, align 8, !tbaa !74    ; 2 uses
  %9 = load double, ptr %i.d, align 8, !tbaa !74  ; 2 uses
  %i.ab = fmul double %8, %9
  %i.ac = fmul double %i.aa, %i.ab
  %i.ad = fmul double %i.ac, %9
  %i.ae = fadd double %i.ad, %8                   ; 3 uses
  store double %i.ae, ptr %1, align 8, !tbaa !74
  %.pre = load double, ptr %i.d, align 8, !tbaa !74 ; 2 uses
  %10 = fneg double %i.ae
  %i.af = fmul double %.pre, %10
  %i.ag = fmul double %.pre, %i.ae
  %i.ah = fsub double %i.af, %i.ag
  %i.ai = load double, ptr %i.n, align 8, !tbaa !74
  %i.aj = fadd double %i.ai, %i.ah
  store double %i.aj, ptr %i.n, align 8, !tbaa !74
  %i.ak = load double, ptr %i.b, align 8, !tbaa !74
  store double %i.ak, ptr %i.d, align 8, !tbaa !74
  store double %7, ptr %1, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !135  ; 7 uses
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !321    ; 5 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 23 uses
  %or.cond = icmp eq i64 %i.b, 1
  br i1 %or.cond, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 %i.c, 4
  %i.h = shl nsw i64 %i.g, 2                      ; 3 uses
  %i.i = sdiv i64 %i.c, 2
  %i.j = shl nsw i64 %i.i, 1                      ; 6 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load <2 x double>, ptr %i.f, align 1, !tbaa !30 ; 2 uses
  %i.l = fmul <2 x double> %i.k, %i.k             ; 3 uses
  %i.m = icmp sgt i64 %i.b, 4
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = load <2 x double>, ptr %i.n, align 1, !tbaa !30 ; 2 uses
  %i.p = fmul <2 x double> %i.o, %i.o             ; 2 uses
  %i.q = icmp samesign ugt i64 %i.b, 8
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.p, %bb.d ], [ %i.ab, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.l, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i ]
  %i.r = fadd <2 x double> %.075.lcssa.i.i.i.i, %.072.lcssa.i.i.i.i ; 2 uses
  %i.s = icmp sgt i64 %i.j, %i.h
  br i1 %i.s, label %bb.e, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.d ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %.07278.i.i.i.i = phi <2 x double> [ %i.w, %.lr.ph.i.i.i.i ], [ %i.l, %bb.d ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.p, %bb.d ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05480.i.i.i.i
  %i.u = load <2 x double>, ptr %i.t, align 1, !tbaa !30 ; 2 uses
  %i.v = fmul <2 x double> %i.u, %i.u
  %i.w = fadd <2 x double> %.07278.i.i.i.i, %i.v  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.054.in79.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !30 ; 2 uses
  %i.aa = fmul <2 x double> %i.z, %i.z
  %i.ab = fadd <2 x double> %.07577.i.i.i.i, %i.aa ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.ac = icmp slt i64 %.054.i.i.i.i, %i.h
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1714

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !30 ; 2 uses
  %i.af = fmul <2 x double> %i.ae, %i.ae
  %i.ag = fadd <2 x double> %i.r, %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c
  %.274.i.i.i.i = phi <2 x double> [ %i.l, %bb.c ], [ %i.ag, %bb.e ], [ %i.r, %._crit_edge.i.i.i.i ]
  %i.ah = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i) ; 3 uses
  %i.ai = icmp slt i64 %i.j, %i.c
  br i1 %i.ai, label %.lr.ph85.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.aj = xor i64 %i.j, -1
  %i.ak = add i64 %i.b, %i.aj
  %i.al = add i64 %i.b, -2
  %i.am = sub i64 %i.al, %i.j
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.prol
  %.05283.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph85.i.i.i.i.prol ], [ %i.j, %.lr.ph85.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.prol = phi double [ %i.aq, %.lr.ph85.i.i.i.i.prol ], [ %i.ah, %.lr.ph85.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.preheader ]
  %i.an = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i.prol
  %i.ao = load double, ptr %i.an, align 8, !tbaa !74 ; 2 uses
  %i.ap = fmul double %i.ao, %i.ao
  %i.aq = fadd double %.182.i.i.i.i.prol, %i.ap   ; 3 uses
  %i.ar = add nsw i64 %.05283.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol, !llvm.loop !1715

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph85.i.i.i.i.preheader ], [ %i.ar, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi double [ %i.ah, %.lr.ph85.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.prol ]
  %i.as = icmp ult i64 %i.am, 3
  br i1 %i.as, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.bm, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i = phi double [ %i.bl, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !74 ; 2 uses
  %i.av = fmul double %i.au, %i.au
  %i.aw = fadd double %.182.i.i.i.i, %i.av
  %i.ax = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !74 ; 2 uses
  %i.ba = fmul double %i.az, %i.az
  %i.bb = fadd double %i.aw, %i.ba
  %i.bc = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !74 ; 2 uses
  %i.bf = fmul double %i.be, %i.be
  %i.bg = fadd double %i.bb, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !74 ; 2 uses
  %i.bk = fmul double %i.bj, %i.bj
  %i.bl = fadd double %i.bg, %i.bk                ; 2 uses
  %i.bm = add nsw i64 %.05283.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bm, %i.c
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !1716

bb.g:                                             ; preds = %bb.b
  %i.bn = load double, ptr %i.f, align 8, !tbaa !74 ; 2 uses
  %i.bo = fmul double %i.bn, %i.bn
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread: ; preds = %bb.a
  %i.bp = load double, ptr %i.d, align 8, !tbaa !74
  br label %bb.h

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.g, %bb.f
  %i.bq = phi double [ %i.bo, %bb.g ], [ %i.ah, %bb.f ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.bl, %.lr.ph85.i.i.i.i ] ; 2 uses
  %i.br = load double, ptr %i.d, align 8, !tbaa !74 ; 6 uses
  %i.bs = fcmp ugt double %i.bq, f0x0010000000000000
  br i1 %i.bs, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread
  %i.bt = phi double [ %i.bp, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread ], [ %i.br, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !74
  store double %i.bt, ptr %3, align 8, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load ptr, ptr %1, align 8, !tbaa !324   ; 4 uses
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !135 ; 4 uses
  %i.bx = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.by = and i64 %i.bx, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bz = lshr exact i64 %i.bx, 3
  %i.ca = and i64 %i.bz, 1
  %i.cb = tail call i64 @llvm.smin.i64(i64 %i.ca, i64 %i.bw)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.i ], [ %i.bw, %bb.h ] ; 8 uses
  %i.cc = sub i64 %i.bw, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.cd = sdiv i64 %i.cc, 2                       ; 2 uses
  %i.ce = shl nsw i64 %i.cd, 1                    ; 2 uses
  %i.cf = add i64 %i.ce, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cg = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bv, i8 0, i64 %i.ch, i1 false), !tbaa !74
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = icmp sgt i64 %i.cc, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cj = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.bv, i64 %i.cj
  %i.ck = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.cf, i64 %i.ck)
  %i.cl = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.cm = add i64 %smax.i, %i.cl
  %i.cn = shl i64 %i.cm, 3
  %i.co = and i64 %i.cn, -16
  %i.cp = add i64 %i.co, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.cp, i1 false), !tbaa !30
end_hunk_0
