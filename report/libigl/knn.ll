Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/knn?download=true
inline.NumInlined: 1504
inline.NumDeleted: 843
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESD_iNSC_IiLin1ELi8ELi0ELin1ELi8EEENSC_IdLin1ELi3ELi0ELin1ELi3EEENSC_IdLin1ELi1ELi0ELin1ELi1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNSB_10MatrixBaseIT_EERKNSI_IT0_EEmRKS3_IS3_IT1_SaISR_EESaIST_EERKNSI_IT2_EERKNSI_IT3_EERKNSI_IT4_EERNSB_15PlainObjectBaseIT5_EEENKUlmE_clEmEUliiE_EEEvSJ_SN_SN_SR_SY_:bb.a
  %.sroa.speculated11.i.i.i = select i1 %i.bx, double 0.000000e+00, double %i.bw
  %i.by = call noundef double @pow(double noundef %.sroa.speculated11.i.i.i, double noundef 2.000000e+00) #22
  %i.bz = insertelement <2 x double> %i.br, double %i.bu, i64 0
  %i.ca = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bz)
  %i.cb = fadd <2 x double> %i.ca, splat (double -1.000000e+00) ; 2 uses
  %i.cc = fcmp olt <2 x double> %i.cb, zeroinitializer
  %i.cd = select <2 x i1> %i.cc, <2 x double> zeroinitializer, <2 x double> %i.cb ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 1
  %i.cf = call noundef double @pow(double noundef %i.ce, double noundef 2.000000e+00) #22
  %i.cg = fadd double %i.by, %i.cf
  %i.ch = extractelement <2 x double> %i.cd, i64 0
  %i.ci = call noundef double @pow(double noundef %i.ch, double noundef 2.000000e+00) #22
  %i.cj = fadd double %i.cg, %i.ci
  %i.ck = call noundef double @sqrt(double noundef %i.cj) #22
  %i.cl = fmul double %i.bn, %i.ck
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cm = phi double [ %i.ay, %bb.e ], [ %i.bs, %bb.f ] ; 2 uses
  %.010.i = phi double [ %.scalar.i.i, %bb.e ], [ %i.cl, %bb.f ]
  %i.cn = phi <2 x double> [ %i.aq, %bb.e ], [ %i.bo, %bb.f ]
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.co = load ptr, ptr %.sroa.5.0.copyload, align 8, !tbaa !24, !noalias !201
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.aa ; 3 uses
  %i.cq = load i64, ptr %i.ae, align 8, !tbaa !21 ; 2 uses
  %i.cr = load double, ptr %i.cp, align 8, !tbaa !57
  %i.cs = getelementptr [8 x i8], ptr %i.cp, i64 %i.cq
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !57
  %i.cu = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %i.ct, i64 1
  %i.cw = fsub <2 x double> %i.cv, %i.cn          ; 2 uses
  %i.cx = fmul <2 x double> %i.cw, %i.cw          ; 2 uses
  %shift48 = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop49 = fadd <2 x double> %i.cx, %shift48
  %i.cy = extractelement <2 x double> %foldExtExtBinop49, i64 0
  %.idx.i.i.i.i.i19.i = shl i64 %i.cq, 4
  %i.cz = getelementptr i8, ptr %i.cp, i64 %.idx.i.i.i.i.i19.i
  %i.da = load double, ptr %i.cz, align 8, !tbaa !57
  %i.db = fsub double %i.da, %i.cm                ; 2 uses
  %i.dc = fmul double %i.db, %i.db
  %i.dd = fadd double %i.cy, %i.dc
  %.scalar.i20.i = call noundef double @llvm.sqrt.f64(double %i.dd)
  br label %_ZZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_iNS2_IiLin1ELi8ELi0ELin1ELi8EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEmRKSt6vectorISH_IT1_SaISI_EESaISK_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EERNS1_15PlainObjectBaseIT5_EEENKUlmE_clEmENKUliiE_clEii.exit

bb.i:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !90, !noalias !202
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.af ; 3 uses
  %i.dg = load i64, ptr %i.ac, align 8, !tbaa !91 ; 2 uses
  %i.dh = load double, ptr %i.df, align 8, !tbaa !57
  %.sroa.029.0.vec.insert.i = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.di = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg
  %i.dj = load double, ptr %i.di, align 8, !tbaa !57
  %.sroa.029.8.vec.insert.i = insertelement <2 x double> %.sroa.029.0.vec.insert.i, double %i.dj, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i21.i = shl nsw i64 %i.dg, 4
  %i.dk = getelementptr inbounds i8, ptr %i.df, i64 %.idx.i.i.i.i.i.i.i.i.i.i21.i
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !57
  %i.dm = load ptr, ptr %.sroa.9.0.copyload, align 8, !tbaa !39
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.af
  %i.do = load double, ptr %i.dn, align 8, !tbaa !57 ; 3 uses
  %.sroa.9.32.vec.insert.i.i.i.i.i.i.i22.i = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dp = load <2 x double>, ptr %.sroa.0.0.copyload26, align 1, !tbaa !92
  %i.dq = fsub <2 x double> %i.dp, %.sroa.029.8.vec.insert.i
  %i.dr = shufflevector <2 x double> %.sroa.9.32.vec.insert.i.i.i.i.i.i.i22.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fdiv <2 x double> %i.dq, %i.dr          ; 2 uses
  %i.dt = fsub double %i.cm, %i.dl
  %i.du = fdiv double %i.dt, %i.do
  %.sroa.05.0.vec.extract.i23.i = extractelement <2 x double> %i.ds, i64 0
  %i.dv = call noundef double @llvm.fabs.f64(double %.sroa.05.0.vec.extract.i23.i)
  %i.dw = fadd double %i.dv, -1.000000e+00        ; 2 uses
  %i.dx = fcmp olt double %i.dw, 0.000000e+00
  %.sroa.speculated11.i.i24.i = select i1 %i.dx, double 0.000000e+00, double %i.dw
  %i.dy = call noundef double @pow(double noundef %.sroa.speculated11.i.i24.i, double noundef 2.000000e+00) #22
  %i.dz = insertelement <2 x double> %i.ds, double %i.du, i64 0
  %i.ea = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dz)
  %i.eb = fadd <2 x double> %i.ea, splat (double -1.000000e+00) ; 2 uses
  %i.ec = fcmp olt <2 x double> %i.eb, zeroinitializer
  %i.ed = select <2 x i1> %i.ec, <2 x double> zeroinitializer, <2 x double> %i.eb ; 2 uses
  %i.ee = extractelement <2 x double> %i.ed, i64 1
  %i.ef = call noundef double @pow(double noundef %i.ee, double noundef 2.000000e+00) #22
  %i.eg = fadd double %i.dy, %i.ef
  %i.eh = extractelement <2 x double> %i.ed, i64 0
  %i.ei = call noundef double @pow(double noundef %i.eh, double noundef 2.000000e+00) #22
  %i.ej = fadd double %i.eg, %i.ei
  %i.ek = call noundef double @sqrt(double noundef %i.ej) #22
  %i.el = fmul double %i.do, %i.ek
  br label %_ZZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_iNS2_IiLin1ELi8ELi0ELin1ELi8EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEmRKSt6vectorISH_IT1_SaISI_EESaISK_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EERNS1_15PlainObjectBaseIT5_EEENKUlmE_clEmENKUliiE_clEii.exit

_ZZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_iNS2_IiLin1ELi8ELi0ELin1ELi8EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEmRKSt6vectorISH_IT1_SaISI_EESaISK_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EERNS1_15PlainObjectBaseIT5_EEENKUlmE_clEmENKUliiE_clEii.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi double [ %.scalar.i20.i, %bb.h ], [ %i.el, %bb.i ]
  %i.em = fcmp ogt double %.010.i, %.0.i
  br i1 %i.em, label %bb.j, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESD_iNSC_IiLin1ELi8ELi0ELin1ELi8EEENSC_IdLin1ELi3ELi0ELin1ELi3EEENSC_IdLin1ELi1ELi0ELin1ELi1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNSB_10MatrixBaseIT_EERKNSI_IT0_EEmRKS3_IS3_IT1_SaISR_EESaIST_EERKNSI_IT2_EERKNSI_IT3_EERKNSI_IT4_EERNSB_15PlainObjectBaseIT5_EEENKUlmE_clEmEUliiE_EEEvSJ_SN_SN_SR_RSY_.exit

bb.j:                                             ; preds = %_ZZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_iNS2_IiLin1ELi8ELi0ELin1ELi8EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEmRKSt6vectorISH_IT1_SaISI_EESaISK_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EERNS1_15PlainObjectBaseIT5_EEENKUlmE_clEmENKUliiE_clEii.exit
  %i.en = load i32, ptr %i.ag, align 4, !tbaa !33
  %i.eo = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !33
  %i.ep = icmp sgt i64 %.0920.i, %1
  br i1 %i.ep, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESD_iNSC_IiLin1ELi8ELi0ELin1ELi8EEENSC_IdLin1ELi3ELi0ELin1ELi3EEENSC_IdLin1ELi1ELi0ELin1ELi1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNSB_10MatrixBaseIT_EERKNSI_IT0_EEmRKS3_IS3_IT1_SaISR_EESaIST_EERKNSI_IT2_EERKNSI_IT3_EERKNSI_IT4_EERNSB_15PlainObjectBaseIT5_EEENKUlmE_clEmEUliiE_EEEvSJ_SN_SN_SR_RSY_.exit, !llvm.loop !3

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESD_iNSC_IiLin1ELi8ELi0ELin1ELi8EEENSC_IdLin1ELi3ELi0ELin1ELi3EEENSC_IdLin1ELi1ELi0ELin1ELi1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNSB_10MatrixBaseIT_EERKNSI_IT0_EEmRKS3_IS3_IT1_SaISR_EESaIST_EERKNSI_IT2_EERKNSI_IT3_EERKNSI_IT4_EERNSB_15PlainObjectBaseIT5_EEENKUlmE_clEmEUliiE_EEEvSJ_SN_SN_SR_RSY_.exit: ; preds = %_ZZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_iNS2_IiLin1ELi8ELi0ELin1ELi8EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEmRKSt6vectorISH_IT1_SaISI_EESaISK_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EERNS1_15PlainObjectBaseIT5_EEENKUlmE_clEmENKUliiE_clEii.exit, %bb.j, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.019.i, %_ZZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_iNS2_IiLin1ELi8ELi0ELin1ELi8EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEmRKSt6vectorISH_IT1_SaISI_EESaISK_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EERNS1_15PlainObjectBaseIT5_EEENKUlmE_clEmENKUliiE_clEii.exit ], [ %.0920.i, %bb.j ]
  %i.eq = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i
  store i32 %3, ptr %i.eq, align 4, !tbaa !33
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_iNS2_IiLin1ELi8ELi0ELin1ELi8EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEmRKSt6vectorISH_IT1_SaISI_EESaISK_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EERNS1_15PlainObjectBaseIT5_EEENKUlmE_clEmENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !212  ; 4 uses
  %i.d = icmp ugt i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !213, !nonnull !60 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24, !noalias !214
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.a ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !215, !nonnull !60, !align !61 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = load double, ptr %i.h, align 8, !tbaa !57
  %i.m = load double, ptr %i.i, align 8, !tbaa !57 ; 2 uses
  %i.n = fsub double %i.l, %i.m                   ; 2 uses
  %i.o = fmul double %i.n, %i.n
  %i.p = getelementptr [8 x i8], ptr %i.h, i64 %i.k
  %i.q = load double, ptr %i.p, align 8, !tbaa !57
  %i.r = getelementptr i8, ptr %i.i, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !57
  %i.t = fsub double %i.q, %i.s                   ; 2 uses
  %i.u = fmul double %i.t, %i.t
  %i.v = fadd double %i.o, %i.u
  %.idx.i.i.i.i.i = shl i64 %i.k, 4
  %i.w = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i
  %i.x = load double, ptr %i.w, align 8, !tbaa !57
  %i.y = getelementptr i8, ptr %i.i, i64 16
  %i.z = load double, ptr %i.y, align 8, !tbaa !57 ; 2 uses
  %i.aa = fsub double %i.x, %i.z                  ; 2 uses
  %i.ab = fmul double %i.aa, %i.aa
  %i.ac = fadd double %i.v, %i.ab
  %.scalar.i = tail call noundef double @llvm.sqrt.f64(double %i.ac)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %0, align 8, !tbaa !215, !nonnull !60, !align !61 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !216, !nonnull !60 ; 2 uses
  %i.ag = sub nuw i64 %i.a, %i.c                  ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !90, !noalias !217
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ag ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !91 ; 2 uses
  %i.al = load double, ptr %i.ai, align 8, !tbaa !57
  %.sroa.048.0.vec.insert = insertelement <2 x double> poison, double %i.al, i64 0
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  %i.an = load double, ptr %i.am, align 8, !tbaa !57
  %.sroa.048.8.vec.insert = insertelement <2 x double> %.sroa.048.0.vec.insert, double %i.an, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ak, 4
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !218, !nonnull !60
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.ag
  %i.au = load double, ptr %i.at, align 8, !tbaa !57 ; 3 uses
  %.sroa.9.32.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.au, i64 0
  %i.av = load <2 x double>, ptr %i.ad, align 8   ; 2 uses
  %i.aw = fsub <2 x double> %i.av, %.sroa.048.8.vec.insert
  %i.ax = shufflevector <2 x double> %.sroa.9.32.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fdiv <2 x double> %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !57 ; 2 uses
  %i.bb = fsub double %i.ba, %i.ap
  %i.bc = fdiv double %i.bb, %i.au
  %i.bd = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ay)
  %i.be = fadd <2 x double> %i.bd, splat (double -1.000000e+00) ; 2 uses
  %i.bf = fcmp olt <2 x double> %i.be, zeroinitializer
  %i.bg = select <2 x i1> %i.bf, <2 x double> zeroinitializer, <2 x double> %i.be ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  %i.bi = tail call noundef double @pow(double noundef %i.bh, double noundef 2.000000e+00) #22
  %i.bj = extractelement <2 x double> %i.bg, i64 1
  %i.bk = tail call noundef double @pow(double noundef %i.bj, double noundef 2.000000e+00) #22
  %i.bl = fadd double %i.bi, %i.bk
  %i.bm = tail call noundef double @llvm.fabs.f64(double %i.bc)
  %i.bn = fadd double %i.bm, -1.000000e+00        ; 2 uses
  %i.bo = fcmp olt double %i.bn, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.bo, double 0.000000e+00, double %i.bn
  %i.bp = tail call noundef double @pow(double noundef %.sroa.speculated.i.i, double noundef 2.000000e+00) #22
  %i.bq = fadd double %i.bl, %i.bp
  %i.br = tail call noundef double @sqrt(double noundef %i.bq) #22
  %i.bs = fmul double %i.au, %i.br
  %i.bt = extractelement <2 x double> %i.av, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bu = phi double [ %i.m, %bb.b ], [ %i.bt, %bb.c ]
  %i.bv = phi double [ %i.z, %bb.b ], [ %i.ba, %bb.c ]
  %i.bw = phi ptr [ %i.i, %bb.b ], [ %i.ad, %bb.c ] ; 3 uses
  %.010 = phi double [ %.scalar.i, %bb.b ], [ %i.bs, %bb.c ]
  %i.bx = sext i32 %2 to i64                      ; 3 uses
  %i.by = icmp ugt i64 %i.c, %i.bx
  br i1 %i.by, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !213, !nonnull !60 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !24, !noalias !219
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.bx ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !21 ; 2 uses
  %i.cf = load double, ptr %i.cc, align 8, !tbaa !57
  %i.cg = fsub double %i.cf, %i.bu                ; 2 uses
  %i.ch = fmul double %i.cg, %i.cg
  %i.ci = getelementptr [8 x i8], ptr %i.cc, i64 %i.ce
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !57
  %i.ck = getelementptr i8, ptr %i.bw, i64 8
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !57
  %i.cm = fsub double %i.cj, %i.cl                ; 2 uses
  %i.cn = fmul double %i.cm, %i.cm
  %i.co = fadd double %i.ch, %i.cn
  %.idx.i.i.i.i.i19 = shl i64 %i.ce, 4
  %3 = getelementptr i8, ptr %i.cc, i64 %.idx.i.i.i.i.i19
  %4 = load double, ptr %3, align 8, !tbaa !57
  %i.cp = getelementptr i8, ptr %i.bw, i64 16
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !57
  %i.cr = fsub double %4, %i.cq                   ; 2 uses
  %i.cs = fmul double %i.cr, %i.cr
  %i.ct = fadd double %i.co, %i.cs
  %.scalar.i20 = tail call noundef double @llvm.sqrt.f64(double %i.ct)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !216, !nonnull !60 ; 2 uses
  %i.cw = sub nuw i64 %i.bx, %i.c                 ; 2 uses
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !90, !noalias !220
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.cw ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !91 ; 2 uses
  %i.db = load double, ptr %i.cy, align 8, !tbaa !57
  %.sroa.029.0.vec.insert = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.da
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !57
  %.sroa.029.8.vec.insert = insertelement <2 x double> %.sroa.029.0.vec.insert, double %i.dd, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i21 = shl nsw i64 %i.da, 4
  %i.de = getelementptr inbounds i8, ptr %i.cy, i64 %.idx.i.i.i.i.i.i.i.i.i.i21
  %i.df = load double, ptr %i.de, align 8, !tbaa !57
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !218, !nonnull !60
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !39
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.cw
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !57 ; 3 uses
  %.sroa.9.32.vec.insert.i.i.i.i.i.i.i22 = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dl = load <2 x double>, ptr %i.bw, align 8, !tbaa !92
  %i.dm = fsub <2 x double> %i.dl, %.sroa.029.8.vec.insert
  %i.dn = shufflevector <2 x double> %.sroa.9.32.vec.insert.i.i.i.i.i.i.i22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fdiv <2 x double> %i.dm, %i.dn
  %i.dp = fsub double %i.bv, %i.df
  %i.dq = fdiv double %i.dp, %i.dk
  %i.dr = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.do)
  %i.ds = fadd <2 x double> %i.dr, splat (double -1.000000e+00) ; 2 uses
  %i.dt = fcmp olt <2 x double> %i.ds, zeroinitializer
  %i.du = select <2 x i1> %i.dt, <2 x double> zeroinitializer, <2 x double> %i.ds ; 2 uses
  %i.dv = extractelement <2 x double> %i.du, i64 0
  %i.dw = tail call noundef double @pow(double noundef %i.dv, double noundef 2.000000e+00) #22
  %i.dx = extractelement <2 x double> %i.du, i64 1
  %i.dy = tail call noundef double @pow(double noundef %i.dx, double noundef 2.000000e+00) #22
  %i.dz = fadd double %i.dw, %i.dy
  %i.ea = tail call noundef double @llvm.fabs.f64(double %i.dq)
  %i.eb = fadd double %i.ea, -1.000000e+00        ; 2 uses
  %i.ec = fcmp olt double %i.eb, 0.000000e+00
  %.sroa.speculated.i.i27 = select i1 %i.ec, double 0.000000e+00, double %i.eb
  %i.ed = tail call noundef double @pow(double noundef %.sroa.speculated.i.i27, double noundef 2.000000e+00) #22
  %i.ee = fadd double %i.dz, %i.ed
  %i.ef = tail call noundef double @sqrt(double noundef %i.ee) #22
  %i.eg = fmul double %i.dk, %i.ef
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi double [ %.scalar.i20, %bb.e ], [ %i.eg, %bb.f ]
  %i.eh = fcmp ogt double %.010, %.0
  ret i1 %i.eh
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forImZNS4_12parallel_forImZNS4_3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_iNS9_IiLin1ELi8ELi0ELin1ELi8EEENS9_IdLin1ELi3ELi0ELin1ELi3EEENS9_IdLin1ELi1ELi0ELin1ELi1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS8_10MatrixBaseIT_EERKNSF_IT0_EEmRKS_IS_IT1_SaISO_EESaISQ_EERKNSF_IT2_EERKNSF_IT3_EERKNSF_IT4_EERNS8_15PlainObjectBaseIT5_EEEUlmE_EEbSG_RKSK_mEUlmE_ZNS6_ImS1B_EEbSG_S1D_mEUlmmE_S1E_EEbSG_S1D_RKSO_RKSV_mEUlmmmE_RmS1N_S1N_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !64     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !69
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forImZNS3_12parallel_forImZNS3_3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES9_iNS8_IiLin1ELi8ELi0ELin1ELi8EEENS8_IdLin1ELi3ELi0ELin1ELi3EEENS8_IdLin1ELi1ELi0ELin1ELi1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS7_10MatrixBaseIT_EERKNSE_IT0_EEmRKSt6vectorISN_IT1_SaISO_EESaISQ_EERKNSE_IT2_EERKNSE_IT3_EERKNSE_IT4_EERNS7_15PlainObjectBaseIT5_EEEUlmE_EEbSF_RKSJ_mEUlmE_ZNS5_ImS1B_EEbSF_S1D_mEUlmmE_S1E_EEbSF_S1D_RKSO_RKSV_mEUlmmmE_mmmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !17
  store i64 %i.t, ptr %i.s, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !17
  store i64 %i.v, ptr %i.u, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !17
  store i64 %i.x, ptr %i.w, align 8, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !40
  store i64 %i.z, ptr %i.y, align 8, !tbaa !40
  store ptr %i.r, ptr %6, align 8, !tbaa !77
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !77    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #22, !inline_history !1
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !77    ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #22, !inline_history !1
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %i.aj = add i64 %i.m, -8
  %i.ak = sub i64 %i.aj, %i.e                     ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.p, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aq ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.c, i64 %i.aq ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.ar = getelementptr i8, ptr %next.gep54, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep54, align 8, !tbaa !17, !alias.scope !235
  %wide.load55 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !17, !alias.scope !235
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !17, !alias.scope !234
  store <2 x i64> %wide.load55, ptr %i.as, align 8, !tbaa !17, !alias.scope !234
  store <2 x i64> zeroinitializer, ptr %next.gep54, align 8, !tbaa !17, !alias.scope !235
  store <2 x i64> zeroinitializer, ptr %i.ar, align 8, !tbaa !17, !alias.scope !235
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !224
end_hunk_0
begin_hunk_1_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESD_iNSC_IiLin1ELin1ELi0ELin1ELin1EEESD_NSC_IdLin1ELi1ELi0ELin1ELi1EEESE_EEvRKNSB_10MatrixBaseIT_EERKNSG_IT0_EEmRKS3_IS3_IT1_SaISP_EESaISR_EERKNSG_IT2_EERKNSG_IT3_EERKNSG_IT4_EERNSB_15PlainObjectBaseIT5_EEENKUlmE_clEmEUliiE_EEEvSH_SL_SL_SP_SW_:bb.a
  %.sroa.speculated11.i.i.i = select i1 %i.bx, double 0.000000e+00, double %i.bw
  %i.by = call noundef double @pow(double noundef %.sroa.speculated11.i.i.i, double noundef 2.000000e+00) #22
  %i.bz = insertelement <2 x double> %i.br, double %i.bu, i64 0
  %i.ca = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bz)
  %i.cb = fadd <2 x double> %i.ca, splat (double -1.000000e+00) ; 2 uses
  %i.cc = fcmp olt <2 x double> %i.cb, zeroinitializer
  %i.cd = select <2 x i1> %i.cc, <2 x double> zeroinitializer, <2 x double> %i.cb ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 1
  %i.cf = call noundef double @pow(double noundef %i.ce, double noundef 2.000000e+00) #22
  %i.cg = fadd double %i.by, %i.cf
  %i.ch = extractelement <2 x double> %i.cd, i64 0
  %i.ci = call noundef double @pow(double noundef %i.ch, double noundef 2.000000e+00) #22
  %i.cj = fadd double %i.cg, %i.ci
  %i.ck = call noundef double @sqrt(double noundef %i.cj) #22
  %i.cl = fmul double %i.bn, %i.ck
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cm = phi double [ %i.ay, %bb.e ], [ %i.bs, %bb.f ] ; 2 uses
  %.010.i = phi double [ %.scalar.i.i, %bb.e ], [ %i.cl, %bb.f ]
  %i.cn = phi <2 x double> [ %i.aq, %bb.e ], [ %i.bo, %bb.f ]
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.co = load ptr, ptr %.sroa.5.0.copyload, align 8, !tbaa !24, !noalias !321
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.aa ; 3 uses
  %i.cq = load i64, ptr %i.ae, align 8, !tbaa !21 ; 2 uses
  %i.cr = load double, ptr %i.cp, align 8, !tbaa !57
  %i.cs = getelementptr [8 x i8], ptr %i.cp, i64 %i.cq
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !57
  %i.cu = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %i.ct, i64 1
  %i.cw = fsub <2 x double> %i.cv, %i.cn          ; 2 uses
  %i.cx = fmul <2 x double> %i.cw, %i.cw          ; 2 uses
  %shift48 = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop49 = fadd <2 x double> %i.cx, %shift48
  %i.cy = extractelement <2 x double> %foldExtExtBinop49, i64 0
  %.idx.i.i.i.i.i19.i = shl i64 %i.cq, 4
  %i.cz = getelementptr i8, ptr %i.cp, i64 %.idx.i.i.i.i.i19.i
  %i.da = load double, ptr %i.cz, align 8, !tbaa !57
  %i.db = fsub double %i.da, %i.cm                ; 2 uses
  %i.dc = fmul double %i.db, %i.db
  %i.dd = fadd double %i.cy, %i.dc
  %.scalar.i20.i = call noundef double @llvm.sqrt.f64(double %i.dd)
  br label %_ZZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_iNS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEmRKSt6vectorISF_IT1_SaISG_EESaISI_EERKNS6_IT2_EERKNS6_IT3_EERKNS6_IT4_EERNS1_15PlainObjectBaseIT5_EEENKUlmE_clEmENKUliiE_clEii.exit

bb.i:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !24, !noalias !322
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.af ; 3 uses
  %i.dg = load i64, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.dh = load double, ptr %i.df, align 8, !tbaa !57
  %.sroa.029.0.vec.insert.i = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.di = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg
  %i.dj = load double, ptr %i.di, align 8, !tbaa !57
  %.sroa.029.8.vec.insert.i = insertelement <2 x double> %.sroa.029.0.vec.insert.i, double %i.dj, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i21.i = shl nsw i64 %i.dg, 4
  %i.dk = getelementptr inbounds i8, ptr %i.df, i64 %.idx.i.i.i.i.i.i.i.i.i.i21.i
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !57
  %i.dm = load ptr, ptr %.sroa.9.0.copyload, align 8, !tbaa !39
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.af
  %i.do = load double, ptr %i.dn, align 8, !tbaa !57 ; 3 uses
  %.sroa.9.32.vec.insert.i.i.i.i.i.i.i22.i = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dp = load <2 x double>, ptr %.sroa.0.0.copyload26, align 1, !tbaa !92
  %i.dq = fsub <2 x double> %i.dp, %.sroa.029.8.vec.insert.i
  %i.dr = shufflevector <2 x double> %.sroa.9.32.vec.insert.i.i.i.i.i.i.i22.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fdiv <2 x double> %i.dq, %i.dr          ; 2 uses
  %i.dt = fsub double %i.cm, %i.dl
  %i.du = fdiv double %i.dt, %i.do
  %.sroa.05.0.vec.extract.i23.i = extractelement <2 x double> %i.ds, i64 0
  %i.dv = call noundef double @llvm.fabs.f64(double %.sroa.05.0.vec.extract.i23.i)
  %i.dw = fadd double %i.dv, -1.000000e+00        ; 2 uses
  %i.dx = fcmp olt double %i.dw, 0.000000e+00
  %.sroa.speculated11.i.i24.i = select i1 %i.dx, double 0.000000e+00, double %i.dw
  %i.dy = call noundef double @pow(double noundef %.sroa.speculated11.i.i24.i, double noundef 2.000000e+00) #22
  %i.dz = insertelement <2 x double> %i.ds, double %i.du, i64 0
  %i.ea = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dz)
  %i.eb = fadd <2 x double> %i.ea, splat (double -1.000000e+00) ; 2 uses
  %i.ec = fcmp olt <2 x double> %i.eb, zeroinitializer
  %i.ed = select <2 x i1> %i.ec, <2 x double> zeroinitializer, <2 x double> %i.eb ; 2 uses
  %i.ee = extractelement <2 x double> %i.ed, i64 1
  %i.ef = call noundef double @pow(double noundef %i.ee, double noundef 2.000000e+00) #22
  %i.eg = fadd double %i.dy, %i.ef
  %i.eh = extractelement <2 x double> %i.ed, i64 0
  %i.ei = call noundef double @pow(double noundef %i.eh, double noundef 2.000000e+00) #22
  %i.ej = fadd double %i.eg, %i.ei
  %i.ek = call noundef double @sqrt(double noundef %i.ej) #22
  %i.el = fmul double %i.do, %i.ek
  br label %_ZZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_iNS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEmRKSt6vectorISF_IT1_SaISG_EESaISI_EERKNS6_IT2_EERKNS6_IT3_EERKNS6_IT4_EERNS1_15PlainObjectBaseIT5_EEENKUlmE_clEmENKUliiE_clEii.exit

_ZZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_iNS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEmRKSt6vectorISF_IT1_SaISG_EESaISI_EERKNS6_IT2_EERKNS6_IT3_EERKNS6_IT4_EERNS1_15PlainObjectBaseIT5_EEENKUlmE_clEmENKUliiE_clEii.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi double [ %.scalar.i20.i, %bb.h ], [ %i.el, %bb.i ]
  %i.em = fcmp ogt double %.010.i, %.0.i
  br i1 %i.em, label %bb.j, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESD_iNSC_IiLin1ELin1ELi0ELin1ELin1EEESD_NSC_IdLin1ELi1ELi0ELin1ELi1EEESE_EEvRKNSB_10MatrixBaseIT_EERKNSG_IT0_EEmRKS3_IS3_IT1_SaISP_EESaISR_EERKNSG_IT2_EERKNSG_IT3_EERKNSG_IT4_EERNSB_15PlainObjectBaseIT5_EEENKUlmE_clEmEUliiE_EEEvSH_SL_SL_SP_RSW_.exit

bb.j:                                             ; preds = %_ZZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_iNS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEmRKSt6vectorISF_IT1_SaISG_EESaISI_EERKNS6_IT2_EERKNS6_IT3_EERKNS6_IT4_EERNS1_15PlainObjectBaseIT5_EEENKUlmE_clEmENKUliiE_clEii.exit
  %i.en = load i32, ptr %i.ag, align 4, !tbaa !33
  %i.eo = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !33
  %i.ep = icmp sgt i64 %.0920.i, %1
  br i1 %i.ep, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESD_iNSC_IiLin1ELin1ELi0ELin1ELin1EEESD_NSC_IdLin1ELi1ELi0ELin1ELi1EEESE_EEvRKNSB_10MatrixBaseIT_EERKNSG_IT0_EEmRKS3_IS3_IT1_SaISP_EESaISR_EERKNSG_IT2_EERKNSG_IT3_EERKNSG_IT4_EERNSB_15PlainObjectBaseIT5_EEENKUlmE_clEmEUliiE_EEEvSH_SL_SL_SP_RSW_.exit, !llvm.loop !6

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESD_iNSC_IiLin1ELin1ELi0ELin1ELin1EEESD_NSC_IdLin1ELi1ELi0ELin1ELi1EEESE_EEvRKNSB_10MatrixBaseIT_EERKNSG_IT0_EEmRKS3_IS3_IT1_SaISP_EESaISR_EERKNSG_IT2_EERKNSG_IT3_EERKNSG_IT4_EERNSB_15PlainObjectBaseIT5_EEENKUlmE_clEmEUliiE_EEEvSH_SL_SL_SP_RSW_.exit: ; preds = %_ZZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_iNS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEmRKSt6vectorISF_IT1_SaISG_EESaISI_EERKNS6_IT2_EERKNS6_IT3_EERKNS6_IT4_EERNS1_15PlainObjectBaseIT5_EEENKUlmE_clEmENKUliiE_clEii.exit, %bb.j, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.019.i, %_ZZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_iNS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEmRKSt6vectorISF_IT1_SaISG_EESaISI_EERKNS6_IT2_EERKNS6_IT3_EERKNS6_IT4_EERNS1_15PlainObjectBaseIT5_EEENKUlmE_clEmENKUliiE_clEii.exit ], [ %.0920.i, %bb.j ]
  %i.eq = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i
  store i32 %3, ptr %i.eq, align 4, !tbaa !33
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZZN3igl3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_iNS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEmRKSt6vectorISF_IT1_SaISG_EESaISI_EERKNS6_IT2_EERKNS6_IT3_EERKNS6_IT4_EERNS1_15PlainObjectBaseIT5_EEENKUlmE_clEmENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !332  ; 4 uses
  %i.d = icmp ugt i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !333, !nonnull !60 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24, !noalias !334
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.a ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !335, !nonnull !60, !align !61 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = load double, ptr %i.h, align 8, !tbaa !57
  %i.m = load double, ptr %i.i, align 8, !tbaa !57 ; 2 uses
  %i.n = fsub double %i.l, %i.m                   ; 2 uses
  %i.o = fmul double %i.n, %i.n
  %i.p = getelementptr [8 x i8], ptr %i.h, i64 %i.k
  %i.q = load double, ptr %i.p, align 8, !tbaa !57
  %i.r = getelementptr i8, ptr %i.i, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !57
  %i.t = fsub double %i.q, %i.s                   ; 2 uses
  %i.u = fmul double %i.t, %i.t
  %i.v = fadd double %i.o, %i.u
  %.idx.i.i.i.i.i = shl i64 %i.k, 4
  %i.w = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i
  %i.x = load double, ptr %i.w, align 8, !tbaa !57
  %i.y = getelementptr i8, ptr %i.i, i64 16
  %i.z = load double, ptr %i.y, align 8, !tbaa !57 ; 2 uses
  %i.aa = fsub double %i.x, %i.z                  ; 2 uses
  %i.ab = fmul double %i.aa, %i.aa
  %i.ac = fadd double %i.v, %i.ab
  %.scalar.i = tail call noundef double @llvm.sqrt.f64(double %i.ac)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %0, align 8, !tbaa !335, !nonnull !60, !align !61 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !336, !nonnull !60 ; 2 uses
  %i.ag = sub nuw i64 %i.a, %i.c                  ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !24, !noalias !337
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ag ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.al = load double, ptr %i.ai, align 8, !tbaa !57
  %.sroa.050.0.vec.insert = insertelement <2 x double> poison, double %i.al, i64 0
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  %i.an = load double, ptr %i.am, align 8, !tbaa !57
  %.sroa.050.8.vec.insert = insertelement <2 x double> %.sroa.050.0.vec.insert, double %i.an, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ak, 4
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !338, !nonnull !60
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.ag
  %i.au = load double, ptr %i.at, align 8, !tbaa !57 ; 3 uses
  %.sroa.9.32.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.au, i64 0
  %i.av = load <2 x double>, ptr %i.ad, align 8   ; 2 uses
  %i.aw = fsub <2 x double> %i.av, %.sroa.050.8.vec.insert
  %i.ax = shufflevector <2 x double> %.sroa.9.32.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fdiv <2 x double> %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !57 ; 2 uses
  %i.bb = fsub double %i.ba, %i.ap
  %i.bc = fdiv double %i.bb, %i.au
  %i.bd = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ay)
  %i.be = fadd <2 x double> %i.bd, splat (double -1.000000e+00) ; 2 uses
  %i.bf = fcmp olt <2 x double> %i.be, zeroinitializer
  %i.bg = select <2 x i1> %i.bf, <2 x double> zeroinitializer, <2 x double> %i.be ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  %i.bi = tail call noundef double @pow(double noundef %i.bh, double noundef 2.000000e+00) #22
  %i.bj = extractelement <2 x double> %i.bg, i64 1
  %i.bk = tail call noundef double @pow(double noundef %i.bj, double noundef 2.000000e+00) #22
  %i.bl = fadd double %i.bi, %i.bk
  %i.bm = tail call noundef double @llvm.fabs.f64(double %i.bc)
  %i.bn = fadd double %i.bm, -1.000000e+00        ; 2 uses
  %i.bo = fcmp olt double %i.bn, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.bo, double 0.000000e+00, double %i.bn
  %i.bp = tail call noundef double @pow(double noundef %.sroa.speculated.i.i, double noundef 2.000000e+00) #22
  %i.bq = fadd double %i.bl, %i.bp
  %i.br = tail call noundef double @sqrt(double noundef %i.bq) #22
  %i.bs = fmul double %i.au, %i.br
  %i.bt = extractelement <2 x double> %i.av, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bu = phi double [ %i.m, %bb.b ], [ %i.bt, %bb.c ]
  %i.bv = phi double [ %i.z, %bb.b ], [ %i.ba, %bb.c ]
  %i.bw = phi ptr [ %i.i, %bb.b ], [ %i.ad, %bb.c ] ; 3 uses
  %.010 = phi double [ %.scalar.i, %bb.b ], [ %i.bs, %bb.c ]
  %i.bx = sext i32 %2 to i64                      ; 3 uses
  %i.by = icmp ugt i64 %i.c, %i.bx
  br i1 %i.by, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !333, !nonnull !60 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !24, !noalias !339
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.bx ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !21 ; 2 uses
  %i.cf = load double, ptr %i.cc, align 8, !tbaa !57
  %i.cg = fsub double %i.cf, %i.bu                ; 2 uses
  %i.ch = fmul double %i.cg, %i.cg
  %i.ci = getelementptr [8 x i8], ptr %i.cc, i64 %i.ce
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !57
  %i.ck = getelementptr i8, ptr %i.bw, i64 8
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !57
  %i.cm = fsub double %i.cj, %i.cl                ; 2 uses
  %i.cn = fmul double %i.cm, %i.cm
  %i.co = fadd double %i.ch, %i.cn
  %.idx.i.i.i.i.i19 = shl i64 %i.ce, 4
  %3 = getelementptr i8, ptr %i.cc, i64 %.idx.i.i.i.i.i19
  %4 = load double, ptr %3, align 8, !tbaa !57
  %i.cp = getelementptr i8, ptr %i.bw, i64 16
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !57
  %i.cr = fsub double %4, %i.cq                   ; 2 uses
  %i.cs = fmul double %i.cr, %i.cr
  %i.ct = fadd double %i.co, %i.cs
  %.scalar.i20 = tail call noundef double @llvm.sqrt.f64(double %i.ct)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !336, !nonnull !60 ; 2 uses
  %i.cw = sub nuw i64 %i.bx, %i.c                 ; 2 uses
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !24, !noalias !340
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.cw ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !21 ; 2 uses
  %i.db = load double, ptr %i.cy, align 8, !tbaa !57
  %.sroa.029.0.vec.insert = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.da
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !57
  %.sroa.029.8.vec.insert = insertelement <2 x double> %.sroa.029.0.vec.insert, double %i.dd, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i21 = shl nsw i64 %i.da, 4
  %i.de = getelementptr inbounds i8, ptr %i.cy, i64 %.idx.i.i.i.i.i.i.i.i.i.i21
  %i.df = load double, ptr %i.de, align 8, !tbaa !57
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !338, !nonnull !60
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !39
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.cw
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !57 ; 3 uses
  %.sroa.9.32.vec.insert.i.i.i.i.i.i.i22 = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dl = load <2 x double>, ptr %i.bw, align 8, !tbaa !92
  %i.dm = fsub <2 x double> %i.dl, %.sroa.029.8.vec.insert
  %i.dn = shufflevector <2 x double> %.sroa.9.32.vec.insert.i.i.i.i.i.i.i22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fdiv <2 x double> %i.dm, %i.dn
  %i.dp = fsub double %i.bv, %i.df
  %i.dq = fdiv double %i.dp, %i.dk
  %i.dr = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.do)
  %i.ds = fadd <2 x double> %i.dr, splat (double -1.000000e+00) ; 2 uses
  %i.dt = fcmp olt <2 x double> %i.ds, zeroinitializer
  %i.du = select <2 x i1> %i.dt, <2 x double> zeroinitializer, <2 x double> %i.ds ; 2 uses
  %i.dv = extractelement <2 x double> %i.du, i64 0
  %i.dw = tail call noundef double @pow(double noundef %i.dv, double noundef 2.000000e+00) #22
  %i.dx = extractelement <2 x double> %i.du, i64 1
  %i.dy = tail call noundef double @pow(double noundef %i.dx, double noundef 2.000000e+00) #22
  %i.dz = fadd double %i.dw, %i.dy
  %i.ea = tail call noundef double @llvm.fabs.f64(double %i.dq)
  %i.eb = fadd double %i.ea, -1.000000e+00        ; 2 uses
  %i.ec = fcmp olt double %i.eb, 0.000000e+00
  %.sroa.speculated.i.i27 = select i1 %i.ec, double 0.000000e+00, double %i.eb
  %i.ed = tail call noundef double @pow(double noundef %.sroa.speculated.i.i27, double noundef 2.000000e+00) #22
  %i.ee = fadd double %i.dz, %i.ed
  %i.ef = tail call noundef double @sqrt(double noundef %i.ee) #22
  %i.eg = fmul double %i.dk, %i.ef
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi double [ %.scalar.i20, %bb.e ], [ %i.eg, %bb.f ]
  %i.eh = fcmp ogt double %.010, %.0
  ret i1 %i.eh
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forImZNS4_12parallel_forImZNS4_3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_iNS9_IiLin1ELin1ELi0ELin1ELin1EEESA_NS9_IdLin1ELi1ELi0ELin1ELi1EEESB_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EEmRKS_IS_IT1_SaISM_EESaISO_EERKNSD_IT2_EERKNSD_IT3_EERKNSD_IT4_EERNS8_15PlainObjectBaseIT5_EEEUlmE_EEbSE_RKSI_mEUlmE_ZNS6_ImS19_EEbSE_S1B_mEUlmmE_S1C_EEbSE_S1B_RKSM_RKST_mEUlmmmE_RmS1L_S1L_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !64     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !69
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forImZNS3_12parallel_forImZNS3_3knnIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES9_iNS8_IiLin1ELin1ELi0ELin1ELin1EEES9_NS8_IdLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS7_10MatrixBaseIT_EERKNSC_IT0_EEmRKSt6vectorISL_IT1_SaISM_EESaISO_EERKNSC_IT2_EERKNSC_IT3_EERKNSC_IT4_EERNS7_15PlainObjectBaseIT5_EEEUlmE_EEbSD_RKSH_mEUlmE_ZNS5_ImS19_EEbSD_S1B_mEUlmmE_S1C_EEbSD_S1B_RKSM_RKST_mEUlmmmE_mmmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !17
  store i64 %i.t, ptr %i.s, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !17
  store i64 %i.v, ptr %i.u, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !17
  store i64 %i.x, ptr %i.w, align 8, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !40
  store i64 %i.z, ptr %i.y, align 8, !tbaa !40
  store ptr %i.r, ptr %6, align 8, !tbaa !77
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !77    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #22, !inline_history !4
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !77    ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #22, !inline_history !4
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %i.aj = add i64 %i.m, -8
  %i.ak = sub i64 %i.aj, %i.e                     ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.p, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aq ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.c, i64 %i.aq ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.ar = getelementptr i8, ptr %next.gep54, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep54, align 8, !tbaa !17, !alias.scope !355
  %wide.load55 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !17, !alias.scope !355
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !17, !alias.scope !354
  store <2 x i64> %wide.load55, ptr %i.as, align 8, !tbaa !17, !alias.scope !354
  store <2 x i64> zeroinitializer, ptr %next.gep54, align 8, !tbaa !17, !alias.scope !355
  store <2 x i64> zeroinitializer, ptr %i.ar, align 8, !tbaa !17, !alias.scope !355
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !344

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader74

.lr.ph.i.i.i.preheader74:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader74, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.au = load i64, ptr %.0911.i.i.i, align 8, !tbaa !17, !alias.scope !355
  store i64 %i.au, ptr %.012.i.i.i, align 8, !tbaa !17, !alias.scope !354
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !17, !alias.scope !355
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !345

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.e
end_hunk_1
