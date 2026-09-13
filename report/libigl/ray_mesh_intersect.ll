Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ray_mesh_intersect?download=true
inline.NumInlined: 1502
inline.NumDeleted: 660
begin_hunk_0_@intersect_triangle1:bb.a
  %i.f = load <2 x double>, ptr %2, align 8, !tbaa !18 ; 4 uses
  %i.g = fsub <2 x double> %i.e, %i.f             ; 6 uses
  %i.h = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.i = insertelement <2 x double> %i.h, double %i.b, i64 0
  %i.j = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.k = insertelement <2 x double> %i.j, double %i.d, i64 0 ; 4 uses
  %i.l = fsub <2 x double> %i.i, %i.k             ; 3 uses
  %i.m = load double, ptr %4, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load double, ptr %1, align 8, !tbaa !18  ; 2 uses
  %i.r = load <2 x double>, ptr %i.n, align 8, !tbaa !18 ; 2 uses
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x double> %i.s, double %i.m, i64 1
  %i.u = fsub <2 x double> %i.t, %i.k             ; 4 uses
  %i.v = insertelement <2 x double> %i.j, double %i.d, i64 1
  %i.w = fsub <2 x double> %i.r, %i.v             ; 3 uses
  %i.x = load <2 x double>, ptr %i.o, align 8, !tbaa !18 ; 3 uses
  %i.y = fneg <2 x double> %i.w
  %i.z = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aa = insertelement <2 x double> %i.z, double %i.q, i64 1
  %i.ab = fmul <2 x double> %i.aa, %i.y
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.u, <2 x double> %i.ab) ; 6 uses
  %i.ad = extractelement <2 x double> %i.u, i64 1
  %i.ae = shufflevector <2 x double> %i.x, <2 x double> %i.g, <2 x i32> <i32 0, i32 3>
  %i.af = fneg <2 x double> %i.u
  %i.ag = shufflevector <2 x double> %i.ac, <2 x double> %i.af, <2 x i32> <i32 3, i32 1>
  %i.ah = fmul <2 x double> %i.ae, %i.ag
  %i.ai = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.aj = insertelement <2 x double> %i.ai, double %i.q, i64 0
  %i.ak = shufflevector <2 x double> %i.w, <2 x double> %i.ac, <2 x i32> <i32 0, i32 2>
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.ak, <2 x double> %i.ah) ; 2 uses
  %i.am = extractelement <2 x double> %i.l, i64 0 ; 3 uses
  %i.an = extractelement <2 x double> %i.al, i64 0 ; 3 uses
  %i.ao = extractelement <2 x double> %i.al, i64 1
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.am, double %i.an, double %i.ao) ; 7 uses
  %i.aq = fcmp ogt double %i.ap, f0x3EB0C6F7A0B5ED8D
  br i1 %i.aq, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load double, ptr %i.ar, align 8, !tbaa !18
  %i.at = load <2 x double>, ptr %0, align 8, !tbaa !18 ; 2 uses
  %i.au = fsub <2 x double> %i.at, %i.f           ; 3 uses
  %i.av = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.aw = insertelement <2 x double> %i.av, double %i.as, i64 0
  %i.ax = fsub <2 x double> %i.aw, %i.k           ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.ac, %i.au
  %i.ay = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.az = extractelement <2 x double> %i.ax, i64 1
  %i.ba = extractelement <2 x double> %i.ac, i64 0
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.az, double %i.ba, double %i.ay)
  %i.bc = extractelement <2 x double> %i.ax, i64 0 ; 2 uses
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.an, double %i.bb) ; 3 uses
  store double %i.bd, ptr %6, align 8, !tbaa !18
  %i.be = fcmp olt double %i.bd, 0.000000e+00
  %i.bf = fcmp ogt double %i.bd, %i.ap
  %or.cond = or i1 %i.be, %i.bf
  br i1 %or.cond, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bg = extractelement <2 x double> %i.au, i64 1
  %i.bh = extractelement <2 x double> %i.g, i64 1
  %i.bi = fneg double %i.bh
  %i.bj = fmul double %i.bc, %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.am, double %i.bj) ; 2 uses
  %i.bl = fneg <2 x double> %i.l
  %i.bm = fmul <2 x double> %i.au, %i.bl
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.g, <2 x double> %i.bm) ; 3 uses
  %i.bo = load double, ptr %1, align 8, !tbaa !18
  %i.bp = load double, ptr %i.o, align 8, !tbaa !18
  %i.bq = extractelement <2 x double> %i.bn, i64 0
  %i.br = fmul double %i.bq, %i.bp
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bk, double %i.br)
  %i.bt = load double, ptr %i.p, align 8, !tbaa !18
  %i.bu = extractelement <2 x double> %i.bn, i64 1
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bu, double %i.bs) ; 3 uses
  store double %i.bv, ptr %7, align 8, !tbaa !18
  %i.bw = fcmp olt double %i.bv, 0.000000e+00
  br i1 %i.bw, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bx = load double, ptr %6, align 8, !tbaa !18
  %i.by = fadd double %i.bv, %i.bx
  %i.bz = fcmp ogt double %i.by, %i.ap
  br i1 %i.bz, label %bb.j, label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.ca = fcmp olt double %i.ap, f0xBEB0C6F7A0B5ED8D
  br i1 %i.ca, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !18
  %i.cd = load <2 x double>, ptr %0, align 8, !tbaa !18 ; 2 uses
  %i.ce = fsub <2 x double> %i.cd, %i.f           ; 3 uses
  %i.cf = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cg = insertelement <2 x double> %i.cf, double %i.cc, i64 0
  %i.ch = fsub <2 x double> %i.cg, %i.k           ; 3 uses
  %foldExtExtBinop125 = fmul <2 x double> %i.ac, %i.ce
  %i.ci = extractelement <2 x double> %foldExtExtBinop125, i64 1
  %i.cj = extractelement <2 x double> %i.ch, i64 1
  %i.ck = extractelement <2 x double> %i.ac, i64 0
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.ck, double %i.ci)
  %i.cm = extractelement <2 x double> %i.ch, i64 0 ; 2 uses
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.an, double %i.cl) ; 3 uses
  store double %i.cn, ptr %6, align 8, !tbaa !18
  %i.co = fcmp ogt double %i.cn, 0.000000e+00
  %i.cp = fcmp olt double %i.cn, %i.ap
  %or.cond120 = or i1 %i.co, %i.cp
  br i1 %or.cond120, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cq = extractelement <2 x double> %i.ce, i64 1
  %i.cr = extractelement <2 x double> %i.g, i64 1
  %i.cs = fneg double %i.cr
  %i.ct = fmul double %i.cm, %i.cs
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.am, double %i.ct) ; 2 uses
  %i.cv = fneg <2 x double> %i.l
  %i.cw = fmul <2 x double> %i.ce, %i.cv
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.g, <2 x double> %i.cw) ; 3 uses
  %i.cy = load double, ptr %1, align 8, !tbaa !18
  %i.cz = load double, ptr %i.o, align 8, !tbaa !18
  %i.da = extractelement <2 x double> %i.cx, i64 0
  %i.db = fmul double %i.da, %i.cz
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.cu, double %i.db)
  %i.dd = load double, ptr %i.p, align 8, !tbaa !18
  %i.de = extractelement <2 x double> %i.cx, i64 1
  %i.df = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.de, double %i.dc) ; 3 uses
  store double %i.df, ptr %7, align 8, !tbaa !18
  %i.dg = fcmp ogt double %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dh = load double, ptr %6, align 8, !tbaa !18
  %i.di = fadd double %i.df, %i.dh
  %i.dj = fcmp olt double %i.di, %i.ap
  br i1 %i.dj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.sroa.0.0 = phi double [ %i.bk, %bb.d ], [ %i.cu, %bb.h ]
  %i.dk = phi <2 x double> [ %i.bn, %bb.d ], [ %i.cx, %bb.h ] ; 2 uses
  %i.dl = fdiv double 1.000000e+00, %i.ap         ; 3 uses
  %foldExtExtBinop127 = fmul <2 x double> %i.w, %i.dk
  %i.dm = extractelement <2 x double> %foldExtExtBinop127, i64 0
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.ad, double %.sroa.0.0, double %i.dm)
  %i.do = extractelement <2 x double> %i.dk, i64 1
  %i.dp = extractelement <2 x double> %i.u, i64 0
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.do, double %i.dn)
  %i.dr = fmul double %i.dl, %i.dq
  store double %i.dr, ptr %5, align 8, !tbaa !18
  %i.ds = load double, ptr %6, align 8, !tbaa !18
  %i.dt = fmul double %i.dl, %i.ds
  store double %i.dt, ptr %6, align 8, !tbaa !18
  %i.du = load double, ptr %7, align 8, !tbaa !18
  %i.dv = fmul double %i.dl, %i.du
  store double %i.dv, ptr %7, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f, %bb.c, %bb.d, %bb.b, %bb.i
  %.0 = phi i32 [ 0, %bb.g ], [ 0, %bb.b ], [ 1, %bb.i ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_SU_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.014.i.i = alloca { i32, i32, double, double }, align 8 ; 4 uses
  %3 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %4 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %5 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %6 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %7 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %8 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %9 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %.sroa.06.i.i.i = alloca { i32, i32, double, double }, align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SQ_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph57

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEESM_SM_SM_SQ_.exit
  %i.j = icmp eq i64 %i.cd, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph57, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa53 = phi i64 [ %i.d, %.lr.ph ], [ %i.dc, %bb.b ] ; 2 uses
  %.lcssa51 = phi i64 [ %i.c, %.lr.ph ], [ %i.db, %bb.b ] ; 2 uses
  %storemerge27.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.k = add nsw i64 %.lcssa53, -2                ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %.lcssa53, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %.lcssa51, 32
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_SQ_SU_SY_.exit.i.i, %._crit_edge
  %.08.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_SQ_SU_SY_.exit.i.i ] ; 8 uses
  %i.t = getelementptr inbounds [32 x i8], ptr %0, i64 %.08.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %.sroa.417.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.417.0.copyload.i.i = load double, ptr %.sroa.417.0..sroa.0.0..sroa_idx.i.i, align 8, !tbaa !18 ; 2 uses
  %i.u = icmp slt i64 %.08.i.i, %i.n
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.08.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [32 x i8], ptr %0, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [32 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !55
  %i.ae = fcmp olt double %i.ab, %i.ad
  %spec.select.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ag = getelementptr inbounds [32 x i8], ptr %0, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !tbaa.struct !19
  %i.ah = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.ah, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !83

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.08.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.ai, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !tbaa.struct !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i, %.08.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_SQ_SU_SY_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load double, ptr %i.al, align 8, !tbaa !55
  %i.an = fcmp olt double %i.am, %.sroa.417.0.copyload.i.i
  br i1 %i.an, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_SQ_SU_SY_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !tbaa.struct !19
  %i.ap = icmp sgt i64 %.0919.i.i.i.i, %.08.i.i
  br i1 %i.ap, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_SQ_SU_SY_.exit.i.i, !llvm.loop !84

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_SQ_SU_SY_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.i.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store double %.sroa.417.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i.i)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.ar = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SQ_.exit, label %bb.c, !llvm.loop !85

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SQ_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_SQ_SU_SY_.exit.i.i
  %10 = icmp sgt i64 %.lcssa51, 32
  br i1 %10, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SQ_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SQ_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_RSQ_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.as, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_RSQ_.exit.i.i ], [ %storemerge27.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SQ_.exit ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.49.0.copyload.i.i.i = load double, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.a                     ; 3 uses
  %i.av = ashr exact i64 %i.au, 5                 ; 3 uses
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = lshr i64 %i.aw, 1
  %i.ay = icmp sgt i64 %i.av, 2
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.az = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load double, ptr %i.be, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !55
  %i.bi = fcmp olt double %i.bf, %i.bh
  %spec.select.i.i.i.i = select i1 %i.bi, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bj = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bk = getelementptr inbounds [32 x i8], ptr %0, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 32, i1 false), !tbaa.struct !19
  %i.bl = icmp slt i64 %spec.select.i.i.i.i, %i.ax
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !83

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bm = and i64 %i.au, 32
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bo = add nsw i64 %i.av, -2
  %i.bp = ashr exact i64 %i.bo, 1
  %i.bq = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bp
  br i1 %i.bq, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.br = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bs = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bs
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false), !tbaa.struct !19
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_RSQ_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bs, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i1011.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i1011.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0919.i.i1011.i.i.i ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !55
  %i.by = fcmp olt double %i.bx, %.sroa.49.0.copyload.i.i.i
  br i1 %i.by, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_RSQ_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bz = getelementptr inbounds [32 x i8], ptr %0, i64 %.018.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 32, i1 false), !tbaa.struct !19
  %.not12.i.i.i = icmp eq i64 %.0919.i.i1011.i.i.i, 0
  br i1 %.not12.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_RSQ_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !84

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_RSQ_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.ca = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store double %.sroa.49.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i.i)
  %i.cb = icmp sgt i64 %i.au, 32
  br i1 %i.cb, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SQ_.exit, !llvm.loop !86

.lr.ph57:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2756 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02855 = phi i64 [ %i.cd, %bb.b ], [ %2, %.lr.ph ]
  %i.cc = phi i64 [ %i.dc, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cd = add nsw i64 %.02855, -1                 ; 3 uses
  %i.ce = lshr i64 %i.cc, 1
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ce ; 5 uses
  %i.cg = getelementptr inbounds i8, ptr %storemerge2756, i64 -32 ; 4 uses
  %i.ch = load double, ptr %i.g, align 8, !tbaa !55 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !55 ; 3 uses
  %i.ck = fcmp olt double %i.ch, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %storemerge2756, i64 -8
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !55 ; 4 uses
  br i1 %i.ck, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph57
  %i.cn = fcmp olt double %i.cj, %i.cm
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.co = fcmp olt double %i.ch, %i.cm
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph57
  %i.cp = fcmp olt double %i.ch, %i.cm
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cq = fcmp olt double %i.cj, %i.cm
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cv, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2756, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader ]
  %i.cr = load double, ptr %i.h, align 8, !tbaa !55 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i ], [ %i.cv, %bb.t ] ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 24
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !55
  %i.cu = fcmp olt double %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 32 ; 2 uses
  br i1 %i.cu, label %bb.t, label %.preheader.i.i, !llvm.loop !87

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !55
  %i.cy = fcmp olt double %i.cr, %i.cx
  br i1 %i.cy, label %.preheader.i.i, label %bb.u, !llvm.loop !88

bb.u:                                             ; preds = %.preheader.i.i
  %i.cz = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cz, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEESM_SM_SM_SQ_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.1.i.i, i64 32, i1 false), !tbaa.struct !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i, !llvm.loop !89

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEESM_SM_SM_SQ_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_SU_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2756, i64 noundef %i.cd)
  %i.da = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.db = sub i64 %i.da, %i.a                     ; 2 uses
  %i.dc = ashr exact i64 %i.db, 5                 ; 3 uses
  %i.dd = icmp sgt i64 %i.dc, 16
  br i1 %i.dd, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SQ_.exit, !llvm.loop !82

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SQ_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEESM_SM_SM_SQ_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_RSQ_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SQ_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.03.i.i21 = alloca { i32, i32, double, double }, align 8 ; 4 uses
  %2 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %.sroa.03.i.i12 = alloca { i32, i32, double, double }, align 8 ; 4 uses
  %.sroa.03.i.i = alloca { i32, i32, double, double }, align 8 ; 4 uses
  %3 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 512
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %scevgep = getelementptr i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 32, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 56
  %i.g = load double, ptr %i.f, align 8, !tbaa !55 ; 4 uses
  %i.h = load double, ptr %i.e, align 8, !tbaa !55
  %i.i = fcmp olt double %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i.ptr, i64 32, i1 false), !tbaa.struct !19
  %i.j = icmp samesign ugt i64 %.sroa.0.019.i.idx, 32
  br i1 %i.j, label %bb.d, label %bb.e, !prof !56

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i.ptr, i64 24, i1 false), !tbaa.struct !19
  %i.l = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !55
  %i.n = fcmp olt double %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.06.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.09.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i, i64 32, i1 false), !tbaa.struct !19
  %i.o = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -40
  %i.p = load double, ptr %i.o, align 8, !tbaa !55
  %i.q = fcmp olt double %i.g, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i, !llvm.loop !90

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i, i64 24, i1 false), !tbaa.struct !19
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 24
  store double %i.g, ptr %.sroa.4.0..sroa_idx4.i.i, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 32 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 512
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit, label %bb.b, !llvm.loop !91

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %.not6.i = icmp eq ptr %i.r, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i14
  %.sroa.0.07.i = phi ptr [ %i.y, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i14 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.07.i, i64 24, i1 false), !tbaa.struct !19
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 24
  %.sroa.4.0.copyload.i.i = load double, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !18 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -8
  %i.t = load double, ptr %i.s, align 8, !tbaa !55
  %i.u = fcmp olt double %.sroa.4.0.copyload.i.i, %i.t
  br i1 %i.u, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i14

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i18
  %.sroa.06.09.i.i19 = phi ptr [ %.sroa.0.0.i.i20, %.lr.ph.i.i18 ], [ %.sroa.0.07.i, %.lr.ph.i13 ] ; 3 uses
  %.sroa.0.0.i.i20 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i19, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.09.i.i19, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i20, i64 32, i1 false), !tbaa.struct !19
  %i.v = getelementptr inbounds i8, ptr %.sroa.06.09.i.i19, i64 -40
  %i.w = load double, ptr %i.v, align 8, !tbaa !55
  %i.x = fcmp olt double %.sroa.4.0.copyload.i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i14, !llvm.loop !90

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i14: ; preds = %.lr.ph.i.i18, %.lr.ph.i13
  %.sroa.06.0.lcssa.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.0.i.i20, %.lr.ph.i.i18 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0.lcssa.i.i15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i12, i64 24, i1 false), !tbaa.struct !19
  %.sroa.4.0..sroa_idx4.i.i16 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i15, i64 24
  store double %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx4.i.i16, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 32 ; 2 uses
  %.not.i17 = icmp eq ptr %i.y, %1
  br i1 %.not.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit, label %.lr.ph.i13, !llvm.loop !92

bb.h:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %0, %1
  br i1 %i.z, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit, label %.preheader.i22

.preheader.i22:                                   ; preds = %bb.h
  %.sroa.0.016.i23 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not17.i24 = icmp eq ptr %.sroa.0.016.i23, %1
  br i1 %.not17.i24, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.preheader.i22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i25
  %.sroa.0.019.i26 = phi ptr [ %.sroa.0.016.i23, %.lr.ph.i25 ], [ %.sroa.0.0.i31, %bb.o ] ; 7 uses
  %.pn18.i27 = phi ptr [ %0, %.lr.ph.i25 ], [ %.sroa.0.019.i26, %bb.o ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 56
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !55 ; 4 uses
  %i.ad = load double, ptr %i.aa, align 8, !tbaa !55
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i26, i64 32, i1 false), !tbaa.struct !19
  %i.af = ptrtoint ptr %.sroa.0.019.i26 to i64
  %i.ag = sub i64 %i.af, %i.b                     ; 3 uses
  %i.ah = ashr exact i64 %i.ag, 5                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.k, label %bb.l, !prof !56

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 64
  %i.ak = sub nsw i64 0, %i.ah
  %i.al = getelementptr inbounds [32 x i8], ptr %i.aj, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

bb.l:                                             ; preds = %bb.j
  %i.am = icmp eq i64 %i.ag, 32
  br i1 %i.am, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i21, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i26, i64 24, i1 false), !tbaa.struct !19
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 24
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !55
  %i.aq = fcmp olt double %i.ac, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i28

.lr.ph.i.i33:                                     ; preds = %bb.n, %.lr.ph.i.i33
  %.sroa.06.09.i.i34 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ], [ %.sroa.0.019.i26, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i34, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.09.i.i34, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i35, i64 32, i1 false), !tbaa.struct !19
  %i.ar = getelementptr inbounds i8, ptr %.sroa.06.09.i.i34, i64 -40
  %i.as = load double, ptr %i.ar, align 8, !tbaa !55
  %i.at = fcmp olt double %i.ac, %i.as
  br i1 %i.at, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i28, !llvm.loop !90

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i28: ; preds = %.lr.ph.i.i33, %bb.n
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.0.019.i26, %bb.n ], [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0.lcssa.i.i29, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i21, i64 24, i1 false), !tbaa.struct !19
  %.sroa.4.0..sroa_idx4.i.i30 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 24
  store double %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i30, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i21)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36
  %.sroa.0.0.i31 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i26, i64 32 ; 2 uses
  %.not.i32 = icmp eq ptr %.sroa.0.0.i31, %1
  br i1 %.not.i32, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit, label %bb.i, !llvm.loop !91

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i14, %.preheader.i22, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit
end_hunk_0
begin_hunk_1_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_:bb.a
  %i.j = icmp samesign ugt i64 %.sroa.0.019.i.idx, 20
  br i1 %i.j, label %bb.d, label %bb.e, !prof !56

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.k, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !48
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.019.i.ptr, i64 16, i1 false), !tbaa.struct !48
  %i.l = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !58
  %i.n = fcmp olt float %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.06.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.06.09.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i, i64 20, i1 false), !tbaa.struct !48
  %i.o = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -24
  %i.p = load float, ptr %i.o, align 4, !tbaa !58
  %i.q = fcmp olt float %i.g, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i, !llvm.loop !123

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i, i64 16, i1 false), !tbaa.struct !48
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 16
  store float %i.g, ptr %.sroa.4.0..sroa_idx4.i.i, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 20 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 320
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %bb.b, !llvm.loop !124

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.not6.i = icmp eq ptr %i.r, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14
  %.sroa.0.07.i = phi ptr [ %i.y, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.07.i, i64 16, i1 false), !tbaa.struct !48
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !47 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -4
  %i.t = load float, ptr %i.s, align 4, !tbaa !58
  %i.u = fcmp olt float %.sroa.4.0.copyload.i.i, %i.t
  br i1 %i.u, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i18
  %.sroa.06.09.i.i19 = phi ptr [ %.sroa.0.0.i.i20, %.lr.ph.i.i18 ], [ %.sroa.0.07.i, %.lr.ph.i13 ] ; 3 uses
  %.sroa.0.0.i.i20 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i19, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.06.09.i.i19, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i20, i64 20, i1 false), !tbaa.struct !48
  %i.v = getelementptr inbounds i8, ptr %.sroa.06.09.i.i19, i64 -24
  %i.w = load float, ptr %i.v, align 4, !tbaa !58
  %i.x = fcmp olt float %.sroa.4.0.copyload.i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14, !llvm.loop !123

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14: ; preds = %.lr.ph.i.i18, %.lr.ph.i13
  %.sroa.06.0.lcssa.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.0.i.i20, %.lr.ph.i.i18 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.0.lcssa.i.i15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12, i64 16, i1 false), !tbaa.struct !48
  %.sroa.4.0..sroa_idx4.i.i16 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i15, i64 16
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx4.i.i16, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 20 ; 2 uses
  %.not.i17 = icmp eq ptr %i.y, %1
  br i1 %.not.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.lr.ph.i13, !llvm.loop !125

bb.h:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %0, %1
  br i1 %i.z, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.preheader.i22

.preheader.i22:                                   ; preds = %bb.h
  %.sroa.0.016.i23 = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.not17.i24 = icmp eq ptr %.sroa.0.016.i23, %1
  br i1 %.not17.i24, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.preheader.i22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i25
  %.sroa.0.019.i26 = phi ptr [ %.sroa.0.016.i23, %.lr.ph.i25 ], [ %.sroa.0.0.i31, %bb.o ] ; 7 uses
  %.pn18.i27 = phi ptr [ %0, %.lr.ph.i25 ], [ %.sroa.0.019.i26, %bb.o ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 36
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !58 ; 4 uses
  %i.ad = load float, ptr %i.aa, align 4, !tbaa !58
  %i.ae = fcmp olt float %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.019.i26, i64 20, i1 false), !tbaa.struct !48
  %i.af = ptrtoint ptr %.sroa.0.019.i26 to i64
  %i.ag = sub i64 %i.af, %i.b                     ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 20
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !56

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 40
  %.neg24.i37 = udiv exact i64 %i.ag, 20
  %.neg24.neg.i38 = sub nsw i64 0, %.neg24.i37
  %i.aj = getelementptr inbounds [20 x i8], ptr %i.ai, i64 %.neg24.neg.i38
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aj, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

bb.l:                                             ; preds = %bb.j
  %i.ak = icmp eq i64 %i.ag, 20
  br i1 %i.ak, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.al, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !48
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i21, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.019.i26, i64 16, i1 false), !tbaa.struct !48
  %i.am = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 16
  %i.an = load float, ptr %i.am, align 4, !tbaa !58
  %i.ao = fcmp olt float %i.ac, %i.an
  br i1 %i.ao, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28

.lr.ph.i.i33:                                     ; preds = %bb.n, %.lr.ph.i.i33
  %.sroa.06.09.i.i34 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ], [ %.sroa.0.019.i26, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i34, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.06.09.i.i34, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i35, i64 20, i1 false), !tbaa.struct !48
  %i.ap = getelementptr inbounds i8, ptr %.sroa.06.09.i.i34, i64 -24
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !58
  %i.ar = fcmp olt float %i.ac, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28, !llvm.loop !123

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28: ; preds = %.lr.ph.i.i33, %bb.n
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.0.019.i26, %bb.n ], [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.0.lcssa.i.i29, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i21, i64 16, i1 false), !tbaa.struct !48
  %.sroa.4.0..sroa_idx4.i.i30 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 16
  store float %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i30, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i21)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36
  %.sroa.0.0.i31 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i26, i64 20 ; 2 uses
  %.not.i32 = icmp eq ptr %.sroa.0.0.i31, %1
  br i1 %.not.i32, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %bb.i, !llvm.loop !124

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14, %.preheader.i22, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_SR_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.014.i.i = alloca { i32, i32, double, double }, align 8 ; 4 uses
  %3 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %4 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %5 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %6 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %7 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %8 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %9 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %.sroa.06.i.i.i = alloca { i32, i32, double, double }, align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph57

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEESJ_SJ_SJ_SN_.exit
  %i.j = icmp eq i64 %i.cd, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph57, !llvm.loop !126

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa53 = phi i64 [ %i.d, %.lr.ph ], [ %i.dc, %bb.b ] ; 2 uses
  %.lcssa51 = phi i64 [ %i.c, %.lr.ph ], [ %i.db, %bb.b ] ; 2 uses
  %storemerge27.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.k = add nsw i64 %.lcssa53, -2                ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %.lcssa53, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %.lcssa51, 32
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i, %._crit_edge
  %.08.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i ] ; 8 uses
  %i.t = getelementptr inbounds [32 x i8], ptr %0, i64 %.08.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %.sroa.417.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.417.0.copyload.i.i = load double, ptr %.sroa.417.0..sroa.0.0..sroa_idx.i.i, align 8, !tbaa !18 ; 2 uses
  %i.u = icmp slt i64 %.08.i.i, %i.n
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.08.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [32 x i8], ptr %0, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [32 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !55
  %i.ae = fcmp olt double %i.ab, %i.ad
  %spec.select.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ag = getelementptr inbounds [32 x i8], ptr %0, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !tbaa.struct !19
  %i.ah = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.ah, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !127

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.08.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.ai, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !tbaa.struct !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i, %.08.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load double, ptr %i.al, align 8, !tbaa !55
  %i.an = fcmp olt double %i.am, %.sroa.417.0.copyload.i.i
  br i1 %i.an, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !tbaa.struct !19
  %i.ap = icmp sgt i64 %.0919.i.i.i.i, %.08.i.i
  br i1 %i.ap, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i, !llvm.loop !128

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.i.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store double %.sroa.417.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i.i)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.ar = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit, label %bb.c, !llvm.loop !129

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i
  %10 = icmp sgt i64 %.lcssa51, 32
  br i1 %10, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_RSN_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.as, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_RSN_.exit.i.i ], [ %storemerge27.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.49.0.copyload.i.i.i = load double, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.a                     ; 3 uses
  %i.av = ashr exact i64 %i.au, 5                 ; 3 uses
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = lshr i64 %i.aw, 1
  %i.ay = icmp sgt i64 %i.av, 2
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.az = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load double, ptr %i.be, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !55
  %i.bi = fcmp olt double %i.bf, %i.bh
  %spec.select.i.i.i.i = select i1 %i.bi, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bj = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bk = getelementptr inbounds [32 x i8], ptr %0, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 32, i1 false), !tbaa.struct !19
  %i.bl = icmp slt i64 %spec.select.i.i.i.i, %i.ax
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !127

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bm = and i64 %i.au, 32
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bo = add nsw i64 %i.av, -2
  %i.bp = ashr exact i64 %i.bo, 1
  %i.bq = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bp
  br i1 %i.bq, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.br = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bs = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bs
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false), !tbaa.struct !19
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_RSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bs, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i1011.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i1011.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0919.i.i1011.i.i.i ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !55
  %i.by = fcmp olt double %i.bx, %.sroa.49.0.copyload.i.i.i
  br i1 %i.by, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_RSN_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bz = getelementptr inbounds [32 x i8], ptr %0, i64 %.018.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 32, i1 false), !tbaa.struct !19
  %.not12.i.i.i = icmp eq i64 %.0919.i.i1011.i.i.i, 0
  br i1 %.not12.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_RSN_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !128

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_RSN_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.ca = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store double %.sroa.49.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i.i)
  %i.cb = icmp sgt i64 %i.au, 32
  br i1 %i.cb, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit, !llvm.loop !130

.lr.ph57:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2756 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02855 = phi i64 [ %i.cd, %bb.b ], [ %2, %.lr.ph ]
  %i.cc = phi i64 [ %i.dc, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cd = add nsw i64 %.02855, -1                 ; 3 uses
  %i.ce = lshr i64 %i.cc, 1
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ce ; 5 uses
  %i.cg = getelementptr inbounds i8, ptr %storemerge2756, i64 -32 ; 4 uses
  %i.ch = load double, ptr %i.g, align 8, !tbaa !55 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !55 ; 3 uses
  %i.ck = fcmp olt double %i.ch, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %storemerge2756, i64 -8
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !55 ; 4 uses
  br i1 %i.ck, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph57
  %i.cn = fcmp olt double %i.cj, %i.cm
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.co = fcmp olt double %i.ch, %i.cm
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph57
  %i.cp = fcmp olt double %i.ch, %i.cm
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cq = fcmp olt double %i.cj, %i.cm
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cv, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2756, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader ]
  %i.cr = load double, ptr %i.h, align 8, !tbaa !55 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i ], [ %i.cv, %bb.t ] ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 24
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !55
  %i.cu = fcmp olt double %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 32 ; 2 uses
  br i1 %i.cu, label %bb.t, label %.preheader.i.i, !llvm.loop !131

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !55
  %i.cy = fcmp olt double %i.cr, %i.cx
  br i1 %i.cy, label %.preheader.i.i, label %bb.u, !llvm.loop !132

bb.u:                                             ; preds = %.preheader.i.i
  %i.cz = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cz, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEESJ_SJ_SJ_SN_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.1.i.i, i64 32, i1 false), !tbaa.struct !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i, !llvm.loop !133

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEESJ_SJ_SJ_SN_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_SR_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2756, i64 noundef %i.cd)
  %i.da = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.db = sub i64 %i.da, %i.a                     ; 2 uses
  %i.dc = ashr exact i64 %i.db, 5                 ; 3 uses
  %i.dd = icmp sgt i64 %i.dc, 16
  br i1 %i.dd, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit, !llvm.loop !126

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEESJ_SJ_SJ_SN_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_RSN_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.03.i.i21 = alloca { i32, i32, double, double }, align 8 ; 4 uses
  %2 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %.sroa.03.i.i12 = alloca { i32, i32, double, double }, align 8 ; 4 uses
  %.sroa.03.i.i = alloca { i32, i32, double, double }, align 8 ; 4 uses
  %3 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 512
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %scevgep = getelementptr i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 32, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 56
  %i.g = load double, ptr %i.f, align 8, !tbaa !55 ; 4 uses
  %i.h = load double, ptr %i.e, align 8, !tbaa !55
  %i.i = fcmp olt double %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i.ptr, i64 32, i1 false), !tbaa.struct !19
  %i.j = icmp samesign ugt i64 %.sroa.0.019.i.idx, 32
  br i1 %i.j, label %bb.d, label %bb.e, !prof !56

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i.ptr, i64 24, i1 false), !tbaa.struct !19
  %i.l = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !55
  %i.n = fcmp olt double %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.06.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.09.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i, i64 32, i1 false), !tbaa.struct !19
  %i.o = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -40
  %i.p = load double, ptr %i.o, align 8, !tbaa !55
  %i.q = fcmp olt double %i.g, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i, !llvm.loop !134

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i, i64 24, i1 false), !tbaa.struct !19
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 24
  store double %i.g, ptr %.sroa.4.0..sroa_idx4.i.i, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 32 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 512
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %bb.b, !llvm.loop !135

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %.not6.i = icmp eq ptr %i.r, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14
  %.sroa.0.07.i = phi ptr [ %i.y, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.07.i, i64 24, i1 false), !tbaa.struct !19
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 24
  %.sroa.4.0.copyload.i.i = load double, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !18 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -8
  %i.t = load double, ptr %i.s, align 8, !tbaa !55
  %i.u = fcmp olt double %.sroa.4.0.copyload.i.i, %i.t
  br i1 %i.u, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i18
  %.sroa.06.09.i.i19 = phi ptr [ %.sroa.0.0.i.i20, %.lr.ph.i.i18 ], [ %.sroa.0.07.i, %.lr.ph.i13 ] ; 3 uses
  %.sroa.0.0.i.i20 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i19, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.09.i.i19, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i20, i64 32, i1 false), !tbaa.struct !19
  %i.v = getelementptr inbounds i8, ptr %.sroa.06.09.i.i19, i64 -40
  %i.w = load double, ptr %i.v, align 8, !tbaa !55
  %i.x = fcmp olt double %.sroa.4.0.copyload.i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14, !llvm.loop !134

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14: ; preds = %.lr.ph.i.i18, %.lr.ph.i13
  %.sroa.06.0.lcssa.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.0.i.i20, %.lr.ph.i.i18 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0.lcssa.i.i15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i12, i64 24, i1 false), !tbaa.struct !19
  %.sroa.4.0..sroa_idx4.i.i16 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i15, i64 24
  store double %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx4.i.i16, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 32 ; 2 uses
  %.not.i17 = icmp eq ptr %i.y, %1
  br i1 %.not.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.lr.ph.i13, !llvm.loop !136

bb.h:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %0, %1
  br i1 %i.z, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.preheader.i22

.preheader.i22:                                   ; preds = %bb.h
  %.sroa.0.016.i23 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not17.i24 = icmp eq ptr %.sroa.0.016.i23, %1
  br i1 %.not17.i24, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.preheader.i22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i25
  %.sroa.0.019.i26 = phi ptr [ %.sroa.0.016.i23, %.lr.ph.i25 ], [ %.sroa.0.0.i31, %bb.o ] ; 7 uses
  %.pn18.i27 = phi ptr [ %0, %.lr.ph.i25 ], [ %.sroa.0.019.i26, %bb.o ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 56
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !55 ; 4 uses
  %i.ad = load double, ptr %i.aa, align 8, !tbaa !55
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i26, i64 32, i1 false), !tbaa.struct !19
  %i.af = ptrtoint ptr %.sroa.0.019.i26 to i64
  %i.ag = sub i64 %i.af, %i.b                     ; 3 uses
  %i.ah = ashr exact i64 %i.ag, 5                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.k, label %bb.l, !prof !56

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 64
  %i.ak = sub nsw i64 0, %i.ah
  %i.al = getelementptr inbounds [32 x i8], ptr %i.aj, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

bb.l:                                             ; preds = %bb.j
  %i.am = icmp eq i64 %i.ag, 32
  br i1 %i.am, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !19
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i21, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i26, i64 24, i1 false), !tbaa.struct !19
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 24
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !55
  %i.aq = fcmp olt double %i.ac, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28

.lr.ph.i.i33:                                     ; preds = %bb.n, %.lr.ph.i.i33
  %.sroa.06.09.i.i34 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ], [ %.sroa.0.019.i26, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i34, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.09.i.i34, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i35, i64 32, i1 false), !tbaa.struct !19
  %i.ar = getelementptr inbounds i8, ptr %.sroa.06.09.i.i34, i64 -40
  %i.as = load double, ptr %i.ar, align 8, !tbaa !55
  %i.at = fcmp olt double %i.ac, %i.as
  br i1 %i.at, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28, !llvm.loop !134

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28: ; preds = %.lr.ph.i.i33, %bb.n
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.0.019.i26, %bb.n ], [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0.lcssa.i.i29, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i21, i64 24, i1 false), !tbaa.struct !19
  %.sroa.4.0..sroa_idx4.i.i30 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 24
  store double %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i30, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i21)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36
  %.sroa.0.0.i31 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i26, i64 32 ; 2 uses
  %.not.i32 = icmp eq ptr %.sroa.0.0.i31, %1
  br i1 %.not.i32, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %bb.i, !llvm.loop !135

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14, %.preheader.i22, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit
end_hunk_1
