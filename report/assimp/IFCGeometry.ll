inline.NumInlined: 2079
inline.NumDeleted: 821
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp3IFC24ProcessRevolvedAreaSolidERKNS0_10Schema_2x320IfcRevolvedAreaSolidERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
  br i1 %.not10.i.i.i.i.i138.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i143.us, label %.lr.ph.i.i.i.i.i139.us

.lr.ph.i.i.i.i.i139.us:                           ; preds = %.noexc148.us, %.lr.ph.i.i.i.i.i139.us
  %.012.i.i.i.i.i140.us = phi ptr [ %i.ks, %.lr.ph.i.i.i.i.i139.us ], [ %i.kp, %.noexc148.us ] ; 2 uses
  %.0911.i.i.i.i.i141.us = phi ptr [ %i.kr, %.lr.ph.i.i.i.i.i139.us ], [ %i.ke, %.noexc148.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i140.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i141.us, i64 24, i1 false), !alias.scope !50
  %i.kr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i141.us, i64 24 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i140.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i142.us = icmp eq ptr %i.kr, %i.ka
  br i1 %.not.i.i.i.i.i142.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i143.us, label %.lr.ph.i.i.i.i.i139.us, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i143.us: ; preds = %.lr.ph.i.i.i.i.i139.us, %.noexc148.us
  %.0.lcssa.i.i.i.i.i144.us = phi ptr [ %i.kp, %.noexc148.us ], [ %i.ks, %.lr.ph.i.i.i.i.i139.us ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i144.us, i64 24 ; 2 uses
  %.not.i23.i.i145.us = icmp eq ptr %i.ke, null
  br i1 %.not.i23.i.i145.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i146.us, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i143.us
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.kh) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i146.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i146.us: ; preds = %bb.af, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i143.us
  store ptr %i.kp, ptr %1, align 8
  store ptr %i.kt, ptr %i.hz, align 8
  %i.ku = getelementptr inbounds nuw [24 x i8], ptr %i.kp, i64 %i.kn ; 2 uses
  store ptr %i.ku, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit149.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit149.us: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i146.us, %bb.ad
  %i.kv = phi ptr [ %i.ku, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i146.us ], [ %.pre460.a, %bb.ad ] ; 4 uses
  %i.kw = phi ptr [ %i.kt, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i146.us ], [ %i.kd, %bb.ad ] ; 3 uses
  %i.kx = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ky = fmul <2 x double> %i.gy, %i.kx
  %i.kz = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.la = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> %i.kz, <2 x double> %i.ky)
  %i.lb = insertelement <2 x double> poison, double %.sroa.8.0.copyload.us, i64 0
  %i.lc = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ld = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.lc, <2 x double> %i.la)
  %i.le = fadd <2 x double> %i.ha, %i.ld          ; 2 uses
  %shift544 = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop545 = fmul <2 x double> %i.hq, %shift544
  %i.lf = extractelement <2 x double> %foldExtExtBinop545, i64 0
  %i.lg = extractelement <2 x double> %i.jf, i64 0
  %i.lh = call double @llvm.fmuladd.f64(double %i.hi, double %i.lg, double %i.lf)
  %i.li = call double @llvm.fmuladd.f64(double %i.ib, double %.sroa.8.0.copyload.us, double %i.lh)
  %i.lj = fadd double %i.hu, %i.li                ; 2 uses
  %.not.i.i150.us = icmp eq ptr %i.kw, %i.kv
  br i1 %.not.i.i150.us, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit149.us
  store <2 x double> %i.le, ptr %i.kw, align 8
  %.sroa.7246.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  store double %i.lj, ptr %.sroa.7246.0..sroa_idx.us, align 8
  %i.lk = load ptr, ptr %i.hz, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24 ; 2 uses
  store ptr %i.ll, ptr %i.hz, align 8
  %.pre461 = load ptr, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit.us

bb.ah:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit149.us
  %i.lm = load ptr, ptr %1, align 8               ; 5 uses
  %i.ln = ptrtoint ptr %i.kv to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo                    ; 4 uses
  %i.lq = icmp eq i64 %i.lp, 9223372036854775800
  br i1 %i.lq, label %.split436.us, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.ah
  %i.lr = sdiv exact i64 %i.lp, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i151.us = call i64 @llvm.umax.i64(i64 %i.lr, i64 1)
  %i.ls = add nsw i64 %.sroa.speculated.i.i.i.i151.us, %i.lr ; 2 uses
  %i.lt = icmp ult i64 %i.ls, %i.lr
  %i.lu = call i64 @llvm.umin.i64(i64 %i.ls, i64 384307168202282325)
  %i.lv = select i1 %i.lt, i64 384307168202282325, i64 %i.lu ; 3 uses
  %.not.i.i.i.i152.us = icmp ne i64 %i.lv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i152.us)
  %i.lw = mul nuw nsw i64 %i.lv, 24
  %i.lx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lw) #28
          to label %.noexc154.us unwind label %.loopexit400.split.us ; 5 uses

.noexc154.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.lp ; 2 uses
  store <2 x double> %i.le, ptr %i.ly, align 8
  %.sroa.7246.0..sroa_idx247.us = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store double %i.lj, ptr %.sroa.7246.0..sroa_idx247.us, align 8
  %.not10.i.i.i.i.i.i.us = icmp eq ptr %i.lm, %i.kv
  br i1 %.not10.i.i.i.i.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %.noexc154.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi ptr [ %i.ma, %.lr.ph.i.i.i.i.i.i.us ], [ %i.lx, %.noexc154.us ] ; 2 uses
  %.0911.i.i.i.i.i.i.us = phi ptr [ %i.lz, %.lr.ph.i.i.i.i.i.i.us ], [ %i.lm, %.noexc154.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.us, i64 24, i1 false), !alias.scope !54
  %i.lz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.us, i64 24 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.us = icmp eq ptr %i.lz, %i.kv
  br i1 %.not.i.i.i.i.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.us, %.noexc154.us
  %.0.lcssa.i.i.i.i.i.i.us = phi ptr [ %i.lx, %.noexc154.us ], [ %i.ma, %.lr.ph.i.i.i.i.i.i.us ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.us, i64 24 ; 2 uses
  %.not.i23.i.i.i.us = icmp eq ptr %i.lm, null
  br i1 %.not.i23.i.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.lp) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us: ; preds = %bb.ai, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us
  store ptr %i.lx, ptr %1, align 8
  store ptr %i.mb, ptr %i.hz, align 8
  %i.mc = getelementptr inbounds nuw [24 x i8], ptr %i.lx, i64 %i.lv ; 2 uses
  store ptr %i.mc, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit.us: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us, %bb.ag
  %i.md = phi ptr [ %i.mc, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us ], [ %.pre461, %bb.ag ] ; 4 uses
  %i.me = phi ptr [ %i.mb, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us ], [ %i.ll, %bb.ag ] ; 3 uses
  %i.mf = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mg = fmul <2 x double> %i.gy, %i.mf
  %i.mh = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> %i.mh, <2 x double> %i.mg)
  %i.mj = insertelement <2 x double> poison, double %.sroa.8269.0.copyload.us, i64 0
  %i.mk = shufflevector <2 x double> %i.mj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ml = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.mk, <2 x double> %i.mi)
  %i.mm = fadd <2 x double> %i.ha, %i.ml          ; 2 uses
  %shift547 = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop548 = fmul <2 x double> %i.hq, %shift547
  %i.mn = extractelement <2 x double> %foldExtExtBinop548, i64 0
  %i.mo = extractelement <2 x double> %i.jc, i64 0
  %i.mp = call double @llvm.fmuladd.f64(double %i.hi, double %i.mo, double %i.mn)
  %i.mq = call double @llvm.fmuladd.f64(double %i.ib, double %.sroa.8269.0.copyload.us, double %i.mp)
  %i.mr = fadd double %i.hu, %i.mq                ; 2 uses
  %.not.i.i155.us = icmp eq ptr %i.me, %i.md
  br i1 %.not.i.i155.us, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit.us
  store <2 x double> %i.mm, ptr %i.me, align 8
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store double %i.mr, ptr %.sroa.7.0..sroa_idx.us, align 8
  %i.ms = load ptr, ptr %i.hz, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  store ptr %i.mt, ptr %i.hz, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us

bb.ak:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit.us
  %i.mu = load ptr, ptr %1, align 8               ; 5 uses
  %i.mv = ptrtoint ptr %i.md to i64
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = sub i64 %i.mv, %i.mw                    ; 4 uses
  %i.my = icmp eq i64 %i.mx, 9223372036854775800
  br i1 %i.my, label %.split439.us, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i156.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i156.us: ; preds = %bb.ak
  %i.mz = sdiv exact i64 %i.mx, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i157.us = call i64 @llvm.umax.i64(i64 %i.mz, i64 1)
  %i.na = add nsw i64 %.sroa.speculated.i.i.i.i157.us, %i.mz ; 2 uses
  %i.nb = icmp ult i64 %i.na, %i.mz
  %i.nc = call i64 @llvm.umin.i64(i64 %i.na, i64 384307168202282325)
  %i.nd = select i1 %i.nb, i64 384307168202282325, i64 %i.nc ; 3 uses
  %.not.i.i.i.i158.us = icmp ne i64 %i.nd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i158.us)
  %i.ne = mul nuw nsw i64 %i.nd, 24
  %i.nf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ne) #28
          to label %.noexc169.us unwind label %.loopexit405.split.us ; 5 uses

.noexc169.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i156.us
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.mx ; 2 uses
  store <2 x double> %i.mm, ptr %i.ng, align 8
  %.sroa.7.0..sroa_idx239.us = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  store double %i.mr, ptr %.sroa.7.0..sroa_idx239.us, align 8
  %.not10.i.i.i.i.i.i159.us = icmp eq ptr %i.mu, %i.md
  br i1 %.not10.i.i.i.i.i.i159.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i164.us, label %.lr.ph.i.i.i.i.i.i160.us

.lr.ph.i.i.i.i.i.i160.us:                         ; preds = %.noexc169.us, %.lr.ph.i.i.i.i.i.i160.us
  %.012.i.i.i.i.i.i161.us = phi ptr [ %i.ni, %.lr.ph.i.i.i.i.i.i160.us ], [ %i.nf, %.noexc169.us ] ; 2 uses
  %.0911.i.i.i.i.i.i162.us = phi ptr [ %i.nh, %.lr.ph.i.i.i.i.i.i160.us ], [ %i.mu, %.noexc169.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i161.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i162.us, i64 24, i1 false), !alias.scope !58
  %i.nh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i162.us, i64 24 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i161.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i163.us = icmp eq ptr %i.nh, %i.md
  br i1 %.not.i.i.i.i.i.i163.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i164.us, label %.lr.ph.i.i.i.i.i.i160.us, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i164.us: ; preds = %.lr.ph.i.i.i.i.i.i160.us, %.noexc169.us
  %.0.lcssa.i.i.i.i.i.i165.us = phi ptr [ %i.nf, %.noexc169.us ], [ %i.ni, %.lr.ph.i.i.i.i.i.i160.us ]
  %i.nj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i165.us, i64 24
  %.not.i23.i.i.i166.us = icmp eq ptr %i.mu, null
  br i1 %.not.i23.i.i.i166.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i167.us, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i164.us
  call void @_ZdlPvm(ptr noundef nonnull %i.mu, i64 noundef %i.mx) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i167.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i167.us: ; preds = %bb.al, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i164.us
  store ptr %i.nf, ptr %1, align 8
  store ptr %i.nj, ptr %i.hz, align 8
  %i.nk = getelementptr inbounds nuw [24 x i8], ptr %i.nf, i64 %i.nd
  store ptr %i.nk, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i167.us, %bb.aj
  %7 = icmp ult i64 %i.ic, %i.ac
  br i1 %7, label %bb.w, label %._crit_edge.us, !llvm.loop !62

._crit_edge.us:                                   ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us
  %i.nl = add i64 %.096428.us, %i.ia              ; 3 uses
  %i.nm = add nuw i32 %.084429.us, 1              ; 2 uses
  %exitcond458.not = icmp eq i32 %i.nm, %.sroa.speculated
  br i1 %exitcond458.not, label %.split442.us, label %.preheader389.us, !llvm.loop !63

.loopexit390.split.us:                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit392.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit395.split.us:                            ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i135.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %lpad.loopexit397.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit400.split.us:                            ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit402.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit405.split.us:                            ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i156.us
  %lpad.loopexit407.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.am:                                            ; preds = %.invoke, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.an:                                            ; preds = %.lr.ph, %bb.ao
  %.095425 = phi i64 [ 0, %.lr.ph ], [ %i.nw, %bb.ao ] ; 2 uses
  %i.no = load ptr, ptr %i.hx, align 8
  %i.np = load ptr, ptr %3, align 8
  %i.nq = getelementptr inbounds nuw [24 x i8], ptr %i.np, i64 %.095425
  %i.nr = load ptr, ptr %1, align 8               ; 2 uses
  %i.ns = ptrtoint ptr %i.no to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt
  %i.nv = getelementptr inbounds i8, ptr %i.nr, i64 %i.nu
  invoke void @_ZNSt6vectorI10aiVector3tIdESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.nv, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %i.nq)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.nw = add nuw i64 %.095425, 1                 ; 2 uses
  %8 = icmp ult i64 %i.nw, %i.ac
  br i1 %8, label %bb.an, label %.preheader410, !llvm.loop !64

bb.ap:                                            ; preds = %bb.an
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.split442.us:                                     ; preds = %._crit_edge.us
  %i.ny = load ptr, ptr %1, align 8               ; 4 uses
  %.idx = mul nsw i64 %i.ac, 96
  %i.nz = getelementptr inbounds i8, ptr %i.ny, i64 %.idx ; 4 uses
  %i.oa = ptrtoint ptr %i.nz to i64               ; 2 uses
  %i.ob = load ptr, ptr %i.hz, align 8            ; 2 uses
  %.not11.i.i = icmp eq ptr %i.nz, %i.ob
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %.split442.us
  %i.oc = ptrtoint ptr %i.ob to i64
  %i.od = sub i64 %i.oc, %i.oa                    ; 3 uses
  %i.oe = icmp sgt i64 %i.od, 24
  br i1 %i.oe, label %bb.ar, label %bb.as, !prof !65

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ny, ptr nonnull align 8 %i.nz, i64 %i.od, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

bb.as:                                            ; preds = %bb.aq
  %i.of = icmp eq i64 %i.od, 24
  br i1 %i.of, label %bb.at, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ny, ptr noundef nonnull align 8 dereferenceable(24) %i.nz, i64 24, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i: ; preds = %bb.at, %bb.as, %bb.ar, %.split442.us
  %i.og = load ptr, ptr %i.hz, align 8            ; 2 uses
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = sub i64 %i.oh, %i.oa
  %i.oj = getelementptr inbounds i8, ptr %i.ny, i64 %i.oi ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.og, %i.oj
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i
  store ptr %i.oj, ptr %i.hz, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

.split.us:                                        ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc129 unwind label %.loopexit.split-lp391

.noexc129:                                        ; preds = %.split.us
  unreachable

.split431.us.invoke:                              ; preds = %bb.ae, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.split431.us.cont unwind label %.loopexit.split-lp396

.split431.us.cont:                                ; preds = %.split431.us.invoke
  unreachable

.split436.us:                                     ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc153 unwind label %.loopexit.split-lp401

.noexc153:                                        ; preds = %.split436.us
  unreachable

.split439.us:                                     ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc168 unwind label %.loopexit.split-lp406

.noexc168:                                        ; preds = %.split439.us
  unreachable

.loopexit.split-lp391:                            ; preds = %.split.us
  %lpad.loopexit.split-lp393 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp396:                            ; preds = %.split431.us.invoke
  %lpad.loopexit.split-lp398 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp401:                            ; preds = %.split436.us
  %lpad.loopexit.split-lp403 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp406:                            ; preds = %.split439.us
  %lpad.loopexit.split-lp408 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit: ; preds = %.preheader410.thread, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i
  %.us-phi443523 = phi i64 [ %i.nl, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i ], [ %i.nl, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ 0, %.preheader410.thread ]
  %i.ok = phi ptr [ %i.hy, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i ], [ %i.hy, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ %i.hv, %.preheader410.thread ] ; 7 uses
  %i.ol = phi ptr [ %i.hz, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i ], [ %i.hz, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ %i.hw, %.preheader410.thread ] ; 7 uses
  br i1 %i.bp, label %bb.au, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit222

bb.au:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit
  %i.om = shl nsw i64 %i.ac, 3
  %i.on = sub i64 %.us-phi443523, %i.om
  %.pre462 = load ptr, ptr %i.ol, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit186
  %i.oo = phi ptr [ %.pre462, %bb.au ], [ %i.pn, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit186 ] ; 5 uses
  %.081444 = phi i64 [ %i.ac, %bb.au ], [ %i.op, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit186 ]
  %i.op = add i64 %.081444, -1                    ; 3 uses
  %i.oq = load ptr, ptr %1, align 8               ; 5 uses
  %i.or = getelementptr [24 x i8], ptr %i.oq, i64 %i.on
  %.idx380 = mul i64 %i.op, 96
  %i.os = getelementptr i8, ptr %i.or, i64 %.idx380
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 72 ; 2 uses
  %i.ou = load ptr, ptr %i.bx, align 8
  %.not.i171 = icmp eq ptr %i.oo, %i.ou
  br i1 %.not.i171, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oo, ptr noundef nonnull align 8 dereferenceable(24) %i.ot, i64 24, i1 false)
  %i.ov = load ptr, ptr %i.ol, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 24 ; 2 uses
  store ptr %i.ow, ptr %i.ol, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit186

bb.ax:                                            ; preds = %bb.av
  %i.ox = ptrtoint ptr %i.oo to i64
  %i.oy = ptrtoint ptr %i.oq to i64
  %i.oz = sub i64 %i.ox, %i.oy                    ; 4 uses
  %i.pa = icmp eq i64 %i.oz, 9223372036854775800
  br i1 %i.pa, label %bb.ay, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i172

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc184 unwind label %.loopexit.split-lp385

.noexc184:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i172: ; preds = %bb.ax
  %i.pb = sdiv exact i64 %i.oz, 24                ; 3 uses
  %.sroa.speculated.i.i.i173 = call i64 @llvm.umax.i64(i64 %i.pb, i64 1)
  %i.pc = add nsw i64 %.sroa.speculated.i.i.i173, %i.pb ; 2 uses
  %i.pd = icmp ult i64 %i.pc, %i.pb
  %i.pe = call i64 @llvm.umin.i64(i64 %i.pc, i64 384307168202282325)
  %i.pf = select i1 %i.pd, i64 384307168202282325, i64 %i.pe ; 3 uses
  %.not.i.i.i174 = icmp ne i64 %i.pf, 0
  call void @llvm.assume(i1 %.not.i.i.i174)
  %i.pg = mul nuw nsw i64 %i.pf, 24
  %i.ph = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pg) #28
          to label %.noexc185 unwind label %.loopexit384 ; 5 uses

.noexc185:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i172
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.oz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pi, ptr noundef nonnull align 8 dereferenceable(24) %i.ot, i64 24, i1 false)
  %.not10.i.i.i.i.i175 = icmp eq ptr %i.oq, %i.oo
  br i1 %.not10.i.i.i.i.i175, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i183, label %.lr.ph.i.i.i.i.i176

.lr.ph.i.i.i.i.i176:                              ; preds = %.noexc185, %.lr.ph.i.i.i.i.i176
  %.012.i.i.i.i.i177 = phi ptr [ %i.pk, %.lr.ph.i.i.i.i.i176 ], [ %i.ph, %.noexc185 ] ; 2 uses
  %.0911.i.i.i.i.i178 = phi ptr [ %i.pj, %.lr.ph.i.i.i.i.i176 ], [ %i.oq, %.noexc185 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i177, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i178, i64 24, i1 false), !alias.scope !66
  %i.pj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i178, i64 24 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i177, i64 24 ; 2 uses
  %.not.i.i.i.i.i179 = icmp eq ptr %i.pj, %i.oo
  br i1 %.not.i.i.i.i.i179, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i183, label %.lr.ph.i.i.i.i.i176, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i183: ; preds = %.lr.ph.i.i.i.i.i176, %.noexc185
  %.0.lcssa.i.i.i.i.i181 = phi ptr [ %i.ph, %.noexc185 ], [ %i.pk, %.lr.ph.i.i.i.i.i176 ]
  %i.pl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i181, i64 24 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.oq, i64 noundef %i.oz) #29
  store ptr %i.ph, ptr %1, align 8
  store ptr %i.pl, ptr %i.ol, align 8
  %i.pm = getelementptr inbounds nuw [24 x i8], ptr %i.ph, i64 %i.pf
  store ptr %i.pm, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit186

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit186: ; preds = %bb.aw, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i183
  %i.pn = phi ptr [ %i.ow, %bb.aw ], [ %i.pl, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i183 ] ; 2 uses
  %.not = icmp eq i64 %i.op, 0
  br i1 %.not, label %.preheader, label %bb.av

.loopexit384:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i172
  %lpad.loopexit386 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp385:                            ; preds = %bb.ay
  %lpad.loopexit.split-lp387 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.az:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit212
  %i.po = trunc i64 %i.ac to i32                  ; 4 uses
  %i.pp = load ptr, ptr %i.ok, align 8            ; 3 uses
  %i.pq = load ptr, ptr %i.cu, align 8
  %.not.i.i187 = icmp eq ptr %i.pp, %i.pq
  br i1 %.not.i.i187, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 %i.po, ptr %i.pp, align 4
  %i.pr = load ptr, ptr %i.ok, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 4 ; 2 uses
  store ptr %i.ps, ptr %i.ok, align 8
  %.pre463 = load ptr, ptr %i.cu, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit196

bb.bb:                                            ; preds = %bb.az
  %i.pt = load ptr, ptr %i.cp, align 8            ; 4 uses
  %i.pu = ptrtoint ptr %i.pp to i64
  %i.pv = ptrtoint ptr %i.pt to i64
  %i.pw = sub i64 %i.pu, %i.pv                    ; 6 uses
  %i.px = icmp eq i64 %i.pw, 9223372036854775804
  br i1 %i.px, label %bb.bc, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i188

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc194 unwind label %bb.bn

.noexc194:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i188: ; preds = %bb.bb
  %i.py = ashr exact i64 %i.pw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i189 = call i64 @llvm.umax.i64(i64 %i.py, i64 1)
  %i.pz = add nsw i64 %.sroa.speculated.i.i.i.i189, %i.py ; 2 uses
  %i.qa = icmp ult i64 %i.pz, %i.py
  %i.qb = call i64 @llvm.umin.i64(i64 %i.pz, i64 2305843009213693951)
  %i.qc = select i1 %i.qa, i64 2305843009213693951, i64 %i.qb ; 3 uses
  %.not.i.i.i.i190 = icmp ne i64 %i.qc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i190)
  %i.qd = shl nuw nsw i64 %i.qc, 2
  %i.qe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qd) #28
          to label %.noexc195 unwind label %bb.bn ; 4 uses

.noexc195:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i188
  %i.qf = getelementptr inbounds i8, ptr %i.qe, i64 %i.pw ; 2 uses
  store i32 %i.po, ptr %i.qf, align 4
  %i.qg = icmp sgt i64 %i.pw, 0
  br i1 %i.qg, label %bb.bd, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i191

bb.bd:                                            ; preds = %.noexc195
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qe, ptr align 4 %i.pt, i64 %i.pw, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i191

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i191: ; preds = %bb.bd, %.noexc195
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 4 ; 2 uses
  %.not.i17.i.i.i192 = icmp eq ptr %i.pt, null
  br i1 %.not.i17.i.i.i192, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i193, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i191
  call void @_ZdlPvm(ptr noundef nonnull %i.pt, i64 noundef %i.pw) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i193

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i193: ; preds = %bb.be, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i191
  store ptr %i.qe, ptr %i.cp, align 8
  store ptr %i.qh, ptr %i.ok, align 8
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.qc ; 2 uses
  store ptr %i.qi, ptr %i.cu, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit196

.preheader:                                       ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit186, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit212
  %i.qj = phi ptr [ %i.rf, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit212 ], [ %i.pn, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit186 ] ; 5 uses
  %.0445 = phi i64 [ %i.rg, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit212 ], [ 0, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit186 ] ; 2 uses
  %i.qk = load ptr, ptr %1, align 8               ; 5 uses
  %.idx381 = mul i64 %.0445, 96
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.idx381 ; 2 uses
  %i.qm = load ptr, ptr %i.bx, align 8
  %.not.i197 = icmp eq ptr %i.qj, %i.qm
  br i1 %.not.i197, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qj, ptr noundef nonnull align 8 dereferenceable(24) %i.ql, i64 24, i1 false)
  %i.qn = load ptr, ptr %i.ol, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 24 ; 2 uses
  store ptr %i.qo, ptr %i.ol, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit212

bb.bg:                                            ; preds = %.preheader
  %i.qp = ptrtoint ptr %i.qj to i64
  %i.qq = ptrtoint ptr %i.qk to i64
  %i.qr = sub i64 %i.qp, %i.qq                    ; 4 uses
  %i.qs = icmp eq i64 %i.qr, 9223372036854775800
  br i1 %i.qs, label %bb.bh, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i198

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc210 unwind label %.loopexit.split-lp

.noexc210:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i198: ; preds = %bb.bg
  %i.qt = sdiv exact i64 %i.qr, 24                ; 3 uses
  %.sroa.speculated.i.i.i199 = call i64 @llvm.umax.i64(i64 %i.qt, i64 1)
  %i.qu = add nsw i64 %.sroa.speculated.i.i.i199, %i.qt ; 2 uses
  %i.qv = icmp ult i64 %i.qu, %i.qt
  %i.qw = call i64 @llvm.umin.i64(i64 %i.qu, i64 384307168202282325)
  %i.qx = select i1 %i.qv, i64 384307168202282325, i64 %i.qw ; 3 uses
  %.not.i.i.i200 = icmp ne i64 %i.qx, 0
  call void @llvm.assume(i1 %.not.i.i.i200)
  %i.qy = mul nuw nsw i64 %i.qx, 24
  %i.qz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qy) #28
          to label %.noexc211 unwind label %.loopexit ; 5 uses

.noexc211:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i198
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.qr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ra, ptr noundef nonnull align 8 dereferenceable(24) %i.ql, i64 24, i1 false)
  %.not10.i.i.i.i.i201 = icmp eq ptr %i.qk, %i.qj
  br i1 %.not10.i.i.i.i.i201, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i209, label %.lr.ph.i.i.i.i.i202

.lr.ph.i.i.i.i.i202:                              ; preds = %.noexc211, %.lr.ph.i.i.i.i.i202
  %.012.i.i.i.i.i203 = phi ptr [ %i.rc, %.lr.ph.i.i.i.i.i202 ], [ %i.qz, %.noexc211 ] ; 2 uses
  %.0911.i.i.i.i.i204 = phi ptr [ %i.rb, %.lr.ph.i.i.i.i.i202 ], [ %i.qk, %.noexc211 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i203, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i204, i64 24, i1 false), !alias.scope !70
  %i.rb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i204, i64 24 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i203, i64 24 ; 2 uses
  %.not.i.i.i.i.i205 = icmp eq ptr %i.rb, %i.qj
  br i1 %.not.i.i.i.i.i205, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i209, label %.lr.ph.i.i.i.i.i202, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i209: ; preds = %.lr.ph.i.i.i.i.i202, %.noexc211
  %.0.lcssa.i.i.i.i.i207 = phi ptr [ %i.qz, %.noexc211 ], [ %i.rc, %.lr.ph.i.i.i.i.i202 ]
  %i.rd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i207, i64 24 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.qk, i64 noundef %i.qr) #29
  store ptr %i.qz, ptr %1, align 8
  store ptr %i.rd, ptr %i.ol, align 8
  %i.re = getelementptr inbounds nuw [24 x i8], ptr %i.qz, i64 %i.qx
  store ptr %i.re, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit212

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit212: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i209, %bb.bf
  %i.rf = phi ptr [ %i.rd, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i209 ], [ %i.qo, %bb.bf ]
  %i.rg = add nuw i64 %.0445, 1                   ; 2 uses
  %9 = icmp ult i64 %i.rg, %i.ac
  br i1 %9, label %.preheader, label %bb.az, !llvm.loop !74

.loopexit:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i198
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp:                               ; preds = %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

_ZNSt6vectorIjSaIjEE9push_backEOj.exit196:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i193, %bb.ba
  %i.rh = phi ptr [ %i.qi, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i193 ], [ %.pre463, %bb.ba ] ; 2 uses
  %i.ri = phi ptr [ %i.qh, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i193 ], [ %i.ps, %bb.ba ] ; 2 uses
  %.not.i.i213 = icmp eq ptr %i.ri, %i.rh
  br i1 %.not.i.i213, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit196
  store i32 %i.po, ptr %i.ri, align 4
  %i.rj = load ptr, ptr %i.ok, align 8
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  store ptr %i.rk, ptr %i.ok, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit222

bb.bj:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit196
  %i.rl = load ptr, ptr %i.cp, align 8            ; 4 uses
  %i.rm = ptrtoint ptr %i.rh to i64
  %i.rn = ptrtoint ptr %i.rl to i64
  %i.ro = sub i64 %i.rm, %i.rn                    ; 6 uses
  %i.rp = icmp eq i64 %i.ro, 9223372036854775804
  br i1 %i.rp, label %bb.bk, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i214

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc220 unwind label %bb.bo

.noexc220:                                        ; preds = %bb.bk
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i214: ; preds = %bb.bj
  %i.rq = ashr exact i64 %i.ro, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i215 = call i64 @llvm.umax.i64(i64 %i.rq, i64 1)
  %i.rr = add nsw i64 %.sroa.speculated.i.i.i.i215, %i.rq ; 2 uses
  %i.rs = icmp ult i64 %i.rr, %i.rq
  %i.rt = call i64 @llvm.umin.i64(i64 %i.rr, i64 2305843009213693951)
  %i.ru = select i1 %i.rs, i64 2305843009213693951, i64 %i.rt ; 3 uses
  %.not.i.i.i.i216 = icmp ne i64 %i.ru, 0
  call void @llvm.assume(i1 %.not.i.i.i.i216)
  %i.rv = shl nuw nsw i64 %i.ru, 2
  %i.rw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rv) #28
          to label %.noexc221 unwind label %bb.bo ; 4 uses

.noexc221:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i214
  %i.rx = getelementptr inbounds i8, ptr %i.rw, i64 %i.ro ; 2 uses
  store i32 %i.po, ptr %i.rx, align 4
  %i.ry = icmp sgt i64 %i.ro, 0
  br i1 %i.ry, label %bb.bl, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i217

bb.bl:                                            ; preds = %.noexc221
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rw, ptr align 4 %i.rl, i64 %i.ro, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i217

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i217: ; preds = %bb.bl, %.noexc221
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  %.not.i17.i.i.i218 = icmp eq ptr %i.rl, null
  br i1 %.not.i17.i.i.i218, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i219, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i217
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef %i.ro) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i219

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i219: ; preds = %bb.bm, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i217
  store ptr %i.rw, ptr %i.cp, align 8
  store ptr %i.rz, ptr %i.ok, align 8
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.ru
  store ptr %i.sa, ptr %i.cu, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit222

bb.bn:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i188, %bb.bc
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bo:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i214, %bb.bk
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

_ZNSt6vectorIjSaIjEE9push_backEOj.exit222:        ; preds = %bb.bi, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i219, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store double 1.000000e+00, ptr %6, align 8
  %i.sd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.se = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sd, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.se, align 8
  %i.sf = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.sg = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sf, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.sg, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.si = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sh, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.si, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.sk = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcAxis2Placement3DEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.sj)
          to label %bb.bp unwind label %bb.bw

bb.bp:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit222
  invoke void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS0_10Schema_2x319IfcAxis2Placement3DE(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(104) %i.sk)
          to label %bb.bq unwind label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.br unwind label %bb.bw

bb.br:                                            ; preds = %bb.bq
  %i.sl = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc223 unwind label %bb.bw

.noexc223:                                        ; preds = %bb.br
  br i1 %i.sl, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA70_KcEEEvDpOT_.exit, label %bb.bs

bb.bs:                                            ; preds = %.noexc223
  %i.sm = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc224 unwind label %bb.bw

.noexc224:                                        ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.sn = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc225 unwind label %bb.bw

.noexc225:                                        ; preds = %.noexc224
  store ptr %i.sn, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugIJPKcRA70_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.sm, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(70) @.str.3)
          to label %.noexc226 unwind label %bb.bw

.noexc226:                                        ; preds = %.noexc225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA70_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA70_KcEEEvDpOT_.exit: ; preds = %.noexc226, %.noexc223
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZN6Assimp3IFC8TempMeshaSERKS1_.exit

_ZN6Assimp3IFC8TempMeshaSERKS1_.exit:             ; preds = %.noexc, %bb.k, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA70_KcEEEvDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.bt

bb.bt:                                            ; preds = %bb.c, %bb.d, %_ZN6Assimp3IFC8TempMeshaSERKS1_.exit
  %i.so = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.sp = load ptr, ptr %i.so, align 8            ; 3 uses
  %.not.i.i.i.i227 = icmp eq ptr %i.sp, null
  br i1 %.not.i.i.i.i227, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.sq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.sr = load ptr, ptr %i.sq, align 8
  %i.ss = ptrtoint ptr %i.sr to i64
  %i.st = ptrtoint ptr %i.sp to i64
  %i.su = sub i64 %i.ss, %i.st
  call void @_ZdlPvm(ptr noundef nonnull %i.sp, i64 noundef %i.su) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.bu, %bb.bt
  %i.sv = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.sv, null
  br i1 %.not.i.i.i1.i, label %_ZN6Assimp3IFC8TempMeshD2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.sw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8
  %i.sy = ptrtoint ptr %i.sx to i64
  %i.sz = ptrtoint ptr %i.sv to i64
  %i.ta = sub i64 %i.sy, %i.sz
  call void @_ZdlPvm(ptr noundef nonnull %i.sv, i64 noundef %i.ta) #29
  br label %_ZN6Assimp3IFC8TempMeshD2Ev.exit

_ZN6Assimp3IFC8TempMeshD2Ev.exit:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.bw:                                            ; preds = %.noexc225, %.noexc224, %bb.bs, %bb.br, %bb.bq, %bb.bp, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit222
  %i.tb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit384, %.loopexit.split-lp385, %.loopexit405.split.us, %.loopexit.split-lp406, %.loopexit400.split.us, %.loopexit.split-lp401, %.loopexit395.split.us, %.loopexit.split-lp396, %.loopexit390.split.us, %.loopexit.split-lp391, %bb.o, %bb.am, %bb.n, %bb.ap, %bb.bn, %bb.bo, %bb.bw, %bb.m
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %lpad.loopexit.split-lp393, %.loopexit.split-lp391 ], [ %i.bc, %bb.n ], [ %i.bd, %bb.o ], [ %i.nn, %bb.am ], [ %lpad.loopexit.split-lp398, %.loopexit.split-lp396 ], [ %i.nx, %bb.ap ], [ %lpad.loopexit.split-lp403, %.loopexit.split-lp401 ], [ %lpad.loopexit.split-lp408, %.loopexit.split-lp406 ], [ %lpad.loopexit.split-lp387, %.loopexit.split-lp385 ], [ %i.tb, %bb.bw ], [ %i.sc, %bb.bo ], [ %i.sb, %bb.bn ], [ %lpad.loopexit392.us, %.loopexit390.split.us ], [ %lpad.loopexit397.us, %.loopexit395.split.us ], [ %lpad.loopexit402.us, %.loopexit400.split.us ], [ %lpad.loopexit407.us, %.loopexit405.split.us ], [ %lpad.loopexit386, %.loopexit384 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.e
  %.pn105.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn105.pn.pn.pn, %bb.bx ], [ %i.m, %bb.e ]
  call void @_ZN6Assimp3IFC8TempMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn105.pn.pn.pn.pn
}
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC19ProcessExtrudedAreaERKNS0_10Schema_2x320IfcExtrudedAreaSolidERKNS0_8TempMeshERK10aiVector3tIdERS5_RNS0_14ConversionDataEb:bb.a

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc290, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ut, %.lr.ph.i.i.i.i.i.i ], [ %i.uq, %.noexc290 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.us, %.lr.ph.i.i.i.i.i.i ], [ %i.uf, %.noexc290 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !178
  %i.us = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.us, %i.tt
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc290
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.uq, %.noexc290 ], [ %i.ut, %.lr.ph.i.i.i.i.i.i ]
  %i.uu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.uf, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.uf, i64 noundef %i.ui) #29
  %i.uv = load <2 x double>, ptr %8, align 16, !noalias !182
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.bp, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.uw = phi <2 x double> [ %i.uv, %bb.bp ], [ %i.tx, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  store ptr %i.uq, ptr %i.rb, align 8
  store ptr %i.uu, ptr %.sroa.phi504, align 8
  %i.ux = getelementptr inbounds nuw [24 x i8], ptr %i.uq, i64 %i.uo ; 2 uses
  store ptr %i.ux, ptr %.sroa.phi507, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bm, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.uy = phi ptr [ %.pre890.a, %bb.bm ], [ %i.ux, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 4 uses
  %i.uz = phi ptr [ %i.ue, %bb.bm ], [ %i.uu, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 3 uses
  %i.va = phi <2 x double> [ %i.tx, %bb.bm ], [ %i.uw, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.vb = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.vc = load <2 x double>, ptr %i.sb, align 8, !noalias !182
  %i.vd = fadd <2 x double> %i.vc, %i.va          ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.sb, i64 16 ; 2 uses
  %i.vf = load double, ptr %i.ve, align 8, !noalias !182
  %i.vg = load double, ptr %i.es, align 16, !noalias !182
  %i.vh = fadd double %i.vf, %i.vg                ; 2 uses
  %.not.i.i291 = icmp eq ptr %i.uz, %i.uy
  br i1 %.not.i.i291, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store <2 x double> %i.vd, ptr %i.uz, align 8
  %.sroa.7487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  store double %i.vh, ptr %.sroa.7487.0..sroa_idx, align 8
  %i.vi = load ptr, ptr %.sroa.phi504, align 8
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  store ptr %i.vj, ptr %.sroa.phi504, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit306

bb.bs:                                            ; preds = %bb.bq
  %i.vk = load ptr, ptr %i.rb, align 8            ; 5 uses
  %i.vl = ptrtoint ptr %i.uy to i64
  %i.vm = ptrtoint ptr %i.vk to i64
  %i.vn = sub i64 %i.vl, %i.vm                    ; 4 uses
  %i.vo = icmp eq i64 %i.vn, 9223372036854775800
  br i1 %i.vo, label %bb.bt, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i292

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc304 unwind label %.loopexit.split-lp704

.noexc304:                                        ; preds = %bb.bt
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i292: ; preds = %bb.bs
  %i.vp = sdiv exact i64 %i.vn, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i293 = call i64 @llvm.umax.i64(i64 %i.vp, i64 1)
  %i.vq = add nsw i64 %.sroa.speculated.i.i.i.i293, %i.vp ; 2 uses
  %i.vr = icmp ult i64 %i.vq, %i.vp
  %i.vs = call i64 @llvm.umin.i64(i64 %i.vq, i64 384307168202282325)
  %i.vt = select i1 %i.vr, i64 384307168202282325, i64 %i.vs ; 3 uses
  %.not.i.i.i.i294 = icmp ne i64 %i.vt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i294)
  %i.vu = mul nuw nsw i64 %i.vt, 24
  %i.vv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vu) #28
          to label %.noexc305 unwind label %.loopexit703 ; 5 uses

.noexc305:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i292
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 %i.vn ; 2 uses
  store <2 x double> %i.vd, ptr %i.vw, align 8
  %.sroa.7487.0..sroa_idx488 = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  store double %i.vh, ptr %.sroa.7487.0..sroa_idx488, align 8
  %.not10.i.i.i.i.i.i295 = icmp eq ptr %i.vk, %i.uy
  br i1 %.not10.i.i.i.i.i.i295, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i300, label %.lr.ph.i.i.i.i.i.i296

.lr.ph.i.i.i.i.i.i296:                            ; preds = %.noexc305, %.lr.ph.i.i.i.i.i.i296
  %.012.i.i.i.i.i.i297 = phi ptr [ %i.vy, %.lr.ph.i.i.i.i.i.i296 ], [ %i.vv, %.noexc305 ] ; 2 uses
  %.0911.i.i.i.i.i.i298 = phi ptr [ %i.vx, %.lr.ph.i.i.i.i.i.i296 ], [ %i.vk, %.noexc305 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i297, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i298, i64 24, i1 false), !alias.scope !185
  %i.vx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i298, i64 24 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i297, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i299 = icmp eq ptr %i.vx, %i.uy
  br i1 %.not.i.i.i.i.i.i299, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i300, label %.lr.ph.i.i.i.i.i.i296, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i300: ; preds = %.lr.ph.i.i.i.i.i.i296, %.noexc305
  %.0.lcssa.i.i.i.i.i.i301 = phi ptr [ %i.vv, %.noexc305 ], [ %i.vy, %.lr.ph.i.i.i.i.i.i296 ]
  %i.vz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i301, i64 24
  %.not.i23.i.i.i302 = icmp eq ptr %i.vk, null
  br i1 %.not.i23.i.i.i302, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i303, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i300
  call void @_ZdlPvm(ptr noundef nonnull %i.vk, i64 noundef %i.vn) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i303

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i303: ; preds = %bb.bu, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i300
  store ptr %i.vv, ptr %i.rb, align 8
  store ptr %i.vz, ptr %.sroa.phi504, align 8
  %i.wa = getelementptr inbounds nuw [24 x i8], ptr %i.vv, i64 %i.vt
  store ptr %i.wa, ptr %.sroa.phi507, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit306

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit306: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i303, %bb.br
  br i1 %i.ra, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit306
  %i.wb = load double, ptr %i.sb, align 8, !noalias !189
  %i.wc = load double, ptr %i.sz, align 8, !noalias !189
  %i.wd = fsub double %i.wb, %i.wc                ; 2 uses
  %i.we = load double, ptr %i.vb, align 8, !noalias !189
  %i.wf = load double, ptr %i.tv, align 8, !noalias !189
  %i.wg = fsub double %i.we, %i.wf                ; 2 uses
  %i.wh = load double, ptr %i.ve, align 8, !noalias !189
  %i.wi = load double, ptr %i.tz, align 8, !noalias !189
  %i.wj = fsub double %i.wh, %i.wi                ; 2 uses
  %i.wk = fmul double %i.wg, %i.wg
  %i.wl = call double @llvm.fmuladd.f64(double %i.wd, double %i.wd, double %i.wk)
  %i.wm = call noundef double @llvm.fmuladd.f64(double %i.wj, double %i.wj, double %i.wl)
  %sqrt.i307 = call noundef double @llvm.sqrt.f64(double %i.wm)
  %i.wn = fcmp ogt double %sqrt.i307, %sqrt.i
  br i1 %i.wn, label %bb.bw, label %.critedge

bb.bw:                                            ; preds = %bb.bv
  %i.wo = load ptr, ptr %i.gu, align 8
  %i.wp = invoke noundef zeroext i1 @_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.wo, ptr noundef nonnull align 8 dereferenceable(48) %12, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.wq = zext i1 %i.wp to i64
  %spec.select = add i64 %.0125805, %i.wq
  br label %.critedge

.loopexit688:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit690 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit.split-lp689:                            ; preds = %bb.bc
  %lpad.loopexit.split-lp691 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit693:                                     ; preds = %.critedge, %bb.bz, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i255, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i271
  %lpad.loopexit695 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit.split-lp694:                            ; preds = %.invoke
  %lpad.loopexit.split-lp696 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit698:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit700 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit.split-lp699:                            ; preds = %bb.bo
  %lpad.loopexit.split-lp701 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit703:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i292
  %lpad.loopexit705 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit.split-lp704:                            ; preds = %bb.bt
  %lpad.loopexit.split-lp706 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.by:                                            ; preds = %bb.bw
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.critedge:                                        ; preds = %bb.bv, %bb.bx
  %.1126 = phi i64 [ %spec.select, %bb.bx ], [ %.0125805, %bb.bv ]
  invoke void @_ZN6Assimp3IFC8TempMesh6AppendERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.bz unwind label %.loopexit693

bb.bz:                                            ; preds = %.critedge
  invoke void @_ZN6Assimp3IFC8TempMesh5ClearEv(ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.ca unwind label %.loopexit693

bb.ca:                                            ; preds = %bb.bz, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit306
  %.2127 = phi i64 [ %.1126, %bb.bz ], [ %.0125805, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit306 ] ; 2 uses
  %22 = icmp ult i64 %i.re, %i.ew
  br i1 %22, label %bb.az, label %._crit_edge808, !llvm.loop !192

bb.cb:                                            ; preds = %._crit_edge808
  %i.ws = load ptr, ptr %i.gu, align 8            ; 2 uses
  %i.wt = load ptr, ptr %i.ws, align 8            ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.wv = load ptr, ptr %i.wu, align 8            ; 2 uses
  %.not671810 = icmp eq ptr %i.wt, %i.wv
  br i1 %.not671810, label %.loopexit687, label %.lr.ph813

.lr.ph813:                                        ; preds = %bb.cb
  %i.ww = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.wz = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.xa = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.xb = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.xc = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  %i.xd = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.xe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.xf = getelementptr i8, ptr %i.xd, i64 -24
  %i.xg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.xk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.xl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.xm = getelementptr i8, ptr %i.xk, i64 -24
  %i.xn = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.xo = getelementptr inbounds nuw i8, ptr %13, i64 128
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph813, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit
  %.sroa.0477.0811 = phi ptr [ %i.wt, %.lr.ph813 ], [ %i.zm, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit ] ; 3 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.sroa.0477.0811, i64 64 ; 2 uses
  %i.xq = load ptr, ptr %i.xp, align 8
  %i.xr = getelementptr inbounds nuw i8, ptr %.sroa.0477.0811, i64 72 ; 3 uses
  %i.xs = load ptr, ptr %i.xr, align 8
  %i.xt = icmp eq ptr %i.xq, %i.xs
  br i1 %i.xt, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %13)
          to label %bb.ce unwind label %bb.ck

bb.ce:                                            ; preds = %bb.cd
  %i.xu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ww, ptr noundef nonnull @.str.10, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309 unwind label %bb.cl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309: ; preds = %bb.ce
  %i.xv = load ptr, ptr %0, align 8
  %i.xw = getelementptr i8, ptr %i.xv, i64 -24
  %i.xx = load i64, ptr %i.xw, align 8
  %i.xy = getelementptr inbounds i8, ptr %0, i64 %i.xx
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.ya = load i64, ptr %i.xz, align 8
  %i.yb = trunc i64 %i.ya to i32
  %i.yc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ww, i32 noundef %i.yb)
          to label %bb.cf unwind label %bb.cl     ; 0 uses

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  store ptr %i.wx, ptr %14, align 8, !alias.scope !199
  store i64 0, ptr %i.wy, align 8, !alias.scope !199
  store i8 0, ptr %i.wx, align 8, !alias.scope !199
  %i.yd = load ptr, ptr %i.wz, align 8, !noalias !199 ; 3 uses
  %.not.i.not.i.i310 = icmp eq ptr %i.yd, null
  %i.ye = load ptr, ptr %i.xa, align 8, !noalias !199 ; 2 uses
  %i.yf = icmp ugt ptr %i.yd, %i.ye
  %.08.i.i.i311 = select i1 %i.yf, ptr %i.yd, ptr %i.ye ; 2 uses
  %.not5.i.i312 = icmp eq ptr %.08.i.i.i311, null
  %.not.i.i313 = select i1 %.not.i.not.i.i310, i1 true, i1 %.not5.i.i312
  br i1 %.not.i.i313, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.yg = load ptr, ptr %i.xb, align 8, !noalias !199 ; 2 uses
  %i.yh = ptrtoint ptr %.08.i.i.i311 to i64
  %i.yi = ptrtoint ptr %i.yg to i64
  %i.yj = sub i64 %i.yh, %i.yi
  %i.yk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef %i.yg, i64 noundef %i.yj)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit319 unwind label %bb.ch ; 0 uses

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  %i.yl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ym = load ptr, ptr %14, align 8, !alias.scope !199 ; 2 uses
  %i.yn = icmp eq ptr %i.ym, %i.wx
  br i1 %i.yn, label %.body317, label %.body317.sink.split

bb.ci:                                            ; preds = %bb.cf
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.xc)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit319 unwind label %bb.ch

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit319: ; preds = %bb.ci, %bb.cg
  %i.yo = load ptr, ptr %14, align 8
  store ptr %i.yo, ptr %i.f, align 8
  %i.yp = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc320 unwind label %bb.cm

.noexc320:                                        ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit319
  br i1 %i.yp, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJPKcEEEvDpOT_.exit, label %bb.cj

bb.cj:                                            ; preds = %.noexc320
  %i.yq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc321 unwind label %bb.cm

.noexc321:                                        ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.yr = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc322 unwind label %bb.cm

.noexc322:                                        ; preds = %.noexc321
  store ptr %i.yr, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.yq, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc323 unwind label %bb.cm

.noexc323:                                        ; preds = %.noexc322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJPKcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJPKcEEEvDpOT_.exit: ; preds = %.noexc323, %.noexc320
  %i.ys = load ptr, ptr %14, align 8              ; 2 uses
  %i.yt = icmp eq ptr %i.ys, %i.wx
  br i1 %i.yt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJPKcEEEvDpOT_.exit
  %i.yu = load i64, ptr %i.wx, align 8
  %i.yv = add i64 %i.yu, 1
  call void @_ZdlPvm(ptr noundef %i.ys, i64 noundef %i.yv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJPKcEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  store ptr %i.xd, ptr %13, align 8
  %i.yw = load i64, ptr %i.xf, align 8
  %i.yx = getelementptr inbounds i8, ptr %13, i64 %i.yw
  store ptr %i.xe, ptr %i.yx, align 8
  store ptr %i.xg, ptr %i.ww, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.xh, align 8
  %i.yy = load ptr, ptr %i.xc, align 8            ; 2 uses
  %i.yz = icmp eq ptr %i.yy, %i.xi
  br i1 %i.yz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i327: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326
  %i.za = load i64, ptr %i.xi, align 8
  %i.zb = add i64 %i.za, 1
  call void @_ZdlPvm(ptr noundef %i.yy, i64 noundef %i.zb) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i328

bb.ck:                                            ; preds = %bb.cd
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cl:                                            ; preds = %bb.ce, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cm:                                            ; preds = %.noexc322, %.noexc321, %bb.cj, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit319
  %i.ze = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zf = load ptr, ptr %14, align 8              ; 2 uses
  %i.zg = icmp eq ptr %i.zf, %i.wx
  br i1 %i.zg, label %.body317, label %.body317.sink.split

.body317.sink.split:                              ; preds = %bb.cm, %bb.ch
  %.sink1102 = phi ptr [ %i.ym, %bb.ch ], [ %i.zf, %bb.cm ]
  %.pn170.ph = phi { ptr, i32 } [ %i.yl, %bb.ch ], [ %i.ze, %bb.cm ]
  %i.zh = load i64, ptr %i.wx, align 8
  %i.zi = add i64 %i.zh, 1
  call void @_ZdlPvm(ptr noundef %.sink1102, i64 noundef %i.zi) #29
  br label %.body317

.body317:                                         ; preds = %.body317.sink.split, %bb.cm, %bb.ch
  %.pn170 = phi { ptr, i32 } [ %i.yl, %bb.ch ], [ %i.ze, %bb.cm ], [ %.pn170.ph, %.body317.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %bb.cn

bb.cn:                                            ; preds = %.body317, %bb.cl
  %.pn170.pn = phi { ptr, i32 } [ %.pn170, %.body317 ], [ %i.zd, %bb.cl ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %13) #30
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.ck
  %.pn170.pn.pn = phi { ptr, i32 } [ %.pn170.pn, %bb.cn ], [ %i.zc, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.gs

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i327
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.xh, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.xj) #30
  store ptr %i.xk, ptr %13, align 8
  %i.zj = load i64, ptr %i.xm, align 8
  %i.zk = getelementptr inbounds i8, ptr %13, i64 %i.zj
  store ptr %i.xl, ptr %i.zk, align 8
  store i64 0, ptr %i.xn, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.xo) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %.pre891.a = load ptr, ptr %i.xp, align 8       ; 2 uses
  %.pre892.a = load ptr, ptr %i.xr, align 8
  %i.zl = icmp eq ptr %.pre892.a, %.pre891.a
  br i1 %i.zl, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i328
  store ptr %.pre891.a, ptr %i.xr, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i328, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.zm = getelementptr inbounds nuw i8, ptr %.sroa.0477.0811, i64 88 ; 2 uses
  %.not671 = icmp eq ptr %i.zm, %i.wv
  br i1 %.not671, label %.loopexit687, label %bb.cc

.loopexit687:                                     ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit, %bb.cb, %._crit_edge808
  br i1 %i.aa, label %.preheader680, label %.loopexit681

.preheader680:                                    ; preds = %.loopexit687
  %i.zn = trunc i64 %i.ew to i32                  ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.sroa.phi, i64 8 ; 4 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %.sroa.phi, i64 16 ; 2 uses
  %i.zq = icmp ugt i64 %i.ew, 2
  %or.cond666 = and i1 %i.zq, %i.ra
  br label %bb.cp

bb.cp:                                            ; preds = %.preheader680, %bb.dh
  %i.zr = phi i1 [ false, %.preheader680 ], [ true, %bb.dh ]
  %i.zs = phi i1 [ true, %.preheader680 ], [ false, %bb.dh ]
  %.0120819 = phi i64 [ 0, %.preheader680 ], [ %.2122, %bb.dh ] ; 2 uses
  br i1 %i.zr, label %.preheader, label %.preheader673

.preheader673:                                    ; preds = %bb.cp
  br i1 %.not667781, label %.loopexit, label %.lr.ph816.preheader

.lr.ph816.preheader:                              ; preds = %.preheader673
  %.pre893 = load ptr, ptr %.sroa.phi504, align 8
  br label %.lr.ph816

.preheader:                                       ; preds = %bb.cp
  br i1 %.not667781, label %.loopexit, label %.lr.ph818.preheader

.lr.ph818.preheader:                              ; preds = %.preheader
  %.pre894 = load ptr, ptr %.sroa.phi504, align 8
  br label %.lr.ph818

.lr.ph818:                                        ; preds = %.lr.ph818.preheader, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit349
  %i.zt = phi ptr [ %i.aaw, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit349 ], [ %.pre894, %.lr.ph818.preheader ] ; 6 uses
  %.0118817 = phi i64 [ %i.aax, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit349 ], [ 0, %.lr.ph818.preheader ] ; 2 uses
  %i.zu = getelementptr inbounds nuw [24 x i8], ptr %.sink, i64 %.0118817 ; 2 uses
  %i.zv = load <2 x double>, ptr %i.zu, align 8, !noalias !200
  %i.zw = load <2 x double>, ptr %8, align 16, !noalias !200
  %i.zx = fadd <2 x double> %i.zv, %i.zw          ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  %i.zz = load double, ptr %i.zy, align 8, !noalias !200
  %i.aaa = load double, ptr %i.es, align 16, !noalias !200
  %i.aab = fadd double %i.zz, %i.aaa              ; 2 uses
  %i.aac = load ptr, ptr %.sroa.phi507, align 8
  %.not.i.i334 = icmp eq ptr %i.zt, %i.aac
  br i1 %.not.i.i334, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph818
  store <2 x double> %i.zx, ptr %i.zt, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  store double %i.aab, ptr %.sroa.7.0..sroa_idx, align 8
  %i.aad = load ptr, ptr %.sroa.phi504, align 8
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 24 ; 2 uses
  store ptr %i.aae, ptr %.sroa.phi504, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit349

bb.cr:                                            ; preds = %.lr.ph818
  %i.aaf = load ptr, ptr %i.rb, align 8           ; 5 uses
  %i.aag = ptrtoint ptr %i.zt to i64
  %i.aah = ptrtoint ptr %i.aaf to i64
  %i.aai = sub i64 %i.aag, %i.aah                 ; 4 uses
  %i.aaj = icmp eq i64 %i.aai, 9223372036854775800
  br i1 %i.aaj, label %bb.cs, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i335

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc347 unwind label %.loopexit.split-lp

.noexc347:                                        ; preds = %bb.cs
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i335: ; preds = %bb.cr
  %i.aak = sdiv exact i64 %i.aai, 24              ; 3 uses
  %.sroa.speculated.i.i.i.i336 = call i64 @llvm.umax.i64(i64 %i.aak, i64 1)
  %i.aal = add nsw i64 %.sroa.speculated.i.i.i.i336, %i.aak ; 2 uses
  %i.aam = icmp ult i64 %i.aal, %i.aak
  %i.aan = call i64 @llvm.umin.i64(i64 %i.aal, i64 384307168202282325)
  %i.aao = select i1 %i.aam, i64 384307168202282325, i64 %i.aan ; 3 uses
  %.not.i.i.i.i337 = icmp ne i64 %i.aao, 0
  call void @llvm.assume(i1 %.not.i.i.i.i337)
  %i.aap = mul nuw nsw i64 %i.aao, 24
  %i.aaq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aap) #28
          to label %.noexc348 unwind label %.loopexit672 ; 5 uses

.noexc348:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i335
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.aai ; 2 uses
  store <2 x double> %i.zx, ptr %i.aar, align 8
  %.sroa.7.0..sroa_idx474 = getelementptr inbounds nuw i8, ptr %i.aar, i64 16
  store double %i.aab, ptr %.sroa.7.0..sroa_idx474, align 8
  %.not10.i.i.i.i.i.i338 = icmp eq ptr %i.aaf, %i.zt
  br i1 %.not10.i.i.i.i.i.i338, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i343, label %.lr.ph.i.i.i.i.i.i339

.lr.ph.i.i.i.i.i.i339:                            ; preds = %.noexc348, %.lr.ph.i.i.i.i.i.i339
  %.012.i.i.i.i.i.i340 = phi ptr [ %i.aat, %.lr.ph.i.i.i.i.i.i339 ], [ %i.aaq, %.noexc348 ] ; 2 uses
  %.0911.i.i.i.i.i.i341 = phi ptr [ %i.aas, %.lr.ph.i.i.i.i.i.i339 ], [ %i.aaf, %.noexc348 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i340, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i341, i64 24, i1 false), !alias.scope !203
  %i.aas = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i341, i64 24 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i340, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i342 = icmp eq ptr %i.aas, %i.zt
  br i1 %.not.i.i.i.i.i.i342, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i343, label %.lr.ph.i.i.i.i.i.i339, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i343: ; preds = %.lr.ph.i.i.i.i.i.i339, %.noexc348
  %.0.lcssa.i.i.i.i.i.i344 = phi ptr [ %i.aaq, %.noexc348 ], [ %i.aat, %.lr.ph.i.i.i.i.i.i339 ]
  %i.aau = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i344, i64 24 ; 2 uses
  %.not.i23.i.i.i345 = icmp eq ptr %i.aaf, null
  br i1 %.not.i23.i.i.i345, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i346, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i343
  call void @_ZdlPvm(ptr noundef nonnull %i.aaf, i64 noundef %i.aai) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i346

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i346: ; preds = %bb.ct, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i343
  store ptr %i.aaq, ptr %i.rb, align 8
  store ptr %i.aau, ptr %.sroa.phi504, align 8
  %i.aav = getelementptr inbounds nuw [24 x i8], ptr %i.aaq, i64 %i.aao
  store ptr %i.aav, ptr %.sroa.phi507, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit349

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit349: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i346, %bb.cq
  %i.aaw = phi ptr [ %i.aau, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i346 ], [ %i.aae, %bb.cq ]
  %i.aax = add nuw i64 %.0118817, 1               ; 2 uses
  %23 = icmp ult i64 %i.aax, %i.ew
  br i1 %23, label %.lr.ph818, label %.loopexit, !llvm.loop !207

.loopexit672:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i335
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit.split-lp:                               ; preds = %bb.cs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.lr.ph816:                                        ; preds = %.lr.ph816.preheader, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit365
  %i.aay = phi ptr [ %i.abv, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit365 ], [ %.pre893, %.lr.ph816.preheader ] ; 5 uses
  %.0117815 = phi i64 [ %i.aaz, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit365 ], [ %i.ew, %.lr.ph816.preheader ]
  %i.aaz = add i64 %.0117815, -1                  ; 3 uses
  %i.aba = getelementptr inbounds nuw [24 x i8], ptr %.sink, i64 %i.aaz ; 2 uses
  %i.abb = load ptr, ptr %.sroa.phi507, align 8
  %.not.i350 = icmp eq ptr %i.aay, %i.abb
  br i1 %.not.i350, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aay, ptr noundef nonnull align 8 dereferenceable(24) %i.aba, i64 24, i1 false)
  %i.abc = load ptr, ptr %.sroa.phi504, align 8
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 24 ; 2 uses
  store ptr %i.abd, ptr %.sroa.phi504, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit365

bb.cv:                                            ; preds = %.lr.ph816
  %i.abe = load ptr, ptr %i.rb, align 8           ; 5 uses
  %i.abf = ptrtoint ptr %i.aay to i64
  %i.abg = ptrtoint ptr %i.abe to i64
  %i.abh = sub i64 %i.abf, %i.abg                 ; 4 uses
  %i.abi = icmp eq i64 %i.abh, 9223372036854775800
  br i1 %i.abi, label %bb.cw, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i351

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc363 unwind label %.loopexit.split-lp676

.noexc363:                                        ; preds = %bb.cw
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i351: ; preds = %bb.cv
  %i.abj = sdiv exact i64 %i.abh, 24              ; 3 uses
  %.sroa.speculated.i.i.i352 = call i64 @llvm.umax.i64(i64 %i.abj, i64 1)
  %i.abk = add nsw i64 %.sroa.speculated.i.i.i352, %i.abj ; 2 uses
  %i.abl = icmp ult i64 %i.abk, %i.abj
  %i.abm = call i64 @llvm.umin.i64(i64 %i.abk, i64 384307168202282325)
  %i.abn = select i1 %i.abl, i64 384307168202282325, i64 %i.abm ; 3 uses
  %.not.i.i.i353 = icmp ne i64 %i.abn, 0
  call void @llvm.assume(i1 %.not.i.i.i353)
  %i.abo = mul nuw nsw i64 %i.abn, 24
  %i.abp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abo) #28
          to label %.noexc364 unwind label %.loopexit675 ; 5 uses

.noexc364:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i351
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.abh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abq, ptr noundef nonnull align 8 dereferenceable(24) %i.aba, i64 24, i1 false)
  %.not10.i.i.i.i.i354 = icmp eq ptr %i.abe, %i.aay
  br i1 %.not10.i.i.i.i.i354, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i359, label %.lr.ph.i.i.i.i.i355

.lr.ph.i.i.i.i.i355:                              ; preds = %.noexc364, %.lr.ph.i.i.i.i.i355
  %.012.i.i.i.i.i356 = phi ptr [ %i.abs, %.lr.ph.i.i.i.i.i355 ], [ %i.abp, %.noexc364 ] ; 2 uses
  %.0911.i.i.i.i.i357 = phi ptr [ %i.abr, %.lr.ph.i.i.i.i.i355 ], [ %i.abe, %.noexc364 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i356, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i357, i64 24, i1 false), !alias.scope !208
  %i.abr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i357, i64 24 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i356, i64 24 ; 2 uses
  %.not.i.i.i.i.i358 = icmp eq ptr %i.abr, %i.aay
  br i1 %.not.i.i.i.i.i358, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i359, label %.lr.ph.i.i.i.i.i355, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i359: ; preds = %.lr.ph.i.i.i.i.i355, %.noexc364
  %.0.lcssa.i.i.i.i.i360 = phi ptr [ %i.abp, %.noexc364 ], [ %i.abs, %.lr.ph.i.i.i.i.i355 ]
  %i.abt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i360, i64 24 ; 2 uses
  %.not.i23.i.i361 = icmp eq ptr %i.abe, null
  br i1 %.not.i23.i.i361, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i362, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i359
  call void @_ZdlPvm(ptr noundef nonnull %i.abe, i64 noundef %i.abh) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i362

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i362: ; preds = %bb.cx, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i359
  store ptr %i.abp, ptr %i.rb, align 8
  store ptr %i.abt, ptr %.sroa.phi504, align 8
  %i.abu = getelementptr inbounds nuw [24 x i8], ptr %i.abp, i64 %i.abn
  store ptr %i.abu, ptr %.sroa.phi507, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit365

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit365: ; preds = %bb.cu, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i362
  %i.abv = phi ptr [ %i.abd, %bb.cu ], [ %i.abt, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i362 ]
  %.not166 = icmp eq i64 %i.aaz, 0
  br i1 %.not166, label %.loopexit, label %.lr.ph816

.loopexit675:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i351
  %lpad.loopexit677 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit.split-lp676:                            ; preds = %bb.cw
  %lpad.loopexit.split-lp678 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit:                                        ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit365, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit349, %.preheader673, %.preheader
  %i.abw = load ptr, ptr %i.zo, align 8           ; 3 uses
  %i.abx = load ptr, ptr %i.zp, align 8
  %.not.i.i366 = icmp eq ptr %i.abw, %i.abx
  br i1 %.not.i.i366, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.loopexit
  store i32 %i.zn, ptr %i.abw, align 4
  %i.aby = load ptr, ptr %i.zo, align 8
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 4
  store ptr %i.abz, ptr %i.zo, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit375

bb.cz:                                            ; preds = %.loopexit
  %i.aca = load ptr, ptr %.sroa.phi, align 8      ; 4 uses
  %i.acb = ptrtoint ptr %i.abw to i64
  %i.acc = ptrtoint ptr %i.aca to i64
  %i.acd = sub i64 %i.acb, %i.acc                 ; 6 uses
  %i.ace = icmp eq i64 %i.acd, 9223372036854775804
  br i1 %i.ace, label %bb.da, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i367

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc373 unwind label %.loopexit.split-lp683

.noexc373:                                        ; preds = %bb.da
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i367: ; preds = %bb.cz
  %i.acf = ashr exact i64 %i.acd, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i368 = call i64 @llvm.umax.i64(i64 %i.acf, i64 1)
  %i.acg = add nsw i64 %.sroa.speculated.i.i.i.i368, %i.acf ; 2 uses
  %i.ach = icmp ult i64 %i.acg, %i.acf
  %i.aci = call i64 @llvm.umin.i64(i64 %i.acg, i64 2305843009213693951)
  %i.acj = select i1 %i.ach, i64 2305843009213693951, i64 %i.aci ; 3 uses
  %.not.i.i.i.i369 = icmp ne i64 %i.acj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i369)
  %i.ack = shl nuw nsw i64 %i.acj, 2
  %i.acl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ack) #28
          to label %.noexc374 unwind label %.loopexit682 ; 4 uses

.noexc374:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i367
  %i.acm = getelementptr inbounds i8, ptr %i.acl, i64 %i.acd ; 2 uses
  store i32 %i.zn, ptr %i.acm, align 4
  %i.acn = icmp sgt i64 %i.acd, 0
  br i1 %i.acn, label %bb.db, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i370

bb.db:                                            ; preds = %.noexc374
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.acl, ptr align 4 %i.aca, i64 %i.acd, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i370

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i370: ; preds = %bb.db, %.noexc374
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acm, i64 4
  %.not.i17.i.i.i371 = icmp eq ptr %i.aca, null
  br i1 %.not.i17.i.i.i371, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i372, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i370
  call void @_ZdlPvm(ptr noundef nonnull %i.aca, i64 noundef %i.acd) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i372

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i372: ; preds = %bb.dc, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i370
  store ptr %i.acl, ptr %.sroa.phi, align 8
  store ptr %i.aco, ptr %i.zo, align 8
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.acl, i64 %i.acj
  store ptr %i.acp, ptr %i.zp, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit375

_ZNSt6vectorIjSaIjEE9push_backEOj.exit375:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i372, %bb.cy
  br i1 %or.cond666, label %bb.dd, label %bb.dh

bb.dd:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit375
  %i.acq = load ptr, ptr %i.gu, align 8
  %i.acr = invoke noundef zeroext i1 @_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.acq, ptr noundef nonnull align 8 dereferenceable(48) %12, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN6Assimp3IFC8TempMesh6AppendERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.dg unwind label %bb.df

.loopexit682:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i367
  %lpad.loopexit684 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit.split-lp683:                            ; preds = %bb.da
  %lpad.loopexit.split-lp685 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.df:                                            ; preds = %bb.dg, %bb.de, %bb.dd
  %i.acs = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.dg:                                            ; preds = %bb.de
  %i.act = zext i1 %i.acr to i64
  %spec.select196 = add i64 %.0120819, %i.act
  invoke void @_ZN6Assimp3IFC8TempMesh5ClearEv(ptr noundef nonnull align 8 dereferenceable(48) %12)
end_hunk_1
