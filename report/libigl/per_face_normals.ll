inline.NumInlined: 7480
inline.NumDeleted: 3474
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN3igl16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IjLin1ELi3ELi1ELin1ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %i.e = trunc i64 %i.d to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %0, ptr %5, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.g, align 8, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %6, ptr %i.h, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !24
  %i.i = call noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS4_IjLin1ELi3ELi1ELin1ELi3EEENS4_IfLi3ELi1ELi0ELi3ELi1EEES5_EEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERNS3_15PlainObjectBaseIT2_EEEUliE_EEbS9_RKSD_mEUlmE_ZNS1_IiSP_EEbS9_SR_mEUlimE_SS_EEbS9_SR_RKSH_RKSM_m(i32 noundef %i.e, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 10000) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.1227, align 1           ; 4 uses
  %4 = alloca %class.anon.1229, align 8           ; 4 uses
  %5 = alloca %class.anon.1226, align 8           ; 7 uses
  %6 = alloca %"class.Eigen::Matrix.105", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = icmp sgt i64 %i.b, 3074457345618258602
  br i1 %i.c, label %bb.b, label %_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi3ELi1ELi0ELi3ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS1_15PlainObjectBaseIT2_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi3ELi1ELi0ELi3ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS1_15PlainObjectBaseIT2_EE.exit: ; preds = %bb.a
  %i.e = mul nsw i64 %i.b, 3
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.e, i64 noundef %i.b, i64 noundef 3)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !66
  %i.g = trunc i64 %i.f to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %0, ptr %5, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.h, align 8, !tbaa !124
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.i, align 8, !tbaa !118
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %6, ptr %i.j, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !24
  %i.k = call noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IdLi3ELi1ELi0ELi3ELi1EEENS4_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERNS3_15PlainObjectBaseIT2_EEEUliE_EEbSA_RKSE_mEUlmE_ZNS1_IiSQ_EEbSA_SS_mEUlimE_ST_EEbSA_SS_RKSI_RKSN_m(i32 noundef %i.g, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 10000) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLi2ELi3ELi0ELi2ELi3EEENS2_IdLi2ELi3ELi0ELi2ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(48) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZZN3igl12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IiLi2ELi3ELi0ELi2ELi3EEENS3_IdLi3ELi1ELi0ELi3ELi1EEENS3_IdLi2ELi3ELi0ELi2ELi3EEEEEvRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERNS2_15PlainObjectBaseIT2_EEEUliE_EEbS9_RKSD_mENKUlimE_clEim.exit.i:
  %i.a = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 0 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !46, !noalias !151 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50   ; 7 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.d, 4 ; 6 uses
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !45
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g ; 3 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !45
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.j ; 3 uses
  %i.l = load double, ptr %i.h, align 8, !tbaa !51
  %i.m = load double, ptr %i.k, align 8, !tbaa !51
  %i.n = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.d
  %i.o = load double, ptr %i.n, align 8, !tbaa !51 ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.d
  %i.q = load double, ptr %i.p, align 8, !tbaa !51 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.s = load double, ptr %i.r, align 8, !tbaa !51
  %i.t = getelementptr inbounds i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.u = load double, ptr %i.t, align 8, !tbaa !51
  %i.v = getelementptr i8, ptr %1, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.x ; 3 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !51
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.d
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !51 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.l, i64 1
  %i.ai = insertelement <2 x double> poison, double %i.q, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.m, i64 1 ; 2 uses
  %i.ak = fsub <2 x double> %i.ah, %i.aj          ; 2 uses
  %i.al = insertelement <2 x double> poison, double %i.s, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.o, i64 1
  %i.an = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.q, i64 1 ; 2 uses
  %i.ap = fsub <2 x double> %i.am, %i.ao          ; 2 uses
  %i.aq = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.z, i64 1
  %i.as = fsub <2 x double> %i.ar, %i.aj          ; 2 uses
  %i.at = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.ab, i64 1
  %i.av = fsub <2 x double> %i.au, %i.ao          ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0
  %i.ax = fneg double %i.aw
  %i.ay = extractelement <2 x double> %i.ak, i64 1
  %i.az = fmul double %i.ay, %i.ax
  %i.ba = extractelement <2 x double> %i.ap, i64 0
  %i.bb = extractelement <2 x double> %i.as, i64 1
  %i.bc = fneg <2 x double> %i.as
  %i.bd = fmul <2 x double> %i.ap, %i.bc
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.av, <2 x double> %i.bd) ; 4 uses
  %i.bf = fmul <2 x double> %i.be, %i.be          ; 2 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 1
  %i.bh = extractelement <2 x double> %i.bf, i64 0
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.bb, double %i.az) ; 3 uses
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = fadd double %i.bg, %i.bj
  %i.bl = fadd double %i.bh, %i.bk                ; 2 uses
  %i.bm = fcmp oeq double %i.bl, 0.000000e+00     ; 3 uses
  %.scalar.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.bl) ; 2 uses
  %i.bn = insertelement <2 x double> %i.be, double %i.bi, i64 1
  %i.bo = insertelement <2 x double> poison, double %.scalar.i.i.i.i, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fdiv <2 x double> %i.bn, %i.bp          ; 2 uses
  %i.br = extractelement <2 x double> %i.be, i64 1
  %i.bs = fdiv double %i.br, %.scalar.i.i.i.i
  %i.bt = extractelement <2 x double> %i.bq, i64 0
  %.sink6 = select i1 %i.bm, double 0.000000e+00, double %i.bt
  %i.bu = extractelement <2 x double> %i.bq, i64 1
  %.sink = select i1 %i.bm, double 0.000000e+00, double %i.bu
  %storemerge.i.i.i = select i1 %i.bm, double 0.000000e+00, double %i.bs
  store double %.sink6, ptr %2, align 16, !tbaa !51
  store double %.sink, ptr %i.ae, align 16, !tbaa !51
  store double %storemerge.i.i.i, ptr %i.af, align 16, !tbaa !51
  %i.bv = getelementptr i8, ptr %1, i64 4
  %i.bw = getelementptr i8, ptr %1, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !45
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.by ; 3 uses
  %i.ca = load i32, ptr %i.bv, align 4, !tbaa !45
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cb ; 3 uses
  %i.cd = load double, ptr %i.bz, align 8, !tbaa !51
  %i.ce = load double, ptr %i.cc, align 8, !tbaa !51
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.d
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !51 ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.d
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !51 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.bz, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !51
  %i.cl = getelementptr inbounds i8, ptr %i.cc, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !51
  %i.cn = getelementptr i8, ptr %1, i64 20
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !45
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cp ; 3 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !51
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.d
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !51 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.cq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cz = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cd, i64 1
  %i.db = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.ce, i64 1 ; 2 uses
  %i.dd = fsub <2 x double> %i.da, %i.dc          ; 2 uses
  %i.de = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.cg, i64 1
  %i.dg = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.ci, i64 1 ; 2 uses
  %i.di = fsub <2 x double> %i.df, %i.dh          ; 2 uses
  %i.dj = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.cr, i64 1
  %i.dl = fsub <2 x double> %i.dk, %i.dc          ; 2 uses
  %i.dm = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.ct, i64 1
  %i.do = fsub <2 x double> %i.dn, %i.dh          ; 2 uses
  %i.dp = extractelement <2 x double> %i.do, i64 0
  %i.dq = fneg double %i.dp
  %i.dr = extractelement <2 x double> %i.dd, i64 1
  %i.ds = fmul double %i.dr, %i.dq
  %i.dt = extractelement <2 x double> %i.di, i64 0
  %i.du = extractelement <2 x double> %i.dl, i64 1
  %i.dv = fneg <2 x double> %i.dl
  %i.dw = fmul <2 x double> %i.di, %i.dv
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.do, <2 x double> %i.dw) ; 4 uses
  %3 = fmul <2 x double> %i.dx, %i.dx             ; 2 uses
  %4 = extractelement <2 x double> %3, i64 1
  %i.dy = extractelement <2 x double> %3, i64 0
  %5 = extractelement <2 x double> %i.dx, i64 0
  %6 = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.du, double %i.ds) ; 3 uses
  %7 = fmul double %6, %6
  %8 = fadd double %4, %7
  %9 = fadd double %i.dy, %8                      ; 2 uses
  %10 = fcmp oeq double %9, 0.000000e+00          ; 3 uses
  %.scalar.i.i.i.i.1 = tail call double @llvm.sqrt.f64(double %9) ; 2 uses
  %11 = fdiv double %5, %.scalar.i.i.i.i.1
  %i.dz = insertelement <2 x double> %i.dx, double %6, i64 0
  %i.ea = insertelement <2 x double> poison, double %.scalar.i.i.i.i.1, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = fdiv <2 x double> %i.dz, %i.eb          ; 2 uses
  %.sink8 = select i1 %10, double 0.000000e+00, double %11
  %12 = extractelement <2 x double> %i.ec, i64 0
  %.sink7 = select i1 %10, double 0.000000e+00, double %12
  %13 = extractelement <2 x double> %i.ec, i64 1
  %storemerge.i.i.i.1 = select i1 %10, double 0.000000e+00, double %13
  store double %.sink8, ptr %i.cw, align 8, !tbaa !51
  store double %.sink7, ptr %i.cx, align 8, !tbaa !51
  store double %storemerge.i.i.i.1, ptr %i.cy, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl23per_face_normals_stableIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.1308, align 1           ; 4 uses
  %4 = alloca %class.anon.1310, align 8           ; 4 uses
  %5 = alloca %class.anon.177, align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66   ; 4 uses
  %i.c = icmp sgt i64 %i.b, 3074457345618258602
  br i1 %i.c, label %bb.b, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a
  %i.e = mul nsw i64 %i.b, 3
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.e, i64 noundef %i.b, i64 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %0, ptr %5, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.g, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !24
  %i.h = call noundef zeroext i1 @_ZN3igl12parallel_forImZNS_12parallel_forImZNS_23per_face_normals_stableIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_EEvRKNS3_10MatrixBaseIT_EERKNS7_IT0_EERNS3_15PlainObjectBaseIT1_EEEUliE_EEbS8_RKSC_mEUlmE_ZNS1_ImSK_EEbS8_SM_mEUlmmE_SN_EEbS8_SM_RKSH_RKT2_m(i64 noundef %i.b, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 10000) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl23per_face_normals_stableIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.1335, align 1           ; 4 uses
  %4 = alloca %class.anon.1337, align 8           ; 4 uses
  %5 = alloca %class.anon.178, align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %0, ptr %5, align 8, !tbaa !126
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !124
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !24
  %i.e = call noundef zeroext i1 @_ZN3igl12parallel_forImZNS_12parallel_forImZNS_23per_face_normals_stableIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERNS3_15PlainObjectBaseIT1_EEEUliE_EEbS9_RKSD_mEUlmE_ZNS1_ImSL_EEbS9_SN_mEUlmmE_SO_EEbS9_SN_RKSI_RKT2_m(i64 noundef %i.b, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 10000) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !154
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.j) #23
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #24 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !156
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl23per_face_normals_stableIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.1349, align 1           ; 4 uses
  %4 = alloca %class.anon.1351, align 8           ; 4 uses
  %5 = alloca %class.anon.179, align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %0, ptr %5, align 8, !tbaa !137
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !24
  %i.e = call noundef zeroext i1 @_ZN3igl12parallel_forImZNS_12parallel_forImZNS_23per_face_normals_stableIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEES5_EEvRKNS3_10MatrixBaseIT_EERKNS7_IT0_EERNS3_15PlainObjectBaseIT1_EEEUliE_EEbS8_RKSC_mEUlmE_ZNS1_ImSK_EEbS8_SM_mEUlmmE_SN_EEbS8_SM_RKSH_RKT2_m(i64 noundef %i.b, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 10000) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !157
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi3ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !160
  tail call void @free(ptr noundef %i.j) #23
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

end_hunk_0
