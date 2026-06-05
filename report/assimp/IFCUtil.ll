inline.NumInlined: 1656
inline.NumDeleted: 752
begin_hunk_0_@_ZN6Assimp3IFC8TempMesh20ComputePolygonNormalEPK10aiVector3tIdEmb:bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %xtraiter = and i64 %2, 1
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01536.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %._crit_edge.loopexit.unr-lcssa ]
  %.01635.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod49 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.01635.epil.init ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %.sroa.024.0, i64 %.01536.epil.init ; 2 uses
  %i.m = load <2 x double>, ptr %i.k, align 8
  store <2 x double> %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load double, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.l, i64 16
  store double %i.o, ptr %i.p, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.q = trunc i64 %2 to i32                      ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 16 ; 4 uses
  %i.t = load double, ptr %.sroa.024.0, align 8
  %i.u = mul nsw i32 %i.q, 3                      ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.sroa.024.0, i64 %i.v
  store double %i.t, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 24 ; 2 uses
  %i.y = load double, ptr %i.x, align 8
  %i.z = add i32 %i.u, 3
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sroa.024.0, i64 %i.aa
  store double %i.y, ptr %i.ab, align 8
  %i.ac = load double, ptr %i.r, align 8
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.v
  store double %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 32 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aa
  store double %i.af, ptr %i.ag, align 8
  %i.ah = load double, ptr %i.s, align 8
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v
  store double %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 40
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.aa
  store double %i.ak, ptr %i.al, align 8
  %i.am = icmp sgt i32 %i.q, 0
  br i1 %i.am, label %.lr.ph.preheader.i, label %_ZN6Assimp12NewellNormalILi3ELi3ELi3EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 48
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.078.i = phi i32 [ %i.bp, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.05477.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %i.an, %.lr.ph.preheader.i ] ; 2 uses
  %.05576.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %i.s, %.lr.ph.preheader.i ] ; 2 uses
  %.05774.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %i.ao, %.lr.ph.preheader.i ] ; 2 uses
  %.05873.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %i.r, %.lr.ph.preheader.i ] ; 2 uses
  %.05972.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.ae, %.lr.ph.preheader.i ] ; 2 uses
  %.06071.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %i.ap, %.lr.ph.preheader.i ] ; 2 uses
  %.06170.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %.sroa.024.0, %.lr.ph.preheader.i ] ; 2 uses
  %.06269.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.06566.i = phi double [ %i.av, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.preheader.i ]
  %i.aq = phi <2 x double> [ %i.bg, %.lr.ph.i ], [ zeroinitializer, %.lr.ph.preheader.i ]
  %i.ar = load double, ptr %.06269.i, align 8
  %i.as = load double, ptr %.05774.i, align 8
  %i.at = load double, ptr %.05873.i, align 8
  %i.au = fsub double %i.as, %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.au, double %.06566.i) ; 2 uses
  %i.aw = load double, ptr %.05477.i, align 8
  %i.ax = load double, ptr %.05576.i, align 8
  %i.ay = load double, ptr %.06071.i, align 8
  %i.az = load double, ptr %.06170.i, align 8
  %i.ba = load <2 x double>, ptr %.05972.i, align 8
  %i.bb = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ay, i64 1
  %i.bd = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.az, i64 1
  %i.bf = fsub <2 x double> %i.bc, %i.be
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bf, <2 x double> %i.aq) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.06269.i, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %.06170.i, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %.06071.i, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %.05972.i, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %.05873.i, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %.05774.i, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %.05576.i, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %.05477.i, i64 24
  %i.bp = add nuw nsw i32 %.078.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bp, %i.q
  br i1 %exitcond.not.i, label %_ZN6Assimp12NewellNormalILi3ELi3ELi3EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit, label %.lr.ph.i, !llvm.loop !79

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01536 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 3 uses
  %.01635 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cf, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.01635 ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %.sroa.024.0, i64 %.01536 ; 2 uses
  %i.bs = load <2 x double>, ptr %i.bq, align 8
  store <2 x double> %i.bs, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bu = load double, ptr %i.bt, align 8
  %i.bv = getelementptr i8, ptr %i.br, i64 16
  store double %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.01635 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = getelementptr [8 x i8], ptr %.sroa.024.0, i64 %.01536 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 24
  %i.ca = load <2 x double>, ptr %i.bx, align 8
  store <2 x double> %i.ca, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load double, ptr %i.cb, align 8
  %i.cd = add i64 %.01536, 6                      ; 2 uses
  %i.ce = getelementptr i8, ptr %i.by, i64 40
  store double %i.cc, ptr %i.ce, align 8
  %i.cf = add nuw i64 %.01635, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !80

_ZN6Assimp12NewellNormalILi3ELi3ELi3EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit: ; preds = %.lr.ph.i, %._crit_edge
  %.065.lcssa.i = phi double [ 0.000000e+00, %._crit_edge ], [ %i.av, %.lr.ph.i ] ; 5 uses
  %i.cg = phi <2 x double> [ zeroinitializer, %._crit_edge ], [ %i.bg, %.lr.ph.i ] ; 6 uses
  br i1 %3, label %bb.b, label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.b:                                             ; preds = %_ZN6Assimp12NewellNormalILi3ELi3ELi3EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit
  %foldExtExtBinop = fmul <2 x double> %i.cg, %i.cg
  %i.ch = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ci = extractelement <2 x double> %i.cg, i64 0 ; 2 uses
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.ci, double %i.ch)
  %i.ck = tail call noundef double @llvm.fmuladd.f64(double %.065.lcssa.i, double %.065.lcssa.i, double %i.cj) ; 2 uses
  %i.cl = fcmp oeq double %i.ck, 0.000000e+00
  br i1 %i.cl, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %bb.b
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ck)
  %i.cm = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.cn = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x double> %i.cg, %i.co
  %i.cq = fmul double %.065.lcssa.i, %i.cm
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN10aiVector3tIdEdVEd.exit.i, %bb.b, %_ZN6Assimp12NewellNormalILi3ELi3ELi3EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit
  %.sroa.11.0 = phi double [ %.065.lcssa.i, %_ZN6Assimp12NewellNormalILi3ELi3ELi3EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit ], [ %.065.lcssa.i, %bb.b ], [ %i.cq, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %i.cr = phi <2 x double> [ %i.cg, %_ZN6Assimp12NewellNormalILi3ELi3ELi3EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit ], [ %i.cg, %bb.b ], [ %i.cp, %_ZN10aiVector3tIdEdVEd.exit.i ]
  store <2 x double> %i.cr, ptr %0, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %i.cs = ptrtoint ptr %.sroa.15.0 to i64
  %i.ct = ptrtoint ptr %.sroa.024.0 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.024.0, i64 noundef %i.cu) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp3IFC8TempMesh24ComputeLastPolygonNormalEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiVector3t) align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = sub nsw i64 %i.g, %i.l
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.m
  tail call void @_ZN6Assimp3IFC8TempMesh20ComputePolygonNormalEPK10aiVector3tIdEmb(ptr dead_on_unwind writable sret(%class.aiVector3t) align 8 %0, ptr noundef nonnull %i.n, i64 noundef %i.l, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC8TempMesh20FixupFaceOrientationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Rb_tree<aiVector3t<double>, std::pair<const aiVector3t<double>, std::vector<unsigned long>>, std::_Select1st<std::pair<const aiVector3t<double>, std::vector<unsigned long>>>, Assimp::IFC::CompareVector>::_Auto_node", align 8 ; 6 uses
  %2 = alloca %"struct.std::_Rb_tree<aiVector3t<double>, std::pair<const aiVector3t<double>, std::vector<unsigned long>>, std::_Select1st<std::pair<const aiVector3t<double>, std::vector<unsigned long>>>, Assimp::IFC::CompareVector>::_Auto_node", align 8 ; 6 uses
  %3 = alloca %"struct.std::_Rb_tree<aiVector3t<double>, std::pair<const aiVector3t<double>, std::vector<unsigned long>>, std::_Select1st<std::pair<const aiVector3t<double>, std::vector<unsigned long>>>, Assimp::IFC::CompareVector>::_Auto_node", align 8 ; 6 uses
  %4 = alloca %class.aiVector3t, align 8          ; 4 uses
  %5 = alloca %class.aiVector3t, align 8          ; 4 uses
  %6 = alloca %"class.std::map", align 8          ; 22 uses
  %7 = alloca %class.aiVector3t, align 8          ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !noalias !81  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !81 ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNK6Assimp3IFC8TempMesh6CenterEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.02.06.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.e = phi double [ %i.h, %.lr.ph.i.i ], [ 0.000000e+00, %bb.a ]
  %i.f = phi <2 x double> [ %i.k, %.lr.ph.i.i ], [ zeroinitializer, %bb.a ]
  %i.g = load double, ptr %.sroa.02.06.i.i, align 8, !noalias !84
  %i.h = fadd double %i.e, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8
  %i.j = load <2 x double>, ptr %i.i, align 8, !noalias !84
  %i.k = fadd <2 x double> %i.f, %i.j             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEES3_ET0_T_SB_SA_.exit.i, label %.lr.ph.i.i, !llvm.loop !52

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEES3_ET0_T_SB_SA_.exit.i: ; preds = %.lr.ph.i.i
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = ptrtoint ptr %i.a to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24
  %i.q = uitofp i64 %i.p to double
  %i.r = fdiv double 1.000000e+00, %i.q           ; 2 uses
  %i.s = fmul double %i.r, %i.h
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %i.k
  br label %_ZNK6Assimp3IFC8TempMesh6CenterEv.exit

_ZNK6Assimp3IFC8TempMesh6CenterEv.exit:           ; preds = %bb.a, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEES3_ET0_T_SB_SA_.exit.i
  %.sroa.0518.0 = phi double [ %i.s, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEES3_ET0_T_SB_SA_.exit.i ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.w = phi <2 x double> [ %i.v, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEES3_ET0_T_SB_SA_.exit.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %i.aa = load ptr, ptr %i.x, align 8             ; 9 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 6 uses
  %i.af = icmp ugt i64 %i.ae, 1152921504606846975
  br i1 %i.af, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZNK6Assimp3IFC8TempMesh6CenterEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #28
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNK6Assimp3IFC8TempMesh6CenterEv.exit
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i, label %._crit_edge.thread, label %.noexc180

._crit_edge.thread:                               ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.ag, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.ag, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i64 0, ptr %i.ak, align 8
  br label %._crit_edge619

.noexc180:                                        ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.al = shl nuw nsw i64 %i.ad, 1
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #26 ; 13 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ae ; 4 uses
  store i64 0, ptr %i.am, align 8
  %i.ao = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.preheader, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc180
  %xtraiter = and i64 %i.ae, 3                    ; 3 uses
  %i.aq = icmp ult i64 %i.ae, 4
  br i1 %i.aq, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ae, 1152921504606846972
  br label %.lr.ph

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc180
  %i.ar = getelementptr i8, ptr %i.am, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  br label %.lr.ph.preheader

.preheader571.lr.ph.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader571.lr.ph, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader571.lr.ph.unr-lcssa, %.lr.ph.preheader
  %.0142614.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ca, %.preheader571.lr.ph.unr-lcssa ]
  %.0143613.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cb, %.preheader571.lr.ph.unr-lcssa ]
  %lcmp.mod863 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod863)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0142614.epil = phi i64 [ %i.aw, %.lr.ph.epil ], [ %.0142614.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0143613.epil = phi i64 [ %i.ax, %.lr.ph.epil ], [ %.0143613.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0143613.epil
  store i64 %.0142614.epil, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.0143613.epil
  %i.au = load i32, ptr %i.at, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = add i64 %.0142614.epil, %i.av
  %i.ax = add nuw i64 %.0143613.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader571.lr.ph, label %.lr.ph.epil, !llvm.loop !89

.preheader571.lr.ph:                              ; preds = %.lr.ph.epil, %.preheader571.lr.ph.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  store i32 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.ay, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.ay, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store i64 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader571

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0142614 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ca, %.lr.ph ] ; 2 uses
  %.0143613 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cb, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0143613
  store i64 %.0142614, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.0143613
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add i64 %.0142614, %i.bh                ; 2 uses
  %i.bj = or disjoint i64 %.0143613, 1            ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bj
  store i64 %i.bi, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bj
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add i64 %i.bi, %i.bn                    ; 2 uses
  %i.bp = or disjoint i64 %.0143613, 2            ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bp
  store i64 %i.bo, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bp
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = zext i32 %i.bs to i64
  %i.bu = add i64 %i.bo, %i.bt                    ; 2 uses
  %i.bv = or disjoint i64 %.0143613, 3            ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bv
  store i64 %i.bu, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bv
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = zext i32 %i.by to i64
  %i.ca = add i64 %i.bu, %i.bz                    ; 2 uses
  %i.cb = add nuw i64 %.0143613, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader571.lr.ph.unr-lcssa, label %.lr.ph, !llvm.loop !90

.preheader571:                                    ; preds = %.preheader571.lr.ph, %._crit_edge617
  %i.cc = phi ptr [ %i.aa, %.preheader571.lr.ph ], [ %i.cx, %._crit_edge617 ] ; 2 uses
  %i.cd = phi ptr [ %i.z, %.preheader571.lr.ph ], [ %i.cy, %._crit_edge617 ]
  %storemerge618 = phi i64 [ 0, %.preheader571.lr.ph ], [ %i.cz, %._crit_edge617 ] ; 6 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %storemerge618
  %i.cf = load i32, ptr %i.ce, align 4
  %.not660 = icmp eq i32 %i.cf, 0
  br i1 %.not660, label %._crit_edge617, label %.lr.ph616

.lr.ph616:                                        ; preds = %.preheader571
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %storemerge618
  br label %bb.d

._crit_edge619.loopexit:                          ; preds = %._crit_edge617
  %.pre695 = load ptr, ptr %i.b, align 8
  %.pre696 = load ptr, ptr %0, align 8
  br label %._crit_edge619

._crit_edge619:                                   ; preds = %._crit_edge.thread, %._crit_edge619.loopexit
  %i.ch = phi ptr [ %i.bc, %._crit_edge619.loopexit ], [ %i.ak, %._crit_edge.thread ] ; 4 uses
  %i.ci = phi ptr [ %i.az, %._crit_edge619.loopexit ], [ %i.ah, %._crit_edge.thread ] ; 6 uses
  %i.cj = phi ptr [ %i.ay, %._crit_edge619.loopexit ], [ %i.ag, %._crit_edge.thread ] ; 10 uses
  %.sroa.21516.0770778 = phi ptr [ %i.an, %._crit_edge619.loopexit ], [ null, %._crit_edge.thread ] ; 4 uses
  %.sroa.0501.0772776 = phi ptr [ %i.am, %._crit_edge619.loopexit ], [ null, %._crit_edge.thread ] ; 11 uses
  %i.ck = phi ptr [ %i.cx, %._crit_edge619.loopexit ], [ %i.aa, %._crit_edge.thread ] ; 2 uses
  %i.cl = phi ptr [ %i.cy, %._crit_edge619.loopexit ], [ %i.z, %._crit_edge.thread ] ; 2 uses
  %i.cm = phi ptr [ %.pre696, %._crit_edge619.loopexit ], [ %i.a, %._crit_edge.thread ] ; 2 uses
  %i.cn = phi ptr [ %.pre695, %._crit_edge619.loopexit ], [ %i.c, %._crit_edge.thread ] ; 2 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = sdiv exact i64 %i.cq, 24                ; 3 uses
  %i.cs = icmp ugt i64 %i.cr, 1152921504606846975
  br i1 %i.cs, label %bb.b, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i181

bb.b:                                             ; preds = %._crit_edge619
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #28
          to label %.noexc184 unwind label %bb.ab

.noexc184:                                        ; preds = %bb.b
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i181: ; preds = %._crit_edge619
  %.not.i.i.i.i182 = icmp eq ptr %i.cn, %i.cm
  br i1 %.not.i.i.i.i182, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i181
  %i.ct = shl nuw nsw i64 %i.cr, 3                ; 2 uses
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #26
          to label %.noexc185 unwind label %bb.ab ; 3 uses

.noexc185:                                        ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cu, i8 -1, i64 %i.ct, i1 false)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cr
  %i.cw = ptrtoint ptr %i.cv to i64
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

._crit_edge617.loopexit:                          ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.pre = load ptr, ptr %i.y, align 8
  br label %._crit_edge617

._crit_edge617:                                   ; preds = %._crit_edge617.loopexit, %.preheader571
  %i.cx = phi ptr [ %i.hh, %._crit_edge617.loopexit ], [ %i.cc, %.preheader571 ] ; 3 uses
  %i.cy = phi ptr [ %.pre, %._crit_edge617.loopexit ], [ %i.cd, %.preheader571 ] ; 3 uses
  %i.cz = add nuw i64 %storemerge618, 1           ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 2
  %i.de = icmp ult i64 %i.cz, %i.dd
  br i1 %i.de, label %.preheader571, label %._crit_edge619.loopexit, !llvm.loop !91

bb.d:                                             ; preds = %.lr.ph616, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.0144615 = phi i64 [ 0, %.lr.ph616 ], [ %i.hg, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %i.df = load i64, ptr %i.cg, align 8
  %i.dg = load ptr, ptr %0, align 8
  %i.dh = getelementptr [24 x i8], ptr %i.dg, i64 %i.df
  %i.di = getelementptr [24 x i8], ptr %i.dh, i64 %.0144615 ; 4 uses
  %i.dj = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not11.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.dk = load double, ptr %i.di, align 8, !noalias !92 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dm = load double, ptr %i.dl, align 8, !noalias !92 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.do = load double, ptr %i.dn, align 8, !noalias !92 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i ] ; 6 uses
  %.0812.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.dq = load double, ptr %i.dp, align 8, !noalias !92
  %i.dr = fsub double %i.dq, %i.dk                ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 40
  %i.dt = load double, ptr %i.ds, align 8, !noalias !92
  %i.du = fsub double %i.dt, %i.dm                ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 48
  %i.dw = load double, ptr %i.dv, align 8, !noalias !92
  %i.dx = fsub double %i.dw, %i.do
  %i.dy = fcmp olt double %i.dr, f0xBEB0C6F7A0000000
  br i1 %i.dy, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dz = call noundef double @llvm.fabs.f64(double %i.dr)
  %i.ea = fcmp olt double %i.dz, f0x3EB0C6F7A0000000 ; 2 uses
  %i.eb = fcmp olt double %i.du, f0xBEB0C6F7A0000000 ; 2 uses
  %.not.i.i.i.i.i = xor i1 %i.ea, true
  %brmerge.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.eb
  br i1 %brmerge.i.i.i.i.i, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ec = call noundef double @llvm.fabs.f64(double %i.du)
  %i.ed = fcmp olt double %i.ec, f0x3EB0C6F7A0000000
  %i.ee = fcmp olt double %i.dx, f0xBEB0C6F7A0000000
  %or.cond.i.i.i.i = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond.i.i.i.i, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i: ; preds = %bb.f
  %or.cond.i.i.i.i.i = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i: ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i, %bb.g, %bb.e
  br label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i: ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i ], [ 16, %bb.g ], [ 16, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0812.i.i.i.i, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i ], [ %.013.i.i.i.i, %bb.g ], [ %.013.i.i.i.i, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i ] ; 11 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ef, align 8      ; 2 uses
  %.not.i.i.i.i186 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i186, label %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i, label %bb.e, !llvm.loop !95

_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i: ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i
  %i.eg = icmp eq ptr %.19.i.i.i.i, %i.ay
  br i1 %i.eg, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ei = load double, ptr %i.eh, align 8, !noalias !96
  %i.ej = fsub double %i.dk, %i.ei                ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.el = load double, ptr %i.ek, align 8, !noalias !96
  %i.em = fsub double %i.dm, %i.el                ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.eo = load double, ptr %i.en, align 8, !noalias !96
  %i.ep = fsub double %i.do, %i.eo
  %i.eq = fcmp olt double %i.ej, f0xBEB0C6F7A0000000
  br i1 %i.eq, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.er = call noundef double @llvm.fabs.f64(double %i.ej)
  %i.es = fcmp olt double %i.er, f0x3EB0C6F7A0000000 ; 2 uses
  %i.et = fcmp olt double %i.em, f0xBEB0C6F7A0000000 ; 2 uses
  %.not.i.i187 = xor i1 %i.es, true
  %brmerge.i.i = select i1 %.not.i.i187, i1 true, i1 %i.et
  br i1 %brmerge.i.i, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eu = call noundef double @llvm.fabs.f64(double %i.em)
  %i.ev = fcmp olt double %i.eu, f0x3EB0C6F7A0000000
  %i.ew = fcmp olt double %i.ep, f0xBEB0C6F7A0000000
  %or.cond.i = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond.i, label %.critedge.i, label %bb.t

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i: ; preds = %bb.i
  %or.cond.i.i = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond.i.i, label %.critedge.i, label %bb.t

.critedge.i:                                      ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i, %bb.j, %bb.h, %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i, %bb.d
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.j ], [ %.19.i.i.i.i, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i ], [ %i.ay, %bb.d ], [ %.19.i.i.i.i, %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i ], [ %.19.i.i.i.i, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %6, ptr %3, align 8
  %i.ex = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %.noexc345 unwind label %.loopexit572 ; 9 uses

.noexc345:                                        ; preds = %.critedge.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 24, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false)
  store ptr %i.ex, ptr %i.bd, align 8
  %i.fa = invoke { ptr, ptr } @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ey)
          to label %bb.k unwind label %bb.q       ; 2 uses

bb.k:                                             ; preds = %.noexc345
  %i.fb = extractvalue { ptr, ptr } %i.fa, 0      ; 2 uses
  %i.fc = extractvalue { ptr, ptr } %i.fa, 1      ; 6 uses
  %.not.i341 = icmp eq ptr %i.fc, null
  br i1 %.not.i341, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i342 = icmp ne ptr %i.fb, null
  %i.fd = icmp eq ptr %i.fc, %i.ay
  %or.cond.i.i.i = or i1 %.not.i.i.i342, %i.fd
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.ff = load double, ptr %i.ey, align 8, !noalias !99
  %i.fg = load double, ptr %i.fe, align 8, !noalias !99
  %i.fh = fsub double %i.ff, %i.fg                ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.fj = load double, ptr %i.fi, align 8, !noalias !99
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  %i.fl = load double, ptr %i.fk, align 8, !noalias !99
  %i.fm = fsub double %i.fj, %i.fl                ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fo = load double, ptr %i.fn, align 8, !noalias !99
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.fq = load double, ptr %i.fp, align 8, !noalias !99
  %i.fr = fsub double %i.fo, %i.fq
  %i.fs = fcmp olt double %i.fh, f0xBEB0C6F7A0000000
  br i1 %i.fs, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ft = call noundef double @llvm.fabs.f64(double %i.fh)
  %i.fu = fcmp olt double %i.ft, f0x3EB0C6F7A0000000 ; 2 uses
  %i.fv = fcmp olt double %i.fm, f0xBEB0C6F7A0000000 ; 2 uses
  %or.cond.i.i.i.i343 = select i1 %i.fu, i1 %i.fv, i1 false
  %.not.i.i.i.i344 = xor i1 %i.fu, true
  %brmerge.i.i.i.i = select i1 %.not.i.i.i.i344, i1 true, i1 %i.fv
  br i1 %brmerge.i.i.i.i, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fw = call noundef double @llvm.fabs.f64(double %i.fm)
  %i.fx = fcmp olt double %i.fw, f0x3EB0C6F7A0000000
  br i1 %i.fx, label %bb.p, label %.thread.i

bb.p:                                             ; preds = %bb.o
  %i.fy = fcmp olt double %i.fr, f0xBEB0C6F7A0000000
  br label %.thread.i

.thread.i:                                        ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %i.fz = phi i1 [ %i.fy, %bb.p ], [ true, %bb.l ], [ %or.cond.i.i.i.i343, %bb.n ], [ true, %bb.m ], [ false, %bb.o ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fz, ptr noundef nonnull %i.ex, ptr noundef nonnull %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %i.ay) #25
  %i.ga = load i64, ptr %i.bc, align 8
  %i.gb = add i64 %i.ga, 1
  store i64 %i.gb, ptr %i.bc, align 8
  br label %.noexc188

bb.q:                                             ; preds = %.noexc345
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

bb.r:                                             ; preds = %bb.k
  %i.gd = load ptr, ptr %i.ez, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ex, i64 72
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #27
  br label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i

_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i: ; preds = %bb.s, %bb.r
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 80) #27
  br label %.noexc188

.noexc188:                                        ; preds = %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i, %.thread.i
  %.sroa.0.010.i = phi ptr [ %i.ex, %.thread.i ], [ %i.fb, %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.t

bb.t:                                             ; preds = %.noexc188, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i, %bb.j
  %.sroa.06.0.i = phi ptr [ %.sroa.0.010.i, %.noexc188 ], [ %.19.i.i.i.i, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i ], [ %.19.i.i.i.i, %bb.j ] ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 64 ; 4 uses
  %i.gl = load ptr, ptr %i.gk, align 8            ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 72 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8
  %.not.i = icmp eq ptr %i.gl, %i.gn
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %storemerge618, ptr %i.gl, align 8
  %i.go = load ptr, ptr %i.gk, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.gp, ptr %i.gk, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.v:                                             ; preds = %bb.t
  %i.gq = load ptr, ptr %i.gj, align 8            ; 4 uses
  %i.gr = ptrtoint ptr %i.gl to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs                    ; 6 uses
  %i.gu = icmp eq i64 %i.gt, 9223372036854775800
  br i1 %i.gu, label %bb.w, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #28
          to label %.noexc189 unwind label %.loopexit.split-lp573

.noexc189:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.gv = ashr exact i64 %i.gt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gv, i64 1)
  %i.gw = add nsw i64 %.sroa.speculated.i.i.i, %i.gv ; 2 uses
  %i.gx = icmp ult i64 %i.gw, %i.gv
  %i.gy = call i64 @llvm.umin.i64(i64 %i.gw, i64 1152921504606846975)
  %i.gz = select i1 %i.gx, i64 1152921504606846975, i64 %i.gy ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gz, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ha = shl nuw nsw i64 %i.gz, 3
  %i.hb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ha) #26
          to label %.noexc190 unwind label %.loopexit572 ; 4 uses

.noexc190:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 %i.gt ; 2 uses
  store i64 %storemerge618, ptr %i.hc, align 8
  %i.hd = icmp sgt i64 %i.gt, 0
  br i1 %i.hd, label %bb.x, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %.noexc190
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hb, ptr align 8 %i.gq, i64 %i.gt, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %.noexc190
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.not.i17.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gt) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.hb, ptr %i.gj, align 8
  store ptr %i.he, ptr %i.gk, align 8
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.gz
  store ptr %i.hf, ptr %i.gm, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.u
  %i.hg = add nuw nsw i64 %.0144615, 1            ; 2 uses
  %i.hh = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %storemerge618
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = zext i32 %i.hj to i64
  %i.hl = icmp samesign ult i64 %i.hg, %i.hk
  br i1 %i.hl, label %bb.d, label %._crit_edge617.loopexit, !llvm.loop !102

.loopexit572:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %.critedge.i
  %lpad.loopexit574 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp573:                            ; preds = %bb.w
  %lpad.loopexit.split-lp575 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %.noexc185, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i181
  %.sroa.21.0 = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i181 ], [ %i.cw, %.noexc185 ] ; 2 uses
  %.sroa.0482.0 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i181 ], [ %i.cu, %.noexc185 ] ; 12 uses
  %i.hm = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %bb.z unwind label %bb.ac      ; 7 uses

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %.not661 = icmp eq ptr %i.cl, %i.ck
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.hm, i8 0, i64 80, i1 false)
  br i1 %.not661, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %.preheader570.lr.ph

.preheader570.lr.ph:                              ; preds = %bb.z
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hp = ptrtoint ptr %i.hm to i64               ; 2 uses
  br label %.preheader570

.preheader570:                                    ; preds = %.preheader570.lr.ph, %._crit_edge622
  %i.hq = phi ptr [ %i.ck, %.preheader570.lr.ph ], [ %i.il, %._crit_edge622 ] ; 2 uses
  %i.hr = phi ptr [ %i.cl, %.preheader570.lr.ph ], [ %i.im, %._crit_edge622 ]
  %.0145623 = phi i64 [ 0, %.preheader570.lr.ph ], [ %i.in, %._crit_edge622 ] ; 5 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %.0145623
  %i.ht = load i32, ptr %i.hs, align 4            ; 2 uses
  %.not662 = icmp eq i32 %i.ht, 0
  br i1 %.not662, label %._crit_edge622, label %.lr.ph621

.lr.ph621:                                        ; preds = %.preheader570
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0501.0772776, i64 %.0145623
  br label %bb.ad

._crit_edge624:                                   ; preds = %._crit_edge622
  %i.hw = icmp eq ptr %i.im, %i.il
  br i1 %i.hw, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge624
  %i.hx = add nsw i64 %i.ir, 63                   ; 2 uses
  %i.hy = lshr i64 %i.hx, 3
  %i.hz = and i64 %i.hy, 2305843009213693944
  %i.ia = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hz) #26
          to label %.noexc197 unwind label %bb.bt ; 4 uses

.noexc197:                                        ; preds = %bb.aa
  %i.ib = lshr i64 %i.hx, 6                       ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.ib
  %i.id = sdiv i64 %i.ir, 64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.id
  %i.if = and i64 %i.ir, -9223372036854775745
  %i.ig = icmp ugt i64 %i.if, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ig, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ie, i64 %storemerge.idx.i.i.i.i.i
  %i.ih = trunc i64 %i.ir to i32
  %i.ii = and i32 %i.ih, 63
  %.idx.i = shl nuw nsw i64 %i.ib, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ia, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

bb.ab:                                            ; preds = %bb.c, %bb.b
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

._crit_edge622.loopexit:                          ; preds = %bb.bs
  %.pre699 = load ptr, ptr %i.y, align 8
  br label %._crit_edge622

._crit_edge622:                                   ; preds = %._crit_edge622.loopexit, %.preheader570
  %i.il = phi ptr [ %i.qf, %._crit_edge622.loopexit ], [ %i.hq, %.preheader570 ] ; 3 uses
  %i.im = phi ptr [ %.pre699, %._crit_edge622.loopexit ], [ %i.hr, %.preheader570 ] ; 3 uses
  %i.in = add nuw i64 %.0145623, 1                ; 2 uses
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = ptrtoint ptr %i.il to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = ashr exact i64 %i.iq, 2                 ; 5 uses
  %i.is = icmp ult i64 %i.in, %i.ir
  br i1 %i.is, label %.preheader570, label %._crit_edge624, !llvm.loop !103

bb.ad:                                            ; preds = %.lr.ph621, %bb.bs
  %i.it = phi i64 [ %i.hu, %.lr.ph621 ], [ %i.qi, %bb.bs ]
  %.0146620 = phi i64 [ 0, %.lr.ph621 ], [ %i.iw, %bb.bs ] ; 2 uses
  %i.iu = load i64, ptr %i.hv, align 8            ; 2 uses
  %i.iv = add i64 %i.iu, %.0146620                ; 2 uses
  %i.iw = add nuw nsw i64 %.0146620, 1            ; 3 uses
  %i.ix = load ptr, ptr %0, align 8               ; 3 uses
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %i.ix, i64 %i.iv ; 4 uses
  %i.iz = load ptr, ptr %i.ci, align 8            ; 4 uses
  %.not11.i.i.i.i198 = icmp eq ptr %i.iz, null
  br i1 %.not11.i.i.i.i198, label %.critedge.i215, label %.lr.ph.i.i.i.i199

.lr.ph.i.i.i.i199:                                ; preds = %bb.ad
  %i.ja = load double, ptr %i.iy, align 8, !noalias !104 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jc = load double, ptr %i.jb, align 8, !noalias !104 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.je = load double, ptr %i.jd, align 8, !noalias !104 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205, %.lr.ph.i.i.i.i199
  %.013.i.i.i.i200 = phi ptr [ %i.iz, %.lr.ph.i.i.i.i199 ], [ %.1.i.i.i.i208, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205 ] ; 6 uses
  %.0812.i.i.i.i201 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i199 ], [ %.19.i.i.i.i207, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205 ]
  %i.jf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i200, i64 32
  %i.jg = load double, ptr %i.jf, align 8, !noalias !104
  %i.jh = fsub double %i.jg, %i.ja                ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i200, i64 40
  %i.jj = load double, ptr %i.ji, align 8, !noalias !104
  %i.jk = fsub double %i.jj, %i.jc                ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i200, i64 48
  %i.jm = load double, ptr %i.jl, align 8, !noalias !104
  %i.jn = fsub double %i.jm, %i.je
  %i.jo = fcmp olt double %i.jh, f0xBEB0C6F7A0000000
  br i1 %i.jo, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i219, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jp = call noundef double @llvm.fabs.f64(double %i.jh)
  %i.jq = fcmp olt double %i.jp, f0x3EB0C6F7A0000000 ; 2 uses
  %i.jr = fcmp olt double %i.jk, f0xBEB0C6F7A0000000 ; 2 uses
  %.not.i.i.i.i.i202 = xor i1 %i.jq, true
  %brmerge.i.i.i.i.i203 = select i1 %.not.i.i.i.i.i202, i1 true, i1 %i.jr
  br i1 %brmerge.i.i.i.i.i203, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i220, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.js = call noundef double @llvm.fabs.f64(double %i.jk)
  %i.jt = fcmp olt double %i.js, f0x3EB0C6F7A0000000
  %i.ju = fcmp olt double %i.jn, f0xBEB0C6F7A0000000
  %or.cond.i.i.i.i204 = select i1 %i.jt, i1 %i.ju, i1 false
  br i1 %or.cond.i.i.i.i204, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i219, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i220: ; preds = %bb.af
  %or.cond.i.i.i.i.i221 = select i1 %i.jq, i1 %i.jr, i1 false
  br i1 %or.cond.i.i.i.i.i221, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i219, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i219: ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i220, %bb.ag, %bb.ae
  br label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205: ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i219, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i220, %bb.ag
  %.sink.i.i.i.i206 = phi i64 [ 24, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i219 ], [ 16, %bb.ag ], [ 16, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i220 ]
  %.19.i.i.i.i207 = phi ptr [ %.0812.i.i.i.i201, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i219 ], [ %.013.i.i.i.i200, %bb.ag ], [ %.013.i.i.i.i200, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i220 ] ; 11 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i200, i64 %.sink.i.i.i.i206
  %.1.i.i.i.i208 = load ptr, ptr %i.jv, align 8   ; 2 uses
  %.not.i.i.i.i209 = icmp eq ptr %.1.i.i.i.i208, null
  br i1 %.not.i.i.i.i209, label %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i210, label %bb.ae, !llvm.loop !95

_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i210: ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205
  %i.jw = icmp eq ptr %.19.i.i.i.i207, %i.cj
  br i1 %i.jw, label %.critedge.i215, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i210
  %i.jx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i207, i64 32
  %i.jy = load double, ptr %i.jx, align 8, !noalias !107
  %i.jz = fsub double %i.ja, %i.jy                ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i207, i64 40
  %i.kb = load double, ptr %i.ka, align 8, !noalias !107
  %i.kc = fsub double %i.jc, %i.kb                ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i207, i64 48
  %i.ke = load double, ptr %i.kd, align 8, !noalias !107
  %i.kf = fsub double %i.je, %i.ke
  %i.kg = fcmp olt double %i.jz, f0xBEB0C6F7A0000000
  br i1 %i.kg, label %.critedge.i215, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kh = call noundef double @llvm.fabs.f64(double %i.jz)
  %i.ki = fcmp olt double %i.kh, f0x3EB0C6F7A0000000 ; 2 uses
  %i.kj = fcmp olt double %i.kc, f0xBEB0C6F7A0000000 ; 2 uses
  %.not.i.i211 = xor i1 %i.ki, true
  %brmerge.i.i212 = select i1 %.not.i.i211, i1 true, i1 %i.kj
  br i1 %brmerge.i.i212, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i217, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kk = call noundef double @llvm.fabs.f64(double %i.kc)
  %i.kl = fcmp olt double %i.kk, f0x3EB0C6F7A0000000
  %i.km = fcmp olt double %i.kf, f0xBEB0C6F7A0000000
  %or.cond.i213 = select i1 %i.kl, i1 %i.km, i1 false
  br i1 %or.cond.i213, label %.critedge.i215, label %bb.at

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i217: ; preds = %bb.ai
  %or.cond.i.i218 = select i1 %i.ki, i1 %i.kj, i1 false
  br i1 %or.cond.i.i218, label %.critedge.i215, label %bb.at

.critedge.i215:                                   ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i217, %bb.aj, %bb.ah, %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i210, %bb.ad
  %.08.lcssa.i.i.i11.i216 = phi ptr [ %.19.i.i.i.i207, %bb.aj ], [ %.19.i.i.i.i207, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i217 ], [ %i.cj, %bb.ad ], [ %.19.i.i.i.i207, %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i210 ], [ %.19.i.i.i.i207, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %6, ptr %2, align 8
  %i.kn = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %.noexc356 unwind label %bb.bp ; 9 uses

.noexc356:                                        ; preds = %.critedge.i215
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ko, ptr noundef nonnull align 8 dereferenceable(24) %i.iy, i64 24, i1 false)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kp, i8 0, i64 24, i1 false)
  store ptr %i.kn, ptr %i.hn, align 8
  %i.kq = invoke { ptr, ptr } @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %.08.lcssa.i.i.i11.i216, ptr noundef nonnull align 8 dereferenceable(24) %i.ko)
          to label %bb.ak unwind label %bb.aq     ; 2 uses

bb.ak:                                            ; preds = %.noexc356
  %i.kr = extractvalue { ptr, ptr } %i.kq, 0      ; 2 uses
  %i.ks = extractvalue { ptr, ptr } %i.kq, 1      ; 6 uses
  %.not.i346 = icmp eq ptr %i.ks, null
  br i1 %.not.i346, label %bb.ar, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not.i.i.i347 = icmp ne ptr %i.kr, null
  %i.kt = icmp eq ptr %i.ks, %i.cj
  %or.cond.i.i.i348 = or i1 %.not.i.i.i347, %i.kt
  br i1 %or.cond.i.i.i348, label %.thread.i352, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.kv = load double, ptr %i.ko, align 8, !noalias !110
  %i.kw = load double, ptr %i.ku, align 8, !noalias !110
  %i.kx = fsub double %i.kv, %i.kw                ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  %i.kz = load double, ptr %i.ky, align 8, !noalias !110
  %i.la = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  %i.lb = load double, ptr %i.la, align 8, !noalias !110
  %i.lc = fsub double %i.kz, %i.lb                ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kn, i64 48
  %i.le = load double, ptr %i.ld, align 8, !noalias !110
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ks, i64 48
  %i.lg = load double, ptr %i.lf, align 8, !noalias !110
  %i.lh = fsub double %i.le, %i.lg
  %i.li = fcmp olt double %i.kx, f0xBEB0C6F7A0000000
  br i1 %i.li, label %.thread.i352, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lj = call noundef double @llvm.fabs.f64(double %i.kx)
  %i.lk = fcmp olt double %i.lj, f0x3EB0C6F7A0000000 ; 2 uses
  %i.ll = fcmp olt double %i.lc, f0xBEB0C6F7A0000000 ; 2 uses
  %or.cond.i.i.i.i349 = select i1 %i.lk, i1 %i.ll, i1 false
  %.not.i.i.i.i350 = xor i1 %i.lk, true
  %brmerge.i.i.i.i351 = select i1 %.not.i.i.i.i350, i1 true, i1 %i.ll
  br i1 %brmerge.i.i.i.i351, label %.thread.i352, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lm = call noundef double @llvm.fabs.f64(double %i.lc)
  %i.ln = fcmp olt double %i.lm, f0x3EB0C6F7A0000000
  br i1 %i.ln, label %bb.ap, label %.thread.i352

bb.ap:                                            ; preds = %bb.ao
  %i.lo = fcmp olt double %i.lh, f0xBEB0C6F7A0000000
  br label %.thread.i352

.thread.i352:                                     ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %i.lp = phi i1 [ %i.lo, %bb.ap ], [ true, %bb.al ], [ %or.cond.i.i.i.i349, %bb.an ], [ true, %bb.am ], [ false, %bb.ao ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.lp, ptr noundef nonnull %i.kn, ptr noundef nonnull %i.ks, ptr noundef nonnull align 8 dereferenceable(32) %i.cj) #25
  %i.lq = load i64, ptr %i.ch, align 8
  %i.lr = add i64 %i.lq, 1
  store i64 %i.lr, ptr %i.ch, align 8
  br label %.noexc222

bb.aq:                                            ; preds = %.noexc356
  %i.ls = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit335

bb.ar:                                            ; preds = %bb.ak
  %i.lt = load ptr, ptr %i.kp, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i354 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i.i.i.i.i.i354, label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i355, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kn, i64 72
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = ptrtoint ptr %i.lv to i64
  %i.lx = ptrtoint ptr %i.lt to i64
  %i.ly = sub i64 %i.lw, %i.lx
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.ly) #27
  br label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i355

_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i355: ; preds = %bb.as, %bb.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef 80) #27
  br label %.noexc222

.noexc222:                                        ; preds = %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i355, %.thread.i352
  %.sroa.0.010.i353 = phi ptr [ %i.kn, %.thread.i352 ], [ %i.kr, %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i355 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.pre697 = load ptr, ptr %0, align 8
  %.pre698 = load ptr, ptr %i.ci, align 8
  br label %bb.at

bb.at:                                            ; preds = %.noexc222, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i217, %bb.aj
  %i.lz = phi ptr [ %.pre698, %.noexc222 ], [ %i.iz, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i217 ], [ %i.iz, %bb.aj ] ; 2 uses
  %i.ma = phi ptr [ %.pre697, %.noexc222 ], [ %i.ix, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i217 ], [ %i.ix, %bb.aj ]
  %.sroa.06.0.i214 = phi ptr [ %.sroa.0.010.i353, %.noexc222 ], [ %.19.i.i.i.i207, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i217 ], [ %.19.i.i.i.i207, %bb.aj ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i214, i64 56
  %i.mc = urem i64 %i.iw, %i.it
  %i.md = getelementptr [24 x i8], ptr %i.ma, i64 %i.iu
  %i.me = getelementptr [24 x i8], ptr %i.md, i64 %i.mc ; 4 uses
  %.not11.i.i.i.i224 = icmp eq ptr %i.lz, null
  br i1 %.not11.i.i.i.i224, label %.critedge.i241, label %.lr.ph.i.i.i.i225

.lr.ph.i.i.i.i225:                                ; preds = %bb.at
  %i.mf = load double, ptr %i.me, align 8, !noalias !113 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mh = load double, ptr %i.mg, align 8, !noalias !113 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mj = load double, ptr %i.mi, align 8, !noalias !113 ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i231, %.lr.ph.i.i.i.i225
  %.013.i.i.i.i226 = phi ptr [ %i.lz, %.lr.ph.i.i.i.i225 ], [ %.1.i.i.i.i234, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i231 ] ; 6 uses
  %.0812.i.i.i.i227 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i225 ], [ %.19.i.i.i.i233, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i231 ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i226, i64 32
  %i.ml = load double, ptr %i.mk, align 8, !noalias !113
  %i.mm = fsub double %i.ml, %i.mf                ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i226, i64 40
  %i.mo = load double, ptr %i.mn, align 8, !noalias !113
  %i.mp = fsub double %i.mo, %i.mh                ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i226, i64 48
  %i.mr = load double, ptr %i.mq, align 8, !noalias !113
  %i.ms = fsub double %i.mr, %i.mj
  %i.mt = fcmp olt double %i.mm, f0xBEB0C6F7A0000000
  br i1 %i.mt, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i245, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mu = call noundef double @llvm.fabs.f64(double %i.mm)
  %i.mv = fcmp olt double %i.mu, f0x3EB0C6F7A0000000 ; 2 uses
  %i.mw = fcmp olt double %i.mp, f0xBEB0C6F7A0000000 ; 2 uses
  %.not.i.i.i.i.i228 = xor i1 %i.mv, true
  %brmerge.i.i.i.i.i229 = select i1 %.not.i.i.i.i.i228, i1 true, i1 %i.mw
  br i1 %brmerge.i.i.i.i.i229, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i246, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mx = call noundef double @llvm.fabs.f64(double %i.mp)
  %i.my = fcmp olt double %i.mx, f0x3EB0C6F7A0000000
  %i.mz = fcmp olt double %i.ms, f0xBEB0C6F7A0000000
  %or.cond.i.i.i.i230 = select i1 %i.my, i1 %i.mz, i1 false
  br i1 %or.cond.i.i.i.i230, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i245, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i231

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i246: ; preds = %bb.av
  %or.cond.i.i.i.i.i247 = select i1 %i.mv, i1 %i.mw, i1 false
  br i1 %or.cond.i.i.i.i.i247, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i245, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i231

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i245: ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i246, %bb.aw, %bb.au
  br label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i231

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i231: ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i245, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i246, %bb.aw
  %.sink.i.i.i.i232 = phi i64 [ 24, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i245 ], [ 16, %bb.aw ], [ 16, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i246 ]
  %.19.i.i.i.i233 = phi ptr [ %.0812.i.i.i.i227, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i245 ], [ %.013.i.i.i.i226, %bb.aw ], [ %.013.i.i.i.i226, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i246 ] ; 11 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i226, i64 %.sink.i.i.i.i232
  %.1.i.i.i.i234 = load ptr, ptr %i.na, align 8   ; 2 uses
  %.not.i.i.i.i235 = icmp eq ptr %.1.i.i.i.i234, null
  br i1 %.not.i.i.i.i235, label %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i236, label %bb.au, !llvm.loop !95

_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i236: ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i231
  %i.nb = icmp eq ptr %.19.i.i.i.i233, %i.cj
  br i1 %i.nb, label %.critedge.i241, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i236
  %i.nc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i233, i64 32
  %i.nd = load double, ptr %i.nc, align 8, !noalias !116
  %i.ne = fsub double %i.mf, %i.nd                ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i233, i64 40
  %i.ng = load double, ptr %i.nf, align 8, !noalias !116
  %i.nh = fsub double %i.mh, %i.ng                ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i233, i64 48
  %i.nj = load double, ptr %i.ni, align 8, !noalias !116
  %i.nk = fsub double %i.mj, %i.nj
  %i.nl = fcmp olt double %i.ne, f0xBEB0C6F7A0000000
  br i1 %i.nl, label %.critedge.i241, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nm = call noundef double @llvm.fabs.f64(double %i.ne)
  %i.nn = fcmp olt double %i.nm, f0x3EB0C6F7A0000000 ; 2 uses
  %i.no = fcmp olt double %i.nh, f0xBEB0C6F7A0000000 ; 2 uses
  %.not.i.i237 = xor i1 %i.nn, true
  %brmerge.i.i238 = select i1 %.not.i.i237, i1 true, i1 %i.no
  br i1 %brmerge.i.i238, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i243, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.np = call noundef double @llvm.fabs.f64(double %i.nh)
  %i.nq = fcmp olt double %i.np, f0x3EB0C6F7A0000000
  %i.nr = fcmp olt double %i.nk, f0xBEB0C6F7A0000000
  %or.cond.i239 = select i1 %i.nq, i1 %i.nr, i1 false
  br i1 %or.cond.i239, label %.critedge.i241, label %bb.bj

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i243: ; preds = %bb.ay
  %or.cond.i.i244 = select i1 %i.nn, i1 %i.no, i1 false
  br i1 %or.cond.i.i244, label %.critedge.i241, label %bb.bj

.critedge.i241:                                   ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i243, %bb.az, %bb.ax, %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i236, %bb.at
  %.08.lcssa.i.i.i11.i242 = phi ptr [ %.19.i.i.i.i233, %bb.az ], [ %.19.i.i.i.i233, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i243 ], [ %i.cj, %bb.at ], [ %.19.i.i.i.i233, %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i236 ], [ %.19.i.i.i.i233, %bb.ax ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %6, ptr %1, align 8
  %i.ns = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %.noexc370 unwind label %bb.bq ; 9 uses

.noexc370:                                        ; preds = %.critedge.i241
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nt, ptr noundef nonnull align 8 dereferenceable(24) %i.me, i64 24, i1 false)
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nu, i8 0, i64 24, i1 false)
  store ptr %i.ns, ptr %i.ho, align 8
  %i.nv = invoke { ptr, ptr } @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %.08.lcssa.i.i.i11.i242, ptr noundef nonnull align 8 dereferenceable(24) %i.nt)
          to label %bb.ba unwind label %bb.bg     ; 2 uses

bb.ba:                                            ; preds = %.noexc370
  %i.nw = extractvalue { ptr, ptr } %i.nv, 0      ; 2 uses
  %i.nx = extractvalue { ptr, ptr } %i.nv, 1      ; 6 uses
  %.not.i360 = icmp eq ptr %i.nx, null
  br i1 %.not.i360, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i.i361 = icmp ne ptr %i.nw, null
  %i.ny = icmp eq ptr %i.nx, %i.cj
  %or.cond.i.i.i362 = or i1 %.not.i.i.i361, %i.ny
  br i1 %or.cond.i.i.i362, label %.thread.i366, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 32
  %i.oa = load double, ptr %i.nt, align 8, !noalias !119
  %i.ob = load double, ptr %i.nz, align 8, !noalias !119
  %i.oc = fsub double %i.oa, %i.ob                ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ns, i64 40
  %i.oe = load double, ptr %i.od, align 8, !noalias !119
  %i.of = getelementptr inbounds nuw i8, ptr %i.nx, i64 40
  %i.og = load double, ptr %i.of, align 8, !noalias !119
  %i.oh = fsub double %i.oe, %i.og                ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  %i.oj = load double, ptr %i.oi, align 8, !noalias !119
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nx, i64 48
  %i.ol = load double, ptr %i.ok, align 8, !noalias !119
  %i.om = fsub double %i.oj, %i.ol
  %i.on = fcmp olt double %i.oc, f0xBEB0C6F7A0000000
  br i1 %i.on, label %.thread.i366, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.oo = call noundef double @llvm.fabs.f64(double %i.oc)
  %i.op = fcmp olt double %i.oo, f0x3EB0C6F7A0000000 ; 2 uses
  %i.oq = fcmp olt double %i.oh, f0xBEB0C6F7A0000000 ; 2 uses
  %or.cond.i.i.i.i363 = select i1 %i.op, i1 %i.oq, i1 false
  %.not.i.i.i.i364 = xor i1 %i.op, true
  %brmerge.i.i.i.i365 = select i1 %.not.i.i.i.i364, i1 true, i1 %i.oq
  br i1 %brmerge.i.i.i.i365, label %.thread.i366, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.or = call noundef double @llvm.fabs.f64(double %i.oh)
  %i.os = fcmp olt double %i.or, f0x3EB0C6F7A0000000
  br i1 %i.os, label %bb.bf, label %.thread.i366

bb.bf:                                            ; preds = %bb.be
  %i.ot = fcmp olt double %i.om, f0xBEB0C6F7A0000000
  br label %.thread.i366

.thread.i366:                                     ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb
  %i.ou = phi i1 [ %i.ot, %bb.bf ], [ true, %bb.bb ], [ %or.cond.i.i.i.i363, %bb.bd ], [ true, %bb.bc ], [ false, %bb.be ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ou, ptr noundef nonnull %i.ns, ptr noundef nonnull %i.nx, ptr noundef nonnull align 8 dereferenceable(32) %i.cj) #25
  %i.ov = load i64, ptr %i.ch, align 8
  %i.ow = add i64 %i.ov, 1
  store i64 %i.ow, ptr %i.ch, align 8
  br label %.noexc248

bb.bg:                                            ; preds = %.noexc370
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit335

bb.bh:                                            ; preds = %bb.ba
  %i.oy = load ptr, ptr %i.nu, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i368 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i.i.i.i.i.i368, label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i369, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ns, i64 72
  %i.pa = load ptr, ptr %i.oz, align 8
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = ptrtoint ptr %i.oy to i64
  %i.pd = sub i64 %i.pb, %i.pc
  call void @_ZdlPvm(ptr noundef nonnull %i.oy, i64 noundef %i.pd) #27
  br label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i369

_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i369: ; preds = %bb.bi, %bb.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.ns, i64 noundef 80) #27
  br label %.noexc248

.noexc248:                                        ; preds = %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i369, %.thread.i366
  %.sroa.0.010.i367 = phi ptr [ %i.ns, %.thread.i366 ], [ %i.nw, %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.bj

bb.bj:                                            ; preds = %.noexc248, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i243, %bb.az
  %.sroa.06.0.i240 = phi ptr [ %.sroa.0.010.i367, %.noexc248 ], [ %.19.i.i.i.i233, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i243 ], [ %.19.i.i.i.i233, %bb.az ] ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i240, i64 56
  %i.pf = load ptr, ptr %i.mb, align 8            ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i214, i64 64
  %i.ph = load ptr, ptr %i.pg, align 8            ; 2 uses
  %i.pi = load ptr, ptr %i.pe, align 8            ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i240, i64 64
  %i.pk = load ptr, ptr %i.pj, align 8            ; 2 uses
  %i.pl = icmp ne ptr %i.pf, %i.ph
  %i.pm = icmp ne ptr %i.pi, %i.pk
  %or.cond15.i.i = select i1 %i.pl, i1 %i.pm, i1 false
  br i1 %or.cond15.i.i, label %.lr.ph.i.i250, label %.loopexit569

.lr.ph.i.i250:                                    ; preds = %bb.bj, %bb.bo
  %.sroa.0.018.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.bo ], [ %i.hm, %bb.bj ] ; 4 uses
  %.sroa.011.017.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.bo ], [ %i.pf, %bb.bj ] ; 4 uses
  %.sroa.07.016.i.i = phi ptr [ %.sroa.07.1.i.i, %bb.bo ], [ %i.pi, %bb.bj ] ; 4 uses
  %i.pn = load i64, ptr %.sroa.011.017.i.i, align 8 ; 3 uses
  %i.po = load i64, ptr %.sroa.07.016.i.i, align 8 ; 2 uses
  %i.pp = icmp ult i64 %i.pn, %i.po
  br i1 %i.pp, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph.i.i250
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i, i64 8
  br label %bb.bo

bb.bl:                                            ; preds = %.lr.ph.i.i250
  %i.pr = icmp ult i64 %i.po, %i.pn
  br i1 %i.pr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.07.016.i.i, i64 8
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  store i64 %i.pn, ptr %.sroa.0.018.i.i, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.07.016.i.i, i64 8
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bk
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.016.i.i, %bb.bk ], [ %i.ps, %bb.bm ], [ %i.pu, %bb.bn ] ; 2 uses
  %.sroa.011.1.i.i = phi ptr [ %i.pq, %bb.bk ], [ %.sroa.011.017.i.i, %bb.bm ], [ %i.pt, %bb.bn ] ; 2 uses
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.018.i.i, %bb.bk ], [ %.sroa.0.018.i.i, %bb.bm ], [ %i.pv, %bb.bn ] ; 2 uses
  %i.pw = icmp ne ptr %.sroa.011.1.i.i, %i.ph
  %i.px = icmp ne ptr %.sroa.07.1.i.i, %i.pk
  %or.cond.i.i251 = select i1 %i.pw, i1 %i.px, i1 false
  br i1 %or.cond.i.i251, label %.lr.ph.i.i250, label %.loopexit569.loopexit, !llvm.loop !122

.loopexit569.loopexit:                            ; preds = %bb.bo
  %.pre701 = ptrtoint ptr %.sroa.0.1.i.i to i64
  br label %.loopexit569

.loopexit569:                                     ; preds = %.loopexit569.loopexit, %bb.bj
  %.pre-phi = phi i64 [ %.pre701, %.loopexit569.loopexit ], [ %i.hp, %bb.bj ]
  %i.py = sub i64 %.pre-phi, %i.hp
  %.not176 = icmp eq i64 %i.py, 16
  br i1 %.not176, label %bb.br, label %bb.bs

bb.bp:                                            ; preds = %.critedge.i215
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit335

bb.bq:                                            ; preds = %.critedge.i241
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit335

bb.br:                                            ; preds = %.loopexit569
  %i.qb = load i64, ptr %i.hm, align 8
  %i.qc = icmp eq i64 %i.qb, %.0145623
  %spec.select.idx = select i1 %i.qc, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.hm, i64 %spec.select.idx
  %i.qd = load i64, ptr %spec.select, align 8
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0482.0, i64 %i.iv
  store i64 %i.qd, ptr %i.qe, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit569, %bb.br
  %i.qf = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %.0145623
  %i.qh = load i32, ptr %i.qg, align 4
  %i.qi = zext i32 %i.qh to i64                   ; 2 uses
  %i.qj = icmp samesign ult i64 %i.iw, %i.qi
  br i1 %i.qj, label %bb.ad, label %._crit_edge622.loopexit, !llvm.loop !123

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.z, %.noexc197, %._crit_edge624
  %.sroa.0462.0 = phi ptr [ null, %._crit_edge624 ], [ %i.ia, %.noexc197 ], [ null, %bb.z ] ; 10 uses
  %.sroa.14469.0 = phi ptr [ null, %._crit_edge624 ], [ %storemerge.i.i.i.i.i, %.noexc197 ], [ null, %bb.z ] ; 2 uses
  %.sroa.17.0 = phi i32 [ 0, %._crit_edge624 ], [ %i.ii, %.noexc197 ], [ 0, %bb.z ] ; 2 uses
  %.sroa.20470.0 = phi ptr [ null, %._crit_edge624 ], [ %i.ic, %.noexc197 ], [ null, %bb.z ] ; 4 uses
  %i.qk = icmp ne ptr %.sroa.0462.0, %.sroa.14469.0
  %i.ql = icmp ne i32 %.sroa.17.0, 0
  %.not3.i9.i.i = or i1 %i.qk, %i.ql
  br i1 %.not3.i9.i.i, label %_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph, label %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit.thread

_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph: ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.qm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.qn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.qo = extractelement <2 x double> %i.w, i64 0 ; 2 uses
  %i.qp = extractelement <2 x double> %i.w, i64 1 ; 2 uses
  br label %_ZNSt13_Bit_iteratorppEv.exit.i.i

_ZNSt13_Bit_iteratorppEv.exit.i.i:                ; preds = %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge, %_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph
  %.012.i.i = phi i64 [ 0, %_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph ], [ %.012.i.i.be, %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge ]
  %.sroa.5.011.i.i = phi i32 [ 0, %_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph ], [ %.sroa.5.011.i.i.be, %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge ] ; 3 uses
  %.sroa.03.010.i.i = phi ptr [ %.sroa.0462.0, %_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph ], [ %.sroa.03.010.i.i.be, %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge ] ; 2 uses
  %i.qq = zext nneg i32 %.sroa.5.011.i.i to i64
  %i.qr = load i64, ptr %.sroa.03.010.i.i, align 8
  %i.qs = xor i64 %i.qr, -1
  %i.qt = lshr i64 %i.qs, %i.qq
  %i.qu = and i64 %i.qt, 1
  %spec.select.i.i = add nuw nsw i64 %i.qu, %.012.i.i ; 2 uses
  %i.qv = add i32 %.sroa.5.011.i.i, 1
  %i.qw = icmp eq i32 %.sroa.5.011.i.i, 63        ; 2 uses
  %spec.select7.idx.i.i = select i1 %i.qw, i64 8, i64 0
  %spec.select7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i.i, i64 %spec.select7.idx.i.i ; 2 uses
  %spec.select8.i.i = select i1 %i.qw, i32 0, i32 %i.qv ; 2 uses
  %i.qx = icmp ne ptr %spec.select7.i.i, %.sroa.14469.0
  %i.qy = icmp ne i32 %spec.select8.i.i, %.sroa.17.0
  %.not3.i.i.i = or i1 %i.qy, %i.qx
  br i1 %.not3.i.i.i, label %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge, label %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit

_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge:       ; preds = %_ZNSt13_Bit_iteratorppEv.exit.i.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %.012.i.i.be = phi i64 [ %spec.select.i.i, %_ZNSt13_Bit_iteratorppEv.exit.i.i ], [ 0, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %.sroa.5.011.i.i.be = phi i32 [ %spec.select8.i.i, %_ZNSt13_Bit_iteratorppEv.exit.i.i ], [ 0, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %.sroa.03.010.i.i.be = phi ptr [ %spec.select7.i.i, %_ZNSt13_Bit_iteratorppEv.exit.i.i ], [ %.sroa.0462.0, %_ZNSt6vectorImSaImEED2Ev.exit ]
  br label %_ZNSt13_Bit_iteratorppEv.exit.i.i, !llvm.loop !124

_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit: ; preds = %_ZNSt13_Bit_iteratorppEv.exit.i.i
  %.not = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not, label %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit
  %i.qz = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ra = load ptr, ptr %i.x, align 8             ; 4 uses
  %.not663 = icmp eq ptr %i.qz, %i.ra
  %.pre700 = load ptr, ptr %0, align 8            ; 2 uses
  br i1 %.not663, label %._crit_edge631, label %.lr.ph630

.lr.ph630:                                        ; preds = %.preheader
  %i.rb = ptrtoint ptr %i.qz to i64
  %i.rc = ptrtoint ptr %i.ra to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = ashr exact i64 %i.rd, 2
  br label %bb.bu

._crit_edge631:                                   ; preds = %bb.bx, %.preheader
  %.0548.lcssa = phi i64 [ -1, %.preheader ], [ %.2, %bb.bx ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0501.0772776, i64 %.0548.lcssa ; 2 uses
  %i.rg = load i64, ptr %i.rf, align 8
  %i.rh = getelementptr inbounds nuw [24 x i8], ptr %.pre700, i64 %i.rg
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %.0548.lcssa
  %i.rj = load i32, ptr %i.ri, align 4
  %i.rk = zext i32 %i.rj to i64
  invoke void @_ZN6Assimp3IFC8TempMesh20ComputePolygonNormalEPK10aiVector3tIdEmb(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %7, ptr noundef %i.rh, i64 noundef %i.rk, i1 noundef zeroext true)
          to label %bb.by unwind label %_ZNSt6vectorImSaImEED2Ev.exit324

bb.bt:                                            ; preds = %bb.aa
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit335

bb.bu:                                            ; preds = %.lr.ph630, %bb.bx
  %.0147629 = phi double [ -1.000000e+00, %.lr.ph630 ], [ %.2149, %bb.bx ] ; 3 uses
  %.0150628 = phi i64 [ 0, %.lr.ph630 ], [ %i.uc, %bb.bx ] ; 7 uses
  %.0548627 = phi i64 [ -1, %.lr.ph630 ], [ %.2, %bb.bx ] ; 2 uses
  %i.rm = sdiv i64 %.0150628, 64
  %i.rn = getelementptr inbounds [8 x i8], ptr %.sroa.0462.0, i64 %i.rm
  %i.ro = and i64 %.0150628, -9223372036854775745
  %i.rp = icmp ugt i64 %i.ro, -9223372036854775808
  %storemerge.idx.i.i.i.i.i254 = select i1 %i.rp, i64 -8, i64 0
  %storemerge.i.i.i.i.i255 = getelementptr inbounds i8, ptr %i.rn, i64 %storemerge.idx.i.i.i.i.i254
  %i.rq = and i64 %.0150628, 63
  %i.rr = shl nuw i64 1, %i.rq
  %i.rs = load i64, ptr %storemerge.i.i.i.i.i255, align 8
  %i.rt = and i64 %i.rs, %i.rr
  %.not562 = icmp eq i64 %i.rt, 0
  br i1 %.not562, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0501.0772776, i64 %.0150628
  %i.rv = load i64, ptr %i.ru, align 8
  %i.rw = getelementptr inbounds [24 x i8], ptr %.pre700, i64 %i.rv ; 3 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %.0150628
  %i.ry = load i32, ptr %i.rx, align 4            ; 3 uses
  %i.rz = zext i32 %i.ry to i64
  %.idx563 = mul nuw nsw i64 %i.rz, 24            ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rw, i64 %.idx563
  %.not5.i = icmp eq i32 %i.ry, 0
  br i1 %.not5.i, label %.loopexit567, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.bv
  %i.sb = add nsw i64 %.idx563, -24               ; 2 uses
  %i.sc = udiv i64 %i.sb, 24
  %i.sd = add nuw nsw i64 %i.sc, 1
  %xtraiter864 = and i64 %i.sd, 3                 ; 2 uses
  %lcmp.mod865.not = icmp eq i64 %xtraiter864, 0
  br i1 %lcmp.mod865.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.02.06.i.prol = phi ptr [ %i.sl, %.lr.ph.i.prol ], [ %i.rw, %.lr.ph.i.preheader ] ; 3 uses
  %i.se = phi double [ %i.sh, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %i.sf = phi <2 x double> [ %i.sk, %.lr.ph.i.prol ], [ zeroinitializer, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.sg = load double, ptr %.sroa.02.06.i.prol, align 8, !noalias !125
  %i.sh = fadd double %i.se, %i.sg                ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.prol, i64 8
  %i.sj = load <2 x double>, ptr %i.si, align 8, !noalias !125
  %i.sk = fadd <2 x double> %i.sf, %i.sj          ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter864
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !130

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa842.unr = phi double [ poison, %.lr.ph.i.preheader ], [ %i.sh, %.lr.ph.i.prol ]
  %.lcssa.unr = phi <2 x double> [ poison, %.lr.ph.i.preheader ], [ %i.sk, %.lr.ph.i.prol ]
  %.sroa.02.06.i.unr = phi ptr [ %i.rw, %.lr.ph.i.preheader ], [ %i.sl, %.lr.ph.i.prol ]
  %.unr = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.sh, %.lr.ph.i.prol ]
  %.unr866 = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader ], [ %i.sk, %.lr.ph.i.prol ]
  %i.sm = icmp ult i64 %i.sb, 72
  br i1 %i.sm, label %.loopexit567, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.02.06.i = phi ptr [ %i.tm, %.lr.ph.i ], [ %.sroa.02.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.sn = phi double [ %i.ti, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %i.so = phi <2 x double> [ %i.tl, %.lr.ph.i ], [ %.unr866, %.lr.ph.i.prol.loopexit ]
  %i.sp = load double, ptr %.sroa.02.06.i, align 8, !noalias !125
  %i.sq = fadd double %i.sn, %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8
  %i.ss = load <2 x double>, ptr %i.sr, align 8, !noalias !125
  %i.st = fadd <2 x double> %i.so, %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 24
  %i.sv = load double, ptr %i.su, align 8, !noalias !125
  %i.sw = fadd double %i.sq, %i.sv
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 32
  %i.sy = load <2 x double>, ptr %i.sx, align 8, !noalias !125
  %i.sz = fadd <2 x double> %i.st, %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 48
  %i.tb = load double, ptr %i.ta, align 8, !noalias !125
  %i.tc = fadd double %i.sw, %i.tb
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 56
  %i.te = load <2 x double>, ptr %i.td, align 8, !noalias !125
  %i.tf = fadd <2 x double> %i.sz, %i.te
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 72
  %i.th = load double, ptr %i.tg, align 8, !noalias !125
  %i.ti = fadd double %i.tc, %i.th                ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 80
  %i.tk = load <2 x double>, ptr %i.tj, align 8, !noalias !125
  %i.tl = fadd <2 x double> %i.tf, %i.tk          ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 96 ; 2 uses
  %.not.i256.3 = icmp eq ptr %i.tm, %i.sa
  br i1 %.not.i256.3, label %.loopexit567, label %.lr.ph.i, !llvm.loop !131

.loopexit567:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.bv
  %.lcssa.i = phi double [ 0.000000e+00, %bb.bv ], [ %.lcssa842.unr, %.lr.ph.i.prol.loopexit ], [ %i.ti, %.lr.ph.i ]
  %i.tn = phi <2 x double> [ zeroinitializer, %bb.bv ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.tl, %.lr.ph.i ] ; 2 uses
  %i.to = uitofp i32 %i.ry to double
  %i.tp = fdiv double 1.000000e+00, %i.to         ; 3 uses
  %i.tq = fmul double %i.tp, %.lcssa.i
  %i.tr = extractelement <2 x double> %i.tn, i64 0
  %i.ts = fmul double %i.tp, %i.tr
  %i.tt = extractelement <2 x double> %i.tn, i64 1
  %i.tu = fmul double %i.tp, %i.tt
  %i.tv = fsub double %i.tq, %.sroa.0518.0        ; 2 uses
  %i.tw = fsub double %i.ts, %i.qo                ; 2 uses
  %i.tx = fsub double %i.tu, %i.qp                ; 2 uses
  %i.ty = fmul double %i.tw, %i.tw
  %i.tz = call double @llvm.fmuladd.f64(double %i.tv, double %i.tv, double %i.ty)
  %i.ua = call noundef double @llvm.fmuladd.f64(double %i.tx, double %i.tx, double %i.tz) ; 2 uses
  %i.ub = fcmp ogt double %i.ua, %.0147629
  br i1 %i.ub, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.loopexit567
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit567, %bb.bw, %bb.bu
  %.2 = phi i64 [ %.0548627, %bb.bu ], [ %.0150628, %bb.bw ], [ %.0548627, %.loopexit567 ] ; 2 uses
  %.2149 = phi double [ %.0147629, %bb.bu ], [ %i.ua, %bb.bw ], [ %.0147629, %.loopexit567 ]
  %i.uc = add nuw i64 %.0150628, 1                ; 2 uses
  %exitcond689.not = icmp eq i64 %i.uc, %i.re
  br i1 %exitcond689.not, label %._crit_edge631, label %bb.bu, !llvm.loop !132

bb.by:                                            ; preds = %._crit_edge631
  %i.ud = load ptr, ptr %0, align 8
  %i.ue = load i64, ptr %i.rf, align 8            ; 3 uses
  %i.uf = getelementptr inbounds [24 x i8], ptr %i.ud, i64 %i.ue ; 4 uses
  %i.ug = load ptr, ptr %i.x, align 8
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %.0548.lcssa
  %i.ui = load i32, ptr %i.uh, align 4            ; 5 uses
  %i.uj = zext i32 %i.ui to i64                   ; 3 uses
  %.idx = mul nuw nsw i64 %i.uj, 24               ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uf, i64 %.idx ; 2 uses
  %.not5.i258 = icmp eq i32 %i.ui, 0
  br i1 %.not5.i258, label %.loopexit568, label %.lr.ph.i259.preheader

.lr.ph.i259.preheader:                            ; preds = %bb.by
  %i.ul = add nsw i64 %.idx, -24                  ; 2 uses
  %i.um = udiv i64 %i.ul, 24
  %i.un = add nuw nsw i64 %i.um, 1
  %xtraiter867 = and i64 %i.un, 3                 ; 2 uses
  %lcmp.mod868.not = icmp eq i64 %xtraiter867, 0
  br i1 %lcmp.mod868.not, label %.lr.ph.i259.prol.loopexit, label %.lr.ph.i259.prol

.lr.ph.i259.prol:                                 ; preds = %.lr.ph.i259.preheader, %.lr.ph.i259.prol
  %.sroa.02.06.i262.prol = phi ptr [ %i.uv, %.lr.ph.i259.prol ], [ %i.uf, %.lr.ph.i259.preheader ] ; 3 uses
  %i.uo = phi double [ %i.ur, %.lr.ph.i259.prol ], [ 0.000000e+00, %.lr.ph.i259.preheader ]
  %i.up = phi <2 x double> [ %i.uu, %.lr.ph.i259.prol ], [ zeroinitializer, %.lr.ph.i259.preheader ]
  %prol.iter869 = phi i64 [ %prol.iter869.next, %.lr.ph.i259.prol ], [ 0, %.lr.ph.i259.preheader ]
  %i.uq = load double, ptr %.sroa.02.06.i262.prol, align 8, !noalias !133
  %i.ur = fadd double %i.uo, %i.uq                ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262.prol, i64 8
  %i.ut = load <2 x double>, ptr %i.us, align 8, !noalias !133
  %i.uu = fadd <2 x double> %i.up, %i.ut          ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262.prol, i64 24 ; 2 uses
  %prol.iter869.next = add i64 %prol.iter869, 1   ; 2 uses
  %prol.iter869.cmp.not = icmp eq i64 %prol.iter869.next, %xtraiter867
  br i1 %prol.iter869.cmp.not, label %.lr.ph.i259.prol.loopexit, label %.lr.ph.i259.prol, !llvm.loop !138

.lr.ph.i259.prol.loopexit:                        ; preds = %.lr.ph.i259.prol, %.lr.ph.i259.preheader
  %.lcssa844.unr = phi double [ poison, %.lr.ph.i259.preheader ], [ %i.ur, %.lr.ph.i259.prol ]
  %.lcssa843.unr = phi <2 x double> [ poison, %.lr.ph.i259.preheader ], [ %i.uu, %.lr.ph.i259.prol ]
  %.sroa.02.06.i262.unr = phi ptr [ %i.uf, %.lr.ph.i259.preheader ], [ %i.uv, %.lr.ph.i259.prol ]
  %.unr870 = phi double [ 0.000000e+00, %.lr.ph.i259.preheader ], [ %i.ur, %.lr.ph.i259.prol ]
  %.unr871 = phi <2 x double> [ zeroinitializer, %.lr.ph.i259.preheader ], [ %i.uu, %.lr.ph.i259.prol ]
  %i.uw = icmp ult i64 %i.ul, 72
  br i1 %i.uw, label %.loopexit568, label %.lr.ph.i259

.lr.ph.i259:                                      ; preds = %.lr.ph.i259.prol.loopexit, %.lr.ph.i259
  %.sroa.02.06.i262 = phi ptr [ %i.vw, %.lr.ph.i259 ], [ %.sroa.02.06.i262.unr, %.lr.ph.i259.prol.loopexit ] ; 9 uses
  %i.ux = phi double [ %i.vs, %.lr.ph.i259 ], [ %.unr870, %.lr.ph.i259.prol.loopexit ]
  %i.uy = phi <2 x double> [ %i.vv, %.lr.ph.i259 ], [ %.unr871, %.lr.ph.i259.prol.loopexit ]
  %i.uz = load double, ptr %.sroa.02.06.i262, align 8, !noalias !133
  %i.va = fadd double %i.ux, %i.uz
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 8
  %i.vc = load <2 x double>, ptr %i.vb, align 8, !noalias !133
  %i.vd = fadd <2 x double> %i.uy, %i.vc
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 24
  %i.vf = load double, ptr %i.ve, align 8, !noalias !133
  %i.vg = fadd double %i.va, %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 32
  %i.vi = load <2 x double>, ptr %i.vh, align 8, !noalias !133
  %i.vj = fadd <2 x double> %i.vd, %i.vi
  %i.vk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 48
  %i.vl = load double, ptr %i.vk, align 8, !noalias !133
  %i.vm = fadd double %i.vg, %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 56
  %i.vo = load <2 x double>, ptr %i.vn, align 8, !noalias !133
  %i.vp = fadd <2 x double> %i.vj, %i.vo
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 72
  %i.vr = load double, ptr %i.vq, align 8, !noalias !133
  %i.vs = fadd double %i.vm, %i.vr                ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 80
  %i.vu = load <2 x double>, ptr %i.vt, align 8, !noalias !133
  %i.vv = fadd <2 x double> %i.vp, %i.vu          ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 96 ; 2 uses
  %.not.i263.3 = icmp eq ptr %i.vw, %i.uk
  br i1 %.not.i263.3, label %.loopexit568, label %.lr.ph.i259, !llvm.loop !131

.loopexit568:                                     ; preds = %.lr.ph.i259.prol.loopexit, %.lr.ph.i259, %bb.by
  %.lcssa.i265 = phi double [ 0.000000e+00, %bb.by ], [ %.lcssa844.unr, %.lr.ph.i259.prol.loopexit ], [ %i.vs, %.lr.ph.i259 ]
  %i.vx = phi <2 x double> [ zeroinitializer, %bb.by ], [ %.lcssa843.unr, %.lr.ph.i259.prol.loopexit ], [ %i.vv, %.lr.ph.i259 ] ; 2 uses
  %i.vy = uitofp i32 %i.ui to double
  %i.vz = fdiv double 1.000000e+00, %i.vy         ; 3 uses
  %i.wa = fmul double %i.vz, %.lcssa.i265
  %i.wb = extractelement <2 x double> %i.vx, i64 0
  %i.wc = fmul double %i.vz, %i.wb
  %i.wd = extractelement <2 x double> %i.vx, i64 1
  %i.we = fmul double %i.vz, %i.wd
  %i.wf = fsub double %i.wa, %.sroa.0518.0        ; 4 uses
  %i.wg = fsub double %i.wc, %i.qo                ; 4 uses
  %i.wh = fsub double %i.we, %i.qp                ; 4 uses
  %i.wi = fmul double %i.wg, %i.wg
  %i.wj = call double @llvm.fmuladd.f64(double %i.wf, double %i.wf, double %i.wi)
  %i.wk = call noundef double @llvm.fmuladd.f64(double %i.wh, double %i.wh, double %i.wj) ; 2 uses
  %i.wl = fcmp oeq double %i.wk, 0.000000e+00
  br i1 %i.wl, label %_ZN10aiVector3tIdE9NormalizeEv.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %.loopexit568
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.wk)
  %i.wm = fdiv double 1.000000e+00, %sqrt.i.i     ; 3 uses
  %i.wn = fmul double %i.wf, %i.wm
  %i.wo = fmul double %i.wg, %i.wm
  %i.wp = fmul double %i.wh, %i.wm
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %_ZN10aiVector3tIdEdVEd.exit.i, %.loopexit568
  %.sroa.11419.0 = phi double [ %i.wh, %.loopexit568 ], [ %i.wp, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %.sroa.7.0 = phi double [ %i.wg, %.loopexit568 ], [ %i.wo, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %.sroa.0416.0 = phi double [ %i.wf, %.loopexit568 ], [ %i.wn, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %i.wq = load double, ptr %7, align 8
  %i.wr = load double, ptr %i.qm, align 8
  %i.ws = fmul double %.sroa.7.0, %i.wr
  %i.wt = call double @llvm.fmuladd.f64(double %i.wq, double %.sroa.0416.0, double %i.ws)
  %i.wu = load double, ptr %i.qn, align 8
  %i.wv = call noundef double @llvm.fmuladd.f64(double %i.wu, double %.sroa.11419.0, double %i.wt)
  %i.ww = fcmp olt double %i.wv, -4.000000e-01
  br i1 %i.ww, label %bb.bz, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280

bb.bz:                                            ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.wx = icmp ugt i32 %i.ui, 1
  br i1 %i.wx, label %.lr.ph.i.i268.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit

.lr.ph.i.i268.preheader:                          ; preds = %bb.bz
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.uk, i64 -24
  br label %.lr.ph.i.i268

.lr.ph.i.i268:                                    ; preds = %.lr.ph.i.i268.preheader, %.lr.ph.i.i268
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i268 ], [ %.sroa.0.08.i.i, %.lr.ph.i.i268.preheader ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.wy, %.lr.ph.i.i268 ], [ %i.uf, %.lr.ph.i.i268.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.09.i.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.09.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.wy = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 24 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -24 ; 2 uses
  %i.wz = icmp ult ptr %i.wy, %.sroa.0.0.i.i
  br i1 %i.wz, label %.lr.ph.i.i268, label %.lr.ph.i.i271.preheader, !llvm.loop !139

.lr.ph.i.i271.preheader:                          ; preds = %.lr.ph.i.i268
  %i.xa = getelementptr inbounds [8 x i8], ptr %.sroa.0482.0, i64 %i.ue ; 2 uses
  %.idx556 = shl nuw nsw i64 %i.uj, 3
  %i.xb = getelementptr i8, ptr %i.xa, i64 %.idx556
  %.sroa.0.08.i.i269 = getelementptr i8, ptr %i.xb, i64 -8
  br label %.lr.ph.i.i271

.lr.ph.i.i271:                                    ; preds = %.lr.ph.i.i271.preheader, %.lr.ph.i.i271
  %.sroa.0.010.i.i272 = phi ptr [ %.sroa.0.0.i.i274, %.lr.ph.i.i271 ], [ %.sroa.0.08.i.i269, %.lr.ph.i.i271.preheader ] ; 3 uses
  %.sroa.05.09.i.i273 = phi ptr [ %i.xe, %.lr.ph.i.i271 ], [ %i.xa, %.lr.ph.i.i271.preheader ] ; 3 uses
  %i.xc = load i64, ptr %.sroa.05.09.i.i273, align 8
  %i.xd = load i64, ptr %.sroa.0.010.i.i272, align 8
  store i64 %i.xd, ptr %.sroa.05.09.i.i273, align 8
  store i64 %i.xc, ptr %.sroa.0.010.i.i272, align 8
  %i.xe = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i273, i64 8 ; 2 uses
  %.sroa.0.0.i.i274 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i272, i64 -8 ; 2 uses
  %i.xf = icmp ult ptr %i.xe, %.sroa.0.0.i.i274
  br i1 %i.xf, label %.lr.ph.i.i271, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit.thread, !llvm.loop !140

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit.thread: ; preds = %.lr.ph.i.i271
  %i.xg = add nsw i64 %i.uj, -1
  br label %.lr.ph635.preheader

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit: ; preds = %bb.bz
  %.not664 = icmp eq i32 %i.ui, 1
  br i1 %.not664, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280, label %.lr.ph635.preheader

.lr.ph635.preheader:                              ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit.thread, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  %i.xh = phi i64 [ %i.xg, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit.thread ], [ -1, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit ] ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.sroa.0482.0, i64 %i.ue ; 6 uses
  %load_initial = load i64, ptr %invariant.gep, align 8 ; 5 uses
  %i.xi = add nsw i64 %i.xh, -1
  %xtraiter872 = and i64 %i.xh, 3                 ; 3 uses
  %i.xj = icmp ult i64 %i.xi, 3
  br i1 %i.xj, label %.lr.ph635.epil.preheader, label %.lr.ph635.preheader.new

.lr.ph635.preheader.new:                          ; preds = %.lr.ph635.preheader
  %unroll_iter876 = and i64 %i.xh, -4
  br label %.lr.ph635

.lr.ph635:                                        ; preds = %.lr.ph635, %.lr.ph635.preheader.new
  %.0151634 = phi i64 [ 0, %.lr.ph635.preheader.new ], [ %i.xv, %.lr.ph635 ] ; 5 uses
  %niter877 = phi i64 [ 0, %.lr.ph635.preheader.new ], [ %niter877.next.3, %.lr.ph635 ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0151634 ; 2 uses
  %i.xk = getelementptr i8, ptr %gep, i64 8       ; 2 uses
  %i.xl = load i64, ptr %i.xk, align 8
  store i64 %i.xl, ptr %gep, align 8
  store i64 %load_initial, ptr %i.xk, align 8
  %i.xm = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0151634 ; 2 uses
  %gep.1 = getelementptr i8, ptr %i.xm, i64 8
  %i.xn = getelementptr i8, ptr %i.xm, i64 16     ; 2 uses
  %i.xo = load i64, ptr %i.xn, align 8
  store i64 %i.xo, ptr %gep.1, align 8
  store i64 %load_initial, ptr %i.xn, align 8
  %i.xp = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0151634 ; 2 uses
  %gep.2 = getelementptr i8, ptr %i.xp, i64 16
  %i.xq = getelementptr i8, ptr %i.xp, i64 24     ; 2 uses
  %i.xr = load i64, ptr %i.xq, align 8
  store i64 %i.xr, ptr %gep.2, align 8
  store i64 %load_initial, ptr %i.xq, align 8
  %i.xs = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0151634 ; 2 uses
  %gep.3 = getelementptr i8, ptr %i.xs, i64 24
  %i.xt = getelementptr i8, ptr %i.xs, i64 32     ; 2 uses
  %i.xu = load i64, ptr %i.xt, align 8
  store i64 %i.xu, ptr %gep.3, align 8
  store i64 %load_initial, ptr %i.xt, align 8
  %i.xv = add nuw i64 %.0151634, 4                ; 2 uses
  %niter877.next.3 = add i64 %niter877, 4         ; 2 uses
  %niter877.ncmp.3 = icmp eq i64 %niter877.next.3, %unroll_iter876
  br i1 %niter877.ncmp.3, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280.loopexit.unr-lcssa, label %.lr.ph635, !llvm.loop !141

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280.loopexit.unr-lcssa: ; preds = %.lr.ph635
  %lcmp.mod874.not = icmp eq i64 %xtraiter872, 0
  br i1 %lcmp.mod874.not, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280, label %.lr.ph635.epil.preheader

.lr.ph635.epil.preheader:                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280.loopexit.unr-lcssa, %.lr.ph635.preheader
  %.0151634.epil.init = phi i64 [ 0, %.lr.ph635.preheader ], [ %i.xv, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280.loopexit.unr-lcssa ]
  %lcmp.mod875 = icmp ne i64 %xtraiter872, 0
  call void @llvm.assume(i1 %lcmp.mod875)
  br label %.lr.ph635.epil

.lr.ph635.epil:                                   ; preds = %.lr.ph635.epil, %.lr.ph635.epil.preheader
  %.0151634.epil = phi i64 [ %i.xy, %.lr.ph635.epil ], [ %.0151634.epil.init, %.lr.ph635.epil.preheader ] ; 2 uses
  %epil.iter873 = phi i64 [ %epil.iter873.next, %.lr.ph635.epil ], [ 0, %.lr.ph635.epil.preheader ]
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0151634.epil ; 2 uses
  %i.xw = getelementptr i8, ptr %gep.epil, i64 8  ; 2 uses
  %i.xx = load i64, ptr %i.xw, align 8
  store i64 %i.xx, ptr %gep.epil, align 8
  store i64 %load_initial, ptr %i.xw, align 8
  %i.xy = add nuw i64 %.0151634.epil, 1
  %epil.iter873.next = add i64 %epil.iter873, 1   ; 2 uses
  %epil.iter873.cmp.not = icmp eq i64 %epil.iter873.next, %xtraiter872
  br i1 %epil.iter873.cmp.not, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280, label %.lr.ph635.epil, !llvm.loop !142

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280.loopexit.unr-lcssa, %.lr.ph635.epil, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.xz = sdiv i64 %.0548.lcssa, 64
  %i.ya = getelementptr inbounds [8 x i8], ptr %.sroa.0462.0, i64 %i.xz
  %i.yb = and i64 %.0548.lcssa, -9223372036854775745
  %i.yc = icmp ugt i64 %i.yb, -9223372036854775808
  %storemerge.idx.i.i.i.i.i275 = select i1 %i.yc, i64 -8, i64 0
  %storemerge.i.i.i.i.i276 = getelementptr inbounds i8, ptr %i.ya, i64 %storemerge.idx.i.i.i.i.i275 ; 2 uses
  %i.yd = and i64 %.0548.lcssa, 63
  %i.ye = shl nuw i64 1, %i.yd
  %i.yf = load i64, ptr %storemerge.i.i.i.i.i276, align 8
  %i.yg = or i64 %i.yf, %i.ye
  store i64 %i.yg, ptr %storemerge.i.i.i.i.i276, align 8
  %i.yh = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %_ZNSt6vectorImSaImEE9push_backERKm.exit288 unwind label %.thread ; 3 uses

_ZNSt6vectorImSaImEE9push_backERKm.exit288:       ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280
  store i64 %.0548.lcssa, ptr %i.yh, align 8
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 8 ; 2 uses
  br label %bb.ca

.loopexit565:                                     ; preds = %.critedge, %bb.ca
  %.sroa.0394.1.lcssa = phi ptr [ %.sroa.0394.0655, %bb.ca ], [ %.sroa.0394.2, %.critedge ] ; 4 uses
  %.sroa.11.1.lcssa = phi ptr [ %i.yk, %bb.ca ], [ %.sroa.11.2, %.critedge ] ; 2 uses
  %.sroa.23.1.lcssa = phi ptr [ %.sroa.23.0657, %bb.ca ], [ %.sroa.23.2, %.critedge ] ; 2 uses
  %i.yj = icmp eq ptr %.sroa.0394.1.lcssa, %.sroa.11.1.lcssa
  br i1 %i.yj, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ca, !llvm.loop !143

bb.ca:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit288, %.loopexit565
  %.sroa.23.0657 = phi ptr [ %i.yi, %_ZNSt6vectorImSaImEE9push_backERKm.exit288 ], [ %.sroa.23.1.lcssa, %.loopexit565 ] ; 2 uses
  %.sroa.11.0656 = phi ptr [ %i.yi, %_ZNSt6vectorImSaImEE9push_backERKm.exit288 ], [ %.sroa.11.1.lcssa, %.loopexit565 ]
  %.sroa.0394.0655 = phi ptr [ %i.yh, %_ZNSt6vectorImSaImEE9push_backERKm.exit288 ], [ %.sroa.0394.1.lcssa, %.loopexit565 ] ; 2 uses
  %i.yk = getelementptr inbounds i8, ptr %.sroa.11.0656, i64 -8 ; 3 uses
  %i.yl = load i64, ptr %i.yk, align 8            ; 2 uses
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0501.0772776, i64 %i.yl
  %i.yn = load i64, ptr %i.ym, align 8            ; 2 uses
  %i.yo = load ptr, ptr %i.x, align 8
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %i.yl
  %i.yq = load i32, ptr %i.yp, align 4            ; 2 uses
  %i.yr = zext i32 %i.yq to i64                   ; 2 uses
  %.not665 = icmp eq i32 %i.yq, 0
  br i1 %.not665, label %.loopexit565, label %.lr.ph651

.thread:                                          ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280
  %i.ys = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit324.thread

.lr.ph651:                                        ; preds = %bb.ca, %.critedge
  %.0152649 = phi i64 [ %i.agn, %.critedge ], [ 0, %bb.ca ] ; 3 uses
  %.sroa.23.1648 = phi ptr [ %.sroa.23.2, %.critedge ], [ %.sroa.23.0657, %bb.ca ] ; 5 uses
  %.sroa.11.1647 = phi ptr [ %.sroa.11.2, %.critedge ], [ %i.yk, %bb.ca ] ; 5 uses
  %.sroa.0394.1646 = phi ptr [ %.sroa.0394.2, %.critedge ], [ %.sroa.0394.0655, %bb.ca ] ; 7 uses
  %i.yt = add i64 %.0152649, %i.yn                ; 2 uses
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0482.0, i64 %i.yt
  %i.yv = load i64, ptr %i.yu, align 8            ; 8 uses
  %i.yw = icmp eq i64 %i.yv, -1
  br i1 %i.yw, label %.critedge, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph651
  %i.yx = sdiv i64 %i.yv, 64
  %i.yy = getelementptr inbounds [8 x i8], ptr %.sroa.0462.0, i64 %i.yx
  %i.yz = and i64 %i.yv, -9223372036854775745
  %i.za = icmp ugt i64 %i.yz, -9223372036854775808
  %storemerge.idx.i.i.i.i.i289 = select i1 %i.za, i64 -8, i64 0
  %storemerge.i.i.i.i.i290 = getelementptr inbounds i8, ptr %i.yy, i64 %storemerge.idx.i.i.i.i.i289 ; 3 uses
  %i.zb = and i64 %i.yv, 63
  %i.zc = shl nuw i64 1, %i.zb                    ; 2 uses
  %i.zd = load i64, ptr %storemerge.i.i.i.i.i290, align 8
  %i.ze = and i64 %i.zd, %i.zc
  %.not557 = icmp eq i64 %i.ze, 0
  br i1 %.not557, label %bb.cc, label %.critedge

bb.cc:                                            ; preds = %bb.cb
  %i.zf = load ptr, ptr %0, align 8               ; 3 uses
  %i.zg = getelementptr inbounds nuw [24 x i8], ptr %i.zf, i64 %i.yt ; 3 uses
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0501.0772776, i64 %i.yv
  %i.zi = load i64, ptr %i.zh, align 8            ; 3 uses
  %i.zj = load ptr, ptr %i.x, align 8
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %i.yv
  %i.zl = load i32, ptr %i.zk, align 4            ; 3 uses
  %i.zm = zext i32 %i.zl to i64                   ; 6 uses
  %i.zn = getelementptr [24 x i8], ptr %i.zf, i64 %i.zi ; 7 uses
  %.idx560 = mul nuw nsw i64 %i.zm, 24            ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 %.idx560 ; 3 uses
  %.sroa.0384.sroa.0.0.copyload = load double, ptr %i.zg, align 8 ; 7 uses
  %.sroa.0384.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %.sroa.0384.sroa.2.0.copyload = load double, ptr %.sroa.0384.sroa.2.0..sroa_idx, align 8 ; 7 uses
  %.sroa.0384.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %.sroa.0384.sroa.3.0.copyload = load double, ptr %.sroa.0384.sroa.3.0..sroa_idx, align 8 ; 7 uses
  %i.zp = ptrtoint ptr %i.zn to i64
  %i.zq = lshr i64 %i.zm, 2                       ; 3 uses
  %.not559 = icmp eq i64 %i.zq, 0
  br i1 %.not559, label %._crit_edge.i374, label %.lr.ph.i375

.lr.ph.i375:                                      ; preds = %bb.cc
  %i.zr = mul nuw nsw i64 %i.zq, 96               ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.zn, i64 %i.zr
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ch, %.lr.ph.i375
  %.045.i = phi i64 [ %i.zq, %.lr.ph.i375 ], [ %i.abw, %bb.ch ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC8TempMesh20FixupFaceOrientationEv:bb.a
  %i.zv = load double, ptr %i.zu, align 8, !noalias !144
  %i.zw = fsub double %i.zv, %.sroa.0384.sroa.2.0.copyload ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 16
  %i.zy = load double, ptr %i.zx, align 8, !noalias !144
  %i.zz = fsub double %i.zy, %.sroa.0384.sroa.3.0.copyload ; 2 uses
  %i.aaa = fmul double %i.zw, %i.zw
  %i.aab = call double @llvm.fmuladd.f64(double %i.zt, double %i.zt, double %i.aaa)
  %i.aac = call noundef double @llvm.fmuladd.f64(double %i.zz, double %i.zz, double %i.aab)
  %i.aad = call noundef double @llvm.fabs.f64(double %i.aac)
  %i.aae = fcmp olt double %i.aad, f0x3EB0C6F7A0000000
  br i1 %i.aae, label %.loopexit564, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.aaf = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 24
  %i.aag = load double, ptr %i.aaf, align 8, !noalias !147
  %i.aah = fsub double %i.aag, %.sroa.0384.sroa.0.0.copyload ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 32
  %i.aaj = load double, ptr %i.aai, align 8, !noalias !147
  %i.aak = fsub double %i.aaj, %.sroa.0384.sroa.2.0.copyload ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 40
  %i.aam = load double, ptr %i.aal, align 8, !noalias !147
  %i.aan = fsub double %i.aam, %.sroa.0384.sroa.3.0.copyload ; 2 uses
  %i.aao = fmul double %i.aak, %i.aak
  %i.aap = call double @llvm.fmuladd.f64(double %i.aah, double %i.aah, double %i.aao)
  %i.aaq = call noundef double @llvm.fmuladd.f64(double %i.aan, double %i.aan, double %i.aap)
  %i.aar = call noundef double @llvm.fabs.f64(double %i.aaq)
  %i.aas = fcmp olt double %i.aar, f0x3EB0C6F7A0000000
  br i1 %i.aas, label %.loopexit564.loopexit.split.loop.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.aat = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 48
  %i.aau = load double, ptr %i.aat, align 8, !noalias !150
  %i.aav = fsub double %i.aau, %.sroa.0384.sroa.0.0.copyload ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 56
  %i.aax = load double, ptr %i.aaw, align 8, !noalias !150
  %i.aay = fsub double %i.aax, %.sroa.0384.sroa.2.0.copyload ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 64
  %i.aba = load double, ptr %i.aaz, align 8, !noalias !150
  %i.abb = fsub double %i.aba, %.sroa.0384.sroa.3.0.copyload ; 2 uses
  %i.abc = fmul double %i.aay, %i.aay
  %i.abd = call double @llvm.fmuladd.f64(double %i.aav, double %i.aav, double %i.abc)
  %i.abe = call noundef double @llvm.fmuladd.f64(double %i.abb, double %i.abb, double %i.abd)
  %i.abf = call noundef double @llvm.fabs.f64(double %i.abe)
  %i.abg = fcmp olt double %i.abf, f0x3EB0C6F7A0000000
  br i1 %i.abg, label %.loopexit564.loopexit.split.loop.exit806, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.abh = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 72
  %i.abi = load double, ptr %i.abh, align 8, !noalias !153
  %i.abj = fsub double %i.abi, %.sroa.0384.sroa.0.0.copyload ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 80
  %i.abl = load double, ptr %i.abk, align 8, !noalias !153
  %i.abm = fsub double %i.abl, %.sroa.0384.sroa.2.0.copyload ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 88
  %i.abo = load double, ptr %i.abn, align 8, !noalias !153
  %i.abp = fsub double %i.abo, %.sroa.0384.sroa.3.0.copyload ; 2 uses
  %i.abq = fmul double %i.abm, %i.abm
  %i.abr = call double @llvm.fmuladd.f64(double %i.abj, double %i.abj, double %i.abq)
  %i.abs = call noundef double @llvm.fmuladd.f64(double %i.abp, double %i.abp, double %i.abr)
  %i.abt = call noundef double @llvm.fabs.f64(double %i.abs)
  %i.abu = fcmp olt double %i.abt, f0x3EB0C6F7A0000000
  br i1 %i.abu, label %.loopexit564.loopexit.split.loop.exit808, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.abv = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 96
  %i.abw = add nsw i64 %.045.i, -1
  %i.abx = icmp sgt i64 %.045.i, 1
  br i1 %i.abx, label %bb.cd, label %._crit_edge.loopexit.i, !llvm.loop !156

._crit_edge.loopexit.i:                           ; preds = %bb.ch
  %gepdiff = sub nsw i64 %.idx560, %i.zr
  %i.aby = sdiv exact i64 %gepdiff, 24
  br label %._crit_edge.i374

._crit_edge.i374:                                 ; preds = %._crit_edge.loopexit.i, %bb.cc
  %.pre-phi61.i = phi i64 [ %i.aby, %._crit_edge.loopexit.i ], [ %i.zm, %bb.cc ]
  %.sroa.025.0.lcssa.i = phi ptr [ %scevgep.i, %._crit_edge.loopexit.i ], [ %i.zn, %bb.cc ] ; 7 uses
  switch i64 %.pre-phi61.i, label %.loopexit564 [
    i64 3, label %bb.ci
    i64 2, label %._crit_edge._crit_edge.i
    i64 1, label %._crit_edge._crit_edge53.i
  ]

bb.ci:                                            ; preds = %._crit_edge.i374
  %i.abz = load double, ptr %.sroa.025.0.lcssa.i, align 8, !noalias !157
  %i.aca = fsub double %i.abz, %.sroa.0384.sroa.0.0.copyload ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i, i64 8
  %i.acc = load double, ptr %i.acb, align 8, !noalias !157
  %i.acd = fsub double %i.acc, %.sroa.0384.sroa.2.0.copyload ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i, i64 16
  %i.acf = load double, ptr %i.ace, align 8, !noalias !157
  %i.acg = fsub double %i.acf, %.sroa.0384.sroa.3.0.copyload ; 2 uses
  %i.ach = fmul double %i.acd, %i.acd
  %i.aci = call double @llvm.fmuladd.f64(double %i.aca, double %i.aca, double %i.ach)
  %i.acj = call noundef double @llvm.fmuladd.f64(double %i.acg, double %i.acg, double %i.aci)
  %i.ack = call noundef double @llvm.fabs.f64(double %i.acj)
  %i.acl = fcmp olt double %i.ack, f0x3EB0C6F7A0000000
  br i1 %i.acl, label %.loopexit564, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.acm = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i, i64 24
  br label %._crit_edge._crit_edge.i

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i374, %bb.cj
  %.sroa.025.1.i = phi ptr [ %i.acm, %bb.cj ], [ %.sroa.025.0.lcssa.i, %._crit_edge.i374 ] ; 5 uses
  %i.acn = load double, ptr %.sroa.025.1.i, align 8, !noalias !160
  %i.aco = fsub double %i.acn, %.sroa.0384.sroa.0.0.copyload ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i, i64 8
  %i.acq = load double, ptr %i.acp, align 8, !noalias !160
  %i.acr = fsub double %i.acq, %.sroa.0384.sroa.2.0.copyload ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i, i64 16
  %i.act = load double, ptr %i.acs, align 8, !noalias !160
  %i.acu = fsub double %i.act, %.sroa.0384.sroa.3.0.copyload ; 2 uses
  %i.acv = fmul double %i.acr, %i.acr
  %i.acw = call double @llvm.fmuladd.f64(double %i.aco, double %i.aco, double %i.acv)
  %i.acx = call noundef double @llvm.fmuladd.f64(double %i.acu, double %i.acu, double %i.acw)
  %i.acy = call noundef double @llvm.fabs.f64(double %i.acx)
  %i.acz = fcmp olt double %i.acy, f0x3EB0C6F7A0000000
  br i1 %i.acz, label %.loopexit564, label %bb.ck

bb.ck:                                            ; preds = %._crit_edge._crit_edge.i
  %i.ada = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i, i64 24
  br label %._crit_edge._crit_edge53.i

._crit_edge._crit_edge53.i:                       ; preds = %._crit_edge.i374, %bb.ck
  %.sroa.025.2.i = phi ptr [ %i.ada, %bb.ck ], [ %.sroa.025.0.lcssa.i, %._crit_edge.i374 ] ; 4 uses
  %i.adb = load double, ptr %.sroa.025.2.i, align 8, !noalias !163
  %i.adc = fsub double %i.adb, %.sroa.0384.sroa.0.0.copyload ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.sroa.025.2.i, i64 8
  %i.ade = load double, ptr %i.add, align 8, !noalias !163
  %i.adf = fsub double %i.ade, %.sroa.0384.sroa.2.0.copyload ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %.sroa.025.2.i, i64 16
  %i.adh = load double, ptr %i.adg, align 8, !noalias !163
  %i.adi = fsub double %i.adh, %.sroa.0384.sroa.3.0.copyload ; 2 uses
  %i.adj = fmul double %i.adf, %i.adf
  %i.adk = call double @llvm.fmuladd.f64(double %i.adc, double %i.adc, double %i.adj)
  %i.adl = call noundef double @llvm.fmuladd.f64(double %i.adi, double %i.adi, double %i.adk)
  %i.adm = call noundef double @llvm.fabs.f64(double %i.adl)
  %i.adn = fcmp olt double %i.adm, f0x3EB0C6F7A0000000
  br i1 %i.adn, label %.loopexit564, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge._crit_edge53.i
  br label %.loopexit564

.loopexit564.loopexit.split.loop.exit:            ; preds = %bb.ce
  %i.ado = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 24
  br label %.loopexit564

.loopexit564.loopexit.split.loop.exit806:         ; preds = %bb.cf
  %i.adp = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 48
  br label %.loopexit564

.loopexit564.loopexit.split.loop.exit808:         ; preds = %bb.cg
  %i.adq = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 72
  br label %.loopexit564

.loopexit564:                                     ; preds = %bb.cd, %.loopexit564.loopexit.split.loop.exit, %.loopexit564.loopexit.split.loop.exit806, %.loopexit564.loopexit.split.loop.exit808, %._crit_edge.i374, %bb.ci, %._crit_edge._crit_edge.i, %._crit_edge._crit_edge53.i, %bb.cl
  %.sroa.08.0.in.sroa.speculated.i = phi ptr [ %.sroa.025.1.i, %._crit_edge._crit_edge.i ], [ %i.zo, %._crit_edge.i374 ], [ %.sroa.025.0.lcssa.i, %bb.ci ], [ %i.zo, %bb.cl ], [ %.sroa.025.2.i, %._crit_edge._crit_edge53.i ], [ %i.adq, %.loopexit564.loopexit.split.loop.exit808 ], [ %i.adp, %.loopexit564.loopexit.split.loop.exit806 ], [ %i.ado, %.loopexit564.loopexit.split.loop.exit ], [ %.sroa.025.044.i, %bb.cd ]
  %i.adr = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i to i64
  %i.ads = sub i64 %i.adr, %i.zp
  %i.adt = sdiv exact i64 %i.ads, 24
  %i.adu = add nsw i64 %i.adt, 1
  %i.adv = urem i64 %i.adu, %i.zm
  %i.adw = add nuw nsw i64 %.0152649, 1           ; 2 uses
  %i.adx = icmp eq i64 %i.adw, %i.yr
  %iv.rem = select i1 %i.adx, i64 0, i64 %i.adw
  %i.ady = getelementptr [24 x i8], ptr %i.zf, i64 %i.yn
  %i.adz = getelementptr [24 x i8], ptr %i.ady, i64 %iv.rem ; 3 uses
  %i.aea = getelementptr [24 x i8], ptr %i.zn, i64 %i.adv ; 3 uses
  %i.aeb = load double, ptr %i.adz, align 8, !noalias !166
  %i.aec = load double, ptr %i.aea, align 8, !noalias !166
  %i.aed = fsub double %i.aeb, %i.aec             ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  %i.aef = load double, ptr %i.aee, align 8, !noalias !166
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  %i.aeh = load double, ptr %i.aeg, align 8, !noalias !166
  %i.aei = fsub double %i.aef, %i.aeh             ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adz, i64 16
  %i.aek = load double, ptr %i.aej, align 8, !noalias !166
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aea, i64 16
  %i.aem = load double, ptr %i.ael, align 8, !noalias !166
  %i.aen = fsub double %i.aek, %i.aem             ; 2 uses
  %i.aeo = fmul double %i.aei, %i.aei
  %i.aep = call double @llvm.fmuladd.f64(double %i.aed, double %i.aed, double %i.aeo)
  %i.aeq = call noundef double @llvm.fmuladd.f64(double %i.aen, double %i.aen, double %i.aep)
  %i.aer = call noundef double @llvm.fabs.f64(double %i.aeq)
  %i.aes = fcmp olt double %i.aer, f0x3EB0C6F7A0000000
  br i1 %i.aes, label %bb.cm, label %.loopexit

bb.cm:                                            ; preds = %.loopexit564
  %i.aet = icmp ugt i32 %i.zl, 1
  br i1 %i.aet, label %.lr.ph.i.i296.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307

.lr.ph.i.i296.preheader:                          ; preds = %bb.cm
  %.sroa.0.08.i.i294 = getelementptr inbounds i8, ptr %i.zo, i64 -24
  br label %.lr.ph.i.i296

.lr.ph.i.i296:                                    ; preds = %.lr.ph.i.i296.preheader, %.lr.ph.i.i296
  %.sroa.0.010.i.i297 = phi ptr [ %.sroa.0.0.i.i299, %.lr.ph.i.i296 ], [ %.sroa.0.08.i.i294, %.lr.ph.i.i296.preheader ] ; 3 uses
  %.sroa.05.09.i.i298 = phi ptr [ %i.aeu, %.lr.ph.i.i296 ], [ %i.zn, %.lr.ph.i.i296.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.09.i.i298, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.09.i.i298, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i.i297, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i.i297, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aeu = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i298, i64 24 ; 2 uses
  %.sroa.0.0.i.i299 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i297, i64 -24 ; 2 uses
  %i.aev = icmp ult ptr %i.aeu, %.sroa.0.0.i.i299
  br i1 %i.aev, label %.lr.ph.i.i296, label %.lr.ph.i.i303.preheader, !llvm.loop !139

.lr.ph.i.i303.preheader:                          ; preds = %.lr.ph.i.i296
  %i.aew = getelementptr inbounds [8 x i8], ptr %.sroa.0482.0, i64 %i.zi ; 2 uses
  %.idx561 = shl nuw nsw i64 %i.zm, 3
  %i.aex = getelementptr i8, ptr %i.aew, i64 %.idx561
  %.sroa.0.08.i.i301 = getelementptr i8, ptr %i.aex, i64 -8
  br label %.lr.ph.i.i303

.lr.ph.i.i303:                                    ; preds = %.lr.ph.i.i303.preheader, %.lr.ph.i.i303
  %.sroa.0.010.i.i304 = phi ptr [ %.sroa.0.0.i.i306, %.lr.ph.i.i303 ], [ %.sroa.0.08.i.i301, %.lr.ph.i.i303.preheader ] ; 3 uses
  %.sroa.05.09.i.i305 = phi ptr [ %i.afa, %.lr.ph.i.i303 ], [ %i.aew, %.lr.ph.i.i303.preheader ] ; 3 uses
  %i.aey = load i64, ptr %.sroa.05.09.i.i305, align 8
  %i.aez = load i64, ptr %.sroa.0.010.i.i304, align 8
  store i64 %i.aez, ptr %.sroa.05.09.i.i305, align 8
  store i64 %i.aey, ptr %.sroa.0.010.i.i304, align 8
  %i.afa = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i305, i64 8 ; 2 uses
  %.sroa.0.0.i.i306 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i304, i64 -8 ; 2 uses
  %i.afb = icmp ult ptr %i.afa, %.sroa.0.0.i.i306
  br i1 %i.afb, label %.lr.ph.i.i303, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307.thread, !llvm.loop !140

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307.thread: ; preds = %.lr.ph.i.i303
  %i.afc = add nsw i64 %i.zm, -1
  br label %.lr.ph645.preheader

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307: ; preds = %bb.cm
  %.not666 = icmp eq i32 %i.zl, 1
  br i1 %.not666, label %.loopexit, label %.lr.ph645.preheader

.lr.ph645.preheader:                              ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307.thread, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307
  %i.afd = phi i64 [ %i.afc, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307.thread ], [ -1, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307 ] ; 3 uses
  %invariant.gep814 = getelementptr [8 x i8], ptr %.sroa.0482.0, i64 %i.zi ; 6 uses
  %load_initial840 = load i64, ptr %invariant.gep814, align 8 ; 5 uses
  %i.afe = add nsw i64 %i.afd, -1
  %xtraiter878 = and i64 %i.afd, 3                ; 3 uses
  %i.aff = icmp ult i64 %i.afe, 3
  br i1 %i.aff, label %.lr.ph645.epil.preheader, label %.lr.ph645.preheader.new

.lr.ph645.preheader.new:                          ; preds = %.lr.ph645.preheader
  %unroll_iter882 = and i64 %i.afd, -4
  br label %.lr.ph645

.lr.ph645:                                        ; preds = %.lr.ph645, %.lr.ph645.preheader.new
  %.0644 = phi i64 [ 0, %.lr.ph645.preheader.new ], [ %i.afr, %.lr.ph645 ] ; 5 uses
  %niter883 = phi i64 [ 0, %.lr.ph645.preheader.new ], [ %niter883.next.3, %.lr.ph645 ]
  %gep815 = getelementptr [8 x i8], ptr %invariant.gep814, i64 %.0644 ; 2 uses
  %i.afg = getelementptr i8, ptr %gep815, i64 8   ; 2 uses
  %i.afh = load i64, ptr %i.afg, align 8
  store i64 %i.afh, ptr %gep815, align 8
  store i64 %load_initial840, ptr %i.afg, align 8
  %i.afi = getelementptr [8 x i8], ptr %invariant.gep814, i64 %.0644 ; 2 uses
  %gep815.1 = getelementptr i8, ptr %i.afi, i64 8
  %i.afj = getelementptr i8, ptr %i.afi, i64 16   ; 2 uses
  %i.afk = load i64, ptr %i.afj, align 8
  store i64 %i.afk, ptr %gep815.1, align 8
  store i64 %load_initial840, ptr %i.afj, align 8
  %i.afl = getelementptr [8 x i8], ptr %invariant.gep814, i64 %.0644 ; 2 uses
  %gep815.2 = getelementptr i8, ptr %i.afl, i64 16
  %i.afm = getelementptr i8, ptr %i.afl, i64 24   ; 2 uses
  %i.afn = load i64, ptr %i.afm, align 8
  store i64 %i.afn, ptr %gep815.2, align 8
  store i64 %load_initial840, ptr %i.afm, align 8
  %i.afo = getelementptr [8 x i8], ptr %invariant.gep814, i64 %.0644 ; 2 uses
  %gep815.3 = getelementptr i8, ptr %i.afo, i64 24
  %i.afp = getelementptr i8, ptr %i.afo, i64 32   ; 2 uses
  %i.afq = load i64, ptr %i.afp, align 8
  store i64 %i.afq, ptr %gep815.3, align 8
  store i64 %load_initial840, ptr %i.afp, align 8
  %i.afr = add nuw i64 %.0644, 4                  ; 2 uses
  %niter883.next.3 = add i64 %niter883, 4         ; 2 uses
  %niter883.ncmp.3 = icmp eq i64 %niter883.next.3, %unroll_iter882
  br i1 %niter883.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph645, !llvm.loop !169

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph645
  %lcmp.mod880.not = icmp eq i64 %xtraiter878, 0
  br i1 %lcmp.mod880.not, label %.loopexit, label %.lr.ph645.epil.preheader

.lr.ph645.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph645.preheader
  %.0644.epil.init = phi i64 [ 0, %.lr.ph645.preheader ], [ %i.afr, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod881 = icmp ne i64 %xtraiter878, 0
  call void @llvm.assume(i1 %lcmp.mod881)
  br label %.lr.ph645.epil

.lr.ph645.epil:                                   ; preds = %.lr.ph645.epil, %.lr.ph645.epil.preheader
  %.0644.epil = phi i64 [ %i.afu, %.lr.ph645.epil ], [ %.0644.epil.init, %.lr.ph645.epil.preheader ] ; 2 uses
  %epil.iter879 = phi i64 [ %epil.iter879.next, %.lr.ph645.epil ], [ 0, %.lr.ph645.epil.preheader ]
  %gep815.epil = getelementptr [8 x i8], ptr %invariant.gep814, i64 %.0644.epil ; 2 uses
  %i.afs = getelementptr i8, ptr %gep815.epil, i64 8 ; 2 uses
  %i.aft = load i64, ptr %i.afs, align 8
  store i64 %i.aft, ptr %gep815.epil, align 8
  store i64 %load_initial840, ptr %i.afs, align 8
  %i.afu = add nuw i64 %.0644.epil, 1
  %epil.iter879.next = add i64 %epil.iter879, 1   ; 2 uses
  %epil.iter879.cmp.not = icmp eq i64 %epil.iter879.next, %xtraiter878
  br i1 %epil.iter879.cmp.not, label %.loopexit, label %.lr.ph645.epil, !llvm.loop !170

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph645.epil, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307, %.loopexit564
  %i.afv = load i64, ptr %storemerge.i.i.i.i.i290, align 8
  %i.afw = or i64 %i.afv, %i.zc
  store i64 %i.afw, ptr %storemerge.i.i.i.i.i290, align 8
  %.not.i312 = icmp eq ptr %.sroa.11.1647, %.sroa.23.1648
  br i1 %.not.i312, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.loopexit
  store i64 %i.yv, ptr %.sroa.11.1647, align 8
  %i.afx = getelementptr inbounds nuw i8, ptr %.sroa.11.1647, i64 8
  br label %.critedge

bb.co:                                            ; preds = %.loopexit
  %i.afy = ptrtoint ptr %.sroa.23.1648 to i64
  %i.afz = ptrtoint ptr %.sroa.0394.1646 to i64
  %i.aga = sub i64 %i.afy, %i.afz                 ; 7 uses
  %i.agb = icmp eq i64 %i.aga, 9223372036854775800
  br i1 %i.agb, label %bb.cp, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i313

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #28
          to label %.noexc319 unwind label %.loopexit.split-lp

.noexc319:                                        ; preds = %bb.cp
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i313: ; preds = %bb.co
  %i.agc = ashr exact i64 %i.aga, 3               ; 3 uses
  %.sroa.speculated.i.i.i314 = call i64 @llvm.umax.i64(i64 %i.agc, i64 1)
  %i.agd = add nsw i64 %.sroa.speculated.i.i.i314, %i.agc ; 2 uses
  %i.age = icmp ult i64 %i.agd, %i.agc
  %i.agf = call i64 @llvm.umin.i64(i64 %i.agd, i64 1152921504606846975)
  %i.agg = select i1 %i.age, i64 1152921504606846975, i64 %i.agf ; 3 uses
  %.not.i.i.i315 = icmp ne i64 %i.agg, 0
  call void @llvm.assume(i1 %.not.i.i.i315)
  %i.agh = shl nuw nsw i64 %i.agg, 3
  %i.agi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agh) #26
          to label %.noexc320 unwind label %.loopexit566 ; 4 uses

.noexc320:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i313
  %i.agj = getelementptr inbounds i8, ptr %i.agi, i64 %i.aga ; 2 uses
  store i64 %i.yv, ptr %i.agj, align 8
  %i.agk = icmp sgt i64 %i.aga, 0
  br i1 %i.agk, label %bb.cq, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i318

bb.cq:                                            ; preds = %.noexc320
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.agi, ptr align 8 %.sroa.0394.1646, i64 %i.aga, i1 false)
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i318

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i318: ; preds = %bb.cq, %.noexc320
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agj, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0394.1646, i64 noundef %i.aga) #27
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.agi, i64 %i.agg
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i318, %bb.cn, %.lr.ph651, %bb.cb
  %.sroa.0394.2 = phi ptr [ %.sroa.0394.1646, %.lr.ph651 ], [ %.sroa.0394.1646, %bb.cb ], [ %i.agi, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i318 ], [ %.sroa.0394.1646, %bb.cn ] ; 2 uses
  %.sroa.11.2 = phi ptr [ %.sroa.11.1647, %.lr.ph651 ], [ %.sroa.11.1647, %bb.cb ], [ %i.agl, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i318 ], [ %i.afx, %bb.cn ] ; 2 uses
  %.sroa.23.2 = phi ptr [ %.sroa.23.1648, %.lr.ph651 ], [ %.sroa.23.1648, %bb.cb ], [ %i.agm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i318 ], [ %.sroa.23.1648, %bb.cn ] ; 2 uses
  %i.agn = add nuw nsw i64 %.0152649, 1           ; 2 uses
  %exitcond694.not = icmp eq i64 %i.agn, %i.yr
  br i1 %exitcond694.not, label %.loopexit565, label %.lr.ph651, !llvm.loop !171

.loopexit566:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i313
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit.split-lp:                               ; preds = %bb.cp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.loopexit565
  %i.ago = ptrtoint ptr %.sroa.23.1.lcssa to i64
  %i.agp = ptrtoint ptr %.sroa.0394.1.lcssa to i64
  %i.agq = sub i64 %i.ago, %i.agp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0394.1.lcssa, i64 noundef %i.agq) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge

bb.cr:                                            ; preds = %.loopexit566, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit566 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0394.1646, i64 noundef %i.aga) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit324.thread

_ZNSt6vectorImSaImEED2Ev.exit324.thread:          ; preds = %.thread, %bb.cr
  %.pn156.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %lpad.phi, %bb.cr ], [ %i.ys, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.cw

_ZNSt6vectorImSaImEED2Ev.exit324:                 ; preds = %._crit_edge631
  %i.agr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.not.i.i332 = icmp eq ptr %.sroa.0462.0, null
  br i1 %.not.i.i332, label %_ZNSt6vectorImSaImEED2Ev.exit335, label %bb.cw

_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit.thread: ; preds = %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %.not.i.i325 = icmp eq ptr %.sroa.0462.0, null
  br i1 %.not.i.i325, label %_ZNSt6vectorImSaImEED2Ev.exit327, label %bb.cs

bb.cs:                                            ; preds = %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit.thread
  %i.ags = ptrtoint ptr %.sroa.20470.0 to i64
  %i.agt = ptrtoint ptr %.sroa.0462.0 to i64
  %i.agu = sub i64 %i.ags, %i.agt                 ; 2 uses
  %i.agv = ashr exact i64 %i.agu, 3
  %i.agw = sub nsw i64 0, %i.agv
  %i.agx = getelementptr inbounds [8 x i8], ptr %.sroa.20470.0, i64 %i.agw
  call void @_ZdlPvm(ptr noundef %i.agx, i64 noundef %i.agu) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit327

_ZNSt6vectorImSaImEED2Ev.exit327:                 ; preds = %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit.thread, %bb.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef 80) #27
  %.not.i.i.i328 = icmp eq ptr %.sroa.0482.0, null
  br i1 %.not.i.i.i328, label %_ZNSt6vectorImSaImEED2Ev.exit329, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit327
  %i.agy = ptrtoint ptr %.sroa.0482.0 to i64
  %i.agz = sub i64 %.sroa.21.0, %i.agy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0482.0, i64 noundef %i.agz) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit329

_ZNSt6vectorImSaImEED2Ev.exit329:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit327, %bb.ct
  %i.aha = load ptr, ptr %i.ci, align 8
  invoke void @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.aha)
          to label %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit unwind label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit329
  %i.ahb = landingpad { ptr, i32 }
          catch ptr null
  %i.ahc = extractvalue { ptr, i32 } %i.ahb, 0
  call void @__clang_call_terminate(ptr %i.ahc) #29
  unreachable

_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit329
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.not.i.i.i330 = icmp eq ptr %.sroa.0501.0772776, null
  br i1 %.not.i.i.i330, label %_ZNSt6vectorImSaImEED2Ev.exit331, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit
  %i.ahd = ptrtoint ptr %.sroa.21516.0770778 to i64
  %i.ahe = ptrtoint ptr %.sroa.0501.0772776 to i64
  %i.ahf = sub i64 %i.ahd, %i.ahe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0501.0772776, i64 noundef %i.ahf) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit331

_ZNSt6vectorImSaImEED2Ev.exit331:                 ; preds = %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit, %bb.cv
  ret void

bb.cw:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit324.thread, %_ZNSt6vectorImSaImEED2Ev.exit324
  %.pn156.pn.pn.pn.pn.pn.pn785 = phi { ptr, i32 } [ %.pn156.pn.pn.pn.pn.pn.pn.ph, %_ZNSt6vectorImSaImEED2Ev.exit324.thread ], [ %i.agr, %_ZNSt6vectorImSaImEED2Ev.exit324 ]
  %i.ahg = ptrtoint ptr %.sroa.20470.0 to i64
  %i.ahh = ptrtoint ptr %.sroa.0462.0 to i64
  %i.ahi = sub i64 %i.ahg, %i.ahh                 ; 2 uses
  %i.ahj = ashr exact i64 %i.ahi, 3
  %i.ahk = sub nsw i64 0, %i.ahj
  %i.ahl = getelementptr inbounds [8 x i8], ptr %.sroa.20470.0, i64 %i.ahk
  call void @_ZdlPvm(ptr noundef %i.ahl, i64 noundef %i.ahi) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit335

_ZNSt6vectorImSaImEED2Ev.exit335:                 ; preds = %bb.bt, %_ZNSt6vectorImSaImEED2Ev.exit324, %bb.cw, %bb.bq, %bb.bg, %bb.bp, %bb.aq
  %.pn170.pn.pn = phi { ptr, i32 } [ %i.ox, %bb.bg ], [ %i.ls, %bb.aq ], [ %.pn156.pn.pn.pn.pn.pn.pn785, %bb.cw ], [ %i.pz, %bb.bp ], [ %i.qa, %bb.bq ], [ %i.rl, %bb.bt ], [ %i.agr, %_ZNSt6vectorImSaImEED2Ev.exit324 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef 80) #27
  br label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit335, %bb.ac
  %.pn170.pn.pn.pn = phi { ptr, i32 } [ %.pn170.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit335 ], [ %i.ik, %bb.ac ] ; 2 uses
  %.not.i.i.i336 = icmp eq ptr %.sroa.0482.0, null
  br i1 %.not.i.i.i336, label %.body, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ahm = ptrtoint ptr %.sroa.0482.0 to i64
  %i.ahn = sub i64 %.sroa.21.0, %i.ahm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0482.0, i64 noundef %i.ahn) #27
  br label %.body

.body:                                            ; preds = %.loopexit572, %.loopexit.split-lp573, %bb.ab, %bb.cx, %bb.cy, %bb.q
  %i.aho = phi ptr [ %i.az, %bb.q ], [ %i.ci, %bb.cy ], [ %i.ci, %bb.ab ], [ %i.ci, %bb.cx ], [ %i.az, %.loopexit572 ], [ %i.az, %.loopexit.split-lp573 ]
  %.sroa.21516.0770777 = phi ptr [ %i.an, %bb.q ], [ %.sroa.21516.0770778, %bb.cy ], [ %.sroa.21516.0770778, %bb.ab ], [ %.sroa.21516.0770778, %bb.cx ], [ %i.an, %.loopexit572 ], [ %i.an, %.loopexit.split-lp573 ]
  %.sroa.0501.0773 = phi ptr [ %i.am, %bb.q ], [ %.sroa.0501.0772776, %bb.cy ], [ %.sroa.0501.0772776, %bb.ab ], [ %.sroa.0501.0772776, %bb.cx ], [ %i.am, %.loopexit572 ], [ %i.am, %.loopexit.split-lp573 ] ; 3 uses
  %.pn177 = phi { ptr, i32 } [ %i.gc, %bb.q ], [ %.pn170.pn.pn.pn, %bb.cy ], [ %i.ij, %bb.ab ], [ %.pn170.pn.pn.pn, %bb.cx ], [ %lpad.loopexit574, %.loopexit572 ], [ %lpad.loopexit.split-lp575, %.loopexit.split-lp573 ]
  %i.ahp = load ptr, ptr %i.aho, align 8
  invoke void @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.ahp)
          to label %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit338 unwind label %bb.cz

bb.cz:                                            ; preds = %.body
  %i.ahq = landingpad { ptr, i32 }
          catch ptr null
  %i.ahr = extractvalue { ptr, i32 } %i.ahq, 0
  call void @__clang_call_terminate(ptr %i.ahr) #29
  unreachable

_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit338: ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.not.i.i.i339 = icmp eq ptr %.sroa.0501.0773, null
  br i1 %.not.i.i.i339, label %_ZNSt6vectorImSaImEED2Ev.exit340, label %bb.da

bb.da:                                            ; preds = %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit338
  %i.ahs = ptrtoint ptr %.sroa.21516.0770777 to i64
  %i.aht = ptrtoint ptr %.sroa.0501.0773 to i64
  %i.ahu = sub i64 %i.ahs, %i.aht
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0501.0773, i64 noundef %i.ahu) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit340

_ZNSt6vectorImSaImEED2Ev.exit340:                 ; preds = %bb.da, %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit338
  resume { ptr, i32 } %.pn177
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC8TempMesh24RemoveAdjacentDuplicatesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not69 = icmp eq ptr %i.c, %i.e
  br i1 %.not69, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA28_KcEEEvDpOT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge
  br i1 %.3, label %._crit_edge.thread, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA28_KcEEEvDpOT_.exit

bb.b:                                             ; preds = %.backedge, %.lr.ph
  %.072 = phi i1 [ false, %.lr.ph ], [ %.072.be, %.backedge ] ; 3 uses
  %.sroa.048.071 = phi ptr [ %i.f, %.lr.ph ], [ %.sroa.048.071.be, %.backedge ] ; 10 uses
  %.sroa.045.070 = phi ptr [ %i.c, %.lr.ph ], [ %.sroa.045.070.be, %.backedge ] ; 8 uses
  %i.h = load i32, ptr %.sroa.045.070, align 4    ; 3 uses
  %i.i = icmp ult i32 %i.h, 2
  br i1 %i.i, label %.critedge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i32 %i.h to i64       ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.sroa.034.0 = phi double [ -1.000000e+10, %.lr.ph.preheader.i ], [ %i.u, %.lr.ph.i ] ; 2 uses
  %.sroa.038.0 = phi double [ 1.000000e+10, %.lr.ph.preheader.i ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.j = phi <2 x double> [ splat (double 1.000000e+10), %.lr.ph.preheader.i ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.k = phi <2 x double> [ splat (double -1.000000e+10), %.lr.ph.preheader.i ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.sroa.048.071, i64 %indvars.iv.i ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !noalias !172 ; 4 uses
  %i.n = fcmp olt double %.sroa.038.0, %i.m
  %i.o = select i1 %i.n, double %.sroa.038.0, double %i.m ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load <2 x double>, ptr %i.p, align 8, !noalias !172 ; 4 uses
  %i.r = fcmp olt <2 x double> %i.j, %i.q
  %i.s = select <2 x i1> %i.r, <2 x double> %i.j, <2 x double> %i.q ; 3 uses
  %i.t = fcmp olt double %i.m, %.sroa.034.0
  %i.u = select i1 %i.t, double %.sroa.034.0, double %i.m ; 2 uses
  %i.v = fcmp olt <2 x double> %i.q, %i.k
  %i.w = select <2 x i1> %i.v, <2 x double> %i.k, <2 x double> %i.q ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6Assimp11ArrayBoundsI10aiVector3tIdEEEvPKT_jRS3_S6_.exit, label %.lr.ph.i, !llvm.loop !175

_ZN6Assimp11ArrayBoundsI10aiVector3tIdEEEvPKT_jRS3_S6_.exit: ; preds = %.lr.ph.i
  %i.x = fsub double %i.u, %i.o                   ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.w, %i.s ; 2 uses
  %foldExtExtBinop128 = fsub <2 x double> %i.w, %i.s
  %i.y = extractelement <2 x double> %foldExtExtBinop128, i64 1 ; 2 uses
  %foldExtExtBinop130 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %i.z = extractelement <2 x double> %foldExtExtBinop130, i64 0
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.z)
  %i.ab = tail call noundef double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.aa)
  %i.ac = fdiv double %i.ab, 1.000000e+09         ; 3 uses
  %.idx = mul nuw nsw i64 %wide.trip.count.i, 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.048.071, i64 %.idx ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.048.071, i64 24
  br label %bb.c

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %i.ad
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %bb.c, !llvm.loop !176

bb.c:                                             ; preds = %_ZN6Assimp11ArrayBoundsI10aiVector3tIdEEEvPKT_jRS3_S6_.exit, %.preheader.i.i.i
  %i.ag = phi ptr [ %i.ae, %_ZN6Assimp11ArrayBoundsI10aiVector3tIdEEEvPKT_jRS3_S6_.exit ], [ %i.af, %.preheader.i.i.i ] ; 4 uses
  %.sroa.010.0.i.i.i125 = phi ptr [ %.sroa.048.071, %_ZN6Assimp11ArrayBoundsI10aiVector3tIdEEEvPKT_jRS3_S6_.exit ], [ %i.ag, %.preheader.i.i.i ] ; 8 uses
  %i.ah = load double, ptr %.sroa.010.0.i.i.i125, align 8, !noalias !177
  %i.ai = load double, ptr %i.ag, align 8, !noalias !177
  %i.aj = fsub double %i.ah, %i.ai                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i125, i64 8
  %i.al = load double, ptr %i.ak, align 8, !noalias !177
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i125, i64 32
  %i.an = load double, ptr %i.am, align 8, !noalias !177
  %i.ao = fsub double %i.al, %i.an                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i125, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !noalias !177
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i125, i64 40
  %i.as = load double, ptr %i.ar, align 8, !noalias !177
  %i.at = fsub double %i.aq, %i.as                ; 2 uses
  %i.au = fmul double %i.ao, %i.ao
  %i.av = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %i.au)
  %i.aw = tail call noundef double @llvm.fmuladd.f64(double %i.at, double %i.at, double %i.av)
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp olt double %i.ax, %i.ac
  br i1 %i.ay, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN6Assimp3IFC18FuzzyVectorCompareEEEET_SF_SF_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !176

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN6Assimp3IFC18FuzzyVectorCompareEEEET_SF_SF_T0_.exit.i.i: ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i125, i64 48 ; 2 uses
  %.not20.i.i = icmp eq ptr %i.az, %i.ad
  br i1 %.not20.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEEN6Assimp3IFC18FuzzyVectorCompareEET_SC_SC_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN6Assimp3IFC18FuzzyVectorCompareEEEET_SF_SF_T0_.exit.i.i, %bb.e
  %i.ba = phi ptr [ %i.bu, %bb.e ], [ %i.az, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN6Assimp3IFC18FuzzyVectorCompareEEEET_SF_SF_T0_.exit.i.i ] ; 4 uses
  %.sroa.0.022.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.e ], [ %.sroa.010.0.i.i.i125, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN6Assimp3IFC18FuzzyVectorCompareEEEET_SF_SF_T0_.exit.i.i ] ; 5 uses
  %.sroa.013.021.i.i = phi ptr [ %i.ba, %bb.e ], [ %i.ag, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN6Assimp3IFC18FuzzyVectorCompareEEEET_SF_SF_T0_.exit.i.i ] ; 2 uses
  %i.bb = load double, ptr %.sroa.0.022.i.i, align 8, !noalias !180
  %i.bc = load double, ptr %i.ba, align 8, !noalias !180
  %i.bd = fsub double %i.bb, %i.bc                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 8
  %i.bf = load double, ptr %i.be, align 8, !noalias !180
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.013.021.i.i, i64 32
  %i.bh = load double, ptr %i.bg, align 8, !noalias !180
  %i.bi = fsub double %i.bf, %i.bh                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !noalias !180
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.013.021.i.i, i64 40
  %i.bm = load double, ptr %i.bl, align 8, !noalias !180
  %i.bn = fsub double %i.bk, %i.bm                ; 2 uses
  %i.bo = fmul double %i.bi, %i.bi
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bd, double %i.bo)
  %i.bq = tail call noundef double @llvm.fmuladd.f64(double %i.bn, double %i.bn, double %i.bp)
  %i.br = tail call noundef double @llvm.fabs.f64(double %i.bq)
  %i.bs = fcmp olt double %i.br, %i.ac
  br i1 %i.bs, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.022.i.i, %.lr.ph.i.i ], [ %i.bt, %bb.d ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, %i.ad
  br i1 %.not.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEEN6Assimp3IFC18FuzzyVectorCompareEET_SC_SC_T0_.exit, label %.lr.ph.i.i, !llvm.loop !183

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEEN6Assimp3IFC18FuzzyVectorCompareEET_SC_SC_T0_.exit: ; preds = %bb.e, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN6Assimp3IFC18FuzzyVectorCompareEEEET_SF_SF_T0_.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.010.0.i.i.i125, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN6Assimp3IFC18FuzzyVectorCompareEEEET_SF_SF_T0_.exit.i.i ], [ %.sroa.0.1.i.i, %bb.e ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 24 ; 2 uses
  %.not59 = icmp eq ptr %i.bv, %i.ad
  br i1 %.not59, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEEN6Assimp3IFC18FuzzyVectorCompareEET_SC_SC_T0_.exit
  %i.bw = ptrtoint ptr %i.ad to i64               ; 4 uses
  %i.bx = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.by = sub i64 %i.bw, %i.bx
  %.neg = sdiv exact i64 %i.by, -24
  %.neg60 = trunc i64 %.neg to i32
  %i.bz = load i32, ptr %.sroa.045.070, align 4
  %i.ca = add i32 %i.bz, %.neg60
  store i32 %i.ca, ptr %.sroa.045.070, align 4
  %i.cb = load ptr, ptr %0, align 8               ; 3 uses
  %i.cc = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.cd = sub i64 %i.bx, %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 %i.cd ; 3 uses
  %i.cf = sub i64 %i.bw, %i.cc
  %i.cg = getelementptr inbounds i8, ptr %i.cb, i64 %i.cf ; 2 uses
  %i.ch = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not11.i.i = icmp eq ptr %i.ad, %i.ch
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.ci, %i.bw                    ; 3 uses
  %i.ck = icmp sgt i64 %i.cj, 24
  br i1 %i.ck, label %bb.h, label %bb.i, !prof !58

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ce, ptr align 8 %i.cg, i64 %i.cj, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.cl = icmp eq i64 %i.cj, 24
  br i1 %i.cl, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %i.cm = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bw
  %i.cp = getelementptr inbounds i8, ptr %i.ce, i64 %i.co ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.cm, %i.cp
  br i1 %.not.i.i.i21, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i
end_hunk_1
